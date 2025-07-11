onerror {quit -f}
vlib work
vlog -work work CodificadordePrioridade.vo
vlog -work work CodificadordePrioridade.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.CodificadordePrioridade_vlg_vec_tst
vcd file -direction CodificadordePrioridade.msim.vcd
vcd add -internal CodificadordePrioridade_vlg_vec_tst/*
vcd add -internal CodificadordePrioridade_vlg_vec_tst/i1/*
add wave /*
run -all
