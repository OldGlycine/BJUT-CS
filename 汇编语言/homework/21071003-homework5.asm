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
    ;�˴��������ݶδ���  
    ;�ĸ�������
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
    ;�˴������ջ�δ���
    db 128 dup(0)
STACKS ENDS

CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS
START:
    MOV AX,DATAS
    MOV DS,AX
    ;�˴��������δ���
    
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
	;�жϿո�
	cmp bl, ' '
	je SPACE
	;�ж�����
	cmp bl, 30h
	jb not_num
	cmp bl, 39h
	ja not_num
	jmp NUM
not_num:
	;�ж���ĸ
	cmp bl, 41h
	jb not_char
	cmp bl, 7ah
	ja not_char
	;���������ж��ַ���A-z֮��
	cmp bl, 5ah
	jle CHAR ;��д��ĸ
	cmp bl, 61h
	jge CHAR ;Сд��ĸ 
not_char:
	;�жϻس�
	cmp bl, 13h
	je ot
	inc ec
ot:
	inc si
	loop forward
	
;��ӡ���
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
    
;���б�ǩ��not_neg, cov_back, nor1, cont, outer
;��Ҫ��ǰax��������
;string_neg dw 0
;trans_flag dw 0
;string_space db ' $'
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










