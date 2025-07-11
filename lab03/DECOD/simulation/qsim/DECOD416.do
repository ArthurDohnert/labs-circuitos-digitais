onerror {quit -f}
vlib work
vlog -work work DECOD416.vo
vlog -work work DECOD416.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.DECOD416_vlg_vec_tst
vcd file -direction DECOD416.msim.vcd
vcd add -internal DECOD416_vlg_vec_tst/*
vcd add -internal DECOD416_vlg_vec_tst/i1/*
add wave /*
run -all
