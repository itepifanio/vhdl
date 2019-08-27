onerror {exit -code 1}
vlib work
vcom -work work demux_case.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.demux_case_vhd_vec_tst
vcd file -direction demux_case.msim.vcd
vcd add -internal demux_case_vhd_vec_tst/*
vcd add -internal demux_case_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
