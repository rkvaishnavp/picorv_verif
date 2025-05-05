interface picorv_intf (
    input clk,
    resetn
);

  logic trap;

  axil_intf axil_intf_i (
      clk,
      resetn
  );
  pcpi_intf pcpi_intf_i (
      clk,
      resetn
  );
  irq_intf irq_intf_i (
      clk,
      resetn
  );
  trace_intf trace_intf_i (
      clk,
      resetn
  );

`ifdef RISCV_FORMAL
`endif

endinterface  //picorv_intf


/*

TODO: For now not going to use the RISCV_FORMAL Interface

`ifdef RISCV_FORMAL
	output        rvfi_valid,
	output [63:0] rvfi_order,
	output [31:0] rvfi_insn,
	output        rvfi_trap,
	output        rvfi_halt,
	output        rvfi_intr,
	output [ 4:0] rvfi_rs1_addr,
	output [ 4:0] rvfi_rs2_addr,
	output [31:0] rvfi_rs1_rdata,
	output [31:0] rvfi_rs2_rdata,
	output [ 4:0] rvfi_rd_addr,
	output [31:0] rvfi_rd_wdata,
	output [31:0] rvfi_pc_rdata,
	output [31:0] rvfi_pc_wdata,
	output [31:0] rvfi_mem_addr,
	output [ 3:0] rvfi_mem_rmask,
	output [ 3:0] rvfi_mem_wmask,
	output [31:0] rvfi_mem_rdata,
	output [31:0] rvfi_mem_wdata,
`endif

*/
