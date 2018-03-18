module register_if_id(
    input clk,
	 
	 input enable,
	 
	 input [31:0] DatoPCPlus4IN,
	 output [31:0] DatoPCPlus4OUT,
	 
	 input [31:0] DatoInstrDIN,
	 output [31:0] DatoInstrDOUT
);

	 reg [31:0] DatoPCPlus4TMP;
	 reg [31:0] DatoInstrDTMP;

always @(posedge clk)
begin
	if(enable) begin
		DatoPCPlus4TMP = DatoPCPlus4IN;
	   DatoInstrDTMP = DatoInstrDIN;
	end
end

	 assign DatoPCPlus4OUT = DatoPCPlus4TMP;
	 assign DatoInstrDOUT = DatoInstrDTMP;

endmodule
