ORG 0000H         ; 复位起始地址
P4 EQU 0C0H       ; P4口寄存器

P4SW EQU 0BBH     ; P4方向寄存器
MOT EQU P1.1      ; P1.1控制转速
CLK EQU P3.4      ; P3.4时钟线
DAT EQU P4.5      ; P4.5数据线

LJMP MAIN

; 中断向量表
ORG 0003H         ; 外部中断0
LJMP EXINTERRUPT
ORG 000BH         ; 定时器0
LJMP TIMER0

S1 EQU P3.6       ; P3.6开关1
S2 EQU P3.7       ; P3.7开关2

ORG 0023H         ; 定时器2
LJMP TIMER2

MAIN:
MOV DPTR, #TAB
MOV P4SW, #70H   ; 设置P4.4,P4.5,P4.6为通用I/O
MOV R7, #0        ; R7交替显示
MOV R0, #0        ; R0转数记录
MOV R1, #0        ; R1用于产生1秒定时的计数
MOV R2, #0        ; R2用于脉冲计数
MOV R3, #100      ; R3计数目标值
MOV R4, #0        ; R4存储期望转速的百位
MOV R5, #0        ; R5存储期望转速的十位
MOV R6, #0        ; R6存储期望转速的个位

MOV 60H, #150     ; 存高电平
MOV 61H, #50      ; 存低电平

MOV TMOD, #12H    ; 定时器1在方式1，定时器0在方式2
MOV TH0, #38H     ; 200us=256-56，56=38H
MOV TL0, #38H

MOV TH1, #3CH     ; 20次产生1s定时初值 65536-15536=50000us
MOV TL1, #0B0H    ; 50000us*20=1000000us=1s

MOV T2CON, #04H   ; 定时器2在方式2
MOV RCAP2L, #0
MOV RCAP2H, #0
MOV T2MOD, #01H   ; 定时器2在8位自动重载模式

SETB EA           ; 总中断
SETB ET1          ; T1溢出中断
SETB TR1          ; 允许计数设置
SETB ET0          ; T0溢出中断
SETB TR0
SETB EX0          ; 允许外部中断0
SETB TR0          ; 外部中断触发方式为边沿式出发方式
SETB ET2          ; T2溢出中断
SETB TR2          ; 允许计数设置

CLR MOT           ; P1.1初始状态清零

L1:
SJMP L1          ; 不断查询

; 定时器1
TIMER1:
PUSH ACC         ; 中断，保护现场，累加器入栈
PUSH PSW         ; 程序状态字寄存器入栈
INC R1           ; 定时器1产生1s定时（20次50000us）
CJNE R1, #20, LP1
MOV R1, #0       ; R1清零

; 判断目标值增减
JNB S1, AIMSPEEDUP ; 判断目标值是否要增速
SJMP LL
AIMSPEEDUP:
INC R3           ; 计数目标值增加
CJNE R3, #200, L2 ; 跳转至判断当前转速与目标值关系并进行调整
MOV R3, #200     ; 最大速
SJMP L2
LL:
JNB S2, AIMSPEEDDOWN ; 判断目标值是否减速
SJMP L2
AIMSPEEDDOWN:
DEC R3
CJNE R3, #40, L2
MOV R3, 40
; 判断当前转速与目标值关系并进行调整
L2:
MOV A, R0        ; 1s内R0计数值为现转速
SUBB A, R3
JC SPEEDUP       ; R0<R3，现转速需要增加
JNC SPEEDDOWM    ; R0>R3，现转速需要减少
SJMP DISPLAY
SPEEDUP:
INC 61H          ; 增加占空比
DEC 60H
SJMP DISPLAY
SPEEDDOWM:
INC 60H          ; 减少占空比
DEC 61H
; 交替显示
DISPLAY:
INC R7
CJNE R7, #2, LP   ; 交替显示
MOV R7, #0
; 将目标值显示出来
MOV A, R3
MOV B, #100
DIV AB
MOV R4, A         ; 百位
XCH A, B
MOV B, #10
DIV AB
MOV R5, A         ; 十位
MOV R6, B         ; 个位

; 三位数码管显示
LP:
MOV A, R6
MOV DPTR, #TAB
MOVC A, @A+DPTR
LCALL SHOW
MOV A, R5
MOV DPTR, #TAB
MOVC A, @A+DPTR
LCALL SHOW
MOV A, R4
MOV DPTR, #TAB
MOVC A, @A+DPTR
LCALL SHOW

; 转数清零
MOV R6, #0
MOV R5, #0
MOV R4, #0
MOV R0, #0        ; 现转速清零

LP1:
POP PSW          ; 中断返回恢复现场
POP ACC
RETI

; 定时器0一共200us
TIMER0:
PUSH ACC        ; 中断现场保存
PUSH PSW
DJNZ R2, EXIT
CPL MOT         ; 取反
JNB MOT, L3     ; 判断P1.1高低电平
MOV R2, #60H    ; 若P1.1=1,给R2赋高电平计数值
SJMP EXIT
L3:
MOV R2, #61H    ; 若P1.1=0,给R2赋低电平计数值
EXIT:
POP PSW         ; 中断现场恢复
POP ACC
RETI

; 定时器2溢出中断
TIMER2:
INC R2           ; 脉冲计数增加
RETI

; 外部中断
EXINTERRUPT:
INC R0           ; 电机转速计数增加
INC R6
CJNE R6, #10, LOOP
INC R5
MOV R6, #0
CJNE R5, #10, LOOP
INC R4
MOV R5, #0
CJNE R4, #10, LOOP
LOOP:
RETI

; 每个数码管显示函数
SHOW:
MOV R0, #8       ; 八位编码按位显示
SLP:
CLR CLK          ; 时钟线输出低电平
RLC A            ; A中欲显示的编码最高位进入C中
MOV DAT, C       ; C中数据放入数据线中
SETB CLK         ; 时钟线输出高电平，制造上升沿
DJNZ R0, SLP     ; 判断八次循环是否结束
RET

TAB: DB 0C0H, 0F9H, 0A4H, 0B0H, 99H, 92H, 82H, 0F8H, 80H, 90H

END


END
