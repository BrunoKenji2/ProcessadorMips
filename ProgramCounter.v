module ProgramCounter(
  input clk,
  input reset,
  input enable,
  input halt,
  input button,
  input jump,
  input branch,
  input out1ULA,
  input [7:0] addr,
  output reg [7:0] JalAddress,
  output reg [7:0] pc
);
  integer PrimeiroClock = 1;

  always @(posedge clk)
  begin
    if (PrimeiroClock == 1)
    begin
      pc <= 8'b0;
      PrimeiroClock <= 2;
    end
    else if (halt)
    begin
      if ((!button))
        pc <= 8'b0;
    end
    else if (reset)
      pc <= 8'b0;
    else if (jump)
    begin
      JalAddress <= pc + 1;
      pc <= addr;
    end
	  else if (branch && out1ULA)
		  pc <= addr;
    else if ((!enable) || (!button))
      pc <= pc + 1;
  end
endmodule