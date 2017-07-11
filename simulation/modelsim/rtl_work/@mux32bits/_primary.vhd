library verilog;
use verilog.vl_types.all;
entity Mux32bits is
    port(
        \select\        : in     vl_logic;
        pc4             : in     vl_logic_vector(31 downto 0);
        branch          : in     vl_logic_vector(31 downto 0);
        \out\           : out    vl_logic_vector(31 downto 0)
    );
end Mux32bits;
