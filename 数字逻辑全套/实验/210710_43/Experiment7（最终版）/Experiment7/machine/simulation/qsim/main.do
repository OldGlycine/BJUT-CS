onerror {quit -f}
vlib work
vlog -work work main.vo
vlog -work work main.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.main_vlg_vec_tst
vcd file -direction main.msim.vcd
vcd add -internal main_vlg_vec_tst/*
vcd add -internal main_vlg_vec_tst/i1/*
add wave /*
run -all
