module UnidadeProcessamento (controle, writeRegs, endereco_escrita, endereco_leitura1, endereco_leitura2, clock, outwrite);
  input [3:0] controle;
  input writeRegs;
  input [5:0] endereco_escrita;
  input [5:0] endereco_leitura1;
  input [5:0] endereco_leitura2;
  input clock;

  wire var1, write1;
  wire [31:0] var32, var32_2, write32, hi,lo;
  reg [31:0] dados_escrita_32;
  reg [63:0] dados_escrita_64;
  wire [63:0] var64, write64;
  wire [31:0] out_32;
  wire [63:0] out_64;
  wire out1;
  wire sign_hilo;
  output reg [31:0] outwrite;
  
  Registradores Registradores_inst (endereco_escrita, endereco_leitura1, endereco_leitura2, clock, writeRegs, out_32, out_64, var32, var32_2, outwrite, hi, lo, sign_hilo);

  ULA ULA_inst (controle, var32, var32_2, var64, out_32, out_64, out1, sign_hilo);

endmodule