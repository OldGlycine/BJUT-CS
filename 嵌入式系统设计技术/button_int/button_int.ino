volatile bool LEDRSta = 0;
int LEDR= 7;
int KEY1 = 0;

void setup() {
  // put your setup code here, to run once:
  pinMode(LEDR, OUTPUT);
  pinMode(KEY1, INPUT_PULLUP);
  attachInterrupt(KEY1, OnKey, FALLING);
}

void loop() {
  // put your main code here, to run repeatedly:

}

void OnKey(){
  LEDRSta = !LEDRSta;
  digitalWrite(LEDR, LEDRSta);
}
