;
; Factorial example
; returns number! in r10
;
	
	.data
number: .word 10
title:  .asciiz "factorial program n= "

CONTROL: .word32 0x10000
DATA:    .word32 0x10008

        .text

        lwu r21,CONTROL(r0)
        lwu r22,DATA(r0)
        daddi r24,r0,4      ; ascii output
        daddi r1,r0,title   
        sd r1,(r22)
        sd r24,(r21)

        daddi r24,r0,8     ; read input
        sd r24,(r21)
        ld r1,(r22)

start:  daddi r29,r0,0x80   ; position a stack in data memory, use r29 as stack pointer
        jal factorial
        daddi r24,r0,1      ; integer output
        sd r10,(r22)
        sd r24,(r21)
        halt

;
; parameter passed in r1, return value in r10
;

factorial:  slti r10,r1,2
        bnez r10,out      ; set r10=1 and return if r1=1

        sd r31,(r29)
        daddi r29,r29,8   ; push return address onto stack

        sd r1,(r29)
        daddi r29,r29,8   ; push r1 on stack

        daddi r1,r1,-1    ; r1 = r1-1
        jal factorial     ; recurse...

        dadd r4,r0,r10
        daddi r29,r29,-8
        ld r3,(r29)       ; pop n off the stack

        dmulu r3,r3,r4    ; multiply r1 x factorial(r1-1)
        dadd r10,r0,r3    ; move product r3 to r10

        daddi r29,r29,-8  ; pop return address
        ld r31,0(r29)
out:    jr r31
	