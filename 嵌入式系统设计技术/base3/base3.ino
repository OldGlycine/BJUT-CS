#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include "RTClib.h"
#include <string>

#define OLED_RESET     -1 // Reset pin # (or -1 if sharing Arduino reset pin)
#define SCREEN_ADDRESS 0x3C
#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 64 // OLED display height, in pixels
#define EEPROM_ADDR 0x50
#define TTP229_ADDR 0x57
#define SigPin 0

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

RTC_DS1307 rtc;
int isAlarm = 0;
int isWrite = 0, isChange = 0;
int pos = 0, editTimer = 0;
int alarmTime[2] = {10, 10};
bool flash = false;
hw_timer_t * timer = NULL;

DateTime now;

void ewrite_b(int data, int addr){
  Wire.beginTransmission(EEPROM_ADDR);
  Wire.write(addr>>8);  // 发送地址
  Wire.write(addr & 0xFF);  // 
  Wire.write(data);
  Wire.endTransmission();
  delay(5);
}

int eread_b(int addr){
  Wire.beginTransmission(EEPROM_ADDR);
  Wire.write(addr>>8);  // 发送地址高八位
  Wire.write(addr & 0xFF);  
  Wire.endTransmission();

  Wire.requestFrom(EEPROM_ADDR, 1); // 请求从AT24C32D读取一个字节的数据
  int data;
  if (Wire.available()) {
    data = Wire.read(); // 读取数据
    Serial.println(data); // 输出数据
  }
  delay(5);
  return data;
}

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  Wire.begin();

  if (! rtc.begin()) {
    Serial.println("Couldn't find RTC");
    Serial.flush();
    while (1) delay(10);
  }
  if (! rtc.isrunning()) {
    Serial.println("RTC is NOT running, let's set the time!");
    rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));
  }
  if(!display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS)) {
    Serial.println(F("SSD1306 allocation failed"));
    for(;;); // Don't proceed, loop forever
  }
  display.display();
  delay(2000); 
  // Clear the buffer
  display.clearDisplay();

  // ewrite_b(0, 0);
  // ewrite_b(0, 1);
  alarmTime[0] = eread_b(0);  // hour
  alarmTime[1] = eread_b(1);  // minute
  // timer = timerBegin(0, 80, true);
  // timerAttachInterrupt(timer, &dispTime, true);
  // timerAlarmWrite(timer, 500000, true);
  // timerAlarmEnable(timer);
  pinMode(SigPin, OUTPUT);

} 

String num2str(uint16_t num){
  String str = "";
  if(num < 10){
    str += '0';
    str += num;
  }
  else{
    str += (num / 10);
    str += (num % 10);
  }
  return str;
}

void dispTime(){
  Serial.print(num2str(now.year()));
  Serial.print("/");
  Serial.print(num2str(now.month()));
  Serial.print("/");
  Serial.println(num2str(now.day()));
  Serial.print(num2str(now.hour()));
  Serial.print(":");
  Serial.print(num2str(now.minute()));
  Serial.print(":");
  Serial.println(num2str(now.second()));

  display.clearDisplay();
  display.setTextSize(1);             // Normal 1:1 pixel scale
  display.setCursor(2,2);             // Start at top-left corner
  display.setTextColor(1, 0); // 黑色背景白字
  display.print(num2str(now.year()));
  display.print("/");
  display.print(num2str(now.month()));
  display.print("/");
  display.println(num2str(now.day()));

  if((isChange | isWrite) && (pos / 10) & flash){
    if(isWrite) display.print(num2str(alarmTime[0]));
    else display.print(num2str(now.hour()));
    flash = !flash;
  }
  else if((isChange | isWrite) && (pos / 10) & !flash){
    display.print("__");
    flash = !flash;
  }
  else  
    if(isWrite) display.print(num2str(alarmTime[0]));
    else display.print(num2str(now.hour()));

  display.print(":");

  if((isChange | isWrite) && !(pos / 10) & flash){
    if(isWrite) display.print(num2str(alarmTime[1]));
    else display.print(num2str(now.minute()));
    flash = !flash;
  }
  else if((isChange | isWrite) && !(pos / 10) & !flash){
    display.print("__");
    flash = !flash;
  }
  else  // 、、、、、、、、、、、、、、、、、、、、、、、、、、、、、、、、、、、、待修改、、、、、、、、、、、、、
    if(isWrite) display.print(num2str(alarmTime[1]));
    else display.print(num2str(now.minute()));
  
  if(isWrite) display.println();
  else  {
    display.print(":");
    display.println(num2str(now.second()));
  }
  

  if(isChange)      display.println("**Editing Time**");
  else if(isWrite)  display.println("**Writing alarm**");
  else              display.println("**Running**");
  
  display.print("AlarmState:");
  display.println(isAlarm?"On":"Off");

  display.print("AlarmTime:");
  display.print(num2str(eread_b(0)));
  display.print(":");
  display.println(num2str(eread_b(1)));

  display.display();
}

