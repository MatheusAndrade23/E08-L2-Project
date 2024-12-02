----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:55:02 11/28/2024 
-- Design Name: 
-- Module Name:    T - Behavioral 
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

entity T is
    Port ( t : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC;
           q_bar : out  STD_LOGIC);
end T;

architecture Behavioral of T is

signal signal_q: STD_LOGIC;
	
begin
	process (clk)
	
	begin
		signal_q <= '0';
		
			if rising_edge(clk) then
				if(t = '0') then
					signal_q <= signal_q;
				elsif (t = '1') then
					signal_q <= not(signal_q);
				end if;
			elsif falling_edge(clk) then
				signal_q <= signal_q;
			end if;
		end process;
	
	q <= signal_q;
	q_bar <= not(signal_q);

end Behavioral;