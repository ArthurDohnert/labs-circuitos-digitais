library verilog;
use verilog.vl_types.all;
entity CodificadordePrioridade_vlg_check_tst is
    port(
        S               : in     vl_logic_vector(2 downto 0);
        v               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end CodificadordePrioridade_vlg_check_tst;
