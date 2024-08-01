;计算两个数的平方差
;目前程序可优化的地方
;1.平方差大于32768会出错(1000_0000)
;2.输入数字的格式需要严格按照a b，不可以有多余空格

;定义回车和换行的宏指令
enterline macro
	mov dl,13
	mov ah,2
	int 21h
	mov dl,10
	mov ah,2
	int 21h
endm

;定义输出字符串的指令
putstr macro string
	lea dx, string
	mov ah, 09h
	int 21h
endm

;带显示输入(输入完按回车，输入保留)
getchar macro
	;结果保存在al中 
	mov ah, 01h
	int 21h
endm

DATAS SEGMENT
    ;此处输入数据段代码
    ;不输入第二个数，第二个数默认为0
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
    ;此处输入代码段代码
    
    ;输入提示语句
    ;putstr string1
    ;enterline
    ;putstr war1
    ;enterline
    ;putstr war2
    ;enterline
    ;putstr war3
    ;enterline
    putstr string2
	
	;输入字符串
	lea dx,buf  ;输入缓冲区首地址
    ;10号指令开始输入字符串
    mov ah,10
    ;输出
    int 21h
    ;换行
    enterline
	
	;buf+1存储的是接收的字符串一共有多少个字符
    mov cl,buf+1 ;将实际接收字符数送入cl
    mov strlen, cl
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
	;如果是空格就跳过
	cmp al, 20h
	;相等则跳转
	je skip_space
	;如果是负号
	cmp al, '-'
	je neg_num
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
    
    
neg_out:
   	mov ax,di ; 将结果保存
   	MOV number1,AX ;
  
    ; 从这里开始进行数据计算操作
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
    
    
    ;与0比较，小于0不跳转
    cmp ax, 0h
    jge trans_num
	neg ax
    mov temp, ax
    putstr string_neg
    mov ax, temp

;开始转换操作
trans_num:
	mov bx,10000 ; 要除以的权重，可以处理万位，
    
cov_back:
	xor dx,dx ;清零
	div bx  ; ax是被除数，bx是除数，ax是商，dx是余数
	mov cx,dx ;余数先存放在cx
	
	cmp trans_flag,0
	jne nor1
	cmp ax,0 ;商是零
	je cont
	
nor1:
	mov dl,al
	add dl,30h ;转换成ASCII码输出
	mov ah,2   ;输出
	int 21h
	
	mov trans_flag,1;有输出就置为1，后续的0也要输出
	
cont:
	cmp bx,10  ; 如果已经处理过十位，就直接输出
	je outer
	
	xor dx,dx ;清零
	mov ax,bx ;递减权重
	mov bx,10
    div bx
    mov bx,ax 
        
    mov ax,cx;将余数送到被除数中，继续除
    jmp cov_back 
   
outer:
	mov dl,cl;个位输出
	add dl,30h
	mov ah,2
	int 21h   
	enterline

    jmp stop

;报错函数
error:
	;err是报错提示的字符串，err是字符串的首地址
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
    ;程序重新开始
    jmp begin   
	
	;getchar
	
	;存储al
	;xor ah, ah
	;mov di, ax
	
	;enterline
	
	;输出之前存储的al
	;mov ax, di
	;mov dl, al
	;mov ah, 2
	;int 21h

;下面是对空格和符号的读取
;涉及到了如下技巧：
;1.负号位置判断，避免了形如：1- 1-，--1 1这种情况出现
;2.number2的存储,依靠空格为判断，所以用户必须严格按照a b的形式输入，不可有多余空格
skip_space:
	;空格在字符串末尾会发生错误
	cmp strlen, cl
	je error
	dec si
	dec cl
	;首个字符是空格将会跳转到error，但是首个字符是空格是输入有误，不跳转
	;空格前面是负号有误，跳转到error
	mov al, [si]
	cmp al, '-'
	je error
	;空格前面是空格也会发生错误
	mov al, [si]
	cmp al, ' '
	je error
	;接收到的第一个数字，在这里存储到number2
	cmp num_flag, 0
	jne spj
	mov ax,di ; 将结果保存
   	MOV number2,AX ;
   	mov num_flag, 1
   	;重置寄存器,权重清除
   	xor di, di
   	mov bx, 1
   	xor dx, dx
spj:jmp cov
	
neg_num:
	;先判断字符串末尾是不是负号，是的话，输入错误
	cmp strlen, cl
	je error
	dec si
	dec cl
	;如果负号相邻，也是错误
	mov al, [si]
	cmp al, '-'
	je error
	;如果第一个字符是负数，那么这里cx是0了，需要单独跳转到cov的特殊部分
	cmp cx, 0
	je neg_out
	;如果第二个数字是负数，那么负号前一个字符必须是空格，不然就错误
	mov al, [si]
	cmp al, ' '
	jne error
	;????到了这里第一个负号成功读取，对num2可以进行赋值操作了
	;cmp num_flag, 0
	;je givenum2
	;第二个符号成功读取，对num1赋值
	;jmp neg_out
	jmp cov
    
stop:    
    MOV AH,4CH
    INT 21H
CODES ENDS
    END begin


































