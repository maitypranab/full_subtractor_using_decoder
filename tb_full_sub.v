module tb_full_sub;

    // Inputs
    reg A;
    reg B;
    reg Bin;

    // Outputs
    wire Diff;
    wire Bout;

    // Instantiate the full subtractor module
    full_sub_decoder uut (.a(A),.b(B), .c(Bin), .d(Diff), .br(Bout));

    initial begin
        // Initialize inputs
        A = 0;
        B = 0;
        Bin = 0;
        #10; // Wait for 10 time units
        
        // Test case 1
        A= 0; B= 0; Bin = 0;
        #10;
        $display("Test Case 1: A = %b, B = %b, Bin = %b, Diff = %b, Bout = %b", A, B, Bin, Diff, Bout);

        // Test case 2
        A = 0; B = 0; Bin = 1;
        #10;
        $display("Test Case 2: A = %b, B = %b, Bin = %b, Diff = %b, Bout = %b", A, B, Bin, Diff, Bout);

        // Test case 3
        A = 0; B = 1; Bin = 0;
        #10;
        $display("Test Case 3: A = %b, B = %b, Bin = %b, Diff = %b, Bout = %b", A, B, Bin, Diff, Bout);

        // Test case 4
        A = 0; B = 1; Bin = 1;
        #10;
        $display("Test Case 4: A = %b, B = %b, Bin = %b, Diff = %b, Bout = %b", A, B, Bin, Diff, Bout);

        // Test case 5
        A = 1; B = 0; Bin = 0;
        #10;
        $display("Test Case 5: A = %b, B = %b, Bin = %b, Diff = %b, Bout = %b", A, B, Bin, Diff, Bout);

        // Test case 6
        A = 1; B = 0; Bin = 1;
        #10;
        $display("Test Case 6: A = %b, B = %b, Bin = %b, Diff = %b, Bout = %b", A, B, Bin, Diff, Bout);

        // Test case 7
        A = 1; B = 1; Bin = 0;
        #10;
        $display("Test Case 7: A = %b, B = %b, Bin = %b, Diff = %b, Bout = %b", A, B, Bin, Diff, Bout);

        // Test case 8
        A = 1; B = 1; Bin = 1;
        #10;
        $display("Test Case 8: A = %b, B = %b, Bin = %b, Diff = %b, Bout = %b", A, B, Bin, Diff, Bout);

        // Finish simulation
        $finish;
    end

endmodule

