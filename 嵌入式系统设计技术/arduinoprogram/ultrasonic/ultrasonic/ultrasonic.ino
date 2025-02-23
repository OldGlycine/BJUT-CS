#include <Arduino.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64
#define SCREEN_ADDRESS 0x3C
#define OLED_RESET -1
#define avr 4

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

const int trig=2;
const int echo=3;
const int RLED=7;//红色RGB
const int GLED=5;//绿色RGB
const int KEY1=0;//按键1
bool LEDSta=LOW;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  delay(200);
  //脉冲初始化
  pinMode(trig,OUTPUT);
  pinMode(echo,INPUT);
  //LED初始化
  pinMode(RLED,OUTPUT);
  pinMode(GLED,OUTPUT);
  pinMode(LEDSta,INPUT);
  digitalWrite(GLED,HIGH);

  if(!display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS)){
    Serial.println(F("SSD1306 allocation failed"));
    for(;;);
  }
  displayStart();
}

void loop() {
  // put your main code here, to run repeatedly:

  if(digitalRead(KEY1)==LOW){
    delay(20);
    if(digitalRead(KEY1)==LOW)
    {
      LEDSta=!LEDSta;
      digitalWrite(RLED,LEDSta);
      digitalWrite(GLED,!LEDSta);
      if(LEDSta!=HIGH){
          Serial.printf("已开始测量距离\r\n");
      }
      else{
          Serial.printf("已暂停测量距离\r\n");
      }
    }
  }

  if(LEDSta!=HIGH){
      double disintotal= 0;
        
      for(int count=0;count<avr;count++){
        
        digitalWrite(trig,HIGH);
        delayMicroseconds(15);//延时15us，即发送15us的脉冲
        digitalWrite(trig,LOW);
  
        float t = pulseIn(echo,HIGH);//读取echo引脚脉冲时长
        double onedis = t*0.017; //根据ECHO管脚输出高电平的持续时间可以计算距离值。即距离值为(高电平时间*340m/s)/2
          
        disintotal+=onedis;
        delay(20);
      }
      double result=(disintotal/avr);//采用取平均值的方法进行简单滤波

      if(result>=100){
        Serial.printf("测距距离大，安全距离\r\n");
        Serial.printf("%f cm \r\n",result);
        displayDistance(result);
      }else if(result<100&&result>=20){
        Serial.printf("测距距离较大，接近安全距离\r\n");
        Serial.printf("%f cm \r\n",result);
        displayDistance(result);
      }else if(result<20&&result>=0){
        Serial.printf("测距距离较小，小于安全距离，危险告警\r\n");
        Serial.printf("%f cm \r\n",result);
        displayDistance(result);
      }
      displayDistance(result);
  }else
  {
    displayPause();
  }
  delay(200);
}

//OLED显示测量数值函数
void displayDistance(float distance){
    display.clearDisplay();
    display.setCursor(0, 0);
    display.setTextSize(2);
    display.setTextColor(SSD1306_WHITE);
    display.print(distance);
    display.println("cm");
    display.display();
    delay(200);
}

//OLED显示开始测量函数
void displayStart(){
    display.clearDisplay();
    display.setCursor(0, 0);
    display.setTextSize(1);
    display.setTextColor(SSD1306_WHITE);
    display.println(F("Start Measuring"));
    display.display();
    delay(2000);
}

//OLED显示暂停测量函数
void displayPause(){
    display.clearDisplay();
    display.setCursor(0, 0);
    display.setTextSize(1);
    display.setTextColor(SSD1306_WHITE);
    display.println(F("Pause Measurement"));
    display.display();
}
