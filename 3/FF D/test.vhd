----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:55:02 11/28/2024 
-- Design Name: 
-- Module Name:    D - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity D is
    Port ( d : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC;
           q_bar : out  STD_LOGIC);
end D;

architecture Behavioral of D is

signal signal_q: STD_LOGIC;
	
begin
	process (clk)
	
	begin
		signal_q <= '0';
		
			if rising_edge(clk) then
				signal_q <= d;
			elsif falling_edge(clk) then
				signal_q <= signal_q;
			end if;
		end process;
	
	q <= signal_q;
	q_bar <= not(signal_q);

end Behavioral;