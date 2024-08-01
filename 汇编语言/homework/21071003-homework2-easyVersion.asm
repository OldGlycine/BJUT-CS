enterline macro
	mov dl,13
	mov ah,2
	int 21h
	mov dl,10
	mov ah,2
	int 21h
endm

putstr macro string
	lea dx, string
	mov ah, 09h
	int 21h
endm


DATAS SEGMENT
    buf db 21,?,21 dup(0)
    string1 db 'Please enter a string:$'
    err db 'Illegal input!Please enter again$'
    bign db 'The biggist num:$'
    smn db 'The smallest num:$'
    arr dw 20 dup(0)
    bignum dw 0
    smallnum dw 32767
DATAS ENDS

STACKS SEGMENT
    db 128 dup(0)
STACKS ENDS

CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS
begin:
    MOV AX,DATAS
    MOV DS,AX
    ;此处输入代码段代码
    putstr string1
    
    lea dx, buf
    xor dh, dh
    mov ah, 10
    int 21h
    enterline
    
    xor dx, dx
    xor di, di
    xor si, si
    xor cx, cx
    
    mov cl, buf+1
    lea si, buf+2
    add si, cx
    dec si
    
find_big:
	xor ah, ah
	mov al, [si]
	
	cmp al,'0'
	jb error
	cmp al,'9'
	ja error
	
	cmp bignum, ax
	jg not_big
    mov bignum, ax
not_big:
	dec si
	loop find_big
	
	xor dx, dx
    xor di, di
    xor si, si
    xor cx, cx
    
    mov cl, buf+1
    lea si, buf+2
    add si, cx
    dec si
    
find_small:
	xor ah, ah
	mov al, [si]
	cmp smallnum, ax
	jl not_small
    mov smallnum, ax
not_small:
	dec si
	loop find_small

	putstr bign
	mov dx, bignum
	mov ah,02h
	int 21h
	
	enterline
	
	putstr smn
	mov dx, smallnum
	mov ah,02h
	int 21h

stop:
    MOV AH,4CH
    INT 21H
    
error:
	lea dx,err 
    mov ah,9
    int 21h
    enterline
    jmp begin   
    
CODES ENDS
    END begin













































