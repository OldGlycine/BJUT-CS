;经验：每个函数开头对寄存器清零，如果有不能清零的，进入函数之前先保存寄存器内容
;宏定义记得对寄存器进行清零，比如下面的enterline
;数组用db定义，那么al存入数组而不是ax

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
    ;此处输入代码段代码
    
    ;数据输入操作
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
    
;函数区

;asc to num
;内置了转换数据的存储
;arr数组存储顺序与输入顺序相反，比如输入 2 3 4，存储4 3 2，这可以用倒输出，形成伪顺序存储
;需要arr数组arr db 100h dup(0)
;需要buf字符串（已输入完毕）buf db 100, ?, 100 dup(0)
asc2num proc
asc2num_begin:;buf+1存储的是接收的字符串一共有多少个字符
	xor di, di
	lea di, arr
	mov arrpointer, di;保存数组[0]的地址
    mov cl,buf+1 ;将实际接收字符数送入cl
    xor ch,ch   ;清零语句,用异或
    xor di,di   
    xor dx,dx
    mov strlen, cx
    mov bx,1  ; 放置权重，初值是1  
    lea si,buf+2 ;将字符首字符的地址送入si
    add si,cx    ; 调整到字符串到末尾，从个位开始处理
    dec si

; 从后向前循环检查输入字符并转换成数字    
; al存入字符串的字符
asc2num_cov:mov al,[si]
	cmp al, 20h
	je asc2num_skip_space
	cmp al, '-'
	je asc2num_neg_num
	cmp al,'0'
	jb asc2num_error
	cmp al,'9'
	ja asc2num_error
	
    sub al,30h ;转换成数字
    xor ah,ah  ;清零
    mul bx     ;从个位开始，乘以权重
    cmp dx,0   ;dx符号位，溢出检测
    jne asc2num_error
    
    add di,ax   ;累加和，di就是最终的结果
    ;jc:有进位则跳转
    jc asc2num_error    ;检测进位，有进位就出错，所以最大只能输入65535
    
        
    mov ax,bx
    mov bx,10
    mul bx  ; 调整权重，各位是1，每循环一次乘以10
    mov bx,ax
    
    dec si   
    loop asc2num_cov ; 每循环一次，处理一位
asc2num_neg_out:
    ;保存数据
	mov ax,di ; 将结果保存
	cmp is_neg, 1
	jne asc2num_pos2
	neg ax
asc2num_pos2:mov di, arrpointer; 指针保存
	mov [di], al ;结果存入数组
	inc arrpointer ; 指针推进
	inc arrlen
	mov is_neg, 0
	
	ret
    
;报错函数
asc2num_error:
	;err是报错提示的字符串，err是字符串的首地址
	lea dx,err 
    mov ah,9
    mov is_neg, 0
    mov arrlen, 0
    mov arrpointer, 0
    int 21h
    enterline 
    ;程序重新开始
    jmp begin      ;;;;;;;;;;;;;;;;;;;;;;;;;;;这里需要重新输入字符串;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;下面是对空格和符号的读取
;涉及到了如下技巧：
;1.负号位置判断，避免了形如：1- 1-，--1 1这种情况出现
;2.number2的存储,依靠空格为判断，所以用户必须严格按照a b的形式输入，不可有多余空格
asc2num_skip_space:
	;空格在字符串末尾会发生错误
	cmp strlen, cx
	je asc2num_error
	dec si
	dec cl
	;首个字符是空格将会跳转到error，但是首个字符是空格是输入有误，不跳转
	;空格前面是负号有误，跳转到error
	mov al, [si]
	cmp al, '-'
	je asc2num_error
	;空格前面是空格也会发生错误
	mov al, [si]
	cmp al, ' '
	je asc2num_error
	
	;保存数据
	mov ax,di ; 将结果保存
	cmp is_neg, 1
	jne asc2num_pos1
	neg ax
asc2num_pos1:mov di, arrpointer; 指针保存
	mov [di], al ;结果存入数组
	inc arrpointer ; 指针推进
	inc arrlen
	mov is_neg, 0
   	;重置寄存器,权重清除
   	xor di, di
   	mov bx, 1
   	xor dx, dx
   	jmp asc2num_cov
	
