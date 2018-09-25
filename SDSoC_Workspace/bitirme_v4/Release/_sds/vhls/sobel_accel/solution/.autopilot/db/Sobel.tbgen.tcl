set moduleName Sobel
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {Sobel}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_src_mat_rows_read int 32 regular  }
	{ p_src_mat_cols_read int 32 regular  }
	{ p_src_mat_data_V int 8 regular {array 307200 { 1 3 } 1 1 }  }
	{ p_dst_matx_rows_read int 32 regular  }
	{ p_dst_matx_cols_read int 32 regular  }
	{ p_dst_matx_data_V int 8 regular {array 307200 { 0 3 } 0 1 }  }
	{ p_dst_maty_cols_read int 32 regular  }
	{ p_dst_maty_data_V int 8 regular {array 307200 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_src_mat_rows_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_cols_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_data_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_dst_matx_rows_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_dst_matx_cols_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_dst_matx_data_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_dst_maty_cols_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_dst_maty_data_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 47
set portList { 
	{ p_src_mat_rows_read sc_in sc_lv 32 signal 0 } 
	{ p_src_mat_cols_read sc_in sc_lv 32 signal 1 } 
	{ p_src_mat_data_V_address0 sc_out sc_lv 19 signal 2 } 
	{ p_src_mat_data_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ p_src_mat_data_V_d0 sc_out sc_lv 8 signal 2 } 
	{ p_src_mat_data_V_q0 sc_in sc_lv 8 signal 2 } 
	{ p_src_mat_data_V_we0 sc_out sc_logic 1 signal 2 } 
	{ p_src_mat_data_V_address1 sc_out sc_lv 19 signal 2 } 
	{ p_src_mat_data_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ p_src_mat_data_V_d1 sc_out sc_lv 8 signal 2 } 
	{ p_src_mat_data_V_q1 sc_in sc_lv 8 signal 2 } 
	{ p_src_mat_data_V_we1 sc_out sc_logic 1 signal 2 } 
	{ p_dst_matx_rows_read sc_in sc_lv 32 signal 3 } 
	{ p_dst_matx_cols_read sc_in sc_lv 32 signal 4 } 
	{ p_dst_matx_data_V_address0 sc_out sc_lv 19 signal 5 } 
	{ p_dst_matx_data_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ p_dst_matx_data_V_d0 sc_out sc_lv 8 signal 5 } 
	{ p_dst_matx_data_V_q0 sc_in sc_lv 8 signal 5 } 
	{ p_dst_matx_data_V_we0 sc_out sc_logic 1 signal 5 } 
	{ p_dst_matx_data_V_address1 sc_out sc_lv 19 signal 5 } 
	{ p_dst_matx_data_V_ce1 sc_out sc_logic 1 signal 5 } 
	{ p_dst_matx_data_V_d1 sc_out sc_lv 8 signal 5 } 
	{ p_dst_matx_data_V_q1 sc_in sc_lv 8 signal 5 } 
	{ p_dst_matx_data_V_we1 sc_out sc_logic 1 signal 5 } 
	{ p_dst_maty_cols_read sc_in sc_lv 32 signal 6 } 
	{ p_dst_maty_data_V_address0 sc_out sc_lv 19 signal 7 } 
	{ p_dst_maty_data_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ p_dst_maty_data_V_d0 sc_out sc_lv 8 signal 7 } 
	{ p_dst_maty_data_V_q0 sc_in sc_lv 8 signal 7 } 
	{ p_dst_maty_data_V_we0 sc_out sc_logic 1 signal 7 } 
	{ p_dst_maty_data_V_address1 sc_out sc_lv 19 signal 7 } 
	{ p_dst_maty_data_V_ce1 sc_out sc_logic 1 signal 7 } 
	{ p_dst_maty_data_V_d1 sc_out sc_lv 8 signal 7 } 
	{ p_dst_maty_data_V_q1 sc_in sc_lv 8 signal 7 } 
	{ p_dst_maty_data_V_we1 sc_out sc_logic 1 signal 7 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ p_src_mat_rows_read_ap_vld sc_in sc_logic 1 invld 0 } 
	{ p_src_mat_cols_read_ap_vld sc_in sc_logic 1 invld 1 } 
	{ p_dst_matx_rows_read_ap_vld sc_in sc_logic 1 invld 3 } 
	{ p_dst_matx_cols_read_ap_vld sc_in sc_logic 1 invld 4 } 
	{ p_dst_maty_cols_read_ap_vld sc_in sc_logic 1 invld 6 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "p_src_mat_rows_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_rows_read", "role": "default" }} , 
 	{ "name": "p_src_mat_cols_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_cols_read", "role": "default" }} , 
 	{ "name": "p_src_mat_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "address0" }} , 
 	{ "name": "p_src_mat_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "ce0" }} , 
 	{ "name": "p_src_mat_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "d0" }} , 
 	{ "name": "p_src_mat_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "q0" }} , 
 	{ "name": "p_src_mat_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "we0" }} , 
 	{ "name": "p_src_mat_data_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "address1" }} , 
 	{ "name": "p_src_mat_data_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "ce1" }} , 
 	{ "name": "p_src_mat_data_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "d1" }} , 
 	{ "name": "p_src_mat_data_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "q1" }} , 
 	{ "name": "p_src_mat_data_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_data_V", "role": "we1" }} , 
 	{ "name": "p_dst_matx_rows_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_dst_matx_rows_read", "role": "default" }} , 
 	{ "name": "p_dst_matx_cols_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_dst_matx_cols_read", "role": "default" }} , 
 	{ "name": "p_dst_matx_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "p_dst_matx_data_V", "role": "address0" }} , 
 	{ "name": "p_dst_matx_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_matx_data_V", "role": "ce0" }} , 
 	{ "name": "p_dst_matx_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dst_matx_data_V", "role": "d0" }} , 
 	{ "name": "p_dst_matx_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dst_matx_data_V", "role": "q0" }} , 
 	{ "name": "p_dst_matx_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_matx_data_V", "role": "we0" }} , 
 	{ "name": "p_dst_matx_data_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "p_dst_matx_data_V", "role": "address1" }} , 
 	{ "name": "p_dst_matx_data_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_matx_data_V", "role": "ce1" }} , 
 	{ "name": "p_dst_matx_data_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dst_matx_data_V", "role": "d1" }} , 
 	{ "name": "p_dst_matx_data_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dst_matx_data_V", "role": "q1" }} , 
 	{ "name": "p_dst_matx_data_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_matx_data_V", "role": "we1" }} , 
 	{ "name": "p_dst_maty_cols_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_dst_maty_cols_read", "role": "default" }} , 
 	{ "name": "p_dst_maty_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "p_dst_maty_data_V", "role": "address0" }} , 
 	{ "name": "p_dst_maty_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_maty_data_V", "role": "ce0" }} , 
 	{ "name": "p_dst_maty_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dst_maty_data_V", "role": "d0" }} , 
 	{ "name": "p_dst_maty_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dst_maty_data_V", "role": "q0" }} , 
 	{ "name": "p_dst_maty_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_maty_data_V", "role": "we0" }} , 
 	{ "name": "p_dst_maty_data_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "p_dst_maty_data_V", "role": "address1" }} , 
 	{ "name": "p_dst_maty_data_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_maty_data_V", "role": "ce1" }} , 
 	{ "name": "p_dst_maty_data_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dst_maty_data_V", "role": "d1" }} , 
 	{ "name": "p_dst_maty_data_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dst_maty_data_V", "role": "q1" }} , 
 	{ "name": "p_dst_maty_data_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_maty_data_V", "role": "we1" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "p_src_mat_rows_read_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_src_mat_rows_read", "role": "ap_vld" }} , 
 	{ "name": "p_src_mat_cols_read_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_src_mat_cols_read", "role": "ap_vld" }} , 
 	{ "name": "p_dst_matx_rows_read_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_dst_matx_rows_read", "role": "ap_vld" }} , 
 	{ "name": "p_dst_matx_cols_read_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_dst_matx_cols_read", "role": "ap_vld" }} , 
 	{ "name": "p_dst_maty_cols_read_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_dst_maty_cols_read", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"],
		"CDFG" : "Sobel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "312165", "EstimateLatencyMax" : "312165",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Sobel_Loop_1_proc374_U0"}],
		"OutputProcess" : [
			{"ID" : "14", "Name" : "Sobel_Loop_2_proc38_U0"}],
		"Port" : [
			{"Name" : "p_src_mat_rows_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_src_mat_cols_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_src_mat_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Sobel_Loop_1_proc374_U0", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "p_dst_matx_rows_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_dst_matx_cols_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_dst_matx_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "Sobel_Loop_2_proc38_U0", "Port" : "p_dst_matx_data_V"}]},
			{"Name" : "p_dst_maty_cols_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_dst_maty_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "Sobel_Loop_2_proc38_U0", "Port" : "p_dst_maty_data_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Sobel_Loop_1_proc374_U0", "Parent" : "0",
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
			{"Name" : "p_src_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "15",
				"BlockSignal" : [
					{"Name" : "p_src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_matx_rows_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_dst_matx_cols_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_dst_maty_cols_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_src_mat_rows_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "16",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_read_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "17",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_read_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_matx_rows_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "18",
				"BlockSignal" : [
					{"Name" : "p_dst_matx_rows_read_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_matx_cols_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "19",
				"BlockSignal" : [
					{"Name" : "p_dst_matx_cols_read_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_maty_cols_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "20",
				"BlockSignal" : [
					{"Name" : "p_dst_maty_cols_read_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFSobelFilter3x3_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "9", "10", "11", "12", "13"],
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
		"StartSource" : "1",
		"StartFifo" : "start_for_xFSobelfYi_U",
		"Port" : [
			{"Name" : "p_src_mat_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "15",
				"BlockSignal" : [
					{"Name" : "p_src_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_gradx_mat_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "21",
				"BlockSignal" : [
					{"Name" : "p_gradx_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_grady_mat_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "22",
				"BlockSignal" : [
					{"Name" : "p_grady_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_rows_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "16",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_read_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "17",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_read_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSobelFilter3x3_U0.buf_0_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSobelFilter3x3_U0.buf_1_V_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSobelFilter3x3_U0.buf_2_V_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSobelFilter3x3_U0.grp_xFSobel3x3_1_0_0_s_fu_367", "Parent" : "2", "Child" : ["7", "8"],
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
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSobelFilter3x3_U0.grp_xFSobel3x3_1_0_0_s_fu_367.grp_xFGradientX3x3_0_0_s_fu_72", "Parent" : "6",
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSobelFilter3x3_U0.grp_xFSobel3x3_1_0_0_s_fu_367.grp_xFGradientY3x3_0_0_s_fu_88", "Parent" : "6",
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
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSobelFilter3x3_U0.grp_xFGradientX3x3_0_0_s_fu_384", "Parent" : "2",
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
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSobelFilter3x3_U0.grp_xFGradientY3x3_0_0_s_fu_400", "Parent" : "2",
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
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSobelFilter3x3_U0.sobel_accel_mux_3eOg_U33", "Parent" : "2"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSobelFilter3x3_U0.sobel_accel_mux_3eOg_U34", "Parent" : "2"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSobelFilter3x3_U0.sobel_accel_mux_3eOg_U35", "Parent" : "2"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Sobel_Loop_2_proc38_U0", "Parent" : "0",
		"CDFG" : "Sobel_Loop_2_proc38",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "308641",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "1",
		"StartSource" : "1",
		"StartFifo" : "start_for_Sobel_Lg8j_U",
		"Port" : [
			{"Name" : "p_dst_matx_rows_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "18",
				"BlockSignal" : [
					{"Name" : "p_dst_matx_rows_read_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_matx_cols_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "19",
				"BlockSignal" : [
					{"Name" : "p_dst_matx_cols_read_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dstx_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "21",
				"BlockSignal" : [
					{"Name" : "p_dstx_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_matx_data_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_dst_maty_cols_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "20",
				"BlockSignal" : [
					{"Name" : "p_dst_maty_cols_read_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dsty_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "22",
				"BlockSignal" : [
					{"Name" : "p_dsty_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_maty_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_src_V_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_src_mat_rows_read_c_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_src_mat_cols_read_c_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_dst_matx_rows_read_s_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_dst_matx_cols_read_s_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_dst_maty_cols_read_s_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_dstx_V_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_dsty_V_V_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_xFSobelfYi_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Sobel_Lg8j_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Sobel {
		p_src_mat_rows_read {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols_read {Type I LastRead 0 FirstWrite -1}
		p_src_mat_data_V {Type I LastRead 2 FirstWrite -1}
		p_dst_matx_rows_read {Type I LastRead 0 FirstWrite -1}
		p_dst_matx_cols_read {Type I LastRead 0 FirstWrite -1}
		p_dst_matx_data_V {Type O LastRead -1 FirstWrite 3}
		p_dst_maty_cols_read {Type I LastRead 0 FirstWrite -1}
		p_dst_maty_data_V {Type O LastRead -1 FirstWrite 3}}
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
		p_dst_maty_cols_read_out {Type O LastRead -1 FirstWrite 0}}
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
		b2_V {Type I LastRead 0 FirstWrite -1}}
	Sobel_Loop_2_proc38 {
		p_dst_matx_rows_read {Type I LastRead 0 FirstWrite -1}
		p_dst_matx_cols_read {Type I LastRead 0 FirstWrite -1}
		p_dstx_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst_matx_data_V {Type O LastRead -1 FirstWrite 3}
		p_dst_maty_cols_read {Type I LastRead 0 FirstWrite -1}
		p_dsty_V_V {Type I LastRead 3 FirstWrite -1}
		p_dst_maty_data_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "312165", "Max" : "312165"}
	, {"Name" : "Interval", "Min" : "312164", "Max" : "312164"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_src_mat_rows_read { ap_none {  { p_src_mat_rows_read in_data 0 32 }  { p_src_mat_rows_read_ap_vld in_vld 0 1 } } }
	p_src_mat_cols_read { ap_none {  { p_src_mat_cols_read in_data 0 32 }  { p_src_mat_cols_read_ap_vld in_vld 0 1 } } }
	p_src_mat_data_V { ap_memory {  { p_src_mat_data_V_address0 mem_address 1 19 }  { p_src_mat_data_V_ce0 mem_ce 1 1 }  { p_src_mat_data_V_d0 mem_din 1 8 }  { p_src_mat_data_V_q0 mem_dout 0 8 }  { p_src_mat_data_V_we0 mem_we 1 1 }  { p_src_mat_data_V_address1 mem_address 1 19 }  { p_src_mat_data_V_ce1 mem_ce 1 1 }  { p_src_mat_data_V_d1 mem_din 1 8 }  { p_src_mat_data_V_q1 mem_dout 0 8 }  { p_src_mat_data_V_we1 mem_we 1 1 } } }
	p_dst_matx_rows_read { ap_none {  { p_dst_matx_rows_read in_data 0 32 }  { p_dst_matx_rows_read_ap_vld in_vld 0 1 } } }
	p_dst_matx_cols_read { ap_none {  { p_dst_matx_cols_read in_data 0 32 }  { p_dst_matx_cols_read_ap_vld in_vld 0 1 } } }
	p_dst_matx_data_V { ap_memory {  { p_dst_matx_data_V_address0 mem_address 1 19 }  { p_dst_matx_data_V_ce0 mem_ce 1 1 }  { p_dst_matx_data_V_d0 mem_din 1 8 }  { p_dst_matx_data_V_q0 mem_dout 0 8 }  { p_dst_matx_data_V_we0 mem_we 1 1 }  { p_dst_matx_data_V_address1 mem_address 1 19 }  { p_dst_matx_data_V_ce1 mem_ce 1 1 }  { p_dst_matx_data_V_d1 mem_din 1 8 }  { p_dst_matx_data_V_q1 mem_dout 0 8 }  { p_dst_matx_data_V_we1 mem_we 1 1 } } }
	p_dst_maty_cols_read { ap_none {  { p_dst_maty_cols_read in_data 0 32 }  { p_dst_maty_cols_read_ap_vld in_vld 0 1 } } }
	p_dst_maty_data_V { ap_memory {  { p_dst_maty_data_V_address0 mem_address 1 19 }  { p_dst_maty_data_V_ce0 mem_ce 1 1 }  { p_dst_maty_data_V_d0 mem_din 1 8 }  { p_dst_maty_data_V_q0 mem_dout 0 8 }  { p_dst_maty_data_V_we0 mem_we 1 1 }  { p_dst_maty_data_V_address1 mem_address 1 19 }  { p_dst_maty_data_V_ce1 mem_ce 1 1 }  { p_dst_maty_data_V_d1 mem_din 1 8 }  { p_dst_maty_data_V_q1 mem_dout 0 8 }  { p_dst_maty_data_V_we1 mem_we 1 1 } } }
}
