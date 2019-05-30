transcript on
if ![file isdirectory test_depl_plateforme_iputf_libs] {
	file mkdir test_depl_plateforme_iputf_libs
}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

###### Libraries for IPUTF cores 
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 


vcom "//comix.rennes.supelec.fr/promo2019/baron_pau/Documents/AA_PROJET_FPGA/pll_test_sim/pll_test.vho"

vlog -vlog01compat -work work +incdir+//comix.rennes.supelec.fr/promo2019/baron_pau/Documents/AA_PROJET_FPGA/hdmi {//comix.rennes.supelec.fr/promo2019/baron_pau/Documents/AA_PROJET_FPGA/hdmi/2.v}
vlog -vlog01compat -work work +incdir+//comix.rennes.supelec.fr/promo2019/baron_pau/Documents/AA_PROJET_FPGA/hdmi {//comix.rennes.supelec.fr/promo2019/baron_pau/Documents/AA_PROJET_FPGA/hdmi/1.v}
vcom -93 -work work {//comix.rennes.supelec.fr/promo2019/baron_pau/Documents/AA_PROJET_FPGA/bench_hdmi.vhd}
vcom -93 -work work {//comix.rennes.supelec.fr/promo2019/baron_pau/Documents/AA_PROJET_FPGA/main2.vhd}

