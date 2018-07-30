`timescale 10ps / 10ps
`define DELAY 10
module tb;
parameter ENDTIME = 40000;
reg clk, rst;
reg [5:0]a1, a2, a3, a4;
wire [5:0]b1, b2, b3, b4;

gather sw_clk(
.a1(a1),
.a2(a2),
.a3(a3),
.a4(a4),
.b1(b1),
.b2(b2),
.b3(b3),
.b4(b4),
.clk(clk),
.rst(rst)
);

//init var
initial begin
	clk = 0;
	rst = 0;
	a1 = 0;
	a2 = 0;
	a2 = 0;
	a4 = 0;
end

//main
initial begin
	main;
end

task main;
	fork
		clkgen;
		rstgen;
		operation;
		timelimit;
	join
endtask

task clkgen;
	begin
		forever #`DELAY clk = ~clk;
	end
endtask

task rstgen;
	begin
		#(`DELAY*2)
		rst = 1;
	end
endtask

task operation;
	begin
		#100;
		a1 = 0;
		a2 = 4;
		a3 = 0;
		a4 = 3;
		#20;
		$display("time=%d, b1=%d, b2=%d, b3=%d, b4=%d, ", $time, b1, b2, b3, b4);
		#20;
		a1 = 3;
		a2 = 0;
		a3 = 0;
		a4 = 2;
		#20;
		$display("time=%d, b1=%d, b2=%d, b3=%d, b4=%d, ", $time, b1, b2, b3, b4);

	end
endtask

task timelimit;
	begin
		#ENDTIME
		$display("--- finish simulation ---");
	end
endtask

endmodule
