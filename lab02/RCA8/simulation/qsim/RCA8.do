onerror {quit -f}
vlib work
vlog -work work RCA8.vo
vlog -work work RCA8.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.RCA8_vlg_vec_tst
vcd file -direction RCA8.msim.vcd
vcd add -internal RCA8_vlg_vec_tst/*
vcd add -internal RCA8_vlg_vec_tst/i1/*
add wave /*
run -all
