#define RLED 7
#define GLED 5 
#define BLED 4

int arr[24] = {0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1};

void setup() {
  // put your setup code here, to run once:
  // // 初始化10引脚
  // pinMode(10, OUTPUT);
  // // 引脚10输出高电平
  // digitalWrite(10, HIGH);

  pinMode(RLED, OUTPUT);
  pinMode(GLED, OUTPUT);
  pinMode(BLED, OUTPUT);
  
}

void loop() {
  // put your main code here, to run repeatedly:
  // 由于有锁存，所以下面这一句和setup写最上面两句是等效的，setup节省资源
  // digitalWrite(10, HIGH);
  for(int i = 0; i < 8; i=i+1){
    if(arr[i*3])  digitalWrite(RLED, HIGH);
    else  digitalWrite(RLED, LOW);
    if(arr[i*3 + 1])  digitalWrite(GLED, HIGH);
    else  digitalWrite(GLED, LOW);
    if(arr[i*3 + 2])  digitalWrite(BLED, HIGH);
    else  digitalWrite(BLED, LOW);
    delay(1000);
  }
  // digitalWrite(RLED, HIGH);
  // digitalWrite(GLED, HIGH);
  // digitalWrite(BLED, HIGH);
  // delay(1000);
  // digitalWrite(RLED, LOW);
  // digitalWrite(GLED, LOW);
  // digitalWrite(BLED, LOW);
  // delay(1000);
}
