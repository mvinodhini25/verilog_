module even(output reg num);
integer i;

always@(*) begin 
i=0;

while(i<=20) begin
num = i;
i=i+2;
end

end
endmodule
