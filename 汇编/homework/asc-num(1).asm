;键盘键入的ASCII码转二进制

;定义回车和换行的宏指令，也就是宏定义enterline为换行指令
enterline macro
	mov dl,13  ;回车
	mov ah,2
	int 21h
	mov dl,10  ;换行
	mov ah,2
	int 21h
endm

DATAS SEGMENT
    ;此处输入数据段代码 
    ;定义input字符串
    ;字符串只能用db
    input db 'Please Input Number(<=65535):$'
    output db 'Convertion Success!$' 
    err db 'Illegal input! Please Try Again$'
    ;buf是定义缓冲区的指令，这里第一个10代表了要调用ah的10号指令（接收字符串）
    ;ah的10号指令就要求首先要定义缓冲区
    ;问号代表了存一个不确定的东西（预留空间）
    ;第二个10代表了缓冲区的大小为10字节，dup(0)，代表了复制0到缓冲区，用0占满10字节的空间
    buf db 10,?,10 dup(0)
    FNN DW 0
DATAS ENDS

STACKS SEGMENT
    ;此处输入堆栈段代码
    ;写就完了，不写也行
    db 128 dup(0)
STACKS ENDS

HAPPYHAPPY SEGMENT
    ASSUME CS:HAPPYHAPPY,DS:DATAS,SS:STACKS
START:
    MOV AX,DATAS
    MOV DS,AX
    ;此处输入代码段代码
    
begin:
	;input中的内容存到dx寄存器里面
    lea dx,input ;输出提示行 mov dx, offset input
    ;9号指令字符串输出功能
    mov ah,9
    ;字符串输出
    int 21h
    
    lea dx,buf  ;输入缓冲区首地址
    ;10号指令开始输入字符串
    mov ah,10
    ;输出
    int 21h
    ;换行
    enterline
    
    ;buf+1存储的是接收的字符串一共有多少个字符
    mov cl,buf+1 ;将实际接收字符数送入cl
    xor ch,ch   ;清零语句,用异或
    xor di,di   
    xor dx,dx
    mov bx,1  ; 放置权重，初值是1  
    lea si,buf+2 ;将字符首字符的地址送入si
    ;buf+2加字符串的个数-1就是字符串的末尾
    add si,cx    ; 调整到字符串到末尾，从个位开始处理
    ;dec起到 -1 的功能
    ;因为buf+2+字符串的个数，此时指针指向字符串最后一个字符的后面一个空间
    ;-1相当于地址往回了一个字符，此时就是字符串最后一个字符的地址
    dec si       ;

; 从后向前循环检查输入字符并转换成数字    
; al存入字符串的字符
cov:mov al,[si]
	;这里是用来看字符是否是数字的，不是的话直接进error
	;判断al >/</= '0'
	cmp al,'0'
	;jb:少于则跳转
	jb error
	cmp al,'9'
	;ja:多于的跳转
	ja error  ;是否数字
	
	;转换数字减去30h即可(十进制是48)
    sub al,30h ;转换成数字
    xor ah,ah  ;清零
    mul bx     ;从个位开始，乘以权重
    cmp dx,0   ;dx符号位，溢出检测
    ;jne:不等则跳转
    jne error
    
    add di,ax   ;累加和，di就是最终的结果
    ;jc:有进位则跳转
    jc error    ;检测进位，有进位就出错，所以最大只能输入65535
    
        
    mov ax,bx
    mov bx,10
    mul bx  ; 调整权重，各位是1，每循环一次乘以10
    mov bx,ax
    
    ; 往前倒一个字符
    dec si   
    ;cx随着loop自减，当cx为0，loop不执行
    loop cov ; 每循环一次，处理一位   
   
   	mov ax,di ; 将结果保存
   	
   	MOV FNN,AX ;
   	
   	
    lea dx,output ;输出提示首地址
    mov ah,9
    int 21h
	
	
    jmp stop

;报错函数
error:
	;err是报错提示的字符串，err是字符串的首地址
	lea dx,err 
    mov ah,9
    int 21h
    enterline 
    ;程序重新开始
    jmp begin   

;记得加一个stop标签       
stop:
    MOV AH,4CH
    INT 21H
HAPPYHAPPY ENDS
    END START



















