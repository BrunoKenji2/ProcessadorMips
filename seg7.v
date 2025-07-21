module seg7(
    input [15:0] bcd,
    output reg [6:0] display1,
	 output reg [6:0] display2,
	 output reg [6:0] display3,
	 output reg [6:0] display4
    );

always @(bcd)
begin
    case(bcd[3:0])
        4'b0000: display1 = 7'b1000000;
        4'b0001: display1 = 7'b1111001;
        4'b0010: display1 = 7'b0100100;
        4'b0011: display1 = 7'b0110000;
        4'b0100: display1 = 7'b0011001;
        4'b0101: display1 = 7'b0010010;
        4'b0110: display1 = 7'b0000010;
        4'b0111: display1 = 7'b1111000;
        4'b1000: display1 = 7'b0000000;
        4'b1001: display1 = 7'b0010000;
        default: display1 = 7'b1000000;
    endcase
    case(bcd[7:4])
        4'b0000: display2 = 7'b1000000;
        4'b0001: display2 = 7'b1111001;
        4'b0010: display2 = 7'b0100100;
        4'b0011: display2 = 7'b0110000;
        4'b0100: display2 = 7'b0011001;
        4'b0101: display2 = 7'b0010010;
        4'b0110: display2 = 7'b0000010;
        4'b0111: display2 = 7'b1111000;
        4'b1000: display2 = 7'b0000000;
        4'b1001: display2 = 7'b0010000;
        default: display2 = 7'b1000000;
    endcase
    case(bcd[11:8])
        4'b0000: display3 = 7'b1000000;
        4'b0001: display3 = 7'b1111001;
        4'b0010: display3 = 7'b0100100;
        4'b0011: display3 = 7'b0110000;
        4'b0100: display3 = 7'b0011001;
        4'b0101: display3 = 7'b0010010;
        4'b0110: display3 = 7'b0000010;
        4'b0111: display3 = 7'b1111000;
        4'b1000: display3 = 7'b0000000;
        4'b1001: display3 = 7'b0010000;
        default: display3 = 7'b1000000;
    endcase
    case(bcd[15:12])
        4'b0000: display4 = 7'b1000000;
        4'b0001: display4 = 7'b1111001;
        4'b0010: display4 = 7'b0100100;
        4'b0011: display4 = 7'b0110000;
        4'b0100: display4 = 7'b0011001;
        4'b0101: display4 = 7'b0010010;
        4'b0110: display4 = 7'b0000010;
        4'b0111: display4 = 7'b1111000;
        4'b1000: display4 = 7'b0000000;
        4'b1001: display4 = 7'b0010000;
        default: display4 = 7'b1000000;
    endcase
end
endmodule