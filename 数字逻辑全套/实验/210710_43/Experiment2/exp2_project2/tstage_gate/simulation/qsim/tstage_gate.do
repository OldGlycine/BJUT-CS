onerror {quit -f}
vlib work
vlog -work work tstage_gate.vo
vlog -work work tstage_gate.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.tstage_gate_vlg_vec_tst
vcd file -direction tstage_gate.msim.vcd
vcd add -internal tstage_gate_vlg_vec_tst/*
vcd add -internal tstage_gate_vlg_vec_tst/i1/*
add wave /*
run -all
