************************************************************************
* auCdl Netlist:
* 
* Library Name:  Homwork3
* Top Cell Name: RCA8
* View Name:     schematic
* Netlisted on:  May  8 19:29:24 2023
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
+        GND!

*.PIN gnd!
*+    vdd!
*+    GND!

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
* Cell Name:    RCA8_DW01_add_0
* View Name:    schematic
************************************************************************

.SUBCKT RCA8_DW01_add_0 A[8] A[7] A[6] A[5] A[4] A[3] A[2] A[1] A[0] B[8] B[7] 
+ B[6] B[5] B[4] B[3] B[2] B[1] B[0] CI CO SUM[8] SUM[7] SUM[6] SUM[5] SUM[4] 
+ SUM[3] SUM[2] SUM[1] SUM[0]
*.PININFO A[8]:I A[7]:I A[6]:I A[5]:I A[4]:I A[3]:I A[2]:I A[1]:I A[0]:I 
*.PININFO B[8]:I B[7]:I B[6]:I B[5]:I B[4]:I B[3]:I B[2]:I B[1]:I B[0]:I CI:I 
*.PININFO CO:O SUM[8]:O SUM[7]:O SUM[6]:O SUM[5]:O SUM[4]:O SUM[3]:O SUM[2]:O 
*.PININFO SUM[1]:O SUM[0]:O
XU105 n107 n181 / INV_X2
XU104 n104 SUM[1] / INV_X2
XU101 n97 n177 / INV_X2
XU100 n94 SUM[2] / INV_X2
XU97 n87 n173 / INV_X2
XU96 n84 SUM[3] / INV_X2
XU93 n77 n169 / INV_X2
XU92 n74 SUM[4] / INV_X2
XU89 n67 n165 / INV_X2
XU88 n64 SUM[5] / INV_X2
XU85 n57 n161 / INV_X2
XU84 n54 SUM[6] / INV_X2
XU81 n44 SUM[7] / INV_X2
XU82 n47 n158 / INV_X2
XU117 n115 n193 / INV_X2
XU119 CI n195 / INV_X2
XU116 B[1] n192 / INV_X2
XU115 B[2] n191 / INV_X2
XU114 B[3] n190 / INV_X2
XU113 B[4] n189 / INV_X2
XU112 B[5] n188 / INV_X2
XU111 B[6] n187 / INV_X2
XU110 B[7] n186 / INV_X2
XU109 A[0] n185 / INV_X2
XU118 B[0] n194 / INV_X2
XU107 A[1] n183 / INV_X2
XU108 n101 n184 / INV_X2
XU103 A[2] n179 / INV_X2
XU106 n91 n182 / INV_X2
XU99 A[3] n175 / INV_X2
XU102 n81 n178 / INV_X2
XU95 A[4] n171 / INV_X2
XU98 n71 n174 / INV_X2
XU91 A[5] n167 / INV_X2
XU94 n61 n170 / INV_X2
XU87 A[6] n163 / INV_X2
XU90 n51 n166 / INV_X2
XU83 A[7] n159 / INV_X2
XU86 n43 n162 / INV_X2
XU11 n181 n184 n106 / NAND_X1
XU10 n107 n101 n105 / NAND_X1
XU9 n105 n106 n104 / NAND_X1
XU13 n97 n91 n95 / NAND_X1
XU14 n177 n182 n96 / NAND_X1
XU12 n95 n96 n94 / NAND_X1
XU17 n173 n178 n86 / NAND_X1
XU16 n87 n81 n85 / NAND_X1
XU15 n85 n86 n84 / NAND_X1
XU20 n169 n174 n76 / NAND_X1
XU19 n77 n71 n75 / NAND_X1
XU18 n75 n76 n74 / NAND_X1
XU22 n67 n61 n65 / NAND_X1
XU23 n165 n170 n66 / NAND_X1
XU21 n65 n66 n64 / NAND_X1
XU8 n161 n166 n56 / NAND_X1
XU7 n57 n51 n55 / NAND_X1
XU6 n55 n56 n54 / NAND_X1
XU25 n47 n43 n45 / NAND_X1
XU26 n158 n162 n46 / NAND_X1
XU24 n45 n46 n44 / NAND_X1
XU80 n193 A[0] n114 / NAND_X1
XU78 n113 n114 SUM[0] / NAND_X1
XU79 n115 n185 n113 / NAND_X1
XU75 n116 n117 n115 / NAND_X1
XU76 CI n194 n117 / NAND_X1
XU77 B[0] n195 n116 / NAND_X1
XU70 n194 n185 n110 / NAND_X1
XU69 CI n110 n109 / NAND_X1
XU67 n108 n109 n101 / NAND_X1
XU68 B[0] A[0] n108 / NAND_X1
XU45 A[1] n192 n111 / NAND_X1
XU43 n111 n112 n107 / NAND_X1
XU44 B[1] n183 n112 / NAND_X1
XU66 n184 n183 n100 / NAND_X1
XU65 B[1] n100 n99 / NAND_X1
XU64 A[1] n101 n98 / NAND_X1
XU1 n98 n99 n91 / NAND_X1
XU48 A[2] n191 n102 / NAND_X1
XU46 n102 n103 n97 / NAND_X1
XU47 B[2] n179 n103 / NAND_X1
XU30 n182 n179 n90 / NAND_X1
XU29 B[2] n90 n89 / NAND_X1
XU27 n88 n89 n81 / NAND_X1
XU28 A[2] n91 n88 / NAND_X1
XU51 A[3] n190 n92 / NAND_X1
XU49 n92 n93 n87 / NAND_X1
XU50 B[3] n175 n93 / NAND_X1
XU33 n178 n175 n80 / NAND_X1
XU32 B[3] n80 n79 / NAND_X1
XU31 A[3] n81 n78 / NAND_X1
XU54 A[4] n189 n82 / NAND_X1
XU52 n82 n83 n77 / NAND_X1
XU53 B[4] n171 n83 / NAND_X1
XU3 n174 n171 n70 / NAND_X1
XU35 B[4] n70 n69 / NAND_X1
XU34 A[4] n71 n68 / NAND_X1
XU2 n68 n69 n61 / NAND_X1
XU57 A[5] n188 n72 / NAND_X1
XU55 n72 n73 n67 / NAND_X1
XU56 B[5] n167 n73 / NAND_X1
XU39 n170 n167 n60 / NAND_X1
XU38 B[5] n60 n59 / NAND_X1
XU36 n58 n59 n51 / NAND_X1
XU37 A[5] n61 n58 / NAND_X1
XU60 A[6] n187 n62 / NAND_X1
XU58 n62 n63 n57 / NAND_X1
XU59 B[6] n163 n63 / NAND_X1
XU42 n166 n163 n50 / NAND_X1
XU41 B[6] n50 n49 / NAND_X1
XU40 A[6] n51 n48 / NAND_X1
XU4 n48 n49 n43 / NAND_X1
XU63 A[7] n186 n52 / NAND_X1
XU61 n52 n53 n47 / NAND_X1
XU62 B[7] n159 n53 / NAND_X1
XU72 A[7] n43 n40 / NAND_X1
XU71 n40 n41 SUM[8] / NAND_X1
XU73 B[7] n42 n41 / NAND_X1
XU74 n162 n159 n42 / NAND_X1
XU5 n78 n79 n71 / NAND_X2
.ENDS

