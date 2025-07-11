onerror {quit -f}
vlib work
vlog -work work RCA16.vo
vlog -work work RCA16.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.RCA16_vlg_vec_tst
vcd file -direction RCA16.msim.vcd
vcd add -internal RCA16_vlg_vec_tst/*
vcd add -internal RCA16_vlg_vec_tst/i1/*
add wave /*
run -all
