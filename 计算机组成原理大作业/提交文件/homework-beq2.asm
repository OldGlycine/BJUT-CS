# addu subu ori lw sw beq j lui 
# �����������֣�DM����6���ж�ǰ����������Ƿ���ڵ�����
# �����DM����Ϊ��������,DM[7]�洢123������123+4x7
# ����������ӣ���1����lui���ټ���DM�������浽DM[9]
# ������2023��ĳһ�Ĵ���
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
