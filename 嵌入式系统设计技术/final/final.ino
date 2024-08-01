#include <SoftwareSerial.h>
#include <RTClib.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <string>

// alarm
#define SigPin 2
byte alarm_on = 0;
bool beep = true;

// 语音播报相关
#define HZK_CS 7
#define BASE_ADDR 0x2C9D0 // P15
#define GAO 0xB8DF
#define DI 0xB5CD
#define YA 0xD1B9
#define XIN 0xD0C4
#define LV 0xC2CA
uint16_t numbers[10] = {0xC1E3, 0xD2BB, 0xB6FE, 0xC8FD, 0xCBC4, 0xCEE5, 0xC1F9, 0xC6DF, 0xB0CB, 0xBEC5};
SoftwareSerial myS(1, 0);
uint8_t msb(uint16_t addr);
uint8_t lsb(uint16_t addr);
uint8_t vSBP[9] = {0xFD, 0x00, 0x06, 0x01, 0x00, msb(GAO), lsb(GAO), msb(YA), lsb(YA)};
uint8_t vDBP[9] = {0xFD, 0x00, 0x06, 0x01, 0x00, msb(DI), lsb(DI), msb(YA), lsb(YA)};
uint8_t vHR[9] = {0xFD, 0x00, 0x06, 0x01, 0x00, msb(XIN), lsb(XIN), msb(LV), lsb(LV)};
uint8_t TWI[9] = {0xFD, 0x00, 0x06, 0x01, 0x00, 0xFF,0xFF,0xFF,0xFF}; // 5678
uint8_t TRI[11] = {0xFD, 0x00, 0x08, 0x01, 0x00, 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF}; //5678910
byte vMode = 0;
void voice(int value);
bool bo = false;

// OLED相关
#define OLED_RESET     -1     
#define SCREEN_ADDRESS 0x3C   
#define SCREEN_WIDTH 128      
#define SCREEN_HEIGHT 64      
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);
String num2str(uint16_t num);
#define OLED_MENU 0
#define OLED_HISTORY 1
#define OLED_TESTING 2
#define OLED_SELECT 3
#define OLED_SET 4
#define SET_SBP 0
#define SET_DBP 1
#define SET_HR 2
byte dispState = OLED_MENU;           // 显示模式
byte setState = -1;
void dispTime();
void dispHis();
void disp0();
void disp1();
void disp2();
void disp3();
void disp4();
byte hisPage = 0;

// RTC相关
#define EEPROM_ADDR 0x50
#define TTP229_ADDR 0x57
RTC_DS1307 rtc;
DateTime now;
void ewrite_b(int data, int addr);
int eread_b(int addr);

// 血压相关
byte BPstatueCMD[6] = {0xF8, 0x00, 0x00, 0x00, 0x00, 0x00};   // 血压传感器读取状态命令帧
byte BPstatue[6];                                             // 血压传感器返回的状态
byte BPdataCMD[6] = {0xFD, 0x00, 0x00, 0x00, 0x00, 0x00};     // 血压传感器读取数据命令帧
byte BPdata[6];                                               // 血压传感器返回的数据
int SBP = 0;                                                  // 收缩压（高压）
int DBP = 0;                                                  // 舒张压（低压）
int HR = 0;                                                   // 心率
int BPnum = 0;                                                // 血压采集次数
int SBPsum = 0;                                               // 收缩压的和
int DBPsum = 0;                                               // 收缩压的和
int HRsum = 0;                                                // 心率的和
byte History[9][5];                                           // 最近5条历史，存储时间和三数据
byte Range[6] = {130, 70, 70, 60, 70, 60};           //maxSBP, minSBP, maxDBP, minDBP, maxHR, minHR;  //{140, 90, 90, 60, 100, 60}
#define MAXSBP 150
#define MINSBP 120
#define MAXDBP 90
#define MINDBP 60
#define MAXHR 95
#define MINHR 60
bool loading = false;                                         // 是否正在获取数值中
bool rOver = false;                                           // 是否请求完毕
bool first_load = false;                                      // 是否为本次第一次请求
byte autoSave = 0;                                            // 自动保存
void record();                                                // 记录历史
bool accept;                                                  // 允许存储Range

