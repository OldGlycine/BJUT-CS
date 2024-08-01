assume cs:code,ss:stack,ds:data

data segment
	  db 0,0,0,0
	  note db 'Please enter the sentence:',0dh,0ah,'$'
	  str1 db 'The counted result of the program:',0dh,0ah,'$'
	  str2 db 'letter:','$'
	  str3 db 'digit :','$'
	  str4 db 'back :','$'
	  str5 db 'other :','$'
data ends

stack segment
	  db 100 dup(0)
stack ends

code segment
start:	
      mov ax,data
	  mov ds,ax
	  mov ah,09h
	  mov dx,offset note
	  int 21h			
	  mov ax,stack
	  mov ss,ax
	  mov sp,100
	  
	input:
	  read:
		mov ah,01h    
		int 21h		
		cmp al,0dh	
		jz outstr	
		cmp al,32
		je back	
		cmp al,'0'	
		jl other	
		cmp al,'9'	
		jg nextread		
		jl num			
	  back:
	  inc byte ptr ds:[2]
	  jmp read
	  
	  num:
	    inc byte ptr ds:[1]
		jmp read
		
	  other:
	    inc byte ptr ds:[3]	
	    jmp read			
		
	  nextread:			
	    cmp al,'A'		
	    jl other		
	    cmp al,'Z'		
	    jg next1		
	    inc byte ptr ds:[0]	
	    jl read			
		
	  next1:			
	    cmp al,'a'
		jl other		
		cmp al,'z'		
		inc byte ptr ds:[0]		
		jmp read
		jg other		
		
		
    outstr:
        mov ah,09h
	    mov dx,offset str1
	    int 21h			
	  a:
	    mov ah,09h
	    mov dx,offset str2
	    int 21h		
	    mov al,ds:[0]
	    mov ah,0		
	    call print	
	  
      b:
	    mov ah,09h
	    mov dx,offset str3
	    int 21h		
	    mov al,ds:[1]
	    mov ah,0		
	    call print	
	  
	  cc:
	    mov ah,09h
	    mov dx,offset str4
	    int 21h		
	    mov al,ds:[2]
	    mov ah,0		
	    call print	
	   d:
	   mov ah,09h
	    mov dx,offset str5
	    int 21h		
	    mov al,ds:[3]
	    mov ah,0		
	    call print	
	
	exit:
	  mov ah,4ch
	  int 21h			
		
	print:			
	  
	  mov bx,10		
	  mov cx,0		
	  mov dx,0		
	  s0:		    
	  div bx		
	  push dx		
	  inc cx		
	  cwd			
	  cmp ax,0		;将剩下的数ax与0比较
	  jne s0		;若ax!=0，继续循环
	  
	  s1:		    ;输出字符，cx为循环次数，一个数有多少位
	  pop dx		
	  add dl,30h	
	  mov ah,02h
	  int 21h		
	  loop s1		;循环cx次
	  
	  mov ah,02h
	  mov dl,0dh
	  int 21h		
	  
	  mov ah,02h
	  mov dl,0ah
	  int 21h		
	  ret			
	
	code ends
    end start





