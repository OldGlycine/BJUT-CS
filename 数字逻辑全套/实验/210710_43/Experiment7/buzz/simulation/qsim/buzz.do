onerror {quit -f}
vlib work
vlog -work work buzz.vo
vlog -work work buzz.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.buzz_vlg_vec_tst
vcd file -direction buzz.msim.vcd
vcd add -internal buzz_vlg_vec_tst/*
vcd add -internal buzz_vlg_vec_tst/i1/*
add wave /*
run -all