// 按键
#define TTP229_WAITING 0
#define TTP229_GETTING 1
#define TTP229_FINISHED 2
#define KEY_COMMON 0
#define KEY_PRESS 1
#define KEY_RELEASE 2
uint16_t c = 0;
byte ttp229_state = TTP229_WAITING;
int button = -1, last_button = -1;
byte button_mem = -1;
byte key_state = KEY_COMMON;
bool clicked = false;

// 计时器相关
hw_timer_t *timer = NULL;
#define timer_10s 10000
#define timer_2s  2000
#define timer_1s  1000
#define timer_3s  3000
#define timer_700ms 700
void on_Timer();
byte counter_15ms = 0;
uint16_t counter_10s = 0, counter_2s = 0, counter_1s = 0, counter_3s = 0, counter_700ms = 0, counter_1s_1 = 0;

// wifi & APP
#define BLINKER_WIFI
#include <Blinker.h>
char auth[] = "aade6e38845c";
char ssid[] = "游戏新手老高";
char pswd[] = "20030814";
BlinkerSlider Slider_maxsbp("ran-maxsbp");      void sas_cb(int32_t value);
BlinkerSlider Slider_minsbp("ran-minsbp");      void sis_cb(int32_t value);
BlinkerSlider Slider_maxdbp("ran-maxdbp");      void sad_cb(int32_t value);
BlinkerSlider Slider_mindbp("ran-mindbp");      void sid_cb(int32_t value);
BlinkerSlider Slider_maxhr("ran-maxhr");        void sah_cb(int32_t value);
BlinkerSlider Slider_minhr("ran-minhr");        void sih_cb(int32_t value);
BlinkerNumber Number_maxsbp("num-maxsbp");
BlinkerNumber Number_minsbp("num-minsbp");
BlinkerNumber Number_maxdbp("num-maxdbp"); 
BlinkerNumber Number_mindbp("num-mindbp"); 
BlinkerNumber Number_maxhr("num-maxhr");       
BlinkerNumber Number_minhr("num-minhr");    
BlinkerNumber Number_DBP("DBP");     
BlinkerNumber Number_SBP("SBP");           
BlinkerNumber Number_HR("HR");                
BlinkerText Text_test("tex-test");          
BlinkerText Text_time("tex-histime");          
BlinkerText Text_val("tex-hisval");         
BlinkerText Text_his("tex-his"); 
BlinkerButton Button_up("btn-pageup");          void up_call(const String & state);
BlinkerButton Button_down("btn-pagedown");      void down_call(const String & state);
String getTimeStr();
String getValStr();

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  Serial1.begin(115200);
  myS.begin(115200);
  Wire.begin();
  BLINKER_DEBUG.stream(Serial);
  BLINKER_DEBUG.debugAll();

  while (! rtc.begin()) {
    Serial.println("Couldn't find RTC");
    Serial.flush();
    delay(10);
  }
  if (! rtc.isrunning()) {
    Serial.println("RTC is NOT running, let's set the time!");
    rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));
  }

  if(!display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS)) {
    Serial.println(F("SSD1306 allocation failed"));
    while(1);
  }
  display.display();
  delay(2000); 
  display.clearDisplay();

  for(int i = 0; i < 6; i++)  Range[i] = (eread_b(i) > 0) ? eread_b(i) : Range[i];  // 阈值数据
  for(int i = 0; i < 5; i++)
    for(int j = 0; j < 9; j++)
      History[j][i] = eread_b(6 + i * 9 + j);         // 历史数据
  alarm_on = eread_b(51);

  while (NULL == timer) timer = timerBegin(0, 80, true);
  timerAttachInterrupt(timer, &on_Timer, true); 
  timerAlarmWrite(timer, 1000, true);                 // 1ms
  timerAlarmEnable(timer);

  pinMode(SigPin, OUTPUT);

  // 初始化blinker
  Blinker.begin(auth, ssid, pswd);

  Slider_maxsbp.attach(sas_cb);
  Slider_minsbp.attach(sis_cb);
  Slider_maxdbp.attach(sad_cb);
  Slider_mindbp.attach(sid_cb);
  Slider_maxhr.attach(sah_cb);
  Slider_minhr.attach(sih_cb);
  Button_up.attach(up_call);
  Button_down.attach(down_call);
}

