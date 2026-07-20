module temp(input [6:0]a,output reg [47:0]temp);
always@(*) begin 
if(a>6'd50) begin 
temp="hot";
end
else if(a<=6'd50 && a>=5'd20) begin 
temp="normal";
end
else begin
temp="cold";
end

end
endmodule
