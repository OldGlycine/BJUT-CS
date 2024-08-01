DATAS SEGMENT
    input_msg db "input: ",13,10,'$'
    output_msg db "output: ",13,10,'$' 
    input_str db 50,?,50 dup('$')
    ID dw 4220
    next_row db 0dh,0ah,'$'
    lastnum DB 0
    sum dw 0
DATAS ENDS

STACKS SEGMENT
    db 128h dup(0)
STACKS ENDS

CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS
START:
    MOV AX,DATAS
    MOV DS,AX
    
    mov si,0
	lea dx,input_msg
	mov ah,9
	int 21h
	lea dx,input_str;接收输入
	mov ah,0ah
	int 21h
	lea dx,next_row
	mov ah,9
	int 21h
	
	MOV AX,ID;获取学号末位数字
    MOV DX,0
    MOV BX,10
    DIV BX
    MOV lastnum,DL
    
    mov cx,0
    
read_str:
	mov bl,input_str[si]
	cmp bl,'.';读到.跳出
	jz str_num
	sub bl,'0';字符数字转数字
	mov bh,0
	push bx;压栈
	inc cl ;cl记录数字位数
	inc si ;指针后移
	jmp read_str	

str_num:;字符转数字
	cmp ch,cl
	jz mul_id
	pop bx;一个数字出栈
	cmp ch,0;判断是哪一位
	jz lable_0
	cmp ch,1
	jz lable_1
	cmp ch,2
	jz lable_2
	cmp ch,3
	jz lable_3
	
lable_0:;个位数字，乘1，累加到sum
	mov ax,1
	mul bl
	add sum,ax
	inc ch
	jmp str_num
lable_1:
	mov ax,10
	mul bl
	add sum,ax
	inc ch
	jmp str_num
lable_2:
	mov ax,100
	mul bl
	add sum,ax
	inc ch
	jmp str_num
lable_3:
	mov ax,1000
	mul bl
	add sum,ax
	inc ch
	jmp str_num
	
mul_id:
	mov ax,sum
	mul lastnum
	mov bx,sum
	call output
	
;多位输出函数，入口参数为bx，来自csdn
output proc
	push ax;数据入栈区
	push cx
	push dx
	
	;初始化变量
	mov ax,bx;数据放入准备除法
	mov cl,10;作为除数
	mov ch,0;用于计数便于后续出栈输出
	
divagain:;除法数字剥离部分
	cmp ax,0;判断是否已经除尽
		je divover
	inc ch;计数器加1
	div cl
	push ax;入栈，提取的时候取用ah部分,存储余数（低位优先）
	mov ah,0;调整ax
		jmp divagain;再次除法剥离数字
		
divover:;出栈输出部分
	cmp ch,0;判断数字是否已经出尽
		je outputover
	pop ax;取用ah部分
	mov dl,ah;输出部分
	add dl,48
	mov ah,2
	int 21h
	dec ch
		jmp divover 
		
outputover:;收尾部分
	pop dx
	pop cx
	pop ax;数据出栈区
	ret
output endp	
	
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START