void loop() {
  // put your main code here, to run repeatedly:
  now = rtc.now();
  Blinker.run();

  last_button = button_mem;
  ttp229_state = TTP229_GETTING;
  
  // get button
  if(ttp229_state == TTP229_GETTING){
    c = 0;
    Wire.requestFrom(TTP229_ADDR, 2);
    c += (Wire.available()) ? (Wire.read() << 8) : 0;
    c += (Wire.available()) ? (Wire.read()) : 0;
    while (Wire.available()) Wire.read();
    if(c) {
      button = 15 - log2(c);
      ttp229_state = TTP229_FINISHED;
      // 识别到了
      if(clicked) {
        Serial.println(button, HEX); 
        // 开始操作
        if(dispState == OLED_MENU){
          if(button == 0) {
            dispState =  OLED_TESTING;
            loading = true;
            rOver = false;
            first_load = true;
          }
          if(button == 1) dispState = OLED_HISTORY;
          if(button == 2) dispState = OLED_SELECT;
        }
        else if(dispState == OLED_HISTORY){
          if(button == 0)
            if(hisPage > 0)  hisPage--;
          if(button == 1)
            if(hisPage < 4)  hisPage++;
          if(button == 2) dispState = OLED_MENU;
        }
        else if(dispState == OLED_TESTING){   
          if(loading && first_load) {
            if(button == 2) {
              dispState = OLED_MENU;  // 读取的时候只能退出
              loading = false;
              rOver = false;
              first_load = false;
              BPnum = 0;        //血压采集次数
              SBPsum = 0;       //收缩压的和
              DBPsum = 0;       //收缩压的和
              HRsum = 0;        //心率的和
              beep = false;
            }
          }
          else if(!first_load){ // 读取完毕就能正常操作了
            if(button == 0) record();   // 记录
            if(button == 1) {           // 警报
              alarm_on = !alarm_on;
              ewrite_b(alarm_on, 51);
              if(!alarm_on) beep = false;
            }
            if(button == 2) {           // 退出
              dispState = OLED_MENU;
              loading = false;
              rOver = false;
              first_load = false;
              BPnum = 0;        //血压采集次数
              SBPsum = 0;       //收缩压的和
              DBPsum = 0;       //收缩压的和
              HRsum = 0;        //心率的和
              beep = false;
            }
          }
        }
        else if(dispState == OLED_SELECT){
          if(button == 0){
            dispState = OLED_SET;
            setState = SET_SBP;
          }
          if(button == 1){
            dispState = OLED_SET;
            setState = SET_DBP;
          }
          if(button == 2){
            dispState = OLED_SET;
            setState = SET_HR;
          }
        }
        else if(dispState == OLED_SET){
          if(button == 0){
            if(setState == SET_SBP) Range[0] = (Range[0] + 1 > MAXSBP) ? MINSBP : Range[0] + 1;
            if(setState == SET_DBP) Range[2] = (Range[2] + 1 > MAXDBP) ? MINDBP : Range[2] + 1;
            if(setState == SET_HR)  Range[4] = (Range[4] + 1 > MAXHR) ? MINHR : Range[4] + 1;
          }
          if(button == 1){
            if(setState == SET_SBP) Range[1] = (Range[1] - 1 < MINSBP) ? MAXSBP : Range[1] - 1;
            if(setState == SET_DBP) Range[3] = (Range[1] - 1 < MINDBP) ? MAXDBP : Range[3] - 1;
            if(setState == SET_HR)  Range[5] = (Range[5] - 1 < MINHR) ? MAXHR : Range[5] - 1;
          }
          if(button == 2 && accept){
            for(int i = 0; i < 6; i++)  ewrite_b(Range[i], i);
            dispState = OLED_MENU;
          }
        }

        // 重置
        clicked = false;
      }
    }
    else  button = -1;

    // 随时读取血压计
    if(dispState == OLED_TESTING){
      if(!rOver && loading){
        Serial1.write(BPstatueCMD,6);         //发送查询传感器状态命令帧
        delay(10);
        if (Serial1.available() > 0)         //读取传感器返回的状态帧         
            for (int i = 0; i <= 5; i++)
              BPstatue[i] = Serial1.read();
        if((BPstatue[0]== 0xF8) || (BPstatue[3]== 0x07)) {
          BPnum = 0;        //血压采集次数
          SBPsum = 0;       //收缩压的和
          DBPsum = 0;       //收缩压的和
          HRsum = 0;        //心率的和
          rOver = true;
        }
      }
      else if(rOver && loading){
        Serial1.write(BPdataCMD,6);         //发送读取数据（血压/心率）命令帧
        delay(10);

        if (Serial1.available() > 0)       //读取传感器返回的数据 
          for (int i = 0; i <= 5; i++)
            BPdata[i] = Serial1.read();
        if((BPdata[0] == 0xFD) && BPdata[1] != 0xFF && BPdata[1]!=0x00){
          SBPsum += BPdata[1];        //收缩压求和
          DBPsum += BPdata[2];        //舒张压求和
          HRsum += BPdata[3];         //心率求和
          BPnum++;
        }
        if(BPnum >= 25)  {
          loading = false;
          first_load = false;
          rOver = false;
          BPnum = 0;
          SBP = SBPsum/25;        //求收缩压平均值
          DBP = DBPsum/25;        //求舒张压平均值
          HR = HRsum/25;          //求心率平均值  
          Serial.print("SBP = "); Serial.print(SBP, DEC);
          Serial.print("\tDBP = "); Serial.print( DBP, DEC);
          Serial.print("\theart_rate = "); Serial.println( HR, DEC);
          if(Blinker.connected()){
            Number_DBP.print(DBP);     
            Number_SBP.print(SBP);           
            Number_HR.print(HR);    
          }
          bo = true;
          autoSave++;
          if(autoSave == 5){
            record();
            autoSave = 0;
          }
        }
      }
    }else{
      if(Blinker.connected()){
        Number_DBP.print(0);     
        Number_SBP.print(0);           
        Number_HR.print(0);
      }
    }
    // 锁存
    button_mem = button;
  }

  // APP text
  if(Blinker.connected()){
    Slider_maxsbp.print(Range[0]);
    Slider_minsbp.print(Range[1]);
    Slider_maxdbp.print(Range[2]);
    Slider_mindbp.print(Range[3]);
    Slider_maxhr.print(Range[4]);
    Slider_minhr.print(Range[5]);
    Number_maxsbp.print(Range[0]);
    Number_minsbp.print(Range[1]);
    Number_maxdbp.print(Range[2]);
    Number_mindbp.print(Range[3]);
    Number_maxhr.print(Range[4]);
    Number_minhr.print(Range[5]);
    String temp = "";
    int isA = 0;
    if(SBP > Range[0] || DBP > Range[2]){
      temp += "高血压";
      isA++;
    }
    if(SBP < Range[1] || DBP < Range[3]){
      temp += "低血压";
      isA++;
    }
    if(HR > Range[4])
      if(isA) temp += " 心率高";
      else temp += "心率高";
    else if(HR < Range[5])
      if(isA) temp += " 心率低";
      else temp += "心率低";
    else if(!isA)  temp += "正常";
    
    if(dispState != OLED_TESTING )   Text_test.print("待测试");
    else  Text_test.print(temp);
  }

  // 显示
  if(dispState == OLED_MENU)          disp0();
  else if(dispState == OLED_HISTORY)  disp1();
  else if(dispState == OLED_TESTING)  disp2();
  else if(dispState == OLED_SELECT)   disp3();
  else if(dispState == OLED_SET)      disp4();

  // accept
  if((Range[0] <= Range[1]) || (Range[2] <= Range[3]) || (Range[4] <= Range[5]))  accept = false;
  else  accept = true;

  // alarm
  if(alarm_on && dispState == OLED_TESTING)
    if(SBP > Range[0] || SBP < Range[1] || DBP > Range[2] || DBP < Range[3] || HR > Range[4] || HR < Range[5])
      if(beep)  tone(SigPin, 1000);
      else  noTone(SigPin);
  else if(!alarm_on)  beep = false;
  

}

