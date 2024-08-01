DATAS SEGMENT
    neg_flag dw 0  
    square_num1 dw 0
    square_num2 dw 0
    num1 dw 0
    num2 dw 0
DATAS ENDS

STACKS SEGMENT
    db 128 dup(0)
STACKS ENDS

CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS
START:
    MOV AX,STACKS
    MOV SS,AX
    MOV AX,DATAS
    MOV DS,AX
    

    
    

    
    
    mov ah,01h 
    int 21h
    xor ah, ah ;
    cmp al,'-'
    jne neg_loop1
    mov neg_flag,1
    mov ah,01h
    int 21h
    neg_loop1: mov di,0
    sub al,30h
    mov di,ax
    mov ah,01h 
    int 21h
    mov ax, di;
    mov num1, ax
    
    mov ah,01h 
    int 21h
    xor ah, ah ;
    cmp al,'-'
    jne neg_loop3
    mov neg_flag,1
    mov ah,01h
    int 21h
    neg_loop3: mov di,0
    sub al,30h
    mov di,ax
    mov ah,01h 
    int 21h
    mov ax, di;
    mov num2, ax
    
    
    mov ax, num1
    mov bx, num1
    mul bx
    mov square_num1, ax
    mov ax, num2
    mov bx, num2
    mul bx
    mov square_num2, ax
    mov ax, square_num1
    sub ax, square_num2
    
    xor ah,ah
    cmp ax,0
    jne neg_loop2    
    neg ax;
    mov dx,'-'
    mov ah,09h
    int 21h
    xor ah, ah;
    neg_loop2:mov cx,0
    pri_loop:mov dx,0
    mov bx,10
    div bx
    push dx
    inc cx
    cmp ax,0
    jne pri_loop
    show_loop:pop dx
    add dl,30h
    mov ah,02h
    int 21h
    loop show_loop

     
    MOV AH,4CH
    INT 21H
    

CODES ENDS
    END START

