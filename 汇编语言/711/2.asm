DATAS SEGMENT
    PROMPT DB 'Please Input a:$'
    Input DB ?
    INVALID_I DB 'Invalid Input! Please try again:$'
DATAS ENDS

STACKS SEGMENT PARA STACK
    DB 20H     DUP(0)
STACKS ENDS

CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS
START:
    MOV AX,DATAS
    MOV DS,AX
  
    MOV AH,9
    MOV DX, OFFSET PROMPT 
    INT 21H
    MOV AH,1 
    INT 21H
    MOV BL,AL
    MOV BYTE PTR Input, BL  

 MOV CL, 0 
 SUB BYTE PTR Input, '0' 
 
OUTER_LOOP:  
 INC CL
 CMP CL, BYTE PTR Input  ;第二个乘数大于a则退出
 JA EXIT
 MOV BL, 1
 MOV DL,0DH
 MOV AH,2
 INT 21H
 MOV DL,0AH
 MOV AH,2
 INT 21H
 
INNER_LOOP:
 MOV AL,CL ;第二个乘数分配给AL
 MUL BL    ;第一个乘数和第二个乘数相乘的结果存入AX中
 MOV BH,10 ;把除数10存入BH中
 DIV BH    ;AX除以BH，商（十位数）存在AL，余数（个位数）存在AH
 PUSH AX
 
 MOV DL, BL  ;第一个乘数移入DL
 ADD DL, '0' ;转为ASCLL码
 MOV AH, 2   ;输出第一个乘数
 INT 21H
 
 MOV DL, '*' 
 MOV AH, 2
 INT 21H
 
    MOV DL, CL  
    ADD DL, '0' 
    MOV AH, 2   
    INT 21H
    
    MOV DL, '=' 
    MOV AH, 2
    INT 21H
    
    POP AX      
    
    MOV DL, AL  ;十位
    PUSH AX
    ADD DL, '0'
    MOV AH, 2
    INT 21H
    
    POP AX
    
    MOV DL, AH  
    ADD DL, '0';个位
    MOV AH, 2
    INT 21H

    MOV AH, 2  
    MOV DL, 20H
    INT 21H
    
    INC BL
    ;第一个乘数大于第二个乘数，则进行外层循环
 CMP BL,CL
 JA OUTER_LOOP
 CMP BL,CL
 JE INNER_LOOP
 ;第二个乘数小于等于a,继续内层循环
 CMP CL, BYTE PTR Input
 JBE INNER_LOOP
 CMP CL, BYTE PTR Input
 JE EXIT
EXIT:    
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START


