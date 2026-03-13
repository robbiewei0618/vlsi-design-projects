* File: /home/M133040086_18/VLSI/Homework1/NAND2_X1/layout/PEX/NAND2_X1.pex.sp
* Created: Tue Apr 15 18:45:40 2025
* Program "Calibre xRC"
* Version "v2016.4_15.11"
* 
.include "/home/M133040086_18/VLSI/Homework1/NAND2_X1/layout/PEX/NAND2_X1.pex.sp.pex"
.subckt NAND2_X1  A Y B GND! VDD!
* 
* VDD!	VDD!
* GND!	GND!
* B	B
* Y	Y
* A	A
M0 N_6_M0_d N_A_M0_g N_Y_M0_s N_GND!_M0_b N_18 L=1.8e-07 W=2.5e-07 AD=6.375e-14
+ AS=2.259e-13 PD=5.1e-07 PS=1.67e-06
M1 N_GND!_M1_d N_B_M1_g N_6_M1_s N_GND!_M0_b N_18 L=1.8e-07 W=2.5e-07
+ AD=2.259e-13 AS=6.375e-14 PD=1.67e-06 PS=5.1e-07
M2 N_Y_M2_d N_A_M2_g N_VDD!_M2_s N_VDD!_M2_b P_18 L=1.8e-07 W=5e-07 AD=1.275e-13
+ AS=2.45e-13 PD=5.1e-07 PS=1.48e-06
M3 N_VDD!_M3_d N_B_M3_g N_Y_M3_s N_VDD!_M2_b P_18 L=1.8e-07 W=5e-07 AD=2.45e-13
+ AS=1.275e-13 PD=1.48e-06 PS=5.1e-07
*
.include "/home/M133040086_18/VLSI/Homework1/NAND2_X1/layout/PEX/NAND2_X1.pex.sp.NAND2_X1.pxi"
*
.ends
*
XNAND A Y B GND! VDD! NAND2_X1


.LIB '/home/M133040086_18/VLSI/cic018.l' TT

.option
+ post
+ accurate=1
+ dcstep=1
+ NUMDGT=10
+ MEASDGT=10

.PARAM CL = 0.01p
C0 Y 0 CL

v0 VDD! 0 dc 1.8
v1 GND! 0 dc 0

* Input Stimulus: Measure A, Fix B
VB B 0 dc 1.8
VA A 0 pulse(0v 1.8v 0ns 30ps 30ps 10ns 20ns)
*VA A 0 dc 1.8
*VB B 0 pulse(0v 1.8v 0ns 30ps 30ps 10ns 20ns)
************************************************************************
* Measurement Section
************************************************************************
* Propagation Delay Measurement
.MEAS TRAN TpHL trig v(A) val = 0.9 rise = 2 targ v(Y) val = 0.9 fall = 2
.MEAS TRAN TpLH trig v(A) val = 0.9 fall = 2 targ v(Y) val = 0.9 rise = 2
.MEAS TRAN Tr trig v(Y) val = 0.1*1.8 rise = 2 targ v(Y) val = 0.9*1.8 rise = 2
.MEAS TRAN Tf trig v(Y) val = 0.9*1.8 fall = 2 targ v(Y) val = 0.1*1.8 fall = 2
.MEAS TRAN Tpd param = 'max(TpHL, TpLH)'

 *Power Measurement
.MEAS TRAN average_power avg power
.MEAS TRAN min_power min power
.MEAS TRAN max_power max power
.MEAS TRAN src_power avg SRC_PWR

.OPTION post
.OP
.TEMP 25

.TRAN 0.1p 40n SWEEP CL 0.01p 0.04p 0.01p
.END