void ARDUINO_ISR_ATTR on_Timer(){
  // 按键状态机
  if (TTP229_FINISHED == ttp229_state) {
    if(button != -1){
      // 刚按下
      if(key_state == KEY_COMMON){
        key_state = KEY_PRESS;
      }
      else{
        key_state = key_state;
      }

      if(key_state == KEY_PRESS){
        if(last_button != button){
          key_state = KEY_RELEASE;
        }
        else key_state = key_state;;
      }

      if(key_state == KEY_RELEASE){
        key_state = KEY_COMMON;
        clicked = true;
      }
    }
    ttp229_state = TTP229_WAITING;
  }

  // 15ms识别一次
  if (TTP229_WAITING == ttp229_state) {
    if (15 == ++counter_15ms) {
      counter_15ms = 0;
      ttp229_state = TTP229_GETTING;
    }
  }
  
  // 2s重新读取一次血压
  if(dispState == OLED_TESTING && !first_load && !loading && !rOver){
    if(timer_2s == ++counter_2s){
      counter_2s = 0;
      loading = true;
    }
  }

  // 3s检测一次佩戴情况
  if(dispState == OLED_TESTING && !first_load && !rOver && loading){
    if(timer_3s == ++counter_3s){
      counter_3s = 0;
      first_load = true;
    }
  }else counter_3s = 0;

  // 1s刷新一次蜂鸣器间隔
  if(alarm_on && dispState == OLED_TESTING){
    if(timer_1s == ++counter_1s){
      counter_1s = 0;
      beep = !beep;
    }
  }

  // 播放间隔
  if(dispState == OLED_TESTING && bo){
    if(0 == counter_1s_1){
      if(vMode == 0) myS.write(vSBP, 9);
      else if(vMode == 1) voice(SBP);
      else if(vMode == 2)  myS.write(vDBP, 9);
      else if(vMode == 3) voice(DBP);
      else if(vMode == 4)  myS.write(vHR, 9);
      else if(vMode == 5) voice(HR);
      counter_1s_1++;
    }
    else if(timer_1s == ++counter_1s_1){
      counter_1s_1 = 0;
      vMode++;
    }
  }

  if(bo && vMode == 6){
    bo = false;
    vMode = 0;
  }
}

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
  if (Wire.available())
    data = Wire.read(); // 读取数据
  delay(5);
  return data;
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
  display.clearDisplay();
  display.setTextSize(1);             // Normal 1:1 pixel scale
  display.setCursor(0,0);             // Start at top-left corner
  display.setTextColor(1, 0); // 黑色背景白字
  display.print(num2str(now.year()));
  display.print("/");
  display.print(num2str(now.month()));
  display.print("/");
  display.print(num2str(now.day()));
  display.print(" ");
  display.print(num2str(now.hour()));
  display.print(":");
  display.print(num2str(now.minute()));
  display.print(":");
  display.println(num2str(now.second()));
  if(dispState == OLED_MENU)    display.println("**MENU**");
  if(dispState == OLED_HISTORY) display.println("**HISTORY**");
  if(dispState == OLED_TESTING) display.println("**TESTING** (S D H)");
  if(dispState == OLED_SELECT)  display.println("**SELECTING**");
  if(dispState == OLED_SET)     display.println("**SETTING**");
  ////////////////////////////////////////////////////////////////////////
}

