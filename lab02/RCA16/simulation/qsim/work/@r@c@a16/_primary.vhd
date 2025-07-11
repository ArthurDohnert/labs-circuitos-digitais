library verilog;
use verilog.vl_types.all;
entity RCA16 is
    port(
        Coutt           : out    vl_logic;
        Cin             : in     vl_logic;
        A0              : in     vl_logic_vector(15 downto 0);
        B0              : in     vl_logic_vector(15 downto 0);
        S0              : out    vl_logic_vector(15 downto 0)
    );
end RCA16;
