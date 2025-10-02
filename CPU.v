module CPU (
    input clock,
    input reset,
	input button,
    input [16:0] switches,
    output [6:0] display1,
    output [6:0] display2,
    output [6:0] display3,
    output [6:0] display4,
    output [6:0] display5,
    output [6:0] display6,
    output [6:0] display7,
	output [31:0] instruction, rsval, rdval, rtval, disp,
	output [7:0] addrrom, addrpc,
	output teste,
    output [5:0] writeAddr,
    output [31:0] ramIn,
    output [31:0] ramOut,
	 output [31:0] ZERO
    );

wire [3:0] controleULA;
wire [31:0] rs;
wire [31:0] rt;
wire [31:0] rd;
wire [31:0] out32ULA;
wire [63:0] out64ULA;
wire out1ULA;
wire sign_hilo;
wire [31:0] instrucao;
wire [31:0] regvalue32;
wire [31:0] in2ula;
wire [63:0] value64;
wire [31:0] hi;
wire [31:0] lo;
wire writeregs;
wire [5:0] addr_read_ram;
wire [5:0] addr_write_ram;
wire [31:0] data_write_ram;
wire [31:0] outram;
wire [7:0] addr_read_rom;
wire controleJump;
wire [7:0] pc_addr;
wire controleBranch;
wire controleImediato;
wire controleJumpReg;
wire [2:0] controleRegWrite;
wire controleMemWrite;
wire movhi;
wire movlo;
wire outuse;
wire [1:0] extent;
wire [7:0] JumpAddress;
wire OutputReset;
wire outoutput;
wire halt;
wire inputuse;
wire readregs;
wire outreg;
wire [31:0] data_display;
wire clk;
wire [5:0] write_addr; // Endereco de escrita do registrador destino
wire [1:0] rTD; // Seleciona o endereco de escrita do registrador destino
wire [7:0] JalAddress;
wire [31:0] imm32;
DivFreq DivFreq_inst(clock, clk);

brancher brancher_inst(JumpAddress, controleJump, controleBranch, out1ULA, clk, pc_addr);

MUX2 mux_jump_reg(instrucao[7:0], rs[7:0], controleJumpReg, JumpAddress);

ProgramCounter pc_inst(clk, reset, inputuse, halt, button, controleJump, controleBranch, out1ULA, pc_addr, JalAddress, addr_read_rom);

ROMSinglePort rom_inst(addr_read_rom, clk, instrucao);

Controle controle_inst(instrucao[31:26], controleULA, controleImediato, writeregs, readregs, controleRegWrite, controleMemWrite, controleJump, controleBranch, controleJumpReg, movhi, movlo, outuse, extent, OutputReset, inputuse, outreg, rTD, halt);

Registradores registradores_inst(instrucao[25:20], instrucao[19:14], write_addr, clk, writeregs, readregs, regvalue32, out64ULA, rs, rt, rd, hi, lo, sign_hilo);

MUX mux_reg_write_addr(instrucao[19:14], instrucao[13:8], 6'b011111, 6'b0, rTD, write_addr);

MUX8 mux_reg(out32ULA, outram, switches, instrucao[13:0], rs, JalAddress, hi, lo, controleRegWrite, regvalue32);

ExtensorBit14 extensor_inst(instrucao[13:0], imm32);

MUX mux_imm(rt, imm32, 32'b0, 32'b0, controleImediato, in2ula);

ULA ULA_inst(controleULA, rs, in2ula, 32'b0, out32ULA, out64ULA, out1ULA, sign_hilo);

MUX2 mux_ram_reg(outram, rs, outreg, data_display);

RAMDualPortDualClock ram_inst(rt, out32ULA, out32ULA, controleMemWrite, clk, outram);

OutputMod output_inst(data_display, instrucao[25:20], OutputReset, clk, outuse, outoutput, display1, display2, display3, display4, display5, display6, display7);

assign instruction = instrucao;
assign rsval = rs;
assign rdval = regvalue32;
assign rtval = rt;
assign disp = data_display;
assign addrrom = addr_read_rom;
assign addrpc = JalAddress;
assign teste = controleJump;
assign writeAddr = write_addr;
assign ramIn = rt;
assign ramOut = outram;
assign ZERO = 32'b0;

endmodule