module regfile(
	input logic i_clk, i_reset, i_rd_wren,
	input logic [4:0] i_rs1_addr, i_rs2_addr, i_rd_addr,
	input logic [31:0] i_rd_data,
	output logic [31:0] o_rs1_data, o_rs2_data);
	
	reg [31:0] reg31_0 [31:0];
	reg check_rd_addr;
	
	
	//Write register
	always @(posedge i_clk or posedge i_reset) begin
		if (i_reset) begin
			for (int i = 0; i < 32; i++) begin
				reg31_0[i] <= 32'h0000_0000;
			end
		end else if (i_rd_wren) begin
			if (i_rd_addr == 5'b0000_0) reg31_0[i_rd_addr] <= 32'h0000_0000;
			else reg31_0[i_rd_addr] <= i_rd_data;
		end else begin
			//Giu nguyen gia tri.
		end
	end
	
	//Read register
	assign o_rs1_data = reg31_0[i_rs1_addr];
	assign o_rs2_data = reg31_0[i_rs2_addr];
	
endmodule
