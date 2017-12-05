`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:18:34 04/07/2017 
// Design Name: 
// Module Name:    pbdebounce 
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
module pbdebounce(
		input clk_1ms,
		input button,
		output reg pbreg
    );
	reg [7:0] pbdshift;
	always@ (posedge clk_1ms) begin
		pbdshift = pbdshift << 1;
		pbdshift[0] = button;
		if (pbdshift==8'b0)
			pbreg = 0;
		if (pbdshift == 8'hff)
			pbreg = 1;
	end

endmodule
