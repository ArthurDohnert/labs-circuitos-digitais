library verilog;
use verilog.vl_types.all;
entity Neander_vlg_sample_tst is
    port(
        clk_in          : in     vl_logic;
        rst_in          : in     vl_logic;
        run_debug       : in     vl_logic;
        run_sel         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Neander_vlg_sample_tst;
