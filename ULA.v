module ULA
(controle, in1, in2, in3, out_32, out_64, out1, sign_hilo);
input [31:0] in1;   
input [31:0] in2;
input [31:0] in3;
input [3:0] controle;
output [31:0] out_32;
output [63:0] out_64;
output reg out1, sign_hilo;
reg [31:0] result_32;
reg [63:0] result_64;
reg [63:0] hilo;
always @(in1 or in2 or controle)
begin
sign_hilo = 1'b0;
  case(controle)
   4'b0000:
		begin
		result_32 = in1 + in2;
		result_64 = 64'd0;
		out1 = 1'b0;
		end
	
	4'b0001:
		begin
		result_32 = in1 - in2;
		result_64 = 64'd0;
		out1 = 1'b0;
		end
		
	4'b0010:
		begin
		//hilo = in1 * in2;
		//result_64[63:32] = hilo[63:32];
		//result_64[31:0] = hilo[31:0];
		//out1 = 1'b0;
		//sign_hilo = 0;
		result_32 = in1 * in2;
		result_64 = 64'd0;
		out1 = 1'b0;
		end

	4'b0011:
		begin
		//result_64[63:32] = in1 / in2;
		//result_64[31:0] = in1 % in2;
		//out1 = 1'b0;
		//sign_hilo = 1;
		result_64 = 64'd0;
		result_32 = in1 / in2;
		out1 = 1'b0; 
		end
	
	4'b0100:
		begin
		result_32 = in1 & in2;
		result_64 = 64'd0;
		out1 = 1'b0;
		end

	4'b0101:
		begin
		result_32 = in1 | in2;
		result_64 = 64'd0;
		out1 = 1'b0;
		end

	4'b0110:
		begin
		result_32 = (in1 < in2) ? 32'd1 : 32'd0;
		//result_32 = 32'd0;
		result_64 = 64'd0;
		out1 = in1 < in2;
		end

	4'b0111:
		begin
		result_32 = 32'd0;
		result_64 = 64'd0;
		out1 = in1 > in2;
		end

	4'b1000:
		begin
		result_32 = (in1 == in2) ? 32'd1 : 32'd0;
		result_64 = 64'd0;
		out1 = in1 == in2;
		end

	4'b1001:
		begin
		result_32 = (in1 <= in2) ? 32'd1 : 32'd0;
		result_64 = 64'd0;
		out1 = in1 <= in2;
		end

	4'b1010:
		begin
		result_32 = 32'd0;
		result_64 = 64'd0;
		out1 = in1 >= in2;
		end

	4'b1011:
    	begin
    	result_32 = in1 << in2[4:0];
    	result_64 = 64'd0;
    	out1 = 1'b0;
    end

	4'b1100:
    begin
    	result_32 = in1 >> in2[4:0];
    	result_64 = 64'd0;
    	out1 = 1'b0;
    end

	4'b1101:
	begin
		result_32 = 32'd0;
		result_64 = 64'd0;
		out1 = in1 != in2;
	end

   default:
		begin
		result_32 = 32'd0;
		result_64 = 64'd0;
		out1 = 1'b0;
		end

  endcase
end
assign out_32 = result_32;
assign out_64 = result_64;
endmodule