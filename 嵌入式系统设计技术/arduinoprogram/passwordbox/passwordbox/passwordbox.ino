#include <Arduino.h>
#include <math.h>
#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64
#define SCREEN_ADDRESS 0x3C
#define OLED_RESET -1
#define KEYBOARD_ADDRESS 0x57

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);


const int KEY1=0;
const int KEY2=1;
const int LEDG=5;
const int LEDR=7;


String inString="";
String inKeyTemp="";
String passwd="";
bool complete=false;
bool door=false;//0:关门 1:开门
bool request=false;
int chance=5;
volatile bool LEDRSta = 0;
volatile bool LEDGSta = 1;

void setup(){
    Serial.begin(9600);
    Wire.begin();
    pinMode(LEDR,OUTPUT);
    digitalWrite(LEDR,LOW);
    pinMode(LEDG,OUTPUT);
    digitalWrite(LEDG,HIGH);
    pinMode(KEY1,INPUT);
    pinMode(KEY2,INPUT);
    if(!display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS)){
        Serial.println(F("SSD1306 allocation failed"));
        for(;;);
    }
    display.clearDisplay();
}

void loop(){
    if(LEDGSta){
        displayUnlock(1);
        lock();
        doDoor();
    }
    if(LEDRSta){
        displayLock(1);
        unlock();
        admin();
    }
}

void admin(){
    while(Serial.available()){
        char inChar=Serial.read();
        delay(10);
        if(inChar!='\r')
            inString+=inChar;
        else if(inChar=='\r')
            complete=true;
    }
    if(complete){
        if(inString=="sby20011212"){
            passwd="";
            LEDRSta=!LEDRSta;
            LEDGSta=!LEDGSta;
            chance=5;
            displayUnlock(0);
            delay(500);
        }
        inString="";
        complete=false;
        inKeyTemp="";
        request=false;
    }
}

void displayUnlock(int att){
    display.clearDisplay();
    display.setTextSize(1);
    display.setTextColor(SSD1306_WHITE);
    display.setCursor(0,0);
    display.println(F("State:Unlock"));
    if(!door)
        display.println(F("Door Close"));
    else
        display.println(F("Door Open"));
    if(att==1){
        display.setTextSize(1);
        display.setCursor(0,50);
        String tmp="";
        for(int i=0;i<inKeyTemp.length();i++)
            tmp+='*';
        display.println(tmp);
    }
    display.display();
    digitalWrite(LEDR,LEDRSta);
    digitalWrite(LEDG,LEDGSta);
}

void displayLock(int att){
    display.clearDisplay();
    display.setTextSize(1);
    display.setTextColor(SSD1306_WHITE);
    display.setCursor(0,0);
    display.print(F("State:Lock"));
    display.print(' ');
    display.println(chance);
    if(att==1){
        display.setTextSize(1);
        display.setCursor(0,50);
        display.println(inKeyTemp);
    }
    display.display();
    digitalWrite(LEDR,LEDRSta);
    digitalWrite(LEDG,LEDGSta);
}

void displayError(int att){//0:没关门 1:设置的密码太短 2:开锁密码错误
    display.clearDisplay();
    display.setTextSize(1);
    display.setTextColor(SSD1306_WHITE);
    display.setCursor(0,0);
    digitalWrite(LEDG,LOW);
    digitalWrite(LEDR,LOW);
    delay(50);
    if(att==0){
        display.println(F("Please close the door"));
        display.display();
    }
    else if(att==1){
        display.println(F("Unproper Design of Password "));
        display.println(F("length should be >= 4"));
        display.display();
    }
    else if(att==2){
        display.println(F("Wrong password, please input again"));
        display.display();
    }
   
    digitalWrite(LEDR,HIGH);
    delay(50);
    delay(2400);
    if(LEDGSta)
        displayUnlock(1);
    else if(LEDRSta)
        displayLock(1);    
}

void lock(){
    if(digitalRead(KEY2)==LOW){
        delay(30);
        if(digitalRead(KEY2)==LOW)
            request=true;
        delay(30);
    }
    inKey();
    if(request){
        if(door)
            displayError(0);
        else if(inKeyTemp.length()<4)
            displayError(1);
        else{
            passwd=inKeyTemp;
            LEDGSta=!LEDGSta;
            LEDRSta=!LEDRSta;
            chance=4;
            displayLock(0);
            delay(500);
        }
        inKeyTemp="";
        request=false;
    }
}

void unlock(){
    if(chance>0){
        if(digitalRead(KEY2)==LOW){
            delay(30);
            if(digitalRead(KEY2)==LOW)
                request=true;
            delay(30);
        }
        inKey();
        if(request){
            if(inKeyTemp!=passwd){
                displayError(2);
                chance--;
            }
            else{
                passwd="";
                LEDGSta=!LEDGSta;
                LEDRSta=!LEDRSta;
                chance=4;
                displayUnlock(0);
                delay(500);
            }
            inKeyTemp="";
            request=false;
        }
    }
}

void inKey(){//0:上锁 1:解锁
    if(request)
        return; 
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
        }
    }
    delay(100);
}

void doDoor(){
    if(digitalRead(KEY1)==LOW){
        delay(30);
        if(digitalRead(KEY1)==LOW)
            door=!door;
        delay(30);
    }
}
