library verilog;
use verilog.vl_types.all;
entity RCA16_vlg_check_tst is
    port(
        Coutt           : in     vl_logic;
        S0              : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end RCA16_vlg_check_tst;
