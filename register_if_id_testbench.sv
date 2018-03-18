

module register_if_id_testbench;

// Definicion de entradas
reg clk;
reg enable;
reg [31:0] DatoPCPlus4IN;
reg [31:0] DatoInstrDIN;
	 

// Definicion de salida
wire [31:0] DatoPCPlus4OUT;
wire [31:0] DatoInstrDOUT;

// Constante de tiempo
parameter stimDelay = 10;

// Inicializacion
register_if_id DUT( clk, enable, DatoPCPlus4IN, DatoPCPlus4OUT, DatoInstrDIN, DatoInstrDOUT );

always begin
    #(stimDelay) clk = ~clk;	
end
  

initial
begin
 DatoPCPlus4IN = 32'h00000000; DatoPCPlus4IN = 32'h00000000; clk = 0; enable = 1;

 #(stimDelay) 
 #(stimDelay) DatoPCPlus4IN = 9;
 #(stimDelay) DatoPCPlus4IN = 2;
 #(stimDelay) DatoPCPlus4IN = 4;
 #(stimDelay) DatoPCPlus4IN = 6;
 
 #(stimDelay) DatoInstrDIN = 0;
 #(stimDelay) DatoInstrDIN = 2;
 #(stimDelay) DatoInstrDIN = 4;
 #(stimDelay) DatoInstrDIN = 6;
 
 #100; //Let simulation finish
end
endmodule
