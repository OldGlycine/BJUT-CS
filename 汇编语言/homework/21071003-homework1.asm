;������������ƽ����
;Ŀǰ������Ż��ĵط�
;1.ƽ�������32768�����(1000_0000)
;2.�������ֵĸ�ʽ��Ҫ�ϸ���a b���������ж���ո�

;����س��ͻ��еĺ�ָ��
enterline macro
	mov dl,13
	mov ah,2
	int 21h
	mov dl,10
	mov ah,2
	int 21h
endm

;��������ַ�����ָ��
putstr macro string
	lea dx, string
	mov ah, 09h
	int 21h
endm

;����ʾ����(�����갴�س������뱣��)
getchar macro
	;���������al�� 
	mov ah, 01h
	int 21h
endm

DATAS SEGMENT
    ;�˴��������ݶδ���
    ;������ڶ��������ڶ�����Ĭ��Ϊ0
    string1 db 'Calculate the square variance of two numbers$'
    war1 db 'Example:12 11$'
    war2 db 'Tips1:No space in the front of the string or in the end of the string!$'
    war3 db 'Tips2:Only one space between 2 nums!$'
    war4 db 'Tips3:Number2 = 0 if not given$'
    war5 db 'Tips4:The result must < 2^15(32768),or the result will be a wrong number!$'
    string2 db 'Please input 2 numbers:$'
    
    err db 'Illegal input! Please enter again$'  
    res db 'Here is the result:$'
    string_neg db '-$'
    buf db 20,?,20 dup(0)
    number1 dw 0
    number2 dw 0
    is_neg dw 0
    num_flag dw 0
    have_space dw 0
    sqnumber1 dw 0
    sqnumber2 dw 0
    trans_flag db 0
    strlen db 0
    temp dw 0
DATAS ENDS

STACKS SEGMENT
    db 128 dup(0)
STACKS ENDS

CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS
begin:
	MOV AX,STACKS
	MOV SS,AX
    MOV AX,DATAS
    MOV DS,AX
    ;�˴��������δ���
    
    ;������ʾ���
    ;putstr string1
    ;enterline
    ;putstr war1
    ;enterline
    ;putstr war2
    ;enterline
    ;putstr war3
    ;enterline
    putstr string2
	
	;�����ַ���
	lea dx,buf  ;���뻺�����׵�ַ
    ;10��ָ�ʼ�����ַ���
    mov ah,10
    ;���
    int 21h
    ;����
    enterline
	
	;buf+1�洢���ǽ��յ��ַ���һ���ж��ٸ��ַ�
    mov cl,buf+1 ;��ʵ�ʽ����ַ�������cl
    mov strlen, cl
    xor ch,ch   ;�������,�����
    xor di,di   
    xor dx,dx
    mov bx,1  ; ����Ȩ�أ���ֵ��1  
    lea si,buf+2 ;���ַ����ַ��ĵ�ַ����si
    ;buf+2���ַ����ĸ���-1�����ַ�����ĩβ
    add si,cx    ; �������ַ�����ĩβ���Ӹ�λ��ʼ����
    ;dec�� -1 �Ĺ���
    ;��Ϊbuf+2+�ַ����ĸ�������ʱָ��ָ���ַ������һ���ַ��ĺ���һ���ռ�
    ;-1�൱�ڵ�ַ������һ���ַ�����ʱ�����ַ������һ���ַ��ĵ�ַ
    dec si       ;

