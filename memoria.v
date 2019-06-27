module memoria(count, inX);

input wire[3:0] count;
output reg [3:0] inX;

parameter A = 5;
parameter B = 3;

always begin
	case(count)
		4'b0000 : begin
			inX <= A;
			end
			
		4'b0001 : begin
			inX <= B;
			end
			
		4'b0010 : begin
			inX <= 0;
			end
			
		4'b0011 : begin
			inX <= 0;
			end
			
		4'b0100 : begin
			inX <= 0;
			end
				
	endcase
end
endmodule