DATAS SEGMENT
    TIP_HUNDRED DB 'qing shu ru zheng que shu zi$'
    TIP_INPUT DB 'shu ru ni de shu zi!$'
    TIP_TOATAL DB 'jie guo shi :$'
    TIP_ERROR DB 'fei fa shu ru!$' 
    
    SCORE_TRUE DW 0
    SCORE DB 30H 
    DB 0 
    DB 30H DUP('$');用于存放7个评委的分数
    SCOREALL DW 0
    SCORE_MAX DW 0
    SCORE_MIN DW 100
    
DATAS ENDS

STACKS SEGMENT
     DW 40H DUP(0)
    TOP LABEL WORD
STACKS ENDS

CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS
START:
    MOV AX,DATAS
    MOV DS,AX
    MOV ES,AX
THE_F:
	MOV AX,0 
	MOV SCOREALL,AX
	MOV SCORE_MAX,AX
	MOV AX,100
	MOV SCORE_MIN,AX

	LEA  DX,TIP_HUNDRED;输入规则提示
	MOV AH,09H
	INT 21H
	MOV DX,0AH
	MOV AH,02H
	INT 21H
	MOV DX,0DH
	MOV AH,02H
	INT 21H
	MOV CX,07H
FIRST:
	MOV SCORE_TRUE,0
	MOV DX,CX
	ADD DX,30H
	MOV AH,02H
	INT 21H
	MOV DX,':'
	MOV AH,02H
	INT 21H
	
	LEA  DX,TIP_INPUT
	MOV AH,09H
	INT 21H
	
	MOV DX,0AH
	MOV AH,02H
	INT 21H
	MOV DX,0DH
	MOV AH,02H
	INT 21H
	
	LEA DX,SCORE
	MOV AH,0AH
	INT 21H
    
    MOV DX,0AH
	MOV AH,02H
	INT 21H
	MOV DX,0DH
	MOV AH,02H
	INT 21H
    
    CALL CMPAB
	LOOP FIRST
	JMP NOLONGHAIR
	
	
CMPAB PROC
	PUSH CX
	  MOV AL,SCORE+1
	;判断是否大于3位
    CMP AL,03H
    JA ERROR_TIP
    MOV SI,2
    MOV CL,SCORE+1
   NEXT:
   	XOR AX,AX
    MOV AL,SCORE[SI]
    CMP AL,'0'
    JB ERROR_TIP
    CMP AL,'9'
    JA ERROR_TIP
   
    ;合法字符，转成真值,SCORE_TRUE用来存放其真值
    ;将SCORE_TRUE中的数值乘10
    SUB AL,30H
    PUSH AX
    XOR AX,AX
    MOV AX,10
    MUL SCORE_TRUE
    MOV SCORE_TRUE,AX
    POP AX
   	ADD SCORE_TRUE,AX;按位数相加
    INC SI
    LOOP NEXT
    
 GH:;加和到总分并且更新大小
	XOR DX,DX
   	XOR AX,AX
    MOV AX,SCORE_TRUE
    
    ;判断这个值是不是百分制
    CMP AX,100
    JA  ERROR_TIP
    ;符合百分制就加到总分里
    ADD SCOREALL,AX
    CMP AX,SCORE_MIN
    JA GOMAX
  	MOV SCORE_MIN,AX
GOMAX:    
    CMP AX,SCORE_MAX
    JB RECHARGE
    MOV SCORE_MAX,AX
RECHARGE:
    POP CX
    RET
CMPAB ENDP

NOLONGHAIR:;总数计算部分
	LEA DX,TIP_TOATAL
	MOV AH,09H
	INT 21H
	XOR DX,DX
	MOV AX,SCOREALL
	SUB AX,SCORE_MIN
	SUB AX,SCORE_MAX
	MOV BX,5
	DIV BX 
	PUSH DX
	XOR BX,BX
   	MOV BX,10
   	XOR CL,CL
 ML1:
   	XOR DX,DX
  	DIV BX
   	ADD DL,30H
  	PUSH DX
  	INC CL;记录共有几个
  	CMP AX,0
  	JNE ML1	
 MW1I:
 	POP DX
 	MOV AH,02H
  	INT 21H
	LOOP MW1I
	MOV DX,'.'
	INT 21H
	POP DX
	SAL DX,1;余数乘10除5=2，相当于左移一位 余数部分
	ADD DX,30H
	INT 21H
	JMP EXIT
ERROR_TIP:
	 MOV DX,0AH
	MOV AH,02H
	INT 21H
	MOV DX,0DH
	MOV AH,02H
	INT 21H
	
  	LEA DX,TIP_ERROR
 	MOV AH,09H
  	INT 21H
  
  	MOV DX,0AH
	MOV AH,02H
	INT 21H
	MOV DX,0DH
	MOV AH,02H
	INT 21H
  JMP THE_F      
EXIT: 
	MOV DX,0AH
	MOV AH,02H
	INT 21H
	MOV DX,0DH
	MOV AH,02H
	INT 21H
	JMP THE_F
CODES ENDS
    END START


