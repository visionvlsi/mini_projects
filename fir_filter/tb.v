module tb;

    // Inputs
    reg Clk;
    reg signed [7:0] Xin;

    // Outputs
    wire signed [15:0] Yout;

    // Instantiate the Unit Under Test (UUT)
    fir_4tap uut (
        .Clk(Clk), 
        .Xin(Xin), 
        .Yout(Yout)
    );
    
    //Generate a clock with 10 ns clock period.
    initial Clk = 0;
    always #5 Clk =~Clk;

//Initialize and apply the inputs.
    initial begin
          Xin = 0;  #40;
          Xin = -3; #10;
          Xin = 1;  #10;
          Xin = 0;  #10;
          Xin = -2; #10;
          Xin = -1; #10;
          Xin = 4;  #10;
          Xin = -5; #10;
          Xin = 6;  #10;
          Xin = 0;  #10;
    end
      
endmodule
