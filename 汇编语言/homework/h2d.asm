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
    h2d_flag db 0
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
    
    call h2d
    jmp stop

;���ܣ�ʮ������תʮ����
;������h2d_flag(db, dw)   
;���󣺺����ڲ�����Ҫת�������ִ���ax
h2d proc
	mpush
	mov ax, 39h ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;TODO
	mov bx,10000 ; Ҫ���Ե�Ȩ�أ����Դ�����λ��
    
h2d_cov:xor dx,dx ;����
	div bx  ; ax�Ǳ�������bx�ǳ�����ax���̣�dx������
	mov cx,dx ;�����ȴ����cx
	
	cmp h2d_flag,0
	jne h2d_nor1
	cmp ax,0 ;������
	je h2d_cont
	
h2d_nor1:
	mov dl,al
	add dl,30h ;ת����ASCII�����
	mov ah,2   ;���
	int 21h
	
	mov h2d_flag,1;���������Ϊ1��������0ҲҪ���
	
h2d_cont:
	cmp bx,10  ; ����Ѿ������ʮλ����ֱ�����
	je h2d_outer
	
	xor dx,dx ;����
	mov ax,bx ;�ݼ�Ȩ��
	mov bx,10
    div bx
    mov bx,ax 
        
    mov ax,cx;�������͵��������У�������
    jmp h2d_cov    
   
h2d_outer:
	mov dl,cl;��λ���
	add dl,30h
	mov ah,2
	int 21h   
	enterline
	mpop
	ret
h2d endp
    
stop:
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START




