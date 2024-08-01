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
    buf db 100, ?, 100 dup('$')
    d2h_flag db 0
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
    
    
    call d2h
    jmp stop

;���ܣ�ʮ����תʮ������
;������d2h_flag(db, dw)   
;���󣺺����ڲ�����Ҫת�������ִ���ax 
d2h proc
	mpush
	mov ax, 32  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;TODO
	mov bx,4096 ; Ҫ���Ե�Ȩ�أ����Դ���ǧλ��
    
d2h_cov:xor dx,dx ;����
	div bx  ; ax�Ǳ�������bx�ǳ�����ax���̣�dx������
	mov cx,dx ;�����ȴ����cx
	
	cmp d2h_flag,0
	jne d2h_nor1
	cmp ax,0 ;������
	je d2h_cont
	
d2h_nor1:
	mov dl,al
	add dl,30h ;ת����ASCII�����
	mov ah,2   ;���
	int 21h
	
	mov d2h_flag,1;���������Ϊ1��������0ҲҪ���
	
d2h_cont:
	cmp bx,16  ; ����Ѿ������ʮλ����ֱ�����
	je d2h_outer
	
	xor dx,dx ;����
	mov ax,bx ;�ݼ�Ȩ��
	mov bx,16
    div bx
    mov bx,ax 
        
    mov ax,cx;�������͵��������У�������
    jmp d2h_cov    
   
d2h_outer:
	mov dl,cl;��λ���
	;�����0-9������
	add dl,30h
	cmp dl,39h
	jle d2h_continue
	add dl, 27h;��ĸСд
	;add dl, 7h;��ĸ��д
d2h_continue:
	mov ah,2
	int 21h   
	enterline
	mpop
	ret
d2h endp
    
stop:
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START





