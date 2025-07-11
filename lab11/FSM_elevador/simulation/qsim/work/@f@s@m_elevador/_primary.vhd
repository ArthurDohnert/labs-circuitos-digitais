library verilog;
use verilog.vl_types.all;
entity FSM_elevador is
    port(
        disp_D1         : out    vl_logic;
        andar           : out    vl_logic_vector(3 downto 0);
        clk_in          : in     vl_logic;
        rst             : in     vl_logic;
        botao_subir     : in     vl_logic;
        botao_descer    : in     vl_logic;
        rst_subir       : out    vl_logic;
        rst_descer      : out    vl_logic;
        disp_A1         : out    vl_logic;
        disp_E1         : out    vl_logic;
        disp_B1         : out    vl_logic;
        disp_C1         : out    vl_logic;
        disp_F1         : out    vl_logic;
        disp_G1         : out    vl_logic;
        dispPC1_D       : out    vl_logic;
        acao            : out    vl_logic_vector(3 downto 0);
        dispPC1_A       : out    vl_logic;
        dispPC1_E       : out    vl_logic;
        dispPC1_B       : out    vl_logic;
        dispPC1_C       : out    vl_logic;
        dispPC1_F       : out    vl_logic;
        dispPC1_G       : out    vl_logic
    );
end FSM_elevador;
