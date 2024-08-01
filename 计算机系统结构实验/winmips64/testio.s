;
; Example IO program
;
	
      .data
int:	.word 0xF9876543987625aa	; a 64-bit integer
mes:    .asciiz "Hello World\n"		; the message
key:	.asciiz "Press any key to exit\n"

dub:    .double 32.786			; a double	
x:      .byte 0				; coordinates of a point
y:      .byte 0
col:	.byte 255,0,255,0		; the colour magenta

;
; Memory Mapped I/O area
;
; Address of CONTROL and DATA registers
;
; Set CONTROL = 1, Set DATA to Unsigned Integer to be output
; Set CONTROL = 2, Set DATA to Signed Integer to be output
; Set CONTROL = 3, Set DATA to Floating Point to be output
; Set CONTROL = 4, Set DATA to address of string to be output
; Set CONTROL = 5, Set DATA+5 to x coordinate, DATA+4 to y coordinate, and DATA to RGB colour to be output
; Set CONTROL = 6, Clears the terminal screen
; Set CONTROL = 7, Clears the graphics screen
; Set CONTROL = 8, read the DATA (either an integer or a floating-point) from the keyboard
; Set CONTROL = 9, read one byte from DATA, no character echo.
;

CONTROL: .word32 0x10000
DATA:    .word32 0x10008
		
        .text

	lwu $t8,DATA($zero)	; $t8 = address of DATA register
	lwu $t9,CONTROL($zero)	; $t9 = address of CONTROL register

	daddi $v0,$zero,1	; set for unsigned integer output
	ld $t1,int($zero)
	sd $t1,0($t8)           ; write integer to DATA register
	sd $v0,0($t9)           ; write to CONTROL register and make it happen

	daddi $v0,$zero,2	; set for signed integer output
	ld $t1,int($zero)
	sd $t1,0($t8)           ; write integer to DATA register
	sd $v0,0($t9)           ; write to CONTROL register and make it happen

	daddi $v0,$zero,3	; set for double output
	l.d f1,dub($zero)
	s.d f1,0($t8)		; write double to DATA register
	sd $v0,0($t9)		; write to CONTROL register and make it happen

	daddi $v0,$zero,4       ; set for ascii output
	daddi $t1,$zero,mes
	sd $t1,0($t8)           ; write address of message to DATA register
	sd $v0,0($t9)           ; make it happen

	daddi $v0,$zero,5       ; set for graphics output
	lbu $t2,x($zero)
	sb $t2,5($t8)		; store x in DATA+5
	lbu $t3,y($zero)	
	sb $t3,4($t8)		; store y in DATA+4
	lwu $t1,col($zero)
	sw $t1,0($t8)	        ; store colour in DATA
	sd $v0,0($t9)		; draw it

;
; Now draw a line!
;
	daddi $t4,$zero,49

again:	daddi $t2,$t2,1		; increment x
	sb $t2,5($t8)		; store x in DATA+5

	daddi $t3,$t3,1		; increment y
	sb $t3,4($t8)		; store y in DATA+4

	sd $v0,0($t9)		; draw it	

	daddi $t4,$t4,-1
	bnez $t4,again

;
; Finish off
;

	daddi $v0,$zero,4       ; set for ascii output
	daddi $t1,$zero,key
	sd $t1,0($t8)           ; write address of message to DATA register
	sd $v0,0($t9)           ; "Press any key to exit"

	daddi $v0,$zero,9	;
	sd $v0,0($t9)		; Wait for a key press...
	ld $t1,0($t8)		;

	daddi $v0,$zero,6       ; 
	sd $v0,0($t9)		; clear the terminal screen
	daddi $v0,$zero,7       ; 
	sd $v0,0($t9)		; clear the graphics screen

        halt
   
