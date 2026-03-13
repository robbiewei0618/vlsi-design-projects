************************************************************************
* auCdl Netlist:
* 
* Library Name:  Homwork3
* Top Cell Name: FA
* View Name:     schematic
* Netlisted on:  May  6 10:33:12 2023
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

.GLOBAL gnd!
+        vdd!

*.PIN gnd!
*+    vdd!

************************************************************************
* Library Name: Homwork3
* Cell Name:    INV_X2
* View Name:    schematic
************************************************************************

.SUBCKT INV_X2 in out
*.PININFO in:I out:O
MM0 out in vdd! vdd! P_18 W=1.00u L=180.00n
MM1 out in gnd! gnd! N_18 W=500.00n L=180.00n
.ENDS

************************************************************************
* Library Name: Homwork3
* Cell Name:    NAND_X1
* View Name:    schematic
************************************************************************

.SUBCKT NAND_X1 A B out
*.PININFO A:I B:I out:O
MM0 out A vdd! vdd! P_18 W=500.00n L=180.00n
MM1 out B vdd! vdd! P_18 W=500.00n L=180.00n
MM2 out A net13 gnd! N_18 W=500.00n L=180.00n
MM3 net13 B gnd! gnd! N_18 W=500.00n L=180.00n
.ENDS

************************************************************************
* Library Name: Homwork3
* Cell Name:    NAND_X2
* View Name:    schematic
************************************************************************

.SUBCKT NAND_X2 A B out
*.PININFO A:I B:I out:O
MM0 out A vdd! vdd! P_18 W=1.00u L=180.00n
MM1 out B vdd! vdd! P_18 W=1.00u L=180.00n
MM2 out A net11 gnd! N_18 W=1.00u L=180.00n
MM3 net11 B gnd! gnd! N_18 W=1.00u L=180.00n
.ENDS

************************************************************************
* Library Name: Homwork3
* Cell Name:    FA
* View Name:    schematic
************************************************************************

