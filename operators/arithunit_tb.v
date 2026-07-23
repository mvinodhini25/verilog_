module unit_tb;
wire [2:0]y;
reg [2:0]a;
reg [1:0]s;

unit tb(.a(a),.s(s),.y(y));

initial begin 
a=3'b010;


s=2'b00;#10;
s=2'b10;#10;
$finish;
end

initial begin
$monitor("time = %0t,a=%0b,s=%0b,y=%0b",$time,a,s,y);
end 
endmodule
