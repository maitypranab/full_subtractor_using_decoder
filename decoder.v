module decoder (a, b, c, y0, y1, y2,y3, y4, y5, y6,y7); 
input a,b, c;
output y0, y1, y2, y3, y4, y5, y6, y7;
wire anot, bnot, cnot;
assign anot =~a;
assign bnot=~b;
assign cnot=~c;
and a0 (y0, anot, bnot,cnot);
and a1(y1, anot, bnot, c);
and a2(y2, anot, b, cnot);
and a3(y3, anot, b,c);
and a4(y4, a, bnot, cnot);
and a5(y5, a, bnot, c);
and a6(y6, a, b, cnot);
and a7(y7, a,b, c);
endmodule
