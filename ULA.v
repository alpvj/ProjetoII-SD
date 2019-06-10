module ULA(func, A, B, Z);

input wire [3:0] A, B;
input wire [2:0] func;
output reg [3:0] Z;

parameter ADD = 3'b000;
parameter SUB = 3'b001;
parameter MAIOR  = 3'b010;
parameter MENOR = 3'b011;
parameter IGUAL = 3'b100;
parameter XOR = 3'b101;
parameter AND = 3'b110;

always begin
	case(func)
		ADD:
			Z <= (A + B);
		SUB:
			Z <= (A - B);
		MAIOR:
			Z <= (A > B);
		MENOR:
			Z <= (A < B);
		IGUAL:
			Z <= (A == B);
		XOR:
			Z <= (A ^ B);
		AND:
			Z <= (A & B);
	endcase
end
endmodule