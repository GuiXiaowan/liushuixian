`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:36:13 11/29/2017
// Design Name:   Top
// Module Name:   E:/subjects/2/cpu/liushuixian/top_testhhh.v
// Project Name:  scCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module top_testhhh;

	// Inputs
	reg clk;
	reg [15:0] s;
	reg buzzer;

	// Outputs
	wire [31:0] clkd_out;
	wire [31:0] PC_out;
	wire [31:0] instr_out;

	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.clk(clk), 
		.s(s), 
		.buzzer(buzzer), 
		.clkd_out(clkd_out),
		.PC_out(PC_out),
		.instr_out(instr_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		s = 0;
		buzzer = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
   always  begin
		clk = 0; #10;
		clk = 1; #10;
	end
endmodule

