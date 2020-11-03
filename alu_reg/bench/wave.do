onerror {resume}
quietly virtual signal -install /alu_reg_testbench {/alu_reg_testbench/clk  } clk_reset
quietly WaveActivateNextPane {} 0
add wave -noupdate /alu_reg_testbench/clk
add wave -noupdate /alu_reg_testbench/reset_n
add wave -noupdate /alu_reg_testbench/din0
add wave -noupdate /alu_reg_testbench/din1
add wave -noupdate /alu_reg_testbench/cin
add wave -noupdate /alu_reg_testbench/s2
add wave -noupdate /alu_reg_testbench/s1
add wave -noupdate /alu_reg_testbench/s0
add wave -noupdate /alu_reg_testbench/dout
add wave -noupdate /alu_reg_testbench/sel
add wave -noupdate /alu_reg_testbench/alu_reg_1/din0
add wave -noupdate /alu_reg_testbench/alu_reg_1/din1
add wave -noupdate /alu_reg_testbench/alu_reg_1/dout
add wave -noupdate /alu_reg_testbench/alu_reg_1/FA_din0
add wave -noupdate /alu_reg_testbench/alu_reg_1/FA_din1
add wave -noupdate /alu_reg_testbench/alu_reg_1/FA_dout
add wave -noupdate /alu_reg_testbench/alu_reg_1/int_dout
add wave -noupdate /alu_reg_testbench/alu_reg_1/FA_cin
add wave -noupdate /alu_reg_testbench/alu_reg_1/FA_cout
add wave -noupdate /alu_reg_testbench/alu_reg_1/clk
add wave -noupdate /alu_reg_testbench/alu_reg_1/i_full_adder/din0
add wave -noupdate /alu_reg_testbench/alu_reg_1/i_full_adder/din1
add wave -noupdate /alu_reg_testbench/alu_reg_1/i_full_adder/dout
add wave -noupdate /alu_reg_testbench/alu_reg_1/i_full_adder/result
add wave -noupdate /alu_reg_testbench/alu_reg_1/i_full_adder/cin_vector
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
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
WaveRestoreZoom {1050 ns} {2050 ns}
