; LED显示16进制数
ORG 0000H    ; 程序从ROM的0000开始存放程序
OUTBIG EQU 8002H  ; 位选信号控制地址
OUTSEG EQU 8004H  ; 段选信号控制地址
KEYIN  EQU 8001H  ; 键盘行选信号控制地址
DAC    EQU 9000H  ; D/A转换器数字量放置位置, D/A选通信号为CS1
AJMP INIT  ; 初始化
ORG 000BH   ; T0的中断服务程序地址TIME
AJMP TIME


; T1计数, T0定时(晶振认为是12MHz, 实际是11.0592MHz)
INIT:
	MOV SP,  #60H   ; 设置堆栈指针

; 设置LED显示初值
	MOV 20H, #06H   ; 1
	MOV 21H, #5bH   ; 2
    MOV 22H, #4fH   ; 3
    MOV 23H, #66H   ; 4
    MOV 24H, #6dH   ; 5
    MOV 25H, #7dH   ; 6

	MOV 26H, #00H   ; 用来存期望值
	MOV 27H, #00H   ; 用于记录中断次数
	MOV 28H, #01H   ; 记录期望值低位
    MOV 29H, #20H   ; 

	MOV TMOD, #51H  ; (0101_0001)B, T1工作于方式1, T0工作于方式1
	MOV TL0, #0CEH  ; 
	MOV TH0, #00H   ; 设置T0定时常数为206, 若晶振为12MHz, 则每20次中断为1秒?
	MOV TL1, #00H
	MOV TH1, #00H   ; 设置T1计数器计数初值为0
	SETB ET0        ; 允许T0中断
	SETB EA         ; 允许总中断
	SETB TR0        ; 启动计时
	SETB TR1        ; 启动计数


MAIN:
	LCALL DACHANGE  ; D/A转换
	LCALL DISPLAY   ; 无键码输入, 继续显示当前的数字(十六进制)
	LCALL TEST      ; 测试是否有键盘输入
	JZ MAIN         ; 累加器为0, 无按键, 继续显示
	LCALL SEARCH    ; 有键值输入, 则获取键值, 存放在A中
	MOV 20H, 21H    ; 左侧2位 数码管显示数左移

	MOV B, 28H      ; 期望值高位放在B
	MOV 28H, A      ; 记录期望值低位

	MOV DPTR, #LEDTAB
	MOVC A, @A + DPTR  ; 将键值转换为段码
	MOV 21H, A         ; 将新键值的段码放入左数第二位LED显示

	MOV A, #10H  ; 将乘数16放入A
	MUL AB       ; 高位在B,低位在A
	ADD A, 28H   ; 期望值结果放A
	MOV 26H, A   ; 期望值放26H

	LCALL DACHANGE  ; D/A转换
	SJMP MAIN


; D/A转换
DACHANGE:
	MOV DPTR, #DAC
	MOV A, 29H
	MOVX @DPTR, A
	RET


; 显示模块
DISPLAY:
	MOV R0, #20H  ; 缓冲区从20H处开始
	MOV R1, #6    ; 共6个八段管
	MOV R2, #00100000B   ; 从左边开始显示灯亮为1, 灭为0

LOOP:     
	MOV DPTR, #OUTSEG
	MOV A, #0
	MOVX @DPTR, A  ; 段码设定为0
	MOV A, @R0     ; 将以20H为首地址的内存值发送到段码输出口8004H
	MOVX @DPTR, A

	MOV DPTR, #OUTBIG
	MOV A, R2
	MOVX @DPTR, A  ; 输出位选通信号, 使每次只显示一位八段管
	RR A
	MOV R2, A
	LCALL DELAY    ; 延时
	INC R0
	DJNZ R1, LOOP  ; 显示6次

	RET


; 延时子程序
DELAY:
	MOV R7, #02H
DEL1:    
	MOV R6, #0ffH
DEL2:    
	DJNZ R6, DEL2
	DJNZ R7, DEL1
	RET


; 检测有无键盘输入
TEST:
	MOV DPTR, #OUTBIG
	MOV A, #00H
	MOVX @DPTR, A
	MOV DPTR, #KEYIN
	MOVX A, @DPTR  ; 回读行状态
	CPL A          ; 累加器A各位求反
	ANL A, #0FH    ; 取A低4位
	RET


; 获取按下的键信息
SEARCH:
	MOV R1, #00100000B  ; 初始列，从左边开始
	MOV R2, #06H        ; 找6列
	MOV R5, #00H        ; 记录当前所在列
	MOV R4, #03H        ; 已经跳过了多少列

