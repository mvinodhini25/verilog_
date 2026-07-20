module temp_tb;
wire [47:0]temp;
reg [6:0]a;

temp tb(.a(a),.temp(temp));
initial begin 
	a=4'd13;#10;
	a=7'd62;#10;
	$finish;
end

initial begin 
	$monitor("time=%0b,a=%0d,temp=%s",$time,a,temp);
end

endmodule
