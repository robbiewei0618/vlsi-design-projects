************************************************************************
* auCdl Netlist:
* 
* Library Name:  Homework4
* Top Cell Name: CMOS_FA
* View Name:     schematic
* Netlisted on:  Jun  1 14:12:30 2023
************************************************************************

*.BIPOLAR
*.RESI = 2000 
*.RESVAL
*.CAPVAL
*.DIOPERI
*.DIOAREA
*.EQUATION
*.SCALE METER
*.MEGA
*.PARAM

.GLOBAL vdd!
+        gnd!

*.PIN vdd!
*+    gnd!

************************************************************************
* Library Name: Homework4
* Cell Name:    CMOS_FA
* View Name:    schematic
************************************************************************

* File: CMOS_FA.pex.sp
* Created: Mon Jun  5 09:47:05 2023
* Program "Calibre xRC"
* Version "v2018.2_24.18"
* 
.include "CMOS_FA.pex.sp.pex"
.subckt CMOS_FA  A B CIN SUM GND! VDD! COUT
* 
* COUT	COUT
* VDD!	VDD!
* GND!	GND!
* SUM	SUM
* CIN	CIN
* B	B
* A	A
M0 N_6_M0_d N_A_M0_g N_GND!_M0_s N_GND!_M0_b N_18 L=1.8e-07 W=5e-07 AD=1.275e-13
+ AS=2.475e-13 PD=5.1e-07 PS=1.49e-06
M1 N_GND!_M1_d N_B_M1_g N_6_M1_s N_GND!_M0_b N_18 L=1.8e-07 W=5e-07 AD=1.275e-13
+ AS=1.275e-13 PD=5.1e-07 PS=5.1e-07
M2 N_19_M2_d N_B_M2_g N_GND!_M2_s N_GND!_M0_b N_18 L=1.8e-07 W=5e-07 AD=6.25e-14
+ AS=1.275e-13 PD=2.5e-07 PS=5.1e-07
M3 N_13_M3_d N_A_M3_g N_19_M3_s N_GND!_M0_b N_18 L=1.8e-07 W=5e-07 AD=1.275e-13
+ AS=6.25e-14 PD=5.1e-07 PS=2.5e-07
M4 N_6_M4_d N_CIN_M4_g N_13_M4_s N_GND!_M0_b N_18 L=1.8e-07 W=5e-07 AD=2.45e-13
+ AS=1.275e-13 PD=1.48e-06 PS=5.1e-07
M5 N_8_M5_d N_CIN_M5_g N_GND!_M5_s N_GND!_M0_b N_18 L=1.8e-07 W=5e-07
+ AD=1.275e-13 AS=2.475e-13 PD=5.1e-07 PS=1.49e-06
M6 N_GND!_M6_d N_B_M6_g N_8_M6_s N_GND!_M0_b N_18 L=1.8e-07 W=5e-07 AD=1.275e-13
+ AS=1.275e-13 PD=5.1e-07 PS=5.1e-07
M7 N_8_M7_d N_A_M7_g N_GND!_M7_s N_GND!_M0_b N_18 L=1.8e-07 W=5e-07 AD=1.275e-13
+ AS=1.275e-13 PD=5.1e-07 PS=5.1e-07
M8 N_12_M8_d N_13_M8_g N_8_M8_s N_GND!_M0_b N_18 L=1.8e-07 W=5e-07 AD=2.45e-13
+ AS=1.275e-13 PD=1.48e-06 PS=5.1e-07
M9 N_10_M9_d N_A_M9_g N_GND!_M9_s N_GND!_M0_b N_18 L=1.8e-07 W=2.5e-07
+ AD=1.4045e-13 AS=2.5325e-13 PD=9.3e-07 PS=1.88e-06
M10 N_GND!_M10_d N_A_M10_g N_10_M10_s N_GND!_M0_b N_18 L=1.8e-07 W=2.5e-07
+ AD=1.4045e-13 AS=1.4045e-13 PD=9.3e-07 PS=9.3e-07
M11 N_10_M11_d N_A_M11_g N_GND!_M11_s N_GND!_M0_b N_18 L=1.8e-07 W=2.5e-07
+ AD=1.4045e-13 AS=1.4045e-13 PD=9.3e-07 PS=9.3e-07
M12 N_3_M12_d N_B_M12_g N_10_M12_s N_GND!_M0_b N_18 L=1.8e-07 W=2.5e-07
+ AD=1.4045e-13 AS=1.4045e-13 PD=9.3e-07 PS=9.3e-07
M13 N_10_M13_d N_B_M13_g N_3_M13_s N_GND!_M0_b N_18 L=1.8e-07 W=2.5e-07
+ AD=1.4045e-13 AS=1.4045e-13 PD=9.3e-07 PS=9.3e-07
M14 N_3_M14_d N_B_M14_g N_10_M14_s N_GND!_M0_b N_18 L=1.8e-07 W=2.5e-07
+ AD=1.4045e-13 AS=1.4045e-13 PD=9.3e-07 PS=9.3e-07
M15 N_12_M15_d N_CIN_M15_g N_3_M15_s N_GND!_M0_b N_18 L=1.8e-07 W=2.5e-07
+ AD=1.4045e-13 AS=1.4045e-13 PD=9.3e-07 PS=9.3e-07
M16 N_3_M16_d N_CIN_M16_g N_12_M16_s N_GND!_M0_b N_18 L=1.8e-07 W=2.5e-07
+ AD=1.4045e-13 AS=1.4045e-13 PD=9.3e-07 PS=9.3e-07
M17 N_12_M17_d N_CIN_M17_g N_3_M17_s N_GND!_M0_b N_18 L=1.8e-07 W=2.5e-07
+ AD=2.509e-13 AS=1.4045e-13 PD=1.87e-06 PS=9.3e-07
M18 N_GND!_M18_d N_12_M18_g N_SUM_M18_s N_GND!_M0_b N_18 L=1.8e-07 W=2.5e-07
+ AD=1.4045e-13 AS=2.509e-13 PD=9.3e-07 PS=1.87e-06
M19 N_COUT_M19_d N_13_M19_g N_GND!_M19_s N_GND!_M0_b N_18 L=1.8e-07 W=2.5e-07
+ AD=2.509e-13 AS=1.4045e-13 PD=1.87e-06 PS=9.3e-07
M20 N_7_M20_d N_A_M20_g N_VDD!_M20_s N_VDD!_M20_b P_18 L=1.8e-07 W=1e-06
+ AD=2.55e-13 AS=4.95e-13 PD=5.1e-07 PS=1.99e-06
M21 N_VDD!_M21_d N_B_M21_g N_7_M21_s N_VDD!_M20_b P_18 L=1.8e-07 W=1e-06
+ AD=2.55e-13 AS=2.55e-13 PD=5.1e-07 PS=5.1e-07
M22 N_18_M22_d N_B_M22_g N_VDD!_M22_s N_VDD!_M20_b P_18 L=1.8e-07 W=1e-06
+ AD=1.25e-13 AS=2.55e-13 PD=2.5e-07 PS=5.1e-07
M23 N_13_M23_d N_A_M23_g N_18_M23_s N_VDD!_M20_b P_18 L=1.8e-07 W=1e-06
+ AD=2.55e-13 AS=1.25e-13 PD=5.1e-07 PS=2.5e-07
M24 N_7_M24_d N_CIN_M24_g N_13_M24_s N_VDD!_M20_b P_18 L=1.8e-07 W=1e-06
+ AD=4.9e-13 AS=2.55e-13 PD=1.98e-06 PS=5.1e-07
M25 N_9_M25_d N_CIN_M25_g N_VDD!_M25_s N_VDD!_M20_b P_18 L=1.8e-07 W=1e-06
+ AD=2.55e-13 AS=4.95e-13 PD=5.1e-07 PS=1.99e-06
M26 N_VDD!_M26_d N_B_M26_g N_9_M26_s N_VDD!_M20_b P_18 L=1.8e-07 W=1e-06
+ AD=2.55e-13 AS=2.55e-13 PD=5.1e-07 PS=5.1e-07
M27 N_9_M27_d N_A_M27_g N_VDD!_M27_s N_VDD!_M20_b P_18 L=1.8e-07 W=1e-06
+ AD=2.55e-13 AS=2.55e-13 PD=5.1e-07 PS=5.1e-07
M28 N_12_M28_d N_13_M28_g N_9_M28_s N_VDD!_M20_b P_18 L=1.8e-07 W=1e-06
+ AD=4.9e-13 AS=2.55e-13 PD=1.98e-06 PS=5.1e-07
M29 N_11_M29_d N_A_M29_g N_VDD!_M29_s N_VDD!_M20_b P_18 L=1.8e-07 W=5e-07
+ AD=1.775e-13 AS=2.975e-13 PD=7.1e-07 PS=1.69e-06
M30 N_VDD!_M30_d N_A_M30_g N_11_M30_s N_VDD!_M20_b P_18 L=1.8e-07 W=5e-07
+ AD=1.775e-13 AS=1.775e-13 PD=7.1e-07 PS=7.1e-07
M31 N_11_M31_d N_A_M31_g N_VDD!_M31_s N_VDD!_M20_b P_18 L=1.8e-07 W=5e-07
+ AD=1.775e-13 AS=1.775e-13 PD=7.1e-07 PS=7.1e-07
M32 N_4_M32_d N_B_M32_g N_11_M32_s N_VDD!_M20_b P_18 L=1.8e-07 W=5e-07
+ AD=1.775e-13 AS=1.775e-13 PD=7.1e-07 PS=7.1e-07
M33 N_11_M33_d N_B_M33_g N_4_M33_s N_VDD!_M20_b P_18 L=1.8e-07 W=5e-07
+ AD=1.775e-13 AS=1.775e-13 PD=7.1e-07 PS=7.1e-07
M34 N_4_M34_d N_B_M34_g N_11_M34_s N_VDD!_M20_b P_18 L=1.8e-07 W=5e-07
+ AD=1.775e-13 AS=1.775e-13 PD=7.1e-07 PS=7.1e-07
M35 N_12_M35_d N_CIN_M35_g N_4_M35_s N_VDD!_M20_b P_18 L=1.8e-07 W=5e-07
+ AD=1.775e-13 AS=1.775e-13 PD=7.1e-07 PS=7.1e-07
M36 N_4_M36_d N_CIN_M36_g N_12_M36_s N_VDD!_M20_b P_18 L=1.8e-07 W=5e-07
+ AD=1.775e-13 AS=1.775e-13 PD=7.1e-07 PS=7.1e-07
M37 N_12_M37_d N_CIN_M37_g N_4_M37_s N_VDD!_M20_b P_18 L=1.8e-07 W=5e-07
+ AD=2.95e-13 AS=1.775e-13 PD=1.68e-06 PS=7.1e-07
M38 N_VDD!_M38_d N_12_M38_g N_SUM_M38_s N_VDD!_M20_b P_18 L=1.8e-07 W=5e-07
+ AD=1.775e-13 AS=2.95e-13 PD=7.1e-07 PS=1.68e-06
M39 N_COUT_M39_d N_13_M39_g N_VDD!_M39_s N_VDD!_M20_b P_18 L=1.8e-07 W=5e-07
+ AD=2.95e-13 AS=1.775e-13 PD=1.68e-06 PS=7.1e-07
*
.include "CMOS_FA.pex.sp.CMOS_FA.pxi"
*
.ends
*
*

************************************************************************
XFA A B CIN SUM GND! VDD! COUT CMOS_FA
.LIB '/home/2023_VLSI_83/cic018.l' TT
.option
+ post
+accurate=1
+ dcstep=1
+ NUMDGT=10
+ MEASDGT=10
.PARAM CL = 0p
C0 Sum 0 CL
v0 vdd! 0 dc 1.8
v1 gnd! 0 dc 0
vA A 0 pulse(0v 1.8v 0n 0.03n 0.03n 499.97n 1000n)
vB B 0 dc 1
vCin Cin 0 dc 0
.MEAS TRAN TpLH trig v(Cin) val = 0.9 fall = 2 targ v(Sum) val = 0.9 rise = 2
.MEAS TRAN TpHL trig v(Cin) val = 0.9 rise = 2 targ v(Sum) val = 0.9 fall = 2
.MEAS TRAN Tr trig v(SUM) val = 0.1*1.8 rise = 3 targ v(SUM) val = 0.9*1.8 rise = 3
.MEAS TRAN Tf trig v(SUM) val = 0.9*1.8 fall = 3 targ v(SUM) val = 0.1*1.8 fall = 3
.OPTION post
.OP
.TEMP 25
.TRAN 0.1n 10000n
.END