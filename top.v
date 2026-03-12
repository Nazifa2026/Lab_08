module mux4(
    input [3:0] CEO, You, Fred, Jill,
    input [1:0] Sel,
    input Enable,
    output [3:0] Y
);
    assign Y = (Sel == 2'b00 ? CEO  :
                Sel == 2'b01 ? You  :
                Sel == 2'b10 ? Fred : Jill) & {4{Enable}};
endmodule


module demux4(
    input [3:0] In,
    input [1:0] Sel,
    input Enable,
    output [3:0] local_lib, FireDept, School, RibShack
);
    wire [3:0] data = In & {4{Enable}};

    assign local_lib = (Sel == 2'b00 ? data : 4'b0);
    assign FireDept  = (Sel == 2'b01 ? data : 4'b0);
    assign School    = (Sel == 2'b10 ? data : 4'b0);
    assign RibShack  = (Sel == 2'b11 ? data : 4'b0);
endmodule


module top(
    input [15:0] sw,
    input btnL, btnU, btnD, btnR, btnC,
    output [15:0] led
);
    wire [3:0] mux_out;
    wire [1:0] mux_sel   = {btnU, btnL};  
    wire [1:0] demux_sel = {btnR, btnD};  

    mux4 mux(
        .CEO(sw[3:0]),
        .You(sw[7:4]),
        .Fred(sw[11:8]),
        .Jill(sw[15:12]),
        .Sel(mux_sel),
        .Enable(btnC),
        .Y(mux_out)
    );

    demux4 demux(
        .In(mux_out),
        .Sel(demux_sel),
        .Enable(btnC),
        .local_lib(led[3:0]),
        .FireDept(led[7:4]),
        .School(led[11:8]),
        .RibShack(led[15:12])
    );

endmodule
