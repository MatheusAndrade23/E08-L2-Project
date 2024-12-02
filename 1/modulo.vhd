----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:55:02 11/28/2024 
-- Design Name: 
-- Module Name:    shift_register - Behavioral 
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

entity shift_register is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  enable : in STD_LOGIC;
			  data_in : in STD_LOGIC;
           q1 : out  STD_LOGIC;
           q2 : out  STD_LOGIC;
			  q3 : out  STD_LOGIC
			  );
end shift_register;

architecture Behavioral of shift_register is

signal reg1, reg2, reg3 : STD_LOGIC := '0';
	
begin
	process (clk, rst)
	
	begin
			if rst = '1' then
				reg1 <= '0';
				reg2 <= '0';
				reg3 <= '0';
			elsif rising_edge(clk) then
				if enable = '1' then
					reg3 <= reg2;
					reg2 <= reg1;
					reg1 <= data_in;
				else
					reg1 <= reg2;
					reg2 <= reg3;
					reg3 <= data_in;
				end if;
			end if;
		end process;
		
		q1 <= reg1;
		q2 <= reg2;
		q3 <= reg3;
end Behavioral;