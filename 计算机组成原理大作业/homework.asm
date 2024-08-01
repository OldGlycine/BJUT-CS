# addu subu ori lw sw beq j lui 
# 创建三个数字，DM存入6，判断前两个数相加是否等于第三者
# 相等则DM更新为第三个数,DM[7]存储123
# 否则两数相加，对1进行lui后，再加上DM的数，存到DM[8]
ori $s1, $0, 4
ori $s2, $0, 2
ori $s3, $0, 10
ori $s4, $0, 6
sw $s4, 0($0)
addu $s4, $s1, $s2
beq $s4, $s3, then
else:addu $s1, $s1, $s2
lui $s1,0x1
lw $s2, 0($0)
addu $s1, $s1, $s2
ori $s3, $0, 32
lw $s1, 0($s3)
j end
then: sw $s4, 0($s0)
ori $s4, $0, 123
ori $s3, $0, 28
lw $s4, 0($3)
end: