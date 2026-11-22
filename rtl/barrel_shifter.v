module barrel_shifter(
    input [7:0]in,
    input [2:0]s,
    input lr,
    output [7:0]out
    );

assign out = lr?(in<<s):(in>>s);

endmodule