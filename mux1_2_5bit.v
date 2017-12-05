`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:16:16 05/05/2017 
// Design Name: 
// Module Name:    mux1_2_5bit 
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
module mux1_2_5bit( input code, input[4:0]a, input[4:0]b, output[4:0]s
    );
assign s = (code == 0)? a: b;

endmodule