; 找出有效列和行
LSEARCH:
	MOV A, R1
	CPL A    ; 键盘列扫描低有效，LED位选高有效
	MOV DPTR, #OUTBIG
	MOVX @DPTR, A
	CPL A
	RR A     ; 始终将LED位选通信号右移，存入R1
	MOV R1, A
	MOV DPTR, #KEYIN
	MOVX A, @DPTR  ; 读出键盘行扫描信号(低有效)
	CPL A
	ANL A, #0FH    ; 取低4位
	JNZ HSEARCH    ; A不为零就找到所在列和行（列存在R1中，行存在A中）
	INC R5     	   ; A为全零, 则列数加一继续查找
	DJNZ R2, LSEARCH  ; 至少6次可以找到

; 将行从二进制位表示转化为标号的形式
HSEARCH:
	MOV R7, #04H    ; 一共有四行
LOOP2:    
	RRC A
	JC GET
	DEC R4
	DJNZ R7, LOOP2

; 确定输入的键码值
GET:
	MOV A, R4    ; 键值在键盘上的偏移量=行号*6+列号,R4*6+R5->A
	MOV B, #6H
	MUL AB
	ADD A, R5
	MOV DPTR, #KEYTAB
	MOVC A, @A + DPTR
	MOV 26H, A   ; 将取出键值暂时保存在内存中,防止数据丢失

WAIT:   
	MOV DPTR, #OUTBIG    ; 等键释放
	CLR A
	MOVX @DPTR, A
	LCALL DELAY
	LCALL TEST
	JNZ WAIT
	MOV A, 26H    ; 将键值存入A
	RET


; T0的中断处理程序TIME
TIME:
	PUSH PSW
	PUSH ACC
	PUSH B
	PUSH DPL
	PUSH DPH
	SETB RS0     ; 选择寄存器组1
	CLR  RS1
	MOV R0, 27H  ; 取出中断次数
	INC R0       ; 中断次数加一
	MOV 27H,R0   ; 存回中断次数
	CJNE R0, #14H, END1   ; 不是20直接返回
	MOV R0, #00H
	MOV 27H, R0  ; 存回中断次数
	CLR TR0      ; 停止计时
	CLR TR1      ; 停止计数
	MOV 30H, TL1 ; 计数低位送入30H
	MOV 31H, TH1 ; 计数高位送入31H
	MOV A, 30H   ; 被除数存A
	MOV B, #10H  ; 除数存B
	DIV AB       ; 结果的商存A, 余数存B
	MOV DPTR, #LEDTAB
	MOVC A, @A + DPTR  ; 将键值转换为段码
	MOV 24H, A
	MOV A, B
	MOVC A, @A + DPTR  ; 将键值转换为段码
	MOV 25H, A

	MOV A, 31H    ; 被除数存A
	MOV B, #10H   ; 除数存B
	DIV AB        ; 结果的商存A, 余数存B
	MOV DPTR, #LEDTAB
	MOVC A, @A + DPTR  ; 将键值转换为段码
	MOV 22H, A
	MOV A, B
	MOVC A, @A + DPTR  ; 将键值转换为段码
	MOV 23H, A

	MOV A, 31H      ; 取转速高位
	JNZ SPEEDDOWN   ; 高位不是0, 则转速太快, 减速
	MOV A, 30H      ; 取转速低位
	CLR CY          ; 清除CY位
	SUBB A, 26H     ; 转速减期望值, 结果存在A
	JB CY, SPEEDUP  ; 出现借位, 转速偏低, 加速
	JZ SUBEND       ; 若A全零, 转速和期望值相同则跳转
	SJMP SPEEDDOWN  ; 否则转速太快, 减速

SPEEDDOWN:
	MOV A, 29H     ; 数字量放入A
	ADDC A, #01H   ; 数字量加一
	MOV 29H, A
	SJMP SUBEND

SPEEDUP:
	MOV A, 29H     ; 数字量放入A
	SUBB A, #01H   ; 数字量减一
	MOV 29H, A
	SJMP SUBEND

; 重新赋初值然后启动计时计数
SUBEND:
	MOV TL0, #0CEH
	MOV TH0, #00H   ; 设置T0定时常数为206,若晶振为12MHz,则每20次中断为1秒?
	MOV TL1, #00H
	MOV TH1, #00H   ; 设置T1计数器计数初值为0
	SETB ET0        ; 允许T0中断
	SETB EA         ; 允许总中断
	SETB TR0        ; 启动计时
	SETB TR1        ; 启动计数
END1:	
	POP DPH
	POP DPL
	POP B
	POP ACC
	POP PSW
	RETI     ;中断返回


; 段码与数值
;八段管显示码
LEDTAB:
	DB 3fh, 06h, 5bh, 4fh, 66h, 6dh, 7dh, 07h
	DB 7fh, 6fh, 77h, 7ch, 39h, 5eh, 79h, 71h

;键盘码
KEYTAB:
	DB 07h, 08h, 09h, 0ah, 10h, 0ffh
	DB 04h, 05h, 06h, 0bh, 11h, 14h
	DB 01h, 02h, 03h, 0ch, 12h, 15h
	DB 00h, 0fh,0eh, 0dh, 13h, 16h
