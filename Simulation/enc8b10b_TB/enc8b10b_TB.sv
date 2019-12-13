//------------------------------------------------------------------------------
//
//Module Name:					enc8b10b_TB.v
//Department:					Xidian University
//Function Description:	        8B/10B编码器测试文件
//
//------------------------------------------------------------------------------
//
//Version 	Design		Coding		Simulata	  Review		Rel data
//V1.0		Verdvana	Verdvana	Verdvana		  			2019-12-13
//
//-----------------------------------------------------------------------------------
//
//Version	Modified History
//V1.0		基于LUT的8B/10B编码器；
//          一个时钟周期出结果；
//          前半部分为数据信号，后半部分为控制信号，输入数据循环累加。
//-----------------------------------------------------------------------------------


`timescale 1ns/1ns

module enc8b10b_TB;

	reg clk;
	reg rst_n;
	
	reg kd;
	reg rd_init;
	reg [7:0] data_in;
	
	wire rd_out;
	wire [9:0]	data_out;
	
	enc8b10b u_enc8b10b(
		.clk,        //时钟
    	.rst_n,      //复位

    	.kd,         //控制为1，数据为0

    	.rd_init,    //RD初始化，通常为0
    	.rd_in(rd_out),      //RD输入，连接上次转码的RD输出
    	.rd_out,     //RD输出，连接下次转码的RD输入

    	.data_in,    //8bit数据输入
    	.data_out    //10bit数据输出
	);

	initial begin
		clk <= '0;
		forever #10 clk <= ~clk; 
	end

	always_ff @(posedge clk, negedge rst_n) begin
		if(!rst_n) begin
			data_in <= '0;
		end
		else begin
			data_in <= data_in + 1;
		end
	end

	task task_init;
	begin	
		rst_n <= '0;
		rd_init <= '0;
		kd <= '0;
		data_in <= 8'b00000000;
	end
	endtask

	initial begin
		task_init;
		#20;
		rst_n <= '1;
		#20;

		#10000;

		task_init;
		#20;
		rst_n <= '1;
		kd <= '1;
		#20;

		#10000;

		$stop;
	end
	
	

endmodule