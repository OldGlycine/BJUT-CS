;在6个LED上显示“8”。
;长延时，则轮流显示；短延时，则同时显示。


    ORG 0000H
    MOV dptr,#8004H   ;段口8004H
    MOV A, #7FH       ;共阴极，显示“8”字型码
    MOVX @dptr,A      ;显示内容输出
    MOV dptr,#8002H   ;位口8002H
    MOV A,#20H        ;从6个LED的最左边开始显示
LEDO:MOVX @dptr,A     ;显示位置输出
    ACALL DEYS        ;调延时子程序
    RR    A           ;循环右移，改变显示位置
    MOV R6,#2;20;200  ;设循环次数，次数多，延时长
    SJMP LEDO

DEYS:                  ;延时子程序
    MOV R7,#0
DELAYLOOP:
    DJNZ R7,DELAYLOOP
    DJNZ R6,DELAYLOOP
    RET

end
