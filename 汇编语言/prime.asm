putstr macro string
	lea dx, string
	mov ah, 09h
	int 21h
endm

DATAS SEGMENT
    num dw 11 
    yes db "yes$"
    no db "no$"
    prime_flag db 0
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
    
    call prime
    cmp prime_flag, 0
    je yy
    jmp nn
    
    
    yy: putstr yes
    jmp stop
    nn:putstr no
    jmp stop
    
    


stop:
    MOV AH,4CH
    INT 21H
    
;��Ҫprime_flag db
prime proc
	mov cx,num ;;;num;;;
	dec cx
prime_loop:
 	mov dx,0
	cmp cx, 1
	je prime_end
	mov ax, num
	mov bx, cx
	idiv bx
	cmp dx,0
	je set_prime
	loop prime_loop
set_prime:
	mov prime_flag,1
prime_end:
	ret
prime endp
    
CODES ENDS
    END START


