# 基于LUT的8B/10B编码器

#### 代码介绍
    基于LUT的8B/10B编码器

* V1.0   2019.12.13
    * 一个时钟周期出结果；
    * 先进行5B/6B编码，并更新RD信号，再根据更新后的RD信号进行3B/4B编码，且产生下次编码的RD信号。


| Flow Summary | Content |
| --- | --- |
| Flow Status | Successful - Tue Nov 26 19:57:47 2019 |
| Quartus Prime Version | 18.1.0 Build 625 09/12/2018 SJ Standard Edition |
| Revision Name | NCO |
| Top-level Entity Name | NCO |
| Family | Stratix IV |
| Device | EP4SGX230KF40C2 |
| Timing Models | Final |
| Logic utilization | < 1 % |
| Combinational ALUTs | 1,116 / 182,400 ( < 1 % ) |
| Memory ALUTs | 0 / 91,200 ( 0 % ) |
| Dedicated logic registers | 51 / 182,400 ( < 1 % ) |
| Total registers | 51 |
| Total pins | 66 / 888 ( 7 % ) |
| Total virtual pins | 0 |
| Total block memory bits | 64,000 / 14,625,792 ( < 1 % ) |
| DSP block 18-bit elements | 0 / 1,288 ( 0 % ) |
| Total GXB Receiver Channel PCS | 0 / 24 ( 0 % ) |
| Total GXB Receiver Channel PMA | 0 / 36 ( 0 % ) |
| Total GXB Transmitter Channel PCS | 0 / 24 ( 0 % ) |




