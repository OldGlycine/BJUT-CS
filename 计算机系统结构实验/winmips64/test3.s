.data
    A:  .word 12,16,20,8
    B:  .word 4,2,5,1
    C:  .space 64
.text
main:
	daddi r2,r0,4;设置循环次数
Loop:
	ld r3,A(r1);读取A[i]
	ld r4,B(r1);读取B[i]
	dmul r5,r3,r4;运算
	sd r5,C(r1);存储C[i]
	daddi r1,r1,8;数组下标推进
	daddi r2, r2, -1;i--
	bnez r2,Loop
halt