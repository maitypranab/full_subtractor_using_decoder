module full_sub_decoder(a,b, c, d, br);
input a,b,c;
output d,br;
wire y0,y1, y2, y3, y4,y5,y6,y7;
decoder d1( .a(a),.b(b) ,.c (c),.y0(y0),.y1(y1),. y2(y2), .y3(y3),
.y4(y4),.y5(y5),.y6(y6),.y7(y7));
or or1(d, y1, y2,y4, y7); 
or or2(br, y1, y2,y3,y7);
endmodule
