; ModuleID = 'C:/Users/yakup/workspace/bitirme_v4/src/TimeAnalyze.cpp'
source_filename = "C:/Users/yakup/workspace/bitirme_v4/src/TimeAnalyze.cpp"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7--linux-gnueabihf"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i32, i32, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i32 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i32, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type { i32 (...)**, i32 }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet", i32*, i8, [3 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [2 x i8] }>
%"class.std::num_put" = type { %"class.std::locale::facet" }
%"class.std::num_get" = type { %"class.std::locale::facet" }
%class.TimeAnalyze = type <{ i32, i32, i32, i32, i32, i32, %"class.std::__cxx11::basic_string", i8, [3 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", i32, %union.anon }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%union.anon = type { i32, [12 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 4
@.str = private unnamed_addr constant [20 x i8] c"TIME ANALYZE NAME: \00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Number of Frame: \00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Maximum Frame Duration (s): \00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"\0AMinumum Frame Duration (s): \00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"\0AAverage Frame Duration (s): \00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"\0ATOTAL TIME (s): \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"------\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_TimeAnalyze.cpp, i8* null }]

@_ZN11TimeAnalyzeC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb = alias %class.TimeAnalyze* (%class.TimeAnalyze*, %"class.std::__cxx11::basic_string"*, i1, i1), %class.TimeAnalyze* (%class.TimeAnalyze*, %"class.std::__cxx11::basic_string"*, i1, i1)* @_ZN11TimeAnalyzeC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb

define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !910 {
  %1 = call %"class.std::ios_base::Init"* @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit), !dbg !911
  %2 = call i32 @__cxa_atexit(void (i8*)* bitcast (%"class.std::ios_base::Init"* (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3, !dbg !912
  ret void, !dbg !911
}

declare !xidane.fname !914 !xidane.function_declaration_type !915 !xidane.function_declaration_filename !916 %"class.std::ios_base::Init"* @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* returned) unnamed_addr #1

; Function Attrs: nounwind
declare !xidane.fname !917 !xidane.function_declaration_type !915 !xidane.function_declaration_filename !916 %"class.std::ios_base::Init"* @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* returned) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

define %class.TimeAnalyze* @_ZN11TimeAnalyzeC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(%class.TimeAnalyze* returned, %"class.std::__cxx11::basic_string"*, i1 zeroext, i1 zeroext) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !918 !xidane.fname !948 !xidane.function_declaration_type !949 !xidane.function_declaration_filename !950 {
  %5 = alloca %class.TimeAnalyze*, align 4
  %6 = alloca %class.TimeAnalyze*, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8*
  %10 = alloca i32
  store %class.TimeAnalyze* %0, %class.TimeAnalyze** %6, align 4
  call void @llvm.dbg.declare(metadata %class.TimeAnalyze** %6, metadata !951, metadata !953), !dbg !954
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"* %1, metadata !955, metadata !956), !dbg !957
  %11 = zext i1 %2 to i8
  store i8 %11, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !958, metadata !953), !dbg !959
  %12 = zext i1 %3 to i8
  store i8 %12, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !960, metadata !953), !dbg !961
  %13 = load %class.TimeAnalyze*, %class.TimeAnalyze** %6, align 4
  store %class.TimeAnalyze* %13, %class.TimeAnalyze** %5, align 4
  %14 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %13, i32 0, i32 1, !dbg !962
  store i32 0, i32* %14, align 4, !dbg !962
  %15 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %13, i32 0, i32 2, !dbg !964
  store i32 0, i32* %15, align 4, !dbg !964
  %16 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %13, i32 0, i32 3, !dbg !965
  store i32 0, i32* %16, align 4, !dbg !965
  %17 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %13, i32 0, i32 4, !dbg !966
  store i32 100000000, i32* %17, align 4, !dbg !966
  %18 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %13, i32 0, i32 5, !dbg !967
  store i32 0, i32* %18, align 4, !dbg !967
  %19 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %13, i32 0, i32 6, !dbg !968
  %20 = call %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* %19) #3, !dbg !968
  %21 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %13, i32 0, i32 6, !dbg !970
  %22 = invoke dereferenceable(24) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"* %21, %"class.std::__cxx11::basic_string"* dereferenceable(24) %1)
          to label %23 unwind label %32, !dbg !972

; <label>:23:                                     ; preds = %4
  %24 = load i8, i8* %7, align 1, !dbg !973
  %25 = trunc i8 %24 to i1, !dbg !973
  %26 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %13, i32 0, i32 7, !dbg !974
  %27 = zext i1 %25 to i8, !dbg !975
  store i8 %27, i8* %26, align 4, !dbg !975
  %28 = load i8, i8* %8, align 1, !dbg !976
  %29 = trunc i8 %28 to i1, !dbg !976
  br i1 %29, label %30, label %37, !dbg !978

; <label>:30:                                     ; preds = %23
  invoke void @_ZN11TimeAnalyze5StartEv(%class.TimeAnalyze* %13)
          to label %31 unwind label %32, !dbg !979

; <label>:31:                                     ; preds = %30
  br label %37, !dbg !980

; <label>:32:                                     ; preds = %30, %4
  %33 = landingpad { i8*, i32 }
          cleanup, !dbg !982
  %34 = extractvalue { i8*, i32 } %33, 0, !dbg !982
  store i8* %34, i8** %9, align 4, !dbg !982
  %35 = extractvalue { i8*, i32 } %33, 1, !dbg !982
  store i32 %35, i32* %10, align 4, !dbg !982
  %36 = call %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %19) #3, !dbg !982
  br label %39, !dbg !982

; <label>:37:                                     ; preds = %31, %23
  %38 = load %class.TimeAnalyze*, %class.TimeAnalyze** %5, align 4, !dbg !983
  ret %class.TimeAnalyze* %38, !dbg !983

; <label>:39:                                     ; preds = %32
  %40 = load i8*, i8** %9, align 4, !dbg !985
  %41 = load i32, i32* %10, align 4, !dbg !985
  %42 = insertvalue { i8*, i32 } undef, i8* %40, 0, !dbg !985
  %43 = insertvalue { i8*, i32 } %42, i32 %41, 1, !dbg !985
  resume { i8*, i32 } %43, !dbg !985
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

; Function Attrs: nounwind
declare !xidane.fname !987 !xidane.function_declaration_type !915 !xidane.function_declaration_filename !988 %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* returned) unnamed_addr #2

declare !xidane.fname !989 !xidane.function_declaration_type !990 !xidane.function_declaration_filename !988 dereferenceable(24) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(%"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"* dereferenceable(24)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
define void @_ZN11TimeAnalyze5StartEv(%class.TimeAnalyze*) #5 align 2 !dbg !991 !xidane.fname !992 !xidane.function_declaration_type !915 !xidane.function_declaration_filename !950 {
  %2 = alloca %class.TimeAnalyze*, align 4
  store %class.TimeAnalyze* %0, %class.TimeAnalyze** %2, align 4
  call void @llvm.dbg.declare(metadata %class.TimeAnalyze** %2, metadata !993, metadata !953), !dbg !994
  %3 = load %class.TimeAnalyze*, %class.TimeAnalyze** %2, align 4
  %4 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 7, !dbg !995
  %5 = load i8, i8* %4, align 4, !dbg !995
  %6 = trunc i8 %5 to i1, !dbg !995
  br i1 %6, label %7, label %10, !dbg !997

; <label>:7:                                      ; preds = %1
  %8 = call i32 @clock() #3, !dbg !998
  %9 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 0, !dbg !1000
  store i32 %8, i32* %9, align 4, !dbg !1001
  br label %10, !dbg !1002

; <label>:10:                                     ; preds = %7, %1
  ret void, !dbg !1003
}

; Function Attrs: nounwind
declare !xidane.fname !1004 !xidane.function_declaration_type !915 !xidane.function_declaration_filename !988 %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* returned) unnamed_addr #2

; Function Attrs: nounwind
declare !xidane.fname !1005 !xidane.function_declaration_type !1006 !xidane.function_declaration_filename !1007 !xidane.ExternC !1008 i32 @clock() #2

; Function Attrs: nounwind
define void @_ZN11TimeAnalyze4StopEv(%class.TimeAnalyze*) #5 align 2 !dbg !1009 !xidane.fname !1010 !xidane.function_declaration_type !915 !xidane.function_declaration_filename !950 {
  %2 = alloca %class.TimeAnalyze*, align 4
  store %class.TimeAnalyze* %0, %class.TimeAnalyze** %2, align 4
  call void @llvm.dbg.declare(metadata %class.TimeAnalyze** %2, metadata !1011, metadata !953), !dbg !1012
  %3 = load %class.TimeAnalyze*, %class.TimeAnalyze** %2, align 4
  %4 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 7, !dbg !1013
  %5 = load i8, i8* %4, align 4, !dbg !1013
  %6 = trunc i8 %5 to i1, !dbg !1013
  br i1 %6, label %7, label %41, !dbg !1015

; <label>:7:                                      ; preds = %1
  %8 = call i32 @clock() #3, !dbg !1016
  %9 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 0, !dbg !1018
  %10 = load i32, i32* %9, align 4, !dbg !1018
  %11 = sub nsw i32 %8, %10, !dbg !1019
  %12 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 2, !dbg !1020
  store i32 %11, i32* %12, align 4, !dbg !1021
  %13 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 2, !dbg !1022
  %14 = load i32, i32* %13, align 4, !dbg !1022
  %15 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 1, !dbg !1023
  %16 = load i32, i32* %15, align 4, !dbg !1024
  %17 = add nsw i32 %16, %14, !dbg !1024
  store i32 %17, i32* %15, align 4, !dbg !1024
  %18 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 3, !dbg !1025
  %19 = load i32, i32* %18, align 4, !dbg !1025
  %20 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 2, !dbg !1027
  %21 = load i32, i32* %20, align 4, !dbg !1027
  %22 = icmp slt i32 %19, %21, !dbg !1028
  br i1 %22, label %23, label %27, !dbg !1029

; <label>:23:                                     ; preds = %7
  %24 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 2, !dbg !1030
  %25 = load i32, i32* %24, align 4, !dbg !1030
  %26 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 3, !dbg !1031
  store i32 %25, i32* %26, align 4, !dbg !1032
  br label %27, !dbg !1031

