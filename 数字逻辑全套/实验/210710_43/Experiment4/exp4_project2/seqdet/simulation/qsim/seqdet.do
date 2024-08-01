onerror {quit -f}
vlib work
vlog -work work seqdet.vo
vlog -work work seqdet.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.seqdet_vlg_vec_tst
vcd file -direction seqdet.msim.vcd
vcd add -internal seqdet_vlg_vec_tst/*
vcd add -internal seqdet_vlg_vec_tst/i1/*
add wave /*
run -all
