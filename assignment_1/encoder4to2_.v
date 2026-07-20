module encoder_tb;
wire [1:0]y;
reg [3:0]i;

encoder en(.y(y),.i(i));

initial begin
i=4'b0010;#10;
i=4'b1000;#10;
i=4'b1010;#10;
end 

initial begin 
$monitor("y=%0b,i=%0b",y,i);
end 
endmodule
