library verilog;
use verilog.vl_types.all;
entity CodificadordePrioridade is
    port(
        v               : out    vl_logic;
        D               : in     vl_logic_vector(7 downto 0);
        S               : out    vl_logic_vector(2 downto 0)
    );
end CodificadordePrioridade;
