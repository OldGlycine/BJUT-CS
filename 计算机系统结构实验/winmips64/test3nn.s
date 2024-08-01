.data
    A:  .word 12,16,20,8
    B:  .word 4,2,5,1
    C:  .space 64
.text
main:
Loop:
	ld r3,A(r1)
	ld r4,B(r1)
	daddi r1,r1,8
	dmul r5,r3,r4
	ld r3,A(r1)
	ld r4,B(r1)
	sd r5,C(r1)
	daddi r1,r1,8
	dmul r5,r3,r4
	ld r3,A(r1)
	ld r4,B(r1)
	sd r5,C(r1)
	daddi r1,r1,8
	dmul r5,r3,r4
	ld r3,A(r1)
	ld r4,B(r1)
	sd r5,C(r1)
	dmul r5,r3,r4
	daddi r1,r1,8
	sd r5,C(r1)
halt