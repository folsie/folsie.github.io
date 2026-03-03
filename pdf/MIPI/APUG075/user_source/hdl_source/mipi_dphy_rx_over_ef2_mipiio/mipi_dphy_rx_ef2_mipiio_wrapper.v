

module mipi_dphy_rx_ef2_mipiio_wrapper #(
    parameter LANE_NUM = 4
    )(
    input wire                    I_lp_clk,
    input wire                    I_rst,
    
    input wire                    I_mipi_clk_p,
    inout wire[LANE_NUM-1 : 0]    IO_mipi_data_p,
    inout wire[LANE_NUM-1 : 0]    IO_mipi_data_n,
   
	input wire[LANE_NUM-1 : 0]    I_lane_invert,

    input wire                    I_lp_tx_en,
    input wire                    I_lp_tx_lane0_p,
    input wire                    I_lp_tx_lane0_n,

    output wire                   O_lp_rx_lane0_p,
    output wire                   O_lp_rx_lane0_n,

    output wire                   O_hs_rx_clk,
    output wire                   O_hs_rx_valid,
    output wire[LANE_NUM*8-1 : 0] O_hs_rx_data,
    
	output wire[LANE_NUM-1 : 0]   O_lane_error
);
    
    wire                 S_rx_hs_clk;
    wire                 S_rx_hs_clk_x2;
    wire                 S_rx_hs_clk_x4;
    wire[LANE_NUM-1 : 0] S_data_lp_p;
    wire[LANE_NUM-1 : 0] S_data_lp_n;

    rx_clk_gen u_rx_clk_gen(
        .I_mipi_clk_p ( I_mipi_clk_p ),
        .I_rst        ( I_rst        ),
        .O_clk        ( S_hs_clk     ),
        .O_clk_x2     ( S_hs_clk_x2  ),
        .O_clk_x4     ( S_hs_clk_x4  )
    );

    assign O_hs_rx_clk = S_hs_clk;


    hs_rx_wrapper#(
        .LANE_NUM    ( LANE_NUM )
    )u_hs_rx_wrapper(
        .I_hs_clk      ( S_hs_clk        ),
        .I_hs_clk_x2   ( S_hs_clk_x2     ),
        .I_hs_clk_x4   ( S_hs_clk_x4     ),
        .I_lp_clk      ( I_lp_clk        ),
        .I_rst         ( I_rst           ),

		.I_lane_invert ( I_lane_invert   ),
                      
        .IO_mipi_p     ( IO_mipi_data_p  ),
        .IO_mipi_n     ( IO_mipi_data_n  ),

        .I_lp_tx_en    ( I_lp_tx_en      ),
        .I_lp_tx_p     ( I_lp_tx_lane0_p ),
        .I_lp_tx_n     ( I_lp_tx_lane0_n ),

        .O_lp_rx_p     ( O_lp_rx_lane0_p ),
        .O_lp_rx_n     ( O_lp_rx_lane0_n ),
                         
        .O_hs_valid    ( O_hs_rx_valid   ),
        .O_hs_data     ( O_hs_rx_data    ),        
           
		.O_lane_error  ( O_lane_error    )
    );



endmodule