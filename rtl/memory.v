module memory(
    input we_a, we_b, clk,
    input [7:0] data_a, data_b,
    input [5:0] addr_a, addr_b,
    output reg [7:0] q_a, q_b
    );
    
reg [7:0] ram[63:0];

// port a read and write
always@(posedge clk)
    if (we_a)
        begin
            ram[addr_a]<=data_a;    //write
            q_a<=data_a;            //read new data
        end
    else
        q_a<=ram[addr_a];           //read old data
     
// port b read and write   
always@(posedge clk)
    if(we_b)
        begin
            ram[addr_b]<=data_b;
            q_b<=data_b;
        end
    else
        q_b<=ram[addr_b];
                
endmodule