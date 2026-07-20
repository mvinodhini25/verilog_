module pass_tb;
wire valid;
reg [3:0]a;

pass tb(.a(a),.valid(valid));

initial begin 
a=4'b0011;#10;
a=4'b1110;#10;
$finish;
end

initial begin
$monitor("time=%0t,a=%0b,valid=%0b",$time,a,valid);
end

endmodule
