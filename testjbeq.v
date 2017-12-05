`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:14:17 05/17/2017
// Design Name:   Top
// Module Name:   E:/2121/scCPU/testjbeq.v
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

module testjbeq;

	// Inputs
	reg clk;
	reg [15:0] s;
	reg buzzer;

	// Outputs
	wire SEGCLK;
	wire SEGCLR;
	wire SEGDT;
	wire SEGEN;
	wire [31:0] InstruAddr2;
	wire [31:0] Instru2;
	wire [31:0]segRegDat2;
	wire [4:0]regW2;
	wire [31:0]Wdat2;
	wire RegWrite;
	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.clk(clk), 
		.s(s), 
		.buzzer(buzzer), 
		.SEGCLK(SEGCLK), 
		.SEGCLR(SEGCLR), 
		.SEGDT(SEGDT), 
		.SEGEN(SEGEN), 
		.InstruAddr2(InstruAddr2), 
		.Instru2(Instru2),
        .segRegDat2(segRegDat2),
        .regW2(regW2),
        .Wdat2(Wdat2),
        .RegWrite(RegWrite)
	);

	initial begin
		// Initialize Inputs
        s = 16'h5800;
		
		buzzer = 0;
        #1000;
        s = 16'h7000;
	end
	
      always  begin
			clk = 0; #10; 
			clk = 1; #10; 
		end  
	
      
endmodule

