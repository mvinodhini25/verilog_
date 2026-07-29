module tb;
wire[7:0]f;
reg [2:0]a;
d1 d3(.a(a),.f(f));
initial begin 
a=3'b000;#10;
a=3'b011;#10;
a=3'b101;#10;

$finish;
end
initial begin 
$monitor("time=%0t,a=%0b,f=%0b",$time,a,f);
end
endmodule
