module semi_restador (cin, a, b, sr_out, cout);
	input cin, a, b;
	output sr_out, cout;
	assign sr_out = ~cin & a & ~b | cin & ~a & ~b | ~cin & ~a & b | cin & a & b;
	//Salida de la resta
	assign cout = ~cin & ~a & b | cin & a & b; 
	//Carry de salida 
endmodule