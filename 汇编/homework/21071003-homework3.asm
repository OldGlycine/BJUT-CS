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
    buf db 100, ?, 100 dup(0)
    arr db 100h dup(0)
    arrlen dw 0
    arrpointer dw 0
    is_neg dw 0
    strlen dw 0
    string_neg db '-$'
    string_space db ' $'
    trans_flag dw 0
    temp db 0
    ltemp db 0
    sort_flag dw 0
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
    
    ;lea si, arr
    ;mov dx, [si]
    ;xor dh, dh
    ;mov ah, 02h
    ;add dx, 30h
    ;int 21h
    call traverse
    
    call bubble
    
    enterline
    
    call traverse
    
    jmp stop
    
;������

;asc to num
;������ת�����ݵĴ洢
;arr����洢˳��������˳���෴���������� 2 3 4���洢4 3 2��������õ�������γ�α˳��洢
;��Ҫarr����arr db 100h dup(0)
;��Ҫbuf�ַ�������������ϣ�buf db 100, ?, 100 dup(0)
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
asc2num_cov:mov al,[si]
	cmp al, 20h
	je asc2num_skip_space
	cmp al, '-'
	je asc2num_neg_num
	cmp al,'0'
	jb asc2num_error
	cmp al,'9'
	ja asc2num_error
	
    sub al,30h ;ת��������
    xor ah,ah  ;����
    mul bx     ;�Ӹ�λ��ʼ������Ȩ��
    cmp dx,0   ;dx����λ��������
    jne asc2num_error
    
    add di,ax   ;�ۼӺͣ�di�������յĽ��
    ;jc:�н�λ����ת
    jc asc2num_error    ;����λ���н�λ�ͳ����������ֻ������65535
    
        
    mov ax,bx
    mov bx,10
    mul bx  ; ����Ȩ�أ���λ��1��ÿѭ��һ�γ���10
    mov bx,ax
    
    dec si   
    loop asc2num_cov ; ÿѭ��һ�Σ�����һλ
asc2num_neg_out:
    ;��������
	mov ax,di ; ���������
	cmp is_neg, 1
	jne asc2num_pos2
	neg ax
asc2num_pos2:mov di, arrpointer; ָ�뱣��
	mov [di], al ;�����������
	inc arrpointer ; ָ���ƽ�
	inc arrlen
	mov is_neg, 0
	
	ret
    
;������
asc2num_error:
	;err�Ǳ�����ʾ���ַ�����err���ַ������׵�ַ
	lea dx,err 
    mov ah,9
    mov is_neg, 0
    mov arrlen, 0
    mov arrpointer, 0
    int 21h
    enterline 
    ;�������¿�ʼ
    jmp begin      ;;;;;;;;;;;;;;;;;;;;;;;;;;;������Ҫ���������ַ���;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;�����ǶԿո�ͷ��ŵĶ�ȡ
;�漰�������¼��ɣ�
;1.����λ���жϣ����������磺1- 1-��--1 1�����������
;2.number2�Ĵ洢,�����ո�Ϊ�жϣ������û������ϸ���a b����ʽ���룬�����ж���ո�
asc2num_skip_space:
	;�ո����ַ���ĩβ�ᷢ������
	cmp strlen, cx
	je asc2num_error
	dec si
	dec cl
	;�׸��ַ��ǿո񽫻���ת��error�������׸��ַ��ǿո����������󣬲���ת
	;�ո�ǰ���Ǹ���������ת��error
	mov al, [si]
	cmp al, '-'
	je asc2num_error
	;�ո�ǰ���ǿո�Ҳ�ᷢ������
	mov al, [si]
	cmp al, ' '
	je asc2num_error
	
	;��������
	mov ax,di ; ���������
	cmp is_neg, 1
	jne asc2num_pos1
	neg ax
asc2num_pos1:mov di, arrpointer; ָ�뱣��
	mov [di], al ;�����������
	inc arrpointer ; ָ���ƽ�
	inc arrlen
	mov is_neg, 0
   	;���üĴ���,Ȩ�����
   	xor di, di
   	mov bx, 1
   	xor dx, dx
   	jmp asc2num_cov
	
asc2num_neg_num:
	;���ж��ַ���ĩβ�ǲ��Ǹ��ţ��ǵĻ����������
	cmp strlen, cx
	je asc2num_error
	dec si
	dec cl
	;����������ڣ�Ҳ�Ǵ���
	mov al, [si]
	cmp al, '-'
	je asc2num_error
	mov is_neg, 1
	;�����һ���ַ��Ǹ�������ô����cx��0�ˣ���Ҫ������ת��cov�����ⲿ��
	cmp cx, 0
	je asc2num_neg_out
	;����ڶ��������Ǹ�������ô����ǰһ���ַ������ǿո񣬲�Ȼ�ʹ���
	mov al, [si]
	cmp al, ' '
	jne asc2num_error
	jmp asc2num_cov
