ori $3,$0,0x93
ori $6,$0,0xae
addu $8,$3,$6
subu $9,$3,$6
addu $0,$9,$10
sw $9,16($0)
lw $10,16($0)
l3:beq $9,$10,l1
lui $11,0xcdcd
j end
l1:ori $11,$0,0xefef
lui $9,0x4567
j l3
end:
