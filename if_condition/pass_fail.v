module p_f(input [6:0]a,output reg [31:0]result);

always@(*) begin 
if(a>=50) begin
result="pass";
end
else begin
result="fail";
end
end

endmodule

