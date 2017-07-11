library verilog;
use verilog.vl_types.all;
entity \IF\ is
    port(
        clock           : in     vl_logic;
        addrBranch      : in     vl_logic_vector(31 downto 0);
        isBranch        : in     vl_logic;
        pcWrite         : in     vl_logic;
        pc4             : out    vl_logic_vector(31 downto 0);
        instruction     : out    vl_logic_vector(31 downto 0)
    );
end \IF\;
