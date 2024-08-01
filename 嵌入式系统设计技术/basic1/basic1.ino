const int TrigPin = 2;  
const int EchoPin = 3;   
const int SigPin = 0;
double distance;  //定义全局变量，保存距离

double q[81];
double previous = -1;

#define RLED 7
#define GLED 5 
#define BLED 4
#define ALPHA 0.1

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  pinMode(SigPin, OUTPUT);
  pinMode(TrigPin, OUTPUT);
  pinMode(EchoPin, INPUT);
  pinMode(RLED, OUTPUT);
  pinMode(GLED, OUTPUT);
  pinMode(BLED, OUTPUT);
  digitalWrite(RLED, LOW);
  digitalWrite(GLED, LOW);
  digitalWrite(BLED, LOW);
}

void loop() {
  // put your main code here, to run repeatedly:
  
  int size = 3;
    // trigger触发
  digitalWrite(TrigPin, LOW);
  delayMicroseconds(10);   
  digitalWrite(TrigPin, HIGH);
  delayMicroseconds(10);  
  digitalWrite(TrigPin, LOW);

  // echo接收并计算cm
  distance = pulseIn(EchoPin, HIGH) * 340.0 / (2.0 * 10000.0); 
  // q[i] = distance;
  if(!previous) previous = distance;
  else{
    previous = previous * (1 - ALPHA) + ALPHA * distance;
  }
  // Serial.println(q[size*size>>1 + 1]);
  Serial.println(previous);

  // 指示灯判断，安全距离为10cm及以上，警告为5-10cm，0-5为危险
  if(distance > 10.0){
    digitalWrite(RLED, LOW);
    digitalWrite(GLED, HIGH);
    digitalWrite(BLED, LOW);
  }
  else if(distance > 5.0 && distance <= 10.0){
    digitalWrite(RLED, HIGH);
    digitalWrite(GLED, HIGH);
    digitalWrite(BLED, LOW);
  }
  else{
    digitalWrite(RLED, HIGH);
    digitalWrite(GLED, LOW);
    digitalWrite(BLED, LOW);

    digitalWrite(SigPin, HIGH);
    delay(1);
  }
  digitalWrite(SigPin, LOW);

  // 测距间隔
  delay(10);
}
