transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {D.vo}

vlog -vlog01compat -work work +incdir+C:/altera/Experiment2/D/simulation/qsim {C:/altera/Experiment2/D/simulation/qsim/D.vt}

vsim -t 1ps -L altera_ver -L cycloneiii_ver -L gate_work -L work -voptargs="+acc"  D_vlg_vec_tst

add wave *
view structure
view signals
run -all
