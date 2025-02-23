#include <Wire.h>

// TTP229SF
#define TTP229SF_ADDR 0x57
#define TTP229_WAITING 0
#define TTP229_GETTING 1
#define TTP229_FINISHED 2
uint8_t ttp229_rawlow = 0;
uint8_t ttp229_rawhigh = 0;
uint8_t ttp229_valuerequired = TTP229_WAITING;

// FSM for touch
#define TK_IDLE 0
#define TK_PRESS_1ST 1
#define TK_RELEASE_1ST 2
#define TK_PRESS_2ND 3
#define TK_LONG 10
// touch operations identification
#define TK_NONE 0
#define TK_CLICK 1
#define TK_DOUBLECLICK 2
#define TK_LONGPRESS 3
// nunber of touch key
#define TK_NUM 16
// touch pressed
#define TK_PRESSED true
#define TK_NOPRESS false
// touch FSM
uint8_t tk_state[TK_NUM];
uint8_t tk_flag[TK_NUM];
bool tk_pressed[TK_NUM];

// timer 0
#define TIMER_0 0
// timer divider factor for prescaler (for CPU_Freq:160MHz)
#define DIV_TO_US 80
// count up
#define COUNT_UP true
// trigger edge
#define TRIG_EDGE true
// value for timer
#define VAL_1US 1
#define VAL_1MS 1000
#define VAL_500MS 500000
#define VAL_1S 1000000
#define VAL_3S 3000000
#define VAL_5S 5000000
// auto reload
#define AUTO_RELOAD true
#define NO_RELOAD false
// time constant (ms)
#define MS_GETVALUE 10
// time constant (ms/10)
#define MS_DOUBLE 25
#define MS_LONG 150
#define MS_LONGON 30
// Timer handle
hw_timer_t *timer_t0 = NULL;
uint16_t tk_timer_count[TK_NUM];
uint16_t tk_timer_10ms = 0;

// Test counter
uint16_t tk_click[TK_NUM];
uint16_t tk_double[TK_NUM];
uint16_t tk_long[TK_NUM];

// timer 0 ISR
void ARDUINO_ISR_ATTR T0_ISR() {
  // touch key value processing
  if (TTP229_FINISHED == ttp229_valuerequired) {
    // processing FSM
    for (uint8_t i = 0; i < TK_NUM; i++) {
      switch (tk_state[i]) {
        case TK_IDLE:
          // first press captured
          if (TK_PRESSED == tk_pressed[i]) {
            tk_timer_count[i] = 0;
            tk_state[i] = TK_PRESS_1ST;
          }
          // waiting first press
          else {
            tk_timer_count[i] = 0;
          }
          break;
        case TK_PRESS_1ST:
          // capturing LONG PRESS
          if (TK_PRESSED == tk_pressed[i]) {
            // valid LONG PRESS
            if (MS_LONG == ++tk_timer_count[i]) {
              tk_timer_count[i] = 0;
              tk_state[i] = TK_LONG;
              tk_flag[i] = TK_LONGPRESS;
            }
          }
          // capturing clicked or double
          else {
            tk_timer_count[i] = 0;
            tk_state[i] = TK_RELEASE_1ST;
          }
          break;
        case TK_RELEASE_1ST:
          // possible double click captured
          if (TK_PRESSED == tk_pressed[i]) {
            tk_timer_count[i] = 0;
            tk_state[i] = TK_PRESS_2ND;
          }
          // capturing clicked
          else {
            // valid CLICK and no double click captured
            if (MS_DOUBLE == ++tk_timer_count[i]) {
              tk_timer_count[i] = 0;
              tk_state[i] = TK_IDLE;
              tk_flag[i] = TK_CLICK;
            }
          }
          break;
        case TK_PRESS_2ND:
          // capturing LONG PRESS
          if (TK_PRESSED == tk_pressed[i]) {
            // valid LONG PRESS
            if (MS_LONG == ++tk_timer_count[i]) {
              tk_timer_count[i] = 0;
              tk_state[i] = TK_LONG;
              tk_flag[i] = TK_LONGPRESS;
            }
          }
          // valid DOUBLE CLICK
          else {
            tk_timer_count[i] = 0;
            tk_state[i] = TK_IDLE;
            tk_flag[i] = TK_DOUBLECLICK;
          }
          break;
        case TK_LONG:
          // continuity valid LONG PRESS
          if (TK_PRESSED == tk_pressed[i]) {
            if (MS_LONGON == ++tk_timer_count[i]) {
              tk_timer_count[i] = 0;
              tk_state[i] = TK_LONG;
              tk_flag[i] = TK_LONGPRESS;
            }
          }
          // released captured
          else {
            tk_timer_count[i] = 0;
            tk_state[i] = TK_IDLE;
            tk_flag[i] = TK_NONE;
          }
          break;
        default:
          break;
      }
    }
    // FSM processing finished
    ttp229_valuerequired = TTP229_WAITING;
  }

  // waiting for getting value per 10ms
  if (TTP229_WAITING == ttp229_valuerequired) {
    if (MS_GETVALUE == ++tk_timer_10ms) {
      tk_timer_10ms = 0;
      ttp229_valuerequired = TTP229_GETTING;
    }
  }
}