; <label>:27:                                     ; preds = %23, %7
  %28 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 4, !dbg !1033
  %29 = load i32, i32* %28, align 4, !dbg !1033
  %30 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 2, !dbg !1035
  %31 = load i32, i32* %30, align 4, !dbg !1035
  %32 = icmp sgt i32 %29, %31, !dbg !1036
  br i1 %32, label %33, label %37, !dbg !1037

; <label>:33:                                     ; preds = %27
  %34 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 2, !dbg !1038
  %35 = load i32, i32* %34, align 4, !dbg !1038
  %36 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 4, !dbg !1039
  store i32 %35, i32* %36, align 4, !dbg !1040
  br label %37, !dbg !1039

; <label>:37:                                     ; preds = %33, %27
  %38 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 5, !dbg !1041
  %39 = load i32, i32* %38, align 4, !dbg !1042
  %40 = add nsw i32 %39, 1, !dbg !1042
  store i32 %40, i32* %38, align 4, !dbg !1042
  br label %41, !dbg !1043

; <label>:41:                                     ; preds = %37, %1
  ret void, !dbg !1044
}

; Function Attrs: nounwind
define void @_ZN11TimeAnalyze5ResetEv(%class.TimeAnalyze*) #5 align 2 !dbg !1045 !xidane.fname !1046 !xidane.function_declaration_type !915 !xidane.function_declaration_filename !950 {
  %2 = alloca %class.TimeAnalyze*, align 4
  store %class.TimeAnalyze* %0, %class.TimeAnalyze** %2, align 4
  call void @llvm.dbg.declare(metadata %class.TimeAnalyze** %2, metadata !1047, metadata !953), !dbg !1048
  %3 = load %class.TimeAnalyze*, %class.TimeAnalyze** %2, align 4
  %4 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 7, !dbg !1049
  %5 = load i8, i8* %4, align 4, !dbg !1049
  %6 = trunc i8 %5 to i1, !dbg !1049
  br i1 %6, label %7, label %14, !dbg !1051

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 0, !dbg !1052
  store i32 0, i32* %8, align 4, !dbg !1054
  %9 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 1, !dbg !1055
  store i32 0, i32* %9, align 4, !dbg !1056
  %10 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 2, !dbg !1057
  store i32 0, i32* %10, align 4, !dbg !1058
  %11 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 3, !dbg !1059
  store i32 0, i32* %11, align 4, !dbg !1060
  %12 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 4, !dbg !1061
  store i32 100000000, i32* %12, align 4, !dbg !1062
  %13 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 5, !dbg !1063
  store i32 0, i32* %13, align 4, !dbg !1064
  br label %14, !dbg !1065

; <label>:14:                                     ; preds = %7, %1
  ret void, !dbg !1066
}

define void @_ZN11TimeAnalyze5PrintEv(%class.TimeAnalyze*) #0 align 2 !dbg !1067 !xidane.fname !1068 !xidane.function_declaration_type !915 !xidane.function_declaration_filename !950 {
  %2 = alloca %class.TimeAnalyze*, align 4
  store %class.TimeAnalyze* %0, %class.TimeAnalyze** %2, align 4
  call void @llvm.dbg.declare(metadata %class.TimeAnalyze** %2, metadata !1069, metadata !953), !dbg !1070
  %3 = load %class.TimeAnalyze*, %class.TimeAnalyze** %2, align 4
  %4 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 7, !dbg !1071
  %5 = load i8, i8* %4, align 4, !dbg !1071
  %6 = trunc i8 %5 to i1, !dbg !1071
  br i1 %6, label %7, label %48, !dbg !1073

; <label>:7:                                      ; preds = %1
  %8 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* @_ZSt4cout, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1074
  %9 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140) %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0)), !dbg !1076
  %10 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 6, !dbg !1077
  %11 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* dereferenceable(140) %9, %"class.std::__cxx11::basic_string"* dereferenceable(24) %10), !dbg !1078
  %12 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %11, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1080
  %13 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140) %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)), !dbg !1082
  %14 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 5, !dbg !1083
  %15 = load i32, i32* %14, align 4, !dbg !1083
  %16 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %13, i32 %15), !dbg !1084
  %17 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %16, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1085
  %18 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140) %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0)), !dbg !1086
  %19 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 3, !dbg !1087
  %20 = load i32, i32* %19, align 4, !dbg !1087
  %21 = sitofp i32 %20 to double, !dbg !1087
  %22 = fdiv double %21, 1.000000e+06, !dbg !1088
  %23 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %18, double %22), !dbg !1089
  %24 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140) %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0)), !dbg !1090
  %25 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 4, !dbg !1091
  %26 = load i32, i32* %25, align 4, !dbg !1091
  %27 = sitofp i32 %26 to double, !dbg !1091
  %28 = fdiv double %27, 1.000000e+06, !dbg !1092
  %29 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %24, double %28), !dbg !1093
  %30 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140) %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0)), !dbg !1094
  %31 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 1, !dbg !1095
  %32 = load i32, i32* %31, align 4, !dbg !1095
  %33 = sitofp i32 %32 to double, !dbg !1095
  %34 = fdiv double %33, 1.000000e+06, !dbg !1096
  %35 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 5, !dbg !1097
  %36 = load i32, i32* %35, align 4, !dbg !1097
  %37 = sitofp i32 %36 to double, !dbg !1097
  %38 = fdiv double %34, %37, !dbg !1098
  %39 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %30, double %38), !dbg !1099
  %40 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140) %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0)), !dbg !1100
  %41 = getelementptr inbounds %class.TimeAnalyze, %class.TimeAnalyze* %3, i32 0, i32 1, !dbg !1101
  %42 = load i32, i32* %41, align 4, !dbg !1101
  %43 = sitofp i32 %42 to double, !dbg !1101
  %44 = fdiv double %43, 1.000000e+06, !dbg !1102
  %45 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %40, double %44), !dbg !1103
  %46 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %45, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1104
  %47 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140) %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)), !dbg !1105
  br label %48, !dbg !1106

; <label>:48:                                     ; preds = %7, %1
  ret void, !dbg !1107
}

declare !xidane.fname !1108 !xidane.function_declaration_type !1109 !xidane.function_declaration_filename !1110 dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140), i8*) #1

declare !xidane.fname !1108 !xidane.function_declaration_type !1111 !xidane.function_declaration_filename !988 dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* dereferenceable(140), %"class.std::__cxx11::basic_string"* dereferenceable(24)) #1

declare !xidane.fname !1112 !xidane.function_declaration_type !1113 !xidane.function_declaration_filename !1110 dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare !xidane.fname !1114 !xidane.function_declaration_type !1115 !xidane.function_declaration_filename !1110 dereferenceable(140) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(140)) #1

declare !xidane.fname !1112 !xidane.function_declaration_type !1116 !xidane.function_declaration_filename !1110 dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare !xidane.fname !1112 !xidane.function_declaration_type !1117 !xidane.function_declaration_filename !1110 dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"*, double) #1

define internal void @_GLOBAL__sub_I_TimeAnalyze.cpp() #0 section ".text.startup" !dbg !1118 {
  call void @__cxx_global_var_init(), !dbg !1120
  ret void
}

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+dsp,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-neon,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+dsp,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-neon,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+dsp,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-neon,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+dsp,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-neon,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!905, !906, !907, !908}
!llvm.ident = !{!909}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 3.9.0 (tags/RELEASE_390/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !8, imports: !28)
!1 = !DIFile(filename: "../src\5CTimeAnalyze.cpp", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !6, line: 144, baseType: !7)
!6 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/types.h", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!7 = !DIBasicType(name: "long int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{!9}
!9 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !10, file: !12, line: 74, type: !13, isLocal: true, isDefinition: true, variable: %"class.std::ios_base::Init"* @_ZStL8__ioinit)
!10 = !DINamespace(name: "std", scope: null, file: !11, line: 229)
!11 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/include/c++/7.2.1/arm-linux-gnueabihf\5Cbits/c++config.h", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!12 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/include/c++/7.2.1\5Ciostream", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!13 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !15, file: !14, line: 601, size: 8, align: 8, elements: !16, identifier: "_ZTSNSt8ios_base4InitE")
!14 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/include/c++/7.2.1\5Cbits/ios_base.h", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!15 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !10, file: !14, line: 228, size: 896, align: 32, flags: DIFlagFwdDecl, identifier: "_ZTSSt8ios_base")
!16 = !{!17, !21, !23, !27}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_S_refcount", scope: !13, file: !14, line: 609, baseType: !18, flags: DIFlagStaticMember)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Atomic_word", file: !19, line: 32, baseType: !20)
!19 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/include/c++/7.2.1/arm-linux-gnueabihf\5Cbits/atomic_word.h", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!20 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_S_synced_with_stdio", scope: !13, file: !14, line: 610, baseType: !22, flags: DIFlagStaticMember)
!22 = !DIBasicType(name: "bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!23 = !DISubprogram(name: "Init", scope: !13, file: !14, line: 605, type: !24, isLocal: false, isDefinition: false, scopeLine: 605, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !26}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32, align: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!27 = !DISubprogram(name: "~Init", scope: !13, file: !14, line: 606, type: !24, isLocal: false, isDefinition: false, scopeLine: 606, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!28 = !{!29, !47, !50, !55, !64, !72, !76, !83, !87, !91, !93, !95, !99, !110, !114, !120, !126, !128, !132, !136, !140, !144, !156, !158, !162, !166, !170, !172, !178, !182, !186, !188, !190, !194, !202, !206, !210, !214, !216, !222, !224, !230, !235, !239, !243, !248, !252, !256, !258, !260, !264, !268, !272, !274, !278, !282, !284, !286, !290, !296, !301, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !370, !374, !378, !383, !387, !390, !393, !396, !398, !400, !402, !404, !406, !408, !410, !413, !415, !420, !424, !427, !430, !432, !434, !436, !438, !440, !442, !444, !446, !449, !451, !454, !458, !463, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !501, !504, !510, !514, !519, !521, !525, !529, !533, !543, !547, !551, !555, !559, !563, !567, !571, !575, !579, !583, !587, !591, !593, !597, !601, !605, !611, !615, !619, !621, !625, !629, !635, !637, !641, !645, !649, !653, !657, !661, !665, !666, !667, !668, !671, !672, !673, !674, !675, !676, !677, !680, !686, !691, !695, !697, !699, !701, !703, !710, !714, !718, !722, !726, !730, !735, !739, !741, !745, !751, !755, !760, !762, !764, !768, !772, !776, !778, !780, !782, !784, !788, !790, !792, !796, !800, !804, !808, !812, !814, !816, !820, !824, !828, !832, !834, !836, !840, !844, !845, !846, !847, !848, !849, !854, !857, !858, !860, !862, !864, !866, !870, !872, !874, !876, !878, !880, !882, !884, !886, !890, !894, !896, !900, !904}
!29 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !30, line: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !31, line: 6, baseType: !32)
!31 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/types/mbstate_t.h", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !33, line: 21, baseType: !34)
!33 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/types/__mbstate_t.h", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 13, size: 64, align: 32, elements: !35, identifier: "_ZTS11__mbstate_t")
!35 = !{!36, !37}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !34, file: !33, line: 15, baseType: !20, size: 32, align: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !34, file: !33, line: 20, baseType: !38, size: 32, align: 32, offset: 32)
!38 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !34, file: !33, line: 16, size: 32, align: 32, elements: !39, identifier: "_ZTSN11__mbstate_tUt_E")
!39 = !{!40, !42}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !38, file: !33, line: 18, baseType: !41, size: 32, align: 32)
!41 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !38, file: !33, line: 19, baseType: !43, size: 32, align: 8)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 32, align: 8, elements: !45)
!44 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!45 = !{!46}
!46 = !DISubrange(count: 4)
!47 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !48, line: 139)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !49, line: 20, baseType: !41)
!49 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/types/wint_t.h", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!50 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !51, line: 141)
!51 = !DISubprogram(name: "btowc", scope: !52, file: !52, line: 284, type: !53, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!52 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cwchar.h", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!53 = !DISubroutineType(types: !54)
!54 = !{!48, !20}
!55 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !56, line: 142)
!56 = !DISubprogram(name: "fgetwc", scope: !52, file: !52, line: 660, type: !57, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!57 = !DISubroutineType(types: !58)
!58 = !{!48, !59}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 32, align: 32)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !61, line: 5, baseType: !62)
!61 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/types/__FILE.h", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!62 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !63, line: 241, size: 1216, align: 64, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!63 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Clibio.h", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!64 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !65, line: 143)
!65 = !DISubprogram(name: "fgetws", scope: !52, file: !52, line: 689, type: !66, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!66 = !DISubroutineType(types: !67)
!67 = !{!68, !70, !20, !71}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 32, align: 32)
!69 = !DIBasicType(name: "wchar_t", size: 32, align: 32, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!71 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !59)
!72 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !73, line: 144)
!73 = !DISubprogram(name: "fputwc", scope: !52, file: !52, line: 674, type: !74, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!74 = !DISubroutineType(types: !75)
!75 = !{!48, !69, !59}
!76 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !77, line: 145)
!77 = !DISubprogram(name: "fputws", scope: !52, file: !52, line: 696, type: !78, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!78 = !DISubroutineType(types: !79)
!79 = !{!20, !80, !71}
!80 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 32, align: 32)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!83 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !84, line: 146)
!84 = !DISubprogram(name: "fwide", scope: !52, file: !52, line: 506, type: !85, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!85 = !DISubroutineType(types: !86)
!86 = !{!20, !59, !20}
!87 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !88, line: 147)
!88 = !DISubprogram(name: "fwprintf", scope: !52, file: !52, line: 513, type: !89, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!89 = !DISubroutineType(types: !90)
!90 = !{!20, !71, !80, null}
!91 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !92, line: 148)
!92 = !DISubprogram(name: "fwscanf", scope: !52, file: !52, line: 554, type: !89, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !94, line: 149)
!94 = !DISubprogram(name: "getwc", scope: !52, file: !52, line: 661, type: !57, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!95 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !96, line: 150)
!96 = !DISubprogram(name: "getwchar", scope: !52, file: !52, line: 667, type: !97, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!97 = !DISubroutineType(types: !98)
!98 = !{!48}
!99 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !100, line: 151)
!100 = !DISubprogram(name: "mbrlen", scope: !52, file: !52, line: 307, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!101 = !DISubroutineType(types: !102)
!102 = !{!103, !105, !103, !108}
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !104, line: 216, baseType: !41)
!104 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/7.2.1/include\5Cstddef.h", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!105 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 32, align: 32)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!108 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 32, align: 32)
!110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !111, line: 152)
!111 = !DISubprogram(name: "mbrtowc", scope: !52, file: !52, line: 296, type: !112, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!112 = !DISubroutineType(types: !113)
!113 = !{!103, !70, !105, !103, !108}
!114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !115, line: 153)
!115 = !DISubprogram(name: "mbsinit", scope: !52, file: !52, line: 292, type: !116, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!116 = !DISubroutineType(types: !117)
!117 = !{!20, !118}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 32, align: 32)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !121, line: 154)
!121 = !DISubprogram(name: "mbsrtowcs", scope: !52, file: !52, line: 337, type: !122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!122 = !DISubroutineType(types: !123)
!123 = !{!103, !70, !124, !103, !108}
!124 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 32, align: 32)
!126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !127, line: 155)
!127 = !DISubprogram(name: "putwc", scope: !52, file: !52, line: 675, type: !74, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !129, line: 156)
!129 = !DISubprogram(name: "putwchar", scope: !52, file: !52, line: 681, type: !130, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!130 = !DISubroutineType(types: !131)
!131 = !{!48, !69}
!132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !133, line: 158)
!133 = !DISubprogram(name: "swprintf", scope: !52, file: !52, line: 523, type: !134, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!134 = !DISubroutineType(types: !135)
!135 = !{!20, !70, !103, !80, null}
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !137, line: 160)
!137 = !DISubprogram(name: "swscanf", scope: !52, file: !52, line: 564, type: !138, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!138 = !DISubroutineType(types: !139)
!139 = !{!20, !80, !80, null}
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !141, line: 161)
!141 = !DISubprogram(name: "ungetwc", scope: !52, file: !52, line: 704, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!142 = !DISubroutineType(types: !143)
!143 = !{!48, !48, !59}
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !145, line: 162)
!145 = !DISubprogram(name: "vfwprintf", scope: !52, file: !52, line: 531, type: !146, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!146 = !DISubroutineType(types: !147)
!147 = !{!20, !71, !80, !148}
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !149, line: 40, baseType: !150)
!149 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/7.2.1/include\5Cstdarg.h", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !152, file: !1, size: 32, align: 32, elements: !153, identifier: "_ZTSSt9__va_list")
!152 = !DINamespace(name: "std", scope: null, file: !1)
!153 = !{!154}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !151, file: !1, baseType: !155, size: 32, align: 32)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32, align: 32)
!156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !157, line: 164)
!157 = !DISubprogram(name: "vfwscanf", scope: !52, file: !52, line: 606, type: !146, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !159, line: 167)
!159 = !DISubprogram(name: "vswprintf", scope: !52, file: !52, line: 544, type: !160, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!160 = !DISubroutineType(types: !161)
!161 = !{!20, !70, !103, !80, !148}
!162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !163, line: 170)
!163 = !DISubprogram(name: "vswscanf", scope: !52, file: !52, line: 618, type: !164, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!164 = !DISubroutineType(types: !165)
!165 = !{!20, !80, !80, !148}
!166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !167, line: 172)
!167 = !DISubprogram(name: "vwprintf", scope: !52, file: !52, line: 539, type: !168, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!168 = !DISubroutineType(types: !169)
!169 = !{!20, !80, !148}
!170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !171, line: 174)
!171 = !DISubprogram(name: "vwscanf", scope: !52, file: !52, line: 614, type: !168, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !173, line: 176)
!173 = !DISubprogram(name: "wcrtomb", scope: !52, file: !52, line: 301, type: !174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!174 = !DISubroutineType(types: !175)
!175 = !{!103, !176, !69, !108}
!176 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 32, align: 32)
!178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !179, line: 177)
!179 = !DISubprogram(name: "wcscat", scope: !52, file: !52, line: 97, type: !180, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!180 = !DISubroutineType(types: !181)
!181 = !{!68, !70, !80}
!182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !183, line: 178)
!183 = !DISubprogram(name: "wcscmp", scope: !52, file: !52, line: 106, type: !184, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!184 = !DISubroutineType(types: !185)
!185 = !{!20, !81, !81}
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !187, line: 179)
!187 = !DISubprogram(name: "wcscoll", scope: !52, file: !52, line: 131, type: !184, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !189, line: 180)
!189 = !DISubprogram(name: "wcscpy", scope: !52, file: !52, line: 87, type: !180, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !191, line: 181)
!191 = !DISubprogram(name: "wcscspn", scope: !52, file: !52, line: 187, type: !192, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!192 = !DISubroutineType(types: !193)
!193 = !{!103, !81, !81}
!194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !195, line: 182)
!195 = !DISubprogram(name: "wcsftime", scope: !52, file: !52, line: 768, type: !196, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!196 = !DISubroutineType(types: !197)
!197 = !{!103, !70, !103, !80, !198}
!198 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 32, align: 32)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!201 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !52, line: 83, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !203, line: 183)
!203 = !DISubprogram(name: "wcslen", scope: !52, file: !52, line: 222, type: !204, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!204 = !DISubroutineType(types: !205)
!205 = !{!103, !81}
!206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !207, line: 184)
!207 = !DISubprogram(name: "wcsncat", scope: !52, file: !52, line: 101, type: !208, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!208 = !DISubroutineType(types: !209)
!209 = !{!68, !70, !80, !103}
!210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !211, line: 185)
!211 = !DISubprogram(name: "wcsncmp", scope: !52, file: !52, line: 109, type: !212, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!212 = !DISubroutineType(types: !213)
!213 = !{!20, !81, !81, !103}
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !215, line: 186)
!215 = !DISubprogram(name: "wcsncpy", scope: !52, file: !52, line: 92, type: !208, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !217, line: 187)
!217 = !DISubprogram(name: "wcsrtombs", scope: !52, file: !52, line: 343, type: !218, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!218 = !DISubroutineType(types: !219)
!219 = !{!103, !176, !220, !103, !108}
!220 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 32, align: 32)
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !223, line: 188)
!223 = !DISubprogram(name: "wcsspn", scope: !52, file: !52, line: 191, type: !192, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !225, line: 189)
!225 = !DISubprogram(name: "wcstod", scope: !52, file: !52, line: 377, type: !226, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!226 = !DISubroutineType(types: !227)
!227 = !{!4, !80, !228}
!228 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 32, align: 32)
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !231, line: 191)
!231 = !DISubprogram(name: "wcstof", scope: !52, file: !52, line: 382, type: !232, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!232 = !DISubroutineType(types: !233)
!233 = !{!234, !80, !228}
!234 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !236, line: 193)
!236 = !DISubprogram(name: "wcstok", scope: !52, file: !52, line: 217, type: !237, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!237 = !DISubroutineType(types: !238)
!238 = !{!68, !70, !80, !228}
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !240, line: 194)
!240 = !DISubprogram(name: "wcstol", scope: !52, file: !52, line: 397, type: !241, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!241 = !DISubroutineType(types: !242)
!242 = !{!7, !80, !228, !20}
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !244, line: 195)
!244 = !DISubprogram(name: "wcstoul", scope: !52, file: !52, line: 402, type: !245, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!245 = !DISubroutineType(types: !246)
!246 = !{!247, !80, !228, !20}
!247 = !DIBasicType(name: "long unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !249, line: 196)
!249 = !DISubprogram(name: "wcsxfrm", scope: !52, file: !52, line: 135, type: !250, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!250 = !DISubroutineType(types: !251)
!251 = !{!103, !70, !80, !103}
!252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !253, line: 197)
!253 = !DISubprogram(name: "wctob", scope: !52, file: !52, line: 288, type: !254, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!254 = !DISubroutineType(types: !255)
!255 = !{!20, !48}
!256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !257, line: 198)
!257 = !DISubprogram(name: "wmemcmp", scope: !52, file: !52, line: 258, type: !212, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !259, line: 199)
!259 = !DISubprogram(name: "wmemcpy", scope: !52, file: !52, line: 262, type: !208, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !261, line: 200)
!261 = !DISubprogram(name: "wmemmove", scope: !52, file: !52, line: 267, type: !262, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!262 = !DISubroutineType(types: !263)
!263 = !{!68, !68, !81, !103}
!264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !265, line: 201)
!265 = !DISubprogram(name: "wmemset", scope: !52, file: !52, line: 271, type: !266, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!266 = !DISubroutineType(types: !267)
!267 = !{!68, !68, !69, !103}
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !269, line: 202)
!269 = !DISubprogram(name: "wprintf", scope: !52, file: !52, line: 520, type: !270, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!270 = !DISubroutineType(types: !271)
!271 = !{!20, !80, null}
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !273, line: 203)
!273 = !DISubprogram(name: "wscanf", scope: !52, file: !52, line: 561, type: !270, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !275, line: 204)
!275 = !DISubprogram(name: "wcschr", scope: !52, file: !52, line: 164, type: !276, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!276 = !DISubroutineType(types: !277)
!277 = !{!68, !81, !69}
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !279, line: 205)
!279 = !DISubprogram(name: "wcspbrk", scope: !52, file: !52, line: 201, type: !280, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!280 = !DISubroutineType(types: !281)
!281 = !{!68, !81, !81}
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !283, line: 206)
!283 = !DISubprogram(name: "wcsrchr", scope: !52, file: !52, line: 174, type: !276, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !285, line: 207)
!285 = !DISubprogram(name: "wcsstr", scope: !52, file: !52, line: 212, type: !280, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !287, line: 208)
!287 = !DISubprogram(name: "wmemchr", scope: !52, file: !52, line: 253, type: !288, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!288 = !DISubroutineType(types: !289)
!289 = !{!68, !81, !69, !103}
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !291, entity: !292, line: 248)
!291 = !DINamespace(name: "__gnu_cxx", scope: null, file: !11, line: 255)
!292 = !DISubprogram(name: "wcstold", scope: !52, file: !52, line: 384, type: !293, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!293 = !DISubroutineType(types: !294)
!294 = !{!295, !80, !228}
!295 = !DIBasicType(name: "long double", size: 64, align: 64, encoding: DW_ATE_float)
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !291, entity: !297, line: 257)
!297 = !DISubprogram(name: "wcstoll", scope: !52, file: !52, line: 410, type: !298, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!298 = !DISubroutineType(types: !299)
!299 = !{!300, !80, !228, !20}
!300 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !291, entity: !302, line: 258)
!302 = !DISubprogram(name: "wcstoull", scope: !52, file: !52, line: 417, type: !303, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!303 = !DISubroutineType(types: !304)
!304 = !{!305, !80, !228, !20}
!305 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !292, line: 264)
!307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !297, line: 265)
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !302, line: 266)
!309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !231, line: 280)
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !157, line: 283)
!311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !163, line: 286)
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !171, line: 289)
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !292, line: 293)
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !297, line: 294)
!315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !302, line: 295)
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !317, line: 57)
!317 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !319, file: !318, line: 79, size: 32, align: 32, elements: !320, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!318 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/include/c++/7.2.1\5Cbits/exception_ptr.h", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!319 = !DINamespace(name: "__exception_ptr", scope: !10, file: !318, line: 52)
!320 = !{!321, !322, !326, !329, !330, !335, !336, !340, !345, !349, !353, !356, !357, !360, !363}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !317, file: !318, line: 81, baseType: !155, size: 32, align: 32)
!322 = !DISubprogram(name: "exception_ptr", scope: !317, file: !318, line: 83, type: !323, isLocal: false, isDefinition: false, scopeLine: 83, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !325, !155}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 32, align: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!326 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !317, file: !318, line: 85, type: !327, isLocal: false, isDefinition: false, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !325}
!329 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !317, file: !318, line: 86, type: !327, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false)
!330 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !317, file: !318, line: 88, type: !331, isLocal: false, isDefinition: false, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false)
!331 = !DISubroutineType(types: !332)
!332 = !{!155, !333}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 32, align: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!335 = !DISubprogram(name: "exception_ptr", scope: !317, file: !318, line: 96, type: !327, isLocal: false, isDefinition: false, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!336 = !DISubprogram(name: "exception_ptr", scope: !317, file: !318, line: 98, type: !337, isLocal: false, isDefinition: false, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !325, !339}
!339 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !334, size: 32, align: 32)
!340 = !DISubprogram(name: "exception_ptr", scope: !317, file: !318, line: 101, type: !341, isLocal: false, isDefinition: false, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !325, !343}
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !10, file: !11, line: 235, baseType: !344)
!344 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!345 = !DISubprogram(name: "exception_ptr", scope: !317, file: !318, line: 105, type: !346, isLocal: false, isDefinition: false, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !325, !348}
!348 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !317, size: 32, align: 32)
!349 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !317, file: !318, line: 118, type: !350, isLocal: false, isDefinition: false, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!350 = !DISubroutineType(types: !351)
!351 = !{!352, !325, !339}
!352 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !317, size: 32, align: 32)
!353 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !317, file: !318, line: 122, type: !354, isLocal: false, isDefinition: false, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!354 = !DISubroutineType(types: !355)
!355 = !{!352, !325, !348}
!356 = !DISubprogram(name: "~exception_ptr", scope: !317, file: !318, line: 129, type: !327, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!357 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !317, file: !318, line: 132, type: !358, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !325, !352}
!360 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !317, file: !318, line: 144, type: !361, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!361 = !DISubroutineType(types: !362)
!362 = !{!22, !333}
!363 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !317, file: !318, line: 153, type: !364, isLocal: false, isDefinition: false, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!364 = !DISubroutineType(types: !365)
!365 = !{!366, !333}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 32, align: 32)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!368 = !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !10, file: !369, line: 88, size: 64, align: 32, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!369 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/include/c++/7.2.1\5Ctypeinfo", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !319, entity: !371, line: 73)
!371 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !10, file: !318, line: 69, type: !372, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !317}
!374 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !375, entity: !377, line: 58)
!375 = !DINamespace(name: "__gnu_debug", scope: null, file: !376, line: 56)
!376 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/include/c++/7.2.1\5Cdebug/debug.h", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!377 = !DINamespace(name: "__debug", scope: !10, file: !376, line: 50)
!378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !379, line: 48)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !380, line: 24, baseType: !381)
!380 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/stdint-intn.h", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !6, line: 36, baseType: !382)
!382 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !384, line: 49)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !380, line: 25, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !6, line: 38, baseType: !386)
!386 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !388, line: 50)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !380, line: 26, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !6, line: 40, baseType: !20)
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !391, line: 51)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !380, line: 27, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !6, line: 46, baseType: !300)
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !394, line: 53)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !395, line: 68, baseType: !382)
!395 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdint.h", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !397, line: 54)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !395, line: 74, baseType: !20)
!398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !399, line: 55)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !395, line: 75, baseType: !20)
!400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !401, line: 56)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !395, line: 77, baseType: !300)
!402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !403, line: 58)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !395, line: 43, baseType: !382)
!404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !405, line: 59)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !395, line: 44, baseType: !386)
!406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !407, line: 60)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !395, line: 45, baseType: !20)
!408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !409, line: 61)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !395, line: 50, baseType: !300)
!410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !411, line: 63)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !395, line: 111, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !6, line: 64, baseType: !300)
!413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !414, line: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !395, line: 103, baseType: !20)
!415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !416, line: 66)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !417, line: 24, baseType: !418)
!417 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/stdint-uintn.h", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !6, line: 37, baseType: !419)
!419 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !421, line: 67)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !417, line: 25, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !6, line: 39, baseType: !423)
!423 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !425, line: 68)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !417, line: 26, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !6, line: 41, baseType: !41)
!427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !428, line: 69)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !417, line: 27, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !6, line: 47, baseType: !305)
!430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !431, line: 71)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !395, line: 81, baseType: !419)
!432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !433, line: 72)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !395, line: 87, baseType: !41)
!434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !435, line: 73)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !395, line: 88, baseType: !41)
!436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !437, line: 74)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !395, line: 90, baseType: !305)
!438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !439, line: 76)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !395, line: 54, baseType: !419)
!440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !441, line: 77)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !395, line: 55, baseType: !423)
!442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !443, line: 78)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !395, line: 56, baseType: !41)
!444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !445, line: 79)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !395, line: 61, baseType: !305)
!446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !447, line: 81)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !395, line: 112, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !6, line: 65, baseType: !305)
!449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !450, line: 82)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !395, line: 106, baseType: !41)
!451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !452, line: 53)
!452 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !453, line: 51, size: 448, align: 32, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!453 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Clocale.h", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !455, line: 54)
!455 = !DISubprogram(name: "setlocale", scope: !453, file: !453, line: 122, type: !456, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!456 = !DISubroutineType(types: !457)
!457 = !{!177, !20, !106}
!458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !459, line: 55)
!459 = !DISubprogram(name: "localeconv", scope: !453, file: !453, line: 125, type: !460, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!460 = !DISubroutineType(types: !461)
!461 = !{!462}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 32, align: 32)
!463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !464, line: 64)
!464 = !DISubprogram(name: "isalnum", scope: !465, file: !465, line: 108, type: !466, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!465 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cctype.h", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!466 = !DISubroutineType(types: !467)
!467 = !{!20, !20}
!468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !469, line: 65)
!469 = !DISubprogram(name: "isalpha", scope: !465, file: !465, line: 109, type: !466, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !471, line: 66)
!471 = !DISubprogram(name: "iscntrl", scope: !465, file: !465, line: 110, type: !466, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !473, line: 67)
!473 = !DISubprogram(name: "isdigit", scope: !465, file: !465, line: 111, type: !466, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !475, line: 68)
!475 = !DISubprogram(name: "isgraph", scope: !465, file: !465, line: 113, type: !466, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !477, line: 69)
!477 = !DISubprogram(name: "islower", scope: !465, file: !465, line: 112, type: !466, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !479, line: 70)
!479 = !DISubprogram(name: "isprint", scope: !465, file: !465, line: 114, type: !466, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !481, line: 71)
!481 = !DISubprogram(name: "ispunct", scope: !465, file: !465, line: 115, type: !466, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !483, line: 72)
!483 = !DISubprogram(name: "isspace", scope: !465, file: !465, line: 116, type: !466, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !485, line: 73)
!485 = !DISubprogram(name: "isupper", scope: !465, file: !465, line: 117, type: !466, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !487, line: 74)
!487 = !DISubprogram(name: "isxdigit", scope: !465, file: !465, line: 118, type: !466, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!488 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !489, line: 75)
!489 = !DISubprogram(name: "tolower", scope: !465, file: !465, line: 122, type: !466, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !491, line: 76)
!491 = !DISubprogram(name: "toupper", scope: !465, file: !465, line: 125, type: !466, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !493, line: 87)
!493 = !DISubprogram(name: "isblank", scope: !465, file: !465, line: 130, type: !466, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !291, entity: !495, line: 44)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !10, file: !11, line: 231, baseType: !41)
!496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !291, entity: !497, line: 45)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !10, file: !11, line: 232, baseType: !20)
!498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !499, line: 52)
!499 = !DISubprogram(name: "abs", scope: !500, file: !500, line: 722, type: !466, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!500 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdlib.h", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !502, line: 124)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !500, line: 62, baseType: !503)
!503 = !DICompositeType(tag: DW_TAG_structure_type, file: !500, line: 58, size: 64, align: 32, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !505, line: 125)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !500, line: 70, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !500, line: 66, size: 64, align: 32, elements: !507, identifier: "_ZTS6ldiv_t")
!507 = !{!508, !509}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !506, file: !500, line: 68, baseType: !7, size: 32, align: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !506, file: !500, line: 69, baseType: !7, size: 32, align: 32, offset: 32)
!510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !511, line: 127)
!511 = !DISubprogram(name: "abort", scope: !500, file: !500, line: 473, type: !512, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!512 = !DISubroutineType(types: !513)
!513 = !{null}
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !515, line: 128)
!515 = !DISubprogram(name: "atexit", scope: !500, file: !500, line: 477, type: !516, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!516 = !DISubroutineType(types: !517)
!517 = !{!20, !518}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 32, align: 32)
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !520, line: 131)
!520 = !DISubprogram(name: "at_quick_exit", scope: !500, file: !500, line: 482, type: !516, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !522, line: 134)
!522 = !DISubprogram(name: "atof", scope: !500, file: !500, line: 101, type: !523, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!523 = !DISubroutineType(types: !524)
!524 = !{!4, !106}
!525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !526, line: 135)
!526 = !DISubprogram(name: "atoi", scope: !500, file: !500, line: 104, type: !527, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!527 = !DISubroutineType(types: !528)
!528 = !{!20, !106}
!529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !530, line: 136)
!530 = !DISubprogram(name: "atol", scope: !500, file: !500, line: 107, type: !531, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!531 = !DISubroutineType(types: !532)
!532 = !{!7, !106}
!533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !534, line: 137)
!534 = !DISubprogram(name: "bsearch", scope: !500, file: !500, line: 702, type: !535, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!535 = !DISubroutineType(types: !536)
!536 = !{!155, !537, !537, !103, !103, !539}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 32, align: 32)
!538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !500, line: 690, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 32, align: 32)
!541 = !DISubroutineType(types: !542)
!542 = !{!20, !537, !537}
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !544, line: 138)
!544 = !DISubprogram(name: "calloc", scope: !500, file: !500, line: 426, type: !545, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!545 = !DISubroutineType(types: !546)
!546 = !{!155, !103, !103}
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !548, line: 139)
!548 = !DISubprogram(name: "div", scope: !500, file: !500, line: 734, type: !549, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!549 = !DISubroutineType(types: !550)
!550 = !{!502, !20, !20}
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !552, line: 140)
!552 = !DISubprogram(name: "exit", scope: !500, file: !500, line: 499, type: !553, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !20}
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !556, line: 141)
!556 = !DISubprogram(name: "free", scope: !500, file: !500, line: 448, type: !557, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !155}
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !560, line: 142)
!560 = !DISubprogram(name: "getenv", scope: !500, file: !500, line: 516, type: !561, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!561 = !DISubroutineType(types: !562)
!562 = !{!177, !106}
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !564, line: 143)
!564 = !DISubprogram(name: "labs", scope: !500, file: !500, line: 723, type: !565, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!565 = !DISubroutineType(types: !566)
!566 = !{!7, !7}
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !568, line: 144)
!568 = !DISubprogram(name: "ldiv", scope: !500, file: !500, line: 736, type: !569, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!569 = !DISubroutineType(types: !570)
!570 = !{!505, !7, !7}
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !572, line: 145)
!572 = !DISubprogram(name: "malloc", scope: !500, file: !500, line: 424, type: !573, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!573 = !DISubroutineType(types: !574)
!574 = !{!155, !103}
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !576, line: 147)
!576 = !DISubprogram(name: "mblen", scope: !500, file: !500, line: 804, type: !577, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!577 = !DISubroutineType(types: !578)
!578 = !{!20, !106, !103}
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !580, line: 148)
!580 = !DISubprogram(name: "mbstowcs", scope: !500, file: !500, line: 815, type: !581, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!581 = !DISubroutineType(types: !582)
!582 = !{!103, !70, !105, !103}
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !584, line: 149)
!584 = !DISubprogram(name: "mbtowc", scope: !500, file: !500, line: 807, type: !585, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!585 = !DISubroutineType(types: !586)
!586 = !{!20, !70, !105, !103}
!587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !588, line: 151)
!588 = !DISubprogram(name: "qsort", scope: !500, file: !500, line: 712, type: !589, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !155, !103, !103, !539}
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !592, line: 154)
!592 = !DISubprogram(name: "quick_exit", scope: !500, file: !500, line: 505, type: !553, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !594, line: 157)
!594 = !DISubprogram(name: "rand", scope: !500, file: !500, line: 338, type: !595, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!595 = !DISubroutineType(types: !596)
!596 = !{!20}
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !598, line: 158)
!598 = !DISubprogram(name: "realloc", scope: !500, file: !500, line: 434, type: !599, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!599 = !DISubroutineType(types: !600)
!600 = !{!155, !155, !103}
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !602, line: 159)
!602 = !DISubprogram(name: "srand", scope: !500, file: !500, line: 340, type: !603, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !41}
!605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !606, line: 160)
!606 = !DISubprogram(name: "strtod", scope: !500, file: !500, line: 117, type: !607, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!607 = !DISubroutineType(types: !608)
!608 = !{!4, !105, !609}
!609 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !610)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 32, align: 32)
!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !612, line: 161)
!612 = !DISubprogram(name: "strtol", scope: !500, file: !500, line: 139, type: !613, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!613 = !DISubroutineType(types: !614)
!614 = !{!7, !105, !609, !20}
!615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !616, line: 162)
!616 = !DISubprogram(name: "strtoul", scope: !500, file: !500, line: 143, type: !617, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!617 = !DISubroutineType(types: !618)
!618 = !{!247, !105, !609, !20}
!619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !620, line: 163)
!620 = !DISubprogram(name: "system", scope: !500, file: !500, line: 666, type: !527, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !622, line: 165)
!622 = !DISubprogram(name: "wcstombs", scope: !500, file: !500, line: 818, type: !623, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!623 = !DISubroutineType(types: !624)
!624 = !{!103, !176, !80, !103}
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !626, line: 166)
!626 = !DISubprogram(name: "wctomb", scope: !500, file: !500, line: 811, type: !627, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!627 = !DISubroutineType(types: !628)
!628 = !{!20, !177, !69}
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !291, entity: !630, line: 194)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !500, line: 80, baseType: !631)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !500, line: 76, size: 128, align: 64, elements: !632, identifier: "_ZTS7lldiv_t")
!632 = !{!633, !634}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !631, file: !500, line: 78, baseType: !300, size: 64, align: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !631, file: !500, line: 79, baseType: !300, size: 64, align: 64, offset: 64)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !291, entity: !636, line: 200)
!636 = !DISubprogram(name: "_Exit", scope: !500, file: !500, line: 511, type: !553, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !291, entity: !638, line: 204)
!638 = !DISubprogram(name: "llabs", scope: !500, file: !500, line: 726, type: !639, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!639 = !DISubroutineType(types: !640)
!640 = !{!300, !300}
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !291, entity: !642, line: 210)
!642 = !DISubprogram(name: "lldiv", scope: !500, file: !500, line: 740, type: !643, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!643 = !DISubroutineType(types: !644)
!644 = !{!630, !300, !300}
!645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !291, entity: !646, line: 221)
!646 = !DISubprogram(name: "atoll", scope: !500, file: !500, line: 112, type: !647, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!647 = !DISubroutineType(types: !648)
!648 = !{!300, !106}
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !291, entity: !650, line: 222)
!650 = !DISubprogram(name: "strtoll", scope: !500, file: !500, line: 163, type: !651, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!651 = !DISubroutineType(types: !652)
!652 = !{!300, !105, !609, !20}
!653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !291, entity: !654, line: 223)
!654 = !DISubprogram(name: "strtoull", scope: !500, file: !500, line: 168, type: !655, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!655 = !DISubroutineType(types: !656)
!656 = !{!305, !105, !609, !20}
!657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !291, entity: !658, line: 225)
!658 = !DISubprogram(name: "strtof", scope: !500, file: !500, line: 123, type: !659, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!659 = !DISubroutineType(types: !660)
!660 = !{!234, !105, !609}
!661 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !291, entity: !662, line: 226)
!662 = !DISubprogram(name: "strtold", scope: !500, file: !500, line: 126, type: !663, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!663 = !DISubroutineType(types: !664)
!664 = !{!295, !105, !609}
!665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !630, line: 234)
!666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !636, line: 236)
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !638, line: 238)
!668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !669, line: 239)
!669 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !291, file: !670, line: 207, type: !643, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!670 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/include/c++/7.2.1\5Ccstdlib", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !642, line: 240)
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !646, line: 242)
!673 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !658, line: 243)
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !650, line: 244)
!675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !654, line: 245)
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !662, line: 246)
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !678, line: 98)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !679, line: 7, baseType: !62)
!679 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/types/FILE.h", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !681, line: 99)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !682, line: 78, baseType: !683)
!682 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdio.h", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "_G_fpos_t", file: !684, line: 26, baseType: !685)
!684 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5C_G_config.h", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!685 = !DICompositeType(tag: DW_TAG_structure_type, file: !684, line: 22, size: 96, align: 32, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !687, line: 101)
!687 = !DISubprogram(name: "clearerr", scope: !682, file: !682, line: 757, type: !688, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !690}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 32, align: 32)
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !692, line: 102)
!692 = !DISubprogram(name: "fclose", scope: !682, file: !682, line: 199, type: !693, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!693 = !DISubroutineType(types: !694)
!694 = !{!20, !690}
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !696, line: 103)
!696 = !DISubprogram(name: "feof", scope: !682, file: !682, line: 759, type: !693, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !698, line: 104)
!698 = !DISubprogram(name: "ferror", scope: !682, file: !682, line: 761, type: !693, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !700, line: 105)
!700 = !DISubprogram(name: "fflush", scope: !682, file: !682, line: 204, type: !693, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !702, line: 106)
!702 = !DISubprogram(name: "fgetc", scope: !682, file: !682, line: 477, type: !693, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !704, line: 107)
!704 = !DISubprogram(name: "fgetpos", scope: !682, file: !682, line: 731, type: !705, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!705 = !DISubroutineType(types: !706)
!706 = !{!20, !707, !708}
!707 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !690)
!708 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !709)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 32, align: 32)
!710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !711, line: 108)
!711 = !DISubprogram(name: "fgets", scope: !682, file: !682, line: 564, type: !712, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!712 = !DISubroutineType(types: !713)
!713 = !{!177, !176, !20, !707}
!714 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !715, line: 109)
!715 = !DISubprogram(name: "fopen", scope: !682, file: !682, line: 232, type: !716, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!716 = !DISubroutineType(types: !717)
!717 = !{!690, !105, !105}
!718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !719, line: 110)
!719 = !DISubprogram(name: "fprintf", scope: !682, file: !682, line: 312, type: !720, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!720 = !DISubroutineType(types: !721)
!721 = !{!20, !707, !105, null}
!722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !723, line: 111)
!723 = !DISubprogram(name: "fputc", scope: !682, file: !682, line: 517, type: !724, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!724 = !DISubroutineType(types: !725)
!725 = !{!20, !20, !690}
!726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !727, line: 112)
!727 = !DISubprogram(name: "fputs", scope: !682, file: !682, line: 626, type: !728, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!728 = !DISubroutineType(types: !729)
!729 = !{!20, !105, !707}
!730 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !731, line: 113)
!731 = !DISubprogram(name: "fread", scope: !682, file: !682, line: 646, type: !732, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!732 = !DISubroutineType(types: !733)
!733 = !{!103, !734, !103, !103, !707}
!734 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !155)
!735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !736, line: 114)
!736 = !DISubprogram(name: "freopen", scope: !682, file: !682, line: 238, type: !737, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!737 = !DISubroutineType(types: !738)
!738 = !{!690, !105, !105, !707}
!739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !740, line: 115)
!740 = !DISubprogram(name: "fscanf", scope: !682, file: !682, line: 377, type: !720, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !742, line: 116)
!742 = !DISubprogram(name: "fseek", scope: !682, file: !682, line: 684, type: !743, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!743 = !DISubroutineType(types: !744)
!744 = !{!20, !690, !7, !20}
!745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !746, line: 117)
!746 = !DISubprogram(name: "fsetpos", scope: !682, file: !682, line: 736, type: !747, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!747 = !DISubroutineType(types: !748)
!748 = !{!20, !690, !749}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 32, align: 32)
!750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !681)
!751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !752, line: 118)
!752 = !DISubprogram(name: "ftell", scope: !682, file: !682, line: 689, type: !753, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!753 = !DISubroutineType(types: !754)
!754 = !{!7, !690}
!755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !756, line: 119)
!756 = !DISubprogram(name: "fwrite", scope: !682, file: !682, line: 652, type: !757, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!757 = !DISubroutineType(types: !758)
!758 = !{!103, !759, !103, !103, !707}
!759 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !537)
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !761, line: 120)
!761 = !DISubprogram(name: "getc", scope: !682, file: !682, line: 478, type: !693, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !763, line: 121)
!763 = !DISubprogram(name: "getchar", scope: !682, file: !682, line: 484, type: !595, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !765, line: 124)
!765 = !DISubprogram(name: "gets", scope: !682, file: !682, line: 577, type: !766, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!766 = !DISubroutineType(types: !767)
!767 = !{!177, !177}
!768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !769, line: 126)
!769 = !DISubprogram(name: "perror", scope: !682, file: !682, line: 775, type: !770, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !106}
!772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !773, line: 127)
!773 = !DISubprogram(name: "printf", scope: !682, file: !682, line: 318, type: !774, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!774 = !DISubroutineType(types: !775)
!775 = !{!20, !105, null}
!776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !777, line: 128)
!777 = !DISubprogram(name: "putc", scope: !682, file: !682, line: 518, type: !724, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !779, line: 129)
!779 = !DISubprogram(name: "putchar", scope: !682, file: !682, line: 524, type: !466, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !781, line: 130)
!781 = !DISubprogram(name: "puts", scope: !682, file: !682, line: 632, type: !527, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !783, line: 131)
!783 = !DISubprogram(name: "remove", scope: !682, file: !682, line: 144, type: !527, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !785, line: 132)
!785 = !DISubprogram(name: "rename", scope: !682, file: !682, line: 146, type: !786, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!786 = !DISubroutineType(types: !787)
!787 = !{!20, !106, !106}
!788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !789, line: 133)
!789 = !DISubprogram(name: "rewind", scope: !682, file: !682, line: 694, type: !688, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !791, line: 134)
!791 = !DISubprogram(name: "scanf", scope: !682, file: !682, line: 383, type: !774, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!792 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !793, line: 135)
!793 = !DISubprogram(name: "setbuf", scope: !682, file: !682, line: 290, type: !794, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !707, !176}
!796 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !797, line: 136)
!797 = !DISubprogram(name: "setvbuf", scope: !682, file: !682, line: 294, type: !798, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!798 = !DISubroutineType(types: !799)
!799 = !{!20, !707, !176, !20, !103}
!800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !801, line: 137)
!801 = !DISubprogram(name: "sprintf", scope: !682, file: !682, line: 320, type: !802, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!802 = !DISubroutineType(types: !803)
!803 = !{!20, !176, !105, null}
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !805, line: 138)
!805 = !DISubprogram(name: "sscanf", scope: !682, file: !682, line: 385, type: !806, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!806 = !DISubroutineType(types: !807)
!807 = !{!20, !105, !105, null}
!808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !809, line: 139)
!809 = !DISubprogram(name: "tmpfile", scope: !682, file: !682, line: 159, type: !810, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!810 = !DISubroutineType(types: !811)
!811 = !{!690}
!812 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !813, line: 141)
!813 = !DISubprogram(name: "tmpnam", scope: !682, file: !682, line: 173, type: !766, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !815, line: 143)
!815 = !DISubprogram(name: "ungetc", scope: !682, file: !682, line: 639, type: !724, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!816 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !817, line: 144)
!817 = !DISubprogram(name: "vfprintf", scope: !682, file: !682, line: 327, type: !818, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!818 = !DISubroutineType(types: !819)
!819 = !{!20, !707, !105, !148}
!820 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !821, line: 145)
!821 = !DISubprogram(name: "vprintf", scope: !682, file: !682, line: 333, type: !822, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!822 = !DISubroutineType(types: !823)
!823 = !{!20, !105, !148}
!824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !825, line: 146)
!825 = !DISubprogram(name: "vsprintf", scope: !682, file: !682, line: 335, type: !826, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!826 = !DISubroutineType(types: !827)
!827 = !{!20, !176, !105, !148}
!828 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !291, entity: !829, line: 175)
!829 = !DISubprogram(name: "snprintf", scope: !682, file: !682, line: 340, type: !830, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!830 = !DISubroutineType(types: !831)
!831 = !{!20, !176, !103, !105, null}
!832 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !291, entity: !833, line: 176)
!833 = !DISubprogram(name: "vfscanf", scope: !682, file: !682, line: 420, type: !818, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !291, entity: !835, line: 177)
!835 = !DISubprogram(name: "vscanf", scope: !682, file: !682, line: 428, type: !822, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !291, entity: !837, line: 178)
!837 = !DISubprogram(name: "vsnprintf", scope: !682, file: !682, line: 344, type: !838, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!838 = !DISubroutineType(types: !839)
!839 = !{!20, !176, !103, !105, !148}
!840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !291, entity: !841, line: 179)
!841 = !DISubprogram(name: "vsscanf", scope: !682, file: !682, line: 432, type: !842, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!842 = !DISubroutineType(types: !843)
!843 = !{!20, !105, !105, !148}
!844 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !829, line: 185)
!845 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !833, line: 186)
!846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !835, line: 187)
!847 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !837, line: 188)
!848 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !841, line: 189)
!849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !850, line: 82)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !851, line: 48, baseType: !852)
!851 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cwctype.h", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 32, align: 32)
!853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !855, line: 83)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !856, line: 38, baseType: !247)
!856 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/wctype-wchar.h", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!857 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !48, line: 84)
!858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !859, line: 86)
!859 = !DISubprogram(name: "iswalnum", scope: !856, file: !856, line: 95, type: !254, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!860 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !861, line: 87)
!861 = !DISubprogram(name: "iswalpha", scope: !856, file: !856, line: 101, type: !254, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !863, line: 89)
!863 = !DISubprogram(name: "iswblank", scope: !856, file: !856, line: 146, type: !254, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!864 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !865, line: 91)
!865 = !DISubprogram(name: "iswcntrl", scope: !856, file: !856, line: 104, type: !254, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !867, line: 92)
!867 = !DISubprogram(name: "iswctype", scope: !856, file: !856, line: 159, type: !868, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!868 = !DISubroutineType(types: !869)
!869 = !{!20, !48, !855}
!870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !871, line: 93)
!871 = !DISubprogram(name: "iswdigit", scope: !856, file: !856, line: 108, type: !254, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !873, line: 94)
!873 = !DISubprogram(name: "iswgraph", scope: !856, file: !856, line: 112, type: !254, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !875, line: 95)
!875 = !DISubprogram(name: "iswlower", scope: !856, file: !856, line: 117, type: !254, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !877, line: 96)
!877 = !DISubprogram(name: "iswprint", scope: !856, file: !856, line: 120, type: !254, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !879, line: 97)
!879 = !DISubprogram(name: "iswpunct", scope: !856, file: !856, line: 125, type: !254, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !881, line: 98)
!881 = !DISubprogram(name: "iswspace", scope: !856, file: !856, line: 130, type: !254, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !883, line: 99)
!883 = !DISubprogram(name: "iswupper", scope: !856, file: !856, line: 135, type: !254, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !885, line: 100)
!885 = !DISubprogram(name: "iswxdigit", scope: !856, file: !856, line: 140, type: !254, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !887, line: 101)
!887 = !DISubprogram(name: "towctrans", scope: !851, file: !851, line: 55, type: !888, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!888 = !DISubroutineType(types: !889)
!889 = !{!48, !48, !850}
!890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !891, line: 102)
!891 = !DISubprogram(name: "towlower", scope: !856, file: !856, line: 166, type: !892, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!892 = !DISubroutineType(types: !893)
!893 = !{!48, !48}
!894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !895, line: 103)
!895 = !DISubprogram(name: "towupper", scope: !856, file: !856, line: 169, type: !892, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !897, line: 104)
!897 = !DISubprogram(name: "wctrans", scope: !851, file: !851, line: 52, type: !898, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!898 = !DISubroutineType(types: !899)
!899 = !{!850, !106}
!900 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !10, entity: !901, line: 105)
!901 = !DISubprogram(name: "wctype", scope: !856, file: !856, line: 155, type: !902, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!902 = !DISubroutineType(types: !903)
!903 = !{!855, !106}
!904 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !10, line: 15)
!905 = !{i32 2, !"Dwarf Version", i32 4}
!906 = !{i32 2, !"Debug Info Version", i32 3}
!907 = !{i32 1, !"wchar_size", i32 4}
!908 = !{i32 1, !"min_enum_size", i32 4}
!909 = !{!"clang version 3.9.0 (tags/RELEASE_390/final)"}
!910 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !12, file: !12, line: 74, type: !512, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!911 = !DILocation(line: 74, column: 25, scope: !910)
!912 = !DILocation(line: 74, column: 25, scope: !913)
!913 = !DILexicalBlockFile(scope: !910, file: !12, discriminator: 1)
!914 = !{!"Init"}
!915 = !{!"void."}
!916 = !{!"C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/include/c++/7.2.1\5Cbits/ios_base.h"}
!917 = !{!"~Init"}
!918 = distinct !DISubprogram(name: "TimeAnalyze", linkageName: "_ZN11TimeAnalyzeC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb", scope: !920, file: !919, line: 11, type: !939, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !938, variables: !2)
!919 = !DIFile(filename: "C:/Users/yakup/workspace/bitirme_v4/src/TimeAnalyze.cpp", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!920 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "TimeAnalyze", file: !921, line: 17, size: 416, align: 32, elements: !922, identifier: "_ZTS11TimeAnalyze")
!921 = !DIFile(filename: "../src/TimeAnalyze.hpp", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!922 = !{!923, !926, !927, !928, !929, !930, !931, !937, !938, !942, !945, !946, !947}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "clk_start", scope: !920, file: !921, line: 22, baseType: !924, size: 32, align: 32)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_t", file: !925, line: 7, baseType: !5)
!925 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/types/clock_t.h", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!926 = !DIDerivedType(tag: DW_TAG_member, name: "clk_total", scope: !920, file: !921, line: 25, baseType: !924, size: 32, align: 32, offset: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "clk_duration", scope: !920, file: !921, line: 28, baseType: !924, size: 32, align: 32, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "clk_maxtime", scope: !920, file: !921, line: 31, baseType: !924, size: 32, align: 32, offset: 96)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "clk_mintime", scope: !920, file: !921, line: 34, baseType: !924, size: 32, align: 32, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "framecounter", scope: !920, file: !921, line: 37, baseType: !20, size: 32, align: 32, offset: 160)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !920, file: !921, line: 40, baseType: !932, size: 192, align: 32, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", scope: !934, file: !933, line: 74, baseType: !935)
!933 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/include/c++/7.2.1\5Cbits/stringfwd.h", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!934 = !DINamespace(name: "__cxx11", scope: !10, file: !11, line: 253)
!935 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::char_traits<char>, std::allocator<char> >", scope: !934, file: !936, line: 1601, size: 192, align: 32, flags: DIFlagFwdDecl, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE")
!936 = !DIFile(filename: "C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/include/c++/7.2.1\5Cbits/basic_string.tcc", directory: "C:\5CUsers\5Cyakup\5Cworkspace\5Cbitirme_v4\5CRelease")
!937 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !920, file: !921, line: 42, baseType: !22, size: 8, align: 8, offset: 384)
!938 = !DISubprogram(name: "TimeAnalyze", scope: !920, file: !921, line: 46, type: !939, isLocal: false, isDefinition: false, scopeLine: 46, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!939 = !DISubroutineType(types: !940)
!940 = !{null, !941, !932, !22, !22}
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 32, align: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!942 = !DISubprogram(name: "Start", linkageName: "_ZN11TimeAnalyze5StartEv", scope: !920, file: !921, line: 52, type: !943, isLocal: false, isDefinition: false, scopeLine: 52, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!943 = !DISubroutineType(types: !944)
!944 = !{null, !941}
!945 = !DISubprogram(name: "Stop", linkageName: "_ZN11TimeAnalyze4StopEv", scope: !920, file: !921, line: 58, type: !943, isLocal: false, isDefinition: false, scopeLine: 58, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!946 = !DISubprogram(name: "Reset", linkageName: "_ZN11TimeAnalyze5ResetEv", scope: !920, file: !921, line: 64, type: !943, isLocal: false, isDefinition: false, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!947 = !DISubprogram(name: "Print", linkageName: "_ZN11TimeAnalyze5PrintEv", scope: !920, file: !921, line: 70, type: !943, isLocal: false, isDefinition: false, scopeLine: 70, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!948 = !{!"TimeAnalyze"}
!949 = !{!"void.string.0._Bool.0._Bool.0"}
!950 = !{!"../src/TimeAnalyze.hpp"}
!951 = !DILocalVariable(name: "this", arg: 1, scope: !918, type: !952, flags: DIFlagArtificial | DIFlagObjectPointer)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 32, align: 32)
!953 = !DIExpression()
!954 = !DILocation(line: 0, scope: !918)
!955 = !DILocalVariable(name: "_analyze_name", arg: 2, scope: !918, file: !919, line: 11, type: !932)
!956 = !DIExpression(DW_OP_deref)
!957 = !DILocation(line: 11, column: 33, scope: !918)
!958 = !DILocalVariable(name: "_debug", arg: 3, scope: !918, file: !919, line: 11, type: !22)
!959 = !DILocation(line: 11, column: 53, scope: !918)
!960 = !DILocalVariable(name: "start", arg: 4, scope: !918, file: !919, line: 11, type: !22)
!961 = !DILocation(line: 11, column: 66, scope: !918)
!962 = !DILocation(line: 25, column: 13, scope: !963)
!963 = !DILexicalBlockFile(scope: !918, file: !921, discriminator: 0)
!964 = !DILocation(line: 28, column: 13, scope: !963)
!965 = !DILocation(line: 31, column: 13, scope: !963)
!966 = !DILocation(line: 34, column: 13, scope: !963)
!967 = !DILocation(line: 37, column: 9, scope: !963)
!968 = !DILocation(line: 11, column: 14, scope: !969)
!969 = !DILexicalBlockFile(scope: !918, file: !919, discriminator: 0)
!970 = !DILocation(line: 13, column: 5, scope: !971)
!971 = distinct !DILexicalBlock(scope: !969, file: !919, line: 11, column: 72)
!972 = !DILocation(line: 13, column: 10, scope: !971)
!973 = !DILocation(line: 14, column: 13, scope: !971)
!974 = !DILocation(line: 14, column: 5, scope: !971)
!975 = !DILocation(line: 14, column: 11, scope: !971)
!976 = !DILocation(line: 15, column: 8, scope: !977)
!977 = distinct !DILexicalBlock(scope: !971, file: !919, line: 15, column: 8)
!978 = !DILocation(line: 15, column: 8, scope: !971)
!979 = !DILocation(line: 16, column: 9, scope: !977)
!980 = !DILocation(line: 16, column: 9, scope: !981)
!981 = !DILexicalBlockFile(scope: !977, file: !919, discriminator: 1)
!982 = !DILocation(line: 18, column: 1, scope: !971)
!983 = !DILocation(line: 18, column: 1, scope: !984)
!984 = !DILexicalBlockFile(scope: !969, file: !919, discriminator: 1)
!985 = !DILocation(line: 18, column: 1, scope: !986)
!986 = !DILexicalBlockFile(scope: !971, file: !919, discriminator: 2)
!987 = !{!"basic_string"}
!988 = !{!"C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/include/c++/7.2.1\5Cbits/basic_string.h"}
!989 = !{!"operator="}
!990 = !{!"class std::__cxx11::basic_string<char> .const class std::__cxx11::basic_string<char> &.0"}
!991 = distinct !DISubprogram(name: "Start", linkageName: "_ZN11TimeAnalyze5StartEv", scope: !920, file: !919, line: 20, type: !943, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !942, variables: !2)
!992 = !{!"Start"}
!993 = !DILocalVariable(name: "this", arg: 1, scope: !991, type: !952, flags: DIFlagArtificial | DIFlagObjectPointer)
!994 = !DILocation(line: 0, scope: !991)
!995 = !DILocation(line: 22, column: 8, scope: !996)
!996 = distinct !DILexicalBlock(scope: !991, file: !919, line: 22, column: 8)
!997 = !DILocation(line: 22, column: 8, scope: !991)
!998 = !DILocation(line: 23, column: 21, scope: !999)
!999 = distinct !DILexicalBlock(scope: !996, file: !919, line: 22, column: 14)
!1000 = !DILocation(line: 23, column: 9, scope: !999)
!1001 = !DILocation(line: 23, column: 19, scope: !999)
!1002 = !DILocation(line: 24, column: 5, scope: !999)
!1003 = !DILocation(line: 25, column: 1, scope: !991)
!1004 = !{!"~basic_string"}
!1005 = !{!"clock"}
!1006 = !{!"clock_t."}
!1007 = !{!"C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Ctime.h"}
!1008 = !{!"t"}
!1009 = distinct !DISubprogram(name: "Stop", linkageName: "_ZN11TimeAnalyze4StopEv", scope: !920, file: !919, line: 27, type: !943, isLocal: false, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !945, variables: !2)
!1010 = !{!"Stop"}
!1011 = !DILocalVariable(name: "this", arg: 1, scope: !1009, type: !952, flags: DIFlagArtificial | DIFlagObjectPointer)
!1012 = !DILocation(line: 0, scope: !1009)
!1013 = !DILocation(line: 29, column: 8, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1009, file: !919, line: 29, column: 8)
!1015 = !DILocation(line: 29, column: 8, scope: !1009)
!1016 = !DILocation(line: 30, column: 24, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1014, file: !919, line: 29, column: 14)
!1018 = !DILocation(line: 30, column: 34, scope: !1017)
!1019 = !DILocation(line: 30, column: 32, scope: !1017)
!1020 = !DILocation(line: 30, column: 9, scope: !1017)
!1021 = !DILocation(line: 30, column: 22, scope: !1017)
!1022 = !DILocation(line: 31, column: 22, scope: !1017)
!1023 = !DILocation(line: 31, column: 9, scope: !1017)
!1024 = !DILocation(line: 31, column: 19, scope: !1017)
!1025 = !DILocation(line: 33, column: 13, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1017, file: !919, line: 33, column: 13)
!1027 = !DILocation(line: 33, column: 27, scope: !1026)
!1028 = !DILocation(line: 33, column: 25, scope: !1026)
!1029 = !DILocation(line: 33, column: 13, scope: !1017)
!1030 = !DILocation(line: 34, column: 27, scope: !1026)
!1031 = !DILocation(line: 34, column: 13, scope: !1026)
!1032 = !DILocation(line: 34, column: 25, scope: !1026)
!1033 = !DILocation(line: 36, column: 12, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1017, file: !919, line: 36, column: 12)
!1035 = !DILocation(line: 36, column: 26, scope: !1034)
!1036 = !DILocation(line: 36, column: 24, scope: !1034)
!1037 = !DILocation(line: 36, column: 12, scope: !1017)
!1038 = !DILocation(line: 37, column: 27, scope: !1034)
!1039 = !DILocation(line: 37, column: 13, scope: !1034)
!1040 = !DILocation(line: 37, column: 25, scope: !1034)
!1041 = !DILocation(line: 39, column: 9, scope: !1017)
!1042 = !DILocation(line: 39, column: 21, scope: !1017)
!1043 = !DILocation(line: 40, column: 5, scope: !1017)
!1044 = !DILocation(line: 41, column: 1, scope: !1009)
!1045 = distinct !DISubprogram(name: "Reset", linkageName: "_ZN11TimeAnalyze5ResetEv", scope: !920, file: !919, line: 44, type: !943, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !946, variables: !2)
!1046 = !{!"Reset"}
!1047 = !DILocalVariable(name: "this", arg: 1, scope: !1045, type: !952, flags: DIFlagArtificial | DIFlagObjectPointer)
!1048 = !DILocation(line: 0, scope: !1045)
!1049 = !DILocation(line: 46, column: 8, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1045, file: !919, line: 46, column: 8)
!1051 = !DILocation(line: 46, column: 8, scope: !1045)
!1052 = !DILocation(line: 47, column: 9, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1050, file: !919, line: 46, column: 14)
!1054 = !DILocation(line: 47, column: 19, scope: !1053)
!1055 = !DILocation(line: 48, column: 9, scope: !1053)
!1056 = !DILocation(line: 48, column: 19, scope: !1053)
!1057 = !DILocation(line: 49, column: 9, scope: !1053)
!1058 = !DILocation(line: 49, column: 22, scope: !1053)
!1059 = !DILocation(line: 50, column: 9, scope: !1053)
!1060 = !DILocation(line: 50, column: 21, scope: !1053)
!1061 = !DILocation(line: 51, column: 9, scope: !1053)
!1062 = !DILocation(line: 51, column: 21, scope: !1053)
!1063 = !DILocation(line: 52, column: 9, scope: !1053)
!1064 = !DILocation(line: 52, column: 22, scope: !1053)
!1065 = !DILocation(line: 53, column: 5, scope: !1053)
!1066 = !DILocation(line: 54, column: 1, scope: !1045)
!1067 = distinct !DISubprogram(name: "Print", linkageName: "_ZN11TimeAnalyze5PrintEv", scope: !920, file: !919, line: 56, type: !943, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !947, variables: !2)
!1068 = !{!"Print"}
!1069 = !DILocalVariable(name: "this", arg: 1, scope: !1067, type: !952, flags: DIFlagArtificial | DIFlagObjectPointer)
!1070 = !DILocation(line: 0, scope: !1067)
!1071 = !DILocation(line: 58, column: 8, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1067, file: !919, line: 58, column: 8)
!1073 = !DILocation(line: 58, column: 8, scope: !1067)
!1074 = !DILocation(line: 60, column: 13, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1072, file: !919, line: 59, column: 5)
!1076 = !DILocation(line: 61, column: 9, scope: !1075)
!1077 = !DILocation(line: 61, column: 36, scope: !1075)
!1078 = !DILocation(line: 61, column: 33, scope: !1079)
!1079 = !DILexicalBlockFile(scope: !1075, file: !919, discriminator: 1)
!1080 = !DILocation(line: 61, column: 49, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !1075, file: !919, discriminator: 2)
!1082 = !DILocation(line: 62, column: 9, scope: !1075)
!1083 = !DILocation(line: 62, column: 40, scope: !1075)
!1084 = !DILocation(line: 62, column: 37, scope: !1079)
!1085 = !DILocation(line: 62, column: 53, scope: !1081)
!1086 = !DILocation(line: 63, column: 9, scope: !1075)
!1087 = !DILocation(line: 63, column: 49, scope: !1075)
!1088 = !DILocation(line: 63, column: 61, scope: !1075)
!1089 = !DILocation(line: 63, column: 45, scope: !1079)
!1090 = !DILocation(line: 64, column: 9, scope: !1075)
!1091 = !DILocation(line: 64, column: 49, scope: !1075)
!1092 = !DILocation(line: 64, column: 61, scope: !1075)
!1093 = !DILocation(line: 64, column: 45, scope: !1079)
!1094 = !DILocation(line: 65, column: 9, scope: !1075)
!1095 = !DILocation(line: 65, column: 49, scope: !1075)
!1096 = !DILocation(line: 65, column: 59, scope: !1075)
!1097 = !DILocation(line: 65, column: 97, scope: !1075)
!1098 = !DILocation(line: 65, column: 86, scope: !1075)
!1099 = !DILocation(line: 65, column: 45, scope: !1079)
!1100 = !DILocation(line: 66, column: 9, scope: !1075)
!1101 = !DILocation(line: 66, column: 37, scope: !1075)
!1102 = !DILocation(line: 66, column: 47, scope: !1075)
!1103 = !DILocation(line: 66, column: 33, scope: !1079)
!1104 = !DILocation(line: 67, column: 9, scope: !1075)
!1105 = !DILocation(line: 67, column: 16, scope: !1079)
!1106 = !DILocation(line: 69, column: 5, scope: !1075)
!1107 = !DILocation(line: 70, column: 1, scope: !1067)
!1108 = !{!"std::operator<<"}
!1109 = !{!"basic_ostream<char, struct std::char_traits<char> > .basic_ostream<char, struct std::char_traits<char> > &.0.const char *.1"}
!1110 = !{!"C:/Xilinx/SDK/2018.1/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/include/c++/7.2.1\5Costream"}
!1111 = !{!"basic_ostream<char, struct std::char_traits<char> > .basic_ostream<char, struct std::char_traits<char> > &.0.const basic_string<char, struct std::char_traits<char>, class std::allocator<char> > &.0"}
!1112 = !{!"operator<<"}
!1113 = !{!"__ostream_type .__ostream_type &(*)(__ostream_type &).1"}
!1114 = !{!"std::endl"}
!1115 = !{!"basic_ostream<char, struct std::char_traits<char> > .basic_ostream<char, struct std::char_traits<char> > &.0"}
!1116 = !{!"__ostream_type .int.0"}
!1117 = !{!"__ostream_type .double.0"}
!1118 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_TimeAnalyze.cpp", scope: !1, file: !1, type: !1119, isLocal: true, isDefinition: true, flags: DIFlagArtificial, isOptimized: false, unit: !0, variables: !2)
!1119 = !DISubroutineType(types: !2)
!1120 = !DILocation(line: 0, scope: !1118)
