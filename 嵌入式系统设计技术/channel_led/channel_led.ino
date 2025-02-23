int redled = 7;
int greenled = 5;

String instring = "";
bool StringComplete = false;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);

  pinMode(redled, OUTPUT);
  digitalWrite(redled, HIGH);
  pinMode(greenled, OUTPUT);
  digitalWrite(greenled, HIGH);
}

void loop() {
  // put your main code here, to run repeatedly:
  while(Serial.available()){
    char inchar = Serial.read();
    delay(10);
    if(inchar != '\r'){
      instring += inchar;
    }
    else if(inchar == '\r'){
      StringComplete = true;
    }
  }
  if(StringComplete){
    if(instring == "RH"){
      digitalWrite(redled, HIGH);
      Serial.println("redled ON");
    }
    if(instring == "RL"){
      digitalWrite(redled, LOW);
      Serial.println("redled OFF");
    }
    if(instring == "GH"){
      digitalWrite(greenled, HIGH);
      Serial.println("greenled ON");
    }
    if(instring == "GL"){
      digitalWrite(greenled, LOW);
      Serial.println("greenled OFF");
    }
    StringComplete = false;
    instring = "";
  }
}
