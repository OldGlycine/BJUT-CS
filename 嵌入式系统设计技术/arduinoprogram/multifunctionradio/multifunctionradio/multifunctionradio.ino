#include <Arduino.h>
#include <math.h>
#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include "RTClib.h"
#include <radio.h>
#include <RDA5807M.h>
#include <WiFi.h>
#include <TTP229.h>
#include "DHT.h"
#include <ArduinoJson.h>
#include <NTPClient.h>
#include <HTTPClient.h>
#define BLINKER_WIFI
#include <Blinker.h>


#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64
#define SCREEN_ADDRESS 0x3C
#define OLED_RESET -1
#define KEYBOARD_ADDRESS 0x57
#define EEPROM_ADDRESS 0x50
#define DHTPIN 2
#define DHTTYPE DHT11
#define COLLECTION_NUM 5

#define FIX_BAND RADIO_BAND_FM  ///< The band that will be tuned by this sketch is FM.
#define FIX_STATION 8870        ///< The station that will be tuned by this sketch is 89.30 MHz.
#define FIX_VOLUME 10           ///< The volume that will be set by this sketch is level 4.

RDA5807M radio;
RTC_DS1307 rtc;
TTP229 ttp229;
DateTime t;
DHT dht(DHTPIN,DHTTYPE);
BlinkerNumber radioNow("num-Now");
BlinkerNumber radioVol("num-Vol");
BlinkerNumber radioSelColl("num-SelColl");
BlinkerNumber radioColl("num-Coll");
BlinkerButton buttonUp1("btn-up1");
BlinkerButton buttonUp2("btn-up2");
BlinkerButton buttonUp3("btn-up3");
BlinkerButton buttonDown1("btn-down1");
BlinkerButton buttonDown2("btn-down2");
BlinkerButton buttonDown3("btn-down3");
BlinkerButton buttonPlay("btn-play");
BlinkerButton buttonSwitch("btn-sw");

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

const int display_state=1;
const int setting_state=2;
const int collect_state=3;
const int percept_state=4;
const int timecal_state=5;

const char* auth= "07ff78cf8664";
const char* ssid="HUAWEI P40 Pro + THS";
const char* pswd="sbyks-177050625";
const char* NTP1="ntp1.aliyun.com";
const char* NTP2="ntp2.aliyun.com";
const char* NTP3="ntp3.aliyun.com";
const char* NTP_WORLD_WIDE="pool.ntp.org";
const char* NTP_ASIA="asia.pool.ntp.org";
WiFiServer server(80);
bool wifi_time_flag=false;
bool wifi_weather_flag=false;

int radioVolume=0;
int radioStation=8870;
int selectCollection=0;
int radioCollection[COLLECTION_NUM]={0,0,0,0,0};
bool isCollection=false;
bool sw=false;
bool getnowradioStation_flag=false;
bool getnowradioVolume_flag=false;

float p_temperature;
float p_humidity;
String temperature;
String weather;
String cityName;
const int httpPort = 80; //端口号
const char* host = "api.seniverse.com"; //服务器地址
String reqUserKey = "SRg1ofdZ-e9SpD_jp";//心知天气API私钥
String reqLocation = "北京";
String reqUnit = "c";//摄氏度
String tagethttp = "https://api.seniverse.com/v3/weather/now.json?key=SRg1ofdZ-e9SpD_jp &location=beijing&language=en";
String reqRes = "/v3/weather/now.json?key=" + reqUserKey +
                + "&location=" + reqLocation +
                "&language=en&unit=" + reqUnit;
String httprequest = String("GET ") + reqRes + " HTTP/1.1\r\n" +
                     "Host: " + host + "\r\n" +
                     "Connection: close\r\n\r\n";

int c_state=0;
int n_state=1;

char dayOfTheWeek_list[7][12] = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};

