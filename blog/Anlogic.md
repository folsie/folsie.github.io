---
layout: column
title: "Anlogic 技术专栏"
description: "安路科技 FPGA 全系列技术文档 — 硬件设计 · 选型参考 · 开发工具 · 引脚对比"
---

<h2 class="section-title">📐 硬件设计指导</h2>

<div class="card-grid">
  <a href="{% link blog/Anlogic/DR1_Series_Hardware_Design_Guide.md %}" class="card card--accent-left">
    <h3>DR1 系列 — 28nm FPSoC</h3>
    <p>双核 ARM-A53 / RISC-V + FPGA<br>电源 · IO · DDR3/DDR4 · MIPI · PCB 全指导</p>
    <span class="tag">GEG484 · MEG484 · GEG400</span>
  </a>
  <a href="{% link blog/Anlogic/EG4_Series_Hardware_Design_Guide.md %}" class="card card--accent-left">
    <h3>EG4 系列 — 55nm FPGA</h3>
    <p>12位 ADC · 内嵌 SDRAM / DDR<br>基础型 FPGA 硬件设计指导</p>
    <span class="tag">BG256 · NG88 · LG144 · CG324</span>
  </a>
  <a href="{% link blog/Anlogic/EF2_Series_Hardware_Design_Guide.md %}" class="card card--accent-left">
    <h3>EF2 系列 — 55nm FPGA+Flash</h3>
    <p>内嵌 4Mb Flash · MCU · PSRAM<br>低功耗小封装设计指导</p>
    <span class="tag">LG144 · BG256 · UG132 · VG81</span>
  </a>
  <a href="{% link blog/Anlogic/EF3_Series_Hardware_Design_Guide.md %}" class="card card--accent-left">
    <h3>EF3 系列 — 55nm FPGA+Flash</h3>
    <p>内嵌 4-8Mb Flash · DSP<br>中高密度设计指导</p>
    <span class="tag">CG256 · CG324 · CG332 · CG400 · CG484</span>
  </a>
  <a href="{% link blog/Anlogic/EF4_Series_Hardware_Design_Guide.md %}" class="card card--accent-left">
    <h3>EF4 系列 — 55nm 车规 FPGA</h3>
    <p>AEC-Q100 车规级认证<br>高可靠性硬件设计指导</p>
    <span class="tag">CG324A</span>
  </a>
  <div class="card card--coming">
    <h3>PH1A · PH1P · SF1 系列</h3>
    <p>28nm 高性能系列硬件设计指导</p>
    <span class="badge badge--coming">即将上线</span>
  </div>
</div>

<h2 class="section-title">📋 器件选型</h2>

<div class="card-grid">
  <a href="{% link blog/Anlogic/Anlogic_Complete_PartNumber_Selection_Table.md %}" class="card card--accent-left">
    <h3>完整料号选型表</h3>
    <p>EG4 · EF2 · EF3 · DR1 · PH1 · SF 全系列器件料号、封装、温度等级、资源一览</p>
  </a>
  <a href="{% link blog/Anlogic/Anlogic_PTP_LIST.md %}" class="card card--accent-left">
    <h3>PTP 方案引脚对比</h3>
    <p>安路与竞品 FPGA 器件引脚复用方案对比</p>
  </a>
  <a href="{% link blog/Anlogic/PH1A900DDR4_PIN.md %}" class="card card--accent-left">
    <h3>PH1A900 DDR4 引脚映射</h3>
    <p>PH1A900 DDR4 引脚功能定义与映射</p>
  </a>
</div>

<h2 class="section-title">🔌 接口与外设</h2>

<div class="card-grid">
  <a href="{% link blog/Anlogic/HDMI_UG.md %}" class="card card--accent-left">
    <h3>HDMI 设计指导</h3>
    <p>HDMI 接口硬件设计与应用参考</p>
  </a>
  <a href="{% link blog/Anlogic/MIPI_Selection_Table_UG.md %}" class="card card--accent-left">
    <h3>MIPI 选型指南</h3>
    <p>MIPI D-PHY 接口器件选型与设计参考</p>
  </a>
  <a href="{% link blog/Anlogic/安路科技PCIe技术文档综合分析报告.md %}" class="card card--accent-left">
    <h3>PCIe 技术综合分析</h3>
    <p>安路科技 PCIe 技术文档综合分析报告</p>
  </a>
  <a href="{% link blog/Anlogic/安路科技PCIe系统应用指导.md %}" class="card card--accent-left">
    <h3>PCIe 系统应用指导</h3>
    <p>PCIe 系统集成与应用设计方案</p>
  </a>
</div>

<h2 class="section-title">🛠️ 开发工具与资源</h2>

