pragma circom 2.0.3;
include "../../node_modules/circomlib/circuits/comparators.circom";

// verify none zero using isZero template
template IsNoneZero() {
    signal input in;
    signal output out;

    component iszero_1 = IsZero();
    iszero_1.in <== in;
    component iszero_2 = IsZero();
    iszero_2.in <== iszero_1.out;

    out <== iszero_2.out;
}

component main = IsNoneZero();