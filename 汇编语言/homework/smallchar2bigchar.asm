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
    buf db 100, ?, 100 dup('$')
DATAS ENDS

STACKS SEGMENT
    db 128 dup(0)
STACKS ENDS

CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS
START:
    MOV AX,DATAS
    MOV DS,AX
    ;此处输入代码段代码
    lea dx, buf
    mov ah,10
    int 21h
    enterline
    
    call s2b
    
    putstr buf+2
    jmp stop
    
;功能：小写字母转换为大写字母
;变量：无   
;需求：字符串 
s2b proc
	mpush
	mov cl, buf+1
    xor ch, ch
	lea si, buf+2
s2b_loop:
	mov al, [si]
	cmp al,'a'
	jb s2b_no
	cmp al,'z'
	ja s2b_no
	sub al, 20h
	mov [si], al
s2b_no:	
	inc si
	loop s2b_loop
	mpop
	ret
s2b endp
    
stop:
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START





