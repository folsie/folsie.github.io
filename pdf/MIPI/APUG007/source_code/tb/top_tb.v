// Verilog testbench created by TD v4.6.14756
// 2020-02-25 12:04:02

`timescale 1ns / 1ps

module top_tb();

reg byte_clk;
reg ctrl_clk;
reg rstn;
reg config_done;
reg te_in;

wire byte_data_en_o;
wire byte_data_out_o;
wire te_out;

//Clock process
parameter PERIOD = 6.7;
parameter PERIOD_1 = 8.9;

always #(PERIOD/2) ctrl_clk = ~ctrl_clk;

always #(PERIOD_1/2) byte_clk = ~byte_clk;

//glbl Instantiate
glbl glbl();

///////////////////////////////////////////
parameter HWIDTH = 1080;//720;//24bits 

parameter HTOTAL = 1020;//32bits 
parameter VTOTAL = 1960;//
wire Row_rd_req;
reg rd_pixel_en;
reg Sdr_rd_pixel_en;
reg [31:0] Sdr_rd_pixel_dat;

reg [10:0] sdr_rd_cnt;
reg Row_rd_req_d1,Row_rd_req_d2,Row_rd_req_d3;
reg Row_rd_req_rising;


reg [4:0] rdy_cnt;
reg		  hs_data_rdy;

reg [11:0] hcnt;
reg [11:0] vcnt;

always @(posedge byte_clk, negedge rstn)
begin
	if(~rstn)
		hcnt <= 12'd0;
	else if(hcnt == 12'd1019)
		hcnt <= 12'd0;
	else
		hcnt <= hcnt + 1'b1;
end

always @(posedge byte_clk, negedge rstn)
begin
	if(~rstn)
		vcnt <= 'd0;
	else if(hcnt == HTOTAL -1'b1)
		if(vcnt == VTOTAL - 1'b1)
			vcnt <= vcnt;//'d0;
		else
			vcnt <= vcnt + 1'b1;
	else
		vcnt <= vcnt;
end

always @(posedge byte_clk, negedge rstn)
begin
	if (!rstn)
		te_in <= 1'b0;
	else
		te_in <= (vcnt>0)&&(vcnt<4);
end

always@(posedge byte_clk ,negedge rstn)
begin
	if(!rstn)
		rdy_cnt <= 'd0;
	else if (~byte_data_en_o)
		rdy_cnt <= 'd0;
	else if (rdy_cnt=='d15)
		rdy_cnt <= 'd15;
	else if (byte_data_en_o)
		rdy_cnt <= rdy_cnt + 1;	
end

always@(posedge byte_clk ,negedge rstn)
begin
	if(!rstn)
		hs_data_rdy <= 1'b0;
	else if (rdy_cnt>='d15)
		hs_data_rdy <= 1'b1;
	else
		hs_data_rdy <= 1'b0;
end


always@(posedge ctrl_clk)
begin
	Row_rd_req_d1 <= Row_rd_req;
	Row_rd_req_d2 <= Row_rd_req_d1;
	Row_rd_req_d3 <= Row_rd_req_d2;
	Row_rd_req_rising <= Row_rd_req_d2 && (!Row_rd_req_d3);
end

always@(posedge ctrl_clk ,negedge rstn)
begin
	if(!rstn)
		rd_pixel_en <= 1'b0;
	else if (Row_rd_req_rising)
		rd_pixel_en <= 1'b1;
	else if (sdr_rd_cnt== HWIDTH-1)
		rd_pixel_en <= 1'b0;
	
end

always@(posedge ctrl_clk ,negedge rstn)
begin
	if(!rstn)
		sdr_rd_cnt <= 'd0;
	else if(sdr_rd_cnt== HWIDTH-1)
		sdr_rd_cnt <= 'd0;
	else if (rd_pixel_en)
		sdr_rd_cnt <= sdr_rd_cnt + 1;
	
end

reg [1:0] rgb_cnt;
always@(posedge ctrl_clk ,negedge rstn)
begin
	if(!rstn)
		rgb_cnt <= 'd0;
	else if (rgb_cnt=='d3)
		rgb_cnt <= 'd0;
	else if (rd_pixel_en)
		rgb_cnt <= rgb_cnt + 1;
	else
		rgb_cnt <= 'd0;
end

reg [7:0] b,g,r;
reg [7:0] b_f,g_f,r_f;
always@(posedge ctrl_clk ,negedge rstn)
begin
	if(!rstn)
	begin
		r <= 8'h00;
		g <= 8'h00;
		b <= 8'h00;
	end
	else if (rd_pixel_en)
	begin
		b <= 8'h00;
		g <= 8'h00;
		r <= r + 1;//8'hff;
	end
	else
	begin
		b <= 8'h00;
		g <= 8'h00;
		r <= 8'h00;
	end
end

always@(posedge ctrl_clk)
begin
	r_f <= r;	
	b_f <= b;	
	g_f <= g;
end


always@(posedge ctrl_clk ,negedge rstn)
begin
	if(!rstn)
	begin
		Sdr_rd_pixel_dat <= 32'd0;
	end
	else if (rd_pixel_en)
	begin
		case(rgb_cnt)
			2'b01:
				Sdr_rd_pixel_dat <= {b,r_f,g_f,b_f};
			2'b10:
				Sdr_rd_pixel_dat <= {g,b,r_f,g_f};
			2'b11:
				Sdr_rd_pixel_dat <= {r,g,b,r_f};
			default:
				Sdr_rd_pixel_dat <= Sdr_rd_pixel_dat;
		endcase
	end	
	else 
	begin
		Sdr_rd_pixel_dat <= 32'd0;
	end	
end

always@(posedge ctrl_clk ,negedge rstn)
begin
	if(!rstn)
	begin
		Sdr_rd_pixel_en <= 1'b0;
	end
	else if (rd_pixel_en && (rgb_cnt!=0))
		Sdr_rd_pixel_en <= 1'b1;
	else
		Sdr_rd_pixel_en <= 1'b0;
end
///////////////////////////////////////////////////////////////

//Unit Instantiate
mipi_driver_tp mipi_driver_tp_u
(
	.rstn         (rstn),					
	.ctrl_clk     (ctrl_clk),
	.byte_clk	 (byte_clk      ),
	
	.config_done  (config_done    ),
	.hs_data_rdy  (hs_data_rdy   ),

	
	.Row_rd_req		(Row_rd_req),
	.Sdr_rd_pixel_en (Sdr_rd_pixel_en),
	.Sdr_rd_pixel_dat (Sdr_rd_pixel_dat),
	
	.byte_data_en_o (byte_data_en_o        ),
	.byte_data_out_o (byte_data_out_o      ),
	
	.te_in			(te_in),
	.te_out 		(te_out)
	
 );

//Stimulus process
initial begin
//To be inserted
	
	rstn = 1'b0;
	ctrl_clk = 1'b0;
	byte_clk = 1'b0;

	config_done = 1'b0;	
	te_in = 1'b0;
	
	#100
	
	rstn = 1'b1;
	
	#100
	config_done = 1'b1;
	
	
	 
end





endmodule