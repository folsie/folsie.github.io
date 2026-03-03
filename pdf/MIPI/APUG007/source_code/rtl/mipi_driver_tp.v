module mipi_driver_tp
(
	input rstn,
	input ctrl_clk,
	input byte_clk,	
	input config_done,
	input hs_data_rdy,
	
	output Row_rd_req,
	input Sdr_rd_pixel_en,
	input [31:0] Sdr_rd_pixel_dat,
	
	output wire byte_data_en_o,
	output wire [31:0] byte_data_out_o,

	
	input	te_in,
	output 	te_out
	
 );

////////////for test///simulate///////////////////////////////
//localparam HWIDTH = 1080;//720;
//wire Row_rd_req;
//reg rd_pixel_en;
//reg Sdr_rd_pixel_en;
//reg [31:0] Sdr_rd_pixel_dat;

//reg [10:0] sdr_rd_cnt;
//reg Row_rd_req_d1,Row_rd_req_d2,Row_rd_req_d3;
//reg Row_rd_req_rising;


////reg [4:0] rdy_cnt;
////reg		  hs_data_rdy;
////always@(posedge byte_clk ,negedge rstn)
////begin
////	if(!rstn)
////		rdy_cnt <= 'd0;
////	else if (~byte_data_en_o)
////		rdy_cnt <= 'd0;
////	else if (rdy_cnt=='d15)
////		rdy_cnt <= 'd15;
////	else if (byte_data_en_o)
////		rdy_cnt <= rdy_cnt + 1;	
////end

////always@(posedge byte_clk ,negedge rstn)
////begin
////	if(!rstn)
////		hs_data_rdy <= 1'b0;
////	else if (rdy_cnt>='d15)
////		hs_data_rdy <= 1'b1;
////	else
////		hs_data_rdy <= 1'b0;
////end


//always@(posedge ctrl_clk)
//begin
//	Row_rd_req_d1 <= Row_rd_req;
//	Row_rd_req_d2 <= Row_rd_req_d1;
//	Row_rd_req_d3 <= Row_rd_req_d2;
//	Row_rd_req_rising <= Row_rd_req_d2 && (!Row_rd_req_d3);
//end

//always@(posedge ctrl_clk ,negedge rstn)
//begin
//	if(!rstn)
//		rd_pixel_en <= 1'b0;
//	else if (Row_rd_req_rising)
//		rd_pixel_en <= 1'b1;
//	else if (sdr_rd_cnt== HWIDTH-1)
//		rd_pixel_en <= 1'b0;
	
//end

//always@(posedge ctrl_clk ,negedge rstn)
//begin
//	if(!rstn)
//		sdr_rd_cnt <= 'd0;
//	else if(sdr_rd_cnt== HWIDTH-1)
//		sdr_rd_cnt <= 'd0;
//	else if (rd_pixel_en)
//		sdr_rd_cnt <= sdr_rd_cnt + 1;
	
//end

//reg [1:0] rgb_cnt;
//always@(posedge ctrl_clk ,negedge rstn)
//begin
//	if(!rstn)
//		rgb_cnt <= 'd0;
//	else if (rgb_cnt=='d3)
//		rgb_cnt <= 'd0;
//	else if (rd_pixel_en)
//		rgb_cnt <= rgb_cnt + 1;
//	else
//		rgb_cnt <= 'd0;
//end

//reg [7:0] b,g,r;
//reg [7:0] b_f,g_f,r_f;
//always@(posedge ctrl_clk ,negedge rstn)
//begin
//	if(!rstn)
//	begin
//		r <= 8'h00;
//		g <= 8'h00;
//		b <= 8'h00;
//	end
//	else if (rd_pixel_en)
//	begin
//		b <= 8'h00;
//		g <= 8'h00;
//		r <= r + 1;//8'hff;
//	end
//	else
//	begin
//		b <= 8'h00;
//		g <= 8'h00;
//		r <= 8'h00;
//	end
//end

//always@(posedge ctrl_clk)
//begin
//	r_f <= r;	
//	b_f <= b;	
//	g_f <= g;
//end


