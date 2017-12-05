`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:08:21 05/05/2017 
// Design Name: 
// Module Name:    RegFile 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module RegFile(showReg, clk, rst, regA, regB, regW, Wdat, Adat, Bdat, RegWrite, showdat
    );
	input [4:0]showReg;
	input clk, rst;
	input [4:0] regA, regB, regW;
	input [31:0] Wdat;
	input RegWrite;
	output [31:0] Adat, Bdat;
	output [31:0] showdat;
	reg [31:0] iRegf[31:0];
	reg [31:0] oRegf[31:0];
	
	assign Adat = oRegf[regA];
	assign Bdat = oRegf[regB];
	assign showdat = oRegf[showReg];
	/*
	always @(Wdat) begin
		if(RegWrite) begin
			iRegf[regW] <= (regW == 5'b00000)? 32'h0: Wdat;
		end
	end
	*/
	initial begin
		for (i =0; i < 32; i = i + 1) begin
				oRegf[i] <= 0;
				iRegf[i] <= 0;
			end
	end
	integer i;
	always @ (posedge clk) begin
		if(RegWrite) begin
			iRegf[regW] <= (regW == 5'b00000)? 32'h0: Wdat;
            oRegf[regW] <= iRegf[regW];
		end
        
		if(rst) begin
			for (i =0; i < 32; i = i + 1) begin
				oRegf[i] <= 0;
				iRegf[i] <= 0;
			end
		end
		else begin
			oRegf[regA] <= iRegf[regA];
			oRegf[regB] <= iRegf[regB];
		end
	end
	
	
endmodule