void dispHis(){
  display.setTextSize(0.5);             // Normal 1:1 pixel scale
  display.setTextColor(1, 0); // 黑色背景白字
  
  display.println();
  display.print(num2str(History[0][hisPage]));
  display.print("/");
  display.print(num2str(History[1][hisPage]));
  display.print("/");
  display.print(num2str(History[2][hisPage]));
  display.print(" ");
  display.print(num2str(History[3][hisPage]));
  display.print(":");
  display.print(num2str(History[4][hisPage]));
  display.print(":");
  display.print(num2str(History[5][hisPage]));
  display.println();
  display.print("SBP:");
  display.print(num2str(History[6][hisPage]));
  display.print(" DBP:");
  display.print(num2str(History[7][hisPage]));
  display.print(" HR:");
  display.println(num2str(History[8][hisPage]));
  display.println();
  display.println("0:UP 1:DOWN 2:EXIT");
  display.print("                  ");
  display.print(hisPage+1);
  display.print("/5");
  
}

void disp0(){ /* 主界面模式：展示时间，按键0-2的操作提示，阈值 */
  dispTime();
  
  display.setTextSize(1); 
  display.println("0 -> Start testing!!");
  display.println("1 -> History!!");
  display.println("2 -> Set range!!");
  display.println();
  display.setTextSize(1);
  display.print("Cur range:");
  display.print("H: ");
  display.print(Range[4]);
  display.print("-");
  display.println(Range[5]);
  display.print("S:");
  display.print(Range[0]);
  display.print("-");
  display.print(Range[1]);
  display.print(" D: ");
  display.print(Range[2]);
  display.print("-");
  display.print(Range[3]);
  display.display();
}

