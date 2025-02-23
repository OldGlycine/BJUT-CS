#include <SPI.h>
#include <Wire.h>

byte BPstatueCMD[6] = {0xF8, 0x00, 0x00, 0x00, 0x00, 0x00};   //血压传感器读取状态命令帧
byte BPstatue[6];                                             //血压传感器返回的状态
byte BPdataCMD[6] = {0xFD, 0x00, 0x00, 0x00, 0x00, 0x00};     //血压传感器读取数据命令帧
byte BPdata[6];                                               //血压传感器返回的数据
int SBP = 0;                                                  //收缩压（高压）
int DBP = 0;                                                  //舒张压（低压）
int HR = 0;

void setup() {
  Serial.begin(115200);
  Serial1.begin(115200);
  delay(100);
  Serial.println();

  /*testBP();
  Serial.print("SBP = "); Serial.print(SBP, DEC);
  Serial.print("\tDBP = "); Serial.print( DBP, DEC);
  Serial.print("\theart_rate = "); Serial.println( HR, DEC);*/
}

void loop() {
  testBP();
  Serial.print("SBP = "); Serial.print(SBP, DEC);
  Serial.print("\tDBP = "); Serial.print( DBP, DEC);
  Serial.print("\theart_rate = "); Serial.println( HR, DEC);
  delay(1000);
}

void testBP()           //测量血压函数
{
  int BPnum = 0;        //血压采集次数
  int SBPsum = 0;       //收缩压的和
  int DBPsum = 0;       //收缩压的和
  int HRsum = 0;        //心率的和
  
  do
  {  
    Serial1.write(BPstatueCMD,6);         //发送查询传感器状态命令帧
    delay(10);

    if (Serial1.available() > 0)         //读取传感器返回的状态帧         
      {
        for (int i = 0; i <= 5; i++)
        {
          BPstatue[i] = Serial1.read();
        }
      }
      for (int i = 0; i <= 5; i++)
        {
          Serial.print(BPstatue[i], HEX);
          Serial.print(' ');
        }
        Serial.println();
  }
//若返回的第1个字节不为0xF8,或第4个字节不为7（未佩戴传感器），则重发查询状态命令帧
  while((BPstatue[0]!= 0xF8) || (BPstatue[3]!= 0x07));  

  while(BPnum < 21)                   //判断采集数据的次数是否到
  {    
    do
    {
      Serial1.write(BPdataCMD,6);         //发送读取数据（血压/心率）命令帧
      delay(10);

      if (Serial1.available() > 0)       //读取传感器返回的数据 
      {
        for (int i = 0; i <= 5; i++)
        {
          BPdata[i] = Serial1.read();
        }
      }


      for (int i = 0; i <= 5; i++)
        {
          Serial.print(BPdata[i], HEX);
          Serial.print(' ');
        }
        Serial.println();
    }  
// 若返回的第1个字节不为0xFD,或返回的数据为0xFF或为0，则重发读取数据命令帧
    while((BPdata[0] != 0xFD) || BPdata[1] == 0xFF ||BPdata[1]==0x00);

    SBPsum += BPdata[1];        //收缩压求和
    DBPsum += BPdata[2];        //舒张压求和
    HRsum += BPdata[3];         //心率求和
    BPnum++;
  }  
 
  SBP = SBPsum/BPnum;        //求收缩压平均值
  DBP = DBPsum/BPnum;        //求舒张压平均值
  HR = HRsum/BPnum;          //求心率平均值  
}
