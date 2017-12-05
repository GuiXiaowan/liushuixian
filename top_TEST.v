`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:22:33 11/29/2017
// Design Name:   Top
// Module Name:   E:/subjects/2/cpu/liushuixian/top_TEST.v
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

module top_TEST;

	// Inputs
	reg clk200P;
	reg clk200N;
	reg [15:0] s;
	reg buzzer;

	// Outputs
	wire SEGCLK;
	wire SEGCLR;
	wire SEGDT;
	wire SEGEN;

	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.clk200P(clk200P), 
		.clk200N(clk200N), 
		.s(s), 
		.buzzer(buzzer), 
		.SEGCLK(SEGCLK), 
		.SEGCLR(SEGCLR), 
		.SEGDT(SEGDT), 
		.SEGEN(SEGEN)
	);

	initial begin
		// Initialize Inputs
		clk200P = 0;
		clk200N = 0;
		s = 0;
		buzzer = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

