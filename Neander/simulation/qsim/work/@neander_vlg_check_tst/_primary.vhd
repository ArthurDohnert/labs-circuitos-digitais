library verilog;
use verilog.vl_types.all;
entity Neander_vlg_check_tst is
    port(
        AC_val          : in     vl_logic_vector(7 downto 0);
        ADD             : in     vl_logic;
        \AND\           : in     vl_logic;
        cargaAC         : in     vl_logic;
        cargaNZ         : in     vl_logic;
        cargaPC         : in     vl_logic;
        cargaRDM        : in     vl_logic;
        cargaREM        : in     vl_logic;
        cargaRI         : in     vl_logic;
        goto_t0         : in     vl_logic;
        incrementaPC    : in     vl_logic;
        instrucoes      : in     vl_logic_vector(15 downto 0);
        \NOT\           : in     vl_logic;
        opcode          : in     vl_logic_vector(7 downto 0);
        \OR\            : in     vl_logic;
        Read            : in     vl_logic;
        sel             : in     vl_logic;
        tempo           : in     vl_logic_vector(2 downto 0);
        Write           : in     vl_logic;
        Y               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Neander_vlg_check_tst;
