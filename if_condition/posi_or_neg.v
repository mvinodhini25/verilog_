module p_n(input [3:0]a,output reg [63:0]det);
always@(*)begin 
if(a[3]==0) begin
det="positive";
end
else begin
det="negative";
end
end

endmodule
