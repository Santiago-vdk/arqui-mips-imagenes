/**

	Register file

**/
module register_mem_wb ( 
	input clk,
	input enable,
	
	// Señales
	input RegWriteDIN,
	input MemtoRegDIN,

	
	// Salida de ALU
	input [5:0] ALUIN,
	input [5:0] WriteRegEIN,
	
	input [5:0] ReadDataWIN,
	
	// Salidas
	output RegWriteDOUT,
	output MemtoRegDOUT,

	
	output [5:0] ALUOUT,
	output [5:0] WriteRegEOUT,
	
	output [5:0] ReadDataWOUT
	
	);
	
	reg RegWriteDTMP, MemtoRegDTMP;
	reg [5:0] ALUTMP, WriteRegETMP, ReadDataWTMP;

	always @(posedge clk)
		begin
			if(enable) begin
				
				// Paso de las senales de control
				RegWriteDTMP = RegWriteDIN;
				MemtoRegDTMP = MemtoRegDIN;

				// Paso de operandos
				ALUTMP = ALUIN;
				WriteRegETMP = WriteRegEIN;
				
				ReadDataWTMP = ReadDataWIN;
				
			end
		
		end
	
	// Asignacion de las senales de control
	assign RegWriteDOUT = RegWriteDTMP;
	assign MemtoRegDOUT = MemtoRegDTMP;

	
	// Asignacion de operandos
	assign ALUOUT = ALUTMP;
	assign WriteRegEOUT = WriteRegETMP;
	
	assign ReadDataWOUt = ReadDataWTMP;
	
endmodule
 