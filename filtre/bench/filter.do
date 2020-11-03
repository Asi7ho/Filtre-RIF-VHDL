onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /bench_top/CLK
add wave -noupdate /bench_top/RESET
add wave -noupdate /bench_top/Filter_In
add wave -noupdate /bench_top/DAC_csb
add wave -noupdate /bench_top/Filter_Out
add wave -noupdate /bench_top/ADC_eocb
add wave -noupdate /bench_top/ADC_convstb
add wave -noupdate /bench_top/ADC_rdb
add wave -noupdate /bench_top/ADC_csb
add wave -noupdate /bench_top/DAC_wrb
add wave -noupdate /bench_top/DAC_ldacb
add wave -noupdate /bench_top/DAC_clrb
add wave -noupdate /bench_top/Buff_OE
add wave -noupdate /bench_top/ADC_convstb_delayed
add wave -noupdate /bench_top/ADC_eocb_delayed
add wave -noupdate /bench_top/Accu_out
add wave -noupdate /bench_top/filter_tab
add wave -noupdate /bench_top/state_ADC
add wave -noupdate /bench_top/next_state_ADC
add wave -noupdate /bench_top/assert_convstb#immed__159
add wave -noupdate /bench_top/assert_convstb#immed__159
add wave -noupdate /bench_top/assert_convstb#immed__159
add wave -noupdate -divider BENCH
add wave -noupdate /bench_top/DUT/Filter_In
add wave -noupdate /bench_top/DUT/CLK
add wave -noupdate /bench_top/DUT/RESET
add wave -noupdate /bench_top/DUT/ADC_Eocb
add wave -noupdate /bench_top/DUT/ADC_Convstb
add wave -noupdate /bench_top/DUT/ADC_Rdb
add wave -noupdate /bench_top/DUT/ADC_csb
add wave -noupdate /bench_top/DUT/DAC_WRb
add wave -noupdate /bench_top/DUT/DAC_csb
add wave -noupdate /bench_top/DUT/LDACb
add wave -noupdate /bench_top/DUT/CLRb
add wave -noupdate /bench_top/DUT/Filter_Out
add wave -noupdate /bench_top/DUT/Delay_Line_sample_shift
add wave -noupdate /bench_top/DUT/Accu_ctrl
add wave -noupdate /bench_top/DUT/Buff_OE
add wave -noupdate /bench_top/DUT/req_F2DAC
add wave -noupdate /bench_top/DUT/req_ADC2F
add wave -noupdate /bench_top/DUT/ack_ADC2F
add wave -noupdate /bench_top/DUT/FSM_ADC_read_en
add wave -noupdate /bench_top/DUT/Delay_Line_out
add wave -noupdate /bench_top/DUT/Rom_out
add wave -noupdate /bench_top/DUT/Filter_In_mem
add wave -noupdate /bench_top/DUT/Mult_out
add wave -noupdate /bench_top/DUT/Accu_out
add wave -noupdate /bench_top/DUT/Rom_Address
add wave -noupdate /bench_top/DUT/Delay_Line_Address
add wave -noupdate /bench_top/DUT/ZERO
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {70 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 239
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {50 ns} {961 ns}
