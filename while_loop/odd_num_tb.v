module odd_tb;
integer i;
initial begin 
i=1;
while(1<=20) begin 
i=i+2;
$display("odd",i);
end
$finish;
end 
endmodule
