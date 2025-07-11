library verilog;
use verilog.vl_types.all;
entity ULA_vlg_sample_tst is
    port(
        A0              : in     vl_logic_vector(3 downto 0);
        B0              : in     vl_logic_vector(3 downto 0);
        op_sel          : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end ULA_vlg_sample_tst;
