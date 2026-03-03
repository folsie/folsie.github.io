module hs_rx_wrapper #(
    parameter LANE_NUM = 4
    )(
    input wire                  I_hs_clk,
    input wire                  I_hs_clk_x2,
    input wire                  I_hs_clk_x4,
    input wire                  I_lp_clk,
    input wire                  I_rst,

	input wire[LANE_NUM-1:0]    I_lane_invert,

    inout wire[LANE_NUM-1:0]    IO_mipi_p,
    inout wire[LANE_NUM-1:0]    IO_mipi_n,

    input wire                  I_lp_tx_en,
    input wire                  I_lp_tx_p,
    input wire                  I_lp_tx_n,

    output wire                 O_lp_rx_p,
    output wire                 O_lp_rx_n,

    output wire                 O_hs_valid,
    output wire[LANE_NUM*8-1:0] O_hs_data,    
    
	output wire[LANE_NUM-1:0]   O_lane_error
);


    wire[LANE_NUM-1:0] S_hs_valid;                   
    wire[7:0]          S_hs_data[LANE_NUM-1:0];     

    wire[LANE_NUM-1:0] S_ch_aligner_valid;
    wire[7:0]          S_ch_aligner_data[LANE_NUM-1:0];

    genvar i;
    generate
        for(i = 0; i < LANE_NUM; i = i+1) begin :   MIPI_DATA_LANE_GEN
            if(i == 0) 
                begin
                    data_lane_rx_wrapper u_data_lane_rx_wrapper(
                        .I_hs_clk_x4      ( I_hs_clk_x4      ),
                        .I_hs_clk_x2      ( I_hs_clk_x2      ),
                        .I_hs_clk         ( I_hs_clk         ),
                        .I_lp_clk         ( I_lp_clk         ),
                        .I_rst            ( I_rst            ),

                        .I_lane_invert    ( I_lane_invert[0] ),

                        .IO_mipi_p        ( IO_mipi_p[0]     ),
                        .IO_mipi_n        ( IO_mipi_n[0]     ),

                        .I_lp_tx_en       ( I_lp_tx_en       ),
                        .I_lp_tx_p        ( I_lp_tx_p        ),
                        .I_lp_tx_n        ( I_lp_tx_n        ),

                        .O_lp_rx_p        ( O_lp_rx_p        ),
                        .O_lp_rx_n        ( O_lp_rx_n        ),

                        .O_hs_valid       ( S_hs_valid[0]    ),
                        .O_hs_data        ( S_hs_data[0]     ),
                        
                        .O_lane_error     ( O_lane_error[0]  )
                    );
                end
            else
                begin
                    data_lane_rx_wrapper u_data_lane_rx_wrapper(
                        .I_hs_clk_x4      ( I_hs_clk_x4      ),
                        .I_hs_clk_x2      ( I_hs_clk_x2      ),
                        .I_hs_clk         ( I_hs_clk         ),
                        .I_lp_clk         ( I_lp_clk         ),
                        .I_rst            ( I_rst            ),

                        .I_lane_invert    ( I_lane_invert[i] ),

                        .IO_mipi_p        ( IO_mipi_p[i]     ),
                        .IO_mipi_n        ( IO_mipi_n[i]     ),

                        .I_lp_tx_en       ( 1'b0             ),
                        .I_lp_tx_p        ( 1'b0             ),
                        .I_lp_tx_n        ( 1'b0             ),

                        .O_lp_rx_p        (                  ),
                        .O_lp_rx_n        (                  ),

                        .O_hs_valid       ( S_hs_valid[i]    ),
                        .O_hs_data        ( S_hs_data[i]     ),
                        
                        .O_lane_error     ( O_lane_error[i]  )
                    );
                end

        end
    endgenerate


    channel_aligner_wrapper#(
        .CH_NUM             ( LANE_NUM ),
        .DATA_WIDTH         ( 8        )
    )u_channel_aligner_wrapper(
        .I_clk              ( I_hs_clk           ),
        .I_rst_n            ( ~I_rst             ),
                
        .I_ch_valid         ( S_hs_valid         ),
        .I_ch_data          ( S_hs_data          ),

        .O_ch_aligner_valid ( S_ch_aligner_valid ),
        .O_ch_aligner_data  ( S_ch_aligner_data  )
    );


    assign O_hs_valid = &S_ch_aligner_valid;


    generate
        for(i = 0; i < LANE_NUM; i = i+1) begin :   MIPI_DATA_MERGE
            assign O_hs_data[(i+1)*8-1 : i*8] = S_ch_aligner_data[LANE_NUM-1-i];
        end
    endgenerate


endmodule