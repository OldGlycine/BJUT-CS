onerror {quit -f}
vlib work
vlog -work work flowing_water_light.vo
vlog -work work flowing_water_light.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.flowing_water_light_vlg_vec_tst
vcd file -direction flowing_water_light.msim.vcd
vcd add -internal flowing_water_light_vlg_vec_tst/*
vcd add -internal flowing_water_light_vlg_vec_tst/i1/*
add wave /*
run -all
