onerror {quit -f}
vlib work
vlog -work work expand_task.vo
vlog -work work expand_task.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.expand_task_vlg_vec_tst
vcd file -direction expand_task.msim.vcd
vcd add -internal expand_task_vlg_vec_tst/*
vcd add -internal expand_task_vlg_vec_tst/i1/*
add wave /*
run -all
