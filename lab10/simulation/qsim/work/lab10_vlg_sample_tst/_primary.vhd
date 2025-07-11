library verilog;
use verilog.vl_types.all;
entity lab10_vlg_sample_tst is
    port(
        clk_in          : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end lab10_vlg_sample_tst;
