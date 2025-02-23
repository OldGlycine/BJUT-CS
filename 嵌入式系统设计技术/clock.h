#ifndef _clock_H_
#define _clock_H_

#include <Arduino.h>
#include <RTClib.h>
#include <Wire.h>
#define EEPROM_ADDR 0x50
#define TTP229_ADDR 0x57
RTC_DS1307 rtc;
DateTime now;

void ewrite_b(int data, int addr);
int eread_b(int addr);

#endif