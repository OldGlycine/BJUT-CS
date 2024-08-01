onerror {quit -f}
vlib work
vlog -work work addr_38.vo
vlog -work work addr_38.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.addr_38_vlg_vec_tst
vcd file -direction addr_38.msim.vcd
vcd add -internal addr_38_vlg_vec_tst/*
vcd add -internal addr_38_vlg_vec_tst/i1/*
add wave /*
run -all
