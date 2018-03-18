/** 

	Sumador
	Esta difinicion sirve tanto para el +4 del PC como para otros sumadores
	
**/

module sumador ( 
	// Canales de entrada
	input [15:0] operA,	
   input [15:0] operB,
	
	// Se;al de salida
   output reg [31:0] out
	);
	
	
	always @ (*) begin
      
		out <= operA + operB;
		
   end
endmodule
 