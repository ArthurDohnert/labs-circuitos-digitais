library verilog;
use verilog.vl_types.all;
entity DECOD416_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end DECOD416_vlg_sample_tst;
