onerror {exit -code 1}
vlib work
vcom -work work display_7_segmentos.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.display_7_segmentos_vhd_vec_tst
vcd file -direction display_7_segmentos.msim.vcd
vcd add -internal display_7_segmentos_vhd_vec_tst/*
vcd add -internal display_7_segmentos_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
