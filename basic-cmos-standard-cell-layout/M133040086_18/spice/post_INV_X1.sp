* File: /home/M133040086_18/VLSI/Homework1/INV_X1/Layout/PEX/INV_X1.pex.sp
* Created: Tue Apr 15 11:36:16 2025
* Program "Calibre xRC"
* Version "v2016.4_15.11"
* 
.include "/home/M133040086_18/VLSI/Homework1/INV_X1/Layout/PEX/INV_X1.pex.sp.pex"
.subckt INV_X1  IN GND! VDD! OUT
* 
* OUT	OUT
* VDD!	VDD!
* GND!	GND!
* IN	IN
M0 N_OUT_M0_d N_IN_M0_g N_GND!_M0_s N_GND!_M0_b N_18 L=1.8e-07 W=2.5e-07
+ AD=2.509e-13 AS=2.509e-13 PD=1.87e-06 PS=1.87e-06
M1 N_OUT_M1_d N_IN_M1_g N_VDD!_M1_s N_VDD!_M1_b P_18 L=1.8e-07 W=5e-07
+ AD=2.95e-13 AS=2.95e-13 PD=1.68e-06 PS=1.68e-06
*
.include "/home/M133040086_18/VLSI/Homework1/INV_X1/Layout/PEX/INV_X1.pex.sp.INV_X1.pxi"
*
.ends
*
*
XINV_X1 IN GND! VDD! OUT INV_X1


.LIB '/home/M133040086_18/VLSI/cic018.l' TT

.option
+ post
+ accurate=1
+ dcstep=1
+ NUMDGT=10
+ MEASDGT=10

.PARAM CL = 0.01p

C0 OUT 0 CL

v0 VDD! 0 dc 1.8
v1 GND! 0 dc 0

vin IN 0 pulse(0v 1.8v 0ns 30ps 30ps 10ns 20ns)

.MEAS TRAN TpHL trig v(IN) val = 0.9 rise = 2 targ v(OUT) val = 0.9 fall = 2
.MEAS TRAN TpLH trig v(IN) val = 0.9 fall = 2 targ v(OUT) val = 0.9 rise = 2
.MEAS TRAN Tr trig v(OUT) val = 0.1*1.8 rise = 2 targ v(OUT) val = 0.9*1.8 rise = 2
.MEAS TRAN Tf trig v(OUT) val = 0.9*1.8 fall = 2 targ v(OUT) val = 0.1*1.8 fall = 2
.MEAS TRAN Tpd param = 'max(TpHL, TpLH)'

.MEAS TRAN average_power avg power
.MEAS TRAN min_power min power
.MEAS TRAN max_power max power
.MEAS TRAN src_power avg SRC_PWR

.OPTION post
.OP
.TEMP 25
.TRAN 0.1ps 40ns SWEEP CL 0.01p 0.04p 0.01p
.END
*
