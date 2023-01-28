----------------------------------------------------------------------------------
-- Designer     : Ayhan Sefa YILDIZ
-- Description  : This code generates an active low reset signal for a generic value period of the input clock.
-- Create Date  : 29.01.2023
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity rst_gen is
generic(
    reset_period    : integer := 10 --please enter period of reset    
); 
port (
    clk : in std_logic;
    rstn: out std_logic := '0'
);
end rst_gen;

architecture Behavioral of rst_gen is
    signal reset_counter : unsigned (7 downto 0):= X"00";
begin
process (clk)
begin
    if rising_edge(clk) then
        if(reset_counter = reset_period ) then
            rstn <= '1';
        else
            rstn <= '0';
            reset_counter <= reset_counter+1;
        end if;
    end if;     
end process;  
end Behavioral;
