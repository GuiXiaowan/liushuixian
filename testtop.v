`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:28:44 05/12/2017
// Design Name:   Top
// Module Name:   E:/2121/scCPU/testtop.v
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

module testtop;

	// Inputs
	reg clk;
	reg [15:0] s;
	reg buzzer;

	// Outputs
/*	wire SEGCLK;
	wire SEGCLR;
	wire SEGDT;
	wire SEGEN;*/
	//Test
	wire clkd1;
	wire [31:0] Adat2;
	wire [31:0] Bdat2;
	wire [31:0] oALU2;
	wire MemRead2,MemWrite2,MemtoReg2;
	wire [31:0] Wdat2;
	wire [1:0] ALUop2;
	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.clk(clk), 
		.s(s), 
		.buzzer(buzzer), 
/*		.SEGCLK(SEGCLK), 
		.SEGCLR(SEGCLR), 
		.SEGDT(SEGDT), 
		.SEGEN(SEGEN), */
		.clkd1(clkd1),
		.Adat2(Adat2),
		.Bdat2(Bdat2),
		.oALU2(oALU2),
		.MemRead2(MemRead2),
		.MemWrite2(MemWrite2),
		.MemtoReg2(MemtoReg2),
		.ALUop2(ALUop2),
		.Wdat2(Wdat2)
	);

	initial begin
		// Initialize Inputs

		s = 16'h5000;
		buzzer = 0;

		// Wait 100 ns for global reset to finish

        
		// Add stimulus here

	end
      always  begin
			clk = 0; #10; 
			clk = 1; #10; 
		end  
endmodule

