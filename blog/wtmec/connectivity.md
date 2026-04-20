---
title: "连接 / 传感器方案"
description: "Wi-Fi · BLE · Zigbee · MEMS · 温湿度 · IMU — 覆盖 TI · Nordic · Bosch · ST 等品牌方案"
tags: [连接, 传感器, Wi-Fi, BLE, MEMS, IoT]
---

## 产品线定位

无线连接与传感器是物联网和智能硬件的感知与通信基础。WTMEC 覆盖从短距无线到 MEMS 传感器的完整产品线，支撑从 IoT 节点到工业感知的多级需求。

## 核心品牌与产品

| 品牌 | 主要品类 | 典型应用 |
|------|---------|---------|
| TI | Wi-Fi · BLE · Sub-1GHz · 毫米波雷达 | IoT/工业感知/汽车 |
| Nordic (北欧半导体) | BLE SoC · Thread · Matter | 可穿戴/智能家居 |
| Bosch (博世) | MEMS 加速度计/陀螺仪/气压计 | 消费/工业/汽车 |
| ST | MEMS 惯性传感器 · 温湿度 | 工业/消费 |

## 应用场景

- **工业 IoT 网关**：Wi-Fi + BLE + 以太网多协议融合，FPGA 做协议桥接
- **姿态感知**：6/9 轴 IMU + FPGA 实时姿态解算，机器人/无人机应用
- **环境监测**：温湿度 / 气压 / 光照传感器阵列，FPGA 多通道数采
- **智能家居 Matter**：Nordic nRF + 安路低功耗 FPGA 联合方案

## 选型要点

1. **通信协议** — BLE 5.x / Wi-Fi 6 / Zigbee / Thread / Matter
2. **功耗** — 电池供电场景关注休眠电流与唤醒时间
3. **精度与带宽** — 传感器量程、分辨率、采样率
4. **封装** — LGA / WLCSP 小型化封装适配可穿戴/空间受限场景
5. **认证** — FCC / CE / 蓝牙 SIG 认证状态

## 与安路 FPGA 协同

- 安路 EF2/EF3 低功耗 FPGA 做 BLE 协处理器，卸载主控 CPU 负载
- FPGA + MEMS 传感器阵列实现多通道并行高带宽数据采集
- FPGA 实时滤波 + 传感器融合算法硬件加速
