
module shift_testbench;

// Definicion de entradas
reg [31:0] data; 


// Definicion de salida
wire [31:0] shifted; 

// Constante de tiempo
parameter stimDelay = 10;

// Inicializacion
shift DUT( data, shifted );


initial
begin
 data = 4;

 #(stimDelay) 
 #(stimDelay) data = 2;
 #(stimDelay) data = 6;

 
#100; //Let simulation finish
end
endmodule
