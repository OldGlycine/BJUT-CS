; 7段LED显示控制程序
ORG 0H   ; 程序起始地址

OUTBIG EQU 8002H   ; 位控制口
OUTSEG EQU 8004H   ; 段控制口

START:  MOV DPTR, #DISPLAY_DATA  ; 数据存储的起始地址
        MOV R0, #6  ; 共6位数字

DISPLAY_LOOP:
        MOV A, R0  ; 从右到左显示
        DEC A
        MOVX @DPTR, A  ; 将数据存储到内存
        MOV DPTR, #OUTSEG  ; 设置段控制口地址
        MOV A, R0  ; 设置位控制口地址
        INC A
        MOVX @DPTR, A  ; 输出位控制口
        LCALL DELAY  ; 延时
        DEC R0  ; 指向下一个数字
        JZ END_PROGRAM  ; 所有数字显示完毕，程序结束
        JMP DISPLAY_LOOP  ; 继续循环显示

END_PROGRAM: SJMP $

DELAY:  ; 简单延时函数
        MOV R7, #10
DELAY_LOOP:
        MOV R6, #255
DELAY_LOOP2:
        DJNZ R6, DELAY_LOOP2
        DJNZ R7, DELAY_LOOP
        RET

DISPLAY_DATA:  ; 数据存储区域
        DB 3FH  ; 0
        DB 06H  ; 7
        DB 5BH  ; 2
        DB 4FH  ; 3
        DB 66H  ; 1
        DB 6DH  ; 2
        DB 7DH  ; 3

        ORG 8000H  ; 设置程序的运行起始地址
        JMP START  ; 跳转到程序的起始地址
