module semi_sumador (cin, a, b, ss_out, cout);
	input cin, a, b;
	output ss_out, cout;
	assign ss_out = ~cin & ~a & b | ~cin & a & ~b | cin & ~a & ~b | cin & a & b;
	//Salida de la suma
	assign cout = a & b | cin & b | cin & a; 
	//Carry de salida 
endmodule