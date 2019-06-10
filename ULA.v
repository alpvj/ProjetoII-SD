module ULA(func, A, B, Z);

input wire [3..0] A, B;
input wire func;
output reg [3..0] Z;

parameter ADD = 2'00b;
parameter SHIFTR  = 2'01b;
parameter SHIFTL = 2'10b;
parameter SUB = 2'11b;

always begin
	case(func)
		ADD:
			Z <= (A + B);
		SHIFTR:
			Z <= (A >> 2);
		SHIFTL:
			Z <= (A << 2);
		SUB:
			Z <= (A - B);
	endcase
end
endmodule