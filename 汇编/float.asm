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

;��������ַ�����ָ��
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
    ;�˴��������δ���
    
    mov dx, 0
	mov ax, num
	mov bx, 5
	div bx
	
	;�������������
	call num2asc
	putstr dot
	
	;������λС����ôx1000 (10��2 + 1�η�)
	mov ax, dx
	mov bx, 1000
	mul bx
	mov bx, 5
	div bx
	
	;�����������뷨
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
	
	;��������
	cmp ax, 0
	jge not_neg
	neg al
	putstr string_neg
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


