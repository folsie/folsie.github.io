onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /top_tb/mipi_driver_tp_u/rstn
add wave -noupdate /top_tb/mipi_driver_tp_u/ctrl_clk
add wave -noupdate /top_tb/mipi_driver_tp_u/byte_clk
add wave -noupdate /top_tb/mipi_driver_tp_u/config_done
add wave -noupdate /top_tb/mipi_driver_tp_u/hs_data_rdy
add wave -noupdate /top_tb/mipi_driver_tp_u/Row_rd_req
add wave -noupdate /top_tb/mipi_driver_tp_u/Sdr_rd_pixel_en
add wave -noupdate /top_tb/mipi_driver_tp_u/Sdr_rd_pixel_dat
add wave -noupdate /top_tb/mipi_driver_tp_u/byte_data_en_o
add wave -noupdate /top_tb/mipi_driver_tp_u/byte_data_out_o
add wave -noupdate /top_tb/mipi_driver_tp_u/te_in
add wave -noupdate /top_tb/mipi_driver_tp_u/te_out
add wave -noupdate /top_tb/mipi_driver_tp_u/buf_out_data
add wave -noupdate /top_tb/mipi_driver_tp_u/addra
add wave -noupdate /top_tb/mipi_driver_tp_u/addrb
add wave -noupdate /top_tb/mipi_driver_tp_u/frm_wr
add wave -noupdate /top_tb/mipi_driver_tp_u/frm_rd
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
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
configure wave -timelineunits ps
update
WaveRestoreZoom {100250 ns} {205250 ns}
