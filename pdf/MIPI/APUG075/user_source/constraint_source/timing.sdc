create_clock -name SYS_CLK_25M -period 40 -waveform {0 20} [get_ports {I_sys_clk}]

derive_pll_clocks
rename_clock -name {LP_CLK} -source [get_ports {I_sys_clk}] -master_clock {u_pll/pll_inst.refclk} [get_pins {u_pll/pll_inst.clkc[0]}]

create_clock -name MIPI_CLK -period 5 -waveform {0 2.5} [get_ports {I_mipi_clk_lane_p}]
create_generated_clock -name CLK_4x -source [get_ports {I_mipi_clk_lane_p}] -master_clock {MIPI_CLK} -divide_by 1 -phase 0 [get_pins {u_mipi_dphy_rx_ef2_mipiio_wrapper/u_rx_clk_gen/U_io_clk_div_0_*.clkdiv1}]
create_generated_clock -name CLK_2x -source [get_ports {I_mipi_clk_lane_p}] -master_clock {MIPI_CLK} -divide_by 2 -phase 0 [get_pins {u_mipi_dphy_rx_ef2_mipiio_wrapper/u_rx_clk_gen/U_io_clk_div_0_*.clkdivx}]
create_generated_clock -name CLK_1x -source [get_ports {I_mipi_clk_lane_p}] -master_clock {MIPI_CLK} -divide_by 4 -phase 0 [get_pins {u_mipi_dphy_rx_ef2_mipiio_wrapper/u_rx_clk_gen/U_io_clk_div_1_*.clkdivx}]

set_clock_groups -exclusive -group [get_clocks {LP_CLK}] -group [get_clocks {CLK_1x CLK_2x CLK_4x MIPI_CLK}]