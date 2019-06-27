module memoria(clock, valor, out);

output reg [3:0] valor;
output reg [3:0] out;

parameter A = 5;
parameter B = 3;

always @(posedge clock)begin
	case(S)
		4'b0000 : begin
			out <= 4'b0000;
			valor <= A;
			end
			
		4'b0001 : begin
			out <= 4'b0001;
			valor <= B;
			end
			
		4'b0010 : begin
			out <= 4'b0010;
			valor <= 0;
			end
			
		4'b0011 : begin
			out <= 4'b0011;
			valor <= 0;
			end
			
		4'b0100 : begin
			out <= 4'b0100;
			valor <= 0;
			end
				
	endcase
end
endmodule