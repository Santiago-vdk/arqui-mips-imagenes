/***************************************************
* File: mux.v
* Author: Benjamin Morgan
* Class: EE 271
* Module: mux_testbench
* Description: A simple 2 to 1 multiplexor circuit
****************************************************/
module instruction_memory_testbench;

// Definicion de entradas
reg	[31:0] address;
//reg [31:0] instruction_memory	[255:0];



// Definicion de salida
wire [31:0] instruction;

// Constante de tiempo
parameter stimDelay = 10;

// Inicializacion
instruction_memory DUT( address, instruction );


initial
begin
 address = 8'h00000000;
 #(stimDelay) 
 $display("Instruccion 1: %h", instruction);
 
 address = 8'h00000004;
 #(stimDelay) 
 $display("Instruccion 2: %h", instruction);
 
 address = 8'h00000008;
 #(stimDelay) 
 $display("Instruccion 3: %h", instruction);
 
 address = 8'h0000000C;
 #(stimDelay) 
 $display("Instruccion 4: %h", instruction);
 


 
#100; //Let simulation finish
end
endmodule