asc2num endp

;��������
traverse proc
	xor ax, ax
	xor bx, bx
	xor cx, cx
	xor dx, dx
	xor si, si
	xor di, di
	mov cx, arrlen
	mov si, arrpointer ;pointer��ʱ���������index+1
	dec si;������Ҫ-1
	;������Ҫ�Ż�
	;cmp sort_flag, 0
	;je tloop
	;inc si
traverse_tloop:
	mov al, [si]
	;�����mov ah,[si]
	;����������1 2 3
	;��ʱ��ռ���洢����00-03 02 01 00
	;��ȡax��ʱ��Ҫ�������ֽڣ���01��ʱ���� 01 00Ҳ����0001
	;��02��ʱ��ͻ��02 01Ҳ����0102�ˣ����Ա�������Ҫ��ah����
	;��Ҳ����������洢����λ����˼·���ܼ򵥾���ʵ�֣�ֻ��������arrlen��Щ��Ҫ��һ��
	;����si��Ҫ������
	xor ah, ah
	cmp al, 0h
	jge traverse_tln
	putstr string_neg
	neg al
	;���ﲻ�ٴ����㣬���ᵼ�¸����������,��Ϊǰ��putstrû�ж�ah�������㣬�����ĳ�������Ż�
	xor ah,ah
traverse_tln:
	push cx;��ʱ��¼ѭ����������Ϊnum2asc��Ҫ�õ�cx
	call num2asc
	pop cx
	dec si
	loop traverse_tloop
	ret
traverse endp

;num to asc
;��Ҫax��ǰ�洢�ô�ת���������ٵ��ô˺������˺���ת����ֱ���������+�ո�
;��Ҫ����trans_flag
num2asc proc
	xor cx, cx
	xor bx, bx
	xor dx, dx
	mov bx,10000 ; Ҫ���Ե�Ȩ�أ����Դ�����λ��
    
n2a_cov_back:
	xor dx,dx ;����
	div bx  ; ax�Ǳ�������bx�ǳ�����ax���̣�dx������
	mov cx,dx ;�����ȴ����cx
	
	cmp trans_flag,0
	jne n2a_nor1
	cmp ax,0 ;������
	je n2a_cont
	
n2a_nor1:
	mov dl,al
	add dl,30h ;ת����ASCII�����
	mov ah,2   ;���
	int 21h
	
	mov trans_flag,1;���������Ϊ1��������0ҲҪ���
	
n2a_cont:
	cmp bx,10  ; ����Ѿ������ʮλ����ֱ�����
	je n2a_outer
	
	xor dx,dx ;����
	mov ax,bx ;�ݼ�Ȩ��
	mov bx,10
    div bx
    mov bx,ax 
        
    mov ax,cx;�������͵��������У�������
    jmp n2a_cov_back 
   
n2a_outer:
	mov dl,cl;��λ���
	add dl,30h
	mov ah,2
	int 21h   
	putstr string_space
	mov trans_flag, 0
	xor di, di
    ret
num2asc endp

bubble proc
	xor di, di
	xor si, si
	xor cx, cx
	xor bx, bx
	xor ax, ax
	

	;���ѭ������
	;mov cx, arrlen-1����д�������arrlen=4����ô���ݶδ�ʱ�洢00 04 00
	;��ôд��ʹ��cx����0400��
	mov cx, arrlen
	;loop����cx-1���ж�cx�Ƿ���0������ѭ�����Σ�cx�漸
;���ѭ��
oloop:
	mov ltemp, cl
	;�洢���ѭ������
	push cx
	;�������ָ��
	lea si, arr
	;��ȡ�ڲ�ѭ������
	;dec ltemp
	mov cl, ltemp
	;�ڲ�����ָ��
	mov di, si
	inc di
	
	
;�ڲ�ѭ��
iloop:
	;����loop���Լ����ж�
	;����cx=1��ʱ��ʵ����ѭ�����Ѿ���ֹͣ��
	cmp cl ,1
	je inner
	;�ȴ�С���������鵹���룬����Ҫ���С����������ҪС��������
	mov al, [si]
	xor ah, ah
	mov bl, [di]
	xor bh, bh
	cmp al, bl
	jle continue
	;����
	mov temp, al
	mov al, bl
	mov bl, temp
	mov [si], al
	mov [di], bl
continue:
	inc di;�ڲ�ѭ��ָ���ƽ�
	inc si
inner: loop iloop
	;�����ڲ����
	;���黹ѭ������
	pop cx
	loop oloop
	;����������
	ret
bubble endp

stop: 
    MOV AH,4CH
    INT 21H
CODES ENDS
    END begin



















