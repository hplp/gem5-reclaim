
op:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010000 <_ftext>:
   10000:	0000c197          	auipc	gp,0xc
   10004:	f9018193          	addi	gp,gp,-112 # 1bf90 <_gp>
   10008:	0000c297          	auipc	t0,0xc
   1000c:	82828293          	addi	t0,t0,-2008 # 1b830 <_PathLocale>
   10010:	0000c317          	auipc	t1,0xc
   10014:	8c030313          	addi	t1,t1,-1856 # 1b8d0 <_end>
   10018:	0002b023          	sd	zero,0(t0)
   1001c:	00828293          	addi	t0,t0,8
   10020:	fe62ece3          	bltu	t0,t1,10018 <_ftext+0x18>
   10024:	00000517          	auipc	a0,0x0
   10028:	30450513          	addi	a0,a0,772 # 10328 <__libc_fini_array>
   1002c:	270000ef          	jal	1029c <atexit>
   10030:	354000ef          	jal	10384 <__libc_init_array>
   10034:	00012503          	lw	a0,0(sp)
   10038:	00810593          	addi	a1,sp,8
   1003c:	00000613          	li	a2,0
   10040:	124000ef          	jal	10164 <main>
   10044:	2b40006f          	j	102f8 <exit>

0000000000010048 <_fini>:
   10048:	00008067          	ret

000000000001004c <deregister_tm_clones>:
   1004c:	0001b537          	lui	a0,0x1b
   10050:	0001b7b7          	lui	a5,0x1b
   10054:	78850713          	addi	a4,a0,1928 # 1b788 <__TMC_END__>
   10058:	78f78793          	addi	a5,a5,1935 # 1b78f <__TMC_END__+0x7>
   1005c:	40e787b3          	sub	a5,a5,a4
   10060:	00e00713          	li	a4,14
   10064:	00f77c63          	bleu	a5,a4,1007c <deregister_tm_clones+0x30>
   10068:	00000337          	lui	t1,0x0
   1006c:	00030313          	mv	t1,t1
   10070:	00030663          	beqz	t1,1007c <deregister_tm_clones+0x30>
   10074:	78850513          	addi	a0,a0,1928
   10078:	00030067          	jr	t1
   1007c:	00008067          	ret

0000000000010080 <register_tm_clones>:
   10080:	0001b537          	lui	a0,0x1b
   10084:	0001b7b7          	lui	a5,0x1b
   10088:	78850593          	addi	a1,a0,1928 # 1b788 <__TMC_END__>
   1008c:	78878793          	addi	a5,a5,1928 # 1b788 <__TMC_END__>
   10090:	40b787b3          	sub	a5,a5,a1
   10094:	4037d793          	srai	a5,a5,0x3
   10098:	03f7d593          	srli	a1,a5,0x3f
   1009c:	00f585b3          	add	a1,a1,a5
   100a0:	4015d593          	srai	a1,a1,0x1
   100a4:	00058c63          	beqz	a1,100bc <register_tm_clones+0x3c>
   100a8:	00000337          	lui	t1,0x0
   100ac:	00030313          	mv	t1,t1
   100b0:	00030663          	beqz	t1,100bc <register_tm_clones+0x3c>
   100b4:	78850513          	addi	a0,a0,1928
   100b8:	00030067          	jr	t1
   100bc:	00008067          	ret

00000000000100c0 <__do_global_dtors_aux>:
   100c0:	ff010113          	addi	sp,sp,-16
   100c4:	00813023          	sd	s0,0(sp)
   100c8:	8d01c783          	lbu	a5,-1840(gp) # 1b860 <_bss_start>
   100cc:	00113423          	sd	ra,8(sp)
   100d0:	02079663          	bnez	a5,100fc <__do_global_dtors_aux+0x3c>
   100d4:	f79ff0ef          	jal	1004c <deregister_tm_clones>
   100d8:	000007b7          	lui	a5,0x0
   100dc:	00078793          	mv	a5,a5
   100e0:	00078a63          	beqz	a5,100f4 <__do_global_dtors_aux+0x34>
   100e4:	00019537          	lui	a0,0x19
   100e8:	6f050513          	addi	a0,a0,1776 # 196f0 <__fini_array_end>
   100ec:	ffff0317          	auipc	t1,0xffff0
   100f0:	f14300e7          	jalr	t1,-236 # 0 <_ftext-0x10000>
   100f4:	00100793          	li	a5,1
   100f8:	8cf18823          	sb	a5,-1840(gp) # 1b860 <_bss_start>
   100fc:	00813083          	ld	ra,8(sp)
   10100:	00013403          	ld	s0,0(sp)
   10104:	01010113          	addi	sp,sp,16
   10108:	00008067          	ret

000000000001010c <frame_dummy>:
   1010c:	ff010113          	addi	sp,sp,-16
   10110:	000007b7          	lui	a5,0x0
   10114:	00113423          	sd	ra,8(sp)
   10118:	00078793          	mv	a5,a5
   1011c:	00078c63          	beqz	a5,10134 <frame_dummy+0x28>
   10120:	00019537          	lui	a0,0x19
   10124:	8d818593          	addi	a1,gp,-1832 # 1b868 <object.3092>
   10128:	6f050513          	addi	a0,a0,1776 # 196f0 <__fini_array_end>
   1012c:	ffff0317          	auipc	t1,0xffff0
   10130:	ed4300e7          	jalr	t1,-300 # 0 <_ftext-0x10000>
   10134:	0001a7b7          	lui	a5,0x1a
   10138:	78078513          	addi	a0,a5,1920 # 1a780 <__JCR_END__>
   1013c:	00053783          	ld	a5,0(a0)
   10140:	00079863          	bnez	a5,10150 <frame_dummy+0x44>
   10144:	00813083          	ld	ra,8(sp)
   10148:	01010113          	addi	sp,sp,16
   1014c:	f35ff06f          	j	10080 <register_tm_clones>
   10150:	000007b7          	lui	a5,0x0
   10154:	00078793          	mv	a5,a5
   10158:	fe0786e3          	beqz	a5,10144 <frame_dummy+0x38>
   1015c:	000780e7          	jalr	a5
   10160:	fe5ff06f          	j	10144 <frame_dummy+0x38>

0000000000010164 <main>:
   10164:	fd010113          	addi	sp,sp,-48
   10168:	02113423          	sd	ra,40(sp)
   1016c:	02813023          	sd	s0,32(sp)
   10170:	03010413          	addi	s0,sp,48
   10174:	fca42e23          	sw	a0,-36(s0)
   10178:	fcb43823          	sd	a1,-48(s0)
   1017c:	fd043783          	ld	a5,-48(s0)
   10180:	00878793          	addi	a5,a5,8 # 8 <_ftext-0xfff8>
   10184:	0007b783          	ld	a5,0(a5)
   10188:	00078513          	mv	a0,a5
   1018c:	124000ef          	jal	102b0 <atoi>
   10190:	fea42423          	sw	a0,-24(s0)
   10194:	fd043783          	ld	a5,-48(s0)
   10198:	01078793          	addi	a5,a5,16
   1019c:	0007b783          	ld	a5,0(a5)
   101a0:	0007c783          	lbu	a5,0(a5)
   101a4:	fef403a3          	sb	a5,-25(s0)
   101a8:	fd043783          	ld	a5,-48(s0)
   101ac:	01878793          	addi	a5,a5,24
   101b0:	0007b783          	ld	a5,0(a5)
   101b4:	00078513          	mv	a0,a5
   101b8:	0f8000ef          	jal	102b0 <atoi>
   101bc:	fea42023          	sw	a0,-32(s0)
   101c0:	fe042623          	sw	zero,-20(s0)
   101c4:	fe744783          	lbu	a5,-25(s0)
   101c8:	02b00713          	li	a4,43
   101cc:	02e78663          	beq	a5,a4,101f8 <main+0x94>
   101d0:	02b00713          	li	a4,43
   101d4:	00f74863          	blt	a4,a5,101e4 <main+0x80>
   101d8:	02a00713          	li	a4,42
   101dc:	04e78263          	beq	a5,a4,10220 <main+0xbc>
   101e0:	0680006f          	j	10248 <main+0xe4>
   101e4:	02d00713          	li	a4,45
   101e8:	02e78263          	beq	a5,a4,1020c <main+0xa8>
   101ec:	02f00713          	li	a4,47
   101f0:	04e78263          	beq	a5,a4,10234 <main+0xd0>
   101f4:	0540006f          	j	10248 <main+0xe4>
   101f8:	fe842703          	lw	a4,-24(s0)
   101fc:	fe042783          	lw	a5,-32(s0)
   10200:	00f707bb          	addw	a5,a4,a5
   10204:	fef42623          	sw	a5,-20(s0)
   10208:	05c0006f          	j	10264 <main+0x100>
   1020c:	fe842703          	lw	a4,-24(s0)
   10210:	fe042783          	lw	a5,-32(s0)
   10214:	40f707bb          	subw	a5,a4,a5
   10218:	fef42623          	sw	a5,-20(s0)
   1021c:	0480006f          	j	10264 <main+0x100>
   10220:	fe842703          	lw	a4,-24(s0)
   10224:	fe042783          	lw	a5,-32(s0)
   10228:	02f707bb          	mulw	a5,a4,a5
   1022c:	fef42623          	sw	a5,-20(s0)
   10230:	0340006f          	j	10264 <main+0x100>
   10234:	fe842703          	lw	a4,-24(s0)
   10238:	fe042783          	lw	a5,-32(s0)
   1023c:	02f747bb          	divw	a5,a4,a5
   10240:	fef42623          	sw	a5,-20(s0)
   10244:	0200006f          	j	10264 <main+0x100>
   10248:	fe744783          	lbu	a5,-25(s0)
   1024c:	00078593          	mv	a1,a5
   10250:	000197b7          	lui	a5,0x19
   10254:	0e878513          	addi	a0,a5,232 # 190e8 <__errno+0xc>
   10258:	210000ef          	jal	10468 <printf>
   1025c:	00100793          	li	a5,1
   10260:	0280006f          	j	10288 <main+0x124>
   10264:	fe744783          	lbu	a5,-25(s0)
   10268:	fec42703          	lw	a4,-20(s0)
   1026c:	fe042683          	lw	a3,-32(s0)
   10270:	00078613          	mv	a2,a5
   10274:	fe842583          	lw	a1,-24(s0)
   10278:	000197b7          	lui	a5,0x19
   1027c:	10078513          	addi	a0,a5,256 # 19100 <__errno+0x24>
   10280:	1e8000ef          	jal	10468 <printf>
   10284:	00000793          	li	a5,0
   10288:	00078513          	mv	a0,a5
   1028c:	02813083          	ld	ra,40(sp)
   10290:	02013403          	ld	s0,32(sp)
   10294:	03010113          	addi	sp,sp,48
   10298:	00008067          	ret

000000000001029c <atexit>:
   1029c:	00050593          	mv	a1,a0
   102a0:	00000693          	li	a3,0
   102a4:	00000613          	li	a2,0
   102a8:	00000513          	li	a0,0
   102ac:	2bc0206f          	j	12568 <__register_exitproc>

00000000000102b0 <atoi>:
   102b0:	ff010113          	addi	sp,sp,-16
   102b4:	00a00613          	li	a2,10
   102b8:	00000593          	li	a1,0
   102bc:	00113423          	sd	ra,8(sp)
   102c0:	3d4000ef          	jal	10694 <strtol>
   102c4:	00813083          	ld	ra,8(sp)
   102c8:	0005051b          	sext.w	a0,a0
   102cc:	01010113          	addi	sp,sp,16
   102d0:	00008067          	ret

00000000000102d4 <_atoi_r>:
   102d4:	ff010113          	addi	sp,sp,-16
   102d8:	00a00693          	li	a3,10
   102dc:	00000613          	li	a2,0
   102e0:	00113423          	sd	ra,8(sp)
   102e4:	1d4000ef          	jal	104b8 <_strtol_r>
   102e8:	00813083          	ld	ra,8(sp)
   102ec:	0005051b          	sext.w	a0,a0
   102f0:	01010113          	addi	sp,sp,16
   102f4:	00008067          	ret

00000000000102f8 <exit>:
   102f8:	ff010113          	addi	sp,sp,-16
   102fc:	00000593          	li	a1,0
   10300:	00813023          	sd	s0,0(sp)
   10304:	00113423          	sd	ra,8(sp)
   10308:	00050413          	mv	s0,a0
   1030c:	370020ef          	jal	1267c <__call_exitprocs>
   10310:	8081b503          	ld	a0,-2040(gp) # 1b798 <_global_impure_ptr>
   10314:	05853783          	ld	a5,88(a0)
   10318:	00078463          	beqz	a5,10320 <exit+0x28>
   1031c:	000780e7          	jalr	a5
   10320:	00040513          	mv	a0,s0
   10324:	59d080ef          	jal	190c0 <_exit>

0000000000010328 <__libc_fini_array>:
   10328:	fe010113          	addi	sp,sp,-32
   1032c:	00813823          	sd	s0,16(sp)
   10330:	00913423          	sd	s1,8(sp)
   10334:	00019437          	lui	s0,0x19
   10338:	000194b7          	lui	s1,0x19
   1033c:	6e848493          	addi	s1,s1,1768 # 196e8 <__init_array_end>
   10340:	6f040413          	addi	s0,s0,1776 # 196f0 <__fini_array_end>
   10344:	40940433          	sub	s0,s0,s1
   10348:	ff840793          	addi	a5,s0,-8
   1034c:	00113c23          	sd	ra,24(sp)
   10350:	40345413          	srai	s0,s0,0x3
   10354:	009784b3          	add	s1,a5,s1
   10358:	00040c63          	beqz	s0,10370 <__libc_fini_array+0x48>
   1035c:	0004b783          	ld	a5,0(s1)
   10360:	fff40413          	addi	s0,s0,-1
   10364:	ff848493          	addi	s1,s1,-8
   10368:	000780e7          	jalr	a5
   1036c:	fe0418e3          	bnez	s0,1035c <__libc_fini_array+0x34>
   10370:	01813083          	ld	ra,24(sp)
   10374:	01013403          	ld	s0,16(sp)
   10378:	00813483          	ld	s1,8(sp)
   1037c:	02010113          	addi	sp,sp,32
   10380:	cc9ff06f          	j	10048 <_fini>

0000000000010384 <__libc_init_array>:
   10384:	fe010113          	addi	sp,sp,-32
   10388:	00813823          	sd	s0,16(sp)
   1038c:	000197b7          	lui	a5,0x19
   10390:	00019437          	lui	s0,0x19
   10394:	01213023          	sd	s2,0(sp)
   10398:	6e078793          	addi	a5,a5,1760 # 196e0 <_etext>
   1039c:	6e040913          	addi	s2,s0,1760 # 196e0 <_etext>
   103a0:	41278933          	sub	s2,a5,s2
   103a4:	00913423          	sd	s1,8(sp)
   103a8:	00113c23          	sd	ra,24(sp)
   103ac:	40395913          	srai	s2,s2,0x3
   103b0:	6e040413          	addi	s0,s0,1760
   103b4:	00000493          	li	s1,0
   103b8:	00090c63          	beqz	s2,103d0 <__libc_init_array+0x4c>
   103bc:	00043783          	ld	a5,0(s0)
   103c0:	00148493          	addi	s1,s1,1
   103c4:	00840413          	addi	s0,s0,8
   103c8:	000780e7          	jalr	a5
   103cc:	fe9918e3          	bne	s2,s1,103bc <__libc_init_array+0x38>
   103d0:	c79ff0ef          	jal	10048 <_fini>
   103d4:	00019437          	lui	s0,0x19
   103d8:	000197b7          	lui	a5,0x19
   103dc:	6e040913          	addi	s2,s0,1760 # 196e0 <_etext>
   103e0:	6e878793          	addi	a5,a5,1768 # 196e8 <__init_array_end>
   103e4:	41278933          	sub	s2,a5,s2
   103e8:	40395913          	srai	s2,s2,0x3
   103ec:	6e040413          	addi	s0,s0,1760
   103f0:	00000493          	li	s1,0
   103f4:	00090c63          	beqz	s2,1040c <__libc_init_array+0x88>
   103f8:	00043783          	ld	a5,0(s0)
   103fc:	00148493          	addi	s1,s1,1
   10400:	00840413          	addi	s0,s0,8
   10404:	000780e7          	jalr	a5
   10408:	fe9918e3          	bne	s2,s1,103f8 <__libc_init_array+0x74>
   1040c:	01813083          	ld	ra,24(sp)
   10410:	01013403          	ld	s0,16(sp)
   10414:	00813483          	ld	s1,8(sp)
   10418:	00013903          	ld	s2,0(sp)
   1041c:	02010113          	addi	sp,sp,32
   10420:	00008067          	ret

0000000000010424 <_printf_r>:
   10424:	fb010113          	addi	sp,sp,-80
   10428:	02c13023          	sd	a2,32(sp)
   1042c:	02d13423          	sd	a3,40(sp)
   10430:	02f13c23          	sd	a5,56(sp)
   10434:	02e13823          	sd	a4,48(sp)
   10438:	05013023          	sd	a6,64(sp)
   1043c:	05113423          	sd	a7,72(sp)
   10440:	00058613          	mv	a2,a1
   10444:	01053583          	ld	a1,16(a0)
   10448:	02010793          	addi	a5,sp,32
   1044c:	00078693          	mv	a3,a5
   10450:	00113c23          	sd	ra,24(sp)
   10454:	00f13423          	sd	a5,8(sp)
   10458:	250000ef          	jal	106a8 <_vfprintf_r>
   1045c:	01813083          	ld	ra,24(sp)
   10460:	05010113          	addi	sp,sp,80
   10464:	00008067          	ret

0000000000010468 <printf>:
   10468:	8101b303          	ld	t1,-2032(gp) # 1b7a0 <_impure_ptr>
   1046c:	fa010113          	addi	sp,sp,-96
   10470:	02c13823          	sd	a2,48(sp)
   10474:	02d13c23          	sd	a3,56(sp)
   10478:	04f13423          	sd	a5,72(sp)
   1047c:	02b13423          	sd	a1,40(sp)
   10480:	04e13023          	sd	a4,64(sp)
   10484:	05013823          	sd	a6,80(sp)
   10488:	05113c23          	sd	a7,88(sp)
   1048c:	01033583          	ld	a1,16(t1)
   10490:	02810793          	addi	a5,sp,40
   10494:	00050613          	mv	a2,a0
   10498:	00078693          	mv	a3,a5
   1049c:	00030513          	mv	a0,t1
   104a0:	00113c23          	sd	ra,24(sp)
   104a4:	00f13423          	sd	a5,8(sp)
   104a8:	200000ef          	jal	106a8 <_vfprintf_r>
   104ac:	01813083          	ld	ra,24(sp)
   104b0:	06010113          	addi	sp,sp,96
   104b4:	00008067          	ret

00000000000104b8 <_strtol_r>:
   104b8:	8181be83          	ld	t4,-2024(gp) # 1b7a8 <__ctype_ptr__>
   104bc:	00058313          	mv	t1,a1
   104c0:	0080006f          	j	104c8 <_strtol_r+0x10>
   104c4:	00080313          	mv	t1,a6
   104c8:	00130813          	addi	a6,t1,1
   104cc:	fff84783          	lbu	a5,-1(a6)
   104d0:	00fe8733          	add	a4,t4,a5
   104d4:	00174703          	lbu	a4,1(a4)
   104d8:	00877713          	andi	a4,a4,8
   104dc:	fe0714e3          	bnez	a4,104c4 <_strtol_r+0xc>
   104e0:	ff010113          	addi	sp,sp,-16
   104e4:	00078893          	mv	a7,a5
   104e8:	00813423          	sd	s0,8(sp)
   104ec:	00913023          	sd	s1,0(sp)
   104f0:	02d00793          	li	a5,45
   104f4:	14f88063          	beq	a7,a5,10634 <_strtol_r+0x17c>
   104f8:	02b00793          	li	a5,43
   104fc:	00000393          	li	t2,0
   10500:	12f88463          	beq	a7,a5,10628 <_strtol_r+0x170>
   10504:	0e068263          	beqz	a3,105e8 <_strtol_r+0x130>
   10508:	01000793          	li	a5,16
   1050c:	00068413          	mv	s0,a3
   10510:	14f68863          	beq	a3,a5,10660 <_strtol_r+0x1a8>
   10514:	fff00793          	li	a5,-1
   10518:	0017df13          	srli	t5,a5,0x1
   1051c:	00038463          	beqz	t2,10524 <_strtol_r+0x6c>
   10520:	03f79f13          	slli	t5,a5,0x3f
   10524:	028f74b3          	remu	s1,t5,s0
   10528:	011e8733          	add	a4,t4,a7
   1052c:	00174783          	lbu	a5,1(a4)
   10530:	00000e13          	li	t3,0
   10534:	00000313          	li	t1,0
   10538:	0047f713          	andi	a4,a5,4
   1053c:	00100293          	li	t0,1
   10540:	fff00f93          	li	t6,-1
   10544:	028f5f33          	divu	t5,t5,s0
   10548:	0004849b          	sext.w	s1,s1
   1054c:	04070063          	beqz	a4,1058c <_strtol_r+0xd4>
   10550:	fd08879b          	addiw	a5,a7,-48
   10554:	04d7de63          	ble	a3,a5,105b0 <_strtol_r+0xf8>
   10558:	01fe0e63          	beq	t3,t6,10574 <_strtol_r+0xbc>
   1055c:	fff00e13          	li	t3,-1
   10560:	006f6a63          	bltu	t5,t1,10574 <_strtol_r+0xbc>
   10564:	07e30e63          	beq	t1,t5,105e0 <_strtol_r+0x128>
   10568:	00100e13          	li	t3,1
   1056c:	02830333          	mul	t1,t1,s0
   10570:	00678333          	add	t1,a5,t1
   10574:	00180813          	addi	a6,a6,1
   10578:	fff84883          	lbu	a7,-1(a6)
   1057c:	011e8733          	add	a4,t4,a7
   10580:	00174783          	lbu	a5,1(a4)
   10584:	0047f713          	andi	a4,a5,4
   10588:	fc0714e3          	bnez	a4,10550 <_strtol_r+0x98>
   1058c:	0037f713          	andi	a4,a5,3
   10590:	02070063          	beqz	a4,105b0 <_strtol_r+0xf8>
   10594:	40e2873b          	subw	a4,t0,a4
   10598:	00e03733          	snez	a4,a4
   1059c:	40e0073b          	negw	a4,a4
   105a0:	02077713          	andi	a4,a4,32
   105a4:	0377071b          	addiw	a4,a4,55
   105a8:	40e887bb          	subw	a5,a7,a4
   105ac:	fad7c6e3          	blt	a5,a3,10558 <_strtol_r+0xa0>
   105b0:	fff00793          	li	a5,-1
   105b4:	04fe0863          	beq	t3,a5,10604 <_strtol_r+0x14c>
   105b8:	04039263          	bnez	t2,105fc <_strtol_r+0x144>
   105bc:	00030793          	mv	a5,t1
   105c0:	00060663          	beqz	a2,105cc <_strtol_r+0x114>
   105c4:	040e1e63          	bnez	t3,10620 <_strtol_r+0x168>
   105c8:	00b63023          	sd	a1,0(a2)
   105cc:	00078513          	mv	a0,a5
   105d0:	00813403          	ld	s0,8(sp)
   105d4:	00013483          	ld	s1,0(sp)
   105d8:	01010113          	addi	sp,sp,16
   105dc:	00008067          	ret
   105e0:	f8f4cae3          	blt	s1,a5,10574 <_strtol_r+0xbc>
   105e4:	f85ff06f          	j	10568 <_strtol_r+0xb0>
   105e8:	03000793          	li	a5,48
   105ec:	04f88c63          	beq	a7,a5,10644 <_strtol_r+0x18c>
   105f0:	00a00413          	li	s0,10
   105f4:	00040693          	mv	a3,s0
   105f8:	f1dff06f          	j	10514 <_strtol_r+0x5c>
   105fc:	40600333          	neg	t1,t1
   10600:	fbdff06f          	j	105bc <_strtol_r+0x104>
   10604:	fff00713          	li	a4,-1
   10608:	00175793          	srli	a5,a4,0x1
   1060c:	00038463          	beqz	t2,10614 <_strtol_r+0x15c>
   10610:	03f71793          	slli	a5,a4,0x3f
   10614:	02200713          	li	a4,34
   10618:	00e52023          	sw	a4,0(a0)
   1061c:	fa0608e3          	beqz	a2,105cc <_strtol_r+0x114>
   10620:	fff80593          	addi	a1,a6,-1
   10624:	fa5ff06f          	j	105c8 <_strtol_r+0x110>
   10628:	00134883          	lbu	a7,1(t1)
   1062c:	00230813          	addi	a6,t1,2
   10630:	ed5ff06f          	j	10504 <_strtol_r+0x4c>
   10634:	00230813          	addi	a6,t1,2
   10638:	00134883          	lbu	a7,1(t1)
   1063c:	00100393          	li	t2,1
   10640:	ec5ff06f          	j	10504 <_strtol_r+0x4c>
   10644:	00084783          	lbu	a5,0(a6)
   10648:	05800713          	li	a4,88
   1064c:	0df7f793          	andi	a5,a5,223
   10650:	02e78463          	beq	a5,a4,10678 <_strtol_r+0x1c0>
   10654:	00800413          	li	s0,8
   10658:	00040693          	mv	a3,s0
   1065c:	eb9ff06f          	j	10514 <_strtol_r+0x5c>
   10660:	03000793          	li	a5,48
   10664:	02f89463          	bne	a7,a5,1068c <_strtol_r+0x1d4>
   10668:	00084783          	lbu	a5,0(a6)
   1066c:	05800713          	li	a4,88
   10670:	0df7f793          	andi	a5,a5,223
   10674:	00e79c63          	bne	a5,a4,1068c <_strtol_r+0x1d4>
   10678:	01000413          	li	s0,16
   1067c:	00184883          	lbu	a7,1(a6)
   10680:	00040693          	mv	a3,s0
   10684:	00280813          	addi	a6,a6,2
   10688:	e8dff06f          	j	10514 <_strtol_r+0x5c>
   1068c:	01000413          	li	s0,16
   10690:	e85ff06f          	j	10514 <_strtol_r+0x5c>

0000000000010694 <strtol>:
   10694:	00060693          	mv	a3,a2
   10698:	00058613          	mv	a2,a1
   1069c:	00050593          	mv	a1,a0
   106a0:	8101b503          	ld	a0,-2032(gp) # 1b7a0 <_impure_ptr>
   106a4:	e15ff06f          	j	104b8 <_strtol_r>

00000000000106a8 <_vfprintf_r>:
   106a8:	e1010113          	addi	sp,sp,-496
   106ac:	1e113423          	sd	ra,488(sp)
   106b0:	1d313423          	sd	s3,456(sp)
   106b4:	1d413023          	sd	s4,448(sp)
   106b8:	1b713423          	sd	s7,424(sp)
   106bc:	00058a13          	mv	s4,a1
   106c0:	00060993          	mv	s3,a2
   106c4:	02d13423          	sd	a3,40(sp)
   106c8:	1e813023          	sd	s0,480(sp)
   106cc:	1c913c23          	sd	s1,472(sp)
   106d0:	1d213823          	sd	s2,464(sp)
   106d4:	1b513c23          	sd	s5,440(sp)
   106d8:	1b613823          	sd	s6,432(sp)
   106dc:	1b813023          	sd	s8,416(sp)
   106e0:	19913c23          	sd	s9,408(sp)
   106e4:	19a13823          	sd	s10,400(sp)
   106e8:	19b13423          	sd	s11,392(sp)
   106ec:	16813c27          	fsd	fs0,376(sp)
   106f0:	00050b93          	mv	s7,a0
   106f4:	094040ef          	jal	14788 <_localeconv_r>
   106f8:	00053783          	ld	a5,0(a0)
   106fc:	00078513          	mv	a0,a5
   10700:	06f13023          	sd	a5,96(sp)
   10704:	00c060ef          	jal	16710 <strlen>
   10708:	06a13423          	sd	a0,104(sp)
   1070c:	000b8663          	beqz	s7,10718 <_vfprintf_r+0x70>
   10710:	050ba783          	lw	a5,80(s7)
   10714:	2e078c63          	beqz	a5,10a0c <_vfprintf_r+0x364>
   10718:	010a1683          	lh	a3,16(s4)
   1071c:	03069793          	slli	a5,a3,0x30
   10720:	0307d793          	srli	a5,a5,0x30
   10724:	03279713          	slli	a4,a5,0x32
   10728:	02074a63          	bltz	a4,1075c <_vfprintf_r+0xb4>
   1072c:	000027b7          	lui	a5,0x2
   10730:	0aca2603          	lw	a2,172(s4)
   10734:	00f6e7b3          	or	a5,a3,a5
   10738:	0107979b          	slliw	a5,a5,0x10
   1073c:	ffffe737          	lui	a4,0xffffe
   10740:	4107d79b          	sraiw	a5,a5,0x10
   10744:	fff7071b          	addiw	a4,a4,-1
   10748:	00e67733          	and	a4,a2,a4
   1074c:	00fa1823          	sh	a5,16(s4)
   10750:	03079793          	slli	a5,a5,0x30
   10754:	0aea2623          	sw	a4,172(s4)
   10758:	0307d793          	srli	a5,a5,0x30
   1075c:	0087f713          	andi	a4,a5,8
   10760:	1e070063          	beqz	a4,10940 <_vfprintf_r+0x298>
   10764:	018a3703          	ld	a4,24(s4)
   10768:	1c070c63          	beqz	a4,10940 <_vfprintf_r+0x298>
   1076c:	01a7f793          	andi	a5,a5,26
   10770:	00a00713          	li	a4,10
   10774:	1ee78863          	beq	a5,a4,10964 <_vfprintf_r+0x2bc>
   10778:	000197b7          	lui	a5,0x19
   1077c:	11078793          	addi	a5,a5,272 # 19110 <__errno+0x34>
   10780:	0f010b13          	addi	s6,sp,240
   10784:	02f13823          	sd	a5,48(sp)
   10788:	0ef10793          	addi	a5,sp,239
   1078c:	00019ab7          	lui	s5,0x19
   10790:	000194b7          	lui	s1,0x19
   10794:	40fb07b3          	sub	a5,s6,a5
   10798:	04013c23          	sd	zero,88(sp)
   1079c:	0b613823          	sd	s6,176(sp)
   107a0:	0c013023          	sd	zero,192(sp)
   107a4:	0a012c23          	sw	zero,184(sp)
   107a8:	06012823          	sw	zero,112(sp)
   107ac:	000b0893          	mv	a7,s6
   107b0:	02013c23          	sd	zero,56(sp)
   107b4:	06012a23          	sw	zero,116(sp)
   107b8:	00012e23          	sw	zero,28(sp)
   107bc:	278a8a93          	addi	s5,s5,632 # 19278 <blanks.4193>
   107c0:	28848493          	addi	s1,s1,648 # 19288 <zeroes.4194>
   107c4:	06f13c23          	sd	a5,120(sp)
   107c8:	0009c783          	lbu	a5,0(s3)
   107cc:	0e0782e3          	beqz	a5,110b0 <_vfprintf_r+0xa08>
   107d0:	02500713          	li	a4,37
   107d4:	00098413          	mv	s0,s3
   107d8:	00e79663          	bne	a5,a4,107e4 <_vfprintf_r+0x13c>
   107dc:	0580006f          	j	10834 <_vfprintf_r+0x18c>
   107e0:	00e78863          	beq	a5,a4,107f0 <_vfprintf_r+0x148>
   107e4:	00140413          	addi	s0,s0,1
   107e8:	00044783          	lbu	a5,0(s0)
   107ec:	fe079ae3          	bnez	a5,107e0 <_vfprintf_r+0x138>
   107f0:	4134093b          	subw	s2,s0,s3
   107f4:	04090063          	beqz	s2,10834 <_vfprintf_r+0x18c>
   107f8:	0c013703          	ld	a4,192(sp)
   107fc:	0b812783          	lw	a5,184(sp)
   10800:	00090693          	mv	a3,s2
   10804:	00d70733          	add	a4,a4,a3
   10808:	0017879b          	addiw	a5,a5,1
   1080c:	0138b023          	sd	s3,0(a7)
   10810:	00d8b423          	sd	a3,8(a7)
   10814:	0ce13023          	sd	a4,192(sp)
   10818:	0af12c23          	sw	a5,184(sp)
   1081c:	00700713          	li	a4,7
   10820:	01088893          	addi	a7,a7,16
   10824:	16f74063          	blt	a4,a5,10984 <_vfprintf_r+0x2dc>
   10828:	01c12783          	lw	a5,28(sp)
   1082c:	012787bb          	addw	a5,a5,s2
   10830:	00f12e23          	sw	a5,28(sp)
   10834:	00044783          	lbu	a5,0(s0)
   10838:	16078463          	beqz	a5,109a0 <_vfprintf_r+0x2f8>
   1083c:	00140993          	addi	s3,s0,1
   10840:	080107a3          	sb	zero,143(sp)
   10844:	00000613          	li	a2,0
   10848:	00000593          	li	a1,0
   1084c:	fff00413          	li	s0,-1
   10850:	00012c23          	sw	zero,24(sp)
   10854:	00000c13          	li	s8,0
   10858:	05800713          	li	a4,88
   1085c:	00900693          	li	a3,9
   10860:	02a00513          	li	a0,42
   10864:	0009cd03          	lbu	s10,0(s3)
   10868:	00198993          	addi	s3,s3,1
   1086c:	fe0d079b          	addiw	a5,s10,-32
   10870:	1cf762e3          	bltu	a4,a5,11234 <_vfprintf_r+0xb8c>
   10874:	03013803          	ld	a6,48(sp)
   10878:	02079793          	slli	a5,a5,0x20
   1087c:	01e7d793          	srli	a5,a5,0x1e
   10880:	010787b3          	add	a5,a5,a6
   10884:	0007a783          	lw	a5,0(a5)
   10888:	00078067          	jr	a5
   1088c:	010c6c13          	ori	s8,s8,16
   10890:	fd5ff06f          	j	10864 <_vfprintf_r+0x1bc>
   10894:	02813783          	ld	a5,40(sp)
   10898:	0007a803          	lw	a6,0(a5)
   1089c:	00878793          	addi	a5,a5,8
   108a0:	02f13423          	sd	a5,40(sp)
   108a4:	01012c23          	sw	a6,24(sp)
   108a8:	fa085ee3          	bgez	a6,10864 <_vfprintf_r+0x1bc>
   108ac:	410007bb          	negw	a5,a6
   108b0:	00f12c23          	sw	a5,24(sp)
   108b4:	004c6c13          	ori	s8,s8,4
   108b8:	fadff06f          	j	10864 <_vfprintf_r+0x1bc>
   108bc:	03000793          	li	a5,48
   108c0:	08f10823          	sb	a5,144(sp)
   108c4:	07800793          	li	a5,120
   108c8:	08f108a3          	sb	a5,145(sp)
   108cc:	02813783          	ld	a5,40(sp)
   108d0:	080107a3          	sb	zero,143(sp)
   108d4:	002c6693          	ori	a3,s8,2
   108d8:	00878713          	addi	a4,a5,8
   108dc:	0007b783          	ld	a5,0(a5)
   108e0:	180444e3          	bltz	s0,11268 <_vfprintf_r+0xbc0>
   108e4:	f7fc7c13          	andi	s8,s8,-129
   108e8:	02e13423          	sd	a4,40(sp)
   108ec:	002c6c13          	ori	s8,s8,2
   108f0:	120796e3          	bnez	a5,1121c <_vfprintf_r+0xb74>
   108f4:	000197b7          	lui	a5,0x19
   108f8:	69078793          	addi	a5,a5,1680 # 19690 <zeroes.4137+0x50>
   108fc:	02f13c23          	sd	a5,56(sp)
   10900:	07800d13          	li	s10,120
   10904:	00000613          	li	a2,0
   10908:	7e040463          	beqz	s0,110f0 <_vfprintf_r+0xa48>
   1090c:	00000793          	li	a5,0
   10910:	000b0913          	mv	s2,s6
   10914:	03813683          	ld	a3,56(sp)
   10918:	00f7f713          	andi	a4,a5,15
   1091c:	fff90913          	addi	s2,s2,-1
   10920:	00e68733          	add	a4,a3,a4
   10924:	00074703          	lbu	a4,0(a4) # ffffffffffffe000 <_gp+0xfffffffffffe2070>
   10928:	0047d793          	srli	a5,a5,0x4
   1092c:	00e90023          	sb	a4,0(s2)
   10930:	fe0792e3          	bnez	a5,10914 <_vfprintf_r+0x26c>
   10934:	412b07b3          	sub	a5,s6,s2
   10938:	02f12023          	sw	a5,32(sp)
   1093c:	1680006f          	j	10aa4 <_vfprintf_r+0x3fc>
   10940:	000a0593          	mv	a1,s4
   10944:	000b8513          	mv	a0,s7
   10948:	2bd010ef          	jal	12404 <__swsetup_r>
   1094c:	00050463          	beqz	a0,10954 <_vfprintf_r+0x2ac>
   10950:	3940106f          	j	11ce4 <_vfprintf_r+0x163c>
   10954:	010a5783          	lhu	a5,16(s4)
   10958:	00a00713          	li	a4,10
   1095c:	01a7f793          	andi	a5,a5,26
   10960:	e0e79ce3          	bne	a5,a4,10778 <_vfprintf_r+0xd0>
   10964:	012a1783          	lh	a5,18(s4)
   10968:	e007c8e3          	bltz	a5,10778 <_vfprintf_r+0xd0>
   1096c:	02813683          	ld	a3,40(sp)
   10970:	00098613          	mv	a2,s3
   10974:	000a0593          	mv	a1,s4
   10978:	000b8513          	mv	a0,s7
   1097c:	1c9010ef          	jal	12344 <__sbprintf>
   10980:	04c0006f          	j	109cc <_vfprintf_r+0x324>
   10984:	0b010613          	addi	a2,sp,176
   10988:	000a0593          	mv	a1,s4
   1098c:	000b8513          	mv	a0,s7
   10990:	73d050ef          	jal	168cc <__sprint_r>
   10994:	02051263          	bnez	a0,109b8 <_vfprintf_r+0x310>
   10998:	000b0893          	mv	a7,s6
   1099c:	e8dff06f          	j	10828 <_vfprintf_r+0x180>
   109a0:	0c013783          	ld	a5,192(sp)
   109a4:	00078a63          	beqz	a5,109b8 <_vfprintf_r+0x310>
   109a8:	0b010613          	addi	a2,sp,176
   109ac:	000a0593          	mv	a1,s4
   109b0:	000b8513          	mv	a0,s7
   109b4:	719050ef          	jal	168cc <__sprint_r>
   109b8:	010a5783          	lhu	a5,16(s4)
   109bc:	0407f793          	andi	a5,a5,64
   109c0:	00078463          	beqz	a5,109c8 <_vfprintf_r+0x320>
   109c4:	3200106f          	j	11ce4 <_vfprintf_r+0x163c>
   109c8:	01c12503          	lw	a0,28(sp)
   109cc:	1e813083          	ld	ra,488(sp)
   109d0:	1e013403          	ld	s0,480(sp)
   109d4:	1d813483          	ld	s1,472(sp)
   109d8:	1d013903          	ld	s2,464(sp)
   109dc:	1c813983          	ld	s3,456(sp)
   109e0:	1c013a03          	ld	s4,448(sp)
   109e4:	1b813a83          	ld	s5,440(sp)
   109e8:	1b013b03          	ld	s6,432(sp)
   109ec:	1a813b83          	ld	s7,424(sp)
   109f0:	1a013c03          	ld	s8,416(sp)
   109f4:	19813c83          	ld	s9,408(sp)
   109f8:	19013d03          	ld	s10,400(sp)
   109fc:	18813d83          	ld	s11,392(sp)
   10a00:	17813407          	fld	fs0,376(sp)
   10a04:	1f010113          	addi	sp,sp,496
   10a08:	00008067          	ret
   10a0c:	000b8513          	mv	a0,s7
   10a10:	700030ef          	jal	14110 <__sinit>
   10a14:	d05ff06f          	j	10718 <_vfprintf_r+0x70>
   10a18:	00100613          	li	a2,1
   10a1c:	02b00593          	li	a1,43
   10a20:	e45ff06f          	j	10864 <_vfprintf_r+0x1bc>
   10a24:	00060463          	beqz	a2,10a2c <_vfprintf_r+0x384>
   10a28:	0d90106f          	j	12300 <_vfprintf_r+0x1c58>
   10a2c:	010c7793          	andi	a5,s8,16
   10a30:	22078263          	beqz	a5,10c54 <_vfprintf_r+0x5ac>
   10a34:	02813783          	ld	a5,40(sp)
   10a38:	080107a3          	sb	zero,143(sp)
   10a3c:	00878713          	addi	a4,a5,8
   10a40:	0007b783          	ld	a5,0(a5)
   10a44:	22044663          	bltz	s0,10c70 <_vfprintf_r+0x5c8>
   10a48:	02e13423          	sd	a4,40(sp)
   10a4c:	f7fc7c13          	andi	s8,s8,-129
   10a50:	22079663          	bnez	a5,10c7c <_vfprintf_r+0x5d4>
   10a54:	00000613          	li	a2,0
   10a58:	00000793          	li	a5,0
   10a5c:	00041463          	bnez	s0,10a64 <_vfprintf_r+0x3bc>
   10a60:	3680106f          	j	11dc8 <_vfprintf_r+0x1720>
   10a64:	000b0913          	mv	s2,s6
   10a68:	0077f713          	andi	a4,a5,7
   10a6c:	fff90913          	addi	s2,s2,-1
   10a70:	0307071b          	addiw	a4,a4,48
   10a74:	00e90023          	sb	a4,0(s2)
   10a78:	0037d793          	srli	a5,a5,0x3
   10a7c:	fe0796e3          	bnez	a5,10a68 <_vfprintf_r+0x3c0>
   10a80:	001c7793          	andi	a5,s8,1
   10a84:	ea0788e3          	beqz	a5,10934 <_vfprintf_r+0x28c>
   10a88:	03000793          	li	a5,48
   10a8c:	eaf704e3          	beq	a4,a5,10934 <_vfprintf_r+0x28c>
   10a90:	fff90713          	addi	a4,s2,-1
   10a94:	40eb06b3          	sub	a3,s6,a4
   10a98:	fef90fa3          	sb	a5,-1(s2)
   10a9c:	02d12023          	sw	a3,32(sp)
   10aa0:	00070913          	mv	s2,a4
   10aa4:	02012783          	lw	a5,32(sp)
   10aa8:	00078d93          	mv	s11,a5
   10aac:	0087d463          	ble	s0,a5,10ab4 <_vfprintf_r+0x40c>
   10ab0:	00040d93          	mv	s11,s0
   10ab4:	01b12423          	sw	s11,8(sp)
   10ab8:	04012623          	sw	zero,76(sp)
   10abc:	2a060263          	beqz	a2,10d60 <_vfprintf_r+0x6b8>
   10ac0:	00812783          	lw	a5,8(sp)
   10ac4:	0017879b          	addiw	a5,a5,1
   10ac8:	00f12423          	sw	a5,8(sp)
   10acc:	2940006f          	j	10d60 <_vfprintf_r+0x6b8>
   10ad0:	0009cd03          	lbu	s10,0(s3)
   10ad4:	00198993          	addi	s3,s3,1
   10ad8:	00ad1463          	bne	s10,a0,10ae0 <_vfprintf_r+0x438>
   10adc:	75c0106f          	j	12238 <_vfprintf_r+0x1b90>
   10ae0:	fd0d079b          	addiw	a5,s10,-48
   10ae4:	00000413          	li	s0,0
   10ae8:	d8f6e2e3          	bltu	a3,a5,1086c <_vfprintf_r+0x1c4>
   10aec:	00198993          	addi	s3,s3,1
   10af0:	fff9cd03          	lbu	s10,-1(s3)
   10af4:	0014181b          	slliw	a6,s0,0x1
   10af8:	0034141b          	slliw	s0,s0,0x3
   10afc:	0088043b          	addw	s0,a6,s0
   10b00:	00f4043b          	addw	s0,s0,a5
   10b04:	fd0d079b          	addiw	a5,s10,-48
   10b08:	fef6f2e3          	bleu	a5,a3,10aec <_vfprintf_r+0x444>
   10b0c:	d60450e3          	bgez	s0,1086c <_vfprintf_r+0x1c4>
   10b10:	fff00413          	li	s0,-1
   10b14:	d59ff06f          	j	1086c <_vfprintf_r+0x1c4>
   10b18:	080c6c13          	ori	s8,s8,128
   10b1c:	d49ff06f          	j	10864 <_vfprintf_r+0x1bc>
   10b20:	d40592e3          	bnez	a1,10864 <_vfprintf_r+0x1bc>
   10b24:	00100613          	li	a2,1
   10b28:	02000593          	li	a1,32
   10b2c:	d39ff06f          	j	10864 <_vfprintf_r+0x1bc>
   10b30:	001c6c13          	ori	s8,s8,1
   10b34:	d31ff06f          	j	10864 <_vfprintf_r+0x1bc>
   10b38:	02813783          	ld	a5,40(sp)
   10b3c:	080107a3          	sb	zero,143(sp)
   10b40:	0007b903          	ld	s2,0(a5)
   10b44:	00878c93          	addi	s9,a5,8
   10b48:	00091463          	bnez	s2,10b50 <_vfprintf_r+0x4a8>
   10b4c:	39c0106f          	j	11ee8 <_vfprintf_r+0x1840>
   10b50:	01113023          	sd	a7,0(sp)
   10b54:	00045463          	bgez	s0,10b5c <_vfprintf_r+0x4b4>
   10b58:	3240106f          	j	11e7c <_vfprintf_r+0x17d4>
   10b5c:	00040613          	mv	a2,s0
   10b60:	00000593          	li	a1,0
   10b64:	00090513          	mv	a0,s2
   10b68:	564040ef          	jal	150cc <memchr>
   10b6c:	00013883          	ld	a7,0(sp)
   10b70:	00051463          	bnez	a0,10b78 <_vfprintf_r+0x4d0>
   10b74:	4c00106f          	j	12034 <_vfprintf_r+0x198c>
   10b78:	412507bb          	subw	a5,a0,s2
   10b7c:	02f12023          	sw	a5,32(sp)
   10b80:	00078d93          	mv	s11,a5
   10b84:	0007d463          	bgez	a5,10b8c <_vfprintf_r+0x4e4>
   10b88:	3140106f          	j	11e9c <_vfprintf_r+0x17f4>
   10b8c:	08f14603          	lbu	a2,143(sp)
   10b90:	01b12423          	sw	s11,8(sp)
   10b94:	03913423          	sd	s9,40(sp)
   10b98:	00000413          	li	s0,0
   10b9c:	04012623          	sw	zero,76(sp)
   10ba0:	f1dff06f          	j	10abc <_vfprintf_r+0x414>
   10ba4:	00060463          	beqz	a2,10bac <_vfprintf_r+0x504>
   10ba8:	7800106f          	j	12328 <_vfprintf_r+0x1c80>
   10bac:	010c7793          	andi	a5,s8,16
   10bb0:	0e078463          	beqz	a5,10c98 <_vfprintf_r+0x5f0>
   10bb4:	02813783          	ld	a5,40(sp)
   10bb8:	080107a3          	sb	zero,143(sp)
   10bbc:	00878713          	addi	a4,a5,8
   10bc0:	0007b783          	ld	a5,0(a5)
   10bc4:	0e044863          	bltz	s0,10cb4 <_vfprintf_r+0x60c>
   10bc8:	02e13423          	sd	a4,40(sp)
   10bcc:	f7fc7c13          	andi	s8,s8,-129
   10bd0:	00000613          	li	a2,0
   10bd4:	50078c63          	beqz	a5,110ec <_vfprintf_r+0xa44>
   10bd8:	00900713          	li	a4,9
   10bdc:	000b0913          	mv	s2,s6
   10be0:	00a00693          	li	a3,10
   10be4:	40f770e3          	bleu	a5,a4,117e4 <_vfprintf_r+0x113c>
   10be8:	02d7f733          	remu	a4,a5,a3
   10bec:	fff90913          	addi	s2,s2,-1
   10bf0:	02d7d7b3          	divu	a5,a5,a3
   10bf4:	0307071b          	addiw	a4,a4,48
   10bf8:	00e90023          	sb	a4,0(s2)
   10bfc:	fe0796e3          	bnez	a5,10be8 <_vfprintf_r+0x540>
   10c00:	412b07b3          	sub	a5,s6,s2
   10c04:	02f12023          	sw	a5,32(sp)
   10c08:	e9dff06f          	j	10aa4 <_vfprintf_r+0x3fc>
   10c0c:	00012c23          	sw	zero,24(sp)
   10c10:	fd0d079b          	addiw	a5,s10,-48
   10c14:	01812303          	lw	t1,24(sp)
   10c18:	00198993          	addi	s3,s3,1
   10c1c:	fff9cd03          	lbu	s10,-1(s3)
   10c20:	0013181b          	slliw	a6,t1,0x1
   10c24:	00331c9b          	slliw	s9,t1,0x3
   10c28:	01980cbb          	addw	s9,a6,s9
   10c2c:	019787bb          	addw	a5,a5,s9
   10c30:	00f12c23          	sw	a5,24(sp)
   10c34:	fd0d079b          	addiw	a5,s10,-48
   10c38:	fcf6fee3          	bleu	a5,a3,10c14 <_vfprintf_r+0x56c>
   10c3c:	c31ff06f          	j	1086c <_vfprintf_r+0x1c4>
   10c40:	00060463          	beqz	a2,10c48 <_vfprintf_r+0x5a0>
   10c44:	6d80106f          	j	1231c <_vfprintf_r+0x1c74>
   10c48:	010c6c13          	ori	s8,s8,16
   10c4c:	010c7793          	andi	a5,s8,16
   10c50:	de0792e3          	bnez	a5,10a34 <_vfprintf_r+0x38c>
   10c54:	040c7793          	andi	a5,s8,64
   10c58:	080107a3          	sb	zero,143(sp)
   10c5c:	580780e3          	beqz	a5,119dc <_vfprintf_r+0x1334>
   10c60:	02813783          	ld	a5,40(sp)
   10c64:	00878713          	addi	a4,a5,8
   10c68:	0007d783          	lhu	a5,0(a5)
   10c6c:	dc045ee3          	bgez	s0,10a48 <_vfprintf_r+0x3a0>
   10c70:	02e13423          	sd	a4,40(sp)
   10c74:	00000613          	li	a2,0
   10c78:	60078a63          	beqz	a5,1128c <_vfprintf_r+0xbe4>
   10c7c:	00000613          	li	a2,0
   10c80:	de5ff06f          	j	10a64 <_vfprintf_r+0x3bc>
   10c84:	00060463          	beqz	a2,10c8c <_vfprintf_r+0x5e4>
   10c88:	6880106f          	j	12310 <_vfprintf_r+0x1c68>
   10c8c:	010c6c13          	ori	s8,s8,16
   10c90:	010c7793          	andi	a5,s8,16
   10c94:	f20790e3          	bnez	a5,10bb4 <_vfprintf_r+0x50c>
   10c98:	040c7793          	andi	a5,s8,64
   10c9c:	080107a3          	sb	zero,143(sp)
   10ca0:	500780e3          	beqz	a5,119a0 <_vfprintf_r+0x12f8>
   10ca4:	02813783          	ld	a5,40(sp)
   10ca8:	00878713          	addi	a4,a5,8
   10cac:	0007d783          	lhu	a5,0(a5)
   10cb0:	f0045ce3          	bgez	s0,10bc8 <_vfprintf_r+0x520>
   10cb4:	02e13423          	sd	a4,40(sp)
   10cb8:	00000613          	li	a2,0
   10cbc:	f0079ee3          	bnez	a5,10bd8 <_vfprintf_r+0x530>
   10cc0:	00100793          	li	a5,1
   10cc4:	5c80006f          	j	1128c <_vfprintf_r+0xbe4>
   10cc8:	00060463          	beqz	a2,10cd0 <_vfprintf_r+0x628>
   10ccc:	63c0106f          	j	12308 <_vfprintf_r+0x1c60>
   10cd0:	000197b7          	lui	a5,0x19
   10cd4:	67878793          	addi	a5,a5,1656 # 19678 <zeroes.4137+0x38>
   10cd8:	02f13c23          	sd	a5,56(sp)
   10cdc:	010c7793          	andi	a5,s8,16
   10ce0:	4c078263          	beqz	a5,111a4 <_vfprintf_r+0xafc>
   10ce4:	02813703          	ld	a4,40(sp)
   10ce8:	00073783          	ld	a5,0(a4)
   10cec:	00870713          	addi	a4,a4,8
   10cf0:	02e13423          	sd	a4,40(sp)
   10cf4:	001c7713          	andi	a4,s8,1
   10cf8:	120706e3          	beqz	a4,11624 <_vfprintf_r+0xf7c>
   10cfc:	6a078ee3          	beqz	a5,11bb8 <_vfprintf_r+0x1510>
   10d00:	03000713          	li	a4,48
   10d04:	08e10823          	sb	a4,144(sp)
   10d08:	09a108a3          	sb	s10,145(sp)
   10d0c:	080107a3          	sb	zero,143(sp)
   10d10:	002c6713          	ori	a4,s8,2
   10d14:	00045463          	bgez	s0,10d1c <_vfprintf_r+0x674>
   10d18:	2140106f          	j	11f2c <_vfprintf_r+0x1884>
   10d1c:	f7fc7c13          	andi	s8,s8,-129
   10d20:	002c6c13          	ori	s8,s8,2
   10d24:	00000613          	li	a2,0
   10d28:	be9ff06f          	j	10910 <_vfprintf_r+0x268>
   10d2c:	02813703          	ld	a4,40(sp)
   10d30:	00100693          	li	a3,1
   10d34:	00d12423          	sw	a3,8(sp)
   10d38:	00072783          	lw	a5,0(a4)
   10d3c:	080107a3          	sb	zero,143(sp)
   10d40:	00000613          	li	a2,0
   10d44:	0cf10423          	sb	a5,200(sp)
   10d48:	00870793          	addi	a5,a4,8
   10d4c:	02f13423          	sd	a5,40(sp)
   10d50:	02d12023          	sw	a3,32(sp)
   10d54:	00000413          	li	s0,0
   10d58:	04012623          	sw	zero,76(sp)
   10d5c:	0c810913          	addi	s2,sp,200
   10d60:	002c7793          	andi	a5,s8,2
   10d64:	04f12023          	sw	a5,64(sp)
   10d68:	00078863          	beqz	a5,10d78 <_vfprintf_r+0x6d0>
   10d6c:	00812783          	lw	a5,8(sp)
   10d70:	0027879b          	addiw	a5,a5,2
   10d74:	00f12423          	sw	a5,8(sp)
   10d78:	084c7793          	andi	a5,s8,132
   10d7c:	04f12423          	sw	a5,72(sp)
   10d80:	52079263          	bnez	a5,112a4 <_vfprintf_r+0xbfc>
   10d84:	01812783          	lw	a5,24(sp)
   10d88:	00812703          	lw	a4,8(sp)
   10d8c:	40e78cbb          	subw	s9,a5,a4
   10d90:	51905a63          	blez	s9,112a4 <_vfprintf_r+0xbfc>
   10d94:	01000793          	li	a5,16
   10d98:	0197c463          	blt	a5,s9,10da0 <_vfprintf_r+0x6f8>
   10d9c:	1080106f          	j	11ea4 <_vfprintf_r+0x17fc>
   10da0:	01000813          	li	a6,16
   10da4:	0c013783          	ld	a5,192(sp)
   10da8:	0b812703          	lw	a4,184(sp)
   10dac:	05513823          	sd	s5,80(sp)
   10db0:	00700313          	li	t1,7
   10db4:	00080d93          	mv	s11,a6
   10db8:	00c0006f          	j	10dc4 <_vfprintf_r+0x71c>
   10dbc:	ff0c8c9b          	addiw	s9,s9,-16
   10dc0:	059dde63          	ble	s9,s11,10e1c <_vfprintf_r+0x774>
   10dc4:	01078793          	addi	a5,a5,16
   10dc8:	0017071b          	addiw	a4,a4,1
   10dcc:	0158b023          	sd	s5,0(a7)
   10dd0:	0108b423          	sd	a6,8(a7)
   10dd4:	0cf13023          	sd	a5,192(sp)
   10dd8:	0ae12c23          	sw	a4,184(sp)
   10ddc:	01088893          	addi	a7,a7,16
   10de0:	fce35ee3          	ble	a4,t1,10dbc <_vfprintf_r+0x714>
   10de4:	0b010613          	addi	a2,sp,176
   10de8:	000a0593          	mv	a1,s4
   10dec:	000b8513          	mv	a0,s7
   10df0:	00613823          	sd	t1,16(sp)
   10df4:	01013023          	sd	a6,0(sp)
   10df8:	2d5050ef          	jal	168cc <__sprint_r>
   10dfc:	ba051ee3          	bnez	a0,109b8 <_vfprintf_r+0x310>
   10e00:	ff0c8c9b          	addiw	s9,s9,-16
   10e04:	0c013783          	ld	a5,192(sp)
   10e08:	0b812703          	lw	a4,184(sp)
   10e0c:	000b0893          	mv	a7,s6
   10e10:	01013303          	ld	t1,16(sp)
   10e14:	00013803          	ld	a6,0(sp)
   10e18:	fb9dc6e3          	blt	s11,s9,10dc4 <_vfprintf_r+0x71c>
   10e1c:	05013603          	ld	a2,80(sp)
   10e20:	00fc87b3          	add	a5,s9,a5
   10e24:	0017071b          	addiw	a4,a4,1
   10e28:	00c8b023          	sd	a2,0(a7)
   10e2c:	0198b423          	sd	s9,8(a7)
   10e30:	0cf13023          	sd	a5,192(sp)
   10e34:	0ae12c23          	sw	a4,184(sp)
   10e38:	00700693          	li	a3,7
   10e3c:	0ce6cae3          	blt	a3,a4,11710 <_vfprintf_r+0x1068>
   10e40:	08f14603          	lbu	a2,143(sp)
   10e44:	01088893          	addi	a7,a7,16
   10e48:	02060a63          	beqz	a2,10e7c <_vfprintf_r+0x7d4>
   10e4c:	0b812703          	lw	a4,184(sp)
   10e50:	08f10693          	addi	a3,sp,143
   10e54:	00d8b023          	sd	a3,0(a7)
   10e58:	00178793          	addi	a5,a5,1
   10e5c:	00100693          	li	a3,1
   10e60:	0017071b          	addiw	a4,a4,1
   10e64:	00d8b423          	sd	a3,8(a7)
   10e68:	0cf13023          	sd	a5,192(sp)
   10e6c:	0ae12c23          	sw	a4,184(sp)
   10e70:	00700693          	li	a3,7
   10e74:	01088893          	addi	a7,a7,16
   10e78:	76e6c663          	blt	a3,a4,115e4 <_vfprintf_r+0xf3c>
   10e7c:	04012703          	lw	a4,64(sp)
   10e80:	02070a63          	beqz	a4,10eb4 <_vfprintf_r+0x80c>
   10e84:	0b812703          	lw	a4,184(sp)
   10e88:	09010693          	addi	a3,sp,144
   10e8c:	00d8b023          	sd	a3,0(a7)
   10e90:	00278793          	addi	a5,a5,2
   10e94:	00200693          	li	a3,2
   10e98:	0017071b          	addiw	a4,a4,1
   10e9c:	00d8b423          	sd	a3,8(a7)
   10ea0:	0cf13023          	sd	a5,192(sp)
   10ea4:	0ae12c23          	sw	a4,184(sp)
   10ea8:	00700693          	li	a3,7
   10eac:	01088893          	addi	a7,a7,16
   10eb0:	74e6ca63          	blt	a3,a4,11604 <_vfprintf_r+0xf5c>
   10eb4:	04812683          	lw	a3,72(sp)
   10eb8:	08000713          	li	a4,128
   10ebc:	5ee68663          	beq	a3,a4,114a8 <_vfprintf_r+0xe00>
   10ec0:	02012703          	lw	a4,32(sp)
   10ec4:	40e4043b          	subw	s0,s0,a4
   10ec8:	0c805063          	blez	s0,10f88 <_vfprintf_r+0x8e0>
   10ecc:	01000713          	li	a4,16
   10ed0:	4e875ce3          	ble	s0,a4,11bc8 <_vfprintf_r+0x1520>
   10ed4:	01000c93          	li	s9,16
   10ed8:	0b812703          	lw	a4,184(sp)
   10edc:	00913823          	sd	s1,16(sp)
   10ee0:	00700813          	li	a6,7
   10ee4:	000c8d93          	mv	s11,s9
   10ee8:	00c0006f          	j	10ef4 <_vfprintf_r+0x84c>
   10eec:	ff04041b          	addiw	s0,s0,-16
   10ef0:	048dda63          	ble	s0,s11,10f44 <_vfprintf_r+0x89c>
   10ef4:	01078793          	addi	a5,a5,16
   10ef8:	0017071b          	addiw	a4,a4,1
   10efc:	0098b023          	sd	s1,0(a7)
   10f00:	0198b423          	sd	s9,8(a7)
   10f04:	0cf13023          	sd	a5,192(sp)
   10f08:	0ae12c23          	sw	a4,184(sp)
   10f0c:	01088893          	addi	a7,a7,16
   10f10:	fce85ee3          	ble	a4,a6,10eec <_vfprintf_r+0x844>
   10f14:	0b010613          	addi	a2,sp,176
   10f18:	000a0593          	mv	a1,s4
   10f1c:	000b8513          	mv	a0,s7
   10f20:	01013023          	sd	a6,0(sp)
   10f24:	1a9050ef          	jal	168cc <__sprint_r>
   10f28:	a80518e3          	bnez	a0,109b8 <_vfprintf_r+0x310>
   10f2c:	ff04041b          	addiw	s0,s0,-16
   10f30:	0c013783          	ld	a5,192(sp)
   10f34:	0b812703          	lw	a4,184(sp)
   10f38:	000b0893          	mv	a7,s6
   10f3c:	00013803          	ld	a6,0(sp)
   10f40:	fa8dcae3          	blt	s11,s0,10ef4 <_vfprintf_r+0x84c>
   10f44:	01013683          	ld	a3,16(sp)
   10f48:	008787b3          	add	a5,a5,s0
   10f4c:	0017071b          	addiw	a4,a4,1
   10f50:	00d8b023          	sd	a3,0(a7)
   10f54:	0088b423          	sd	s0,8(a7)
   10f58:	0cf13023          	sd	a5,192(sp)
   10f5c:	0ae12c23          	sw	a4,184(sp)
   10f60:	00700693          	li	a3,7
   10f64:	01088893          	addi	a7,a7,16
   10f68:	02e6d063          	ble	a4,a3,10f88 <_vfprintf_r+0x8e0>
   10f6c:	0b010613          	addi	a2,sp,176
   10f70:	000a0593          	mv	a1,s4
   10f74:	000b8513          	mv	a0,s7
   10f78:	155050ef          	jal	168cc <__sprint_r>
   10f7c:	a2051ee3          	bnez	a0,109b8 <_vfprintf_r+0x310>
   10f80:	0c013783          	ld	a5,192(sp)
   10f84:	000b0893          	mv	a7,s6
   10f88:	100c7713          	andi	a4,s8,256
   10f8c:	40071663          	bnez	a4,11398 <_vfprintf_r+0xcf0>
   10f90:	02012703          	lw	a4,32(sp)
   10f94:	0b812683          	lw	a3,184(sp)
   10f98:	0128b023          	sd	s2,0(a7)
   10f9c:	00e787b3          	add	a5,a5,a4
   10fa0:	0016869b          	addiw	a3,a3,1
   10fa4:	00e8b423          	sd	a4,8(a7)
   10fa8:	0cf13023          	sd	a5,192(sp)
   10fac:	0ad12c23          	sw	a3,184(sp)
   10fb0:	00700713          	li	a4,7
   10fb4:	3cd74263          	blt	a4,a3,11378 <_vfprintf_r+0xcd0>
   10fb8:	01088893          	addi	a7,a7,16
   10fbc:	004c7c13          	andi	s8,s8,4
   10fc0:	0c0c0063          	beqz	s8,11080 <_vfprintf_r+0x9d8>
   10fc4:	01812703          	lw	a4,24(sp)
   10fc8:	00812683          	lw	a3,8(sp)
   10fcc:	40d7043b          	subw	s0,a4,a3
   10fd0:	0a805863          	blez	s0,11080 <_vfprintf_r+0x9d8>
   10fd4:	01000713          	li	a4,16
   10fd8:	748754e3          	ble	s0,a4,11f20 <_vfprintf_r+0x1878>
   10fdc:	01000913          	li	s2,16
   10fe0:	0b812703          	lw	a4,184(sp)
   10fe4:	05513823          	sd	s5,80(sp)
   10fe8:	00700c13          	li	s8,7
   10fec:	00090d13          	mv	s10,s2
   10ff0:	00c0006f          	j	10ffc <_vfprintf_r+0x954>
   10ff4:	ff04041b          	addiw	s0,s0,-16
   10ff8:	048d5663          	ble	s0,s10,11044 <_vfprintf_r+0x99c>
   10ffc:	01078793          	addi	a5,a5,16
   11000:	0017071b          	addiw	a4,a4,1
   11004:	0158b023          	sd	s5,0(a7)
   11008:	0128b423          	sd	s2,8(a7)
   1100c:	0cf13023          	sd	a5,192(sp)
   11010:	0ae12c23          	sw	a4,184(sp)
   11014:	01088893          	addi	a7,a7,16
   11018:	fcec5ee3          	ble	a4,s8,10ff4 <_vfprintf_r+0x94c>
   1101c:	0b010613          	addi	a2,sp,176
   11020:	000a0593          	mv	a1,s4
   11024:	000b8513          	mv	a0,s7
   11028:	0a5050ef          	jal	168cc <__sprint_r>
   1102c:	980516e3          	bnez	a0,109b8 <_vfprintf_r+0x310>
   11030:	ff04041b          	addiw	s0,s0,-16
   11034:	0c013783          	ld	a5,192(sp)
   11038:	0b812703          	lw	a4,184(sp)
   1103c:	000b0893          	mv	a7,s6
   11040:	fa8d4ee3          	blt	s10,s0,10ffc <_vfprintf_r+0x954>
   11044:	05013683          	ld	a3,80(sp)
   11048:	008787b3          	add	a5,a5,s0
   1104c:	0017071b          	addiw	a4,a4,1
   11050:	00d8b023          	sd	a3,0(a7)
   11054:	0088b423          	sd	s0,8(a7)
   11058:	0cf13023          	sd	a5,192(sp)
   1105c:	0ae12c23          	sw	a4,184(sp)
   11060:	00700693          	li	a3,7
   11064:	00e6de63          	ble	a4,a3,11080 <_vfprintf_r+0x9d8>
   11068:	0b010613          	addi	a2,sp,176
   1106c:	000a0593          	mv	a1,s4
   11070:	000b8513          	mv	a0,s7
   11074:	059050ef          	jal	168cc <__sprint_r>
   11078:	940510e3          	bnez	a0,109b8 <_vfprintf_r+0x310>
   1107c:	0c013783          	ld	a5,192(sp)
   11080:	01812c83          	lw	s9,24(sp)
   11084:	00812703          	lw	a4,8(sp)
   11088:	00ecd463          	ble	a4,s9,11090 <_vfprintf_r+0x9e8>
   1108c:	00070c93          	mv	s9,a4
   11090:	01c12703          	lw	a4,28(sp)
   11094:	0197073b          	addw	a4,a4,s9
   11098:	00e12e23          	sw	a4,28(sp)
   1109c:	52079863          	bnez	a5,115cc <_vfprintf_r+0xf24>
   110a0:	0009c783          	lbu	a5,0(s3)
   110a4:	0a012c23          	sw	zero,184(sp)
   110a8:	000b0893          	mv	a7,s6
   110ac:	f2079263          	bnez	a5,107d0 <_vfprintf_r+0x128>
   110b0:	00098413          	mv	s0,s3
   110b4:	f80ff06f          	j	10834 <_vfprintf_r+0x18c>
   110b8:	00060463          	beqz	a2,110c0 <_vfprintf_r+0xa18>
   110bc:	22c0106f          	j	122e8 <_vfprintf_r+0x1c40>
   110c0:	010c7793          	andi	a5,s8,16
   110c4:	12078e63          	beqz	a5,11200 <_vfprintf_r+0xb58>
   110c8:	02813703          	ld	a4,40(sp)
   110cc:	00073783          	ld	a5,0(a4)
   110d0:	00870713          	addi	a4,a4,8
   110d4:	02e13423          	sd	a4,40(sp)
   110d8:	1407c0e3          	bltz	a5,11a18 <_vfprintf_r+0x1370>
   110dc:	08f14603          	lbu	a2,143(sp)
   110e0:	bc044ee3          	bltz	s0,10cbc <_vfprintf_r+0x614>
   110e4:	f7fc7c13          	andi	s8,s8,-129
   110e8:	ae0798e3          	bnez	a5,10bd8 <_vfprintf_r+0x530>
   110ec:	6e041a63          	bnez	s0,117e0 <_vfprintf_r+0x1138>
   110f0:	00000413          	li	s0,0
   110f4:	02012023          	sw	zero,32(sp)
   110f8:	000b0913          	mv	s2,s6
   110fc:	9a9ff06f          	j	10aa4 <_vfprintf_r+0x3fc>
   11100:	040c6c13          	ori	s8,s8,64
   11104:	f60ff06f          	j	10864 <_vfprintf_r+0x1bc>
   11108:	00060463          	beqz	a2,11110 <_vfprintf_r+0xa68>
   1110c:	1d40106f          	j	122e0 <_vfprintf_r+0x1c38>
   11110:	02813783          	ld	a5,40(sp)
   11114:	00100913          	li	s2,1
   11118:	0007b787          	fld	fa5,0(a5)
   1111c:	00878793          	addi	a5,a5,8
   11120:	01113023          	sd	a7,0(sp)
   11124:	04f13c27          	fsd	fa5,88(sp)
   11128:	05813c83          	ld	s9,88(sp)
   1112c:	02f13423          	sd	a5,40(sp)
   11130:	f20c8553          	fmv.d.x	fa0,s9
   11134:	2e8050ef          	jal	1641c <__fpclassifyd>
   11138:	00013883          	ld	a7,0(sp)
   1113c:	0f251ce3          	bne	a0,s2,11a34 <_vfprintf_r+0x138c>
   11140:	f20007d3          	fmv.d.x	fa5,zero
   11144:	f20c8753          	fmv.d.x	fa4,s9
   11148:	a2f717d3          	flt.d	a5,fa4,fa5
   1114c:	600792e3          	bnez	a5,11f50 <_vfprintf_r+0x18a8>
   11150:	08f14603          	lbu	a2,143(sp)
   11154:	04700793          	li	a5,71
   11158:	3da7d8e3          	ble	s10,a5,11d28 <_vfprintf_r+0x1680>
   1115c:	00019937          	lui	s2,0x19
   11160:	66090913          	addi	s2,s2,1632 # 19660 <zeroes.4137+0x20>
   11164:	00300793          	li	a5,3
   11168:	00f12423          	sw	a5,8(sp)
   1116c:	f7fc7c13          	andi	s8,s8,-129
   11170:	02f12023          	sw	a5,32(sp)
   11174:	00000413          	li	s0,0
   11178:	04012623          	sw	zero,76(sp)
   1117c:	941ff06f          	j	10abc <_vfprintf_r+0x414>
   11180:	008c6c13          	ori	s8,s8,8
   11184:	ee0ff06f          	j	10864 <_vfprintf_r+0x1bc>
   11188:	00060463          	beqz	a2,11190 <_vfprintf_r+0xae8>
   1118c:	1280106f          	j	122b4 <_vfprintf_r+0x1c0c>
   11190:	000197b7          	lui	a5,0x19
   11194:	69078793          	addi	a5,a5,1680 # 19690 <zeroes.4137+0x50>
   11198:	02f13c23          	sd	a5,56(sp)
   1119c:	010c7793          	andi	a5,s8,16
   111a0:	b40792e3          	bnez	a5,10ce4 <_vfprintf_r+0x63c>
   111a4:	040c7793          	andi	a5,s8,64
   111a8:	02813703          	ld	a4,40(sp)
   111ac:	1c0784e3          	beqz	a5,11b74 <_vfprintf_r+0x14cc>
   111b0:	00075783          	lhu	a5,0(a4)
   111b4:	00870713          	addi	a4,a4,8
   111b8:	02e13423          	sd	a4,40(sp)
   111bc:	b39ff06f          	j	10cf4 <_vfprintf_r+0x64c>
   111c0:	00060463          	beqz	a2,111c8 <_vfprintf_r+0xb20>
   111c4:	10c0106f          	j	122d0 <_vfprintf_r+0x1c28>
   111c8:	010c7793          	andi	a5,s8,16
   111cc:	1a078ce3          	beqz	a5,11b84 <_vfprintf_r+0x14dc>
   111d0:	02813683          	ld	a3,40(sp)
   111d4:	01c12703          	lw	a4,28(sp)
   111d8:	0006b783          	ld	a5,0(a3)
   111dc:	00868693          	addi	a3,a3,8
   111e0:	02d13423          	sd	a3,40(sp)
   111e4:	00e7b023          	sd	a4,0(a5)
   111e8:	de0ff06f          	j	107c8 <_vfprintf_r+0x120>
   111ec:	00060463          	beqz	a2,111f4 <_vfprintf_r+0xb4c>
   111f0:	0d40106f          	j	122c4 <_vfprintf_r+0x1c1c>
   111f4:	010c6c13          	ori	s8,s8,16
   111f8:	010c7793          	andi	a5,s8,16
   111fc:	ec0796e3          	bnez	a5,110c8 <_vfprintf_r+0xa20>
   11200:	040c7793          	andi	a5,s8,64
   11204:	02813703          	ld	a4,40(sp)
   11208:	1a0780e3          	beqz	a5,11ba8 <_vfprintf_r+0x1500>
   1120c:	00071783          	lh	a5,0(a4)
   11210:	00870713          	addi	a4,a4,8
   11214:	02e13423          	sd	a4,40(sp)
   11218:	ec1ff06f          	j	110d8 <_vfprintf_r+0xa30>
   1121c:	00019737          	lui	a4,0x19
   11220:	69070713          	addi	a4,a4,1680 # 19690 <zeroes.4137+0x50>
   11224:	00000613          	li	a2,0
   11228:	02e13c23          	sd	a4,56(sp)
   1122c:	07800d13          	li	s10,120
   11230:	ee0ff06f          	j	10910 <_vfprintf_r+0x268>
   11234:	00060463          	beqz	a2,1123c <_vfprintf_r+0xb94>
   11238:	0c00106f          	j	122f8 <_vfprintf_r+0x1c50>
   1123c:	f60d0263          	beqz	s10,109a0 <_vfprintf_r+0x2f8>
   11240:	00100793          	li	a5,1
   11244:	00f12423          	sw	a5,8(sp)
   11248:	0da10423          	sb	s10,200(sp)
   1124c:	080107a3          	sb	zero,143(sp)
   11250:	00000613          	li	a2,0
   11254:	02f12023          	sw	a5,32(sp)
   11258:	00000413          	li	s0,0
   1125c:	04012623          	sw	zero,76(sp)
   11260:	0c810913          	addi	s2,sp,200
   11264:	afdff06f          	j	10d60 <_vfprintf_r+0x6b8>
   11268:	02e13423          	sd	a4,40(sp)
   1126c:	00019737          	lui	a4,0x19
   11270:	69070713          	addi	a4,a4,1680 # 19690 <zeroes.4137+0x50>
   11274:	00068c13          	mv	s8,a3
   11278:	02e13c23          	sd	a4,56(sp)
   1127c:	07800d13          	li	s10,120
   11280:	3a079a63          	bnez	a5,11634 <_vfprintf_r+0xf8c>
   11284:	00000613          	li	a2,0
   11288:	00200793          	li	a5,2
   1128c:	00100713          	li	a4,1
   11290:	54e78863          	beq	a5,a4,117e0 <_vfprintf_r+0x1138>
   11294:	00200713          	li	a4,2
   11298:	e6e78a63          	beq	a5,a4,1090c <_vfprintf_r+0x264>
   1129c:	00000793          	li	a5,0
   112a0:	fc4ff06f          	j	10a64 <_vfprintf_r+0x3bc>
   112a4:	0c013783          	ld	a5,192(sp)
   112a8:	ba1ff06f          	j	10e48 <_vfprintf_r+0x7a0>
   112ac:	07012683          	lw	a3,112(sp)
   112b0:	00100713          	li	a4,1
   112b4:	00178793          	addi	a5,a5,1
   112b8:	6cd75663          	ble	a3,a4,11984 <_vfprintf_r+0x12dc>
   112bc:	0b812703          	lw	a4,184(sp)
   112c0:	00100693          	li	a3,1
   112c4:	00d8b423          	sd	a3,8(a7)
   112c8:	0017071b          	addiw	a4,a4,1
   112cc:	0128b023          	sd	s2,0(a7)
   112d0:	0cf13023          	sd	a5,192(sp)
   112d4:	0ae12c23          	sw	a4,184(sp)
   112d8:	00700693          	li	a3,7
   112dc:	01088893          	addi	a7,a7,16
   112e0:	6ce6ca63          	blt	a3,a4,119b4 <_vfprintf_r+0x130c>
   112e4:	06813683          	ld	a3,104(sp)
   112e8:	06013603          	ld	a2,96(sp)
   112ec:	0017071b          	addiw	a4,a4,1
   112f0:	00f687b3          	add	a5,a3,a5
   112f4:	00d8b423          	sd	a3,8(a7)
   112f8:	00c8b023          	sd	a2,0(a7)
   112fc:	0cf13023          	sd	a5,192(sp)
   11300:	0ae12c23          	sw	a4,184(sp)
   11304:	00700693          	li	a3,7
   11308:	01088893          	addi	a7,a7,16
   1130c:	6ee6c263          	blt	a3,a4,119f0 <_vfprintf_r+0x1348>
   11310:	f20007d3          	fmv.d.x	fa5,zero
   11314:	05813707          	fld	fa4,88(sp)
   11318:	a2f726d3          	feq.d	a3,fa4,fa5
   1131c:	40069c63          	bnez	a3,11734 <_vfprintf_r+0x108c>
   11320:	07012683          	lw	a3,112(sp)
   11324:	00190913          	addi	s2,s2,1
   11328:	0017071b          	addiw	a4,a4,1
   1132c:	fff6869b          	addiw	a3,a3,-1
   11330:	00d787b3          	add	a5,a5,a3
   11334:	0128b023          	sd	s2,0(a7)
   11338:	00d8b423          	sd	a3,8(a7)
   1133c:	0cf13023          	sd	a5,192(sp)
   11340:	0ae12c23          	sw	a4,184(sp)
   11344:	00700693          	li	a3,7
   11348:	26e6c063          	blt	a3,a4,115a8 <_vfprintf_r+0xf00>
   1134c:	01088893          	addi	a7,a7,16
   11350:	07412683          	lw	a3,116(sp)
   11354:	0a010613          	addi	a2,sp,160
   11358:	0017071b          	addiw	a4,a4,1
   1135c:	00f687b3          	add	a5,a3,a5
   11360:	00c8b023          	sd	a2,0(a7)
   11364:	00d8b423          	sd	a3,8(a7)
   11368:	0cf13023          	sd	a5,192(sp)
   1136c:	0ae12c23          	sw	a4,184(sp)
   11370:	00700693          	li	a3,7
   11374:	c4e6d2e3          	ble	a4,a3,10fb8 <_vfprintf_r+0x910>
   11378:	0b010613          	addi	a2,sp,176
   1137c:	000a0593          	mv	a1,s4
   11380:	000b8513          	mv	a0,s7
   11384:	548050ef          	jal	168cc <__sprint_r>
   11388:	e2051863          	bnez	a0,109b8 <_vfprintf_r+0x310>
   1138c:	0c013783          	ld	a5,192(sp)
   11390:	000b0893          	mv	a7,s6
   11394:	c29ff06f          	j	10fbc <_vfprintf_r+0x914>
   11398:	06500713          	li	a4,101
   1139c:	f1a758e3          	ble	s10,a4,112ac <_vfprintf_r+0xc04>
   113a0:	f20007d3          	fmv.d.x	fa5,zero
   113a4:	05813707          	fld	fa4,88(sp)
   113a8:	a2f72753          	feq.d	a4,fa4,fa5
   113ac:	28070863          	beqz	a4,1163c <_vfprintf_r+0xf94>
   113b0:	0b812703          	lw	a4,184(sp)
   113b4:	000196b7          	lui	a3,0x19
   113b8:	6b068693          	addi	a3,a3,1712 # 196b0 <zeroes.4137+0x70>
   113bc:	00d8b023          	sd	a3,0(a7)
   113c0:	00178793          	addi	a5,a5,1
   113c4:	00100693          	li	a3,1
   113c8:	0017071b          	addiw	a4,a4,1
   113cc:	00d8b423          	sd	a3,8(a7)
   113d0:	0cf13023          	sd	a5,192(sp)
   113d4:	0ae12c23          	sw	a4,184(sp)
   113d8:	00700693          	li	a3,7
   113dc:	01088893          	addi	a7,a7,16
   113e0:	7ee6ca63          	blt	a3,a4,11bd4 <_vfprintf_r+0x152c>
   113e4:	09812703          	lw	a4,152(sp)
   113e8:	07012683          	lw	a3,112(sp)
   113ec:	00d74663          	blt	a4,a3,113f8 <_vfprintf_r+0xd50>
   113f0:	001c7713          	andi	a4,s8,1
   113f4:	bc0704e3          	beqz	a4,10fbc <_vfprintf_r+0x914>
   113f8:	06013703          	ld	a4,96(sp)
   113fc:	06813683          	ld	a3,104(sp)
   11400:	01088893          	addi	a7,a7,16
   11404:	fee8b823          	sd	a4,-16(a7)
   11408:	0b812703          	lw	a4,184(sp)
   1140c:	00d787b3          	add	a5,a5,a3
   11410:	fed8bc23          	sd	a3,-8(a7)
   11414:	0017071b          	addiw	a4,a4,1
   11418:	0cf13023          	sd	a5,192(sp)
   1141c:	0ae12c23          	sw	a4,184(sp)
   11420:	00700693          	li	a3,7
   11424:	1ce6c8e3          	blt	a3,a4,11df4 <_vfprintf_r+0x174c>
   11428:	07012703          	lw	a4,112(sp)
   1142c:	fff7041b          	addiw	s0,a4,-1
   11430:	b88056e3          	blez	s0,10fbc <_vfprintf_r+0x914>
   11434:	01000713          	li	a4,16
   11438:	36875c63          	ble	s0,a4,117b0 <_vfprintf_r+0x1108>
   1143c:	01000913          	li	s2,16
   11440:	0b812703          	lw	a4,184(sp)
   11444:	00913823          	sd	s1,16(sp)
   11448:	00700d13          	li	s10,7
   1144c:	00090693          	mv	a3,s2
   11450:	00c0006f          	j	1145c <_vfprintf_r+0xdb4>
   11454:	ff04041b          	addiw	s0,s0,-16
   11458:	3686d063          	ble	s0,a3,117b8 <_vfprintf_r+0x1110>
   1145c:	01078793          	addi	a5,a5,16
   11460:	0017071b          	addiw	a4,a4,1
   11464:	0098b023          	sd	s1,0(a7)
   11468:	0128b423          	sd	s2,8(a7)
   1146c:	0cf13023          	sd	a5,192(sp)
   11470:	0ae12c23          	sw	a4,184(sp)
   11474:	01088893          	addi	a7,a7,16
   11478:	fced5ee3          	ble	a4,s10,11454 <_vfprintf_r+0xdac>
   1147c:	0b010613          	addi	a2,sp,176
   11480:	000a0593          	mv	a1,s4
   11484:	000b8513          	mv	a0,s7
   11488:	00d13023          	sd	a3,0(sp)
   1148c:	440050ef          	jal	168cc <__sprint_r>
   11490:	d2051463          	bnez	a0,109b8 <_vfprintf_r+0x310>
   11494:	0c013783          	ld	a5,192(sp)
   11498:	0b812703          	lw	a4,184(sp)
   1149c:	000b0893          	mv	a7,s6
   114a0:	00013683          	ld	a3,0(sp)
   114a4:	fb1ff06f          	j	11454 <_vfprintf_r+0xdac>
   114a8:	01812703          	lw	a4,24(sp)
   114ac:	00812683          	lw	a3,8(sp)
   114b0:	40d70cbb          	subw	s9,a4,a3
   114b4:	a19056e3          	blez	s9,10ec0 <_vfprintf_r+0x818>
   114b8:	01000713          	li	a4,16
   114bc:	2f975ee3          	ble	s9,a4,11fb8 <_vfprintf_r+0x1910>
   114c0:	01000813          	li	a6,16
   114c4:	0b812703          	lw	a4,184(sp)
   114c8:	00913823          	sd	s1,16(sp)
   114cc:	00700313          	li	t1,7
   114d0:	00080d93          	mv	s11,a6
   114d4:	00c0006f          	j	114e0 <_vfprintf_r+0xe38>
   114d8:	ff0c8c9b          	addiw	s9,s9,-16
   114dc:	059dde63          	ble	s9,s11,11538 <_vfprintf_r+0xe90>
   114e0:	01078793          	addi	a5,a5,16
   114e4:	0017071b          	addiw	a4,a4,1
   114e8:	0098b023          	sd	s1,0(a7)
   114ec:	0108b423          	sd	a6,8(a7)
   114f0:	0cf13023          	sd	a5,192(sp)
   114f4:	0ae12c23          	sw	a4,184(sp)
   114f8:	01088893          	addi	a7,a7,16
   114fc:	fce35ee3          	ble	a4,t1,114d8 <_vfprintf_r+0xe30>
   11500:	0b010613          	addi	a2,sp,176
   11504:	000a0593          	mv	a1,s4
   11508:	000b8513          	mv	a0,s7
   1150c:	04613023          	sd	t1,64(sp)
   11510:	01013023          	sd	a6,0(sp)
   11514:	3b8050ef          	jal	168cc <__sprint_r>
   11518:	ca051063          	bnez	a0,109b8 <_vfprintf_r+0x310>
   1151c:	ff0c8c9b          	addiw	s9,s9,-16
   11520:	0c013783          	ld	a5,192(sp)
   11524:	0b812703          	lw	a4,184(sp)
   11528:	000b0893          	mv	a7,s6
   1152c:	04013303          	ld	t1,64(sp)
   11530:	00013803          	ld	a6,0(sp)
   11534:	fb9dc6e3          	blt	s11,s9,114e0 <_vfprintf_r+0xe38>
   11538:	01013603          	ld	a2,16(sp)
   1153c:	019787b3          	add	a5,a5,s9
   11540:	0017071b          	addiw	a4,a4,1
   11544:	00c8b023          	sd	a2,0(a7)
   11548:	0198b423          	sd	s9,8(a7)
   1154c:	0cf13023          	sd	a5,192(sp)
   11550:	0ae12c23          	sw	a4,184(sp)
   11554:	00700693          	li	a3,7
   11558:	01088893          	addi	a7,a7,16
   1155c:	96e6d2e3          	ble	a4,a3,10ec0 <_vfprintf_r+0x818>
   11560:	0b010613          	addi	a2,sp,176
   11564:	000a0593          	mv	a1,s4
   11568:	000b8513          	mv	a0,s7
   1156c:	360050ef          	jal	168cc <__sprint_r>
   11570:	c4051463          	bnez	a0,109b8 <_vfprintf_r+0x310>
   11574:	0c013783          	ld	a5,192(sp)
   11578:	000b0893          	mv	a7,s6
   1157c:	945ff06f          	j	10ec0 <_vfprintf_r+0x818>
   11580:	00913823          	sd	s1,16(sp)
   11584:	01013683          	ld	a3,16(sp)
   11588:	008787b3          	add	a5,a5,s0
   1158c:	0017071b          	addiw	a4,a4,1
   11590:	00d8b023          	sd	a3,0(a7)
   11594:	0088b423          	sd	s0,8(a7)
   11598:	0cf13023          	sd	a5,192(sp)
   1159c:	0ae12c23          	sw	a4,184(sp)
   115a0:	00700693          	li	a3,7
   115a4:	dae6d4e3          	ble	a4,a3,1134c <_vfprintf_r+0xca4>
   115a8:	0b010613          	addi	a2,sp,176
   115ac:	000a0593          	mv	a1,s4
   115b0:	000b8513          	mv	a0,s7
   115b4:	318050ef          	jal	168cc <__sprint_r>
   115b8:	c0051063          	bnez	a0,109b8 <_vfprintf_r+0x310>
   115bc:	0c013783          	ld	a5,192(sp)
   115c0:	0b812703          	lw	a4,184(sp)
   115c4:	000b0893          	mv	a7,s6
   115c8:	d89ff06f          	j	11350 <_vfprintf_r+0xca8>
   115cc:	0b010613          	addi	a2,sp,176
   115d0:	000a0593          	mv	a1,s4
   115d4:	000b8513          	mv	a0,s7
   115d8:	2f4050ef          	jal	168cc <__sprint_r>
   115dc:	ac0502e3          	beqz	a0,110a0 <_vfprintf_r+0x9f8>
   115e0:	bd8ff06f          	j	109b8 <_vfprintf_r+0x310>
   115e4:	0b010613          	addi	a2,sp,176
   115e8:	000a0593          	mv	a1,s4
   115ec:	000b8513          	mv	a0,s7
   115f0:	2dc050ef          	jal	168cc <__sprint_r>
   115f4:	bc051263          	bnez	a0,109b8 <_vfprintf_r+0x310>
   115f8:	0c013783          	ld	a5,192(sp)
   115fc:	000b0893          	mv	a7,s6
   11600:	87dff06f          	j	10e7c <_vfprintf_r+0x7d4>
   11604:	0b010613          	addi	a2,sp,176
   11608:	000a0593          	mv	a1,s4
   1160c:	000b8513          	mv	a0,s7
   11610:	2bc050ef          	jal	168cc <__sprint_r>
   11614:	ba051263          	bnez	a0,109b8 <_vfprintf_r+0x310>
   11618:	0c013783          	ld	a5,192(sp)
   1161c:	000b0893          	mv	a7,s6
   11620:	895ff06f          	j	10eb4 <_vfprintf_r+0x80c>
   11624:	080107a3          	sb	zero,143(sp)
   11628:	c4044ce3          	bltz	s0,11280 <_vfprintf_r+0xbd8>
   1162c:	f7fc7c13          	andi	s8,s8,-129
   11630:	ac078a63          	beqz	a5,10904 <_vfprintf_r+0x25c>
   11634:	00000613          	li	a2,0
   11638:	ad8ff06f          	j	10910 <_vfprintf_r+0x268>
   1163c:	09812403          	lw	s0,152(sp)
   11640:	5a805c63          	blez	s0,11bf8 <_vfprintf_r+0x1550>
   11644:	04c12703          	lw	a4,76(sp)
   11648:	07012683          	lw	a3,112(sp)
   1164c:	00070413          	mv	s0,a4
   11650:	00e6d463          	ble	a4,a3,11658 <_vfprintf_r+0xfb0>
   11654:	00068413          	mv	s0,a3
   11658:	02805663          	blez	s0,11684 <_vfprintf_r+0xfdc>
   1165c:	0b812703          	lw	a4,184(sp)
   11660:	008787b3          	add	a5,a5,s0
   11664:	0128b023          	sd	s2,0(a7)
   11668:	0017071b          	addiw	a4,a4,1
   1166c:	0088b423          	sd	s0,8(a7)
   11670:	0cf13023          	sd	a5,192(sp)
   11674:	0ae12c23          	sw	a4,184(sp)
   11678:	00700693          	li	a3,7
   1167c:	01088893          	addi	a7,a7,16
   11680:	6ae6ca63          	blt	a3,a4,11d34 <_vfprintf_r+0x168c>
   11684:	020448e3          	bltz	s0,11eb4 <_vfprintf_r+0x180c>
   11688:	04c12703          	lw	a4,76(sp)
   1168c:	4087043b          	subw	s0,a4,s0
   11690:	1a805c63          	blez	s0,11848 <_vfprintf_r+0x11a0>
   11694:	01000713          	li	a4,16
   11698:	16875263          	ble	s0,a4,117fc <_vfprintf_r+0x1154>
   1169c:	01000d13          	li	s10,16
   116a0:	0b812703          	lw	a4,184(sp)
   116a4:	00913823          	sd	s1,16(sp)
   116a8:	00700693          	li	a3,7
   116ac:	000d0813          	mv	a6,s10
   116b0:	00c0006f          	j	116bc <_vfprintf_r+0x1014>
   116b4:	ff04041b          	addiw	s0,s0,-16
   116b8:	14885663          	ble	s0,a6,11804 <_vfprintf_r+0x115c>
   116bc:	01078793          	addi	a5,a5,16
   116c0:	0017071b          	addiw	a4,a4,1
   116c4:	0098b023          	sd	s1,0(a7)
   116c8:	01a8b423          	sd	s10,8(a7)
   116cc:	0cf13023          	sd	a5,192(sp)
   116d0:	0ae12c23          	sw	a4,184(sp)
   116d4:	01088893          	addi	a7,a7,16
   116d8:	fce6dee3          	ble	a4,a3,116b4 <_vfprintf_r+0x100c>
   116dc:	0b010613          	addi	a2,sp,176
   116e0:	000a0593          	mv	a1,s4
   116e4:	000b8513          	mv	a0,s7
   116e8:	03013023          	sd	a6,32(sp)
   116ec:	00d13023          	sd	a3,0(sp)
   116f0:	1dc050ef          	jal	168cc <__sprint_r>
   116f4:	ac051263          	bnez	a0,109b8 <_vfprintf_r+0x310>
   116f8:	0c013783          	ld	a5,192(sp)
   116fc:	0b812703          	lw	a4,184(sp)
   11700:	000b0893          	mv	a7,s6
   11704:	02013803          	ld	a6,32(sp)
   11708:	00013683          	ld	a3,0(sp)
   1170c:	fa9ff06f          	j	116b4 <_vfprintf_r+0x100c>
   11710:	0b010613          	addi	a2,sp,176
   11714:	000a0593          	mv	a1,s4
   11718:	000b8513          	mv	a0,s7
   1171c:	1b0050ef          	jal	168cc <__sprint_r>
   11720:	a8051c63          	bnez	a0,109b8 <_vfprintf_r+0x310>
   11724:	08f14603          	lbu	a2,143(sp)
   11728:	0c013783          	ld	a5,192(sp)
   1172c:	000b0893          	mv	a7,s6
   11730:	f18ff06f          	j	10e48 <_vfprintf_r+0x7a0>
   11734:	07012683          	lw	a3,112(sp)
   11738:	fff6841b          	addiw	s0,a3,-1
   1173c:	c0805ae3          	blez	s0,11350 <_vfprintf_r+0xca8>
   11740:	01000693          	li	a3,16
   11744:	e286dee3          	ble	s0,a3,11580 <_vfprintf_r+0xed8>
   11748:	01000913          	li	s2,16
   1174c:	00913823          	sd	s1,16(sp)
   11750:	00700d13          	li	s10,7
   11754:	00090693          	mv	a3,s2
   11758:	00c0006f          	j	11764 <_vfprintf_r+0x10bc>
   1175c:	ff04041b          	addiw	s0,s0,-16
   11760:	e286d2e3          	ble	s0,a3,11584 <_vfprintf_r+0xedc>
   11764:	01078793          	addi	a5,a5,16
   11768:	0017071b          	addiw	a4,a4,1
   1176c:	0098b023          	sd	s1,0(a7)
   11770:	0128b423          	sd	s2,8(a7)
   11774:	0cf13023          	sd	a5,192(sp)
   11778:	0ae12c23          	sw	a4,184(sp)
   1177c:	01088893          	addi	a7,a7,16
   11780:	fced5ee3          	ble	a4,s10,1175c <_vfprintf_r+0x10b4>
   11784:	0b010613          	addi	a2,sp,176
   11788:	000a0593          	mv	a1,s4
   1178c:	000b8513          	mv	a0,s7
   11790:	00d13023          	sd	a3,0(sp)
   11794:	138050ef          	jal	168cc <__sprint_r>
   11798:	a2051063          	bnez	a0,109b8 <_vfprintf_r+0x310>
   1179c:	0c013783          	ld	a5,192(sp)
   117a0:	0b812703          	lw	a4,184(sp)
   117a4:	000b0893          	mv	a7,s6
   117a8:	00013683          	ld	a3,0(sp)
   117ac:	fb1ff06f          	j	1175c <_vfprintf_r+0x10b4>
   117b0:	0b812703          	lw	a4,184(sp)
   117b4:	00913823          	sd	s1,16(sp)
   117b8:	01013683          	ld	a3,16(sp)
   117bc:	008787b3          	add	a5,a5,s0
   117c0:	0088b423          	sd	s0,8(a7)
   117c4:	00d8b023          	sd	a3,0(a7)
   117c8:	0017071b          	addiw	a4,a4,1
   117cc:	0cf13023          	sd	a5,192(sp)
   117d0:	0ae12c23          	sw	a4,184(sp)
   117d4:	00700693          	li	a3,7
   117d8:	fee6d063          	ble	a4,a3,10fb8 <_vfprintf_r+0x910>
   117dc:	b9dff06f          	j	11378 <_vfprintf_r+0xcd0>
   117e0:	00000793          	li	a5,0
   117e4:	0307879b          	addiw	a5,a5,48
   117e8:	0ef107a3          	sb	a5,239(sp)
   117ec:	07813783          	ld	a5,120(sp)
   117f0:	0ef10913          	addi	s2,sp,239
   117f4:	02f12023          	sw	a5,32(sp)
   117f8:	aacff06f          	j	10aa4 <_vfprintf_r+0x3fc>
   117fc:	0b812703          	lw	a4,184(sp)
   11800:	00913823          	sd	s1,16(sp)
   11804:	01013683          	ld	a3,16(sp)
   11808:	008787b3          	add	a5,a5,s0
   1180c:	0017071b          	addiw	a4,a4,1
   11810:	00d8b023          	sd	a3,0(a7)
   11814:	0088b423          	sd	s0,8(a7)
   11818:	0cf13023          	sd	a5,192(sp)
   1181c:	0ae12c23          	sw	a4,184(sp)
   11820:	00700693          	li	a3,7
   11824:	01088893          	addi	a7,a7,16
   11828:	02e6d063          	ble	a4,a3,11848 <_vfprintf_r+0x11a0>
   1182c:	0b010613          	addi	a2,sp,176
   11830:	000a0593          	mv	a1,s4
   11834:	000b8513          	mv	a0,s7
   11838:	094050ef          	jal	168cc <__sprint_r>
   1183c:	96051e63          	bnez	a0,109b8 <_vfprintf_r+0x310>
   11840:	0c013783          	ld	a5,192(sp)
   11844:	000b0893          	mv	a7,s6
   11848:	04c12d03          	lw	s10,76(sp)
   1184c:	09812703          	lw	a4,152(sp)
   11850:	07012683          	lw	a3,112(sp)
   11854:	01a90d33          	add	s10,s2,s10
   11858:	0cd74a63          	blt	a4,a3,1192c <_vfprintf_r+0x1284>
   1185c:	001c7693          	andi	a3,s8,1
   11860:	0c069663          	bnez	a3,1192c <_vfprintf_r+0x1284>
   11864:	07012683          	lw	a3,112(sp)
   11868:	00d90433          	add	s0,s2,a3
   1186c:	41a40433          	sub	s0,s0,s10
   11870:	40e6873b          	subw	a4,a3,a4
   11874:	0004041b          	sext.w	s0,s0
   11878:	00875463          	ble	s0,a4,11880 <_vfprintf_r+0x11d8>
   1187c:	00070413          	mv	s0,a4
   11880:	02805663          	blez	s0,118ac <_vfprintf_r+0x1204>
   11884:	0b812683          	lw	a3,184(sp)
   11888:	008787b3          	add	a5,a5,s0
   1188c:	01a8b023          	sd	s10,0(a7)
   11890:	0016869b          	addiw	a3,a3,1
   11894:	0088b423          	sd	s0,8(a7)
   11898:	0cf13023          	sd	a5,192(sp)
   1189c:	0ad12c23          	sw	a3,184(sp)
   118a0:	00700613          	li	a2,7
   118a4:	01088893          	addi	a7,a7,16
   118a8:	4cd64263          	blt	a2,a3,11d6c <_vfprintf_r+0x16c4>
   118ac:	60044863          	bltz	s0,11ebc <_vfprintf_r+0x1814>
   118b0:	4087043b          	subw	s0,a4,s0
   118b4:	f0805463          	blez	s0,10fbc <_vfprintf_r+0x914>
   118b8:	01000713          	li	a4,16
   118bc:	ee875ae3          	ble	s0,a4,117b0 <_vfprintf_r+0x1108>
   118c0:	01000913          	li	s2,16
   118c4:	0b812703          	lw	a4,184(sp)
   118c8:	00913823          	sd	s1,16(sp)
   118cc:	00700d13          	li	s10,7
   118d0:	00090693          	mv	a3,s2
   118d4:	00c0006f          	j	118e0 <_vfprintf_r+0x1238>
   118d8:	ff04041b          	addiw	s0,s0,-16
   118dc:	ec86dee3          	ble	s0,a3,117b8 <_vfprintf_r+0x1110>
   118e0:	01078793          	addi	a5,a5,16
   118e4:	0017071b          	addiw	a4,a4,1
   118e8:	0098b023          	sd	s1,0(a7)
   118ec:	0128b423          	sd	s2,8(a7)
   118f0:	0cf13023          	sd	a5,192(sp)
   118f4:	0ae12c23          	sw	a4,184(sp)
   118f8:	01088893          	addi	a7,a7,16
   118fc:	fced5ee3          	ble	a4,s10,118d8 <_vfprintf_r+0x1230>
   11900:	0b010613          	addi	a2,sp,176
   11904:	000a0593          	mv	a1,s4
   11908:	000b8513          	mv	a0,s7
   1190c:	00d13023          	sd	a3,0(sp)
   11910:	7bd040ef          	jal	168cc <__sprint_r>
   11914:	8a051263          	bnez	a0,109b8 <_vfprintf_r+0x310>
   11918:	0c013783          	ld	a5,192(sp)
   1191c:	0b812703          	lw	a4,184(sp)
   11920:	000b0893          	mv	a7,s6
   11924:	00013683          	ld	a3,0(sp)
   11928:	fb1ff06f          	j	118d8 <_vfprintf_r+0x1230>
   1192c:	06013683          	ld	a3,96(sp)
   11930:	06813603          	ld	a2,104(sp)
   11934:	01088893          	addi	a7,a7,16
   11938:	fed8b823          	sd	a3,-16(a7)
   1193c:	0b812683          	lw	a3,184(sp)
   11940:	00c787b3          	add	a5,a5,a2
   11944:	fec8bc23          	sd	a2,-8(a7)
   11948:	0016869b          	addiw	a3,a3,1
   1194c:	0cf13023          	sd	a5,192(sp)
   11950:	0ad12c23          	sw	a3,184(sp)
   11954:	00700613          	li	a2,7
   11958:	f0d656e3          	ble	a3,a2,11864 <_vfprintf_r+0x11bc>
   1195c:	0b010613          	addi	a2,sp,176
   11960:	000a0593          	mv	a1,s4
   11964:	000b8513          	mv	a0,s7
   11968:	765040ef          	jal	168cc <__sprint_r>
   1196c:	00050463          	beqz	a0,11974 <_vfprintf_r+0x12cc>
   11970:	848ff06f          	j	109b8 <_vfprintf_r+0x310>
   11974:	09812703          	lw	a4,152(sp)
   11978:	0c013783          	ld	a5,192(sp)
   1197c:	000b0893          	mv	a7,s6
   11980:	ee5ff06f          	j	11864 <_vfprintf_r+0x11bc>
   11984:	00ec7733          	and	a4,s8,a4
   11988:	92071ae3          	bnez	a4,112bc <_vfprintf_r+0xc14>
   1198c:	0b812703          	lw	a4,184(sp)
   11990:	0128b023          	sd	s2,0(a7)
   11994:	00100693          	li	a3,1
   11998:	0017071b          	addiw	a4,a4,1
   1199c:	99dff06f          	j	11338 <_vfprintf_r+0xc90>
   119a0:	02813783          	ld	a5,40(sp)
   119a4:	00878713          	addi	a4,a5,8
   119a8:	0007e783          	lwu	a5,0(a5)
   119ac:	a0045e63          	bgez	s0,10bc8 <_vfprintf_r+0x520>
   119b0:	b04ff06f          	j	10cb4 <_vfprintf_r+0x60c>
   119b4:	0b010613          	addi	a2,sp,176
   119b8:	000a0593          	mv	a1,s4
   119bc:	000b8513          	mv	a0,s7
   119c0:	70d040ef          	jal	168cc <__sprint_r>
   119c4:	00050463          	beqz	a0,119cc <_vfprintf_r+0x1324>
   119c8:	ff1fe06f          	j	109b8 <_vfprintf_r+0x310>
   119cc:	0c013783          	ld	a5,192(sp)
   119d0:	0b812703          	lw	a4,184(sp)
   119d4:	000b0893          	mv	a7,s6
   119d8:	90dff06f          	j	112e4 <_vfprintf_r+0xc3c>
   119dc:	02813783          	ld	a5,40(sp)
   119e0:	00878713          	addi	a4,a5,8
   119e4:	0007e783          	lwu	a5,0(a5)
   119e8:	86045063          	bgez	s0,10a48 <_vfprintf_r+0x3a0>
   119ec:	a84ff06f          	j	10c70 <_vfprintf_r+0x5c8>
   119f0:	0b010613          	addi	a2,sp,176
   119f4:	000a0593          	mv	a1,s4
   119f8:	000b8513          	mv	a0,s7
   119fc:	6d1040ef          	jal	168cc <__sprint_r>
   11a00:	00050463          	beqz	a0,11a08 <_vfprintf_r+0x1360>
   11a04:	fb5fe06f          	j	109b8 <_vfprintf_r+0x310>
   11a08:	0c013783          	ld	a5,192(sp)
   11a0c:	0b812703          	lw	a4,184(sp)
   11a10:	000b0893          	mv	a7,s6
   11a14:	8fdff06f          	j	11310 <_vfprintf_r+0xc68>
   11a18:	02d00713          	li	a4,45
   11a1c:	08e107a3          	sb	a4,143(sp)
   11a20:	40f007b3          	neg	a5,a5
   11a24:	4a044063          	bltz	s0,11ec4 <_vfprintf_r+0x181c>
   11a28:	f7fc7c13          	andi	s8,s8,-129
   11a2c:	02d00613          	li	a2,45
   11a30:	9a8ff06f          	j	10bd8 <_vfprintf_r+0x530>
   11a34:	05813507          	fld	fa0,88(sp)
   11a38:	01113023          	sd	a7,0(sp)
   11a3c:	1e1040ef          	jal	1641c <__fpclassifyd>
   11a40:	00013883          	ld	a7,0(sp)
   11a44:	2a050463          	beqz	a0,11cec <_vfprintf_r+0x1644>
   11a48:	fff00793          	li	a5,-1
   11a4c:	fdfd7d93          	andi	s11,s10,-33
   11a50:	62f40c63          	beq	s0,a5,12088 <_vfprintf_r+0x19e0>
   11a54:	04700793          	li	a5,71
   11a58:	62fd8263          	beq	s11,a5,1207c <_vfprintf_r+0x19d4>
   11a5c:	05813703          	ld	a4,88(sp)
   11a60:	100c6693          	ori	a3,s8,256
   11a64:	00d12023          	sw	a3,0(sp)
   11a68:	42075793          	srai	a5,a4,0x20
   11a6c:	f2070453          	fmv.d.x	fs0,a4
   11a70:	00000c93          	li	s9,0
   11a74:	6607c663          	bltz	a5,120e0 <_vfprintf_r+0x1a38>
   11a78:	06600793          	li	a5,102
   11a7c:	60fd0a63          	beq	s10,a5,12090 <_vfprintf_r+0x19e8>
   11a80:	04600793          	li	a5,70
   11a84:	72fd0863          	beq	s10,a5,121b4 <_vfprintf_r+0x1b0c>
   11a88:	fbbd859b          	addiw	a1,s11,-69
   11a8c:	0015b593          	seqz	a1,a1
   11a90:	228405d3          	fmv.d	fa1,fs0
   11a94:	00b405bb          	addw	a1,s0,a1
   11a98:	09c10793          	addi	a5,sp,156
   11a9c:	00058693          	mv	a3,a1
   11aa0:	0a810813          	addi	a6,sp,168
   11aa4:	09810713          	addi	a4,sp,152
   11aa8:	00200613          	li	a2,2
   11aac:	000b8513          	mv	a0,s7
   11ab0:	01113823          	sd	a7,16(sp)
   11ab4:	00b13423          	sd	a1,8(sp)
   11ab8:	745000ef          	jal	129fc <_dtoa_r>
   11abc:	06700793          	li	a5,103
   11ac0:	00050913          	mv	s2,a0
   11ac4:	00813583          	ld	a1,8(sp)
   11ac8:	01013883          	ld	a7,16(sp)
   11acc:	46fd0863          	beq	s10,a5,11f3c <_vfprintf_r+0x1894>
   11ad0:	04700793          	li	a5,71
   11ad4:	00b50733          	add	a4,a0,a1
   11ad8:	48fd0a63          	beq	s10,a5,11f6c <_vfprintf_r+0x18c4>
   11adc:	f20007d3          	fmv.d.x	fa5,zero
   11ae0:	00070793          	mv	a5,a4
   11ae4:	a2f426d3          	feq.d	a3,fs0,fa5
   11ae8:	02069263          	bnez	a3,11b0c <_vfprintf_r+0x1464>
   11aec:	0a813783          	ld	a5,168(sp)
   11af0:	00e7fe63          	bleu	a4,a5,11b0c <_vfprintf_r+0x1464>
   11af4:	03000613          	li	a2,48
   11af8:	00178693          	addi	a3,a5,1
   11afc:	0ad13423          	sd	a3,168(sp)
   11b00:	00c78023          	sb	a2,0(a5)
   11b04:	0a813783          	ld	a5,168(sp)
   11b08:	fee7e8e3          	bltu	a5,a4,11af8 <_vfprintf_r+0x1450>
   11b0c:	412787b3          	sub	a5,a5,s2
   11b10:	06f12823          	sw	a5,112(sp)
   11b14:	04700793          	li	a5,71
   11b18:	46fd8663          	beq	s11,a5,11f84 <_vfprintf_r+0x18dc>
   11b1c:	06500793          	li	a5,101
   11b20:	7ba7dc63          	ble	s10,a5,122d8 <_vfprintf_r+0x1c30>
   11b24:	06600793          	li	a5,102
   11b28:	60fd0263          	beq	s10,a5,1212c <_vfprintf_r+0x1a84>
   11b2c:	09812783          	lw	a5,152(sp)
   11b30:	04f12623          	sw	a5,76(sp)
   11b34:	04c12703          	lw	a4,76(sp)
   11b38:	07012683          	lw	a3,112(sp)
   11b3c:	00070793          	mv	a5,a4
   11b40:	5ad74663          	blt	a4,a3,120ec <_vfprintf_r+0x1a44>
   11b44:	001c7c13          	andi	s8,s8,1
   11b48:	5c0c1463          	bnez	s8,12110 <_vfprintf_r+0x1a68>
   11b4c:	76074863          	bltz	a4,122bc <_vfprintf_r+0x1c14>
   11b50:	04c12703          	lw	a4,76(sp)
   11b54:	06700d13          	li	s10,103
   11b58:	02e12023          	sw	a4,32(sp)
   11b5c:	440c9063          	bnez	s9,11f9c <_vfprintf_r+0x18f4>
   11b60:	08f14603          	lbu	a2,143(sp)
   11b64:	00f12423          	sw	a5,8(sp)
   11b68:	00012c03          	lw	s8,0(sp)
   11b6c:	00000413          	li	s0,0
   11b70:	f4dfe06f          	j	10abc <_vfprintf_r+0x414>
   11b74:	00076783          	lwu	a5,0(a4)
   11b78:	00870713          	addi	a4,a4,8
   11b7c:	02e13423          	sd	a4,40(sp)
   11b80:	974ff06f          	j	10cf4 <_vfprintf_r+0x64c>
   11b84:	02813703          	ld	a4,40(sp)
   11b88:	040c7c13          	andi	s8,s8,64
   11b8c:	00073783          	ld	a5,0(a4)
   11b90:	00870713          	addi	a4,a4,8
   11b94:	02e13423          	sd	a4,40(sp)
   11b98:	180c0263          	beqz	s8,11d1c <_vfprintf_r+0x1674>
   11b9c:	01c15703          	lhu	a4,28(sp)
   11ba0:	00e79023          	sh	a4,0(a5)
   11ba4:	c25fe06f          	j	107c8 <_vfprintf_r+0x120>
   11ba8:	00072783          	lw	a5,0(a4)
   11bac:	00870713          	addi	a4,a4,8
   11bb0:	02e13423          	sd	a4,40(sp)
   11bb4:	d24ff06f          	j	110d8 <_vfprintf_r+0xa30>
   11bb8:	080107a3          	sb	zero,143(sp)
   11bbc:	ec044463          	bltz	s0,11284 <_vfprintf_r+0xbdc>
   11bc0:	f7fc7c13          	andi	s8,s8,-129
   11bc4:	d41fe06f          	j	10904 <_vfprintf_r+0x25c>
   11bc8:	0b812703          	lw	a4,184(sp)
   11bcc:	00913823          	sd	s1,16(sp)
   11bd0:	b74ff06f          	j	10f44 <_vfprintf_r+0x89c>
   11bd4:	0b010613          	addi	a2,sp,176
   11bd8:	000a0593          	mv	a1,s4
   11bdc:	000b8513          	mv	a0,s7
   11be0:	4ed040ef          	jal	168cc <__sprint_r>
   11be4:	00050463          	beqz	a0,11bec <_vfprintf_r+0x1544>
   11be8:	dd1fe06f          	j	109b8 <_vfprintf_r+0x310>
   11bec:	0c013783          	ld	a5,192(sp)
   11bf0:	000b0893          	mv	a7,s6
   11bf4:	ff0ff06f          	j	113e4 <_vfprintf_r+0xd3c>
   11bf8:	0b812703          	lw	a4,184(sp)
   11bfc:	000196b7          	lui	a3,0x19
   11c00:	6b068693          	addi	a3,a3,1712 # 196b0 <zeroes.4137+0x70>
   11c04:	00d8b023          	sd	a3,0(a7)
   11c08:	00178793          	addi	a5,a5,1
   11c0c:	00100693          	li	a3,1
   11c10:	0017071b          	addiw	a4,a4,1
   11c14:	00d8b423          	sd	a3,8(a7)
   11c18:	0cf13023          	sd	a5,192(sp)
   11c1c:	0ae12c23          	sw	a4,184(sp)
   11c20:	00700693          	li	a3,7
   11c24:	01088893          	addi	a7,a7,16
   11c28:	16e6ca63          	blt	a3,a4,11d9c <_vfprintf_r+0x16f4>
   11c2c:	12040663          	beqz	s0,11d58 <_vfprintf_r+0x16b0>
   11c30:	06013703          	ld	a4,96(sp)
   11c34:	06813683          	ld	a3,104(sp)
   11c38:	01088893          	addi	a7,a7,16
   11c3c:	fee8b823          	sd	a4,-16(a7)
   11c40:	0b812703          	lw	a4,184(sp)
   11c44:	00f687b3          	add	a5,a3,a5
   11c48:	fed8bc23          	sd	a3,-8(a7)
   11c4c:	0017071b          	addiw	a4,a4,1
   11c50:	0cf13023          	sd	a5,192(sp)
   11c54:	0ae12c23          	sw	a4,184(sp)
   11c58:	00700693          	li	a3,7
   11c5c:	3ee6ca63          	blt	a3,a4,12050 <_vfprintf_r+0x19a8>
   11c60:	4080043b          	negw	s0,s0
   11c64:	20805263          	blez	s0,11e68 <_vfprintf_r+0x17c0>
   11c68:	01000693          	li	a3,16
   11c6c:	1a86d663          	ble	s0,a3,11e18 <_vfprintf_r+0x1770>
   11c70:	01000d13          	li	s10,16
   11c74:	00913823          	sd	s1,16(sp)
   11c78:	00700813          	li	a6,7
   11c7c:	000d0693          	mv	a3,s10
   11c80:	00c0006f          	j	11c8c <_vfprintf_r+0x15e4>
   11c84:	ff04041b          	addiw	s0,s0,-16
   11c88:	1886da63          	ble	s0,a3,11e1c <_vfprintf_r+0x1774>
   11c8c:	01078793          	addi	a5,a5,16
   11c90:	0017071b          	addiw	a4,a4,1
   11c94:	0098b023          	sd	s1,0(a7)
   11c98:	01a8b423          	sd	s10,8(a7)
   11c9c:	0cf13023          	sd	a5,192(sp)
   11ca0:	0ae12c23          	sw	a4,184(sp)
   11ca4:	01088893          	addi	a7,a7,16
   11ca8:	fce85ee3          	ble	a4,a6,11c84 <_vfprintf_r+0x15dc>
   11cac:	0b010613          	addi	a2,sp,176
   11cb0:	000a0593          	mv	a1,s4
   11cb4:	000b8513          	mv	a0,s7
   11cb8:	02d13023          	sd	a3,32(sp)
   11cbc:	01013023          	sd	a6,0(sp)
   11cc0:	40d040ef          	jal	168cc <__sprint_r>
   11cc4:	00050463          	beqz	a0,11ccc <_vfprintf_r+0x1624>
   11cc8:	cf1fe06f          	j	109b8 <_vfprintf_r+0x310>
   11ccc:	0c013783          	ld	a5,192(sp)
   11cd0:	0b812703          	lw	a4,184(sp)
   11cd4:	000b0893          	mv	a7,s6
   11cd8:	02013683          	ld	a3,32(sp)
   11cdc:	00013803          	ld	a6,0(sp)
   11ce0:	fa5ff06f          	j	11c84 <_vfprintf_r+0x15dc>
   11ce4:	fff00513          	li	a0,-1
   11ce8:	ce5fe06f          	j	109cc <_vfprintf_r+0x324>
   11cec:	04700793          	li	a5,71
   11cf0:	27a7c863          	blt	a5,s10,11f60 <_vfprintf_r+0x18b8>
   11cf4:	00019937          	lui	s2,0x19
   11cf8:	66890913          	addi	s2,s2,1640 # 19668 <zeroes.4137+0x28>
   11cfc:	00300793          	li	a5,3
   11d00:	00f12423          	sw	a5,8(sp)
   11d04:	f7fc7c13          	andi	s8,s8,-129
   11d08:	08f14603          	lbu	a2,143(sp)
   11d0c:	02f12023          	sw	a5,32(sp)
   11d10:	00000413          	li	s0,0
   11d14:	04012623          	sw	zero,76(sp)
   11d18:	da5fe06f          	j	10abc <_vfprintf_r+0x414>
   11d1c:	01c12703          	lw	a4,28(sp)
   11d20:	00e7a023          	sw	a4,0(a5)
   11d24:	aa5fe06f          	j	107c8 <_vfprintf_r+0x120>
   11d28:	00019937          	lui	s2,0x19
   11d2c:	65890913          	addi	s2,s2,1624 # 19658 <zeroes.4137+0x18>
   11d30:	c34ff06f          	j	11164 <_vfprintf_r+0xabc>
   11d34:	0b010613          	addi	a2,sp,176
   11d38:	000a0593          	mv	a1,s4
   11d3c:	000b8513          	mv	a0,s7
   11d40:	38d040ef          	jal	168cc <__sprint_r>
   11d44:	00050463          	beqz	a0,11d4c <_vfprintf_r+0x16a4>
   11d48:	c71fe06f          	j	109b8 <_vfprintf_r+0x310>
   11d4c:	0c013783          	ld	a5,192(sp)
   11d50:	000b0893          	mv	a7,s6
   11d54:	931ff06f          	j	11684 <_vfprintf_r+0xfdc>
   11d58:	07012703          	lw	a4,112(sp)
   11d5c:	ec071ae3          	bnez	a4,11c30 <_vfprintf_r+0x1588>
   11d60:	001c7713          	andi	a4,s8,1
   11d64:	a4070c63          	beqz	a4,10fbc <_vfprintf_r+0x914>
   11d68:	ec9ff06f          	j	11c30 <_vfprintf_r+0x1588>
   11d6c:	0b010613          	addi	a2,sp,176
   11d70:	000a0593          	mv	a1,s4
   11d74:	000b8513          	mv	a0,s7
   11d78:	355040ef          	jal	168cc <__sprint_r>
   11d7c:	00050463          	beqz	a0,11d84 <_vfprintf_r+0x16dc>
   11d80:	c39fe06f          	j	109b8 <_vfprintf_r+0x310>
   11d84:	09812703          	lw	a4,152(sp)
   11d88:	07012683          	lw	a3,112(sp)
   11d8c:	0c013783          	ld	a5,192(sp)
   11d90:	000b0893          	mv	a7,s6
   11d94:	40e6873b          	subw	a4,a3,a4
   11d98:	b15ff06f          	j	118ac <_vfprintf_r+0x1204>
   11d9c:	0b010613          	addi	a2,sp,176
   11da0:	000a0593          	mv	a1,s4
   11da4:	000b8513          	mv	a0,s7
   11da8:	325040ef          	jal	168cc <__sprint_r>
   11dac:	00050463          	beqz	a0,11db4 <_vfprintf_r+0x170c>
   11db0:	c09fe06f          	j	109b8 <_vfprintf_r+0x310>
   11db4:	09812403          	lw	s0,152(sp)
   11db8:	0c013783          	ld	a5,192(sp)
   11dbc:	000b0893          	mv	a7,s6
   11dc0:	e60418e3          	bnez	s0,11c30 <_vfprintf_r+0x1588>
   11dc4:	f95ff06f          	j	11d58 <_vfprintf_r+0x16b0>
   11dc8:	001c7793          	andi	a5,s8,1
   11dcc:	00078e63          	beqz	a5,11de8 <_vfprintf_r+0x1740>
   11dd0:	03000793          	li	a5,48
   11dd4:	0ef107a3          	sb	a5,239(sp)
   11dd8:	07813783          	ld	a5,120(sp)
   11ddc:	0ef10913          	addi	s2,sp,239
   11de0:	02f12023          	sw	a5,32(sp)
   11de4:	cc1fe06f          	j	10aa4 <_vfprintf_r+0x3fc>
   11de8:	02012023          	sw	zero,32(sp)
   11dec:	000b0913          	mv	s2,s6
   11df0:	cb5fe06f          	j	10aa4 <_vfprintf_r+0x3fc>
   11df4:	0b010613          	addi	a2,sp,176
   11df8:	000a0593          	mv	a1,s4
   11dfc:	000b8513          	mv	a0,s7
   11e00:	2cd040ef          	jal	168cc <__sprint_r>
   11e04:	00050463          	beqz	a0,11e0c <_vfprintf_r+0x1764>
   11e08:	bb1fe06f          	j	109b8 <_vfprintf_r+0x310>
   11e0c:	0c013783          	ld	a5,192(sp)
   11e10:	000b0893          	mv	a7,s6
   11e14:	e14ff06f          	j	11428 <_vfprintf_r+0xd80>
   11e18:	00913823          	sd	s1,16(sp)
   11e1c:	01013683          	ld	a3,16(sp)
   11e20:	008787b3          	add	a5,a5,s0
   11e24:	0017071b          	addiw	a4,a4,1
   11e28:	00d8b023          	sd	a3,0(a7)
   11e2c:	0088b423          	sd	s0,8(a7)
   11e30:	0cf13023          	sd	a5,192(sp)
   11e34:	0ae12c23          	sw	a4,184(sp)
   11e38:	00700693          	li	a3,7
   11e3c:	01088893          	addi	a7,a7,16
   11e40:	02e6d463          	ble	a4,a3,11e68 <_vfprintf_r+0x17c0>
   11e44:	0b010613          	addi	a2,sp,176
   11e48:	000a0593          	mv	a1,s4
   11e4c:	000b8513          	mv	a0,s7
   11e50:	27d040ef          	jal	168cc <__sprint_r>
   11e54:	00050463          	beqz	a0,11e5c <_vfprintf_r+0x17b4>
   11e58:	b61fe06f          	j	109b8 <_vfprintf_r+0x310>
   11e5c:	0c013783          	ld	a5,192(sp)
   11e60:	0b812703          	lw	a4,184(sp)
   11e64:	000b0893          	mv	a7,s6
   11e68:	07012683          	lw	a3,112(sp)
   11e6c:	0017071b          	addiw	a4,a4,1
   11e70:	0128b023          	sd	s2,0(a7)
   11e74:	00f687b3          	add	a5,a3,a5
   11e78:	cecff06f          	j	11364 <_vfprintf_r+0xcbc>
   11e7c:	00090513          	mv	a0,s2
   11e80:	091040ef          	jal	16710 <strlen>
   11e84:	0005079b          	sext.w	a5,a0
   11e88:	02f12023          	sw	a5,32(sp)
   11e8c:	00078d93          	mv	s11,a5
   11e90:	00013883          	ld	a7,0(sp)
   11e94:	0007c463          	bltz	a5,11e9c <_vfprintf_r+0x17f4>
   11e98:	cf5fe06f          	j	10b8c <_vfprintf_r+0x4e4>
   11e9c:	00000d93          	li	s11,0
   11ea0:	cedfe06f          	j	10b8c <_vfprintf_r+0x4e4>
   11ea4:	0c013783          	ld	a5,192(sp)
   11ea8:	0b812703          	lw	a4,184(sp)
   11eac:	05513823          	sd	s5,80(sp)
   11eb0:	f6dfe06f          	j	10e1c <_vfprintf_r+0x774>
   11eb4:	00000413          	li	s0,0
   11eb8:	fd0ff06f          	j	11688 <_vfprintf_r+0xfe0>
   11ebc:	00000413          	li	s0,0
   11ec0:	9f1ff06f          	j	118b0 <_vfprintf_r+0x1208>
   11ec4:	02d00613          	li	a2,45
   11ec8:	00100713          	li	a4,1
   11ecc:	00100693          	li	a3,1
   11ed0:	00d71463          	bne	a4,a3,11ed8 <_vfprintf_r+0x1830>
   11ed4:	d05fe06f          	j	10bd8 <_vfprintf_r+0x530>
   11ed8:	00200693          	li	a3,2
   11edc:	00d71463          	bne	a4,a3,11ee4 <_vfprintf_r+0x183c>
   11ee0:	a31fe06f          	j	10910 <_vfprintf_r+0x268>
   11ee4:	b81fe06f          	j	10a64 <_vfprintf_r+0x3bc>
   11ee8:	00600713          	li	a4,6
   11eec:	00877463          	bleu	s0,a4,11ef4 <_vfprintf_r+0x184c>
   11ef0:	00070413          	mv	s0,a4
   11ef4:	02812023          	sw	s0,32(sp)
   11ef8:	00040d93          	mv	s11,s0
   11efc:	32044a63          	bltz	s0,12230 <_vfprintf_r+0x1b88>
   11f00:	00019937          	lui	s2,0x19
   11f04:	01b12423          	sw	s11,8(sp)
   11f08:	03913423          	sd	s9,40(sp)
   11f0c:	00000613          	li	a2,0
   11f10:	00000413          	li	s0,0
   11f14:	04012623          	sw	zero,76(sp)
   11f18:	6a890913          	addi	s2,s2,1704 # 196a8 <zeroes.4137+0x68>
   11f1c:	e45fe06f          	j	10d60 <_vfprintf_r+0x6b8>
   11f20:	0b812703          	lw	a4,184(sp)
   11f24:	05513823          	sd	s5,80(sp)
   11f28:	91cff06f          	j	11044 <_vfprintf_r+0x99c>
   11f2c:	00070c13          	mv	s8,a4
   11f30:	00000613          	li	a2,0
   11f34:	00200713          	li	a4,2
   11f38:	f95ff06f          	j	11ecc <_vfprintf_r+0x1824>
   11f3c:	001c7793          	andi	a5,s8,1
   11f40:	00b50733          	add	a4,a0,a1
   11f44:	b8079ce3          	bnez	a5,11adc <_vfprintf_r+0x1434>
   11f48:	0a813783          	ld	a5,168(sp)
   11f4c:	bc1ff06f          	j	11b0c <_vfprintf_r+0x1464>
   11f50:	02d00793          	li	a5,45
   11f54:	08f107a3          	sb	a5,143(sp)
   11f58:	02d00613          	li	a2,45
   11f5c:	9f8ff06f          	j	11154 <_vfprintf_r+0xaac>
   11f60:	00019937          	lui	s2,0x19
   11f64:	67090913          	addi	s2,s2,1648 # 19670 <zeroes.4137+0x30>
   11f68:	d95ff06f          	j	11cfc <_vfprintf_r+0x1654>
   11f6c:	001c7793          	andi	a5,s8,1
   11f70:	26079a63          	bnez	a5,121e4 <_vfprintf_r+0x1b3c>
   11f74:	0a813783          	ld	a5,168(sp)
   11f78:	412787b3          	sub	a5,a5,s2
   11f7c:	06f12823          	sw	a5,112(sp)
   11f80:	35ad9c63          	bne	s11,s10,122d8 <_vfprintf_r+0x1c30>
   11f84:	09812783          	lw	a5,152(sp)
   11f88:	ffd00713          	li	a4,-3
   11f8c:	02e7cc63          	blt	a5,a4,11fc4 <_vfprintf_r+0x191c>
   11f90:	02f44a63          	blt	s0,a5,11fc4 <_vfprintf_r+0x191c>
   11f94:	04f12623          	sw	a5,76(sp)
   11f98:	b9dff06f          	j	11b34 <_vfprintf_r+0x148c>
   11f9c:	02d00713          	li	a4,45
   11fa0:	08e107a3          	sb	a4,143(sp)
   11fa4:	00f12423          	sw	a5,8(sp)
   11fa8:	00012c03          	lw	s8,0(sp)
   11fac:	02d00613          	li	a2,45
   11fb0:	00000413          	li	s0,0
   11fb4:	b0dfe06f          	j	10ac0 <_vfprintf_r+0x418>
   11fb8:	0b812703          	lw	a4,184(sp)
   11fbc:	00913823          	sd	s1,16(sp)
   11fc0:	d78ff06f          	j	11538 <_vfprintf_r+0xe90>
   11fc4:	ffed0d1b          	addiw	s10,s10,-2
   11fc8:	fff7879b          	addiw	a5,a5,-1
   11fcc:	08f12c23          	sw	a5,152(sp)
   11fd0:	0ba10023          	sb	s10,160(sp)
   11fd4:	2c07c863          	bltz	a5,122a4 <_vfprintf_r+0x1bfc>
   11fd8:	02b00713          	li	a4,43
   11fdc:	0ae100a3          	sb	a4,161(sp)
   11fe0:	00900613          	li	a2,9
   11fe4:	16f64463          	blt	a2,a5,1214c <_vfprintf_r+0x1aa4>
   11fe8:	0307879b          	addiw	a5,a5,48
   11fec:	03000713          	li	a4,48
   11ff0:	0af101a3          	sb	a5,163(sp)
   11ff4:	0ae10123          	sb	a4,162(sp)
   11ff8:	0a410793          	addi	a5,sp,164
   11ffc:	0a010713          	addi	a4,sp,160
   12000:	40e787bb          	subw	a5,a5,a4
   12004:	07012703          	lw	a4,112(sp)
   12008:	06f12a23          	sw	a5,116(sp)
   1200c:	00e787bb          	addw	a5,a5,a4
   12010:	02f12023          	sw	a5,32(sp)
   12014:	00100793          	li	a5,1
   12018:	26e7d263          	ble	a4,a5,1227c <_vfprintf_r+0x1bd4>
   1201c:	02012783          	lw	a5,32(sp)
   12020:	0017879b          	addiw	a5,a5,1
   12024:	02f12023          	sw	a5,32(sp)
   12028:	2607c463          	bltz	a5,12290 <_vfprintf_r+0x1be8>
   1202c:	04012623          	sw	zero,76(sp)
   12030:	b2dff06f          	j	11b5c <_vfprintf_r+0x14b4>
   12034:	00812423          	sw	s0,8(sp)
   12038:	02812023          	sw	s0,32(sp)
   1203c:	08f14603          	lbu	a2,143(sp)
   12040:	03913423          	sd	s9,40(sp)
   12044:	00000413          	li	s0,0
   12048:	04012623          	sw	zero,76(sp)
   1204c:	a71fe06f          	j	10abc <_vfprintf_r+0x414>
   12050:	0b010613          	addi	a2,sp,176
   12054:	000a0593          	mv	a1,s4
   12058:	000b8513          	mv	a0,s7
   1205c:	071040ef          	jal	168cc <__sprint_r>
   12060:	00050463          	beqz	a0,12068 <_vfprintf_r+0x19c0>
   12064:	955fe06f          	j	109b8 <_vfprintf_r+0x310>
   12068:	09812403          	lw	s0,152(sp)
   1206c:	0c013783          	ld	a5,192(sp)
   12070:	0b812703          	lw	a4,184(sp)
   12074:	000b0893          	mv	a7,s6
   12078:	be9ff06f          	j	11c60 <_vfprintf_r+0x15b8>
   1207c:	9e0410e3          	bnez	s0,11a5c <_vfprintf_r+0x13b4>
   12080:	00090413          	mv	s0,s2
   12084:	9d9ff06f          	j	11a5c <_vfprintf_r+0x13b4>
   12088:	00600413          	li	s0,6
   1208c:	9d1ff06f          	j	11a5c <_vfprintf_r+0x13b4>
   12090:	228405d3          	fmv.d	fa1,fs0
   12094:	09810713          	addi	a4,sp,152
   12098:	0a810813          	addi	a6,sp,168
   1209c:	09c10793          	addi	a5,sp,156
   120a0:	00040693          	mv	a3,s0
   120a4:	00300613          	li	a2,3
   120a8:	000b8513          	mv	a0,s7
   120ac:	01113423          	sd	a7,8(sp)
   120b0:	14d000ef          	jal	129fc <_dtoa_r>
   120b4:	00813883          	ld	a7,8(sp)
   120b8:	00040713          	mv	a4,s0
   120bc:	00050913          	mv	s2,a0
   120c0:	00e50733          	add	a4,a0,a4
   120c4:	00040593          	mv	a1,s0
   120c8:	00094683          	lbu	a3,0(s2)
   120cc:	03000793          	li	a5,48
   120d0:	14f68063          	beq	a3,a5,12210 <_vfprintf_r+0x1b68>
   120d4:	09812583          	lw	a1,152(sp)
   120d8:	00b70733          	add	a4,a4,a1
   120dc:	a01ff06f          	j	11adc <_vfprintf_r+0x1434>
   120e0:	22841453          	fneg.d	fs0,fs0
   120e4:	02d00c93          	li	s9,45
   120e8:	991ff06f          	j	11a78 <_vfprintf_r+0x13d0>
   120ec:	04c12703          	lw	a4,76(sp)
   120f0:	00100793          	li	a5,1
   120f4:	1ae05263          	blez	a4,12298 <_vfprintf_r+0x1bf0>
   120f8:	07012703          	lw	a4,112(sp)
   120fc:	00e787bb          	addw	a5,a5,a4
   12100:	02f12023          	sw	a5,32(sp)
   12104:	0007ce63          	bltz	a5,12120 <_vfprintf_r+0x1a78>
   12108:	06700d13          	li	s10,103
   1210c:	a51ff06f          	j	11b5c <_vfprintf_r+0x14b4>
   12110:	04c12783          	lw	a5,76(sp)
   12114:	0017879b          	addiw	a5,a5,1
   12118:	02f12023          	sw	a5,32(sp)
   1211c:	fe07d6e3          	bgez	a5,12108 <_vfprintf_r+0x1a60>
   12120:	00000793          	li	a5,0
   12124:	06700d13          	li	s10,103
   12128:	a35ff06f          	j	11b5c <_vfprintf_r+0x14b4>
   1212c:	09812783          	lw	a5,152(sp)
   12130:	04f12623          	sw	a5,76(sp)
   12134:	12f05263          	blez	a5,12258 <_vfprintf_r+0x1bb0>
   12138:	0a041e63          	bnez	s0,121f4 <_vfprintf_r+0x1b4c>
   1213c:	001c7c13          	andi	s8,s8,1
   12140:	0a0c1a63          	bnez	s8,121f4 <_vfprintf_r+0x1b4c>
   12144:	02f12023          	sw	a5,32(sp)
   12148:	a15ff06f          	j	11b5c <_vfprintf_r+0x14b4>
   1214c:	0af10593          	addi	a1,sp,175
   12150:	00058713          	mv	a4,a1
   12154:	00a00513          	li	a0,10
   12158:	02a7e6bb          	remw	a3,a5,a0
   1215c:	fff70713          	addi	a4,a4,-1
   12160:	02a7c7bb          	divw	a5,a5,a0
   12164:	0306869b          	addiw	a3,a3,48
   12168:	00d70023          	sb	a3,0(a4)
   1216c:	fef646e3          	blt	a2,a5,12158 <_vfprintf_r+0x1ab0>
   12170:	0307879b          	addiw	a5,a5,48
   12174:	0ff7f793          	andi	a5,a5,255
   12178:	fff70693          	addi	a3,a4,-1
   1217c:	fef70fa3          	sb	a5,-1(a4)
   12180:	16b6f863          	bleu	a1,a3,122f0 <_vfprintf_r+0x1c48>
   12184:	0a210613          	addi	a2,sp,162
   12188:	0080006f          	j	12190 <_vfprintf_r+0x1ae8>
   1218c:	0006c783          	lbu	a5,0(a3)
   12190:	00160613          	addi	a2,a2,1
   12194:	00168693          	addi	a3,a3,1
   12198:	fef60fa3          	sb	a5,-1(a2)
   1219c:	feb698e3          	bne	a3,a1,1218c <_vfprintf_r+0x1ae4>
   121a0:	0b010793          	addi	a5,sp,176
   121a4:	40e787b3          	sub	a5,a5,a4
   121a8:	0a210713          	addi	a4,sp,162
   121ac:	00f707b3          	add	a5,a4,a5
   121b0:	e4dff06f          	j	11ffc <_vfprintf_r+0x1954>
   121b4:	228405d3          	fmv.d	fa1,fs0
   121b8:	0a810813          	addi	a6,sp,168
   121bc:	09c10793          	addi	a5,sp,156
   121c0:	09810713          	addi	a4,sp,152
   121c4:	00040693          	mv	a3,s0
   121c8:	00300613          	li	a2,3
   121cc:	000b8513          	mv	a0,s7
   121d0:	01113423          	sd	a7,8(sp)
   121d4:	029000ef          	jal	129fc <_dtoa_r>
   121d8:	00813883          	ld	a7,8(sp)
   121dc:	00050913          	mv	s2,a0
   121e0:	00040593          	mv	a1,s0
   121e4:	04600793          	li	a5,70
   121e8:	00b90733          	add	a4,s2,a1
   121ec:	ecfd0ee3          	beq	s10,a5,120c8 <_vfprintf_r+0x1a20>
   121f0:	8edff06f          	j	11adc <_vfprintf_r+0x1434>
   121f4:	04c12783          	lw	a5,76(sp)
   121f8:	0014041b          	addiw	s0,s0,1
   121fc:	008787bb          	addw	a5,a5,s0
   12200:	02f12023          	sw	a5,32(sp)
   12204:	9407dce3          	bgez	a5,11b5c <_vfprintf_r+0x14b4>
   12208:	00000793          	li	a5,0
   1220c:	951ff06f          	j	11b5c <_vfprintf_r+0x14b4>
   12210:	f20007d3          	fmv.d.x	fa5,zero
   12214:	a2f427d3          	feq.d	a5,fs0,fa5
   12218:	ea079ee3          	bnez	a5,120d4 <_vfprintf_r+0x1a2c>
   1221c:	00100793          	li	a5,1
   12220:	40b785bb          	subw	a1,a5,a1
   12224:	08b12c23          	sw	a1,152(sp)
   12228:	00b70733          	add	a4,a4,a1
   1222c:	8b1ff06f          	j	11adc <_vfprintf_r+0x1434>
   12230:	00000d93          	li	s11,0
   12234:	ccdff06f          	j	11f00 <_vfprintf_r+0x1858>
   12238:	02813783          	ld	a5,40(sp)
   1223c:	0007a403          	lw	s0,0(a5)
   12240:	00878793          	addi	a5,a5,8
   12244:	02f13423          	sd	a5,40(sp)
   12248:	00044463          	bltz	s0,12250 <_vfprintf_r+0x1ba8>
   1224c:	e18fe06f          	j	10864 <_vfprintf_r+0x1bc>
   12250:	fff00413          	li	s0,-1
   12254:	e10fe06f          	j	10864 <_vfprintf_r+0x1bc>
   12258:	00041a63          	bnez	s0,1226c <_vfprintf_r+0x1bc4>
   1225c:	00100793          	li	a5,1
   12260:	00fc7c33          	and	s8,s8,a5
   12264:	02f12023          	sw	a5,32(sp)
   12268:	8e0c0ae3          	beqz	s8,11b5c <_vfprintf_r+0x14b4>
   1226c:	0024079b          	addiw	a5,s0,2
   12270:	02f12023          	sw	a5,32(sp)
   12274:	8e07d4e3          	bgez	a5,11b5c <_vfprintf_r+0x14b4>
   12278:	f91ff06f          	j	12208 <_vfprintf_r+0x1b60>
   1227c:	00fc7c33          	and	s8,s8,a5
   12280:	d80c1ee3          	bnez	s8,1201c <_vfprintf_r+0x1974>
   12284:	02012703          	lw	a4,32(sp)
   12288:	00070793          	mv	a5,a4
   1228c:	da0750e3          	bgez	a4,1202c <_vfprintf_r+0x1984>
   12290:	00000793          	li	a5,0
   12294:	d99ff06f          	j	1202c <_vfprintf_r+0x1984>
   12298:	00200793          	li	a5,2
   1229c:	40e787bb          	subw	a5,a5,a4
   122a0:	e59ff06f          	j	120f8 <_vfprintf_r+0x1a50>
   122a4:	02d00713          	li	a4,45
   122a8:	40f007bb          	negw	a5,a5
   122ac:	0ae100a3          	sb	a4,161(sp)
   122b0:	d31ff06f          	j	11fe0 <_vfprintf_r+0x1938>
   122b4:	08b107a3          	sb	a1,143(sp)
   122b8:	ed9fe06f          	j	11190 <_vfprintf_r+0xae8>
   122bc:	00000793          	li	a5,0
   122c0:	891ff06f          	j	11b50 <_vfprintf_r+0x14a8>
   122c4:	08b107a3          	sb	a1,143(sp)
   122c8:	010c6c13          	ori	s8,s8,16
   122cc:	f2dfe06f          	j	111f8 <_vfprintf_r+0xb50>
   122d0:	08b107a3          	sb	a1,143(sp)
   122d4:	ef5fe06f          	j	111c8 <_vfprintf_r+0xb20>
   122d8:	09812783          	lw	a5,152(sp)
   122dc:	cedff06f          	j	11fc8 <_vfprintf_r+0x1920>
   122e0:	08b107a3          	sb	a1,143(sp)
   122e4:	e2dfe06f          	j	11110 <_vfprintf_r+0xa68>
   122e8:	08b107a3          	sb	a1,143(sp)
   122ec:	dd5fe06f          	j	110c0 <_vfprintf_r+0xa18>
   122f0:	0a210793          	addi	a5,sp,162
   122f4:	d09ff06f          	j	11ffc <_vfprintf_r+0x1954>
   122f8:	08b107a3          	sb	a1,143(sp)
   122fc:	f41fe06f          	j	1123c <_vfprintf_r+0xb94>
   12300:	08b107a3          	sb	a1,143(sp)
   12304:	f28fe06f          	j	10a2c <_vfprintf_r+0x384>
   12308:	08b107a3          	sb	a1,143(sp)
   1230c:	9c5fe06f          	j	10cd0 <_vfprintf_r+0x628>
   12310:	08b107a3          	sb	a1,143(sp)
   12314:	010c6c13          	ori	s8,s8,16
   12318:	979fe06f          	j	10c90 <_vfprintf_r+0x5e8>
   1231c:	08b107a3          	sb	a1,143(sp)
   12320:	010c6c13          	ori	s8,s8,16
   12324:	929fe06f          	j	10c4c <_vfprintf_r+0x5a4>
   12328:	08b107a3          	sb	a1,143(sp)
   1232c:	881fe06f          	j	10bac <_vfprintf_r+0x504>

0000000000012330 <vfprintf>:
   12330:	00060693          	mv	a3,a2
   12334:	00058613          	mv	a2,a1
   12338:	00050593          	mv	a1,a0
   1233c:	8101b503          	ld	a0,-2032(gp) # 1b7a0 <_impure_ptr>
   12340:	b68fe06f          	j	106a8 <_vfprintf_r>

0000000000012344 <__sbprintf>:
   12344:	0105d783          	lhu	a5,16(a1)
   12348:	0ac5ae03          	lw	t3,172(a1)
   1234c:	0125d303          	lhu	t1,18(a1)
   12350:	0305b883          	ld	a7,48(a1)
   12354:	0405b803          	ld	a6,64(a1)
   12358:	b3010113          	addi	sp,sp,-1232
   1235c:	ffd7f793          	andi	a5,a5,-3
   12360:	40000713          	li	a4,1024
   12364:	4c813023          	sd	s0,1216(sp)
   12368:	00f11823          	sh	a5,16(sp)
   1236c:	00058413          	mv	s0,a1
   12370:	0b010793          	addi	a5,sp,176
   12374:	00010593          	mv	a1,sp
   12378:	4a913c23          	sd	s1,1208(sp)
   1237c:	4b213823          	sd	s2,1200(sp)
   12380:	4c113423          	sd	ra,1224(sp)
   12384:	00050913          	mv	s2,a0
   12388:	0bc12623          	sw	t3,172(sp)
   1238c:	00611923          	sh	t1,18(sp)
   12390:	03113823          	sd	a7,48(sp)
   12394:	05013023          	sd	a6,64(sp)
   12398:	00f13023          	sd	a5,0(sp)
   1239c:	00f13c23          	sd	a5,24(sp)
   123a0:	00e12623          	sw	a4,12(sp)
   123a4:	02e12023          	sw	a4,32(sp)
   123a8:	02012423          	sw	zero,40(sp)
   123ac:	afcfe0ef          	jal	106a8 <_vfprintf_r>
   123b0:	00050493          	mv	s1,a0
   123b4:	00054a63          	bltz	a0,123c8 <__sbprintf+0x84>
   123b8:	00010593          	mv	a1,sp
   123bc:	00090513          	mv	a0,s2
   123c0:	1a5010ef          	jal	13d64 <_fflush_r>
   123c4:	02051c63          	bnez	a0,123fc <__sbprintf+0xb8>
   123c8:	01015783          	lhu	a5,16(sp)
   123cc:	0407f793          	andi	a5,a5,64
   123d0:	00078863          	beqz	a5,123e0 <__sbprintf+0x9c>
   123d4:	01045783          	lhu	a5,16(s0)
   123d8:	0407e793          	ori	a5,a5,64
   123dc:	00f41823          	sh	a5,16(s0)
   123e0:	4c813083          	ld	ra,1224(sp)
   123e4:	00048513          	mv	a0,s1
   123e8:	4c013403          	ld	s0,1216(sp)
   123ec:	4b813483          	ld	s1,1208(sp)
   123f0:	4b013903          	ld	s2,1200(sp)
   123f4:	4d010113          	addi	sp,sp,1232
   123f8:	00008067          	ret
   123fc:	fff00493          	li	s1,-1
   12400:	fc9ff06f          	j	123c8 <__sbprintf+0x84>

0000000000012404 <__swsetup_r>:
   12404:	8101b783          	ld	a5,-2032(gp) # 1b7a0 <_impure_ptr>
   12408:	fe010113          	addi	sp,sp,-32
   1240c:	00813823          	sd	s0,16(sp)
   12410:	00913423          	sd	s1,8(sp)
   12414:	00113c23          	sd	ra,24(sp)
   12418:	00050493          	mv	s1,a0
   1241c:	00058413          	mv	s0,a1
   12420:	00078663          	beqz	a5,1242c <__swsetup_r+0x28>
   12424:	0507a703          	lw	a4,80(a5)
   12428:	0e070063          	beqz	a4,12508 <__swsetup_r+0x104>
   1242c:	01041703          	lh	a4,16(s0)
   12430:	03071793          	slli	a5,a4,0x30
   12434:	0307d793          	srli	a5,a5,0x30
   12438:	0087f693          	andi	a3,a5,8
   1243c:	04068263          	beqz	a3,12480 <__swsetup_r+0x7c>
   12440:	01843683          	ld	a3,24(s0)
   12444:	06068663          	beqz	a3,124b0 <__swsetup_r+0xac>
   12448:	0017f713          	andi	a4,a5,1
   1244c:	08071463          	bnez	a4,124d4 <__swsetup_r+0xd0>
   12450:	0027f793          	andi	a5,a5,2
   12454:	00000713          	li	a4,0
   12458:	00079463          	bnez	a5,12460 <__swsetup_r+0x5c>
   1245c:	02042703          	lw	a4,32(s0)
   12460:	00e42623          	sw	a4,12(s0)
   12464:	00000513          	li	a0,0
   12468:	08068263          	beqz	a3,124ec <__swsetup_r+0xe8>
   1246c:	01813083          	ld	ra,24(sp)
   12470:	01013403          	ld	s0,16(sp)
   12474:	00813483          	ld	s1,8(sp)
   12478:	02010113          	addi	sp,sp,32
   1247c:	00008067          	ret
   12480:	0107f693          	andi	a3,a5,16
   12484:	0c068663          	beqz	a3,12550 <__swsetup_r+0x14c>
   12488:	0047f793          	andi	a5,a5,4
   1248c:	08079463          	bnez	a5,12514 <__swsetup_r+0x110>
   12490:	01843683          	ld	a3,24(s0)
   12494:	00876793          	ori	a5,a4,8
   12498:	0107979b          	slliw	a5,a5,0x10
   1249c:	4107d79b          	sraiw	a5,a5,0x10
   124a0:	00f41823          	sh	a5,16(s0)
   124a4:	03079793          	slli	a5,a5,0x30
   124a8:	0307d793          	srli	a5,a5,0x30
   124ac:	f8069ee3          	bnez	a3,12448 <__swsetup_r+0x44>
   124b0:	2807f713          	andi	a4,a5,640
   124b4:	20000613          	li	a2,512
   124b8:	f8c708e3          	beq	a4,a2,12448 <__swsetup_r+0x44>
   124bc:	00040593          	mv	a1,s0
   124c0:	00048513          	mv	a0,s1
   124c4:	2ec020ef          	jal	147b0 <__smakebuf_r>
   124c8:	01045783          	lhu	a5,16(s0)
   124cc:	01843683          	ld	a3,24(s0)
   124d0:	f79ff06f          	j	12448 <__swsetup_r+0x44>
   124d4:	02042783          	lw	a5,32(s0)
   124d8:	00042623          	sw	zero,12(s0)
   124dc:	00000513          	li	a0,0
   124e0:	40f007bb          	negw	a5,a5
   124e4:	02f42423          	sw	a5,40(s0)
   124e8:	f80692e3          	bnez	a3,1246c <__swsetup_r+0x68>
   124ec:	01041783          	lh	a5,16(s0)
   124f0:	0807f713          	andi	a4,a5,128
   124f4:	f6070ce3          	beqz	a4,1246c <__swsetup_r+0x68>
   124f8:	0407e793          	ori	a5,a5,64
   124fc:	00f41823          	sh	a5,16(s0)
   12500:	fff00513          	li	a0,-1
   12504:	f69ff06f          	j	1246c <__swsetup_r+0x68>
   12508:	00078513          	mv	a0,a5
   1250c:	405010ef          	jal	14110 <__sinit>
   12510:	f1dff06f          	j	1242c <__swsetup_r+0x28>
   12514:	05843583          	ld	a1,88(s0)
   12518:	00058e63          	beqz	a1,12534 <__swsetup_r+0x130>
   1251c:	07440793          	addi	a5,s0,116
   12520:	00f58863          	beq	a1,a5,12530 <__swsetup_r+0x12c>
   12524:	00048513          	mv	a0,s1
   12528:	541010ef          	jal	14268 <_free_r>
   1252c:	01041703          	lh	a4,16(s0)
   12530:	04043c23          	sd	zero,88(s0)
   12534:	01843683          	ld	a3,24(s0)
   12538:	fdb77713          	andi	a4,a4,-37
   1253c:	0107171b          	slliw	a4,a4,0x10
   12540:	4107571b          	sraiw	a4,a4,0x10
   12544:	00042423          	sw	zero,8(s0)
   12548:	00d43023          	sd	a3,0(s0)
   1254c:	f49ff06f          	j	12494 <__swsetup_r+0x90>
   12550:	00900793          	li	a5,9
   12554:	00f4a023          	sw	a5,0(s1)
   12558:	04076713          	ori	a4,a4,64
   1255c:	00e41823          	sh	a4,16(s0)
   12560:	fff00513          	li	a0,-1
   12564:	f09ff06f          	j	1246c <__swsetup_r+0x68>

0000000000012568 <__register_exitproc>:
   12568:	fd010113          	addi	sp,sp,-48
   1256c:	02813023          	sd	s0,32(sp)
   12570:	8081b403          	ld	s0,-2040(gp) # 1b798 <_global_impure_ptr>
   12574:	00913c23          	sd	s1,24(sp)
   12578:	00050493          	mv	s1,a0
   1257c:	1f843503          	ld	a0,504(s0)
   12580:	01213823          	sd	s2,16(sp)
   12584:	01313423          	sd	s3,8(sp)
   12588:	01413023          	sd	s4,0(sp)
   1258c:	02113423          	sd	ra,40(sp)
   12590:	00058913          	mv	s2,a1
   12594:	00060a13          	mv	s4,a2
   12598:	00068993          	mv	s3,a3
   1259c:	0c050663          	beqz	a0,12668 <__register_exitproc+0x100>
   125a0:	00852703          	lw	a4,8(a0)
   125a4:	01f00793          	li	a5,31
   125a8:	0017059b          	addiw	a1,a4,1
   125ac:	04e7d063          	ble	a4,a5,125ec <__register_exitproc+0x84>
   125b0:	000007b7          	lui	a5,0x0
   125b4:	00078793          	mv	a5,a5
   125b8:	0a078e63          	beqz	a5,12674 <__register_exitproc+0x10c>
   125bc:	31800513          	li	a0,792
   125c0:	fffee317          	auipc	t1,0xfffee
   125c4:	a40300e7          	jalr	t1,-1472 # 0 <_ftext-0x10000>
   125c8:	0a050663          	beqz	a0,12674 <__register_exitproc+0x10c>
   125cc:	1f843783          	ld	a5,504(s0)
   125d0:	00052423          	sw	zero,8(a0)
   125d4:	00100593          	li	a1,1
   125d8:	00f53023          	sd	a5,0(a0)
   125dc:	1ea43c23          	sd	a0,504(s0)
   125e0:	30052823          	sw	zero,784(a0)
   125e4:	30052a23          	sw	zero,788(a0)
   125e8:	00000713          	li	a4,0
   125ec:	00070793          	mv	a5,a4
   125f0:	02049e63          	bnez	s1,1262c <__register_exitproc+0xc4>
   125f4:	00278793          	addi	a5,a5,2 # 2 <_ftext-0xfffe>
   125f8:	00379793          	slli	a5,a5,0x3
   125fc:	00b52423          	sw	a1,8(a0)
   12600:	00f50533          	add	a0,a0,a5
   12604:	01253023          	sd	s2,0(a0)
   12608:	00000513          	li	a0,0
   1260c:	02813083          	ld	ra,40(sp)
   12610:	02013403          	ld	s0,32(sp)
   12614:	01813483          	ld	s1,24(sp)
   12618:	01013903          	ld	s2,16(sp)
   1261c:	00813983          	ld	s3,8(sp)
   12620:	00013a03          	ld	s4,0(sp)
   12624:	03010113          	addi	sp,sp,48
   12628:	00008067          	ret
   1262c:	00371813          	slli	a6,a4,0x3
   12630:	01050833          	add	a6,a0,a6
   12634:	11483823          	sd	s4,272(a6)
   12638:	31052883          	lw	a7,784(a0)
   1263c:	00100613          	li	a2,1
   12640:	00e6173b          	sllw	a4,a2,a4
   12644:	00e8e633          	or	a2,a7,a4
   12648:	30c52823          	sw	a2,784(a0)
   1264c:	21383823          	sd	s3,528(a6)
   12650:	00200693          	li	a3,2
   12654:	fad490e3          	bne	s1,a3,125f4 <__register_exitproc+0x8c>
   12658:	31452683          	lw	a3,788(a0)
   1265c:	00e6e733          	or	a4,a3,a4
   12660:	30e52a23          	sw	a4,788(a0)
   12664:	f91ff06f          	j	125f4 <__register_exitproc+0x8c>
   12668:	20040513          	addi	a0,s0,512
   1266c:	1ea43c23          	sd	a0,504(s0)
   12670:	f31ff06f          	j	125a0 <__register_exitproc+0x38>
   12674:	fff00513          	li	a0,-1
   12678:	f95ff06f          	j	1260c <__register_exitproc+0xa4>

000000000001267c <__call_exitprocs>:
   1267c:	fa010113          	addi	sp,sp,-96
   12680:	03413823          	sd	s4,48(sp)
   12684:	8081ba03          	ld	s4,-2040(gp) # 1b798 <_global_impure_ptr>
   12688:	03313c23          	sd	s3,56(sp)
   1268c:	000009b7          	lui	s3,0x0
   12690:	04913423          	sd	s1,72(sp)
   12694:	05213023          	sd	s2,64(sp)
   12698:	03513423          	sd	s5,40(sp)
   1269c:	01713c23          	sd	s7,24(sp)
   126a0:	01813823          	sd	s8,16(sp)
   126a4:	04113c23          	sd	ra,88(sp)
   126a8:	04813823          	sd	s0,80(sp)
   126ac:	03613023          	sd	s6,32(sp)
   126b0:	01913423          	sd	s9,8(sp)
   126b4:	01a13023          	sd	s10,0(sp)
   126b8:	00050913          	mv	s2,a0
   126bc:	00058b93          	mv	s7,a1
   126c0:	1f8a0a93          	addi	s5,s4,504
   126c4:	00100493          	li	s1,1
   126c8:	fff00c13          	li	s8,-1
   126cc:	00098993          	mv	s3,s3
   126d0:	1f8a3b03          	ld	s6,504(s4)
   126d4:	0c0b0663          	beqz	s6,127a0 <__call_exitprocs+0x124>
   126d8:	000a8d13          	mv	s10,s5
   126dc:	008b2403          	lw	s0,8(s6)
   126e0:	fff4041b          	addiw	s0,s0,-1
   126e4:	02045263          	bgez	s0,12708 <__call_exitprocs+0x8c>
   126e8:	08c0006f          	j	12774 <__call_exitprocs+0xf8>
   126ec:	02040793          	addi	a5,s0,32
   126f0:	00379793          	slli	a5,a5,0x3
   126f4:	00fb07b3          	add	a5,s6,a5
   126f8:	1107b783          	ld	a5,272(a5)
   126fc:	00fb8a63          	beq	s7,a5,12710 <__call_exitprocs+0x94>
   12700:	fff4041b          	addiw	s0,s0,-1
   12704:	07840863          	beq	s0,s8,12774 <__call_exitprocs+0xf8>
   12708:	00040713          	mv	a4,s0
   1270c:	fe0b90e3          	bnez	s7,126ec <__call_exitprocs+0x70>
   12710:	008b2783          	lw	a5,8(s6)
   12714:	00371713          	slli	a4,a4,0x3
   12718:	00eb0733          	add	a4,s6,a4
   1271c:	fff7879b          	addiw	a5,a5,-1
   12720:	01073683          	ld	a3,16(a4)
   12724:	0a878e63          	beq	a5,s0,127e0 <__call_exitprocs+0x164>
   12728:	00073823          	sd	zero,16(a4)
   1272c:	fc068ae3          	beqz	a3,12700 <__call_exitprocs+0x84>
   12730:	310b2783          	lw	a5,784(s6)
   12734:	0084963b          	sllw	a2,s1,s0
   12738:	008b2c83          	lw	s9,8(s6)
   1273c:	00f677b3          	and	a5,a2,a5
   12740:	08078c63          	beqz	a5,127d8 <__call_exitprocs+0x15c>
   12744:	314b2783          	lw	a5,788(s6)
   12748:	00f67633          	and	a2,a2,a5
   1274c:	08061e63          	bnez	a2,127e8 <__call_exitprocs+0x16c>
   12750:	11073583          	ld	a1,272(a4)
   12754:	00090513          	mv	a0,s2
   12758:	000680e7          	jalr	a3
   1275c:	008b2783          	lw	a5,8(s6)
   12760:	f79798e3          	bne	a5,s9,126d0 <__call_exitprocs+0x54>
   12764:	000d3783          	ld	a5,0(s10)
   12768:	f76794e3          	bne	a5,s6,126d0 <__call_exitprocs+0x54>
   1276c:	fff4041b          	addiw	s0,s0,-1
   12770:	f9841ce3          	bne	s0,s8,12708 <__call_exitprocs+0x8c>
   12774:	02098663          	beqz	s3,127a0 <__call_exitprocs+0x124>
   12778:	008b2783          	lw	a5,8(s6)
   1277c:	06079c63          	bnez	a5,127f4 <__call_exitprocs+0x178>
   12780:	000b3783          	ld	a5,0(s6)
   12784:	08078263          	beqz	a5,12808 <__call_exitprocs+0x18c>
   12788:	000b0513          	mv	a0,s6
   1278c:	00fd3023          	sd	a5,0(s10)
   12790:	fffee317          	auipc	t1,0xfffee
   12794:	870300e7          	jalr	t1,-1936 # 0 <_ftext-0x10000>
   12798:	000d3b03          	ld	s6,0(s10)
   1279c:	f40b10e3          	bnez	s6,126dc <__call_exitprocs+0x60>
   127a0:	05813083          	ld	ra,88(sp)
   127a4:	05013403          	ld	s0,80(sp)
   127a8:	04813483          	ld	s1,72(sp)
   127ac:	04013903          	ld	s2,64(sp)
   127b0:	03813983          	ld	s3,56(sp)
   127b4:	03013a03          	ld	s4,48(sp)
   127b8:	02813a83          	ld	s5,40(sp)
   127bc:	02013b03          	ld	s6,32(sp)
   127c0:	01813b83          	ld	s7,24(sp)
   127c4:	01013c03          	ld	s8,16(sp)
   127c8:	00813c83          	ld	s9,8(sp)
   127cc:	00013d03          	ld	s10,0(sp)
   127d0:	06010113          	addi	sp,sp,96
   127d4:	00008067          	ret
   127d8:	000680e7          	jalr	a3
   127dc:	f81ff06f          	j	1275c <__call_exitprocs+0xe0>
   127e0:	008b2423          	sw	s0,8(s6)
   127e4:	f49ff06f          	j	1272c <__call_exitprocs+0xb0>
   127e8:	11073503          	ld	a0,272(a4)
   127ec:	000680e7          	jalr	a3
   127f0:	f6dff06f          	j	1275c <__call_exitprocs+0xe0>
   127f4:	000b3783          	ld	a5,0(s6)
   127f8:	000b0d13          	mv	s10,s6
   127fc:	00078b13          	mv	s6,a5
   12800:	ec0b1ee3          	bnez	s6,126dc <__call_exitprocs+0x60>
   12804:	f9dff06f          	j	127a0 <__call_exitprocs+0x124>
   12808:	00000793          	li	a5,0
   1280c:	fedff06f          	j	127f8 <__call_exitprocs+0x17c>

0000000000012810 <quorem>:
   12810:	fc010113          	addi	sp,sp,-64
   12814:	03213023          	sd	s2,32(sp)
   12818:	01452783          	lw	a5,20(a0)
   1281c:	0145a903          	lw	s2,20(a1)
   12820:	02113c23          	sd	ra,56(sp)
   12824:	02813823          	sd	s0,48(sp)
   12828:	02913423          	sd	s1,40(sp)
   1282c:	01313c23          	sd	s3,24(sp)
   12830:	01413823          	sd	s4,16(sp)
   12834:	01513423          	sd	s5,8(sp)
   12838:	1b27ce63          	blt	a5,s2,129f4 <quorem+0x1e4>
   1283c:	fff9091b          	addiw	s2,s2,-1
   12840:	00090f13          	mv	t5,s2
   12844:	002f1f13          	slli	t5,t5,0x2
   12848:	01858413          	addi	s0,a1,24
   1284c:	01e409b3          	add	s3,s0,t5
   12850:	01850a13          	addi	s4,a0,24
   12854:	01ea0f33          	add	t5,s4,t5
   12858:	0009a783          	lw	a5,0(s3) # 0 <_ftext-0x10000>
   1285c:	000f2483          	lw	s1,0(t5)
   12860:	0017879b          	addiw	a5,a5,1
   12864:	02f4d4bb          	divuw	s1,s1,a5
   12868:	0a048e63          	beqz	s1,12924 <quorem+0x114>
   1286c:	00010337          	lui	t1,0x10
   12870:	00040e93          	mv	t4,s0
   12874:	000a0e13          	mv	t3,s4
   12878:	00000613          	li	a2,0
   1287c:	00000713          	li	a4,0
   12880:	fff3031b          	addiw	t1,t1,-1
   12884:	004e8e93          	addi	t4,t4,4
   12888:	ffcea803          	lw	a6,-4(t4)
   1288c:	000e2683          	lw	a3,0(t3)
   12890:	004e0e13          	addi	t3,t3,4
   12894:	006878b3          	and	a7,a6,t1
   12898:	029888bb          	mulw	a7,a7,s1
   1289c:	0108581b          	srliw	a6,a6,0x10
   128a0:	0066f7b3          	and	a5,a3,t1
   128a4:	0106d69b          	srliw	a3,a3,0x10
   128a8:	0298083b          	mulw	a6,a6,s1
   128ac:	00c888bb          	addw	a7,a7,a2
   128b0:	0108d61b          	srliw	a2,a7,0x10
   128b4:	0068f8b3          	and	a7,a7,t1
   128b8:	4117073b          	subw	a4,a4,a7
   128bc:	00f707bb          	addw	a5,a4,a5
   128c0:	4107d71b          	sraiw	a4,a5,0x10
   128c4:	0067f7b3          	and	a5,a5,t1
   128c8:	00c8063b          	addw	a2,a6,a2
   128cc:	00667833          	and	a6,a2,t1
   128d0:	410686bb          	subw	a3,a3,a6
   128d4:	00e6873b          	addw	a4,a3,a4
   128d8:	0107169b          	slliw	a3,a4,0x10
   128dc:	00f6e6b3          	or	a3,a3,a5
   128e0:	fede2e23          	sw	a3,-4(t3)
   128e4:	0106561b          	srliw	a2,a2,0x10
   128e8:	4107571b          	sraiw	a4,a4,0x10
   128ec:	f9d9fce3          	bleu	t4,s3,12884 <quorem+0x74>
   128f0:	000f2783          	lw	a5,0(t5)
   128f4:	02079863          	bnez	a5,12924 <quorem+0x114>
   128f8:	ffcf0793          	addi	a5,t5,-4
   128fc:	02fa7263          	bleu	a5,s4,12920 <quorem+0x110>
   12900:	ffcf2703          	lw	a4,-4(t5)
   12904:	00070863          	beqz	a4,12914 <quorem+0x104>
   12908:	0180006f          	j	12920 <quorem+0x110>
   1290c:	0007a703          	lw	a4,0(a5)
   12910:	00071863          	bnez	a4,12920 <quorem+0x110>
   12914:	ffc78793          	addi	a5,a5,-4
   12918:	fff9091b          	addiw	s2,s2,-1
   1291c:	fefa68e3          	bltu	s4,a5,1290c <quorem+0xfc>
   12920:	01252a23          	sw	s2,20(a0)
   12924:	00050a93          	mv	s5,a0
   12928:	388030ef          	jal	15cb0 <__mcmp>
   1292c:	0a054063          	bltz	a0,129cc <quorem+0x1bc>
   12930:	000105b7          	lui	a1,0x10
   12934:	0014849b          	addiw	s1,s1,1
   12938:	000a0613          	mv	a2,s4
   1293c:	00000793          	li	a5,0
   12940:	fff5859b          	addiw	a1,a1,-1
   12944:	00440413          	addi	s0,s0,4
   12948:	ffc42683          	lw	a3,-4(s0)
   1294c:	00062703          	lw	a4,0(a2)
   12950:	00460613          	addi	a2,a2,4
   12954:	00b6f833          	and	a6,a3,a1
   12958:	410787bb          	subw	a5,a5,a6
   1295c:	00b77833          	and	a6,a4,a1
   12960:	010787bb          	addw	a5,a5,a6
   12964:	0106d69b          	srliw	a3,a3,0x10
   12968:	0107571b          	srliw	a4,a4,0x10
   1296c:	40d7073b          	subw	a4,a4,a3
   12970:	4107d69b          	sraiw	a3,a5,0x10
   12974:	00d706bb          	addw	a3,a4,a3
   12978:	0106981b          	slliw	a6,a3,0x10
   1297c:	00b7f733          	and	a4,a5,a1
   12980:	00e86733          	or	a4,a6,a4
   12984:	fee62e23          	sw	a4,-4(a2)
   12988:	4106d79b          	sraiw	a5,a3,0x10
   1298c:	fa89fce3          	bleu	s0,s3,12944 <quorem+0x134>
   12990:	00291713          	slli	a4,s2,0x2
   12994:	00ea0733          	add	a4,s4,a4
   12998:	00072783          	lw	a5,0(a4)
   1299c:	02079863          	bnez	a5,129cc <quorem+0x1bc>
   129a0:	ffc70793          	addi	a5,a4,-4
   129a4:	02fa7263          	bleu	a5,s4,129c8 <quorem+0x1b8>
   129a8:	ffc72703          	lw	a4,-4(a4)
   129ac:	00070863          	beqz	a4,129bc <quorem+0x1ac>
   129b0:	0180006f          	j	129c8 <quorem+0x1b8>
   129b4:	0007a703          	lw	a4,0(a5)
   129b8:	00071863          	bnez	a4,129c8 <quorem+0x1b8>
   129bc:	ffc78793          	addi	a5,a5,-4
   129c0:	fff9091b          	addiw	s2,s2,-1
   129c4:	fefa68e3          	bltu	s4,a5,129b4 <quorem+0x1a4>
   129c8:	012aaa23          	sw	s2,20(s5)
   129cc:	00048513          	mv	a0,s1
   129d0:	03813083          	ld	ra,56(sp)
   129d4:	03013403          	ld	s0,48(sp)
   129d8:	02813483          	ld	s1,40(sp)
   129dc:	02013903          	ld	s2,32(sp)
   129e0:	01813983          	ld	s3,24(sp)
   129e4:	01013a03          	ld	s4,16(sp)
   129e8:	00813a83          	ld	s5,8(sp)
   129ec:	04010113          	addi	sp,sp,64
   129f0:	00008067          	ret
   129f4:	00000513          	li	a0,0
   129f8:	fd9ff06f          	j	129d0 <quorem+0x1c0>

00000000000129fc <_dtoa_r>:
   129fc:	e20585d3          	fmv.x.d	a1,fa1
   12a00:	06053883          	ld	a7,96(a0)
   12a04:	f3010113          	addi	sp,sp,-208
   12a08:	0c813023          	sd	s0,192(sp)
   12a0c:	0a913c23          	sd	s1,184(sp)
   12a10:	0b313423          	sd	s3,168(sp)
   12a14:	09613823          	sd	s6,144(sp)
   12a18:	07913c23          	sd	s9,120(sp)
   12a1c:	07a13823          	sd	s10,112(sp)
   12a20:	0c113423          	sd	ra,200(sp)
   12a24:	0b213823          	sd	s2,176(sp)
   12a28:	0b413023          	sd	s4,160(sp)
   12a2c:	09513c23          	sd	s5,152(sp)
   12a30:	09713423          	sd	s7,136(sp)
   12a34:	09813023          	sd	s8,128(sp)
   12a38:	07b13423          	sd	s11,104(sp)
   12a3c:	00e13023          	sd	a4,0(sp)
   12a40:	00050413          	mv	s0,a0
   12a44:	00060993          	mv	s3,a2
   12a48:	00068c93          	mv	s9,a3
   12a4c:	00078493          	mv	s1,a5
   12a50:	00080b13          	mv	s6,a6
   12a54:	00058d13          	mv	s10,a1
   12a58:	02088263          	beqz	a7,12a7c <_dtoa_r+0x80>
   12a5c:	06852603          	lw	a2,104(a0)
   12a60:	00100693          	li	a3,1
   12a64:	00088593          	mv	a1,a7
   12a68:	00c696bb          	sllw	a3,a3,a2
   12a6c:	00c8a423          	sw	a2,8(a7)
   12a70:	00d8a623          	sw	a3,12(a7)
   12a74:	1f1020ef          	jal	15464 <_Bfree>
   12a78:	06043023          	sd	zero,96(s0)
   12a7c:	420d5913          	srai	s2,s10,0x20
   12a80:	0c094063          	bltz	s2,12b40 <_dtoa_r+0x144>
   12a84:	0004a023          	sw	zero,0(s1)
   12a88:	7ff007b7          	lui	a5,0x7ff00
   12a8c:	00f976b3          	and	a3,s2,a5
   12a90:	06f68a63          	beq	a3,a5,12b04 <_dtoa_r+0x108>
   12a94:	f20007d3          	fmv.d.x	fa5,zero
   12a98:	f20d0753          	fmv.d.x	fa4,s10
   12a9c:	a2f727d3          	feq.d	a5,fa4,fa5
   12aa0:	0c078463          	beqz	a5,12b68 <_dtoa_r+0x16c>
   12aa4:	00013703          	ld	a4,0(sp)
   12aa8:	00100793          	li	a5,1
   12aac:	00f72023          	sw	a5,0(a4)
   12ab0:	480b0a63          	beqz	s6,12f44 <_dtoa_r+0x548>
   12ab4:	000197b7          	lui	a5,0x19
   12ab8:	6b178793          	addi	a5,a5,1713 # 196b1 <zeroes.4137+0x71>
   12abc:	00019537          	lui	a0,0x19
   12ac0:	00fb3023          	sd	a5,0(s6)
   12ac4:	6b050513          	addi	a0,a0,1712 # 196b0 <zeroes.4137+0x70>
   12ac8:	0c813083          	ld	ra,200(sp)
   12acc:	0c013403          	ld	s0,192(sp)
   12ad0:	0b813483          	ld	s1,184(sp)
   12ad4:	0b013903          	ld	s2,176(sp)
   12ad8:	0a813983          	ld	s3,168(sp)
   12adc:	0a013a03          	ld	s4,160(sp)
   12ae0:	09813a83          	ld	s5,152(sp)
   12ae4:	09013b03          	ld	s6,144(sp)
   12ae8:	08813b83          	ld	s7,136(sp)
   12aec:	08013c03          	ld	s8,128(sp)
   12af0:	07813c83          	ld	s9,120(sp)
   12af4:	07013d03          	ld	s10,112(sp)
   12af8:	06813d83          	ld	s11,104(sp)
   12afc:	0d010113          	addi	sp,sp,208
   12b00:	00008067          	ret
   12b04:	00013703          	ld	a4,0(sp)
   12b08:	000027b7          	lui	a5,0x2
   12b0c:	70f7879b          	addiw	a5,a5,1807
   12b10:	00f72023          	sw	a5,0(a4)
   12b14:	00cd1793          	slli	a5,s10,0xc
   12b18:	3e079863          	bnez	a5,12f08 <_dtoa_r+0x50c>
   12b1c:	00019537          	lui	a0,0x19
   12b20:	6b850513          	addi	a0,a0,1720 # 196b8 <zeroes.4137+0x78>
   12b24:	fa0b02e3          	beqz	s6,12ac8 <_dtoa_r+0xcc>
   12b28:	00354703          	lbu	a4,3(a0)
   12b2c:	00350793          	addi	a5,a0,3
   12b30:	00070463          	beqz	a4,12b38 <_dtoa_r+0x13c>
   12b34:	00850793          	addi	a5,a0,8
   12b38:	00fb3023          	sd	a5,0(s6)
   12b3c:	f8dff06f          	j	12ac8 <_dtoa_r+0xcc>
   12b40:	800007b7          	lui	a5,0x80000
   12b44:	fff7c793          	not	a5,a5
   12b48:	020d1713          	slli	a4,s10,0x20
   12b4c:	00f97933          	and	s2,s2,a5
   12b50:	02091793          	slli	a5,s2,0x20
   12b54:	02075713          	srli	a4,a4,0x20
   12b58:	00100693          	li	a3,1
   12b5c:	00d4a023          	sw	a3,0(s1)
   12b60:	00f76d33          	or	s10,a4,a5
   12b64:	f25ff06f          	j	12a88 <_dtoa_r+0x8c>
   12b68:	f20d05d3          	fmv.d.x	fa1,s10
   12b6c:	05810693          	addi	a3,sp,88
   12b70:	05c10613          	addi	a2,sp,92
   12b74:	00040513          	mv	a0,s0
   12b78:	578030ef          	jal	160f0 <__d2b>
   12b7c:	02a13023          	sd	a0,32(sp)
   12b80:	0149581b          	srliw	a6,s2,0x14
   12b84:	38081863          	bnez	a6,12f14 <_dtoa_r+0x518>
   12b88:	05812603          	lw	a2,88(sp)
   12b8c:	05c12803          	lw	a6,92(sp)
   12b90:	02000793          	li	a5,32
   12b94:	0106083b          	addw	a6,a2,a6
   12b98:	4328069b          	addiw	a3,a6,1074
   12b9c:	6ad7de63          	ble	a3,a5,13258 <_dtoa_r+0x85c>
   12ba0:	04000593          	li	a1,64
   12ba4:	4128049b          	addiw	s1,a6,1042
   12ba8:	000d079b          	sext.w	a5,s10
   12bac:	40d585bb          	subw	a1,a1,a3
   12bb0:	0097d7bb          	srlw	a5,a5,s1
   12bb4:	00b914bb          	sllw	s1,s2,a1
   12bb8:	0097e4b3          	or	s1,a5,s1
   12bbc:	d21487d3          	fcvt.d.wu	fa5,s1
   12bc0:	fe1006b7          	lui	a3,0xfe100
   12bc4:	fff8081b          	addiw	a6,a6,-1
   12bc8:	e20784d3          	fmv.x.d	s1,fa5
   12bcc:	00100913          	li	s2,1
   12bd0:	4204d793          	srai	a5,s1,0x20
   12bd4:	00d787bb          	addw	a5,a5,a3
   12bd8:	02049493          	slli	s1,s1,0x20
   12bdc:	02079793          	slli	a5,a5,0x20
   12be0:	0204d493          	srli	s1,s1,0x20
   12be4:	00f4e4b3          	or	s1,s1,a5
   12be8:	0001b7b7          	lui	a5,0x1b
   12bec:	7d07b787          	fld	fa5,2000(a5) # 1b7d0 <__wctomb+0x8>
   12bf0:	f2048753          	fmv.d.x	fa4,s1
   12bf4:	0001b7b7          	lui	a5,0x1b
   12bf8:	0af77653          	fsub.d	fa2,fa4,fa5
   12bfc:	7e07b787          	fld	fa5,2016(a5) # 1b7e0 <__wctomb+0x18>
   12c00:	0001b7b7          	lui	a5,0x1b
   12c04:	7d87b687          	fld	fa3,2008(a5) # 1b7d8 <__wctomb+0x10>
   12c08:	0001b7b7          	lui	a5,0x1b
   12c0c:	d2080753          	fcvt.d.w	fa4,a6
   12c10:	7ad677c3          	fmadd.d	fa5,fa2,fa3,fa5
   12c14:	7e87b687          	fld	fa3,2024(a5) # 1b7e8 <__wctomb+0x20>
   12c18:	7ad777c3          	fmadd.d	fa5,fa4,fa3,fa5
   12c1c:	f2000753          	fmv.d.x	fa4,zero
   12c20:	a2e797d3          	flt.d	a5,fa5,fa4
   12c24:	c2079bd3          	fcvt.w.d	s7,fa5,rtz
   12c28:	5e079e63          	bnez	a5,13224 <_dtoa_r+0x828>
   12c2c:	00100793          	li	a5,1
   12c30:	02f12823          	sw	a5,48(sp)
   12c34:	01600793          	li	a5,22
   12c38:	0377e663          	bltu	a5,s7,12c64 <_dtoa_r+0x268>
   12c3c:	000197b7          	lui	a5,0x19
   12c40:	003b9693          	slli	a3,s7,0x3
   12c44:	3b078793          	addi	a5,a5,944 # 193b0 <__mprec_tens>
   12c48:	00f687b3          	add	a5,a3,a5
   12c4c:	0007b787          	fld	fa5,0(a5)
   12c50:	f20d0753          	fmv.d.x	fa4,s10
   12c54:	a2f717d3          	flt.d	a5,fa4,fa5
   12c58:	60078863          	beqz	a5,13268 <_dtoa_r+0x86c>
   12c5c:	fffb8b9b          	addiw	s7,s7,-1
   12c60:	02012823          	sw	zero,48(sp)
   12c64:	4106083b          	subw	a6,a2,a6
   12c68:	fff80d9b          	addiw	s11,a6,-1
   12c6c:	00000813          	li	a6,0
   12c70:	2e0dc063          	bltz	s11,12f50 <_dtoa_r+0x554>
   12c74:	5c0bc263          	bltz	s7,13238 <_dtoa_r+0x83c>
   12c78:	017d8dbb          	addw	s11,s11,s7
   12c7c:	03712423          	sw	s7,40(sp)
   12c80:	00000c13          	li	s8,0
   12c84:	00900793          	li	a5,9
   12c88:	2d37ea63          	bltu	a5,s3,12f5c <_dtoa_r+0x560>
   12c8c:	00500793          	li	a5,5
   12c90:	00100a13          	li	s4,1
   12c94:	0137d663          	ble	s3,a5,12ca0 <_dtoa_r+0x2a4>
   12c98:	ffc9899b          	addiw	s3,s3,-4
   12c9c:	00000a13          	li	s4,0
   12ca0:	00300793          	li	a5,3
   12ca4:	2af982e3          	beq	s3,a5,13748 <_dtoa_r+0xd4c>
   12ca8:	1f37dce3          	ble	s3,a5,136a0 <_dtoa_r+0xca4>
   12cac:	00400793          	li	a5,4
   12cb0:	0cf98ae3          	beq	s3,a5,13584 <_dtoa_r+0xb88>
   12cb4:	00100793          	li	a5,1
   12cb8:	00f12823          	sw	a5,16(sp)
   12cbc:	00500793          	li	a5,5
   12cc0:	1ef996e3          	bne	s3,a5,136ac <_dtoa_r+0xcb0>
   12cc4:	019b87bb          	addw	a5,s7,s9
   12cc8:	00178a9b          	addiw	s5,a5,1
   12ccc:	02f12a23          	sw	a5,52(sp)
   12cd0:	000a8513          	mv	a0,s5
   12cd4:	000a8493          	mv	s1,s5
   12cd8:	1b505ee3          	blez	s5,13694 <_dtoa_r+0xc98>
   12cdc:	06042423          	sw	zero,104(s0)
   12ce0:	01f00793          	li	a5,31
   12ce4:	00000593          	li	a1,0
   12ce8:	02a7f463          	bleu	a0,a5,12d10 <_dtoa_r+0x314>
   12cec:	00100613          	li	a2,1
   12cf0:	00400693          	li	a3,4
   12cf4:	0016969b          	slliw	a3,a3,0x1
   12cf8:	00068793          	mv	a5,a3
   12cfc:	01c78793          	addi	a5,a5,28
   12d00:	00060593          	mv	a1,a2
   12d04:	0016061b          	addiw	a2,a2,1
   12d08:	fef576e3          	bleu	a5,a0,12cf4 <_dtoa_r+0x2f8>
   12d0c:	06b42423          	sw	a1,104(s0)
   12d10:	00040513          	mv	a0,s0
   12d14:	03013c23          	sd	a6,56(sp)
   12d18:	6a0020ef          	jal	153b8 <_Balloc>
   12d1c:	00a13423          	sd	a0,8(sp)
   12d20:	06a43023          	sd	a0,96(s0)
   12d24:	00e00793          	li	a5,14
   12d28:	03813803          	ld	a6,56(sp)
   12d2c:	2697e463          	bltu	a5,s1,12f94 <_dtoa_r+0x598>
   12d30:	260a0263          	beqz	s4,12f94 <_dtoa_r+0x598>
   12d34:	03a13c23          	sd	s10,56(sp)
   12d38:	317054e3          	blez	s7,13840 <_dtoa_r+0xe44>
   12d3c:	00fbf713          	andi	a4,s7,15
   12d40:	00371693          	slli	a3,a4,0x3
   12d44:	00019737          	lui	a4,0x19
   12d48:	404bd79b          	sraiw	a5,s7,0x4
   12d4c:	3b070713          	addi	a4,a4,944 # 193b0 <__mprec_tens>
   12d50:	00e68733          	add	a4,a3,a4
   12d54:	0107f693          	andi	a3,a5,16
   12d58:	00073687          	fld	fa3,0(a4)
   12d5c:	f20d07d3          	fmv.d.x	fa5,s10
   12d60:	00200713          	li	a4,2
   12d64:	00068c63          	beqz	a3,12d7c <_dtoa_r+0x380>
   12d68:	00019737          	lui	a4,0x19
   12d6c:	4c073707          	fld	fa4,1216(a4) # 194c0 <__mprec_bigtens+0x20>
   12d70:	00f7f793          	andi	a5,a5,15
   12d74:	00300713          	li	a4,3
   12d78:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   12d7c:	02078663          	beqz	a5,12da8 <_dtoa_r+0x3ac>
   12d80:	000196b7          	lui	a3,0x19
   12d84:	4a068693          	addi	a3,a3,1184 # 194a0 <__mprec_bigtens>
   12d88:	0017f613          	andi	a2,a5,1
   12d8c:	4017d79b          	sraiw	a5,a5,0x1
   12d90:	00060863          	beqz	a2,12da0 <_dtoa_r+0x3a4>
   12d94:	0006b707          	fld	fa4,0(a3)
   12d98:	0017071b          	addiw	a4,a4,1
   12d9c:	12e6f6d3          	fmul.d	fa3,fa3,fa4
   12da0:	00868693          	addi	a3,a3,8
   12da4:	fe0792e3          	bnez	a5,12d88 <_dtoa_r+0x38c>
   12da8:	1ad7f7d3          	fdiv.d	fa5,fa5,fa3
   12dac:	03012783          	lw	a5,48(sp)
   12db0:	00078a63          	beqz	a5,12dc4 <_dtoa_r+0x3c8>
   12db4:	0001b7b7          	lui	a5,0x1b
   12db8:	7f07b707          	fld	fa4,2032(a5) # 1b7f0 <__wctomb+0x28>
   12dbc:	a2e797d3          	flt.d	a5,fa5,fa4
   12dc0:	440790e3          	bnez	a5,13a00 <_dtoa_r+0x1004>
   12dc4:	0001c7b7          	lui	a5,0x1c
   12dc8:	d20706d3          	fcvt.d.w	fa3,a4
   12dcc:	8007b707          	fld	fa4,-2048(a5) # 1b800 <__wctomb+0x38>
   12dd0:	fcc006b7          	lui	a3,0xfcc00
   12dd4:	72f6f743          	fmadd.d	fa4,fa3,fa5,fa4
   12dd8:	e2070753          	fmv.x.d	a4,fa4
   12ddc:	42075793          	srai	a5,a4,0x20
   12de0:	00d787bb          	addw	a5,a5,a3
   12de4:	02071713          	slli	a4,a4,0x20
   12de8:	02079793          	slli	a5,a5,0x20
   12dec:	02075713          	srli	a4,a4,0x20
   12df0:	00f76733          	or	a4,a4,a5
   12df4:	180a86e3          	beqz	s5,13780 <_dtoa_r+0xd84>
   12df8:	000b8693          	mv	a3,s7
   12dfc:	000a8613          	mv	a2,s5
   12e00:	01012783          	lw	a5,16(sp)
   12e04:	300782e3          	beqz	a5,13908 <_dtoa_r+0xf0c>
   12e08:	fff6079b          	addiw	a5,a2,-1
   12e0c:	000195b7          	lui	a1,0x19
   12e10:	3b058593          	addi	a1,a1,944 # 193b0 <__mprec_tens>
   12e14:	00379793          	slli	a5,a5,0x3
   12e18:	00b787b3          	add	a5,a5,a1
   12e1c:	0001c5b7          	lui	a1,0x1c
   12e20:	0007b687          	fld	fa3,0(a5)
   12e24:	8105b707          	fld	fa4,-2032(a1) # 1b810 <__wctomb+0x48>
   12e28:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   12e2c:	00813503          	ld	a0,8(sp)
   12e30:	1ad77753          	fdiv.d	fa4,fa4,fa3
   12e34:	d20786d3          	fcvt.d.w	fa3,a5
   12e38:	0307879b          	addiw	a5,a5,48
   12e3c:	0ff7f793          	andi	a5,a5,255
   12e40:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   12e44:	f20706d3          	fmv.d.x	fa3,a4
   12e48:	00f50023          	sb	a5,0(a0)
   12e4c:	00150493          	addi	s1,a0,1
   12e50:	0ad77753          	fsub.d	fa4,fa4,fa3
   12e54:	a2e79753          	flt.d	a4,fa5,fa4
   12e58:	08071063          	bnez	a4,12ed8 <_dtoa_r+0x4dc>
   12e5c:	0001b737          	lui	a4,0x1b
   12e60:	7f073587          	fld	fa1,2032(a4) # 1b7f0 <__wctomb+0x28>
   12e64:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   12e68:	a2e69753          	flt.d	a4,fa3,fa4
   12e6c:	40071ae3          	bnez	a4,13a80 <_dtoa_r+0x1084>
   12e70:	00100793          	li	a5,1
   12e74:	1ac7d4e3          	ble	a2,a5,1381c <_dtoa_r+0xe20>
   12e78:	0001b7b7          	lui	a5,0x1b
   12e7c:	ffe6061b          	addiw	a2,a2,-2
   12e80:	02061613          	slli	a2,a2,0x20
   12e84:	7f87b607          	fld	fa2,2040(a5) # 1b7f8 <__wctomb+0x30>
   12e88:	00813783          	ld	a5,8(sp)
   12e8c:	02065613          	srli	a2,a2,0x20
   12e90:	00260613          	addi	a2,a2,2
   12e94:	00c78633          	add	a2,a5,a2
   12e98:	0140006f          	j	12eac <_dtoa_r+0x4b0>
   12e9c:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   12ea0:	a2e69753          	flt.d	a4,fa3,fa4
   12ea4:	3c071ee3          	bnez	a4,13a80 <_dtoa_r+0x1084>
   12ea8:	16960ae3          	beq	a2,s1,1381c <_dtoa_r+0xe20>
   12eac:	12c7f7d3          	fmul.d	fa5,fa5,fa2
   12eb0:	12c77753          	fmul.d	fa4,fa4,fa2
   12eb4:	00148493          	addi	s1,s1,1
   12eb8:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   12ebc:	d20786d3          	fcvt.d.w	fa3,a5
   12ec0:	0307879b          	addiw	a5,a5,48
   12ec4:	0ff7f793          	andi	a5,a5,255
   12ec8:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   12ecc:	fef48fa3          	sb	a5,-1(s1)
   12ed0:	a2e79753          	flt.d	a4,fa5,fa4
   12ed4:	fc0704e3          	beqz	a4,12e9c <_dtoa_r+0x4a0>
   12ed8:	00068b93          	mv	s7,a3
   12edc:	02013583          	ld	a1,32(sp)
   12ee0:	00040513          	mv	a0,s0
   12ee4:	001b8b9b          	addiw	s7,s7,1
   12ee8:	57c020ef          	jal	15464 <_Bfree>
   12eec:	00013783          	ld	a5,0(sp)
   12ef0:	00048023          	sb	zero,0(s1)
   12ef4:	0177a023          	sw	s7,0(a5)
   12ef8:	0c0b0ce3          	beqz	s6,137d0 <_dtoa_r+0xdd4>
   12efc:	009b3023          	sd	s1,0(s6)
   12f00:	00813503          	ld	a0,8(sp)
   12f04:	bc5ff06f          	j	12ac8 <_dtoa_r+0xcc>
   12f08:	00019537          	lui	a0,0x19
   12f0c:	6c850513          	addi	a0,a0,1736 # 196c8 <zeroes.4137+0x88>
   12f10:	c15ff06f          	j	12b24 <_dtoa_r+0x128>
   12f14:	00cd1793          	slli	a5,s10,0xc
   12f18:	02c7d693          	srli	a3,a5,0x2c
   12f1c:	3ff007b7          	lui	a5,0x3ff00
   12f20:	00f6e7b3          	or	a5,a3,a5
   12f24:	020d1493          	slli	s1,s10,0x20
   12f28:	02079793          	slli	a5,a5,0x20
   12f2c:	0204d493          	srli	s1,s1,0x20
   12f30:	00f4e4b3          	or	s1,s1,a5
   12f34:	c018081b          	addiw	a6,a6,-1023
   12f38:	05812603          	lw	a2,88(sp)
   12f3c:	00000913          	li	s2,0
   12f40:	ca9ff06f          	j	12be8 <_dtoa_r+0x1ec>
   12f44:	00019537          	lui	a0,0x19
   12f48:	6b050513          	addi	a0,a0,1712 # 196b0 <zeroes.4137+0x70>
   12f4c:	b7dff06f          	j	12ac8 <_dtoa_r+0xcc>
   12f50:	41b0083b          	negw	a6,s11
   12f54:	00000d93          	li	s11,0
   12f58:	d1dff06f          	j	12c74 <_dtoa_r+0x278>
   12f5c:	06042423          	sw	zero,104(s0)
   12f60:	00000593          	li	a1,0
   12f64:	00040513          	mv	a0,s0
   12f68:	03013c23          	sd	a6,56(sp)
   12f6c:	44c020ef          	jal	153b8 <_Balloc>
   12f70:	03813803          	ld	a6,56(sp)
   12f74:	fff00a93          	li	s5,-1
   12f78:	00100793          	li	a5,1
   12f7c:	00a13423          	sd	a0,8(sp)
   12f80:	06a43023          	sd	a0,96(s0)
   12f84:	03512a23          	sw	s5,52(sp)
   12f88:	00000993          	li	s3,0
   12f8c:	00000c93          	li	s9,0
   12f90:	00f12823          	sw	a5,16(sp)
   12f94:	05c12783          	lw	a5,92(sp)
   12f98:	0e07ca63          	bltz	a5,1308c <_dtoa_r+0x690>
   12f9c:	00e00693          	li	a3,14
   12fa0:	0f76c663          	blt	a3,s7,1308c <_dtoa_r+0x690>
   12fa4:	000197b7          	lui	a5,0x19
   12fa8:	003b9693          	slli	a3,s7,0x3
   12fac:	3b078793          	addi	a5,a5,944 # 193b0 <__mprec_tens>
   12fb0:	00f687b3          	add	a5,a3,a5
   12fb4:	0007b687          	fld	fa3,0(a5)
   12fb8:	5e0cc663          	bltz	s9,135a4 <_dtoa_r+0xba8>
   12fbc:	f20d0653          	fmv.d.x	fa2,s10
   12fc0:	00813703          	ld	a4,8(sp)
   12fc4:	22d69553          	fneg.d	fa0,fa3
   12fc8:	1ad67753          	fdiv.d	fa4,fa2,fa3
   12fcc:	00170493          	addi	s1,a4,1
   12fd0:	c20717d3          	fcvt.w.d	a5,fa4,rtz
   12fd4:	d20787d3          	fcvt.d.w	fa5,a5
   12fd8:	0307869b          	addiw	a3,a5,48
   12fdc:	00d70023          	sb	a3,0(a4)
   12fe0:	00100713          	li	a4,1
   12fe4:	62f577c3          	fmadd.d	fa5,fa0,fa5,fa2
   12fe8:	2aea88e3          	beq	s5,a4,13a98 <_dtoa_r+0x109c>
   12fec:	0001b7b7          	lui	a5,0x1b
   12ff0:	7f87b587          	fld	fa1,2040(a5) # 1b7f8 <__wctomb+0x30>
   12ff4:	f2000653          	fmv.d.x	fa2,zero
   12ff8:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   12ffc:	a2c7a7d3          	feq.d	a5,fa5,fa2
   13000:	ec079ee3          	bnez	a5,12edc <_dtoa_r+0x4e0>
   13004:	ffea869b          	addiw	a3,s5,-2
   13008:	02069693          	slli	a3,a3,0x20
   1300c:	00813783          	ld	a5,8(sp)
   13010:	0206d693          	srli	a3,a3,0x20
   13014:	00268693          	addi	a3,a3,2 # fffffffffcc00002 <_gp+0xfffffffffcbe4072>
   13018:	00d786b3          	add	a3,a5,a3
   1301c:	0100006f          	j	1302c <_dtoa_r+0x630>
   13020:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   13024:	a2c7a7d3          	feq.d	a5,fa5,fa2
   13028:	ea079ae3          	bnez	a5,12edc <_dtoa_r+0x4e0>
   1302c:	1ad7f753          	fdiv.d	fa4,fa5,fa3
   13030:	00148493          	addi	s1,s1,1
   13034:	c20717d3          	fcvt.w.d	a5,fa4,rtz
   13038:	d2078753          	fcvt.d.w	fa4,a5
   1303c:	0307871b          	addiw	a4,a5,48
   13040:	fee48fa3          	sb	a4,-1(s1)
   13044:	7ae577c3          	fmadd.d	fa5,fa0,fa4,fa5
   13048:	fcd49ce3          	bne	s1,a3,13020 <_dtoa_r+0x624>
   1304c:	02f7f7d3          	fadd.d	fa5,fa5,fa5
   13050:	a2f69753          	flt.d	a4,fa3,fa5
   13054:	7c070863          	beqz	a4,13824 <_dtoa_r+0xe28>
   13058:	fff6c783          	lbu	a5,-1(a3)
   1305c:	00068493          	mv	s1,a3
   13060:	03900693          	li	a3,57
   13064:	0140006f          	j	13078 <_dtoa_r+0x67c>
   13068:	00813783          	ld	a5,8(sp)
   1306c:	02f70ce3          	beq	a4,a5,138a4 <_dtoa_r+0xea8>
   13070:	fff74783          	lbu	a5,-1(a4)
   13074:	00070493          	mv	s1,a4
   13078:	fff48713          	addi	a4,s1,-1
   1307c:	fed786e3          	beq	a5,a3,13068 <_dtoa_r+0x66c>
   13080:	0017879b          	addiw	a5,a5,1
   13084:	00f70023          	sb	a5,0(a4)
   13088:	e55ff06f          	j	12edc <_dtoa_r+0x4e0>
   1308c:	01012703          	lw	a4,16(sp)
   13090:	1a070c63          	beqz	a4,13248 <_dtoa_r+0x84c>
   13094:	00100693          	li	a3,1
   13098:	5536d863          	ble	s3,a3,135e8 <_dtoa_r+0xbec>
   1309c:	fffa869b          	addiw	a3,s5,-1
   130a0:	72dc4c63          	blt	s8,a3,137d8 <_dtoa_r+0xddc>
   130a4:	40dc06bb          	subw	a3,s8,a3
   130a8:	00080493          	mv	s1,a6
   130ac:	000a8793          	mv	a5,s5
   130b0:	120ac2e3          	bltz	s5,139d4 <_dtoa_r+0xfd8>
   130b4:	00f8083b          	addw	a6,a6,a5
   130b8:	00100593          	li	a1,1
   130bc:	00040513          	mv	a0,s0
   130c0:	04d13423          	sd	a3,72(sp)
   130c4:	05013023          	sd	a6,64(sp)
   130c8:	03013c23          	sd	a6,56(sp)
   130cc:	00fd8dbb          	addw	s11,s11,a5
   130d0:	720020ef          	jal	157f0 <__i2b>
   130d4:	04013803          	ld	a6,64(sp)
   130d8:	04813683          	ld	a3,72(sp)
   130dc:	00050a13          	mv	s4,a0
   130e0:	00048e63          	beqz	s1,130fc <_dtoa_r+0x700>
   130e4:	01b05c63          	blez	s11,130fc <_dtoa_r+0x700>
   130e8:	00048793          	mv	a5,s1
   130ec:	489dc463          	blt	s11,s1,13574 <_dtoa_r+0xb78>
   130f0:	40f8083b          	subw	a6,a6,a5
   130f4:	40f484bb          	subw	s1,s1,a5
   130f8:	40fd8dbb          	subw	s11,s11,a5
   130fc:	02013903          	ld	s2,32(sp)
   13100:	07805e63          	blez	s8,1317c <_dtoa_r+0x780>
   13104:	01012783          	lw	a5,16(sp)
   13108:	6a078463          	beqz	a5,137b0 <_dtoa_r+0xdb4>
   1310c:	04068a63          	beqz	a3,13160 <_dtoa_r+0x764>
   13110:	00068613          	mv	a2,a3
   13114:	000a0593          	mv	a1,s4
   13118:	00040513          	mv	a0,s0
   1311c:	05013023          	sd	a6,64(sp)
   13120:	02d13c23          	sd	a3,56(sp)
   13124:	0f5020ef          	jal	15a18 <__pow5mult>
   13128:	02013603          	ld	a2,32(sp)
   1312c:	00050593          	mv	a1,a0
   13130:	00050a13          	mv	s4,a0
   13134:	00040513          	mv	a0,s0
   13138:	6ec020ef          	jal	15824 <__multiply>
   1313c:	03813683          	ld	a3,56(sp)
   13140:	02013583          	ld	a1,32(sp)
   13144:	00050913          	mv	s2,a0
   13148:	00040513          	mv	a0,s0
   1314c:	40dc0c3b          	subw	s8,s8,a3
   13150:	314020ef          	jal	15464 <_Bfree>
   13154:	04013803          	ld	a6,64(sp)
   13158:	020c0263          	beqz	s8,1317c <_dtoa_r+0x780>
   1315c:	03213023          	sd	s2,32(sp)
   13160:	02013583          	ld	a1,32(sp)
   13164:	000c0613          	mv	a2,s8
   13168:	00040513          	mv	a0,s0
   1316c:	03013c23          	sd	a6,56(sp)
   13170:	0a9020ef          	jal	15a18 <__pow5mult>
   13174:	03813803          	ld	a6,56(sp)
   13178:	00050913          	mv	s2,a0
   1317c:	00100593          	li	a1,1
   13180:	00040513          	mv	a0,s0
   13184:	03013023          	sd	a6,32(sp)
   13188:	668020ef          	jal	157f0 <__i2b>
   1318c:	02812783          	lw	a5,40(sp)
   13190:	00050c13          	mv	s8,a0
   13194:	02013803          	ld	a6,32(sp)
   13198:	0c078c63          	beqz	a5,13270 <_dtoa_r+0x874>
   1319c:	00078613          	mv	a2,a5
   131a0:	00050593          	mv	a1,a0
   131a4:	00040513          	mv	a0,s0
   131a8:	071020ef          	jal	15a18 <__pow5mult>
   131ac:	00100793          	li	a5,1
   131b0:	00050c13          	mv	s8,a0
   131b4:	02013803          	ld	a6,32(sp)
   131b8:	3d37c263          	blt	a5,s3,1357c <_dtoa_r+0xb80>
   131bc:	00cd1793          	slli	a5,s10,0xc
   131c0:	3a079e63          	bnez	a5,1357c <_dtoa_r+0xb80>
   131c4:	420d5693          	srai	a3,s10,0x20
   131c8:	7ff007b7          	lui	a5,0x7ff00
   131cc:	00f6f7b3          	and	a5,a3,a5
   131d0:	02012023          	sw	zero,32(sp)
   131d4:	00078a63          	beqz	a5,131e8 <_dtoa_r+0x7ec>
   131d8:	00100793          	li	a5,1
   131dc:	0018081b          	addiw	a6,a6,1
   131e0:	001d8d9b          	addiw	s11,s11,1
   131e4:	02f12023          	sw	a5,32(sp)
   131e8:	02812783          	lw	a5,40(sp)
   131ec:	00100513          	li	a0,1
   131f0:	08078863          	beqz	a5,13280 <_dtoa_r+0x884>
   131f4:	014c2783          	lw	a5,20(s8)
   131f8:	03013423          	sd	a6,40(sp)
   131fc:	fff7879b          	addiw	a5,a5,-1
   13200:	00478793          	addi	a5,a5,4 # 7ff00004 <_gp+0x7fee4074>
   13204:	00279793          	slli	a5,a5,0x2
   13208:	00fc07b3          	add	a5,s8,a5
   1320c:	0087a503          	lw	a0,8(a5)
   13210:	4b4020ef          	jal	156c4 <__hi0bits>
   13214:	02000793          	li	a5,32
   13218:	40a7853b          	subw	a0,a5,a0
   1321c:	02813803          	ld	a6,40(sp)
   13220:	0600006f          	j	13280 <_dtoa_r+0x884>
   13224:	d20b8753          	fcvt.d.w	fa4,s7
   13228:	a2e7a7d3          	feq.d	a5,fa5,fa4
   1322c:	0017b793          	seqz	a5,a5
   13230:	40fb8bbb          	subw	s7,s7,a5
   13234:	9f9ff06f          	j	12c2c <_dtoa_r+0x230>
   13238:	4178083b          	subw	a6,a6,s7
   1323c:	41700c3b          	negw	s8,s7
   13240:	02012423          	sw	zero,40(sp)
   13244:	a41ff06f          	j	12c84 <_dtoa_r+0x288>
   13248:	000c0693          	mv	a3,s8
   1324c:	00080493          	mv	s1,a6
   13250:	00000a13          	li	s4,0
   13254:	e8dff06f          	j	130e0 <_dtoa_r+0x6e4>
   13258:	000d049b          	sext.w	s1,s10
   1325c:	40d787bb          	subw	a5,a5,a3
   13260:	00f494bb          	sllw	s1,s1,a5
   13264:	959ff06f          	j	12bbc <_dtoa_r+0x1c0>
   13268:	02012823          	sw	zero,48(sp)
   1326c:	9f9ff06f          	j	12c64 <_dtoa_r+0x268>
   13270:	00100793          	li	a5,1
   13274:	0737d4e3          	ble	s3,a5,13adc <_dtoa_r+0x10e0>
   13278:	02012023          	sw	zero,32(sp)
   1327c:	00078513          	mv	a0,a5
   13280:	01b507bb          	addw	a5,a0,s11
   13284:	01f7f793          	andi	a5,a5,31
   13288:	1a078663          	beqz	a5,13434 <_dtoa_r+0xa38>
   1328c:	02000693          	li	a3,32
   13290:	40f686bb          	subw	a3,a3,a5
   13294:	00400613          	li	a2,4
   13298:	04d658e3          	ble	a3,a2,13ae8 <_dtoa_r+0x10ec>
   1329c:	01c00693          	li	a3,28
   132a0:	40f687bb          	subw	a5,a3,a5
   132a4:	00f8083b          	addw	a6,a6,a5
   132a8:	00f484bb          	addw	s1,s1,a5
   132ac:	00fd8dbb          	addw	s11,s11,a5
   132b0:	01005c63          	blez	a6,132c8 <_dtoa_r+0x8cc>
   132b4:	00090593          	mv	a1,s2
   132b8:	00080613          	mv	a2,a6
   132bc:	00040513          	mv	a0,s0
   132c0:	091020ef          	jal	15b50 <__lshift>
   132c4:	00050913          	mv	s2,a0
   132c8:	01b05c63          	blez	s11,132e0 <_dtoa_r+0x8e4>
   132cc:	000c0593          	mv	a1,s8
   132d0:	000d8613          	mv	a2,s11
   132d4:	00040513          	mv	a0,s0
   132d8:	079020ef          	jal	15b50 <__lshift>
   132dc:	00050c13          	mv	s8,a0
   132e0:	03012783          	lw	a5,48(sp)
   132e4:	22079663          	bnez	a5,13510 <_dtoa_r+0xb14>
   132e8:	3f505e63          	blez	s5,136e4 <_dtoa_r+0xce8>
   132ec:	01012783          	lw	a5,16(sp)
   132f0:	14078c63          	beqz	a5,13448 <_dtoa_r+0xa4c>
   132f4:	00905c63          	blez	s1,1330c <_dtoa_r+0x910>
   132f8:	000a0593          	mv	a1,s4
   132fc:	00048613          	mv	a2,s1
   13300:	00040513          	mv	a0,s0
   13304:	04d020ef          	jal	15b50 <__lshift>
   13308:	00050a13          	mv	s4,a0
   1330c:	02012783          	lw	a5,32(sp)
   13310:	000a0d93          	mv	s11,s4
   13314:	5a079463          	bnez	a5,138bc <_dtoa_r+0xec0>
   13318:	fffa849b          	addiw	s1,s5,-1
   1331c:	00813783          	ld	a5,8(sp)
   13320:	02049493          	slli	s1,s1,0x20
   13324:	0204d493          	srli	s1,s1,0x20
   13328:	00148493          	addi	s1,s1,1
   1332c:	009784b3          	add	s1,a5,s1
   13330:	00078c93          	mv	s9,a5
   13334:	001d7793          	andi	a5,s10,1
   13338:	00f13823          	sd	a5,16(sp)
   1333c:	000c0593          	mv	a1,s8
   13340:	00090513          	mv	a0,s2
   13344:	cccff0ef          	jal	12810 <quorem>
   13348:	00050d13          	mv	s10,a0
   1334c:	02a12823          	sw	a0,48(sp)
   13350:	000a0593          	mv	a1,s4
   13354:	00090513          	mv	a0,s2
   13358:	159020ef          	jal	15cb0 <__mcmp>
   1335c:	00050a93          	mv	s5,a0
   13360:	000d8613          	mv	a2,s11
   13364:	000c0593          	mv	a1,s8
   13368:	00040513          	mv	a0,s0
   1336c:	1a5020ef          	jal	15d10 <__mdiff>
   13370:	01052683          	lw	a3,16(a0)
   13374:	00050793          	mv	a5,a0
   13378:	030d0d1b          	addiw	s10,s10,48
   1337c:	00100713          	li	a4,1
   13380:	00069e63          	bnez	a3,1339c <_dtoa_r+0x9a0>
   13384:	00050593          	mv	a1,a0
   13388:	02a13023          	sd	a0,32(sp)
   1338c:	00090513          	mv	a0,s2
   13390:	121020ef          	jal	15cb0 <__mcmp>
   13394:	02013783          	ld	a5,32(sp)
   13398:	00050713          	mv	a4,a0
   1339c:	00078593          	mv	a1,a5
   133a0:	00040513          	mv	a0,s0
   133a4:	02e13023          	sd	a4,32(sp)
   133a8:	0bc020ef          	jal	15464 <_Bfree>
   133ac:	02013703          	ld	a4,32(sp)
   133b0:	013767b3          	or	a5,a4,s3
   133b4:	00079663          	bnez	a5,133c0 <_dtoa_r+0x9c4>
   133b8:	01012783          	lw	a5,16(sp)
   133bc:	24078063          	beqz	a5,135fc <_dtoa_r+0xc00>
   133c0:	260ac463          	bltz	s5,13628 <_dtoa_r+0xc2c>
   133c4:	013aeab3          	or	s5,s5,s3
   133c8:	000a9663          	bnez	s5,133d4 <_dtoa_r+0x9d8>
   133cc:	01012783          	lw	a5,16(sp)
   133d0:	24078c63          	beqz	a5,13628 <_dtoa_r+0xc2c>
   133d4:	5ee04263          	bgtz	a4,139b8 <_dtoa_r+0xfbc>
   133d8:	001c8c93          	addi	s9,s9,1
   133dc:	ffac8fa3          	sb	s10,-1(s9)
   133e0:	5f948463          	beq	s1,s9,139c8 <_dtoa_r+0xfcc>
   133e4:	00090593          	mv	a1,s2
   133e8:	00000693          	li	a3,0
   133ec:	00a00613          	li	a2,10
   133f0:	00040513          	mv	a0,s0
   133f4:	094020ef          	jal	15488 <__multadd>
   133f8:	00050913          	mv	s2,a0
   133fc:	00000693          	li	a3,0
   13400:	00a00613          	li	a2,10
   13404:	000a0593          	mv	a1,s4
   13408:	00040513          	mv	a0,s0
   1340c:	27ba0463          	beq	s4,s11,13674 <_dtoa_r+0xc78>
   13410:	078020ef          	jal	15488 <__multadd>
   13414:	000d8593          	mv	a1,s11
   13418:	00050a13          	mv	s4,a0
   1341c:	00000693          	li	a3,0
   13420:	00a00613          	li	a2,10
   13424:	00040513          	mv	a0,s0
   13428:	060020ef          	jal	15488 <__multadd>
   1342c:	00050d93          	mv	s11,a0
   13430:	f0dff06f          	j	1333c <_dtoa_r+0x940>
   13434:	01c00793          	li	a5,28
   13438:	00f8083b          	addw	a6,a6,a5
   1343c:	00f484bb          	addw	s1,s1,a5
   13440:	00fd8dbb          	addw	s11,s11,a5
   13444:	e6dff06f          	j	132b0 <_dtoa_r+0x8b4>
   13448:	00813483          	ld	s1,8(sp)
   1344c:	00100993          	li	s3,1
   13450:	0100006f          	j	13460 <_dtoa_r+0xa64>
   13454:	034020ef          	jal	15488 <__multadd>
   13458:	00050913          	mv	s2,a0
   1345c:	0019899b          	addiw	s3,s3,1
   13460:	000c0593          	mv	a1,s8
   13464:	00090513          	mv	a0,s2
   13468:	ba8ff0ef          	jal	12810 <quorem>
   1346c:	03050d1b          	addiw	s10,a0,48
   13470:	00148493          	addi	s1,s1,1
   13474:	ffa48fa3          	sb	s10,-1(s1)
   13478:	00000693          	li	a3,0
   1347c:	00a00613          	li	a2,10
   13480:	00090593          	mv	a1,s2
   13484:	00040513          	mv	a0,s0
   13488:	fd59c6e3          	blt	s3,s5,13454 <_dtoa_r+0xa58>
   1348c:	00000993          	li	s3,0
   13490:	00090593          	mv	a1,s2
   13494:	00100613          	li	a2,1
   13498:	00040513          	mv	a0,s0
   1349c:	6b4020ef          	jal	15b50 <__lshift>
   134a0:	000c0593          	mv	a1,s8
   134a4:	02a13023          	sd	a0,32(sp)
   134a8:	009020ef          	jal	15cb0 <__mcmp>
   134ac:	34a05463          	blez	a0,137f4 <_dtoa_r+0xdf8>
   134b0:	fff4c703          	lbu	a4,-1(s1)
   134b4:	03900693          	li	a3,57
   134b8:	0140006f          	j	134cc <_dtoa_r+0xad0>
   134bc:	00813703          	ld	a4,8(sp)
   134c0:	26e78a63          	beq	a5,a4,13734 <_dtoa_r+0xd38>
   134c4:	fff7c703          	lbu	a4,-1(a5)
   134c8:	00078493          	mv	s1,a5
   134cc:	fff48793          	addi	a5,s1,-1
   134d0:	fed706e3          	beq	a4,a3,134bc <_dtoa_r+0xac0>
   134d4:	0017071b          	addiw	a4,a4,1
   134d8:	00e78023          	sb	a4,0(a5)
   134dc:	000c0593          	mv	a1,s8
   134e0:	00040513          	mv	a0,s0
   134e4:	781010ef          	jal	15464 <_Bfree>
   134e8:	9e0a0ae3          	beqz	s4,12edc <_dtoa_r+0x4e0>
   134ec:	00098a63          	beqz	s3,13500 <_dtoa_r+0xb04>
   134f0:	01498863          	beq	s3,s4,13500 <_dtoa_r+0xb04>
   134f4:	00098593          	mv	a1,s3
   134f8:	00040513          	mv	a0,s0
   134fc:	769010ef          	jal	15464 <_Bfree>
   13500:	000a0593          	mv	a1,s4
   13504:	00040513          	mv	a0,s0
   13508:	75d010ef          	jal	15464 <_Bfree>
   1350c:	9d1ff06f          	j	12edc <_dtoa_r+0x4e0>
   13510:	000c0593          	mv	a1,s8
   13514:	00090513          	mv	a0,s2
   13518:	798020ef          	jal	15cb0 <__mcmp>
   1351c:	dc0556e3          	bgez	a0,132e8 <_dtoa_r+0x8ec>
   13520:	00090593          	mv	a1,s2
   13524:	00000693          	li	a3,0
   13528:	00a00613          	li	a2,10
   1352c:	00040513          	mv	a0,s0
   13530:	759010ef          	jal	15488 <__multadd>
   13534:	01012783          	lw	a5,16(sp)
   13538:	00050913          	mv	s2,a0
   1353c:	fffb8b9b          	addiw	s7,s7,-1
   13540:	56079063          	bnez	a5,13aa0 <_dtoa_r+0x10a4>
   13544:	03412783          	lw	a5,52(sp)
   13548:	00078a93          	mv	s5,a5
   1354c:	eef04ee3          	bgtz	a5,13448 <_dtoa_r+0xa4c>
   13550:	00200793          	li	a5,2
   13554:	5937c063          	blt	a5,s3,13ad4 <_dtoa_r+0x10d8>
   13558:	000c0593          	mv	a1,s8
   1355c:	ab4ff0ef          	jal	12810 <quorem>
   13560:	00813783          	ld	a5,8(sp)
   13564:	03050d1b          	addiw	s10,a0,48
   13568:	00178493          	addi	s1,a5,1
   1356c:	ffa48fa3          	sb	s10,-1(s1)
   13570:	f1dff06f          	j	1348c <_dtoa_r+0xa90>
   13574:	000d8793          	mv	a5,s11
   13578:	b79ff06f          	j	130f0 <_dtoa_r+0x6f4>
   1357c:	02012023          	sw	zero,32(sp)
   13580:	c75ff06f          	j	131f4 <_dtoa_r+0x7f8>
   13584:	00100793          	li	a5,1
   13588:	00f12823          	sw	a5,16(sp)
   1358c:	0f905c63          	blez	s9,13684 <_dtoa_r+0xc88>
   13590:	000c8513          	mv	a0,s9
   13594:	000c8493          	mv	s1,s9
   13598:	03912a23          	sw	s9,52(sp)
   1359c:	000c8a93          	mv	s5,s9
   135a0:	f3cff06f          	j	12cdc <_dtoa_r+0x2e0>
   135a4:	a1504ce3          	bgtz	s5,12fbc <_dtoa_r+0x5c0>
   135a8:	1e0a9e63          	bnez	s5,137a4 <_dtoa_r+0xda8>
   135ac:	0001c7b7          	lui	a5,0x1c
   135b0:	8087b787          	fld	fa5,-2040(a5) # 1b808 <__wctomb+0x40>
   135b4:	00000c13          	li	s8,0
   135b8:	00000a13          	li	s4,0
   135bc:	12f6f6d3          	fmul.d	fa3,fa3,fa5
   135c0:	f20d07d3          	fmv.d.x	fa5,s10
   135c4:	a2d78753          	fle.d	a4,fa5,fa3
   135c8:	14070a63          	beqz	a4,1371c <_dtoa_r+0xd20>
   135cc:	00813483          	ld	s1,8(sp)
   135d0:	fffccb93          	not	s7,s9
   135d4:	000c0593          	mv	a1,s8
   135d8:	00040513          	mv	a0,s0
   135dc:	689010ef          	jal	15464 <_Bfree>
   135e0:	8e0a0ee3          	beqz	s4,12edc <_dtoa_r+0x4e0>
   135e4:	f1dff06f          	j	13500 <_dtoa_r+0xb04>
   135e8:	3e090c63          	beqz	s2,139e0 <_dtoa_r+0xfe4>
   135ec:	4337879b          	addiw	a5,a5,1075
   135f0:	000c0693          	mv	a3,s8
   135f4:	00080493          	mv	s1,a6
   135f8:	abdff06f          	j	130b4 <_dtoa_r+0x6b8>
   135fc:	03900793          	li	a5,57
   13600:	04fd0a63          	beq	s10,a5,13654 <_dtoa_r+0xc58>
   13604:	01505663          	blez	s5,13610 <_dtoa_r+0xc14>
   13608:	03012783          	lw	a5,48(sp)
   1360c:	03178d1b          	addiw	s10,a5,49
   13610:	000a0993          	mv	s3,s4
   13614:	001c8493          	addi	s1,s9,1
   13618:	01ac8023          	sb	s10,0(s9)
   1361c:	000d8a13          	mv	s4,s11
   13620:	03213023          	sd	s2,32(sp)
   13624:	eb9ff06f          	j	134dc <_dtoa_r+0xae0>
   13628:	fee054e3          	blez	a4,13610 <_dtoa_r+0xc14>
   1362c:	00090593          	mv	a1,s2
   13630:	00100613          	li	a2,1
   13634:	00040513          	mv	a0,s0
   13638:	518020ef          	jal	15b50 <__lshift>
   1363c:	000c0593          	mv	a1,s8
   13640:	00050913          	mv	s2,a0
   13644:	66c020ef          	jal	15cb0 <__mcmp>
   13648:	44a05063          	blez	a0,13a88 <_dtoa_r+0x108c>
   1364c:	03900793          	li	a5,57
   13650:	fafd1ce3          	bne	s10,a5,13608 <_dtoa_r+0xc0c>
   13654:	03900793          	li	a5,57
   13658:	000a0993          	mv	s3,s4
   1365c:	001c8493          	addi	s1,s9,1
   13660:	00fc8023          	sb	a5,0(s9)
   13664:	000d8a13          	mv	s4,s11
   13668:	03213023          	sd	s2,32(sp)
   1366c:	03900713          	li	a4,57
   13670:	e45ff06f          	j	134b4 <_dtoa_r+0xab8>
   13674:	615010ef          	jal	15488 <__multadd>
   13678:	00050a13          	mv	s4,a0
   1367c:	00050d93          	mv	s11,a0
   13680:	cbdff06f          	j	1333c <_dtoa_r+0x940>
   13684:	00100493          	li	s1,1
   13688:	02912a23          	sw	s1,52(sp)
   1368c:	00048a93          	mv	s5,s1
   13690:	00048c93          	mv	s9,s1
   13694:	06042423          	sw	zero,104(s0)
   13698:	00000593          	li	a1,0
   1369c:	e74ff06f          	j	12d10 <_dtoa_r+0x314>
   136a0:	00012823          	sw	zero,16(sp)
   136a4:	00200793          	li	a5,2
   136a8:	eef982e3          	beq	s3,a5,1358c <_dtoa_r+0xb90>
   136ac:	06042423          	sw	zero,104(s0)
   136b0:	00000593          	li	a1,0
   136b4:	00040513          	mv	a0,s0
   136b8:	03013c23          	sd	a6,56(sp)
   136bc:	4fd010ef          	jal	153b8 <_Balloc>
   136c0:	fff00a93          	li	s5,-1
   136c4:	00100793          	li	a5,1
   136c8:	00a13423          	sd	a0,8(sp)
   136cc:	06a43023          	sd	a0,96(s0)
   136d0:	03512a23          	sw	s5,52(sp)
   136d4:	00000c93          	li	s9,0
   136d8:	00f12823          	sw	a5,16(sp)
   136dc:	03813803          	ld	a6,56(sp)
   136e0:	8b5ff06f          	j	12f94 <_dtoa_r+0x598>
   136e4:	00200793          	li	a5,2
   136e8:	c137d2e3          	ble	s3,a5,132ec <_dtoa_r+0x8f0>
   136ec:	300a9663          	bnez	s5,139f8 <_dtoa_r+0xffc>
   136f0:	000c0593          	mv	a1,s8
   136f4:	00000693          	li	a3,0
   136f8:	00500613          	li	a2,5
   136fc:	00040513          	mv	a0,s0
   13700:	589010ef          	jal	15488 <__multadd>
   13704:	00050593          	mv	a1,a0
   13708:	00050c13          	mv	s8,a0
   1370c:	00090513          	mv	a0,s2
   13710:	5a0020ef          	jal	15cb0 <__mcmp>
   13714:	03213023          	sd	s2,32(sp)
   13718:	eaa05ae3          	blez	a0,135cc <_dtoa_r+0xbd0>
   1371c:	00813703          	ld	a4,8(sp)
   13720:	03100793          	li	a5,49
   13724:	001b8b9b          	addiw	s7,s7,1
   13728:	00170493          	addi	s1,a4,1
   1372c:	00f70023          	sb	a5,0(a4)
   13730:	ea5ff06f          	j	135d4 <_dtoa_r+0xbd8>
   13734:	00813703          	ld	a4,8(sp)
   13738:	03100793          	li	a5,49
   1373c:	001b8b9b          	addiw	s7,s7,1
   13740:	00f70023          	sb	a5,0(a4)
   13744:	d99ff06f          	j	134dc <_dtoa_r+0xae0>
   13748:	00012823          	sw	zero,16(sp)
   1374c:	d78ff06f          	j	12cc4 <_dtoa_r+0x2c8>
   13750:	0001c7b7          	lui	a5,0x1c
   13754:	d20706d3          	fcvt.d.w	fa3,a4
   13758:	8007b707          	fld	fa4,-2048(a5) # 1b800 <__wctomb+0x38>
   1375c:	fcc006b7          	lui	a3,0xfcc00
   13760:	72d7f743          	fmadd.d	fa4,fa5,fa3,fa4
   13764:	e2070753          	fmv.x.d	a4,fa4
   13768:	42075793          	srai	a5,a4,0x20
   1376c:	00d787bb          	addw	a5,a5,a3
   13770:	02071713          	slli	a4,a4,0x20
   13774:	02079793          	slli	a5,a5,0x20
   13778:	02075713          	srli	a4,a4,0x20
   1377c:	00f76733          	or	a4,a4,a5
   13780:	0001c7b7          	lui	a5,0x1c
   13784:	8087b707          	fld	fa4,-2040(a5) # 1b808 <__wctomb+0x40>
   13788:	f20706d3          	fmv.d.x	fa3,a4
   1378c:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
   13790:	a2f697d3          	flt.d	a5,fa3,fa5
   13794:	16079463          	bnez	a5,138fc <_dtoa_r+0xf00>
   13798:	22d69753          	fneg.d	fa4,fa3
   1379c:	a2e797d3          	flt.d	a5,fa5,fa4
   137a0:	06078e63          	beqz	a5,1381c <_dtoa_r+0xe20>
   137a4:	00000c13          	li	s8,0
   137a8:	00000a13          	li	s4,0
   137ac:	e21ff06f          	j	135cc <_dtoa_r+0xbd0>
   137b0:	00090593          	mv	a1,s2
   137b4:	000c0613          	mv	a2,s8
   137b8:	00040513          	mv	a0,s0
   137bc:	03013023          	sd	a6,32(sp)
   137c0:	258020ef          	jal	15a18 <__pow5mult>
   137c4:	00050913          	mv	s2,a0
   137c8:	02013803          	ld	a6,32(sp)
   137cc:	9b1ff06f          	j	1317c <_dtoa_r+0x780>
   137d0:	00813503          	ld	a0,8(sp)
   137d4:	af4ff06f          	j	12ac8 <_dtoa_r+0xcc>
   137d8:	02812783          	lw	a5,40(sp)
   137dc:	41868c3b          	subw	s8,a3,s8
   137e0:	018787bb          	addw	a5,a5,s8
   137e4:	02f12423          	sw	a5,40(sp)
   137e8:	00068c13          	mv	s8,a3
   137ec:	00000693          	li	a3,0
   137f0:	8b9ff06f          	j	130a8 <_dtoa_r+0x6ac>
   137f4:	00051663          	bnez	a0,13800 <_dtoa_r+0xe04>
   137f8:	001d7d13          	andi	s10,s10,1
   137fc:	ca0d1ae3          	bnez	s10,134b0 <_dtoa_r+0xab4>
   13800:	03000693          	li	a3,48
   13804:	0080006f          	j	1380c <_dtoa_r+0xe10>
   13808:	00070493          	mv	s1,a4
   1380c:	fff4c783          	lbu	a5,-1(s1)
   13810:	fff48713          	addi	a4,s1,-1
   13814:	fed78ae3          	beq	a5,a3,13808 <_dtoa_r+0xe0c>
   13818:	cc5ff06f          	j	134dc <_dtoa_r+0xae0>
   1381c:	03813d03          	ld	s10,56(sp)
   13820:	f74ff06f          	j	12f94 <_dtoa_r+0x598>
   13824:	a2f6a753          	feq.d	a4,fa3,fa5
   13828:	00068493          	mv	s1,a3
   1382c:	ea070863          	beqz	a4,12edc <_dtoa_r+0x4e0>
   13830:	0017f793          	andi	a5,a5,1
   13834:	ea078463          	beqz	a5,12edc <_dtoa_r+0x4e0>
   13838:	fff6c783          	lbu	a5,-1(a3) # fffffffffcbfffff <_gp+0xfffffffffcbe406f>
   1383c:	825ff06f          	j	13060 <_dtoa_r+0x664>
   13840:	417007bb          	negw	a5,s7
   13844:	03813787          	fld	fa5,56(sp)
   13848:	00200713          	li	a4,2
   1384c:	d6078063          	beqz	a5,12dac <_dtoa_r+0x3b0>
   13850:	00f7f693          	andi	a3,a5,15
   13854:	00019637          	lui	a2,0x19
   13858:	00369693          	slli	a3,a3,0x3
   1385c:	3b060613          	addi	a2,a2,944 # 193b0 <__mprec_tens>
   13860:	00c686b3          	add	a3,a3,a2
   13864:	0006b787          	fld	fa5,0(a3)
   13868:	03813707          	fld	fa4,56(sp)
   1386c:	4047d79b          	sraiw	a5,a5,0x4
   13870:	12f777d3          	fmul.d	fa5,fa4,fa5
   13874:	d2078c63          	beqz	a5,12dac <_dtoa_r+0x3b0>
   13878:	000196b7          	lui	a3,0x19
   1387c:	4a068693          	addi	a3,a3,1184 # 194a0 <__mprec_bigtens>
   13880:	0017f613          	andi	a2,a5,1
   13884:	4017d79b          	sraiw	a5,a5,0x1
   13888:	00060863          	beqz	a2,13898 <_dtoa_r+0xe9c>
   1388c:	0006b707          	fld	fa4,0(a3)
   13890:	0017071b          	addiw	a4,a4,1
   13894:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   13898:	00868693          	addi	a3,a3,8
   1389c:	fe0792e3          	bnez	a5,13880 <_dtoa_r+0xe84>
   138a0:	d0cff06f          	j	12dac <_dtoa_r+0x3b0>
   138a4:	00813683          	ld	a3,8(sp)
   138a8:	03000793          	li	a5,48
   138ac:	001b8b9b          	addiw	s7,s7,1
   138b0:	00f68023          	sb	a5,0(a3)
   138b4:	fff4c783          	lbu	a5,-1(s1)
   138b8:	fc8ff06f          	j	13080 <_dtoa_r+0x684>
   138bc:	008a2583          	lw	a1,8(s4)
   138c0:	00040513          	mv	a0,s0
   138c4:	2f5010ef          	jal	153b8 <_Balloc>
   138c8:	014a2603          	lw	a2,20(s4)
   138cc:	00050493          	mv	s1,a0
   138d0:	010a0593          	addi	a1,s4,16
   138d4:	00260613          	addi	a2,a2,2
   138d8:	00261613          	slli	a2,a2,0x2
   138dc:	01050513          	addi	a0,a0,16
   138e0:	0d5010ef          	jal	151b4 <memcpy>
   138e4:	00100613          	li	a2,1
   138e8:	00048593          	mv	a1,s1
   138ec:	00040513          	mv	a0,s0
   138f0:	260020ef          	jal	15b50 <__lshift>
   138f4:	00050d93          	mv	s11,a0
   138f8:	a21ff06f          	j	13318 <_dtoa_r+0x91c>
   138fc:	00000c13          	li	s8,0
   13900:	00000a13          	li	s4,0
   13904:	e19ff06f          	j	1371c <_dtoa_r+0xd20>
   13908:	fff6079b          	addiw	a5,a2,-1
   1390c:	00019537          	lui	a0,0x19
   13910:	c20795d3          	fcvt.w.d	a1,fa5,rtz
   13914:	00379793          	slli	a5,a5,0x3
   13918:	3b050513          	addi	a0,a0,944 # 193b0 <__mprec_tens>
   1391c:	00a787b3          	add	a5,a5,a0
   13920:	0007b707          	fld	fa4,0(a5)
   13924:	00813783          	ld	a5,8(sp)
   13928:	d20586d3          	fcvt.d.w	fa3,a1
   1392c:	f2070653          	fmv.d.x	fa2,a4
   13930:	0305859b          	addiw	a1,a1,48
   13934:	00b78023          	sb	a1,0(a5)
   13938:	00178493          	addi	s1,a5,1
   1393c:	00100793          	li	a5,1
   13940:	12c77653          	fmul.d	fa2,fa4,fa2
   13944:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   13948:	04f60863          	beq	a2,a5,13998 <_dtoa_r+0xf9c>
   1394c:	ffe6061b          	addiw	a2,a2,-2
   13950:	0001b7b7          	lui	a5,0x1b
   13954:	02061593          	slli	a1,a2,0x20
   13958:	7f87b687          	fld	fa3,2040(a5) # 1b7f8 <__wctomb+0x30>
   1395c:	00813783          	ld	a5,8(sp)
   13960:	0205d593          	srli	a1,a1,0x20
   13964:	00258513          	addi	a0,a1,2
   13968:	00a78533          	add	a0,a5,a0
   1396c:	00048613          	mv	a2,s1
   13970:	12d7f7d3          	fmul.d	fa5,fa5,fa3
   13974:	00160613          	addi	a2,a2,1
   13978:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   1397c:	d2078753          	fcvt.d.w	fa4,a5
   13980:	0307879b          	addiw	a5,a5,48
   13984:	fef60fa3          	sb	a5,-1(a2)
   13988:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
   1398c:	fea612e3          	bne	a2,a0,13970 <_dtoa_r+0xf74>
   13990:	00158593          	addi	a1,a1,1
   13994:	00b484b3          	add	s1,s1,a1
   13998:	0001c7b7          	lui	a5,0x1c
   1399c:	8107b707          	fld	fa4,-2032(a5) # 1b810 <__wctomb+0x48>
   139a0:	02e676d3          	fadd.d	fa3,fa2,fa4
   139a4:	a2f697d3          	flt.d	a5,fa3,fa5
   139a8:	0a078663          	beqz	a5,13a54 <_dtoa_r+0x1058>
   139ac:	fff4c783          	lbu	a5,-1(s1)
   139b0:	00068b93          	mv	s7,a3
   139b4:	eacff06f          	j	13060 <_dtoa_r+0x664>
   139b8:	03900793          	li	a5,57
   139bc:	c8fd0ce3          	beq	s10,a5,13654 <_dtoa_r+0xc58>
   139c0:	001d0d1b          	addiw	s10,s10,1
   139c4:	c4dff06f          	j	13610 <_dtoa_r+0xc14>
   139c8:	000a0993          	mv	s3,s4
   139cc:	000d8a13          	mv	s4,s11
   139d0:	ac1ff06f          	j	13490 <_dtoa_r+0xa94>
   139d4:	415804bb          	subw	s1,a6,s5
   139d8:	00000793          	li	a5,0
   139dc:	ed8ff06f          	j	130b4 <_dtoa_r+0x6b8>
   139e0:	05812603          	lw	a2,88(sp)
   139e4:	03600793          	li	a5,54
   139e8:	000c0693          	mv	a3,s8
   139ec:	40c787bb          	subw	a5,a5,a2
   139f0:	00080493          	mv	s1,a6
   139f4:	ec0ff06f          	j	130b4 <_dtoa_r+0x6b8>
   139f8:	03213023          	sd	s2,32(sp)
   139fc:	bd1ff06f          	j	135cc <_dtoa_r+0xbd0>
   13a00:	d40a88e3          	beqz	s5,13750 <_dtoa_r+0xd54>
   13a04:	03412603          	lw	a2,52(sp)
   13a08:	e0c05ae3          	blez	a2,1381c <_dtoa_r+0xe20>
   13a0c:	0001b7b7          	lui	a5,0x1b
   13a10:	7f87b707          	fld	fa4,2040(a5) # 1b7f8 <__wctomb+0x30>
   13a14:	0017071b          	addiw	a4,a4,1
   13a18:	0001c7b7          	lui	a5,0x1c
   13a1c:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   13a20:	d20706d3          	fcvt.d.w	fa3,a4
   13a24:	8007b707          	fld	fa4,-2048(a5) # 1b800 <__wctomb+0x38>
   13a28:	fcc005b7          	lui	a1,0xfcc00
   13a2c:	fffb869b          	addiw	a3,s7,-1
   13a30:	72d7f743          	fmadd.d	fa4,fa5,fa3,fa4
   13a34:	e2070753          	fmv.x.d	a4,fa4
   13a38:	42075793          	srai	a5,a4,0x20
   13a3c:	00b787bb          	addw	a5,a5,a1
   13a40:	02071713          	slli	a4,a4,0x20
   13a44:	02079793          	slli	a5,a5,0x20
   13a48:	02075713          	srli	a4,a4,0x20
   13a4c:	00f76733          	or	a4,a4,a5
   13a50:	bb0ff06f          	j	12e00 <_dtoa_r+0x404>
   13a54:	0ac77753          	fsub.d	fa4,fa4,fa2
   13a58:	03000613          	li	a2,48
   13a5c:	a2e797d3          	flt.d	a5,fa5,fa4
   13a60:	00079663          	bnez	a5,13a6c <_dtoa_r+0x1070>
   13a64:	db9ff06f          	j	1381c <_dtoa_r+0xe20>
   13a68:	00070493          	mv	s1,a4
   13a6c:	fff4c783          	lbu	a5,-1(s1)
   13a70:	fff48713          	addi	a4,s1,-1
   13a74:	fec78ae3          	beq	a5,a2,13a68 <_dtoa_r+0x106c>
   13a78:	00068b93          	mv	s7,a3
   13a7c:	c60ff06f          	j	12edc <_dtoa_r+0x4e0>
   13a80:	00068b93          	mv	s7,a3
   13a84:	ddcff06f          	j	13060 <_dtoa_r+0x664>
   13a88:	b80514e3          	bnez	a0,13610 <_dtoa_r+0xc14>
   13a8c:	001d7793          	andi	a5,s10,1
   13a90:	b80780e3          	beqz	a5,13610 <_dtoa_r+0xc14>
   13a94:	bb9ff06f          	j	1364c <_dtoa_r+0xc50>
   13a98:	00048693          	mv	a3,s1
   13a9c:	db0ff06f          	j	1304c <_dtoa_r+0x650>
   13aa0:	000a0593          	mv	a1,s4
   13aa4:	00000693          	li	a3,0
   13aa8:	00a00613          	li	a2,10
   13aac:	00040513          	mv	a0,s0
   13ab0:	1d9010ef          	jal	15488 <__multadd>
   13ab4:	03412783          	lw	a5,52(sp)
   13ab8:	00050a13          	mv	s4,a0
   13abc:	00078a93          	mv	s5,a5
   13ac0:	82f04ae3          	bgtz	a5,132f4 <_dtoa_r+0x8f8>
   13ac4:	00200793          	li	a5,2
   13ac8:	0137c663          	blt	a5,s3,13ad4 <_dtoa_r+0x10d8>
   13acc:	03412a83          	lw	s5,52(sp)
   13ad0:	825ff06f          	j	132f4 <_dtoa_r+0x8f8>
   13ad4:	03412a83          	lw	s5,52(sp)
   13ad8:	c15ff06f          	j	136ec <_dtoa_r+0xcf0>
   13adc:	00cd1713          	slli	a4,s10,0xc
   13ae0:	ee070263          	beqz	a4,131c4 <_dtoa_r+0x7c8>
   13ae4:	f94ff06f          	j	13278 <_dtoa_r+0x87c>
   13ae8:	fcc68463          	beq	a3,a2,132b0 <_dtoa_r+0x8b4>
   13aec:	03c00693          	li	a3,60
   13af0:	40f687bb          	subw	a5,a3,a5
   13af4:	945ff06f          	j	13438 <_dtoa_r+0xa3c>

0000000000013af8 <__sflush_r>:
   13af8:	01059683          	lh	a3,16(a1) # fffffffffcc00010 <_gp+0xfffffffffcbe4080>
   13afc:	fd010113          	addi	sp,sp,-48
   13b00:	00913c23          	sd	s1,24(sp)
   13b04:	03069713          	slli	a4,a3,0x30
   13b08:	03075713          	srli	a4,a4,0x30
   13b0c:	01313423          	sd	s3,8(sp)
   13b10:	02113423          	sd	ra,40(sp)
   13b14:	02813023          	sd	s0,32(sp)
   13b18:	01213823          	sd	s2,16(sp)
   13b1c:	00877793          	andi	a5,a4,8
   13b20:	00058493          	mv	s1,a1
   13b24:	00050993          	mv	s3,a0
   13b28:	0e079863          	bnez	a5,13c18 <__sflush_r+0x120>
   13b2c:	000017b7          	lui	a5,0x1
   13b30:	8007879b          	addiw	a5,a5,-2048
   13b34:	00f6e7b3          	or	a5,a3,a5
   13b38:	0107979b          	slliw	a5,a5,0x10
   13b3c:	0085a703          	lw	a4,8(a1)
   13b40:	4107d79b          	sraiw	a5,a5,0x10
   13b44:	00f59823          	sh	a5,16(a1)
   13b48:	1ae05863          	blez	a4,13cf8 <__sflush_r+0x200>
   13b4c:	0484b703          	ld	a4,72(s1)
   13b50:	0a070463          	beqz	a4,13bf8 <__sflush_r+0x100>
   13b54:	03079793          	slli	a5,a5,0x30
   13b58:	0307d793          	srli	a5,a5,0x30
   13b5c:	0009a403          	lw	s0,0(s3)
   13b60:	03379693          	slli	a3,a5,0x33
   13b64:	0009a023          	sw	zero,0(s3)
   13b68:	1806de63          	bgez	a3,13d04 <__sflush_r+0x20c>
   13b6c:	0904b603          	ld	a2,144(s1)
   13b70:	0047f793          	andi	a5,a5,4
   13b74:	00078e63          	beqz	a5,13b90 <__sflush_r+0x98>
   13b78:	0084a683          	lw	a3,8(s1)
   13b7c:	0584b783          	ld	a5,88(s1)
   13b80:	40d60633          	sub	a2,a2,a3
   13b84:	00078663          	beqz	a5,13b90 <__sflush_r+0x98>
   13b88:	0704a783          	lw	a5,112(s1)
   13b8c:	40f60633          	sub	a2,a2,a5
   13b90:	0304b583          	ld	a1,48(s1)
   13b94:	00000693          	li	a3,0
   13b98:	00098513          	mv	a0,s3
   13b9c:	000700e7          	jalr	a4
   13ba0:	fff00793          	li	a5,-1
   13ba4:	0ef50c63          	beq	a0,a5,13c9c <__sflush_r+0x1a4>
   13ba8:	0104d683          	lhu	a3,16(s1)
   13bac:	fffff7b7          	lui	a5,0xfffff
   13bb0:	7ff7879b          	addiw	a5,a5,2047
   13bb4:	0184b703          	ld	a4,24(s1)
   13bb8:	00f6f7b3          	and	a5,a3,a5
   13bbc:	0107979b          	slliw	a5,a5,0x10
   13bc0:	4107d79b          	sraiw	a5,a5,0x10
   13bc4:	00e4b023          	sd	a4,0(s1)
   13bc8:	00f49823          	sh	a5,16(s1)
   13bcc:	0004a423          	sw	zero,8(s1)
   13bd0:	03379713          	slli	a4,a5,0x33
   13bd4:	10074e63          	bltz	a4,13cf0 <__sflush_r+0x1f8>
   13bd8:	0584b583          	ld	a1,88(s1)
   13bdc:	0089a023          	sw	s0,0(s3)
   13be0:	00058c63          	beqz	a1,13bf8 <__sflush_r+0x100>
   13be4:	07448793          	addi	a5,s1,116
   13be8:	00f58663          	beq	a1,a5,13bf4 <__sflush_r+0xfc>
   13bec:	00098513          	mv	a0,s3
   13bf0:	678000ef          	jal	14268 <_free_r>
   13bf4:	0404bc23          	sd	zero,88(s1)
   13bf8:	00000513          	li	a0,0
   13bfc:	02813083          	ld	ra,40(sp)
   13c00:	02013403          	ld	s0,32(sp)
   13c04:	01813483          	ld	s1,24(sp)
   13c08:	01013903          	ld	s2,16(sp)
   13c0c:	00813983          	ld	s3,8(sp)
   13c10:	03010113          	addi	sp,sp,48
   13c14:	00008067          	ret
   13c18:	0185b903          	ld	s2,24(a1)
   13c1c:	fc090ee3          	beqz	s2,13bf8 <__sflush_r+0x100>
   13c20:	0005b403          	ld	s0,0(a1)
   13c24:	00377713          	andi	a4,a4,3
   13c28:	0125b023          	sd	s2,0(a1)
   13c2c:	4124043b          	subw	s0,s0,s2
   13c30:	00000793          	li	a5,0
   13c34:	00071463          	bnez	a4,13c3c <__sflush_r+0x144>
   13c38:	0205a783          	lw	a5,32(a1)
   13c3c:	00f4a623          	sw	a5,12(s1)
   13c40:	00804863          	bgtz	s0,13c50 <__sflush_r+0x158>
   13c44:	fb5ff06f          	j	13bf8 <__sflush_r+0x100>
   13c48:	00a90933          	add	s2,s2,a0
   13c4c:	fa8056e3          	blez	s0,13bf8 <__sflush_r+0x100>
   13c50:	0404b783          	ld	a5,64(s1)
   13c54:	0304b583          	ld	a1,48(s1)
   13c58:	00040693          	mv	a3,s0
   13c5c:	00090613          	mv	a2,s2
   13c60:	00098513          	mv	a0,s3
   13c64:	000780e7          	jalr	a5
   13c68:	40a4043b          	subw	s0,s0,a0
   13c6c:	fca04ee3          	bgtz	a0,13c48 <__sflush_r+0x150>
   13c70:	0104d783          	lhu	a5,16(s1)
   13c74:	02813083          	ld	ra,40(sp)
   13c78:	fff00513          	li	a0,-1
   13c7c:	0407e793          	ori	a5,a5,64
   13c80:	00f49823          	sh	a5,16(s1)
   13c84:	02013403          	ld	s0,32(sp)
   13c88:	01813483          	ld	s1,24(sp)
   13c8c:	01013903          	ld	s2,16(sp)
   13c90:	00813983          	ld	s3,8(sp)
   13c94:	03010113          	addi	sp,sp,48
   13c98:	00008067          	ret
   13c9c:	0009a703          	lw	a4,0(s3)
   13ca0:	01d00793          	li	a5,29
   13ca4:	fce7e6e3          	bltu	a5,a4,13c70 <__sflush_r+0x178>
   13ca8:	204007b7          	lui	a5,0x20400
   13cac:	00178793          	addi	a5,a5,1 # 20400001 <_gp+0x203e4071>
   13cb0:	00e7d7b3          	srl	a5,a5,a4
   13cb4:	0017f793          	andi	a5,a5,1
   13cb8:	fa078ce3          	beqz	a5,13c70 <__sflush_r+0x178>
   13cbc:	0104d603          	lhu	a2,16(s1)
   13cc0:	fffff7b7          	lui	a5,0xfffff
   13cc4:	7ff7879b          	addiw	a5,a5,2047
   13cc8:	0184b683          	ld	a3,24(s1)
   13ccc:	00f677b3          	and	a5,a2,a5
   13cd0:	0107979b          	slliw	a5,a5,0x10
   13cd4:	4107d79b          	sraiw	a5,a5,0x10
   13cd8:	00d4b023          	sd	a3,0(s1)
   13cdc:	00f49823          	sh	a5,16(s1)
   13ce0:	0004a423          	sw	zero,8(s1)
   13ce4:	03379693          	slli	a3,a5,0x33
   13ce8:	ee06d8e3          	bgez	a3,13bd8 <__sflush_r+0xe0>
   13cec:	ee0716e3          	bnez	a4,13bd8 <__sflush_r+0xe0>
   13cf0:	08a4b823          	sd	a0,144(s1)
   13cf4:	ee5ff06f          	j	13bd8 <__sflush_r+0xe0>
   13cf8:	0705a703          	lw	a4,112(a1)
   13cfc:	e4e048e3          	bgtz	a4,13b4c <__sflush_r+0x54>
   13d00:	ef9ff06f          	j	13bf8 <__sflush_r+0x100>
   13d04:	0304b583          	ld	a1,48(s1)
   13d08:	00000613          	li	a2,0
   13d0c:	00100693          	li	a3,1
   13d10:	00098513          	mv	a0,s3
   13d14:	000700e7          	jalr	a4
   13d18:	fff00793          	li	a5,-1
   13d1c:	00050613          	mv	a2,a0
   13d20:	00f50863          	beq	a0,a5,13d30 <__sflush_r+0x238>
   13d24:	0104d783          	lhu	a5,16(s1)
   13d28:	0484b703          	ld	a4,72(s1)
   13d2c:	e45ff06f          	j	13b70 <__sflush_r+0x78>
   13d30:	0009a783          	lw	a5,0(s3)
   13d34:	fe0788e3          	beqz	a5,13d24 <__sflush_r+0x22c>
   13d38:	01d00713          	li	a4,29
   13d3c:	00e78663          	beq	a5,a4,13d48 <__sflush_r+0x250>
   13d40:	01600713          	li	a4,22
   13d44:	00e79863          	bne	a5,a4,13d54 <__sflush_r+0x25c>
   13d48:	0089a023          	sw	s0,0(s3)
   13d4c:	00000513          	li	a0,0
   13d50:	eadff06f          	j	13bfc <__sflush_r+0x104>
   13d54:	0104d783          	lhu	a5,16(s1)
   13d58:	0407e793          	ori	a5,a5,64
   13d5c:	00f49823          	sh	a5,16(s1)
   13d60:	e9dff06f          	j	13bfc <__sflush_r+0x104>

0000000000013d64 <_fflush_r>:
   13d64:	fe010113          	addi	sp,sp,-32
   13d68:	00813823          	sd	s0,16(sp)
   13d6c:	00113c23          	sd	ra,24(sp)
   13d70:	00050413          	mv	s0,a0
   13d74:	00050663          	beqz	a0,13d80 <_fflush_r+0x1c>
   13d78:	05052783          	lw	a5,80(a0)
   13d7c:	02078a63          	beqz	a5,13db0 <_fflush_r+0x4c>
   13d80:	01059783          	lh	a5,16(a1)
   13d84:	00079c63          	bnez	a5,13d9c <_fflush_r+0x38>
   13d88:	01813083          	ld	ra,24(sp)
   13d8c:	00000513          	li	a0,0
   13d90:	01013403          	ld	s0,16(sp)
   13d94:	02010113          	addi	sp,sp,32
   13d98:	00008067          	ret
   13d9c:	00040513          	mv	a0,s0
   13da0:	01813083          	ld	ra,24(sp)
   13da4:	01013403          	ld	s0,16(sp)
   13da8:	02010113          	addi	sp,sp,32
   13dac:	d4dff06f          	j	13af8 <__sflush_r>
   13db0:	00b13423          	sd	a1,8(sp)
   13db4:	35c000ef          	jal	14110 <__sinit>
   13db8:	00813583          	ld	a1,8(sp)
   13dbc:	fc5ff06f          	j	13d80 <_fflush_r+0x1c>

0000000000013dc0 <fflush>:
   13dc0:	00050593          	mv	a1,a0
   13dc4:	00050663          	beqz	a0,13dd0 <fflush+0x10>
   13dc8:	8101b503          	ld	a0,-2032(gp) # 1b7a0 <_impure_ptr>
   13dcc:	f99ff06f          	j	13d64 <_fflush_r>
   13dd0:	8081b503          	ld	a0,-2040(gp) # 1b798 <_global_impure_ptr>
   13dd4:	000145b7          	lui	a1,0x14
   13dd8:	d6458593          	addi	a1,a1,-668 # 13d64 <_fflush_r>
   13ddc:	04d0006f          	j	14628 <_fwalk_reent>

0000000000013de0 <__fp_unlock>:
   13de0:	00000513          	li	a0,0
   13de4:	00008067          	ret

0000000000013de8 <_cleanup_r>:
   13de8:	000185b7          	lui	a1,0x18
   13dec:	b0858593          	addi	a1,a1,-1272 # 17b08 <_fclose_r>
   13df0:	0390006f          	j	14628 <_fwalk_reent>

0000000000013df4 <__sinit.part.1>:
   13df4:	fc010113          	addi	sp,sp,-64
   13df8:	000147b7          	lui	a5,0x14
   13dfc:	02113c23          	sd	ra,56(sp)
   13e00:	02813823          	sd	s0,48(sp)
   13e04:	02913423          	sd	s1,40(sp)
   13e08:	00853403          	ld	s0,8(a0)
   13e0c:	03213023          	sd	s2,32(sp)
   13e10:	01313c23          	sd	s3,24(sp)
   13e14:	01413823          	sd	s4,16(sp)
   13e18:	01513423          	sd	s5,8(sp)
   13e1c:	01613023          	sd	s6,0(sp)
   13e20:	de878793          	addi	a5,a5,-536 # 13de8 <_cleanup_r>
   13e24:	04f53c23          	sd	a5,88(a0)
   13e28:	53850713          	addi	a4,a0,1336
   13e2c:	00300793          	li	a5,3
   13e30:	52e53823          	sd	a4,1328(a0)
   13e34:	52f52423          	sw	a5,1320(a0)
   13e38:	52053023          	sd	zero,1312(a0)
   13e3c:	00400793          	li	a5,4
   13e40:	00050913          	mv	s2,a0
   13e44:	00f41823          	sh	a5,16(s0)
   13e48:	00800613          	li	a2,8
   13e4c:	00000593          	li	a1,0
   13e50:	00043023          	sd	zero,0(s0)
   13e54:	00042423          	sw	zero,8(s0)
   13e58:	00042623          	sw	zero,12(s0)
   13e5c:	0a042623          	sw	zero,172(s0)
   13e60:	00041923          	sh	zero,18(s0)
   13e64:	00043c23          	sd	zero,24(s0)
   13e68:	02042023          	sw	zero,32(s0)
   13e6c:	02042423          	sw	zero,40(s0)
   13e70:	0a440513          	addi	a0,s0,164
   13e74:	460010ef          	jal	152d4 <memset>
   13e78:	00016b37          	lui	s6,0x16
   13e7c:	01093483          	ld	s1,16(s2)
   13e80:	00016ab7          	lui	s5,0x16
   13e84:	00016a37          	lui	s4,0x16
   13e88:	000169b7          	lui	s3,0x16
   13e8c:	494b0b13          	addi	s6,s6,1172 # 16494 <__sread>
   13e90:	500a8a93          	addi	s5,s5,1280 # 16500 <__swrite>
   13e94:	570a0a13          	addi	s4,s4,1392 # 16570 <__sseek>
   13e98:	5dc98993          	addi	s3,s3,1500 # 165dc <__sclose>
   13e9c:	03643c23          	sd	s6,56(s0)
   13ea0:	05543023          	sd	s5,64(s0)
   13ea4:	05443423          	sd	s4,72(s0)
   13ea8:	05343823          	sd	s3,80(s0)
   13eac:	02843823          	sd	s0,48(s0)
   13eb0:	00900793          	li	a5,9
   13eb4:	00f49823          	sh	a5,16(s1)
   13eb8:	00100793          	li	a5,1
   13ebc:	00f49923          	sh	a5,18(s1)
   13ec0:	00800613          	li	a2,8
   13ec4:	00000593          	li	a1,0
   13ec8:	0004b023          	sd	zero,0(s1)
   13ecc:	0004a423          	sw	zero,8(s1)
   13ed0:	0004a623          	sw	zero,12(s1)
   13ed4:	0a04a623          	sw	zero,172(s1)
   13ed8:	0004bc23          	sd	zero,24(s1)
   13edc:	0204a023          	sw	zero,32(s1)
   13ee0:	0204a423          	sw	zero,40(s1)
   13ee4:	0a448513          	addi	a0,s1,164
   13ee8:	3ec010ef          	jal	152d4 <memset>
   13eec:	01893403          	ld	s0,24(s2)
   13ef0:	01200793          	li	a5,18
   13ef4:	0364bc23          	sd	s6,56(s1)
   13ef8:	0554b023          	sd	s5,64(s1)
   13efc:	0544b423          	sd	s4,72(s1)
   13f00:	0534b823          	sd	s3,80(s1)
   13f04:	0294b823          	sd	s1,48(s1)
   13f08:	00f41823          	sh	a5,16(s0)
   13f0c:	00200793          	li	a5,2
   13f10:	00f41923          	sh	a5,18(s0)
   13f14:	00043023          	sd	zero,0(s0)
   13f18:	00042423          	sw	zero,8(s0)
   13f1c:	00042623          	sw	zero,12(s0)
   13f20:	0a042623          	sw	zero,172(s0)
   13f24:	00043c23          	sd	zero,24(s0)
   13f28:	02042023          	sw	zero,32(s0)
   13f2c:	02042423          	sw	zero,40(s0)
   13f30:	0a440513          	addi	a0,s0,164
   13f34:	00800613          	li	a2,8
   13f38:	00000593          	li	a1,0
   13f3c:	398010ef          	jal	152d4 <memset>
   13f40:	03813083          	ld	ra,56(sp)
   13f44:	03643c23          	sd	s6,56(s0)
   13f48:	05543023          	sd	s5,64(s0)
   13f4c:	05443423          	sd	s4,72(s0)
   13f50:	05343823          	sd	s3,80(s0)
   13f54:	02843823          	sd	s0,48(s0)
   13f58:	00100793          	li	a5,1
   13f5c:	04f92823          	sw	a5,80(s2)
   13f60:	03013403          	ld	s0,48(sp)
   13f64:	02813483          	ld	s1,40(sp)
   13f68:	02013903          	ld	s2,32(sp)
   13f6c:	01813983          	ld	s3,24(sp)
   13f70:	01013a03          	ld	s4,16(sp)
   13f74:	00813a83          	ld	s5,8(sp)
   13f78:	00013b03          	ld	s6,0(sp)
   13f7c:	04010113          	addi	sp,sp,64
   13f80:	00008067          	ret

0000000000013f84 <__fp_lock>:
   13f84:	00000513          	li	a0,0
   13f88:	00008067          	ret

0000000000013f8c <__sfmoreglue>:
   13f8c:	fe010113          	addi	sp,sp,-32
   13f90:	fff5879b          	addiw	a5,a1,-1
   13f94:	00913423          	sd	s1,8(sp)
   13f98:	0b000493          	li	s1,176
   13f9c:	029784b3          	mul	s1,a5,s1
   13fa0:	01213023          	sd	s2,0(sp)
   13fa4:	00058913          	mv	s2,a1
   13fa8:	00813823          	sd	s0,16(sp)
   13fac:	00113c23          	sd	ra,24(sp)
   13fb0:	0c848593          	addi	a1,s1,200
   13fb4:	1a9000ef          	jal	1495c <_malloc_r>
   13fb8:	00050413          	mv	s0,a0
   13fbc:	02050063          	beqz	a0,13fdc <__sfmoreglue+0x50>
   13fc0:	01850513          	addi	a0,a0,24
   13fc4:	00043023          	sd	zero,0(s0)
   13fc8:	01242423          	sw	s2,8(s0)
   13fcc:	00a43823          	sd	a0,16(s0)
   13fd0:	0b048613          	addi	a2,s1,176
   13fd4:	00000593          	li	a1,0
   13fd8:	2fc010ef          	jal	152d4 <memset>
   13fdc:	01813083          	ld	ra,24(sp)
   13fe0:	00040513          	mv	a0,s0
   13fe4:	00813483          	ld	s1,8(sp)
   13fe8:	01013403          	ld	s0,16(sp)
   13fec:	00013903          	ld	s2,0(sp)
   13ff0:	02010113          	addi	sp,sp,32
   13ff4:	00008067          	ret

0000000000013ff8 <__sfp>:
   13ff8:	fd010113          	addi	sp,sp,-48
   13ffc:	01213823          	sd	s2,16(sp)
   14000:	8081b903          	ld	s2,-2040(gp) # 1b798 <_global_impure_ptr>
   14004:	01313423          	sd	s3,8(sp)
   14008:	02113423          	sd	ra,40(sp)
   1400c:	05092783          	lw	a5,80(s2)
   14010:	02813023          	sd	s0,32(sp)
   14014:	00913c23          	sd	s1,24(sp)
   14018:	00050993          	mv	s3,a0
   1401c:	00079663          	bnez	a5,14028 <__sfp+0x30>
   14020:	00090513          	mv	a0,s2
   14024:	dd1ff0ef          	jal	13df4 <__sinit.part.1>
   14028:	52090913          	addi	s2,s2,1312
   1402c:	fff00493          	li	s1,-1
   14030:	00892783          	lw	a5,8(s2)
   14034:	01093403          	ld	s0,16(s2)
   14038:	fff7879b          	addiw	a5,a5,-1
   1403c:	0007da63          	bgez	a5,14050 <__sfp+0x58>
   14040:	0840006f          	j	140c4 <__sfp+0xcc>
   14044:	fff7879b          	addiw	a5,a5,-1
   14048:	0b040413          	addi	s0,s0,176
   1404c:	06978c63          	beq	a5,s1,140c4 <__sfp+0xcc>
   14050:	01041703          	lh	a4,16(s0)
   14054:	fe0718e3          	bnez	a4,14044 <__sfp+0x4c>
   14058:	fff00793          	li	a5,-1
   1405c:	00f41923          	sh	a5,18(s0)
   14060:	00100793          	li	a5,1
   14064:	00f41823          	sh	a5,16(s0)
   14068:	0a042623          	sw	zero,172(s0)
   1406c:	00043023          	sd	zero,0(s0)
   14070:	00042623          	sw	zero,12(s0)
   14074:	00042423          	sw	zero,8(s0)
   14078:	00043c23          	sd	zero,24(s0)
   1407c:	02042023          	sw	zero,32(s0)
   14080:	02042423          	sw	zero,40(s0)
   14084:	00800613          	li	a2,8
   14088:	00000593          	li	a1,0
   1408c:	0a440513          	addi	a0,s0,164
   14090:	244010ef          	jal	152d4 <memset>
   14094:	00040513          	mv	a0,s0
   14098:	04043c23          	sd	zero,88(s0)
   1409c:	06042023          	sw	zero,96(s0)
   140a0:	06043c23          	sd	zero,120(s0)
   140a4:	08042023          	sw	zero,128(s0)
   140a8:	02813083          	ld	ra,40(sp)
   140ac:	02013403          	ld	s0,32(sp)
   140b0:	01813483          	ld	s1,24(sp)
   140b4:	01013903          	ld	s2,16(sp)
   140b8:	00813983          	ld	s3,8(sp)
   140bc:	03010113          	addi	sp,sp,48
   140c0:	00008067          	ret
   140c4:	00093783          	ld	a5,0(s2)
   140c8:	00078663          	beqz	a5,140d4 <__sfp+0xdc>
   140cc:	00078913          	mv	s2,a5
   140d0:	f61ff06f          	j	14030 <__sfp+0x38>
   140d4:	00400593          	li	a1,4
   140d8:	00098513          	mv	a0,s3
   140dc:	eb1ff0ef          	jal	13f8c <__sfmoreglue>
   140e0:	00a93023          	sd	a0,0(s2)
   140e4:	00050663          	beqz	a0,140f0 <__sfp+0xf8>
   140e8:	00050913          	mv	s2,a0
   140ec:	f45ff06f          	j	14030 <__sfp+0x38>
   140f0:	00c00793          	li	a5,12
   140f4:	00f9a023          	sw	a5,0(s3)
   140f8:	00000513          	li	a0,0
   140fc:	fadff06f          	j	140a8 <__sfp+0xb0>

0000000000014100 <_cleanup>:
   14100:	8081b503          	ld	a0,-2040(gp) # 1b798 <_global_impure_ptr>
   14104:	000185b7          	lui	a1,0x18
   14108:	b0858593          	addi	a1,a1,-1272 # 17b08 <_fclose_r>
   1410c:	51c0006f          	j	14628 <_fwalk_reent>

0000000000014110 <__sinit>:
   14110:	05052783          	lw	a5,80(a0)
   14114:	00078463          	beqz	a5,1411c <__sinit+0xc>
   14118:	00008067          	ret
   1411c:	cd9ff06f          	j	13df4 <__sinit.part.1>

0000000000014120 <__sfp_lock_acquire>:
   14120:	00008067          	ret

0000000000014124 <__sfp_lock_release>:
   14124:	00008067          	ret

0000000000014128 <__sinit_lock_acquire>:
   14128:	00008067          	ret

000000000001412c <__sinit_lock_release>:
   1412c:	00008067          	ret

0000000000014130 <__fp_lock_all>:
   14130:	8101b503          	ld	a0,-2032(gp) # 1b7a0 <_impure_ptr>
   14134:	000145b7          	lui	a1,0x14
   14138:	f8458593          	addi	a1,a1,-124 # 13f84 <__fp_lock>
   1413c:	43c0006f          	j	14578 <_fwalk>

0000000000014140 <__fp_unlock_all>:
   14140:	8101b503          	ld	a0,-2032(gp) # 1b7a0 <_impure_ptr>
   14144:	000145b7          	lui	a1,0x14
   14148:	de058593          	addi	a1,a1,-544 # 13de0 <__fp_unlock>
   1414c:	42c0006f          	j	14578 <_fwalk>

0000000000014150 <_malloc_trim_r>:
   14150:	fd010113          	addi	sp,sp,-48
   14154:	01213823          	sd	s2,16(sp)
   14158:	0001b937          	lui	s2,0x1b
   1415c:	02813023          	sd	s0,32(sp)
   14160:	00913c23          	sd	s1,24(sp)
   14164:	00058413          	mv	s0,a1
   14168:	01313423          	sd	s3,8(sp)
   1416c:	02113423          	sd	ra,40(sp)
   14170:	00050993          	mv	s3,a0
   14174:	f7890913          	addi	s2,s2,-136 # 1af78 <__malloc_av_>
   14178:	238010ef          	jal	153b0 <__malloc_lock>
   1417c:	01093703          	ld	a4,16(s2)
   14180:	000017b7          	lui	a5,0x1
   14184:	fdf78593          	addi	a1,a5,-33 # fdf <_ftext-0xf021>
   14188:	00873483          	ld	s1,8(a4)
   1418c:	ffc4f493          	andi	s1,s1,-4
   14190:	40848433          	sub	s0,s1,s0
   14194:	00b40433          	add	s0,s0,a1
   14198:	00c45413          	srli	s0,s0,0xc
   1419c:	fff40413          	addi	s0,s0,-1
   141a0:	00c41413          	slli	s0,s0,0xc
   141a4:	00f44c63          	blt	s0,a5,141bc <_malloc_trim_r+0x6c>
   141a8:	00000513          	li	a0,0
   141ac:	6c5040ef          	jal	19070 <sbrk>
   141b0:	01093783          	ld	a5,16(s2)
   141b4:	009787b3          	add	a5,a5,s1
   141b8:	02f50663          	beq	a0,a5,141e4 <_malloc_trim_r+0x94>
   141bc:	00098513          	mv	a0,s3
   141c0:	1f4010ef          	jal	153b4 <__malloc_unlock>
   141c4:	02813083          	ld	ra,40(sp)
   141c8:	00000513          	li	a0,0
   141cc:	02013403          	ld	s0,32(sp)
   141d0:	01813483          	ld	s1,24(sp)
   141d4:	01013903          	ld	s2,16(sp)
   141d8:	00813983          	ld	s3,8(sp)
   141dc:	03010113          	addi	sp,sp,48
   141e0:	00008067          	ret
   141e4:	40800533          	neg	a0,s0
   141e8:	689040ef          	jal	19070 <sbrk>
   141ec:	fff00793          	li	a5,-1
   141f0:	04f50463          	beq	a0,a5,14238 <_malloc_trim_r+0xe8>
   141f4:	9081a783          	lw	a5,-1784(gp) # 1b898 <__malloc_current_mallinfo>
   141f8:	01093683          	ld	a3,16(s2)
   141fc:	408484b3          	sub	s1,s1,s0
   14200:	0014e493          	ori	s1,s1,1
   14204:	4087843b          	subw	s0,a5,s0
   14208:	00098513          	mv	a0,s3
   1420c:	0096b423          	sd	s1,8(a3)
   14210:	9081a423          	sw	s0,-1784(gp) # 1b898 <__malloc_current_mallinfo>
   14214:	1a0010ef          	jal	153b4 <__malloc_unlock>
   14218:	02813083          	ld	ra,40(sp)
   1421c:	00100513          	li	a0,1
   14220:	02013403          	ld	s0,32(sp)
   14224:	01813483          	ld	s1,24(sp)
   14228:	01013903          	ld	s2,16(sp)
   1422c:	00813983          	ld	s3,8(sp)
   14230:	03010113          	addi	sp,sp,48
   14234:	00008067          	ret
   14238:	00000513          	li	a0,0
   1423c:	635040ef          	jal	19070 <sbrk>
   14240:	01093703          	ld	a4,16(s2)
   14244:	01f00693          	li	a3,31
   14248:	40e507b3          	sub	a5,a0,a4
   1424c:	f6f6d8e3          	ble	a5,a3,141bc <_malloc_trim_r+0x6c>
   14250:	8281b683          	ld	a3,-2008(gp) # 1b7b8 <__malloc_sbrk_base>
   14254:	0017e793          	ori	a5,a5,1
   14258:	00f73423          	sd	a5,8(a4)
   1425c:	40d50533          	sub	a0,a0,a3
   14260:	90a1a423          	sw	a0,-1784(gp) # 1b898 <__malloc_current_mallinfo>
   14264:	f59ff06f          	j	141bc <_malloc_trim_r+0x6c>

0000000000014268 <_free_r>:
   14268:	10058263          	beqz	a1,1436c <_free_r+0x104>
   1426c:	fe010113          	addi	sp,sp,-32
   14270:	00813823          	sd	s0,16(sp)
   14274:	00913423          	sd	s1,8(sp)
   14278:	00058413          	mv	s0,a1
   1427c:	00050493          	mv	s1,a0
   14280:	00113c23          	sd	ra,24(sp)
   14284:	12c010ef          	jal	153b0 <__malloc_lock>
   14288:	ff843503          	ld	a0,-8(s0)
   1428c:	ff040693          	addi	a3,s0,-16
   14290:	0001b5b7          	lui	a1,0x1b
   14294:	ffe57793          	andi	a5,a0,-2
   14298:	00f68633          	add	a2,a3,a5
   1429c:	f7858593          	addi	a1,a1,-136 # 1af78 <__malloc_av_>
   142a0:	00863703          	ld	a4,8(a2)
   142a4:	0105b803          	ld	a6,16(a1)
   142a8:	ffc77713          	andi	a4,a4,-4
   142ac:	17060663          	beq	a2,a6,14418 <_free_r+0x1b0>
   142b0:	00e63423          	sd	a4,8(a2)
   142b4:	00157513          	andi	a0,a0,1
   142b8:	02051663          	bnez	a0,142e4 <_free_r+0x7c>
   142bc:	ff043503          	ld	a0,-16(s0)
   142c0:	40a686b3          	sub	a3,a3,a0
   142c4:	0106b803          	ld	a6,16(a3)
   142c8:	00a787b3          	add	a5,a5,a0
   142cc:	0001b537          	lui	a0,0x1b
   142d0:	f8850513          	addi	a0,a0,-120 # 1af88 <__malloc_av_+0x10>
   142d4:	18a80863          	beq	a6,a0,14464 <_free_r+0x1fc>
   142d8:	0186b503          	ld	a0,24(a3)
   142dc:	00a83c23          	sd	a0,24(a6)
   142e0:	01053823          	sd	a6,16(a0)
   142e4:	00e60533          	add	a0,a2,a4
   142e8:	00853503          	ld	a0,8(a0)
   142ec:	00157513          	andi	a0,a0,1
   142f0:	0e050a63          	beqz	a0,143e4 <_free_r+0x17c>
   142f4:	0017e713          	ori	a4,a5,1
   142f8:	00e6b423          	sd	a4,8(a3)
   142fc:	00f68733          	add	a4,a3,a5
   14300:	00f73023          	sd	a5,0(a4)
   14304:	1ff00713          	li	a4,511
   14308:	06f76463          	bltu	a4,a5,14370 <_free_r+0x108>
   1430c:	0037d793          	srli	a5,a5,0x3
   14310:	0007879b          	sext.w	a5,a5
   14314:	0017871b          	addiw	a4,a5,1
   14318:	0017171b          	slliw	a4,a4,0x1
   1431c:	00371713          	slli	a4,a4,0x3
   14320:	0085b603          	ld	a2,8(a1)
   14324:	00e58733          	add	a4,a1,a4
   14328:	00073803          	ld	a6,0(a4)
   1432c:	4027d79b          	sraiw	a5,a5,0x2
   14330:	00100513          	li	a0,1
   14334:	00f517b3          	sll	a5,a0,a5
   14338:	00c7e7b3          	or	a5,a5,a2
   1433c:	ff070613          	addi	a2,a4,-16
   14340:	00c6bc23          	sd	a2,24(a3)
   14344:	0106b823          	sd	a6,16(a3)
   14348:	00f5b423          	sd	a5,8(a1)
   1434c:	00d73023          	sd	a3,0(a4)
   14350:	00d83c23          	sd	a3,24(a6)
   14354:	00048513          	mv	a0,s1
   14358:	01813083          	ld	ra,24(sp)
   1435c:	01013403          	ld	s0,16(sp)
   14360:	00813483          	ld	s1,8(sp)
   14364:	02010113          	addi	sp,sp,32
   14368:	04c0106f          	j	153b4 <__malloc_unlock>
   1436c:	00008067          	ret
   14370:	0097d713          	srli	a4,a5,0x9
   14374:	00400613          	li	a2,4
   14378:	12e66263          	bltu	a2,a4,1449c <_free_r+0x234>
   1437c:	0067d713          	srli	a4,a5,0x6
   14380:	0007071b          	sext.w	a4,a4
   14384:	0397051b          	addiw	a0,a4,57
   14388:	0387061b          	addiw	a2,a4,56
   1438c:	0015151b          	slliw	a0,a0,0x1
   14390:	00351513          	slli	a0,a0,0x3
   14394:	00a58533          	add	a0,a1,a0
   14398:	00053703          	ld	a4,0(a0)
   1439c:	ff050513          	addi	a0,a0,-16
   143a0:	10e50c63          	beq	a0,a4,144b8 <_free_r+0x250>
   143a4:	00873603          	ld	a2,8(a4)
   143a8:	ffc67613          	andi	a2,a2,-4
   143ac:	00c7f663          	bleu	a2,a5,143b8 <_free_r+0x150>
   143b0:	01073703          	ld	a4,16(a4)
   143b4:	fee518e3          	bne	a0,a4,143a4 <_free_r+0x13c>
   143b8:	01873503          	ld	a0,24(a4)
   143bc:	00a6bc23          	sd	a0,24(a3)
   143c0:	00e6b823          	sd	a4,16(a3)
   143c4:	00d53823          	sd	a3,16(a0)
   143c8:	01813083          	ld	ra,24(sp)
   143cc:	00048513          	mv	a0,s1
   143d0:	01013403          	ld	s0,16(sp)
   143d4:	00813483          	ld	s1,8(sp)
   143d8:	00d73c23          	sd	a3,24(a4)
   143dc:	02010113          	addi	sp,sp,32
   143e0:	7d50006f          	j	153b4 <__malloc_unlock>
   143e4:	01063503          	ld	a0,16(a2)
   143e8:	00e787b3          	add	a5,a5,a4
   143ec:	0001b737          	lui	a4,0x1b
   143f0:	f8870713          	addi	a4,a4,-120 # 1af88 <__malloc_av_+0x10>
   143f4:	0ee50263          	beq	a0,a4,144d8 <_free_r+0x270>
   143f8:	01863803          	ld	a6,24(a2)
   143fc:	0017e613          	ori	a2,a5,1
   14400:	00f68733          	add	a4,a3,a5
   14404:	01053c23          	sd	a6,24(a0)
   14408:	00a83823          	sd	a0,16(a6)
   1440c:	00c6b423          	sd	a2,8(a3)
   14410:	00f73023          	sd	a5,0(a4)
   14414:	ef1ff06f          	j	14304 <_free_r+0x9c>
   14418:	00157513          	andi	a0,a0,1
   1441c:	00e787b3          	add	a5,a5,a4
   14420:	02051063          	bnez	a0,14440 <_free_r+0x1d8>
   14424:	ff043503          	ld	a0,-16(s0)
   14428:	40a686b3          	sub	a3,a3,a0
   1442c:	0186b703          	ld	a4,24(a3)
   14430:	0106b603          	ld	a2,16(a3)
   14434:	00a787b3          	add	a5,a5,a0
   14438:	00e63c23          	sd	a4,24(a2)
   1443c:	00c73823          	sd	a2,16(a4)
   14440:	0017e613          	ori	a2,a5,1
   14444:	8301b703          	ld	a4,-2000(gp) # 1b7c0 <__malloc_trim_threshold>
   14448:	00c6b423          	sd	a2,8(a3)
   1444c:	00d5b823          	sd	a3,16(a1)
   14450:	f0e7e2e3          	bltu	a5,a4,14354 <_free_r+0xec>
   14454:	8c01b583          	ld	a1,-1856(gp) # 1b850 <__malloc_top_pad>
   14458:	00048513          	mv	a0,s1
   1445c:	cf5ff0ef          	jal	14150 <_malloc_trim_r>
   14460:	ef5ff06f          	j	14354 <_free_r+0xec>
   14464:	00e605b3          	add	a1,a2,a4
   14468:	0085b583          	ld	a1,8(a1)
   1446c:	0015f593          	andi	a1,a1,1
   14470:	0e059a63          	bnez	a1,14564 <_free_r+0x2fc>
   14474:	01063583          	ld	a1,16(a2)
   14478:	01863603          	ld	a2,24(a2)
   1447c:	00f707b3          	add	a5,a4,a5
   14480:	0017e713          	ori	a4,a5,1
   14484:	00c5bc23          	sd	a2,24(a1)
   14488:	00b63823          	sd	a1,16(a2)
   1448c:	00e6b423          	sd	a4,8(a3)
   14490:	00f686b3          	add	a3,a3,a5
   14494:	00f6b023          	sd	a5,0(a3)
   14498:	ebdff06f          	j	14354 <_free_r+0xec>
   1449c:	01400613          	li	a2,20
   144a0:	04e66e63          	bltu	a2,a4,144fc <_free_r+0x294>
   144a4:	0007071b          	sext.w	a4,a4
   144a8:	05c7051b          	addiw	a0,a4,92
   144ac:	05b7061b          	addiw	a2,a4,91
   144b0:	0015151b          	slliw	a0,a0,0x1
   144b4:	eddff06f          	j	14390 <_free_r+0x128>
   144b8:	0085b783          	ld	a5,8(a1)
   144bc:	4026571b          	sraiw	a4,a2,0x2
   144c0:	00100613          	li	a2,1
   144c4:	00e61733          	sll	a4,a2,a4
   144c8:	00f767b3          	or	a5,a4,a5
   144cc:	00f5b423          	sd	a5,8(a1)
   144d0:	00050713          	mv	a4,a0
   144d4:	ee9ff06f          	j	143bc <_free_r+0x154>
   144d8:	02d5b423          	sd	a3,40(a1)
   144dc:	02d5b023          	sd	a3,32(a1)
   144e0:	0017e713          	ori	a4,a5,1
   144e4:	00a6bc23          	sd	a0,24(a3)
   144e8:	00a6b823          	sd	a0,16(a3)
   144ec:	00e6b423          	sd	a4,8(a3)
   144f0:	00f686b3          	add	a3,a3,a5
   144f4:	00f6b023          	sd	a5,0(a3)
   144f8:	e5dff06f          	j	14354 <_free_r+0xec>
   144fc:	05400613          	li	a2,84
   14500:	00e66e63          	bltu	a2,a4,1451c <_free_r+0x2b4>
   14504:	00c7d713          	srli	a4,a5,0xc
   14508:	0007071b          	sext.w	a4,a4
   1450c:	06f7051b          	addiw	a0,a4,111
   14510:	06e7061b          	addiw	a2,a4,110
   14514:	0015151b          	slliw	a0,a0,0x1
   14518:	e79ff06f          	j	14390 <_free_r+0x128>
   1451c:	15400613          	li	a2,340
   14520:	00e66e63          	bltu	a2,a4,1453c <_free_r+0x2d4>
   14524:	00f7d713          	srli	a4,a5,0xf
   14528:	0007071b          	sext.w	a4,a4
   1452c:	0787051b          	addiw	a0,a4,120
   14530:	0777061b          	addiw	a2,a4,119
   14534:	0015151b          	slliw	a0,a0,0x1
   14538:	e59ff06f          	j	14390 <_free_r+0x128>
   1453c:	55400813          	li	a6,1364
   14540:	0fe00513          	li	a0,254
   14544:	07e00613          	li	a2,126
   14548:	e4e864e3          	bltu	a6,a4,14390 <_free_r+0x128>
   1454c:	0127d713          	srli	a4,a5,0x12
   14550:	0007071b          	sext.w	a4,a4
   14554:	07d7051b          	addiw	a0,a4,125
   14558:	07c7061b          	addiw	a2,a4,124
   1455c:	0015151b          	slliw	a0,a0,0x1
   14560:	e31ff06f          	j	14390 <_free_r+0x128>
   14564:	0017e713          	ori	a4,a5,1
   14568:	00e6b423          	sd	a4,8(a3)
   1456c:	00f686b3          	add	a3,a3,a5
   14570:	00f6b023          	sd	a5,0(a3)
   14574:	de1ff06f          	j	14354 <_free_r+0xec>

0000000000014578 <_fwalk>:
   14578:	fc010113          	addi	sp,sp,-64
   1457c:	01513423          	sd	s5,8(sp)
   14580:	02113c23          	sd	ra,56(sp)
   14584:	02813823          	sd	s0,48(sp)
   14588:	02913423          	sd	s1,40(sp)
   1458c:	03213023          	sd	s2,32(sp)
   14590:	01313c23          	sd	s3,24(sp)
   14594:	01413823          	sd	s4,16(sp)
   14598:	01613023          	sd	s6,0(sp)
   1459c:	52050a93          	addi	s5,a0,1312
   145a0:	080a8063          	beqz	s5,14620 <_fwalk+0xa8>
   145a4:	00058b13          	mv	s6,a1
   145a8:	00000a13          	li	s4,0
   145ac:	00100993          	li	s3,1
   145b0:	fff00913          	li	s2,-1
   145b4:	008aa483          	lw	s1,8(s5)
   145b8:	010ab403          	ld	s0,16(s5)
   145bc:	fff4849b          	addiw	s1,s1,-1
   145c0:	0204c663          	bltz	s1,145ec <_fwalk+0x74>
   145c4:	01045783          	lhu	a5,16(s0)
   145c8:	fff4849b          	addiw	s1,s1,-1
   145cc:	00f9fc63          	bleu	a5,s3,145e4 <_fwalk+0x6c>
   145d0:	01241783          	lh	a5,18(s0)
   145d4:	00040513          	mv	a0,s0
   145d8:	01278663          	beq	a5,s2,145e4 <_fwalk+0x6c>
   145dc:	000b00e7          	jalr	s6
   145e0:	00aa6a33          	or	s4,s4,a0
   145e4:	0b040413          	addi	s0,s0,176
   145e8:	fd249ee3          	bne	s1,s2,145c4 <_fwalk+0x4c>
   145ec:	000aba83          	ld	s5,0(s5)
   145f0:	fc0a92e3          	bnez	s5,145b4 <_fwalk+0x3c>
   145f4:	03813083          	ld	ra,56(sp)
   145f8:	000a0513          	mv	a0,s4
   145fc:	03013403          	ld	s0,48(sp)
   14600:	02813483          	ld	s1,40(sp)
   14604:	02013903          	ld	s2,32(sp)
   14608:	01813983          	ld	s3,24(sp)
   1460c:	01013a03          	ld	s4,16(sp)
   14610:	00813a83          	ld	s5,8(sp)
   14614:	00013b03          	ld	s6,0(sp)
   14618:	04010113          	addi	sp,sp,64
   1461c:	00008067          	ret
   14620:	00000a13          	li	s4,0
   14624:	fd1ff06f          	j	145f4 <_fwalk+0x7c>

0000000000014628 <_fwalk_reent>:
   14628:	fb010113          	addi	sp,sp,-80
   1462c:	01613823          	sd	s6,16(sp)
   14630:	04113423          	sd	ra,72(sp)
   14634:	04813023          	sd	s0,64(sp)
   14638:	02913c23          	sd	s1,56(sp)
   1463c:	03213823          	sd	s2,48(sp)
   14640:	03313423          	sd	s3,40(sp)
   14644:	03413023          	sd	s4,32(sp)
   14648:	01513c23          	sd	s5,24(sp)
   1464c:	01713423          	sd	s7,8(sp)
   14650:	52050b13          	addi	s6,a0,1312
   14654:	080b0663          	beqz	s6,146e0 <_fwalk_reent+0xb8>
   14658:	00058b93          	mv	s7,a1
   1465c:	00050a93          	mv	s5,a0
   14660:	00000a13          	li	s4,0
   14664:	00100993          	li	s3,1
   14668:	fff00913          	li	s2,-1
   1466c:	008b2483          	lw	s1,8(s6)
   14670:	010b3403          	ld	s0,16(s6)
   14674:	fff4849b          	addiw	s1,s1,-1
   14678:	0204c863          	bltz	s1,146a8 <_fwalk_reent+0x80>
   1467c:	01045783          	lhu	a5,16(s0)
   14680:	fff4849b          	addiw	s1,s1,-1
   14684:	00f9fe63          	bleu	a5,s3,146a0 <_fwalk_reent+0x78>
   14688:	01241783          	lh	a5,18(s0)
   1468c:	00040593          	mv	a1,s0
   14690:	000a8513          	mv	a0,s5
   14694:	01278663          	beq	a5,s2,146a0 <_fwalk_reent+0x78>
   14698:	000b80e7          	jalr	s7
   1469c:	00aa6a33          	or	s4,s4,a0
   146a0:	0b040413          	addi	s0,s0,176
   146a4:	fd249ce3          	bne	s1,s2,1467c <_fwalk_reent+0x54>
   146a8:	000b3b03          	ld	s6,0(s6)
   146ac:	fc0b10e3          	bnez	s6,1466c <_fwalk_reent+0x44>
   146b0:	04813083          	ld	ra,72(sp)
   146b4:	000a0513          	mv	a0,s4
   146b8:	04013403          	ld	s0,64(sp)
   146bc:	03813483          	ld	s1,56(sp)
   146c0:	03013903          	ld	s2,48(sp)
   146c4:	02813983          	ld	s3,40(sp)
   146c8:	02013a03          	ld	s4,32(sp)
   146cc:	01813a83          	ld	s5,24(sp)
   146d0:	01013b03          	ld	s6,16(sp)
   146d4:	00813b83          	ld	s7,8(sp)
   146d8:	05010113          	addi	sp,sp,80
   146dc:	00008067          	ret
   146e0:	00000a13          	li	s4,0
   146e4:	fcdff06f          	j	146b0 <_fwalk_reent+0x88>

00000000000146e8 <_setlocale_r>:
   146e8:	fe010113          	addi	sp,sp,-32
   146ec:	00913423          	sd	s1,8(sp)
   146f0:	00113c23          	sd	ra,24(sp)
   146f4:	00813823          	sd	s0,16(sp)
   146f8:	000194b7          	lui	s1,0x19
   146fc:	02060063          	beqz	a2,1471c <_setlocale_r+0x34>
   14700:	000195b7          	lui	a1,0x19
   14704:	6d058593          	addi	a1,a1,1744 # 196d0 <zeroes.4137+0x90>
   14708:	00060513          	mv	a0,a2
   1470c:	00060413          	mv	s0,a2
   14710:	6d5010ef          	jal	165e4 <strcmp>
   14714:	000194b7          	lui	s1,0x19
   14718:	00051e63          	bnez	a0,14734 <_setlocale_r+0x4c>
   1471c:	65048513          	addi	a0,s1,1616 # 19650 <zeroes.4137+0x10>
   14720:	01813083          	ld	ra,24(sp)
   14724:	01013403          	ld	s0,16(sp)
   14728:	00813483          	ld	s1,8(sp)
   1472c:	02010113          	addi	sp,sp,32
   14730:	00008067          	ret
   14734:	65048593          	addi	a1,s1,1616
   14738:	00040513          	mv	a0,s0
   1473c:	6a9010ef          	jal	165e4 <strcmp>
   14740:	fc050ee3          	beqz	a0,1471c <_setlocale_r+0x34>
   14744:	000195b7          	lui	a1,0x19
   14748:	68858593          	addi	a1,a1,1672 # 19688 <zeroes.4137+0x48>
   1474c:	00040513          	mv	a0,s0
   14750:	695010ef          	jal	165e4 <strcmp>
   14754:	fc0504e3          	beqz	a0,1471c <_setlocale_r+0x34>
   14758:	00000513          	li	a0,0
   1475c:	fc5ff06f          	j	14720 <_setlocale_r+0x38>

0000000000014760 <__locale_charset>:
   14760:	0001b537          	lui	a0,0x1b
   14764:	ed850513          	addi	a0,a0,-296 # 1aed8 <lc_ctype_charset>
   14768:	00008067          	ret

000000000001476c <__locale_mb_cur_max>:
   1476c:	8201a503          	lw	a0,-2016(gp) # 1b7b0 <__mb_cur_max>
   14770:	00008067          	ret

0000000000014774 <__locale_msgcharset>:
   14774:	0001b537          	lui	a0,0x1b
   14778:	ef850513          	addi	a0,a0,-264 # 1aef8 <lc_message_charset>
   1477c:	00008067          	ret

0000000000014780 <__locale_cjk_lang>:
   14780:	00000513          	li	a0,0
   14784:	00008067          	ret

0000000000014788 <_localeconv_r>:
   14788:	0001b537          	lui	a0,0x1b
   1478c:	f1850513          	addi	a0,a0,-232 # 1af18 <lconv>
   14790:	00008067          	ret

0000000000014794 <setlocale>:
   14794:	00058613          	mv	a2,a1
   14798:	00050593          	mv	a1,a0
   1479c:	8101b503          	ld	a0,-2032(gp) # 1b7a0 <_impure_ptr>
   147a0:	f49ff06f          	j	146e8 <_setlocale_r>

00000000000147a4 <localeconv>:
   147a4:	0001b537          	lui	a0,0x1b
   147a8:	f1850513          	addi	a0,a0,-232 # 1af18 <lconv>
   147ac:	00008067          	ret

00000000000147b0 <__smakebuf_r>:
   147b0:	01059783          	lh	a5,16(a1)
   147b4:	f5010113          	addi	sp,sp,-176
   147b8:	08913c23          	sd	s1,152(sp)
   147bc:	03079493          	slli	s1,a5,0x30
   147c0:	0304d493          	srli	s1,s1,0x30
   147c4:	0a113423          	sd	ra,168(sp)
   147c8:	0a813023          	sd	s0,160(sp)
   147cc:	09213823          	sd	s2,144(sp)
   147d0:	09313423          	sd	s3,136(sp)
   147d4:	0024f713          	andi	a4,s1,2
   147d8:	0e071063          	bnez	a4,148b8 <__smakebuf_r+0x108>
   147dc:	00050913          	mv	s2,a0
   147e0:	01259503          	lh	a0,18(a1)
   147e4:	00058413          	mv	s0,a1
   147e8:	04054c63          	bltz	a0,14840 <__smakebuf_r+0x90>
   147ec:	00010593          	mv	a1,sp
   147f0:	5b4040ef          	jal	18da4 <fstat>
   147f4:	04054063          	bltz	a0,14834 <__smakebuf_r+0x84>
   147f8:	01012703          	lw	a4,16(sp)
   147fc:	0000f7b7          	lui	a5,0xf
   14800:	ffffe9b7          	lui	s3,0xffffe
   14804:	00f777b3          	and	a5,a4,a5
   14808:	013789bb          	addw	s3,a5,s3
   1480c:	00008737          	lui	a4,0x8
   14810:	0019b993          	seqz	s3,s3
   14814:	0ce78a63          	beq	a5,a4,148e8 <__smakebuf_r+0x138>
   14818:	01045703          	lhu	a4,16(s0)
   1481c:	000017b7          	lui	a5,0x1
   14820:	8007879b          	addiw	a5,a5,-2048
   14824:	00f767b3          	or	a5,a4,a5
   14828:	00f41823          	sh	a5,16(s0)
   1482c:	40000493          	li	s1,1024
   14830:	0340006f          	j	14864 <__smakebuf_r+0xb4>
   14834:	01041783          	lh	a5,16(s0)
   14838:	03079493          	slli	s1,a5,0x30
   1483c:	0304d493          	srli	s1,s1,0x30
   14840:	03849493          	slli	s1,s1,0x38
   14844:	00001737          	lui	a4,0x1
   14848:	43f4d493          	srai	s1,s1,0x3f
   1484c:	8007071b          	addiw	a4,a4,-2048
   14850:	c404f493          	andi	s1,s1,-960
   14854:	00e7e7b3          	or	a5,a5,a4
   14858:	40048493          	addi	s1,s1,1024
   1485c:	00f41823          	sh	a5,16(s0)
   14860:	00000993          	li	s3,0
   14864:	00048593          	mv	a1,s1
   14868:	00090513          	mv	a0,s2
   1486c:	0f0000ef          	jal	1495c <_malloc_r>
   14870:	0c050063          	beqz	a0,14930 <__smakebuf_r+0x180>
   14874:	01045783          	lhu	a5,16(s0)
   14878:	00014737          	lui	a4,0x14
   1487c:	de870713          	addi	a4,a4,-536 # 13de8 <_cleanup_r>
   14880:	04e93c23          	sd	a4,88(s2)
   14884:	0807e793          	ori	a5,a5,128
   14888:	00f41823          	sh	a5,16(s0)
   1488c:	00a43023          	sd	a0,0(s0)
   14890:	00a43c23          	sd	a0,24(s0)
   14894:	02942023          	sw	s1,32(s0)
   14898:	06099e63          	bnez	s3,14914 <__smakebuf_r+0x164>
   1489c:	0a813083          	ld	ra,168(sp)
   148a0:	0a013403          	ld	s0,160(sp)
   148a4:	09813483          	ld	s1,152(sp)
   148a8:	09013903          	ld	s2,144(sp)
   148ac:	08813983          	ld	s3,136(sp)
   148b0:	0b010113          	addi	sp,sp,176
   148b4:	00008067          	ret
   148b8:	0a813083          	ld	ra,168(sp)
   148bc:	07758793          	addi	a5,a1,119
   148c0:	00f5b023          	sd	a5,0(a1)
   148c4:	00f5bc23          	sd	a5,24(a1)
   148c8:	00100793          	li	a5,1
   148cc:	0a013403          	ld	s0,160(sp)
   148d0:	09813483          	ld	s1,152(sp)
   148d4:	09013903          	ld	s2,144(sp)
   148d8:	08813983          	ld	s3,136(sp)
   148dc:	02f5a023          	sw	a5,32(a1)
   148e0:	0b010113          	addi	sp,sp,176
   148e4:	00008067          	ret
   148e8:	04843703          	ld	a4,72(s0)
   148ec:	000167b7          	lui	a5,0x16
   148f0:	57078793          	addi	a5,a5,1392 # 16570 <__sseek>
   148f4:	f2f712e3          	bne	a4,a5,14818 <__smakebuf_r+0x68>
   148f8:	01045783          	lhu	a5,16(s0)
   148fc:	40000713          	li	a4,1024
   14900:	08e42423          	sw	a4,136(s0)
   14904:	00e7e7b3          	or	a5,a5,a4
   14908:	00f41823          	sh	a5,16(s0)
   1490c:	40000493          	li	s1,1024
   14910:	f55ff06f          	j	14864 <__smakebuf_r+0xb4>
   14914:	01241503          	lh	a0,18(s0)
   14918:	618040ef          	jal	18f30 <isatty>
   1491c:	f80500e3          	beqz	a0,1489c <__smakebuf_r+0xec>
   14920:	01045783          	lhu	a5,16(s0)
   14924:	0017e793          	ori	a5,a5,1
   14928:	00f41823          	sh	a5,16(s0)
   1492c:	f71ff06f          	j	1489c <__smakebuf_r+0xec>
   14930:	01041783          	lh	a5,16(s0)
   14934:	2007f713          	andi	a4,a5,512
   14938:	f60712e3          	bnez	a4,1489c <__smakebuf_r+0xec>
   1493c:	0027e793          	ori	a5,a5,2
   14940:	07740713          	addi	a4,s0,119
   14944:	00f41823          	sh	a5,16(s0)
   14948:	00100793          	li	a5,1
   1494c:	00e43023          	sd	a4,0(s0)
   14950:	00e43c23          	sd	a4,24(s0)
   14954:	02f42023          	sw	a5,32(s0)
   14958:	f45ff06f          	j	1489c <__smakebuf_r+0xec>

000000000001495c <_malloc_r>:
   1495c:	fa010113          	addi	sp,sp,-96
   14960:	04913423          	sd	s1,72(sp)
   14964:	03313c23          	sd	s3,56(sp)
   14968:	04113c23          	sd	ra,88(sp)
   1496c:	04813823          	sd	s0,80(sp)
   14970:	05213023          	sd	s2,64(sp)
   14974:	03413823          	sd	s4,48(sp)
   14978:	03513423          	sd	s5,40(sp)
   1497c:	03613023          	sd	s6,32(sp)
   14980:	01713c23          	sd	s7,24(sp)
   14984:	01813823          	sd	s8,16(sp)
   14988:	01913423          	sd	s9,8(sp)
   1498c:	01758493          	addi	s1,a1,23
   14990:	02e00793          	li	a5,46
   14994:	00050993          	mv	s3,a0
   14998:	1c97fa63          	bleu	s1,a5,14b6c <_malloc_r+0x210>
   1499c:	800007b7          	lui	a5,0x80000
   149a0:	ff04f493          	andi	s1,s1,-16
   149a4:	fff7c793          	not	a5,a5
   149a8:	2497ee63          	bltu	a5,s1,14c04 <_malloc_r+0x2a8>
   149ac:	24b4ec63          	bltu	s1,a1,14c04 <_malloc_r+0x2a8>
   149b0:	201000ef          	jal	153b0 <__malloc_lock>
   149b4:	1f700793          	li	a5,503
   149b8:	7097f063          	bleu	s1,a5,150b8 <_malloc_r+0x75c>
   149bc:	0094d793          	srli	a5,s1,0x9
   149c0:	08000693          	li	a3,128
   149c4:	04000513          	li	a0,64
   149c8:	03f00593          	li	a1,63
   149cc:	24079463          	bnez	a5,14c14 <_malloc_r+0x2b8>
   149d0:	0001b937          	lui	s2,0x1b
   149d4:	f7890913          	addi	s2,s2,-136 # 1af78 <__malloc_av_>
   149d8:	00369693          	slli	a3,a3,0x3
   149dc:	00d906b3          	add	a3,s2,a3
   149e0:	0086b403          	ld	s0,8(a3)
   149e4:	ff068693          	addi	a3,a3,-16
   149e8:	24868663          	beq	a3,s0,14c34 <_malloc_r+0x2d8>
   149ec:	00843783          	ld	a5,8(s0)
   149f0:	01f00613          	li	a2,31
   149f4:	ffc7f793          	andi	a5,a5,-4
   149f8:	40978733          	sub	a4,a5,s1
   149fc:	02e64063          	blt	a2,a4,14a1c <_malloc_r+0xc0>
   14a00:	22075e63          	bgez	a4,14c3c <_malloc_r+0x2e0>
   14a04:	01843403          	ld	s0,24(s0)
   14a08:	22868663          	beq	a3,s0,14c34 <_malloc_r+0x2d8>
   14a0c:	00843783          	ld	a5,8(s0)
   14a10:	ffc7f793          	andi	a5,a5,-4
   14a14:	40978733          	sub	a4,a5,s1
   14a18:	fee654e3          	ble	a4,a2,14a00 <_malloc_r+0xa4>
   14a1c:	00058693          	mv	a3,a1
   14a20:	02093403          	ld	s0,32(s2)
   14a24:	01090813          	addi	a6,s2,16
   14a28:	47040a63          	beq	s0,a6,14e9c <_malloc_r+0x540>
   14a2c:	00843783          	ld	a5,8(s0)
   14a30:	01f00613          	li	a2,31
   14a34:	ffc7f793          	andi	a5,a5,-4
   14a38:	40978733          	sub	a4,a5,s1
   14a3c:	44e64a63          	blt	a2,a4,14e90 <_malloc_r+0x534>
   14a40:	03093423          	sd	a6,40(s2)
   14a44:	03093023          	sd	a6,32(s2)
   14a48:	20075063          	bgez	a4,14c48 <_malloc_r+0x2ec>
   14a4c:	1ff00713          	li	a4,511
   14a50:	3cf76c63          	bltu	a4,a5,14e28 <_malloc_r+0x4cc>
   14a54:	0037d793          	srli	a5,a5,0x3
   14a58:	0007879b          	sext.w	a5,a5
   14a5c:	0017861b          	addiw	a2,a5,1
   14a60:	0016161b          	slliw	a2,a2,0x1
   14a64:	00361613          	slli	a2,a2,0x3
   14a68:	00893703          	ld	a4,8(s2)
   14a6c:	00c90633          	add	a2,s2,a2
   14a70:	00063503          	ld	a0,0(a2)
   14a74:	4027d79b          	sraiw	a5,a5,0x2
   14a78:	00100593          	li	a1,1
   14a7c:	00f597b3          	sll	a5,a1,a5
   14a80:	00e7e7b3          	or	a5,a5,a4
   14a84:	ff060713          	addi	a4,a2,-16
   14a88:	00e43c23          	sd	a4,24(s0)
   14a8c:	00a43823          	sd	a0,16(s0)
   14a90:	00f93423          	sd	a5,8(s2)
   14a94:	00863023          	sd	s0,0(a2)
   14a98:	00853c23          	sd	s0,24(a0)
   14a9c:	4026d61b          	sraiw	a2,a3,0x2
   14aa0:	00100713          	li	a4,1
   14aa4:	00c71633          	sll	a2,a4,a2
   14aa8:	1cc7e063          	bltu	a5,a2,14c68 <_malloc_r+0x30c>
   14aac:	00f67733          	and	a4,a2,a5
   14ab0:	02071463          	bnez	a4,14ad8 <_malloc_r+0x17c>
   14ab4:	00161613          	slli	a2,a2,0x1
   14ab8:	ffc6f693          	andi	a3,a3,-4
   14abc:	00f67733          	and	a4,a2,a5
   14ac0:	0046869b          	addiw	a3,a3,4
   14ac4:	00071a63          	bnez	a4,14ad8 <_malloc_r+0x17c>
   14ac8:	00161613          	slli	a2,a2,0x1
   14acc:	00f67733          	and	a4,a2,a5
   14ad0:	0046869b          	addiw	a3,a3,4
   14ad4:	fe070ae3          	beqz	a4,14ac8 <_malloc_r+0x16c>
   14ad8:	01f00513          	li	a0,31
   14adc:	0016889b          	addiw	a7,a3,1
   14ae0:	0018989b          	slliw	a7,a7,0x1
   14ae4:	00389893          	slli	a7,a7,0x3
   14ae8:	011908b3          	add	a7,s2,a7
   14aec:	ff088893          	addi	a7,a7,-16
   14af0:	00088593          	mv	a1,a7
   14af4:	00068313          	mv	t1,a3
   14af8:	0185b403          	ld	s0,24(a1)
   14afc:	00859a63          	bne	a1,s0,14b10 <_malloc_r+0x1b4>
   14b00:	3a40006f          	j	14ea4 <_malloc_r+0x548>
   14b04:	3c075263          	bgez	a4,14ec8 <_malloc_r+0x56c>
   14b08:	01843403          	ld	s0,24(s0)
   14b0c:	38858c63          	beq	a1,s0,14ea4 <_malloc_r+0x548>
   14b10:	00843783          	ld	a5,8(s0)
   14b14:	ffc7f793          	andi	a5,a5,-4
   14b18:	40978733          	sub	a4,a5,s1
   14b1c:	fee554e3          	ble	a4,a0,14b04 <_malloc_r+0x1a8>
   14b20:	01843783          	ld	a5,24(s0)
   14b24:	01043683          	ld	a3,16(s0)
   14b28:	0014e613          	ori	a2,s1,1
   14b2c:	00c43423          	sd	a2,8(s0)
   14b30:	00f6bc23          	sd	a5,24(a3)
   14b34:	00d7b823          	sd	a3,16(a5) # ffffffff80000010 <_gp+0xffffffff7ffe4080>
   14b38:	009404b3          	add	s1,s0,s1
   14b3c:	02993423          	sd	s1,40(s2)
   14b40:	02993023          	sd	s1,32(s2)
   14b44:	00176793          	ori	a5,a4,1
   14b48:	0104bc23          	sd	a6,24(s1)
   14b4c:	0104b823          	sd	a6,16(s1)
   14b50:	00f4b423          	sd	a5,8(s1)
   14b54:	00e484b3          	add	s1,s1,a4
   14b58:	00098513          	mv	a0,s3
   14b5c:	00e4b023          	sd	a4,0(s1)
   14b60:	055000ef          	jal	153b4 <__malloc_unlock>
   14b64:	01040513          	addi	a0,s0,16
   14b68:	0680006f          	j	14bd0 <_malloc_r+0x274>
   14b6c:	02000493          	li	s1,32
   14b70:	08b4ea63          	bltu	s1,a1,14c04 <_malloc_r+0x2a8>
   14b74:	03d000ef          	jal	153b0 <__malloc_lock>
   14b78:	00a00793          	li	a5,10
   14b7c:	00400693          	li	a3,4
   14b80:	0001b937          	lui	s2,0x1b
   14b84:	f7890913          	addi	s2,s2,-136 # 1af78 <__malloc_av_>
   14b88:	00379793          	slli	a5,a5,0x3
   14b8c:	00f907b3          	add	a5,s2,a5
   14b90:	0087b403          	ld	s0,8(a5)
   14b94:	ff078713          	addi	a4,a5,-16
   14b98:	32e40063          	beq	s0,a4,14eb8 <_malloc_r+0x55c>
   14b9c:	00843783          	ld	a5,8(s0)
   14ba0:	01843683          	ld	a3,24(s0)
   14ba4:	01043603          	ld	a2,16(s0)
   14ba8:	ffc7f793          	andi	a5,a5,-4
   14bac:	00f407b3          	add	a5,s0,a5
   14bb0:	0087b703          	ld	a4,8(a5)
   14bb4:	00d63c23          	sd	a3,24(a2)
   14bb8:	00c6b823          	sd	a2,16(a3)
   14bbc:	00176713          	ori	a4,a4,1
   14bc0:	00098513          	mv	a0,s3
   14bc4:	00e7b423          	sd	a4,8(a5)
   14bc8:	7ec000ef          	jal	153b4 <__malloc_unlock>
   14bcc:	01040513          	addi	a0,s0,16
   14bd0:	05813083          	ld	ra,88(sp)
   14bd4:	05013403          	ld	s0,80(sp)
   14bd8:	04813483          	ld	s1,72(sp)
   14bdc:	04013903          	ld	s2,64(sp)
   14be0:	03813983          	ld	s3,56(sp)
   14be4:	03013a03          	ld	s4,48(sp)
   14be8:	02813a83          	ld	s5,40(sp)
   14bec:	02013b03          	ld	s6,32(sp)
   14bf0:	01813b83          	ld	s7,24(sp)
   14bf4:	01013c03          	ld	s8,16(sp)
   14bf8:	00813c83          	ld	s9,8(sp)
   14bfc:	06010113          	addi	sp,sp,96
   14c00:	00008067          	ret
   14c04:	00c00793          	li	a5,12
   14c08:	00f9a023          	sw	a5,0(s3) # ffffffffffffe000 <_gp+0xfffffffffffe2070>
   14c0c:	00000513          	li	a0,0
   14c10:	fc1ff06f          	j	14bd0 <_malloc_r+0x274>
   14c14:	00400713          	li	a4,4
   14c18:	1ef76463          	bltu	a4,a5,14e00 <_malloc_r+0x4a4>
   14c1c:	0064d593          	srli	a1,s1,0x6
   14c20:	0005859b          	sext.w	a1,a1
   14c24:	0395851b          	addiw	a0,a1,57
   14c28:	0015169b          	slliw	a3,a0,0x1
   14c2c:	0385859b          	addiw	a1,a1,56
   14c30:	da1ff06f          	j	149d0 <_malloc_r+0x74>
   14c34:	00050693          	mv	a3,a0
   14c38:	de9ff06f          	j	14a20 <_malloc_r+0xc4>
   14c3c:	01843683          	ld	a3,24(s0)
   14c40:	01043603          	ld	a2,16(s0)
   14c44:	f69ff06f          	j	14bac <_malloc_r+0x250>
   14c48:	00f407b3          	add	a5,s0,a5
   14c4c:	0087b703          	ld	a4,8(a5)
   14c50:	00098513          	mv	a0,s3
   14c54:	00176713          	ori	a4,a4,1
   14c58:	00e7b423          	sd	a4,8(a5)
   14c5c:	758000ef          	jal	153b4 <__malloc_unlock>
   14c60:	01040513          	addi	a0,s0,16
   14c64:	f6dff06f          	j	14bd0 <_malloc_r+0x274>
   14c68:	01093403          	ld	s0,16(s2)
   14c6c:	00843703          	ld	a4,8(s0)
   14c70:	ffc77b93          	andi	s7,a4,-4
   14c74:	009be863          	bltu	s7,s1,14c84 <_malloc_r+0x328>
   14c78:	409b87b3          	sub	a5,s7,s1
   14c7c:	01f00713          	li	a4,31
   14c80:	14f74c63          	blt	a4,a5,14dd8 <_malloc_r+0x47c>
   14c84:	8c01b783          	ld	a5,-1856(gp) # 1b850 <__malloc_top_pad>
   14c88:	8281b683          	ld	a3,-2008(gp) # 1b7b8 <__malloc_sbrk_base>
   14c8c:	fff00713          	li	a4,-1
   14c90:	00f487b3          	add	a5,s1,a5
   14c94:	01740a33          	add	s4,s0,s7
   14c98:	02078b13          	addi	s6,a5,32
   14c9c:	00e68c63          	beq	a3,a4,14cb4 <_malloc_r+0x358>
   14ca0:	00001b37          	lui	s6,0x1
   14ca4:	01fb0b13          	addi	s6,s6,31 # 101f <_ftext-0xefe1>
   14ca8:	01678b33          	add	s6,a5,s6
   14cac:	fffff7b7          	lui	a5,0xfffff
   14cb0:	00fb7b33          	and	s6,s6,a5
   14cb4:	000b0513          	mv	a0,s6
   14cb8:	3b8040ef          	jal	19070 <sbrk>
   14cbc:	fff00793          	li	a5,-1
   14cc0:	00050a93          	mv	s5,a0
   14cc4:	26f50263          	beq	a0,a5,14f28 <_malloc_r+0x5cc>
   14cc8:	25456e63          	bltu	a0,s4,14f24 <_malloc_r+0x5c8>
   14ccc:	90818c13          	addi	s8,gp,-1784 # 1b898 <__malloc_current_mallinfo>
   14cd0:	000c2783          	lw	a5,0(s8)
   14cd4:	00fb07bb          	addw	a5,s6,a5
   14cd8:	00fc2023          	sw	a5,0(s8)
   14cdc:	355a0463          	beq	s4,s5,15024 <_malloc_r+0x6c8>
   14ce0:	8281b683          	ld	a3,-2008(gp) # 1b7b8 <__malloc_sbrk_base>
   14ce4:	fff00713          	li	a4,-1
   14ce8:	36e68263          	beq	a3,a4,1504c <_malloc_r+0x6f0>
   14cec:	414a8a33          	sub	s4,s5,s4
   14cf0:	00fa07bb          	addw	a5,s4,a5
   14cf4:	00fc2023          	sw	a5,0(s8)
   14cf8:	00faf713          	andi	a4,s5,15
   14cfc:	000017b7          	lui	a5,0x1
   14d00:	00070a63          	beqz	a4,14d14 <_malloc_r+0x3b8>
   14d04:	40ea8ab3          	sub	s5,s5,a4
   14d08:	01078a13          	addi	s4,a5,16 # 1010 <_ftext-0xeff0>
   14d0c:	010a8a93          	addi	s5,s5,16
   14d10:	40ea07b3          	sub	a5,s4,a4
   14d14:	00001a37          	lui	s4,0x1
   14d18:	fffa0a13          	addi	s4,s4,-1 # fff <_ftext-0xf001>
   14d1c:	016a8b33          	add	s6,s5,s6
   14d20:	014b7b33          	and	s6,s6,s4
   14d24:	41678a33          	sub	s4,a5,s6
   14d28:	000a0513          	mv	a0,s4
   14d2c:	344040ef          	jal	19070 <sbrk>
   14d30:	fff00793          	li	a5,-1
   14d34:	30f50663          	beq	a0,a5,15040 <_malloc_r+0x6e4>
   14d38:	41550733          	sub	a4,a0,s5
   14d3c:	01470733          	add	a4,a4,s4
   14d40:	00176713          	ori	a4,a4,1
   14d44:	000a0a1b          	sext.w	s4,s4
   14d48:	000c2783          	lw	a5,0(s8)
   14d4c:	01593823          	sd	s5,16(s2)
   14d50:	00eab423          	sd	a4,8(s5)
   14d54:	00fa07bb          	addw	a5,s4,a5
   14d58:	00fc2023          	sw	a5,0(s8)
   14d5c:	03240c63          	beq	s0,s2,14d94 <_malloc_r+0x438>
   14d60:	01f00613          	li	a2,31
   14d64:	27767463          	bleu	s7,a2,14fcc <_malloc_r+0x670>
   14d68:	00843683          	ld	a3,8(s0)
   14d6c:	fe8b8713          	addi	a4,s7,-24
   14d70:	ff077713          	andi	a4,a4,-16
   14d74:	0016f693          	andi	a3,a3,1
   14d78:	00e6e6b3          	or	a3,a3,a4
   14d7c:	00d43423          	sd	a3,8(s0)
   14d80:	00900593          	li	a1,9
   14d84:	00e406b3          	add	a3,s0,a4
   14d88:	00b6b423          	sd	a1,8(a3)
   14d8c:	00b6b823          	sd	a1,16(a3)
   14d90:	2ce66263          	bltu	a2,a4,15054 <_malloc_r+0x6f8>
   14d94:	8b81b683          	ld	a3,-1864(gp) # 1b848 <__malloc_max_sbrked_mem>
   14d98:	00f6f463          	bleu	a5,a3,14da0 <_malloc_r+0x444>
   14d9c:	8af1bc23          	sd	a5,-1864(gp) # 1b848 <__malloc_max_sbrked_mem>
   14da0:	8b01b683          	ld	a3,-1872(gp) # 1b840 <__malloc_max_total_mem>
   14da4:	01093403          	ld	s0,16(s2)
   14da8:	00f6f463          	bleu	a5,a3,14db0 <_malloc_r+0x454>
   14dac:	8af1b823          	sd	a5,-1872(gp) # 1b840 <__malloc_max_total_mem>
   14db0:	00843703          	ld	a4,8(s0)
   14db4:	ffc77713          	andi	a4,a4,-4
   14db8:	409707b3          	sub	a5,a4,s1
   14dbc:	00976663          	bltu	a4,s1,14dc8 <_malloc_r+0x46c>
   14dc0:	01f00713          	li	a4,31
   14dc4:	00f74a63          	blt	a4,a5,14dd8 <_malloc_r+0x47c>
   14dc8:	00098513          	mv	a0,s3
   14dcc:	5e8000ef          	jal	153b4 <__malloc_unlock>
   14dd0:	00000513          	li	a0,0
   14dd4:	dfdff06f          	j	14bd0 <_malloc_r+0x274>
   14dd8:	0014e713          	ori	a4,s1,1
   14ddc:	00e43423          	sd	a4,8(s0)
   14de0:	009404b3          	add	s1,s0,s1
   14de4:	00993823          	sd	s1,16(s2)
   14de8:	0017e793          	ori	a5,a5,1
   14dec:	00098513          	mv	a0,s3
   14df0:	00f4b423          	sd	a5,8(s1)
   14df4:	5c0000ef          	jal	153b4 <__malloc_unlock>
   14df8:	01040513          	addi	a0,s0,16
   14dfc:	dd5ff06f          	j	14bd0 <_malloc_r+0x274>
   14e00:	01400713          	li	a4,20
   14e04:	0ef77a63          	bleu	a5,a4,14ef8 <_malloc_r+0x59c>
   14e08:	05400713          	li	a4,84
   14e0c:	18f76063          	bltu	a4,a5,14f8c <_malloc_r+0x630>
   14e10:	00c4d593          	srli	a1,s1,0xc
   14e14:	0005859b          	sext.w	a1,a1
   14e18:	06f5851b          	addiw	a0,a1,111
   14e1c:	0015169b          	slliw	a3,a0,0x1
   14e20:	06e5859b          	addiw	a1,a1,110
   14e24:	badff06f          	j	149d0 <_malloc_r+0x74>
   14e28:	0097d713          	srli	a4,a5,0x9
   14e2c:	00400613          	li	a2,4
   14e30:	0ce67e63          	bleu	a4,a2,14f0c <_malloc_r+0x5b0>
   14e34:	01400613          	li	a2,20
   14e38:	1ce66663          	bltu	a2,a4,15004 <_malloc_r+0x6a8>
   14e3c:	0007071b          	sext.w	a4,a4
   14e40:	05c7059b          	addiw	a1,a4,92
   14e44:	05b7061b          	addiw	a2,a4,91
   14e48:	0015959b          	slliw	a1,a1,0x1
   14e4c:	00359593          	slli	a1,a1,0x3
   14e50:	00b905b3          	add	a1,s2,a1
   14e54:	0005b703          	ld	a4,0(a1)
   14e58:	ff058593          	addi	a1,a1,-16
   14e5c:	14e58863          	beq	a1,a4,14fac <_malloc_r+0x650>
   14e60:	00873603          	ld	a2,8(a4)
   14e64:	ffc67613          	andi	a2,a2,-4
   14e68:	00c7f663          	bleu	a2,a5,14e74 <_malloc_r+0x518>
   14e6c:	01073703          	ld	a4,16(a4)
   14e70:	fee598e3          	bne	a1,a4,14e60 <_malloc_r+0x504>
   14e74:	01873583          	ld	a1,24(a4)
   14e78:	00893783          	ld	a5,8(s2)
   14e7c:	00b43c23          	sd	a1,24(s0)
   14e80:	00e43823          	sd	a4,16(s0)
   14e84:	0085b823          	sd	s0,16(a1)
   14e88:	00873c23          	sd	s0,24(a4)
   14e8c:	c11ff06f          	j	14a9c <_malloc_r+0x140>
   14e90:	0014e793          	ori	a5,s1,1
   14e94:	00f43423          	sd	a5,8(s0)
   14e98:	ca1ff06f          	j	14b38 <_malloc_r+0x1dc>
   14e9c:	00893783          	ld	a5,8(s2)
   14ea0:	bfdff06f          	j	14a9c <_malloc_r+0x140>
   14ea4:	0013031b          	addiw	t1,t1,1
   14ea8:	00337793          	andi	a5,t1,3
   14eac:	01058593          	addi	a1,a1,16
   14eb0:	c40794e3          	bnez	a5,14af8 <_malloc_r+0x19c>
   14eb4:	0900006f          	j	14f44 <_malloc_r+0x5e8>
   14eb8:	0187b403          	ld	s0,24(a5)
   14ebc:	0026869b          	addiw	a3,a3,2
   14ec0:	b68780e3          	beq	a5,s0,14a20 <_malloc_r+0xc4>
   14ec4:	cd9ff06f          	j	14b9c <_malloc_r+0x240>
   14ec8:	00f407b3          	add	a5,s0,a5
   14ecc:	0087b703          	ld	a4,8(a5)
   14ed0:	01843683          	ld	a3,24(s0)
   14ed4:	01043603          	ld	a2,16(s0)
   14ed8:	00176713          	ori	a4,a4,1
   14edc:	00e7b423          	sd	a4,8(a5)
   14ee0:	00d63c23          	sd	a3,24(a2)
   14ee4:	00098513          	mv	a0,s3
   14ee8:	00c6b823          	sd	a2,16(a3)
   14eec:	4c8000ef          	jal	153b4 <__malloc_unlock>
   14ef0:	01040513          	addi	a0,s0,16
   14ef4:	cddff06f          	j	14bd0 <_malloc_r+0x274>
   14ef8:	0007879b          	sext.w	a5,a5
   14efc:	05c7851b          	addiw	a0,a5,92
   14f00:	05b7859b          	addiw	a1,a5,91
   14f04:	0015169b          	slliw	a3,a0,0x1
   14f08:	ac9ff06f          	j	149d0 <_malloc_r+0x74>
   14f0c:	0067d713          	srli	a4,a5,0x6
   14f10:	0007071b          	sext.w	a4,a4
   14f14:	0397059b          	addiw	a1,a4,57
   14f18:	0387061b          	addiw	a2,a4,56
   14f1c:	0015959b          	slliw	a1,a1,0x1
   14f20:	f2dff06f          	j	14e4c <_malloc_r+0x4f0>
   14f24:	db2404e3          	beq	s0,s2,14ccc <_malloc_r+0x370>
   14f28:	01093403          	ld	s0,16(s2)
   14f2c:	00843703          	ld	a4,8(s0)
   14f30:	ffc77713          	andi	a4,a4,-4
   14f34:	e85ff06f          	j	14db8 <_malloc_r+0x45c>
   14f38:	0108b783          	ld	a5,16(a7)
   14f3c:	fff6869b          	addiw	a3,a3,-1
   14f40:	16f89863          	bne	a7,a5,150b0 <_malloc_r+0x754>
   14f44:	0036f793          	andi	a5,a3,3
   14f48:	ff088893          	addi	a7,a7,-16
   14f4c:	fe0796e3          	bnez	a5,14f38 <_malloc_r+0x5dc>
   14f50:	00893783          	ld	a5,8(s2)
   14f54:	fff64713          	not	a4,a2
   14f58:	00f777b3          	and	a5,a4,a5
   14f5c:	00f93423          	sd	a5,8(s2)
   14f60:	00161613          	slli	a2,a2,0x1
   14f64:	d0c7e2e3          	bltu	a5,a2,14c68 <_malloc_r+0x30c>
   14f68:	d00600e3          	beqz	a2,14c68 <_malloc_r+0x30c>
   14f6c:	00f67733          	and	a4,a2,a5
   14f70:	00030693          	mv	a3,t1
   14f74:	b60714e3          	bnez	a4,14adc <_malloc_r+0x180>
   14f78:	00161613          	slli	a2,a2,0x1
   14f7c:	00f67733          	and	a4,a2,a5
   14f80:	0046869b          	addiw	a3,a3,4
   14f84:	fe070ae3          	beqz	a4,14f78 <_malloc_r+0x61c>
   14f88:	b55ff06f          	j	14adc <_malloc_r+0x180>
   14f8c:	15400713          	li	a4,340
   14f90:	04f76463          	bltu	a4,a5,14fd8 <_malloc_r+0x67c>
   14f94:	00f4d593          	srli	a1,s1,0xf
   14f98:	0005859b          	sext.w	a1,a1
   14f9c:	0785851b          	addiw	a0,a1,120
   14fa0:	0015169b          	slliw	a3,a0,0x1
   14fa4:	0775859b          	addiw	a1,a1,119
   14fa8:	a29ff06f          	j	149d0 <_malloc_r+0x74>
   14fac:	00893783          	ld	a5,8(s2)
   14fb0:	4026571b          	sraiw	a4,a2,0x2
   14fb4:	00100613          	li	a2,1
   14fb8:	00e61733          	sll	a4,a2,a4
   14fbc:	00f767b3          	or	a5,a4,a5
   14fc0:	00f93423          	sd	a5,8(s2)
   14fc4:	00058713          	mv	a4,a1
   14fc8:	eb5ff06f          	j	14e7c <_malloc_r+0x520>
   14fcc:	00100793          	li	a5,1
   14fd0:	00fab423          	sd	a5,8(s5)
   14fd4:	df5ff06f          	j	14dc8 <_malloc_r+0x46c>
   14fd8:	55400713          	li	a4,1364
   14fdc:	0fe00693          	li	a3,254
   14fe0:	07f00513          	li	a0,127
   14fe4:	07e00593          	li	a1,126
   14fe8:	9ef764e3          	bltu	a4,a5,149d0 <_malloc_r+0x74>
   14fec:	0124d593          	srli	a1,s1,0x12
   14ff0:	0005859b          	sext.w	a1,a1
   14ff4:	07d5851b          	addiw	a0,a1,125
   14ff8:	0015169b          	slliw	a3,a0,0x1
   14ffc:	07c5859b          	addiw	a1,a1,124
   15000:	9d1ff06f          	j	149d0 <_malloc_r+0x74>
   15004:	05400613          	li	a2,84
   15008:	06e66063          	bltu	a2,a4,15068 <_malloc_r+0x70c>
   1500c:	00c7d713          	srli	a4,a5,0xc
   15010:	0007071b          	sext.w	a4,a4
   15014:	06f7059b          	addiw	a1,a4,111
   15018:	06e7061b          	addiw	a2,a4,110
   1501c:	0015959b          	slliw	a1,a1,0x1
   15020:	e2dff06f          	j	14e4c <_malloc_r+0x4f0>
   15024:	034a1713          	slli	a4,s4,0x34
   15028:	ca071ce3          	bnez	a4,14ce0 <_malloc_r+0x384>
   1502c:	01093683          	ld	a3,16(s2)
   15030:	016b8733          	add	a4,s7,s6
   15034:	00176713          	ori	a4,a4,1
   15038:	00e6b423          	sd	a4,8(a3)
   1503c:	d59ff06f          	j	14d94 <_malloc_r+0x438>
   15040:	00100713          	li	a4,1
   15044:	00000a13          	li	s4,0
   15048:	d01ff06f          	j	14d48 <_malloc_r+0x3ec>
   1504c:	8351b423          	sd	s5,-2008(gp) # 1b7b8 <__malloc_sbrk_base>
   15050:	ca9ff06f          	j	14cf8 <_malloc_r+0x39c>
   15054:	01040593          	addi	a1,s0,16
   15058:	00098513          	mv	a0,s3
   1505c:	a0cff0ef          	jal	14268 <_free_r>
   15060:	000c2783          	lw	a5,0(s8)
   15064:	d31ff06f          	j	14d94 <_malloc_r+0x438>
   15068:	15400613          	li	a2,340
   1506c:	00e66e63          	bltu	a2,a4,15088 <_malloc_r+0x72c>
   15070:	00f7d713          	srli	a4,a5,0xf
   15074:	0007071b          	sext.w	a4,a4
   15078:	0787059b          	addiw	a1,a4,120
   1507c:	0777061b          	addiw	a2,a4,119
   15080:	0015959b          	slliw	a1,a1,0x1
   15084:	dc9ff06f          	j	14e4c <_malloc_r+0x4f0>
   15088:	55400513          	li	a0,1364
   1508c:	0fe00593          	li	a1,254
   15090:	07e00613          	li	a2,126
   15094:	dae56ce3          	bltu	a0,a4,14e4c <_malloc_r+0x4f0>
   15098:	0127d713          	srli	a4,a5,0x12
   1509c:	0007071b          	sext.w	a4,a4
   150a0:	07d7059b          	addiw	a1,a4,125
   150a4:	07c7061b          	addiw	a2,a4,124
   150a8:	0015959b          	slliw	a1,a1,0x1
   150ac:	da1ff06f          	j	14e4c <_malloc_r+0x4f0>
   150b0:	00893783          	ld	a5,8(s2)
   150b4:	eadff06f          	j	14f60 <_malloc_r+0x604>
   150b8:	0034d693          	srli	a3,s1,0x3
   150bc:	0006869b          	sext.w	a3,a3
   150c0:	0016879b          	addiw	a5,a3,1
   150c4:	0017979b          	slliw	a5,a5,0x1
   150c8:	ab9ff06f          	j	14b80 <_malloc_r+0x224>

00000000000150cc <memchr>:
   150cc:	00757793          	andi	a5,a0,7
   150d0:	0ff5f813          	andi	a6,a1,255
   150d4:	0c078c63          	beqz	a5,151ac <memchr+0xe0>
   150d8:	fff60793          	addi	a5,a2,-1
   150dc:	06060463          	beqz	a2,15144 <memchr+0x78>
   150e0:	00054703          	lbu	a4,0(a0)
   150e4:	07070263          	beq	a4,a6,15148 <memchr+0x7c>
   150e8:	00080693          	mv	a3,a6
   150ec:	0140006f          	j	15100 <memchr+0x34>
   150f0:	04078a63          	beqz	a5,15144 <memchr+0x78>
   150f4:	00054703          	lbu	a4,0(a0)
   150f8:	fff78793          	addi	a5,a5,-1
   150fc:	04d70663          	beq	a4,a3,15148 <memchr+0x7c>
   15100:	00150513          	addi	a0,a0,1
   15104:	00757713          	andi	a4,a0,7
   15108:	fe0714e3          	bnez	a4,150f0 <memchr+0x24>
   1510c:	00700693          	li	a3,7
   15110:	02f6ee63          	bltu	a3,a5,1514c <memchr+0x80>
   15114:	02078863          	beqz	a5,15144 <memchr+0x78>
   15118:	00054703          	lbu	a4,0(a0)
   1511c:	03070663          	beq	a4,a6,15148 <memchr+0x7c>
   15120:	00150713          	addi	a4,a0,1
   15124:	00f507b3          	add	a5,a0,a5
   15128:	00080613          	mv	a2,a6
   1512c:	0100006f          	j	1513c <memchr+0x70>
   15130:	00170713          	addi	a4,a4,1
   15134:	fff74683          	lbu	a3,-1(a4)
   15138:	00c68863          	beq	a3,a2,15148 <memchr+0x7c>
   1513c:	00070513          	mv	a0,a4
   15140:	fee798e3          	bne	a5,a4,15130 <memchr+0x64>
   15144:	00000513          	li	a0,0
   15148:	00008067          	ret
   1514c:	0ff5f593          	andi	a1,a1,255
   15150:	0085971b          	slliw	a4,a1,0x8
   15154:	00b765b3          	or	a1,a4,a1
   15158:	00058713          	mv	a4,a1
   1515c:	01071613          	slli	a2,a4,0x10
   15160:	00c76733          	or	a4,a4,a2
   15164:	0001c637          	lui	a2,0x1c
   15168:	81863303          	ld	t1,-2024(a2) # 1b818 <__wctomb+0x50>
   1516c:	0001c637          	lui	a2,0x1c
   15170:	82063883          	ld	a7,-2016(a2) # 1b820 <__wctomb+0x58>
   15174:	02071613          	slli	a2,a4,0x20
   15178:	00e66633          	or	a2,a2,a4
   1517c:	00068593          	mv	a1,a3
   15180:	00053703          	ld	a4,0(a0)
   15184:	00e64733          	xor	a4,a2,a4
   15188:	006706b3          	add	a3,a4,t1
   1518c:	fff74713          	not	a4,a4
   15190:	00e6f733          	and	a4,a3,a4
   15194:	01177733          	and	a4,a4,a7
   15198:	f80710e3          	bnez	a4,15118 <memchr+0x4c>
   1519c:	ff878793          	addi	a5,a5,-8
   151a0:	00850513          	addi	a0,a0,8
   151a4:	fcf5eee3          	bltu	a1,a5,15180 <memchr+0xb4>
   151a8:	f6dff06f          	j	15114 <memchr+0x48>
   151ac:	00060793          	mv	a5,a2
   151b0:	f5dff06f          	j	1510c <memchr+0x40>

00000000000151b4 <memcpy>:
   151b4:	00a5c7b3          	xor	a5,a1,a0
   151b8:	0077f793          	andi	a5,a5,7
   151bc:	00c508b3          	add	a7,a0,a2
   151c0:	0e079263          	bnez	a5,152a4 <memcpy+0xf0>
   151c4:	00700793          	li	a5,7
   151c8:	0ec7fe63          	bleu	a2,a5,152c4 <memcpy+0x110>
   151cc:	00757793          	andi	a5,a0,7
   151d0:	04079a63          	bnez	a5,15224 <memcpy+0x70>
   151d4:	ff88f813          	andi	a6,a7,-8
   151d8:	fc080793          	addi	a5,a6,-64
   151dc:	00050713          	mv	a4,a0
   151e0:	06f56663          	bltu	a0,a5,1524c <memcpy+0x98>
   151e4:	00058693          	mv	a3,a1
   151e8:	00070793          	mv	a5,a4
   151ec:	03077863          	bleu	a6,a4,1521c <memcpy+0x68>
   151f0:	0006b603          	ld	a2,0(a3)
   151f4:	00878793          	addi	a5,a5,8
   151f8:	00868693          	addi	a3,a3,8
   151fc:	fec7bc23          	sd	a2,-8(a5)
   15200:	ff07e8e3          	bltu	a5,a6,151f0 <memcpy+0x3c>
   15204:	fff74793          	not	a5,a4
   15208:	01078833          	add	a6,a5,a6
   1520c:	ff887813          	andi	a6,a6,-8
   15210:	00880813          	addi	a6,a6,8
   15214:	01070733          	add	a4,a4,a6
   15218:	010585b3          	add	a1,a1,a6
   1521c:	09176863          	bltu	a4,a7,152ac <memcpy+0xf8>
   15220:	00008067          	ret
   15224:	00050713          	mv	a4,a0
   15228:	0005c683          	lbu	a3,0(a1)
   1522c:	00170713          	addi	a4,a4,1
   15230:	00777793          	andi	a5,a4,7
   15234:	fed70fa3          	sb	a3,-1(a4)
   15238:	00158593          	addi	a1,a1,1
   1523c:	fe0796e3          	bnez	a5,15228 <memcpy+0x74>
   15240:	ff88f813          	andi	a6,a7,-8
   15244:	fc080793          	addi	a5,a6,-64
   15248:	f8f77ee3          	bleu	a5,a4,151e4 <memcpy+0x30>
   1524c:	0005b383          	ld	t2,0(a1)
   15250:	0085b283          	ld	t0,8(a1)
   15254:	0105bf83          	ld	t6,16(a1)
   15258:	0185bf03          	ld	t5,24(a1)
   1525c:	0205be83          	ld	t4,32(a1)
   15260:	0285be03          	ld	t3,40(a1)
   15264:	0305b303          	ld	t1,48(a1)
   15268:	0385b603          	ld	a2,56(a1)
   1526c:	04858593          	addi	a1,a1,72
   15270:	04870713          	addi	a4,a4,72
   15274:	ff85b683          	ld	a3,-8(a1)
   15278:	fa773c23          	sd	t2,-72(a4)
   1527c:	fc573023          	sd	t0,-64(a4)
   15280:	fdf73423          	sd	t6,-56(a4)
   15284:	fde73823          	sd	t5,-48(a4)
   15288:	fdd73c23          	sd	t4,-40(a4)
   1528c:	ffc73023          	sd	t3,-32(a4)
   15290:	fe673423          	sd	t1,-24(a4)
   15294:	fec73823          	sd	a2,-16(a4)
   15298:	fed73c23          	sd	a3,-8(a4)
   1529c:	faf768e3          	bltu	a4,a5,1524c <memcpy+0x98>
   152a0:	f45ff06f          	j	151e4 <memcpy+0x30>
   152a4:	00050713          	mv	a4,a0
   152a8:	03157463          	bleu	a7,a0,152d0 <memcpy+0x11c>
   152ac:	0005c783          	lbu	a5,0(a1)
   152b0:	00170713          	addi	a4,a4,1
   152b4:	00158593          	addi	a1,a1,1
   152b8:	fef70fa3          	sb	a5,-1(a4)
   152bc:	ff1768e3          	bltu	a4,a7,152ac <memcpy+0xf8>
   152c0:	00008067          	ret
   152c4:	00050713          	mv	a4,a0
   152c8:	ff1562e3          	bltu	a0,a7,152ac <memcpy+0xf8>
   152cc:	f55ff06f          	j	15220 <memcpy+0x6c>
   152d0:	00008067          	ret

00000000000152d4 <memset>:
   152d4:	00f00813          	li	a6,15
   152d8:	00050713          	mv	a4,a0
   152dc:	02c87a63          	bleu	a2,a6,15310 <memset+0x3c>
   152e0:	00f77793          	andi	a5,a4,15
   152e4:	0a079063          	bnez	a5,15384 <memset+0xb0>
   152e8:	06059e63          	bnez	a1,15364 <memset+0x90>
   152ec:	ff067693          	andi	a3,a2,-16
   152f0:	00f67613          	andi	a2,a2,15
   152f4:	00e686b3          	add	a3,a3,a4
   152f8:	00b73023          	sd	a1,0(a4)
   152fc:	00b73423          	sd	a1,8(a4)
   15300:	01070713          	addi	a4,a4,16
   15304:	fed76ae3          	bltu	a4,a3,152f8 <memset+0x24>
   15308:	00061463          	bnez	a2,15310 <memset+0x3c>
   1530c:	00008067          	ret
   15310:	40c806b3          	sub	a3,a6,a2
   15314:	00269693          	slli	a3,a3,0x2
   15318:	00000297          	auipc	t0,0x0
   1531c:	005686b3          	add	a3,a3,t0
   15320:	00c68067          	jr	a3,12
   15324:	00b70723          	sb	a1,14(a4)
   15328:	00b706a3          	sb	a1,13(a4)
   1532c:	00b70623          	sb	a1,12(a4)
   15330:	00b705a3          	sb	a1,11(a4)
   15334:	00b70523          	sb	a1,10(a4)
   15338:	00b704a3          	sb	a1,9(a4)
   1533c:	00b70423          	sb	a1,8(a4)
   15340:	00b703a3          	sb	a1,7(a4)
   15344:	00b70323          	sb	a1,6(a4)
   15348:	00b702a3          	sb	a1,5(a4)
   1534c:	00b70223          	sb	a1,4(a4)
   15350:	00b701a3          	sb	a1,3(a4)
   15354:	00b70123          	sb	a1,2(a4)
   15358:	00b700a3          	sb	a1,1(a4)
   1535c:	00b70023          	sb	a1,0(a4)
   15360:	00008067          	ret
   15364:	0ff5f593          	andi	a1,a1,255
   15368:	00859693          	slli	a3,a1,0x8
   1536c:	00d5e5b3          	or	a1,a1,a3
   15370:	01059693          	slli	a3,a1,0x10
   15374:	00d5e5b3          	or	a1,a1,a3
   15378:	02059693          	slli	a3,a1,0x20
   1537c:	00d5e5b3          	or	a1,a1,a3
   15380:	f6dff06f          	j	152ec <memset+0x18>
   15384:	00279693          	slli	a3,a5,0x2
   15388:	00000297          	auipc	t0,0x0
   1538c:	005686b3          	add	a3,a3,t0
   15390:	00008293          	mv	t0,ra
   15394:	f98680e7          	jalr	a3,-104
   15398:	00028093          	mv	ra,t0
   1539c:	ff078793          	addi	a5,a5,-16
   153a0:	40f70733          	sub	a4,a4,a5
   153a4:	00f60633          	add	a2,a2,a5
   153a8:	f6c874e3          	bleu	a2,a6,15310 <memset+0x3c>
   153ac:	f3dff06f          	j	152e8 <memset+0x14>

00000000000153b0 <__malloc_lock>:
   153b0:	00008067          	ret

00000000000153b4 <__malloc_unlock>:
   153b4:	00008067          	ret

00000000000153b8 <_Balloc>:
   153b8:	07853783          	ld	a5,120(a0)
   153bc:	fe010113          	addi	sp,sp,-32
   153c0:	00813823          	sd	s0,16(sp)
   153c4:	00913423          	sd	s1,8(sp)
   153c8:	00113c23          	sd	ra,24(sp)
   153cc:	01213023          	sd	s2,0(sp)
   153d0:	00050413          	mv	s0,a0
   153d4:	00058493          	mv	s1,a1
   153d8:	02078e63          	beqz	a5,15414 <_Balloc+0x5c>
   153dc:	00349513          	slli	a0,s1,0x3
   153e0:	00a787b3          	add	a5,a5,a0
   153e4:	0007b503          	ld	a0,0(a5)
   153e8:	04050663          	beqz	a0,15434 <_Balloc+0x7c>
   153ec:	00053703          	ld	a4,0(a0)
   153f0:	00e7b023          	sd	a4,0(a5)
   153f4:	00052a23          	sw	zero,20(a0)
   153f8:	00052823          	sw	zero,16(a0)
   153fc:	01813083          	ld	ra,24(sp)
   15400:	01013403          	ld	s0,16(sp)
   15404:	00813483          	ld	s1,8(sp)
   15408:	00013903          	ld	s2,0(sp)
   1540c:	02010113          	addi	sp,sp,32
   15410:	00008067          	ret
   15414:	04100613          	li	a2,65
   15418:	00800593          	li	a1,8
   1541c:	638020ef          	jal	17a54 <_calloc_r>
   15420:	06a43c23          	sd	a0,120(s0)
   15424:	00050793          	mv	a5,a0
   15428:	fa051ae3          	bnez	a0,153dc <_Balloc+0x24>
   1542c:	00000513          	li	a0,0
   15430:	fcdff06f          	j	153fc <_Balloc+0x44>
   15434:	00100913          	li	s2,1
   15438:	0099193b          	sllw	s2,s2,s1
   1543c:	fff9061b          	addiw	a2,s2,-1
   15440:	00860613          	addi	a2,a2,8
   15444:	00261613          	slli	a2,a2,0x2
   15448:	00100593          	li	a1,1
   1544c:	00040513          	mv	a0,s0
   15450:	604020ef          	jal	17a54 <_calloc_r>
   15454:	fc050ce3          	beqz	a0,1542c <_Balloc+0x74>
   15458:	00952423          	sw	s1,8(a0)
   1545c:	01252623          	sw	s2,12(a0)
   15460:	f95ff06f          	j	153f4 <_Balloc+0x3c>

0000000000015464 <_Bfree>:
   15464:	02058063          	beqz	a1,15484 <_Bfree+0x20>
   15468:	0085a783          	lw	a5,8(a1)
   1546c:	07853703          	ld	a4,120(a0)
   15470:	00379793          	slli	a5,a5,0x3
   15474:	00f707b3          	add	a5,a4,a5
   15478:	0007b703          	ld	a4,0(a5)
   1547c:	00e5b023          	sd	a4,0(a1)
   15480:	00b7b023          	sd	a1,0(a5)
   15484:	00008067          	ret

0000000000015488 <__multadd>:
   15488:	fc010113          	addi	sp,sp,-64
   1548c:	00010837          	lui	a6,0x10
   15490:	02813823          	sd	s0,48(sp)
   15494:	02913423          	sd	s1,40(sp)
   15498:	03213023          	sd	s2,32(sp)
   1549c:	00058493          	mv	s1,a1
   154a0:	0145a403          	lw	s0,20(a1)
   154a4:	00050913          	mv	s2,a0
   154a8:	02113c23          	sd	ra,56(sp)
   154ac:	01313c23          	sd	s3,24(sp)
   154b0:	01858593          	addi	a1,a1,24
   154b4:	00000513          	li	a0,0
   154b8:	fff8081b          	addiw	a6,a6,-1
   154bc:	0005a783          	lw	a5,0(a1)
   154c0:	00458593          	addi	a1,a1,4
   154c4:	0015051b          	addiw	a0,a0,1
   154c8:	0107f733          	and	a4,a5,a6
   154cc:	02c7073b          	mulw	a4,a4,a2
   154d0:	0107d79b          	srliw	a5,a5,0x10
   154d4:	02c787bb          	mulw	a5,a5,a2
   154d8:	00d7073b          	addw	a4,a4,a3
   154dc:	0107569b          	srliw	a3,a4,0x10
   154e0:	01077733          	and	a4,a4,a6
   154e4:	00d786bb          	addw	a3,a5,a3
   154e8:	0106979b          	slliw	a5,a3,0x10
   154ec:	00e7873b          	addw	a4,a5,a4
   154f0:	fee5ae23          	sw	a4,-4(a1)
   154f4:	0106d69b          	srliw	a3,a3,0x10
   154f8:	fc8542e3          	blt	a0,s0,154bc <__multadd+0x34>
   154fc:	02068263          	beqz	a3,15520 <__multadd+0x98>
   15500:	00c4a783          	lw	a5,12(s1)
   15504:	02f45e63          	ble	a5,s0,15540 <__multadd+0xb8>
   15508:	00440793          	addi	a5,s0,4
   1550c:	00279793          	slli	a5,a5,0x2
   15510:	00f487b3          	add	a5,s1,a5
   15514:	00d7a423          	sw	a3,8(a5)
   15518:	0014041b          	addiw	s0,s0,1
   1551c:	0084aa23          	sw	s0,20(s1)
   15520:	03813083          	ld	ra,56(sp)
   15524:	00048513          	mv	a0,s1
   15528:	03013403          	ld	s0,48(sp)
   1552c:	02813483          	ld	s1,40(sp)
   15530:	02013903          	ld	s2,32(sp)
   15534:	01813983          	ld	s3,24(sp)
   15538:	04010113          	addi	sp,sp,64
   1553c:	00008067          	ret
   15540:	0084a583          	lw	a1,8(s1)
   15544:	00090513          	mv	a0,s2
   15548:	00d13423          	sd	a3,8(sp)
   1554c:	0015859b          	addiw	a1,a1,1
   15550:	e69ff0ef          	jal	153b8 <_Balloc>
   15554:	0144a603          	lw	a2,20(s1)
   15558:	00050993          	mv	s3,a0
   1555c:	01048593          	addi	a1,s1,16
   15560:	00260613          	addi	a2,a2,2
   15564:	01050513          	addi	a0,a0,16
   15568:	00261613          	slli	a2,a2,0x2
   1556c:	c49ff0ef          	jal	151b4 <memcpy>
   15570:	0084a703          	lw	a4,8(s1)
   15574:	07893783          	ld	a5,120(s2)
   15578:	00813683          	ld	a3,8(sp)
   1557c:	00371713          	slli	a4,a4,0x3
   15580:	00e787b3          	add	a5,a5,a4
   15584:	0007b703          	ld	a4,0(a5)
   15588:	00e4b023          	sd	a4,0(s1)
   1558c:	0097b023          	sd	s1,0(a5)
   15590:	00098493          	mv	s1,s3
   15594:	f75ff06f          	j	15508 <__multadd+0x80>

0000000000015598 <__s2b>:
   15598:	fc010113          	addi	sp,sp,-64
   1559c:	0086879b          	addiw	a5,a3,8
   155a0:	03213023          	sd	s2,32(sp)
   155a4:	00068913          	mv	s2,a3
   155a8:	00900693          	li	a3,9
   155ac:	02d7c6bb          	divw	a3,a5,a3
   155b0:	02813823          	sd	s0,48(sp)
   155b4:	02913423          	sd	s1,40(sp)
   155b8:	01313c23          	sd	s3,24(sp)
   155bc:	01413823          	sd	s4,16(sp)
   155c0:	02113c23          	sd	ra,56(sp)
   155c4:	01513423          	sd	s5,8(sp)
   155c8:	01613023          	sd	s6,0(sp)
   155cc:	00100793          	li	a5,1
   155d0:	00058413          	mv	s0,a1
   155d4:	00050993          	mv	s3,a0
   155d8:	00060a13          	mv	s4,a2
   155dc:	00070493          	mv	s1,a4
   155e0:	00000593          	li	a1,0
   155e4:	00d7d863          	ble	a3,a5,155f4 <__s2b+0x5c>
   155e8:	0017979b          	slliw	a5,a5,0x1
   155ec:	0015859b          	addiw	a1,a1,1
   155f0:	fed7cce3          	blt	a5,a3,155e8 <__s2b+0x50>
   155f4:	00098513          	mv	a0,s3
   155f8:	dc1ff0ef          	jal	153b8 <_Balloc>
   155fc:	00100793          	li	a5,1
   15600:	00f52a23          	sw	a5,20(a0)
   15604:	00952c23          	sw	s1,24(a0)
   15608:	00900793          	li	a5,9
   1560c:	0b47d663          	ble	s4,a5,156b8 <__s2b+0x120>
   15610:	ff6a0b1b          	addiw	s6,s4,-10
   15614:	020b1b13          	slli	s6,s6,0x20
   15618:	020b5b13          	srli	s6,s6,0x20
   1561c:	00940a93          	addi	s5,s0,9
   15620:	00ab0793          	addi	a5,s6,10
   15624:	00f40433          	add	s0,s0,a5
   15628:	000a8493          	mv	s1,s5
   1562c:	00148493          	addi	s1,s1,1
   15630:	fff4c683          	lbu	a3,-1(s1)
   15634:	00050593          	mv	a1,a0
   15638:	00a00613          	li	a2,10
   1563c:	fd06869b          	addiw	a3,a3,-48
   15640:	00098513          	mv	a0,s3
   15644:	e45ff0ef          	jal	15488 <__multadd>
   15648:	fe8492e3          	bne	s1,s0,1562c <__s2b+0x94>
   1564c:	016a8433          	add	s0,s5,s6
   15650:	00240413          	addi	s0,s0,2
   15654:	032a5e63          	ble	s2,s4,15690 <__s2b+0xf8>
   15658:	fff9091b          	addiw	s2,s2,-1
   1565c:	414904bb          	subw	s1,s2,s4
   15660:	02049493          	slli	s1,s1,0x20
   15664:	0204d493          	srli	s1,s1,0x20
   15668:	00148493          	addi	s1,s1,1
   1566c:	009404b3          	add	s1,s0,s1
   15670:	00140413          	addi	s0,s0,1
   15674:	fff44683          	lbu	a3,-1(s0)
   15678:	00050593          	mv	a1,a0
   1567c:	00a00613          	li	a2,10
   15680:	fd06869b          	addiw	a3,a3,-48
   15684:	00098513          	mv	a0,s3
   15688:	e01ff0ef          	jal	15488 <__multadd>
   1568c:	fe9412e3          	bne	s0,s1,15670 <__s2b+0xd8>
   15690:	03813083          	ld	ra,56(sp)
   15694:	03013403          	ld	s0,48(sp)
   15698:	02813483          	ld	s1,40(sp)
   1569c:	02013903          	ld	s2,32(sp)
   156a0:	01813983          	ld	s3,24(sp)
   156a4:	01013a03          	ld	s4,16(sp)
   156a8:	00813a83          	ld	s5,8(sp)
   156ac:	00013b03          	ld	s6,0(sp)
   156b0:	04010113          	addi	sp,sp,64
   156b4:	00008067          	ret
   156b8:	00a40413          	addi	s0,s0,10
   156bc:	00078a13          	mv	s4,a5
   156c0:	f95ff06f          	j	15654 <__s2b+0xbc>

00000000000156c4 <__hi0bits>:
   156c4:	ffff06b7          	lui	a3,0xffff0
   156c8:	00d576b3          	and	a3,a0,a3
   156cc:	00050793          	mv	a5,a0
   156d0:	00000713          	li	a4,0
   156d4:	00069663          	bnez	a3,156e0 <__hi0bits+0x1c>
   156d8:	0105179b          	slliw	a5,a0,0x10
   156dc:	01000713          	li	a4,16
   156e0:	ff0006b7          	lui	a3,0xff000
   156e4:	00d7f6b3          	and	a3,a5,a3
   156e8:	00069663          	bnez	a3,156f4 <__hi0bits+0x30>
   156ec:	0087071b          	addiw	a4,a4,8
   156f0:	0087979b          	slliw	a5,a5,0x8
   156f4:	f00006b7          	lui	a3,0xf0000
   156f8:	00d7f6b3          	and	a3,a5,a3
   156fc:	00069663          	bnez	a3,15708 <__hi0bits+0x44>
   15700:	0047071b          	addiw	a4,a4,4
   15704:	0047979b          	slliw	a5,a5,0x4
   15708:	c00006b7          	lui	a3,0xc0000
   1570c:	00d7f6b3          	and	a3,a5,a3
   15710:	00069663          	bnez	a3,1571c <__hi0bits+0x58>
   15714:	0027071b          	addiw	a4,a4,2
   15718:	0027979b          	slliw	a5,a5,0x2
   1571c:	0007ce63          	bltz	a5,15738 <__hi0bits+0x74>
   15720:	02179693          	slli	a3,a5,0x21
   15724:	02000513          	li	a0,32
   15728:	0006c463          	bltz	a3,15730 <__hi0bits+0x6c>
   1572c:	00008067          	ret
   15730:	0017051b          	addiw	a0,a4,1
   15734:	00008067          	ret
   15738:	00070513          	mv	a0,a4
   1573c:	00008067          	ret

0000000000015740 <__lo0bits>:
   15740:	00052783          	lw	a5,0(a0)
   15744:	00050693          	mv	a3,a0
   15748:	0077f713          	andi	a4,a5,7
   1574c:	02070463          	beqz	a4,15774 <__lo0bits+0x34>
   15750:	0017f713          	andi	a4,a5,1
   15754:	00000513          	li	a0,0
   15758:	08071263          	bnez	a4,157dc <__lo0bits+0x9c>
   1575c:	0027f713          	andi	a4,a5,2
   15760:	08071063          	bnez	a4,157e0 <__lo0bits+0xa0>
   15764:	0027d79b          	srliw	a5,a5,0x2
   15768:	00f6a023          	sw	a5,0(a3) # ffffffffc0000000 <_gp+0xffffffffbffe4070>
   1576c:	00200513          	li	a0,2
   15770:	00008067          	ret
   15774:	0107961b          	slliw	a2,a5,0x10
   15778:	0106561b          	srliw	a2,a2,0x10
   1577c:	00000713          	li	a4,0
   15780:	00061663          	bnez	a2,1578c <__lo0bits+0x4c>
   15784:	0107d79b          	srliw	a5,a5,0x10
   15788:	01000713          	li	a4,16
   1578c:	0ff7f613          	andi	a2,a5,255
   15790:	00061663          	bnez	a2,1579c <__lo0bits+0x5c>
   15794:	0087071b          	addiw	a4,a4,8
   15798:	0087d79b          	srliw	a5,a5,0x8
   1579c:	00f7f613          	andi	a2,a5,15
   157a0:	00061663          	bnez	a2,157ac <__lo0bits+0x6c>
   157a4:	0047071b          	addiw	a4,a4,4
   157a8:	0047d79b          	srliw	a5,a5,0x4
   157ac:	0037f613          	andi	a2,a5,3
   157b0:	00061663          	bnez	a2,157bc <__lo0bits+0x7c>
   157b4:	0027071b          	addiw	a4,a4,2
   157b8:	0027d79b          	srliw	a5,a5,0x2
   157bc:	0017f613          	andi	a2,a5,1
   157c0:	00061a63          	bnez	a2,157d4 <__lo0bits+0x94>
   157c4:	0017d79b          	srliw	a5,a5,0x1
   157c8:	02000513          	li	a0,32
   157cc:	00078863          	beqz	a5,157dc <__lo0bits+0x9c>
   157d0:	0017071b          	addiw	a4,a4,1
   157d4:	00f6a023          	sw	a5,0(a3)
   157d8:	00070513          	mv	a0,a4
   157dc:	00008067          	ret
   157e0:	0017d79b          	srliw	a5,a5,0x1
   157e4:	00f6a023          	sw	a5,0(a3)
   157e8:	00100513          	li	a0,1
   157ec:	00008067          	ret

00000000000157f0 <__i2b>:
   157f0:	ff010113          	addi	sp,sp,-16
   157f4:	00813023          	sd	s0,0(sp)
   157f8:	00058413          	mv	s0,a1
   157fc:	00100593          	li	a1,1
   15800:	00113423          	sd	ra,8(sp)
   15804:	bb5ff0ef          	jal	153b8 <_Balloc>
   15808:	00813083          	ld	ra,8(sp)
   1580c:	00100713          	li	a4,1
   15810:	00852c23          	sw	s0,24(a0)
   15814:	00e52a23          	sw	a4,20(a0)
   15818:	00013403          	ld	s0,0(sp)
   1581c:	01010113          	addi	sp,sp,16
   15820:	00008067          	ret

0000000000015824 <__multiply>:
   15824:	fd010113          	addi	sp,sp,-48
   15828:	01313423          	sd	s3,8(sp)
   1582c:	01413023          	sd	s4,0(sp)
   15830:	0145a983          	lw	s3,20(a1)
   15834:	01462a03          	lw	s4,20(a2)
   15838:	00913c23          	sd	s1,24(sp)
   1583c:	01213823          	sd	s2,16(sp)
   15840:	02113423          	sd	ra,40(sp)
   15844:	02813023          	sd	s0,32(sp)
   15848:	00058913          	mv	s2,a1
   1584c:	00060493          	mv	s1,a2
   15850:	0149dc63          	ble	s4,s3,15868 <__multiply+0x44>
   15854:	00098713          	mv	a4,s3
   15858:	00060913          	mv	s2,a2
   1585c:	000a0993          	mv	s3,s4
   15860:	00058493          	mv	s1,a1
   15864:	00070a13          	mv	s4,a4
   15868:	00c92783          	lw	a5,12(s2)
   1586c:	00892583          	lw	a1,8(s2)
   15870:	0149843b          	addw	s0,s3,s4
   15874:	0087a7b3          	slt	a5,a5,s0
   15878:	00f585bb          	addw	a1,a1,a5
   1587c:	b3dff0ef          	jal	153b8 <_Balloc>
   15880:	00040893          	mv	a7,s0
   15884:	01850313          	addi	t1,a0,24
   15888:	00289893          	slli	a7,a7,0x2
   1588c:	011308b3          	add	a7,t1,a7
   15890:	00030793          	mv	a5,t1
   15894:	01137863          	bleu	a7,t1,158a4 <__multiply+0x80>
   15898:	0007a023          	sw	zero,0(a5)
   1589c:	00478793          	addi	a5,a5,4
   158a0:	ff17ece3          	bltu	a5,a7,15898 <__multiply+0x74>
   158a4:	01848613          	addi	a2,s1,24
   158a8:	002a1e13          	slli	t3,s4,0x2
   158ac:	01890e93          	addi	t4,s2,24
   158b0:	00299813          	slli	a6,s3,0x2
   158b4:	000105b7          	lui	a1,0x10
   158b8:	01c60e33          	add	t3,a2,t3
   158bc:	010e8833          	add	a6,t4,a6
   158c0:	fff5859b          	addiw	a1,a1,-1
   158c4:	11c67463          	bleu	t3,a2,159cc <__multiply+0x1a8>
   158c8:	00062383          	lw	t2,0(a2)
   158cc:	00b3f4b3          	and	s1,t2,a1
   158d0:	06048a63          	beqz	s1,15944 <__multiply+0x120>
   158d4:	00030293          	mv	t0,t1
   158d8:	000e8f93          	mv	t6,t4
   158dc:	00000793          	li	a5,0
   158e0:	0080006f          	j	158e8 <__multiply+0xc4>
   158e4:	00038293          	mv	t0,t2
   158e8:	000fa683          	lw	a3,0(t6)
   158ec:	0002af03          	lw	t5,0(t0) # 15388 <memset+0xb4>
   158f0:	00428393          	addi	t2,t0,4
   158f4:	00b6f733          	and	a4,a3,a1
   158f8:	0297073b          	mulw	a4,a4,s1
   158fc:	0106d69b          	srliw	a3,a3,0x10
   15900:	00bf7933          	and	s2,t5,a1
   15904:	010f5f1b          	srliw	t5,t5,0x10
   15908:	004f8f93          	addi	t6,t6,4
   1590c:	029686bb          	mulw	a3,a3,s1
   15910:	0127073b          	addw	a4,a4,s2
   15914:	00f707bb          	addw	a5,a4,a5
   15918:	0107d71b          	srliw	a4,a5,0x10
   1591c:	00b7f7b3          	and	a5,a5,a1
   15920:	01e686bb          	addw	a3,a3,t5
   15924:	00e6873b          	addw	a4,a3,a4
   15928:	0107169b          	slliw	a3,a4,0x10
   1592c:	00f6e7b3          	or	a5,a3,a5
   15930:	fef3ae23          	sw	a5,-4(t2)
   15934:	0107579b          	srliw	a5,a4,0x10
   15938:	fb0fe6e3          	bltu	t6,a6,158e4 <__multiply+0xc0>
   1593c:	00f2a223          	sw	a5,4(t0)
   15940:	00062383          	lw	t2,0(a2)
   15944:	0103d39b          	srliw	t2,t2,0x10
   15948:	06038c63          	beqz	t2,159c0 <__multiply+0x19c>
   1594c:	00032783          	lw	a5,0(t1) # 10000 <_ftext>
   15950:	00030293          	mv	t0,t1
   15954:	000e8f93          	mv	t6,t4
   15958:	00078f13          	mv	t5,a5
   1595c:	00000693          	li	a3,0
   15960:	0080006f          	j	15968 <__multiply+0x144>
   15964:	00048293          	mv	t0,s1
   15968:	000fa703          	lw	a4,0(t6)
   1596c:	010f5f1b          	srliw	t5,t5,0x10
   15970:	00b7f7b3          	and	a5,a5,a1
   15974:	00b77733          	and	a4,a4,a1
   15978:	0277073b          	mulw	a4,a4,t2
   1597c:	00428493          	addi	s1,t0,4
   15980:	004f8f93          	addi	t6,t6,4
   15984:	01e7073b          	addw	a4,a4,t5
   15988:	00d706bb          	addw	a3,a4,a3
   1598c:	0106971b          	slliw	a4,a3,0x10
   15990:	00f767b3          	or	a5,a4,a5
   15994:	fef4ae23          	sw	a5,-4(s1)
   15998:	ffefd703          	lhu	a4,-2(t6)
   1599c:	0042af03          	lw	t5,4(t0)
   159a0:	0106d69b          	srliw	a3,a3,0x10
   159a4:	0277073b          	mulw	a4,a4,t2
   159a8:	00bf77b3          	and	a5,t5,a1
   159ac:	00f707bb          	addw	a5,a4,a5
   159b0:	00d787bb          	addw	a5,a5,a3
   159b4:	0107d69b          	srliw	a3,a5,0x10
   159b8:	fb0fe6e3          	bltu	t6,a6,15964 <__multiply+0x140>
   159bc:	00f2a223          	sw	a5,4(t0)
   159c0:	00460613          	addi	a2,a2,4
   159c4:	00430313          	addi	t1,t1,4
   159c8:	f1c660e3          	bltu	a2,t3,158c8 <__multiply+0xa4>
   159cc:	02805463          	blez	s0,159f4 <__multiply+0x1d0>
   159d0:	ffc8a783          	lw	a5,-4(a7)
   159d4:	ffc88893          	addi	a7,a7,-4
   159d8:	00078863          	beqz	a5,159e8 <__multiply+0x1c4>
   159dc:	0180006f          	j	159f4 <__multiply+0x1d0>
   159e0:	0008a783          	lw	a5,0(a7)
   159e4:	00079863          	bnez	a5,159f4 <__multiply+0x1d0>
   159e8:	fff4041b          	addiw	s0,s0,-1
   159ec:	ffc88893          	addi	a7,a7,-4
   159f0:	fe0418e3          	bnez	s0,159e0 <__multiply+0x1bc>
   159f4:	02813083          	ld	ra,40(sp)
   159f8:	00852a23          	sw	s0,20(a0)
   159fc:	01813483          	ld	s1,24(sp)
   15a00:	02013403          	ld	s0,32(sp)
   15a04:	01013903          	ld	s2,16(sp)
   15a08:	00813983          	ld	s3,8(sp)
   15a0c:	00013a03          	ld	s4,0(sp)
   15a10:	03010113          	addi	sp,sp,48
   15a14:	00008067          	ret

0000000000015a18 <__pow5mult>:
   15a18:	fd010113          	addi	sp,sp,-48
   15a1c:	02813023          	sd	s0,32(sp)
   15a20:	01213823          	sd	s2,16(sp)
   15a24:	01313423          	sd	s3,8(sp)
   15a28:	02113423          	sd	ra,40(sp)
   15a2c:	00913c23          	sd	s1,24(sp)
   15a30:	00367793          	andi	a5,a2,3
   15a34:	00060413          	mv	s0,a2
   15a38:	00050993          	mv	s3,a0
   15a3c:	00058913          	mv	s2,a1
   15a40:	0a079e63          	bnez	a5,15afc <__pow5mult+0xe4>
   15a44:	4024541b          	sraiw	s0,s0,0x2
   15a48:	06040663          	beqz	s0,15ab4 <__pow5mult+0x9c>
   15a4c:	0709b483          	ld	s1,112(s3)
   15a50:	0c048a63          	beqz	s1,15b24 <__pow5mult+0x10c>
   15a54:	00147793          	andi	a5,s0,1
   15a58:	02079063          	bnez	a5,15a78 <__pow5mult+0x60>
   15a5c:	4014541b          	sraiw	s0,s0,0x1
   15a60:	04040a63          	beqz	s0,15ab4 <__pow5mult+0x9c>
   15a64:	0004b503          	ld	a0,0(s1)
   15a68:	06050663          	beqz	a0,15ad4 <__pow5mult+0xbc>
   15a6c:	00050493          	mv	s1,a0
   15a70:	00147793          	andi	a5,s0,1
   15a74:	fe0784e3          	beqz	a5,15a5c <__pow5mult+0x44>
   15a78:	00048613          	mv	a2,s1
   15a7c:	00090593          	mv	a1,s2
   15a80:	00098513          	mv	a0,s3
   15a84:	da1ff0ef          	jal	15824 <__multiply>
   15a88:	06090663          	beqz	s2,15af4 <__pow5mult+0xdc>
   15a8c:	00892783          	lw	a5,8(s2)
   15a90:	0789b703          	ld	a4,120(s3)
   15a94:	4014541b          	sraiw	s0,s0,0x1
   15a98:	00379793          	slli	a5,a5,0x3
   15a9c:	00f707b3          	add	a5,a4,a5
   15aa0:	0007b703          	ld	a4,0(a5)
   15aa4:	00e93023          	sd	a4,0(s2)
   15aa8:	0127b023          	sd	s2,0(a5)
   15aac:	00050913          	mv	s2,a0
   15ab0:	fa041ae3          	bnez	s0,15a64 <__pow5mult+0x4c>
   15ab4:	02813083          	ld	ra,40(sp)
   15ab8:	00090513          	mv	a0,s2
   15abc:	02013403          	ld	s0,32(sp)
   15ac0:	01813483          	ld	s1,24(sp)
   15ac4:	01013903          	ld	s2,16(sp)
   15ac8:	00813983          	ld	s3,8(sp)
   15acc:	03010113          	addi	sp,sp,48
   15ad0:	00008067          	ret
   15ad4:	00048613          	mv	a2,s1
   15ad8:	00048593          	mv	a1,s1
   15adc:	00098513          	mv	a0,s3
   15ae0:	d45ff0ef          	jal	15824 <__multiply>
   15ae4:	00a4b023          	sd	a0,0(s1)
   15ae8:	00053023          	sd	zero,0(a0)
   15aec:	00050493          	mv	s1,a0
   15af0:	f81ff06f          	j	15a70 <__pow5mult+0x58>
   15af4:	00050913          	mv	s2,a0
   15af8:	f65ff06f          	j	15a5c <__pow5mult+0x44>
   15afc:	fff7879b          	addiw	a5,a5,-1
   15b00:	00019737          	lui	a4,0x19
   15b04:	3a070713          	addi	a4,a4,928 # 193a0 <p05.2568>
   15b08:	00279793          	slli	a5,a5,0x2
   15b0c:	00f707b3          	add	a5,a4,a5
   15b10:	0007a603          	lw	a2,0(a5)
   15b14:	00000693          	li	a3,0
   15b18:	971ff0ef          	jal	15488 <__multadd>
   15b1c:	00050913          	mv	s2,a0
   15b20:	f25ff06f          	j	15a44 <__pow5mult+0x2c>
   15b24:	00100593          	li	a1,1
   15b28:	00098513          	mv	a0,s3
   15b2c:	88dff0ef          	jal	153b8 <_Balloc>
   15b30:	27100793          	li	a5,625
   15b34:	00f52c23          	sw	a5,24(a0)
   15b38:	00100793          	li	a5,1
   15b3c:	00f52a23          	sw	a5,20(a0)
   15b40:	06a9b823          	sd	a0,112(s3)
   15b44:	00050493          	mv	s1,a0
   15b48:	00053023          	sd	zero,0(a0)
   15b4c:	f09ff06f          	j	15a54 <__pow5mult+0x3c>

0000000000015b50 <__lshift>:
   15b50:	fc010113          	addi	sp,sp,-64
   15b54:	01513423          	sd	s5,8(sp)
   15b58:	0145aa83          	lw	s5,20(a1) # 10014 <_ftext+0x14>
   15b5c:	02813823          	sd	s0,48(sp)
   15b60:	00c5a783          	lw	a5,12(a1)
   15b64:	4056541b          	sraiw	s0,a2,0x5
   15b68:	01540abb          	addw	s5,s0,s5
   15b6c:	02913423          	sd	s1,40(sp)
   15b70:	03213023          	sd	s2,32(sp)
   15b74:	01313c23          	sd	s3,24(sp)
   15b78:	01413823          	sd	s4,16(sp)
   15b7c:	02113c23          	sd	ra,56(sp)
   15b80:	001a849b          	addiw	s1,s5,1
   15b84:	00058913          	mv	s2,a1
   15b88:	00060993          	mv	s3,a2
   15b8c:	00050a13          	mv	s4,a0
   15b90:	0085a583          	lw	a1,8(a1)
   15b94:	0097d863          	ble	s1,a5,15ba4 <__lshift+0x54>
   15b98:	0017979b          	slliw	a5,a5,0x1
   15b9c:	0015859b          	addiw	a1,a1,1
   15ba0:	fe97cce3          	blt	a5,s1,15b98 <__lshift+0x48>
   15ba4:	000a0513          	mv	a0,s4
   15ba8:	811ff0ef          	jal	153b8 <_Balloc>
   15bac:	01850793          	addi	a5,a0,24
   15bb0:	0e805c63          	blez	s0,15ca8 <__lshift+0x158>
   15bb4:	fff4071b          	addiw	a4,s0,-1
   15bb8:	02071713          	slli	a4,a4,0x20
   15bbc:	02075713          	srli	a4,a4,0x20
   15bc0:	00170713          	addi	a4,a4,1
   15bc4:	00271713          	slli	a4,a4,0x2
   15bc8:	00e78733          	add	a4,a5,a4
   15bcc:	00478793          	addi	a5,a5,4
   15bd0:	fe07ae23          	sw	zero,-4(a5)
   15bd4:	fee79ce3          	bne	a5,a4,15bcc <__lshift+0x7c>
   15bd8:	01492883          	lw	a7,20(s2)
   15bdc:	01890793          	addi	a5,s2,24
   15be0:	01f9f613          	andi	a2,s3,31
   15be4:	00289893          	slli	a7,a7,0x2
   15be8:	011788b3          	add	a7,a5,a7
   15bec:	08060863          	beqz	a2,15c7c <__lshift+0x12c>
   15bf0:	02000313          	li	t1,32
   15bf4:	40c3033b          	subw	t1,t1,a2
   15bf8:	00000693          	li	a3,0
   15bfc:	0080006f          	j	15c04 <__lshift+0xb4>
   15c00:	00080713          	mv	a4,a6
   15c04:	0007a583          	lw	a1,0(a5)
   15c08:	00470813          	addi	a6,a4,4
   15c0c:	00478793          	addi	a5,a5,4
   15c10:	00c595bb          	sllw	a1,a1,a2
   15c14:	00d5e6b3          	or	a3,a1,a3
   15c18:	fed82e23          	sw	a3,-4(a6) # fffc <_ftext-0x4>
   15c1c:	ffc7a683          	lw	a3,-4(a5)
   15c20:	0066d6bb          	srlw	a3,a3,t1
   15c24:	fd17eee3          	bltu	a5,a7,15c00 <__lshift+0xb0>
   15c28:	00d72223          	sw	a3,4(a4)
   15c2c:	00068463          	beqz	a3,15c34 <__lshift+0xe4>
   15c30:	002a849b          	addiw	s1,s5,2
   15c34:	00892783          	lw	a5,8(s2)
   15c38:	078a3703          	ld	a4,120(s4)
   15c3c:	fff4849b          	addiw	s1,s1,-1
   15c40:	00379793          	slli	a5,a5,0x3
   15c44:	00f707b3          	add	a5,a4,a5
   15c48:	0007b703          	ld	a4,0(a5)
   15c4c:	03813083          	ld	ra,56(sp)
   15c50:	00952a23          	sw	s1,20(a0)
   15c54:	00e93023          	sd	a4,0(s2)
   15c58:	0127b023          	sd	s2,0(a5)
   15c5c:	03013403          	ld	s0,48(sp)
   15c60:	02813483          	ld	s1,40(sp)
   15c64:	02013903          	ld	s2,32(sp)
   15c68:	01813983          	ld	s3,24(sp)
   15c6c:	01013a03          	ld	s4,16(sp)
   15c70:	00813a83          	ld	s5,8(sp)
   15c74:	04010113          	addi	sp,sp,64
   15c78:	00008067          	ret
   15c7c:	00478793          	addi	a5,a5,4
   15c80:	ffc7a683          	lw	a3,-4(a5)
   15c84:	00470713          	addi	a4,a4,4
   15c88:	fed72e23          	sw	a3,-4(a4)
   15c8c:	fb17f4e3          	bleu	a7,a5,15c34 <__lshift+0xe4>
   15c90:	00478793          	addi	a5,a5,4
   15c94:	ffc7a683          	lw	a3,-4(a5)
   15c98:	00470713          	addi	a4,a4,4
   15c9c:	fed72e23          	sw	a3,-4(a4)
   15ca0:	fd17eee3          	bltu	a5,a7,15c7c <__lshift+0x12c>
   15ca4:	f91ff06f          	j	15c34 <__lshift+0xe4>
   15ca8:	00078713          	mv	a4,a5
   15cac:	f2dff06f          	j	15bd8 <__lshift+0x88>

0000000000015cb0 <__mcmp>:
   15cb0:	01452783          	lw	a5,20(a0)
   15cb4:	0145a703          	lw	a4,20(a1)
   15cb8:	40e787bb          	subw	a5,a5,a4
   15cbc:	04079263          	bnez	a5,15d00 <__mcmp+0x50>
   15cc0:	00271713          	slli	a4,a4,0x2
   15cc4:	01850513          	addi	a0,a0,24
   15cc8:	01858593          	addi	a1,a1,24
   15ccc:	00e507b3          	add	a5,a0,a4
   15cd0:	00e585b3          	add	a1,a1,a4
   15cd4:	0080006f          	j	15cdc <__mcmp+0x2c>
   15cd8:	02f57863          	bleu	a5,a0,15d08 <__mcmp+0x58>
   15cdc:	ffc78793          	addi	a5,a5,-4
   15ce0:	ffc58593          	addi	a1,a1,-4
   15ce4:	0007a703          	lw	a4,0(a5)
   15ce8:	0005a683          	lw	a3,0(a1)
   15cec:	fed706e3          	beq	a4,a3,15cd8 <__mcmp+0x28>
   15cf0:	00d737b3          	sltu	a5,a4,a3
   15cf4:	40f007bb          	negw	a5,a5
   15cf8:	0017e513          	ori	a0,a5,1
   15cfc:	00008067          	ret
   15d00:	00078513          	mv	a0,a5
   15d04:	00008067          	ret
   15d08:	00000513          	li	a0,0
   15d0c:	00008067          	ret

0000000000015d10 <__mdiff>:
   15d10:	0145a703          	lw	a4,20(a1)
   15d14:	01462783          	lw	a5,20(a2)
   15d18:	fd010113          	addi	sp,sp,-48
   15d1c:	01213823          	sd	s2,16(sp)
   15d20:	01313423          	sd	s3,8(sp)
   15d24:	02113423          	sd	ra,40(sp)
   15d28:	02813023          	sd	s0,32(sp)
   15d2c:	00913c23          	sd	s1,24(sp)
   15d30:	01413023          	sd	s4,0(sp)
   15d34:	40f7073b          	subw	a4,a4,a5
   15d38:	00058913          	mv	s2,a1
   15d3c:	00060993          	mv	s3,a2
   15d40:	04071863          	bnez	a4,15d90 <__mdiff+0x80>
   15d44:	00279713          	slli	a4,a5,0x2
   15d48:	01858813          	addi	a6,a1,24
   15d4c:	01860413          	addi	s0,a2,24
   15d50:	00e807b3          	add	a5,a6,a4
   15d54:	00e40733          	add	a4,s0,a4
   15d58:	0080006f          	j	15d60 <__mdiff+0x50>
   15d5c:	16f87263          	bleu	a5,a6,15ec0 <__mdiff+0x1b0>
   15d60:	ffc78793          	addi	a5,a5,-4
   15d64:	ffc70713          	addi	a4,a4,-4
   15d68:	0007a583          	lw	a1,0(a5)
   15d6c:	00072683          	lw	a3,0(a4)
   15d70:	fed586e3          	beq	a1,a3,15d5c <__mdiff+0x4c>
   15d74:	18d5f063          	bleu	a3,a1,15ef4 <__mdiff+0x1e4>
   15d78:	00090793          	mv	a5,s2
   15d7c:	00080493          	mv	s1,a6
   15d80:	00098913          	mv	s2,s3
   15d84:	00100a13          	li	s4,1
   15d88:	00078993          	mv	s3,a5
   15d8c:	0140006f          	j	15da0 <__mdiff+0x90>
   15d90:	16074a63          	bltz	a4,15f04 <__mdiff+0x1f4>
   15d94:	01860493          	addi	s1,a2,24
   15d98:	01858413          	addi	s0,a1,24
   15d9c:	00000a13          	li	s4,0
   15da0:	00892583          	lw	a1,8(s2)
   15da4:	e14ff0ef          	jal	153b8 <_Balloc>
   15da8:	01492e03          	lw	t3,20(s2)
   15dac:	0149af03          	lw	t5,20(s3)
   15db0:	00010337          	lui	t1,0x10
   15db4:	002e1e93          	slli	t4,t3,0x2
   15db8:	002f1f13          	slli	t5,t5,0x2
   15dbc:	01452823          	sw	s4,16(a0)
   15dc0:	01d40eb3          	add	t4,s0,t4
   15dc4:	01e48f33          	add	t5,s1,t5
   15dc8:	01850813          	addi	a6,a0,24
   15dcc:	00000693          	li	a3,0
   15dd0:	fff3031b          	addiw	t1,t1,-1
   15dd4:	00042583          	lw	a1,0(s0)
   15dd8:	0004a883          	lw	a7,0(s1)
   15ddc:	00480813          	addi	a6,a6,4
   15de0:	0065f633          	and	a2,a1,t1
   15de4:	00d606bb          	addw	a3,a2,a3
   15de8:	0068f733          	and	a4,a7,t1
   15dec:	40e6873b          	subw	a4,a3,a4
   15df0:	0105d59b          	srliw	a1,a1,0x10
   15df4:	0108d69b          	srliw	a3,a7,0x10
   15df8:	40d585bb          	subw	a1,a1,a3
   15dfc:	4107569b          	sraiw	a3,a4,0x10
   15e00:	00d586bb          	addw	a3,a1,a3
   15e04:	0106979b          	slliw	a5,a3,0x10
   15e08:	00677733          	and	a4,a4,t1
   15e0c:	00e7e7b3          	or	a5,a5,a4
   15e10:	00448493          	addi	s1,s1,4
   15e14:	fef82e23          	sw	a5,-4(a6)
   15e18:	00440413          	addi	s0,s0,4
   15e1c:	4106d69b          	sraiw	a3,a3,0x10
   15e20:	fbe4eae3          	bltu	s1,t5,15dd4 <__mdiff+0xc4>
   15e24:	07d47063          	bleu	t4,s0,15e84 <__mdiff+0x174>
   15e28:	00010f37          	lui	t5,0x10
   15e2c:	00080313          	mv	t1,a6
   15e30:	00040893          	mv	a7,s0
   15e34:	ffff0f1b          	addiw	t5,t5,-1
   15e38:	0008a583          	lw	a1,0(a7)
   15e3c:	00430313          	addi	t1,t1,4 # 10004 <_ftext+0x4>
   15e40:	00488893          	addi	a7,a7,4
   15e44:	01e5f633          	and	a2,a1,t5
   15e48:	00d606bb          	addw	a3,a2,a3
   15e4c:	4106d71b          	sraiw	a4,a3,0x10
   15e50:	0105d59b          	srliw	a1,a1,0x10
   15e54:	00e5873b          	addw	a4,a1,a4
   15e58:	01e6f6b3          	and	a3,a3,t5
   15e5c:	0107179b          	slliw	a5,a4,0x10
   15e60:	00d7e7b3          	or	a5,a5,a3
   15e64:	fef32e23          	sw	a5,-4(t1)
   15e68:	4107569b          	sraiw	a3,a4,0x10
   15e6c:	fdd8e6e3          	bltu	a7,t4,15e38 <__mdiff+0x128>
   15e70:	fff44413          	not	s0,s0
   15e74:	01d40eb3          	add	t4,s0,t4
   15e78:	ffcefe93          	andi	t4,t4,-4
   15e7c:	004e8e93          	addi	t4,t4,4
   15e80:	01d80833          	add	a6,a6,t4
   15e84:	ffc80813          	addi	a6,a6,-4
   15e88:	00079a63          	bnez	a5,15e9c <__mdiff+0x18c>
   15e8c:	ffc80813          	addi	a6,a6,-4
   15e90:	00082783          	lw	a5,0(a6)
   15e94:	fffe0e1b          	addiw	t3,t3,-1
   15e98:	fe078ae3          	beqz	a5,15e8c <__mdiff+0x17c>
   15e9c:	02813083          	ld	ra,40(sp)
   15ea0:	02013403          	ld	s0,32(sp)
   15ea4:	01813483          	ld	s1,24(sp)
   15ea8:	01013903          	ld	s2,16(sp)
   15eac:	00813983          	ld	s3,8(sp)
   15eb0:	00013a03          	ld	s4,0(sp)
   15eb4:	01c52a23          	sw	t3,20(a0)
   15eb8:	03010113          	addi	sp,sp,48
   15ebc:	00008067          	ret
   15ec0:	00000593          	li	a1,0
   15ec4:	cf4ff0ef          	jal	153b8 <_Balloc>
   15ec8:	02813083          	ld	ra,40(sp)
   15ecc:	00100793          	li	a5,1
   15ed0:	02013403          	ld	s0,32(sp)
   15ed4:	01813483          	ld	s1,24(sp)
   15ed8:	01013903          	ld	s2,16(sp)
   15edc:	00813983          	ld	s3,8(sp)
   15ee0:	00013a03          	ld	s4,0(sp)
   15ee4:	00f52a23          	sw	a5,20(a0)
   15ee8:	00052c23          	sw	zero,24(a0)
   15eec:	03010113          	addi	sp,sp,48
   15ef0:	00008067          	ret
   15ef4:	00040493          	mv	s1,s0
   15ef8:	00000a13          	li	s4,0
   15efc:	00080413          	mv	s0,a6
   15f00:	ea1ff06f          	j	15da0 <__mdiff+0x90>
   15f04:	00090793          	mv	a5,s2
   15f08:	01890493          	addi	s1,s2,24
   15f0c:	01898413          	addi	s0,s3,24
   15f10:	00098913          	mv	s2,s3
   15f14:	00100a13          	li	s4,1
   15f18:	00078993          	mv	s3,a5
   15f1c:	e85ff06f          	j	15da0 <__mdiff+0x90>

0000000000015f20 <__ulp>:
   15f20:	e20507d3          	fmv.x.d	a5,fa0
   15f24:	7ff00737          	lui	a4,0x7ff00
   15f28:	4207d793          	srai	a5,a5,0x20
   15f2c:	00e7f7b3          	and	a5,a5,a4
   15f30:	fcc00737          	lui	a4,0xfcc00
   15f34:	00e787bb          	addw	a5,a5,a4
   15f38:	00f05863          	blez	a5,15f48 <__ulp+0x28>
   15f3c:	02079793          	slli	a5,a5,0x20
   15f40:	f2078553          	fmv.d.x	fa0,a5
   15f44:	00008067          	ret
   15f48:	40f007bb          	negw	a5,a5
   15f4c:	4147d79b          	sraiw	a5,a5,0x14
   15f50:	01300713          	li	a4,19
   15f54:	04f75063          	ble	a5,a4,15f94 <__ulp+0x74>
   15f58:	fec7869b          	addiw	a3,a5,-20
   15f5c:	01e00613          	li	a2,30
   15f60:	00000793          	li	a5,0
   15f64:	00100713          	li	a4,1
   15f68:	00d64663          	blt	a2,a3,15f74 <__ulp+0x54>
   15f6c:	fff6c693          	not	a3,a3
   15f70:	00d7173b          	sllw	a4,a4,a3
   15f74:	fff00693          	li	a3,-1
   15f78:	02069693          	slli	a3,a3,0x20
   15f7c:	02071713          	slli	a4,a4,0x20
   15f80:	02075713          	srli	a4,a4,0x20
   15f84:	00d7f7b3          	and	a5,a5,a3
   15f88:	00e7e7b3          	or	a5,a5,a4
   15f8c:	f2078553          	fmv.d.x	fa0,a5
   15f90:	00008067          	ret
   15f94:	00080737          	lui	a4,0x80
   15f98:	40f757bb          	sraw	a5,a4,a5
   15f9c:	fa1ff06f          	j	15f3c <__ulp+0x1c>

0000000000015fa0 <__b2d>:
   15fa0:	fd010113          	addi	sp,sp,-48
   15fa4:	02813023          	sd	s0,32(sp)
   15fa8:	01452403          	lw	s0,20(a0)
   15fac:	00913c23          	sd	s1,24(sp)
   15fb0:	01850493          	addi	s1,a0,24
   15fb4:	00241413          	slli	s0,s0,0x2
   15fb8:	00848433          	add	s0,s1,s0
   15fbc:	01213823          	sd	s2,16(sp)
   15fc0:	ffc42903          	lw	s2,-4(s0)
   15fc4:	01313423          	sd	s3,8(sp)
   15fc8:	01413023          	sd	s4,0(sp)
   15fcc:	00090513          	mv	a0,s2
   15fd0:	00058a13          	mv	s4,a1
   15fd4:	02113423          	sd	ra,40(sp)
   15fd8:	eecff0ef          	jal	156c4 <__hi0bits>
   15fdc:	02000793          	li	a5,32
   15fe0:	40a7873b          	subw	a4,a5,a0
   15fe4:	00ea2023          	sw	a4,0(s4)
   15fe8:	00a00713          	li	a4,10
   15fec:	ffc40993          	addi	s3,s0,-4
   15ff0:	06a74a63          	blt	a4,a0,16064 <__b2d+0xc4>
   15ff4:	00b00693          	li	a3,11
   15ff8:	40a686bb          	subw	a3,a3,a0
   15ffc:	3ff00737          	lui	a4,0x3ff00
   16000:	00d957bb          	srlw	a5,s2,a3
   16004:	00e7e7b3          	or	a5,a5,a4
   16008:	02079793          	slli	a5,a5,0x20
   1600c:	00000713          	li	a4,0
   16010:	0134f663          	bleu	s3,s1,1601c <__b2d+0x7c>
   16014:	ff842703          	lw	a4,-8(s0)
   16018:	00d7573b          	srlw	a4,a4,a3
   1601c:	0155051b          	addiw	a0,a0,21
   16020:	00a9153b          	sllw	a0,s2,a0
   16024:	00e56533          	or	a0,a0,a4
   16028:	fff00713          	li	a4,-1
   1602c:	02051513          	slli	a0,a0,0x20
   16030:	02071713          	slli	a4,a4,0x20
   16034:	02055513          	srli	a0,a0,0x20
   16038:	00e7f7b3          	and	a5,a5,a4
   1603c:	00a7e7b3          	or	a5,a5,a0
   16040:	02813083          	ld	ra,40(sp)
   16044:	f2078553          	fmv.d.x	fa0,a5
   16048:	02013403          	ld	s0,32(sp)
   1604c:	01813483          	ld	s1,24(sp)
   16050:	01013903          	ld	s2,16(sp)
   16054:	00813983          	ld	s3,8(sp)
   16058:	00013a03          	ld	s4,0(sp)
   1605c:	03010113          	addi	sp,sp,48
   16060:	00008067          	ret
   16064:	ff55051b          	addiw	a0,a0,-11
   16068:	0534f263          	bleu	s3,s1,160ac <__b2d+0x10c>
   1606c:	ff842683          	lw	a3,-8(s0)
   16070:	04050263          	beqz	a0,160b4 <__b2d+0x114>
   16074:	40a7863b          	subw	a2,a5,a0
   16078:	00a917bb          	sllw	a5,s2,a0
   1607c:	3ff00937          	lui	s2,0x3ff00
   16080:	00c6d73b          	srlw	a4,a3,a2
   16084:	0127e7b3          	or	a5,a5,s2
   16088:	00e7e7b3          	or	a5,a5,a4
   1608c:	ff840713          	addi	a4,s0,-8
   16090:	02079793          	slli	a5,a5,0x20
   16094:	04e4fa63          	bleu	a4,s1,160e8 <__b2d+0x148>
   16098:	ff442703          	lw	a4,-12(s0)
   1609c:	00a6953b          	sllw	a0,a3,a0
   160a0:	00c756bb          	srlw	a3,a4,a2
   160a4:	00a6e533          	or	a0,a3,a0
   160a8:	f81ff06f          	j	16028 <__b2d+0x88>
   160ac:	00000693          	li	a3,0
   160b0:	02051063          	bnez	a0,160d0 <__b2d+0x130>
   160b4:	3ff00737          	lui	a4,0x3ff00
   160b8:	00e967b3          	or	a5,s2,a4
   160bc:	02069693          	slli	a3,a3,0x20
   160c0:	0206d693          	srli	a3,a3,0x20
   160c4:	02079793          	slli	a5,a5,0x20
   160c8:	00d7e7b3          	or	a5,a5,a3
   160cc:	f75ff06f          	j	16040 <__b2d+0xa0>
   160d0:	00a917bb          	sllw	a5,s2,a0
   160d4:	3ff00737          	lui	a4,0x3ff00
   160d8:	00e7e7b3          	or	a5,a5,a4
   160dc:	02079793          	slli	a5,a5,0x20
   160e0:	00000513          	li	a0,0
   160e4:	f45ff06f          	j	16028 <__b2d+0x88>
   160e8:	00a6953b          	sllw	a0,a3,a0
   160ec:	f3dff06f          	j	16028 <__b2d+0x88>

00000000000160f0 <__d2b>:
   160f0:	fc010113          	addi	sp,sp,-64
   160f4:	02813823          	sd	s0,48(sp)
   160f8:	e2058453          	fmv.x.d	s0,fa1
   160fc:	00100593          	li	a1,1
   16100:	02913423          	sd	s1,40(sp)
   16104:	03213023          	sd	s2,32(sp)
   16108:	01313c23          	sd	s3,24(sp)
   1610c:	01413823          	sd	s4,16(sp)
   16110:	00068993          	mv	s3,a3
   16114:	02113c23          	sd	ra,56(sp)
   16118:	00060a13          	mv	s4,a2
   1611c:	a9cff0ef          	jal	153b8 <_Balloc>
   16120:	42045793          	srai	a5,s0,0x20
   16124:	02179493          	slli	s1,a5,0x21
   16128:	001006b7          	lui	a3,0x100
   1612c:	fff6871b          	addiw	a4,a3,-1
   16130:	0354d493          	srli	s1,s1,0x35
   16134:	00050913          	mv	s2,a0
   16138:	00e7f7b3          	and	a5,a5,a4
   1613c:	00048463          	beqz	s1,16144 <__d2b+0x54>
   16140:	00d7e7b3          	or	a5,a5,a3
   16144:	00f12623          	sw	a5,12(sp)
   16148:	0004041b          	sext.w	s0,s0
   1614c:	08040063          	beqz	s0,161cc <__d2b+0xdc>
   16150:	00810513          	addi	a0,sp,8
   16154:	00812423          	sw	s0,8(sp)
   16158:	de8ff0ef          	jal	15740 <__lo0bits>
   1615c:	00c12783          	lw	a5,12(sp)
   16160:	0a051463          	bnez	a0,16208 <__d2b+0x118>
   16164:	00812703          	lw	a4,8(sp)
   16168:	00e92c23          	sw	a4,24(s2) # 3ff00018 <_gp+0x3fee4088>
   1616c:	0017b413          	seqz	s0,a5
   16170:	00200713          	li	a4,2
   16174:	4087043b          	subw	s0,a4,s0
   16178:	00f92e23          	sw	a5,28(s2)
   1617c:	00892a23          	sw	s0,20(s2)
   16180:	06049663          	bnez	s1,161ec <__d2b+0xfc>
   16184:	bce5051b          	addiw	a0,a0,-1074
   16188:	00241793          	slli	a5,s0,0x2
   1618c:	00aa2023          	sw	a0,0(s4)
   16190:	00f907b3          	add	a5,s2,a5
   16194:	0147a503          	lw	a0,20(a5)
   16198:	0054141b          	slliw	s0,s0,0x5
   1619c:	d28ff0ef          	jal	156c4 <__hi0bits>
   161a0:	40a4053b          	subw	a0,s0,a0
   161a4:	00a9a023          	sw	a0,0(s3)
   161a8:	03813083          	ld	ra,56(sp)
   161ac:	00090513          	mv	a0,s2
   161b0:	03013403          	ld	s0,48(sp)
   161b4:	02813483          	ld	s1,40(sp)
   161b8:	02013903          	ld	s2,32(sp)
   161bc:	01813983          	ld	s3,24(sp)
   161c0:	01013a03          	ld	s4,16(sp)
   161c4:	04010113          	addi	sp,sp,64
   161c8:	00008067          	ret
   161cc:	00c10513          	addi	a0,sp,12
   161d0:	d70ff0ef          	jal	15740 <__lo0bits>
   161d4:	00c12783          	lw	a5,12(sp)
   161d8:	00100413          	li	s0,1
   161dc:	00892a23          	sw	s0,20(s2)
   161e0:	00f92c23          	sw	a5,24(s2)
   161e4:	0205051b          	addiw	a0,a0,32
   161e8:	f8048ee3          	beqz	s1,16184 <__d2b+0x94>
   161ec:	bcd4849b          	addiw	s1,s1,-1075
   161f0:	00a484bb          	addw	s1,s1,a0
   161f4:	03500793          	li	a5,53
   161f8:	009a2023          	sw	s1,0(s4)
   161fc:	40a7853b          	subw	a0,a5,a0
   16200:	00a9a023          	sw	a0,0(s3)
   16204:	fa5ff06f          	j	161a8 <__d2b+0xb8>
   16208:	02000713          	li	a4,32
   1620c:	00812683          	lw	a3,8(sp)
   16210:	40a7073b          	subw	a4,a4,a0
   16214:	00e7973b          	sllw	a4,a5,a4
   16218:	00d76733          	or	a4,a4,a3
   1621c:	00a7d7bb          	srlw	a5,a5,a0
   16220:	00e92c23          	sw	a4,24(s2)
   16224:	00f12623          	sw	a5,12(sp)
   16228:	f45ff06f          	j	1616c <__d2b+0x7c>

000000000001622c <__ratio>:
   1622c:	fd010113          	addi	sp,sp,-48
   16230:	00913c23          	sd	s1,24(sp)
   16234:	00058493          	mv	s1,a1
   16238:	00810593          	addi	a1,sp,8
   1623c:	02113423          	sd	ra,40(sp)
   16240:	02813023          	sd	s0,32(sp)
   16244:	01213823          	sd	s2,16(sp)
   16248:	00050913          	mv	s2,a0
   1624c:	d55ff0ef          	jal	15fa0 <__b2d>
   16250:	00c10593          	addi	a1,sp,12
   16254:	00048513          	mv	a0,s1
   16258:	e2050453          	fmv.x.d	s0,fa0
   1625c:	d45ff0ef          	jal	15fa0 <__b2d>
   16260:	01492703          	lw	a4,20(s2)
   16264:	0144a783          	lw	a5,20(s1)
   16268:	00c12603          	lw	a2,12(sp)
   1626c:	e20506d3          	fmv.x.d	a3,fa0
   16270:	40f707bb          	subw	a5,a4,a5
   16274:	0057971b          	slliw	a4,a5,0x5
   16278:	00812783          	lw	a5,8(sp)
   1627c:	40c787bb          	subw	a5,a5,a2
   16280:	00f707bb          	addw	a5,a4,a5
   16284:	04f05463          	blez	a5,162cc <__ratio+0xa0>
   16288:	00040713          	mv	a4,s0
   1628c:	0147979b          	slliw	a5,a5,0x14
   16290:	42045413          	srai	s0,s0,0x20
   16294:	00f407bb          	addw	a5,s0,a5
   16298:	02071413          	slli	s0,a4,0x20
   1629c:	02079793          	slli	a5,a5,0x20
   162a0:	02045413          	srli	s0,s0,0x20
   162a4:	00f46433          	or	s0,s0,a5
   162a8:	f20407d3          	fmv.d.x	fa5,s0
   162ac:	f2068753          	fmv.d.x	fa4,a3
   162b0:	02813083          	ld	ra,40(sp)
   162b4:	02013403          	ld	s0,32(sp)
   162b8:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   162bc:	01813483          	ld	s1,24(sp)
   162c0:	01013903          	ld	s2,16(sp)
   162c4:	03010113          	addi	sp,sp,48
   162c8:	00008067          	ret
   162cc:	00068613          	mv	a2,a3
   162d0:	0147979b          	slliw	a5,a5,0x14
   162d4:	4206d693          	srai	a3,a3,0x20
   162d8:	40f687bb          	subw	a5,a3,a5
   162dc:	02061693          	slli	a3,a2,0x20
   162e0:	02079793          	slli	a5,a5,0x20
   162e4:	0206d693          	srli	a3,a3,0x20
   162e8:	00f6e6b3          	or	a3,a3,a5
   162ec:	fbdff06f          	j	162a8 <__ratio+0x7c>

00000000000162f0 <_mprec_log10>:
   162f0:	01700793          	li	a5,23
   162f4:	02a7d263          	ble	a0,a5,16318 <_mprec_log10+0x28>
   162f8:	0001b7b7          	lui	a5,0x1b
   162fc:	7f07b507          	fld	fa0,2032(a5) # 1b7f0 <__wctomb+0x28>
   16300:	0001b7b7          	lui	a5,0x1b
   16304:	7f87b787          	fld	fa5,2040(a5) # 1b7f8 <__wctomb+0x30>
   16308:	fff5051b          	addiw	a0,a0,-1
   1630c:	12f57553          	fmul.d	fa0,fa0,fa5
   16310:	fe051ce3          	bnez	a0,16308 <_mprec_log10+0x18>
   16314:	00008067          	ret
   16318:	000197b7          	lui	a5,0x19
   1631c:	3a078793          	addi	a5,a5,928 # 193a0 <p05.2568>
   16320:	00351513          	slli	a0,a0,0x3
   16324:	00a78533          	add	a0,a5,a0
   16328:	01053507          	fld	fa0,16(a0)
   1632c:	00008067          	ret

0000000000016330 <__copybits>:
   16330:	01462703          	lw	a4,20(a2)
   16334:	fff5859b          	addiw	a1,a1,-1
   16338:	4055d81b          	sraiw	a6,a1,0x5
   1633c:	00180813          	addi	a6,a6,1
   16340:	01860793          	addi	a5,a2,24
   16344:	00271713          	slli	a4,a4,0x2
   16348:	00281813          	slli	a6,a6,0x2
   1634c:	00e786b3          	add	a3,a5,a4
   16350:	01050833          	add	a6,a0,a6
   16354:	02d7f863          	bleu	a3,a5,16384 <__copybits+0x54>
   16358:	00050713          	mv	a4,a0
   1635c:	00478793          	addi	a5,a5,4
   16360:	ffc7a583          	lw	a1,-4(a5)
   16364:	00470713          	addi	a4,a4,4 # 3ff00004 <_gp+0x3fee4074>
   16368:	feb72e23          	sw	a1,-4(a4)
   1636c:	fed7e8e3          	bltu	a5,a3,1635c <__copybits+0x2c>
   16370:	40c687b3          	sub	a5,a3,a2
   16374:	fe778793          	addi	a5,a5,-25
   16378:	ffc7f793          	andi	a5,a5,-4
   1637c:	00478793          	addi	a5,a5,4
   16380:	00f50533          	add	a0,a0,a5
   16384:	01057863          	bleu	a6,a0,16394 <__copybits+0x64>
   16388:	00450513          	addi	a0,a0,4
   1638c:	fe052e23          	sw	zero,-4(a0)
   16390:	ff056ce3          	bltu	a0,a6,16388 <__copybits+0x58>
   16394:	00008067          	ret

0000000000016398 <__any_on>:
   16398:	01452783          	lw	a5,20(a0)
   1639c:	4055d71b          	sraiw	a4,a1,0x5
   163a0:	01850693          	addi	a3,a0,24
   163a4:	04e7c463          	blt	a5,a4,163ec <__any_on+0x54>
   163a8:	04f75063          	ble	a5,a4,163e8 <__any_on+0x50>
   163ac:	00070793          	mv	a5,a4
   163b0:	00279793          	slli	a5,a5,0x2
   163b4:	01f5f593          	andi	a1,a1,31
   163b8:	00f687b3          	add	a5,a3,a5
   163bc:	04059063          	bnez	a1,163fc <__any_on+0x64>
   163c0:	04f6fa63          	bleu	a5,a3,16414 <__any_on+0x7c>
   163c4:	ffc7a503          	lw	a0,-4(a5)
   163c8:	ffc78793          	addi	a5,a5,-4
   163cc:	00051a63          	bnez	a0,163e0 <__any_on+0x48>
   163d0:	02f6f463          	bleu	a5,a3,163f8 <__any_on+0x60>
   163d4:	ffc78793          	addi	a5,a5,-4
   163d8:	0007a703          	lw	a4,0(a5)
   163dc:	fe070ae3          	beqz	a4,163d0 <__any_on+0x38>
   163e0:	00100513          	li	a0,1
   163e4:	00008067          	ret
   163e8:	00070793          	mv	a5,a4
   163ec:	00279793          	slli	a5,a5,0x2
   163f0:	00f687b3          	add	a5,a3,a5
   163f4:	fcdff06f          	j	163c0 <__any_on+0x28>
   163f8:	00008067          	ret
   163fc:	0007a603          	lw	a2,0(a5)
   16400:	00100513          	li	a0,1
   16404:	00b6573b          	srlw	a4,a2,a1
   16408:	00b715bb          	sllw	a1,a4,a1
   1640c:	fab60ae3          	beq	a2,a1,163c0 <__any_on+0x28>
   16410:	00008067          	ret
   16414:	00000513          	li	a0,0
   16418:	00008067          	ret

000000000001641c <__fpclassifyd>:
   1641c:	e20507d3          	fmv.x.d	a5,fa0
   16420:	00200513          	li	a0,2
   16424:	4207d713          	srai	a4,a5,0x20
   16428:	0007879b          	sext.w	a5,a5
   1642c:	00f766b3          	or	a3,a4,a5
   16430:	00069463          	bnez	a3,16438 <__fpclassifyd+0x1c>
   16434:	00008067          	ret
   16438:	800006b7          	lui	a3,0x80000
   1643c:	04d70863          	beq	a4,a3,1648c <__fpclassifyd+0x70>
   16440:	fff006b7          	lui	a3,0xfff00
   16444:	00d706bb          	addw	a3,a4,a3
   16448:	7fe00637          	lui	a2,0x7fe00
   1644c:	00400513          	li	a0,4
   16450:	fec6e2e3          	bltu	a3,a2,16434 <__fpclassifyd+0x18>
   16454:	7ff006b7          	lui	a3,0x7ff00
   16458:	00d706bb          	addw	a3,a4,a3
   1645c:	fcc6ece3          	bltu	a3,a2,16434 <__fpclassifyd+0x18>
   16460:	800006b7          	lui	a3,0x80000
   16464:	fff6c693          	not	a3,a3
   16468:	00d77733          	and	a4,a4,a3
   1646c:	001006b7          	lui	a3,0x100
   16470:	00300513          	li	a0,3
   16474:	fcd760e3          	bltu	a4,a3,16434 <__fpclassifyd+0x18>
   16478:	7ff006b7          	lui	a3,0x7ff00
   1647c:	00000513          	li	a0,0
   16480:	fad71ae3          	bne	a4,a3,16434 <__fpclassifyd+0x18>
   16484:	0017b513          	seqz	a0,a5
   16488:	00008067          	ret
   1648c:	fc079ae3          	bnez	a5,16460 <__fpclassifyd+0x44>
   16490:	00008067          	ret

0000000000016494 <__sread>:
   16494:	01259503          	lh	a0,18(a1)
   16498:	ff010113          	addi	sp,sp,-16
   1649c:	00813023          	sd	s0,0(sp)
   164a0:	00058413          	mv	s0,a1
   164a4:	00060593          	mv	a1,a2
   164a8:	00068613          	mv	a2,a3
   164ac:	00113423          	sd	ra,8(sp)
   164b0:	0cd020ef          	jal	18d7c <read>
   164b4:	02054063          	bltz	a0,164d4 <__sread+0x40>
   164b8:	09043783          	ld	a5,144(s0)
   164bc:	00813083          	ld	ra,8(sp)
   164c0:	00a787b3          	add	a5,a5,a0
   164c4:	08f43823          	sd	a5,144(s0)
   164c8:	00013403          	ld	s0,0(sp)
   164cc:	01010113          	addi	sp,sp,16
   164d0:	00008067          	ret
   164d4:	01045703          	lhu	a4,16(s0)
   164d8:	fffff7b7          	lui	a5,0xfffff
   164dc:	00813083          	ld	ra,8(sp)
   164e0:	fff7879b          	addiw	a5,a5,-1
   164e4:	00f777b3          	and	a5,a4,a5
   164e8:	00f41823          	sh	a5,16(s0)
   164ec:	00013403          	ld	s0,0(sp)
   164f0:	01010113          	addi	sp,sp,16
   164f4:	00008067          	ret

00000000000164f8 <__seofread>:
   164f8:	00000513          	li	a0,0
   164fc:	00008067          	ret

0000000000016500 <__swrite>:
   16500:	01059703          	lh	a4,16(a1)
   16504:	fd010113          	addi	sp,sp,-48
   16508:	02813023          	sd	s0,32(sp)
   1650c:	00913c23          	sd	s1,24(sp)
   16510:	02113423          	sd	ra,40(sp)
   16514:	10077793          	andi	a5,a4,256
   16518:	00058413          	mv	s0,a1
   1651c:	00060493          	mv	s1,a2
   16520:	02078063          	beqz	a5,16540 <__swrite+0x40>
   16524:	01259503          	lh	a0,18(a1)
   16528:	00200613          	li	a2,2
   1652c:	00000593          	li	a1,0
   16530:	00d13423          	sd	a3,8(sp)
   16534:	035020ef          	jal	18d68 <lseek>
   16538:	01041703          	lh	a4,16(s0)
   1653c:	00813683          	ld	a3,8(sp)
   16540:	fffff7b7          	lui	a5,0xfffff
   16544:	fff7879b          	addiw	a5,a5,-1
   16548:	00f777b3          	and	a5,a4,a5
   1654c:	01241503          	lh	a0,18(s0)
   16550:	00f41823          	sh	a5,16(s0)
   16554:	00048593          	mv	a1,s1
   16558:	02813083          	ld	ra,40(sp)
   1655c:	02013403          	ld	s0,32(sp)
   16560:	01813483          	ld	s1,24(sp)
   16564:	00068613          	mv	a2,a3
   16568:	03010113          	addi	sp,sp,48
   1656c:	0250206f          	j	18d90 <write>

0000000000016570 <__sseek>:
   16570:	01259503          	lh	a0,18(a1)
   16574:	ff010113          	addi	sp,sp,-16
   16578:	00813023          	sd	s0,0(sp)
   1657c:	00058413          	mv	s0,a1
   16580:	00060593          	mv	a1,a2
   16584:	00068613          	mv	a2,a3
   16588:	00113423          	sd	ra,8(sp)
   1658c:	7dc020ef          	jal	18d68 <lseek>
   16590:	fff00793          	li	a5,-1
   16594:	01045703          	lhu	a4,16(s0)
   16598:	02f50263          	beq	a0,a5,165bc <__sseek+0x4c>
   1659c:	00813083          	ld	ra,8(sp)
   165a0:	000017b7          	lui	a5,0x1
   165a4:	00f767b3          	or	a5,a4,a5
   165a8:	08a43823          	sd	a0,144(s0)
   165ac:	00f41823          	sh	a5,16(s0)
   165b0:	00013403          	ld	s0,0(sp)
   165b4:	01010113          	addi	sp,sp,16
   165b8:	00008067          	ret
   165bc:	fffff7b7          	lui	a5,0xfffff
   165c0:	00813083          	ld	ra,8(sp)
   165c4:	fff7879b          	addiw	a5,a5,-1
   165c8:	00f777b3          	and	a5,a4,a5
   165cc:	00f41823          	sh	a5,16(s0)
   165d0:	00013403          	ld	s0,0(sp)
   165d4:	01010113          	addi	sp,sp,16
   165d8:	00008067          	ret

00000000000165dc <__sclose>:
   165dc:	01259503          	lh	a0,18(a1)
   165e0:	05d0206f          	j	18e3c <close>

00000000000165e4 <strcmp>:
   165e4:	00b56733          	or	a4,a0,a1
   165e8:	fff00393          	li	t2,-1
   165ec:	00777713          	andi	a4,a4,7
   165f0:	0c071c63          	bnez	a4,166c8 <strcmp+0xe4>
   165f4:	00005e17          	auipc	t3,0x5
   165f8:	234e3e03          	ld	t3,564(t3) # 1b828 <mask>
   165fc:	00053603          	ld	a2,0(a0)
   16600:	0005b683          	ld	a3,0(a1)
   16604:	01c672b3          	and	t0,a2,t3
   16608:	01c66333          	or	t1,a2,t3
   1660c:	01c282b3          	add	t0,t0,t3
   16610:	0062e2b3          	or	t0,t0,t1
   16614:	0c729e63          	bne	t0,t2,166f0 <strcmp+0x10c>
   16618:	04d61663          	bne	a2,a3,16664 <strcmp+0x80>
   1661c:	00853603          	ld	a2,8(a0)
   16620:	0085b683          	ld	a3,8(a1)
   16624:	01c672b3          	and	t0,a2,t3
   16628:	01c66333          	or	t1,a2,t3
   1662c:	01c282b3          	add	t0,t0,t3
   16630:	0062e2b3          	or	t0,t0,t1
   16634:	0a729a63          	bne	t0,t2,166e8 <strcmp+0x104>
   16638:	02d61663          	bne	a2,a3,16664 <strcmp+0x80>
   1663c:	01053603          	ld	a2,16(a0)
   16640:	0105b683          	ld	a3,16(a1)
   16644:	01c672b3          	and	t0,a2,t3
   16648:	01c66333          	or	t1,a2,t3
   1664c:	01c282b3          	add	t0,t0,t3
   16650:	0062e2b3          	or	t0,t0,t1
   16654:	0a729463          	bne	t0,t2,166fc <strcmp+0x118>
   16658:	01850513          	addi	a0,a0,24
   1665c:	01858593          	addi	a1,a1,24
   16660:	f8d60ee3          	beq	a2,a3,165fc <strcmp+0x18>
   16664:	03061713          	slli	a4,a2,0x30
   16668:	03069793          	slli	a5,a3,0x30
   1666c:	02f71a63          	bne	a4,a5,166a0 <strcmp+0xbc>
   16670:	02061713          	slli	a4,a2,0x20
   16674:	02069793          	slli	a5,a3,0x20
   16678:	02f71463          	bne	a4,a5,166a0 <strcmp+0xbc>
   1667c:	01061713          	slli	a4,a2,0x10
   16680:	01069793          	slli	a5,a3,0x10
   16684:	00f71e63          	bne	a4,a5,166a0 <strcmp+0xbc>
   16688:	03065713          	srli	a4,a2,0x30
   1668c:	0306d793          	srli	a5,a3,0x30
   16690:	40f70533          	sub	a0,a4,a5
   16694:	0ff57593          	andi	a1,a0,255
   16698:	02059063          	bnez	a1,166b8 <strcmp+0xd4>
   1669c:	00008067          	ret
   166a0:	03075713          	srli	a4,a4,0x30
   166a4:	0307d793          	srli	a5,a5,0x30
   166a8:	40f70533          	sub	a0,a4,a5
   166ac:	0ff57593          	andi	a1,a0,255
   166b0:	00059463          	bnez	a1,166b8 <strcmp+0xd4>
   166b4:	00008067          	ret
   166b8:	0ff77713          	andi	a4,a4,255
   166bc:	0ff7f793          	andi	a5,a5,255
   166c0:	40f70533          	sub	a0,a4,a5
   166c4:	00008067          	ret
   166c8:	00054603          	lbu	a2,0(a0)
   166cc:	0005c683          	lbu	a3,0(a1)
   166d0:	00150513          	addi	a0,a0,1
   166d4:	00158593          	addi	a1,a1,1
   166d8:	00d61463          	bne	a2,a3,166e0 <strcmp+0xfc>
   166dc:	fe0616e3          	bnez	a2,166c8 <strcmp+0xe4>
   166e0:	40d60533          	sub	a0,a2,a3
   166e4:	00008067          	ret
   166e8:	00850513          	addi	a0,a0,8
   166ec:	00858593          	addi	a1,a1,8
   166f0:	fcd61ce3          	bne	a2,a3,166c8 <strcmp+0xe4>
   166f4:	00000513          	li	a0,0
   166f8:	00008067          	ret
   166fc:	01050513          	addi	a0,a0,16
   16700:	01058593          	addi	a1,a1,16
   16704:	fcd612e3          	bne	a2,a3,166c8 <strcmp+0xe4>
   16708:	00000513          	li	a0,0
   1670c:	00008067          	ret

0000000000016710 <strlen>:
   16710:	00757793          	andi	a5,a0,7
   16714:	00050593          	mv	a1,a0
   16718:	06079a63          	bnez	a5,1678c <strlen+0x7c>
   1671c:	0001c7b7          	lui	a5,0x1c
   16720:	8287b683          	ld	a3,-2008(a5) # 1b828 <mask>
   16724:	fff00613          	li	a2,-1
   16728:	00850513          	addi	a0,a0,8
   1672c:	ff853783          	ld	a5,-8(a0)
   16730:	00d7f733          	and	a4,a5,a3
   16734:	00d70733          	add	a4,a4,a3
   16738:	00d7e7b3          	or	a5,a5,a3
   1673c:	00f767b3          	or	a5,a4,a5
   16740:	fec784e3          	beq	a5,a2,16728 <strlen+0x18>
   16744:	ff854783          	lbu	a5,-8(a0)
   16748:	40b505b3          	sub	a1,a0,a1
   1674c:	06078263          	beqz	a5,167b0 <strlen+0xa0>
   16750:	ff954783          	lbu	a5,-7(a0)
   16754:	04078a63          	beqz	a5,167a8 <strlen+0x98>
   16758:	ffa54783          	lbu	a5,-6(a0)
   1675c:	06078263          	beqz	a5,167c0 <strlen+0xb0>
   16760:	ffb54783          	lbu	a5,-5(a0)
   16764:	04078a63          	beqz	a5,167b8 <strlen+0xa8>
   16768:	ffc54783          	lbu	a5,-4(a0)
   1676c:	ffd54703          	lbu	a4,-3(a0)
   16770:	ffe54683          	lbu	a3,-2(a0)
   16774:	04078a63          	beqz	a5,167c8 <strlen+0xb8>
   16778:	04070c63          	beqz	a4,167d0 <strlen+0xc0>
   1677c:	fff58513          	addi	a0,a1,-1
   16780:	04068c63          	beqz	a3,167d8 <strlen+0xc8>
   16784:	00008067          	ret
   16788:	f8070ae3          	beqz	a4,1671c <strlen+0xc>
   1678c:	00054783          	lbu	a5,0(a0)
   16790:	00150513          	addi	a0,a0,1
   16794:	00757713          	andi	a4,a0,7
   16798:	fe0798e3          	bnez	a5,16788 <strlen+0x78>
   1679c:	40b50533          	sub	a0,a0,a1
   167a0:	fff50513          	addi	a0,a0,-1
   167a4:	00008067          	ret
   167a8:	ff958513          	addi	a0,a1,-7
   167ac:	00008067          	ret
   167b0:	ff858513          	addi	a0,a1,-8
   167b4:	00008067          	ret
   167b8:	ffb58513          	addi	a0,a1,-5
   167bc:	00008067          	ret
   167c0:	ffa58513          	addi	a0,a1,-6
   167c4:	00008067          	ret
   167c8:	ffc58513          	addi	a0,a1,-4
   167cc:	00008067          	ret
   167d0:	ffd58513          	addi	a0,a1,-3
   167d4:	00008067          	ret
   167d8:	ffe58513          	addi	a0,a1,-2
   167dc:	00008067          	ret

00000000000167e0 <__sprint_r.part.0>:
   167e0:	0ac5a783          	lw	a5,172(a1)
   167e4:	fb010113          	addi	sp,sp,-80
   167e8:	01613823          	sd	s6,16(sp)
   167ec:	04113423          	sd	ra,72(sp)
   167f0:	04813023          	sd	s0,64(sp)
   167f4:	02913c23          	sd	s1,56(sp)
   167f8:	03213823          	sd	s2,48(sp)
   167fc:	03313423          	sd	s3,40(sp)
   16800:	03413023          	sd	s4,32(sp)
   16804:	01513c23          	sd	s5,24(sp)
   16808:	01713423          	sd	s7,8(sp)
   1680c:	03279713          	slli	a4,a5,0x32
   16810:	00060b13          	mv	s6,a2
   16814:	0a075863          	bgez	a4,168c4 <__sprint_r.part.0+0xe4>
   16818:	01063783          	ld	a5,16(a2) # 7fe00010 <_gp+0x7fde4080>
   1681c:	00058a13          	mv	s4,a1
   16820:	00050a93          	mv	s5,a0
   16824:	00063b83          	ld	s7,0(a2)
   16828:	fff00993          	li	s3,-1
   1682c:	08078863          	beqz	a5,168bc <__sprint_r.part.0+0xdc>
   16830:	008bb903          	ld	s2,8(s7)
   16834:	000bb483          	ld	s1,0(s7)
   16838:	00000413          	li	s0,0
   1683c:	00295913          	srli	s2,s2,0x2
   16840:	0009091b          	sext.w	s2,s2
   16844:	01204863          	bgtz	s2,16854 <__sprint_r.part.0+0x74>
   16848:	0600006f          	j	168a8 <__sprint_r.part.0+0xc8>
   1684c:	00448493          	addi	s1,s1,4
   16850:	04890a63          	beq	s2,s0,168a4 <__sprint_r.part.0+0xc4>
   16854:	0004a583          	lw	a1,0(s1)
   16858:	000a0613          	mv	a2,s4
   1685c:	000a8513          	mv	a0,s5
   16860:	524010ef          	jal	17d84 <_fputwc_r>
   16864:	0014041b          	addiw	s0,s0,1
   16868:	ff3512e3          	bne	a0,s3,1684c <__sprint_r.part.0+0x6c>
   1686c:	00098513          	mv	a0,s3
   16870:	04813083          	ld	ra,72(sp)
   16874:	000b3823          	sd	zero,16(s6)
   16878:	000b2423          	sw	zero,8(s6)
   1687c:	04013403          	ld	s0,64(sp)
   16880:	03813483          	ld	s1,56(sp)
   16884:	03013903          	ld	s2,48(sp)
   16888:	02813983          	ld	s3,40(sp)
   1688c:	02013a03          	ld	s4,32(sp)
   16890:	01813a83          	ld	s5,24(sp)
   16894:	01013b03          	ld	s6,16(sp)
   16898:	00813b83          	ld	s7,8(sp)
   1689c:	05010113          	addi	sp,sp,80
   168a0:	00008067          	ret
   168a4:	010b3783          	ld	a5,16(s6)
   168a8:	00291913          	slli	s2,s2,0x2
   168ac:	412787b3          	sub	a5,a5,s2
   168b0:	00fb3823          	sd	a5,16(s6)
   168b4:	010b8b93          	addi	s7,s7,16
   168b8:	f6079ce3          	bnez	a5,16830 <__sprint_r.part.0+0x50>
   168bc:	00000513          	li	a0,0
   168c0:	fb1ff06f          	j	16870 <__sprint_r.part.0+0x90>
   168c4:	564010ef          	jal	17e28 <__sfvwrite_r>
   168c8:	fa9ff06f          	j	16870 <__sprint_r.part.0+0x90>

00000000000168cc <__sprint_r>:
   168cc:	01063703          	ld	a4,16(a2)
   168d0:	00070463          	beqz	a4,168d8 <__sprint_r+0xc>
   168d4:	f0dff06f          	j	167e0 <__sprint_r.part.0>
   168d8:	00062423          	sw	zero,8(a2)
   168dc:	00000513          	li	a0,0
   168e0:	00008067          	ret

00000000000168e4 <_vfiprintf_r>:
   168e4:	e6010113          	addi	sp,sp,-416
   168e8:	17513423          	sd	s5,360(sp)
   168ec:	17613023          	sd	s6,352(sp)
   168f0:	15a13023          	sd	s10,320(sp)
   168f4:	18113c23          	sd	ra,408(sp)
   168f8:	18813823          	sd	s0,400(sp)
   168fc:	18913423          	sd	s1,392(sp)
   16900:	19213023          	sd	s2,384(sp)
   16904:	17313c23          	sd	s3,376(sp)
   16908:	17413823          	sd	s4,368(sp)
   1690c:	15713c23          	sd	s7,344(sp)
   16910:	15813823          	sd	s8,336(sp)
   16914:	15913423          	sd	s9,328(sp)
   16918:	13b13c23          	sd	s11,312(sp)
   1691c:	00d13423          	sd	a3,8(sp)
   16920:	00050a93          	mv	s5,a0
   16924:	00058d13          	mv	s10,a1
   16928:	00060b13          	mv	s6,a2
   1692c:	00050663          	beqz	a0,16938 <_vfiprintf_r+0x54>
   16930:	05052783          	lw	a5,80(a0)
   16934:	1e078c63          	beqz	a5,16b2c <_vfiprintf_r+0x248>
   16938:	010d1683          	lh	a3,16(s10)
   1693c:	03069793          	slli	a5,a3,0x30
   16940:	0307d793          	srli	a5,a5,0x30
   16944:	03279713          	slli	a4,a5,0x32
   16948:	02074a63          	bltz	a4,1697c <_vfiprintf_r+0x98>
   1694c:	000027b7          	lui	a5,0x2
   16950:	0acd2603          	lw	a2,172(s10)
   16954:	00f6e7b3          	or	a5,a3,a5
   16958:	0107979b          	slliw	a5,a5,0x10
   1695c:	ffffe737          	lui	a4,0xffffe
   16960:	4107d79b          	sraiw	a5,a5,0x10
   16964:	fff7071b          	addiw	a4,a4,-1
   16968:	00e67733          	and	a4,a2,a4
   1696c:	00fd1823          	sh	a5,16(s10)
   16970:	03079793          	slli	a5,a5,0x30
   16974:	0aed2623          	sw	a4,172(s10)
   16978:	0307d793          	srli	a5,a5,0x30
   1697c:	0087f713          	andi	a4,a5,8
   16980:	12070a63          	beqz	a4,16ab4 <_vfiprintf_r+0x1d0>
   16984:	018d3703          	ld	a4,24(s10)
   16988:	12070663          	beqz	a4,16ab4 <_vfiprintf_r+0x1d0>
   1698c:	01a7f793          	andi	a5,a5,26
   16990:	00a00713          	li	a4,10
   16994:	14e78063          	beq	a5,a4,16ad4 <_vfiprintf_r+0x1f0>
   16998:	0b010c93          	addi	s9,sp,176
   1699c:	00019c37          	lui	s8,0x19
   169a0:	0af10793          	addi	a5,sp,175
   169a4:	4c8c0713          	addi	a4,s8,1224 # 194c8 <__mprec_bigtens+0x28>
   169a8:	40fc87b3          	sub	a5,s9,a5
   169ac:	000198b7          	lui	a7,0x19
   169b0:	07913823          	sd	s9,112(sp)
   169b4:	08013023          	sd	zero,128(sp)
   169b8:	06012c23          	sw	zero,120(sp)
   169bc:	000c8413          	mv	s0,s9
   169c0:	00013c23          	sd	zero,24(sp)
   169c4:	04012c23          	sw	zero,88(sp)
   169c8:	00e13823          	sd	a4,16(sp)
   169cc:	63088c13          	addi	s8,a7,1584 # 19630 <blanks.4136>
   169d0:	04f12e23          	sw	a5,92(sp)
   169d4:	000b4783          	lbu	a5,0(s6)
   169d8:	4e078ee3          	beqz	a5,176d4 <_vfiprintf_r+0xdf0>
   169dc:	02500713          	li	a4,37
   169e0:	000b0493          	mv	s1,s6
   169e4:	00e79663          	bne	a5,a4,169f0 <_vfiprintf_r+0x10c>
   169e8:	0580006f          	j	16a40 <_vfiprintf_r+0x15c>
   169ec:	00e78863          	beq	a5,a4,169fc <_vfiprintf_r+0x118>
   169f0:	00148493          	addi	s1,s1,1
   169f4:	0004c783          	lbu	a5,0(s1)
   169f8:	fe079ae3          	bnez	a5,169ec <_vfiprintf_r+0x108>
   169fc:	4164893b          	subw	s2,s1,s6
   16a00:	04090063          	beqz	s2,16a40 <_vfiprintf_r+0x15c>
   16a04:	08013703          	ld	a4,128(sp)
   16a08:	07812783          	lw	a5,120(sp)
   16a0c:	00090613          	mv	a2,s2
   16a10:	00e60733          	add	a4,a2,a4
   16a14:	0017879b          	addiw	a5,a5,1
   16a18:	00c43423          	sd	a2,8(s0)
   16a1c:	01643023          	sd	s6,0(s0)
   16a20:	08e13023          	sd	a4,128(sp)
   16a24:	06f12c23          	sw	a5,120(sp)
   16a28:	00700613          	li	a2,7
   16a2c:	01040413          	addi	s0,s0,16
   16a30:	06f64463          	blt	a2,a5,16a98 <_vfiprintf_r+0x1b4>
   16a34:	05812783          	lw	a5,88(sp)
   16a38:	012787bb          	addw	a5,a5,s2
   16a3c:	04f12c23          	sw	a5,88(sp)
   16a40:	0004c783          	lbu	a5,0(s1)
   16a44:	580786e3          	beqz	a5,177d0 <_vfiprintf_r+0xeec>
   16a48:	00148813          	addi	a6,s1,1
   16a4c:	060103a3          	sb	zero,103(sp)
   16a50:	00000513          	li	a0,0
   16a54:	00000e93          	li	t4,0
   16a58:	fff00493          	li	s1,-1
   16a5c:	00000913          	li	s2,0
   16a60:	00000313          	li	t1,0
   16a64:	05800613          	li	a2,88
   16a68:	00900593          	li	a1,9
   16a6c:	02a00f13          	li	t5,42
   16a70:	00084703          	lbu	a4,0(a6)
   16a74:	00180b13          	addi	s6,a6,1
   16a78:	fe07079b          	addiw	a5,a4,-32
   16a7c:	66f66263          	bltu	a2,a5,170e0 <_vfiprintf_r+0x7fc>
   16a80:	01013683          	ld	a3,16(sp)
   16a84:	02079793          	slli	a5,a5,0x20
   16a88:	01e7d793          	srli	a5,a5,0x1e
   16a8c:	00d787b3          	add	a5,a5,a3
   16a90:	0007a783          	lw	a5,0(a5) # 2000 <_ftext-0xe000>
   16a94:	00078067          	jr	a5
   16a98:	2e071ee3          	bnez	a4,17594 <_vfiprintf_r+0xcb0>
   16a9c:	06012c23          	sw	zero,120(sp)
   16aa0:	000c8413          	mv	s0,s9
   16aa4:	f91ff06f          	j	16a34 <_vfiprintf_r+0x150>
   16aa8:	01036313          	ori	t1,t1,16
   16aac:	000b0813          	mv	a6,s6
   16ab0:	fc1ff06f          	j	16a70 <_vfiprintf_r+0x18c>
   16ab4:	000d0593          	mv	a1,s10
   16ab8:	000a8513          	mv	a0,s5
   16abc:	949fb0ef          	jal	12404 <__swsetup_r>
   16ac0:	4e0512e3          	bnez	a0,177a4 <_vfiprintf_r+0xec0>
   16ac4:	010d5783          	lhu	a5,16(s10)
   16ac8:	00a00713          	li	a4,10
   16acc:	01a7f793          	andi	a5,a5,26
   16ad0:	ece794e3          	bne	a5,a4,16998 <_vfiprintf_r+0xb4>
   16ad4:	012d1783          	lh	a5,18(s10)
   16ad8:	ec07c0e3          	bltz	a5,16998 <_vfiprintf_r+0xb4>
   16adc:	00813683          	ld	a3,8(sp)
   16ae0:	000b0613          	mv	a2,s6
   16ae4:	000d0593          	mv	a1,s10
   16ae8:	000a8513          	mv	a0,s5
   16aec:	6a9000ef          	jal	17994 <__sbprintf>
   16af0:	19813083          	ld	ra,408(sp)
   16af4:	19013403          	ld	s0,400(sp)
   16af8:	18813483          	ld	s1,392(sp)
   16afc:	18013903          	ld	s2,384(sp)
   16b00:	17813983          	ld	s3,376(sp)
   16b04:	17013a03          	ld	s4,368(sp)
   16b08:	16813a83          	ld	s5,360(sp)
   16b0c:	16013b03          	ld	s6,352(sp)
   16b10:	15813b83          	ld	s7,344(sp)
   16b14:	15013c03          	ld	s8,336(sp)
   16b18:	14813c83          	ld	s9,328(sp)
   16b1c:	14013d03          	ld	s10,320(sp)
   16b20:	13813d83          	ld	s11,312(sp)
   16b24:	1a010113          	addi	sp,sp,416
   16b28:	00008067          	ret
   16b2c:	de4fd0ef          	jal	14110 <__sinit>
   16b30:	e09ff06f          	j	16938 <_vfiprintf_r+0x54>
   16b34:	00813783          	ld	a5,8(sp)
   16b38:	0007a903          	lw	s2,0(a5)
   16b3c:	00878793          	addi	a5,a5,8
   16b40:	00f13423          	sd	a5,8(sp)
   16b44:	f60954e3          	bgez	s2,16aac <_vfiprintf_r+0x1c8>
   16b48:	4120093b          	negw	s2,s2
   16b4c:	00436313          	ori	t1,t1,4
   16b50:	000b0813          	mv	a6,s6
   16b54:	f1dff06f          	j	16a70 <_vfiprintf_r+0x18c>
   16b58:	03000793          	li	a5,48
   16b5c:	06f10423          	sb	a5,104(sp)
   16b60:	07800793          	li	a5,120
   16b64:	06f104a3          	sb	a5,105(sp)
   16b68:	00813783          	ld	a5,8(sp)
   16b6c:	060103a3          	sb	zero,103(sp)
   16b70:	00236613          	ori	a2,t1,2
   16b74:	00878713          	addi	a4,a5,8
   16b78:	0007b783          	ld	a5,0(a5)
   16b7c:	2e04cce3          	bltz	s1,17674 <_vfiprintf_r+0xd90>
   16b80:	f7f37313          	andi	t1,t1,-129
   16b84:	00e13423          	sd	a4,8(sp)
   16b88:	00236313          	ori	t1,t1,2
   16b8c:	32079ae3          	bnez	a5,176c0 <_vfiprintf_r+0xddc>
   16b90:	000197b7          	lui	a5,0x19
   16b94:	69078793          	addi	a5,a5,1680 # 19690 <zeroes.4137+0x50>
   16b98:	00f13c23          	sd	a5,24(sp)
   16b9c:	00000593          	li	a1,0
   16ba0:	200498e3          	bnez	s1,175b0 <_vfiprintf_r+0xccc>
   16ba4:	00000493          	li	s1,0
   16ba8:	00000a13          	li	s4,0
   16bac:	000c8b93          	mv	s7,s9
   16bb0:	00048993          	mv	s3,s1
   16bb4:	0144d463          	ble	s4,s1,16bbc <_vfiprintf_r+0x2d8>
   16bb8:	000a0993          	mv	s3,s4
   16bbc:	00b035b3          	snez	a1,a1
   16bc0:	00b989bb          	addw	s3,s3,a1
   16bc4:	00237393          	andi	t2,t1,2
   16bc8:	00038463          	beqz	t2,16bd0 <_vfiprintf_r+0x2ec>
   16bcc:	0029899b          	addiw	s3,s3,2
   16bd0:	08437293          	andi	t0,t1,132
   16bd4:	58029463          	bnez	t0,1715c <_vfiprintf_r+0x878>
   16bd8:	41390dbb          	subw	s11,s2,s3
   16bdc:	59b05063          	blez	s11,1715c <_vfiprintf_r+0x878>
   16be0:	01000793          	li	a5,16
   16be4:	45b7dee3          	ble	s11,a5,17840 <_vfiprintf_r+0xf5c>
   16be8:	01000e93          	li	t4,16
   16bec:	08013783          	ld	a5,128(sp)
   16bf0:	07812503          	lw	a0,120(sp)
   16bf4:	05813823          	sd	s8,80(sp)
   16bf8:	00700f13          	li	t5,7
   16bfc:	000e8f93          	mv	t6,t4
   16c00:	0180006f          	j	16c18 <_vfiprintf_r+0x334>
   16c04:	0025061b          	addiw	a2,a0,2
   16c08:	01040413          	addi	s0,s0,16
   16c0c:	00058513          	mv	a0,a1
   16c10:	ff0d8d9b          	addiw	s11,s11,-16
   16c14:	03bfdc63          	ble	s11,t6,16c4c <_vfiprintf_r+0x368>
   16c18:	01078793          	addi	a5,a5,16
   16c1c:	0015059b          	addiw	a1,a0,1
   16c20:	01843023          	sd	s8,0(s0)
   16c24:	01d43423          	sd	t4,8(s0)
   16c28:	08f13023          	sd	a5,128(sp)
   16c2c:	06b12c23          	sw	a1,120(sp)
   16c30:	fcbf5ae3          	ble	a1,t5,16c04 <_vfiprintf_r+0x320>
   16c34:	4c079863          	bnez	a5,17104 <_vfiprintf_r+0x820>
   16c38:	ff0d8d9b          	addiw	s11,s11,-16
   16c3c:	00000513          	li	a0,0
   16c40:	00100613          	li	a2,1
   16c44:	000c8413          	mv	s0,s9
   16c48:	fdbfc8e3          	blt	t6,s11,16c18 <_vfiprintf_r+0x334>
   16c4c:	05013703          	ld	a4,80(sp)
   16c50:	00fd87b3          	add	a5,s11,a5
   16c54:	01b43423          	sd	s11,8(s0)
   16c58:	00e43023          	sd	a4,0(s0)
   16c5c:	08f13023          	sd	a5,128(sp)
   16c60:	06c12c23          	sw	a2,120(sp)
   16c64:	00700593          	li	a1,7
   16c68:	7ac5cc63          	blt	a1,a2,17420 <_vfiprintf_r+0xb3c>
   16c6c:	06714503          	lbu	a0,103(sp)
   16c70:	01040413          	addi	s0,s0,16
   16c74:	0016059b          	addiw	a1,a2,1
   16c78:	4e051c63          	bnez	a0,17170 <_vfiprintf_r+0x88c>
   16c7c:	52038663          	beqz	t2,171a8 <_vfiprintf_r+0x8c4>
   16c80:	06810613          	addi	a2,sp,104
   16c84:	00278793          	addi	a5,a5,2
   16c88:	00c43023          	sd	a2,0(s0)
   16c8c:	00200613          	li	a2,2
   16c90:	00c43423          	sd	a2,8(s0)
   16c94:	08f13023          	sd	a5,128(sp)
   16c98:	06b12c23          	sw	a1,120(sp)
   16c9c:	00700613          	li	a2,7
   16ca0:	7cb65863          	ble	a1,a2,17470 <_vfiprintf_r+0xb8c>
   16ca4:	10079ae3          	bnez	a5,175b8 <_vfiprintf_r+0xcd4>
   16ca8:	08000513          	li	a0,128
   16cac:	00100593          	li	a1,1
   16cb0:	00000613          	li	a2,0
   16cb4:	000c8413          	mv	s0,s9
   16cb8:	4ea29c63          	bne	t0,a0,171b0 <_vfiprintf_r+0x8cc>
   16cbc:	41390ebb          	subw	t4,s2,s3
   16cc0:	4fd05863          	blez	t4,171b0 <_vfiprintf_r+0x8cc>
   16cc4:	01000513          	li	a0,16
   16cc8:	3fd55ce3          	ble	t4,a0,178c0 <_vfiprintf_r+0xfdc>
   16ccc:	01000f13          	li	t5,16
   16cd0:	00019737          	lui	a4,0x19
   16cd4:	64070d93          	addi	s11,a4,1600 # 19640 <zeroes.4137>
   16cd8:	00700f93          	li	t6,7
   16cdc:	000f0293          	mv	t0,t5
   16ce0:	0180006f          	j	16cf8 <_vfiprintf_r+0x414>
   16ce4:	0026051b          	addiw	a0,a2,2
   16ce8:	01040413          	addi	s0,s0,16
   16cec:	00058613          	mv	a2,a1
   16cf0:	ff0e8e9b          	addiw	t4,t4,-16
   16cf4:	03d2dc63          	ble	t4,t0,16d2c <_vfiprintf_r+0x448>
   16cf8:	01078793          	addi	a5,a5,16
   16cfc:	0016059b          	addiw	a1,a2,1
   16d00:	01b43023          	sd	s11,0(s0)
   16d04:	01e43423          	sd	t5,8(s0)
   16d08:	08f13023          	sd	a5,128(sp)
   16d0c:	06b12c23          	sw	a1,120(sp)
   16d10:	fcbfdae3          	ble	a1,t6,16ce4 <_vfiprintf_r+0x400>
   16d14:	6a079e63          	bnez	a5,173d0 <_vfiprintf_r+0xaec>
   16d18:	ff0e8e9b          	addiw	t4,t4,-16
   16d1c:	00100513          	li	a0,1
   16d20:	00000613          	li	a2,0
   16d24:	000c8413          	mv	s0,s9
   16d28:	fdd2c8e3          	blt	t0,t4,16cf8 <_vfiprintf_r+0x414>
   16d2c:	01d787b3          	add	a5,a5,t4
   16d30:	01b43023          	sd	s11,0(s0)
   16d34:	01d43423          	sd	t4,8(s0)
   16d38:	08f13023          	sd	a5,128(sp)
   16d3c:	06a12c23          	sw	a0,120(sp)
   16d40:	00700613          	li	a2,7
   16d44:	0ea646e3          	blt	a2,a0,17630 <_vfiprintf_r+0xd4c>
   16d48:	414484bb          	subw	s1,s1,s4
   16d4c:	01040413          	addi	s0,s0,16
   16d50:	0015059b          	addiw	a1,a0,1
   16d54:	00050613          	mv	a2,a0
   16d58:	46904063          	bgtz	s1,171b8 <_vfiprintf_r+0x8d4>
   16d5c:	00fa07b3          	add	a5,s4,a5
   16d60:	01743023          	sd	s7,0(s0)
   16d64:	01443423          	sd	s4,8(s0)
   16d68:	08f13023          	sd	a5,128(sp)
   16d6c:	06b12c23          	sw	a1,120(sp)
   16d70:	00700713          	li	a4,7
   16d74:	4eb75a63          	ble	a1,a4,17268 <_vfiprintf_r+0x984>
   16d78:	7a079463          	bnez	a5,17520 <_vfiprintf_r+0xc3c>
   16d7c:	06012c23          	sw	zero,120(sp)
   16d80:	00437313          	andi	t1,t1,4
   16d84:	00030663          	beqz	t1,16d90 <_vfiprintf_r+0x4ac>
   16d88:	413904bb          	subw	s1,s2,s3
   16d8c:	229040e3          	bgtz	s1,177ac <_vfiprintf_r+0xec8>
   16d90:	01395463          	ble	s3,s2,16d98 <_vfiprintf_r+0x4b4>
   16d94:	00098913          	mv	s2,s3
   16d98:	05812783          	lw	a5,88(sp)
   16d9c:	012787bb          	addw	a5,a5,s2
   16da0:	04f12c23          	sw	a5,88(sp)
   16da4:	06012c23          	sw	zero,120(sp)
   16da8:	000c8413          	mv	s0,s9
   16dac:	c29ff06f          	j	169d4 <_vfiprintf_r+0xf0>
   16db0:	00100513          	li	a0,1
   16db4:	02b00e93          	li	t4,43
   16db8:	000b0813          	mv	a6,s6
   16dbc:	cb5ff06f          	j	16a70 <_vfiprintf_r+0x18c>
   16dc0:	08036313          	ori	t1,t1,128
   16dc4:	000b0813          	mv	a6,s6
   16dc8:	ca9ff06f          	j	16a70 <_vfiprintf_r+0x18c>
   16dcc:	00000913          	li	s2,0
   16dd0:	fd07079b          	addiw	a5,a4,-48
   16dd4:	001b0b13          	addi	s6,s6,1
   16dd8:	fffb4703          	lbu	a4,-1(s6)
   16ddc:	00191f9b          	slliw	t6,s2,0x1
   16de0:	0039191b          	slliw	s2,s2,0x3
   16de4:	012f893b          	addw	s2,t6,s2
   16de8:	0127893b          	addw	s2,a5,s2
   16dec:	fd07079b          	addiw	a5,a4,-48
   16df0:	fef5f2e3          	bleu	a5,a1,16dd4 <_vfiprintf_r+0x4f0>
   16df4:	c85ff06f          	j	16a78 <_vfiprintf_r+0x194>
   16df8:	360518e3          	bnez	a0,17968 <_vfiprintf_r+0x1084>
   16dfc:	01036313          	ori	t1,t1,16
   16e00:	01037793          	andi	a5,t1,16
   16e04:	74078263          	beqz	a5,17548 <_vfiprintf_r+0xc64>
   16e08:	00813703          	ld	a4,8(sp)
   16e0c:	00073783          	ld	a5,0(a4)
   16e10:	00870713          	addi	a4,a4,8
   16e14:	00e13423          	sd	a4,8(sp)
   16e18:	0e07c6e3          	bltz	a5,17704 <_vfiprintf_r+0xe20>
   16e1c:	06714583          	lbu	a1,103(sp)
   16e20:	6e04c063          	bltz	s1,17500 <_vfiprintf_r+0xc1c>
   16e24:	f7f37313          	andi	t1,t1,-129
   16e28:	10078c63          	beqz	a5,16f40 <_vfiprintf_r+0x65c>
   16e2c:	00900613          	li	a2,9
   16e30:	000c8b93          	mv	s7,s9
   16e34:	00a00513          	li	a0,10
   16e38:	10f67863          	bleu	a5,a2,16f48 <_vfiprintf_r+0x664>
   16e3c:	02a7f633          	remu	a2,a5,a0
   16e40:	fffb8b93          	addi	s7,s7,-1
   16e44:	02a7d7b3          	divu	a5,a5,a0
   16e48:	0306061b          	addiw	a2,a2,48
   16e4c:	00cb8023          	sb	a2,0(s7)
   16e50:	fe0796e3          	bnez	a5,16e3c <_vfiprintf_r+0x558>
   16e54:	417c8a3b          	subw	s4,s9,s7
   16e58:	d59ff06f          	j	16bb0 <_vfiprintf_r+0x2cc>
   16e5c:	300512e3          	bnez	a0,17960 <_vfiprintf_r+0x107c>
   16e60:	01036313          	ori	t1,t1,16
   16e64:	01037793          	andi	a5,t1,16
   16e68:	6e078e63          	beqz	a5,17564 <_vfiprintf_r+0xc80>
   16e6c:	00813783          	ld	a5,8(sp)
   16e70:	060103a3          	sb	zero,103(sp)
   16e74:	00878713          	addi	a4,a5,8
   16e78:	0007b783          	ld	a5,0(a5)
   16e7c:	7004c263          	bltz	s1,17580 <_vfiprintf_r+0xc9c>
   16e80:	00e13423          	sd	a4,8(sp)
   16e84:	f7f37313          	andi	t1,t1,-129
   16e88:	70079263          	bnez	a5,1758c <_vfiprintf_r+0xca8>
   16e8c:	00000593          	li	a1,0
   16e90:	00000793          	li	a5,0
   16e94:	2a0482e3          	beqz	s1,17938 <_vfiprintf_r+0x1054>
   16e98:	000c8b93          	mv	s7,s9
   16e9c:	0077f613          	andi	a2,a5,7
   16ea0:	fffb8b93          	addi	s7,s7,-1
   16ea4:	0306061b          	addiw	a2,a2,48
   16ea8:	00cb8023          	sb	a2,0(s7)
   16eac:	0037d793          	srli	a5,a5,0x3
   16eb0:	fe0796e3          	bnez	a5,16e9c <_vfiprintf_r+0x5b8>
   16eb4:	00137793          	andi	a5,t1,1
   16eb8:	f8078ee3          	beqz	a5,16e54 <_vfiprintf_r+0x570>
   16ebc:	03000793          	li	a5,48
   16ec0:	f8f60ae3          	beq	a2,a5,16e54 <_vfiprintf_r+0x570>
   16ec4:	fffb8613          	addi	a2,s7,-1
   16ec8:	40cc8a33          	sub	s4,s9,a2
   16ecc:	fefb8fa3          	sb	a5,-1(s7)
   16ed0:	000a0a1b          	sext.w	s4,s4
   16ed4:	00060b93          	mv	s7,a2
   16ed8:	cd9ff06f          	j	16bb0 <_vfiprintf_r+0x2cc>
   16edc:	28051ee3          	bnez	a0,17978 <_vfiprintf_r+0x1094>
   16ee0:	01037793          	andi	a5,t1,16
   16ee4:	040786e3          	beqz	a5,17730 <_vfiprintf_r+0xe4c>
   16ee8:	00813683          	ld	a3,8(sp)
   16eec:	05812703          	lw	a4,88(sp)
   16ef0:	0006b783          	ld	a5,0(a3) # 7ff00000 <_gp+0x7fee4070>
   16ef4:	00868693          	addi	a3,a3,8
   16ef8:	00d13423          	sd	a3,8(sp)
   16efc:	00e7b023          	sd	a4,0(a5)
   16f00:	ad5ff06f          	j	169d4 <_vfiprintf_r+0xf0>
   16f04:	260516e3          	bnez	a0,17970 <_vfiprintf_r+0x108c>
   16f08:	01036313          	ori	t1,t1,16
   16f0c:	01037793          	andi	a5,t1,16
   16f10:	5c079a63          	bnez	a5,174e4 <_vfiprintf_r+0xc00>
   16f14:	04037793          	andi	a5,t1,64
   16f18:	060103a3          	sb	zero,103(sp)
   16f1c:	7c078063          	beqz	a5,176dc <_vfiprintf_r+0xdf8>
   16f20:	00813783          	ld	a5,8(sp)
   16f24:	00878713          	addi	a4,a5,8
   16f28:	0007d783          	lhu	a5,0(a5)
   16f2c:	5c04c663          	bltz	s1,174f8 <_vfiprintf_r+0xc14>
   16f30:	00e13423          	sd	a4,8(sp)
   16f34:	f7f37313          	andi	t1,t1,-129
   16f38:	00000593          	li	a1,0
   16f3c:	ee0798e3          	bnez	a5,16e2c <_vfiprintf_r+0x548>
   16f40:	c60482e3          	beqz	s1,16ba4 <_vfiprintf_r+0x2c0>
   16f44:	00000793          	li	a5,0
   16f48:	0307879b          	addiw	a5,a5,48
   16f4c:	0af107a3          	sb	a5,175(sp)
   16f50:	05c12a03          	lw	s4,92(sp)
   16f54:	0af10b93          	addi	s7,sp,175
   16f58:	c59ff06f          	j	16bb0 <_vfiprintf_r+0x2cc>
   16f5c:	b40e98e3          	bnez	t4,16aac <_vfiprintf_r+0x1c8>
   16f60:	00100513          	li	a0,1
   16f64:	02000e93          	li	t4,32
   16f68:	000b0813          	mv	a6,s6
   16f6c:	b05ff06f          	j	16a70 <_vfiprintf_r+0x18c>
   16f70:	00136313          	ori	t1,t1,1
   16f74:	000b0813          	mv	a6,s6
   16f78:	af9ff06f          	j	16a70 <_vfiprintf_r+0x18c>
   16f7c:	00813783          	ld	a5,8(sp)
   16f80:	060103a3          	sb	zero,103(sp)
   16f84:	0007bb83          	ld	s7,0(a5)
   16f88:	00878d93          	addi	s11,a5,8
   16f8c:	0e0b84e3          	beqz	s7,17874 <_vfiprintf_r+0xf90>
   16f90:	0404cee3          	bltz	s1,177ec <_vfiprintf_r+0xf08>
   16f94:	00048613          	mv	a2,s1
   16f98:	00000593          	li	a1,0
   16f9c:	000b8513          	mv	a0,s7
   16fa0:	00613423          	sd	t1,8(sp)
   16fa4:	928fe0ef          	jal	150cc <memchr>
   16fa8:	00813303          	ld	t1,8(sp)
   16fac:	120502e3          	beqz	a0,178d0 <_vfiprintf_r+0xfec>
   16fb0:	41750a3b          	subw	s4,a0,s7
   16fb4:	06714583          	lbu	a1,103(sp)
   16fb8:	01b13423          	sd	s11,8(sp)
   16fbc:	00000493          	li	s1,0
   16fc0:	bf1ff06f          	j	16bb0 <_vfiprintf_r+0x2cc>
   16fc4:	f40504e3          	beqz	a0,16f0c <_vfiprintf_r+0x628>
   16fc8:	07d103a3          	sb	t4,103(sp)
   16fcc:	f41ff06f          	j	16f0c <_vfiprintf_r+0x628>
   16fd0:	00813703          	ld	a4,8(sp)
   16fd4:	00100993          	li	s3,1
   16fd8:	060103a3          	sb	zero,103(sp)
   16fdc:	00072783          	lw	a5,0(a4)
   16fe0:	00098a13          	mv	s4,s3
   16fe4:	08810b93          	addi	s7,sp,136
   16fe8:	08f10423          	sb	a5,136(sp)
   16fec:	00870793          	addi	a5,a4,8
   16ff0:	00f13423          	sd	a5,8(sp)
   16ff4:	00000493          	li	s1,0
   16ff8:	bcdff06f          	j	16bc4 <_vfiprintf_r+0x2e0>
   16ffc:	e00502e3          	beqz	a0,16e00 <_vfiprintf_r+0x51c>
   17000:	07d103a3          	sb	t4,103(sp)
   17004:	dfdff06f          	j	16e00 <_vfiprintf_r+0x51c>
   17008:	120510e3          	bnez	a0,17928 <_vfiprintf_r+0x1044>
   1700c:	000197b7          	lui	a5,0x19
   17010:	67878793          	addi	a5,a5,1656 # 19678 <zeroes.4137+0x38>
   17014:	00f13c23          	sd	a5,24(sp)
   17018:	01037793          	andi	a5,t1,16
   1701c:	06078063          	beqz	a5,1707c <_vfiprintf_r+0x798>
   17020:	00813683          	ld	a3,8(sp)
   17024:	0006b783          	ld	a5,0(a3)
   17028:	00868693          	addi	a3,a3,8
   1702c:	00d13423          	sd	a3,8(sp)
   17030:	00137613          	andi	a2,t1,1
   17034:	46060863          	beqz	a2,174a4 <_vfiprintf_r+0xbc0>
   17038:	66079063          	bnez	a5,17698 <_vfiprintf_r+0xdb4>
   1703c:	060103a3          	sb	zero,103(sp)
   17040:	6404c663          	bltz	s1,1768c <_vfiprintf_r+0xda8>
   17044:	f7f37313          	andi	t1,t1,-129
   17048:	b55ff06f          	j	16b9c <_vfiprintf_r+0x2b8>
   1704c:	e0050ce3          	beqz	a0,16e64 <_vfiprintf_r+0x580>
   17050:	07d103a3          	sb	t4,103(sp)
   17054:	e11ff06f          	j	16e64 <_vfiprintf_r+0x580>
   17058:	04036313          	ori	t1,t1,64
   1705c:	000b0813          	mv	a6,s6
   17060:	a11ff06f          	j	16a70 <_vfiprintf_r+0x18c>
   17064:	0a051ee3          	bnez	a0,17920 <_vfiprintf_r+0x103c>
   17068:	000197b7          	lui	a5,0x19
   1706c:	69078793          	addi	a5,a5,1680 # 19690 <zeroes.4137+0x50>
   17070:	00f13c23          	sd	a5,24(sp)
   17074:	01037793          	andi	a5,t1,16
   17078:	fa0794e3          	bnez	a5,17020 <_vfiprintf_r+0x73c>
   1707c:	04037793          	andi	a5,t1,64
   17080:	00813683          	ld	a3,8(sp)
   17084:	68078e63          	beqz	a5,17720 <_vfiprintf_r+0xe3c>
   17088:	0006d783          	lhu	a5,0(a3)
   1708c:	00868693          	addi	a3,a3,8
   17090:	00d13423          	sd	a3,8(sp)
   17094:	f9dff06f          	j	17030 <_vfiprintf_r+0x74c>
   17098:	000b4703          	lbu	a4,0(s6)
   1709c:	001b0813          	addi	a6,s6,1
   170a0:	05e70ee3          	beq	a4,t5,178fc <_vfiprintf_r+0x1018>
   170a4:	fd07079b          	addiw	a5,a4,-48
   170a8:	00000493          	li	s1,0
   170ac:	00080b13          	mv	s6,a6
   170b0:	9cf5e4e3          	bltu	a1,a5,16a78 <_vfiprintf_r+0x194>
   170b4:	001b0b13          	addi	s6,s6,1
   170b8:	fffb4703          	lbu	a4,-1(s6)
   170bc:	00149f9b          	slliw	t6,s1,0x1
   170c0:	0034949b          	slliw	s1,s1,0x3
   170c4:	009f84bb          	addw	s1,t6,s1
   170c8:	00f484bb          	addw	s1,s1,a5
   170cc:	fd07079b          	addiw	a5,a4,-48
   170d0:	fef5f2e3          	bleu	a5,a1,170b4 <_vfiprintf_r+0x7d0>
   170d4:	9a04d2e3          	bgez	s1,16a78 <_vfiprintf_r+0x194>
   170d8:	fff00493          	li	s1,-1
   170dc:	99dff06f          	j	16a78 <_vfiprintf_r+0x194>
   170e0:	040518e3          	bnez	a0,17930 <_vfiprintf_r+0x104c>
   170e4:	6e070663          	beqz	a4,177d0 <_vfiprintf_r+0xeec>
   170e8:	00100993          	li	s3,1
   170ec:	08e10423          	sb	a4,136(sp)
   170f0:	060103a3          	sb	zero,103(sp)
   170f4:	00098a13          	mv	s4,s3
   170f8:	08810b93          	addi	s7,sp,136
   170fc:	00000493          	li	s1,0
   17100:	ac5ff06f          	j	16bc4 <_vfiprintf_r+0x2e0>
   17104:	07010613          	addi	a2,sp,112
   17108:	000d0593          	mv	a1,s10
   1710c:	000a8513          	mv	a0,s5
   17110:	05f13423          	sd	t6,72(sp)
   17114:	05e13023          	sd	t5,64(sp)
   17118:	03d13c23          	sd	t4,56(sp)
   1711c:	02513823          	sd	t0,48(sp)
   17120:	02713423          	sd	t2,40(sp)
   17124:	02613023          	sd	t1,32(sp)
   17128:	eb8ff0ef          	jal	167e0 <__sprint_r.part.0>
   1712c:	22051063          	bnez	a0,1734c <_vfiprintf_r+0xa68>
   17130:	07812503          	lw	a0,120(sp)
   17134:	08013783          	ld	a5,128(sp)
   17138:	000c8413          	mv	s0,s9
   1713c:	0015061b          	addiw	a2,a0,1
   17140:	04813f83          	ld	t6,72(sp)
   17144:	04013f03          	ld	t5,64(sp)
   17148:	03813e83          	ld	t4,56(sp)
   1714c:	03013283          	ld	t0,48(sp)
   17150:	02813383          	ld	t2,40(sp)
   17154:	02013303          	ld	t1,32(sp)
   17158:	ab9ff06f          	j	16c10 <_vfiprintf_r+0x32c>
   1715c:	07812603          	lw	a2,120(sp)
   17160:	08013783          	ld	a5,128(sp)
   17164:	0016059b          	addiw	a1,a2,1
   17168:	06714503          	lbu	a0,103(sp)
   1716c:	b00508e3          	beqz	a0,16c7c <_vfiprintf_r+0x398>
   17170:	00100513          	li	a0,1
   17174:	06710613          	addi	a2,sp,103
   17178:	00a787b3          	add	a5,a5,a0
   1717c:	00c43023          	sd	a2,0(s0)
   17180:	00a43423          	sd	a0,8(s0)
   17184:	08f13023          	sd	a5,128(sp)
   17188:	06b12c23          	sw	a1,120(sp)
   1718c:	00700613          	li	a2,7
   17190:	2ab65a63          	ble	a1,a2,17444 <_vfiprintf_r+0xb60>
   17194:	44079e63          	bnez	a5,175f0 <_vfiprintf_r+0xd0c>
   17198:	2c039063          	bnez	t2,17458 <_vfiprintf_r+0xb74>
   1719c:	00000613          	li	a2,0
   171a0:	00050593          	mv	a1,a0
   171a4:	000c8413          	mv	s0,s9
   171a8:	08000513          	li	a0,128
   171ac:	b0a288e3          	beq	t0,a0,16cbc <_vfiprintf_r+0x3d8>
   171b0:	414484bb          	subw	s1,s1,s4
   171b4:	ba9054e3          	blez	s1,16d5c <_vfiprintf_r+0x478>
   171b8:	00019737          	lui	a4,0x19
   171bc:	01000513          	li	a0,16
   171c0:	64070d93          	addi	s11,a4,1600 # 19640 <zeroes.4137>
   171c4:	06955263          	ble	s1,a0,17228 <_vfiprintf_r+0x944>
   171c8:	01000e93          	li	t4,16
   171cc:	00019737          	lui	a4,0x19
   171d0:	64070d93          	addi	s11,a4,1600 # 19640 <zeroes.4137>
   171d4:	00700f13          	li	t5,7
   171d8:	000e8f93          	mv	t6,t4
   171dc:	0180006f          	j	171f4 <_vfiprintf_r+0x910>
   171e0:	0026059b          	addiw	a1,a2,2
   171e4:	01040413          	addi	s0,s0,16
   171e8:	00050613          	mv	a2,a0
   171ec:	ff04849b          	addiw	s1,s1,-16
   171f0:	029fdc63          	ble	s1,t6,17228 <_vfiprintf_r+0x944>
   171f4:	01078793          	addi	a5,a5,16
   171f8:	0016051b          	addiw	a0,a2,1
   171fc:	01b43023          	sd	s11,0(s0)
   17200:	01d43423          	sd	t4,8(s0)
   17204:	08f13023          	sd	a5,128(sp)
   17208:	06a12c23          	sw	a0,120(sp)
   1720c:	fcaf5ae3          	ble	a0,t5,171e0 <_vfiprintf_r+0x8fc>
   17210:	14079863          	bnez	a5,17360 <_vfiprintf_r+0xa7c>
   17214:	ff04849b          	addiw	s1,s1,-16
   17218:	00100593          	li	a1,1
   1721c:	00000613          	li	a2,0
   17220:	000c8413          	mv	s0,s9
   17224:	fc9fc8e3          	blt	t6,s1,171f4 <_vfiprintf_r+0x910>
   17228:	009787b3          	add	a5,a5,s1
   1722c:	01b43023          	sd	s11,0(s0)
   17230:	00943423          	sd	s1,8(s0)
   17234:	08f13023          	sd	a5,128(sp)
   17238:	06b12c23          	sw	a1,120(sp)
   1723c:	00700613          	li	a2,7
   17240:	24b64063          	blt	a2,a1,17480 <_vfiprintf_r+0xb9c>
   17244:	01040413          	addi	s0,s0,16
   17248:	0015859b          	addiw	a1,a1,1
   1724c:	00fa07b3          	add	a5,s4,a5
   17250:	01743023          	sd	s7,0(s0)
   17254:	01443423          	sd	s4,8(s0)
   17258:	08f13023          	sd	a5,128(sp)
   1725c:	06b12c23          	sw	a1,120(sp)
   17260:	00700713          	li	a4,7
   17264:	b0b74ae3          	blt	a4,a1,16d78 <_vfiprintf_r+0x494>
   17268:	01040413          	addi	s0,s0,16
   1726c:	00437313          	andi	t1,t1,4
   17270:	0a030863          	beqz	t1,17320 <_vfiprintf_r+0xa3c>
   17274:	413904bb          	subw	s1,s2,s3
   17278:	0a905463          	blez	s1,17320 <_vfiprintf_r+0xa3c>
   1727c:	01000713          	li	a4,16
   17280:	62975863          	ble	s1,a4,178b0 <_vfiprintf_r+0xfcc>
   17284:	01000a13          	li	s4,16
   17288:	07812603          	lw	a2,120(sp)
   1728c:	05813823          	sd	s8,80(sp)
   17290:	00700d93          	li	s11,7
   17294:	000a0b93          	mv	s7,s4
   17298:	0180006f          	j	172b0 <_vfiprintf_r+0x9cc>
   1729c:	0026059b          	addiw	a1,a2,2
   172a0:	01040413          	addi	s0,s0,16
   172a4:	00070613          	mv	a2,a4
   172a8:	ff04849b          	addiw	s1,s1,-16
   172ac:	029bdc63          	ble	s1,s7,172e4 <_vfiprintf_r+0xa00>
   172b0:	01078793          	addi	a5,a5,16
   172b4:	0016071b          	addiw	a4,a2,1
   172b8:	01843023          	sd	s8,0(s0)
   172bc:	01443423          	sd	s4,8(s0)
   172c0:	08f13023          	sd	a5,128(sp)
   172c4:	06e12c23          	sw	a4,120(sp)
   172c8:	fceddae3          	ble	a4,s11,1729c <_vfiprintf_r+0x9b8>
   172cc:	0c079e63          	bnez	a5,173a8 <_vfiprintf_r+0xac4>
   172d0:	ff04849b          	addiw	s1,s1,-16
   172d4:	00100593          	li	a1,1
   172d8:	00000613          	li	a2,0
   172dc:	000c8413          	mv	s0,s9
   172e0:	fc9bc8e3          	blt	s7,s1,172b0 <_vfiprintf_r+0x9cc>
   172e4:	05013703          	ld	a4,80(sp)
   172e8:	009787b3          	add	a5,a5,s1
   172ec:	00943423          	sd	s1,8(s0)
   172f0:	00e43023          	sd	a4,0(s0)
   172f4:	08f13023          	sd	a5,128(sp)
   172f8:	06b12c23          	sw	a1,120(sp)
   172fc:	00700713          	li	a4,7
   17300:	02b75063          	ble	a1,a4,17320 <_vfiprintf_r+0xa3c>
   17304:	a80786e3          	beqz	a5,16d90 <_vfiprintf_r+0x4ac>
   17308:	07010613          	addi	a2,sp,112
   1730c:	000d0593          	mv	a1,s10
   17310:	000a8513          	mv	a0,s5
   17314:	cccff0ef          	jal	167e0 <__sprint_r.part.0>
   17318:	02051a63          	bnez	a0,1734c <_vfiprintf_r+0xa68>
   1731c:	08013783          	ld	a5,128(sp)
   17320:	01395463          	ble	s3,s2,17328 <_vfiprintf_r+0xa44>
   17324:	00098913          	mv	s2,s3
   17328:	05812703          	lw	a4,88(sp)
   1732c:	0127073b          	addw	a4,a4,s2
   17330:	04e12c23          	sw	a4,88(sp)
   17334:	a60788e3          	beqz	a5,16da4 <_vfiprintf_r+0x4c0>
   17338:	07010613          	addi	a2,sp,112
   1733c:	000d0593          	mv	a1,s10
   17340:	000a8513          	mv	a0,s5
   17344:	c9cff0ef          	jal	167e0 <__sprint_r.part.0>
   17348:	a4050ee3          	beqz	a0,16da4 <_vfiprintf_r+0x4c0>
   1734c:	010d5783          	lhu	a5,16(s10)
   17350:	0407f793          	andi	a5,a5,64
   17354:	44079863          	bnez	a5,177a4 <_vfiprintf_r+0xec0>
   17358:	05812503          	lw	a0,88(sp)
   1735c:	f94ff06f          	j	16af0 <_vfiprintf_r+0x20c>
   17360:	07010613          	addi	a2,sp,112
   17364:	000d0593          	mv	a1,s10
   17368:	000a8513          	mv	a0,s5
   1736c:	03f13c23          	sd	t6,56(sp)
   17370:	03e13823          	sd	t5,48(sp)
   17374:	03d13423          	sd	t4,40(sp)
   17378:	02613023          	sd	t1,32(sp)
   1737c:	c64ff0ef          	jal	167e0 <__sprint_r.part.0>
   17380:	fc0516e3          	bnez	a0,1734c <_vfiprintf_r+0xa68>
   17384:	07812603          	lw	a2,120(sp)
   17388:	08013783          	ld	a5,128(sp)
   1738c:	000c8413          	mv	s0,s9
   17390:	0016059b          	addiw	a1,a2,1
   17394:	03813f83          	ld	t6,56(sp)
   17398:	03013f03          	ld	t5,48(sp)
   1739c:	02813e83          	ld	t4,40(sp)
   173a0:	02013303          	ld	t1,32(sp)
   173a4:	e49ff06f          	j	171ec <_vfiprintf_r+0x908>
   173a8:	07010613          	addi	a2,sp,112
   173ac:	000d0593          	mv	a1,s10
   173b0:	000a8513          	mv	a0,s5
   173b4:	c2cff0ef          	jal	167e0 <__sprint_r.part.0>
   173b8:	f8051ae3          	bnez	a0,1734c <_vfiprintf_r+0xa68>
   173bc:	07812603          	lw	a2,120(sp)
   173c0:	08013783          	ld	a5,128(sp)
   173c4:	000c8413          	mv	s0,s9
   173c8:	0016059b          	addiw	a1,a2,1
   173cc:	eddff06f          	j	172a8 <_vfiprintf_r+0x9c4>
   173d0:	07010613          	addi	a2,sp,112
   173d4:	000d0593          	mv	a1,s10
   173d8:	000a8513          	mv	a0,s5
   173dc:	04513023          	sd	t0,64(sp)
   173e0:	03f13c23          	sd	t6,56(sp)
   173e4:	03e13823          	sd	t5,48(sp)
   173e8:	03d13423          	sd	t4,40(sp)
   173ec:	02613023          	sd	t1,32(sp)
   173f0:	bf0ff0ef          	jal	167e0 <__sprint_r.part.0>
   173f4:	f4051ce3          	bnez	a0,1734c <_vfiprintf_r+0xa68>
   173f8:	07812603          	lw	a2,120(sp)
   173fc:	08013783          	ld	a5,128(sp)
   17400:	000c8413          	mv	s0,s9
   17404:	0016051b          	addiw	a0,a2,1
   17408:	04013283          	ld	t0,64(sp)
   1740c:	03813f83          	ld	t6,56(sp)
   17410:	03013f03          	ld	t5,48(sp)
   17414:	02813e83          	ld	t4,40(sp)
   17418:	02013303          	ld	t1,32(sp)
   1741c:	8d5ff06f          	j	16cf0 <_vfiprintf_r+0x40c>
   17420:	34079263          	bnez	a5,17764 <_vfiprintf_r+0xe80>
   17424:	06714603          	lbu	a2,103(sp)
   17428:	02060663          	beqz	a2,17454 <_vfiprintf_r+0xb70>
   1742c:	00100793          	li	a5,1
   17430:	06710613          	addi	a2,sp,103
   17434:	0ac13823          	sd	a2,176(sp)
   17438:	0af13c23          	sd	a5,184(sp)
   1743c:	00078593          	mv	a1,a5
   17440:	000c8413          	mv	s0,s9
   17444:	00058613          	mv	a2,a1
   17448:	01040413          	addi	s0,s0,16
   1744c:	0015859b          	addiw	a1,a1,1
   17450:	82dff06f          	j	16c7c <_vfiprintf_r+0x398>
   17454:	36038063          	beqz	t2,177b4 <_vfiprintf_r+0xed0>
   17458:	00200793          	li	a5,2
   1745c:	06810613          	addi	a2,sp,104
   17460:	0ac13823          	sd	a2,176(sp)
   17464:	0af13c23          	sd	a5,184(sp)
   17468:	00100593          	li	a1,1
   1746c:	000c8413          	mv	s0,s9
   17470:	00058613          	mv	a2,a1
   17474:	01040413          	addi	s0,s0,16
   17478:	0015859b          	addiw	a1,a1,1
   1747c:	d2dff06f          	j	171a8 <_vfiprintf_r+0x8c4>
   17480:	1c079263          	bnez	a5,17644 <_vfiprintf_r+0xd60>
   17484:	00100713          	li	a4,1
   17488:	000a0793          	mv	a5,s4
   1748c:	0b713823          	sd	s7,176(sp)
   17490:	0b413c23          	sd	s4,184(sp)
   17494:	09413023          	sd	s4,128(sp)
   17498:	06e12c23          	sw	a4,120(sp)
   1749c:	000c8413          	mv	s0,s9
   174a0:	dc9ff06f          	j	17268 <_vfiprintf_r+0x984>
   174a4:	060103a3          	sb	zero,103(sp)
   174a8:	1e04c063          	bltz	s1,17688 <_vfiprintf_r+0xda4>
   174ac:	f7f37313          	andi	t1,t1,-129
   174b0:	ee078663          	beqz	a5,16b9c <_vfiprintf_r+0x2b8>
   174b4:	00000593          	li	a1,0
   174b8:	000c8b93          	mv	s7,s9
   174bc:	01813703          	ld	a4,24(sp)
   174c0:	00f7f613          	andi	a2,a5,15
   174c4:	fffb8b93          	addi	s7,s7,-1
   174c8:	00c70633          	add	a2,a4,a2
   174cc:	00064603          	lbu	a2,0(a2)
   174d0:	0047d793          	srli	a5,a5,0x4
   174d4:	00cb8023          	sb	a2,0(s7)
   174d8:	fe0792e3          	bnez	a5,174bc <_vfiprintf_r+0xbd8>
   174dc:	417c8a3b          	subw	s4,s9,s7
   174e0:	ed0ff06f          	j	16bb0 <_vfiprintf_r+0x2cc>
   174e4:	00813783          	ld	a5,8(sp)
   174e8:	060103a3          	sb	zero,103(sp)
   174ec:	00878713          	addi	a4,a5,8
   174f0:	0007b783          	ld	a5,0(a5)
   174f4:	a204dee3          	bgez	s1,16f30 <_vfiprintf_r+0x64c>
   174f8:	00e13423          	sd	a4,8(sp)
   174fc:	00000593          	li	a1,0
   17500:	920796e3          	bnez	a5,16e2c <_vfiprintf_r+0x548>
   17504:	00100793          	li	a5,1
   17508:	00100713          	li	a4,1
   1750c:	a2e78ce3          	beq	a5,a4,16f44 <_vfiprintf_r+0x660>
   17510:	00200713          	li	a4,2
   17514:	08e78e63          	beq	a5,a4,175b0 <_vfiprintf_r+0xccc>
   17518:	00000793          	li	a5,0
   1751c:	97dff06f          	j	16e98 <_vfiprintf_r+0x5b4>
   17520:	07010613          	addi	a2,sp,112
   17524:	000d0593          	mv	a1,s10
   17528:	000a8513          	mv	a0,s5
   1752c:	02613023          	sd	t1,32(sp)
   17530:	ab0ff0ef          	jal	167e0 <__sprint_r.part.0>
   17534:	e0051ce3          	bnez	a0,1734c <_vfiprintf_r+0xa68>
   17538:	08013783          	ld	a5,128(sp)
   1753c:	000c8413          	mv	s0,s9
   17540:	02013303          	ld	t1,32(sp)
   17544:	d29ff06f          	j	1726c <_vfiprintf_r+0x988>
   17548:	04037793          	andi	a5,t1,64
   1754c:	00813703          	ld	a4,8(sp)
   17550:	20078263          	beqz	a5,17754 <_vfiprintf_r+0xe70>
   17554:	00071783          	lh	a5,0(a4)
   17558:	00870713          	addi	a4,a4,8
   1755c:	00e13423          	sd	a4,8(sp)
   17560:	8b9ff06f          	j	16e18 <_vfiprintf_r+0x534>
   17564:	04037793          	andi	a5,t1,64
   17568:	060103a3          	sb	zero,103(sp)
   1756c:	18078263          	beqz	a5,176f0 <_vfiprintf_r+0xe0c>
   17570:	00813783          	ld	a5,8(sp)
   17574:	00878713          	addi	a4,a5,8
   17578:	0007d783          	lhu	a5,0(a5)
   1757c:	9004d2e3          	bgez	s1,16e80 <_vfiprintf_r+0x59c>
   17580:	00e13423          	sd	a4,8(sp)
   17584:	00000593          	li	a1,0
   17588:	f80780e3          	beqz	a5,17508 <_vfiprintf_r+0xc24>
   1758c:	00000593          	li	a1,0
   17590:	909ff06f          	j	16e98 <_vfiprintf_r+0x5b4>
   17594:	07010613          	addi	a2,sp,112
   17598:	000d0593          	mv	a1,s10
   1759c:	000a8513          	mv	a0,s5
   175a0:	a40ff0ef          	jal	167e0 <__sprint_r.part.0>
   175a4:	da0514e3          	bnez	a0,1734c <_vfiprintf_r+0xa68>
   175a8:	000c8413          	mv	s0,s9
   175ac:	c88ff06f          	j	16a34 <_vfiprintf_r+0x150>
   175b0:	00000793          	li	a5,0
   175b4:	f05ff06f          	j	174b8 <_vfiprintf_r+0xbd4>
   175b8:	07010613          	addi	a2,sp,112
   175bc:	000d0593          	mv	a1,s10
   175c0:	000a8513          	mv	a0,s5
   175c4:	02513423          	sd	t0,40(sp)
   175c8:	02613023          	sd	t1,32(sp)
   175cc:	a14ff0ef          	jal	167e0 <__sprint_r.part.0>
   175d0:	d6051ee3          	bnez	a0,1734c <_vfiprintf_r+0xa68>
   175d4:	07812603          	lw	a2,120(sp)
   175d8:	08013783          	ld	a5,128(sp)
   175dc:	000c8413          	mv	s0,s9
   175e0:	0016059b          	addiw	a1,a2,1
   175e4:	02813283          	ld	t0,40(sp)
   175e8:	02013303          	ld	t1,32(sp)
   175ec:	bbdff06f          	j	171a8 <_vfiprintf_r+0x8c4>
   175f0:	07010613          	addi	a2,sp,112
   175f4:	000d0593          	mv	a1,s10
   175f8:	000a8513          	mv	a0,s5
   175fc:	02513823          	sd	t0,48(sp)
   17600:	02713423          	sd	t2,40(sp)
   17604:	02613023          	sd	t1,32(sp)
   17608:	9d8ff0ef          	jal	167e0 <__sprint_r.part.0>
   1760c:	d40510e3          	bnez	a0,1734c <_vfiprintf_r+0xa68>
   17610:	07812603          	lw	a2,120(sp)
   17614:	08013783          	ld	a5,128(sp)
   17618:	000c8413          	mv	s0,s9
   1761c:	0016059b          	addiw	a1,a2,1
   17620:	03013283          	ld	t0,48(sp)
   17624:	02813383          	ld	t2,40(sp)
   17628:	02013303          	ld	t1,32(sp)
   1762c:	e50ff06f          	j	16c7c <_vfiprintf_r+0x398>
   17630:	1e079063          	bnez	a5,17810 <_vfiprintf_r+0xf2c>
   17634:	00100593          	li	a1,1
   17638:	00000613          	li	a2,0
   1763c:	000c8413          	mv	s0,s9
   17640:	b71ff06f          	j	171b0 <_vfiprintf_r+0x8cc>
   17644:	07010613          	addi	a2,sp,112
   17648:	000d0593          	mv	a1,s10
   1764c:	000a8513          	mv	a0,s5
   17650:	02613023          	sd	t1,32(sp)
   17654:	98cff0ef          	jal	167e0 <__sprint_r.part.0>
   17658:	ce051ae3          	bnez	a0,1734c <_vfiprintf_r+0xa68>
   1765c:	07812583          	lw	a1,120(sp)
   17660:	08013783          	ld	a5,128(sp)
   17664:	000c8413          	mv	s0,s9
   17668:	0015859b          	addiw	a1,a1,1
   1766c:	02013303          	ld	t1,32(sp)
   17670:	eecff06f          	j	16d5c <_vfiprintf_r+0x478>
   17674:	00e13423          	sd	a4,8(sp)
   17678:	00019737          	lui	a4,0x19
   1767c:	69070713          	addi	a4,a4,1680 # 19690 <zeroes.4137+0x50>
   17680:	00060313          	mv	t1,a2
   17684:	00e13c23          	sd	a4,24(sp)
   17688:	e20796e3          	bnez	a5,174b4 <_vfiprintf_r+0xbd0>
   1768c:	00000593          	li	a1,0
   17690:	00200793          	li	a5,2
   17694:	e75ff06f          	j	17508 <_vfiprintf_r+0xc24>
   17698:	03000613          	li	a2,48
   1769c:	06e104a3          	sb	a4,105(sp)
   176a0:	06c10423          	sb	a2,104(sp)
   176a4:	060103a3          	sb	zero,103(sp)
   176a8:	00236713          	ori	a4,t1,2
   176ac:	1a04c463          	bltz	s1,17854 <_vfiprintf_r+0xf70>
   176b0:	f7f37313          	andi	t1,t1,-129
   176b4:	00236313          	ori	t1,t1,2
   176b8:	00000593          	li	a1,0
   176bc:	dfdff06f          	j	174b8 <_vfiprintf_r+0xbd4>
   176c0:	00019737          	lui	a4,0x19
   176c4:	69070713          	addi	a4,a4,1680 # 19690 <zeroes.4137+0x50>
   176c8:	00000593          	li	a1,0
   176cc:	00e13c23          	sd	a4,24(sp)
   176d0:	de9ff06f          	j	174b8 <_vfiprintf_r+0xbd4>
   176d4:	000b0493          	mv	s1,s6
   176d8:	b68ff06f          	j	16a40 <_vfiprintf_r+0x15c>
   176dc:	00813783          	ld	a5,8(sp)
   176e0:	00878713          	addi	a4,a5,8
   176e4:	0007e783          	lwu	a5,0(a5)
   176e8:	8404d4e3          	bgez	s1,16f30 <_vfiprintf_r+0x64c>
   176ec:	e0dff06f          	j	174f8 <_vfiprintf_r+0xc14>
   176f0:	00813783          	ld	a5,8(sp)
   176f4:	00878713          	addi	a4,a5,8
   176f8:	0007e783          	lwu	a5,0(a5)
   176fc:	f804d263          	bgez	s1,16e80 <_vfiprintf_r+0x59c>
   17700:	e81ff06f          	j	17580 <_vfiprintf_r+0xc9c>
   17704:	02d00713          	li	a4,45
   17708:	06e103a3          	sb	a4,103(sp)
   1770c:	40f007b3          	neg	a5,a5
   17710:	1804c863          	bltz	s1,178a0 <_vfiprintf_r+0xfbc>
   17714:	f7f37313          	andi	t1,t1,-129
   17718:	02d00593          	li	a1,45
   1771c:	f10ff06f          	j	16e2c <_vfiprintf_r+0x548>
   17720:	0006e783          	lwu	a5,0(a3)
   17724:	00868693          	addi	a3,a3,8
   17728:	00d13423          	sd	a3,8(sp)
   1772c:	905ff06f          	j	17030 <_vfiprintf_r+0x74c>
   17730:	00813703          	ld	a4,8(sp)
   17734:	04037313          	andi	t1,t1,64
   17738:	00073783          	ld	a5,0(a4)
   1773c:	00870713          	addi	a4,a4,8
   17740:	00e13423          	sd	a4,8(sp)
   17744:	08030063          	beqz	t1,177c4 <_vfiprintf_r+0xee0>
   17748:	05815703          	lhu	a4,88(sp)
   1774c:	00e79023          	sh	a4,0(a5)
   17750:	a84ff06f          	j	169d4 <_vfiprintf_r+0xf0>
   17754:	00072783          	lw	a5,0(a4)
   17758:	00870713          	addi	a4,a4,8
   1775c:	00e13423          	sd	a4,8(sp)
   17760:	eb8ff06f          	j	16e18 <_vfiprintf_r+0x534>
   17764:	07010613          	addi	a2,sp,112
   17768:	000d0593          	mv	a1,s10
   1776c:	000a8513          	mv	a0,s5
   17770:	02513823          	sd	t0,48(sp)
   17774:	02713423          	sd	t2,40(sp)
   17778:	02613023          	sd	t1,32(sp)
   1777c:	864ff0ef          	jal	167e0 <__sprint_r.part.0>
   17780:	bc0516e3          	bnez	a0,1734c <_vfiprintf_r+0xa68>
   17784:	07812603          	lw	a2,120(sp)
   17788:	08013783          	ld	a5,128(sp)
   1778c:	000c8413          	mv	s0,s9
   17790:	0016059b          	addiw	a1,a2,1
   17794:	03013283          	ld	t0,48(sp)
   17798:	02813383          	ld	t2,40(sp)
   1779c:	02013303          	ld	t1,32(sp)
   177a0:	9c9ff06f          	j	17168 <_vfiprintf_r+0x884>
   177a4:	fff00513          	li	a0,-1
   177a8:	b48ff06f          	j	16af0 <_vfiprintf_r+0x20c>
   177ac:	000c8413          	mv	s0,s9
   177b0:	acdff06f          	j	1727c <_vfiprintf_r+0x998>
   177b4:	00000613          	li	a2,0
   177b8:	00100593          	li	a1,1
   177bc:	000c8413          	mv	s0,s9
   177c0:	9e9ff06f          	j	171a8 <_vfiprintf_r+0x8c4>
   177c4:	05812703          	lw	a4,88(sp)
   177c8:	00e7a023          	sw	a4,0(a5)
   177cc:	a08ff06f          	j	169d4 <_vfiprintf_r+0xf0>
   177d0:	08013783          	ld	a5,128(sp)
   177d4:	b6078ce3          	beqz	a5,1734c <_vfiprintf_r+0xa68>
   177d8:	07010613          	addi	a2,sp,112
   177dc:	000d0593          	mv	a1,s10
   177e0:	000a8513          	mv	a0,s5
   177e4:	ffdfe0ef          	jal	167e0 <__sprint_r.part.0>
   177e8:	b65ff06f          	j	1734c <_vfiprintf_r+0xa68>
   177ec:	000b8513          	mv	a0,s7
   177f0:	02613023          	sd	t1,32(sp)
   177f4:	f1dfe0ef          	jal	16710 <strlen>
   177f8:	00050a1b          	sext.w	s4,a0
   177fc:	06714583          	lbu	a1,103(sp)
   17800:	01b13423          	sd	s11,8(sp)
   17804:	00000493          	li	s1,0
   17808:	02013303          	ld	t1,32(sp)
   1780c:	ba4ff06f          	j	16bb0 <_vfiprintf_r+0x2cc>
   17810:	07010613          	addi	a2,sp,112
   17814:	000d0593          	mv	a1,s10
   17818:	000a8513          	mv	a0,s5
   1781c:	02613023          	sd	t1,32(sp)
   17820:	fc1fe0ef          	jal	167e0 <__sprint_r.part.0>
   17824:	b20514e3          	bnez	a0,1734c <_vfiprintf_r+0xa68>
   17828:	07812603          	lw	a2,120(sp)
   1782c:	08013783          	ld	a5,128(sp)
   17830:	000c8413          	mv	s0,s9
   17834:	0016059b          	addiw	a1,a2,1
   17838:	02013303          	ld	t1,32(sp)
   1783c:	975ff06f          	j	171b0 <_vfiprintf_r+0x8cc>
   17840:	07812603          	lw	a2,120(sp)
   17844:	08013783          	ld	a5,128(sp)
   17848:	05813823          	sd	s8,80(sp)
   1784c:	0016061b          	addiw	a2,a2,1
   17850:	bfcff06f          	j	16c4c <_vfiprintf_r+0x368>
   17854:	00000593          	li	a1,0
   17858:	00200613          	li	a2,2
   1785c:	00100513          	li	a0,1
   17860:	08a60263          	beq	a2,a0,178e4 <_vfiprintf_r+0x1000>
   17864:	00200513          	li	a0,2
   17868:	08a61263          	bne	a2,a0,178ec <_vfiprintf_r+0x1008>
   1786c:	00070313          	mv	t1,a4
   17870:	c49ff06f          	j	174b8 <_vfiprintf_r+0xbd4>
   17874:	00600793          	li	a5,6
   17878:	0097f463          	bleu	s1,a5,17880 <_vfiprintf_r+0xf9c>
   1787c:	00078493          	mv	s1,a5
   17880:	00048a13          	mv	s4,s1
   17884:	00048993          	mv	s3,s1
   17888:	0604c663          	bltz	s1,178f4 <_vfiprintf_r+0x1010>
   1788c:	00019737          	lui	a4,0x19
   17890:	01b13423          	sd	s11,8(sp)
   17894:	6a870b93          	addi	s7,a4,1704 # 196a8 <zeroes.4137+0x68>
   17898:	00000493          	li	s1,0
   1789c:	b28ff06f          	j	16bc4 <_vfiprintf_r+0x2e0>
   178a0:	00030713          	mv	a4,t1
   178a4:	02d00593          	li	a1,45
   178a8:	00100613          	li	a2,1
   178ac:	fb1ff06f          	j	1785c <_vfiprintf_r+0xf78>
   178b0:	07812583          	lw	a1,120(sp)
   178b4:	05813823          	sd	s8,80(sp)
   178b8:	0015859b          	addiw	a1,a1,1
   178bc:	a29ff06f          	j	172e4 <_vfiprintf_r+0xa00>
   178c0:	00019737          	lui	a4,0x19
   178c4:	00058513          	mv	a0,a1
   178c8:	64070d93          	addi	s11,a4,1600 # 19640 <zeroes.4137>
   178cc:	c60ff06f          	j	16d2c <_vfiprintf_r+0x448>
   178d0:	00048a13          	mv	s4,s1
   178d4:	06714583          	lbu	a1,103(sp)
   178d8:	01b13423          	sd	s11,8(sp)
   178dc:	00000493          	li	s1,0
   178e0:	ad0ff06f          	j	16bb0 <_vfiprintf_r+0x2cc>
   178e4:	00070313          	mv	t1,a4
   178e8:	d44ff06f          	j	16e2c <_vfiprintf_r+0x548>
   178ec:	00070313          	mv	t1,a4
   178f0:	da8ff06f          	j	16e98 <_vfiprintf_r+0x5b4>
   178f4:	00000993          	li	s3,0
   178f8:	f95ff06f          	j	1788c <_vfiprintf_r+0xfa8>
   178fc:	00813783          	ld	a5,8(sp)
   17900:	00080b13          	mv	s6,a6
   17904:	0007a483          	lw	s1,0(a5)
   17908:	00878b93          	addi	s7,a5,8
   1790c:	01713423          	sd	s7,8(sp)
   17910:	9804de63          	bgez	s1,16aac <_vfiprintf_r+0x1c8>
   17914:	fff00493          	li	s1,-1
   17918:	000b0813          	mv	a6,s6
   1791c:	954ff06f          	j	16a70 <_vfiprintf_r+0x18c>
   17920:	07d103a3          	sb	t4,103(sp)
   17924:	f44ff06f          	j	17068 <_vfiprintf_r+0x784>
   17928:	07d103a3          	sb	t4,103(sp)
   1792c:	ee0ff06f          	j	1700c <_vfiprintf_r+0x728>
   17930:	07d103a3          	sb	t4,103(sp)
   17934:	fb0ff06f          	j	170e4 <_vfiprintf_r+0x800>
   17938:	00137793          	andi	a5,t1,1
   1793c:	00078c63          	beqz	a5,17954 <_vfiprintf_r+0x1070>
   17940:	03000793          	li	a5,48
   17944:	0af107a3          	sb	a5,175(sp)
   17948:	05c12a03          	lw	s4,92(sp)
   1794c:	0af10b93          	addi	s7,sp,175
   17950:	a60ff06f          	j	16bb0 <_vfiprintf_r+0x2cc>
   17954:	00000a13          	li	s4,0
   17958:	000c8b93          	mv	s7,s9
   1795c:	a54ff06f          	j	16bb0 <_vfiprintf_r+0x2cc>
   17960:	07d103a3          	sb	t4,103(sp)
   17964:	cfcff06f          	j	16e60 <_vfiprintf_r+0x57c>
   17968:	07d103a3          	sb	t4,103(sp)
   1796c:	c90ff06f          	j	16dfc <_vfiprintf_r+0x518>
   17970:	07d103a3          	sb	t4,103(sp)
   17974:	d94ff06f          	j	16f08 <_vfiprintf_r+0x624>
   17978:	07d103a3          	sb	t4,103(sp)
   1797c:	d64ff06f          	j	16ee0 <_vfiprintf_r+0x5fc>

0000000000017980 <vfiprintf>:
   17980:	00060693          	mv	a3,a2
   17984:	00058613          	mv	a2,a1
   17988:	00050593          	mv	a1,a0
   1798c:	8101b503          	ld	a0,-2032(gp) # 1b7a0 <_impure_ptr>
   17990:	f55fe06f          	j	168e4 <_vfiprintf_r>

0000000000017994 <__sbprintf>:
   17994:	0105d783          	lhu	a5,16(a1)
   17998:	0ac5ae03          	lw	t3,172(a1)
   1799c:	0125d303          	lhu	t1,18(a1)
   179a0:	0305b883          	ld	a7,48(a1)
   179a4:	0405b803          	ld	a6,64(a1)
   179a8:	b3010113          	addi	sp,sp,-1232
   179ac:	ffd7f793          	andi	a5,a5,-3
   179b0:	40000713          	li	a4,1024
   179b4:	4c813023          	sd	s0,1216(sp)
   179b8:	00f11823          	sh	a5,16(sp)
   179bc:	00058413          	mv	s0,a1
   179c0:	0b010793          	addi	a5,sp,176
   179c4:	00010593          	mv	a1,sp
   179c8:	4a913c23          	sd	s1,1208(sp)
   179cc:	4b213823          	sd	s2,1200(sp)
   179d0:	4c113423          	sd	ra,1224(sp)
   179d4:	00050913          	mv	s2,a0
   179d8:	0bc12623          	sw	t3,172(sp)
   179dc:	00611923          	sh	t1,18(sp)
   179e0:	03113823          	sd	a7,48(sp)
   179e4:	05013023          	sd	a6,64(sp)
   179e8:	00f13023          	sd	a5,0(sp)
   179ec:	00f13c23          	sd	a5,24(sp)
   179f0:	00e12623          	sw	a4,12(sp)
   179f4:	02e12023          	sw	a4,32(sp)
   179f8:	02012423          	sw	zero,40(sp)
   179fc:	ee9fe0ef          	jal	168e4 <_vfiprintf_r>
   17a00:	00050493          	mv	s1,a0
   17a04:	00054a63          	bltz	a0,17a18 <__sbprintf+0x84>
   17a08:	00010593          	mv	a1,sp
   17a0c:	00090513          	mv	a0,s2
   17a10:	b54fc0ef          	jal	13d64 <_fflush_r>
   17a14:	02051c63          	bnez	a0,17a4c <__sbprintf+0xb8>
   17a18:	01015783          	lhu	a5,16(sp)
   17a1c:	0407f793          	andi	a5,a5,64
   17a20:	00078863          	beqz	a5,17a30 <__sbprintf+0x9c>
   17a24:	01045783          	lhu	a5,16(s0)
   17a28:	0407e793          	ori	a5,a5,64
   17a2c:	00f41823          	sh	a5,16(s0)
   17a30:	4c813083          	ld	ra,1224(sp)
   17a34:	00048513          	mv	a0,s1
   17a38:	4c013403          	ld	s0,1216(sp)
   17a3c:	4b813483          	ld	s1,1208(sp)
   17a40:	4b013903          	ld	s2,1200(sp)
   17a44:	4d010113          	addi	sp,sp,1232
   17a48:	00008067          	ret
   17a4c:	fff00493          	li	s1,-1
   17a50:	fc9ff06f          	j	17a18 <__sbprintf+0x84>

0000000000017a54 <_calloc_r>:
   17a54:	02c585b3          	mul	a1,a1,a2
   17a58:	ff010113          	addi	sp,sp,-16
   17a5c:	00113423          	sd	ra,8(sp)
   17a60:	00813023          	sd	s0,0(sp)
   17a64:	ef9fc0ef          	jal	1495c <_malloc_r>
   17a68:	08050c63          	beqz	a0,17b00 <_calloc_r+0xac>
   17a6c:	ff853603          	ld	a2,-8(a0)
   17a70:	04800713          	li	a4,72
   17a74:	00050413          	mv	s0,a0
   17a78:	ffc67613          	andi	a2,a2,-4
   17a7c:	ff860613          	addi	a2,a2,-8
   17a80:	04c76e63          	bltu	a4,a2,17adc <_calloc_r+0x88>
   17a84:	02700693          	li	a3,39
   17a88:	00050793          	mv	a5,a0
   17a8c:	02c6f863          	bleu	a2,a3,17abc <_calloc_r+0x68>
   17a90:	00053023          	sd	zero,0(a0)
   17a94:	00053423          	sd	zero,8(a0)
   17a98:	03700793          	li	a5,55
   17a9c:	04c7fe63          	bleu	a2,a5,17af8 <_calloc_r+0xa4>
   17aa0:	00053823          	sd	zero,16(a0)
   17aa4:	00053c23          	sd	zero,24(a0)
   17aa8:	02050793          	addi	a5,a0,32
   17aac:	00e61863          	bne	a2,a4,17abc <_calloc_r+0x68>
   17ab0:	02053023          	sd	zero,32(a0)
   17ab4:	03050793          	addi	a5,a0,48
   17ab8:	02053423          	sd	zero,40(a0)
   17abc:	0007b023          	sd	zero,0(a5)
   17ac0:	0007b423          	sd	zero,8(a5)
   17ac4:	0007b823          	sd	zero,16(a5)
   17ac8:	00040513          	mv	a0,s0
   17acc:	00813083          	ld	ra,8(sp)
   17ad0:	00013403          	ld	s0,0(sp)
   17ad4:	01010113          	addi	sp,sp,16
   17ad8:	00008067          	ret
   17adc:	00000593          	li	a1,0
   17ae0:	ff4fd0ef          	jal	152d4 <memset>
   17ae4:	00813083          	ld	ra,8(sp)
   17ae8:	00040513          	mv	a0,s0
   17aec:	00013403          	ld	s0,0(sp)
   17af0:	01010113          	addi	sp,sp,16
   17af4:	00008067          	ret
   17af8:	01050793          	addi	a5,a0,16
   17afc:	fc1ff06f          	j	17abc <_calloc_r+0x68>
   17b00:	00000513          	li	a0,0
   17b04:	fc9ff06f          	j	17acc <_calloc_r+0x78>

0000000000017b08 <_fclose_r>:
   17b08:	0e058e63          	beqz	a1,17c04 <_fclose_r+0xfc>
   17b0c:	fe010113          	addi	sp,sp,-32
   17b10:	00813823          	sd	s0,16(sp)
   17b14:	00913423          	sd	s1,8(sp)
   17b18:	00113c23          	sd	ra,24(sp)
   17b1c:	01213023          	sd	s2,0(sp)
   17b20:	00050493          	mv	s1,a0
   17b24:	00058413          	mv	s0,a1
   17b28:	00050663          	beqz	a0,17b34 <_fclose_r+0x2c>
   17b2c:	05052783          	lw	a5,80(a0)
   17b30:	0a078a63          	beqz	a5,17be4 <_fclose_r+0xdc>
   17b34:	01041783          	lh	a5,16(s0)
   17b38:	00000513          	li	a0,0
   17b3c:	00079e63          	bnez	a5,17b58 <_fclose_r+0x50>
   17b40:	01813083          	ld	ra,24(sp)
   17b44:	01013403          	ld	s0,16(sp)
   17b48:	00813483          	ld	s1,8(sp)
   17b4c:	00013903          	ld	s2,0(sp)
   17b50:	02010113          	addi	sp,sp,32
   17b54:	00008067          	ret
   17b58:	00040593          	mv	a1,s0
   17b5c:	00048513          	mv	a0,s1
   17b60:	f99fb0ef          	jal	13af8 <__sflush_r>
   17b64:	05043783          	ld	a5,80(s0)
   17b68:	00050913          	mv	s2,a0
   17b6c:	00078a63          	beqz	a5,17b80 <_fclose_r+0x78>
   17b70:	03043583          	ld	a1,48(s0)
   17b74:	00048513          	mv	a0,s1
   17b78:	000780e7          	jalr	a5
   17b7c:	06054863          	bltz	a0,17bec <_fclose_r+0xe4>
   17b80:	01045783          	lhu	a5,16(s0)
   17b84:	0807f793          	andi	a5,a5,128
   17b88:	06079663          	bnez	a5,17bf4 <_fclose_r+0xec>
   17b8c:	05843583          	ld	a1,88(s0)
   17b90:	00058c63          	beqz	a1,17ba8 <_fclose_r+0xa0>
   17b94:	07440793          	addi	a5,s0,116
   17b98:	00f58663          	beq	a1,a5,17ba4 <_fclose_r+0x9c>
   17b9c:	00048513          	mv	a0,s1
   17ba0:	ec8fc0ef          	jal	14268 <_free_r>
   17ba4:	04043c23          	sd	zero,88(s0)
   17ba8:	07843583          	ld	a1,120(s0)
   17bac:	00058863          	beqz	a1,17bbc <_fclose_r+0xb4>
   17bb0:	00048513          	mv	a0,s1
   17bb4:	eb4fc0ef          	jal	14268 <_free_r>
   17bb8:	06043c23          	sd	zero,120(s0)
   17bbc:	d64fc0ef          	jal	14120 <__sfp_lock_acquire>
   17bc0:	00041823          	sh	zero,16(s0)
   17bc4:	d60fc0ef          	jal	14124 <__sfp_lock_release>
   17bc8:	01813083          	ld	ra,24(sp)
   17bcc:	00090513          	mv	a0,s2
   17bd0:	01013403          	ld	s0,16(sp)
   17bd4:	00813483          	ld	s1,8(sp)
   17bd8:	00013903          	ld	s2,0(sp)
   17bdc:	02010113          	addi	sp,sp,32
   17be0:	00008067          	ret
   17be4:	d2cfc0ef          	jal	14110 <__sinit>
   17be8:	f4dff06f          	j	17b34 <_fclose_r+0x2c>
   17bec:	fff00913          	li	s2,-1
   17bf0:	f91ff06f          	j	17b80 <_fclose_r+0x78>
   17bf4:	01843583          	ld	a1,24(s0)
   17bf8:	00048513          	mv	a0,s1
   17bfc:	e6cfc0ef          	jal	14268 <_free_r>
   17c00:	f8dff06f          	j	17b8c <_fclose_r+0x84>
   17c04:	00000513          	li	a0,0
   17c08:	00008067          	ret

0000000000017c0c <fclose>:
   17c0c:	00050593          	mv	a1,a0
   17c10:	8101b503          	ld	a0,-2032(gp) # 1b7a0 <_impure_ptr>
   17c14:	ef5ff06f          	j	17b08 <_fclose_r>

0000000000017c18 <__fputwc>:
   17c18:	fb010113          	addi	sp,sp,-80
   17c1c:	04813023          	sd	s0,64(sp)
   17c20:	03413023          	sd	s4,32(sp)
   17c24:	01513c23          	sd	s5,24(sp)
   17c28:	04113423          	sd	ra,72(sp)
   17c2c:	02913c23          	sd	s1,56(sp)
   17c30:	03213823          	sd	s2,48(sp)
   17c34:	03313423          	sd	s3,40(sp)
   17c38:	01613823          	sd	s6,16(sp)
   17c3c:	00050a93          	mv	s5,a0
   17c40:	00058a13          	mv	s4,a1
   17c44:	00060413          	mv	s0,a2
   17c48:	b25fc0ef          	jal	1476c <__locale_mb_cur_max>
   17c4c:	00100793          	li	a5,1
   17c50:	10f50663          	beq	a0,a5,17d5c <__fputwc+0x144>
   17c54:	00810493          	addi	s1,sp,8
   17c58:	0a440693          	addi	a3,s0,164
   17c5c:	000a0613          	mv	a2,s4
   17c60:	00048593          	mv	a1,s1
   17c64:	000a8513          	mv	a0,s5
   17c68:	699000ef          	jal	18b00 <_wcrtomb_r>
   17c6c:	fff00793          	li	a5,-1
   17c70:	00050993          	mv	s3,a0
   17c74:	08f50e63          	beq	a0,a5,17d10 <__fputwc+0xf8>
   17c78:	10050263          	beqz	a0,17d7c <__fputwc+0x164>
   17c7c:	00814583          	lbu	a1,8(sp)
   17c80:	00c42783          	lw	a5,12(s0)
   17c84:	00000913          	li	s2,0
   17c88:	00a00b13          	li	s6,10
   17c8c:	fff7879b          	addiw	a5,a5,-1
   17c90:	00f42623          	sw	a5,12(s0)
   17c94:	0207cc63          	bltz	a5,17ccc <__fputwc+0xb4>
   17c98:	00043783          	ld	a5,0(s0)
   17c9c:	00b78023          	sb	a1,0(a5)
   17ca0:	00043783          	ld	a5,0(s0)
   17ca4:	00178793          	addi	a5,a5,1
   17ca8:	00f43023          	sd	a5,0(s0)
   17cac:	00190913          	addi	s2,s2,1
   17cb0:	00148493          	addi	s1,s1,1
   17cb4:	0d397463          	bleu	s3,s2,17d7c <__fputwc+0x164>
   17cb8:	00c42783          	lw	a5,12(s0)
   17cbc:	0004c583          	lbu	a1,0(s1)
   17cc0:	fff7879b          	addiw	a5,a5,-1
   17cc4:	00f42623          	sw	a5,12(s0)
   17cc8:	fc07d8e3          	bgez	a5,17c98 <__fputwc+0x80>
   17ccc:	02842703          	lw	a4,40(s0)
   17cd0:	06e7ca63          	blt	a5,a4,17d44 <__fputwc+0x12c>
   17cd4:	00043783          	ld	a5,0(s0)
   17cd8:	00b78023          	sb	a1,0(a5)
   17cdc:	00043783          	ld	a5,0(s0)
   17ce0:	0007c703          	lbu	a4,0(a5)
   17ce4:	00178793          	addi	a5,a5,1
   17ce8:	fd6710e3          	bne	a4,s6,17ca8 <__fputwc+0x90>
   17cec:	00040613          	mv	a2,s0
   17cf0:	000b0593          	mv	a1,s6
   17cf4:	000a8513          	mv	a0,s5
   17cf8:	481000ef          	jal	18978 <__swbuf_r>
   17cfc:	0015051b          	addiw	a0,a0,1
   17d00:	00153513          	seqz	a0,a0
   17d04:	fa0504e3          	beqz	a0,17cac <__fputwc+0x94>
   17d08:	fff00513          	li	a0,-1
   17d0c:	0100006f          	j	17d1c <__fputwc+0x104>
   17d10:	01045783          	lhu	a5,16(s0)
   17d14:	0407e793          	ori	a5,a5,64
   17d18:	00f41823          	sh	a5,16(s0)
   17d1c:	04813083          	ld	ra,72(sp)
   17d20:	04013403          	ld	s0,64(sp)
   17d24:	03813483          	ld	s1,56(sp)
   17d28:	03013903          	ld	s2,48(sp)
   17d2c:	02813983          	ld	s3,40(sp)
   17d30:	02013a03          	ld	s4,32(sp)
   17d34:	01813a83          	ld	s5,24(sp)
   17d38:	01013b03          	ld	s6,16(sp)
   17d3c:	05010113          	addi	sp,sp,80
   17d40:	00008067          	ret
   17d44:	00040613          	mv	a2,s0
   17d48:	000a8513          	mv	a0,s5
   17d4c:	42d000ef          	jal	18978 <__swbuf_r>
   17d50:	0015051b          	addiw	a0,a0,1
   17d54:	00153513          	seqz	a0,a0
   17d58:	fadff06f          	j	17d04 <__fputwc+0xec>
   17d5c:	fffa079b          	addiw	a5,s4,-1
   17d60:	0fe00713          	li	a4,254
   17d64:	eef768e3          	bltu	a4,a5,17c54 <__fputwc+0x3c>
   17d68:	0ffa7593          	andi	a1,s4,255
   17d6c:	00b10423          	sb	a1,8(sp)
   17d70:	00100993          	li	s3,1
   17d74:	00810493          	addi	s1,sp,8
   17d78:	f09ff06f          	j	17c80 <__fputwc+0x68>
   17d7c:	000a0513          	mv	a0,s4
   17d80:	f9dff06f          	j	17d1c <__fputwc+0x104>

0000000000017d84 <_fputwc_r>:
   17d84:	01061783          	lh	a5,16(a2)
   17d88:	00002737          	lui	a4,0x2
   17d8c:	03279693          	slli	a3,a5,0x32
   17d90:	0006cc63          	bltz	a3,17da8 <_fputwc_r+0x24>
   17d94:	0ac62683          	lw	a3,172(a2)
   17d98:	00e7e7b3          	or	a5,a5,a4
   17d9c:	00f61823          	sh	a5,16(a2)
   17da0:	00e6e733          	or	a4,a3,a4
   17da4:	0ae62623          	sw	a4,172(a2)
   17da8:	e71ff06f          	j	17c18 <__fputwc>

0000000000017dac <fputwc>:
   17dac:	fd010113          	addi	sp,sp,-48
   17db0:	02813023          	sd	s0,32(sp)
   17db4:	8101b403          	ld	s0,-2032(gp) # 1b7a0 <_impure_ptr>
   17db8:	00913c23          	sd	s1,24(sp)
   17dbc:	02113423          	sd	ra,40(sp)
   17dc0:	00050493          	mv	s1,a0
   17dc4:	00058613          	mv	a2,a1
   17dc8:	00040663          	beqz	s0,17dd4 <fputwc+0x28>
   17dcc:	05042783          	lw	a5,80(s0)
   17dd0:	04078263          	beqz	a5,17e14 <fputwc+0x68>
   17dd4:	01061783          	lh	a5,16(a2)
   17dd8:	00002737          	lui	a4,0x2
   17ddc:	03279693          	slli	a3,a5,0x32
   17de0:	0006cc63          	bltz	a3,17df8 <fputwc+0x4c>
   17de4:	0ac62683          	lw	a3,172(a2)
   17de8:	00e7e7b3          	or	a5,a5,a4
   17dec:	00f61823          	sh	a5,16(a2)
   17df0:	00e6e733          	or	a4,a3,a4
   17df4:	0ae62623          	sw	a4,172(a2)
   17df8:	00048593          	mv	a1,s1
   17dfc:	00040513          	mv	a0,s0
   17e00:	02813083          	ld	ra,40(sp)
   17e04:	02013403          	ld	s0,32(sp)
   17e08:	01813483          	ld	s1,24(sp)
   17e0c:	03010113          	addi	sp,sp,48
   17e10:	e09ff06f          	j	17c18 <__fputwc>
   17e14:	00040513          	mv	a0,s0
   17e18:	00b13423          	sd	a1,8(sp)
   17e1c:	af4fc0ef          	jal	14110 <__sinit>
   17e20:	00813603          	ld	a2,8(sp)
   17e24:	fb1ff06f          	j	17dd4 <fputwc+0x28>

0000000000017e28 <__sfvwrite_r>:
   17e28:	01063783          	ld	a5,16(a2)
   17e2c:	26078a63          	beqz	a5,180a0 <__sfvwrite_r+0x278>
   17e30:	0105d703          	lhu	a4,16(a1)
   17e34:	f9010113          	addi	sp,sp,-112
   17e38:	06813023          	sd	s0,96(sp)
   17e3c:	03513c23          	sd	s5,56(sp)
   17e40:	03613823          	sd	s6,48(sp)
   17e44:	06113423          	sd	ra,104(sp)
   17e48:	04913c23          	sd	s1,88(sp)
   17e4c:	05213823          	sd	s2,80(sp)
   17e50:	05313423          	sd	s3,72(sp)
   17e54:	05413023          	sd	s4,64(sp)
   17e58:	03713423          	sd	s7,40(sp)
   17e5c:	03813023          	sd	s8,32(sp)
   17e60:	01913c23          	sd	s9,24(sp)
   17e64:	01a13823          	sd	s10,16(sp)
   17e68:	01b13423          	sd	s11,8(sp)
   17e6c:	00877793          	andi	a5,a4,8
   17e70:	00058413          	mv	s0,a1
   17e74:	00050b13          	mv	s6,a0
   17e78:	00060a93          	mv	s5,a2
   17e7c:	0a078863          	beqz	a5,17f2c <__sfvwrite_r+0x104>
   17e80:	0185b783          	ld	a5,24(a1)
   17e84:	0a078463          	beqz	a5,17f2c <__sfvwrite_r+0x104>
   17e88:	00277793          	andi	a5,a4,2
   17e8c:	000ab483          	ld	s1,0(s5)
   17e90:	0c078063          	beqz	a5,17f50 <__sfvwrite_r+0x128>
   17e94:	80000a37          	lui	s4,0x80000
   17e98:	00000993          	li	s3,0
   17e9c:	00000913          	li	s2,0
   17ea0:	c00a4a13          	xori	s4,s4,-1024
   17ea4:	00098613          	mv	a2,s3
   17ea8:	000b0513          	mv	a0,s6
   17eac:	1e090263          	beqz	s2,18090 <__sfvwrite_r+0x268>
   17eb0:	00090693          	mv	a3,s2
   17eb4:	012a7463          	bleu	s2,s4,17ebc <__sfvwrite_r+0x94>
   17eb8:	000a0693          	mv	a3,s4
   17ebc:	04043783          	ld	a5,64(s0)
   17ec0:	03043583          	ld	a1,48(s0)
   17ec4:	0006869b          	sext.w	a3,a3
   17ec8:	000780e7          	jalr	a5
   17ecc:	22a05063          	blez	a0,180ec <__sfvwrite_r+0x2c4>
   17ed0:	010ab783          	ld	a5,16(s5)
   17ed4:	00a989b3          	add	s3,s3,a0
   17ed8:	40a90933          	sub	s2,s2,a0
   17edc:	40a78533          	sub	a0,a5,a0
   17ee0:	00aab823          	sd	a0,16(s5)
   17ee4:	fc0510e3          	bnez	a0,17ea4 <__sfvwrite_r+0x7c>
   17ee8:	00000793          	li	a5,0
   17eec:	06813083          	ld	ra,104(sp)
   17ef0:	00078513          	mv	a0,a5
   17ef4:	06013403          	ld	s0,96(sp)
   17ef8:	05813483          	ld	s1,88(sp)
   17efc:	05013903          	ld	s2,80(sp)
   17f00:	04813983          	ld	s3,72(sp)
   17f04:	04013a03          	ld	s4,64(sp)
   17f08:	03813a83          	ld	s5,56(sp)
   17f0c:	03013b03          	ld	s6,48(sp)
   17f10:	02813b83          	ld	s7,40(sp)
   17f14:	02013c03          	ld	s8,32(sp)
   17f18:	01813c83          	ld	s9,24(sp)
   17f1c:	01013d03          	ld	s10,16(sp)
   17f20:	00813d83          	ld	s11,8(sp)
   17f24:	07010113          	addi	sp,sp,112
   17f28:	00008067          	ret
   17f2c:	00040593          	mv	a1,s0
   17f30:	000b0513          	mv	a0,s6
   17f34:	cd0fa0ef          	jal	12404 <__swsetup_r>
   17f38:	fff00793          	li	a5,-1
   17f3c:	fa0518e3          	bnez	a0,17eec <__sfvwrite_r+0xc4>
   17f40:	01045703          	lhu	a4,16(s0)
   17f44:	000ab483          	ld	s1,0(s5)
   17f48:	00277793          	andi	a5,a4,2
   17f4c:	f40794e3          	bnez	a5,17e94 <__sfvwrite_r+0x6c>
   17f50:	00177793          	andi	a5,a4,1
   17f54:	1a079663          	bnez	a5,18100 <__sfvwrite_r+0x2d8>
   17f58:	80000bb7          	lui	s7,0x80000
   17f5c:	ffebcc13          	xori	s8,s7,-2
   17f60:	00000c93          	li	s9,0
   17f64:	00000913          	li	s2,0
   17f68:	fffbcb93          	not	s7,s7
   17f6c:	10090a63          	beqz	s2,18080 <__sfvwrite_r+0x258>
   17f70:	00c42983          	lw	s3,12(s0)
   17f74:	20077793          	andi	a5,a4,512
   17f78:	00098a13          	mv	s4,s3
   17f7c:	26078863          	beqz	a5,181ec <__sfvwrite_r+0x3c4>
   17f80:	2b396a63          	bltu	s2,s3,18234 <__sfvwrite_r+0x40c>
   17f84:	48077793          	andi	a5,a4,1152
   17f88:	2a078663          	beqz	a5,18234 <__sfvwrite_r+0x40c>
   17f8c:	02042a03          	lw	s4,32(s0)
   17f90:	01843583          	ld	a1,24(s0)
   17f94:	00043d03          	ld	s10,0(s0)
   17f98:	001a179b          	slliw	a5,s4,0x1
   17f9c:	01478a3b          	addw	s4,a5,s4
   17fa0:	01fa579b          	srliw	a5,s4,0x1f
   17fa4:	40bd0d3b          	subw	s10,s10,a1
   17fa8:	01478a3b          	addw	s4,a5,s4
   17fac:	000d0993          	mv	s3,s10
   17fb0:	401a5a1b          	sraiw	s4,s4,0x1
   17fb4:	00198793          	addi	a5,s3,1
   17fb8:	000a0613          	mv	a2,s4
   17fbc:	012787b3          	add	a5,a5,s2
   17fc0:	00f67863          	bleu	a5,a2,17fd0 <__sfvwrite_r+0x1a8>
   17fc4:	001d0a1b          	addiw	s4,s10,1
   17fc8:	01490a3b          	addw	s4,s2,s4
   17fcc:	000a0613          	mv	a2,s4
   17fd0:	40077713          	andi	a4,a4,1024
   17fd4:	2a070a63          	beqz	a4,18288 <__sfvwrite_r+0x460>
   17fd8:	00060593          	mv	a1,a2
   17fdc:	000b0513          	mv	a0,s6
   17fe0:	97dfc0ef          	jal	1495c <_malloc_r>
   17fe4:	00050d93          	mv	s11,a0
   17fe8:	2e050263          	beqz	a0,182cc <__sfvwrite_r+0x4a4>
   17fec:	01843583          	ld	a1,24(s0)
   17ff0:	00098613          	mv	a2,s3
   17ff4:	9c0fd0ef          	jal	151b4 <memcpy>
   17ff8:	01045783          	lhu	a5,16(s0)
   17ffc:	b7f7f793          	andi	a5,a5,-1153
   18000:	0807e793          	ori	a5,a5,128
   18004:	00f41823          	sh	a5,16(s0)
   18008:	41aa0d3b          	subw	s10,s4,s10
   1800c:	013d8533          	add	a0,s11,s3
   18010:	03442023          	sw	s4,32(s0)
   18014:	01b43c23          	sd	s11,24(s0)
   18018:	00a43023          	sd	a0,0(s0)
   1801c:	00090a13          	mv	s4,s2
   18020:	01a42623          	sw	s10,12(s0)
   18024:	000a0d13          	mv	s10,s4
   18028:	00090993          	mv	s3,s2
   1802c:	01497863          	bleu	s4,s2,1803c <__sfvwrite_r+0x214>
   18030:	00090d13          	mv	s10,s2
   18034:	00090993          	mv	s3,s2
   18038:	00090a13          	mv	s4,s2
   1803c:	000d0613          	mv	a2,s10
   18040:	000c8593          	mv	a1,s9
   18044:	298000ef          	jal	182dc <memmove>
   18048:	00c42783          	lw	a5,12(s0)
   1804c:	00043603          	ld	a2,0(s0)
   18050:	41478a3b          	subw	s4,a5,s4
   18054:	01a60633          	add	a2,a2,s10
   18058:	01442623          	sw	s4,12(s0)
   1805c:	00c43023          	sd	a2,0(s0)
   18060:	010ab503          	ld	a0,16(s5)
   18064:	013c8cb3          	add	s9,s9,s3
   18068:	41390933          	sub	s2,s2,s3
   1806c:	413509b3          	sub	s3,a0,s3
   18070:	013ab823          	sd	s3,16(s5)
   18074:	e6098ae3          	beqz	s3,17ee8 <__sfvwrite_r+0xc0>
   18078:	01045703          	lhu	a4,16(s0)
   1807c:	ee091ae3          	bnez	s2,17f70 <__sfvwrite_r+0x148>
   18080:	0004bc83          	ld	s9,0(s1)
   18084:	0084b903          	ld	s2,8(s1)
   18088:	01048493          	addi	s1,s1,16
   1808c:	ee1ff06f          	j	17f6c <__sfvwrite_r+0x144>
   18090:	0004b983          	ld	s3,0(s1)
   18094:	0084b903          	ld	s2,8(s1)
   18098:	01048493          	addi	s1,s1,16
   1809c:	e09ff06f          	j	17ea4 <__sfvwrite_r+0x7c>
   180a0:	00000793          	li	a5,0
   180a4:	00078513          	mv	a0,a5
   180a8:	00008067          	ret
   180ac:	01397463          	bleu	s3,s2,180b4 <__sfvwrite_r+0x28c>
   180b0:	00090993          	mv	s3,s2
   180b4:	00098613          	mv	a2,s3
   180b8:	000c8593          	mv	a1,s9
   180bc:	220000ef          	jal	182dc <memmove>
   180c0:	00c42783          	lw	a5,12(s0)
   180c4:	00043703          	ld	a4,0(s0)
   180c8:	413787bb          	subw	a5,a5,s3
   180cc:	01370733          	add	a4,a4,s3
   180d0:	00f42623          	sw	a5,12(s0)
   180d4:	00e43023          	sd	a4,0(s0)
   180d8:	f80794e3          	bnez	a5,18060 <__sfvwrite_r+0x238>
   180dc:	00040593          	mv	a1,s0
   180e0:	000b0513          	mv	a0,s6
   180e4:	c81fb0ef          	jal	13d64 <_fflush_r>
   180e8:	f6050ce3          	beqz	a0,18060 <__sfvwrite_r+0x238>
   180ec:	01041783          	lh	a5,16(s0)
   180f0:	0407e793          	ori	a5,a5,64
   180f4:	00f41823          	sh	a5,16(s0)
   180f8:	fff00793          	li	a5,-1
   180fc:	df1ff06f          	j	17eec <__sfvwrite_r+0xc4>
   18100:	00000a13          	li	s4,0
   18104:	00000c13          	li	s8,0
   18108:	00000d13          	li	s10,0
   1810c:	00000913          	li	s2,0
   18110:	06090e63          	beqz	s2,1818c <__sfvwrite_r+0x364>
   18114:	140c0863          	beqz	s8,18264 <__sfvwrite_r+0x43c>
   18118:	000a0993          	mv	s3,s4
   1811c:	01497463          	bleu	s4,s2,18124 <__sfvwrite_r+0x2fc>
   18120:	00090993          	mv	s3,s2
   18124:	00043503          	ld	a0,0(s0)
   18128:	01843783          	ld	a5,24(s0)
   1812c:	00098b93          	mv	s7,s3
   18130:	02042683          	lw	a3,32(s0)
   18134:	00a7fa63          	bleu	a0,a5,18148 <__sfvwrite_r+0x320>
   18138:	00c42c83          	lw	s9,12(s0)
   1813c:	01968cbb          	addw	s9,a3,s9
   18140:	000c8d93          	mv	s11,s9
   18144:	053dce63          	blt	s11,s3,181a0 <__sfvwrite_r+0x378>
   18148:	0ed9ca63          	blt	s3,a3,1823c <__sfvwrite_r+0x414>
   1814c:	04043783          	ld	a5,64(s0)
   18150:	03043583          	ld	a1,48(s0)
   18154:	000d0613          	mv	a2,s10
   18158:	000b0513          	mv	a0,s6
   1815c:	000780e7          	jalr	a5
   18160:	00050b93          	mv	s7,a0
   18164:	f8a054e3          	blez	a0,180ec <__sfvwrite_r+0x2c4>
   18168:	417a0a3b          	subw	s4,s4,s7
   1816c:	060a0463          	beqz	s4,181d4 <__sfvwrite_r+0x3ac>
   18170:	010ab783          	ld	a5,16(s5)
   18174:	017d0d33          	add	s10,s10,s7
   18178:	41790933          	sub	s2,s2,s7
   1817c:	41778bb3          	sub	s7,a5,s7
   18180:	017ab823          	sd	s7,16(s5)
   18184:	d60b82e3          	beqz	s7,17ee8 <__sfvwrite_r+0xc0>
   18188:	f80916e3          	bnez	s2,18114 <__sfvwrite_r+0x2ec>
   1818c:	0004bd03          	ld	s10,0(s1)
   18190:	0084b903          	ld	s2,8(s1)
   18194:	00000c13          	li	s8,0
   18198:	01048493          	addi	s1,s1,16
   1819c:	f75ff06f          	j	18110 <__sfvwrite_r+0x2e8>
   181a0:	000d0593          	mv	a1,s10
   181a4:	000c8613          	mv	a2,s9
   181a8:	134000ef          	jal	182dc <memmove>
   181ac:	00043783          	ld	a5,0(s0)
   181b0:	00040593          	mv	a1,s0
   181b4:	000b0513          	mv	a0,s6
   181b8:	01b78db3          	add	s11,a5,s11
   181bc:	01b43023          	sd	s11,0(s0)
   181c0:	ba5fb0ef          	jal	13d64 <_fflush_r>
   181c4:	f20514e3          	bnez	a0,180ec <__sfvwrite_r+0x2c4>
   181c8:	000c8b93          	mv	s7,s9
   181cc:	417a0a3b          	subw	s4,s4,s7
   181d0:	fa0a10e3          	bnez	s4,18170 <__sfvwrite_r+0x348>
   181d4:	00040593          	mv	a1,s0
   181d8:	000b0513          	mv	a0,s6
   181dc:	b89fb0ef          	jal	13d64 <_fflush_r>
   181e0:	f00516e3          	bnez	a0,180ec <__sfvwrite_r+0x2c4>
   181e4:	00000c13          	li	s8,0
   181e8:	f89ff06f          	j	18170 <__sfvwrite_r+0x348>
   181ec:	00043503          	ld	a0,0(s0)
   181f0:	01843783          	ld	a5,24(s0)
   181f4:	eaa7ece3          	bltu	a5,a0,180ac <__sfvwrite_r+0x284>
   181f8:	02042783          	lw	a5,32(s0)
   181fc:	eaf968e3          	bltu	s2,a5,180ac <__sfvwrite_r+0x284>
   18200:	000b8693          	mv	a3,s7
   18204:	012c6463          	bltu	s8,s2,1820c <__sfvwrite_r+0x3e4>
   18208:	0009069b          	sext.w	a3,s2
   1820c:	02f6c6bb          	divw	a3,a3,a5
   18210:	04043703          	ld	a4,64(s0)
   18214:	03043583          	ld	a1,48(s0)
   18218:	000c8613          	mv	a2,s9
   1821c:	000b0513          	mv	a0,s6
   18220:	02f686bb          	mulw	a3,a3,a5
   18224:	000700e7          	jalr	a4
   18228:	eca052e3          	blez	a0,180ec <__sfvwrite_r+0x2c4>
   1822c:	00050993          	mv	s3,a0
   18230:	e31ff06f          	j	18060 <__sfvwrite_r+0x238>
   18234:	00043503          	ld	a0,0(s0)
   18238:	dedff06f          	j	18024 <__sfvwrite_r+0x1fc>
   1823c:	00098613          	mv	a2,s3
   18240:	000d0593          	mv	a1,s10
   18244:	098000ef          	jal	182dc <memmove>
   18248:	00c42703          	lw	a4,12(s0)
   1824c:	00043783          	ld	a5,0(s0)
   18250:	4137073b          	subw	a4,a4,s3
   18254:	013789b3          	add	s3,a5,s3
   18258:	00e42623          	sw	a4,12(s0)
   1825c:	01343023          	sd	s3,0(s0)
   18260:	f09ff06f          	j	18168 <__sfvwrite_r+0x340>
   18264:	00090613          	mv	a2,s2
   18268:	00a00593          	li	a1,10
   1826c:	000d0513          	mv	a0,s10
   18270:	e5dfc0ef          	jal	150cc <memchr>
   18274:	04050663          	beqz	a0,182c0 <__sfvwrite_r+0x498>
   18278:	00150a13          	addi	s4,a0,1
   1827c:	41aa0a3b          	subw	s4,s4,s10
   18280:	00100c13          	li	s8,1
   18284:	e95ff06f          	j	18118 <__sfvwrite_r+0x2f0>
   18288:	000b0513          	mv	a0,s6
   1828c:	170000ef          	jal	183fc <_realloc_r>
   18290:	00050d93          	mv	s11,a0
   18294:	d6051ae3          	bnez	a0,18008 <__sfvwrite_r+0x1e0>
   18298:	01843583          	ld	a1,24(s0)
   1829c:	000b0513          	mv	a0,s6
   182a0:	fc9fb0ef          	jal	14268 <_free_r>
   182a4:	01045783          	lhu	a5,16(s0)
   182a8:	00c00713          	li	a4,12
   182ac:	00eb2023          	sw	a4,0(s6)
   182b0:	f7f7f793          	andi	a5,a5,-129
   182b4:	0107979b          	slliw	a5,a5,0x10
   182b8:	4107d79b          	sraiw	a5,a5,0x10
   182bc:	e35ff06f          	j	180f0 <__sfvwrite_r+0x2c8>
   182c0:	00190a1b          	addiw	s4,s2,1
   182c4:	00100c13          	li	s8,1
   182c8:	e51ff06f          	j	18118 <__sfvwrite_r+0x2f0>
   182cc:	00c00793          	li	a5,12
   182d0:	00fb2023          	sw	a5,0(s6)
   182d4:	01041783          	lh	a5,16(s0)
   182d8:	e19ff06f          	j	180f0 <__sfvwrite_r+0x2c8>

00000000000182dc <memmove>:
   182dc:	02a5f863          	bleu	a0,a1,1830c <memmove+0x30>
   182e0:	00c58733          	add	a4,a1,a2
   182e4:	02e57463          	bleu	a4,a0,1830c <memmove+0x30>
   182e8:	00c507b3          	add	a5,a0,a2
   182ec:	40c785b3          	sub	a1,a5,a2
   182f0:	0e060263          	beqz	a2,183d4 <memmove+0xf8>
   182f4:	fff70713          	addi	a4,a4,-1 # 1fff <_ftext-0xe001>
   182f8:	00074683          	lbu	a3,0(a4)
   182fc:	fff78793          	addi	a5,a5,-1
   18300:	00d78023          	sb	a3,0(a5)
   18304:	fef598e3          	bne	a1,a5,182f4 <memmove+0x18>
   18308:	00008067          	ret
   1830c:	01f00893          	li	a7,31
   18310:	0cc8f463          	bleu	a2,a7,183d8 <memmove+0xfc>
   18314:	00a5e7b3          	or	a5,a1,a0
   18318:	0077f793          	andi	a5,a5,7
   1831c:	0c079463          	bnez	a5,183e4 <memmove+0x108>
   18320:	00058713          	mv	a4,a1
   18324:	00050793          	mv	a5,a0
   18328:	00060693          	mv	a3,a2
   1832c:	00073803          	ld	a6,0(a4)
   18330:	02078793          	addi	a5,a5,32
   18334:	02070713          	addi	a4,a4,32
   18338:	ff07b023          	sd	a6,-32(a5)
   1833c:	fe873803          	ld	a6,-24(a4)
   18340:	fe068693          	addi	a3,a3,-32
   18344:	ff07b423          	sd	a6,-24(a5)
   18348:	ff073803          	ld	a6,-16(a4)
   1834c:	ff07b823          	sd	a6,-16(a5)
   18350:	ff873803          	ld	a6,-8(a4)
   18354:	ff07bc23          	sd	a6,-8(a5)
   18358:	fcd8eae3          	bltu	a7,a3,1832c <memmove+0x50>
   1835c:	fe060713          	addi	a4,a2,-32
   18360:	fe077713          	andi	a4,a4,-32
   18364:	02070713          	addi	a4,a4,32
   18368:	01f67e13          	andi	t3,a2,31
   1836c:	00700313          	li	t1,7
   18370:	00e507b3          	add	a5,a0,a4
   18374:	00e585b3          	add	a1,a1,a4
   18378:	07c37c63          	bleu	t3,t1,183f0 <memmove+0x114>
   1837c:	00058813          	mv	a6,a1
   18380:	00078693          	mv	a3,a5
   18384:	000e0713          	mv	a4,t3
   18388:	00880813          	addi	a6,a6,8
   1838c:	ff883883          	ld	a7,-8(a6)
   18390:	00868693          	addi	a3,a3,8
   18394:	ff870713          	addi	a4,a4,-8
   18398:	ff16bc23          	sd	a7,-8(a3)
   1839c:	fee366e3          	bltu	t1,a4,18388 <memmove+0xac>
   183a0:	ff8e0713          	addi	a4,t3,-8
   183a4:	ff877713          	andi	a4,a4,-8
   183a8:	00870713          	addi	a4,a4,8
   183ac:	00767613          	andi	a2,a2,7
   183b0:	00e787b3          	add	a5,a5,a4
   183b4:	00e585b3          	add	a1,a1,a4
   183b8:	02060a63          	beqz	a2,183ec <memmove+0x110>
   183bc:	00c78633          	add	a2,a5,a2
   183c0:	00158593          	addi	a1,a1,1
   183c4:	fff5c703          	lbu	a4,-1(a1)
   183c8:	00178793          	addi	a5,a5,1
   183cc:	fee78fa3          	sb	a4,-1(a5)
   183d0:	fec798e3          	bne	a5,a2,183c0 <memmove+0xe4>
   183d4:	00008067          	ret
   183d8:	00050793          	mv	a5,a0
   183dc:	fe0610e3          	bnez	a2,183bc <memmove+0xe0>
   183e0:	00c0006f          	j	183ec <memmove+0x110>
   183e4:	00050793          	mv	a5,a0
   183e8:	fd5ff06f          	j	183bc <memmove+0xe0>
   183ec:	00008067          	ret
   183f0:	000e0613          	mv	a2,t3
   183f4:	fc0614e3          	bnez	a2,183bc <memmove+0xe0>
   183f8:	ff5ff06f          	j	183ec <memmove+0x110>

00000000000183fc <_realloc_r>:
   183fc:	fb010113          	addi	sp,sp,-80
   18400:	02913c23          	sd	s1,56(sp)
   18404:	04113423          	sd	ra,72(sp)
   18408:	04813023          	sd	s0,64(sp)
   1840c:	03213823          	sd	s2,48(sp)
   18410:	03313423          	sd	s3,40(sp)
   18414:	03413023          	sd	s4,32(sp)
   18418:	01513c23          	sd	s5,24(sp)
   1841c:	01613823          	sd	s6,16(sp)
   18420:	01713423          	sd	s7,8(sp)
   18424:	01813023          	sd	s8,0(sp)
   18428:	00060493          	mv	s1,a2
   1842c:	1c058a63          	beqz	a1,18600 <_realloc_r+0x204>
   18430:	00058993          	mv	s3,a1
   18434:	00050913          	mv	s2,a0
   18438:	f79fc0ef          	jal	153b0 <__malloc_lock>
   1843c:	ff89b783          	ld	a5,-8(s3)
   18440:	01748413          	addi	s0,s1,23
   18444:	02e00713          	li	a4,46
   18448:	ff098a93          	addi	s5,s3,-16
   1844c:	ffc7fa13          	andi	s4,a5,-4
   18450:	0c877463          	bleu	s0,a4,18518 <_realloc_r+0x11c>
   18454:	80000737          	lui	a4,0x80000
   18458:	ff047413          	andi	s0,s0,-16
   1845c:	fff74713          	not	a4,a4
   18460:	14876a63          	bltu	a4,s0,185b4 <_realloc_r+0x1b8>
   18464:	14946863          	bltu	s0,s1,185b4 <_realloc_r+0x1b8>
   18468:	0a8a5c63          	ble	s0,s4,18520 <_realloc_r+0x124>
   1846c:	0001bb37          	lui	s6,0x1b
   18470:	f78b0b13          	addi	s6,s6,-136 # 1af78 <__malloc_av_>
   18474:	010b3703          	ld	a4,16(s6)
   18478:	014a86b3          	add	a3,s5,s4
   1847c:	2ee68e63          	beq	a3,a4,18778 <_realloc_r+0x37c>
   18480:	0086b703          	ld	a4,8(a3)
   18484:	ffe77613          	andi	a2,a4,-2
   18488:	00c68633          	add	a2,a3,a2
   1848c:	00863603          	ld	a2,8(a2)
   18490:	00167613          	andi	a2,a2,1
   18494:	0e060c63          	beqz	a2,1858c <_realloc_r+0x190>
   18498:	0017f793          	andi	a5,a5,1
   1849c:	26078063          	beqz	a5,186fc <_realloc_r+0x300>
   184a0:	00048593          	mv	a1,s1
   184a4:	00090513          	mv	a0,s2
   184a8:	cb4fc0ef          	jal	1495c <_malloc_r>
   184ac:	00050493          	mv	s1,a0
   184b0:	48050e63          	beqz	a0,1894c <_realloc_r+0x550>
   184b4:	ff89b783          	ld	a5,-8(s3)
   184b8:	ff050713          	addi	a4,a0,-16
   184bc:	ffe7f793          	andi	a5,a5,-2
   184c0:	00fa87b3          	add	a5,s5,a5
   184c4:	40f70e63          	beq	a4,a5,188e0 <_realloc_r+0x4e4>
   184c8:	ff8a0613          	addi	a2,s4,-8 # ffffffff7ffffff8 <_gp+0xffffffff7ffe4068>
   184cc:	04800793          	li	a5,72
   184d0:	3ec7e263          	bltu	a5,a2,188b4 <_realloc_r+0x4b8>
   184d4:	02700713          	li	a4,39
   184d8:	36c76663          	bltu	a4,a2,18844 <_realloc_r+0x448>
   184dc:	00050793          	mv	a5,a0
   184e0:	00098713          	mv	a4,s3
   184e4:	00073683          	ld	a3,0(a4) # ffffffff80000000 <_gp+0xffffffff7ffe4070>
   184e8:	00d7b023          	sd	a3,0(a5)
   184ec:	00873683          	ld	a3,8(a4)
   184f0:	00d7b423          	sd	a3,8(a5)
   184f4:	01073703          	ld	a4,16(a4)
   184f8:	00e7b823          	sd	a4,16(a5)
   184fc:	00098593          	mv	a1,s3
   18500:	00090513          	mv	a0,s2
   18504:	d65fb0ef          	jal	14268 <_free_r>
   18508:	00090513          	mv	a0,s2
   1850c:	ea9fc0ef          	jal	153b4 <__malloc_unlock>
   18510:	00048513          	mv	a0,s1
   18514:	0480006f          	j	1855c <_realloc_r+0x160>
   18518:	02000413          	li	s0,32
   1851c:	f49ff06f          	j	18464 <_realloc_r+0x68>
   18520:	00098493          	mv	s1,s3
   18524:	408a07b3          	sub	a5,s4,s0
   18528:	01f00713          	li	a4,31
   1852c:	08f76c63          	bltu	a4,a5,185c4 <_realloc_r+0x1c8>
   18530:	008ab783          	ld	a5,8(s5)
   18534:	014a8733          	add	a4,s5,s4
   18538:	0017f793          	andi	a5,a5,1
   1853c:	0147e633          	or	a2,a5,s4
   18540:	00cab423          	sd	a2,8(s5)
   18544:	00873783          	ld	a5,8(a4)
   18548:	0017e793          	ori	a5,a5,1
   1854c:	00f73423          	sd	a5,8(a4)
   18550:	00090513          	mv	a0,s2
   18554:	e61fc0ef          	jal	153b4 <__malloc_unlock>
   18558:	00048513          	mv	a0,s1
   1855c:	04813083          	ld	ra,72(sp)
   18560:	04013403          	ld	s0,64(sp)
   18564:	03813483          	ld	s1,56(sp)
   18568:	03013903          	ld	s2,48(sp)
   1856c:	02813983          	ld	s3,40(sp)
   18570:	02013a03          	ld	s4,32(sp)
   18574:	01813a83          	ld	s5,24(sp)
   18578:	01013b03          	ld	s6,16(sp)
   1857c:	00813b83          	ld	s7,8(sp)
   18580:	00013c03          	ld	s8,0(sp)
   18584:	05010113          	addi	sp,sp,80
   18588:	00008067          	ret
   1858c:	ffc77713          	andi	a4,a4,-4
   18590:	01470733          	add	a4,a4,s4
   18594:	0a874063          	blt	a4,s0,18634 <_realloc_r+0x238>
   18598:	0186b783          	ld	a5,24(a3)
   1859c:	0106b683          	ld	a3,16(a3)
   185a0:	00098493          	mv	s1,s3
   185a4:	00070a13          	mv	s4,a4
   185a8:	00f6bc23          	sd	a5,24(a3)
   185ac:	00d7b823          	sd	a3,16(a5)
   185b0:	f75ff06f          	j	18524 <_realloc_r+0x128>
   185b4:	00c00793          	li	a5,12
   185b8:	00f92023          	sw	a5,0(s2)
   185bc:	00000513          	li	a0,0
   185c0:	f9dff06f          	j	1855c <_realloc_r+0x160>
   185c4:	008ab703          	ld	a4,8(s5)
   185c8:	008a85b3          	add	a1,s5,s0
   185cc:	0017e693          	ori	a3,a5,1
   185d0:	00177713          	andi	a4,a4,1
   185d4:	00876433          	or	s0,a4,s0
   185d8:	008ab423          	sd	s0,8(s5)
   185dc:	00d5b423          	sd	a3,8(a1)
   185e0:	00f587b3          	add	a5,a1,a5
   185e4:	0087b703          	ld	a4,8(a5)
   185e8:	01058593          	addi	a1,a1,16
   185ec:	00090513          	mv	a0,s2
   185f0:	00176713          	ori	a4,a4,1
   185f4:	00e7b423          	sd	a4,8(a5)
   185f8:	c71fb0ef          	jal	14268 <_free_r>
   185fc:	f55ff06f          	j	18550 <_realloc_r+0x154>
   18600:	04813083          	ld	ra,72(sp)
   18604:	04013403          	ld	s0,64(sp)
   18608:	03813483          	ld	s1,56(sp)
   1860c:	03013903          	ld	s2,48(sp)
   18610:	02813983          	ld	s3,40(sp)
   18614:	02013a03          	ld	s4,32(sp)
   18618:	01813a83          	ld	s5,24(sp)
   1861c:	01013b03          	ld	s6,16(sp)
   18620:	00813b83          	ld	s7,8(sp)
   18624:	00013c03          	ld	s8,0(sp)
   18628:	00060593          	mv	a1,a2
   1862c:	05010113          	addi	sp,sp,80
   18630:	b2cfc06f          	j	1495c <_malloc_r>
   18634:	0017f793          	andi	a5,a5,1
   18638:	e60794e3          	bnez	a5,184a0 <_realloc_r+0xa4>
   1863c:	ff09bb83          	ld	s7,-16(s3)
   18640:	417a8bb3          	sub	s7,s5,s7
   18644:	008bb783          	ld	a5,8(s7) # ffffffff80000008 <_gp+0xffffffff7ffe4078>
   18648:	ffc7f793          	andi	a5,a5,-4
   1864c:	00f70b33          	add	s6,a4,a5
   18650:	0a8b4e63          	blt	s6,s0,1870c <_realloc_r+0x310>
   18654:	0186b783          	ld	a5,24(a3)
   18658:	0106b703          	ld	a4,16(a3)
   1865c:	ff8a0613          	addi	a2,s4,-8
   18660:	010b8493          	addi	s1,s7,16
   18664:	00f73c23          	sd	a5,24(a4)
   18668:	00e7b823          	sd	a4,16(a5)
   1866c:	010bb703          	ld	a4,16(s7)
   18670:	018bb783          	ld	a5,24(s7)
   18674:	00f73c23          	sd	a5,24(a4)
   18678:	00e7b823          	sd	a4,16(a5)
   1867c:	04800793          	li	a5,72
   18680:	1ec7e463          	bltu	a5,a2,18868 <_realloc_r+0x46c>
   18684:	02700713          	li	a4,39
   18688:	00048793          	mv	a5,s1
   1868c:	04c77663          	bleu	a2,a4,186d8 <_realloc_r+0x2dc>
   18690:	0009b783          	ld	a5,0(s3)
   18694:	00fbb823          	sd	a5,16(s7)
   18698:	0089b783          	ld	a5,8(s3)
   1869c:	00fbbc23          	sd	a5,24(s7)
   186a0:	03700793          	li	a5,55
   186a4:	24c7f863          	bleu	a2,a5,188f4 <_realloc_r+0x4f8>
   186a8:	0109b783          	ld	a5,16(s3)
   186ac:	02fbb023          	sd	a5,32(s7)
   186b0:	0189b783          	ld	a5,24(s3)
   186b4:	02fbb423          	sd	a5,40(s7)
   186b8:	04800793          	li	a5,72
   186bc:	0af61863          	bne	a2,a5,1876c <_realloc_r+0x370>
   186c0:	0209b703          	ld	a4,32(s3)
   186c4:	040b8793          	addi	a5,s7,64
   186c8:	03098993          	addi	s3,s3,48
   186cc:	02ebb823          	sd	a4,48(s7)
   186d0:	ff89b703          	ld	a4,-8(s3)
   186d4:	02ebbc23          	sd	a4,56(s7)
   186d8:	0009b703          	ld	a4,0(s3)
   186dc:	000b0a13          	mv	s4,s6
   186e0:	000b8a93          	mv	s5,s7
   186e4:	00e7b023          	sd	a4,0(a5)
   186e8:	0089b703          	ld	a4,8(s3)
   186ec:	00e7b423          	sd	a4,8(a5)
   186f0:	0109b703          	ld	a4,16(s3)
   186f4:	00e7b823          	sd	a4,16(a5)
   186f8:	e2dff06f          	j	18524 <_realloc_r+0x128>
   186fc:	ff09bb83          	ld	s7,-16(s3)
   18700:	417a8bb3          	sub	s7,s5,s7
   18704:	008bb783          	ld	a5,8(s7)
   18708:	ffc7f793          	andi	a5,a5,-4
   1870c:	00fa0b33          	add	s6,s4,a5
   18710:	d88b48e3          	blt	s6,s0,184a0 <_realloc_r+0xa4>
   18714:	018bb783          	ld	a5,24(s7)
   18718:	010bb703          	ld	a4,16(s7)
   1871c:	ff8a0613          	addi	a2,s4,-8
   18720:	04800693          	li	a3,72
   18724:	00f73c23          	sd	a5,24(a4)
   18728:	00e7b823          	sd	a4,16(a5)
   1872c:	010b8493          	addi	s1,s7,16
   18730:	12c6ec63          	bltu	a3,a2,18868 <_realloc_r+0x46c>
   18734:	02700713          	li	a4,39
   18738:	00048793          	mv	a5,s1
   1873c:	f8c77ee3          	bleu	a2,a4,186d8 <_realloc_r+0x2dc>
   18740:	0009b783          	ld	a5,0(s3)
   18744:	00fbb823          	sd	a5,16(s7)
   18748:	0089b783          	ld	a5,8(s3)
   1874c:	00fbbc23          	sd	a5,24(s7)
   18750:	03700793          	li	a5,55
   18754:	1ac7f063          	bleu	a2,a5,188f4 <_realloc_r+0x4f8>
   18758:	0109b783          	ld	a5,16(s3)
   1875c:	02fbb023          	sd	a5,32(s7)
   18760:	0189b783          	ld	a5,24(s3)
   18764:	02fbb423          	sd	a5,40(s7)
   18768:	f4d60ce3          	beq	a2,a3,186c0 <_realloc_r+0x2c4>
   1876c:	030b8793          	addi	a5,s7,48
   18770:	02098993          	addi	s3,s3,32
   18774:	f65ff06f          	j	186d8 <_realloc_r+0x2dc>
   18778:	0086b703          	ld	a4,8(a3)
   1877c:	02040693          	addi	a3,s0,32
   18780:	ffc77713          	andi	a4,a4,-4
   18784:	01470733          	add	a4,a4,s4
   18788:	0ed75c63          	ble	a3,a4,18880 <_realloc_r+0x484>
   1878c:	0017f793          	andi	a5,a5,1
   18790:	d00798e3          	bnez	a5,184a0 <_realloc_r+0xa4>
   18794:	ff09bb83          	ld	s7,-16(s3)
   18798:	417a8bb3          	sub	s7,s5,s7
   1879c:	008bb783          	ld	a5,8(s7)
   187a0:	ffc7f793          	andi	a5,a5,-4
   187a4:	00e78c33          	add	s8,a5,a4
   187a8:	f6dc42e3          	blt	s8,a3,1870c <_realloc_r+0x310>
   187ac:	018bb783          	ld	a5,24(s7)
   187b0:	010bb703          	ld	a4,16(s7)
   187b4:	ff8a0613          	addi	a2,s4,-8
   187b8:	04800693          	li	a3,72
   187bc:	00f73c23          	sd	a5,24(a4)
   187c0:	00e7b823          	sd	a4,16(a5)
   187c4:	010b8493          	addi	s1,s7,16
   187c8:	14c6ea63          	bltu	a3,a2,1891c <_realloc_r+0x520>
   187cc:	02700713          	li	a4,39
   187d0:	00048793          	mv	a5,s1
   187d4:	02c77263          	bleu	a2,a4,187f8 <_realloc_r+0x3fc>
   187d8:	0009b783          	ld	a5,0(s3)
   187dc:	00fbb823          	sd	a5,16(s7)
   187e0:	0089b783          	ld	a5,8(s3)
   187e4:	00fbbc23          	sd	a5,24(s7)
   187e8:	03700793          	li	a5,55
   187ec:	14c7e063          	bltu	a5,a2,1892c <_realloc_r+0x530>
   187f0:	020b8793          	addi	a5,s7,32
   187f4:	01098993          	addi	s3,s3,16
   187f8:	0009b703          	ld	a4,0(s3)
   187fc:	00e7b023          	sd	a4,0(a5)
   18800:	0089b703          	ld	a4,8(s3)
   18804:	00e7b423          	sd	a4,8(a5)
   18808:	0109b703          	ld	a4,16(s3)
   1880c:	00e7b823          	sd	a4,16(a5)
   18810:	008b8733          	add	a4,s7,s0
   18814:	408c07b3          	sub	a5,s8,s0
   18818:	00eb3823          	sd	a4,16(s6)
   1881c:	0017e793          	ori	a5,a5,1
   18820:	00f73423          	sd	a5,8(a4)
   18824:	008bb783          	ld	a5,8(s7)
   18828:	00090513          	mv	a0,s2
   1882c:	0017f793          	andi	a5,a5,1
   18830:	0087e433          	or	s0,a5,s0
   18834:	008bb423          	sd	s0,8(s7)
   18838:	b7dfc0ef          	jal	153b4 <__malloc_unlock>
   1883c:	00048513          	mv	a0,s1
   18840:	d1dff06f          	j	1855c <_realloc_r+0x160>
   18844:	0009b703          	ld	a4,0(s3)
   18848:	00e53023          	sd	a4,0(a0)
   1884c:	0089b703          	ld	a4,8(s3)
   18850:	00e53423          	sd	a4,8(a0)
   18854:	03700713          	li	a4,55
   18858:	06c76463          	bltu	a4,a2,188c0 <_realloc_r+0x4c4>
   1885c:	01050793          	addi	a5,a0,16
   18860:	01098713          	addi	a4,s3,16
   18864:	c81ff06f          	j	184e4 <_realloc_r+0xe8>
   18868:	00098593          	mv	a1,s3
   1886c:	00048513          	mv	a0,s1
   18870:	a6dff0ef          	jal	182dc <memmove>
   18874:	000b0a13          	mv	s4,s6
   18878:	000b8a93          	mv	s5,s7
   1887c:	ca9ff06f          	j	18524 <_realloc_r+0x128>
   18880:	008a8ab3          	add	s5,s5,s0
   18884:	408707b3          	sub	a5,a4,s0
   18888:	015b3823          	sd	s5,16(s6)
   1888c:	0017e793          	ori	a5,a5,1
   18890:	00fab423          	sd	a5,8(s5)
   18894:	ff89b783          	ld	a5,-8(s3)
   18898:	00090513          	mv	a0,s2
   1889c:	0017f793          	andi	a5,a5,1
   188a0:	0087e433          	or	s0,a5,s0
   188a4:	fe89bc23          	sd	s0,-8(s3)
   188a8:	b0dfc0ef          	jal	153b4 <__malloc_unlock>
   188ac:	00098513          	mv	a0,s3
   188b0:	cadff06f          	j	1855c <_realloc_r+0x160>
   188b4:	00098593          	mv	a1,s3
   188b8:	a25ff0ef          	jal	182dc <memmove>
   188bc:	c41ff06f          	j	184fc <_realloc_r+0x100>
   188c0:	0109b703          	ld	a4,16(s3)
   188c4:	00e53823          	sd	a4,16(a0)
   188c8:	0189b703          	ld	a4,24(s3)
   188cc:	00e53c23          	sd	a4,24(a0)
   188d0:	02f60863          	beq	a2,a5,18900 <_realloc_r+0x504>
   188d4:	02050793          	addi	a5,a0,32
   188d8:	02098713          	addi	a4,s3,32
   188dc:	c09ff06f          	j	184e4 <_realloc_r+0xe8>
   188e0:	ff853783          	ld	a5,-8(a0)
   188e4:	00098493          	mv	s1,s3
   188e8:	ffc7f793          	andi	a5,a5,-4
   188ec:	00fa0a33          	add	s4,s4,a5
   188f0:	c35ff06f          	j	18524 <_realloc_r+0x128>
   188f4:	020b8793          	addi	a5,s7,32
   188f8:	01098993          	addi	s3,s3,16
   188fc:	dddff06f          	j	186d8 <_realloc_r+0x2dc>
   18900:	0209b683          	ld	a3,32(s3)
   18904:	03050793          	addi	a5,a0,48
   18908:	03098713          	addi	a4,s3,48
   1890c:	02d53023          	sd	a3,32(a0)
   18910:	0289b683          	ld	a3,40(s3)
   18914:	02d53423          	sd	a3,40(a0)
   18918:	bcdff06f          	j	184e4 <_realloc_r+0xe8>
   1891c:	00098593          	mv	a1,s3
   18920:	00048513          	mv	a0,s1
   18924:	9b9ff0ef          	jal	182dc <memmove>
   18928:	ee9ff06f          	j	18810 <_realloc_r+0x414>
   1892c:	0109b783          	ld	a5,16(s3)
   18930:	02fbb023          	sd	a5,32(s7)
   18934:	0189b783          	ld	a5,24(s3)
   18938:	02fbb423          	sd	a5,40(s7)
   1893c:	02d60063          	beq	a2,a3,1895c <_realloc_r+0x560>
   18940:	030b8793          	addi	a5,s7,48
   18944:	02098993          	addi	s3,s3,32
   18948:	eb1ff06f          	j	187f8 <_realloc_r+0x3fc>
   1894c:	00090513          	mv	a0,s2
   18950:	a65fc0ef          	jal	153b4 <__malloc_unlock>
   18954:	00000513          	li	a0,0
   18958:	c05ff06f          	j	1855c <_realloc_r+0x160>
   1895c:	0209b703          	ld	a4,32(s3)
   18960:	040b8793          	addi	a5,s7,64
   18964:	03098993          	addi	s3,s3,48
   18968:	02ebb823          	sd	a4,48(s7)
   1896c:	ff89b703          	ld	a4,-8(s3)
   18970:	02ebbc23          	sd	a4,56(s7)
   18974:	e85ff06f          	j	187f8 <_realloc_r+0x3fc>

0000000000018978 <__swbuf_r>:
   18978:	fd010113          	addi	sp,sp,-48
   1897c:	02813023          	sd	s0,32(sp)
   18980:	00913c23          	sd	s1,24(sp)
   18984:	01313423          	sd	s3,8(sp)
   18988:	02113423          	sd	ra,40(sp)
   1898c:	01213823          	sd	s2,16(sp)
   18990:	00050493          	mv	s1,a0
   18994:	00058993          	mv	s3,a1
   18998:	00060413          	mv	s0,a2
   1899c:	00050663          	beqz	a0,189a8 <__swbuf_r+0x30>
   189a0:	05052783          	lw	a5,80(a0)
   189a4:	12078e63          	beqz	a5,18ae0 <__swbuf_r+0x168>
   189a8:	01041683          	lh	a3,16(s0)
   189ac:	02842783          	lw	a5,40(s0)
   189b0:	03069713          	slli	a4,a3,0x30
   189b4:	03075713          	srli	a4,a4,0x30
   189b8:	00f42623          	sw	a5,12(s0)
   189bc:	00877793          	andi	a5,a4,8
   189c0:	0e078e63          	beqz	a5,18abc <__swbuf_r+0x144>
   189c4:	01843783          	ld	a5,24(s0)
   189c8:	0e078a63          	beqz	a5,18abc <__swbuf_r+0x144>
   189cc:	03271613          	slli	a2,a4,0x32
   189d0:	0ff9f913          	andi	s2,s3,255
   189d4:	06065663          	bgez	a2,18a40 <__swbuf_r+0xc8>
   189d8:	00043703          	ld	a4,0(s0)
   189dc:	02042683          	lw	a3,32(s0)
   189e0:	40f707bb          	subw	a5,a4,a5
   189e4:	08d7d663          	ble	a3,a5,18a70 <__swbuf_r+0xf8>
   189e8:	0017879b          	addiw	a5,a5,1
   189ec:	00c42683          	lw	a3,12(s0)
   189f0:	00170613          	addi	a2,a4,1
   189f4:	00c43023          	sd	a2,0(s0)
   189f8:	fff6869b          	addiw	a3,a3,-1
   189fc:	00d42623          	sw	a3,12(s0)
   18a00:	01370023          	sb	s3,0(a4)
   18a04:	02042703          	lw	a4,32(s0)
   18a08:	08f70263          	beq	a4,a5,18a8c <__swbuf_r+0x114>
   18a0c:	01045783          	lhu	a5,16(s0)
   18a10:	00090513          	mv	a0,s2
   18a14:	0017f793          	andi	a5,a5,1
   18a18:	00078663          	beqz	a5,18a24 <__swbuf_r+0xac>
   18a1c:	00a00793          	li	a5,10
   18a20:	06f90663          	beq	s2,a5,18a8c <__swbuf_r+0x114>
   18a24:	02813083          	ld	ra,40(sp)
   18a28:	02013403          	ld	s0,32(sp)
   18a2c:	01813483          	ld	s1,24(sp)
   18a30:	01013903          	ld	s2,16(sp)
   18a34:	00813983          	ld	s3,8(sp)
   18a38:	03010113          	addi	sp,sp,48
   18a3c:	00008067          	ret
   18a40:	0ac42583          	lw	a1,172(s0)
   18a44:	ffffe737          	lui	a4,0xffffe
   18a48:	fff7071b          	addiw	a4,a4,-1
   18a4c:	00e5f733          	and	a4,a1,a4
   18a50:	00002637          	lui	a2,0x2
   18a54:	00c6e6b3          	or	a3,a3,a2
   18a58:	0ae42623          	sw	a4,172(s0)
   18a5c:	00043703          	ld	a4,0(s0)
   18a60:	00d41823          	sh	a3,16(s0)
   18a64:	02042683          	lw	a3,32(s0)
   18a68:	40f707bb          	subw	a5,a4,a5
   18a6c:	f6d7cee3          	blt	a5,a3,189e8 <__swbuf_r+0x70>
   18a70:	00040593          	mv	a1,s0
   18a74:	00048513          	mv	a0,s1
   18a78:	aecfb0ef          	jal	13d64 <_fflush_r>
   18a7c:	06051663          	bnez	a0,18ae8 <__swbuf_r+0x170>
   18a80:	00043703          	ld	a4,0(s0)
   18a84:	00100793          	li	a5,1
   18a88:	f65ff06f          	j	189ec <__swbuf_r+0x74>
   18a8c:	00040593          	mv	a1,s0
   18a90:	00048513          	mv	a0,s1
   18a94:	ad0fb0ef          	jal	13d64 <_fflush_r>
   18a98:	04051863          	bnez	a0,18ae8 <__swbuf_r+0x170>
   18a9c:	02813083          	ld	ra,40(sp)
   18aa0:	00090513          	mv	a0,s2
   18aa4:	02013403          	ld	s0,32(sp)
   18aa8:	01813483          	ld	s1,24(sp)
   18aac:	01013903          	ld	s2,16(sp)
   18ab0:	00813983          	ld	s3,8(sp)
   18ab4:	03010113          	addi	sp,sp,48
   18ab8:	00008067          	ret
   18abc:	00040593          	mv	a1,s0
   18ac0:	00048513          	mv	a0,s1
   18ac4:	941f90ef          	jal	12404 <__swsetup_r>
   18ac8:	02051063          	bnez	a0,18ae8 <__swbuf_r+0x170>
   18acc:	01041683          	lh	a3,16(s0)
   18ad0:	01843783          	ld	a5,24(s0)
   18ad4:	03069713          	slli	a4,a3,0x30
   18ad8:	03075713          	srli	a4,a4,0x30
   18adc:	ef1ff06f          	j	189cc <__swbuf_r+0x54>
   18ae0:	e30fb0ef          	jal	14110 <__sinit>
   18ae4:	ec5ff06f          	j	189a8 <__swbuf_r+0x30>
   18ae8:	fff00513          	li	a0,-1
   18aec:	f39ff06f          	j	18a24 <__swbuf_r+0xac>

0000000000018af0 <__swbuf>:
   18af0:	00058613          	mv	a2,a1
   18af4:	00050593          	mv	a1,a0
   18af8:	8101b503          	ld	a0,-2032(gp) # 1b7a0 <_impure_ptr>
   18afc:	e7dff06f          	j	18978 <__swbuf_r>

0000000000018b00 <_wcrtomb_r>:
   18b00:	fc010113          	addi	sp,sp,-64
   18b04:	02913423          	sd	s1,40(sp)
   18b08:	03213023          	sd	s2,32(sp)
   18b0c:	02113c23          	sd	ra,56(sp)
   18b10:	02813823          	sd	s0,48(sp)
   18b14:	01313c23          	sd	s3,24(sp)
   18b18:	01413823          	sd	s4,16(sp)
   18b1c:	00050493          	mv	s1,a0
   18b20:	00068913          	mv	s2,a3
   18b24:	06058663          	beqz	a1,18b90 <_wcrtomb_r+0x90>
   18b28:	8381ba03          	ld	s4,-1992(gp) # 1b7c8 <__wctomb>
   18b2c:	00058413          	mv	s0,a1
   18b30:	00060993          	mv	s3,a2
   18b34:	c2dfb0ef          	jal	14760 <__locale_charset>
   18b38:	00050693          	mv	a3,a0
   18b3c:	00090713          	mv	a4,s2
   18b40:	00098613          	mv	a2,s3
   18b44:	00040593          	mv	a1,s0
   18b48:	00048513          	mv	a0,s1
   18b4c:	000a00e7          	jalr	s4
   18b50:	00050793          	mv	a5,a0
   18b54:	fff00713          	li	a4,-1
   18b58:	00078513          	mv	a0,a5
   18b5c:	00e79a63          	bne	a5,a4,18b70 <_wcrtomb_r+0x70>
   18b60:	00092023          	sw	zero,0(s2)
   18b64:	08a00793          	li	a5,138
   18b68:	00f4a023          	sw	a5,0(s1)
   18b6c:	fff00513          	li	a0,-1
   18b70:	03813083          	ld	ra,56(sp)
   18b74:	03013403          	ld	s0,48(sp)
   18b78:	02813483          	ld	s1,40(sp)
   18b7c:	02013903          	ld	s2,32(sp)
   18b80:	01813983          	ld	s3,24(sp)
   18b84:	01013a03          	ld	s4,16(sp)
   18b88:	04010113          	addi	sp,sp,64
   18b8c:	00008067          	ret
   18b90:	8381b403          	ld	s0,-1992(gp) # 1b7c8 <__wctomb>
   18b94:	bcdfb0ef          	jal	14760 <__locale_charset>
   18b98:	00050693          	mv	a3,a0
   18b9c:	00090713          	mv	a4,s2
   18ba0:	00000613          	li	a2,0
   18ba4:	00010593          	mv	a1,sp
   18ba8:	00048513          	mv	a0,s1
   18bac:	000400e7          	jalr	s0
   18bb0:	00050793          	mv	a5,a0
   18bb4:	fa1ff06f          	j	18b54 <_wcrtomb_r+0x54>

0000000000018bb8 <wcrtomb>:
   18bb8:	fc010113          	addi	sp,sp,-64
   18bbc:	02913423          	sd	s1,40(sp)
   18bc0:	03213023          	sd	s2,32(sp)
   18bc4:	02113c23          	sd	ra,56(sp)
   18bc8:	02813823          	sd	s0,48(sp)
   18bcc:	01313c23          	sd	s3,24(sp)
   18bd0:	01413823          	sd	s4,16(sp)
   18bd4:	00060913          	mv	s2,a2
   18bd8:	8101b483          	ld	s1,-2032(gp) # 1b7a0 <_impure_ptr>
   18bdc:	06050663          	beqz	a0,18c48 <wcrtomb+0x90>
   18be0:	8381ba03          	ld	s4,-1992(gp) # 1b7c8 <__wctomb>
   18be4:	00058993          	mv	s3,a1
   18be8:	00050413          	mv	s0,a0
   18bec:	b75fb0ef          	jal	14760 <__locale_charset>
   18bf0:	00050693          	mv	a3,a0
   18bf4:	00090713          	mv	a4,s2
   18bf8:	00098613          	mv	a2,s3
   18bfc:	00040593          	mv	a1,s0
   18c00:	00048513          	mv	a0,s1
   18c04:	000a00e7          	jalr	s4
   18c08:	00050793          	mv	a5,a0
   18c0c:	fff00713          	li	a4,-1
   18c10:	00078513          	mv	a0,a5
   18c14:	00e79a63          	bne	a5,a4,18c28 <wcrtomb+0x70>
   18c18:	00092023          	sw	zero,0(s2)
   18c1c:	08a00793          	li	a5,138
   18c20:	00f4a023          	sw	a5,0(s1)
   18c24:	fff00513          	li	a0,-1
   18c28:	03813083          	ld	ra,56(sp)
   18c2c:	03013403          	ld	s0,48(sp)
   18c30:	02813483          	ld	s1,40(sp)
   18c34:	02013903          	ld	s2,32(sp)
   18c38:	01813983          	ld	s3,24(sp)
   18c3c:	01013a03          	ld	s4,16(sp)
   18c40:	04010113          	addi	sp,sp,64
   18c44:	00008067          	ret
   18c48:	8381b403          	ld	s0,-1992(gp) # 1b7c8 <__wctomb>
   18c4c:	b15fb0ef          	jal	14760 <__locale_charset>
   18c50:	00050693          	mv	a3,a0
   18c54:	00090713          	mv	a4,s2
   18c58:	00000613          	li	a2,0
   18c5c:	00010593          	mv	a1,sp
   18c60:	00048513          	mv	a0,s1
   18c64:	000400e7          	jalr	s0
   18c68:	00050793          	mv	a5,a0
   18c6c:	fa1ff06f          	j	18c0c <wcrtomb+0x54>

0000000000018c70 <__ascii_wctomb>:
   18c70:	00058c63          	beqz	a1,18c88 <__ascii_wctomb+0x18>
   18c74:	0ff00793          	li	a5,255
   18c78:	00c7ec63          	bltu	a5,a2,18c90 <__ascii_wctomb+0x20>
   18c7c:	00c58023          	sb	a2,0(a1)
   18c80:	00100513          	li	a0,1
   18c84:	00008067          	ret
   18c88:	00000513          	li	a0,0
   18c8c:	00008067          	ret
   18c90:	08a00793          	li	a5,138
   18c94:	00f52023          	sw	a5,0(a0)
   18c98:	fff00513          	li	a0,-1
   18c9c:	00008067          	ret

0000000000018ca0 <_wctomb_r>:
   18ca0:	fd010113          	addi	sp,sp,-48
   18ca4:	02813023          	sd	s0,32(sp)
   18ca8:	8381b403          	ld	s0,-1992(gp) # 1b7c8 <__wctomb>
   18cac:	02113423          	sd	ra,40(sp)
   18cb0:	00913c23          	sd	s1,24(sp)
   18cb4:	01213823          	sd	s2,16(sp)
   18cb8:	01313423          	sd	s3,8(sp)
   18cbc:	01413023          	sd	s4,0(sp)
   18cc0:	00050493          	mv	s1,a0
   18cc4:	00068a13          	mv	s4,a3
   18cc8:	00058913          	mv	s2,a1
   18ccc:	00060993          	mv	s3,a2
   18cd0:	a91fb0ef          	jal	14760 <__locale_charset>
   18cd4:	000a0713          	mv	a4,s4
   18cd8:	00050693          	mv	a3,a0
   18cdc:	00098613          	mv	a2,s3
   18ce0:	00090593          	mv	a1,s2
   18ce4:	00048513          	mv	a0,s1
   18ce8:	00040313          	mv	t1,s0
   18cec:	02813083          	ld	ra,40(sp)
   18cf0:	02013403          	ld	s0,32(sp)
   18cf4:	01813483          	ld	s1,24(sp)
   18cf8:	01013903          	ld	s2,16(sp)
   18cfc:	00813983          	ld	s3,8(sp)
   18d00:	00013a03          	ld	s4,0(sp)
   18d04:	03010113          	addi	sp,sp,48
   18d08:	00030067          	jr	t1

0000000000018d0c <__syscall_error>:
   18d0c:	ff010113          	addi	sp,sp,-16
   18d10:	00113423          	sd	ra,8(sp)
   18d14:	00813023          	sd	s0,0(sp)
   18d18:	00050413          	mv	s0,a0
   18d1c:	3c0000ef          	jal	190dc <__errno>
   18d20:	00813083          	ld	ra,8(sp)
   18d24:	408007bb          	negw	a5,s0
   18d28:	00f52023          	sw	a5,0(a0)
   18d2c:	00013403          	ld	s0,0(sp)
   18d30:	fff00513          	li	a0,-1
   18d34:	01010113          	addi	sp,sp,16
   18d38:	00008067          	ret

0000000000018d3c <open>:
   18d3c:	00000693          	li	a3,0
   18d40:	40000893          	li	a7,1024
   18d44:	00000073          	ecall
   18d48:	fc0542e3          	bltz	a0,18d0c <__syscall_error>
   18d4c:	0005051b          	sext.w	a0,a0
   18d50:	00008067          	ret

0000000000018d54 <openat>:
   18d54:	03800893          	li	a7,56
   18d58:	00000073          	ecall
   18d5c:	fa0548e3          	bltz	a0,18d0c <__syscall_error>
   18d60:	0005051b          	sext.w	a0,a0
   18d64:	00008067          	ret

0000000000018d68 <lseek>:
   18d68:	00000693          	li	a3,0
   18d6c:	03e00893          	li	a7,62
   18d70:	00000073          	ecall
   18d74:	f8054ce3          	bltz	a0,18d0c <__syscall_error>
   18d78:	00008067          	ret

0000000000018d7c <read>:
   18d7c:	00000693          	li	a3,0
   18d80:	03f00893          	li	a7,63
   18d84:	00000073          	ecall
   18d88:	f80542e3          	bltz	a0,18d0c <__syscall_error>
   18d8c:	00008067          	ret

0000000000018d90 <write>:
   18d90:	00000693          	li	a3,0
   18d94:	04000893          	li	a7,64
   18d98:	00000073          	ecall
   18d9c:	f60548e3          	bltz	a0,18d0c <__syscall_error>
   18da0:	00008067          	ret

0000000000018da4 <fstat>:
   18da4:	00000613          	li	a2,0
   18da8:	00000693          	li	a3,0
   18dac:	05000893          	li	a7,80
   18db0:	00000073          	ecall
   18db4:	f4054ce3          	bltz	a0,18d0c <__syscall_error>
   18db8:	0005051b          	sext.w	a0,a0
   18dbc:	00008067          	ret

0000000000018dc0 <stat>:
   18dc0:	00000613          	li	a2,0
   18dc4:	00000693          	li	a3,0
   18dc8:	40e00893          	li	a7,1038
   18dcc:	00000073          	ecall
   18dd0:	f2054ee3          	bltz	a0,18d0c <__syscall_error>
   18dd4:	0005051b          	sext.w	a0,a0
   18dd8:	00008067          	ret

0000000000018ddc <lstat>:
   18ddc:	00000613          	li	a2,0
   18de0:	00000693          	li	a3,0
   18de4:	40f00893          	li	a7,1039
   18de8:	00000073          	ecall
   18dec:	f20540e3          	bltz	a0,18d0c <__syscall_error>
   18df0:	0005051b          	sext.w	a0,a0
   18df4:	00008067          	ret

0000000000018df8 <fstatat>:
   18df8:	04f00893          	li	a7,79
   18dfc:	00000073          	ecall
   18e00:	f00546e3          	bltz	a0,18d0c <__syscall_error>
   18e04:	0005051b          	sext.w	a0,a0
   18e08:	00008067          	ret

0000000000018e0c <access>:
   18e0c:	00000613          	li	a2,0
   18e10:	00000693          	li	a3,0
   18e14:	40900893          	li	a7,1033
   18e18:	00000073          	ecall
   18e1c:	ee0548e3          	bltz	a0,18d0c <__syscall_error>
   18e20:	0005051b          	sext.w	a0,a0
   18e24:	00008067          	ret

0000000000018e28 <faccessat>:
   18e28:	03000893          	li	a7,48
   18e2c:	00000073          	ecall
   18e30:	ec054ee3          	bltz	a0,18d0c <__syscall_error>
   18e34:	0005051b          	sext.w	a0,a0
   18e38:	00008067          	ret

0000000000018e3c <close>:
   18e3c:	00000593          	li	a1,0
   18e40:	00000613          	li	a2,0
   18e44:	00000693          	li	a3,0
   18e48:	03900893          	li	a7,57
   18e4c:	00000073          	ecall
   18e50:	ea054ee3          	bltz	a0,18d0c <__syscall_error>
   18e54:	0005051b          	sext.w	a0,a0
   18e58:	00008067          	ret

0000000000018e5c <link>:
   18e5c:	00000613          	li	a2,0
   18e60:	00000693          	li	a3,0
   18e64:	40100893          	li	a7,1025
   18e68:	00000073          	ecall
   18e6c:	ea0540e3          	bltz	a0,18d0c <__syscall_error>
   18e70:	0005051b          	sext.w	a0,a0
   18e74:	00008067          	ret

0000000000018e78 <unlink>:
   18e78:	00000593          	li	a1,0
   18e7c:	00000613          	li	a2,0
   18e80:	00000693          	li	a3,0
   18e84:	40200893          	li	a7,1026
   18e88:	00000073          	ecall
   18e8c:	e80540e3          	bltz	a0,18d0c <__syscall_error>
   18e90:	0005051b          	sext.w	a0,a0
   18e94:	00008067          	ret

0000000000018e98 <execve>:
   18e98:	ff010113          	addi	sp,sp,-16
   18e9c:	00113423          	sd	ra,8(sp)
   18ea0:	23c000ef          	jal	190dc <__errno>
   18ea4:	00813083          	ld	ra,8(sp)
   18ea8:	00c00793          	li	a5,12
   18eac:	00f52023          	sw	a5,0(a0)
   18eb0:	01010113          	addi	sp,sp,16
   18eb4:	fff00513          	li	a0,-1
   18eb8:	00008067          	ret

0000000000018ebc <fork>:
   18ebc:	ff010113          	addi	sp,sp,-16
   18ec0:	00113423          	sd	ra,8(sp)
   18ec4:	218000ef          	jal	190dc <__errno>
   18ec8:	00813083          	ld	ra,8(sp)
   18ecc:	00b00793          	li	a5,11
   18ed0:	00f52023          	sw	a5,0(a0)
   18ed4:	01010113          	addi	sp,sp,16
   18ed8:	fff00513          	li	a0,-1
   18edc:	00008067          	ret

0000000000018ee0 <getpid>:
   18ee0:	00100513          	li	a0,1
   18ee4:	00008067          	ret

0000000000018ee8 <kill>:
   18ee8:	ff010113          	addi	sp,sp,-16
   18eec:	00113423          	sd	ra,8(sp)
   18ef0:	1ec000ef          	jal	190dc <__errno>
   18ef4:	00813083          	ld	ra,8(sp)
   18ef8:	01600793          	li	a5,22
   18efc:	00f52023          	sw	a5,0(a0)
   18f00:	01010113          	addi	sp,sp,16
   18f04:	fff00513          	li	a0,-1
   18f08:	00008067          	ret

0000000000018f0c <wait>:
   18f0c:	ff010113          	addi	sp,sp,-16
   18f10:	00113423          	sd	ra,8(sp)
   18f14:	1c8000ef          	jal	190dc <__errno>
   18f18:	00813083          	ld	ra,8(sp)
   18f1c:	00a00793          	li	a5,10
   18f20:	00f52023          	sw	a5,0(a0)
   18f24:	01010113          	addi	sp,sp,16
   18f28:	fff00513          	li	a0,-1
   18f2c:	00008067          	ret

0000000000018f30 <isatty>:
   18f30:	f8010113          	addi	sp,sp,-128
   18f34:	00010593          	mv	a1,sp
   18f38:	00000613          	li	a2,0
   18f3c:	00000693          	li	a3,0
   18f40:	05000893          	li	a7,80
   18f44:	00000073          	ecall
   18f48:	dc0542e3          	bltz	a0,18d0c <__syscall_error>
   18f4c:	fff00793          	li	a5,-1
   18f50:	0005051b          	sext.w	a0,a0
   18f54:	00f50863          	beq	a0,a5,18f64 <isatty+0x34>
   18f58:	01012503          	lw	a0,16(sp)
   18f5c:	40d5551b          	sraiw	a0,a0,0xd
   18f60:	00157513          	andi	a0,a0,1
   18f64:	08010113          	addi	sp,sp,128
   18f68:	00008067          	ret

0000000000018f6c <times>:
   18f6c:	93018313          	addi	t1,gp,-1744 # 1b8c0 <t0.2343>
   18f70:	00033703          	ld	a4,0(t1)
   18f74:	ff010113          	addi	sp,sp,-16
   18f78:	00050813          	mv	a6,a0
   18f7c:	02071063          	bnez	a4,18f9c <times+0x30>
   18f80:	93018513          	addi	a0,gp,-1744 # 1b8c0 <t0.2343>
   18f84:	00000593          	li	a1,0
   18f88:	00000613          	li	a2,0
   18f8c:	00000693          	li	a3,0
   18f90:	0a900893          	li	a7,169
   18f94:	00000073          	ecall
   18f98:	d6054ae3          	bltz	a0,18d0c <__syscall_error>
   18f9c:	00010513          	mv	a0,sp
   18fa0:	00000593          	li	a1,0
   18fa4:	00000613          	li	a2,0
   18fa8:	00000693          	li	a3,0
   18fac:	0a900893          	li	a7,169
   18fb0:	00000073          	ecall
   18fb4:	d4054ce3          	bltz	a0,18d0c <__syscall_error>
   18fb8:	00033703          	ld	a4,0(t1)
   18fbc:	00013783          	ld	a5,0(sp)
   18fc0:	fff00513          	li	a0,-1
   18fc4:	00083823          	sd	zero,16(a6)
   18fc8:	40e786b3          	sub	a3,a5,a4
   18fcc:	000f47b7          	lui	a5,0xf4
   18fd0:	24078793          	addi	a5,a5,576 # f4240 <_gp+0xd82b0>
   18fd4:	02f68733          	mul	a4,a3,a5
   18fd8:	00833683          	ld	a3,8(t1)
   18fdc:	00813783          	ld	a5,8(sp)
   18fe0:	00083c23          	sd	zero,24(a6)
   18fe4:	00083423          	sd	zero,8(a6)
   18fe8:	40d787b3          	sub	a5,a5,a3
   18fec:	01010113          	addi	sp,sp,16
   18ff0:	00f707b3          	add	a5,a4,a5
   18ff4:	00f83023          	sd	a5,0(a6)
   18ff8:	00008067          	ret

0000000000018ffc <gettimeofday>:
   18ffc:	00000593          	li	a1,0
   19000:	00000613          	li	a2,0
   19004:	00000693          	li	a3,0
   19008:	0a900893          	li	a7,169
   1900c:	00000073          	ecall
   19010:	ce054ee3          	bltz	a0,18d0c <__syscall_error>
   19014:	0005051b          	sext.w	a0,a0
   19018:	00008067          	ret

000000000001901c <ftime>:
   1901c:	00051423          	sh	zero,8(a0)
   19020:	00053023          	sd	zero,0(a0)
   19024:	00000513          	li	a0,0
   19028:	00008067          	ret

000000000001902c <utime>:
   1902c:	fff00513          	li	a0,-1
   19030:	00008067          	ret

0000000000019034 <chown>:
   19034:	fff00513          	li	a0,-1
   19038:	00008067          	ret

000000000001903c <chmod>:
   1903c:	fff00513          	li	a0,-1
   19040:	00008067          	ret

0000000000019044 <chdir>:
   19044:	fff00513          	li	a0,-1
   19048:	00008067          	ret

000000000001904c <getcwd>:
   1904c:	00000513          	li	a0,0
   19050:	00008067          	ret

0000000000019054 <sysconf>:
   19054:	00200793          	li	a5,2
   19058:	00f51863          	bne	a0,a5,19068 <sysconf+0x14>
   1905c:	000f4537          	lui	a0,0xf4
   19060:	24050513          	addi	a0,a0,576 # f4240 <_gp+0xd82b0>
   19064:	00008067          	ret
   19068:	fff00513          	li	a0,-1
   1906c:	00008067          	ret

0000000000019070 <sbrk>:
   19070:	8c81b703          	ld	a4,-1848(gp) # 1b858 <heap_end.2381>
   19074:	00050793          	mv	a5,a0
   19078:	00071663          	bnez	a4,19084 <sbrk+0x14>
   1907c:	94018713          	addi	a4,gp,-1728 # 1b8d0 <_end>
   19080:	8ce1b423          	sd	a4,-1848(gp) # 1b858 <heap_end.2381>
   19084:	00e78533          	add	a0,a5,a4
   19088:	00000593          	li	a1,0
   1908c:	00000613          	li	a2,0
   19090:	00000693          	li	a3,0
   19094:	0d600893          	li	a7,214
   19098:	00000073          	ecall
   1909c:	c60548e3          	bltz	a0,18d0c <__syscall_error>
   190a0:	8c81b683          	ld	a3,-1848(gp) # 1b858 <heap_end.2381>
   190a4:	fff00713          	li	a4,-1
   190a8:	00d787b3          	add	a5,a5,a3
   190ac:	00f51663          	bne	a0,a5,190b8 <sbrk+0x48>
   190b0:	8ca1b423          	sd	a0,-1848(gp) # 1b858 <heap_end.2381>
   190b4:	00068713          	mv	a4,a3
   190b8:	00070513          	mv	a0,a4
   190bc:	00008067          	ret

00000000000190c0 <_exit>:
   190c0:	00000593          	li	a1,0
   190c4:	00000613          	li	a2,0
   190c8:	00000693          	li	a3,0
   190cc:	05d00893          	li	a7,93
   190d0:	00000073          	ecall
   190d4:	c2054ce3          	bltz	a0,18d0c <__syscall_error>
   190d8:	0000006f          	j	190d8 <_exit+0x18>

00000000000190dc <__errno>:
   190dc:	8101b503          	ld	a0,-2032(gp) # 1b7a0 <_impure_ptr>
   190e0:	00008067          	ret
