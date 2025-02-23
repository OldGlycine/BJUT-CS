#include "clock.h"
#include "utility.h"
#include "heart.h"

String num2str(uint16_t num){
  String str = "";
  if(num < 10){
    str += '0';
    str += num;
  }
  else{
    str += (num / 10);
    str += (num % 10);
  }
  return str;
}

void dispTime(){
  display.clearDisplay();
  display.setTextSize(1);             // Normal 1:1 pixel scale
  display.setCursor(2,2);             // Start at top-left corner
  display.setTextColor(1, 0); // 黑色背景白字
  dispTime();
  display.print(num2str(now.year()));
  display.print("/");
  display.print(num2str(now.month()));
  display.print("/");
  display.print(num2str(now.day()));
  display.print(" ");
  display.print(num2str(now.hour()));
  display.print(":");
  display.print(num2str(now.minute()));
  display.print(":");
  display.println(num2str(now.second()));
  if(!dispState)    display.println("**MENU**");
  if(dispState == 1)display.println("**History**");
  if(dispState == 2);
  ////////////////////////////////////////////////////////////////////////
}

void dispHis(){

}

void disp0(){ /* 主界面模式：展示时间，按键0-2的操作提示，阈值 */
  dispTime();
  
  display.setTextSize(2); 
  display.println("0 -> Start testing!!");
  display.println("1 -> History!!");
  display.println("2 -> Set range!!");

  display.setTextSize(1);
  display.print("Cur range:");
  display.print(" SBP: ");
  display.print(Range[0]);
  display.print("-");
  display.print(Range[1]);
  display.print(" DBP: ");
  display.print(Range[2]);
  display.print("-");
  display.println(Range[3]);
  display.print(" HR: ");
  display.print(Range[4]);
  display.print("-");
  display.print(Range[5]);
}

void disp1(){ /* 历史记录模式：展示五条历史记录，按任意键返回*/
  dispTime();

  display.setTextSize(2);
}

void disp2();