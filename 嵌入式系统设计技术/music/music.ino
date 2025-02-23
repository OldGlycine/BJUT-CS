const int LEDPin = 0;
const int freq = 500;
const int LED_Channel = 0;
const int bit_num = 8;
int length;

void setup() {
  // put your setup code here, to run once:
  ledcSetup(LED_Channel, freq, bit_num);
  length = sizeof(tune) / sizeof(tune[0]);
}

void loop() {
  // put your main code here, to run repeatedly:
  for(int i = 0; i < length; i++){
    ledcAttachPin(LEDPin, LED_Channel);
    ledcWriteTone(LED_Channel, tune[i]);
    delay(400*durt[i]);
    ledcDtachPin(LEDPin);
  }
  delay(2000);
}
