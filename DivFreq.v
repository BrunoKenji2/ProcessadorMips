module DivFreq
#(parameter FREQ = 10000000)
(
    input clock,
    output reg clock_div
);

reg [26:0] counter;

always @(posedge clock) 
begin
    if (counter == FREQ) 
	 begin
        counter <= 27'd0;
        clock_div <= 1'b1;
    end
    else 
	 begin
        counter <= counter + 27'd1;
        clock_div <= 1'b0;
    end
end

endmodule