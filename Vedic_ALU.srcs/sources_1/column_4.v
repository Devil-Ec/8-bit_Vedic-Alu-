`timescale 1ns / 1ps
module Column_4(Sum,C3,C2,C1,C0,M1,M2,M3,M4,M5,M6,M7,M8);
input M1,M2,M3,M4,M5,M6,M7,M8;
output Sum;
output reg C3,C2,C1,C0;

assign Sum = M1^M2^M3^M4^M5^M6^M7^M8;
reg [3:0]count = 0;
reg [2:0]carry;
always @(*)begin
    count =  M1+M2+M3+M4+M5+M6+M7+M8;
    carry = count / 2;
    case(carry)
        0 : begin 
            C0 = 0;
            C1 = 0;
            C2 = 0;
            C3 = 0;
            end
        1 : begin 
            C0 = 1;
            C1 = 0;
            C2 = 0;
            C3 = 0;
            end
        2 : begin 
            C0 = 1;
            C1 = 1;
            C2 = 0;
            C3 = 0;
            end
        3 : begin 
            C0 = 1;
            C1 = 1;
            C2 = 1;
            C3 = 0;
            end
        4 : begin 
            C0 = 1;
            C1 = 1;
            C2 = 1;
            C3 = 1;
            end
    endcase
end
endmodule
