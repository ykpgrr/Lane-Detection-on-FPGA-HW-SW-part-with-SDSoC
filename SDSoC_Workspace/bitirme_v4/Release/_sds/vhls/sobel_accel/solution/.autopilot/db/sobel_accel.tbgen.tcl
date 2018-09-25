set C_TypeInfoList {{ 
"sobel_accel" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"_src": [[], {"reference": "0"}] }, {"_dstgx": [[], {"reference": "0"}] }, {"_dstgy": [[], {"reference": "0"}] }],[],""], 
"0": [ "Mat<0, 480, 640, 1>", {"struct": [[],[{"T":[[], {"scalar": { "int": 0}}]},{"ROWS":[[], {"scalar": { "int": 480}}]},{"COLS":[[], {"scalar": { "int": 640}}]},{"NPC":[[], {"scalar": { "int": 1}}]}],[{ "allocatedFlag": [[],  {"scalar": "unsigned char"}]},{ "rows": [[],  {"scalar": "int"}]},{ "cols": [[],  {"scalar": "int"}]},{ "size": [[],  {"scalar": "int"}]},{ "data": [[],  {"array": ["1", [307200]]}]}],"2"]}], 
"1": [ "name", {"typedef": [[[],"3"],"4"]}], 
"3": [ "ap_uint<8>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 8}}]],""]}}], 
"4": [ "DataType<XF_8UC1, XF_NPPC1>", {"struct": [[],[{"T":[[], {"scalar": { "int": 0}}]},{"M":[[], {"scalar": { "int": 1}}]}],[],""]}],
"2": ["xf", ""]
}}
set moduleName sobel_accel
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {sobel_accel}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_src_allocatedFlag int 8 unused {pointer 0}  }
	{ p_src_rows int 32 regular {pointer 0}  }
	{ p_src_cols int 32 regular {pointer 0}  }
	{ p_src_size int 32 unused {pointer 0}  }
	{ p_src_data_V int 8 regular {array 307200 { 1 3 } 1 1 }  }
	{ p_dstgx_allocatedFlag int 8 unused {pointer 0}  }
	{ p_dstgx_rows int 32 regular {pointer 0}  }
	{ p_dstgx_cols int 32 regular {pointer 0}  }
	{ p_dstgx_size int 32 unused {pointer 0}  }
	{ p_dstgx_data_V int 8 regular {array 307200 { 0 3 } 0 1 }  }
	{ p_dstgy_allocatedFlag int 8 unused {pointer 0}  }
	{ p_dstgy_rows int 32 unused {pointer 0}  }
	{ p_dstgy_cols int 32 regular {pointer 0}  }
	{ p_dstgy_size int 32 unused {pointer 0}  }
	{ p_dstgy_data_V int 8 regular {array 307200 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_src_allocatedFlag", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "_src.allocatedFlag","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "p_src_rows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_src.rows","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "p_src_cols", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_src.cols","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "p_src_size", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_src.size","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "p_src_data_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "_src.data.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 307199,"step" : 1}]}]}]} , 
 	{ "Name" : "p_dstgx_allocatedFlag", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "_dstgx.allocatedFlag","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "p_dstgx_rows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_dstgx.rows","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "p_dstgx_cols", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_dstgx.cols","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "p_dstgx_size", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_dstgx.size","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "p_dstgx_data_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "_dstgx.data.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 307199,"step" : 1}]}]}]} , 
 	{ "Name" : "p_dstgy_allocatedFlag", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "_dstgy.allocatedFlag","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "p_dstgy_rows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_dstgy.rows","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "p_dstgy_cols", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_dstgy.cols","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "p_dstgy_size", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "_dstgy.size","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "p_dstgy_data_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "_dstgy.data.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 307199,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_src_allocatedFlag sc_in sc_lv 8 signal 0 } 
	{ p_src_rows sc_in sc_lv 32 signal 1 } 
	{ p_src_cols sc_in sc_lv 32 signal 2 } 
	{ p_src_size sc_in sc_lv 32 signal 3 } 
	{ p_src_data_V_address0 sc_out sc_lv 19 signal 4 } 
	{ p_src_data_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ p_src_data_V_q0 sc_in sc_lv 8 signal 4 } 
	{ p_dstgx_allocatedFlag sc_in sc_lv 8 signal 5 } 
	{ p_dstgx_rows sc_in sc_lv 32 signal 6 } 
	{ p_dstgx_cols sc_in sc_lv 32 signal 7 } 
	{ p_dstgx_size sc_in sc_lv 32 signal 8 } 
	{ p_dstgx_data_V_address0 sc_out sc_lv 19 signal 9 } 
	{ p_dstgx_data_V_ce0 sc_out sc_logic 1 signal 9 } 
	{ p_dstgx_data_V_we0 sc_out sc_logic 1 signal 9 } 
	{ p_dstgx_data_V_d0 sc_out sc_lv 8 signal 9 } 
	{ p_dstgy_allocatedFlag sc_in sc_lv 8 signal 10 } 
	{ p_dstgy_rows sc_in sc_lv 32 signal 11 } 
	{ p_dstgy_cols sc_in sc_lv 32 signal 12 } 
	{ p_dstgy_size sc_in sc_lv 32 signal 13 } 
	{ p_dstgy_data_V_address0 sc_out sc_lv 19 signal 14 } 
	{ p_dstgy_data_V_ce0 sc_out sc_logic 1 signal 14 } 
	{ p_dstgy_data_V_we0 sc_out sc_logic 1 signal 14 } 
	{ p_dstgy_data_V_d0 sc_out sc_lv 8 signal 14 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_src_allocatedFlag", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_src_allocatedFlag", "role": "default" }} , 
 	{ "name": "p_src_rows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_rows", "role": "default" }} , 
 	{ "name": "p_src_cols", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_cols", "role": "default" }} , 
 	{ "name": "p_src_size", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_size", "role": "default" }} , 
 	{ "name": "p_src_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "p_src_data_V", "role": "address0" }} , 
 	{ "name": "p_src_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_data_V", "role": "ce0" }} , 
 	{ "name": "p_src_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_src_data_V", "role": "q0" }} , 
 	{ "name": "p_dstgx_allocatedFlag", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dstgx_allocatedFlag", "role": "default" }} , 
 	{ "name": "p_dstgx_rows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_dstgx_rows", "role": "default" }} , 
 	{ "name": "p_dstgx_cols", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_dstgx_cols", "role": "default" }} , 
 	{ "name": "p_dstgx_size", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_dstgx_size", "role": "default" }} , 
 	{ "name": "p_dstgx_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "p_dstgx_data_V", "role": "address0" }} , 
 	{ "name": "p_dstgx_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dstgx_data_V", "role": "ce0" }} , 
 	{ "name": "p_dstgx_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dstgx_data_V", "role": "we0" }} , 
 	{ "name": "p_dstgx_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dstgx_data_V", "role": "d0" }} , 
 	{ "name": "p_dstgy_allocatedFlag", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dstgy_allocatedFlag", "role": "default" }} , 
 	{ "name": "p_dstgy_rows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_dstgy_rows", "role": "default" }} , 
 	{ "name": "p_dstgy_cols", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_dstgy_cols", "role": "default" }} , 
 	{ "name": "p_dstgy_size", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_dstgy_size", "role": "default" }} , 
 	{ "name": "p_dstgy_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "p_dstgy_data_V", "role": "address0" }} , 
 	{ "name": "p_dstgy_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dstgy_data_V", "role": "ce0" }} , 
 	{ "name": "p_dstgy_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dstgy_data_V", "role": "we0" }} , 
 	{ "name": "p_dstgy_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dstgy_data_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sobel_accel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "312166", "EstimateLatencyMax" : "312166",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Sobel_fu_78"}],
		"Port" : [
			{"Name" : "p_src_allocatedFlag", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_src_rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_src_cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_src_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_src_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Sobel_fu_78", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "p_dstgx_allocatedFlag", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_dstgx_rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_dstgx_cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_dstgx_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_dstgx_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Sobel_fu_78", "Port" : "p_dst_matx_data_V"}]},
			{"Name" : "p_dstgy_allocatedFlag", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_dstgy_rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_dstgy_cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_dstgy_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_dstgy_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Sobel_fu_78", "Port" : "p_dst_maty_data_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Sobel_fu_78", "Parent" : "0", "Child" : ["2", "3", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"],
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
			{"ID" : "2", "Name" : "Sobel_Loop_1_proc374_U0"}],
		"OutputProcess" : [
			{"ID" : "15", "Name" : "Sobel_Loop_2_proc38_U0"}],
		"Port" : [
			{"Name" : "p_src_mat_rows_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_src_mat_cols_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_src_mat_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Sobel_Loop_1_proc374_U0", "Port" : "p_src_mat_data_V"}]},
			{"Name" : "p_dst_matx_rows_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_dst_matx_cols_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_dst_matx_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "Sobel_Loop_2_proc38_U0", "Port" : "p_dst_matx_data_V"}]},
			{"Name" : "p_dst_maty_cols_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_dst_maty_data_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "Sobel_Loop_2_proc38_U0", "Port" : "p_dst_maty_data_V"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Sobel_fu_78.Sobel_Loop_1_proc374_U0", "Parent" : "1",
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
			{"Name" : "p_src_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "16",
				"BlockSignal" : [
					{"Name" : "p_src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_matx_rows_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_dst_matx_cols_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_dst_maty_cols_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_src_mat_rows_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "17",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_read_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "18",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_read_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_matx_rows_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "19",
				"BlockSignal" : [
					{"Name" : "p_dst_matx_rows_read_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_matx_cols_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "20",
				"BlockSignal" : [
					{"Name" : "p_dst_matx_cols_read_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_maty_cols_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "21",
				"BlockSignal" : [
					{"Name" : "p_dst_maty_cols_read_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Sobel_fu_78.xFSobelFilter3x3_U0", "Parent" : "1", "Child" : ["4", "5", "6", "7", "10", "11", "12", "13", "14"],
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
		"StartSource" : "2",
		"StartFifo" : "start_for_xFSobelfYi_U",
		"Port" : [
			{"Name" : "p_src_mat_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "16",
				"BlockSignal" : [
					{"Name" : "p_src_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_gradx_mat_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "22",
				"BlockSignal" : [
					{"Name" : "p_gradx_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_grady_mat_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "23",
				"BlockSignal" : [
					{"Name" : "p_grady_mat_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_rows_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "17",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_read_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "18",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_read_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Sobel_fu_78.xFSobelFilter3x3_U0.buf_0_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Sobel_fu_78.xFSobelFilter3x3_U0.buf_1_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Sobel_fu_78.xFSobelFilter3x3_U0.buf_2_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Sobel_fu_78.xFSobelFilter3x3_U0.grp_xFSobel3x3_1_0_0_s_fu_367", "Parent" : "3", "Child" : ["8", "9"],
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
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Sobel_fu_78.xFSobelFilter3x3_U0.grp_xFSobel3x3_1_0_0_s_fu_367.grp_xFGradientX3x3_0_0_s_fu_72", "Parent" : "7",
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
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Sobel_fu_78.xFSobelFilter3x3_U0.grp_xFSobel3x3_1_0_0_s_fu_367.grp_xFGradientY3x3_0_0_s_fu_88", "Parent" : "7",
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
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Sobel_fu_78.xFSobelFilter3x3_U0.grp_xFGradientX3x3_0_0_s_fu_384", "Parent" : "3",
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
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Sobel_fu_78.xFSobelFilter3x3_U0.grp_xFGradientY3x3_0_0_s_fu_400", "Parent" : "3",
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
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Sobel_fu_78.xFSobelFilter3x3_U0.sobel_accel_mux_3eOg_U33", "Parent" : "3"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Sobel_fu_78.xFSobelFilter3x3_U0.sobel_accel_mux_3eOg_U34", "Parent" : "3"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Sobel_fu_78.xFSobelFilter3x3_U0.sobel_accel_mux_3eOg_U35", "Parent" : "3"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Sobel_fu_78.Sobel_Loop_2_proc38_U0", "Parent" : "1",
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
		"StartSource" : "2",
		"StartFifo" : "start_for_Sobel_Lg8j_U",
		"Port" : [
			{"Name" : "p_dst_matx_rows_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "19",
				"BlockSignal" : [
					{"Name" : "p_dst_matx_rows_read_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_matx_cols_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "20",
				"BlockSignal" : [
					{"Name" : "p_dst_matx_cols_read_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dstx_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "22",
				"BlockSignal" : [
					{"Name" : "p_dstx_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_matx_data_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_dst_maty_cols_read", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "21",
				"BlockSignal" : [
					{"Name" : "p_dst_maty_cols_read_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dsty_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "23",
				"BlockSignal" : [
					{"Name" : "p_dsty_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_maty_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Sobel_fu_78.p_src_V_V_U", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Sobel_fu_78.p_src_mat_rows_read_c_U", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Sobel_fu_78.p_src_mat_cols_read_c_U", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Sobel_fu_78.p_dst_matx_rows_read_s_U", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Sobel_fu_78.p_dst_matx_cols_read_s_U", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Sobel_fu_78.p_dst_maty_cols_read_s_U", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Sobel_fu_78.p_dstx_V_V_U", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Sobel_fu_78.p_dsty_V_V_U", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Sobel_fu_78.start_for_xFSobelfYi_U", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Sobel_fu_78.start_for_Sobel_Lg8j_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	sobel_accel {
		p_src_allocatedFlag {Type I LastRead -1 FirstWrite -1}
		p_src_rows {Type I LastRead 0 FirstWrite -1}
		p_src_cols {Type I LastRead 0 FirstWrite -1}
		p_src_size {Type I LastRead -1 FirstWrite -1}
		p_src_data_V {Type I LastRead 2 FirstWrite -1}
		p_dstgx_allocatedFlag {Type I LastRead -1 FirstWrite -1}
		p_dstgx_rows {Type I LastRead 0 FirstWrite -1}
		p_dstgx_cols {Type I LastRead 0 FirstWrite -1}
		p_dstgx_size {Type I LastRead -1 FirstWrite -1}
		p_dstgx_data_V {Type O LastRead -1 FirstWrite 3}
		p_dstgy_allocatedFlag {Type I LastRead -1 FirstWrite -1}
		p_dstgy_rows {Type I LastRead -1 FirstWrite -1}
		p_dstgy_cols {Type I LastRead 0 FirstWrite -1}
		p_dstgy_size {Type I LastRead -1 FirstWrite -1}
		p_dstgy_data_V {Type O LastRead -1 FirstWrite 3}}
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
	{"Name" : "Latency", "Min" : "312166", "Max" : "312166"}
	, {"Name" : "Interval", "Min" : "312167", "Max" : "312167"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_src_allocatedFlag { ap_none {  { p_src_allocatedFlag in_data 0 8 } } }
	p_src_rows { ap_none {  { p_src_rows in_data 0 32 } } }
	p_src_cols { ap_none {  { p_src_cols in_data 0 32 } } }
	p_src_size { ap_none {  { p_src_size in_data 0 32 } } }
	p_src_data_V { ap_memory {  { p_src_data_V_address0 mem_address 1 19 }  { p_src_data_V_ce0 mem_ce 1 1 }  { p_src_data_V_q0 mem_dout 0 8 } } }
	p_dstgx_allocatedFlag { ap_none {  { p_dstgx_allocatedFlag in_data 0 8 } } }
	p_dstgx_rows { ap_none {  { p_dstgx_rows in_data 0 32 } } }
	p_dstgx_cols { ap_none {  { p_dstgx_cols in_data 0 32 } } }
	p_dstgx_size { ap_none {  { p_dstgx_size in_data 0 32 } } }
	p_dstgx_data_V { ap_memory {  { p_dstgx_data_V_address0 mem_address 1 19 }  { p_dstgx_data_V_ce0 mem_ce 1 1 }  { p_dstgx_data_V_we0 mem_we 1 1 }  { p_dstgx_data_V_d0 mem_din 1 8 } } }
	p_dstgy_allocatedFlag { ap_none {  { p_dstgy_allocatedFlag in_data 0 8 } } }
	p_dstgy_rows { ap_none {  { p_dstgy_rows in_data 0 32 } } }
	p_dstgy_cols { ap_none {  { p_dstgy_cols in_data 0 32 } } }
	p_dstgy_size { ap_none {  { p_dstgy_size in_data 0 32 } } }
	p_dstgy_data_V { ap_memory {  { p_dstgy_data_V_address0 mem_address 1 19 }  { p_dstgy_data_V_ce0 mem_ce 1 1 }  { p_dstgy_data_V_we0 mem_we 1 1 }  { p_dstgy_data_V_d0 mem_din 1 8 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
