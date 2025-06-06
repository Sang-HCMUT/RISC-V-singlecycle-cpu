module singlecycle (
    input  logic        i_clk, i_reset,
    input  logic [31:0] i_io_sw,
    output logic [31:0] o_pc_debug,
    output logic [31:0] o_io_ledr,
    output logic [31:0] o_io_ledg,
    output logic [31:0] o_io_lcd,
    output logic [31:0] o_io_hex0, o_io_hex1, o_io_hex2, o_io_hex3,
    output logic [31:0] o_io_hex4, o_io_hex5, o_io_hex6, o_io_hex7
);
    logic [31:0] pc, pc_next, pc_four;
    logic [31:0] instr;
    logic PCSel, RegWEn, BrUn, Bsel, Asel, MemRW, insn_vld;
    logic [2:0] ImmSel, lsu_sel;
    logic [1:0] WBSel;
    logic [3:0] ALUSel;
    logic BrEq, BrLT;
    logic [31:0] rs1_data, rs2_data, wb_data;
    logic [31:0] imm;
    logic [31:0] alu_op_a, alu_op_b, alu_data;
    logic [31:0] ld_data;

    // Program Counter
    assign pc_four = pc + 32'h0000_0004;
    assign pc_next = (PCSel == 1'b1) ? alu_data : pc_four;

    always_ff @(posedge i_clk or posedge i_reset) begin
        if (i_reset) begin
            pc <= 32'h0000_0000;
        end else begin
            pc <= pc_next;
        end
    end

    assign o_pc_debug = pc;

    // Instruction Memory
    imem imem_inst (
        .i_reset(i_reset),
        .i_addr(pc),
        .o_rdata(instr)
    );

    // Control Unit
    control_unit ctrl (
        .i_inst(instr),
        .i_BrEq(BrEq),
        .i_BrLT(BrLT),
        .o_PCSel(PCSel),
        .o_RegWEn(RegWEn),
        .o_BrUn(BrUn),
        .o_Bsel(Bsel),
        .o_Asel(Asel),
        .o_MemRW(MemRW),
        .o_insn_vld(insn_vld),
        .o_ImmSel(ImmSel),
        .o_WBSel(WBSel),
        .o_ALUSel(ALUSel),
        .o_lsu_sel(lsu_sel)
    );

    // Register File
    regfile regfile_inst (
        .i_clk(i_clk),
        .i_reset(i_reset),
        .i_rs1_addr(instr[19:15]),
        .i_rs2_addr(instr[24:20]),
        .i_rd_addr(instr[11:7]),
        .i_rd_data(wb_data),
        .i_rd_wren(RegWEn),
        .o_rs1_data(rs1_data),
        .o_rs2_data(rs2_data)
    );

    // Immediate Generation
    imm_gen imm_gen_inst (
        .i_immsel(ImmSel),
        .i_inst(instr),
        .o_imm(imm)
    );

    // Branch Comparator
    brc brc_inst (
        .i_rs1_data(rs1_data),
        .i_rs2_data(rs2_data),
        .i_br_un(BrUn),
        .o_br_less(BrLT),
        .o_br_equal(BrEq)
    );

    // ALU
    assign alu_op_a = Asel ? pc : rs1_data;
    assign alu_op_b = Bsel ? imm : rs2_data;
    alu alu_inst (
        .i_op_a(alu_op_a),
        .i_op_b(alu_op_b),
        .i_alu_op(ALUSel),
        .o_alu_data(alu_data)
    );

    // Load-Store Unit
    lsu lsu_inst (
        .i_clk(i_clk),
        .i_reset(i_reset),
        .i_lsu_wren(MemRW),
        .i_lsu_addr(alu_data),
        .i_st_data(rs2_data),
        .i_io_sw(i_io_sw),
        .i_type(lsu_sel),
        .o_ld_data(ld_data),
        .o_io_ledr(o_io_ledr),
        .o_io_ledg(o_io_ledg),
        .o_io_lcd(o_io_lcd),
        .o_io_hex0(o_io_hex0[6:0]),
        .o_io_hex1(o_io_hex1[6:0]),
        .o_io_hex2(o_io_hex2[6:0]),
        .o_io_hex3(o_io_hex3[6:0]),
        .o_io_hex4(o_io_hex4[6:0]),
        .o_io_hex5(o_io_hex5[6:0]),
        .o_io_hex6(o_io_hex6[6:0]),
        .o_io_hex7(o_io_hex7[6:0])
    );

    // Gán các bit cao của o_io_hex* là 0
    assign o_io_hex0[31:7] = 25'b0;
    assign o_io_hex1[31:7] = 25'b0;
    assign o_io_hex2[31:7] = 25'b0;
    assign o_io_hex3[31:7] = 25'b0;
    assign o_io_hex4[31:7] = 25'b0;
    assign o_io_hex5[31:7] = 25'b0;
    assign o_io_hex6[31:7] = 25'b0;
    assign o_io_hex7[31:7] = 25'b0;

    // Write-Back Mux
    always_comb begin
        case (WBSel)
            2'b00: wb_data = ld_data;  // Load data
            2'b01: wb_data = alu_data; // ALU result
            2'b10: wb_data = pc_four;  // PC + 4 (for JAL, JALR)
            default: wb_data = 32'h0000_0000;
        endcase
    end

endmodule