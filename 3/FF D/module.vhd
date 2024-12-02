--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:56:20 11/28/2024
-- Design Name:   
-- Module Name:   /home/ise/FF_D/test.vhd
-- Project Name:  FF_D
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: D
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT D
    PORT(
         d : IN  std_logic;
         clk : IN  std_logic;
         q : OUT  std_logic;
         q_bar : OUT  std_logic
        );
    END COMPONENT;
       --Inputs
   signal signal_d : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal q : std_logic;
   signal q_bar : std_logic;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: D PORT MAP (
          d => signal_d,
          clk => clk,
          q => q,
          q_bar => q_bar
        );

   -- Stimulus process
   stim_proc: process
   begin		
	
	signal_d <= '0';
	wait for 50 ns;
	
	clk <= '1';
	wait for 50 ns;
	
	clk <= '0';
	wait for 50 ns;
	
	clk <= '1';
	wait for 50 ns;
	
	clk <= '0';
	wait for 50 ns;
	
	signal_d <= '1';
	wait for 50 ns;
	
	clk <= '1';
	wait for 50 ns;
	
	clk <= '0';
	wait for 50 ns;
   
	clk <= '1';
	wait for 50 ns;
	
	clk <= '0';
	wait for 50 ns;
	end process;
END;