ori $1,$0,0x7f00 	# ctrl�Ĵ�����ַ
ori $2,$0,0x7f04	# preset�Ĵ�����ַ
ori $3,$0,0x7F08	# count�Ĵ�����ַ
ori $4,$0,0x7F0C	# input�豸��ַ
ori $5,$0,0x7F10	# OPD preData����豸��ֵ�Ĵ�����ַ
ori $6,$0,0x7F14	# OPD curData����豸��ǰֵ�Ĵ�����ַ
lw $7,0($4)		# ��ȡ�����豸��ǰ������ֵ
sw $7,0($5)		# preData <- input
sw $7,0($6)		# curData <- input
ori $12,$0,0x0401	# sr <- 100_0000_0001
mtc0 $12,$12		# cp0[SR] <- $12
mfc0 $21,$15		# $21 <- cp0[PRID]
ori $13,$0,0x000a	# 10 ����ʱ
ori $9, $0, 0x0009	# ctrl����λ 1001
sw $13,0($2)		# preset <- 10
sw $13,0($3)		# count <- 10
sw $9,0($1)		# ctrl <- 1001
loop:j loop		# ��ѭ��
