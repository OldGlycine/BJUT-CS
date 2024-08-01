lw $15,0($4)	# $15 <- input
lw $16,0($5)	# $16 <- preData
beq $16,$15,eq	# 比较二者的值，相等跳eq处
sw $15,0($5)	# 如果不相等，preData <- $5
sw $15,0($6)	# 如果不相等，curData <- $6
j jmp
eq:lw $16,0($6)	# $16 <- curData
addiu $16,$16,1	# $16 += 1
sw $16,0($6)	# curData <- $16
jmp:ori $13,$0,0x000a	# 倒计时重置
sw $13,0($2)	# 完成设置
eret		#中断返回
