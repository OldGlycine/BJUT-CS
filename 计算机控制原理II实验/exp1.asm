OUTBIG EQU 8002H   ;位控制口
OUTSEG EQU 8004H   ;段控制口
KEYIN  EQU 8001H    ;键盘读入口


;***********updated*******
;缓冲器设初值， 赋值到6个数码管
READY:    MOV 25H,#08H;8
          MOV 24H,#00H;0
          MOV 23H,#07H;7
          MOV 22H,#00H;0
          MOV 21H,#01H;1
          MOV 20H,#01H;1
;*********************************

          MOV R7,#6
MAIN:     ;MOV R7,#6        ;当使按键循环往复时则取消注释该行即可
          LCALL DISPLAY   ;无键码输入，继续显示当前的数字
          LCALL TEST
          JZ MAIN    ;累加器为0无按键， 继续显示
          LCALL SEARCH    ;有键值输入?
          MOV 20H,21H    ;数码管显示出输入的键值
          MOV 21H,22H
          MOV 22H,23H
          MOV 23H,24H
          MOV 24H,25H
          MOV 25H,A
          DJNZ R7, MAIN
   
          
MAIN1:    MOV R7,#5        ;当使按键循环往复时则取消注释该行即可
          LCALL DISPLAY   ;无键码输入，继续显示当前的数字
          LCALL TEST
          JZ MAIN1    ;累加器为0无按键， 继续显示
          LCALL SEARCH    ;有键值输入?
          MOV 20H,21H    ;数码管显示出输入的键值
          MOV 21H,22H
          MOV 22H,23H
          MOV 23H,24H
          ;MOV 24H,25H
          MOV 24H,A
          DJNZ R7, MAIN1      
SHIZHONG:
          LCALL DELONE
          LCALL ADD1
          SJMP SHIZHONG

 ;***********display module**************
DISPLAY:    ;显示模块
          MOV R0,#20H    ;缓冲区从20H处开始
          MOV R1,#6    ;共6个八段管
          MOV R2,#00100000B    ;从左边开始显示灯亮为1，灭为0

LOOP3:
          MOV DPTR,#LEDTAB
          MOV A,@R0
          MOVC A,@A+DPTR
          MOV B,A

          MOV DPTR,#OUTSEG
          MOV A,#0
          MOVX @DPTR,A
          MOV A,B    ;将以20H为首地址的内存值发送到段码输出口8004H
          MOVX @DPTR,A

          MOV DPTR,#OUTBIG    ;输出位选通估号， 使每次只显示一位八段管
          MOV A,R2
          MOVX @DPTR,A
          RR A
          MOV R2,A
          LCALL DELAY;；延时
          INC R0
          DJNZ R1,LOOP3;； 显示6次
          RET
 ;**********************************

DELAY:   MOV R5,#01H    ;延时子程序
DEL1:    MOV R6,#00H
DEL2:    DJNZ R6,DEL2
         DJNZ R5,DEL1
         RET

TEST:    MOV DPTR,#OUTBIG    ;检测有无键值输入
         MOV A,#00H
         MOVX @DPTR,A    ;送出0
         MOV DPTR,#KEYIN
         MOVX A,@DPTR    ;回读行状态
         CPL  A        ;累加器低四位求反
         ANL A,#0FH
         RET

SEARCH:    ;找出键值所在的的位置(行和列)
         MOV R1,#00100000B  ;初始列，从左边开始
         MOV R2,#06H ;找6列
         MOV R5,#00H ;记录当前所在列数
         MOV R4,#03H ;已经跳过了多少列
LSEARCH:    ;找出列所在位置后
         MOV A,R1
         CPL A
         MOV DPTR,#OUTBIG
         MOVX @DPTR,A
         CPL A
         RR A    ;通过判断循环几次进位为1来实现计数的功能
         MOV R1,A
         MOV DPTR,#KEYIN
         MOVX A,@DPTR
         CPL A
         ANL A,#0FH
         JNZ HSEARCH    ;A为零就找到所在列， 不为零继续寻找行所在位置
         INC R5     ;列数加一继续查找
         DJNZ R2,LSEARCH
HSEARCH:
         MOV R6,#04H;；一共有四列
LOOP2:   RRC A
         JC GET
         DEC R4
         DJNZ R6,LOOP2
GET:    ;确定输入的键码值
         MOV A,R4    ;键值=行*6+列,R4*6+R5->A
         MOV B,#6H
         MUL AB
         ADD A,R5
         MOV DPTR,#KEYTAB;取出键码所在位置
         MOVC A,@A+DPTR
         MOV 26H,A    ;将取出键值暂时保存在内存中,防止数据丢失
WAIT:    MOV DPTR,#OUTBIG    ;等键释放
         CLR A
         MOVX @DPTR,A
         LCALL DELAY
         LCALL TEST
         JNZ WAIT
         MOV A,26H    ;释放出键盘输入值
         RET

;********************ADD1*************************
ADD1:    ;20h ---25h
         ;秒低位
         MOV A,25H
         INC A
         MOV 25H,A
         CJNE A,#0AH,QUIT;秒低位不等于10则返回
         MOV 25H,#00H
         ;秒高位
         MOV A,24H
         INC A
         MOV 24H,A
         CJNE A,#06H,QUIT;秒高位不等于6则返回
         MOV  24H,#00H
         ;分低位
         MOV A,23H
         INC A
         MOV 23H,A
         CJNE A,#0AH,QUIT;分低位不等于10则返回
         MOV 23H,#00H
         ;分高位
         MOV A,22H
         INC A
         MOV 22H,A
         CJNE A,#06H,QUIT;分高位不等于6则返回
         MOV  22H,#00H
         ;时低位,特殊处理0~19,20~24
         MOV A,20H
         CJNE A,#02H,HOUR019
         JMP HOUR2024
         ;时高位
HOUR019:
         MOV A,21H
         INC A
         MOV 21H,A
         CJNE A,#0AH,QUIT;时低位不等于10则返回
         MOV 21H,#00H
         ;时高位小于等于1，直接对时高位加一处理
         MOV A,20H
         INC A
         MOV 20H,A
         JMP QUIT
HOUR2024:
         MOV A,21H
         INC A
         MOV 21H,A
         CJNE A,#04H,QUIT;时低位不等于4则返回
         MOV 21H,#00H
         ;此时时高位将大于2，直接对时高位置0处理
         MOV 20H,#00H
         JMP QUIT
QUIT:
         RET
;**********************************************************

;************delay 1 second***********
DELONE:
         MOV 27H,#3
L3:      MOV 28H,#10
L2:      MOV 29H,#10
L1:      LCALL DISPLAY
         DJNZ 29H,L1
         DJNZ 28H,L2
         DJNZ 27H,L3
         RET
;**********************************

LEDTAB:     ;八段管显示码
        DB 3fh, 06h, 5bh, 4fh, 66h, 6dh, 7dh, 07h
        DB 7fh, 6fh, 77h, 7ch, 39h, 5eh, 79h, 71h
KEYTAB:    ;键盘码
        DB 07h, 08h, 09h, 0ah, 10h, 0ffh,
        DB 04h, 05h, 06h, 0bh, 11h, 14h,
        DB 01h, 02h, 03h, 0ch, 12h, 15h,
        DB 00h, 0fh,0eh, 0dh, 13h, 16h,

 
