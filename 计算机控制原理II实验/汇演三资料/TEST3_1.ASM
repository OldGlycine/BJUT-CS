IN equ 08001h			;¼üÅÌ¶ÁÈë¿Ú
OUTBIT equ 08002h	;Î»¿ØÖÆ¿Ú
OUTSEG equ 08004h	;¶Î¿ØÖÆ¿Ú
cs0832 equ 9000h
ledbuf equ 70h		;ÏÔÊ¾»º³åÇø
org 0000h
ljmp start
delay1: mov r7,#255	;ÑÓÊ±×Ó³ÌÐò1
deloop1:mov r6,#255
      nop
      djnz r6,$
      djnz r7,deloop1
      ret
delay2: mov r7,#12		;ÑÓÊ±×Ó³ÌÐò2
deloop2:mov r6,#249
        djnz r6,$
        djnz r7,deloop2
        ret
LEDtable:                       ;°Ë¶Î¹ÜÏÔÊ¾Âë
    db 3fh,06h,5bh,4fh,66h,6dh,7dh,07h
    db 7fh,6fh,77h,7ch,39h,5eh,79h,71h
DACtable:DB 07h, 08h, 09h, 0ah, 10h, 0ffh,
        DB 04h, 05h, 06h, 0bh, 11h, 14h,
        DB 01h, 02h, 03h, 0ch, 12h, 15h,
        DB 00h, 0fh,0eh, 0dh, 13h, 16h,


keyloop: acall key
         cjne a,#0fh,keyloop0
         acall delay2
         ljmp key
keyloop0:acall delay2           ;¼üÅÌÈ¥¶¶¶¯
         acall key
         cjne a,#0fh,keyb
         ljmp keyloop
keyb:mov r1,#0dfh
         mov r5,#00h
L0:mov dptr,#OUTBIT             ;Î»¿Ø£¬ÒÝÖÐ¼üÅÌµÚÒ»ÁÐ
       mov a,r1
       movx @dptr,a
       mov dptr,#IN
       movx a,@dptr
       jb Acc.3,LL              ;¼ì²éÊÇ·ñÓÐ¼üÎ»±»°´ÏÂ
       mov a,#0
       jmp keyc
Ll:jb Acc.2,L2
      mov a,#6
      jmp keyc
L2: jb Acc.1,L3
    mov a,#12
    jmp keyc
L3: jb Acc.0,next
    mov a,#18
    jmp keyc
key:mov dptr,#OUTBIT            ;Î»¿ØÇåÁã£¬¼üÅÌ¶ÁÈëµ½aµÄµÍËÄÎ»
        mov a,#00h
        movx @dptr,a
        mov dptr,#IN
        movx a,@dptr
        anl a,#0fh
        ret
keyc:mov dptr,#DACtable
         movc a,@a+dptr
         mov dptr,#cs0832
         movx @dptr,a
         call delay2
         ret
next:mov dptr,#cs0832
         mov a,#80h
         movx @dptr,a
         call delay2
         ret
xianshi:mov TH1,#00h            ;¶¨Ê±È¯ÇåÁã
      mov TL1,#00h
      setb TR1
      call delay1
      mov a,TL1
      mov b,#0ah      ;½«×ªËÙÊ®Î»¡¢¸öÎ»·Ö±ð·ÅÈë¼Ä´æÆ÷a¡¢b
      div ab
      acall led
      mov r0,#LEDBUF
      mov @r0,a
      mov a,b
      acall led
      inc r0
      mov @r0,a
LED1:
     mov r0,#LEDBUF            ;6Î»ÏÔÊ¾¹ÜµÄµÍ2Î»¹ÜÏÔÊ¾×ªËÙr2£
     mov r2,#00000010b
Loop2: mov dptr,#OUTBIT
       mov a,r2
       movx @dptr,a
       mov a,@r0                ;¶Î¿Ø£¬ÏÔÊ¾¶ÔÓ¦µÄÊý×Ömo
       mov dptr,#OUTSEG
       movx @dptr,a
       call delay2
       mov a,r2
       rr a
       mov  r2,a
       inc r0
       mov dptr,#OUTBIT
       mov a,r2
       movx @dptr,a
       mov a,@r0
       mov dptr,#OUTSEG
       movx @dptr,a
       call delay2
       ret
Led:mov dptr,#LEDtable
        movc a,@a+dptr
        ret
start:mov sp,#70h
          mov TMOD,#50h
          mov IE,#8ch
loop:acall keyloop
loop1:acall xianshi
            end
