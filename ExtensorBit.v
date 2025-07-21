module ExtensorBit (
    input[25:0] in1,
    input[13:0] in2,
    input[16:0] in3,
    input[1:0] select,
    output reg [31:0] out
    );

always @ (*)
begin
    case (select)
        2'b00: 
        begin
            out = in1;
            if(in1[25] == 1'b1)
                out = out + 32'b11111100000000000000000000000000;
        end
        2'b01: 
        begin
            out = in2;
            if(in2[13] == 1'b1)
                out = out + 32'b11111111111111111100000000000000;
        end
        2'b10:
        begin
            out = in3;
            if(in3[16] == 1'b1)
                out = out + 32'b11111111111111100000000000000000;
        end
        default: out = 32'b0;
    endcase
end

 
endmodule