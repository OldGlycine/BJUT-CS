onerror {quit -f}
vlib work
vlog -work work led.vo
vlog -work work led.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.led_vlg_vec_tst
vcd file -direction led.msim.vcd
vcd add -internal led_vlg_vec_tst/*
vcd add -internal led_vlg_vec_tst/i1/*
add wave /*
run -all