<div class="card-grid">
  <a href="{% link blog/Anlogic/TCL_DOWNLOAD_UG.md %}" class="card card--accent-left">
    <h3>TCL 下载脚本指南</h3>
    <p>批量下载与自动化脚本使用说明</p>
  </a>
  <a href="{% link blog/Anlogic/Flash_Selection_UG.md %}" class="card card--accent-left">
    <h3>Flash 选型指南</h3>
    <p>配置 Flash 选型与兼容性参考</p>
  </a>
  <a href="{% link blog/Anlogic/Anlogic_DownCable_UG.md %}" class="card card--accent-left">
    <h3>下载器选择指南</h3>
    <p>调试下载器型号选择与使用说明</p>
  </a>
  <a href="{% link blog/Anlogic/Simulation.md %}" class="card card--accent-left">
    <h3>仿真指导</h3>
    <p>ModelSim 仿真环境配置与使用</p>
  </a>
  <a href="{% link blog/Anlogic/Timings.md %}" class="card card--accent-left">
    <h3>时序分析</h3>
    <p>时序约束方法与分析指导</p>
  </a>
  <a href="{% link blog/Anlogic/Anlogic_Softwre_Error_warnings_summary.md %}" class="card card--accent-left">
    <h3>TD 软件报错汇总</h3>
    <p>TD 开发环境常见错误与警告处理方案</p>
  </a>
</div>

<h2 class="section-title">🔍 引脚兼容性对比</h2>

安路器件与 Xilinx / Lattice / Altera 竞品封装引脚兼容性逐一对比分析：

**DR1 vs Xilinx Zynq**

- [DR1M90/V90 GEG400 vs XC7Z020 CLG400](./Anlogic/pincompare/DR1M90_DR1V90_GEG400_VS_XC7Z020CLG400.md)
- [DR1M90/V90 GEG484 vs XC7Z020 CLG484](./Anlogic/pincompare/DR1M90_DR1V90_GEG484_VS_XC7Z020CLG484.md)
- [DR1M90/V90 GEG84 vs MEG484（内部对比）](./Anlogic/pincompare/DR1M90_DR1V90_GEG84_VS_DR1M90_DR1V90_MEG484.md)

**PH1A vs Xilinx Artix-7 / Kintex-7**

- [PH1A100 GCG324 vs XC7A100T CSG324](./Anlogic/pincompare/PH1A100GCG324_XC7A100TCSG324.md)
- [PH1A100 GSG324 vs XC7A100T CSG324](./Anlogic/pincompare/PH1A100GSG324_XC7A100TCSG324.md)
- [PH1A100 SFG676 vs XC7A100T FGG676](./Anlogic/pincompare/PH1A100SFG676_XC7A100TFGG676.md)
- [PH1A90 SBG484 vs XC7K70T FBG484](./Anlogic/pincompare/PH1A90SBG484_VS_XC7K70TFBG484.md)
- [PH1A180 SFG676 vs XC7K160T FFG676](./Anlogic/pincompare/PH1A180SFG676_VS_XC7K160TFFG676.md)
- [PH1A180 SFG676 vs PH1A400 SFG676（内部对比）](./Anlogic/pincompare/PH1A180SFG676_VS_PH1A400SFG676.md)
- [PH1A400 SFG676 vs XC7K325T FFG676](./Anlogic/pincompare/PH1A400SFG676_VS_XC7K325TFFG676.md)
- [PH1A400 SFG676 vs XC7K325T](./Anlogic/pincompare/PH1A400SFG676_VS_XC7K325T.md)
- [PH1A400 SFG900 vs XC7K325T FFG900](./Anlogic/pincompare/PH1A400SFG900_VS_XC7K325TFFG900.md)
- [PH1A400 SFG900 vs XC7K325T](./Anlogic/pincompare/PH1A400SFG900_VS_XC7K325T.md)

**PH1P vs Xilinx Artix-7 / PH1A 内部**

- [PH1P50 GEG324 vs XC7A100T CSG324](./Anlogic/pincompare/PH1P50GEG324_VS_XC7A100TCSG324.md)
- [PH1P50 GEG324 vs PH1A60 GEG324（内部对比）](./Anlogic/pincompare/PH1P50GEG324_VS_PH1A60GEG324.md)
- [PH1P100 GEG324 vs XC7A100 CSG324](./Anlogic/pincompare/PH1P100GEG324_VS_XC7A100CSG324.md)
- [PH1P100 GEG324 vs PH1P50 GEG324（内部对比）](./Anlogic/pincompare/PH1P100GEG324_VS_PH1P50GEG324.md)
- [PH1P100 GEG324 vs PH1A100 GSG324（内部对比）](./Anlogic/pincompare/PH1P100GEG324_VS_PH1A100GSG324.md)
- [PH1P100 SBG484 vs XC7A100 FGG484](./Anlogic/pincompare/PH1P100SBG484_VS_XC7A100FGG484.md)
- [PH1P100 SBG484 vs PH1P50 SBG484（内部对比）](./Anlogic/pincompare/PH1P100SBG484_VS_PH1P50SBG484.md)
- [PH1P100 SBG676 vs PH1A100 SFG676（内部对比）](./Anlogic/pincompare/PH1P100SBG676_VS_PH1A100SFG676.md)
- [PH1P100 SBG677 vs XC7A100T FGG676](./Anlogic/pincompare/PH1P100SBG677_XC7A100TFGG676引脚兼容对照表.md)

