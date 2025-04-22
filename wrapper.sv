module wrapper (
    input   logic CLOCK_50,
    input   logic [17:0] SW,
    output  logic [17:0] LEDR,
    output  logic [8:0]  LEDG,
    output  logic [6:0]  HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7,
    output  logic        LCD_BLON, LCD_ON, LCD_EN, LCD_RS, LCD_RW,
    output  logic [7:0]  LCD_DATA
);
    logic [31:0] i_io_sw;
    logic [31:0] o_io_lcd;
    logic [31:0] o_io_ledg;
    logic [31:0] o_io_ledr;
    logic [31:0] o_io_hex0, o_io_hex1, o_io_hex2, o_io_hex3, o_io_hex4, o_io_hex5, o_io_hex6, o_io_hex7;
    logic [31:0] o_pc_debug;

    assign LEDR[17] = ~SW[17];
    assign LEDG[8] = |o_io_hex0[31:7] || |o_io_hex1[31:7] || |o_io_hex2[31:7] || |o_io_hex3[31:7] || 
                     |o_io_hex4[31:7] || |o_io_hex5[31:7] || |o_io_hex6[31:7] || |o_io_hex7[31:7] || 
                     |o_io_ledg[31:9] || |o_io_ledr[31:17];

    assign HEX0 = o_io_hex0[6:0];
    assign HEX1 = o_io_hex1[6:0];
    assign HEX2 = o_io_hex2[6:0];
    assign HEX3 = o_io_hex3[6:0];
    assign HEX4 = o_io_hex4[6:0];
    assign HEX5 = o_io_hex5[6:0];
    assign HEX6 = o_io_hex6[6:0];
    assign HEX7 = o_io_hex7[6:0];

    assign LEDG[7:0] = o_io_ledg[7:0];   
    assign LEDR[16:0] = o_io_ledr[16:0];
    assign i_io_sw = {{15{1'b0}}, SW[16:0]}; 

    assign LCD_DATA = o_io_lcd[7:0];
    assign LCD_RW = o_io_lcd[8];
    assign LCD_RS = o_io_lcd[9];
    assign LCD_EN = o_io_lcd[10];
    assign LCD_ON = o_io_lcd[31];
    assign LCD_BLON = 1'b0;

    // Clock divider 1MHz
    int count = 0;
    logic clock_div = 1'b0;
    
    always_ff @(posedge CLOCK_50) begin
        count++;
        if (count == 25) begin
            count <= 0;
            clock_div <= ~clock_div;
        end
    end

    singlecycle singlecycle (
        .i_io_sw(i_io_sw),
        .o_io_lcd(o_io_lcd),
        .o_io_ledg(o_io_ledg),
        .o_io_ledr(o_io_ledr),
        .o_io_hex0(o_io_hex0),
        .o_io_hex1(o_io_hex1),
        .o_io_hex2(o_io_hex2),
        .o_io_hex3(o_io_hex3),
        .o_io_hex4(o_io_hex4),
        .o_io_hex5(o_io_hex5),
        .o_io_hex6(o_io_hex6),
        .o_io_hex7(o_io_hex7),
        .o_pc_debug(o_pc_debug),
        .i_clk(clock_div),
        .i_reset(SW[17])
    );

endmodule