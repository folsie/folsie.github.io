---
layout: column
title: "Anlogic 技术专栏"
description: "安路科技 FPGA 技术文章入口"
---

<h2 class="section-title">📐 硬件设计指导</h2>

<div class="card-grid">
  <div class="card card--coming">
    <h3>DR1 系列 — 28nm FPSoC</h3>
    <p>双核 ARM-A53 / RISC-V + FPGA<br>电源 · IO · DDR3/DDR4 · MIPI · PCB 全指导</p>
    <span class="badge badge--coming">待开放</span>
  </div>
  <div class="card card--coming">
    <h3>EG4 系列 — 55nm FPGA</h3>
    <p>12位 ADC · 内嵌 SDRAM / DDR<br>基础型 FPGA 硬件设计指导</p>
    <span class="badge badge--coming">待开放</span>
  </div>
  <div class="card card--coming">
    <h3>EF2 系列 — 55nm FPGA+Flash</h3>
    <p>内嵌 4Mb Flash · MCU · PSRAM<br>低功耗小封装设计指导</p>
    <span class="badge badge--coming">待开放</span>
  </div>
  <div class="card card--coming">
    <h3>EF3 系列 — 55nm FPGA+Flash</h3>
    <p>内嵌 4-8Mb Flash · DSP<br>中高密度设计指导</p>
    <span class="badge badge--coming">待开放</span>
  </div>
  <div class="card card--coming">
    <h3>EF4 系列 — 55nm 车规 FPGA</h3>
    <p>AEC-Q100 车规级认证<br>高可靠性硬件设计指导</p>
    <span class="badge badge--coming">待开放</span>
  </div>
  <div class="card card--coming">
    <h3>PH1A · PH1P · SF1 系列</h3>
    <p>28nm 高性能系列硬件设计指导</p>
    <span class="badge badge--coming">待开放</span>
  </div>
</div>

<h2 class="section-title">📋 器件选型</h2>

<div class="card-grid">
  <div class="card card--coming">
    <h3>完整料号选型表</h3>
    <p>EG4 · EF2 · EF3 · DR1 · PH1 · SF 全系列器件料号、封装、温度等级、资源一览</p>
    <span class="badge badge--coming">待开放</span>
  </div>
  <div class="card card--coming">
    <h3>PTP 方案引脚对比</h3>
    <p>安路与竞品 FPGA 器件引脚复用方案对比</p>
    <span class="badge badge--coming">待开放</span>
  </div>
  <div class="card card--coming">
    <h3>PH1A900 DDR4 引脚映射</h3>
    <p>PH1A900 DDR4 引脚功能定义与映射</p>
    <span class="badge badge--coming">待开放</span>
  </div>
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

<div class="card-grid">
  <div class="card card--coming">
    <h3>DR1 vs Xilinx Zynq</h3>
    <p>DR1M90 / DR1V90 与 XC7Z020 封装引脚兼容性对比。</p>
    <span class="badge badge--coming">待开放</span>
  </div>
  <div class="card card--coming">
    <h3>PH1A vs Xilinx Artix-7 / Kintex-7</h3>
    <p>PH1A 系列与 Artix-7、Kintex-7 竞品封装引脚对比。</p>
    <span class="badge badge--coming">待开放</span>
  </div>
  <div class="card card--coming">
    <h3>PH1P vs Xilinx Artix-7 / PH1A</h3>
    <p>PH1P 系列与 Xilinx Artix-7 及 PH1A 内部封装对比。</p>
    <span class="badge badge--coming">待开放</span>
  </div>
  <div class="card card--coming">
    <h3>PH2A vs Xilinx UltraScale+</h3>
    <p>PH2A 与 Xilinx UltraScale+ 封装引脚兼容性对比。</p>
    <span class="badge badge--coming">待开放</span>
  </div>
  <div class="card card--coming">
    <h3>EG4 / AL3A vs Xilinx / Altera</h3>
    <p>EG4、AL3A 与 Spartan-6、Cyclone IV 竞品封装对比。</p>
    <span class="badge badge--coming">待开放</span>
  </div>
  <div class="card card--coming">
    <h3>EF2 / EF3 / EF5 / ELF / EFA vs Lattice / Altera</h3>
    <p>低功耗与中密度系列器件的 Lattice、Altera 竞品封装对比。</p>
    <span class="badge badge--coming">待开放</span>
  </div>
</div>
