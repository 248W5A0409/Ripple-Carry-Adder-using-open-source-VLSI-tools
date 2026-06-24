module rca_4bit (
    input [3:0] a, 
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
);
    // Internal carry wires
    wire c1, c2, c3;

    // Bit 0 Logic
    assign sum[0] = a[0] ^ b[0] ^ cin;
    assign c1     = (a[0] & b[0]) | (b[0] & cin) | (cin & a[0]);

    // Bit 1 Logic
    assign sum[1] = a[1] ^ b[1] ^ c1;
    assign c2     = (a[1] & b[1]) | (b[1] & c1) | (c1 & a[1]);

    // Bit 2 Logic
    assign sum[2] = a[2] ^ b[2] ^ c2;
    assign c3     = (a[2] & b[2]) | (b[2] & c2) | (c2 & a[2]);

    // Bit 3 Logic
    assign sum[3] = a[3] ^ b[3] ^ c3;
    assign cout   = (a[3] & b[3]) | (b[3] & c3) | (c3 & a[3]);

endmodule
