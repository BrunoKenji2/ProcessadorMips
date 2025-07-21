module MUX8(
  input [31:0] A, B, C, D, E, F, G, H,
  input [2:0] S,
  output reg [31:0] X
);

  always @(A or B or C or D or E or F or G or H or S)
  begin
    case (S)
      3'b000: X = A;
      3'b001: X = B;
      3'b010: X = C;
      3'b011: X = D;
      3'b100: X = E;
      3'b101: X = F;
      3'b110: X = G;
      3'b111: X = H;
    endcase
  end

endmodule