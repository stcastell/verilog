module a_igual_b_completo (a, b, s);
	input [0:3]a;
	input [0:3]b;
	output s;

	//Instancia de modulo individual
	a_igual_b aib1(.hab_in(1), .a(a[0]), .b(b[0]), .out(s0));
	a_igual_b aib2(.hab_in(s0), .a(a[1]), .b(b[1]), .out(s1));
	a_igual_b aib3(.hab_in(s1), .a(a[2]), .b(b[2]), .out(s2));
	a_igual_b aib4(.hab_in(s2), .a(a[3]), .b(b[3]), .out(s3));

	//Salida 
	assign s = s3 & s2 & s1 & s0; 
endmodule
