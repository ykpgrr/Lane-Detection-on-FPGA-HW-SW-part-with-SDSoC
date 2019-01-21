set moduleName Sobel_Loop_1_proc374
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {Sobel_Loop_1_proc374}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_src_mat_rows_read int 32 regular  }
	{ p_src_mat_cols_read int 32 regular  }
	{ p_src_mat_data_V int 8 regular {array 307200 { 1 3 } 1 1 }  }
	{ p_src_V_V int 8 regular {fifo 1 volatile }  }
	{ p_dst_matx_rows_read int 32 regular  }
	{ p_dst_matx_cols_read int 32 regular  }
	{ p_dst_maty_cols_read int 32 regular  }
	{ p_src_mat_rows_read_out int 32 regular {fifo 1}  }
	{ p_src_mat_cols_read_out int 32 regular {fifo 1}  }
	{ p_dst_matx_rows_read_out int 32 regular {fifo 1}  }
	{ p_dst_matx_cols_read_out int 32 regular {fifo 1}  }
	{ p_dst_maty_cols_read_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_src_mat_rows_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_cols_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_data_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_V_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_dst_matx_rows_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_dst_matx_cols_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_dst_maty_cols_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_rows_read_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_src_mat_cols_read_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_dst_matx_rows_read_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_dst_matx_cols_read_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_dst_maty_cols_read_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ p_src_mat_rows_read sc_in sc_lv 32 signal 0 } 
	{ p_src_mat_cols_read sc_in sc_lv 32 signal 1 } 
	{ p_src_mat_data_V_address0 sc_out sc_lv 19 signal 2 } 
	{ p_src_mat_data_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ p_src_mat_data_V_q0 sc_in sc_lv 8 signal 2 } 
	{ p_src_V_V_din sc_out sc_lv 8 signal 3 } 
	{ p_src_V_V_full_n sc_in sc_logic 1 signal 3 } 
	{ p_src_V_V_write sc_out sc_logic 1 signal 3 } 
	{ p_dst_matx_rows_read sc_in sc_lv 32 signal 4 } 
	{ p_dst_matx_cols_read sc_in sc_lv 32 signal 5 } 
	{ p_dst_maty_cols_read sc_in sc_lv 32 signal 6 } 
	{ p_src_mat_rows_read_out_din sc_out sc_lv 32 signal 7 } 
	{ p_src_mat_rows_read_out_full_n sc_in sc_logic 1 signal 7 } 
	{ p_src_mat_rows_read_out_write sc_out sc_logic 1 signal 7 } 
	{ p_src_mat_cols_read_out_din sc_out sc_lv 32 signal 8 } 
	{ p_src_mat_cols_read_out_full_n sc_in sc_logic 1 signal 8 } 
	{ p_src_mat_cols_read_out_write sc_out sc_logic 1 signal 8 } 
	{ p_dst_matx_rows_read_out_din sc_out sc_lv 32 signal 9 } 
	{ p_dst_matx_rows_read_out_full_n sc_in sc_logic 1 signal 9 } 
	{ p_dst_matx_rows_read_out_write sc_out sc_logic 1 signal 9 } 
	{ p_dst_matx_cols_read_out_din sc_out sc_lv 32 signal 10 } 
	{ p_dst_matx_cols_read_out_full_n sc_in sc_logic 1 signal 10 } 
	{ p_dst_matx_cols_read_out_write sc_out sc_logic 1 signal 10 } 
	{ p_dst_maty_cols_read_out_din sc_out sc_lv 32 signal 11 } 
	{ p_dst_maty_cols_read_out_full_n sc_in sc_logic 1 signal 11 } 
	{ p_dst_maty_cols_read_out_write sc_out sc_logic 1 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "p_src_mat_rows_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_rows_read", "role": "default" }} , 
 	{ "name": "p_src_mat_cols_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_cols_read", "role": "default" }} , 
 	{ "name": "p_src_mat_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "address0" }} , 
 	{ "name": "p_src_mat_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "ce0" }} , 
 	{ "name": "p_src_mat_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "q0" }} , 
 	{ "name": "p_src_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_src_V_V", "role": "din" }} , 
 	{ "name": "p_src_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_V_V", "role": "full_n" }} , 
 	{ "name": "p_src_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_V_V", "role": "write" }} , 
 	{ "name": "p_dst_matx_rows_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_dst_matx_rows_read", "role": "default" }} , 
 	{ "name": "p_dst_matx_cols_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_dst_matx_cols_read", "role": "default" }} , 
 	{ "name": "p_dst_maty_cols_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_dst_maty_cols_read", "role": "default" }} , 
 	{ "name": "p_src_mat_rows_read_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_rows_read_out", "role": "din" }} , 
 	{ "name": "p_src_mat_rows_read_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows_read_out", "role": "full_n" }} , 
 	{ "name": "p_src_mat_rows_read_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows_read_out", "role": "write" }} , 
 	{ "name": "p_src_mat_cols_read_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_cols_read_out", "role": "din" }} , 
 	{ "name": "p_src_mat_cols_read_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols_read_out", "role": "full_n" }} , 
 	{ "name": "p_src_mat_cols_read_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols_read_out", "role": "write" }} , 
 	{ "name": "p_dst_matx_rows_read_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_dst_matx_rows_read_out", "role": "din" }} , 
 	{ "name": "p_dst_matx_rows_read_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_matx_rows_read_out", "role": "full_n" }} , 
 	{ "name": "p_dst_matx_rows_read_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_matx_rows_read_out", "role": "write" }} , 
 	{ "name": "p_dst_matx_cols_read_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_dst_matx_cols_read_out", "role": "din" }} , 
 	{ "name": "p_dst_matx_cols_read_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_matx_cols_read_out", "role": "full_n" }} , 
 	{ "name": "p_dst_matx_cols_read_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_matx_cols_read_out", "role": "write" }} , 
 	{ "name": "p_dst_maty_cols_read_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_dst_maty_cols_read_out", "role": "din" }} , 
 	{ "name": "p_dst_maty_cols_read_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_maty_cols_read_out", "role": "full_n" }} , 
 	{ "name": "p_dst_maty_cols_read_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_maty_cols_read_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Sobel_Loop_1_proc374",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "308641",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "1",
		"Port" : [
			{"Name" : "p_src_mat_rows_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_src_mat_cols_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_src_mat_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_src_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_matx_rows_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_dst_matx_cols_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_dst_maty_cols_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_src_mat_rows_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_read_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_read_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_matx_rows_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_dst_matx_rows_read_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_matx_cols_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_dst_matx_cols_read_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_maty_cols_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_dst_maty_cols_read_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	Sobel_Loop_1_proc374 {
		p_src_mat_rows_read {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols_read {Type I LastRead 0 FirstWrite -1}
		p_src_mat_data_V {Type I LastRead 2 FirstWrite -1}
		p_src_V_V {Type O LastRead -1 FirstWrite 3}
		p_dst_matx_rows_read {Type I LastRead 0 FirstWrite -1}
		p_dst_matx_cols_read {Type I LastRead 0 FirstWrite -1}
		p_dst_maty_cols_read {Type I LastRead 0 FirstWrite -1}
		p_src_mat_rows_read_out {Type O LastRead -1 FirstWrite 0}
		p_src_mat_cols_read_out {Type O LastRead -1 FirstWrite 0}
		p_dst_matx_rows_read_out {Type O LastRead -1 FirstWrite 0}
		p_dst_matx_cols_read_out {Type O LastRead -1 FirstWrite 0}
		p_dst_maty_cols_read_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "308641"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "308641"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_src_mat_rows_read { ap_none {  { p_src_mat_rows_read in_data 0 32 } } }
	p_src_mat_cols_read { ap_none {  { p_src_mat_cols_read in_data 0 32 } } }
	p_src_mat_data_V { ap_memory {  { p_src_mat_data_V_address0 mem_address 1 19 }  { p_src_mat_data_V_ce0 mem_ce 1 1 }  { p_src_mat_data_V_q0 mem_dout 0 8 } } }
	p_src_V_V { ap_fifo {  { p_src_V_V_din fifo_data 1 8 }  { p_src_V_V_full_n fifo_status 0 1 }  { p_src_V_V_write fifo_update 1 1 } } }
	p_dst_matx_rows_read { ap_none {  { p_dst_matx_rows_read in_data 0 32 } } }
	p_dst_matx_cols_read { ap_none {  { p_dst_matx_cols_read in_data 0 32 } } }
	p_dst_maty_cols_read { ap_none {  { p_dst_maty_cols_read in_data 0 32 } } }
	p_src_mat_rows_read_out { ap_fifo {  { p_src_mat_rows_read_out_din fifo_data 1 32 }  { p_src_mat_rows_read_out_full_n fifo_status 0 1 }  { p_src_mat_rows_read_out_write fifo_update 1 1 } } }
	p_src_mat_cols_read_out { ap_fifo {  { p_src_mat_cols_read_out_din fifo_data 1 32 }  { p_src_mat_cols_read_out_full_n fifo_status 0 1 }  { p_src_mat_cols_read_out_write fifo_update 1 1 } } }
	p_dst_matx_rows_read_out { ap_fifo {  { p_dst_matx_rows_read_out_din fifo_data 1 32 }  { p_dst_matx_rows_read_out_full_n fifo_status 0 1 }  { p_dst_matx_rows_read_out_write fifo_update 1 1 } } }
	p_dst_matx_cols_read_out { ap_fifo {  { p_dst_matx_cols_read_out_din fifo_data 1 32 }  { p_dst_matx_cols_read_out_full_n fifo_status 0 1 }  { p_dst_matx_cols_read_out_write fifo_update 1 1 } } }
	p_dst_maty_cols_read_out { ap_fifo {  { p_dst_maty_cols_read_out_din fifo_data 1 32 }  { p_dst_maty_cols_read_out_full_n fifo_status 0 1 }  { p_dst_maty_cols_read_out_write fifo_update 1 1 } } }
}
