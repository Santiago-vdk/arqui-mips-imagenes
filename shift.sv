
module shift (
   data,	
	shifted	
	);


input [31:0] data;
output [31:0] shifted;
 


assign shifted = data<<2;

endmodule  