//always@(posedge ctrl_clk ,negedge rstn)
//begin
//	if(!rstn)
//	begin
//		Sdr_rd_pixel_dat <= 32'd0;
//	end
//	else if (rd_pixel_en)
//	begin
//		case(rgb_cnt)
//			2'b01:
//				Sdr_rd_pixel_dat <= {b,r_f,g_f,b_f};
//			2'b10:
//				Sdr_rd_pixel_dat <= {g,b,r_f,g_f};
//			2'b11:
//				Sdr_rd_pixel_dat <= {r,g,b,r_f};
//			default:
//				Sdr_rd_pixel_dat <= Sdr_rd_pixel_dat;
//		endcase
//	end	
//	else 
//	begin
//		Sdr_rd_pixel_dat <= 32'd0;
//	end	
//end

//always@(posedge ctrl_clk ,negedge rstn)
//begin
//	if(!rstn)
//	begin
//		Sdr_rd_pixel_en <= 1'b0;
//	end
//	else if (rd_pixel_en && (rgb_cnt!=0))
//		Sdr_rd_pixel_en <= 1'b1;
//	else
//		Sdr_rd_pixel_en <= 1'b0;
//end
///////////////////////////////////////////////////////////////
//////////////////////////////////////////////
wire [31:0] buf_out_data;
wire [9:0] addra;
wire [9:0] addrb;
wire frm_wr;
wire frm_rd;


///9K bram
video_buf video_buf_u( 			 
			.clka(ctrl_clk),
			.cea(Sdr_rd_pixel_en),
			.addra({frm_wr,addra}),
			.dia(Sdr_rd_pixel_dat),
			 
			.clkb(byte_clk),
			.ceb(1'b1),
			.addrb({frm_rd,addrb}),
			.dob(buf_out_data)
);	


//////32K bram
//video_data video_buf_u( 			 
//			.clka(ctrl_clk),
//			.cea(Sdr_rd_pixel_en),
//			.addra({frm_wr,addra}),
//			.dia(Sdr_rd_pixel_dat),
			
//			.clkb(byte_clk),
//			.ceb(1'b1),
//			.addrb({frm_rd,addrb}),
//			.dob (buf_out_data)
//);	


//////////////////////////////////////////////

mipi_driver_gen 
#(
	.H_CNT_WIDTH (11),
	.V_CNT_WIDTH (12),
	
	.HTOTAL( 1020 ),//(760)  ,
	.HWIDTH( 810  ),//(540)  ,//720x3/4
	.HBP   ( 84   ),//(94)   ,
	.HFP   ( 106  ),//(106)   ,
	.HSA   ( 20   ),//(20)   ,

	.VTOTAL(1960),//(1316) ,
	.VWIDTH(1920),//(1520),//(1280) ,
	.VBP(6),//(12)   ,
	.VFP(30),//(20)   ,	
	.VSA(4)//(4)   
	
//	.HBP_BP_CMD(32'h3e014619),//{ecc,wc[15:8],wc[7:0],DI},wc=(HBP-3)*4+2
//	.HSA_BP_CMD(32'h0f003E19),//{ecc,wc[15:8],wc[7:0],DI},wc=(HSA-5)*4+2
//	.VACT_ST_CMD(32'h220ca83e)//{ecc,wc[15:8],wc[7:0],DI},wc=HWIDTH*4
)
mipi_driver_gen_u
( 
	.rstn				(rstn),
	.byte_clk			(byte_clk),
	.ctrl_clk			(ctrl_clk),
	                    
	.congfig_done		(config_done),
	.hs_data_rdy		(hs_data_rdy),
	                    
	//psram             
	.Sdr_rd_pixel_en	(Sdr_rd_pixel_en),
	.Row_rd_req			(Row_rd_req),
	                    
	//video_buf         
	.frm_wr				(frm_wr),
    .addra				(addra),
    .frm_rd				(frm_rd),
    .buf_out_data		(buf_out_data),
    .addrb				(addrb),
	                    
	//mipi data out     
	.byte_data_en_o		(byte_data_en_o),
	.byte_data_out_o	(byte_data_out_o),
	                    
	//mipi te           
	.i_te				(te_in			),
	.vs_capture			(te_out			)
);


endmodule
