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
 CMP CL, BYTE PTR Input  ;�ڶ�����������a���˳�
 JA EXIT
 MOV BL, 1
 MOV DL,0DH
 MOV AH,2
 INT 21H
 MOV DL,0AH
 MOV AH,2
 INT 21H
 
INNER_LOOP:
 MOV AL,CL ;�ڶ������������AL
 MUL BL    ;��һ�������͵ڶ���������˵Ľ������AX��
 MOV BH,10 ;�ѳ���10����BH��
 DIV BH    ;AX����BH���̣�ʮλ��������AL����������λ��������AH
 PUSH AX
 
 MOV DL, BL  ;��һ����������DL
 ADD DL, '0' ;תΪASCLL��
 MOV AH, 2   ;�����һ������
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
    
    MOV DL, AL  ;ʮλ
    PUSH AX
    ADD DL, '0'
    MOV AH, 2
    INT 21H
    
    POP AX
    
    MOV DL, AH  
    ADD DL, '0';��λ
    MOV AH, 2
    INT 21H

    MOV AH, 2  
    MOV DL, 20H
    INT 21H
    
    INC BL
    ;��һ���������ڵڶ�����������������ѭ��
 CMP BL,CL
 JA OUTER_LOOP
 CMP BL,CL
 JE INNER_LOOP
 ;�ڶ�������С�ڵ���a,�����ڲ�ѭ��
 CMP CL, BYTE PTR Input
 JBE INNER_LOOP
 CMP CL, BYTE PTR Input
 JE EXIT
EXIT:    
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START