void disp1(){ /* 历史记录模式：展示五条历史记录，按0向上，按1向下，按2返回*/
  dispTime();
  dispHis();
  display.display();
}

void disp2(){ /* 测试模式：没测出来的时候显示testing字眼，一旦有了数值，按照一定次序进行测量和显示 */
  dispTime();
  if(loading && first_load){
    display.setTextSize(2); 
    display.println("Testing...");
    display.setTextSize(1); 
    for(int i = 0; i < 2; i++)  display.println();
    display.print("              2->EXIT");
  }
  else{
    display.setTextSize(2); 
    display.print(SBP);
    display.print(" ");
    display.print(DBP);
    display.print(" ");
    display.println(HR);
    display.setTextSize(1); 
    display.print("Alarm:");
    display.println(alarm_on ? "on" : "off");
    display.println("0->REC 1->ALARM");
    display.print("2->EXIT");
    
  }
  display.display();
}

void disp3(){ /* 设置阈值模式，提示用户输入舒张压*/
  dispTime();

  display.println("0->SET SBP RANGE");
  display.println("1->SET DBP RANGE");
  display.println("2->SET HR RANGE");
  display.display();
}

void disp4(){ /* 设置高低阈值模式，2退出*/
  dispTime();
  display.println("0->MAX 1->MIN 2->DONE");
  display.setTextSize(2);
  if(setState == SET_SBP) {
    display.print(Range[0]);
    display.print("  ");
    display.println(Range[1]);
  }
  if(setState == SET_DBP){
    display.print(Range[2]);
    display.print("  ");
    display.println(Range[3]);
  }
  if(setState == SET_HR){
    display.print(Range[4]);
    display.print("  ");
    display.println(Range[5]);
  }
  display.setTextSize(1);
  display.println();
  display.print("INPUT CAN");
  if(!accept) display.print("'t");
  display.print(" be accept");
  display.display();
}

void voice(int value){
  if(value / 100 == 0){ // 两位数
    TWI[5] = msb(numbers[value/10]);
    TWI[6] = lsb(numbers[value/10]);
    TWI[7] = msb(numbers[value%10]);
    TWI[8] = lsb(numbers[value%10]);
    myS.write(TWI, 9);
  }
  else{
    TRI[5] = msb(numbers[value/100]);
    TRI[6] = lsb(numbers[value/100]);
    TRI[7] = msb(numbers[(value/10)%10]);
    TRI[8] = lsb(numbers[(value/10)%10]);
    TRI[9] = msb(numbers[value%10]);
    TRI[10] = lsb(numbers[value%10]);
    myS.write(TRI, 11);
  }
  
}

