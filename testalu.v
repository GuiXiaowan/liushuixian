`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:14:30 05/12/2017
// Design Name:   ALU
// Module Name:   E:/2121/scCPU/testalu.v
// Project Name:  scCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testalu;

	// Inputs
	reg [31:0] Adat;
	reg [31:0] Bdat;
	reg [2:0] ALUoper;

	// Outputs
	wire [31:0] Result;
	wire zero;
	wire carryout;
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.Adat(Adat), 
		.Bdat(Bdat), 
		.ALUoper(ALUoper), 
		.Result(Result), 
		.zero(zero), 
		.carryout(carryout), 
		.overflow(overflow)
	);

	initial begin
		// Initialize Inputs
		Adat = 0;
		Bdat = 0;
		ALUoper = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

