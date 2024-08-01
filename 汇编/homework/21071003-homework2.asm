;���飺ÿ��������ͷ�ԼĴ������㣬����в�������ģ����뺯��֮ǰ�ȱ���Ĵ�������
;�궨��ǵöԼĴ����������㣬���������enterline
;������db���壬��ôal�������������ax

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
	string1 db 'Please input a set of numbers(-255~255):$'
	err db 'Illegal input! Please enter again!$'
	biggist db 'The biggist num:$'
	smallest db 'The smallest num:$'
    buf db 100, ?, 100 dup(0)
    arr db 100h dup(0)
    arrlen dw 0
    arrpointer dw 0
    is_neg dw 0
    strlen dw 0
    string_neg db '-$'
    string_space db ' $'
    ctemp dw 0
    trans_flag dw 0
    temp db 0
    big db 0
    small db 0
DATAS ENDS

STACKS SEGMENT
    db 128 dup(0)
STACKS ENDS

CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS
begin:
    MOV AX,DATAS
    MOV DS,AX
    ;�˴��������δ���
    
    ;�����������
    putstr string1
    
    lea dx, buf
    mov ah,10
    int 21h
    enterline
    
    call asc2num
    
    call find_big
    mov al, big
    putstr biggist
    xor ah, ah
    call num2asc
    
    enterline
    
    call find_small
	mov al, small
	putstr smallest
	xor ah, ah
	call num2asc
	
    jmp stop
    
;������

;asc to num
;������ת�����ݵĴ洢
;arr����洢˳��������˳���෴���������� 2 3 4���洢4 3 2��������õ�������γ�α˳��洢
asc2num proc
asc2num_begin:;buf+1�洢���ǽ��յ��ַ���һ���ж��ٸ��ַ�
	xor di, di
	lea di, arr
	mov arrpointer, di;��������[0]�ĵ�ַ
    mov cl,buf+1 ;��ʵ�ʽ����ַ�������cl
    xor ch,ch   ;�������,�����
    xor di,di   
    xor dx,dx
    mov strlen, cx
    mov bx,1  ; ����Ȩ�أ���ֵ��1  
    lea si,buf+2 ;���ַ����ַ��ĵ�ַ����si
    add si,cx    ; �������ַ�����ĩβ���Ӹ�λ��ʼ����
    dec si

; �Ӻ���ǰѭ����������ַ���ת��������    
; al�����ַ������ַ�
cov:mov al,[si]
	cmp al, 20h
	je skip_space
	cmp al, '-'
	je neg_num
	cmp al,'0'
	jb error
	cmp al,'9'
	ja error
	
    sub al,30h ;ת��������
    xor ah,ah  ;����
    mul bx     ;�Ӹ�λ��ʼ������Ȩ��
    cmp dx,0   ;dx����λ��������
    jne error
    
    add di,ax   ;�ۼӺͣ�di�������յĽ��
    ;jc:�н�λ����ת
    jc error    ;����λ���н�λ�ͳ����������ֻ������65535
    
        
    mov ax,bx
    mov bx,10
    mul bx  ; ����Ȩ�أ���λ��1��ÿѭ��һ�γ���10
    mov bx,ax
    
    dec si   
    loop cov ; ÿѭ��һ�Σ�����һλ
neg_out:
    ;��������
	mov ax,di ; ���������
	cmp is_neg, 1
	jne pos2
	neg ax
pos2:mov di, arrpointer; ָ�뱣��
	mov [di], al ;�����������
	inc arrpointer ; ָ���ƽ�
	inc arrlen
	mov is_neg, 0
	
	ret
    
;������
error:
	;err�Ǳ�����ʾ���ַ�����err���ַ������׵�ַ
	lea dx,err 
    mov ah,9
    mov is_neg, 0
    mov arrlen, 0
    mov arrpointer, 0
    int 21h
    enterline 
    ;�������¿�ʼ
    jmp begin   


;�����ǶԿո�ͷ��ŵĶ�ȡ
;�漰�������¼��ɣ�
;1.����λ���жϣ����������磺1- 1-��--1 1�����������
;2.number2�Ĵ洢,�����ո�Ϊ�жϣ������û������ϸ���a b����ʽ���룬�����ж���ո�
skip_space:
	;�ո����ַ���ĩβ�ᷢ������
	cmp strlen, cx
	je error
	dec si
	dec cl
	;�׸��ַ��ǿո񽫻���ת��error�������׸��ַ��ǿո����������󣬲���ת
	;�ո�ǰ���Ǹ���������ת��error
	mov al, [si]
	cmp al, '-'
	je error
	;�ո�ǰ���ǿո�Ҳ�ᷢ������
	mov al, [si]
	cmp al, ' '
	je error
	
	;��������
	mov ax,di ; ���������
	cmp is_neg, 1
	jne pos1
	neg ax
pos1:mov di, arrpointer; ָ�뱣��
	mov [di], al ;�����������
	inc arrpointer ; ָ���ƽ�
	inc arrlen
	mov is_neg, 0
   	;���üĴ���,Ȩ�����
   	xor di, di
   	mov bx, 1
   	xor dx, dx
   	jmp cov
	
neg_num:
	;���ж��ַ���ĩβ�ǲ��Ǹ��ţ��ǵĻ����������
	cmp strlen, cx
	je error
	dec si
	dec cl
	;����������ڣ�Ҳ�Ǵ���
	mov al, [si]
	cmp al, '-'
	je error
	mov is_neg, 1
	;�����һ���ַ��Ǹ�������ô����cx��0�ˣ���Ҫ������ת��cov�����ⲿ��
	cmp cx, 0
	je neg_out
	;����ڶ��������Ǹ�������ô����ǰһ���ַ������ǿո񣬲�Ȼ�ʹ���
	mov al, [si]
	cmp al, ' '
	jne error
	jmp cov
asc2num endp

;num to asc
;��Ҫax��ǰ�洢�ô�ת���������ٵ��ô˺������˺���ת����ֱ���������+�ո�
;��Ҫ����trans_flag
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

find_big proc
	xor ax, ax
	xor bx, bx
	xor si, si
	xor dl, dl
	;��ȡѭ������
	mov cx, arrlen
	dec cx
	xor ch, ch
	;�����׵�ַ
	lea	si, arr
	;�洢�����һ�� 
	mov dl, [si]
	mov big, dl
	inc si
;��ʼѭ��
fbloop:
	mov dl, [si]
	cmp big, dl
	jge not_big
	mov big, dl
not_big:
	inc si
	loop fbloop
	ret
find_big endp

find_small proc
	xor ax, ax
	xor bx, bx
	xor si, si
	xor dl, dl
	;��ȡѭ������
	;���ﲻ����buf+1����Ϊ1 2 3 4��buf+1��7����arrlen��4
	mov cx, arrlen
	dec cx
	xor ch, ch
	;�����׵�ַ
	lea	si, arr
	;�洢�����һ�� 
	mov dl, [si]
	mov small, dl
	inc si
;��ʼѭ��
fmloop:
	mov dl, [si]
	cmp small, dl
	jle not_small
	mov small, dl
not_small:
	inc si
	loop fmloop
	ret
find_small endp

stop: 
    MOV AH,4CH
    INT 21H
CODES ENDS
    END begin





