************************************************************************
* Library Name: Homwork3
* Cell Name:    RCA8
* View Name:    schematic
************************************************************************

.SUBCKT RCA8 A[7] A[6] A[5] A[4] A[3] A[2] A[1] A[0] B[7] B[6] B[5] B[4] B[3] 
+ B[2] B[1] B[0] Cin Cout Sum[7] Sum[6] Sum[5] Sum[4] Sum[3] Sum[2] Sum[1] 
+ Sum[0]
*.PININFO A[7]:I A[6]:I A[5]:I A[4]:I A[3]:I A[2]:I A[1]:I A[0]:I B[7]:I 
*.PININFO B[6]:I B[5]:I B[4]:I B[3]:I B[2]:I B[1]:I B[0]:I Cin:I Cout:O 
*.PININFO Sum[7]:O Sum[6]:O Sum[5]:O Sum[4]:O Sum[3]:O Sum[2]:O Sum[1]:O 
*.PININFO Sum[0]:O
Xadd_1_root_add_12_2 GND! A[7] A[6] A[5] A[4] A[3] A[2] A[1] A[0] GND! B[7] 
+ B[6] B[5] B[4] B[3] B[2] B[1] B[0] Cin NeTt_10 Cout Sum[7] Sum[6] Sum[5] 
+ Sum[4] Sum[3] Sum[2] Sum[1] Sum[0] / RCA8_DW01_add_0
.ENDS

************************************************************************
XRCA8 A[7] A[6] A[5] A[4] A[3] A[2] A[1] A[0]  B[7]
+ B[6] B[5] B[4] B[3] B[2] B[1] B[0] Cin Cout SUM[7] SUM[6] SUM[5] SUM[4]
+ SUM[3] SUM[2] SUM[1] SUM[0] RCA8
.LIB '/home/2023_VLSI_83/cic018.l' TT
.option
+ post
+accurate=1
+ dcstep=1
+ NUMDGT=10
+ MEASDGT=10
.PARAM CL = 0p
C0 SUM[7] 0 CL
v0 vdd! 0 dc 1.8
v1 gnd! 0 dc 0
vA[8] A[8] 0 dc 1.8
vA[7] A[7] 0 dc 1.8
vA[6] A[6] 0 dc 1.8
vA[5] A[5] 0 dc 1.8
vA[4] A[4] 0 dc 1.8
vA[3] A[3] 0 dc 1.8
vA[2] A[2] 0 dc 1.8
vA[1] A[1] 0 dc 1.8
vA[0] A[0] 0 dc 1.8
vB[8] B[8] 0 dc 0
vB[7] B[7] 0 dc 0
vB[6] B[6] 0 dc 0
vB[5] B[5] 0 dc 0
vB[4] B[4] 0 dc 0
vB[3] B[3] 0 dc 0
vB[2] B[2] 0 dc 0
vB[1] B[1] 0 dc 0
vB[0] B[0] 0 dc 0
vCin Cin 0 pulse(0v 1.8v 0n 0.03n 0.03n 499.97n 1000n)
.MEAS TRAN Tr trig v(Cout) val = 0.1*1.8 rise = 3 targ v(Cout) val = 0.9*1.8 rise = 3
.MEAS TRAN Tf trig v(Cout) val = 0.9*1.8 fall = 3 targ v(Cout) val = 0.1*1.8 fall = 3
.OPTION post
.OP
.TEMP 25
.TRAN 0.1n 10000n
.END