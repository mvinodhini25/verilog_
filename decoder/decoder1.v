module decoder3to8(input [2:0] a1,output reg [7:0]y);
always@(*) begin
case(a1)
3'b000:y=8'b00000001;
3'b001:y=8'b00000010;
3'b010:y=8'b00000100;
3'b011:y=8'b00001000;
3'b100:y=8'b00010000;
3'b101:y=8'b00100000;
3'b110:y=8'b01000000;
3'b111:y=8'b10000000;
endcase
end
endmodule
module d1(input [2:0] a ,output [7:0]f);
wire [7:0]y;
decoder3to8 d2(.a1(a),.y(y));
assign f = y[1]|y[3]|y[5]|y[7];
endmodule


