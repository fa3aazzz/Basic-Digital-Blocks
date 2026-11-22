module shift_reg(so,si,clk,rst);
input si,clk,rst;
output so;

reg [4:0]sr;

always@(posedge clk, negedge rst)
    if(!rst)
        sr <= 5'd0;
    else
        sr <= {sr[3:0],si};
        
assign so = sr[4];

endmodule
