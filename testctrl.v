`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:19:09 05/17/2017
// Design Name:   ALUCtr
// Module Name:   E:/2121/scCPU/testctrl.v
// Project Name:  scCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALUCtr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testctrl;

	// Inputs
	reg [1:0] ALUop;
	reg [5:0] Func;

	// Outputs
	wire [2:0] ALUoper;

	// Instantiate the Unit Under Test (UUT)
	ALUCtr uut (
		.ALUop(ALUop), 
		.Func(Func), 
		.ALUoper(ALUoper)
	);

	initial begin
		// Initialize Inputs
		ALUop = 2'b01;
		Func = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

