// Module: HA_bh
// Description: Behavioral implementation of a Half Adder
module HA_bh (
    input  wire a,    // First input bit
    input  wire b,    // Second input bit
    output reg  s,    // Sum output (a XOR b)
    output reg  c     // Carry output (a AND b)
);

always @(a or b) begin  // Sensitivity list for combinational logic
    s = a ^ b;          // Sum: XOR of inputs a and b
    c = a & b;          // Carry: AND of inputs a and b
end

endmodule
