module uni_reg(po,so,pi,si,clk,rst,sel);
    input si,clk,rst;
    input [1:0] sel;
    input [4:0] pi;
    output so;
    output reg [4:0] po;
    
    always@ (posedge clk)
        if (rst)
            po <= 5'd0;
        else
            begin
                case(sel)
                    2'b00: po <= po;
                    2'b01: po <= {po[3:0],si};
                    2'b10: po <= {si,po[4:1]};
                    2'b11: po <= pi;
                    default: po <= 0;
                endcase
            end
            
    assign so = (sel == 2'b01) ? po[4] : po[0];
    
endmodule