---
title: "JESD204B 从协议原理到 PH1A400 工程落地"
date: 2026-07-09
tags: [JESD204B, FPGA, SerDes, PH1A400, Anlogic]
---

# JESD204B 从协议原理到 PH1A400 工程落地

![JESD204B 文章封面](/pic/204B/jesd204b-cover.png)

本文面向第一次把 JESD204B 跑到 FPGA 板子上的工程师。目标不是替代标准文档，而是把“协议为什么这样设计、板级硬件要连什么、FPGA 里要配置什么、怎么调试”串成一条可执行路线。

参考材料：

- 安路 `IPUG118_JESD204b用户手册.docx`
- 安路 PH1A400 参考工程：`E:\code\TD\6.2.2\customer\dingyang\jesd204b_ph1a400_10G_demo_clk`
- 延伸阅读：[知乎 JESD204B 文章](https://zhuanlan.zhihu.com/p/1959761372205278155)

> 说明：知乎页面在当前环境不能完整抓取，所以本文的工程参数和寄存器描述以本地 IPUG 手册与 PH1A400 参考工程为准。

先把架构中的关键信号认清楚。JESD204B 调试最容易混淆的地方，是把协议层、SerDes 层和板级同步信号混在一起看。下面这张图按 PH1A400 参考工程命名，把需要接线、约束、配置和观测的信号放在同一张图里：

![JESD204B 关键信号架构图](/pic/204B/00-key-signal-architecture.svg)

## 1. 先说清楚 JESD204B 解决什么问题

高速 ADC、DAC 和 RF 收发器的数据率越来越高，传统并行 CMOS/LVDS 总线会遇到几个问题：

- 引脚太多，PCB 走线拥挤。
- 多位并行线之间 skew 难控。
- 多片转换器同步时，确定性延迟不好保证。
- 采样率提升后，接口很快成为系统瓶颈。

JESD204B 把转换器样本流封装成高速串行 lane。它用 8b/10b 编码、lane 对齐、多帧结构和 SYSREF/LMFC 机制，把“高速传输”和“确定性延迟”放在同一套链路里解决。

![JESD204B 链路总览](/pic/204B/01-link-overview.svg)

JESD204B 常见参数可以先按下面这组记：

| 参数 | 含义 | 工程里要关注什么 |
| --- | --- | --- |
| `L` | 每条 link 的 lane 数 | FPGA SerDes 数量、转换器 lane 模式 |
| `M` | 每个器件的 converter 数 | ADC/DAC 内部通道数或虚拟转换器数 |
| `F` | 每帧每 lane 的 octet 数 | 影响帧边界和吞吐 |
| `K` | 每个 multiframe 的帧数 | 影响 LMFC 周期和 ILAS |
| `N` | converter 分辨率 | 真实采样位宽 |
| `N'` | 每个样本传输位宽 | 通常含补齐位 |
| `S` | 每帧每 converter 的样本数 | 与 `F` 一起决定帧组织 |
| `SCR` | 是否加扰 | 两端必须一致 |
| `Subclass` | 同步机制 | Subclass 1 用 SYSREF 做确定性延迟 |

常用估算式：

```text
LaneRate = M * N' * Fs * 10 / (8 * L)
```

这里 `Fs` 是每个 converter 的采样率，`10/8` 是 8b/10b 编码开销。做系统方案时，先用这个式子判断 lane 速率、lane 数和 SerDes 能力是否匹配。

## 2. JESD204B 链路怎么建立

JESD204B 链路通常经历三个阶段：

1. `CGS`：Code Group Synchronization。接收端通过 `SYNC~` 要求发送端发 K28.5，对齐 8b/10b 字符。
2. `ILAS`：Initial Lane Alignment Sequence。发送端发多帧初始化序列，接收端读取 lane ID、L、M、F、K、N、N'、S、Subclass 等参数。
3. `DATA`：进入用户样本数据，链路开始连续传输。

![JESD204B 建链顺序](/pic/204B/02-sync-sequence.svg)

### CGS 看什么

CGS 阶段最关键的是 `SYNC~`。如果接收端一直拉低 `SYNC~`，通常说明接收端还没有完成字符同步。常见原因是 lane 极性反了、SerDes 参考时钟不对、线速率不匹配、8b/10b 设置不一致，或者转换器还没有初始化。

### ILAS 看什么

ILAS 是软件配置错误最容易暴露的阶段。发送端在 ILAS 里把链路参数发给接收端，接收端根据这些字段判断后续数据怎么拆。两端如果 `F/K/L/M/N/N'/S/SCR/Subclass` 不一致，可能表现为能过 CGS，但进入数据阶段后帧边界、样本顺序或错误计数异常。

### DATA 看什么

数据阶段不要只看波形上有没有变化。更可靠的顺序是：

1. 确认 `sync status`。
2. 确认 `rx_tvalid` 或等效数据有效信号。
3. 确认 `start_of_frame`、`end_of_frame`、`start_of_multiframe`。
4. 用 PRBS、计数器、固定 pattern 或已知正弦表做数据一致性检查。

## 3. Subclass 0 和 Subclass 1 的工程差异

Subclass 0 不依赖 SYSREF，延迟可重复性弱一些，适合对确定性延迟要求不高的场景。多链路 TX 时，Subclass 0 往往需要合并多个转换器的 `SYNC~`，让所有链路同时发送初始化 lane 对齐序列。

Subclass 1 引入 SYSREF 和 LMFC。SYSREF 用来把 FPGA 与转换器里的 LMFC 边界对齐，从而获得可重复的确定性延迟。对多通道、多器件、相控阵、同步采样系统来说，Subclass 1 通常是优先选择。

实际项目里，Subclass 1 的关键不是“有一根 SYSREF 线”这么简单，而是：

- FPGA 和转换器的参考时钟要同源或有明确相位关系。
- SYSREF 到 FPGA 和转换器的到达时间要可控。
- SYSREF 采样边沿要与 IP 配置一致。
- `SYSREF Always` 策略要明确：每次 SYSREF 都重新对齐，还是只在复位后的第一次 SYSREF 对齐。

## 4. 硬件电路怎么画

JESD204B 硬件连接至少包含四类信号：高速 lane、参考时钟/SYSREF、同步反馈、低速控制。

![JESD204B 硬件连接](/pic/204B/03-hardware-circuit.svg)

### 4.1 高速 lane

高速 lane 是 FPGA SerDes 和转换器 SerDes 之间的差分对。画板时重点检查：

- 差分阻抗按器件和板厂要求控制。
- TX/RX 方向不要接反。
- P/N 极性要确认，若硬件允许极性翻转，也要在软件或 FPGA 里落实。
- AC 耦合电容按转换器和 FPGA SerDes 建议放置。
- 同一 link 内 lane 间长度差要受控。
- 过孔、连接器、跨层参考平面要避免造成明显不连续。

### 4.2 参考时钟和 SYSREF

JESD204B 的“链路能跑”和“延迟确定”是两件事。前者主要靠 SerDes 参考时钟和 CDR，后者还需要 SYSREF 与 LMFC 对齐。

硬件上推荐让时钟芯片同时给 FPGA 和转换器输出：

- SerDes 参考时钟。
- 转换器采样或器件时钟。
- SYSREF，周期性或单次脉冲均可，但必须和配置策略一致。

### 4.3 SYNC / SYNCINB

`SYNC~` 是接收端反馈给发送端的同步状态信号。在很多转换器里它叫 `SYNCINB`。如果 FPGA 做 RX，通常 FPGA 输出 `SYNCINB` 给 ADC；如果 FPGA 做 TX，通常转换器输出 `SYNC~` 给 FPGA。

注意 `SYNC~` 常常是低有效，命名里的 `B` 也暗示反相含义。不要只按信号名连接，要结合芯片手册确认电平极性和 IO 标准。

### 4.4 低速控制

转换器通常还需要 SPI 初始化。JESD204B IP 自身则通过 AXI-Lite 或等效寄存器接口配置。工程上要把两段初始化顺序排清楚：

1. 时钟芯片稳定。
2. 转换器 SPI 初始化完成。
3. FPGA SerDes/IP 复位释放。
4. AXI-Lite 写 JESD204B 寄存器。
5. 发起或等待 SYSREF。
6. 观察 `SYNC~` 释放和数据有效。

## 5. 安路 JESD204B IP 的边界

根据 IPUG118，安路 JESD204B IP 可配置为 TX 或 RX，最高支持 4 lane，最高支持 9.8304 Gbps，支持 Subclass 0/1，支持通过 AXI-Lite 访问配置和状态寄存器。手册里还明确：JESD204B core 本身不等同于 SerDes，JESD204B_TX/RX 需要和 SerDes 配合使用。

这点非常重要。调试时要把问题拆成三层：

- 用户逻辑层：样本产生、样本接收、pattern checker。
- JESD204B 链路层：CGS、ILAS、加扰、帧/多帧边界、错误计数。
- SerDes 物理层：参考时钟、PLL/CDR、8b/10b、word alignment、差分 lane。

## 6. PH1A400 参考工程拆解

用户提供的工程路径：

```text
E:\code\TD\6.2.2\customer\dingyang\jesd204b_ph1a400_10G_demo_clk
```

扫描结果显示主工程在：

```text
impl\auto_test
```

工程器件为 `PH1A400SFG900`，顶层模块为 `serdes_jesd_case1`。工程结构可以简化成下图：

![PH1A400 参考工程结构](/pic/204B/04-ph1a400-demo.svg)

### 6.1 顶层端口

`serdes_jesd_case1.v` 是 demo 顶层，核心端口包括：

| 端口 | 方向 | 作用 |
| --- | --- | --- |
| `ref_clkp/ref_clkn` | input | SerDes 参考差分时钟 |
| `FPGA_SYSREF` | input | Subclass 1 SYSREF |
| `o_SYNCINB0_P` | output | 输出到 AD9009 的 `SYNCINB0_P` |
| `rx_p/rx_m[LANES-1:0]` | input | 4 lane JESD204B RX 差分输入 |
| `sys_clk_in` | input | AXI-Lite、复位计数等系统时钟 |
| `clk_double_rx` | input | 250 MHz，RX 2 倍用户时钟 |
| `rx_usr2clk_i` | input | 125 MHz，RX 用户时钟 |
| `led1/led2` | output | 复位与数据检查状态指示 |

工程里关键本地参数：

```verilog
localparam RATE             = 2'd1;   // 0=6.144G, 1=9.8304G
localparam LANES            = 4'd4;
localparam DEVICE_SUBCLASS  = 1'b1;
localparam LMFC_BUFFER_SIZE = 4'd8;
localparam SYNC_SUPPORT     = 1'b1;
localparam TEST_MODE        = 2'b00;
localparam SRAMBLING_EN     = 1'b1;
localparam ILA_COUNT        = 8'd3;
localparam BUFFER_DELAY     = 13'd20;
localparam SYSREF_SAMPLE    = 1'b1;
```

注意工程中的 `SRAMBLING_EN` 应理解为 `SCRAMBLING_EN`，是命名拼写问题，不影响含义。

### 6.2 工程的链路参数

RX 配置实例里写死了几个关键参数：

```verilog
.OCTETS_PFRAME       (8'd3),
.FRAME_PMULTIFRAME   (5'd31),
.SYSREF_ALWAYS       (1'b1),
.SRAMBLING_EN        (1'b1),
```

因此这个 demo 可以概括为：

- `L = 4`
- `F = 3`
- `K = 31`
- Subclass 1
- scrambling 开启
- `RATE = 1`，对应 9.8304 Gbps 模式
- `SYSREF_ALWAYS = 1`，所有 SYSREF 事件都允许重新对齐 LMFC

### 6.3 SerDes 配置

`serdes.ipc` 里可以看到：

- 器件：`PH1A400SFG900`
- SerDes IP：`PH1_LOGIC_SERDES`
- 每个 SerDes Dual 覆盖两个通道
- TX/RX 外部数据宽度为 64 bit
- 8b/10b 编码和解码开启
- word alignment 开启，comma 使用 K28.5
- 参考时钟来源为 Reference PAD Clock
- 参考时钟频率为 125 MHz
- RX/TX line rate 标为 10，配合工程注释对应 10G 级别配置

IPUG118 也说明，一个 SerDes Dual 支持 2 个 lane。4 lane 设计需要两个 SerDes Dual。参考工程的 ADC 约束把两个 SerDes 实例分别固定到 bank86 和 bank87：

```tcl
set_inst_assignment {u_serdes_jesd_top/u0_jesd204b_rx_config/u0_serdes_jesd204b_rx/u1_serdes_top/u_serdes_dual/serdes_serdes_inst} {location=x133y240z0}
set_inst_assignment {u_serdes_jesd_top/u0_jesd204b_rx_config/u0_serdes_jesd204b_rx/u1_serdes_top/u2_serdes_dual/serdes_serdes_inst} {location=x133y279z0}
```

### 6.4 板级管脚和时钟约束

`src\adc_sdc\ph400\jesd_case0.adc` 里定义了几个板级信号：

```tcl
set_pin_assignment { FPGA_SYSREF }     { LOCATION = F20; IOSTANDARD = LVCMOS25; }
set_pin_assignment { sys_clk_in }      { LOCATION = U27; IOSTANDARD = LVCMOS33; }
set_pin_assignment { app_button_rst_n } { LOCATION = K13; IOSTANDARD = LVCMOS25; PULLTYPE = PULLUP; }
set_pin_assignment { o_SYNCINB0_P }    { LOCATION = B27; IOSTANDARD = LVDS25; }
```

`src\adc_sdc\ph400\jesd_case0.sdc` 里有系统时钟和 RX 用户时钟约束：

```tcl
create_clock -name sys_clk_in   -period 20 [get_ports {sys_clk_in}]
create_clock -name rx_usr2clk_i -period 8  [get_ports {rx_usr2clk_i}]
create_clock -name clk_double_rx -period 4 [get_ports {clk_double_rx}]
```

这对应：

- `sys_clk_in = 50 MHz`
- `rx_usr2clk_i = 125 MHz`
- `clk_double_rx = 250 MHz`

工程还对 SerDes 输出时钟建了 8 ns 约束，并把多个时钟组设为异步。调试跨时钟问题时，不要忽略这些时钟域边界。

## 7. 软件配置：AXI-Lite 寄存器怎么写

IPUG118 说明 JESD204B core 使用 AXI4-Lite 寄存器接口配置，地址宽度 12 bit，数据宽度 32 bit。参考工程的 `serdes_jesd204b_rx_config.v` 用 `axi_write_cfg_r` 自动写 RX 寄存器。

![JESD204B AXI-Lite 配置寄存器](/pic/204B/05-axi-registers.svg)

RX 侧写入序列如下：

```verilog
i_addr_0(12'h004), .i_data_0({31'd0, SYNC_SUPPORT}),
i_addr_1(12'h008), .i_data_1({31'd0, SRAMBLING_EN}),
i_addr_2(12'h00C), .i_data_2({31'd0, SYSREF_ALWAYS}),
i_addr_3(12'h010), .i_data_3({30'd0, TEST_MODE}),
i_addr_4(12'h014), .i_data_4({24'd0, OCTETS_PFRAME}),
i_addr_5(12'h018), .i_data_5({27'd0, FRAME_PMULTIFRAME}),
i_addr_6(12'h020), .i_data_6({19'd0, BUFFER_DELAY}),
i_addr_7(12'h024), .i_data_7({23'd0, DIS_ERROR_REPORT, 7'd0, LINK_ERROR_COUNTERS_EN})
```

TX 侧除通用寄存器外，还会写 ILAS 配置字段：

```verilog
i_addr_7 (12'h400), .i_data_7 ({pDID,pADJCNT,pBID,1'b0,pADJDIR,pPHADJ,pLID,pSCR,2'b0,pL}),
i_addr_8 (12'h404), .i_data_8 ({pF,3'b0,pK,pM,pCS,1'b0,pN}),
i_addr_9 (12'h408), .i_data_9 ({pSUBCLASSV,pNt,pJESDV,pS,pHD,2'b0,pCF,pRES1}),
i_addr_10(12'h40c), .i_data_10({pRES2,8'd0,16'b0}),
i_addr_11(12'h000), .i_data_11(32'h00000001)
```

这组寄存器对应 ILAS 里最重要的参数。RX 端通常从 ILAS 读这些字段，TX 端必须把它们写对。

### 推荐配置顺序

实际软件或 FPGA 控制逻辑可以按这个顺序做：

1. 保持 JESD204B IP 和 SerDes 复位。
2. 等待时钟芯片、转换器、参考时钟稳定。
3. 配置转换器 SPI，使其 JESD 参数与 FPGA 一致。
4. 释放 SerDes/PHY 复位，等待 PLL/CDR 状态。
5. 通过 AXI-Lite 写 `0x004`、`0x008`、`0x00C`、`0x010`、`0x014`、`0x018`。
6. RX 写 `0x020`、`0x024`；TX 写 `0x400` 到 `0x40C` 的 ILAS 参数。
7. 写 `0x000 = 1` 触发或释放 core reset。
8. 发 SYSREF，或等待周期性 SYSREF。
9. 读 `0x01C sync status`，再进入数据检查。

## 8. 仿真与调试闭环

参考工程里 ModelSim 脚本 `sim\modelsim\run_serdes_jesd.tcl` 会编译 testbench、加密 JESD204B IP、pattern 模块、AXI 配置模块、SerDes wrapper 与顶层，然后运行仿真。工程已有记录显示曾在仿真中观测到 `rx_tdata_out_pass`，说明 demo 具备可验证的链路闭环。

![JESD204B 调试闭环](/pic/204B/06-debug-checklist.svg)

调板时建议按下面的顺序查，不要直接盯业务数据：

| 阶段 | 观测点 | 异常时优先怀疑 |
| --- | --- | --- |
| 时钟 | refclk、SYSREF、`sys_clk_in`、`rx_usr2clk_i`、`clk_double_rx` | 时钟芯片配置、频率、相位、SYSREF 电平 |
| 复位 | `init_reset`、SerDes PLL lock、CDR lock | 复位释放顺序、PLL 参考时钟、reset counter |
| CGS | `SYNC~`、K28.5、word aligned | lane 极性、8b/10b、线速率、SerDes 配置 |
| ILAS | DID/BID/L/M/F/K/N/S/Subclass | FPGA 与转换器参数不一致 |
| DATA | `rx_tvalid`、SOF/EOF、PRBS/pass | sample mapping、scrambling、buffer delay |
| 长稳 | link error count、debug status | 时钟抖动、信号完整性、SYSREF 策略 |

## 9. 常见问题和判断方法

### 9.1 `SYNC~` 一直不释放

先不要查 AXI 参数，先查物理层：

- SerDes 参考时钟是否正确。
- lane P/N 极性是否正确。
- TX/RX lane 顺序是否和转换器一致。
- 线速率是否一致。
- 8b/10b 和 comma alignment 是否开启。
- 转换器 SPI 初始化是否已经让 JESD 端口开始发码。

### 9.2 能过 CGS，但数据不对

优先查 ILAS 和数据组织：

- `L/M/F/K/N/N'/S` 是否完全一致。
- scrambling 是否两端一致。
- Subclass 配置是否一致。
- converter mapping 是否和业务逻辑一致。
- RX buffer delay 是否需要调整。

### 9.3 Subclass 1 延迟不稳定

重点查 SYSREF：

- SYSREF 是否被 FPGA 和转换器同时看到。
- SYSREF 采样边沿是否和 IP 配置一致。
- `SYSREF_ALWAYS` 是否符合系统预期。
- 时钟芯片是否在所有输出稳定后再发 SYSREF。
- 多板或多器件时，SYSREF 分配网络是否做了延迟控制。

### 9.4 仿真能过，板上不过

这类问题常见原因是仿真没有覆盖真实硬件条件：

- 仿真没有 lane 极性和 PCB 损耗。
- 仿真没有转换器 SPI 初始化时序。
- 仿真里的 SYSREF 是理想脉冲。
- 仿真没有真实时钟抖动和跨时钟亚稳态风险。
- 板级约束、SerDes bank 位置、IO 标准和硬件原理图不一致。

## 10. 一个可复用的 bring-up 清单

把一个 JESD204B 链路从零跑起来，可以按下面的交付物推进：

1. 参数表：`L/M/F/K/N/N'/S/SCR/Subclass/LineRate/refclk/SYSREF`。
2. 原理图核对表：lane 方向、P/N 极性、AC 耦合、SYNC、SYSREF、SPI、复位、时钟。
3. FPGA IP 参数截图或导出文件：JESD204B core、SerDes core。
4. 顶层端口表：哪些信号来自板级，哪些来自时钟芯片，哪些来自转换器。
5. 约束文件：管脚、时钟、SerDes 位置、异步时钟组。
6. AXI-Lite 写寄存器脚本或 RTL 状态机。
7. 仿真脚本：至少覆盖 CGS、ILAS、数据 pass。
8. 板级调试脚本：读 sync status、debug status、error count。
9. 数据验证：PRBS、计数器、固定 pattern 或已知波形。

## 结语

JESD204B 调试的核心是分层：硬件层先保证 lane、refclk、SYSREF、SYNC 连对；SerDes 层保证 CDR、8b/10b 和 word alignment；链路层保证 CGS、ILAS 和寄存器参数一致；最后才轮到业务样本数据。

以 PH1A400 参考工程为例，关键路径已经很清楚：`serdes_jesd_case1` 做顶层连接，`serdes_jesd204b_rx_config` 写 AXI-Lite，JESD204B RX enc core 完成链路层，`serdes_top` 落到两个 SerDes Dual，ADC/SDC 约束负责板级绑定。按这个结构拆问题，定位效率会高很多。
