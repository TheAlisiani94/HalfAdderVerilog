// Testbench
module tb_HA;
    reg a, b;          // Test inputs
    wire s, c;         // Test outputs
    
    HA uut (.a(a), .b(b), .s(s), .c(c));  // Instantiate your Half Adder (match port order)
    
    initial begin
        // Test all input combinations
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $finish;       // End simulation
    end
    
    initial $monitor("a=%b, b=%b, s=%b, c=%b", a, b, s, c);  // Display results
endmodule
