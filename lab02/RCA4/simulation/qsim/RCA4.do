onerror {quit -f}
vlib work
vlog -work work RCA4.vo
vlog -work work RCA4.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.RCA4_vlg_vec_tst
vcd file -direction RCA4.msim.vcd
vcd add -internal RCA4_vlg_vec_tst/*
vcd add -internal RCA4_vlg_vec_tst/i1/*
add wave /*
run -all
