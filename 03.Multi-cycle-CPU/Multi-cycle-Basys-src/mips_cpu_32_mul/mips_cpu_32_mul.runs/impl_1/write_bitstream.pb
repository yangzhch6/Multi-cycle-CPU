
j
Command: %s
1870*	planAhead25
!open_checkpoint Basys3_routed.dcp2default:defaultZ12-2866h px? 
^

Starting %s Task
103*constraints2#
open_checkpoint2default:defaultZ18-103h px? 
?

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.021 . Memory (MB): peak = 215.547 ; gain = 0.0002default:defaulth px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
862default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2016.32default:defaultZ1-479h px? 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
?
Parsing XDC File [%s]
179*designutils2?
?C:/Users/ASROCK/Desktop/mips_cpu_32_mul/mips_cpu_32_mul/mips_cpu_32_mul.runs/impl_1/.Xil/Vivado-6080-DESKTOP-H0DV5R6/dcp/Basys3.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2?
?C:/Users/ASROCK/Desktop/mips_cpu_32_mul/mips_cpu_32_mul/mips_cpu_32_mul.runs/impl_1/.Xil/Vivado-6080-DESKTOP-H0DV5R6/dcp/Basys3.xdc2default:default8Z20-178h px? 
?
Reading XDEF placement.
206*designutilsZ20-206h px? 
D
Reading placer database...
1602*designutilsZ20-1892h px? 
=
Reading XDEF routing.
207*designutilsZ20-207h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
Read XDEF File: 2default:default2
00:00:002default:default2 
00:00:00.3202default:default2
496.6562default:default2
0.0002default:defaultZ17-268h px? 
?
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
0.0000002default:default2
0.0000002default:defaultZ20-1924h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common20
Finished XDEF File Restore: 2default:default2
00:00:002default:default2 
00:00:00.3202default:default2
496.6562default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 12 instances were transformed.
  RAM32M => RAM32M (RAMS32, RAMS32, RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMD32): 12 instances
