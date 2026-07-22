module print_tb;
reg num;
integer i;

initial begin
i=1; 
while (i<=10) begin
$display("%0d",i);
i = i+1;
end
end
endmodule
