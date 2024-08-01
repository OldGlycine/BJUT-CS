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
    h2b_flag db 0
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
    
    
    call h2b
    jmp stop

;���ܣ�ʮ������ת������
;������h2b_flag(db, dw)   
;���󣺺����ڲ�����Ҫת�������ִ���ax 
h2b proc
	mpush
	mov ax, 17  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;TODO
	mov bx,10000b ; Ҫ���Ե�Ȩ�أ����Դ���2^5-1=31��
    
h2b_cov:xor dx,dx ;����
	div bx  ; ax�Ǳ�������bx�ǳ�����ax���̣�dx������
	mov cx,dx ;�����ȴ����cx
	
	cmp h2b_flag,0
	jne h2b_nor1
	cmp ax,0 ;������
	je h2b_cont
	
h2b_nor1:
	mov dl,al
	add dl,30h ;ת����ASCII�����
	mov ah,2   ;���
	int 21h
	
	mov h2b_flag,1;���������Ϊ1��������0ҲҪ���
	
h2b_cont:
	cmp bx,10b  ; ����Ѿ������ʮλ����ֱ�����
	je h2b_outer
	
	xor dx,dx ;����
	mov ax,bx ;�ݼ�Ȩ��
	mov bx,10b
    div bx
    mov bx,ax 
        
    mov ax,cx;�������͵��������У�������
    jmp h2b_cov    
   
h2b_outer:
	mov dl,cl;��λ���
	;�����0-9������
	add dl,30h
	mov ah,2
	int 21h   
	enterline
	mpop
	ret
h2b endp
    
stop:
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START






