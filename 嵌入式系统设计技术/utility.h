#ifndef _utility_H_
#define _utility_H_

#include <Arduino.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <string>

#define OLED_RESET     -1     
#define SCREEN_ADDRESS 0x3C   
#define SCREEN_WIDTH 128      
#define SCREEN_HEIGHT 64      


Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

String num2str(uint16_t num);
byte dispState = 0;           // 显示模式

void dispTime();
void dispHis();
void disp0();
void disp1();
void disp2();

#endif