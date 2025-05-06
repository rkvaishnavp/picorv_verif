interface rvfi_intf (
    input clk,
    resetn
);
  logic rvfi_valid;
  logic [63:0] rvfi_order;
  logic [31:0] rvfi_insn;
  logic rvfi_trap;
  logic rvfi_halt;
  logic rvfi_intr;
  logic [4:0] rvfi_rs1_addr;
  logic [4:0] rvfi_rs2_addr;
  logic [31:0] rvfi_rs1_rdata;
  logic [31:0] rvfi_rs2_rdata;
  logic [4:0] rvfi_rd_addr;
  logic [31:0] rvfi_rd_wdata;
  logic [31:0] rvfi_pc_rdata;
  logic [31:0] rvfi_pc_wdata;
  logic [31:0] rvfi_mem_addr;
  logic [3:0] rvfi_mem_rmask;
  logic [3:0] rvfi_mem_wmask;
  logic [31:0] rvfi_mem_rdata;
  logic [31:0] rvfi_mem_wdata;
endinterface  //rvfi_intf
