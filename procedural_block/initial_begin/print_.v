module print_tb;
reg num;
integer i;

initial begin
i=1; 
while (i<=10) begin
num = i;
$display("%d",num);
i = i+1;
end
end
endmodule
