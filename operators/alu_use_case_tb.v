module alu_tb;
wire [3:0]y;
reg [3:0]a,b;
reg [2:0]s;

alu tb(.a(a),.b(b),.s(s),.y(y));

initial begin
a=4'b1010;
b=4'b0001;

s=3'b001;#10;
s=3'b110;#10;

$finish;
end

initial begin
$monitor("time=%0t,a=%0b,b=%0b,s=%0b,y=%0b",$time,a,b,s,y);
end

endmodule
