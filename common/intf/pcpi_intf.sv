interface pcpi_intf (
    input clk,
    resetn
);
  logic pcpi_valid;
  logic [31:0] pcpi_insn;
  logic [31:0] pcpi_rs1;
  logic [31:0] pcpi_rs2;
  logic pcpi_wr;
  logic [31:0] pcpi_rd;
  logic pcpi_wait;
  logic pcpi_ready;

endinterface  //pcpi_intf
