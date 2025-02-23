#include <Arduino.h>
#include <math.h>
#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include "RTClib.h"

#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64
#define SCREEN_ADDRESS 0x3C
#define OLED_RESET -1
#define KEYBOARD_ADDRESS 0x57
#define EEPROM_ADDRESS 0x50

RTC_DS1307 rtc;
DateTime now,temp,alarmtime;

bool Delete_Clock = false;
bool Exist_Clock = false;
char dayOfTheWeek_list[7][10] = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};  
int lenght=0;

const int LEDPin=0;
const int LED_Channel=0;
const int bit_num=8;
const int freq=500;

int onTime = 1;
int alter = 0;
int count = 1;
String up = "1";
String down = "2";
String ring = "0";

#define dou 523
#define re 587
#define mi 659
#define fa 698
#define so 784
#define la 880
#define si 988

int tune[100] = {0,mi,mi,fa,so,so,fa,mi,re,dou,dou,re,mi,mi,re,re,0,mi,mi,fa,so,so,fa,mi,re,dou,dou,re,mi,re,dou,dou};

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

void setup() {
  // put your setup code here, to run once:
    Serial.begin(57600);
    Wire.begin();
  
  if (! rtc.begin()) {
    Serial.println("Couldn't find RTC");
    Serial.flush();
    while (1) delay(10);
  }

  if (! rtc.isrunning()) {
    Serial.println("RTC is NOT running, let's set the time!");
    // When time needs to be set on a new device, or after a power loss, the
    // following line sets the RTC to the date & time this sketch was compiled
    rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));
    // This line sets the RTC with an explicit date & time, for example to set
    // January 21, 2014 at 3am you would call:
    // rtc.adjust(DateTime(2014, 1, 21, 3, 0, 0));
  }
    
    if(!display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS)){
        Serial.println(F("SSD1306 allocation failed"));
        for(;;);
    }
    display.clearDisplay();
    delay(2000);
    
    lenght = sizeof(tune)/sizeof(tune[0]);
    ledcSetup(LED_Channel,freq,bit_num);
    now = rtc.now();
    getTime();
 }

void loop() {
  // put your main code here, to run repeatedly:    
    
    now = rtc.now();
    String key = inKey();
    if(now == alarmtime && Delete_Clock == false) {
      Alarm_Sound();
      Exist_Clock = false;
    }  
    if(ring == key) {
      if(onTime && alter > 0) {
        onTime = 0;
      }
      else if(!onTime){
        count *= 2;
        if(count > 4) {
          count = 1;
          onTime = 1;
          if(alter == 2) {
            saveTime(temp);
            Exist_Clock = true;
            Delete_Clock = false;
            display.clearDisplay();
            display.setTextSize(1);    
            display.setCursor(0,0);
            display.print(F("Set Alarm successfully"));
            display.display();
            delay(2000);
            alarmtime = DateTime(temp.year(),temp.month(),temp.day(),temp.hour(),temp.minute());
          }
          else {
            rtc.adjust(temp);
            now = rtc.now();
            display.clearDisplay();
            display.setTextSize(1);    
            display.setCursor(0,0);
            display.print(F("Set Time Successfully"));
            display.display();
            delay(2000);
          }
          alter = 0;
        }
      }
      else if(onTime) {
        if(Exist_Clock) {
          Delete_Clock = true;
          Exist_Clock = false;
          display.clearDisplay();
          display.setTextSize(1);    
          display.setCursor(0,0);
          display.print(F("Delete Alarm"));
          display.display();
          delay(1500);
        }  
        else {
          display.clearDisplay();
          display.setTextSize(1);    
          display.setCursor(0,0);
          display.print(F("No Alarm"));
          display.display();
          delay(1500);
        }
      } 
    }
  if(onTime) {
    temp = now;
    displayTime(now,alter);
    if(up == key && alter == 0) {
      alter = 1;
      Serial.println(F("设定时间模式"));
      display.clearDisplay();
      display.setTextSize(1);    
      display.setCursor(0,0);
      display.print(F("Set Time"));
      display.display();
      delay(1000);
    }
    if(down == key && alter == 0) {
      alter = 2;
      Serial.println(F("设定闹钟模式"));
      display.clearDisplay();
      display.setTextSize(1);    
      display.setCursor(0,0);
      display.print(F("Set Alarm"));
      display.display();
      delay(1000);
    }
  }
  else {
    displayTime(temp,alter);
    if(up == key) {
      Serial.println(count);
      temp = temp + TimeSpan((count&4)?1:0,(count&2)?1:0,count&1,0);
    }
    if(down == key) {
      Serial.println(count);
      temp = temp - TimeSpan((count&4)?1:0,(count&2)?1:0,count&1,0);
    }
  }
}

