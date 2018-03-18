
module sign_extend (
   data,	//16-bit input
	extended	//32-bit sign extended output
	);


parameter INPUT_DWIDTH = 16;
parameter OUTPUT_DWIDTH = 32;
input [INPUT_DWIDTH-1:0] data;
output [OUTPUT_DWIDTH-1:0] extended;
 

    //-------------------------------------------------
localparam SIGN_BIT_LOCATION = INPUT_DWIDTH-1;
localparam SIGN_BIT_REPLICATION_COUNT = OUTPUT_DWIDTH - INPUT_DWIDTH;

assign extended = {{SIGN_BIT_REPLICATION_COUNT{data[SIGN_BIT_LOCATION]}},data[INPUT_DWIDTH-1:0]};

endmodule  