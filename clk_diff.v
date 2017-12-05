/**
 * differential clock to signel ended clock
 * Frank Shaw	 <xiaoqingzhe@gmail.com>
 */
module  clk_diff(input clk200P,clk200N,
			   input rst,
			   output reg[31:0]clkdiv,
			   output clk100MHz
			  );
					
	        IBUFDS sclk(.I(clk200P),  //clk: differential clock to signel ended clock
		            .IB(clk200N),
		            .O(clk200m)  // this is what we use
		           );

        // Clock divider-Ê±ÖÓ·ÖÆµÆ÷
	        assign clk100MHz = clkdiv[0];
	        always @ (posedge clk200m or posedge rst) begin 
		    if (rst) clkdiv <= 0; 
		    else clkdiv <= clkdiv + 1'b1; 
		end
			
        endmodule
