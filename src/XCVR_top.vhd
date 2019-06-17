library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

library work;
use work.DataStruct_param_def_header.all;--invoke our defined type and parameter

library UNISIM;
use UNISIM.vcomponents.all; --bufg oddr OBUFDES

entity XCVR_TOP is
    port (
        RST_N_in                : in  std_logic := '1' ;
        XCVR_Ref_Clock_in       : in  std_logic;
        XCVR_Ref_Clock_in_N     : in  std_logic;
        --init_clock              : in  std_logic;
        
        RX_ser_bank       : in  ser_data_men_bank;
        TX_ser_bnak       : out ser_data_men_bank;
        RX_ser_N_bank     : in  ser_data_men_bank;
        TX_ser_N_bnak     : out ser_data_men_bank;

        tx_Para_data_bank             : in  para_data_men_bank;
        rx_Para_data_bank             : out para_data_men_bank;
        ext_tx_para_data_clk_bank     : out ser_data_men_bank;
        ext_rx_para_data_clk_bank     : out ser_data_men_bank;
        tx_traffic_ready_ext_bank     : out std_logic_vector((num_of_xcvr_bank_used - 1) downto 0) ;
        rx_traffic_ready_ext_bank     : out std_logic_vector((num_of_xcvr_bank_used - 1) downto 0) ;

        error_cnt_ch_bank             : out para_data_men_bank;

        CLK_SEL          : out STD_LOGIC;
        CLK_SEL_127M     : out STD_LOGIC;
        CLK_SEL_254M     : out STD_LOGIC
    );
end entity XCVR_TOP ;

architecture XCVR_TOP_connect of XCVR_TOP is
    --para data
    signal tx_Para_data_bank_buf  : para_data_men_bank ; --:= (others=> (others => (others => '0')));
    signal rx_Para_data_bank_buf  : para_data_men_bank ; --:= (others=> (others => (others => '0')));

    signal error_cnt_ch_bank_buf  : para_data_men_bank ; --:= (others=> (others => (others => '0')));
    --ext clock
    signal ext_tx_para_data_clk_bank_buf     : ser_data_men_bank ;
    signal ext_rx_para_data_clk_bank_buf     : ser_data_men_bank ;

    signal tx_traffic_ready_ext_bank_buf     : std_logic_vector((num_of_xcvr_bank_used - 1) downto 0) ;
    signal rx_traffic_ready_ext_bank_buf     : std_logic_vector((num_of_xcvr_bank_used - 1) downto 0) ;

    --clock  and clock buffer
    signal Ref_Clock_buffer_out         : std_logic := '0';
    signal Ref_Clock_buffer_out_div2    : std_logic := '0';
    --output clk to rj45
    signal bufg_clk_out                 : std_logic ;
    signal bufg_clk_out_to_others       : std_logic ;
    signal bufg_clk_out_to_xcvr         : std_logic ;
    --clock test
    signal test_Clock                   : std_logic ;
begin
    --set clock port on ut3
    CLK_SEL         <= '0' when ref_clock_from_ext = '1' else '0';--'0' when use ext127 clk
    CLK_SEL_127M    <= '0' when ref_clock_from_ext = '1' else '0';--'0' when use ext127 clk
    CLK_SEL_254M    <= '0' when ref_clock_from_ext = '1' else '0';--'0' when use ext254 clk
    --connect ext para data
    tx_Para_data_bank_buf <= tx_Para_data_bank;
    rx_Para_data_bank     <= rx_Para_data_bank_buf;
    --connect ext para data clk
    ext_tx_para_data_clk_bank  <= ext_tx_para_data_clk_bank_buf ;
    ext_rx_para_data_clk_bank  <= ext_rx_para_data_clk_bank_buf ;
    tx_traffic_ready_ext_bank  <= tx_traffic_ready_ext_bank_buf ;
    rx_traffic_ready_ext_bank  <= rx_traffic_ready_ext_bank_buf ;

    error_cnt_ch_bank  <= error_cnt_ch_bank_buf ;
    --connect XCVR
    Connect_XVCR_Module_loop : for i in 0 to (num_of_xcvr_bank_used - 1) generate
    XCVR_Module_gen : entity work.XCVR_8B10B_interconnect
        port map (
            RST_N                       => RST_N_in,

            XCVR_Ref_Clock              => Ref_Clock_buffer_out,
            init_clock                  => Ref_Clock_buffer_out,

            TX_para_external_ch         => tx_Para_data_bank_buf(i),
            RX_para_external_ch         => rx_Para_data_bank_buf(i),
            TX_para_external_clk_ch     => ext_tx_para_data_clk_bank_buf(i),
            RX_para_external_clk_ch     => ext_rx_para_data_clk_bank_buf(i),
            tx_traffic_ready_ext_ch     => tx_traffic_ready_ext_bank_buf(i),
            rx_traffic_ready_ext_ch     => rx_traffic_ready_ext_bank_buf(i),
            error_cnt_ch                => error_cnt_ch_bank_buf(i),

            RX_ser                      => RX_ser_bank(i),
            TX_ser                      => TX_ser_bnak(i),
            RX_ser_N                    => RX_ser_N_bank(i),
            TX_ser_N                    => TX_ser_N_bnak(i)
        );
    end generate Connect_XVCR_Module_loop;


    --tranceiver clock buf
    q4_clk0_refclk_ibufds_i : IBUFDS_GTXE1
    port map(
        O                               =>      Ref_Clock_buffer_out,
        ODIV2                           =>      Ref_Clock_buffer_out_div2,
        CEB                             =>      '0',--not(RST_N),
        I                               =>      XCVR_Ref_Clock_in,  -- Connect to package pin AU37
        IB                              =>      XCVR_Ref_Clock_in_N -- Connect to package pin AU38
    );


end architecture XCVR_TOP_connect;
