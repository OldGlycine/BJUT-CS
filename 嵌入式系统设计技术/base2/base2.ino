/*
1.实现触摸器数值读取
2.实现OLED显示数据
3.关门红灯，上锁（设置密码）黄色，开锁绿色
4.设置密码功能（可以读取灯高电平的时间作为读秒，设置密码应当有超时限制）
5.管理员密码功能

上锁（设置密码）——关门——开锁——上锁（设置完密码就是关门）——关门——开锁循环
*/

#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define RLED 7
#define GLED 5 
#define BLED 4
#define K2 1
#define K1 0
#define TTP229_ADDR 0x57
#define OLED_RESET     -1 // Reset pin # (or -1 if sharing Arduino reset pin)
#define SCREEN_ADDRESS 0x3C
#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 64 // OLED display height, in pixels
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

int state;
/*上锁状态0，关门1，开锁2，超过次数3*/
int failNum=0;
char code[15] = {'_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_'};
int codeFull=0;
char pwd[15] = {'_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_'};
int pwdFull=0;

// const int SDA = 8;
// const int SCL = 9;
unsigned int c = 0;
int button = -1;
char cButton;
hw_timer_t * timer = NULL;

void setup() {
  // put your setup code here, to run once:
  Wire.begin();
  Serial.begin(115200);
  if(!display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS)) {
    Serial.println(F("SSD1306 allocation failed"));
    for(;;); // Don't proceed, loop forever
  }
  display.display();
  delay(2000); 
  // Clear the buffer
  display.clearDisplay();
  // LEDs
  pinMode(RLED, OUTPUT);
  pinMode(GLED, OUTPUT);
  pinMode(BLED, OUTPUT);
  state = 0;
  digitalWrite(RLED, HIGH); // 初始状态下是上锁状态，所以是黄灯
  digitalWrite(GLED, HIGH);
  digitalWrite(BLED, LOW);
  // button
  pinMode(K1, INPUT); // K1 for accept
  pinMode(K2, INPUT); // K2 for reset
}

void rstCode(){
  for(int i = 0; i < 15; i++)  code[i] = '_';
}

void rstPwd(){
  for(int i = 0; i < 15; i++)  pwd[i] = '_';
}

void YFlash(){
  digitalWrite(RLED, LOW);
  digitalWrite(GLED, LOW);
  digitalWrite(BLED, LOW);
  delay(50);
  digitalWrite(RLED, HIGH); 
  digitalWrite(GLED, HIGH);
  digitalWrite(BLED, LOW);
  delay(50);
}

void RFlash(){
  digitalWrite(RLED, LOW);
  digitalWrite(GLED, LOW);
  digitalWrite(BLED, LOW);
  delay(50);
  digitalWrite(RLED, HIGH); 
  digitalWrite(GLED, LOW);
  digitalWrite(BLED, LOW);
  delay(50);
}

void state0print(){
  display.clearDisplay();
  display.setTextSize(1);             // Normal 1:1 pixel scale
  display.setCursor(5,5);             // Start at top-left corner
  display.setTextColor(1, 0); // 黑色背景白字
  display.println("State:SETTING");
  display.setTextSize(2); 
  display.setCursor(5,20);
  for(int i = 0; i < 15; i++){
    display.print(pwd[i]); // 在屏幕上显示十六进制数字
    Serial.print(pwd[i]);
  }
  Serial.println();
  
  display.display(); // 更新屏幕显示
}

void state1print(){
  display.clearDisplay();
  display.setTextSize(1);             // Normal 1:1 pixel scale
  display.setCursor(5,5);             // Start at top-left corner
  display.setTextColor(1, 0); // 黑色背景白字
  display.println("State:CLOSE");
  display.setTextSize(2); 
  display.setCursor(5,20);
  for(int i = 0; i < 15; i++){
    display.print(code[i]); // 在屏幕上显示十六进制数字
    Serial.print(code[i]);
  }
  Serial.println();

  display.display(); // 更新屏幕显示
}

void state2print(){
  display.clearDisplay();
  display.setTextSize(1);             // Normal 1:1 pixel scale
  display.setCursor(5,5);             // Start at top-left corner
  display.setTextColor(1, 0); // 黑色背景白字
  display.println("State:OPEN");
  display.setTextSize(2); 
  display.setCursor(5,20);
  display.println("PRESS K2");
  display.println("TO CLOSE");
  display.display();
}

