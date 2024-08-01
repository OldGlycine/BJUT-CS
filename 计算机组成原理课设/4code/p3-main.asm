ori $1,$0,0x7f00 	# ctrl寄存器地址
ori $2,$0,0x7f04	# preset寄存器地址
ori $3,$0,0x7F08	# count寄存器地址
ori $4,$0,0x7F0C	# input设备地址
ori $5,$0,0x7F10	# OPD preData输出设备初值寄存器地址
ori $6,$0,0x7F14	# OPD curData输出设备当前值寄存器地址
lw $7,0($4)		# 获取输入设备当前的输入值
sw $7,0($5)		# preData <- input
sw $7,0($6)		# curData <- input
ori $12,$0,0x0401	# sr <- 100_0000_0001
mtc0 $12,$12		# cp0[SR] <- $12
mfc0 $21,$15		# $21 <- cp0[PRID]
ori $13,$0,0x000a	# 10 倒计时
ori $9, $0, 0x0009	# ctrl控制位 1001
sw $13,0($2)		# preset <- 10
sw $13,0($3)		# count <- 10
sw $9,0($1)		# ctrl <- 1001
loop:j loop		# 死循环
