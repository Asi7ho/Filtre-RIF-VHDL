onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /bench/CLK
add wave -noupdate /bench/RESET
add wave -noupdate -format Analog-Step -height 84 -max 255.0 -radix unsigned /bench/Filter_In
add wave -noupdate -format Analog-Step -height 84 -max 14.0 -radix unsigned /bench/Filter_Out
add wave -noupdate /bench/ADC_eocb
add wave -noupdate /bench/ADC_convstb
add wave -noupdate /bench/ADC_rdb
add wave -noupdate /bench/ADC_csb
add wave -noupdate /bench/DAC_wrb
add wave -noupdate /bench/Buff_OE
add wave -noupdate /bench/Accu_out
add wave -noupdate /bench/filter_tab
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1730 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
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
WaveRestoreZoom {0 ns} {16 us}
