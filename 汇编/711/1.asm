DATAS SEGMENT
	DATAARRAY DB 20 DUP('$')
    DATASTRING DB 'Mes 000000000000000$' ,'Mes 111111111111111$' ,'Mes 222222222222222$' ,'Mes 333333333333333$' ,'Mes 444444444444444$' ,'Mes 555555555555555$' ,'Mes 666666666666666$' ,'Mes 777777777777777$' ,'Mes 888888888888888$' 
ERR_MSG DB 'PLEASE ENTER A NEW NUM (0 - 8)$'
DATAS ENDS

STACKS SEGMENT
STACKS ENDS

CODES SEGMENT
    ASSUME CS:CODES, DS:DATAS, SS:STACKS
START:
    MOV AX, DATAS   
    MOV DS, AX     
    
    MOV AH, 01H     
    INT 21H        
    MOV DL, AL
    CMP DL,'q'    
    JE EXIT         
    SUB DL, 30H
    CMP DL, 0       
    JB INVALID      
    CMP DL, 8      
    JA INVALID      

    MOV BL, DL
    MOV BH, 0
    MOV CL, 4
    SHL BL, CL
    SHL DL, 1
    SHL DL, 1
    ADD BL, DL



 LOOP_CMP:
 	MOV AH, 09H
 	LEA DX, DATASTRING
 	ADD DX, BX
 	INT 21H
 	JNZ START 
 	
 JMP EXIT

INVALID:
    MOV AH, 09H      
    LEA DX, ERR_MSG   
    INT 21H        
    JMP START      
EXIT:
    MOV AH, 4CH     
    INT 21H         

CODES ENDS
    END START



