; ModuleID = 'C:/Users/yakup/workspace/bitirme_v4/Release/_sds/vhls/sobel_accel/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i386-w64-mingw32"

@sobel_accel_str = internal unnamed_addr constant [12 x i8] c"sobel_accel\00"
@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_src_mat_OC_rows_OC_s = internal unnamed_addr constant [21 x i8] c"_src_mat.rows.read_c\00"
@p_src_mat_OC_cols_OC_s = internal unnamed_addr constant [21 x i8] c"_src_mat.cols.read_c\00"
@p_src_OC_V_OC_V_str = internal unnamed_addr constant [9 x i8] c"_src.V.V\00"
@p_dsty_OC_V_OC_V_str = internal unnamed_addr constant [10 x i8] c"_dsty.V.V\00"
@p_dstx_OC_V_OC_V_str = internal unnamed_addr constant [10 x i8] c"_dstx.V.V\00"
@p_dst_maty_OC_cols_OC = internal unnamed_addr constant [22 x i8] c"_dst_maty.cols.read_c\00"
@p_dst_matx_OC_rows_OC = internal unnamed_addr constant [22 x i8] c"_dst_matx.rows.read_c\00"
@p_dst_matx_OC_cols_OC = internal unnamed_addr constant [22 x i8] c"_dst_matx.cols.read_c\00"
@p_str4 = private unnamed_addr constant [12 x i8] c"hls_label_3\00", align 1
@p_str3 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1
@p_str20 = private unnamed_addr constant [9 x i8] c"Col_Loop\00", align 1
@p_str2 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str14 = private unnamed_addr constant [9 x i8] c"Row_Loop\00", align 1
@p_str11 = private unnamed_addr constant [15 x i8] c"Clear_Row_Loop\00", align 1
@p_str10 = private unnamed_addr constant [13 x i8] c"RAM_S2P_BRAM\00", align 1
@p_str1 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define internal fastcc void @xFSobelFilter3x3(i8* %p_src_mat_V_V, i8* %p_gradx_mat_V_V, i8* %p_grady_mat_V_V, i32* nocapture %p_src_mat_rows_read, i32* nocapture %p_src_mat_cols_read) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_grady_mat_V_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_7 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_gradx_mat_V_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_src_mat_V_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %buf_0_V = alloca [640 x i8], align 1
  %buf_1_V = alloca [640 x i8], align 1
  %buf_2_V = alloca [640 x i8], align 1
  %empty_9 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %p_src_mat_cols_read, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_10 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %p_src_mat_rows_read, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_src_mat_rows_read_1 = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %p_src_mat_rows_read)
  %p_src_mat_cols_read_1 = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %p_src_mat_cols_read)
  %tmp_1 = trunc i32 %p_src_mat_rows_read_1 to i16
  %tmp_2 = trunc i32 %p_src_mat_cols_read_1 to i16
  call void (...)* @_ssdm_op_SpecMemCore([640 x i8]* %buf_0_V, [640 x i8]* %buf_1_V, [640 x i8]* %buf_2_V, [1 x i8]* @p_str, [13 x i8]* @p_str10, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %0

; <label>:0                                       ; preds = %1, %entry
  %p_1_i_i = phi i13 [ 0, %entry ], [ %col_V, %1 ]
  %tmp_1_cast_i_i = zext i13 %p_1_i_i to i16
  %tmp_2_i_i = icmp ult i16 %tmp_1_cast_i_i, %tmp_2
  %col_V = add i13 %p_1_i_i, 1
  br i1 %tmp_2_i_i, label %1, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %0
  %p_5_i_i = alloca i2
  %p_4_i_i = alloca i2
  %p_3_i_i = alloca i2
  %tmp_5_cast100_i_i = zext i16 %tmp_1 to i17
  %op2_assign = add i17 %tmp_5_cast100_i_i, 1
  br label %.preheader.i.i

; <label>:1                                       ; preds = %0
  %tmp_1_i_i = zext i13 %p_1_i_i to i32
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str11) nounwind
  %tmp_4_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str11)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 640, i32 640, i32 0, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %buf_0_V_addr = getelementptr [640 x i8]* %buf_0_V, i32 0, i32 %tmp_1_i_i
  store i8 0, i8* %buf_0_V_addr, align 1
  %tmp_V = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_src_mat_V_V)
  %buf_1_V_addr = getelementptr [640 x i8]* %buf_1_V, i32 0, i32 %tmp_1_i_i
  store i8 %tmp_V, i8* %buf_1_V_addr, align 1
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str11, i32 %tmp_4_i_i)
  br label %0

.preheader.i.i:                                   ; preds = %"ProcessSobel3x3<480, 640, 0, 0, 1, 0, 0, 640>.exit.i.i", %.preheader.preheader.i.i
  %p_2_i_i = phi i13 [ 2, %.preheader.preheader.i.i ], [ %p_i_i_15, %"ProcessSobel3x3<480, 640, 0, 0, 1, 0, 0, 640>.exit.i.i" ]
  %p_6_i_i = phi i13 [ 1, %.preheader.preheader.i.i ], [ %row_V, %"ProcessSobel3x3<480, 640, 0, 0, 1, 0, 0, 640>.exit.i.i" ]
  %tmp_6_cast_i_i = zext i13 %p_6_i_i to i17
  %tmp_7_i_i = icmp ult i17 %tmp_6_cast_i_i, %op2_assign
  br i1 %tmp_7_i_i, label %_ifconv, label %.exit

_ifconv:                                          ; preds = %.preheader.i.i
  %p_5_i_i_load = load i2* %p_5_i_i
  %p_4_i_i_load = load i2* %p_4_i_i
  %p_3_i_i_load = load i2* %p_3_i_i
  %tmp_6_cast99_i_i = zext i13 %p_6_i_i to i16
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str14) nounwind
  %tmp_10_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str14)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 480, i32 480, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_8_i_i = icmp eq i13 %p_2_i_i, 2
  %tmp_9_i_i = icmp eq i13 %p_2_i_i, 0
  %tmp_i_i = icmp eq i13 %p_2_i_i, 1
  %p_i_i = select i1 %tmp_i_i, i2 -2, i2 %p_3_i_i_load
  %p_1_i_i_12 = select i1 %tmp_i_i, i2 0, i2 %p_4_i_i_load
  %p_2_i_i_13 = select i1 %tmp_i_i, i2 1, i2 %p_5_i_i_load
  %sel_tmp1 = xor i1 %tmp_8_i_i, true
  %sel_tmp2 = and i1 %tmp_9_i_i, %sel_tmp1
  %sel_tmp = zext i1 %sel_tmp2 to i2
  %tmp = or i1 %sel_tmp2, %tmp_8_i_i
  %p_0455_3_i_i = select i1 %tmp, i2 %sel_tmp, i2 %p_i_i
  %sel_tmp4 = select i1 %sel_tmp2, i2 -2, i2 1
  %p_0449_3_i_i = select i1 %tmp, i2 %sel_tmp4, i2 %p_1_i_i_12
  %sel_tmp8 = select i1 %sel_tmp2, i2 0, i2 -2
  %p_0443_3_i_i = select i1 %tmp, i2 %sel_tmp8, i2 %p_2_i_i_13
  %tmp_3_i_i = icmp ult i16 %tmp_6_cast99_i_i, %tmp_1
  %tmp_3 = trunc i13 %p_2_i_i to i2
  store i2 %p_0455_3_i_i, i2* %p_3_i_i
  store i2 %p_0449_3_i_i, i2* %p_4_i_i
  store i2 %p_0443_3_i_i, i2* %p_5_i_i
  br label %2

