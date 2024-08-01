transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/altera/Experiment2/D_FF {C:/altera/Experiment2/D_FF/D_FF.v}

vlog -vlog01compat -work work +incdir+C:/altera/Experiment2/D_FF/simulation/modelsim {C:/altera/Experiment2/D_FF/simulation/modelsim/D_FF.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver -L rtl_work -L work -voptargs="+acc"  D_FF_vlg_tst

add wave *
view structure
view signals
run -all
