`timescale 1us/1ns
module tb_prio_enc2_4to2();
	
    reg [3:0] d;   // DUT variables
    wire v;
    wire [1:0] q;
    integer i;     // testbench variable

    // Instantiate the DUT 
    prio_enc2_4to2 PRENC(
      .d(d),
      .q(q),
      .v(v)
    );
  
    // Create stimulus
    initial begin
        $monitor($time, " d = %b, q = %d, v = %d", d, q, v);
        #1; d = 0; 
        for (i = 0; i<4; i=i+1) begin
           #1; d = (1 << i);
        end
        #1; d = 4'b1111;
        #1; d = 4'b1001;
        #1; d = 4'b0101;
		#1; d = 4'b0000;
		#1; $stop;
    end
  
endmodule
