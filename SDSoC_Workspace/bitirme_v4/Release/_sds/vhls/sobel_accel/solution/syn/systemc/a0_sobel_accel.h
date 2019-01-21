// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _a0_sobel_accel_HH_
#define _a0_sobel_accel_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "a0_Sobel.h"

namespace ap_rtl {

struct a0_sobel_accel : public sc_module {
    // Port declarations 29
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > p_src_allocatedFlag;
    sc_in< sc_lv<32> > p_src_rows;
    sc_in< sc_lv<32> > p_src_cols;
    sc_in< sc_lv<32> > p_src_size;
    sc_out< sc_lv<19> > p_src_data_V_address0;
    sc_out< sc_logic > p_src_data_V_ce0;
    sc_in< sc_lv<8> > p_src_data_V_q0;
    sc_in< sc_lv<8> > p_dstgx_allocatedFlag;
    sc_in< sc_lv<32> > p_dstgx_rows;
    sc_in< sc_lv<32> > p_dstgx_cols;
    sc_in< sc_lv<32> > p_dstgx_size;
    sc_out< sc_lv<19> > p_dstgx_data_V_address0;
    sc_out< sc_logic > p_dstgx_data_V_ce0;
    sc_out< sc_logic > p_dstgx_data_V_we0;
    sc_out< sc_lv<8> > p_dstgx_data_V_d0;
    sc_in< sc_lv<8> > p_dstgy_allocatedFlag;
    sc_in< sc_lv<32> > p_dstgy_rows;
    sc_in< sc_lv<32> > p_dstgy_cols;
    sc_in< sc_lv<32> > p_dstgy_size;
    sc_out< sc_lv<19> > p_dstgy_data_V_address0;
    sc_out< sc_logic > p_dstgy_data_V_ce0;
    sc_out< sc_logic > p_dstgy_data_V_we0;
    sc_out< sc_lv<8> > p_dstgy_data_V_d0;
    sc_signal< sc_logic > ap_var_for_const1;
    sc_signal< sc_lv<8> > ap_var_for_const0;


    // Module declarations
    a0_sobel_accel(sc_module_name name);
    SC_HAS_PROCESS(a0_sobel_accel);

    ~a0_sobel_accel();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    a0_Sobel* grp_Sobel_fu_78;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<19> > grp_Sobel_fu_78_p_src_mat_data_V_address0;
    sc_signal< sc_logic > grp_Sobel_fu_78_p_src_mat_data_V_ce0;
    sc_signal< sc_lv<8> > grp_Sobel_fu_78_p_src_mat_data_V_d0;
    sc_signal< sc_logic > grp_Sobel_fu_78_p_src_mat_data_V_we0;
    sc_signal< sc_lv<19> > grp_Sobel_fu_78_p_src_mat_data_V_address1;
    sc_signal< sc_logic > grp_Sobel_fu_78_p_src_mat_data_V_ce1;
    sc_signal< sc_lv<8> > grp_Sobel_fu_78_p_src_mat_data_V_d1;
    sc_signal< sc_logic > grp_Sobel_fu_78_p_src_mat_data_V_we1;
    sc_signal< sc_lv<19> > grp_Sobel_fu_78_p_dst_matx_data_V_address0;
    sc_signal< sc_logic > grp_Sobel_fu_78_p_dst_matx_data_V_ce0;
    sc_signal< sc_lv<8> > grp_Sobel_fu_78_p_dst_matx_data_V_d0;
    sc_signal< sc_logic > grp_Sobel_fu_78_p_dst_matx_data_V_we0;
    sc_signal< sc_lv<19> > grp_Sobel_fu_78_p_dst_matx_data_V_address1;
    sc_signal< sc_logic > grp_Sobel_fu_78_p_dst_matx_data_V_ce1;
    sc_signal< sc_lv<8> > grp_Sobel_fu_78_p_dst_matx_data_V_d1;
    sc_signal< sc_logic > grp_Sobel_fu_78_p_dst_matx_data_V_we1;
    sc_signal< sc_lv<19> > grp_Sobel_fu_78_p_dst_maty_data_V_address0;
    sc_signal< sc_logic > grp_Sobel_fu_78_p_dst_maty_data_V_ce0;
    sc_signal< sc_lv<8> > grp_Sobel_fu_78_p_dst_maty_data_V_d0;
    sc_signal< sc_logic > grp_Sobel_fu_78_p_dst_maty_data_V_we0;
    sc_signal< sc_lv<19> > grp_Sobel_fu_78_p_dst_maty_data_V_address1;
    sc_signal< sc_logic > grp_Sobel_fu_78_p_dst_maty_data_V_ce1;
    sc_signal< sc_lv<8> > grp_Sobel_fu_78_p_dst_maty_data_V_d1;
    sc_signal< sc_logic > grp_Sobel_fu_78_p_dst_maty_data_V_we1;
    sc_signal< sc_logic > grp_Sobel_fu_78_ap_done;
    sc_signal< sc_logic > grp_Sobel_fu_78_ap_start;
    sc_signal< sc_logic > grp_Sobel_fu_78_ap_ready;
    sc_signal< sc_logic > grp_Sobel_fu_78_ap_idle;
    sc_signal< sc_logic > grp_Sobel_fu_78_ap_continue;
    sc_signal< sc_logic > grp_Sobel_fu_78_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_sync_grp_Sobel_fu_78_ap_ready;
    sc_signal< sc_logic > ap_sync_grp_Sobel_fu_78_ap_done;
    sc_signal< bool > ap_block_state2_on_subcall_done;
    sc_signal< sc_logic > ap_sync_reg_grp_Sobel_fu_78_ap_ready;
    sc_signal< sc_logic > ap_sync_reg_grp_Sobel_fu_78_ap_done;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_fsm_state1;
    static const sc_lv<2> ap_ST_fsm_state2;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_block_state2_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_ap_sync_grp_Sobel_fu_78_ap_done();
    void thread_ap_sync_grp_Sobel_fu_78_ap_ready();
    void thread_grp_Sobel_fu_78_ap_continue();
    void thread_grp_Sobel_fu_78_ap_start();
    void thread_p_dstgx_data_V_address0();
    void thread_p_dstgx_data_V_ce0();
    void thread_p_dstgx_data_V_d0();
    void thread_p_dstgx_data_V_we0();
    void thread_p_dstgy_data_V_address0();
    void thread_p_dstgy_data_V_ce0();
    void thread_p_dstgy_data_V_d0();
    void thread_p_dstgy_data_V_we0();
    void thread_p_src_data_V_address0();
    void thread_p_src_data_V_ce0();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif