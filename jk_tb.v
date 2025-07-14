module tb;
     
	 reg  j, k;
	 reg rst, clk;
	 wire q, q_bar;
	 integer i;
	 
	 jk_ff  uut(
	     .j(j),
		 .k(k),
		 .rst(rst),
		 .clk(clk),
		 .q(q),
		 .q_bar(q_bar)
		 );
	 always #5 clk <= ~clk;
	 
	 initial begin
	     clk=0;
		 rst=1; #10;
		 rst=0;
		 for (i=0; i<4; i=i+1) begin
			     {j, k} = i;  
				 #10;
				end
		 $finish;
		end
	endmodule