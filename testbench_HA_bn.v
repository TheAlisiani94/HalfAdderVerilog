// Testbench: tb_HA_bh
// Description: Testbench for the behavioral Half Adder module
module tb_HA_bh;

    // Testbench signals
    reg  a, b;          // Inputs to the DUT (Device Under Test)
    wire s, c;          // Outputs from the DUT

    // Instantiate the Half Adder module
    HA_bh uut (
        .a(a),
        .b(b),
        .s(s),
        .c(c)
    );

    // Initial block for test stimulus
    initial begin
        // Initialize inputs
        a = 0; b = 0;

        // Dump variables for waveform viewing
        $dumpfile("ha_bh_dump.vcd");  // Create a VCD file for waveform
        $dumpvars(0, tb_HA_bh);      // Dump all variables in the testbench

        // Display header for output
        $display("Time\t a b | s c");
        $display("-----------------");

        // Test all input combinations
        #10 a = 0; b = 0;  // Test case 1: a=0, b=0
        #10 a = 0; b = 1;  // Test case 2: a=0, b=1
        #10 a = 1; b = 0;  // Test case 3: a=1, b=0
        #10 a = 1; b = 1;  // Test case 4: a=1, b=1

        // Wait for a few more time units and finish
        #10 $finish;
    end

    // Monitor block to display results at every change
    initial begin
        $monitor("%0t\t %b %b | %b %b", $time, a, b, s, c);
    end

endmodule
