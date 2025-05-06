`ifndef TB_MACROS_SVH
`define TB_MACROS_SVH

`define new_comp \
function new(string name = "", uvm_component parent = null); \
  super.new(name, parent); \
endfunction

`define new_obj \
function new(string name = ""); \
  super.new(name); \
endfunction

`endif  // TB_MACROS_SVH
