onerror {quit -f}
vlib work
vlog -work work D_latch.vo
vlog -work work D_latch.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.D_latch_vlg_vec_tst
vcd file -direction D_latch.msim.vcd
vcd add -internal D_latch_vlg_vec_tst/*
vcd add -internal D_latch_vlg_vec_tst/i1/*
add wave /*
run -all
