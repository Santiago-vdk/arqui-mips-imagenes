/** 

	Equal
	Funcion comparadora de registros
	
**/

module equal ( 
	// Canales de entrada
	input [5:0] operA,	
   input [5:0] operB,
	
	// Se;al de salida
   output reg out
	);
	
	
	always @ (*) begin
      if(operA == operB) begin
			out <= 1;
		end
		else begin
			out <= 0;
		end
		
   end
endmodule
 