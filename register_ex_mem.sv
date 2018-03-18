/**

	Register file

**/
module register_ex_mem ( 
	input clk,
	input enable,
	
	// Señales
	input RegWriteDIN,
	input MemtoRegDIN,
	input MemWriteDIN,
	
	// Salida de ALU
	input [5:0] ALUIN,
	input [5:0] WriteDataEIN,
	input [5:0] WriteRegEIN,
	
	
	// Salidas
	output RegWriteDOUT,
	output MemtoRegDOUT,
	output MemWriteDOUT,
	
	output [5:0] ALUOUT,
	output [5:0] WriteDataEOUT,
	output [5:0] WriteRegEOUT
	
	);
	
	reg RegWriteDTMP, MemtoRegDTMP, MemWriteDTMP;
	reg [5:0] ALUTMP, WriteDataETMP, WriteRegETMP;

	always @(posedge clk)
		begin
			if(enable) begin
				
				// Paso de las senales de control
				RegWriteDTMP = RegWriteDIN;
				MemtoRegDTMP = MemtoRegDIN;
				MemWriteDTMP = MemWriteDIN;
				
				// Paso de operandos
				ALUTMP = ALUIN;
				WriteDataETMP = WriteDataEIN;
				WriteRegETMP = WriteRegEIN;
				
			end
		
		end
	
	// Asignacion de las senales de control
	assign RegWriteDOUT = RegWriteDTMP;
	assign MemtoRegDOUT = MemtoRegDTMP;
	assign MemWriteDOUT = MemWriteDTMP;
	
	// Asignacion de operandos
	assign ALUOUT = ALUTMP;
	assign WriteDataEOUT = WriteDataETMP;
	assign WriteRegEOUT = WriteRegETMP;
	
endmodule
 