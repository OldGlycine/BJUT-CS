;
; Hailstone numbers iteration
; If number is odd, multiply by 3 and add 1
; If number is even, divide it by 2
; repeat this iteration until number is 1 
; What is the maximum value during this process?
;
        .data
max:    .word 0         ; max number so far

title:  .asciiz "Hailstone Numbers\n"
prompt:	.asciiz "Number= "
str:    .asciiz "Maximum= "

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
        lwu r8,DATA(r0)    ; get data
        lwu r9,CONTROL(r0) ; and control registers 	

        daddi r11,r0,4     ; set for string output  

        daddi r1,r0,title  ; get title address
        sd r1,(r8)         ; print title
        sd r11,(r9)
 
        daddi r1,r0,prompt ; get prompt address
        sd r1,0(r8)        ; print prompt
        sd r11,0(r9)     

        daddi r1,$zero,8   ; set for input
        sd r1,0(r9)	   ; get the hailstone start number 
        ld r1,0(r8)
        sd r1,max(r0)    ; first maximum
        daddi r12,r0,1   ; set for integer output

loop:   andi r3,r1,1     ; test odd or even
        beqz r3,even
odd:    daddu r2,r1,r1    ; times 2
        dadd r1,r2,r1    ; times 3
        daddi r1,r1,1    ; plus 1
        j over
even:   dsrl r1,r1,1     ; divide by 2
over:   sd r1,(r8)
        sd r12,(r9)      ; display it
        ld r4,max(r0)     
        slt r3,r4,r1     ; compare with max
        beqz r3,skip
        sd r1,max(r0)    ; new maximum?
skip:   slti r3,r1,2     ; test for finished
        beqz r3,loop

        ld r2,max(r0)    ; get max
        daddi r1,r0,str  ; get address of "Maximum= " string
        sd r1,(r8)       ; display "Maximum"
        sd r11,(r9)
        sd r2,(r8)       ; output maximum
        sd r12,(r9)
        halt
        


