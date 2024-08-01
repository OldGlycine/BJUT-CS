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
    d2h_flag db 0
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
    
    
    call d2h
    jmp stop

;功能：十进制转十六进制
;变量：d2h_flag(db, dw)   
;需求：函数内部将需要转换的数字存入ax 
d2h proc
	mpush
	mov ax, 32  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;TODO
	mov bx,4096 ; 要除以的权重，可以处理千位，
    
d2h_cov:xor dx,dx ;清零
	div bx  ; ax是被除数，bx是除数，ax是商，dx是余数
	mov cx,dx ;余数先存放在cx
	
	cmp d2h_flag,0
	jne d2h_nor1
	cmp ax,0 ;商是零
	je d2h_cont
	
d2h_nor1:
	mov dl,al
	add dl,30h ;转换成ASCII码输出
	mov ah,2   ;输出
	int 21h
	
	mov d2h_flag,1;有输出就置为1，后续的0也要输出
	
d2h_cont:
	cmp bx,16  ; 如果已经处理过十位，就直接输出
	je d2h_outer
	
	xor dx,dx ;清零
	mov ax,bx ;递减权重
	mov bx,16
    div bx
    mov bx,ax 
        
    mov ax,cx;将余数送到被除数中，继续除
    jmp d2h_cov    
   
d2h_outer:
	mov dl,cl;个位输出
	;如果是0-9的数字
	add dl,30h
	cmp dl,39h
	jle d2h_continue
	add dl, 27h;字母小写
	;add dl, 7h;字母大写
d2h_continue:
	mov ah,2
	int 21h   
	enterline
	mpop
	ret
d2h endp
    
stop:
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START





