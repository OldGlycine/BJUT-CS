onerror {quit -f}
vlib work
vlog -work work f_c.vo
vlog -work work f_c.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.f_c_vlg_vec_tst
vcd file -direction f_c.msim.vcd
vcd add -internal f_c_vlg_vec_tst/*
vcd add -internal f_c_vlg_vec_tst/i1/*
add wave /*
run -all
