module p_n_tb;
wire [63:0]det;
reg [3:0]a;

p_n detec(.a(a),.det(det));

initial begin
a=4'b1010;#10;
a=4'b0011;#10;
a=4'b1000;#10;
$finish;
end

initial begin 
$monitor("time=%0t,a=%0b,det=%s",$time,a,det);
end
endmodule
