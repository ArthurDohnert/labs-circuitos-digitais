library verilog;
use verilog.vl_types.all;
entity FSM_elevador_vlg_sample_tst is
    port(
        botao_descer    : in     vl_logic;
        botao_subir     : in     vl_logic;
        clk_in          : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end FSM_elevador_vlg_sample_tst;
