library verilog;
use verilog.vl_types.all;
entity lab10_vlg_check_tst is
    port(
        Amarelo         : in     vl_logic;
        tempo           : in     vl_logic_vector(15 downto 0);
        Verde           : in     vl_logic;
        Vermelho        : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end lab10_vlg_check_tst;
