#include "clock.h"

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