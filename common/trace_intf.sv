interface trace_intf (
    input clk,
    resetn
);

  logic trace_valid;
  logic [35:0] trace_data;

endinterface  //trace_intf
