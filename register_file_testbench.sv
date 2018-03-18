
module register_file_testbench;

// Definicion de entradas
	reg clk;
	reg [31:0] instruction;	
   reg [31:0] A3;
	
	reg [31:0] WD3;
	reg WE3;


// Definicion de salida
   wire [5:0] RD1;
	wire [5:0] RD2;


// Constante de tiempo
parameter stimDelay = 10;

// Inicializacion
register_file DUT( clk, instruction, A3, WD3, WE3 );

always begin
    #(stimDelay) clk = ~clk;	
end
  

initial
	begin
	 instruction = 32'h22310000; clk = 0; A3 = 0; WD3 = 0; WE3 = 0;
	 #(stimDelay) 
	 #(stimDelay) instruction = 32'h22310111;


	#100; //Let simulation finish
	end
endmodule
