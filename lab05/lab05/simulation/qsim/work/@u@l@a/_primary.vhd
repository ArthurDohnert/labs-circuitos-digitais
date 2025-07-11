library verilog;
use verilog.vl_types.all;
entity ULA is
    port(
        flag_N          : out    vl_logic;
        S               : out    vl_logic_vector(3 downto 0);
        op_sel          : in     vl_logic_vector(1 downto 0);
        A0              : in     vl_logic_vector(3 downto 0);
        B0              : in     vl_logic_vector(3 downto 0);
        flag_Z          : out    vl_logic
    );
end ULA;
