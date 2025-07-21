module brancher(
    input [7:0] in,
    input jump,
    input branch,
	 input out1ULA,
    input clk,
    output reg [7:0] address
    );

always @ (*)
begin
   if(jump)
		address = in;
	else if (branch && out1ULA)
		address = in;
	else
		address = 8'b0; // Fixed width to match output
end

endmodule