# 基于LUT的8B/10B编码器

#### 代码介绍
    基于LUT的8B/10B编码器

* V1.0   2019.12.13
    * 一个时钟周期出结果；
    * 先进行5B/6B编码，并更新RD信号，再根据更新后的RD信号进行3B/4B编码，且产生下次编码的RD信号。

仿真波形：

![wave](https://raw.githubusercontent.com/Verdvana/Enc8b10b/V1.1/Simulation/enc8b10b_TB/wave.jpg)


| Flow Summary | Content |
| --- | --- |
| Flow Status | Successful - Fri Dec 13 20:27:31 2019 |
| Quartus Prime Version | 18.1.0 Build 625 09/12/2018 SJ Standard Edition |
| Revision Name | enc8b10b |
| Top-level Entity Name | enc8b10b |
| Family | Stratix IV |
| Device | EP4SGX230KF40C2 |
| Timing Models | Final |
| Logic utilization | < 1 % |
| Combinational ALUTs | 37 / 182,400 ( < 1 % ) |
| Memory ALUTs | 0 / 91,200 ( 0 % ) |
| Dedicated logic registers | 11 / 182,400 ( < 1 % ) |
| Total registers | 11 |
| Total pins | 24 / 888 ( 3 % ) |
| Total virtual pins | 0 |
| Total block memory bits | 0 / 14,625,792 ( 0 % ) |
| DSP block 18-bit elements | 0 / 1,288 ( 0 % ) |
| Total GXB Receiver Channel PCS | 0 / 24 ( 0 % ) |
| Total GXB Receiver Channel PMA | 0 / 36 ( 0 % ) |
| Total GXB Transmitter Channel PCS | 0 / 24 ( 0 % ) |

* V1.1   2019.12.13
    * 根据Synopsys的IP手册规范引脚名称，且添加使能信号。

仿真波形：

![wave](https://raw.githubusercontent.com/Verdvana/Enc8b10b/V1.1/Simulation/enc8b10b_TB/wave2.jpg)


| Flow Summary | Content |
| --- | --- |
| Flow Status | Successful - Fri Dec 13 20:27:31 2019 |
| Quartus Prime Version | 18.1.0 Build 625 09/12/2018 SJ Standard Edition |
| Revision Name | enc8b10b |
| Top-level Entity Name | enc8b10b |
| Family | Stratix IV |
| Device | EP4SGX230KF40C2 |
| Timing Models | Final |
| Logic utilization | < 1 % |
| Combinational ALUTs | 34 / 182,400 ( < 1 % ) |
| Memory ALUTs | 0 / 91,200 ( 0 % ) |
| Dedicated logic registers | 11 / 182,400 ( < 1 % ) |
| Total registers | 11 |
| Total pins | 25 / 888 ( 3 % ) |
| Total virtual pins | 0 |
| Total block memory bits | 0 / 14,625,792 ( 0 % ) |
| DSP block 18-bit elements | 0 / 1,288 ( 0 % ) |
| Total GXB Receiver Channel PCS | 0 / 24 ( 0 % ) |
| Total GXB Receiver Channel PMA | 0 / 36 ( 0 % ) |
| Total GXB Transmitter Channel PCS | 0 / 24 ( 0 % ) |


