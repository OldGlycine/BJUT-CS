enterline macro
	mov dl,13
	mov ah,2
	int 21h
	mov dl,10
	mov ah,2
	int 21h
endm

;定义输出字符串的指令
putstr macro string
	lea dx, string
	mov ah, 09h
	int 21h
endm

DATAS SEGMENT
    ;此处输入数据段代码  
    ti db 'Code(decimal)       Char$'
    space_9 db 9 dup(' '), '$'
    space_5 db 5 dup(' '), '$'
    string_neg db '-$'
    trans_flag db 0
    string_space db ' $'
    counter_code dw 0
    counter_4 dw 0
DATAS ENDS

STACKS SEGMENT
    ;此处输入堆栈段代码
    db 128 dup(0)
STACKS ENDS

CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS
START:
    MOV AX,DATAS
    MOV DS,AX
    ;此处输入代码段代码
    
    ;初始化打印次数
    mov cx, 4bh
    ;初始化打印起点
    mov dx, 30h
    ;初始化码值起点
    mov counter_code, dx
lloop:
    mov ah, 02h
    int 21h 
    
    push dx
    putstr space_5
    
    push ax
    mov ax, counter_code
    push cx
    call num2asc
    pop cx
    pop ax
    
    putstr space_9
    pop dx
    
    cmp cx, 1
    je stop
    
    inc counter_code
    inc counter_4
    
    cmp counter_4, 4
    jne continue
    
    push dx
    enterline
    pop dx
    
    mov counter_4, 0
    
continue:
 	inc dx
    loop lloop
num2asc proc
	xor cx, cx
	xor bx, bx
	xor dx, dx
	
	;负数处理
	xor ah,ah
	cmp al, 0
	jge not_neg
	neg al
	putstr string_neg
	xor ah,ah
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
	putstr string_space
	mov trans_flag, 0
	xor di, di
    ret
num2asc endp

stop:
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START



