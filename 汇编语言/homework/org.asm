DATAS SEGMENT
    ;此处输入数据段代码  
    ORG	$+0H
    DA0		DB	10H	DUP(1, 2 ,3, 4 dup(0))
    DA1		DW	DA0+8     	;源存储区首址
    DA2		DW	DA0+3    	;目的存储首址
    COUNT	DW	0AH                	;传送数据字节数
	LABC EQU THIS BYTE
	LABD DW 4321H,2255H
DATAS ENDS
	
STACKS SEGMENT
    ;此处输入堆栈段代码 
STACKS ENDS

CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS
START:
    MOV AX,DATAS
    MOV DS,AX
    ;此处输入代码段代码
    mov si, DA1
    
    mov al, LABC
    mov bx, LABD
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START



