module ULA(func, A, B, Z);

input wire [3:0] A, B;
input wire [1:0] func;
output reg [3:0] Z;

parameter ADD = 2'b00;
parameter SUB = 2'b01;
parameter SHIFTR  = 2'b10;
parameter SHIFTL = 2'b11;

always begin
	case(func)
		ADD:
			Z <= (A + B);
		SUB:
			Z <= (A - B);
		SHIFTR:
			Z <= (A >> 1);
		SHIFTL:
			Z <= (A << 1);
	endcase
end
endmodule