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
    num dw 698  
    string_neg dw 0
	trans_flag dw 0
	string_space db ' $'
	dot db ".$"
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
    
    mov dx, 0
	mov ax, num
	mov bx, 5
	div bx
	
	;先输出整数部分
	call num2asc
	putstr dot
	
	;保留两位小数那么x1000 (10的2 + 1次方)
	mov ax, dx
	mov bx, 1000
	mul bx
	mov bx, 5
	div bx
	
	;采用四舍五入法
	mov bx, 10
	div bx
	cmp dx, 5
	jl she4
	inc ax
she4:
	call num2asc
	
	jmp stop
    
    
num2asc proc
	push dx
	push bx
	push cx
	xor cx, cx
	xor bx, bx
	xor dx, dx
	
	;负数处理
	cmp ax, 0
	jge not_neg
	neg al
	putstr string_neg
not_neg:
	mov bx,10000 ; 要除以的权重，可以处理万位，
    
cov_back:
	xor dx,dx ;清零
	div bx  ; ax是被除数，bx是除数，ax是商，dx是余数
	mov cx,dx ;余数先存放在cx
	
	cmp trans_flag,0
	jne nor1
	cmp ax,0 ;商是零
	je cont
	
nor1:
	mov dl,al
	add dl,30h ;转换成ASCII码输出
	mov ah,2   ;输出
	int 21h
	
	mov trans_flag,1;有输出就置为1，后续的0也要输出
	
cont:
	cmp bx,10  ; 如果已经处理过十位，就直接输出
	je outer
	
	xor dx,dx ;清零
	mov ax,bx ;递减权重
	mov bx,10
    div bx
    mov bx,ax 
    mov ax,cx;将余数送到被除数中，继续除
    jmp cov_back 
   
outer:
	mov dl,cl;个位输出
	add dl,30h
	mov ah,2
	int 21h   
	mov trans_flag, 0
	xor di, di
	pop cx
	pop bx
	pop dx
    ret
num2asc endp
    
stop:
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START


