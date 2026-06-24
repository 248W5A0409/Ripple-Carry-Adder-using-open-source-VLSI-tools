module rca_4bit (cin,
    cout,
    a,
    b,
    sum);
 input cin;
 output cout;
 input [3:0] a;
 input [3:0] b;
 output [3:0] sum;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;

 sky130_fd_sc_hd__nand2_1 _17_ (.A(net5),
    .B(net9),
    .Y(_00_));
 sky130_fd_sc_hd__or2_1 _18_ (.A(net5),
    .B(net9),
    .X(_01_));
 sky130_fd_sc_hd__nand2_1 _19_ (.A(_00_),
    .B(_01_),
    .Y(_02_));
 sky130_fd_sc_hd__xnor2_1 _20_ (.A(net1),
    .B(_02_),
    .Y(net11));
 sky130_fd_sc_hd__o21ai_1 _21_ (.A1(net5),
    .A2(net9),
    .B1(net1),
    .Y(_03_));
 sky130_fd_sc_hd__nand2_1 _22_ (.A(net6),
    .B(net2),
    .Y(_04_));
 sky130_fd_sc_hd__or2_1 _23_ (.A(net6),
    .B(net2),
    .X(_05_));
 sky130_fd_sc_hd__a22o_1 _24_ (.A1(_00_),
    .A2(_03_),
    .B1(_04_),
    .B2(_05_),
    .X(_06_));
 sky130_fd_sc_hd__nand4_1 _25_ (.A(_00_),
    .B(_03_),
    .C(_04_),
    .D(_05_),
    .Y(_07_));
 sky130_fd_sc_hd__nand2_1 _26_ (.A(_06_),
    .B(_07_),
    .Y(net12));
 sky130_fd_sc_hd__nor2_1 _27_ (.A(net6),
    .B(net2),
    .Y(_08_));
 sky130_fd_sc_hd__a31o_1 _28_ (.A1(_00_),
    .A2(_03_),
    .A3(_04_),
    .B1(_08_),
    .X(_09_));
 sky130_fd_sc_hd__nand2_1 _29_ (.A(net7),
    .B(net3),
    .Y(_10_));
 sky130_fd_sc_hd__or2_1 _30_ (.A(net7),
    .B(net3),
    .X(_11_));
 sky130_fd_sc_hd__nand2_1 _31_ (.A(_10_),
    .B(_11_),
    .Y(_12_));
 sky130_fd_sc_hd__xor2_1 _32_ (.A(_09_),
    .B(_12_),
    .X(net13));
 sky130_fd_sc_hd__and2_1 _33_ (.A(net8),
    .B(net4),
    .X(_13_));
 sky130_fd_sc_hd__or2_1 _34_ (.A(net8),
    .B(net4),
    .X(_14_));
 sky130_fd_sc_hd__or2b_1 _35_ (.A(_13_),
    .B_N(_14_),
    .X(_15_));
 sky130_fd_sc_hd__a21boi_1 _36_ (.A1(_09_),
    .A2(_10_),
    .B1_N(_11_),
    .Y(_16_));
 sky130_fd_sc_hd__xnor2_1 _37_ (.A(_15_),
    .B(_16_),
    .Y(net14));
 sky130_fd_sc_hd__o21a_1 _38_ (.A1(_13_),
    .A2(_16_),
    .B1(_14_),
    .X(net10));
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_20 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_21 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_22 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_23 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_24 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_25 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_26 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_31 ();
 sky130_fd_sc_hd__buf_1 input1 (.A(a[0]),
    .X(net1));
 sky130_fd_sc_hd__buf_1 input2 (.A(a[1]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(a[2]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(a[3]),
    .X(net4));
 sky130_fd_sc_hd__buf_1 input5 (.A(b[0]),
    .X(net5));
 sky130_fd_sc_hd__buf_1 input6 (.A(b[1]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(b[2]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 input8 (.A(b[3]),
    .X(net8));
 sky130_fd_sc_hd__buf_1 input9 (.A(cin),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_4 output10 (.A(net10),
    .X(cout));
 sky130_fd_sc_hd__buf_2 output11 (.A(net11),
    .X(sum[0]));
 sky130_fd_sc_hd__clkbuf_4 output12 (.A(net12),
    .X(sum[1]));
 sky130_fd_sc_hd__clkbuf_4 output13 (.A(net13),
    .X(sum[2]));
 sky130_fd_sc_hd__buf_2 output14 (.A(net14),
    .X(sum[3]));
endmodule
