#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Wed Jun 24 12:02:17 2026                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.15-s110_1 (64bit) 09/23/2022 13:08 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.15-s110_1 NR220912-2004/21_15-UB (database version 18.20.592) {superthreading v2.17}
#@(#)CDS: AAE 21.15-s039 (64bit) 09/23/2022 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.15-s038_1 () Sep 20 2022 11:42:13 ( )
#@(#)CDS: SYNTECH 21.15-s012_1 () Sep  5 2022 10:25:51 ( )
#@(#)CDS: CPE v21.15-s076
#@(#)CDS: IQuantus/TQuantus 21.1.1-s867 (64bit) Sun Jun 26 22:12:54 PDT 2022 (Linux 3.10.0-693.el7.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
getVersion
getVersion
win
encMessage warning 0
encMessage debug 0
is_common_ui_mode
restoreDesign /home/vlsi21/day_19/booth/Pd/route.enc.dat booth_multiplier
setDrawView fplan
encMessage warning 1
encMessage debug 0
setDrawView place
fit
saveDesign ../day20/booth/booth_multiplier
selectWire 2.0100 20.9900 8.1200 21.3500 1 VSS
streamOut booth_route.gds -libName DesignLib -units 2000 -mode ALL
reset_parasitics
extractRC
rcOut -spef booth_multiplier.spef -rc_corner rc_corner
all_hold_analysis_views 
all_setup_analysis_views 
write_sdf  -ideal_clock_network booth_multiplier.sdf
fit
saveDesign booth_multiplier.enc
saveDesign booth_multiplier.enc
saveDesign booth_multiplier.enc
saveDesign booth_multiplier.enc
streamOut booth_route.gds -libName DesignLib -units 2000 -mode ALL
zoomBox -30.68100 3.22900 70.34950 52.57800
reset_parasitics
extractRC
rcOut -spef booth_multiplier.spef -rc_corner rc_corner
write_sdf  -ideal_clock_network booth_multiplier.sdf
fit
saveNetlist ../day20/booth/booth_physical_netlist.v
