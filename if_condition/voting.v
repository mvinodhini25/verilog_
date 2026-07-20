module vote(input [6:0]a,output reg [23:0]eligible);
always@(*) begin 
if (a>=5'd18) begin
eligible="yes";
end
else begin 
eligible="no";
end
end

endmodule
