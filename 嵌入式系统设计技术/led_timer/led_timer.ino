hw_timer_t * timer = NULL;
volatile bool ledstate = 0;
const int led = 7;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  pinMode(led, OUTPUT);

  timer =  timerBegin(0, 80, true);
  timerAttachInterrupt(timer, & OnTimer, true);
  timerAlarmWrite(timer, 1000000, true);
  timerAlarmEnable(timer);

}

void loop() {
  // put your main code here, to run repeatedly:
  delay(114514);
}

void OnTimer(){
  ledstate = !ledstate;
  digitalWrite(led, ledstate);
}