; �Ӻ���ǰѭ����������ַ���ת��������    
; al�����ַ������ַ�
cov:mov al,[si]
	;����ǿո������
	cmp al, 20h
	;�������ת
	je skip_space
	;����Ǹ���
	cmp al, '-'
	je neg_num
	;�������������ַ��Ƿ������ֵģ����ǵĻ�ֱ�ӽ�error
	;�ж�al >/</= '0'
	cmp al,'0'
	;jb:��������ת
	jb error
	cmp al,'9'
	;ja:���ڵ���ת
	ja error  ;�Ƿ�����
	
	;ת�����ּ�ȥ30h����(ʮ������48)
    sub al,30h ;ת��������
    xor ah,ah  ;����
    mul bx     ;�Ӹ�λ��ʼ������Ȩ��
    cmp dx,0   ;dx����λ��������
    ;jne:��������ת
    jne error
    
    add di,ax   ;�ۼӺͣ�di�������յĽ��
    ;jc:�н�λ����ת
    jc error    ;����λ���н�λ�ͳ����������ֻ������65535
    
        
    mov ax,bx
    mov bx,10
    mul bx  ; ����Ȩ�أ���λ��1��ÿѭ��һ�γ���10
    mov bx,ax
    
    ; ��ǰ��һ���ַ�
    dec si   
    ;cx����loop�Լ�����cxΪ0��loop��ִ��
    loop cov ; ÿѭ��һ�Σ�����һλ   
    
    
neg_out:
   	mov ax,di ; ���������
   	MOV number1,AX ;
  
    ; �����￪ʼ�������ݼ������
	mov ax, number1
    mov bx, number1
    mul bx
    mov sqnumber1, ax
    mov ax, number2
    mov bx, number2
    mul bx
    mov sqnumber2, ax
    
    mov ax, sqnumber1
    sub ax, sqnumber2
    
    
    ;��0�Ƚϣ�С��0����ת
    cmp ax, 0h
    jge trans_num
	neg ax
    mov temp, ax
    putstr string_neg
    mov ax, temp

;��ʼת������
trans_num:
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
	enterline

    jmp stop

;������
error:
	;err�Ǳ�����ʾ���ַ�����err���ַ������׵�ַ
	lea dx,err 
    mov ah,9
    int 21h
    mov is_neg, 0
    enterline 
    mov number1, 0
    mov number2, 0
    mov sqnumber1, 0
    mov sqnumber2, 0
    mov num_flag, 0
    mov strlen, 0
    ;�������¿�ʼ
    jmp begin   
	
	;getchar
	
	;�洢al
	;xor ah, ah
	;mov di, ax
	
	;enterline
	
	;���֮ǰ�洢��al
	;mov ax, di
	;mov dl, al
	;mov ah, 2
	;int 21h

;�����ǶԿո�ͷ��ŵĶ�ȡ
;�漰�������¼��ɣ�
;1.����λ���жϣ����������磺1- 1-��--1 1�����������
;2.number2�Ĵ洢,�����ո�Ϊ�жϣ������û������ϸ���a b����ʽ���룬�����ж���ո�
skip_space:
	;�ո����ַ���ĩβ�ᷢ������
	cmp strlen, cl
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
	;���յ��ĵ�һ�����֣�������洢��number2
	cmp num_flag, 0
	jne spj
	mov ax,di ; ���������
   	MOV number2,AX ;
   	mov num_flag, 1
   	;���üĴ���,Ȩ�����
   	xor di, di
   	mov bx, 1
   	xor dx, dx
spj:jmp cov
	
neg_num:
	;���ж��ַ���ĩβ�ǲ��Ǹ��ţ��ǵĻ����������
	cmp strlen, cl
	je error
	dec si
	dec cl
	;����������ڣ�Ҳ�Ǵ���
	mov al, [si]
	cmp al, '-'
	je error
	;�����һ���ַ��Ǹ�������ô����cx��0�ˣ���Ҫ������ת��cov�����ⲿ��
	cmp cx, 0
	je neg_out
	;����ڶ��������Ǹ�������ô����ǰһ���ַ������ǿո񣬲�Ȼ�ʹ���
	mov al, [si]
	cmp al, ' '
	jne error
	;????���������һ�����ųɹ���ȡ����num2���Խ��и�ֵ������
	;cmp num_flag, 0
	;je givenum2
	;�ڶ������ųɹ���ȡ����num1��ֵ
	;jmp neg_out
	jmp cov
    
stop:    
    MOV AH,4CH
    INT 21H
CODES ENDS
    END begin


































