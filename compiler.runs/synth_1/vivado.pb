
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2$
create_project: 2default:default2
00:00:072default:default2
00:00:132default:default2
1337.2772default:default2
0.0232default:default2
31852default:default2
73512default:defaultZ17-722h px� 
�
Command: %s
1870*	planAhead2�
|read_checkpoint -auto_incremental -incremental /home/jgarci/Documents/compiler/compiler.srcs/utils_1/imports/synth_1/UAL.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2a
M/home/jgarci/Documents/compiler/compiler.srcs/utils_1/imports/synth_1/UAL.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
~
Command: %s
53*	vivadotcl2M
9synth_design -top Unite_de_controle -part xc7k70tfbv676-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7k70t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7k70t2default:defaultZ17-349h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
721862default:defaultZ8-7075h px� 
�
%s*synth2�
�Starting Synthesize : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 1697.109 ; gain = 359.832 ; free physical = 2559 ; free virtual = 6725
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2%
Unite_de_controle2default:default2g
Q/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/Unite_de_controle.vhd2default:default2
342default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2,
Memoire_des_instructions2default:default2l
X/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/Memoire_des_instructions.vhd2default:default2
52default:default2 
instr_memory2default:default2,
memoire_des_instructions2default:default2g
Q/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/Unite_de_controle.vhd2default:default2
1292default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2,
Memoire_des_instructions2default:default2n
X/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/Memoire_des_instructions.vhd2default:default2
112default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2,
Memoire_des_instructions2default:default2
02default:default2
12default:default2n
X/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/Memoire_des_instructions.vhd2default:default2
112default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2&
memoire_des_donnes2default:default2f
R/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/memoire_des_donnes.vhd2default:default2
52default:default2
data_memory2default:default2&
memoire_des_donnes2default:default2g
Q/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/Unite_de_controle.vhd2default:default2
1362default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2&
memoire_des_donnes2default:default2h
R/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/memoire_des_donnes.vhd2default:default2
142default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2&
memoire_des_donnes2default:default2
02default:default2
12default:default2h
R/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/memoire_des_donnes.vhd2default:default2
142default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2%
banc_de_registres2default:default2e
Q/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/banc_de_registres.vhd2default:default2
52default:default2!
register_bank2default:default2%
banc_de_registres2default:default2g
Q/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/Unite_de_controle.vhd2default:default2
1462default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2%
banc_de_registres2default:default2g
Q/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/banc_de_registres.vhd2default:default2
172default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2%
banc_de_registres2default:default2
02default:default2
12default:default2g
Q/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/banc_de_registres.vhd2default:default2
172default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
ALU2default:default2W
C/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/ALU.vhd2default:default2
52default:default2
alu_udc2default:default2
ALU2default:default2g
Q/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/Unite_de_controle.vhd2default:default2
1592default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
ALU2default:default2Y
C/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/ALU.vhd2default:default2
182default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ALU2default:default2
02default:default2
12default:default2Y
C/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/ALU.vhd2default:default2
182default:default8@Z8-256h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2!
INSTR_MEM_OUT2default:default2g
Q/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/Unite_de_controle.vhd2default:default2
1722default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
	DI_opcode2default:default2g
Q/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/Unite_de_controle.vhd2default:default2
1722default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
	EX_opcode2default:default2g
Q/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/Unite_de_controle.vhd2default:default2
1722default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
	ME_opcode2default:default2g
Q/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/Unite_de_controle.vhd2default:default2
1722default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
DI_op22default:default2g
Q/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/Unite_de_controle.vhd2default:default2
1722default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
EX_op22default:default2g
Q/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/Unite_de_controle.vhd2default:default2
1722default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
ME_op22default:default2g
Q/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/Unite_de_controle.vhd2default:default2
1722default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
REG_Q_A2default:default2g
Q/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/Unite_de_controle.vhd2default:default2
1722default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
DI_op32default:default2g
Q/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/Unite_de_controle.vhd2default:default2
1722default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
REG_Q_B2default:default2g
Q/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/Unite_de_controle.vhd2default:default2
1722default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
REG_DAT2default:default2g
Q/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/Unite_de_controle.vhd2default:default2
1722default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
REG_W2default:default2g
Q/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/Unite_de_controle.vhd2default:default2
1722default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
	REG_WRITE2default:default2g
Q/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/Unite_de_controle.vhd2default:default2
1722default:default8@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2%
Unite_de_controle2default:default2
02default:default2
12default:default2g
Q/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/Unite_de_controle.vhd2default:default2
342default:default8@Z8-256h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2

