DATAS SEGMENT
    ;�˴��������ݶδ���  
    ORG	$+0H
    DA0		DB	10H	DUP(1, 2 ,3, 4 dup(0))
    DA1		DW	DA0+8     	;Դ�洢����ַ
    DA2		DW	DA0+3    	;Ŀ�Ĵ洢��ַ
    COUNT	DW	0AH                	;���������ֽ���
	LABC EQU THIS BYTE
	LABD DW 4321H,2255H
DATAS ENDS
	
STACKS SEGMENT
    ;�˴������ջ�δ��� 
STACKS ENDS

CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS
START:
    MOV AX,DATAS
    MOV DS,AX
    ;�˴��������δ���
    mov si, DA1
    
    mov al, LABC
    mov bx, LABD
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START



