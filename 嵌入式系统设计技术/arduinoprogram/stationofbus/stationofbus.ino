#include <Wire.h>
#include <SPI.h>
#include <Adafruit_GFX.h>
#include "Adafruit_LEDBackpack.h"

#define Matrix1 0x70
#define Matrix2 0x71

word BaseAdd = 0x2C9D0;
word Address[7] = {0};
byte MSB1[9] = {0xB1,0xBE,0xB9,0xD2,0xB4,0xD1,0xCE,0xC3,0xD5};
byte LSB1[9] = {0xB1,0xA9,0xA4,0xB5,0xF3,0xA7,0xF7,0xC5,0xBE};
byte MSB2[4] = {0xB1,0xBE,0xC4,0xD5};
byte LSB2[4] = {0xB1,0xA9,0xCF,0xBE};
byte radio1[] = {0xFD,0x00,0x22,0x01,0x00};
byte radio2[] = {0xFD,0x00,0x18,0x01,0x00};
byte message[10] = {0xC7,0xB0,0xB7,0xBD,0xB5,0xBD,0xD5,0xBE,0xCA,0xC7};
byte volume[4] = {0x5B,0x76,0x39,0x5D};
int lenght1 = 9;
int lenght2 = 4;
int station = 1;
byte characterleft[15] = {0};
byte characterright[15] = {0};
const int buttonPin1 = 0;     
const int buttonPin2 = 1;
const int chinesePin = 7;
Adafruit_8x16matrix matrixr = Adafruit_8x16matrix();
Adafruit_8x16matrix matrixl = Adafruit_8x16matrix();

void setup() {
  Serial1.begin(115200);
  SPI.begin();
  pinMode(buttonPin1, INPUT);
  pinMode(buttonPin2, INPUT);
  pinMode(chinesePin, OUTPUT);
  digitalWrite(chinesePin,HIGH);
  matrixl.begin(Matrix1);  
  matrixr.begin(Matrix2); 
  lenght1 = sizeof(MSB1)/sizeof(MSB1[0]);
  lenght2 = sizeof(MSB2)/sizeof(MSB2[0]);
}

void loop() {
    if(digitalRead(buttonPin1) == LOW) {
      switch(station) {
        case 1:
              radioPlay(MSB1,LSB1,radio1,lenght1);
              displayCharacter(MSB1,LSB1,lenght1);
              break;
        case 2:
              radioPlay(MSB2,LSB2,radio2,lenght2);
              displayCharacter(MSB2,LSB2,lenght2);
              break;
        default:
              station = 1;
      }
      delay(200);
    }
    if(digitalRead(buttonPin2) == LOW) {
      station++;
      delay(200);
    }
}

void displayCharacter(byte MSB[],byte LSB[],int lenght) {
  for(int i = 0; i < lenght; i++) {
    matrixl.clear();
    matrixr.clear();
    if(MSB[i] >=0xA1 && MSB[i] <= 0Xa9 && LSB[i] >=0xA1)
      Address[i] =( (MSB[i] - 0xA1) * 94 + (LSB[i] - 0xA1))*32+ BaseAdd;
    else if(MSB[i] >=0xB0 && MSB[i] <= 0xF7 && LSB[i] >=0xA1) 
      Address[i] = ((MSB[i] - 0xB0) * 94 + (LSB[i] - 0xA1)+ 846)*32+ BaseAdd;
    digitalWrite(chinesePin,LOW);
    SPI.transfer(0x0B);
    SPI.transfer((Address[i]&0xFF0000)>>16);
    SPI.transfer((Address[i]&0x00FF00)>>8);
    SPI.transfer(Address[i]&0x0000FF);
    for(int j = 0; j < 32; j++) {
      if(j%2 == 0)
        characterright[j/2] = SPI.transfer(0xFF);
      else
        characterleft[j/2] = SPI.transfer(0xFF);
    }
    digitalWrite(chinesePin,HIGH);
    matrixl.drawBitmap(0, 0, characterleft, 8, 16, LED_ON);
    matrixr.drawBitmap(0, -1, characterright, 8, 16, LED_ON);
    matrixl.writeDisplay();
    matrixr.writeDisplay();
    delay(1000);
  }
} 
 
void radioPlay(byte MSB[],byte LSB[],byte radio[],int lenght) {
  for(int i = 0; i < 5; i++) {
    Serial1.write(radio[i]);
  }
  for(int i = 0; i < 4; i++)
    Serial1.write(volume[i]);
  for(int i = 0; i < 10; i++)
    Serial1.write(message[i]);
  for(int i = 0; i < lenght; i++) {
    Serial1.write(MSB[i]);
    Serial1.write(LSB[i]);
  }
  delay(17);
  delay(1000);
}
