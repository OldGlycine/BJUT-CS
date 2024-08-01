ORG 0H   ; 程序起始地址

OUTBIG EQU 8002H   ; 位控制口
OUTSEG EQU 8004H   ; 段控制口
KEYIN  EQU 8001H    ; 键盘读入口

; 初始化缓冲器
READY:
    MOV 25H, #3FH
    MOV 24H, #3FH
    MOV 23H, #3FH
    MOV 22H, #3FH
    MOV 21H, #3FH
    MOV 20H, #3FH

MAIN:
    MOV 28H, #6  ; 循环次数

    ; 无键码输入，继续显示当前的数字
    LCALL DISPLAY
    LCALL TEST
    JZ MAIN  ; 累加器为0无按键， 继续显示

    ; 有键值输入，将输入的键值显示在数码管上
    LCALL SEARCH

    ; 循环左移数字
          MOV 20H,21H    ;数码管显示出输入的键值
          MOV 21H,22H
          MOV 22H,23H
          MOV 23H,24H
          MOV 24H,25H

    MOV DPTR, #LEDTAB
    MOVC A, @A+DPTR
    MOV 25H, A

    DJNZ 28H, MAIN
;TRANS:
;         MOV A,20H
;         MOV DPTR,#NUMBERTAB
;         MOVC A,@A+DPTR
;         MOV 20H,A

;         MOV A,21H
;         MOV DPTR,#NUMBERTAB
;         MOVC A,@A+DPTR
;         MOV 21H,A

;         MOV A,22H
;         MOV DPTR,#NUMBERTAB
;         MOVC A,@A+DPTR
;         MOV 22H,A
;
;         MOV A,23H
;         MOV DPTR,#NUMBERTAB
;         MOVC A,@A+DPTR
;         MOV 23H,A
;
;         MOV A,24H
;         MOV DPTR,#NUMBERTAB
;         MOVC A,@A+DPTR
;         MOV 24H,A
;
;         MOV A,25H
;         MOV DPTR,#NUMBERTAB
;         MOVC A,@A+DPTR
;         MOV 25H,A
;
;    SJMP MAIN

DISPLAY:
    ; 显示模块
    MOV R0, #20H    ; 缓冲区从20H处开始
    MOV R1, #6      ; 共6个八段管
    MOV R2, #00100000B ; 从左边开始显示灯亮为1，灭为0

LOOP:
    MOV DPTR, #OUTSEG
    MOV A, #0
    MOVX @DPTR, A   ; 位选设定为0
    MOV A, @R0      ; 将以20H为首地址的内存值发送到段码输出口8004H
    MOVX @DPTR, A

    MOV DPTR, #OUTBIG ; 输出位选通估号，使每次只显示一位八段管
    MOV A, R2
    MOVX @DPTR, A
    RR A
    MOV R2, A
    LCALL DELAY     ; 延时
    INC R0
    DJNZ R1, LOOP   ; 显示6次
    RET

DELAY:   
    ; 延时子程序
    MOV R7, #02H
DEL1:   
    MOV R6, #0FFH
DEL2:   
    DJNZ R6, DEL2
    DJNZ R7, DEL1
    RET

TEST:
    ; 检测有无键值输入
    MOV DPTR, #OUTBIG
    MOV A, #00H
    MOVX @DPTR, A    ; 送出0
    MOV DPTR, #KEYIN
    MOVX A, @DPTR    ; 回读行状态
    CPL A            ; 累加器低四位求反
    ANL A, #0FH
    RET

SEARCH:
    ; 找出键值所在的的位置(行和列)
    MOV R1, #00100000B  ; 初始列，从左边开始
    MOV R2, #06H ; 找6列
    MOV R5, #00H ; 记录当前所在列数
    MOV R4, #03H ; 已经跳过了多少列

LSEARCH:
    ; 找出列所在位置后
    MOV A, R1
    CPL A
    MOV DPTR, #OUTBIG
    MOVX @DPTR, A
    CPL A
    RR A    ; 通过判断循环几次进位为1来实现计数的功能
    MOV R1, A
    MOV DPTR, #KEYIN
    MOVX A, @DPTR
    CPL A
    ANL A, #0FH
    JNZ HSEARCH    ; A为零就找到所在列， 继续寻找行所在位置
    INC R5     ; 不为列数加一继续查找
    DJNZ R2, LSEARCH

HSEARCH:
    MOV R7, #04H; 一共有四列
LOOP2:
    RRC A
    JC GET
    DEC R4
    DJNZ R7, LOOP2
GET:   
    ; 确定输入的键码值
    MOV A, R4    ; 键值=行*6+列,R4*6+R5->A
    MOV B, #6H
    MUL AB
    ADD A, R5
    MOV DPTR, #KEYTAB; 取出键码所在位置
    MOVC A, @A+DPTR
    MOV 26H, A    ; 将取出键值暂时保存在内存中,防止数据丢失

WAIT:
    ; 等键释放
    MOV DPTR, #OUTBIG
    CLR A
    MOVX @DPTR, A
    LCALL DELAY
    LCALL TEST
    JNZ WAIT
    MOV A, 26H    ; 释放出键盘输入值
    RET

LEDTAB:    ; 八段管显示码
    DB 3FH, 06H, 5BH, 4FH, 66H, 6DH, 7DH, 07H
    DB 7FH, 6FH, 77H, 7CH, 39H, 5EH, 79H, 71H

KEYTAB:   ; 键盘码
    DB 07H, 08H, 09H, 0AH, 10H, 0FFH,
    DB 04H, 05H, 06H, 0BH, 11H, 14H,
    DB 01H, 02H, 03H, 0CH, 12H, 15H,
    DB 00H, 0FH, 0EH, 0DH, 13H, 16H
