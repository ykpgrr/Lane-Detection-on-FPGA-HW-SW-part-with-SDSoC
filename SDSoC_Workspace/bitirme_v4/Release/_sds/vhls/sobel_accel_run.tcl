open_project sobel_accel
set_top sobel_accel
add_files C:/Users/yakup/workspace/bitirme_v4/src/xf_sobel_accel.cpp -cflags "-IC:/Users/yakup/workspace/bitirme_v4/src -IC:/xfopencv/include -IC:/OpencvWin/include -Wall -O3 -fmessage-length=0 -D __SDSCC__ -m32 -D HLS_NO_XIL_FPO_LIB -I C:/Xilinx/SDx/2018.1/target/aarch32-linux/include -IC:/Users/yakup/workspace/bitirme_v4/src -D __SDSVHLS__ -D __SDSVHLS_SYNTHESIS__ -I C:/Users/yakup/workspace/bitirme_v4/Release -w"
open_solution "solution" -reset
set_part { xc7z020clg484-1 }
# synthesis directives
create_clock -period 10.000000
set_clock_uncertainty 27.0%
config_rtl -reset_level low
source C:/Users/yakup/workspace/bitirme_v4/Release/_sds/vhls/sobel_accel.tcl
# end synthesis directives
config_rtl -prefix a0_
csynth_design
export_design -ipname sobel_accel -acc
exit
