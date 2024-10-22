; 4相单4拍步进电机控制程序
strt:
MOV 20H, #00H           ; 初始地址偏移量为0
MOV P1, #01H            ; 步进电机初始化，P1给#01H，A相通电
MOV 42H, #0C8H          ; 200送入延迟计数器42H

acall forward_sequence  ; 正转序列
acall reverse_sequence  ; 反转序列
sjmp strt               ; 循环

; 加速步进程序
speedup:    MOV R7, #64H       ; 100送入步进计数器R7
MLP0:       MOV R6, 42H        ; 延时
MLPX0:      LCALL DEL          ; 调用短延时子程序
            DJNZ R6, MLPX0
            DEC 42H            ; 将延迟计数器42H中的值减一
            LCALL STEPS        ; 步进一步子程序
            DJNZ R7, MLP0       ; 步进步数减1，不为零继续步进
            ret

; 匀速步进程序
speed:      MOV R7, #64H       ; 100送入步进计数器R7
MLP1:       MOV R6, 42H        ; 延时
MLPX1:      LCALL DEL          ; 调用短延时子程序
            DJNZ R6, MLPX1
            LCALL STEPS        ; 步进一步子程序
            DJNZ R7, MLP1       ; 步进步数减1，不为零继续步进
            RET

; 减速步进程序
speedlow:   MOV R7, #64H       ; 100送入步进计数器R7
MLP2:       MOV R6, 42H        ; 延时
MLPX2:      LCALL DEL          ; 调用短延时子程序
            DJNZ R6, MLPX2
            INC 42H            ; 将延迟计数器42H中的值加一
            LCALL STEPS        ; 步进一步子程序
            DJNZ R7, MLP2       ; 步进步数减1，不为零继续步进
            ret

; 步进一步子程序
STEPS:      INC 20H            ; 地址偏移量加1
            ANL 20H, #0FH      ; 保留20H的低四位状态
            MOV DPTR, #FTAB    ; 表首址送DPTR
            MOV A, 20H         ; 取低四位
            MOVC A, @A+DPTR    ; 取通电状态字
            MOV P1, A          ; 输出通电状态字，步进电机走一步
            RET

; 延时子程序
DEL:        MOV R5, #00H       ; 1T
DEL0:       DJNZ R5, DEL0      ; 2T
            RET                 ; 1T

; 正转序列
forward_sequence:
            acall speedup       ; 加速
            acall speed         ; 匀速
            acall speedlow      ; 减速
            ret

; 反转序列
reverse_sequence:
            MOV 20H, #00H       ; 20H的低四位清零
            MOV P1, #01H        ; 步进电机初始化，P1给#01H，A相通电
            MOV 42H, #0C8H      ; 200送入延迟计数器42H
            acall speedup       ; 反转加速
            acall speed         ; 反转匀速
            acall speedlow      ; 反转减速
            ret
FTAB:DB 01H,02H,04H,08H			;正转表
CTAB:DB 01H,08H,04H,02H		;反转表
