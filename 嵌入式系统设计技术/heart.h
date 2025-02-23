#ifndef _heart_H_
#define _heart_H_

#include <Arduino.h>

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
byte History[9][5];                                           // 最近5条历史，存储月日时分秒
byte Range[6];           //maxSBP, minSBP, maxDBP, minDBP, maxHR, minHR;            


#endif