`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:46:49 10/18/2017 
// Design Name: 
// Module Name:    IF_ID 
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
module IF_ID(
	input pc,
	input im,
	output reg pcout,
	output reg imout
    );
	 always @ (posedge clk) begin
		pcout<=pc;
		imout<=im;
	 end


endmodule
