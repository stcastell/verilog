module a_mayor_b (hab_in, a, b, out, hab_out);
	input hab_in, a, b;
	/*hab_in es una señal de habilitación. Este modulo devolverá 0 siempre al menos 
	que hab_in sea 1*/
	output out, hab_out;
	assign out = hab_in & a & ~b;
	assign hab_out = (hab_in & ~a) | (hab_in & b);
endmodule