void Alarm_Sound() {
  for(int i = 0; i < lenght; i++) {
    ledcAttachPin(LEDPin,LED_Channel);
    ledcWriteTone(LED_Channel,tune[i]);
    delay(150);
    ledcDetachPin(LEDPin);
    displayTime(now,alter);
    now = rtc.now();

    String key = inKey();
    if(ring == key)
      break;
  }
}

void displayTime(DateTime t,int alter){
    display.clearDisplay();
    display.setTextSize(1);
    display.setTextColor(SSD1306_WHITE);
    display.setCursor(0,0);
    display.print(t.year(),DEC);
    display.print('/');
    display.print(t.month(),DEC);
    display.print('/');
    display.print(t.day(),DEC);
    display.print(" (");
    display.print(dayOfTheWeek_list[t.dayOfTheWeek()]);
    display.println(") ");
    display.setCursor(0,20);
    if(t.hour() < 10)
      display.print(0, DEC); 
    display.print(t.hour(),DEC);
    display.print(':');
    if(t.minute() < 10)
      display.print(0, DEC);
    display.print(t.minute(),DEC);
    display.print(':');
    if(t.second() < 10)
      display.print(0, DEC);
    display.print(t.second(),DEC);
    display.setCursor(0,SCREEN_HEIGHT/5 + 25);
    display.setTextSize(1);
    if(alter == 0) {
      display.println(F("0: DELETE ALARM"));
      display.setCursor(0,SCREEN_HEIGHT/5 + 35);
      display.println(F("1: SET TIME"));
      display.setCursor(0,SCREEN_HEIGHT/5 + 45);
      display.println(F("2: SET ALARM"));
    }
    else {
      display.println(F("0: Setting Control"));
      display.setCursor(0,SCREEN_HEIGHT/5 + 35);
      display.println(F("1: ADD"));
      display.setCursor(0,SCREEN_HEIGHT/5 + 45);
      display.println(F("2: SUB"));
    }
    display.display();
}

String inKey(){
    String inKeyTemp="";
    Wire.requestFrom(KEYBOARD_ADDRESS,2);
    while(Wire.available()){
        int c=Wire.read();
        int d=Wire.read();
        if(c==0&&d==0)
            delay(100);
        if(c!=0||d!=0){
            if(c!=0&&d==0){
                char inChar=48+7-log2(c);
                inKeyTemp+=inChar;
            }
            else if(c==0&&d!=0){
                if(d==128||d==64){
                    char inChar=56+7-log2(d);
                    inKeyTemp+=inChar;
                }
                else{
                    char inChar=65+5-log2(d);
                    inKeyTemp+=inChar;
                }
            }
            delay(100);
        }
    }
    return inKeyTemp;
}

void getTime() {
    unsigned int t[3];
    for(int i=0;i<3;i++){
        Wire.beginTransmission(EEPROM_ADDRESS);
        Wire.write(0x00);
        Wire.write(0x00 + i);
        Wire.endTransmission();
        Wire.requestFrom(EEPROM_ADDRESS,1);
        while(Wire.available()){
            t[i]=Wire.read();
        }
    }
    alarmtime=DateTime(now.year(),now.month(),t[0],t[1],t[2]);
    Exist_Clock = true;
    Delete_Clock = false;
    //return DateTime(now.year(),now.month(),t[0],t[1],t[2]);
}

void saveTime(DateTime t) {
    unsigned int d[3] = {t.day(),t.hour(),t.minute()};
    for(int i = 0;i < 3;i++) {
      Wire.beginTransmission(EEPROM_ADDRESS);
      Wire.write(0x00);
      Wire.write(0x00 + i);
      Wire.write(d[i]);
      Wire.endTransmission();
      delay(10);
    }
}
