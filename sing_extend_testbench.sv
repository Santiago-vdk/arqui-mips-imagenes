
module sign_extend_testbench;

// Definicion de entradas
reg [15:0] data; // 16-bit input


// Definicion de salida
wire [31:0] extended; // 32-bit output

// Constante de tiempo
parameter stimDelay = 10;

// Inicializacion
sign_extend DUT( data, extended );


initial
begin
 data = -10;

 #(stimDelay) 
 #(stimDelay) data = -30;
 #(stimDelay) data = -20;
 #(stimDelay) data = -2;

 
#100; //Let simulation finish
end
endmodule
