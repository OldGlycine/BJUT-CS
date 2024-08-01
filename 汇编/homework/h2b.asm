mpush macro
	push ax
	push bx
	push cx
	push dx
	push si
	push di
endm

mpop macro
	pop di
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
endm

enterline macro
	push dx
	push ax
	mov dl,13
	mov ah,2
	int 21h
	mov dl,10
	mov ah,2
	int 21h
	pop ax
	pop dx
endm

;定义输出字符串的指令
putstr macro string
 	push dx
 	push ax
	lea dx, string
	mov ah, 09h
	int 21h
	pop ax
	pop dx
endm

DATAS SEGMENT
    buf db 100, ?, 100 dup('$')
    h2b_flag db 0
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
    
    
    call h2b
    jmp stop

;功能：十六进制转二进制
;变量：h2b_flag(db, dw)   
;需求：函数内部将需要转换的数字存入ax 
h2b proc
	mpush
	mov ax, 17  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;TODO
	mov bx,10000b ; 要除以的权重，可以处理2^5-1=31，
    
h2b_cov:xor dx,dx ;清零
	div bx  ; ax是被除数，bx是除数，ax是商，dx是余数
	mov cx,dx ;余数先存放在cx
	
	cmp h2b_flag,0
	jne h2b_nor1
	cmp ax,0 ;商是零
	je h2b_cont
	
h2b_nor1:
	mov dl,al
	add dl,30h ;转换成ASCII码输出
	mov ah,2   ;输出
	int 21h
	
	mov h2b_flag,1;有输出就置为1，后续的0也要输出
	
h2b_cont:
	cmp bx,10b  ; 如果已经处理过十位，就直接输出
	je h2b_outer
	
	xor dx,dx ;清零
	mov ax,bx ;递减权重
	mov bx,10b
    div bx
    mov bx,ax 
        
    mov ax,cx;将余数送到被除数中，继续除
    jmp h2b_cov    
   
h2b_outer:
	mov dl,cl;个位输出
	;如果是0-9的数字
	add dl,30h
	mov ah,2
	int 21h   
	enterline
	mpop
	ret
h2b endp
    
stop:
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START






