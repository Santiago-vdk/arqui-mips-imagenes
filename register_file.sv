/**

	Register file

**/
module register_file ( 
	input clk,
	input [31:0] instruction,	
   input [31:0] A3,
	
	input [31:0] WD3,
	input WE3,

   output reg [5:0] RD1,
	output reg [5:0] RD2
	);
	
	reg [5:0] A1, A2;//, A3, WD3;
 
   always @ (posedge clk) begin
		
		A1 <= instruction[25:21];
		A2 <= instruction[20:16];
		
   end
	
	assign RD1 = A1;
	assign RD2 = A2;
	
endmodule
 