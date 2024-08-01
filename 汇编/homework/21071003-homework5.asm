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
    ;四个计数器
    cc dw 0
    sc dw 0
    nc dw 0
    ec dw 0
    buf db 30, ?, 30 dup(0)
    string1 db 'Please enter a line of string:$'
    string2 db 'A-Z and a-z :$'
    string3 db 'Space :$'
    string4 db 'Numbers :$'
    string5 db 'Other chars :$'
    string_neg dw 0
    trans_flag dw 0
    string_space db ' $'
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
    
    putstr string1
    
    lea dx, buf
    mov ah,10
    int 21h
    enterline
    
    lea si, buf+2
	mov cl, buf+1
	xor ch, ch

forward:
	mov bl, [si]
	;判断空格
	cmp bl, ' '
	je SPACE
	;判断数字
	cmp bl, 30h
	jb not_num
	cmp bl, 39h
	ja not_num
	jmp NUM
not_num:
	;判断字母
	cmp bl, 41h
	jb not_char
	cmp bl, 7ah
	ja not_char
	;到这里能判断字符在A-z之间
	cmp bl, 5ah
	jle CHAR ;大写字母
	cmp bl, 61h
	jge CHAR ;小写字母 
not_char:
	;判断回车
	cmp bl, 13h
	je ot
	inc ec
ot:
	inc si
	loop forward
	
;打印结果
	putstr string2
	mov ax, cc
	call num2asc
	enterline
	
	putstr string3
	mov ax, sc
	call num2asc
	enterline
	
	putstr string4
	mov ax, nc
	call num2asc
	enterline
	
	putstr string5
	mov ax, ec
	call num2asc
	enterline
	
	jmp stop
	
SPACE:
	inc sc
	jmp ot
NUM:
	inc nc
	jmp ot
CHAR:
	inc cc
	jmp ot
    
;含有标签：not_neg, cov_back, nor1, cont, outer
;需要提前ax输入数字
;string_neg dw 0
;trans_flag dw 0
;string_space db ' $'
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










