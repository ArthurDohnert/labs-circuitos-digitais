library verilog;
use verilog.vl_types.all;
entity lab10 is
    port(
        Verde           : out    vl_logic;
        tempo           : out    vl_logic_vector(15 downto 0);
        clk_in          : in     vl_logic;
        rst             : in     vl_logic;
        Vermelho        : out    vl_logic;
        Amarelo         : out    vl_logic
    );
end lab10;
