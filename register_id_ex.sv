/**

	Register file

**/
module register_id_ex ( 
	input clk,
	input CLR,
	
	// Señales
	input RegWriteDIN,
	input MemtoRegDIN,
	input MemWriteDIN,
	input ALUControlDIN,
	input ALUSrcDIN,
	input RegDstDIN,
	
	// Salida de Register File
	input [5:0] RD1IN,
	input [5:0] RD2IN,
	
	// Señales que saltan el Register File
	input [5:0] RsDIN,
	input [5:0] RtDIN,
	input [5:0] RdEIN,
	
	// Señales con extension
	input [31:0] SignImmDIN,
	
	
	// Salidas
	output RegWriteDOUT,
	output MemtoRegDOUT,
	output MemWriteDOUT,
	output ALUControlDOUT,
	output ALUSrcDOUT,
	output RegDstDOUT,
	
	output [5:0] RD1OUT,
	output [5:0] RD2OUT,
	
	output [5:0] RsDOUT,
	output [5:0] RtDOUT,
	output [5:0] RdEOUT,
	
	output [31:0] SignImmDOUT

	);
	
	reg RegWriteDTMP, MemtoRegDTMP, MemWriteDTMP, ALUControlDTMP, ALUSrcDTMP, RegDstDTMP;
	reg [5:0] RD1TMP, RD2TMP, RsDTMP, RtDTMP, RdETMP;
	reg [31:0] SignImmDTMP;
	


	always @(posedge clk)
		begin
			if(CLR) begin
				// Paso de las senales de control
				RegWriteDTMP = 0;
				MemtoRegDTMP = 0;
				MemWriteDTMP = 0;
				ALUControlDTMP = 0;
				ALUSrcDTMP = 0;
				RegDstDTMP = 0;
				
				// Paso de operandos
				RD1TMP = 0;
				RD2TMP = 0;
				RsDTMP = 0;
				RtDTMP = 0;
				RdETMP = 0;
			
				SignImmDTMP = 0;
				
			end
			else begin 
				// Paso de las senales de control
				RegWriteDTMP = RegWriteDIN;
				MemtoRegDTMP = MemtoRegDIN;
				MemWriteDTMP = MemWriteDIN;
				ALUControlDTMP = ALUControlDIN;
				ALUSrcDTMP = ALUSrcDIN;
				RegDstDTMP = RegDstDIN;
				
				// Paso de operandos
				RD1TMP = RD1IN;
				RD2TMP = RD2IN;
				RsDTMP = RsDIN;
				RtDTMP = RtDIN;
				RdETMP = RdEIN;
			
				SignImmDTMP = SignImmDIN;
			end
		
		end
	
	// Asignacion de las senales de control
	assign RegWriteDOUT = RegWriteDTMP;
	assign MemtoRegDOUT = MemtoRegDTMP;
	assign MemWriteDOUT = MemWriteDTMP;
	assign ALUControlDOUT = ALUControlDTMP;
	assign ALUSrcDOUT = ALUSrcDTMP;
	assign RegDstDOUT = RegDstDTMP;
	
	// Asignacion de operandos
	assign RD1OUT = RD1TMP;
	assign RD2OUT = RD2TMP;
	assign RsDOUT = RsDTMP;
	assign RtDOUT = RtDTMP;
	assign RdEOUT = RdETMP;
	
	assign SignImmDOUT = SignImmDTMP;
	
endmodule
 