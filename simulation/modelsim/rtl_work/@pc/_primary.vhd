library verilog;
use verilog.vl_types.all;
entity Pc is
    port(
        nextPc          : in     vl_logic_vector(31 downto 0);
        pcWrite         : in     vl_logic;
        currentPc       : out    vl_logic_vector(31 downto 0)
    );
end Pc;