DI_op3_reg2default:default2
82default:default2
42default:default2g
Q/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/Unite_de_controle.vhd2default:default2
1492default:default8@Z8-3936h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
REG_RST2default:default2%
Unite_de_controle2default:default2g
Q/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/Unite_de_controle.vhd2default:default2
982default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
rst_mem2default:default2%
Unite_de_controle2default:default2g
Q/home/jgarci/Documents/compiler/compiler.srcs/sources_1/new/Unite_de_controle.vhd2default:default2
822default:default8@Z8-3848h px� 
�
%s*synth2�
�Finished Synthesize : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1810.047 ; gain = 472.770 ; free physical = 2415 ; free virtual = 6584
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:05 ; elapsed = 00:00:07 . Memory (MB): peak = 1827.859 ; gain = 490.582 ; free physical = 2429 ; free virtual = 6598
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7k70tfbv676-1
2default:defaulth p
x
� 
V
Loading part %s157*device2#
xc7k70tfbv676-12default:defaultZ21-403h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:05 ; elapsed = 00:00:07 . Memory (MB): peak = 1835.863 ; gain = 498.586 ; free physical = 2428 ; free virtual = 6597
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 1862.855 ; gain = 525.578 ; free physical = 2395 ; free virtual = 6563
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   16 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 289   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	 257 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 5     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 273   
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:32 . Memory (MB): peak = 1937.363 ; gain = 600.086 ; free physical = 2343 ; free virtual = 6517
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:32 . Memory (MB): peak = 1937.363 ; gain = 600.086 ; free physical = 2343 ; free virtual = 6517
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:13 ; elapsed = 00:00:32 . Memory (MB): peak = 1937.363 ; gain = 600.086 ; free physical = 2343 ; free virtual = 6517
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:16 ; elapsed = 00:00:35 . Memory (MB): peak = 1937.363 ; gain = 600.086 ; free physical = 2344 ; free virtual = 6518
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:16 ; elapsed = 00:00:35 . Memory (MB): peak = 1937.363 ; gain = 600.086 ; free physical = 2344 ; free virtual = 6518
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:16 ; elapsed = 00:00:35 . Memory (MB): peak = 1937.363 ; gain = 600.086 ; free physical = 2344 ; free virtual = 6518
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:16 ; elapsed = 00:00:35 . Memory (MB): peak = 1937.363 ; gain = 600.086 ; free physical = 2344 ; free virtual = 6518
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:16 ; elapsed = 00:00:35 . Memory (MB): peak = 1937.363 ; gain = 600.086 ; free physical = 2344 ; free virtual = 6518
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:16 ; elapsed = 00:00:35 . Memory (MB): peak = 1937.363 ; gain = 600.086 ; free physical = 2344 ; free virtual = 6518
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23

Static Shift Register Report:
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------------+--------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|Module Name       | RTL Name     | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------------+--------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|Unite_de_controle | REG_W_reg[3] | 4      | 4     | NO           | NO                 | YES               | 4      | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------------+--------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px� 
D
%s*synth2,
|2     |CARRY4 |     2|
2default:defaulth px� 
D
%s*synth2,
|3     |LUT1   |     8|
2default:defaulth px� 
D
%s*synth2,
|4     |LUT2   |     1|
2default:defaulth px� 
D
%s*synth2,
|5     |LUT4   |     2|
2default:defaulth px� 
D
%s*synth2,
|6     |LUT5   |     3|
2default:defaulth px� 
D
%s*synth2,
|7     |LUT6   |     9|
2default:defaulth px� 
D
%s*synth2,
|8     |SRL16E |     4|
2default:defaulth px� 
D
%s*synth2,
|9     |FDRE   |    97|
2default:defaulth px� 
D
%s*synth2,
|10    |IBUF   |    33|
2default:defaulth px� 
D
%s*synth2,
|11    |OBUF   |   117|
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
O
%s
*synth27
#+------+----------+-------+------+
2default:defaulth p
x
� 
O
%s
*synth27
#|      |Instance  |Module |Cells |
2default:defaulth p
x
� 
O
%s
*synth27
#+------+----------+-------+------+
2default:defaulth p
x
� 
O
%s
*synth27
#|1     |top       |       |   277|
2default:defaulth p
x
� 
O
%s
*synth27
#|2     |  alu_udc |ALU    |    20|
2default:defaulth p
x
� 
O
%s
*synth27
#+------+----------+-------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:16 ; elapsed = 00:00:35 . Memory (MB): peak = 1937.363 ; gain = 600.086 ; free physical = 2344 ; free virtual = 6518
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 17 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:16 ; elapsed = 00:00:35 . Memory (MB): peak = 1937.363 ; gain = 600.086 ; free physical = 2339 ; free virtual = 6516
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:16 ; elapsed = 00:00:35 . Memory (MB): peak = 1937.371 ; gain = 600.086 ; free physical = 2339 ; free virtual = 6516
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:002default:default2
1945.3012default:default2
0.0002default:default2
26092default:default2
67872default:defaultZ17-722h px� 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
22default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2020.0202default:default2
0.0002default:default2
25392default:default2
67142default:defaultZ17-722h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
h
%Synth Design complete | Checksum: %s
562*	vivadotcl2
1fe2f7b42default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
302default:default2
172default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:202default:default2
00:00:372default:default2
2020.0202default:default2
682.7422default:default2
25392default:default2
67142default:defaultZ17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2 
synth_design2default:default2
Physical2default:default2
PSS2default:default2O
;(MB): overall = 1432.141; main = 1205.106; forked = 347.1442default:defaultZ17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2 
synth_design2default:default2
Virtual2default:default2
VSS2default:default2O
;(MB): overall = 2907.305; main = 2020.023; forked = 977.9452default:defaultZ17-2834h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2_
K/home/jgarci/Documents/compiler/compiler.runs/synth_1/Unite_de_controle.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
xExecuting : report_utilization -file Unite_de_controle_utilization_synth.rpt -pb Unite_de_controle_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon May 26 18:13:48 20252default:defaultZ17-206h px� 


End Record