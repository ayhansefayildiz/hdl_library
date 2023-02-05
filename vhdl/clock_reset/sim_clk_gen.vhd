----------------------------------------------------------------------------------
-- Designer     : Ayhan Sefa YILDIZ
-- Description  : This code generates a clock signal for test-benches with a period of generic value.  
-- Create Date  : 29.01.2023
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim_clk_gen is
generic(
    clock_period : time := 5ns --please enter period of clk i.e. 5ns
); 
port (
    clk : out std_logic
);
end sim_clk_gen;

architecture Behavioral of sim_clk_gen is
begin
process
begin
    clk <= '0';
    wait for clock_period/2;
    clk <= '1';
    wait for clock_period/2;
end process;  
end Behavioral;
