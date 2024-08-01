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
    output db 'AX Register Content is:$' 
    num2asc_flag db 0
DATAS ENDS

STACKS SEGMENT
    ;�˴������ջ�δ���
STACKS ENDS

CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS
START:
    MOV AX,DATAS
    MOV DS,AX
    ;�˴��������δ���
    
begin: 
   	lea dx,output; �����ʾ�׵�ַ
    mov ah,9
    int 21h
	
	call num2asc
	jmp stop
	
;���ܣ�ʮ�������
;������num2asc_flag(db, dw)   
;���󣺺����ڲ�����Ҫת�������ִ���ax 
num2asc proc
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;TODO
    mov ax, 65535;Ҫת����ʮ���� (��Ч��ֵΪ0~65535)����λ���
    mov bx,10000 ; Ҫ���Ե�Ȩ�أ����Դ�����λ��
    
num2asc_cov:xor dx,dx ;����
	div bx  ; ax�Ǳ�������bx�ǳ�����ax���̣�dx������
	mov cx,dx ;�����ȴ����cx
	
	cmp num2asc_flag,0
	jne num2asc_nor1
	cmp ax,0 ;������
	je num2asc_cont
	
num2asc_nor1:
	mov dl,al
	add dl,30h ;ת����ASCII�����
	mov ah,2   ;���
	int 21h
	
	mov num2asc_flag,1;���������Ϊ1��������0ҲҪ���
	
num2asc_cont:
	cmp bx,10  ; ����Ѿ������ʮλ����ֱ�����
	je num2asc_outer
	
	xor dx,dx ;����
	mov ax,bx ;�ݼ�Ȩ��
	mov bx,10
    div bx
    mov bx,ax 
        
    mov ax,cx;�������͵��������У�������
    jmp num2asc_cov    
   
num2asc_outer:
	mov dl,cl;��λ���
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
















