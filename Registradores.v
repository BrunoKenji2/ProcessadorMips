module Registradores (endereco_leitura1, endereco_leitura2, endereco_escrita, clock, writeRegs, readRegs, dados_escrita_32, dados_escrita_64, leituraRS, leituraRT, leituraRD, hi, lo, hilo);
input [5:0] endereco_leitura1;
input [5:0] endereco_leitura2;
input [5:0] endereco_escrita; //enderecos de leitura e escrita
input clock, writeRegs, readRegs, hilo; //sinais de escrita e clock
input [63:0] dados_escrita_64; //valor que sera escrito na memoria
input [31:0] dados_escrita_32; //valor que sera escrito na memoria
output [31:0] leituraRS; //saida que fornece o valor armazenado
output [31:0] leituraRD; //saida que fornece o valor armazenado
output [31:0] leituraRT; //saida que fornece o valor armazenado
output [31:0] hi;
output [31:0] lo;
integer PrimeiroClock=1; //flag para escrever na meméria apenas no primeiro clock

reg[31:0] regs [63:0]; // declaracao da memoria em si
reg [31:0] RD, RS, RT;

always @ (negedge clock) 
begin
    if (writeRegs)
    begin
        if(hilo)
        begin
            regs[62] = dados_escrita_64[31:0];
            regs[63] = dados_escrita_64[63:32];
        end
        else
        begin
            regs[endereco_escrita] = dados_escrita_32;
        end
    end

end

assign hi = regs[63];
assign lo = regs[62];
assign leituraRD = regs[endereco_escrita];
assign leituraRS = regs[endereco_leitura1];
assign leituraRT = regs[endereco_leitura2];

endmodule