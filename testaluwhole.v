`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:14:57 05/12/2017
// Design Name:   ALUwhole
// Module Name:   E:/2121/scCPU/testaluwhole.v
// Project Name:  scCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALUwhole
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testaluwhole;

	// Inputs
	reg [1:0] ALUop;
	reg [5:0] Fuc;
	reg [31:0] Adat;
	reg [31:0] Bdat;

	// Outputs
	wire [31:0] Result;
	wire zero;
	wire carryout;
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	ALUwhole uut (
		.ALUop(ALUop), 
		.Fuc(Fuc), 
		.Adat(Adat), 
		.Bdat(Bdat), 
		.Result(Result), 
		.zero(zero), 
		.carryout(carryout), 
		.overflow(overflow)
	);

	initial begin
		// Initialize Inputs
		ALUop = 2'b01;
		Fuc = 6'b100000;
		Adat = 32'h4;
		Bdat = 32'h4;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

