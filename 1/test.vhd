--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:56:20 11/28/2024
-- Design Name:   
-- Module Name:   /home/ise/shift_register/test.vhd
-- Project Name:  shift_register
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shift_register
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
 
    COMPONENT shift_register
    PORT(
         rst : IN  std_logic;
         clk : IN  std_logic;
         enable: IN  std_logic;
         data_in : IN  std_logic;
			q1 : out  std_logic;
			q2 : out  std_logic;
			q3 : out  std_logic
        );
    END COMPONENT;
       --Inputs
   signal clk : std_logic := '0';
	signal rst : std_logic := '0';
	signal enable : std_logic := '0';
	signal data_in : std_logic := '0';

 	--Outputs
   signal q1 : std_logic;
   signal q2 : std_logic;
	signal q3 : std_logic;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shift_register PORT MAP (
          rst => rst,
          clk => clk,
          enable => enable,
          data_in => data_in,
			 q1 => q1,
			 q2 => q2,
			 q3 => q3
        );

   -- Stimulus process
   stim_proc: process
   begin		
	
	rst <= '1';
	wait for 50 ns;
	rst <= '0';
	
	clk <= '1';
	wait for 50 ns;
	clk <= '0';
	wait for 50 ns;
	
	data_in <= '1';
	clk <= '1';
	wait for 50 ns;
	clk <= '0';
	wait for 50 ns;
	
	data_in <= '0';
	clk <= '1';
	wait for 50 ns;
	clk <= '0';
	wait for 50 ns;
	
	enable <= '1';
	data_in <= '1';
	clk <= '1';
	wait for 50 ns;
	clk <= '0';
	wait for 50 ns;
	
	data_in <= '0';
	clk <= '1';
	wait for 50 ns;
	clk <= '0';
	wait for 50 ns;
	
	end process;
END;