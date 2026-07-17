/*module decoder2to4(input wire a,b,output reg y);
always@(*) begin 
if(a==0 && b==0)
y = 0001;
else if(a==0 && b==1)
y = 0010;
else if(a==1 && b==0)
y = 0100;
else
y = 1000;
end
endmodule*/


module decoder2to4(input wire a,b,output reg [3:0]y);
always@(*) begin
	y = 4'b0000;
	case({a,b})
		2'b00:y[0]=1'b1;
		2'b01:y[1]=1'b1;
		2'b10:y[2]=1'b1;
		default:y = 4'b0000;
	endcase
end

endmodule


