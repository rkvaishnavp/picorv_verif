`include "uvm_pkg.sv"
import uvm_pkg::*;
`include "uvm_macros.svh"

`include "tb_includes.svh"
module tb_top;

  logic clk, resetn;
  picorv_intf pif (
      clk,
      resetn
  );

  dv_top dv_top_i (
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

  logic [1023:0] firmware_file;
  initial begin
    if (!$value$plusargs("firmware=%s", firmware_file)) begin
      firmware_file = "firmware/firmware.hex";
    end
    $readmemh(firmware_file, dv_top_i.axil_memory.axil_ram_inst.mem);
  end

  initial begin
    uvm_config_db#(virtual picorv_intf)::set(null, "GLOBAL", "picorv_vif", pif);
    run_test("picorv_base_test");
  end

endmodule
