putstring macro string
	lea dx, string
	mov ah, 09h
	int 21h
endm

getchar macro
	mov ah, 1
	int 21h
endm


DATAS SEGMENT
    num1 dw 0
    num2 dw 0  
    prompt1 db 'Please input 2 number:$'
    neg_flag dw 0
    square_num1 dw 0
    square_num2 dw 0
    tempax dw 0
    tempdx dw 0
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
	putstring prompt1
    call transform1
    mov num1, ax
    call transform1
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
    
    call transform2
    jmp stop
    
    transform1 proc
	mov neg_flag, 0
skip_space:
	getchar
	cmp al, ' '
	je skip_space
	cmp al, '-'
	jne next1
	mov neg_flag, 1
	getchar
next1:
	mov di, 0
input_loop:
	sub al, 30h
	mov cl, al
	mov ax, di
	mov bx, 10
	mul bx
	mov ch, 0;
	add ax, cx
	mov di, ax
	getchar
	cmp al, 0dh
	je int_quit
	jmp input_loop
int_quit:
 	mov ax, di
 	mov bx, neg_flag
 	cmp bx, 1
 	jne LN
 	neg ax
LN:
	ret
transform1 endp

transform2 proc
	cmp ax, 0
	jge LW
	neg ax
	
	mov tempax, ax
	mov tempdx, dx
	mov ah, 02h
	mov dx, 2Dh
	int 21h
	mov ax, tempax
	mov dx, tempdx
	
LW:
	mov cx, 0
cal_loop:
	xor dx, dx
	mov bx, 10
	div bx
	push dx
	inc cx
	cmp ax, 0
	jne cal_loop
show_loop:
	pop dx
	add dl, 30h
	
	mov tempax, ax
	mov ah, 02h
	int 21h
	mov ax, tempax
	
	loop show_loop
	ret
transform2 endp
    
stop:
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START