; <label>:2                                       ; preds = %"xfPackPixels<1, 0, 0>.exit393.i.i.i", %_ifconv
  %src_buf3_V_0_i_i = phi i8 [ 0, %_ifconv ], [ %src_buf3_0_V, %"xfPackPixels<1, 0, 0>.exit393.i.i.i" ]
  %src_buf2_0_V = phi i8 [ 0, %_ifconv ], [ %buf1_V, %"xfPackPixels<1, 0, 0>.exit393.i.i.i" ]
  %src_buf2_V_0_i_i = phi i8 [ 0, %_ifconv ], [ %src_buf2_0_V, %"xfPackPixels<1, 0, 0>.exit393.i.i.i" ]
  %src_buf3_0_V = phi i8 [ 0, %_ifconv ], [ %buf2_V, %"xfPackPixels<1, 0, 0>.exit393.i.i.i" ]
  %src_buf1_0_V = phi i8 [ 0, %_ifconv ], [ %buf0_V, %"xfPackPixels<1, 0, 0>.exit393.i.i.i" ]
  %src_buf1_V_0_i_i = phi i8 [ 0, %_ifconv ], [ %src_buf1_0_V, %"xfPackPixels<1, 0, 0>.exit393.i.i.i" ]
  %p_0177_0_i_i_i = phi i13 [ 0, %_ifconv ], [ %col_V_1, %"xfPackPixels<1, 0, 0>.exit393.i.i.i" ]
  %tmp_11_cast_i_i = zext i13 %p_0177_0_i_i_i to i16
  %tmp_12_i_i = icmp ult i16 %tmp_11_cast_i_i, %tmp_2
  %col_V_1 = add i13 %p_0177_0_i_i_i, 1
  br i1 %tmp_12_i_i, label %3, label %"ProcessSobel3x3<480, 640, 0, 0, 1, 0, 0, 640>.exit.i.i"

; <label>:3                                       ; preds = %2
  %tmp_11_i_i = zext i13 %p_0177_0_i_i_i to i32
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str20) nounwind
  %tmp_13_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str20)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 640, i32 640, i32 0, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  br i1 %tmp_3_i_i, label %4, label %6

; <label>:4                                       ; preds = %3
  %tmp_V_3 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_src_mat_V_V)
  %buf_0_V_addr_1 = getelementptr [640 x i8]* %buf_0_V, i32 0, i32 %tmp_11_i_i
  %buf_1_V_addr_1 = getelementptr [640 x i8]* %buf_1_V, i32 0, i32 %tmp_11_i_i
  %buf_2_V_addr = getelementptr [640 x i8]* %buf_2_V, i32 0, i32 %tmp_11_i_i
  switch i2 %tmp_3, label %branch2.i.i [
    i2 0, label %branch0.i.i
    i2 1, label %branch1.i.i
  ]

; <label>:5                                       ; preds = %branch2.i.i, %branch1.i.i, %branch0.i.i
  br label %8

; <label>:6                                       ; preds = %3
  %buf_0_V_addr_2 = getelementptr [640 x i8]* %buf_0_V, i32 0, i32 %tmp_11_i_i
  %buf_1_V_addr_2 = getelementptr [640 x i8]* %buf_1_V, i32 0, i32 %tmp_11_i_i
  %buf_2_V_addr_1 = getelementptr [640 x i8]* %buf_2_V, i32 0, i32 %tmp_11_i_i
  switch i2 %p_0443_3_i_i, label %branch5.i.i [
    i2 0, label %branch3.i.i
    i2 1, label %branch4.i.i
  ]

; <label>:7                                       ; preds = %branch5.i.i, %branch4.i.i, %branch3.i.i
  br label %8

; <label>:8                                       ; preds = %7, %5
  %buf_0_V_addr_3 = getelementptr [640 x i8]* %buf_0_V, i32 0, i32 %tmp_11_i_i
  %buf_0_V_load = load i8* %buf_0_V_addr_3, align 1
  %buf_1_V_addr_3 = getelementptr [640 x i8]* %buf_1_V, i32 0, i32 %tmp_11_i_i
  %buf_1_V_load = load i8* %buf_1_V_addr_3, align 1
  %buf_2_V_addr_2 = getelementptr [640 x i8]* %buf_2_V, i32 0, i32 %tmp_11_i_i
  %buf_2_V_load = load i8* %buf_2_V_addr_2, align 1
  %buf0_V = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %buf_0_V_load, i8 %buf_1_V_load, i8 %buf_2_V_load, i2 %p_0455_3_i_i)
  %buf1_V = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %buf_0_V_load, i8 %buf_1_V_load, i8 %buf_2_V_load, i2 %p_0449_3_i_i)
  %buf2_V = call i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8 %buf_0_V_load, i8 %buf_1_V_load, i8 %buf_2_V_load, i2 %p_0443_3_i_i)
  %call_ret_i_i = call fastcc { i8, i8 } @"xFSobel3x3<1, 0, 0>"(i8 %src_buf1_V_0_i_i, i8 %src_buf1_0_V, i8 %buf0_V, i8 %src_buf2_V_0_i_i, i8 %buf1_V, i8 %src_buf3_V_0_i_i, i8 %src_buf3_0_V, i8 %buf2_V)
  %GradientValuesX_0_V = extractvalue { i8, i8 } %call_ret_i_i, 0
  %GradientValuesY_0_V = extractvalue { i8, i8 } %call_ret_i_i, 1
  %tmp_15_i_i = icmp eq i13 %p_0177_0_i_i_i, 0
  br i1 %tmp_15_i_i, label %"xfPackPixels<1, 0, 0>.exit393.i.i.i", label %.preheader851.0.i.i

.preheader851.0.i.i:                              ; preds = %8
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %p_gradx_mat_V_V, i8 %GradientValuesX_0_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %p_grady_mat_V_V, i8 %GradientValuesY_0_V)
  br label %"xfPackPixels<1, 0, 0>.exit393.i.i.i"

"xfPackPixels<1, 0, 0>.exit393.i.i.i":            ; preds = %.preheader851.0.i.i, %8
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str20, i32 %tmp_13_i_i)
  br label %2

"ProcessSobel3x3<480, 640, 0, 0, 1, 0, 0, 640>.exit.i.i": ; preds = %2
  %GradientValuesX_0_V_2 = call fastcc i8 @"xFGradientX3x3<0, 0>"(i8 %src_buf1_V_0_i_i, i8 0, i8 %src_buf2_V_0_i_i, i8 0, i8 %src_buf3_V_0_i_i, i8 0)
  %GradientValuesY_0_V_2 = call fastcc i8 @"xFGradientY3x3<0, 0>"(i8 %src_buf1_V_0_i_i, i8 %src_buf1_0_V, i8 0, i8 %src_buf3_V_0_i_i, i8 %src_buf3_0_V, i8 0)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %p_gradx_mat_V_V, i8 %GradientValuesX_0_V_2)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %p_grady_mat_V_V, i8 %GradientValuesY_0_V_2)
  %row_ind_V = add i13 %p_2_i_i, 1
  %tmp_14_i_i = icmp eq i13 %row_ind_V, 3
  %p_i_i_15 = select i1 %tmp_14_i_i, i13 0, i13 %row_ind_V
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str14, i32 %tmp_10_i_i)
  %row_V = add i13 %p_6_i_i, 1
  br label %.preheader.i.i

branch0.i.i:                                      ; preds = %4
  store i8 %tmp_V_3, i8* %buf_0_V_addr_1, align 1
  br label %5

branch1.i.i:                                      ; preds = %4
  store i8 %tmp_V_3, i8* %buf_1_V_addr_1, align 1
  br label %5

branch2.i.i:                                      ; preds = %4
  store i8 %tmp_V_3, i8* %buf_2_V_addr, align 1
  br label %5

branch3.i.i:                                      ; preds = %6
  store i8 0, i8* %buf_0_V_addr_2, align 1
  br label %7

branch4.i.i:                                      ; preds = %6
  store i8 0, i8* %buf_1_V_addr_2, align 1
  br label %7

branch5.i.i:                                      ; preds = %6
  store i8 0, i8* %buf_2_V_addr_1, align 1
  br label %7

.exit:                                            ; preds = %.preheader.i.i
  ret void
}

