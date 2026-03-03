// Verilog netlist created by TD v4.6.14756
// Mon May 11 17:59:20 2020

`timescale 1ns / 1ps
module video_buf  // src/lhx_mipi_gen/al_ip/video_buf.v(14)
  (
  addra,
  addrb,
  cea,
  ceb,
  clka,
  clkb,
  dia,
  dob
  );

  input [10:0] addra;  // src/lhx_mipi_gen/al_ip/video_buf.v(23)
  input [10:0] addrb;  // src/lhx_mipi_gen/al_ip/video_buf.v(24)
  input cea;  // src/lhx_mipi_gen/al_ip/video_buf.v(25)
  input ceb;  // src/lhx_mipi_gen/al_ip/video_buf.v(26)
  input clka;  // src/lhx_mipi_gen/al_ip/video_buf.v(27)
  input clkb;  // src/lhx_mipi_gen/al_ip/video_buf.v(28)
  input [31:0] dia;  // src/lhx_mipi_gen/al_ip/video_buf.v(22)
  output [31:0] dob;  // src/lhx_mipi_gen/al_ip/video_buf.v(19)


  EF2_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();
  // address_offset=0;data_offset=0;depth=2048;width=4;num_section=1;width_per_section=4;section_size=32;working_depth=2048;working_width=4;address_step=1;bytes_in_per_section=1;
  EF2_PHY_BRAM #(
    .CSA0("1"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("4"),
    .DATA_WIDTH_B("4"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_2048x32_sub_000000_000 (
    .addra({addra,2'b11}),
    .addrb({addrb,2'b11}),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .dia({open_n53,open_n54,open_n55,open_n56,open_n57,dia[3:0]}),
    .dob({open_n82,open_n83,open_n84,open_n85,open_n86,dob[3:0]}));
  // address_offset=0;data_offset=4;depth=2048;width=4;num_section=1;width_per_section=4;section_size=32;working_depth=2048;working_width=4;address_step=1;bytes_in_per_section=1;
  EF2_PHY_BRAM #(
    .CSA0("1"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("4"),
    .DATA_WIDTH_B("4"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_2048x32_sub_000000_004 (
    .addra({addra,2'b11}),
    .addrb({addrb,2'b11}),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .dia({open_n93,open_n94,open_n95,open_n96,open_n97,dia[7:4]}),
    .dob({open_n122,open_n123,open_n124,open_n125,open_n126,dob[7:4]}));
  // address_offset=0;data_offset=8;depth=2048;width=4;num_section=1;width_per_section=4;section_size=32;working_depth=2048;working_width=4;address_step=1;bytes_in_per_section=1;
  EF2_PHY_BRAM #(
    .CSA0("1"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("4"),
    .DATA_WIDTH_B("4"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_2048x32_sub_000000_008 (
    .addra({addra,2'b11}),
    .addrb({addrb,2'b11}),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .dia({open_n133,open_n134,open_n135,open_n136,open_n137,dia[11:8]}),
    .dob({open_n162,open_n163,open_n164,open_n165,open_n166,dob[11:8]}));
  // address_offset=0;data_offset=12;depth=2048;width=4;num_section=1;width_per_section=4;section_size=32;working_depth=2048;working_width=4;address_step=1;bytes_in_per_section=1;
  EF2_PHY_BRAM #(
    .CSA0("1"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("4"),
    .DATA_WIDTH_B("4"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_2048x32_sub_000000_012 (
    .addra({addra,2'b11}),
    .addrb({addrb,2'b11}),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .dia({open_n173,open_n174,open_n175,open_n176,open_n177,dia[15:12]}),
    .dob({open_n202,open_n203,open_n204,open_n205,open_n206,dob[15:12]}));
  // address_offset=0;data_offset=16;depth=2048;width=4;num_section=1;width_per_section=4;section_size=32;working_depth=2048;working_width=4;address_step=1;bytes_in_per_section=1;
  EF2_PHY_BRAM #(
    .CSA0("1"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("4"),
    .DATA_WIDTH_B("4"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_2048x32_sub_000000_016 (
    .addra({addra,2'b11}),
    .addrb({addrb,2'b11}),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .dia({open_n213,open_n214,open_n215,open_n216,open_n217,dia[19:16]}),
    .dob({open_n242,open_n243,open_n244,open_n245,open_n246,dob[19:16]}));
  // address_offset=0;data_offset=20;depth=2048;width=4;num_section=1;width_per_section=4;section_size=32;working_depth=2048;working_width=4;address_step=1;bytes_in_per_section=1;
  EF2_PHY_BRAM #(
    .CSA0("1"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("4"),
    .DATA_WIDTH_B("4"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_2048x32_sub_000000_020 (
    .addra({addra,2'b11}),
    .addrb({addrb,2'b11}),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .dia({open_n253,open_n254,open_n255,open_n256,open_n257,dia[23:20]}),
    .dob({open_n282,open_n283,open_n284,open_n285,open_n286,dob[23:20]}));
  // address_offset=0;data_offset=24;depth=2048;width=4;num_section=1;width_per_section=4;section_size=32;working_depth=2048;working_width=4;address_step=1;bytes_in_per_section=1;
  EF2_PHY_BRAM #(
    .CSA0("1"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("4"),
    .DATA_WIDTH_B("4"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_2048x32_sub_000000_024 (
    .addra({addra,2'b11}),
    .addrb({addrb,2'b11}),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .dia({open_n293,open_n294,open_n295,open_n296,open_n297,dia[27:24]}),
    .dob({open_n322,open_n323,open_n324,open_n325,open_n326,dob[27:24]}));
  // address_offset=0;data_offset=28;depth=2048;width=4;num_section=1;width_per_section=4;section_size=32;working_depth=2048;working_width=4;address_step=1;bytes_in_per_section=1;
  EF2_PHY_BRAM #(
    .CSA0("1"),
    .CSA1("1"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("4"),
    .DATA_WIDTH_B("4"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_2048x32_sub_000000_028 (
    .addra({addra,2'b11}),
    .addrb({addrb,2'b11}),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .dia({open_n333,open_n334,open_n335,open_n336,open_n337,dia[31:28]}),
    .dob({open_n362,open_n363,open_n364,open_n365,open_n366,dob[31:28]}));

endmodule 

