---
title: "嵌入式 / 边缘 AI 方案"
description: "MCU · MPU · NPU · 边缘推理平台 — 覆盖 ST · NXP · Renesas · Rockchip 等品牌方案"
tags: [嵌入式, MCU, MPU, NPU, 边缘AI]
---

## 产品线定位

从低功耗 MCU 到高性能 MPU/NPU，嵌入式处理器是系统的运算核心。WTMEC 在该领域覆盖从 Cortex-M0 到 Cortex-A76 + NPU 的完整算力梯度，支撑从传感器节点到边缘推理服务器的多级需求。

## 核心品牌与产品

| 品牌 | 主要品类 | 典型应用 |
|------|---------|---------|
| ST (意法半导体) | STM32 MCU 全系列、MPU (MP1/MP2) | 工业/消费/汽车 |
| NXP (恩智浦) | i.MX MPU、LPC/Kinetis MCU、边缘 AI | 汽车/工业/IoT |
| Renesas (瑞萨) | RA/RX MCU、RZ MPU、AI 加速器 | 工业/汽车/HMI |
| Rockchip (瑞芯微) | RK35xx 系列 SoC、NPU 集成 | 边缘 AI/视觉/机器人 |

## 应用场景

- **边缘 AI 推理**：Rockchip RK3588 (6 TOPS NPU) + FPGA 预处理管线
- **工业 HMI**：NXP i.MX8 + 安路 FPGA 视频桥接/LVDS 扩展
- **电机 FOC 控制**：STM32G4 + 安路 FPGA 高速 ADC 接口
- **机器人主控**：RK3588 / i.MX8MP 做感知推理，FPGA 做实时控制

## 选型要点

1. **算力需求** — 控制类选 Cortex-M，AI 推理选 NPU 集成 SoC
2. **生态工具链** — STM32CubeIDE / MCUXpresso / e² studio
3. **外设丰富度** — ADC/DAC/CAN/USB/以太网 接口数量
4. **OS 支持** — RTOS (FreeRTOS/ThreadX) vs Linux (Yocto/Buildroot)
5. **供货稳定性** — 多品牌交叉覆盖降低缺货风险

## 与安路 FPGA 协同

- **MCU + FPGA**：STM32 做系统管理 + 安路 FPGA 做接口扩展/协议转换
- **MPU + FPGA**：i.MX8 / RK3588 做 AI 推理 + FPGA 做实时预处理
- **DR1 FPSoC 替代方案**：安路 DR1 内嵌 ARM + FPGA，部分场景可替代 MCU + FPGA 双芯片方案