**PH2A vs Xilinx UltraScale+**

- [PH2A106 FLG676 vs XCKU5P FFVB676](./Anlogic/pincompare/PH2A106FLG676_VS_XCKU5PFFVB676.md)
- [PH2A106 FLG900 vs XCKU5P FFVD900](./Anlogic/pincompare/PH2A106FLG900_VS_XCKU5PFFVD900.md)

**EG4 vs Xilinx Spartan-6 / Altera Cyclone IV**

- [EG4A20 vs EP4CE10 BGA256](./Anlogic/pincompare/EG4A20_VS_EP4CE10_BGA256.md)
- [EG4X20 vs XC6SLX16 BGA256](./Anlogic/pincompare/EG4X20_VS_XC6LX16_BGA256.md)
- [EG4X20 vs XC6SLX25](./Anlogic/pincompare/EG4X20_VS_XC6LX25.md)

**AL3A vs Altera Cyclone IV**

- [AL3A10 vs EP4CE10 BGA256](./Anlogic/pincompare/AL3A10_VS_EP4CE10_BGA256.md)

**EF2 / ELF2 vs Lattice MachXO2**

- [EF2L45 BG256 vs LCMXO2-4000HC BG256](./Anlogic/pincompare/EF2L45BG256_LCMXO2-4000HCBG256.md)
- [ELF2 vs XO2 LQFP100](./Anlogic/pincompare/ELF2_VS_XO2_LQFP100.md)
- [ELF2L45 UG132 vs XO2-2000 csBGA132](./Anlogic/pincompare/ELF2L45UG132_XO2-2000csBGA132.md)
- [ELF2-45 vs XO2-4000 144pin](./Anlogic/pincompare/ELF2-45_VS_XO2-4000_144pin.md)
- [ELF2-15 vs XO2-1200 144pin](./Anlogic/pincompare/ELF2-15_VS_XO2-1200_144pin.md)

**EF3 vs Lattice MachXO3**

- [EF3 L15/25/45 vs LCMXO3-1300/2100/4300 caBGA256](./Anlogic/pincompare/EF3L15_25_45_VS_LCMXO3-1300_2100_4300_caBGA256.md)
- [EF3L40 vs XO2-4000 caBGA332](./Anlogic/pincompare/EF3L40_VS_XO2-4000_caBGA332.md)
- [EF3L40 CG324B vs LCMXO3-4300 caBGA324](./Anlogic/pincompare/EF3L40CG324B_LCMXO3-4300_caBGA324.md)
- [EF3L45 vs EF3L50 caBGA256（内部对比）](./Anlogic/pincompare/EF3L45_VS_EF3L50_CaBGA256.md)
- [EF3L50 vs XO3-4300 caBGA256](./Anlogic/pincompare/EF3L50_VS_XO3-4300_caBGA256.md)
- [EF3L70 CG256B vs LCMXO3-6900 caBGA256](./Anlogic/pincompare/EF3L70CG256B_LCMXO3_6900_caBG256.md)
- [EF3L70 CG324B vs LCMXO3-6900 caBGA324](./Anlogic/pincompare/EF3L70CG324BE_LCMXO3_6900_caBGA324.md)
- [EF3L90 CG324B vs LCMXO3-6900 caBGA324](./Anlogic/pincompare/EF3L90CG324B_LCMXO3-6900_caBGA324.md)
- [EF3L90 CG400B vs LCMXO3-6900 caBGA400](./Anlogic/pincompare/EF3L90CG400B_LCMXO3-6900_caBGA400.md)
- [EF3LA0 CG484B vs LCMXO3-9400 caBGA484](./Anlogic/pincompare/EF3LA0CG484B_LCMXO3_9400_caBGA484.md)

**EF5 vs Lattice / EF3 内部**

- [EF5L25 UG132B vs LCMXO2-2000 csBGA132](./Anlogic/pincompare/EF5L25UG132B_VS_LCMXO2_2000_csBGA132.md)
- [EF5L150 CG401B vs LCMXO3-6900 caBGA400](./Anlogic/pincompare/EF5L150CG401B_VS_LCMXO3-6900_caBGA400.md)
- [EF5L150 CG400B vs EF3L90 CG400B（内部对比）](./Anlogic/pincompare/EF5L150CG400B_VS_EF3L90CG400B.md)

**ELF / EFA vs Lattice XO / Altera MAX**

- [ELFL vs XO256/XO640 LQFP100](./Anlogic/pincompare/ELFL_VS_XO256_XO640_LQFP100.md)
- [ELFA vs EPM240 LQFP100](./Anlogic/pincompare/ELFA_VS_EPM240_LQFP100.md)
- [EFA vs EPM3032 44pin](./Anlogic/pincompare/EFA_VS_EPM3032_44pin.md)
