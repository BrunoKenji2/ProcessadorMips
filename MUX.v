module MUX(
  input [31:0] A, B, C, D,
  input [1:0] S,
  output reg [31:0] X
);

  always @(A or B or C or D or S)
  begin
    case (S)
      2'b00: X = A;
      2'b01: X = B;
      2'b10: X = C;
      2'b11: X = D;
    endcase
  end

endmodule