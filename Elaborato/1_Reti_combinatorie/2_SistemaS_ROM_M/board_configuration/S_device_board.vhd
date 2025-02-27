----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/30/2025 07:23:29 PM
-- Design Name: 
-- Module Name: S_device_board - Behavioral
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
use work.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity S_device_board is
  Port (
    sw_in : std_logic_vector(3 downto 0);
    out_led : out std_logic_vector(3 downto 0)
  );
end S_device_board;

architecture Behavioral of S_device_board is

component S_devince port (
    indirizzo : in std_logic_vector(3 downto 0);
    uscita : out std_logic_vector(3 downto 0)
);
end component;

begin
-- Collegamento tra le interfacce e il componente
test : S_devince port map(
    indirizzo => sw_in,
    uscita => out_led
);

end Behavioral;
