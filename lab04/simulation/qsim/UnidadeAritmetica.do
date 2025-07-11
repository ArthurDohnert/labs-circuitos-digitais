onerror {quit -f}
vlib work
vlog -work work UnidadeAritmetica.vo
vlog -work work UnidadeAritmetica.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.UnidadeAritmetica_vlg_vec_tst
vcd file -direction UnidadeAritmetica.msim.vcd
vcd add -internal UnidadeAritmetica_vlg_vec_tst/*
vcd add -internal UnidadeAritmetica_vlg_vec_tst/i1/*
add wave /*
run -all
