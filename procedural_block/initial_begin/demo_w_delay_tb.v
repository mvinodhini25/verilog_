module demo_tb;
reg [4:0]a,b;

demo d(.a(a),.b(b));

initial begin
a=4'd12;#10;
b=5'd21;#10;
$finish;
end 

initial begin 
$monitor("time=%0t,a=%d,b=%d",$time,a,b);
end
endmodule
