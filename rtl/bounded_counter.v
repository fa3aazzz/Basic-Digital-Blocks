module bounded_counter(count,u_d,clk,rst,data,load);
    input clk,rst,load,u_d;
    input [5:0] data;
    output [5:0] count;
    
    reg [5:0] count_temp;
    
    always@ (posedge clk)
        if(rst | count_temp>6'd40 | count_temp<6'd10)
            count_temp <= 6'd10;
        else if(load)
            count_temp <= data;
        else if(u_d)
            count_temp <= (count_temp == 6'd40) ? 6'd10 : count_temp + 1;
        else
            count_temp <= (count_temp == 6'd10) ? 6'd40 : count_temp - 1;
            
    assign count = count_temp;
    
endmodule
