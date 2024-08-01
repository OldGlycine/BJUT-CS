STRT:MOV 20H,#00H   ;20H的D7置0正转,D1D0地址偏移量
     MOV P1,#01H      ;步进电机初始化7,P1给#01H,A相通电
     MOV 42H,#0A0H   ;100送入延迟计数器42H

     acall speedup
     MOV 20H,#00H   ;20H的D7置0正转,D1D0地址偏移量
     acall speed
     MOV 20H,#00H   ;20H的D7置0正转,D1D0地址偏移量
     acall speedlow

     MOV 20H,#80H   ;20H的D7置1反转,D1D0地址偏移量
     MOV P1,#01H      ;步进电机初始化,P1给#01H,A相通电
     MOV 42H,#0A0H   ;100送入延迟计数器42H

     acall speedup
     MOV 20H,#80H   ;20H的D7置1反转,D1D0地址偏移量
     acall speed
     MOV 20H,#80H   ;20H的D7置1反转,D1D0地址偏移量
     acall speedlow

     sjmp strt

 ;加速步进程序
speedup: MOV   R7,#64H      ;100送入步进计数器R7
MLP0:	 MOV   R6,42H        ;延时
MLPX0:   LCALL DEL       ;调用短延时子程序
         DJNZ  R6,MLPX0
	 DEC   42H             ;将延迟计数器42H中的值减一
         LCALL STEPS      ;步进一步子程序
         DJNZ  R7,MLP0     ;步进步数减1,不为零继续步进
         ret

 ; 匀速步进程序
speed: 	 MOV   R7,#64H    ;100送入步进计数器R7
MLP1:    MOV   R6,42H        ;延时
MLPX1:   LCALL DEL       ;调用短延时子程序
         DJNZ  R6,MLPX1
         LCALL STEPS      ;调步进一步子程序
         DJNZ  R7,MLP1     ;步进步数减1,不为零继续步进
         RET

 ;减速步进程序
speedlow:MOV   R7,#0C8H      ;100送入步进计数器R7
MLP2:	 MOV   R6,42H        ;延时
MLPX2:   LCALL DEL       ;调用短延时子程序
         DJNZ  R6,MLPX2
	 Inc   42H             ;将延迟计数器42H中的值减一
         LCALL STEPS      ;步进一步子程序
         DJNZ  R7,MLP2  ;步进步数减1,不为零继续步进
         ret

;步进一步子程序
STEPS:INC   20H                  	;地址偏移量加1
            ANL    20H,#83H        	;保留20H的D7、D1、D0位状态
            JB     7, STPSC            	;20H的D7=1反转, D7=0正转
            MOV    DPTR,#FTAB	 ;正转表首址送DPTR
            SJMP   STPW              ;跳转到查表程序
STPSC:MOV   DPTR,  #CTAB   ;反转表首址送DPTR
STPW:MOV    A,20H                ;查表程序
            ANL    A,#03H              ;取地址偏移量
            MOVC   A,@A+DPTR  ;取通电状态字
            MOV    P1,A                 ;输出通电状态字,步进电机走一步
            RET

FTAB:DB 01H,02H,04H,08H	;正转表
CTAB:DB 01H,08H,04H,02H	;反转表

;短延时子程序
DEL:   MOV  R5,#40H           ;   1T
DEL0:  DJNZ  R5,DEL0          ;   2T
       RET                               ;   1T
END                                      ;程序结束