void setup() {
    // put your setup code here, to run once:
    Serial.begin(115200);
    Wire.begin();
    
    radio.debugEnable(true);
    radio._wireDebug(false);

    if (!radio.initWire(Wire)) {
      Serial.println("no radio chip found.");
      delay(4000);
      ESP.restart();
    };
    
    // Set all radio setting to the fixed values.
    getnowradioStation_flag=getnowradiostation();
    if(!getnowradioStation_flag){
      Serial.println("Couldn't get now radioStation");
      radioStation=8870;
    }
    getnowradioVolume_flag=getnowradiovolume();
    if(!getnowradioVolume_flag){
      Serial.println("Couldn't get now radioVolume");
      radioVolume=0;
    }
    radio.setBandFrequency(FIX_BAND, radioStation);
    radio.setVolume(radioVolume);
    radio.setMono(true);
    radio.setMute(true);
  
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

    WiFi.mode(WIFI_STA);
    WiFi.begin(ssid,pswd);

    BLINKER_DEBUG.stream(Serial);
    Blinker.begin(auth, ssid, pswd);
    Blinker.attachData(dataRead);
    buttonUp1.attach(buttonUp1_function);
    buttonDown1.attach(buttonDown1_function);
    buttonUp2.attach(buttonUp2_function);
    buttonDown2.attach(buttonDown2_function);
    buttonUp3.attach(buttonUp3_function);
    buttonDown3.attach(buttonDown3_function);
    buttonPlay.attach(buttonPlay_function);
    buttonSwitch.attach(buttonSwitch_function);
 }

void loop() {
  // put your main code here, to run repeatedly:
  Blinker.run();
  if(c_state!=n_state){
    c_state=n_state;
  }
  switch(c_state){
    case display_state:
          t=rtc.now();
          getradioCollection();
          JudgeisCollection();
          blinker_display();
          display_display();
          display_function();
          break;
    case setting_state:
          setting_display();
          setting_function();
          break;
    case collect_state:
          collect_display();
          collect_function();
          break;
    case percept_state:
          percept_display();
          percept_function();
          break;
    case timecal_state:
          timecal_function();
          break;
    default:
          break;
  }
}

void display_display(){
    displayTime();
    display.setCursor(0,SCREEN_HEIGHT/5);
    display.println(F("0: SETTING"));/*设置界面*/
    display.println(F("1: COLLECT"));/*收藏界面*/
    display.println(F("2: PERCEPT"));/*天气、温度、湿度*/
    display.println(F("3: TIMECAL"));/*时间校准*/
    display.println(F("4: ON/OFF"));/*开启/关闭收音机*/
    display.setCursor(64,SCREEN_HEIGHT/5);
    display.print(radioStation/100);
    display.print(F("."));
    display.print(radioStation%100);
    display.println(F("MHz"));
    display.setCursor(64,SCREEN_HEIGHT/5+15);
    display.println(F("Collection"));
    display.setCursor(64,SCREEN_HEIGHT/5+25);
    if(isCollection)
      display.println(F("Y"));
    else 
      display.println(F("N"));
    display.setCursor(64,SCREEN_HEIGHT/5+35);
    display.println(F("Volume"));
    display.setCursor(64,SCREEN_HEIGHT/5+45);
    display.print(radioVolume);
    display.display();
}

void setting_display(){
    display.clearDisplay();
    display.setTextSize(1);
    display.setTextColor(SSD1306_WHITE);
    display.setCursor(0,0);
    display.print(radioStation/100);
    display.print(F("."));
    display.print(radioStation%100);
    display.println(F("MHz"));
    display.print(F("Volume:"));
    display.println(radioVolume);
    display.println(F("0: ADD 0.1MHz"));
    display.println(F("1: SUB 0.1MHz"));
    display.println(F("2: ADD 1 Volume"));
    display.println(F("3: SUB 1 Volume"));
    display.println(F("4: ADD In Collect"));
    display.println(F("5: ESC"));
    display.display();
}

void collect_display(){
    display.clearDisplay();
    display.setTextSize(1);
    display.setTextColor(SSD1306_WHITE);
    display.setCursor(0,0);
    display.print(F("Collection:"));
    display.println(selectCollection+1);
    if(radioCollection[selectCollection]>0){
      display.print(radioCollection[selectCollection]/100);
      display.print(F("."));
      display.print(radioCollection[selectCollection]%100);
      display.println(F("MHz"));
    }else
      display.println(F("-No radioStation-"));
    display.println(F(" "));
    display.println(F("0: PLAY COLLECT"));
    display.println(F("1: NEXT COLLECT"));
    display.println(F("2: PREVIOUS COLLECT"));
    display.println(F("3: CANCEL COLLECT"));
    display.println(F("4: ESC"));
    display.display();
}

void percept_display(){
    display.clearDisplay();
    display.setTextSize(1);
    display.setTextColor(SSD1306_WHITE);
    display.setCursor(0,0);
    display.println(F("0: Percept T/H"));
    display.println(F("1: Get Weather"));
    display.println(F("2: Display Message"));
    display.println(F("3: ESC"));
    display.display();
}

