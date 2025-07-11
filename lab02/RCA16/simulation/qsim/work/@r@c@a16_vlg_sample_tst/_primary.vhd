library verilog;
use verilog.vl_types.all;
entity RCA16_vlg_sample_tst is
    port(
        A0              : in     vl_logic_vector(15 downto 0);
        B0              : in     vl_logic_vector(15 downto 0);
        Cin             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end RCA16_vlg_sample_tst;
