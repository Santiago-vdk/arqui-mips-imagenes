
module equal_testbench;

// Definicion de entradas
reg [5:0] operA;
reg [5:0] operB;



// Definicion de salida
wire out;

// Constante de tiempo
parameter stimDelay = 10;

// Inicializacion
equal DUT( operA, operB, out );


initial
begin
 operA = 0; operB = 0;

 #(stimDelay) 
 #(stimDelay) operA = 4; operB = 10;
 #(stimDelay) operA = 4; operB = 20;
 #(stimDelay) operA = 2; operB = 2;
 
#100; //Let simulation finish
end
endmodule