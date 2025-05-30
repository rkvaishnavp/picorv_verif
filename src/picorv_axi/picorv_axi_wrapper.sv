module picorv_axi_wrapper (
    input logic clk,
    input logic resetn,
    picorv_intf pif
);

  import picorv_pkg::*;

  picorv32_axi #(
      .ENABLE_COUNTERS     (ENABLE_COUNTERS),
      .ENABLE_COUNTERS64   (ENABLE_COUNTERS64),
      .ENABLE_REGS_16_31   (ENABLE_REGS_16_31),
      .ENABLE_REGS_DUALPORT(ENABLE_REGS_DUALPORT),
      .TWO_STAGE_SHIFT     (TWO_STAGE_SHIFT),
      .BARREL_SHIFTER      (BARREL_SHIFTER),
      .TWO_CYCLE_COMPARE   (TWO_CYCLE_COMPARE),
      .TWO_CYCLE_ALU       (TWO_CYCLE_ALU),
      .COMPRESSED_ISA      (COMPRESSED_ISA),
      .CATCH_MISALIGN      (CATCH_MISALIGN),
      .CATCH_ILLINSN       (CATCH_ILLINSN),
      .ENABLE_PCPI         (ENABLE_PCPI),
      .ENABLE_MUL          (ENABLE_MUL),
      .ENABLE_FAST_MUL     (ENABLE_FAST_MUL),
      .ENABLE_DIV          (ENABLE_DIV),
      .ENABLE_IRQ          (ENABLE_IRQ),
      .ENABLE_IRQ_QREGS    (ENABLE_IRQ_QREGS),
      .ENABLE_IRQ_TIMER    (ENABLE_IRQ_TIMER),
      .ENABLE_TRACE        (ENABLE_TRACE),
      .REGS_INIT_ZERO      (REGS_INIT_ZERO),
      .MASKED_IRQ          (MASKED_IRQ),
      .LATCHED_IRQ         (LATCHED_IRQ),
      .PROGADDR_RESET      (PROGADDR_RESET),
      .PROGADDR_IRQ        (PROGADDR_IRQ),
      .STACKADDR           (STACKADDR)
  ) dut (
      .clk(clk),
      .resetn(resetn),
      .trap(pif.trap),

      .mem_axi_awvalid(pif.axil_intf_i.mem_axi_awvalid),
      .mem_axi_awready(pif.axil_intf_i.mem_axi_awready),
      .mem_axi_awaddr (pif.axil_intf_i.mem_axi_awaddr),
      .mem_axi_awprot (pif.axil_intf_i.mem_axi_awprot),
      .mem_axi_wvalid (pif.axil_intf_i.mem_axi_wvalid),
      .mem_axi_wready (pif.axil_intf_i.mem_axi_wready),
      .mem_axi_wdata  (pif.axil_intf_i.mem_axi_wdata),
      .mem_axi_wstrb  (pif.axil_intf_i.mem_axi_wstrb),
      .mem_axi_bvalid (pif.axil_intf_i.mem_axi_bvalid),
      .mem_axi_bready (pif.axil_intf_i.mem_axi_bready),
      .mem_axi_arvalid(pif.axil_intf_i.mem_axi_arvalid),
      .mem_axi_arready(pif.axil_intf_i.mem_axi_arready),
      .mem_axi_araddr (pif.axil_intf_i.mem_axi_araddr),
      .mem_axi_arprot (pif.axil_intf_i.mem_axi_arprot),
      .mem_axi_rvalid (pif.axil_intf_i.mem_axi_rvalid),
      .mem_axi_rready (pif.axil_intf_i.mem_axi_rready),
      .mem_axi_rdata  (pif.axil_intf_i.mem_axi_rdata),

      .pcpi_valid(pif.pcpi_intf_i.pcpi_valid),
      .pcpi_insn (pif.pcpi_intf_i.pcpi_insn),
      .pcpi_rs1  (pif.pcpi_intf_i.pcpi_rs1),
      .pcpi_rs2  (pif.pcpi_intf_i.pcpi_rs2),
      .pcpi_wr   (pif.pcpi_intf_i.pcpi_wr),
      .pcpi_rd   (pif.pcpi_intf_i.pcpi_rd),
      .pcpi_wait (pif.pcpi_intf_i.pcpi_wait),
      .pcpi_ready(pif.pcpi_intf_i.pcpi_ready),

      .irq(pif.irq_intf_i.irq),
      .eoi(pif.irq_intf_i.eoi),

`ifdef RISCV_FORMAL
      .rvfi_valid    (pif.rvfi_intf_i.rvfi_valid),
      .rvfi_order    (pif.rvfi_intf_i.rvfi_order),
      .rvfi_insn     (pif.rvfi_intf_i.rvfi_insn),
      .rvfi_trap     (pif.rvfi_intf_i.rvfi_trap),
      .rvfi_halt     (pif.rvfi_intf_i.rvfi_halt),
      .rvfi_intr     (pif.rvfi_intf_i.rvfi_intr),
      .rvfi_rs1_addr (pif.rvfi_intf_i.rvfi_rs1_addr),
      .rvfi_rs2_addr (pif.rvfi_intf_i.rvfi_rs2_addr),
      .rvfi_rs1_rdata(pif.rvfi_intf_i.rvfi_rs1_rdata),
      .rvfi_rs2_rdata(pif.rvfi_intf_i.rvfi_rs2_rdata),
      .rvfi_rd_addr  (pif.rvfi_intf_i.rvfi_rd_addr),
      .rvfi_rd_wdata (pif.rvfi_intf_i.rvfi_rd_wdata),
      .rvfi_pc_rdata (pif.rvfi_intf_i.rvfi_pc_rdata),
      .rvfi_pc_wdata (pif.rvfi_intf_i.rvfi_pc_wdata),
      .rvfi_mem_addr (pif.rvfi_intf_i.rvfi_mem_addr),
      .rvfi_mem_rmask(pif.rvfi_intf_i.rvfi_mem_rmask),
      .rvfi_mem_wmask(pif.rvfi_intf_i.rvfi_mem_wmask),
      .rvfi_mem_rdata(pif.rvfi_intf_i.rvfi_mem_rdata),
      .rvfi_mem_wdata(pif.rvfi_intf_i.rvfi_mem_wdata),
`endif

      .trace_valid(pif.trace_intf_i.trace_valid),
      .trace_data (pif.trace_intf_i.trace_data)
  );

endmodule
