DATAS SEGMENT
    shit dw 1234h
DATAS ENDS

STACKS SEGMENT
    db 128 dup(0)
STACKS ENDS

CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS
START:
    MOV AX,DATAS
    MOV DS,AX
    ;此处输入代码段代码
    lea di, shit
    mov ah, 09h
    int 21h
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START