void percept_message_display(){
    display.clearDisplay();
    display.setTextSize(1);
    display.setTextColor(SSD1306_WHITE);
    display.setCursor(0,0);
    display.print(F("City:"));
    display.println(F("Beijing"));
    display.print(F("P_Temperature:"));
    display.print(p_temperature);
    display.println(F(" C"));
    display.print(F("P_Humidity:"));
    display.print(p_humidity);
    display.println(F("%"));
    display.print(F("Weather:"));
    display.println(weather);
    display.print(F("Temperature:"));
    display.print(temperature);
    display.println(F(" C"));
    display.display();
    delay(2000);
}

void blinker_display(){
    radioNow.print(radioStation/100.0);
    radioVol.print(radioVolume);
    radioSelColl.print(selectCollection+1);
    radioColl.print(radioCollection[selectCollection]/100.0);
}

void display_function(){
    ttp229.readKeys();
    int key=ttp229.getKey();
    if(key>-1){
      switch(key){
        case 0:/*进入设置状态*/
          n_state=setting_state;
          break;
        case 1:/*进入收藏状态*/
          n_state=collect_state;
          break;
        case 2:/*进入环境信息感知状态*/
          n_state=percept_state;
          break;
        case 3:/*进入联网时间校准状态*/
          n_state=timecal_state;
          break;
        case 4:/*开启/关闭收音机*/
          radio.setMono(sw);
          radio.setMute(sw);
          display.clearDisplay();
          display.setCursor(0,0);
          display.setTextSize(2);             
          display.setTextColor(SSD1306_WHITE);
          if(sw)
            display.println(F("Radio OFF"));
          else
            display.println(F("Radio ON"));
          display.display();
          delay(2000);
          n_state=display_state;
          sw=!sw;
        default:
          break;
      }
      delay(100);
    }
}

void setting_function(){
    ttp229.readKeys();
    int key=ttp229.getKey();
    if(key>-1){
      switch(key){
        case 0:
          radioStation+=10;
          savenowradiostation(radioStation);
          radioNow.print(radioStation/100.0);
          radio.setBandFrequency(FIX_BAND,radioStation);
          radio.setMono(!sw);
          radio.setMute(!sw);
          break;
        case 1:
          radioStation-=10;
          savenowradiostation(radioStation);
          radioNow.print(radioStation/100.0);
          radio.setBandFrequency(FIX_BAND,radioStation);
          radio.setMono(!sw);
          radio.setMute(!sw);
          break;
        case 2:
          radioVolume+=1;
          if(radioVolume>10)
            radioVolume=10;
          savenowradiovolume(radioVolume);
          radioVol.print(radioVolume);
          radio.setVolume(radioVolume);
          break;
        case 3:
          radioVolume-=1;
          if(radioVolume<0)
            radioVolume=0;
          savenowradiovolume(radioVolume);
          radioVol.print(radioVolume);
          radio.setVolume(radioVolume);
          break;
        case 4:
          saveradioCollection(radioStation);
          break;
        case 5:
          n_state=display_state;
          break;
        default:
          break;
      }
      delay(200);
    }
}

void collect_function(){
    ttp229.readKeys();
    int key=ttp229.getKey();
    if(key>-1){
      switch(key){
         case 0:/*播放当前收藏电台*/
              if(radioCollection[selectCollection] > 0) 
              {
                radioStation = radioCollection[selectCollection];
                savenowradiostation(radioStation);
                radio.setBandFrequency(FIX_BAND, radioStation);
                radio.setMono(!sw);
                radio.setMute(!sw);
              }
              radioNow.print(radioStation/100.0);
              break;
         case 1:/*选择下一个收藏电台*/
              selectCollection+=1;
              if(selectCollection >= COLLECTION_NUM)
                selectCollection = 0;
              radioSelColl.print(selectCollection+1);
              radioColl.print(radioCollection[selectCollection]/100.0);
              break;
         case 2:/*选择上一个收藏电台*/
              selectCollection-=1;
              if(selectCollection < 0)
                selectCollection = COLLECTION_NUM - 1;
              radioSelColl.print(selectCollection+1);
              radioColl.print(radioCollection[selectCollection]/100.0);
              break;
          case 3:/*取消当前收藏电台*/
              cancelradioCollection(selectCollection);
              break;
          case 4:/*退出*/
              n_state = display_state;
              break;
        }
        delay(200);
      }
}