void setPwd(){
  if(button != -1){
    if(pwdFull != 15){
      pwd[pwdFull++] = cButton;
    }
    else{
      for(int i = 0; i < 3; i++) YFlash();
    }

    
    button = -1;
  }
  state0print();
}

void enterCode(){
  if(button != -1){
    if(codeFull != 15){
      code[codeFull++] = cButton;
    }
    else{
      for(int i = 0; i < 3; i++) RFlash();
    }

    button = -1;
  }
  state1print();
}

void gly(){
  display.clearDisplay();
  display.setTextSize(1);             // Normal 1:1 pixel scale
  display.setCursor(5,5);             // Start at top-left corner
  display.setTextColor(1, 0); // 黑色背景白字
  display.println("State:FORBIDEN");
  display.setTextSize(1); 
  display.setCursor(5,20);
  display.println("CALL GLY TO OPEN");
  display.println("");
  display.display();
}

void loop() {
  // put your main code here, to run repeatedly:
  // 每次请求两个字节（16output模式）
  
  Wire.requestFrom(TTP229_ADDR, 2);
  while(Wire.available()){
    c = 0;
    // read每次读取一个字节
    for(int i = 0; i < 2; i++){
      if(i) c += Wire.read();
      else  c += Wire.read() << 8;
    }
    if(c) {
      button = 15 - log2(c);
      Serial.println(button, HEX);
    }

    if(button >= 0 && button <= 9)  cButton = button + 48;
    else if(button >= 10 && button <= 15) cButton = button + 55;

    // core
    if(state == 0){
      setPwd();
    }
    else if(state == 1){
      enterCode();
    }
    else if(state == 2){
      state2print();
    }
    else if(state == 3){
      gly();
    }   

    if(state == 0){
      // pwd rst
      if(digitalRead(K2) == LOW){
        pwdFull = 0;
        rstPwd();
        state0print();
      }

      // pwd accept
      if(digitalRead(K1) == LOW && pwdFull >= 4){
        state = 1;
        digitalWrite(RLED, HIGH);
        digitalWrite(GLED, LOW);
        digitalWrite(BLED, LOW);
        continue;
      }
      else if(digitalRead(K1) == LOW && pwdFull < 4){
        YFlash();
      }
    }
    else if(state == 1){
      if(failNum == 5){
        //////////////////////////////////////////////////////
        state = 3;
        digitalWrite(RLED, HIGH);
        digitalWrite(GLED, HIGH);
        digitalWrite(BLED, HIGH);
        continue;
      }
      // code rst
      if(digitalRead(K2) == LOW){
        codeFull = 0;
        rstCode();
        state1print();
      }
      // code accept
      if(digitalRead(K1) == LOW && !strcmp(pwd, code)){
        state = 2;
        digitalWrite(RLED, LOW);
        digitalWrite(GLED, HIGH);
        digitalWrite(BLED, LOW);
        continue;
      }
      else if(digitalRead(K1) == LOW && strcmp(pwd, code)){
        RFlash();
        failNum++;
      }
    }
    else if(state == 2){
      // code accept
      if(digitalRead(K2) == LOW){
        state = 0;
        rstPwd();
        rstCode();
        pwdFull=0;
        codeFull=0;
        digitalWrite(RLED, HIGH);
        digitalWrite(GLED, HIGH);
        digitalWrite(BLED, LOW);
        continue;
      }
    }
    else if(state == 3){
      String instring = "";
      bool StringComplete = false;
      while(Serial.available()){
        char inchar = Serial.read();
        delay(10);
        if(inchar != '\r')  instring += inchar;
        else if(inchar == '\r') StringComplete = true; 
      }
      if(StringComplete){
        if(instring == "Gly2003"){
          state = 2;
          rstPwd();
          rstCode();
          pwdFull=0;
          codeFull=0;
          failNum=0;
          digitalWrite(RLED, LOW);
          digitalWrite(GLED, HIGH);
          digitalWrite(BLED, LOW);
          continue;
        }
      }
    }
    

    
    delay(250);
  }
}