define internal fastcc { i8, i8 } @"xFSobel3x3<1, 0, 0>"(i8 %src_buf1_0_V_read, i8 %src_buf1_1_V_read, i8 %src_buf1_2_V_read, i8 %src_buf2_0_V_read, i8 %src_buf2_2_V_read, i8 %src_buf3_0_V_read, i8 %src_buf3_1_V_read, i8 %src_buf3_2_V_read) readnone noinline {
  %src_buf3_2_V_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %src_buf3_2_V_read)
  %src_buf3_1_V_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %src_buf3_1_V_read)
  %src_buf3_0_V_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %src_buf3_0_V_read)
  %src_buf2_2_V_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %src_buf2_2_V_read)
  %src_buf2_0_V_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %src_buf2_0_V_read)
  %src_buf1_2_V_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %src_buf1_2_V_read)
  %src_buf1_1_V_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %src_buf1_1_V_read)
  %src_buf1_0_V_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %src_buf1_0_V_read)
  %GradientvaluesX_V_wr = call fastcc i8 @"xFGradientX3x3<0, 0>"(i8 %src_buf1_0_V_read_1, i8 %src_buf1_2_V_read_1, i8 %src_buf2_0_V_read_1, i8 %src_buf2_2_V_read_1, i8 %src_buf3_0_V_read_1, i8 %src_buf3_2_V_read_1)
  %GradientvaluesY_V_wr = call fastcc i8 @"xFGradientY3x3<0, 0>"(i8 %src_buf1_0_V_read_1, i8 %src_buf1_1_V_read_1, i8 %src_buf1_2_V_read_1, i8 %src_buf3_0_V_read_1, i8 %src_buf3_1_V_read_1, i8 %src_buf3_2_V_read_1)
  %mrv = insertvalue { i8, i8 } undef, i8 %GradientvaluesX_V_wr, 0
  %mrv_1 = insertvalue { i8, i8 } %mrv, i8 %GradientvaluesY_V_wr, 1
  ret { i8, i8 } %mrv_1
}

define internal fastcc i8 @"xFGradientY3x3<0, 0>"(i8 %t0_V, i8 %t1_V, i8 %t2_V, i8 %b0_V, i8 %b1_V, i8 %b2_V) readnone noinline {
_ifconv:
  %b2_V_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %b2_V)
  %b1_V_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %b1_V)
  %b0_V_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %b0_V)
  %t2_V_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %t2_V)
  %t1_V_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %t1_V)
  %t0_V_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %t0_V)
  %M00 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %t1_V_read, i1 false)
  %M00_cast = zext i9 %M00 to i10
  %M01 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %b1_V_read, i1 false)
  %M01_cast = zext i9 %M01 to i10
  %lhs_V = zext i8 %b0_V_read to i9
  %rhs_V = zext i8 %b2_V_read to i9
  %r_V = add i9 %lhs_V, %rhs_V
  %A00_cast = zext i9 %r_V to i11
  %lhs_V_1 = zext i8 %t0_V_read to i9
  %rhs_V_1 = zext i8 %t2_V_read to i9
  %r_V_1 = add i9 %lhs_V_1, %rhs_V_1
  %S00_cast = zext i9 %r_V_1 to i11
  %out_pix = sub i10 %M01_cast, %M00_cast
  %out_pix_cast = sext i10 %out_pix to i11
  %out_pix_1 = add i11 %A00_cast, %out_pix_cast
  %out_pix_2 = sub i11 %out_pix_1, %S00_cast
  %g_y_V = trunc i11 %out_pix_2 to i8
  %tmp_5 = call i1 @_ssdm_op_BitSelect.i1.i11.i32(i11 %out_pix_2, i32 10)
  %tmp_6 = call i3 @_ssdm_op_PartSelect.i3.i11.i32.i32(i11 %out_pix_2, i32 8, i32 10)
  %icmp = icmp sgt i3 %tmp_6, 0
  %not_tmp_s = xor i1 %tmp_5, true
  %p_cast = select i1 %not_tmp_s, i8 -1, i8 0
  %tmp = or i1 %tmp_5, %icmp
  %agg_result_V_1 = select i1 %tmp, i8 %p_cast, i8 %g_y_V
  ret i8 %agg_result_V_1
}

define internal fastcc i8 @"xFGradientX3x3<0, 0>"(i8 %t0_V, i8 %t2_V, i8 %m0_V, i8 %m2_V, i8 %b0_V, i8 %b2_V) readnone noinline {
_ifconv:
  %b2_V_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %b2_V)
  %b0_V_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %b0_V)
  %m2_V_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %m2_V)
  %m0_V_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %m0_V)
  %t2_V_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %t2_V)
  %t0_V_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %t0_V)
  %M00 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %m0_V_read, i1 false)
  %M00_cast = zext i9 %M00 to i10
  %M01 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %m2_V_read, i1 false)
  %M01_cast = zext i9 %M01 to i10
  %lhs_V = zext i8 %t2_V_read to i9
  %rhs_V = zext i8 %b2_V_read to i9
  %r_V = add i9 %lhs_V, %rhs_V
  %A00_cast = zext i9 %r_V to i11
  %lhs_V_2 = zext i8 %t0_V_read to i9
  %rhs_V_2 = zext i8 %b0_V_read to i9
  %r_V_2 = add i9 %lhs_V_2, %rhs_V_2
  %S00_cast = zext i9 %r_V_2 to i11
  %out_pix = sub i10 %M01_cast, %M00_cast
  %out_pix_cast = sext i10 %out_pix to i11
  %out_pix_3 = add i11 %A00_cast, %out_pix_cast
  %out_pix_4 = sub i11 %out_pix_3, %S00_cast
  %g_x_V = trunc i11 %out_pix_4 to i8
  %tmp_8 = call i1 @_ssdm_op_BitSelect.i1.i11.i32(i11 %out_pix_4, i32 10)
  %tmp_9 = call i3 @_ssdm_op_PartSelect.i3.i11.i32.i32(i11 %out_pix_4, i32 8, i32 10)
  %icmp = icmp sgt i3 %tmp_9, 0
  %not_tmp_s = xor i1 %tmp_8, true
  %p_cast = select i1 %not_tmp_s, i8 -1, i8 0
  %tmp = or i1 %tmp_8, %icmp
  %agg_result_V_1 = select i1 %tmp, i8 %p_cast, i8 %g_x_V
  ret i8 %agg_result_V_1
}

define void @sobel_accel(i8* %p_src_allocatedFlag, i32* %p_src_rows, i32* %p_src_cols, i32* %p_src_size, [307200 x i8]* %p_src_data_V, i8* %p_dstgx_allocatedFlag, i32* %p_dstgx_rows, i32* %p_dstgx_cols, i32* %p_dstgx_size, [307200 x i8]* %p_dstgx_data_V, i8* %p_dstgy_allocatedFlag, i32* %p_dstgy_rows, i32* %p_dstgy_cols, i32* %p_dstgy_size, [307200 x i8]* %p_dstgy_data_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %p_src_allocatedFlag), !map !230
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %p_src_rows), !map !234
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %p_src_cols), !map !238
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %p_src_size), !map !242
  call void (...)* @_ssdm_op_SpecBitsMap([307200 x i8]* %p_src_data_V), !map !246
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %p_dstgx_allocatedFlag), !map !252
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %p_dstgx_rows), !map !256
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %p_dstgx_cols), !map !260
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %p_dstgx_size), !map !264
  call void (...)* @_ssdm_op_SpecBitsMap([307200 x i8]* %p_dstgx_data_V), !map !268
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %p_dstgy_allocatedFlag), !map !272
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %p_dstgy_rows), !map !276
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %p_dstgy_cols), !map !280
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %p_dstgy_size), !map !284
  call void (...)* @_ssdm_op_SpecBitsMap([307200 x i8]* %p_dstgy_data_V), !map !288
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @sobel_accel_str) nounwind
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @p_str) nounwind
  %p_src_rows_read = call i32 @_ssdm_op_Read.ap_auto.i32P(i32* %p_src_rows)
  %p_src_cols_read = call i32 @_ssdm_op_Read.ap_auto.i32P(i32* %p_src_cols)
  %p_dstgx_rows_read = call i32 @_ssdm_op_Read.ap_auto.i32P(i32* %p_dstgx_rows)
  %p_dstgx_cols_read = call i32 @_ssdm_op_Read.ap_auto.i32P(i32* %p_dstgx_cols)
  %p_dstgy_cols_read = call i32 @_ssdm_op_Read.ap_auto.i32P(i32* %p_dstgy_cols)
  call fastcc void @Sobel(i32 %p_src_rows_read, i32 %p_src_cols_read, [307200 x i8]* %p_src_data_V, i32 %p_dstgx_rows_read, i32 %p_dstgx_cols_read, [307200 x i8]* %p_dstgx_data_V, i32 %p_dstgy_cols_read, [307200 x i8]* %p_dstgy_data_V)
  ret void
}

