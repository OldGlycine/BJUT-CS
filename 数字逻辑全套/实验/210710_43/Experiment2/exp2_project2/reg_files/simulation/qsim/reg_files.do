onerror {quit -f}
vlib work
vlog -work work reg_files.vo
vlog -work work reg_files.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.reg_files_vlg_vec_tst
vcd file -direction reg_files.msim.vcd
vcd add -internal reg_files_vlg_vec_tst/*
vcd add -internal reg_files_vlg_vec_tst/i1/*
add wave /*
run -all
