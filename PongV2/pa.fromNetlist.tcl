
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name PongV2 -dir "C:/XilinxWorkSpace/PongV2/planAhead_run_2" -part xc3s500efg320-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/XilinxWorkSpace/PongV2/TL.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/XilinxWorkSpace/PongV2} }
set_property target_constrs_file "pong_contoller_nexys_II.ucf" [current_fileset -constrset]
add_files [list {pong_contoller_nexys_II.ucf}] -fileset [get_property constrset [current_run]]
link_design
