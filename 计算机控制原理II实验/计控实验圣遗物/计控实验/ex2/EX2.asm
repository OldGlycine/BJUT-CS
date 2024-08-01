; 4�൥4�Ĳ���������Ƴ���
strt:
MOV 20H, #00H           ; ��ʼ��ַƫ����Ϊ0
MOV P1, #01H            ; ���������ʼ����P1��#01H��A��ͨ��
MOV 42H, #0C8H          ; 200�����ӳټ�����42H

acall forward_sequence  ; ��ת����
acall reverse_sequence  ; ��ת����
sjmp strt               ; ѭ��

; ���ٲ�������
speedup:    MOV R7, #64H       ; 100���벽��������R7
MLP0:       MOV R6, 42H        ; ��ʱ
MLPX0:      LCALL DEL          ; ���ö���ʱ�ӳ���
            DJNZ R6, MLPX0
            DEC 42H            ; ���ӳټ�����42H�е�ֵ��һ
            LCALL STEPS        ; ����һ���ӳ���
            DJNZ R7, MLP0       ; ����������1����Ϊ���������
            ret

; ���ٲ�������
speed:      MOV R7, #64H       ; 100���벽��������R7
MLP1:       MOV R6, 42H        ; ��ʱ
MLPX1:      LCALL DEL          ; ���ö���ʱ�ӳ���
            DJNZ R6, MLPX1
            LCALL STEPS        ; ����һ���ӳ���
            DJNZ R7, MLP1       ; ����������1����Ϊ���������
            RET

; ���ٲ�������
speedlow:   MOV R7, #64H       ; 100���벽��������R7
MLP2:       MOV R6, 42H        ; ��ʱ
MLPX2:      LCALL DEL          ; ���ö���ʱ�ӳ���
            DJNZ R6, MLPX2
            INC 42H            ; ���ӳټ�����42H�е�ֵ��һ
            LCALL STEPS        ; ����һ���ӳ���
            DJNZ R7, MLP2       ; ����������1����Ϊ���������
            ret

; ����һ���ӳ���
STEPS:      INC 20H            ; ��ַƫ������1
            ANL 20H, #0FH      ; ����20H�ĵ���λ״̬
            MOV DPTR, #FTAB    ; ����ַ��DPTR
            MOV A, 20H         ; ȡ����λ
            MOVC A, @A+DPTR    ; ȡͨ��״̬��
            MOV P1, A          ; ���ͨ��״̬�֣����������һ��
            RET

; ��ʱ�ӳ���
DEL:        MOV R5, #00H       ; 1T
DEL0:       DJNZ R5, DEL0      ; 2T
            RET                 ; 1T

; ��ת����
forward_sequence:
            acall speedup       ; ����
            acall speed         ; ����
            acall speedlow      ; ����
            ret

; ��ת����
reverse_sequence:
            MOV 20H, #00H       ; 20H�ĵ���λ����
            MOV P1, #01H        ; ���������ʼ����P1��#01H��A��ͨ��
            MOV 42H, #0C8H      ; 200�����ӳټ�����42H
            acall speedup       ; ��ת����
            acall speed         ; ��ת����
            acall speedlow      ; ��ת����
            ret
FTAB:DB 01H,02H,04H,08H			;��ת��
CTAB:DB 01H,08H,04H,02H		;��ת��
