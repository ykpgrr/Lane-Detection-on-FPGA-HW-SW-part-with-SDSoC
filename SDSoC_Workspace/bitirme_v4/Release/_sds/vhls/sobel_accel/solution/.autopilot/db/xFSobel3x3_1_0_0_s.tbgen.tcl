set moduleName xFSobel3x3_1_0_0_s
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 1
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {xFSobel3x3<1, 0, 0>}
set C_modelType { int 16 }
set C_modelArgList {
	{ src_buf1_0_V_read int 8 regular  }
	{ src_buf1_1_V_read int 8 regular  }
	{ src_buf1_2_V_read int 8 regular  }
	{ src_buf2_0_V_read int 8 regular  }
	{ src_buf2_2_V_read int 8 regular  }
	{ src_buf3_0_V_read int 8 regular  }
	{ src_buf3_1_V_read int 8 regular  }
	{ src_buf3_2_V_read int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "src_buf1_0_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf1_1_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf1_2_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf2_0_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf2_2_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf3_0_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf3_1_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf3_2_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 16} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ src_buf1_0_V_read sc_in sc_lv 8 signal 0 } 
	{ src_buf1_1_V_read sc_in sc_lv 8 signal 1 } 
	{ src_buf1_2_V_read sc_in sc_lv 8 signal 2 } 
	{ src_buf2_0_V_read sc_in sc_lv 8 signal 3 } 
	{ src_buf2_2_V_read sc_in sc_lv 8 signal 4 } 
	{ src_buf3_0_V_read sc_in sc_lv 8 signal 5 } 
	{ src_buf3_1_V_read sc_in sc_lv 8 signal 6 } 
	{ src_buf3_2_V_read sc_in sc_lv 8 signal 7 } 
	{ ap_return_0 sc_out sc_lv 8 signal -1 } 
	{ ap_return_1 sc_out sc_lv 8 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "src_buf1_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf1_0_V_read", "role": "default" }} , 
 	{ "name": "src_buf1_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf1_1_V_read", "role": "default" }} , 
 	{ "name": "src_buf1_2_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf1_2_V_read", "role": "default" }} , 
 	{ "name": "src_buf2_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf2_0_V_read", "role": "default" }} , 
 	{ "name": "src_buf2_2_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf2_2_V_read", "role": "default" }} , 
 	{ "name": "src_buf3_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf3_0_V_read", "role": "default" }} , 
 	{ "name": "src_buf3_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf3_1_V_read", "role": "default" }} , 
 	{ "name": "src_buf3_2_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf3_2_V_read", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFGradientX3x3_0_0_s_fu_72", "Parent" : "0",
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFGradientY3x3_0_0_s_fu_88", "Parent" : "0",
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
			{"Name" : "b2_V", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
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
		b2_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	src_buf1_0_V_read { ap_none {  { src_buf1_0_V_read in_data 0 8 } } }
	src_buf1_1_V_read { ap_none {  { src_buf1_1_V_read in_data 0 8 } } }
	src_buf1_2_V_read { ap_none {  { src_buf1_2_V_read in_data 0 8 } } }
	src_buf2_0_V_read { ap_none {  { src_buf2_0_V_read in_data 0 8 } } }
	src_buf2_2_V_read { ap_none {  { src_buf2_2_V_read in_data 0 8 } } }
	src_buf3_0_V_read { ap_none {  { src_buf3_0_V_read in_data 0 8 } } }
	src_buf3_1_V_read { ap_none {  { src_buf3_1_V_read in_data 0 8 } } }
	src_buf3_2_V_read { ap_none {  { src_buf3_2_V_read in_data 0 8 } } }
}
