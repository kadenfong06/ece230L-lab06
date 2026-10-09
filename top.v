// Implement top level module
module top(
    input [7:0] sw,
    output [5:0] led
);

    wire carry_between;
    
    light light(
        .downstairs(sw[0]),
        .upstairs(sw[1]),
        .stair_light(led[0])
    );
    
    adder adder(
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .Carry(led[2])
    );
    
    full_adder full_adder_1(
        .A(sw[4]),
        .B(sw[6]),
        .Cin(1'b0),
        .Y(led[3]),
        .Cout(carry_between)
    );
    
    full_adder full_adder_2(
        .A(sw[5]),
        .B(sw[7]),
        .Cin(carry_between),
        .Y(led[4]),
        .Cout(led[5])
    );

endmodule