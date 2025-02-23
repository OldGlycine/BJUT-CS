#define ADpin A2
#define RLED 7
#define GLED 5 
#define BLED 4

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
}

void loop() {
  // put your main code here, to run repeatedly:
  int DVal = analogRead(ADpin);
  float AVal = (3.3 / 4095)*DVal;
  Serial.print("DVal = ");
  Serial.print(DVal, HEX);
  Serial.print("\tAVal = ");
  Serial.println(AVal, 4);
  if(AVal >= 0 && AVal < 1.1){
    digitalWrite(RLED, HIGH);
    digitalWrite(GLED, LOW);
    digitalWrite(BLED, LOW);
  }
  else if(AVal >= 0 && AVal < 2.2)
  {
    digitalWrite(RLED, HIGH);
    digitalWrite(GLED, HIGH);
    digitalWrite(BLED, LOW);
  }
  else{
    digitalWrite(RLED, HIGH);
    digitalWrite(GLED, HIGH);
    digitalWrite(BLED, HIGH);
  }

  delay(1000);
}
