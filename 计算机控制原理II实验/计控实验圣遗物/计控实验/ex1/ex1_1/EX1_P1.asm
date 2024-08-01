ORG 0H       ; 设置程序的起始地址为0H



;#080H ; 0
;#0eH ; 7
;#05eH ;2
;#04eH ;3
;#0cH 1
;05eH 2
LO1:
    MOV DPTR, #8004H ; 段口8004H
    MOV A,#3FH ; 0
    MOVX @dptr, A ;
    MOV dptr,#8002H   ;位口8002H
    MOV A,#20H
    MOVX @dptr,A
    CALL DELAY ; 调用延时子程序


    MOV DPTR, #8004H ; 段口8004H
    MOV A,#07H ; 7
    MOVX @dptr, A ;
    MOV dptr,#8002H   ;位口8002H
    MOV A,#10H
    MOVX @dptr,A
    CALL DELAY ; 调用延时子程序
 

    MOV DPTR, #8004H ; 段口8004H
    MOV A,#5BH ; 2
    MOVX @dptr, A;
    MOV dptr,#8002H   ;位口8002H
    MOV A,#08H
    MOVX @dptr,A
    CALL DELAY ; 调用延时子程序


    MOV DPTR, #8004H ; 段口8004H
    MOV A,#4FH ; 3
    MOVX @dptr, A ;
    MOV dptr,#8002H   ;位口8002H
    MOV A,#04H
    MOVX @dptr,A
    CALL DELAY ; 调用延时子程序


    MOV DPTR, #8004H ; 段口8004H
    MOV A,#06H ; 1
    MOVX @dptr, A ;
    MOV dptr,#8002H   ;位口8002H
    MOV A,#02H
    MOVX @dptr,A
    CALL DELAY ; 调用延时子程序


    MOV DPTR, #8004H ; 段口8004H
    MOV A,#5BH ; 2
    MOVX @dptr, A ;
    MOV dptr,#8002H   ;位口8002H
    MOV A,#01H
    MOVX @dptr,A
    CALL DELAY ; 调用延时子程序
SJMP LO1
DELAY:
    MOV R3, #255 ; 设置R3寄存器为255
DELAY_LOOP:
    DJNZ R3, DELAY_LOOP ; R2寄存器递减，如果不为零则跳转到DELAY_LOOP
    RET ; 返回主程序



END ; 程序结束标志
