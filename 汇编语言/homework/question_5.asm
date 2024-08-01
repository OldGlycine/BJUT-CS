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
	lea dx,input_str;��������
	mov ah,0ah
	int 21h
	lea dx,next_row
	mov ah,9
	int 21h
	
	MOV AX,ID;��ȡѧ��ĩλ����
    MOV DX,0
    MOV BX,10
    DIV BX
    MOV lastnum,DL
    
    mov cx,0
    
read_str:
	mov bl,input_str[si]
	cmp bl,'.';����.����
	jz str_num
	sub bl,'0';�ַ�����ת����
	mov bh,0
	push bx;ѹջ
	inc cl ;cl��¼����λ��
	inc si ;ָ�����
	jmp read_str	

str_num:;�ַ�ת����
	cmp ch,cl
	jz mul_id
	pop bx;һ�����ֳ�ջ
	cmp ch,0;�ж�����һλ
	jz lable_0
	cmp ch,1
	jz lable_1
	cmp ch,2
	jz lable_2
	cmp ch,3
	jz lable_3
	
lable_0:;��λ���֣���1���ۼӵ�sum
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
	
;��λ�����������ڲ���Ϊbx������csdn
output proc
	push ax;������ջ��
	push cx
	push dx
	
	;��ʼ������
	mov ax,bx;���ݷ���׼������
	mov cl,10;��Ϊ����
	mov ch,0;���ڼ������ں�����ջ���
	
divagain:;�������ְ��벿��
	cmp ax,0;�ж��Ƿ��Ѿ�����
		je divover
	inc ch;��������1
	div cl
	push ax;��ջ����ȡ��ʱ��ȡ��ah����,�洢��������λ���ȣ�
	mov ah,0;����ax
		jmp divagain;�ٴγ�����������
		
divover:;��ջ�������
	cmp ch,0;�ж������Ƿ��Ѿ�����
		je outputover
	pop ax;ȡ��ah����
	mov dl,ah;�������
	add dl,48
	mov ah,2
	int 21h
	dec ch
		jmp divover 
		
outputover:;��β����
	pop dx
	pop cx
	pop ax;���ݳ�ջ��
	ret
output endp	
	
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START


