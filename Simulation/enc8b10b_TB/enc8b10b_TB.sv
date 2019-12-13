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
//V1.1		Verdvana	Verdvana	Verdvana		  			2019-12-13
//
//-----------------------------------------------------------------------------------
//
//Version	Modified History
//V1.0		基于LUT的8B/10B编码器；
//          一个时钟周期出结果；
//          前半部分为数据信号，后半部分为控制信号，输入数据循环累加。
//
//V1.1		根据Synopsys的IP手册规范引脚名称，且添加使能信号。
//
//-----------------------------------------------------------------------------------


`timescale 1ns/1ns

module enc8b10b_TB;

	reg clk;
	reg rst_n;
	
	reg enable;
	reg k_char;
	reg init_rd_n;
	reg [7:0] data_in;
	
	wire rd;
	wire [9:0]	data_out;
	
	enc8b10b u_enc8b10b(
    	//********时钟与复位*********//
		.clk,        //时钟
    	.rst_n,      //复位
    	//*******控制/数据信号*******//
    	.enable,     //使能
    	.k_char,     //控制为1，数据为0
    	//***运行不一致性（RD）信号***//
    	.init_rd_n,  //RD初始化，通常为0
    	.init_rd_val(rd),//RD输入，连接上次转码的RD输出
    	.rd,         //RD输出，连接下次转码的RD输入
    	//********数据输入输出*******//
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
		init_rd_n <= '0;
		k_char <= '0;
		enable <= '0;
		data_in <= 8'b00000000;
	end
	endtask

	initial begin
		task_init;
		#20;
		rst_n <= '1;
		#20;

		enable <= '1;

		#10000;

		task_init;
		#20;
		rst_n <= '1;
		k_char <= '1;
		#20;

		#10000;

		$stop;
	end
	
	

endmodule