# addu subu ori lw sw beq j lui 
# �����������֣�DM����6���ж�ǰ����������Ƿ���ڵ�����
# �����DM����Ϊ��������,DM[7]�洢123
# ����������ӣ���1����lui���ټ���DM�������浽DM[8]
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