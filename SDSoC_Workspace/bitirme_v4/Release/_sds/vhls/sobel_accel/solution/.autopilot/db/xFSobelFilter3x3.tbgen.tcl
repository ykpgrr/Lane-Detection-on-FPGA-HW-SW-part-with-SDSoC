set moduleName xFSobelFilter3x3
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {xFSobelFilter3x3}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_src_mat_V_V int 8 regular {fifo 0 volatile }  }
	{ p_gradx_mat_V_V int 8 regular {fifo 1 volatile }  }
	{ p_grady_mat_V_V int 8 regular {fifo 1 volatile }  }
	{ p_src_mat_rows_read int 32 regular {fifo 0}  }
	{ p_src_mat_cols_read int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_src_mat_V_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_gradx_mat_V_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_grady_mat_V_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_src_mat_rows_read", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_cols_read", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_src_mat_V_V_dout sc_in sc_lv 8 signal 0 } 
	{ p_src_mat_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_src_mat_V_V_read sc_out sc_logic 1 signal 0 } 
	{ p_gradx_mat_V_V_din sc_out sc_lv 8 signal 1 } 
	{ p_gradx_mat_V_V_full_n sc_in sc_logic 1 signal 1 } 
	{ p_gradx_mat_V_V_write sc_out sc_logic 1 signal 1 } 
	{ p_grady_mat_V_V_din sc_out sc_lv 8 signal 2 } 
	{ p_grady_mat_V_V_full_n sc_in sc_logic 1 signal 2 } 
	{ p_grady_mat_V_V_write sc_out sc_logic 1 signal 2 } 
	{ p_src_mat_rows_read_dout sc_in sc_lv 32 signal 3 } 
	{ p_src_mat_rows_read_empty_n sc_in sc_logic 1 signal 3 } 
	{ p_src_mat_rows_read_read sc_out sc_logic 1 signal 3 } 
	{ p_src_mat_cols_read_dout sc_in sc_lv 32 signal 4 } 
	{ p_src_mat_cols_read_empty_n sc_in sc_logic 1 signal 4 } 
	{ p_src_mat_cols_read_read sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_src_mat_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_src_mat_V_V", "role": "dout" }} , 
 	{ "name": "p_src_mat_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_V_V", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_V_V", "role": "read" }} , 
 	{ "name": "p_gradx_mat_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_gradx_mat_V_V", "role": "din" }} , 
 	{ "name": "p_gradx_mat_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_gradx_mat_V_V", "role": "full_n" }} , 
 	{ "name": "p_gradx_mat_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_gradx_mat_V_V", "role": "write" }} , 
 	{ "name": "p_grady_mat_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_grady_mat_V_V", "role": "din" }} , 
 	{ "name": "p_grady_mat_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_grady_mat_V_V", "role": "full_n" }} , 
 	{ "name": "p_grady_mat_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_grady_mat_V_V", "role": "write" }} , 
 	{ "name": "p_src_mat_rows_read_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_rows_read", "role": "dout" }} , 
 	{ "name": "p_src_mat_rows_read_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows_read", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_rows_read_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows_read", "role": "read" }} , 
 	{ "name": "p_src_mat_cols_read_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_cols_read", "role": "dout" }} , 
 	{ "name": "p_src_mat_cols_read_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols_read", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_cols_read_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols_read", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "7", "8", "9", "10", "11"],
		"CDFG" : "xFSobelFilter3x3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "312163", "EstimateLatencyMax" : "312163",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "1",
		"Port" : [
			{"Name" : "p_src_mat_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_src_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_gradx_mat_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_gradx_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_grady_mat_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_grady_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_rows_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_read_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_read_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_0_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_1_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_1_0_0_s_fu_367", "Parent" : "0", "Child" : ["5", "6"],
		"CDFG" : "xFSobel3x3_1_0_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"InDataflowNetwork" : "0",
		"Port" : [
			{"Name" : "src_buf1_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf1_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf1_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf2_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf2_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf3_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf3_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf3_2_V_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_1_0_0_s_fu_367.grp_xFGradientX3x3_0_0_s_fu_72", "Parent" : "4",
		"CDFG" : "xFGradientX3x3_0_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"InDataflowNetwork" : "0",
		"Port" : [
			{"Name" : "t0_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "t2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "m0_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "m2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "b0_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "b2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_1_0_0_s_fu_367.grp_xFGradientY3x3_0_0_s_fu_88", "Parent" : "4",
		"CDFG" : "xFGradientY3x3_0_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"InDataflowNetwork" : "0",
		"Port" : [
			{"Name" : "t0_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "t1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "t2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "b0_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "b1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "b2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFGradientX3x3_0_0_s_fu_384", "Parent" : "0",
		"CDFG" : "xFGradientX3x3_0_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"InDataflowNetwork" : "0",
		"Port" : [
			{"Name" : "t0_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "t2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "m0_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "m2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "b0_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "b2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFGradientY3x3_0_0_s_fu_400", "Parent" : "0",
		"CDFG" : "xFGradientY3x3_0_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"InDataflowNetwork" : "0",
		"Port" : [
			{"Name" : "t0_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "t1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "t2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "b0_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "b1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "b2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sobel_accel_mux_3eOg_U33", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sobel_accel_mux_3eOg_U34", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sobel_accel_mux_3eOg_U35", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xFSobelFilter3x3 {
		p_src_mat_V_V {Type I LastRead 5 FirstWrite -1}
		p_gradx_mat_V_V {Type O LastRead -1 FirstWrite 9}
		p_grady_mat_V_V {Type O LastRead -1 FirstWrite 9}
		p_src_mat_rows_read {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols_read {Type I LastRead 0 FirstWrite -1}}
	xFSobel3x3_1_0_0_s {
		src_buf1_0_V_read {Type I LastRead 0 FirstWrite -1}
		src_buf1_1_V_read {Type I LastRead 0 FirstWrite -1}
		src_buf1_2_V_read {Type I LastRead 0 FirstWrite -1}
		src_buf2_0_V_read {Type I LastRead 0 FirstWrite -1}
		src_buf2_2_V_read {Type I LastRead 0 FirstWrite -1}
		src_buf3_0_V_read {Type I LastRead 0 FirstWrite -1}
		src_buf3_1_V_read {Type I LastRead 0 FirstWrite -1}
		src_buf3_2_V_read {Type I LastRead 0 FirstWrite -1}}
	xFGradientX3x3_0_0_s {
		t0_V {Type I LastRead 0 FirstWrite -1}
		t2_V {Type I LastRead 0 FirstWrite -1}
		m0_V {Type I LastRead 0 FirstWrite -1}
		m2_V {Type I LastRead 0 FirstWrite -1}
		b0_V {Type I LastRead 0 FirstWrite -1}
		b2_V {Type I LastRead 0 FirstWrite -1}}
	xFGradientY3x3_0_0_s {
		t0_V {Type I LastRead 0 FirstWrite -1}
		t1_V {Type I LastRead 0 FirstWrite -1}
		t2_V {Type I LastRead 0 FirstWrite -1}
		b0_V {Type I LastRead 0 FirstWrite -1}
		b1_V {Type I LastRead 0 FirstWrite -1}
		b2_V {Type I LastRead 0 FirstWrite -1}}
	xFGradientX3x3_0_0_s {
		t0_V {Type I LastRead 0 FirstWrite -1}
		t2_V {Type I LastRead 0 FirstWrite -1}
		m0_V {Type I LastRead 0 FirstWrite -1}
		m2_V {Type I LastRead 0 FirstWrite -1}
		b0_V {Type I LastRead 0 FirstWrite -1}
		b2_V {Type I LastRead 0 FirstWrite -1}}
	xFGradientY3x3_0_0_s {
		t0_V {Type I LastRead 0 FirstWrite -1}
		t1_V {Type I LastRead 0 FirstWrite -1}
		t2_V {Type I LastRead 0 FirstWrite -1}
		b0_V {Type I LastRead 0 FirstWrite -1}
		b1_V {Type I LastRead 0 FirstWrite -1}
		b2_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "312163", "Max" : "312163"}
	, {"Name" : "Interval", "Min" : "312163", "Max" : "312163"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	p_src_mat_V_V { ap_fifo {  { p_src_mat_V_V_dout fifo_data 0 8 }  { p_src_mat_V_V_empty_n fifo_status 0 1 }  { p_src_mat_V_V_read fifo_update 1 1 } } }
	p_gradx_mat_V_V { ap_fifo {  { p_gradx_mat_V_V_din fifo_data 1 8 }  { p_gradx_mat_V_V_full_n fifo_status 0 1 }  { p_gradx_mat_V_V_write fifo_update 1 1 } } }
	p_grady_mat_V_V { ap_fifo {  { p_grady_mat_V_V_din fifo_data 1 8 }  { p_grady_mat_V_V_full_n fifo_status 0 1 }  { p_grady_mat_V_V_write fifo_update 1 1 } } }
	p_src_mat_rows_read { ap_fifo {  { p_src_mat_rows_read_dout fifo_data 0 32 }  { p_src_mat_rows_read_empty_n fifo_status 0 1 }  { p_src_mat_rows_read_read fifo_update 1 1 } } }
	p_src_mat_cols_read { ap_fifo {  { p_src_mat_cols_read_dout fifo_data 0 32 }  { p_src_mat_cols_read_empty_n fifo_status 0 1 }  { p_src_mat_cols_read_read fifo_update 1 1 } } }
}
