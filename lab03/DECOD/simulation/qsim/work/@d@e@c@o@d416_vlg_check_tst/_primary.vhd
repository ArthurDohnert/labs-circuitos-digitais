library verilog;
use verilog.vl_types.all;
entity DECOD416_vlg_check_tst is
    port(
        D               : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end DECOD416_vlg_check_tst;
