module pass(input [3:0]a,output reg valid);
parameter b = 4'b1110;
always@(*) begin
if(a==b) begin 
valid=1;
end
else begin 
valid=0;
end
end

endmodule
