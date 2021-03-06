transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Thatianne/Documents/Faculdade/5Semestre/MISistemasDigitais/MI_SistemasDigitais/ProcessadorMipsSD/IF {C:/Users/Thatianne/Documents/Faculdade/5Semestre/MISistemasDigitais/MI_SistemasDigitais/ProcessadorMipsSD/IF/MemInstruction.v}
vlog -vlog01compat -work work +incdir+C:/Users/Thatianne/Documents/Faculdade/5Semestre/MISistemasDigitais/MI_SistemasDigitais/ProcessadorMipsSD/IF {C:/Users/Thatianne/Documents/Faculdade/5Semestre/MISistemasDigitais/MI_SistemasDigitais/ProcessadorMipsSD/IF/Mux32bits.v}
vlog -vlog01compat -work work +incdir+C:/Users/Thatianne/Documents/Faculdade/5Semestre/MISistemasDigitais/MI_SistemasDigitais/ProcessadorMipsSD/IF {C:/Users/Thatianne/Documents/Faculdade/5Semestre/MISistemasDigitais/MI_SistemasDigitais/ProcessadorMipsSD/IF/IF.v}
vlog -vlog01compat -work work +incdir+C:/Users/Thatianne/Documents/Faculdade/5Semestre/MISistemasDigitais/MI_SistemasDigitais/ProcessadorMipsSD {C:/Users/Thatianne/Documents/Faculdade/5Semestre/MISistemasDigitais/MI_SistemasDigitais/ProcessadorMipsSD/Pc.v}

vlog -vlog01compat -work work +incdir+C:/Users/Thatianne/Documents/Faculdade/5Semestre/MISistemasDigitais/MI_SistemasDigitais/ProcessadorMipsSD/IF {C:/Users/Thatianne/Documents/Faculdade/5Semestre/MISistemasDigitais/MI_SistemasDigitais/ProcessadorMipsSD/IF/MemInstruction_TB.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L rtl_work -L work -voptargs="+acc"  MemInstruction_TB

add wave *
view structure
view signals
run -all