void loop() {
  // put your main code here, to run repeatedly:
  now = rtc.now();
  Wire.requestFrom(TTP229_ADDR, 2);
  if(Wire.available()){
    unsigned int c = 0;
    int button = -1;
    // read每次读取一个字节
    for(int i = 0; i < 2; i++){
      if(i) c += Wire.read();
      else  c += Wire.read() << 8;
    }
    if(c) {
      button = 15 - log2(c);
      Serial.println(button, HEX);
    }

    if(button == 0){
      isChange = 1;
      while(1){
        uint8_t hour = now.hour();
        uint8_t minute = now.minute();
        Wire.requestFrom(TTP229_ADDR, 2);
        c = 0;
        button = -1;
        for(int i = 0; i < 2; i++){
          if(i) c += Wire.read();
          else  c += Wire.read() << 8;
        }
        if(c) {
          button = 15 - log2(c);
          Serial.println(button, HEX);
        }

        if(button == 0){
          if(!(pos / 10)){
            pos = 0;
            editTimer = 0;
            rtc.adjust(DateTime(now.year(),now.month(),now.day(),now.hour(),(minute + 1) % 60, 0));
          }
          else if(pos / 10){
            pos = 10;
            editTimer = 0;
            rtc.adjust(DateTime(now.year(),now.month(),now.day(),(hour + 1) % 24,now.minute(), 0));
          }
        }
        else{
          editTimer ++;
          pos++;
          if(pos >= 20)  pos = 0;
          if(editTimer == 40){
            editTimer = 0;
            isChange = 0;
            button = -1;
            break;
          }
        }
        now = rtc.now();
        dispTime();
        delay(150);
      }
    }
    if(button == 1){
      isWrite = 1;
      while(1){
        uint8_t hour = now.hour();
        uint8_t minute = now.minute();
        Wire.requestFrom(TTP229_ADDR, 2);
        c = 0;
        button = -1;
        for(int i = 0; i < 2; i++){
          if(i) c += Wire.read();
          else  c += Wire.read() << 8;
        }
        if(c) {
          button = 15 - log2(c);
          Serial.println(button, HEX);
        }

        if(button == 1){
          if(!(pos / 10)){
            pos = 0;
            editTimer = 0;
            alarmTime[1] = (alarmTime[1] + 1) % 60;
          }
          else if(pos / 10){
            pos = 10;
            editTimer = 0;
            alarmTime[0] = (alarmTime[0] + 1) % 24;
          }
        }
        else{
          editTimer ++;
          pos++;
          if(pos >= 20)  pos = 0;
          if(editTimer == 40){
            editTimer = 0;
            isWrite = 0;
            button = -1;
            ewrite_b(alarmTime[0], 0);
            ewrite_b(alarmTime[1], 1);
            break;
          }
        }
        dispTime();
        delay(150);
      }
    }
    if(button == 2){
      isAlarm = !isAlarm;
    }
    if(isAlarm){
      int hour = (int)now.hour();
      int minute = (int)now.minute();
      if(hour == alarmTime[0] && minute == alarmTime[1]){
        tone(SigPin, 1000);
        delay(500);
        noTone(SigPin);
      }
    }
    dispTime();
    delay(250);
  }
}
