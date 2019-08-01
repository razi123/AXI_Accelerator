---------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.07.2019 12:21:52
-- Design Name: 
-- Module Name: mult_2b - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multiplier_2bit is
    Port ( clk: in STD_LOGIC;
           A : in STD_LOGIC_VECTOR (1 downto 0);
           B : in STD_LOGIC_VECTOR (1 downto 0);
           C : out STD_LOGIC_VECTOR (3 downto 0));
end multiplier_2bit;

architecture Behavioral of multiplier_2bit is

signal F0,F1,F2,F3 : STD_LOGIC;

begin

F0 <= A(0) and B(1);
F1 <= A(1) and B(0);
F3 <= A(1) and B(1);

process(clk) is 
begin
if rising_edge(clk) then

    C(0) <= A(0) and B(0);
    C(1) <= F0 xor F1;
    F2 <= F0 and F1;

    C(2)<= F2 xor F3;
    C(3)<= F3 and F2; 
end if;

end process;

end Behavioral;