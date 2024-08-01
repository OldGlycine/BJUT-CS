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
    ;此处输入数据段代码 
    output db 'AX Register Content is:$' 
    num2asc_flag db 0
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
    
begin: 
   	lea dx,output; 输出提示首地址
    mov ah,9
    int 21h
	
	call num2asc
	jmp stop
	
;功能：十进制输出
;变量：num2asc_flag(db, dw)   
;需求：函数内部将需要转换的数字存入ax 
num2asc proc
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;TODO
    mov ax, 65535;要转换的十进制 (有效数值为0~65535)，按位输出
    mov bx,10000 ; 要除以的权重，可以处理万位，
    
num2asc_cov:xor dx,dx ;清零
	div bx  ; ax是被除数，bx是除数，ax是商，dx是余数
	mov cx,dx ;余数先存放在cx
	
	cmp num2asc_flag,0
	jne num2asc_nor1
	cmp ax,0 ;商是零
	je num2asc_cont
	
num2asc_nor1:
	mov dl,al
	add dl,30h ;转换成ASCII码输出
	mov ah,2   ;输出
	int 21h
	
	mov num2asc_flag,1;有输出就置为1，后续的0也要输出
	
num2asc_cont:
	cmp bx,10  ; 如果已经处理过十位，就直接输出
	je num2asc_outer
	
	xor dx,dx ;清零
	mov ax,bx ;递减权重
	mov bx,10
    div bx
    mov bx,ax 
        
    mov ax,cx;将余数送到被除数中，继续除
    jmp num2asc_cov    
   
num2asc_outer:
	mov dl,cl;个位输出
	add dl,30h
	mov ah,2
	int 21h   
	enterline
	mpop
	ret
num2asc endp

stop:    
	MOV AH,4CH
    INT 21H
CODES ENDS
    END START
















