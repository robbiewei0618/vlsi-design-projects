* File: /home/M133040086_18/VLSI/Homework1/NOR2_X1/layout/PEX/NOR2_X1.pex.sp
* Created: Wed Apr 16 00:00:05 2025
* Program "Calibre xRC"
* Version "v2016.4_15.11"
* 
.include "/home/M133040086_18/VLSI/Homework1/NOR2_X1/layout/PEX/NOR2_X1.pex.sp.pex"
.subckt NOR2_X1  A VDD! B GND! Y
* 
* Y	Y
* GND!	GND!
* B	B
* VDD!	VDD!
* A	A
MM3 N_Y_MM3_d N_A_MM3_g N_GND!_MM3_s N_GND!_MM3_b N_18 L=1.8e-07 W=2.5e-07
+ AD=1.4045e-13 AS=2.509e-13 PD=9.3e-07 PS=1.87e-06
MM2 N_Y_MM2_d N_B_MM2_g N_GND!_MM2_s N_GND!_MM3_b N_18 L=1.8e-07 W=2.5e-07
+ AD=1.4045e-13 AS=2.509e-13 PD=9.3e-07 PS=1.87e-06
MM0 N_NET18_MM0_d N_A_MM0_g N_VDD!_MM0_s N_VDD!_MM0_b P_18 L=1.8e-07 W=5e-07
+ AD=1.775e-13 AS=2.95e-13 PD=7.1e-07 PS=1.68e-06
MM1 N_Y_MM1_d N_B_MM1_g N_NET18_MM1_s N_VDD!_MM0_b P_18 L=1.8e-07 W=5e-07
+ AD=2.95e-13 AS=1.775e-13 PD=1.68e-06 PS=7.1e-07
*
.include "/home/M133040086_18/VLSI/Homework1/NOR2_X1/layout/PEX/NOR2_X1.pex.sp.NOR2_X1.pxi"
*
.ends
*
*
XNOR A VDD! B GND! Y NOR2_X1

.LIB '/home/M133040086_18/VLSI/cic018.l' TT

.option
+ post
+ accurate=1
+ dcstep=1
+ NUMDGT=10
+ MEASDGT=10

.PARAM CL = 0.01p
C0 Y 0 CL

v0 vdd! 0 dc 1.8
v1 gnd! 0 dc 0

*Input Stimulus: Measure A, Fix B
VB B 0 dc 0
VA A 0 pulse(0v 1.8v 0ns 30ps 30ps 10ns 20ns)
*VB B 0 pulse(0v 1.8v 0ns 30ps 30ps 10ns 20ns)
*VA A 0 dc 0

************************************************************************
* Measurement Section
************************************************************************
* Propagation Delay Measurement
.MEAS TRAN TpHL trig v(A) val = 0.9 rise = 2 targ v(Y) val = 0.9 fall = 2
.MEAS TRAN TpLH trig v(A) val = 0.9 fall = 2 targ v(Y) val = 0.9 rise = 2
.MEAS TRAN Tr trig v(Y) val = 0.1*1.8 rise = 2 targ v(Y) val = 0.9*1.8 rise = 2
.MEAS TRAN Tf trig v(Y) val = 0.9*1.8 fall = 2 targ v(Y) val = 0.1*1.8 fall = 2
.MEAS TRAN Tpd param = 'max(TpHL, TpLH)'

* Power Measurement
.MEAS TRAN average_power avg power
.MEAS TRAN min_power min power
.MEAS TRAN max_power max power
.MEAS TRAN src_power avg SRC_PWR

.OPTION post
.OP
.TEMP 25

.TRAN 0.1p 40n SWEEP CL 0.01p 0.04p 0.01p
.END