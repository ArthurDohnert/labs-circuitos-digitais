library verilog;
use verilog.vl_types.all;
entity Neander is
    port(
        goto_t0         : out    vl_logic;
        Y               : out    vl_logic;
        ADD             : out    vl_logic;
        \AND\           : out    vl_logic;
        \OR\            : out    vl_logic;
        \NOT\           : out    vl_logic;
        AC_val          : out    vl_logic_vector(7 downto 0);
        cargaAC         : out    vl_logic;
        rst_in          : in     vl_logic;
        clk_in          : in     vl_logic;
        Read            : out    vl_logic;
        cargaREM        : out    vl_logic;
        sel             : out    vl_logic;
        incrementaPC    : out    vl_logic;
        cargaPC         : out    vl_logic;
        cargaNZ         : out    vl_logic;
        instrucoes      : out    vl_logic_vector(15 downto 0);
        opcode          : out    vl_logic_vector(7 downto 0);
        cargaRI         : out    vl_logic;
        cargaRDM        : out    vl_logic;
        Write           : out    vl_logic;
        tempo           : out    vl_logic_vector(2 downto 0);
        run_debug       : in     vl_logic;
        run_sel         : in     vl_logic
    );
end Neander;
