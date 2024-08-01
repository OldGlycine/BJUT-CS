onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /mips_tb/clk
add wave -noupdate /mips_tb/rst
add wave -noupdate /mips_tb/mips_1/im_1k_21071003/im
add wave -noupdate -expand -group npc -radix hexadecimal /mips_tb/mips_1/npc_21071003/nextpc
add wave -noupdate -expand -group npc /mips_tb/mips_1/npc_21071003/dmin
add wave -noupdate -expand -group npc /mips_tb/mips_1/npc_21071003/pcnew
add wave -noupdate -expand -group npc /mips_tb/mips_1/npc_21071003/npcop
add wave -noupdate -expand -group npc -radix hexadecimal /mips_tb/mips_1/npc_21071003/pc_4
add wave -noupdate /mips_tb/mips_1/npc_21071003/zero
add wave -noupdate -expand -group controller /mips_tb/mips_1/c_21071003/j
add wave -noupdate -expand -group controller /mips_tb/mips_1/c_21071003/aluop
add wave -noupdate -expand -group controller /mips_tb/mips_1/c_21071003/gprsel
add wave -noupdate -expand -group controller /mips_tb/mips_1/c_21071003/gprwr
add wave -noupdate -expand -group controller /mips_tb/mips_1/c_21071003/extop
add wave -noupdate -expand -group controller /mips_tb/mips_1/c_21071003/wdsel
add wave -noupdate -expand -group controller /mips_tb/mips_1/c_21071003/npcop
add wave -noupdate -expand -group controller /mips_tb/mips_1/c_21071003/dmwr
add wave -noupdate -expand -group controller /mips_tb/mips_1/c_21071003/bsel
add wave -noupdate -expand -group controller /mips_tb/mips_1/c_21071003/overflow
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {192 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 226
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {683 ps}
