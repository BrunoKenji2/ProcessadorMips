module ExtensorBit14(
    input [13:0] data_in,
    output [31:0] data_out
);

assign data_out = {{18{data_in[13]}}, data_in};

endmodule