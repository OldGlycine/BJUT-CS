ORG 0H   ; ������ʼ��ַ

OUTBIG EQU 8002H   ; λ���ƿ�
OUTSEG EQU 8004H   ; �ο��ƿ�
KEYIN  EQU 8001H    ; ���̶����

; ��ʼ��������
READY:
    MOV 25H, #3FH
    MOV 24H, #3FH
    MOV 23H, #3FH
    MOV 22H, #3FH
    MOV 21H, #3FH
    MOV 20H, #3FH

MAIN:
    MOV 28H, #6  ; ѭ������

    ; �޼������룬������ʾ��ǰ������
    LCALL DISPLAY
    LCALL TEST
    JZ MAIN  ; �ۼ���Ϊ0�ް����� ������ʾ

    ; �м�ֵ���룬������ļ�ֵ��ʾ���������
    LCALL SEARCH

    ; ѭ����������
          MOV 20H,21H    ;�������ʾ������ļ�ֵ
          MOV 21H,22H
          MOV 22H,23H
          MOV 23H,24H
          MOV 24H,25H

    MOV DPTR, #LEDTAB
    MOVC A, @A+DPTR
    MOV 25H, A

    DJNZ 28H, MAIN
;TRANS:
;         MOV A,20H
;         MOV DPTR,#NUMBERTAB
;         MOVC A,@A+DPTR
;         MOV 20H,A

;         MOV A,21H
;         MOV DPTR,#NUMBERTAB
;         MOVC A,@A+DPTR
;         MOV 21H,A

;         MOV A,22H
;         MOV DPTR,#NUMBERTAB
;         MOVC A,@A+DPTR
;         MOV 22H,A
;
;         MOV A,23H
;         MOV DPTR,#NUMBERTAB
;         MOVC A,@A+DPTR
;         MOV 23H,A
;
;         MOV A,24H
;         MOV DPTR,#NUMBERTAB
;         MOVC A,@A+DPTR
;         MOV 24H,A
;
;         MOV A,25H
;         MOV DPTR,#NUMBERTAB
;         MOVC A,@A+DPTR
;         MOV 25H,A
;
;    SJMP MAIN

DISPLAY:
    ; ��ʾģ��
    MOV R0, #20H    ; ��������20H����ʼ
    MOV R1, #6      ; ��6���˶ι�
    MOV R2, #00100000B ; ����߿�ʼ��ʾ����Ϊ1����Ϊ0

LOOP:
    MOV DPTR, #OUTSEG
    MOV A, #0
    MOVX @DPTR, A   ; λѡ�趨Ϊ0
    MOV A, @R0      ; ����20HΪ�׵�ַ���ڴ�ֵ���͵����������8004H
    MOVX @DPTR, A

    MOV DPTR, #OUTBIG ; ���λѡͨ���ţ�ʹÿ��ֻ��ʾһλ�˶ι�
    MOV A, R2
    MOVX @DPTR, A
    RR A
    MOV R2, A
    LCALL DELAY     ; ��ʱ
    INC R0
    DJNZ R1, LOOP   ; ��ʾ6��
    RET

DELAY:   
    ; ��ʱ�ӳ���
    MOV R7, #02H
DEL1:   
    MOV R6, #0FFH
DEL2:   
    DJNZ R6, DEL2
    DJNZ R7, DEL1
    RET

TEST:
    ; ������޼�ֵ����
    MOV DPTR, #OUTBIG
    MOV A, #00H
    MOVX @DPTR, A    ; �ͳ�0
    MOV DPTR, #KEYIN
    MOVX A, @DPTR    ; �ض���״̬
    CPL A            ; �ۼ�������λ��
    ANL A, #0FH
    RET

SEARCH:
    ; �ҳ���ֵ���ڵĵ�λ��(�к���)
    MOV R1, #00100000B  ; ��ʼ�У�����߿�ʼ
    MOV R2, #06H ; ��6��
    MOV R5, #00H ; ��¼��ǰ��������
    MOV R4, #03H ; �Ѿ������˶�����

LSEARCH:
    ; �ҳ�������λ�ú�
    MOV A, R1
    CPL A
    MOV DPTR, #OUTBIG
    MOVX @DPTR, A
    CPL A
    RR A    ; ͨ���ж�ѭ�����ν�λΪ1��ʵ�ּ����Ĺ���
    MOV R1, A
    MOV DPTR, #KEYIN
    MOVX A, @DPTR
    CPL A
    ANL A, #0FH
    JNZ HSEARCH    ; AΪ����ҵ������У� ����Ѱ��������λ��
    INC R5     ; ��Ϊ������һ��������
    DJNZ R2, LSEARCH

HSEARCH:
    MOV R7, #04H; һ��������
LOOP2:
    RRC A
    JC GET
    DEC R4
    DJNZ R7, LOOP2
GET:   
    ; ȷ������ļ���ֵ
    MOV A, R4    ; ��ֵ=��*6+��,R4*6+R5->A
    MOV B, #6H
    MUL AB
    ADD A, R5
    MOV DPTR, #KEYTAB; ȡ����������λ��
    MOVC A, @A+DPTR
    MOV 26H, A    ; ��ȡ����ֵ��ʱ�������ڴ���,��ֹ���ݶ�ʧ

WAIT:
    ; �ȼ��ͷ�
    MOV DPTR, #OUTBIG
    CLR A
    MOVX @DPTR, A
    LCALL DELAY
    LCALL TEST
    JNZ WAIT
    MOV A, 26H    ; �ͷų���������ֵ
    RET

LEDTAB:    ; �˶ι���ʾ��
    DB 3FH, 06H, 5BH, 4FH, 66H, 6DH, 7DH, 07H
    DB 7FH, 6FH, 77H, 7CH, 39H, 5EH, 79H, 71H

KEYTAB:   ; ������
    DB 07H, 08H, 09H, 0AH, 10H, 0FFH,
    DB 04H, 05H, 06H, 0BH, 11H, 14H,
    DB 01H, 02H, 03H, 0CH, 12H, 15H,
    DB 00H, 0FH, 0EH, 0DH, 13H, 16H
