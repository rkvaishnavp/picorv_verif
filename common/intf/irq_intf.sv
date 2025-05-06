interface irq_intf (
    input clk,
    resetn
);

  logic [31:0] irq;
  logic [31:0] eoi;

endinterface  //irq_intf
