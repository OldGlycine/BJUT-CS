onerror {quit -f}
vlib work
vlog -work work D.vo
vlog -work work D.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.D_vlg_vec_tst
vcd file -direction D.msim.vcd
vcd add -internal D_vlg_vec_tst/*
vcd add -internal D_vlg_vec_tst/i1/*
add wave /*
run -all
