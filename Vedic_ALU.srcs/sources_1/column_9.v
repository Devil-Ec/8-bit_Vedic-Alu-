`timescale 1ns / 1ps
module Column_9(Sum,C5,C4,C3,C2,C1,C0,M1,M2,M3,M4,M5,M6,M7,M8,M9,M10,M11,M12,M13);
input M1,M2,M3,M4,M5,M6,M7,M8,M9,M10,M11,M12,M13;
output Sum;
output reg C5,C4,C3,C2,C1,C0;

assign Sum = M1^M2^M3^M4^M5^M6^M7^M8^M9^M10^M11^M12^M13;
reg [3:0]count = 0;
reg [2:0]carry;
always @(*)begin
    count =  M1+M2+M3+M4+M5+M6+M7+M8+M9+M10+M11+M12+M13;
    carry = count / 2;
    case(carry)
        0 : begin 
            C0 = 0;
            C1 = 0;
            C2 = 0;
            C3 = 0;
            C4 = 0;
            C5 = 0;
            end
        1 : begin 
            C0 = 1;
            C1 = 0;
            C2 = 0;
            C3 = 0;
            C4 = 0;
            C5 = 0;
            end
        2 : begin 
            C0 = 1;
            C1 = 1;
            C2 = 0;
            C3 = 0;
            C4 = 0;
            C5 = 0;
            end
        3 : begin 
            C0 = 1;
            C1 = 1;
            C2 = 1;
            C3 = 0;
            C4 = 0;
            C5 = 0;
            end
        4 : begin 
            C0 = 1;
            C1 = 1;
            C2 = 1;
            C3 = 1;
            C4 = 0;
            C5 = 0;
            end
        5 : begin 
            C0 = 1;
            C1 = 1;
            C2 = 1;
            C3 = 1;
            C4 = 1;
            C5 = 0;
            end
        6 : begin 
            C0 = 1;
            C1 = 1;
            C2 = 1;
            C3 = 1;
            C4 = 1;
            C5 = 1;
            end
    endcase
end
endmodule