void setup() {
  // variables init
  ttp229_rawlow = 0;
  ttp229_rawhigh = 0;
  ttp229_valuerequired = TTP229_WAITING;
  tk_timer_10ms = 0;
  for (uint8_t i = 0; i < TK_NUM; i++) {
    tk_state[TK_NUM] = TK_IDLE;
    tk_flag[TK_NUM] = TK_NONE;
    tk_pressed[TK_NUM] = TK_NOPRESS;
    tk_timer_count[TK_NUM] = 0;
    tk_click[TK_NUM] = 0;
    tk_double[TK_NUM] = 0;
    tk_long[TK_NUM] = 0;
  }

  // I2C init
  Wire.begin();
  // UART init baud rate: 115200
  Serial.begin(115200);

  // timer 0 init
  while (NULL == timer_t0) {
    timer_t0 = timerBegin(TIMER_0, DIV_TO_US, COUNT_UP);
  }
  timerAttachInterrupt(timer_t0, &T0_ISR, TRIG_EDGE);
  timerAlarmWrite(timer_t0, VAL_1MS, AUTO_RELOAD);
  timerAlarmEnable(timer_t0);

  Serial.println("");
  Serial.println("System initialization finished...");
}

void loop() {
  // needs to read touch key value
  if (TTP229_GETTING == ttp229_valuerequired) {
    // read data from ttp229
    Wire.requestFrom(TTP229SF_ADDR, 2);
    if (Wire.available()) {
      ttp229_rawlow = Wire.read();
    } else {
      ttp229_rawlow = 0;
    }
    if (Wire.available()) {
      ttp229_rawhigh = Wire.read();
    } else {
      ttp229_rawhigh = 0;
    }
    while (Wire.available()) {
      Wire.read();
    }
    // set touch key pressed
    for (uint8_t i = 0; i < 8; i++) {
      if (ttp229_rawlow & (0x80 >> i)) {
        tk_pressed[i] = TK_PRESSED;
      } else {
        tk_pressed[i] = TK_NOPRESS;
      }
    }
    for (uint8_t i = 0; i < 8; i++) {
      if (ttp229_rawhigh & (0x80 >> i)) {
        tk_pressed[i + 8] = TK_PRESSED;
      } else {
        tk_pressed[i + 8] = TK_NOPRESS;
      }
    }
    // vaule data finished
    ttp229_valuerequired = TTP229_FINISHED;
  }

  // test flag print
  for (uint8_t i = 0; i < TK_NUM; i++) {
    if (TK_CLICK == tk_flag[i]) {
      tk_flag[i] = TK_NONE;
      Serial.print("TK");
      Serial.print(i, DEC);
      Serial.print(" click ---> ");
      Serial.println(++tk_click[i], DEC);
    } else if (TK_DOUBLECLICK == tk_flag[i]) {
      tk_flag[i] = TK_NONE;
      Serial.print("TK");
      Serial.print(i, DEC);
      Serial.print(" double click ---> ");
      Serial.println(++tk_double[i], DEC);
    } else if (TK_LONGPRESS == tk_flag[i]) {
      tk_flag[i] = TK_NONE;
      Serial.print("TK");
      Serial.print(i, DEC);
      Serial.print(" long press ---> ");
      Serial.println(++tk_long[i], DEC);
    }
  }
}
