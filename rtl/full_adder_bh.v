module full_adder_bh(s,cout,a,b,cin);
input a,b,cin;
output reg s,cout;

always@ (*)
    begin
        s = a^b^cin;
        cout=a&b|b&cin|cin&a;
    end
endmodule