declare i11 @llvm.part.select.i11(i11, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1)
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecMemCore(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLatency(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecInterface(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)
  ret i8 %empty
}

define weak i32 @_ssdm_op_Read.ap_fifo.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0)
  ret i32 %empty
}

define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

define weak i32 @_ssdm_op_Read.ap_auto.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

declare i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11, i32, i32) nounwind readnone

define weak i3 @_ssdm_op_PartSelect.i3.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_17 = trunc i11 %empty to i3
  ret i3 %empty_17
}

declare i20 @_ssdm_op_PartSelect.i20.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i20 @_ssdm_op_PartSelect.i20.i31.i32.i32(i31, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i13.i32.i32(i13, i32, i32) nounwind readnone

declare i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_Mux.ap_auto.3i8.i2(i8, i8, i8, i2) {
entry:
  switch i2 %3, label %case2 [
    i2 0, label %case0
    i2 1, label %case1
  ]

case0:                                            ; preds = %case2, %case1, %entry
  %merge = phi i8 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ]
  ret i8 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0
}

define weak i1 @_ssdm_op_BitSelect.i1.i11.i32(i11, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i11
  %empty_18 = shl i11 1, %empty
  %empty_19 = and i11 %0, %empty_18
  %empty_20 = icmp ne i11 %empty_19, 0
  ret i1 %empty_20
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9
  %empty_21 = zext i1 %1 to i9
  %empty_22 = shl i9 %empty, 1
  %empty_23 = or i9 %empty_22, %empty_21
  ret i9 %empty_23
}

declare i8 @_autotb_FifoWrite_i8(i8*, i8)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i8 @_autotb_FifoRead_i8(i8*)

declare i32 @_autotb_FifoRead_i32(i32*)

define internal fastcc void @Sobel_Loop_2_proc38(i32* nocapture %p_dst_matx_rows_read, i32* nocapture %p_dst_matx_cols_read, i8* %p_dstx_V_V, [307200 x i8]* nocapture %p_dst_matx_data_V, i32* nocapture %p_dst_maty_cols_read, i8* %p_dsty_V_V, [307200 x i8]* nocapture %p_dst_maty_data_V) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_dsty_V_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_24 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_dstx_V_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_25 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %p_dst_maty_cols_read, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_26 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %p_dst_matx_cols_read, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_27 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %p_dst_matx_rows_read, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_dst_matx_rows_read_1 = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %p_dst_matx_rows_read)
  %p_dst_matx_cols_read_1 = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %p_dst_matx_cols_read)
  %p_dst_maty_cols_read_1 = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %p_dst_maty_cols_read)
  %tmp = trunc i32 %p_dst_matx_cols_read_1 to i20
  %tmp_10 = trunc i32 %p_dst_maty_cols_read_1 to i20
  br label %0

; <label>:0                                       ; preds = %1, %entry
  %i1_i = phi i31 [ 0, %entry ], [ %i, %1 ]
  %i1_cast_i = zext i31 %i1_i to i32
  %tmp_11 = trunc i31 %i1_i to i20
  %tmp_20_i = icmp slt i32 %i1_cast_i, %p_dst_matx_rows_read_1
  %i = add i31 1, %i1_i
  br i1 %tmp_20_i, label %3, label %.exit

; <label>:1                                       ; preds = %2
  %empty_28 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_16_i)
  br label %0

; <label>:2                                       ; preds = %4, %3
  %j2_i = phi i31 [ 0, %3 ], [ %j, %4 ]
  %j2_cast_i = zext i31 %j2_i to i32
  %tmp_12 = trunc i31 %j2_i to i20
  %tmp_22_i = icmp slt i32 %j2_cast_i, %p_dst_matx_cols_read_1
  %j = add i31 1, %j2_i
  br i1 %tmp_22_i, label %4, label %1

; <label>:3                                       ; preds = %0
  %tmp_16_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 480, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_23_i = mul i20 %tmp, %tmp_11
  %tmp_24_i = mul i20 %tmp_10, %tmp_11
  br label %2

; <label>:4                                       ; preds = %2
  %tmp_17_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 640, i32 0, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %p_sum_i = add i20 %tmp_23_i, %tmp_12
  %p_sum_cast_i = zext i20 %p_sum_i to i32
  %tmp_V = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_dstx_V_V)
  %p_dst_matx_data_V_add = getelementptr [307200 x i8]* %p_dst_matx_data_V, i32 0, i32 %p_sum_cast_i
  store i8 %tmp_V, i8* %p_dst_matx_data_V_add, align 1
  %p_sum2_i = add i20 %tmp_24_i, %tmp_12
  %p_sum2_cast_i = zext i20 %p_sum2_i to i32
  %tmp_V_6 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %p_dsty_V_V)
  %p_dst_maty_data_V_add = getelementptr [307200 x i8]* %p_dst_maty_data_V, i32 0, i32 %p_sum2_cast_i
  store i8 %tmp_V_6, i8* %p_dst_maty_data_V_add, align 1
  %empty_29 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_17_i)
  br label %2

.exit:                                            ; preds = %0
  ret void
}

define internal fastcc void @Sobel_Loop_1_proc374(i32 %p_src_mat_rows_read, i32 %p_src_mat_cols_read, [307200 x i8]* nocapture %p_src_mat_data_V, i8* %p_src_V_V, i32 %p_dst_matx_rows_read, i32 %p_dst_matx_cols_read, i32 %p_dst_maty_cols_read, i32* %p_src_mat_rows_read_out, i32* %p_src_mat_cols_read_out, i32* %p_dst_matx_rows_read_out, i32* %p_dst_matx_cols_read_out, i32* %p_dst_maty_cols_read_out) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_src_V_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_30 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %p_src_mat_rows_read_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_dst_maty_cols_read_2 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_dst_maty_cols_read)
  %p_dst_matx_cols_read_2 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_dst_matx_cols_read)
  %p_dst_matx_rows_read_2 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_dst_matx_rows_read)
  %p_src_mat_cols_read_2 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_src_mat_cols_read)
  %p_src_mat_rows_read_2 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_src_mat_rows_read)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %p_src_mat_rows_read_out, i32 %p_src_mat_rows_read_2)
  %empty_31 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %p_src_mat_cols_read_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %p_src_mat_cols_read_out, i32 %p_src_mat_cols_read_2)
  %empty_32 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %p_dst_matx_rows_read_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %p_dst_matx_rows_read_out, i32 %p_dst_matx_rows_read_2)
  %empty_33 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %p_dst_matx_cols_read_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %p_dst_matx_cols_read_out, i32 %p_dst_matx_cols_read_2)
  %empty_34 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %p_dst_maty_cols_read_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %p_dst_maty_cols_read_out, i32 %p_dst_maty_cols_read_2)
  %tmp = trunc i32 %p_src_mat_cols_read_2 to i20
  br label %0

; <label>:0                                       ; preds = %1, %entry
  %i_i_i = phi i31 [ 0, %entry ], [ %i, %1 ]
  %i_cast_i_i = zext i31 %i_i_i to i32
  %tmp_13 = trunc i31 %i_i_i to i20
  %tmp_i_i = icmp slt i32 %i_cast_i_i, %p_src_mat_rows_read_2
  %i = add i31 1, %i_i_i
  br i1 %tmp_i_i, label %3, label %.exit

; <label>:1                                       ; preds = %2
  %empty_35 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1, i32 %tmp_14_i_i)
  br label %0

; <label>:2                                       ; preds = %4, %3
  %j_i_i = phi i31 [ 0, %3 ], [ %j, %4 ]
  %j_cast_i_i = zext i31 %j_i_i to i32
  %tmp_14 = trunc i31 %j_i_i to i20
  %tmp_i_i_36 = icmp slt i32 %j_cast_i_i, %p_src_mat_cols_read_2
  %j = add i31 1, %j_i_i
  br i1 %tmp_i_i_36, label %4, label %1

; <label>:3                                       ; preds = %0
  %tmp_14_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 480, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_21_i_i = mul i20 %tmp, %tmp_13
  br label %2

