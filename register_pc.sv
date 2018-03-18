module register_pc(
    input clk,
	 input enable,
	 input [31:0] DatoPCIN,
	 output [31:0] DatoPCOUT
);

	 reg [31:0] DatoPCTMP;

always @(posedge clk)
begin
	 if(enable) begin
	 
		DatoPCTMP = DatoPCIN;
		
	  end
	
end

	 assign DatoPCOUT = DatoPCTMP;

endmodule
