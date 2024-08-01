enterline macro
	mov dl,13
	mov ah,2
	int 21h
	mov dl,10
	mov ah,2
	int 21h
endm

;��������ַ�����ָ��
putstr macro string
	lea dx, string
	mov ah, 09h
	int 21h
endm

DATAS SEGMENT
    ;�˴��������ݶδ���  
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
    ;�˴������ջ�δ���
    db 128 dup(0)
STACKS ENDS

CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS
START:
    MOV AX,DATAS
    MOV DS,AX
    ;�˴��������δ���
    
    ;��ʼ����ӡ����
    mov cx, 4bh
    ;��ʼ����ӡ���
    mov dx, 30h
    ;��ʼ����ֵ���
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
	
	;��������
	xor ah,ah
	cmp al, 0
	jge not_neg
	neg al
	putstr string_neg
	xor ah,ah
not_neg:
	mov bx,10000 ; Ҫ���Ե�Ȩ�أ����Դ�����λ��
    
cov_back:
	xor dx,dx ;����
	div bx  ; ax�Ǳ�������bx�ǳ�����ax���̣�dx������
	mov cx,dx ;�����ȴ����cx
	
	cmp trans_flag,0
	jne nor1
	cmp ax,0 ;������
	je cont
	
nor1:
	mov dl,al
	add dl,30h ;ת����ASCII�����
	mov ah,2   ;���
	int 21h
	
	mov trans_flag,1;���������Ϊ1��������0ҲҪ���
	
cont:
	cmp bx,10  ; ����Ѿ������ʮλ����ֱ�����
	je outer
	
	xor dx,dx ;����
	mov ax,bx ;�ݼ�Ȩ��
	mov bx,10
    div bx
    mov bx,ax 
        
    mov ax,cx;�������͵��������У�������
    jmp cov_back 
   
outer:
	mov dl,cl;��λ���
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