; <label>:4                                       ; preds = %2
  %tmp_15_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 1, i32 640, i32 0, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %p_sum1_i_i = add i20 %tmp_21_i_i, %tmp_14
  %p_sum1_cast_i_i = zext i20 %p_sum1_i_i to i32
  %p_src_mat_data_V_addr = getelementptr [307200 x i8]* %p_src_mat_data_V, i32 0, i32 %p_sum1_cast_i_i
  %tmp_V = load i8* %p_src_mat_data_V_addr, align 1
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %p_src_V_V, i8 %tmp_V)
  %empty_37 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2, i32 %tmp_15_i_i)
  br label %2

.exit:                                            ; preds = %0
  ret void
}

define internal fastcc void @Sobel(i32 %p_src_mat_rows_read, i32 %p_src_mat_cols_read, [307200 x i8]* nocapture %p_src_mat_data_V, i32 %p_dst_matx_rows_read, i32 %p_dst_matx_cols_read, [307200 x i8]* nocapture %p_dst_matx_data_V, i32 %p_dst_maty_cols_read, [307200 x i8]* nocapture %p_dst_maty_data_V) noinline {
codeRepl:
  %p_dst_maty_cols_read_3 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_dst_maty_cols_read)
  %p_dst_matx_cols_read_3 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_dst_matx_cols_read)
  %p_dst_matx_rows_read_3 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_dst_matx_rows_read)
  %p_src_mat_cols_read_3 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_src_mat_cols_read)
  %p_src_mat_rows_read_3 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_src_mat_rows_read)
  %p_dst_maty_cols_read_s = alloca i32, align 4
  %p_dst_matx_cols_read_s = alloca i32, align 4
  %p_dst_matx_rows_read_s = alloca i32, align 4
  %p_src_mat_cols_read_c = alloca i32, align 4
  %p_src_mat_rows_read_c = alloca i32, align 4
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  %p_src_V_V = alloca i8, align 1
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([9 x i8]* @p_src_OC_V_OC_V_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i8* %p_src_V_V, i8* %p_src_V_V)
  %empty_38 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_src_V_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_dstx_V_V = alloca i8, align 1
  %empty_39 = call i32 (...)* @_ssdm_op_SpecChannel([10 x i8]* @p_dstx_OC_V_OC_V_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i8* %p_dstx_V_V, i8* %p_dstx_V_V)
  %empty_40 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_dstx_V_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_dsty_V_V = alloca i8, align 1
  %empty_41 = call i32 (...)* @_ssdm_op_SpecChannel([10 x i8]* @p_dsty_OC_V_OC_V_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i8* %p_dsty_V_V, i8* %p_dsty_V_V)
  %empty_42 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %p_dsty_V_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_43 = call i32 (...)* @_ssdm_op_SpecChannel([21 x i8]* @p_src_mat_OC_rows_OC_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 0, i32* %p_src_mat_rows_read_c, i32* %p_src_mat_rows_read_c)
  %empty_44 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %p_src_mat_rows_read_c, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_45 = call i32 (...)* @_ssdm_op_SpecChannel([21 x i8]* @p_src_mat_OC_cols_OC_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 0, i32* %p_src_mat_cols_read_c, i32* %p_src_mat_cols_read_c)
  %empty_46 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %p_src_mat_cols_read_c, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_47 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @p_dst_matx_OC_rows_OC, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 3, i32 0, i32* %p_dst_matx_rows_read_s, i32* %p_dst_matx_rows_read_s)
  %empty_48 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %p_dst_matx_rows_read_s, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_49 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @p_dst_matx_OC_cols_OC, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 3, i32 0, i32* %p_dst_matx_cols_read_s, i32* %p_dst_matx_cols_read_s)
  %empty_50 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %p_dst_matx_cols_read_s, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_51 = call i32 (...)* @_ssdm_op_SpecChannel([22 x i8]* @p_dst_maty_OC_cols_OC, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 3, i32 0, i32* %p_dst_maty_cols_read_s, i32* %p_dst_maty_cols_read_s)
  %empty_52 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %p_dst_maty_cols_read_s, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call fastcc void @Sobel_Loop_1_proc374(i32 %p_src_mat_rows_read_3, i32 %p_src_mat_cols_read_3, [307200 x i8]* %p_src_mat_data_V, i8* %p_src_V_V, i32 %p_dst_matx_rows_read_3, i32 %p_dst_matx_cols_read_3, i32 %p_dst_maty_cols_read_3, i32* %p_src_mat_rows_read_c, i32* %p_src_mat_cols_read_c, i32* %p_dst_matx_rows_read_s, i32* %p_dst_matx_cols_read_s, i32* %p_dst_maty_cols_read_s)
  call fastcc void @xFSobelFilter3x3(i8* %p_src_V_V, i8* %p_dstx_V_V, i8* %p_dsty_V_V, i32* nocapture %p_src_mat_rows_read_c, i32* nocapture %p_src_mat_cols_read_c)
  call fastcc void @Sobel_Loop_2_proc38(i32* nocapture %p_dst_matx_rows_read_s, i32* nocapture %p_dst_matx_cols_read_s, i8* %p_dstx_V_V, [307200 x i8]* %p_dst_matx_data_V, i32* nocapture %p_dst_maty_cols_read_s, i8* %p_dsty_V_V, [307200 x i8]* %p_dst_maty_data_V)
  ret void
}

