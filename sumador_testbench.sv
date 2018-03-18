
module sumador_testbench;

// Definicion de entradas
reg [15:0] operA;
reg [15:0] operB;



// Definicion de salida
wire [31:0] out;

// Constante de tiempo
parameter stimDelay = 10;

// Inicializacion
sumador DUT( operA, operB, out );


initial
begin
 operA = 0; operB = 1;

 #(stimDelay) 
 #(stimDelay) operA = 4; operB = 10;
 #(stimDelay) operA = 4; operB = 20;
 #(stimDelay) operA = 4; operB = 32;
 
#100; //Let simulation finish
end
endmodule