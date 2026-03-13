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

.SUBCKT CMOS_FA A B Cin Cout Sum
*.PININFO A:I B:I Cin:I Cout:O Sum:O
MM16 net29 B gnd! gnd! N_18 W=500.00n L=180.00n
MM7 net14 Cin net13 gnd! N_18 W=500.00n L=180.00n
MM22 net63 B net62 gnd! N_18 W=750.00n L=180.00n
MM6 net66 B gnd! gnd! N_18 W=500.00n L=180.00n
MM21 net28 Cin net63 gnd! N_18 W=750.00n L=180.00n
MM23 net62 A gnd! gnd! N_18 W=750.00n L=180.00n
MM9 net13 B gnd! gnd! N_18 W=500.00n L=180.00n
MM8 net13 A gnd! gnd! N_18 W=500.00n L=180.00n
MM15 net29 A gnd! gnd! N_18 W=500.00n L=180.00n
MM17 net29 Cin gnd! gnd! N_18 W=500.00n L=180.00n
MM5 net14 A net66 gnd! N_18 W=500.00n L=180.00n
MM14 net28 net14 net29 gnd! N_18 W=500.00n L=180.00n
MM25 Sum net28 gnd! gnd! N_18 W=250.00n L=180.00n
MM27 Cout net14 gnd! gnd! N_18 W=250.00n L=180.00n
MM0 net15 A vdd! vdd! P_18 W=1.00u L=180.00n
MM1 net15 B vdd! vdd! P_18 W=1.00u L=180.00n
MM2 net67 B vdd! vdd! P_18 W=1.00u L=180.00n
MM11 net32 B vdd! vdd! P_18 W=1.00u L=180.00n
MM24 Sum net28 vdd! vdd! P_18 W=500.00n L=180.00n
MM10 net32 A vdd! vdd! P_18 W=1.00u L=180.00n
MM26 Cout net14 vdd! vdd! P_18 W=500.00n L=180.00n
MM3 net14 Cin net15 vdd! P_18 W=1.00u L=180.00n
MM12 net32 Cin vdd! vdd! P_18 W=1.00u L=180.00n
MM20 net28 Cin net64 vdd! P_18 W=1.5u L=180.00n
MM28 net14 A net67 vdd! P_18 W=1.00u L=180.00n
MM19 net64 B net65 vdd! P_18 W=1.5u L=180.00n
MM13 net28 net14 net32 vdd! P_18 W=1.00u L=180.00n
MM18 net65 A vdd! vdd! P_18 W=1.5u L=180.00n
.ENDS

************************************************************************
XFA A B Cin Cout Sum CMOS_FA
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
.MEAS TRAN Tr trig v(Cout) val = 0.1*1.8 rise = 3 targ v(Cout) val = 0.9*1.8 rise = 3
.MEAS TRAN Tf trig v(Cout) val = 0.9*1.8 fall = 3 targ v(Cout) val = 0.1*1.8 fall = 3
.OPTION post
.OP
.TEMP 25
.TRAN 0.1n 10000n
.END