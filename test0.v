`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:00:57 05/12/2017
// Design Name:   clkdiv
// Module Name:   E:/2121/scCPU/test0.v
// Project Name:  scCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clkdiv
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test0;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [31:0] clkdiv;

	// Instantiate the Unit Under Test (UUT)
	clkdiv uut (
		.clk(clk), 
		.rst(rst), 
		.clkdiv(clkdiv)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;

	end
   always  begin
			clk = 0; #10; 
			clk = 1; #10; 
		end  
endmodule

