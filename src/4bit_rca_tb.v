`timescale 1ns / 1ps

module rca_4bit_tb;

    // Inputs to the DUT (Design Under Test)
    reg [3:0] a;
    reg [3:0] b;
    reg cin;

    // Outputs from the DUT
    wire [3:0] sum;
    wire cout;

    // Expected output for self-checking
    wire [4:0] expected_sum;
    assign expected_sum = a + b + cin;

    // Instantiate the 4-bit Ripple Carry Adder
    rca_4bit uut (
        .a(a), 
        .b(b), 
        .cin(cin),
        .sum(sum), 
        .cout(cout)
    );

    // Loop variables and error counter
    integer i, j, k;
    integer errors;

    initial begin
        // Setup waveform dumping for GTKWave
        $dumpfile("rca_4bit.vcd");
        $dumpvars(0, rca_4bit_tb);

        errors = 0;
        $display("Starting simulation...");

        // Exhaustive test: Loop through all combinations of a, b, and cin
        for (k = 0; k < 2; k = k + 1) begin
            cin = k;
            for (i = 0; i < 16; i = i + 1) begin
                a = i;
                for (j = 0; j < 16; j = j + 1) begin
                    b = j;
                    
                    // Wait 10 time units for combinational logic to propagate
                    #10; 

                    // Check if the actual output matches the expected output
                    if ({cout, sum} !== expected_sum) begin
                        $display("ERROR at %0t: a=%d, b=%d, cin=%b | Output: cout=%b, sum=%d | Expected: %d", 
                                 $time, a, b, cin, cout, sum, expected_sum);
                        errors = errors + 1;
                    end
                end
            end
        end

        // Final report
        if (errors == 0) begin
            $display("====================================");
            $display("SUCCESS: All 512 combinations passed!");
            $display("====================================");
        end else begin
            $display("FAILED: %0d errors found.", errors);
        end

        $finish;
    end
endmodule
