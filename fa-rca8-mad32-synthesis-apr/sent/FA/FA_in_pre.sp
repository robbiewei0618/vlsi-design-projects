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

.SUBCKT FA A B Cin Cout Sum
*.PININFO A:I B:I Cin:I Cout:O Sum:O
XU39 Cin n26 / INV_X2
XU36 n29 n23 / INV_X2
XU37 A n24 / INV_X2
XU38 B n25 / INV_X2
XU47 Cin n29 n31 / NAND_X1
XU42 n30 n31 Cout / NAND_X1
XU43 A B n30 / NAND_X1
XU46 n29 n26 n27 / NAND_X1
XU44 n27 n28 Sum / NAND_X1
XU45 n23 Cin n28 / NAND_X1
XU40 B n24 n33 / NAND_X1
XU41 A n25 n32 / NAND_X1
XU32 n32 n33 n29 / NAND_X2
.ENDS

************************************************************************
XFA A B Cin Cout Sum FA
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
.MEAS TRAN Tr trig v(Cout) val = 0.1*1.8 rise = 3 targ v(Cout) val = 0.9*1.8 rise = 3
.MEAS TRAN Tf trig v(Cout) val = 0.9*1.8 fall = 3 targ v(Cout) val = 0.1*1.8 fall = 3
.OPTION post
.OP
.TEMP 25
.TRAN 0.1n 10000n
.END