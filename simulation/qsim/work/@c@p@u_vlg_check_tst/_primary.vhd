library verilog;
use verilog.vl_types.all;
entity CPU_vlg_check_tst is
    port(
        opcode          : in     vl_logic_vector(7 downto 0);
        r_first_four    : in     vl_logic_vector(0 to 6);
        r_last_four     : in     vl_logic_vector(0 to 6);
        sign            : in     vl_logic_vector(0 to 6);
        state           : in     vl_logic_vector(2 downto 0);
        studentID       : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end CPU_vlg_check_tst;