asc2num_neg_num:
	;先判断字符串末尾是不是负号，是的话，输入错误
	cmp strlen, cx
	je asc2num_error
	dec si
	dec cl
	;如果负号相邻，也是错误
	mov al, [si]
	cmp al, '-'
	je asc2num_error
	mov is_neg, 1
	;如果第一个字符是负数，那么这里cx是0了，需要单独跳转到cov的特殊部分
	cmp cx, 0
	je asc2num_neg_out
	;如果第二个数字是负数，那么负号前一个字符必须是空格，不然就错误
	mov al, [si]
	cmp al, ' '
	jne asc2num_error
	jmp asc2num_cov
asc2num endp

;遍历数组
traverse proc
	xor ax, ax
	xor bx, bx
	xor cx, cx
	xor dx, dx
	xor si, si
	xor di, di
	mov cx, arrlen
	mov si, arrpointer ;pointer此时是数组最大index+1
	dec si;所以需要-1
	;这里需要优化
	;cmp sort_flag, 0
	;je tloop
	;inc si
traverse_tloop:
	mov al, [si]
	;如果是mov ah,[si]
	;比如输入了1 2 3
	;这时候空间里存储的是00-03 02 01 00
	;读取ax的时候，要读两个字节，读01的时候会读 01 00也就是0001
	;读02的时候就会读02 01也就是0102了，所以本程序需要对ah消除
	;这也是扩大数组存储数据位数的思路，很简单就能实现，只不过数组arrlen这些需要改一下
	;而且si需要两跳了
	xor ah, ah
	cmp al, 0h
	jge traverse_tln
	putstr string_neg
	neg al
	;这里不再次清零，还会导致负数输出错误,因为前面putstr没有对ah进行清零，后续的程序可以优化
	xor ah,ah
traverse_tln:
	push cx;暂时记录循环次数，因为num2asc需要用到cx
	call num2asc
	pop cx
	dec si
	loop traverse_tloop
	ret
traverse endp

;num to asc
;需要ax提前存储好待转换的数，再调用此函数，此函数转换后直接输出数字+空格
;需要创建trans_flag
num2asc proc
	xor cx, cx
	xor bx, bx
	xor dx, dx
	mov bx,10000 ; 要除以的权重，可以处理万位，
    
n2a_cov_back:
	xor dx,dx ;清零
	div bx  ; ax是被除数，bx是除数，ax是商，dx是余数
	mov cx,dx ;余数先存放在cx
	
	cmp trans_flag,0
	jne n2a_nor1
	cmp ax,0 ;商是零
	je n2a_cont
	
n2a_nor1:
	mov dl,al
	add dl,30h ;转换成ASCII码输出
	mov ah,2   ;输出
	int 21h
	
	mov trans_flag,1;有输出就置为1，后续的0也要输出
	
n2a_cont:
	cmp bx,10  ; 如果已经处理过十位，就直接输出
	je n2a_outer
	
	xor dx,dx ;清零
	mov ax,bx ;递减权重
	mov bx,10
    div bx
    mov bx,ax 
        
    mov ax,cx;将余数送到被除数中，继续除
    jmp n2a_cov_back 
   
n2a_outer:
	mov dl,cl;个位输出
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
	

	;外层循环次数
	;mov cx, arrlen-1错误写法！如果arrlen=4，那么数据段此时存储00 04 00
	;这么写会使得cx存入0400！
	mov cx, arrlen
	;loop是先cx-1再判断cx是否是0，所以循环几次，cx存几
;外层循环
oloop:
	mov ltemp, cl
	;存储外层循环次数
	push cx
	;外层数组指针
	lea si, arr
	;获取内层循环次数
	;dec ltemp
	mov cl, ltemp
	;内层数组指针
	mov di, si
	inc di
	
	
;内层循环
iloop:
	;由于loop先自减再判断
	;所以cx=1的时候，实际上循环就已经该停止了
	cmp cl ,1
	je inner
	;比大小，由于数组倒插入，所以要求大到小排序，这里需要小到大排序
	mov al, [si]
	xor ah, ah
	mov bl, [di]
	xor bh, bh
	cmp al, bl
	jle continue
	;交换
	mov temp, al
	mov al, bl
	mov bl, temp
	mov [si], al
	mov [di], bl
continue:
	inc di;内层循环指针推进
	inc si
inner: loop iloop
	;这里内层结束
	;外层归还循环次数
	pop cx
	loop oloop
	;这里外层结束
	ret
bubble endp

stop: 
    MOV AH,4CH
    INT 21H
CODES ENDS
    END begin



















