
module rx_clk_gen (
    input wire   I_mipi_clk_p,
    input wire   I_rst,

    output wire  O_clk,
    output wire  O_clk_x2,
    output wire  O_clk_x4
);
    
    EF2_LOGIC_BUFIO #(
        .DIV( 2 )
    )U_io_clk_div_0_io( 
        .clki	 ( I_mipi_clk_p ),
        .rst	 ( I_rst	    ),
        .coe	 ( 1'b1		    ),
        .clko	 ( ),       
        .clkdiv1 ( O_clk_x4     ),
        .clkdivx ( O_clk_x2     )
    );

    EF2_LOGIC_BUFIO #(
        .DIV( 4 )
    )U_io_clk_div_1_io( 
        .clki	 ( I_mipi_clk_p ),
        .rst	 ( I_rst		),
        .coe	 ( 1'b1		    ),
        .clko	 ( ),       
        .clkdiv1 ( ),
        .clkdivx ( O_clk        )
    );


endmodule