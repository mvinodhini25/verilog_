module random_tb;
integer y;
integer i;
initial begin
i=1;
while (i<=10) begin
y=($urandom%10)+1;
$display("%0d",y);
i=i+1;
end
end
endmodule

