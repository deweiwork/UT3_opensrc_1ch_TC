
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name BelleIIvt6 -dir "C:/Users/curlywei/Desktop/openscr_xilinx_1ch_tc/BelleIIvt6127gp/planAhead_run_4" -part xc6vhx380tff1923-2
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "C:/Users/curlywei/Desktop/openscr_xilinx_1ch_tc/BelleIIvt6127gp/XCVR_TOP.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/curlywei/Desktop/openscr_xilinx_1ch_tc/BelleIIvt6127gp} {../ipcore_dir} {../ipcore_dir/v6_gtxwizard_v1_12/implement} {ipcore_dir} }
add_files [list {../ipcore_dir/chipscope_icon.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {../ipcore_dir/chipscope_ila.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/chipscope_ila_2.ncf}] -fileset [get_property constrset [current_run]]
set_property target_constrs_file "XCVR_TOP.ucf" [current_fileset -constrset]
add_files [list {XCVR_TOP.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "C:/Users/curlywei/Desktop/openscr_xilinx_1ch_tc/BelleIIvt6127gp/XCVR_TOP.ncd"
if {[catch {read_twx -name results_1 -file "C:/Users/curlywei/Desktop/openscr_xilinx_1ch_tc/BelleIIvt6127gp/XCVR_TOP.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"C:/Users/curlywei/Desktop/openscr_xilinx_1ch_tc/BelleIIvt6127gp/XCVR_TOP.twx\": $eInfo"
}
