;���̼����ASCII��ת������

;����س��ͻ��еĺ�ָ�Ҳ���Ǻ궨��enterlineΪ����ָ��
enterline macro
	mov dl,13  ;�س�
	mov ah,2
	int 21h
	mov dl,10  ;����
	mov ah,2
	int 21h
endm

DATAS SEGMENT
    ;�˴��������ݶδ��� 
    ;����input�ַ���
    ;�ַ���ֻ����db
    input db 'Please Input Number(<=65535):$'
    output db 'Convertion Success!$' 
    err db 'Illegal input! Please Try Again$'
    ;buf�Ƕ��建������ָ������һ��10������Ҫ����ah��10��ָ������ַ�����
    ;ah��10��ָ���Ҫ������Ҫ���建����
    ;�ʺŴ����˴�һ����ȷ���Ķ�����Ԥ���ռ䣩
    ;�ڶ���10�����˻������Ĵ�СΪ10�ֽڣ�dup(0)�������˸���0������������0ռ��10�ֽڵĿռ�
    buf db 10,?,10 dup(0)
    FNN DW 0
DATAS ENDS

STACKS SEGMENT
    ;�˴������ջ�δ���
    ;д�����ˣ���дҲ��
    db 128 dup(0)
STACKS ENDS

HAPPYHAPPY SEGMENT
    ASSUME CS:HAPPYHAPPY,DS:DATAS,SS:STACKS
START:
    MOV AX,DATAS
    MOV DS,AX
    ;�˴��������δ���
    
begin:
	;input�е����ݴ浽dx�Ĵ�������
    lea dx,input ;�����ʾ�� mov dx, offset input
    ;9��ָ���ַ����������
    mov ah,9
    ;�ַ������
    int 21h
    
    lea dx,buf  ;���뻺�����׵�ַ
    ;10��ָ�ʼ�����ַ���
    mov ah,10
    ;���
    int 21h
    ;����
    enterline
    
    ;buf+1�洢���ǽ��յ��ַ���һ���ж��ٸ��ַ�
    mov cl,buf+1 ;��ʵ�ʽ����ַ�������cl
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
   
   	mov ax,di ; ���������
   	
   	MOV FNN,AX ;
   	
   	
    lea dx,output ;�����ʾ�׵�ַ
    mov ah,9
    int 21h
	
	
    jmp stop

;������
error:
	;err�Ǳ�����ʾ���ַ�����err���ַ������׵�ַ
	lea dx,err 
    mov ah,9
    int 21h
    enterline 
    ;�������¿�ʼ
    jmp begin   

;�ǵü�һ��stop��ǩ       
stop:
    MOV AH,4CH
    INT 21H
HAPPYHAPPY ENDS
    END START



















