---
title: "存储 / 高速接口方案"
description: "DDR · Flash · eMMC · PCIe · USB · LVDS — 覆盖 Micron · Samsung · Winbond 等品牌方案"
tags: [存储, DDR, Flash, PCIe, USB, 高速接口]
---

## 产品线定位

存储与高速接口是数据密集型系统的瓶颈与关键。WTMEC 在该领域覆盖从小容量 NOR Flash 到大容量 DDR4/5、从 USB 到 PCIe Gen4 的完整产品线。

## 核心品牌与产品

| 品牌 | 主要品类 | 典型应用 |
|------|---------|---------|
| Micron (美光) | DDR4/5、LPDDR、NAND Flash、eMMC | 通信/工业/数据中心 |
| Samsung (三星) | DDR、eMMC、UFS、SSD 控制器 | 消费/服务器 |
| Winbond (华邦) | SPI NOR Flash、HyperRAM、PSRAM | IoT/FPGA 配置 |
| ISSI (芯成) | SRAM、DRAM、Flash | 工业/汽车 |

## 应用场景

- **FPGA 配置存储**：SPI NOR Flash 存放 FPGA bitstream，Winbond W25Q 系列推荐
- **高带宽数据缓存**：DDR3/4 搭配安路 DR1/PH1A FPGA，实现视频/图像帧缓存
- **PCIe 数据通路**：FPGA PCIe Gen2/3 EP + 高速 SerDes，搭配 NVMe SSD 或主机接口
- **工业存储**：宽温 eMMC/NOR Flash，满足 -40~85°C 工业环境

## 选型要点

1. **容量与带宽** — DDR 容量/位宽、Flash 密度与读写速度
2. **接口标准** — SPI / QSPI / OPI / DDR3L / DDR4 / PCIe Gen
3. **温度等级** — 商业级 / 工业级 / 汽车级
4. **可靠性** — 擦写寿命 (P/E cycles)、数据保持时间
5. **封装兼容** — BGA 球距、SOIC/WSON 引脚兼容性

## 与安路 FPGA 协同

- **配置 Flash**：安路全系列 FPGA 推荐使用 Winbond/ISSI SPI Flash，详见 [Flash 选型指南](../Anlogic/Flash_Selection_UG.md)
- **DDR 控制器**：安路 DR1/PH1A 内嵌 DDR3/DDR4 硬核控制器，需匹配 Micron/Samsung 颗粒
- **PCIe 方案**：安路 PH1A PCIe Gen2 EP/RC 方案，搭配高速 SerDes 实现主机 DMA 通信
- **HDMI/LVDS 接口**：高速接口 PHY 搭配 FPGA 逻辑实现视频输入输出
