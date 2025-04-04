// Module declaration
module HA(a, b, s, c);  // Input ports first, then output ports
    input a, b;         // Input ports declaration
    output s, c;        // Output ports declaration
    
    assign s = a ^ b;   // Sum output logic (XOR)
    assign c = a & b;   // Carry output logic (AND)
endmodule               // End of module
