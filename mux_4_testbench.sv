/***************************************************
* File: mux.v
* Author: Benjamin Morgan
* Class: EE 271
* Module: mux_testbench
* Description: A simple 2 to 1 multiplexor circuit
****************************************************/
module mux_4_testbench;

// Definicion de entradas
reg [3:0] a;
reg [3:0] b;
reg [3:0] c;
reg [3:0] d;

// Definicion de select
reg [1:0] sel;

// Definicion de salida
wire [3:0] out;

// Constante de tiempo
parameter stimDelay = 10;

// Inicializacion
mux_4 DUT( a, b, c, d, sel, out );


initial
begin
 sel = 2'b00; a = 0; b = 1; c = 2; d = 3;

 #(stimDelay) 
 #(stimDelay) sel = 2'b00;
 #(stimDelay) sel = 2'b01;
 #(stimDelay) sel = 2'b10;
 #(stimDelay) sel = 2'b11;
 
#100; //Let simulation finish
end
endmodule