void percept_function(){
    ttp229.readKeys();
    int key=ttp229.getKey();
    if(key>-1){
      switch(key){
        case 0:/*获取温湿度信息*/
          percept_t_h();
          break;
        case 1:/*获取天气信息*/
          percept_weather();
          break;
        case 2:/*进入显示界面*/
          percept_message_display();
          break;
        case 3:
          n_state=display_state;
          break;
        default:
          break;
      }
      delay(100);
    }
}

void timecal_function(){
    wifi_time_flag=setTimeWiFi();
    if(wifi_time_flag){
        display.clearDisplay();
        display.setCursor(0,0);
        display.setTextSize(2);
        display.println(F("Finish"));
        display.println(F("Calibrating"));
        display.display();
        delay(2000);
    }else{
        display.clearDisplay();
        display.setCursor(0,0);
        display.setTextSize(1);
        display.println(F("Fail To "));
        display.println(F("Calibrate"));
        display.display();
        delay(2000);
    }
    n_state=display_state;
}

/*
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
*/

void displayTime(){
    display.clearDisplay();
    display.setTextSize(1);
    display.setTextColor(SSD1306_WHITE);
    display.setCursor(0,0);
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
     display.print(" (");
    display.print(dayOfTheWeek_list[t.dayOfTheWeek()]);
    display.println(") ");
}

bool setTimeWiFi(){
    if(WiFi.status()!=WL_CONNECTED)
        return false;
    struct tm time_info;
    configTime(8 * 3600, 0, NTP1, NTP2,NTP3);
    if(!getLocalTime(&time_info))
        return false;
    rtc.adjust(DateTime(time_info.tm_year-100,time_info.tm_mon+1,time_info.tm_mday,time_info.tm_hour,time_info.tm_min,time_info.tm_sec));
    return true;
}

bool setWeatherWiFi(){
    if(WiFi.status()!=WL_CONNECTED)
        return false;
    WiFiClient client;
    //连接服务器
    if (client.connect(host, httpPort)) {
      Serial.println("Connect Successfully");
      client.print(httprequest);//访问API接口
      String response_status = client.readStringUntil('\n');
      if (client.find("\r\n\r\n")) {
        Serial.println("Find JSON");
      }
      parseJson(client);
     }
     else {
       Serial.println("Fail to connect server");
     }
    client.stop();
    return true;
}

void percept_t_h(){
    float tem,hum=0;
    display.clearDisplay();
    display.setCursor(0,0);
    display.setTextSize(2);             
    display.setTextColor(SSD1306_WHITE);
    display.println(F("Start"));
    display.println(F("Percepting"));
    display.println(F("... ..."));
    display.display();
    delay(2000);
    tem=dht.readTemperature();
    hum=dht.readHumidity();
    if (isnan(hum) || isnan(tem)) {
        Serial.println(F("Failed to read from DHT sensor"));
    }
    p_temperature=tem;
    p_humidity=hum;
}

void percept_weather(){
    wifi_weather_flag=setWeatherWiFi();
    if(wifi_weather_flag){
        display.clearDisplay();
        display.setCursor(0,0);
        display.setTextSize(2);
        display.println(F("Get"));
        display.println(F("Weather"));
        display.display();
        delay(2000);
    }else{
        display.clearDisplay();
        display.setCursor(0,0);
        display.setTextSize(2);
        display.println(F("No"));
        display.println(F("Weather"));
        display.display();
        delay(2000);
    }
}

void savenowradiostation(int t){
    int h,l;
    h=t/100;
    l=t%100;
    Wire.beginTransmission(EEPROM_ADDRESS);
    Wire.write(0x00);
    Wire.write(0x00);
    Wire.write(h);
    Wire.endTransmission();
    delay(10);
    Wire.beginTransmission(EEPROM_ADDRESS);
    Wire.write(0x00);
    Wire.write(0x00+1);
    Wire.write(l);
    Wire.endTransmission();
    delay(10);
}

void savenowradiovolume(int t){
    Wire.beginTransmission(EEPROM_ADDRESS);
    Wire.write(0x00);
    Wire.write(0x00+2);
    Wire.write(radioVolume);
    Wire.endTransmission();
    delay(10);
}

bool getnowradiostation(){
    int h,l;
    Wire.beginTransmission(EEPROM_ADDRESS);
    Wire.write(0x00);
    Wire.write(0x00);
    Wire.endTransmission();
    Wire.requestFrom(EEPROM_ADDRESS,1);
    while(Wire.available()){
         h=Wire.read();
    }
    delay(10);
    Wire.beginTransmission(EEPROM_ADDRESS);
    Wire.write(0x00);
    Wire.write(0x00+1);
    Wire.endTransmission();
    Wire.requestFrom(EEPROM_ADDRESS,1);
    while(Wire.available()){
         l=Wire.read();
    }
    delay(10);
    radioStation=h*100+l;
    if(radioStation)
      return true;
    return false;
}

