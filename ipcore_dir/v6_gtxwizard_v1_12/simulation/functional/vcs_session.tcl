################################################################################
##   ____  ____ 
##  /   /\/   / 
## /___/  \  /    Vendor: Xilinx 
## \   \   \/     Version : 1.12
##  \   \         Application : Virtex-6 FPGA GTX Transceiver Wizard
##  /   /         Filename : vcs_session.tcl
## /___/   /\     
## \   \  /  \ 
##  \___\/\___\ 
##
##
##
## Script VCS_SESSION.TCL
## Generated by Xilinx Virtex-6 FPGA GTH Transceiver Wizard
##
## 
## (c) Copyright 2009-2011 Xilinx, Inc. All rights reserved.
## 
## This file contains confidential and proprietary information
## of Xilinx, Inc. and is protected under U.S. and
## international copyright and other intellectual property
## laws.
## 
## DISCLAIMER
## This disclaimer is not a license and does not grant any
## rights to the materials distributed herewith. Except as
## otherwise provided in a valid license issued to you by
## Xilinx, and to the maximum extent permitted by applicable
## law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
## WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
## AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
## BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
## INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
## (2) Xilinx shall not be liable (whether in contract or tort,
## including negligence, or under any other theory of
## liability) for any loss or damage of any kind or nature
## related to, arising under or in connection with these
## materials, including for any direct, or any indirect,
## special, incidental, or consequential loss or damage
## (including loss of data, profits, goodwill, or any type of
## loss or damage suffered as a result of any action brought
## by a third party) even if such damage or loss was
## reasonably foreseeable or Xilinx had been advised of the
## possibility of the same.
##
## CRITICAL APPLICATIONS
## Xilinx products are not designed or intended to be fail-
## safe, or for use in any application requiring fail-safe
## performance, such as life-support or safety devices or
## systems, Class III medical devices, nuclear facilities,
## applications related to the deployment of airbags, or any
## other applications that could lead to death, personal
## injury, or severe property or environmental damage
## (individually and collectively, "Critical
## Applications"). Customer assumes the sole risk and
## liability of any use of Xilinx products in Critical
## Applications, subject only to applicable laws and
## regulations governing limitations on product liability.
## 
## THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
## PART OF THIS FILE AT ALL TIMES.

  gui_open_window Wave
  gui_sg_create v6_gtxwizard_v1_12_Group
  gui_list_add_group -id Wave.1 {v6_gtxwizard_v1_12_Group}

  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {{FRAME_CHECK_MODULE}} -divider
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:gtx0_frame_check:begin_r}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:gtx0_frame_check:track_data_r}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:gtx0_frame_check:data_error_detected_r}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:gtx0_frame_check:start_of_packet_detected_r}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:gtx0_frame_check:RX_DATA}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:gtx0_frame_check:ERROR_COUNT}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {{GTX0_V6_GTXWIZARD_V1_12}} -divider
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {{Loopback and Powerdown Ports}} -divider
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:LOOPBACK_IN}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {{Receive Ports - Comma Detection and Alignment}} -divider
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:RXBYTEISALIGNED_OUT}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:RXCOMMADET_OUT}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:RXENMCOMMAALIGN_IN}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:RXENPCOMMAALIGN_IN}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {{Receive Ports - RX Data Path interface}} -divider
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:RXDATA_OUT}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:RXRECCLK_OUT}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:RXRESET_IN}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:RXUSRCLK2_IN}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {{Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR}} -divider
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:RXEQMIX_IN}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:RXN_IN}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:RXP_IN}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {{Receive Ports - RX PLL Ports}} -divider
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:GTXRXRESET_IN}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:MGTREFCLKRX_IN}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:PLLRXRESET_IN}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:RXPLLLKDET_OUT}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:RXRESETDONE_OUT}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {{Transmit Ports - GTX Ports}} -divider
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:GTXTEST_IN}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {{Transmit Ports - TX Data Path interface}} -divider
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:TXDATA_IN}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:TXOUTCLK_OUT}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:TXRESET_IN}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:TXUSRCLK2_IN}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {{Transmit Ports - TX Driver and OOB signaling}} -divider
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:TXDIFFCTRL_IN}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:TXN_OUT}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:TXP_OUT}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:TXPOSTEMPHASIS_IN}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {{Transmit Ports - TX Driver and OOB signalling}} -divider
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:TXPREEMPHASIS_IN}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {{Transmit Ports - TX PLL Ports}} -divider
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:GTXTXRESET_IN}
  gui_sg_addsignal -group v6_gtxwizard_v1_12_Group {:v6_gtxwizard_v1_12_top_i:v6_gtxwizard_v1_12_i:gtx0_v6_gtxwizard_v1_12_i:TXRESETDONE_OUT}


  gui_zoom -window Wave.1 -full

