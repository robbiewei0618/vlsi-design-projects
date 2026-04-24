************************************************************************
* auCdl Netlist:
* 
* Library Name:  Homework1
* Top Cell Name: NOR2_XL
* View Name:     schematic
* Netlisted on:  Mar 14 20:27:09 2023
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
* Library Name: Homework1
* Cell Name:    NOR2_XL
* View Name:    schematic
************************************************************************

.SUBCKT NOR2_XL A B out
*.PININFO A:I B:I out:O
MM1 out B net17 vdd! P_18 W=250.00n L=180.00n
MM0 net17 A vdd! vdd! P_18 W=250.00n L=180.00n
MM3 out B gnd! gnd! N_18 W=250.00n L=180.00n
MM2 out A gnd! gnd! N_18 W=250.00n L=180.00n
.ENDS

************************************************************************
XINV A B out NOR2_XL
.LIB '/home/2023_VLSI_83/cic018.l' SS
.option
+ post
+accurate=1
+ dcstep=1
+ NUMDGT=10
+ MEASDGT=10
.PARAM
+z11 = limit(0.9,0.9)
+z12 = limit(0.9,0.9)

.PARAM CL = 0p
C0 out 0 CL
v0 vdd! 0 dc 1.8
v1 gnd! 0 dc 0
*vin in 0 pulse(z11 z12 0ns 0.03ns 0.03ns 499.97ns 1000ns)
vA A 0 dc 0
*vB B 0 pulse(0v 1.8v 0ns 0.03ns 0.03ns 499.97ns 1000ns)
*vB B 0 pulse(z11 z12 0ns 0.03ns 0.03ns 499.97ns 1000ns)
vB B 0 pulse(0v 1.8v 0ns 0.03ns 0.03ns 499.97ns 1000ns)
.MEAS TRAN TpHL trig v(B) val = 0.9 rise = 2 targ v(out) val = 0.9 fall = 2
.MEAS TRAN TpLH trig v(B) val = 0.9 fall = 2 targ v(out) val = 0.9 rise = 2
.MEAS TRAN Tr trig v(out) val = 0.1*1.8 rise = 3 targ v(out) val = 0.9*1.8 rise = 3
.MEAS TRAN Tf trig v(out) val = 0.9*1.8 fall = 3 targ v(out) val = 0.1*1.8 fall = 3

.MEAS TRAN average_power avg power
.MEAS TRAN min_power min power 
.MEAS TRAN max_power max power 
.MEAS TRAN src_power avg SRC_PWR 

.OPTION post
.OP
.TEMP 25
.TRAN 0.1n 10000n SWEEP CL 0p 0.03p 0.01p
*.TRAN 0.1n 10000n START = 0. sweep monte=100

.END