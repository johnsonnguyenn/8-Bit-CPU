library verilog;
use verilog.vl_types.all;
entity CPU is
    port(
        opcode          : out    vl_logic_vector(7 downto 0);
        en              : in     vl_logic;
        data            : in     vl_logic;
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        r_first_four    : out    vl_logic_vector(0 to 6);
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        r_last_four     : out    vl_logic_vector(0 to 6);
        sign            : out    vl_logic_vector(0 to 6);
        state           : out    vl_logic_vector(2 downto 0);
        studentID       : out    vl_logic_vector(0 to 6)
    );
end CPU;
