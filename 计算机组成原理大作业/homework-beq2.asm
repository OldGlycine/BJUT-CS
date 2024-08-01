# addu subu ori lw sw beq j lui 
# 创建三个数字，DM存入6，判断前两个数相加是否等于第三者
# 相等则DM更新为第三个数,DM[7]存储123，计算123+4x7
# 否则两数相加，对1进行lui后，再加上DM的数，存到DM[9]
# 最后存入2023到某一寄存器
ori $t1, $0, 4
ori $t2, $0, 2
ori $t3, $0, 10
ori $t4, $0, 6
sw $t4, 0($0)
addu $t4, $t1, $t2
beq $t4, $t3, then
else:addu $t1, $t1, $t2
lui $t1,0x1
lw $t2, 0($0)
addu $t1, $t1, $t2
ori $t3, $0, 32
sw $t1, 0($t3)
j end
then: sw $t3, 0($0)
ori $t4, $0, 123
ori $t3, $0, 28
sw $t4, 0($t3)
addu $t4, $t4, $t3
end:
ori $t5, $0, 2023
sw $t5, 36($0)