bool getnowradiovolume(){
    Wire.beginTransmission(EEPROM_ADDRESS);
    Wire.write(0x00);
    Wire.write(0x00+2);
    Wire.endTransmission();
    Wire.requestFrom(EEPROM_ADDRESS,1);
    while(Wire.available()){
         radioVolume=Wire.read();
    }
    if(radioVolume)
      return true;
    return false;
}

void saveradioCollection(int t) {
    int h,l;
    for(int i=0;i<COLLECTION_NUM;i++){
      if(t==radioCollection[i]){
        //cancelradioCollection();
        display.clearDisplay();
        display.setCursor(0,0);
        display.setTextSize(2);             
        display.setTextColor(SSD1306_WHITE);
        display.println(F("Collected Before"));
        display.display();
        delay(2000);
        return;
      }
    }
    for(int i=0;i<COLLECTION_NUM;i++) 
    {
      if(0==radioCollection[i]){
        radioCollection[i]=t;
        h=radioCollection[i]/100;
        t=radioCollection[i]%100;
        /*
        display.clearDisplay();
        display.setCursor(0,0);
        display.setTextSize(1);
        display.println(radioCollection[i]/100);
        display.println(radioCollection[i]%100);
        display.display();
        delay(2000);
        */
        Wire.beginTransmission(EEPROM_ADDRESS);
        Wire.write(0x00);
        Wire.write(0x10+i*2);
        Wire.write(h);
        Wire.endTransmission();
        delay(10);/*加延时避免传输数据出错*/
        Wire.beginTransmission(EEPROM_ADDRESS);
        Wire.write(0x00);
        Wire.write(0x10+i*2+1);
        Wire.write(t);
        Wire.endTransmission();
        delay(10);
        display.clearDisplay();
        display.setCursor(0,0);
        display.setTextSize(2);             
        display.setTextColor(SSD1306_WHITE);
        display.println(F("Finish"));
        display.println(F("Adding In"));
        display.println(F("Collection"));
        display.display();
        delay(2000);
        return;
      }
    }
    display.clearDisplay();
    display.setCursor(0,0);
    display.setTextSize(2);             
    display.setTextColor(SSD1306_WHITE);
    display.println(F("Full"));
    display.println(F("Collection"));
    display.display();
    delay(2000);
    return;
}

void changenowradioCollection(int t){
    int h,l;
    for(int i=0;i<COLLECTION_NUM;i++){
      if(t==radioCollection[i]){
        //cancelradioCollection();
        display.clearDisplay();
        display.setCursor(0,0);
        display.setTextSize(2);             
        display.setTextColor(SSD1306_WHITE);
        display.println(F("Collected Before"));
        display.display();
        delay(2000);
        return;
      }
    }
    cancelradioCollection(selectCollection);
    radioCollection[selectCollection]=t;
    h=t/100;
    t=t%100;
    Wire.beginTransmission(EEPROM_ADDRESS);
    Wire.write(0x00);
    Wire.write(0x10+selectCollection*2);
    Wire.write(h);
    Wire.endTransmission();
    delay(10);
    Wire.beginTransmission(EEPROM_ADDRESS);
    Wire.write(0x00);
    Wire.write(0x10+selectCollection*2+1);
    Wire.write(t);
    Wire.endTransmission();
    delay(10);
    display.clearDisplay();
    display.setCursor(0,0);
    display.setTextSize(2);             
    display.setTextColor(SSD1306_WHITE);
    display.println(F("Finish"));
    display.println(F("Changing"));
    display.println(F("Collection"));
    display.display();
    delay(2000);
}

void getradioCollection() {
    int h,l;
    for(int i=0;i<COLLECTION_NUM;i++){
        Wire.beginTransmission(EEPROM_ADDRESS);
        Wire.write(0x00);
        Wire.write(0x10+i*2);
        Wire.endTransmission();
        Wire.requestFrom(EEPROM_ADDRESS,1);
        while(Wire.available()){
            h=Wire.read();
        }
        Wire.beginTransmission(EEPROM_ADDRESS);
        Wire.write(0x00);
        Wire.write(0x10+i*2+1);
        Wire.endTransmission();
        Wire.requestFrom(EEPROM_ADDRESS,1);
        while(Wire.available()){
            l=Wire.read();
        }
        radioCollection[i]=h*100+l;
        /*
        display.clearDisplay();
        display.setCursor(0,0);
        display.setTextSize(1);
        display.println(radioCollection[i]/100);
        display.println(radioCollection[i]%100);
        display.display();
        delay(2000);
        */
    }
}

void cancelradioCollection(int select) {
      radioCollection[select]=0;
      Wire.beginTransmission(EEPROM_ADDRESS);
      Wire.write(0x00);
      Wire.write(0x10+select*2);
      Wire.write(0);
      Wire.endTransmission();
      delay(10);
      Wire.beginTransmission(EEPROM_ADDRESS);
      Wire.write(0x00);
      Wire.write(0x10+select*2+1);
      Wire.write(0);
      Wire.endTransmission();
      delay(10);
}

void JudgeisCollection(){
      /*判断当前播放电台是否为收藏电台*/
      for(int i=0;i<COLLECTION_NUM;i++){
         if(radioStation==radioCollection[i]){
           isCollection=true;
           return;
         }
      }
      isCollection=false;
}

void parseJson(WiFiClient client) {
  const size_t capacity = JSON_ARRAY_SIZE(1) + JSON_OBJECT_SIZE(1) + 2 * JSON_OBJECT_SIZE(3) + JSON_OBJECT_SIZE(6) + 230;
  DynamicJsonDocument doc(capacity);
  deserializeJson(doc, client);

  JsonObject obj1 = doc["results"][0];
  cityName = obj1["location"]["name"].as<String>();
  weather = obj1["now"]["text"].as<String>();
  temperature = obj1["now"]["temperature"].as<String>();
  Serial.println(cityName);
  Serial.println(weather);
  Serial.println(temperature);
}

void buttonUp1_function(const String & state) {
    radioStation += 10;
    savenowradiostation(radioStation);
    radio.setBandFrequency(FIX_BAND, radioStation);
    radio.setMono(!sw);
    radio.setMute(!sw);
    radioNow.print(radioStation/100.0);
}

void buttonDown1_function(const String & state) {
    radioStation -= 10;
    savenowradiostation(radioStation);
    radio.setBandFrequency(FIX_BAND, radioStation);
    radio.setMono(!sw);
    radio.setMute(!sw);
    radioNow.print(radioStation/100.0);
}

void buttonUp2_function(const String & state) {
    selectCollection-=1;
    if(selectCollection < 0)
      selectCollection = COLLECTION_NUM - 1;
    radioSelColl.print(selectCollection+1);
    radioColl.print(radioCollection[selectCollection]/100.0);
}

void buttonDown2_function(const String & state) {
    selectCollection+=1;
    if(selectCollection >= COLLECTION_NUM)
      selectCollection = 0;
    radioSelColl.print(selectCollection+1);
    radioColl.print(radioCollection[selectCollection]/100.0);
}

void buttonUp3_function(const String & state) {
    radioVolume+=1;
    if(radioVolume>10)
      radioVolume=10;
    savenowradiovolume(radioVolume);
    radioVol.print(radioVolume);
    radio.setVolume(radioVolume);
}

void buttonDown3_function(const String & state) {
    radioVolume-=1;
    if(radioVolume<0)
       radioVolume=0;
    savenowradiovolume(radioVolume);
    radioVol.print(radioVolume);
    radio.setVolume(radioVolume);
}

void buttonPlay_function(const String & state) {
    if(0 == radioCollection[selectCollection])
      return;
    radioStation=radioCollection[selectCollection];
    savenowradiostation(radioStation);
    radio.setBandFrequency(FIX_BAND, radioStation);
    radio.setMono(!sw);
    radio.setMute(!sw);
    radioNow.print(radioStation/100.0);
}

void buttonSwitch_function(const String & state) {
    radio.setMono(sw);
    radio.setMute(sw);
    display.clearDisplay();
    display.setCursor(0,0);
    display.setTextSize(2);             
    display.setTextColor(SSD1306_WHITE);
    if(sw)
      display.println(F("Radio OFF"));
    else
      display.println(F("Radio ON"));
    display.display();
    delay(2000);
    n_state=display_state;
    sw=!sw;
}

void dataRead(const String & data)  {
    if(data.length() > 0){
      changenowradioCollection(data.toInt());
    }
    getradioCollection();
    radioColl.print(radioCollection[selectCollection]/100.0);
}
