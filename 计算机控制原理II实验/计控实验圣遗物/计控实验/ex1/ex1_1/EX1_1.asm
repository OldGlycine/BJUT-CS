; 7��LED��ʾ���Ƴ���
ORG 0H   ; ������ʼ��ַ

OUTBIG EQU 8002H   ; λ���ƿ�
OUTSEG EQU 8004H   ; �ο��ƿ�

START:  MOV DPTR, #DISPLAY_DATA  ; ���ݴ洢����ʼ��ַ
        MOV R0, #6  ; ��6λ����

DISPLAY_LOOP:
        MOV A, R0  ; ���ҵ�����ʾ
        DEC A
        MOVX @DPTR, A  ; �����ݴ洢���ڴ�
        MOV DPTR, #OUTSEG  ; ���öο��ƿڵ�ַ
        MOV A, R0  ; ����λ���ƿڵ�ַ
        INC A
        MOVX @DPTR, A  ; ���λ���ƿ�
        LCALL DELAY  ; ��ʱ
        DEC R0  ; ָ����һ������
        JZ END_PROGRAM  ; ����������ʾ��ϣ��������
        JMP DISPLAY_LOOP  ; ����ѭ����ʾ

END_PROGRAM: SJMP $

DELAY:  ; ����ʱ����
        MOV R7, #10
DELAY_LOOP:
        MOV R6, #255
DELAY_LOOP2:
        DJNZ R6, DELAY_LOOP2
        DJNZ R7, DELAY_LOOP
        RET

DISPLAY_DATA:  ; ���ݴ洢����
        DB 3FH  ; 0
        DB 06H  ; 7
        DB 5BH  ; 2
        DB 4FH  ; 3
        DB 66H  ; 1
        DB 6DH  ; 2
        DB 7DH  ; 3

        ORG 8000H  ; ���ó����������ʼ��ַ
        JMP START  ; ��ת���������ʼ��ַ
