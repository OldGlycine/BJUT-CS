ORG 0H       ; ���ó������ʼ��ַΪ0H



;#080H ; 0
;#0eH ; 7
;#05eH ;2
;#04eH ;3
;#0cH 1
;05eH 2
LO1:
    MOV DPTR, #8004H ; �ο�8004H
    MOV A,#3FH ; 0
    MOVX @dptr, A ;
    MOV dptr,#8002H   ;λ��8002H
    MOV A,#20H
    MOVX @dptr,A
    CALL DELAY ; ������ʱ�ӳ���


    MOV DPTR, #8004H ; �ο�8004H
    MOV A,#07H ; 7
    MOVX @dptr, A ;
    MOV dptr,#8002H   ;λ��8002H
    MOV A,#10H
    MOVX @dptr,A
    CALL DELAY ; ������ʱ�ӳ���
 

    MOV DPTR, #8004H ; �ο�8004H
    MOV A,#5BH ; 2
    MOVX @dptr, A;
    MOV dptr,#8002H   ;λ��8002H
    MOV A,#08H
    MOVX @dptr,A
    CALL DELAY ; ������ʱ�ӳ���


    MOV DPTR, #8004H ; �ο�8004H
    MOV A,#4FH ; 3
    MOVX @dptr, A ;
    MOV dptr,#8002H   ;λ��8002H
    MOV A,#04H
    MOVX @dptr,A
    CALL DELAY ; ������ʱ�ӳ���


    MOV DPTR, #8004H ; �ο�8004H
    MOV A,#06H ; 1
    MOVX @dptr, A ;
    MOV dptr,#8002H   ;λ��8002H
    MOV A,#02H
    MOVX @dptr,A
    CALL DELAY ; ������ʱ�ӳ���


    MOV DPTR, #8004H ; �ο�8004H
    MOV A,#5BH ; 2
    MOVX @dptr, A ;
    MOV dptr,#8002H   ;λ��8002H
    MOV A,#01H
    MOVX @dptr,A
    CALL DELAY ; ������ʱ�ӳ���
SJMP LO1
DELAY:
    MOV R3, #255 ; ����R3�Ĵ���Ϊ255
DELAY_LOOP:
    DJNZ R3, DELAY_LOOP ; R2�Ĵ����ݼ��������Ϊ������ת��DELAY_LOOP
    RET ; ����������



END ; ���������־
