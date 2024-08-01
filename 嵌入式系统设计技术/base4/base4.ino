#include <Wire.h>
#include <SPI.h>
#include "Adafruit_LEDBackpack.h"

#define K1 0
#define LEFT 0x70
#define RIGHT 0x71
#define HZK_CS 7
#define BASE_ADDR 0x2C9D0 // P15
#define TAO 0xCCD5
#define RAN 0xC8BB
#define QIAO 0xC7C5
#define BEI 0xB1B1
#define TAI 0xCCAB
#define PING 0xC6BD
#define JIE 0xBDD6
#define HU 0xBBA2
#define FANG 0xB7BB

hw_timer_t * timer = NULL;
bool bo;
Adafruit_8x16matrix matrixl = Adafruit_8x16matrix();
Adafruit_8x16matrix matrixr = Adafruit_8x16matrix();
int lop;
uint8_t BUF[128];
byte led_arr[32];
byte ledl[16], ledr[16], zeros[16];
int word_addr;

int msb(int addr){
  return (addr & 0xFF00) >> 8;
}

int lsb(int addr){
  return addr & 0x00FF;
}

int findByteAddr(int addr){
  int MSB = msb(addr);
  int LSB = lsb(addr);
  if(MSB >= 0xA1 && MSB <= 0Xa9 && LSB >= 0xA1)
    return ((MSB - 0xA1) * 94 + (LSB - 0xA1)) * 32 + BASE_ADDR;
  else if (MSB >= 0xB0 && MSB <= 0xF7 && LSB >= 0xA1)
  return ((MSB - 0xB0) * 94 + (LSB - 0xA1) + 846) * 32 + BASE_ADDR;
}

uint8_t TRQB[13] = {0xFD, 0x00, 0x0A, 0x01, 0x00, msb(TAO), lsb(TAO), msb(RAN), lsb(RAN), msb(QIAO), lsb(QIAO), msb(BEI), lsb(BEI)};
uint8_t TPJ[11] = {0xFD, 0x00, 0x08, 0x01, 0x00, msb(TAI), lsb(TAI), msb(PING), lsb(PING), msb(JIE), lsb(JIE)};
uint8_t HFQ[11] = {0xFD, 0x00, 0x08, 0x01, 0x00, msb(HU), lsb(HU), msb(FANG), lsb(FANG), msb(QIAO), lsb(QIAO)};

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  Serial1.begin(115200);
  SPI.begin();
  // 汉字库
  pinMode(HZK_CS, OUTPUT);
  digitalWrite(HZK_CS, HIGH);
  // LED点阵初始化
  matrixl.begin(LEFT);
  matrixr.begin(RIGHT);
  lop = 0;
  bo=true;
  // button
  pinMode(K1, INPUT);

  timer = timerBegin(0, 80, true);
  timerAttachInterrupt(timer, &onTimer, true);
  timerAlarmWrite(timer, 200000, true);
  timerAlarmEnable(timer);
}

void onTimer(){
  if(digitalRead(K1) == LOW){
    bo = true;
    lop = (lop + 1) % 3;
  } 
}

void led(int addr){
  int l = 0, r = 0;
  digitalWrite(HZK_CS, LOW);
  SPI.transfer(0x03);
  SPI.transfer(addr >> 16);
  SPI.transfer(addr >> 8);
  SPI.transfer(addr & 0xFF);
  for(int i = 0; i < 32; i++)
    led_arr[i] = SPI.transfer(0x00); // read
  digitalWrite(HZK_CS, HIGH);
  for(int i = 0; i < 32; i++)
    if(i % 2) ledr[r++] = led_arr[i];
    else if(!(i % 2)) ledl[l++] = led_arr[i];
}

void disp(bool clean){
  matrixl.clear();
  matrixr.clear();
  if(clean){
    matrixl.drawBitmap(0, 0, zeros, 8, 16, LED_ON);
    matrixr.drawBitmap(0, 0, zeros, 8, 16, LED_ON);
  }
  else{
    matrixl.drawBitmap(0, 0, ledl, 8, 16, LED_ON);
    matrixr.drawBitmap(0, 0, ledr, 8, 16, LED_ON);
  }
  matrixl.writeDisplay();
  matrixr.writeDisplay();
  delay(300);
}

void loop() {
  if(bo){
    if(lop == 0){ // 陶然桥北
      Serial1.write(TRQB, 13);
      led(findByteAddr(TAO));
      disp(false);
      led(findByteAddr(RAN));
      disp(false);
      led(findByteAddr(QIAO));
      disp(false);
      led(findByteAddr(BEI));
      disp(false);
      disp(true);
    }
    else if(lop == 1){ // 太平街
      Serial1.write(TPJ, 11);
      led(findByteAddr(TAI));
      disp(false);
      led(findByteAddr(PING));
      disp(false);
      led(findByteAddr(JIE));
      disp(false);
      disp(true);
    }
    else if(lop == 2){ // 虎坊桥
      Serial1.write(HFQ, 11);
      led(findByteAddr(HU));
      disp(false);
      led(findByteAddr(FANG));
      disp(false);
      led(findByteAddr(QIAO));
      disp(false);
      disp(true);
    }
    bo = false;
  }
}
