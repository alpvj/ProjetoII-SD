module registradorY(clock, func, outX, outY);

input wire clock;
input wire [2:0] func;
input wire [3:0] outX;
output reg [3:0] outY;

parameter HOLD = 3'b000;
parameter LOAD = 3'b001;
parameter SHIFTR = 3'b010;
parameter SHIFTL = 3'b011;
parameter RESET = 3'b100;

always @(posedge clock)begin
	case(func)
		HOLD:
			outY <= outY;
		LOAD:
			outY <= outX;
		SHIFTR:
			outY <= outY >> 1;
		SHIFTL:
			outY <= outY << 1;
		RESET:
			outY <= 4'b0000;
	endcase
end
endmodule