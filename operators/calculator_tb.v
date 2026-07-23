module cal_tb;
wire [15:0]y;
reg [7:0]a,b;
reg [1:0]s;

cal tb(.a(a),.b(b),.s(s),.y(y));

initial begin 
a=4'b1000;
b=5'b01010;

s=2'b00;#10;
s=2'b10;#10;
$finish;
end

initial begin
$monitor("time = %0t,a=%0b,b=%0b,s=%0b,y=%0b",$time,a,b,s,y);
end 
endmodule