2default:defaultZ1-111h px? 
?
'Checkpoint was created with %s build %s378*project2+
Vivado v2016.3 (64-bit)2default:default2
16825632default:defaultZ1-604h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
open_checkpoint: 2default:default2
00:00:062default:default2
00:00:062default:default2
496.6562default:default2
286.1602default:defaultZ17-268h px? 
?
Command: %s
53*	vivadotcl2S
?write_bitstream -force -no_partial_bitfile Basys3.bit -bin_file2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px? 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
Rule violation (%s) %s - %s
20*drc2
CFGBVS-12default:default2G
3Missing CFGBVS and CONFIG_VOLTAGE Design Properties2default:default2?
?Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/E[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[0][7]_i_2/O, cell Top/ALUout/DataMemory_reg[0][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_101[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[26][7]_i_2/O, cell Top/ALUout/DataMemory_reg[26][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_105[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[27][7]_i_2/O, cell Top/ALUout/DataMemory_reg[27][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_109[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[28][7]_i_2/O, cell Top/ALUout/DataMemory_reg[28][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_113[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[29][7]_i_2/O, cell Top/ALUout/DataMemory_reg[29][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_117[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[30][7]_i_2/O, cell Top/ALUout/DataMemory_reg[30][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_121[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[31][7]_i_2/O, cell Top/ALUout/DataMemory_reg[31][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_125[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[32][7]_i_2/O, cell Top/ALUout/DataMemory_reg[32][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_129[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[33][7]_i_2/O, cell Top/ALUout/DataMemory_reg[33][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_133[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[34][7]_i_2/O, cell Top/ALUout/DataMemory_reg[34][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_137[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[35][7]_i_2/O, cell Top/ALUout/DataMemory_reg[35][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_13[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[4][7]_i_2/O, cell Top/ALUout/DataMemory_reg[4][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_141[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[36][7]_i_2/O, cell Top/ALUout/DataMemory_reg[36][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_145[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[37][7]_i_2/O, cell Top/ALUout/DataMemory_reg[37][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_149[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[38][7]_i_2/O, cell Top/ALUout/DataMemory_reg[38][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_153[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[39][7]_i_2/O, cell Top/ALUout/DataMemory_reg[39][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_157[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[40][7]_i_2/O, cell Top/ALUout/DataMemory_reg[40][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_161[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[41][7]_i_2/O, cell Top/ALUout/DataMemory_reg[41][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_165[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[42][7]_i_2/O, cell Top/ALUout/DataMemory_reg[42][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_169[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[43][7]_i_2/O, cell Top/ALUout/DataMemory_reg[43][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_173[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[44][7]_i_2/O, cell Top/ALUout/DataMemory_reg[44][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_177[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[45][7]_i_2/O, cell Top/ALUout/DataMemory_reg[45][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_17[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[5][7]_i_2/O, cell Top/ALUout/DataMemory_reg[5][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_181[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[46][7]_i_2/O, cell Top/ALUout/DataMemory_reg[46][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_185[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[47][7]_i_2/O, cell Top/ALUout/DataMemory_reg[47][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_189[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[48][7]_i_2/O, cell Top/ALUout/DataMemory_reg[48][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_193[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[49][7]_i_2/O, cell Top/ALUout/DataMemory_reg[49][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_197[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[50][7]_i_2/O, cell Top/ALUout/DataMemory_reg[50][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_1[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[1][7]_i_2/O, cell Top/ALUout/DataMemory_reg[1][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_201[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[51][7]_i_2/O, cell Top/ALUout/DataMemory_reg[51][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_205[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[52][7]_i_2/O, cell Top/ALUout/DataMemory_reg[52][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_209[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[53][7]_i_2/O, cell Top/ALUout/DataMemory_reg[53][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_213[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[54][7]_i_2/O, cell Top/ALUout/DataMemory_reg[54][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_217[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[55][7]_i_2/O, cell Top/ALUout/DataMemory_reg[55][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_21[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[6][7]_i_2/O, cell Top/ALUout/DataMemory_reg[6][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_221[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[56][7]_i_2/O, cell Top/ALUout/DataMemory_reg[56][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_225[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[57][7]_i_2/O, cell Top/ALUout/DataMemory_reg[57][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_229[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[58][7]_i_2/O, cell Top/ALUout/DataMemory_reg[58][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_233[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[59][7]_i_2/O, cell Top/ALUout/DataMemory_reg[59][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_237[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[60][7]_i_2/O, cell Top/ALUout/DataMemory_reg[60][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_241[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[61][7]_i_2/O, cell Top/ALUout/DataMemory_reg[61][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_245[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[62][7]_i_2/O, cell Top/ALUout/DataMemory_reg[62][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_249[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[63][7]_i_2/O, cell Top/ALUout/DataMemory_reg[63][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_25[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[7][7]_i_2/O, cell Top/ALUout/DataMemory_reg[7][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_29[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[8][7]_i_2/O, cell Top/ALUout/DataMemory_reg[8][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_33[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[9][7]_i_2/O, cell Top/ALUout/DataMemory_reg[9][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_37[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[10][7]_i_2/O, cell Top/ALUout/DataMemory_reg[10][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_41[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[11][7]_i_2/O, cell Top/ALUout/DataMemory_reg[11][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_45[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[12][7]_i_2/O, cell Top/ALUout/DataMemory_reg[12][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_49[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[13][7]_i_2/O, cell Top/ALUout/DataMemory_reg[13][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_53[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[14][7]_i_2/O, cell Top/ALUout/DataMemory_reg[14][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_57[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[15][7]_i_2/O, cell Top/ALUout/DataMemory_reg[15][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_5[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[2][7]_i_2/O, cell Top/ALUout/DataMemory_reg[2][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_61[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[16][7]_i_2/O, cell Top/ALUout/DataMemory_reg[16][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_65[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[17][7]_i_2/O, cell Top/ALUout/DataMemory_reg[17][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_69[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[18][7]_i_2/O, cell Top/ALUout/DataMemory_reg[18][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_73[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[19][7]_i_2/O, cell Top/ALUout/DataMemory_reg[19][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_77[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[20][7]_i_2/O, cell Top/ALUout/DataMemory_reg[20][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_81[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[21][7]_i_2/O, cell Top/ALUout/DataMemory_reg[21][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_85[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[22][7]_i_2/O, cell Top/ALUout/DataMemory_reg[22][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_89[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[23][7]_i_2/O, cell Top/ALUout/DataMemory_reg[23][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_93[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[24][7]_i_2/O, cell Top/ALUout/DataMemory_reg[24][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_97[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[25][7]_i_2/O, cell Top/ALUout/DataMemory_reg[25][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/ALUout/out_reg[7]_9[0] is a gated clock net sourced by a combinational pin Top/ALUout/DataMemory_reg[3][7]_i_2/O, cell Top/ALUout/DataMemory_reg[3][7]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
PDRC-1532default:default2%
Gated clock check2default:default2?
?Net Top/_IR/E[0] is a gated clock net sourced by a combinational pin Top/_IR/out_reg[4]_i_2/O, cell Top/_IR/out_reg[4]_i_2. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.2default:defaultZ23-20h px? 
g
DRC finished with %s
1905*	planAhead2)
0 Errors, 66 Warnings2default:defaultZ12-3199h px? 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px? 
?
Loading data files...
1271*designutilsZ12-1165h px? 
>
Loading site data...
1273*designutilsZ12-1167h px? 
?
Loading route data...
1272*designutilsZ12-1166h px? 
?
Processing options...
1362*designutilsZ12-1514h px? 
<
Creating bitmap...
1249*designutilsZ12-1141h px? 
7
Creating bitstream...
7*	bitstreamZ40-7h px? 
]
Writing bitstream %s...
11*	bitstream2 
./Basys3.bit2default:defaultZ40-11h px? 
]
Writing bitstream %s...
11*	bitstream2 
./Basys3.bin2default:defaultZ40-11h px? 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px? 
?
?WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px? 
?
?'%s' has been successfully sent to Xilinx on %s. For additional details about this file, please refer to the Webtalk help file at %s.
186*common2?
pC:/Users/ASROCK/Desktop/mips_cpu_32_mul/mips_cpu_32_mul/mips_cpu_32_mul.runs/impl_1/usage_statistics_webtalk.xml2default:default2,
Tue Dec 19 20:33:08 20172default:default2I
5D:/vivado/Vivado/2016.3/doc/webtalk_introduction.html2default:defaultZ17-186h px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
152default:default2
662default:default2
02default:default2
02default:defaultZ4-41h px? 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:152default:default2
00:00:182default:default2
869.7462default:default2
373.0902default:defaultZ17-268h px? 
c
Unable to parse hwdef file %s162*	vivadotcl2 
Basys3.hwdef2default:defaultZ4-395h px? 


End Record