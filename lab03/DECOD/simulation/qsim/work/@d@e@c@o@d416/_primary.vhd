library verilog;
use verilog.vl_types.all;
entity DECOD416 is
    port(
        D               : out    vl_logic_vector(15 downto 0);
        A               : in     vl_logic_vector(3 downto 0)
    );
end DECOD416;
