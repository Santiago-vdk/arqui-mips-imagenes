/***************************************************
* File: mux.v
* Author: Benjamin Morgan
* Class: EE 271
* Module: mux_testbench
* Description: A simple 2 to 1 multiplexor circuit
****************************************************/
module mux_testbench;
 reg in0, in1, sel;
wire f;
parameter stimDelay = 10;

mux_2 DUT(f, in0, in1, sel);

initial
begin
 in0 = 0; in1 = 0; sel=0;

 #(stimDelay) in0 = 1;
 #(stimDelay) in0 = 0; in1 = 1;
 #(stimDelay) in0 = 1;
 #(stimDelay) in0 = 0; in1 = 0; sel = 1;
 #(stimDelay) in0 = 1;
 #(stimDelay) in0 = 0; in1 = 1;
 #(stimDelay) in0 = 1;
 #(stimDelay) sel = 0;
#100; //Let simulation finish
end
endmodule