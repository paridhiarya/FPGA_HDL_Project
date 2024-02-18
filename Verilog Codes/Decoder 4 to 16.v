module Decoder_4to16_Structural(
    input [3:0] A,
    output [15:0] Y
    );

    wire [15:0] Y_internal;
    wire nA0, nA1, nA2, nA3;

    assign nA0 = ~A[0];
    assign nA1 = ~A[1];
    assign nA2 = ~A[2];
    assign nA3 = ~A[3];

    and #16 g0(Y_internal[0], A[3], A[2], A[1], A[0]);
    and #16 g1(Y_internal[1], A[3], A[2], A[1], nA0);
    and #16 g2(Y_internal[2], A[3], A[2], nA1, A[0]);
    and #16 g3(Y_internal[3], A[3], A[2], nA1, nA0);
    and #16 g4(Y_internal[4], A[3], nA2, A[1], A[0]);
    and #16 g5(Y_internal[5], A[3], nA2, A[1], nA0);
    and #16 g6(Y_internal[6], A[3], nA2, nA1, A[0]);
    and #16 g7(Y_internal[7], A[3], nA2, nA1, nA0);
    and #16 g8(Y_internal[8], nA3, A[2], A[1], A[0]);
    and #16 g9(Y_internal[9], nA3, A[2], A[1], nA0);
    and #16 g10(Y_internal[10], nA3, A[2], nA1, A[0]);
    and #16 g11(Y_internal[11], nA3, A[2], nA1, nA0);
    and #16 g12(Y_internal[12], nA3, nA2, A[1], A[0]);
    and #16 g13(Y_internal[13], nA3, nA2, A[1], nA0);
    and #16 g14(Y_internal[14], nA3, nA2, nA1, A[0]);
    and #16 g15(Y_internal[15], nA3, nA2, nA1, nA0);

    assign Y = Y_internal;

endmodule
