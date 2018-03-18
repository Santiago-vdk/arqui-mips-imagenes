

module register_pc_testbench;

// Definicion de entradas
reg clk;
reg enable;
reg [31:0] DatoPCIN;
	 

// Definicion de salida
wire [31:0] DatoPCOUT;


// Constante de tiempo
parameter stimDelay = 10;

// Inicializacion
register_pc DUT( clk, DatoPCIN, DatoPCOUT );

always begin
    #(stimDelay) clk = ~clk;	
end
  


initial
begin
 DatoPCIN = 32'h00000000; clk = 0; enable = 1;

 #(stimDelay) 
 #(stimDelay) DatoPCIN = 0;
 #(stimDelay) DatoPCIN = 2;
 #(stimDelay) DatoPCIN = 4;
 #(stimDelay) DatoPCIN = 6;
 
#100; //Let simulation finish
end
endmodule