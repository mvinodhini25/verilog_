module traffic_tb;
wire [47:0]light;
reg reset,timer;

traffic tb(.reset(reset),.timer(timer),.light(light));

initial begin 
	reset=1;timer=0;#10;
	reset=1;timer=1;#10;
	reset=0;timer=0;#10;
	$finish;
end

initial begin
	$monitor("time=%0t,reset=%0b,timer=%0b,light=%s",$time,reset,timer,light);
end

endmodule
