ori $16, $0, 1
ori $17, $0, 3
ori $8, $0, 1
ori $12, $0,0xabab
lui $13, 10
start:addu $4, $0,$16
addu $5, $0,$8
jal newadd
addu $16, $0, $2
subu $17,$17,$8
beq $16, $17, start
ori $8, $0,4
addiu $24,$0,0x7fffffff
addiu $9,$24,3
addiu $10,$24,5
addu $0,$0,$0
#addi $22,$24,6
start2:sw $9, -4($8)
sw $1, 0($8)
lb $14, 3($8)
sb $12,7($8)
lw $15,4($8)
sb $4, -3($8)
lb $18, -1($8)
addu $4,$0,$8
addu $5,$0,$9
jal newadd
slt $25,$10,$8
beq $25, $0,end2
slt $20,$12,$4
beq $20, $0, end1
lui $12, 65535
end1:ori $0, $0,1
lui $19, 0xefef
addiu $3,$0,0xababcdcd
start3:addiu $4, $3, 2
addi $23, $3, 5
jal newadd
addu $8, $0, $2
addu $4, $0, $8
addu $5, $0, $9
jal newadd
addu $9, $0, $2
addu $9, $8, $0
lui $10, 0x69
beq $8, $9, start4
beq $0, $0, start3
start4:j end
newadd:addu $2, $4, $5
addi $0,$12,0x1234
jr $31
end2:addi $26,$0,0x5678
end:
