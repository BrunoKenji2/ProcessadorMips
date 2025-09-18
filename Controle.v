module Controle (
  input [5:0] opcode,
  output reg [3:0] controleULA,
  output reg controleImediato,
  output reg controleWriteRegs,
  output reg controleReadRegs,
  output reg [2:0] controleRegInput,
  output reg controleMemWrite,
  output reg controleJump,
  output reg controleBranch,
  output reg controleJumpReg,
  output reg movhi,
  output reg movlo,
  output reg outuse,
  output reg [1:0] extent,
  output reg outputreset,
  output reg inputuse,
  output reg outreg,
  output reg [1:0] rTD,
  output reg halt);

always @(*)
begin
outreg = 1'b0;
rTD = 2'b01;
halt = 1'b0;
    case(opcode)
    //ADD
    6'b000000:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'b0000;
        controleImediato = 1'b0;
        controleWriteRegs = 1'b1;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b0;
        controleJump = 1'b0;
        controleBranch = 1'b0;
        end
      //SUB
      6'b000001:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'b0001;
        controleImediato = 1'b0;
        controleWriteRegs = 1'b1;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b0;
        controleJump = 1'b0;
        controleBranch = 1'b0;
        end
      //MULT
      6'b000010:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'b0010;
        controleImediato = 1'b0;
        controleWriteRegs = 1'b1;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b0;
        controleJump = 1'b0;
        controleBranch = 1'b0;
        end
      //DIV
      6'b000011:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'b0011;
        controleImediato = 1'b0;
        controleWriteRegs = 1'b1;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b0;
        controleJump = 1'b0;
        controleBranch = 1'b0;
        end
      //AND
      6'b000100:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'b0100;
        controleImediato = 1'b0;
        controleWriteRegs = 1'b1;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b0;
        controleJump = 1'b0;
        controleBranch = 1'b0;
        end
      //OR
      6'b000101:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'b0101;
        controleImediato = 1'b0;
        controleWriteRegs = 1'b1;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b0;
        controleJump = 1'b0;
        controleBranch = 1'b0;
        end
      //SLL
      6'b000110:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'b1011;
        controleImediato = 1'b1;
        controleWriteRegs = 1'b1;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b0;
        controleJump = 1'b0;
        controleBranch = 1'b0;
        end
      //SRL
      6'b000111:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'b1100;
        controleImediato = 1'b1;
        controleWriteRegs = 1'b1;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b0;
        controleJump = 1'b0;
        controleBranch = 1'b0;
        end
      //SLT
      6'b001000:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'b0110;
        controleImediato = 1'b0;
        controleWriteRegs = 1'b1;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b0;
        controleJump = 1'b0; 
        controleBranch = 1'b0;
        end      
      //MFHI
      6'b001001:
        begin
        outreg = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'bXXXX;
        controleImediato = 1'b0;
        controleWriteRegs = 1'b1;
        controleRegInput = 3'b110;
        controleMemWrite = 1'b0;
        controleJump = 1'b0;
        movhi = 1'b1;
        controleBranch = 1'b0;
        end
      //MFLO
      6'b001010:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'bXXXX;
        controleImediato = 1'b0;
        controleWriteRegs = 1'b1;
        controleRegInput = 3'b111;
        controleMemWrite = 1'b0;
        controleJump = 1'b0;
        movlo = 1'b1;
        controleBranch = 1'b0;
        end
      //MOVE
      6'b001011:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'bXXXX;
        controleImediato = 1'b0;
        controleWriteRegs = 1'b1;
        controleRegInput = 3'b100;
        controleMemWrite = 1'b0;
        controleJump = 1'b0;
        controleBranch = 1'b0;
        end
      //JR
      6'b001100:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        outuse = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'bXXXX;
        controleImediato = 1'b0;
        controleWriteRegs = 1'b0;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b0;
        controleJump = 1'b1;
        controleJumpReg = 1'b1;
        controleBranch = 1'b0;
        end
      //JALR
      6'b001101:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        outuse = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'bXXXX;
        controleImediato = 1'b0;
        controleWriteRegs = 1'b1;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b0;
        controleJump = 1'b0;
        controleJumpReg = 1'b1;
        controleBranch = 1'b0;
        end
      //LA
      6'b001110:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'bXXXX;
        controleImediato = 1'b0;
        controleWriteRegs = 1'b1;
        controleRegInput = 3'b001;
        controleMemWrite = 1'b0;
        controleJump = 1'b0;
        rTD = 2'b00;
        controleBranch = 1'b0;
        end
      //ADDI
      6'b001111:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'b0000;
        controleImediato = 1'b1;
        controleWriteRegs = 1'b1;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b0;
        controleJump = 1'b0;
        rTD = 2'b00;
        controleBranch = 1'b0;
        end
      //SUBI
      6'b010000:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'b0001;
        controleImediato = 1'b1;
        controleWriteRegs = 1'b1;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b0;
        controleJump = 1'b0; 
        rTD = 2'b00;
        controleBranch = 1'b0;
        end
      //ANDI
      6'b010001:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'b0100;
        controleImediato = 1'b1;
        controleWriteRegs = 1'b1;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b0;
        controleJump = 1'b0;
        rTD = 2'b00;
        controleBranch = 1'b0;
        end
      //ORI
      6'b010010:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'b0101;
        controleImediato = 1'b1;
        controleWriteRegs = 1'b1;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b0; 
        controleJump = 1'b0;
        rTD = 2'b00;
        controleBranch = 1'b0;
        end
      //BEQ
      6'b010011:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'b1000;
        controleImediato = 2'b00;
        controleWriteRegs = 1'b0;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b0; 
        controleJump = 1'b0;
		    extent = 2'b01;
        controleBranch = 1'b1;
        end
      //BNE
      6'b010100:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'b1101;
        controleImediato = 1'b0;
        controleWriteRegs = 1'b0;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b0; 
        controleJump = 1'b0;
		    extent = 2'b01;
        controleBranch = 1'b0;
        end
      //BGT
      6'b010101:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'b0111;
        controleImediato = 1'b0;
        controleWriteRegs = 1'b0;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b0; 
        controleJump = 1'b0;
		    extent = 2'b01;
        controleBranch = 1'b0;
        end
      //BGTE
      6'b010110:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'b1010;
        controleImediato = 1'b0;
        controleWriteRegs = 1'b0;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b0; 
        controleJump = 1'b0;
		    extent = 2'b01;
        controleBranch = 1'b0;
        end
      //BLT
      6'b010111:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'b0110;
        controleImediato = 1'b0;
        controleWriteRegs = 1'b0;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b0; 
        controleJump = 1'b0;
		    extent = 2'b01;
        controleBranch = 1'b0;
        end
      //BLTE
      6'b011000:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'b1001;
        controleImediato = 1'b0;
        controleWriteRegs = 1'b0;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b0; 
        controleJump = 1'b0;
		    extent = 2'b01;
        controleBranch = 1'b0;
        end
      //LW
      6'b011001:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'b0000;
        controleImediato = 1'b1;
        controleWriteRegs = 1'b1;
        controleRegInput = 3'b001;
        controleMemWrite = 1'b0; 
        controleJump = 1'b0;
        rTD = 2'b00;
        controleBranch = 1'b0;
        end
      //SW
      6'b011010:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b0;
        inputuse = 1'b0;
        controleULA = 4'b0000;
        controleImediato = 1'b1;
        controleWriteRegs = 1'b0;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b1;
        controleJump = 1'b0;
        controleBranch = 1'b0;
        end
      //LI
      6'b011011:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'bXXXX;
        controleImediato = 1'b1;
        controleWriteRegs = 1'b1;
        controleRegInput = 3'b011;
        controleMemWrite = 1'b0; 
        controleJump = 1'b0;
        rTD = 2'b00;
        controleBranch = 1'b0;
        end
      //J
      6'b011100:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b0;
        inputuse = 1'b0;
        controleULA = 4'bXXXX;
        controleImediato = 1'b0;
        controleWriteRegs = 1'b0;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b0; 
        controleJump = 1'b1;
		    extent = 2'b00;
        controleBranch = 1'b0;
        end
      //JAL
      6'b011101:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'bXXXX;
        controleImediato = 1'b0;
        controleWriteRegs = 1'b1;
        controleRegInput = 3'b101;
        controleMemWrite = 1'b0; 
        controleJump = 1'b1;
		    extent = 2'b00;
        rTD = 2'b10;
        controleBranch = 1'b0;
        end
      //HALT
      6'b011110:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b0;
        inputuse = 1'b1;
        controleULA = 4'bXXXX;
        controleImediato = 1'b0;
        controleWriteRegs = 1'b0;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b0; 
        controleJump = 1'b0;
        halt = 1'b1;
        controleBranch = 1'b0;
        end
		  //OUTPUTMEM
      6'b011111:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        controleULA = 4'b1111;
        controleImediato = 1'b0;
        controleWriteRegs = 1'b0;
        controleRegInput = 3'b001;
        controleMemWrite = 1'b0; 
        controleJump = 1'b0;
        outuse = 1'b1;
        inputuse = 1'b1;
        controleBranch = 1'b0;
        end
		  //OUTPUTREG
		  6'b100000:
        begin
        outreg = 1'b1;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        controleULA = 4'b1111;
        controleImediato = 1'b0;
        controleWriteRegs = 1'b0;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b0; 
        controleJump = 1'b0;
        outuse = 1'b1;
		  inputuse = 1'b1;
      controleBranch = 1'b0;
        end
		   //OUTPUT RESET
		  6'b100001:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        extent = 2'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'bXXXX;
        controleImediato = 1'bX;
        controleWriteRegs = 1'b0;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b0; 
        controleJump = 1'b0;
        outuse = 1'b0;
	     outputreset = 1'b1;
       controleBranch = 1'b0;
        end
		  //INPUT
		 6'b100010:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b0;
        controleULA = 4'bXXXX;
        controleImediato = 1'bX;
        controleWriteRegs = 1'b1;
        controleRegInput = 3'b010;
        controleMemWrite = 1'b0; 
        controleJump = 1'b0;
		  inputuse = 1'b1;
      controleBranch = 1'b0;
        end
		  //SET
      6'b100011:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'b1000;
        controleImediato = 1'b0;
        controleWriteRegs = 1'b1;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b0;
        controleJump = 1'b0;
        controleBranch = 1'b0;
        end
		 //DIVI
     6'b100100:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'b0011;
        controleImediato = 1'b1;
        controleWriteRegs = 1'b1;
        controleRegInput = 3'b000;
        controleMemWrite = 1'b0;
        controleJump = 1'b0;
        rTD = 2'b00;
        controleBranch = 1'b0;
        end

      default:
        begin
        outreg = 1'b0;
        movhi = 1'b0;
        movlo = 1'b0;
        controleJumpReg = 1'b0;
        outuse = 1'b0;
        extent = 2'b0;
        outputreset = 1'b0;
        controleReadRegs = 1'b1;
        inputuse = 1'b0;
        controleULA = 4'bXXXX;
        controleImediato = 1'bX;
        controleWriteRegs = 1'bX;
        controleRegInput = 3'b001;
        controleMemWrite = 1'bX; 
        controleJump = 1'bX;
        controleBranch = 1'bX;
        end
		  
		  
    endcase
end

endmodule
