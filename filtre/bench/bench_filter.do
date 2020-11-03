onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /bench_filter/CLK
add wave -noupdate /bench_filter/RESET
add wave -noupdate -radix hexadecimal /bench_filter/Filter_In
add wave -noupdate -radix hexadecimal /bench_filter/Filter_Out
add wave -noupdate /bench_filter/ADC_eocb
add wave -noupdate /bench_filter/ADC_convstb
add wave -noupdate /bench_filter/ADC_rdb
add wave -noupdate /bench_filter/ADC_csb
add wave -noupdate /bench_filter/DAC_wrb
add wave -noupdate /bench_filter/DAC_csb
add wave -noupdate /bench_filter/DAC_ldacb
add wave -noupdate /bench_filter/DAC_clrb
add wave -noupdate /bench_filter/Buff_OE
add wave -noupdate /bench_filter/Accu_out
add wave -noupdate /bench_filter/filter_tab
add wave -noupdate /bench_filter/assert_convstb#immed__142
add wave -noupdate /bench_filter/assert_readb_pulse#immed__167
add wave -noupdate /bench_filter/assert_readb_2convstb#immed__156
add wave -noupdate -divider Bench_top
add wave -noupdate /bench_filter/DUT/Filter_In
add wave -noupdate /bench_filter/DUT/CLK
add wave -noupdate /bench_filter/DUT/RESET
add wave -noupdate /bench_filter/DUT/ADC_Eocb
add wave -noupdate /bench_filter/DUT/ADC_Convstb
add wave -noupdate /bench_filter/DUT/ADC_Rdb
add wave -noupdate /bench_filter/DUT/ADC_csb
add wave -noupdate /bench_filter/DUT/DAC_WRb
add wave -noupdate /bench_filter/DUT/DAC_csb
add wave -noupdate /bench_filter/DUT/LDACb
add wave -noupdate /bench_filter/DUT/CLRb
add wave -noupdate -radix hexadecimal /bench_filter/DUT/Filter_Out
add wave -noupdate /bench_filter/DUT/Delay_Line_sample_shift
add wave -noupdate /bench_filter/DUT/Accu_ctrl
add wave -noupdate /bench_filter/DUT/Buff_OE
add wave -noupdate /bench_filter/DUT/req_F2DAC
add wave -noupdate /bench_filter/DUT/req_ADC2F
add wave -noupdate /bench_filter/DUT/ack_F2ADC
add wave -noupdate -radix hexadecimal /bench_filter/DUT/FSM_ADC_read_en
add wave -noupdate -radix hexadecimal /bench_filter/DUT/Delay_Line_out
add wave -noupdate -radix hexadecimal /bench_filter/DUT/Rom_out
add wave -noupdate -radix hexadecimal /bench_filter/DUT/Filter_In_mem
add wave -noupdate -radix hexadecimal /bench_filter/DUT/Mult_out
add wave -noupdate -radix hexadecimal /bench_filter/DUT/Accu_out
add wave -noupdate -radix unsigned /bench_filter/DUT/Rom_Address
add wave -noupdate -radix unsigned /bench_filter/DUT/Delay_Line_Address
add wave -noupdate -divider Filter
add wave -noupdate /bench_filter/assert_write_pulse#immed__189
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {824 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {500 ns} {1500 ns}
