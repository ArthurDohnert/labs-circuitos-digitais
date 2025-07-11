library verilog;
use verilog.vl_types.all;
entity FSM_elevador_vlg_check_tst is
    port(
        acao            : in     vl_logic_vector(3 downto 0);
        andar           : in     vl_logic_vector(3 downto 0);
        disp_A1         : in     vl_logic;
        disp_B1         : in     vl_logic;
        disp_C1         : in     vl_logic;
        disp_D1         : in     vl_logic;
        disp_E1         : in     vl_logic;
        disp_F1         : in     vl_logic;
        disp_G1         : in     vl_logic;
        dispPC1_A       : in     vl_logic;
        dispPC1_B       : in     vl_logic;
        dispPC1_C       : in     vl_logic;
        dispPC1_D       : in     vl_logic;
        dispPC1_E       : in     vl_logic;
        dispPC1_F       : in     vl_logic;
        dispPC1_G       : in     vl_logic;
        rst_descer      : in     vl_logic;
        rst_subir       : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end FSM_elevador_vlg_check_tst;