* File: FA.pex.sp
* Created: Tue May  9 11:20:21 2023
* Program "Calibre xRC"
* Version "v2018.2_24.18"
* 
.include "FA.pex.sp.pex"
.subckt FA  GND! VDD! B SUM A CIN COUT
* 
* COUT	COUT
* CIN	CIN
* A	A
* SUM	SUM
* B	B
* VDD!	VDD!
* GND!	GND!
M0 N_19_M0_d N_6_M0_g N_GND!_M0_s N_GND!_X17/M0_b N_18 L=1.8e-07 W=1e-06
+ AD=2.975e-13 AS=5.35e-13 PD=5.95e-07 PS=2.07e-06
M1 N_9_M1_d N_10_M1_g N_19_M1_s N_GND!_X17/M0_b N_18 L=1.8e-07 W=1e-06
+ AD=5.15e-13 AS=2.975e-13 PD=2.03e-06 PS=5.95e-07
M2 N_9_M2_d N_6_M2_g N_VDD!_M2_s N_VDD!_X17/M1_b P_18 L=1.8e-07 W=1e-06
+ AD=2.975e-13 AS=5.35e-13 PD=5.95e-07 PS=2.07e-06
M3 N_VDD!_M3_d N_10_M3_g N_9_M3_s N_VDD!_X17/M1_b P_18 L=1.8e-07 W=1e-06
+ AD=5.15e-13 AS=2.975e-13 PD=2.03e-06 PS=5.95e-07
mX17/M0 N_17_X17/M0_d N_9_X17/M0_g N_GND!_X17/M0_s N_GND!_X17/M0_b N_18
+ L=1.8e-07 W=5e-07 AD=3.525e-13 AS=3.475e-13 PD=1.91e-06 PS=1.89e-06
mX17/M1 N_17_X17/M1_d N_9_X17/M1_g N_VDD!_X17/M1_s N_VDD!_X17/M1_b P_18
+ L=1.8e-07 W=1e-06 AD=4.9e-13 AS=4.9e-13 PD=1.98e-06 PS=1.98e-06
mX18/M0 N_14_X18/M0_d N_B_X18/M0_g N_GND!_X18/M0_s N_GND!_X17/M0_b N_18
+ L=1.8e-07 W=5e-07 AD=3.525e-13 AS=3.475e-13 PD=1.91e-06 PS=1.89e-06
mX18/M1 N_14_X18/M1_d N_B_X18/M1_g N_VDD!_X18/M1_s N_VDD!_X17/M1_b P_18
+ L=1.8e-07 W=1e-06 AD=4.9e-13 AS=4.9e-13 PD=1.98e-06 PS=1.98e-06
mX19/M0 N_15_X19/M0_d N_A_X19/M0_g N_GND!_X19/M0_s N_GND!_X17/M0_b N_18
+ L=1.8e-07 W=5e-07 AD=3.525e-13 AS=3.475e-13 PD=1.91e-06 PS=1.89e-06
mX19/M1 N_15_X19/M1_d N_A_X19/M1_g N_VDD!_X19/M1_s N_VDD!_X17/M1_b P_18
+ L=1.8e-07 W=1e-06 AD=4.9e-13 AS=4.9e-13 PD=1.98e-06 PS=1.98e-06
mX20/M0 N_13_X20/M0_d N_CIN_X20/M0_g N_GND!_X20/M0_s N_GND!_X17/M0_b N_18
+ L=1.8e-07 W=5e-07 AD=3.525e-13 AS=3.475e-13 PD=1.91e-06 PS=1.89e-06
mX20/M1 N_13_X20/M1_d N_CIN_X20/M1_g N_VDD!_X20/M1_s N_VDD!_X17/M1_b P_18
+ L=1.8e-07 W=1e-06 AD=4.9e-13 AS=4.9e-13 PD=1.98e-06 PS=1.98e-06
mX21/M0 N_X21/6_X21/M0_d N_17_X21/M0_g N_GND!_X21/M0_s N_GND!_X17/M0_b N_18
+ L=1.8e-07 W=5e-07 AD=1.4e-13 AS=2.85e-13 PD=5.6e-07 PS=1.64e-06
mX21/M1 N_7_X21/M1_d N_CIN_X21/M1_g N_X21/6_X21/M1_s N_GND!_X17/M0_b N_18
+ L=1.8e-07 W=5e-07 AD=3.025e-13 AS=1.4e-13 PD=1.71e-06 PS=5.6e-07
mX21/M2 N_7_X21/M2_d N_17_X21/M2_g N_VDD!_X21/M2_s N_VDD!_X17/M1_b P_18
+ L=1.8e-07 W=5e-07 AD=1.4e-13 AS=2.85e-13 PD=5.6e-07 PS=1.64e-06
mX21/M3 N_VDD!_X21/M3_d N_CIN_X21/M3_g N_7_X21/M3_s N_VDD!_X17/M1_b P_18
+ L=1.8e-07 W=5e-07 AD=3.025e-13 AS=1.4e-13 PD=1.71e-06 PS=5.6e-07
mX22/M0 N_X22/6_X22/M0_d N_A_X22/M0_g N_GND!_X22/M0_s N_GND!_X17/M0_b N_18
+ L=1.8e-07 W=5e-07 AD=1.4e-13 AS=2.85e-13 PD=5.6e-07 PS=1.64e-06
mX22/M1 N_6_X22/M1_d N_14_X22/M1_g N_X22/6_X22/M1_s N_GND!_X17/M0_b N_18
+ L=1.8e-07 W=5e-07 AD=3.025e-13 AS=1.4e-13 PD=1.71e-06 PS=5.6e-07
mX22/M2 N_6_X22/M2_d N_A_X22/M2_g N_VDD!_X22/M2_s N_VDD!_X17/M1_b P_18 L=1.8e-07
+ W=5e-07 AD=1.4e-13 AS=2.85e-13 PD=5.6e-07 PS=1.64e-06
mX22/M3 N_VDD!_X22/M3_d N_14_X22/M3_g N_6_X22/M3_s N_VDD!_X17/M1_b P_18
+ L=1.8e-07 W=5e-07 AD=3.025e-13 AS=1.4e-13 PD=1.71e-06 PS=5.6e-07
mX23/M0 N_X23/6_X23/M0_d N_A_X23/M0_g N_GND!_X23/M0_s N_GND!_X17/M0_b N_18
+ L=1.8e-07 W=5e-07 AD=1.4e-13 AS=2.85e-13 PD=5.6e-07 PS=1.64e-06
mX23/M1 N_8_X23/M1_d N_B_X23/M1_g N_X23/6_X23/M1_s N_GND!_X17/M0_b N_18
+ L=1.8e-07 W=5e-07 AD=3.025e-13 AS=1.4e-13 PD=1.71e-06 PS=5.6e-07
mX23/M2 N_8_X23/M2_d N_A_X23/M2_g N_VDD!_X23/M2_s N_VDD!_X23/M2_b P_18 L=1.8e-07
+ W=5e-07 AD=1.4e-13 AS=2.85e-13 PD=5.6e-07 PS=1.64e-06
mX23/M3 N_VDD!_X23/M3_d N_B_X23/M3_g N_8_X23/M3_s N_VDD!_X23/M2_b P_18 L=1.8e-07
+ W=5e-07 AD=3.025e-13 AS=1.4e-13 PD=1.71e-06 PS=5.6e-07
mX24/M0 N_X24/6_X24/M0_d N_B_X24/M0_g N_GND!_X24/M0_s N_GND!_X17/M0_b N_18
+ L=1.8e-07 W=5e-07 AD=1.4e-13 AS=2.85e-13 PD=5.6e-07 PS=1.64e-06
mX24/M1 N_10_X24/M1_d N_15_X24/M1_g N_X24/6_X24/M1_s N_GND!_X17/M0_b N_18
+ L=1.8e-07 W=5e-07 AD=3.025e-13 AS=1.4e-13 PD=1.71e-06 PS=5.6e-07
mX24/M2 N_10_X24/M2_d N_B_X24/M2_g N_VDD!_X24/M2_s N_VDD!_X17/M1_b P_18
+ L=1.8e-07 W=5e-07 AD=1.4e-13 AS=2.85e-13 PD=5.6e-07 PS=1.64e-06
mX24/M3 N_VDD!_X24/M3_d N_15_X24/M3_g N_10_X24/M3_s N_VDD!_X17/M1_b P_18
+ L=1.8e-07 W=5e-07 AD=3.025e-13 AS=1.4e-13 PD=1.71e-06 PS=5.6e-07
mX25/M0 N_X25/6_X25/M0_d N_8_X25/M0_g N_GND!_X25/M0_s N_GND!_X17/M0_b N_18
+ L=1.8e-07 W=5e-07 AD=1.4e-13 AS=2.85e-13 PD=5.6e-07 PS=1.64e-06
mX25/M1 N_COUT_X25/M1_d N_11_X25/M1_g N_X25/6_X25/M1_s N_GND!_X17/M0_b N_18
+ L=1.8e-07 W=5e-07 AD=3.025e-13 AS=1.4e-13 PD=1.71e-06 PS=5.6e-07
mX25/M2 N_COUT_X25/M2_d N_8_X25/M2_g N_VDD!_X25/M2_s N_VDD!_X23/M2_b P_18
+ L=1.8e-07 W=5e-07 AD=1.4e-13 AS=2.85e-13 PD=5.6e-07 PS=1.64e-06
mX25/M3 N_VDD!_X25/M3_d N_11_X25/M3_g N_COUT_X25/M3_s N_VDD!_X23/M2_b P_18
+ L=1.8e-07 W=5e-07 AD=3.025e-13 AS=1.4e-13 PD=1.71e-06 PS=5.6e-07
mX26/M0 N_X26/6_X26/M0_d N_18_X26/M0_g N_GND!_X26/M0_s N_GND!_X17/M0_b N_18
+ L=1.8e-07 W=5e-07 AD=1.4e-13 AS=2.85e-13 PD=5.6e-07 PS=1.64e-06
mX26/M1 N_SUM_X26/M1_d N_7_X26/M1_g N_X26/6_X26/M1_s N_GND!_X17/M0_b N_18
+ L=1.8e-07 W=5e-07 AD=3.025e-13 AS=1.4e-13 PD=1.71e-06 PS=5.6e-07
mX26/M2 N_SUM_X26/M2_d N_18_X26/M2_g N_VDD!_X26/M2_s N_VDD!_X17/M1_b P_18
+ L=1.8e-07 W=5e-07 AD=1.4e-13 AS=2.85e-13 PD=5.6e-07 PS=1.64e-06
mX26/M3 N_VDD!_X26/M3_d N_7_X26/M3_g N_SUM_X26/M3_s N_VDD!_X17/M1_b P_18
+ L=1.8e-07 W=5e-07 AD=3.025e-13 AS=1.4e-13 PD=1.71e-06 PS=5.6e-07
mX27/M0 N_X27/6_X27/M0_d N_CIN_X27/M0_g N_GND!_X27/M0_s N_GND!_X17/M0_b N_18
+ L=1.8e-07 W=5e-07 AD=1.4e-13 AS=2.85e-13 PD=5.6e-07 PS=1.64e-06
mX27/M1 N_11_X27/M1_d N_9_X27/M1_g N_X27/6_X27/M1_s N_GND!_X17/M0_b N_18
+ L=1.8e-07 W=5e-07 AD=3.025e-13 AS=1.4e-13 PD=1.71e-06 PS=5.6e-07
mX27/M2 N_11_X27/M2_d N_CIN_X27/M2_g N_VDD!_X27/M2_s N_VDD!_X23/M2_b P_18
+ L=1.8e-07 W=5e-07 AD=1.4e-13 AS=2.85e-13 PD=5.6e-07 PS=1.64e-06
mX27/M3 N_VDD!_X27/M3_d N_9_X27/M3_g N_11_X27/M3_s N_VDD!_X23/M2_b P_18
+ L=1.8e-07 W=5e-07 AD=3.025e-13 AS=1.4e-13 PD=1.71e-06 PS=5.6e-07
mX28/M0 N_X28/6_X28/M0_d N_9_X28/M0_g N_GND!_X28/M0_s N_GND!_X17/M0_b N_18
+ L=1.8e-07 W=5e-07 AD=1.4e-13 AS=2.85e-13 PD=5.6e-07 PS=1.64e-06
mX28/M1 N_18_X28/M1_d N_13_X28/M1_g N_X28/6_X28/M1_s N_GND!_X17/M0_b N_18
+ L=1.8e-07 W=5e-07 AD=3.025e-13 AS=1.4e-13 PD=1.71e-06 PS=5.6e-07
mX28/M2 N_18_X28/M2_d N_9_X28/M2_g N_VDD!_X28/M2_s N_VDD!_X17/M1_b P_18
+ L=1.8e-07 W=5e-07 AD=1.4e-13 AS=2.85e-13 PD=5.6e-07 PS=1.64e-06
mX28/M3 N_VDD!_X28/M3_d N_13_X28/M3_g N_18_X28/M3_s N_VDD!_X17/M1_b P_18
+ L=1.8e-07 W=5e-07 AD=3.025e-13 AS=1.4e-13 PD=1.71e-06 PS=5.6e-07
*
.include "FA.pex.sp.FA.pxi"
*
.ends
*
*

************************************************************************
XFA GND! VDD! B SUM A CIN COUT FA
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
vA A 0 dc 1.8
vB B 0 pulse(0v 1.8v 0n 0.03n 0.03n 499.97n 1000n)
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