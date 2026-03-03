

module design_top_wrapper (
	input wire      I_sys_clk,
	input wire      I_rst_n,

    input wire      I_mipi_clk_lane_p,  
    inout wire[3:0] IO_mipi_data_lane_p,
    inout wire[3:0] IO_mipi_data_lane_n,

    output wire     O_test
);

    wire       S_hs_rx_clk;    
    wire       S_hs_rx_valid; 
    wire[31:0] S_hs_rx_data;  
    wire       S_lp_clk;    
    wire       S_lp_rx_lane0_p;  
    wire       S_lp_rx_lane0_n;  
    wire[3:0]  S_lane_error;


    pll u_pll(
        .refclk   ( I_sys_clk   ),
        .reset    ( ~I_rst_n    ),
        .extlock  (  ),
        .clk0_out ( S_lp_clk    )
    );


    assign O_test = S_hs_rx_valid ^ S_hs_rx_data ? 1'b1 : 1'b0;


    mipi_dphy_rx_ef2_mipiio_wrapper#(
        .LANE_NUM ( 4 )
    )u_mipi_dphy_rx_ef2_mipiio_wrapper(
        .I_lp_clk        ( S_lp_clk            ),
        .I_rst           ( ~I_rst_n            ),

        .I_mipi_clk_p    ( I_mipi_clk_lane_p   ),
        .IO_mipi_data_p  ( IO_mipi_data_lane_p ),
        .IO_mipi_data_n  ( IO_mipi_data_lane_n ),

        .I_lane_invert   ( 4'b0000             ),

        .I_lp_tx_en      ( 1'b0                ),
        .I_lp_tx_lane0_p ( 1'b0                ),
        .I_lp_tx_lane0_n ( 1'b0                ),

        .O_lp_rx_lane0_p ( S_lp_rx_lane0_p     ),
        .O_lp_rx_lane0_n ( S_lp_rx_lane0_n     ),

        .O_hs_rx_clk     ( S_hs_rx_clk         ),
        .O_hs_rx_valid   ( S_hs_rx_valid       ),
        .O_hs_rx_data    ( S_hs_rx_data        ),

        .O_lane_error    ( S_lane_error        )
    );






    
endmodule