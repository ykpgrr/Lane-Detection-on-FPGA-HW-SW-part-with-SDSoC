# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 46 \
    name p_dst_matx_data_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_dst_matx_data_V \
    op interface \
    ports { p_dst_matx_data_V_address0 { O 19 vector } p_dst_matx_data_V_ce0 { O 1 bit } p_dst_matx_data_V_we0 { O 1 bit } p_dst_matx_data_V_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_dst_matx_data_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 49 \
    name p_dst_maty_data_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_dst_maty_data_V \
    op interface \
    ports { p_dst_maty_data_V_address0 { O 19 vector } p_dst_maty_data_V_ce0 { O 1 bit } p_dst_maty_data_V_we0 { O 1 bit } p_dst_maty_data_V_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_dst_maty_data_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name p_dst_matx_rows_read \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_dst_matx_rows_read \
    op interface \
    ports { p_dst_matx_rows_read_dout { I 32 vector } p_dst_matx_rows_read_empty_n { I 1 bit } p_dst_matx_rows_read_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name p_dst_matx_cols_read \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_dst_matx_cols_read \
    op interface \
    ports { p_dst_matx_cols_read_dout { I 32 vector } p_dst_matx_cols_read_empty_n { I 1 bit } p_dst_matx_cols_read_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name p_dstx_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_dstx_V_V \
    op interface \
    ports { p_dstx_V_V_dout { I 8 vector } p_dstx_V_V_empty_n { I 1 bit } p_dstx_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name p_dst_maty_cols_read \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_dst_maty_cols_read \
    op interface \
    ports { p_dst_maty_cols_read_dout { I 32 vector } p_dst_maty_cols_read_empty_n { I 1 bit } p_dst_maty_cols_read_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name p_dsty_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_dsty_V_V \
    op interface \
    ports { p_dsty_V_V_dout { I 8 vector } p_dsty_V_V_empty_n { I 1 bit } p_dsty_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


