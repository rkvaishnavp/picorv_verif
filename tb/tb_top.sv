`include "uvm_pkg.sv"

module tb_top;

  import uvm_pkg::*;
  `include "uvm_macros.svh"

  logic clk, resetn;
  picorv_intf pif (
      clk,
      resetn
  );

  picorv_axi_wrapper picorv_axi_uut (
      .clk(clk),
      .resetn(resetn),
      .pif(pif)
  );

  always #5 clk = ~clk;
  initial begin
    clk = 0;
    resetn = 0;
    #20 resetn = 1;
  end

  initial begin
    uvm_config_db#(virtual picorv_intf)::set(null, "GLOBAL", "picorv_vif", pif);
    run_test("pico_base_test");
  end

endmodule