void record(){
  for(int i = 4; i >= 1; i--){
    for(int j = 0; j < 9; j++){
      History[j][i] = History[j][i-1];
    }
  }
  History[0][0] = now.year() % 100;
  History[1][0] = now.month();
  History[2][0] = now.day();
  History[3][0] = now.hour();
  History[4][0] = now.minute();
  History[5][0] = now.second();
  History[6][0] = SBP;
  History[7][0] = DBP;
  History[8][0] = HR;
  for(int i = 0; i < 5; i++)
    for(int j = 0; j < 9; j++)
      ewrite_b(History[j][i], 6 + i * 9 + j);
  Serial.println("recored!");
}


void sas_cb(int32_t value){
  if((byte)value <= Range[1]) {
    Slider_maxsbp.print(Range[1]);
    Range[0] = Range[1];
  }
  else  Range[0] = (byte)value;
  Number_maxsbp.print(value);
  ewrite_b(Range[0], 0);
}
void sis_cb(int32_t value){
  if((byte)value >= Range[0]) {
    Slider_minsbp.print(Range[0]);
    Range[1] = Range[0];
  }
  else  Range[1] = (byte)value;
  Number_minsbp.print(value);
  ewrite_b(Range[1], 1);
}
void sad_cb(int32_t value){
  if((byte)value <= Range[3]) {
    Slider_maxdbp.print(Range[3]);  
    Range[2] = Range[3];
  }
  else  Range[2] = (byte)value;
  Number_maxdbp.print(value);
  ewrite_b(Range[2], 2);
}
void sid_cb(int32_t value){
  if((byte)value >= Range[2]) {
    Slider_mindbp.print(Range[2]);
    Range[3] = Range[2];
  }
  else  Range[3] = (byte)value;
  Number_mindbp.print(value);
  ewrite_b(Range[3], 3);
}
void sah_cb(int32_t value){
  if((byte)value <= Range[5]) {
    Slider_maxhr.print(Range[5]);
    Range[4] = Range[5];
  }
  else  Range[4] = (byte)value;
  Number_maxhr.print(value);
  ewrite_b(Range[4], 4);
}
void sih_cb(int32_t value){
  if((byte)value >= Range[4]) {
    Slider_minhr.print(Range[4]);
    Range[5] = Range[4];
  }
  else  Range[5] = (byte)value;
  Number_minhr.print(value);
  ewrite_b(Range[5], 5);
}
String getTimeStr(){
  String temp = "";
  temp += num2str(History[0][hisPage]);
  temp += "/";
  temp += num2str(History[1][hisPage]);
  temp += "/";
  temp += num2str(History[2][hisPage]);
  temp += " ";
  temp += num2str(History[3][hisPage]);
  temp += ":";
  temp += num2str(History[4][hisPage]);
  temp += ":";
  temp += num2str(History[5][hisPage]);
  return temp;
}
String getValStr(){
  String temp = "";
  temp += "SBP:";
  temp += String(num2str(History[6][hisPage]));
  temp += " DBP:";
  temp += String(num2str(History[7][hisPage]));
  temp += " HR:";
  temp += String(num2str(History[8][hisPage]));
  return temp;
}
void up_call(const String & state){
  if(hisPage > 0)  hisPage--;
  String str = String(hisPage + 1) + "/5";
  Text_his.print(str);
  Text_time.print(getTimeStr());
  Text_val.print(getValStr());
}
void down_call(const String & state){
  if(hisPage < 4)  hisPage++;
  String str = String(hisPage + 1) + "/5";
  Text_his.print(str);
  Text_time.print(getTimeStr());
  Text_val.print(getValStr());
}
uint8_t msb(uint16_t addr){
  return (addr & 0xFF00) >> 8;
}

uint8_t lsb(uint16_t addr){
  return addr & 0x00FF;
}