!opencl.kernels = !{!0, !7, !10, !10, !10, !10, !10, !16, !22, !28, !34, !40, !10, !43, !49, !49, !10, !52, !10, !10, !10, !55, !55, !57, !57, !59, !62, !62, !66, !70, !73, !73, !76, !49, !49, !10, !78, !10, !80, !82, !83, !85, !87, !87, !89, !89, !10, !10, !66, !10, !91, !10, !10, !10, !93, !93, !95, !95, !97, !97, !10, !10, !99, !10, !10, !10, !101, !101, !102, !102, !91, !104, !10, !10, !10, !106, !106, !97, !97, !108, !108, !110, !10, !10, !10, !106, !106, !93, !93, !112, !93, !93, !110, !106, !106, !114, !10, !112, !95, !95, !99, !10, !10, !10, !101, !101, !116, !10, !10, !10, !106, !106, !118, !118, !66, !120, !93, !93, !122, !10, !10, !10, !93, !93, !108, !108, !124, !124, !126, !128, !128, !129, !131, !131, !10, !10, !132, !138, !82, !140, !76, !78, !144, !147, !147, !10, !149, !10, !10, !10, !101, !101, !151, !151, !153, !10, !10, !99, !101, !101, !155, !157, !157, !10, !159, !131, !131, !161, !76, !78, !10, !167, !82, !131, !131, !76, !78, !10, !169, !82, !131, !131, !10, !10, !170, !131, !131, !172, !138, !82, !138, !82, !76, !78, !10, !174, !176, !131, !131, !10, !10, !177, !131, !131, !10, !10, !10, !10, !10, !10, !28, !10, !179, !181, !183, !183, !184, !10, !10, !10, !89, !89, !101, !101, !10, !186, !187, !106, !106, !189, !193, !193, !10, !194, !196, !10, !10, !10, !55, !55, !101, !101, !10, !189, !194, !196, !101, !101, !198, !10, !204, !28, !206, !206, !210, !216, !83, !85, !10, !131, !131, !10, !10, !218, !10, !10, !220, !10, !10}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!223}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"xf::Mat<XF_8UC1, 480, 640, XF_NPPC1> &", metadata !"xf::Mat<XF_8UC1, 480, 640, XF_NPPC1> &", metadata !"xf::Mat<XF_8UC1, 480, 640, XF_NPPC1> &"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"_src", metadata !"_dstgx", metadata !"_dstgy"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !9, metadata !6}
!8 = metadata !{metadata !"kernel_arg_type", metadata !"xf::Mat<0, 480, 640, 1> &", metadata !"xf::Mat<0, 480, 640, 1> &", metadata !"xf::Mat<0, 480, 640, 1> &"}
!9 = metadata !{metadata !"kernel_arg_name", metadata !"_src_mat", metadata !"_dst_matx", metadata !"_dst_maty"}
!10 = metadata !{null, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !6}
!11 = metadata !{metadata !"kernel_arg_addr_space"}
!12 = metadata !{metadata !"kernel_arg_access_qual"}
!13 = metadata !{metadata !"kernel_arg_type"}
!14 = metadata !{metadata !"kernel_arg_type_qual"}
!15 = metadata !{metadata !"kernel_arg_name"}
!16 = metadata !{null, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !6}
!17 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!18 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!19 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!20 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!22 = metadata !{null, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !6}
!23 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!24 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<typename StreamType<0>::name> &", metadata !"hls::stream<typename StreamType<0>::name> &", metadata !"hls::stream<typename StreamType<0>::name> &", metadata !"int", metadata !"int", metadata !"short", metadata !"short"}
!26 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"_src", metadata !"_gradx", metadata !"_grady", metadata !"_filter_width", metadata !"_border_type", metadata !"height", metadata !"width"}
!28 = metadata !{null, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !6}
!29 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!30 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<typename StreamType<0>::name> &", metadata !"hls::stream<typename StreamType<0>::name> &", metadata !"hls::stream<typename StreamType<0>::name> &", metadata !"uint16_t", metadata !"uint16_t"}
!32 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"_src_mat", metadata !"_gradx_mat", metadata !"_grady_mat", metadata !"img_height", metadata !"img_width"}
!34 = metadata !{null, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !6}
!35 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0}
!36 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<typename StreamType<0>::name> &", metadata !"hls::stream<typename StreamType<0>::name> &", metadata !"hls::stream<typename StreamType<0>::name> &", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename StreamType<0>::name &", metadata !"typename StreamType<0>::name &", metadata !"uint16_t &", metadata !"uint16_t &"}
!38 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"_src_mat", metadata !"_gradx_mat", metadata !"_grady_mat", metadata !"src_buf1", metadata !"src_buf2", metadata !"src_buf3", metadata !"src_buf4", metadata !"src_buf5", metadata !"src_buf6", metadata !"src_buf7", metadata !"GradientValuesX", metadata !"GradientValuesY", metadata !"inter_valx", metadata !"inter_valy", metadata !"shiftx", metadata !"shifty"}
!40 = metadata !{null, metadata !17, metadata !18, metadata !41, metadata !20, metadata !42, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!43 = metadata !{null, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !6}
!44 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!45 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<10, false> &", metadata !"int"}
!47 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!49 = metadata !{null, metadata !17, metadata !18, metadata !50, metadata !20, metadata !51, metadata !6}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!51 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!52 = metadata !{null, metadata !44, metadata !45, metadata !53, metadata !47, metadata !54, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<10, false> &", metadata !"const ap_int_base<32, true> &"}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!55 = metadata !{null, metadata !17, metadata !18, metadata !56, metadata !20, metadata !51, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!57 = metadata !{null, metadata !17, metadata !18, metadata !58, metadata !20, metadata !51, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<10, false> &"}
!59 = metadata !{null, metadata !44, metadata !45, metadata !60, metadata !47, metadata !61, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!61 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!62 = metadata !{null, metadata !63, metadata !2, metadata !64, metadata !4, metadata !65, metadata !6}
!63 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int", metadata !"int"}
!65 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!66 = metadata !{null, metadata !67, metadata !24, metadata !68, metadata !26, metadata !69, metadata !6}
!67 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*"}
!69 = metadata !{metadata !"kernel_arg_name", metadata !"src_buf1", metadata !"src_buf2", metadata !"src_buf3", metadata !"src_buf4", metadata !"src_buf5", metadata !"src_buf6", metadata !"src_buf7"}
!70 = metadata !{null, metadata !17, metadata !18, metadata !71, metadata !20, metadata !72, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &"}
!72 = metadata !{metadata !"kernel_arg_name", metadata !"a2"}
!73 = metadata !{null, metadata !44, metadata !45, metadata !74, metadata !47, metadata !75, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_int_base<4, false, true> &", metadata !"struct ap_int_base<4, false, true> &"}
!75 = metadata !{metadata !"kernel_arg_name", metadata !"bv1", metadata !"bv2"}
!76 = metadata !{null, metadata !17, metadata !18, metadata !50, metadata !20, metadata !77, metadata !6}
!77 = metadata !{metadata !"kernel_arg_name", metadata !""}
!78 = metadata !{null, metadata !17, metadata !18, metadata !79, metadata !20, metadata !21, metadata !6}
!79 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!80 = metadata !{null, metadata !44, metadata !45, metadata !81, metadata !47, metadata !54, metadata !6}
!81 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &", metadata !"int"}
!82 = metadata !{null, metadata !17, metadata !18, metadata !56, metadata !20, metadata !21, metadata !6}
!83 = metadata !{null, metadata !44, metadata !45, metadata !84, metadata !47, metadata !48, metadata !6}
!84 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &", metadata !"int"}
!85 = metadata !{null, metadata !44, metadata !45, metadata !86, metadata !47, metadata !54, metadata !6}
!86 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &", metadata !"const ap_int_base<32, true> &"}
!87 = metadata !{null, metadata !17, metadata !18, metadata !88, metadata !20, metadata !51, metadata !6}
!88 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &"}
!89 = metadata !{null, metadata !17, metadata !18, metadata !90, metadata !20, metadata !51, metadata !6}
!90 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!91 = metadata !{null, metadata !44, metadata !45, metadata !92, metadata !47, metadata !54, metadata !6}
!92 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<21, true> &", metadata !"const ap_int_base<20, true> &"}
!93 = metadata !{null, metadata !17, metadata !18, metadata !94, metadata !20, metadata !51, metadata !6}
!94 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<20, true> &"}
!95 = metadata !{null, metadata !17, metadata !18, metadata !96, metadata !20, metadata !51, metadata !6}
!96 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<21, true> &"}
!97 = metadata !{null, metadata !17, metadata !18, metadata !98, metadata !20, metadata !51, metadata !6}
!98 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<22, true> &"}
!99 = metadata !{null, metadata !44, metadata !45, metadata !100, metadata !47, metadata !54, metadata !6}
!100 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<8, false> &"}
!101 = metadata !{null, metadata !17, metadata !18, metadata !41, metadata !20, metadata !51, metadata !6}
!102 = metadata !{null, metadata !17, metadata !18, metadata !103, metadata !20, metadata !51, metadata !6}
!103 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, true> &"}
!104 = metadata !{null, metadata !44, metadata !45, metadata !105, metadata !47, metadata !54, metadata !6}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<22, true> &", metadata !"const ap_int_base<9, false> &"}
!106 = metadata !{null, metadata !17, metadata !18, metadata !107, metadata !20, metadata !51, metadata !6}
!107 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, false> &"}
!108 = metadata !{null, metadata !17, metadata !18, metadata !109, metadata !20, metadata !51, metadata !6}
!109 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, true> &"}
!110 = metadata !{null, metadata !44, metadata !45, metadata !111, metadata !47, metadata !54, metadata !6}
!111 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<20, true> &", metadata !"const ap_int_base<9, false> &"}
!112 = metadata !{null, metadata !44, metadata !45, metadata !113, metadata !47, metadata !54, metadata !6}
!113 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<20, true> &", metadata !"const ap_int_base<20, true> &"}
!114 = metadata !{null, metadata !44, metadata !45, metadata !115, metadata !47, metadata !54, metadata !6}
!115 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<20, true> &", metadata !"int"}
!116 = metadata !{null, metadata !44, metadata !45, metadata !117, metadata !47, metadata !54, metadata !6}
!117 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, false> &", metadata !"const ap_int_base<9, false> &"}
!118 = metadata !{null, metadata !17, metadata !18, metadata !119, metadata !20, metadata !51, metadata !6}
!119 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<10, true> &"}
!120 = metadata !{null, metadata !44, metadata !45, metadata !121, metadata !47, metadata !54, metadata !6}
!121 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<22, true> &", metadata !"const ap_int_base<20, true> &"}
!122 = metadata !{null, metadata !44, metadata !45, metadata !123, metadata !47, metadata !54, metadata !6}
!123 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, true> &", metadata !"const ap_int_base<20, true> &"}
!124 = metadata !{null, metadata !17, metadata !18, metadata !125, metadata !20, metadata !51, metadata !6}
!125 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, true> &"}
!126 = metadata !{null, metadata !44, metadata !45, metadata !127, metadata !47, metadata !54, metadata !6}
!127 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<21, true> &", metadata !"int"}
!128 = metadata !{null, metadata !17, metadata !18, metadata !19, metadata !20, metadata !51, metadata !6}
!129 = metadata !{null, metadata !44, metadata !45, metadata !130, metadata !47, metadata !54, metadata !6}
!130 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<21, true> &", metadata !"const ap_int_base<21, true> &"}
!131 = metadata !{null, metadata !17, metadata !18, metadata !50, metadata !20, metadata !42, metadata !6}
!132 = metadata !{null, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !6}
!133 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!134 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!135 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<typename StreamType<0>::name> &", metadata !"hls::stream<typename StreamType<0>::name> &", metadata !"hls::stream<typename StreamType<0>::name> &", metadata !"typename StreamType<0>::name [640]*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename StreamType<0>::name &", metadata !"typename StreamType<0>::name &", metadata !"uint16_t", metadata !"uint16_t", metadata !"ap_uint<13>", metadata !"uint16_t &", metadata !"uint16_t &", metadata !"ap_uint<4>", metadata !"ap_uint<4>", metadata !"ap_uint<4>", metadata !"ap_uint<4>", metadata !"ap_uint<4>", metadata !"ap_uint<4>", metadata !"ap_uint<4>", metadata !"ap_uint<13>"}
!136 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!137 = metadata !{metadata !"kernel_arg_name", metadata !"_src_mat", metadata !"_gradx_mat", metadata !"_grady_mat", metadata !"buf", metadata !"src_buf1", metadata !"src_buf2", metadata !"src_buf3", metadata !"src_buf4", metadata !"src_buf5", metadata !"src_buf6", metadata !"src_buf7", metadata !"GradientValuesX", metadata !"GradientValuesY", metadata !"inter_valx", metadata !"inter_valy", metadata !"img_width", metadata !"img_height", metadata !"row_ind", metadata !"shiftx", metadata !"shifty", metadata !"tp1", metadata !"tp2", metadata !"tp3", metadata !"mid", metadata !"bottom1", metadata !"bottom2", metadata !"bottom3", metadata !"row"}
!138 = metadata !{null, metadata !44, metadata !45, metadata !139, metadata !47, metadata !54, metadata !6}
!139 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<13, false> &", metadata !"int"}
!140 = metadata !{null, metadata !141, metadata !30, metadata !142, metadata !32, metadata !143, metadata !6}
!141 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 0, i32 0}
!142 = metadata !{metadata !"kernel_arg_type", metadata !"typename PixelType<0>::name*", metadata !"typename StreamType<0>::name &", metadata !"uint16_t", metadata !"int16_t", metadata !"uint16_t &"}
!143 = metadata !{metadata !"kernel_arg_name", metadata !"tmp_buf", metadata !"val", metadata !"pos", metadata !"loopIter", metadata !"shift"}
!144 = metadata !{null, metadata !44, metadata !45, metadata !145, metadata !47, metadata !146, metadata !6}
!145 = metadata !{metadata !"kernel_arg_type", metadata !"ushort", metadata !"const ap_int_base<8, false> &"}
!146 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!147 = metadata !{null, metadata !17, metadata !18, metadata !148, metadata !20, metadata !51, metadata !6}
!148 = metadata !{metadata !"kernel_arg_type", metadata !"ushort"}
!149 = metadata !{null, metadata !44, metadata !45, metadata !150, metadata !47, metadata !54, metadata !6}
!150 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &", metadata !"const ap_int_base<8, false> &"}
!151 = metadata !{null, metadata !17, metadata !18, metadata !152, metadata !20, metadata !51, metadata !6}
!152 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &"}
!153 = metadata !{null, metadata !17, metadata !18, metadata !154, metadata !20, metadata !21, metadata !6}
!154 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &"}
!155 = metadata !{null, metadata !44, metadata !45, metadata !156, metadata !47, metadata !54, metadata !6}
!156 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, true> &", metadata !"short"}
!157 = metadata !{null, metadata !17, metadata !18, metadata !158, metadata !20, metadata !51, metadata !6}
!158 = metadata !{metadata !"kernel_arg_type", metadata !"short"}
!159 = metadata !{null, metadata !17, metadata !18, metadata !160, metadata !20, metadata !21, metadata !6}
!160 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &"}
!161 = metadata !{null, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !6}
!162 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!163 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!164 = metadata !{metadata !"kernel_arg_type", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*"}
!165 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!166 = metadata !{metadata !"kernel_arg_name", metadata !"GradientvaluesX", metadata !"GradientvaluesY", metadata !"src_buf1", metadata !"src_buf2", metadata !"src_buf3", metadata !"src_buf4", metadata !"src_buf5", metadata !"src_buf6", metadata !"src_buf7"}
!167 = metadata !{null, metadata !44, metadata !45, metadata !168, metadata !47, metadata !54, metadata !6}
!168 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, false> &", metadata !"int"}
!169 = metadata !{null, metadata !44, metadata !45, metadata !84, metadata !47, metadata !54, metadata !6}
!170 = metadata !{null, metadata !17, metadata !18, metadata !171, metadata !20, metadata !21, metadata !6}
!171 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<5> &"}
!172 = metadata !{null, metadata !17, metadata !18, metadata !173, metadata !20, metadata !21, metadata !6}
!173 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<4> &"}
!174 = metadata !{null, metadata !44, metadata !45, metadata !175, metadata !47, metadata !54, metadata !6}
!175 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<13, false> &", metadata !"ushort"}
!176 = metadata !{null, metadata !17, metadata !18, metadata !152, metadata !20, metadata !21, metadata !6}
!177 = metadata !{null, metadata !17, metadata !18, metadata !178, metadata !20, metadata !21, metadata !6}
!178 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<13> &"}
!179 = metadata !{null, metadata !44, metadata !45, metadata !180, metadata !47, metadata !146, metadata !6}
!180 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<4, false> &"}
!181 = metadata !{null, metadata !44, metadata !45, metadata !182, metadata !47, metadata !54, metadata !6}
!182 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<4, false> &"}
!183 = metadata !{null, metadata !17, metadata !18, metadata !71, metadata !20, metadata !51, metadata !6}
!184 = metadata !{null, metadata !44, metadata !45, metadata !185, metadata !47, metadata !54, metadata !6}
!185 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<33, true> &"}
!186 = metadata !{null, metadata !44, metadata !45, metadata !168, metadata !47, metadata !48, metadata !6}
!187 = metadata !{null, metadata !44, metadata !45, metadata !188, metadata !47, metadata !54, metadata !6}
!188 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, false> &", metadata !"const ap_int_base<32, true> &"}
!189 = metadata !{null, metadata !190, metadata !30, metadata !191, metadata !32, metadata !192, metadata !6}
!190 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1, i32 1}
!191 = metadata !{metadata !"kernel_arg_type", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*"}
!192 = metadata !{metadata !"kernel_arg_name", metadata !"src_buf1", metadata !"src_buf2", metadata !"src_buf3", metadata !"src_buf4", metadata !"src_buf5"}
!193 = metadata !{null, metadata !17, metadata !18, metadata !158, metadata !20, metadata !42, metadata !6}
!194 = metadata !{null, metadata !44, metadata !45, metadata !195, metadata !47, metadata !48, metadata !6}
!195 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!196 = metadata !{null, metadata !44, metadata !45, metadata !197, metadata !47, metadata !54, metadata !6}
!197 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, true> &"}
!198 = metadata !{null, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !6}
!199 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!200 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!201 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<typename StreamType<0>::name> &", metadata !"hls::stream<typename StreamType<0>::name> &", metadata !"hls::stream<typename StreamType<0>::name> &", metadata !"typename StreamType<0>::name [640]*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename StreamType<0>::name &", metadata !"typename StreamType<0>::name &", metadata !"uint16_t", metadata !"uint16_t", metadata !"ap_uint<13>", metadata !"uint16_t &", metadata !"uint16_t &", metadata !"ap_uint<4>", metadata !"ap_uint<4>", metadata !"ap_uint<4>", metadata !"ap_uint<4>", metadata !"ap_uint<4>", metadata !"ap_uint<13>"}
!202 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!203 = metadata !{metadata !"kernel_arg_name", metadata !"_src_mat", metadata !"_gradx_mat", metadata !"_grady_mat", metadata !"buf", metadata !"src_buf1", metadata !"src_buf2", metadata !"src_buf3", metadata !"src_buf4", metadata !"src_buf5", metadata !"GradientValuesX", metadata !"GradientValuesY", metadata !"inter_valx", metadata !"inter_valy", metadata !"img_width", metadata !"img_height", metadata !"row_ind", metadata !"shift_x", metadata !"shift_y", metadata !"tp1", metadata !"tp2", metadata !"mid", metadata !"bottom1", metadata !"bottom2", metadata !"row"}
!204 = metadata !{null, metadata !67, metadata !24, metadata !68, metadata !26, metadata !205, metadata !6}
!205 = metadata !{metadata !"kernel_arg_name", metadata !"GradientvaluesX", metadata !"GradientvaluesY", metadata !"src_buf1", metadata !"src_buf2", metadata !"src_buf3", metadata !"src_buf4", metadata !"src_buf5"}
!206 = metadata !{null, metadata !207, metadata !163, metadata !208, metadata !165, metadata !209, metadata !6}
!207 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!208 = metadata !{metadata !"kernel_arg_type", metadata !"typename PixelType<0>::name", metadata !"typename PixelType<0>::name", metadata !"typename PixelType<0>::name", metadata !"typename PixelType<0>::name", metadata !"typename PixelType<0>::name", metadata !"typename PixelType<0>::name", metadata !"typename PixelType<0>::name", metadata !"typename PixelType<0>::name", metadata !"typename PixelType<0>::name"}
!209 = metadata !{metadata !"kernel_arg_name", metadata !"t0", metadata !"t1", metadata !"t2", metadata !"m0", metadata !"m1", metadata !"m2", metadata !"b0", metadata !"b1", metadata !"b2"}
!210 = metadata !{null, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !6}
!211 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!212 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!213 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<typename StreamType<0>::name> &", metadata !"hls::stream<typename StreamType<0>::name> &", metadata !"hls::stream<typename StreamType<0>::name> &", metadata !"typename StreamType<0>::name [640]*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename PixelType<0>::name*", metadata !"typename StreamType<0>::name &", metadata !"typename StreamType<0>::name &", metadata !"uint16_t", metadata !"uint16_t", metadata !"ap_uint<13>", metadata !"uint16_t &", metadata !"uint16_t &", metadata !"ap_uint<2>", metadata !"ap_uint<2>", metadata !"ap_uint<2>", metadata !"ap_uint<13>"}
!214 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!215 = metadata !{metadata !"kernel_arg_name", metadata !"_src_mat", metadata !"_gradx_mat", metadata !"_grady_mat", metadata !"buf", metadata !"src_buf1", metadata !"src_buf2", metadata !"src_buf3", metadata !"GradientValuesX", metadata !"GradientValuesY", metadata !"P0", metadata !"P1", metadata !"img_width", metadata !"img_height", metadata !"row_ind", metadata !"shift_x", metadata !"shift_y", metadata !"tp", metadata !"mid", metadata !"bottom", metadata !"row"}
!216 = metadata !{null, metadata !190, metadata !30, metadata !191, metadata !32, metadata !217, metadata !6}
!217 = metadata !{metadata !"kernel_arg_name", metadata !"GradientvaluesX", metadata !"GradientvaluesY", metadata !"src_buf1", metadata !"src_buf2", metadata !"src_buf3"}
!218 = metadata !{null, metadata !17, metadata !18, metadata !219, metadata !20, metadata !21, metadata !6}
!219 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<2> &"}
!220 = metadata !{null, metadata !17, metadata !18, metadata !221, metadata !20, metadata !222, metadata !6}
!221 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_uint<8> &"}
!222 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!223 = metadata !{metadata !224, [0 x i32]* @llvm_global_ctors_0}
!224 = metadata !{metadata !225}
!225 = metadata !{i32 0, i32 31, metadata !226}
!226 = metadata !{metadata !227}
!227 = metadata !{metadata !"llvm.global_ctors.0", metadata !228, metadata !"", i32 0, i32 31}
!228 = metadata !{metadata !229}
!229 = metadata !{i32 0, i32 0, i32 1}
!230 = metadata !{metadata !231}
!231 = metadata !{i32 0, i32 7, metadata !232}
!232 = metadata !{metadata !233}
!233 = metadata !{metadata !"_src.allocatedFlag", metadata !228, metadata !"unsigned char", i32 0, i32 7}
!234 = metadata !{metadata !235}
!235 = metadata !{i32 0, i32 31, metadata !236}
!236 = metadata !{metadata !237}
!237 = metadata !{metadata !"_src.rows", metadata !228, metadata !"int", i32 0, i32 31}
!238 = metadata !{metadata !239}
!239 = metadata !{i32 0, i32 31, metadata !240}
!240 = metadata !{metadata !241}
!241 = metadata !{metadata !"_src.cols", metadata !228, metadata !"int", i32 0, i32 31}
!242 = metadata !{metadata !243}
!243 = metadata !{i32 0, i32 31, metadata !244}
!244 = metadata !{metadata !245}
!245 = metadata !{metadata !"_src.size", metadata !228, metadata !"int", i32 0, i32 31}
!246 = metadata !{metadata !247}
!247 = metadata !{i32 0, i32 7, metadata !248}
!248 = metadata !{metadata !249}
!249 = metadata !{metadata !"_src.data.V", metadata !250, metadata !"uint8", i32 0, i32 7}
!250 = metadata !{metadata !251}
!251 = metadata !{i32 0, i32 307199, i32 1}
!252 = metadata !{metadata !253}
!253 = metadata !{i32 0, i32 7, metadata !254}
!254 = metadata !{metadata !255}
!255 = metadata !{metadata !"_dstgx.allocatedFlag", metadata !228, metadata !"unsigned char", i32 0, i32 7}
!256 = metadata !{metadata !257}
!257 = metadata !{i32 0, i32 31, metadata !258}
!258 = metadata !{metadata !259}
!259 = metadata !{metadata !"_dstgx.rows", metadata !228, metadata !"int", i32 0, i32 31}
!260 = metadata !{metadata !261}
!261 = metadata !{i32 0, i32 31, metadata !262}
!262 = metadata !{metadata !263}
!263 = metadata !{metadata !"_dstgx.cols", metadata !228, metadata !"int", i32 0, i32 31}
!264 = metadata !{metadata !265}
!265 = metadata !{i32 0, i32 31, metadata !266}
!266 = metadata !{metadata !267}
!267 = metadata !{metadata !"_dstgx.size", metadata !228, metadata !"int", i32 0, i32 31}
!268 = metadata !{metadata !269}
!269 = metadata !{i32 0, i32 7, metadata !270}
!270 = metadata !{metadata !271}
!271 = metadata !{metadata !"_dstgx.data.V", metadata !250, metadata !"uint8", i32 0, i32 7}
!272 = metadata !{metadata !273}
!273 = metadata !{i32 0, i32 7, metadata !274}
!274 = metadata !{metadata !275}
!275 = metadata !{metadata !"_dstgy.allocatedFlag", metadata !228, metadata !"unsigned char", i32 0, i32 7}
!276 = metadata !{metadata !277}
!277 = metadata !{i32 0, i32 31, metadata !278}
!278 = metadata !{metadata !279}
!279 = metadata !{metadata !"_dstgy.rows", metadata !228, metadata !"int", i32 0, i32 31}
!280 = metadata !{metadata !281}
!281 = metadata !{i32 0, i32 31, metadata !282}
!282 = metadata !{metadata !283}
!283 = metadata !{metadata !"_dstgy.cols", metadata !228, metadata !"int", i32 0, i32 31}
!284 = metadata !{metadata !285}
!285 = metadata !{i32 0, i32 31, metadata !286}
!286 = metadata !{metadata !287}
!287 = metadata !{metadata !"_dstgy.size", metadata !228, metadata !"int", i32 0, i32 31}
!288 = metadata !{metadata !289}
!289 = metadata !{i32 0, i32 7, metadata !290}
!290 = metadata !{metadata !291}
!291 = metadata !{metadata !"_dstgy.data.V", metadata !250, metadata !"uint8", i32 0, i32 7}
