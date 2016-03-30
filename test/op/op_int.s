
op_int:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010000 <_ftext>:
   10000:	0000c197          	auipc	gp,0xc
   10004:	fc018193          	addi	gp,gp,-64 # 1bfc0 <_gp>
   10008:	0000c297          	auipc	t0,0xc
   1000c:	85828293          	addi	t0,t0,-1960 # 1b860 <_PathLocale>
   10010:	0000c317          	auipc	t1,0xc
   10014:	8f030313          	addi	t1,t1,-1808 # 1b900 <_end>
   10018:	0002b023          	sd	zero,0(t0)
   1001c:	00828293          	addi	t0,t0,8
   10020:	fe62ece3          	bltu	t0,t1,10018 <_ftext+0x18>
   10024:	00000517          	auipc	a0,0x0
   10028:	31050513          	addi	a0,a0,784 # 10334 <__libc_fini_array>
   1002c:	27c000ef          	jal	102a8 <atexit>
   10030:	360000ef          	jal	10390 <__libc_init_array>
   10034:	00012503          	lw	a0,0(sp)
   10038:	00810593          	addi	a1,sp,8
   1003c:	00000613          	li	a2,0
   10040:	124000ef          	jal	10164 <main>
   10044:	2c00006f          	j	10304 <exit>

0000000000010048 <_fini>:
   10048:	00008067          	ret

000000000001004c <deregister_tm_clones>:
   1004c:	0001b537          	lui	a0,0x1b
   10050:	0001b7b7          	lui	a5,0x1b
   10054:	7b850713          	addi	a4,a0,1976 # 1b7b8 <__TMC_END__>
   10058:	7bf78793          	addi	a5,a5,1983 # 1b7bf <__TMC_END__+0x7>
   1005c:	40e787b3          	sub	a5,a5,a4
   10060:	00e00713          	li	a4,14
   10064:	00f77c63          	bleu	a5,a4,1007c <deregister_tm_clones+0x30>
   10068:	00000337          	lui	t1,0x0
   1006c:	00030313          	mv	t1,t1
   10070:	00030663          	beqz	t1,1007c <deregister_tm_clones+0x30>
   10074:	7b850513          	addi	a0,a0,1976
   10078:	00030067          	jr	t1
   1007c:	00008067          	ret

0000000000010080 <register_tm_clones>:
   10080:	0001b537          	lui	a0,0x1b
   10084:	0001b7b7          	lui	a5,0x1b
   10088:	7b850593          	addi	a1,a0,1976 # 1b7b8 <__TMC_END__>
   1008c:	7b878793          	addi	a5,a5,1976 # 1b7b8 <__TMC_END__>
   10090:	40b787b3          	sub	a5,a5,a1
   10094:	4037d793          	srai	a5,a5,0x3
   10098:	03f7d593          	srli	a1,a5,0x3f
   1009c:	00f585b3          	add	a1,a1,a5
   100a0:	4015d593          	srai	a1,a1,0x1
   100a4:	00058c63          	beqz	a1,100bc <register_tm_clones+0x3c>
   100a8:	00000337          	lui	t1,0x0
   100ac:	00030313          	mv	t1,t1
   100b0:	00030663          	beqz	t1,100bc <register_tm_clones+0x3c>
   100b4:	7b850513          	addi	a0,a0,1976
   100b8:	00030067          	jr	t1
   100bc:	00008067          	ret

00000000000100c0 <__do_global_dtors_aux>:
   100c0:	ff010113          	addi	sp,sp,-16
   100c4:	00813023          	sd	s0,0(sp)
   100c8:	8d01c783          	lbu	a5,-1840(gp) # 1b890 <_bss_start>
   100cc:	00113423          	sd	ra,8(sp)
   100d0:	02079663          	bnez	a5,100fc <__do_global_dtors_aux+0x3c>
   100d4:	f79ff0ef          	jal	1004c <deregister_tm_clones>
   100d8:	000007b7          	lui	a5,0x0
   100dc:	00078793          	mv	a5,a5
   100e0:	00078a63          	beqz	a5,100f4 <__do_global_dtors_aux+0x34>
   100e4:	00019537          	lui	a0,0x19
   100e8:	72850513          	addi	a0,a0,1832 # 19728 <__fini_array_end>
   100ec:	ffff0317          	auipc	t1,0xffff0
   100f0:	f14300e7          	jalr	t1,-236 # 0 <_ftext-0x10000>
   100f4:	00100793          	li	a5,1
   100f8:	8cf18823          	sb	a5,-1840(gp) # 1b890 <_bss_start>
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
   10124:	8d818593          	addi	a1,gp,-1832 # 1b898 <object.3092>
   10128:	72850513          	addi	a0,a0,1832 # 19728 <__fini_array_end>
   1012c:	ffff0317          	auipc	t1,0xffff0
   10130:	ed4300e7          	jalr	t1,-300 # 0 <_ftext-0x10000>
   10134:	0001a7b7          	lui	a5,0x1a
   10138:	7b878513          	addi	a0,a5,1976 # 1a7b8 <__JCR_END__>
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
   1018c:	130000ef          	jal	102bc <atoi>
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
   101b8:	104000ef          	jal	102bc <atoi>
   101bc:	fea42023          	sw	a0,-32(s0)
   101c0:	fe744783          	lbu	a5,-25(s0)
   101c4:	fdb7879b          	addiw	a5,a5,-37
   101c8:	00a00713          	li	a4,10
   101cc:	08f76463          	bltu	a4,a5,10254 <main+0xf0>
   101d0:	02079793          	slli	a5,a5,0x20
   101d4:	0207d793          	srli	a5,a5,0x20
   101d8:	00279713          	slli	a4,a5,0x2
   101dc:	000197b7          	lui	a5,0x19
   101e0:	11878793          	addi	a5,a5,280 # 19118 <__errno+0x30>
   101e4:	00f707b3          	add	a5,a4,a5
   101e8:	0007a783          	lw	a5,0(a5)
   101ec:	00078067          	jr	a5
   101f0:	fe842703          	lw	a4,-24(s0)
   101f4:	fe042783          	lw	a5,-32(s0)
   101f8:	00f707bb          	addw	a5,a4,a5
   101fc:	fef42623          	sw	a5,-20(s0)
   10200:	0700006f          	j	10270 <main+0x10c>
   10204:	fe842703          	lw	a4,-24(s0)
   10208:	fe042783          	lw	a5,-32(s0)
   1020c:	40f707bb          	subw	a5,a4,a5
   10210:	fef42623          	sw	a5,-20(s0)
   10214:	05c0006f          	j	10270 <main+0x10c>
   10218:	fe842703          	lw	a4,-24(s0)
   1021c:	fe042783          	lw	a5,-32(s0)
   10220:	02f707bb          	mulw	a5,a4,a5
   10224:	fef42623          	sw	a5,-20(s0)
   10228:	0480006f          	j	10270 <main+0x10c>
   1022c:	fe842703          	lw	a4,-24(s0)
   10230:	fe042783          	lw	a5,-32(s0)
   10234:	02f747bb          	divw	a5,a4,a5
   10238:	fef42623          	sw	a5,-20(s0)
   1023c:	0340006f          	j	10270 <main+0x10c>
   10240:	fe842703          	lw	a4,-24(s0)
   10244:	fe042783          	lw	a5,-32(s0)
   10248:	02f767bb          	remw	a5,a4,a5
   1024c:	fef42623          	sw	a5,-20(s0)
   10250:	0200006f          	j	10270 <main+0x10c>
   10254:	fe744783          	lbu	a5,-25(s0)
   10258:	00078593          	mv	a1,a5
   1025c:	000197b7          	lui	a5,0x19
   10260:	0f078513          	addi	a0,a5,240 # 190f0 <__errno+0x8>
   10264:	210000ef          	jal	10474 <printf>
   10268:	00100793          	li	a5,1
   1026c:	0280006f          	j	10294 <main+0x130>
   10270:	fe744783          	lbu	a5,-25(s0)
   10274:	fec42703          	lw	a4,-20(s0)
   10278:	fe042683          	lw	a3,-32(s0)
   1027c:	00078613          	mv	a2,a5
   10280:	fe842583          	lw	a1,-24(s0)
   10284:	000197b7          	lui	a5,0x19
   10288:	10878513          	addi	a0,a5,264 # 19108 <__errno+0x20>
   1028c:	1e8000ef          	jal	10474 <printf>
   10290:	00000793          	li	a5,0
   10294:	00078513          	mv	a0,a5
   10298:	02813083          	ld	ra,40(sp)
   1029c:	02013403          	ld	s0,32(sp)
   102a0:	03010113          	addi	sp,sp,48
   102a4:	00008067          	ret

00000000000102a8 <atexit>:
   102a8:	00050593          	mv	a1,a0
   102ac:	00000693          	li	a3,0
   102b0:	00000613          	li	a2,0
   102b4:	00000513          	li	a0,0
   102b8:	2bc0206f          	j	12574 <__register_exitproc>

00000000000102bc <atoi>:
   102bc:	ff010113          	addi	sp,sp,-16
   102c0:	00a00613          	li	a2,10
   102c4:	00000593          	li	a1,0
   102c8:	00113423          	sd	ra,8(sp)
   102cc:	3d4000ef          	jal	106a0 <strtol>
   102d0:	00813083          	ld	ra,8(sp)
   102d4:	0005051b          	sext.w	a0,a0
   102d8:	01010113          	addi	sp,sp,16
   102dc:	00008067          	ret

00000000000102e0 <_atoi_r>:
   102e0:	ff010113          	addi	sp,sp,-16
   102e4:	00a00693          	li	a3,10
   102e8:	00000613          	li	a2,0
   102ec:	00113423          	sd	ra,8(sp)
   102f0:	1d4000ef          	jal	104c4 <_strtol_r>
   102f4:	00813083          	ld	ra,8(sp)
   102f8:	0005051b          	sext.w	a0,a0
   102fc:	01010113          	addi	sp,sp,16
   10300:	00008067          	ret

0000000000010304 <exit>:
   10304:	ff010113          	addi	sp,sp,-16
   10308:	00000593          	li	a1,0
   1030c:	00813023          	sd	s0,0(sp)
   10310:	00113423          	sd	ra,8(sp)
   10314:	00050413          	mv	s0,a0
   10318:	370020ef          	jal	12688 <__call_exitprocs>
   1031c:	8081b503          	ld	a0,-2040(gp) # 1b7c8 <_global_impure_ptr>
   10320:	05853783          	ld	a5,88(a0)
   10324:	00078463          	beqz	a5,1032c <exit+0x28>
   10328:	000780e7          	jalr	a5
   1032c:	00040513          	mv	a0,s0
   10330:	59d080ef          	jal	190cc <_exit>

0000000000010334 <__libc_fini_array>:
   10334:	fe010113          	addi	sp,sp,-32
   10338:	00813823          	sd	s0,16(sp)
   1033c:	00913423          	sd	s1,8(sp)
   10340:	00019437          	lui	s0,0x19
   10344:	000194b7          	lui	s1,0x19
   10348:	72048493          	addi	s1,s1,1824 # 19720 <__init_array_end>
   1034c:	72840413          	addi	s0,s0,1832 # 19728 <__fini_array_end>
   10350:	40940433          	sub	s0,s0,s1
   10354:	ff840793          	addi	a5,s0,-8
   10358:	00113c23          	sd	ra,24(sp)
   1035c:	40345413          	srai	s0,s0,0x3
   10360:	009784b3          	add	s1,a5,s1
   10364:	00040c63          	beqz	s0,1037c <__libc_fini_array+0x48>
   10368:	0004b783          	ld	a5,0(s1)
   1036c:	fff40413          	addi	s0,s0,-1
   10370:	ff848493          	addi	s1,s1,-8
   10374:	000780e7          	jalr	a5
   10378:	fe0418e3          	bnez	s0,10368 <__libc_fini_array+0x34>
   1037c:	01813083          	ld	ra,24(sp)
   10380:	01013403          	ld	s0,16(sp)
   10384:	00813483          	ld	s1,8(sp)
   10388:	02010113          	addi	sp,sp,32
   1038c:	cbdff06f          	j	10048 <_fini>

0000000000010390 <__libc_init_array>:
   10390:	fe010113          	addi	sp,sp,-32
   10394:	00813823          	sd	s0,16(sp)
   10398:	000197b7          	lui	a5,0x19
   1039c:	00019437          	lui	s0,0x19
   103a0:	01213023          	sd	s2,0(sp)
   103a4:	71878793          	addi	a5,a5,1816 # 19718 <_etext>
   103a8:	71840913          	addi	s2,s0,1816 # 19718 <_etext>
   103ac:	41278933          	sub	s2,a5,s2
   103b0:	00913423          	sd	s1,8(sp)
   103b4:	00113c23          	sd	ra,24(sp)
   103b8:	40395913          	srai	s2,s2,0x3
   103bc:	71840413          	addi	s0,s0,1816
   103c0:	00000493          	li	s1,0
   103c4:	00090c63          	beqz	s2,103dc <__libc_init_array+0x4c>
   103c8:	00043783          	ld	a5,0(s0)
   103cc:	00148493          	addi	s1,s1,1
   103d0:	00840413          	addi	s0,s0,8
   103d4:	000780e7          	jalr	a5
   103d8:	fe9918e3          	bne	s2,s1,103c8 <__libc_init_array+0x38>
   103dc:	c6dff0ef          	jal	10048 <_fini>
   103e0:	00019437          	lui	s0,0x19
   103e4:	000197b7          	lui	a5,0x19
   103e8:	71840913          	addi	s2,s0,1816 # 19718 <_etext>
   103ec:	72078793          	addi	a5,a5,1824 # 19720 <__init_array_end>
   103f0:	41278933          	sub	s2,a5,s2
   103f4:	40395913          	srai	s2,s2,0x3
   103f8:	71840413          	addi	s0,s0,1816
   103fc:	00000493          	li	s1,0
   10400:	00090c63          	beqz	s2,10418 <__libc_init_array+0x88>
   10404:	00043783          	ld	a5,0(s0)
   10408:	00148493          	addi	s1,s1,1
   1040c:	00840413          	addi	s0,s0,8
   10410:	000780e7          	jalr	a5
   10414:	fe9918e3          	bne	s2,s1,10404 <__libc_init_array+0x74>
   10418:	01813083          	ld	ra,24(sp)
   1041c:	01013403          	ld	s0,16(sp)
   10420:	00813483          	ld	s1,8(sp)
   10424:	00013903          	ld	s2,0(sp)
   10428:	02010113          	addi	sp,sp,32
   1042c:	00008067          	ret

0000000000010430 <_printf_r>:
   10430:	fb010113          	addi	sp,sp,-80
   10434:	02c13023          	sd	a2,32(sp)
   10438:	02d13423          	sd	a3,40(sp)
   1043c:	02f13c23          	sd	a5,56(sp)
   10440:	02e13823          	sd	a4,48(sp)
   10444:	05013023          	sd	a6,64(sp)
   10448:	05113423          	sd	a7,72(sp)
   1044c:	00058613          	mv	a2,a1
   10450:	01053583          	ld	a1,16(a0)
   10454:	02010793          	addi	a5,sp,32
   10458:	00078693          	mv	a3,a5
   1045c:	00113c23          	sd	ra,24(sp)
   10460:	00f13423          	sd	a5,8(sp)
   10464:	250000ef          	jal	106b4 <_vfprintf_r>
   10468:	01813083          	ld	ra,24(sp)
   1046c:	05010113          	addi	sp,sp,80
   10470:	00008067          	ret

0000000000010474 <printf>:
   10474:	8101b303          	ld	t1,-2032(gp) # 1b7d0 <_impure_ptr>
   10478:	fa010113          	addi	sp,sp,-96
   1047c:	02c13823          	sd	a2,48(sp)
   10480:	02d13c23          	sd	a3,56(sp)
   10484:	04f13423          	sd	a5,72(sp)
   10488:	02b13423          	sd	a1,40(sp)
   1048c:	04e13023          	sd	a4,64(sp)
   10490:	05013823          	sd	a6,80(sp)
   10494:	05113c23          	sd	a7,88(sp)
   10498:	01033583          	ld	a1,16(t1)
   1049c:	02810793          	addi	a5,sp,40
   104a0:	00050613          	mv	a2,a0
   104a4:	00078693          	mv	a3,a5
   104a8:	00030513          	mv	a0,t1
   104ac:	00113c23          	sd	ra,24(sp)
   104b0:	00f13423          	sd	a5,8(sp)
   104b4:	200000ef          	jal	106b4 <_vfprintf_r>
   104b8:	01813083          	ld	ra,24(sp)
   104bc:	06010113          	addi	sp,sp,96
   104c0:	00008067          	ret

00000000000104c4 <_strtol_r>:
   104c4:	8181be83          	ld	t4,-2024(gp) # 1b7d8 <__ctype_ptr__>
   104c8:	00058313          	mv	t1,a1
   104cc:	0080006f          	j	104d4 <_strtol_r+0x10>
   104d0:	00080313          	mv	t1,a6
   104d4:	00130813          	addi	a6,t1,1
   104d8:	fff84783          	lbu	a5,-1(a6)
   104dc:	00fe8733          	add	a4,t4,a5
   104e0:	00174703          	lbu	a4,1(a4)
   104e4:	00877713          	andi	a4,a4,8
   104e8:	fe0714e3          	bnez	a4,104d0 <_strtol_r+0xc>
   104ec:	ff010113          	addi	sp,sp,-16
   104f0:	00078893          	mv	a7,a5
   104f4:	00813423          	sd	s0,8(sp)
   104f8:	00913023          	sd	s1,0(sp)
   104fc:	02d00793          	li	a5,45
   10500:	14f88063          	beq	a7,a5,10640 <_strtol_r+0x17c>
   10504:	02b00793          	li	a5,43
   10508:	00000393          	li	t2,0
   1050c:	12f88463          	beq	a7,a5,10634 <_strtol_r+0x170>
   10510:	0e068263          	beqz	a3,105f4 <_strtol_r+0x130>
   10514:	01000793          	li	a5,16
   10518:	00068413          	mv	s0,a3
   1051c:	14f68863          	beq	a3,a5,1066c <_strtol_r+0x1a8>
   10520:	fff00793          	li	a5,-1
   10524:	0017df13          	srli	t5,a5,0x1
   10528:	00038463          	beqz	t2,10530 <_strtol_r+0x6c>
   1052c:	03f79f13          	slli	t5,a5,0x3f
   10530:	028f74b3          	remu	s1,t5,s0
   10534:	011e8733          	add	a4,t4,a7
   10538:	00174783          	lbu	a5,1(a4)
   1053c:	00000e13          	li	t3,0
   10540:	00000313          	li	t1,0
   10544:	0047f713          	andi	a4,a5,4
   10548:	00100293          	li	t0,1
   1054c:	fff00f93          	li	t6,-1
   10550:	028f5f33          	divu	t5,t5,s0
   10554:	0004849b          	sext.w	s1,s1
   10558:	04070063          	beqz	a4,10598 <_strtol_r+0xd4>
   1055c:	fd08879b          	addiw	a5,a7,-48
   10560:	04d7de63          	ble	a3,a5,105bc <_strtol_r+0xf8>
   10564:	01fe0e63          	beq	t3,t6,10580 <_strtol_r+0xbc>
   10568:	fff00e13          	li	t3,-1
   1056c:	006f6a63          	bltu	t5,t1,10580 <_strtol_r+0xbc>
   10570:	07e30e63          	beq	t1,t5,105ec <_strtol_r+0x128>
   10574:	00100e13          	li	t3,1
   10578:	02830333          	mul	t1,t1,s0
   1057c:	00678333          	add	t1,a5,t1
   10580:	00180813          	addi	a6,a6,1
   10584:	fff84883          	lbu	a7,-1(a6)
   10588:	011e8733          	add	a4,t4,a7
   1058c:	00174783          	lbu	a5,1(a4)
   10590:	0047f713          	andi	a4,a5,4
   10594:	fc0714e3          	bnez	a4,1055c <_strtol_r+0x98>
   10598:	0037f713          	andi	a4,a5,3
   1059c:	02070063          	beqz	a4,105bc <_strtol_r+0xf8>
   105a0:	40e2873b          	subw	a4,t0,a4
   105a4:	00e03733          	snez	a4,a4
   105a8:	40e0073b          	negw	a4,a4
   105ac:	02077713          	andi	a4,a4,32
   105b0:	0377071b          	addiw	a4,a4,55
   105b4:	40e887bb          	subw	a5,a7,a4
   105b8:	fad7c6e3          	blt	a5,a3,10564 <_strtol_r+0xa0>
   105bc:	fff00793          	li	a5,-1
   105c0:	04fe0863          	beq	t3,a5,10610 <_strtol_r+0x14c>
   105c4:	04039263          	bnez	t2,10608 <_strtol_r+0x144>
   105c8:	00030793          	mv	a5,t1
   105cc:	00060663          	beqz	a2,105d8 <_strtol_r+0x114>
   105d0:	040e1e63          	bnez	t3,1062c <_strtol_r+0x168>
   105d4:	00b63023          	sd	a1,0(a2)
   105d8:	00078513          	mv	a0,a5
   105dc:	00813403          	ld	s0,8(sp)
   105e0:	00013483          	ld	s1,0(sp)
   105e4:	01010113          	addi	sp,sp,16
   105e8:	00008067          	ret
   105ec:	f8f4cae3          	blt	s1,a5,10580 <_strtol_r+0xbc>
   105f0:	f85ff06f          	j	10574 <_strtol_r+0xb0>
   105f4:	03000793          	li	a5,48
   105f8:	04f88c63          	beq	a7,a5,10650 <_strtol_r+0x18c>
   105fc:	00a00413          	li	s0,10
   10600:	00040693          	mv	a3,s0
   10604:	f1dff06f          	j	10520 <_strtol_r+0x5c>
   10608:	40600333          	neg	t1,t1
   1060c:	fbdff06f          	j	105c8 <_strtol_r+0x104>
   10610:	fff00713          	li	a4,-1
   10614:	00175793          	srli	a5,a4,0x1
   10618:	00038463          	beqz	t2,10620 <_strtol_r+0x15c>
   1061c:	03f71793          	slli	a5,a4,0x3f
   10620:	02200713          	li	a4,34
   10624:	00e52023          	sw	a4,0(a0)
   10628:	fa0608e3          	beqz	a2,105d8 <_strtol_r+0x114>
   1062c:	fff80593          	addi	a1,a6,-1
   10630:	fa5ff06f          	j	105d4 <_strtol_r+0x110>
   10634:	00134883          	lbu	a7,1(t1)
   10638:	00230813          	addi	a6,t1,2
   1063c:	ed5ff06f          	j	10510 <_strtol_r+0x4c>
   10640:	00230813          	addi	a6,t1,2
   10644:	00134883          	lbu	a7,1(t1)
   10648:	00100393          	li	t2,1
   1064c:	ec5ff06f          	j	10510 <_strtol_r+0x4c>
   10650:	00084783          	lbu	a5,0(a6)
   10654:	05800713          	li	a4,88
   10658:	0df7f793          	andi	a5,a5,223
   1065c:	02e78463          	beq	a5,a4,10684 <_strtol_r+0x1c0>
   10660:	00800413          	li	s0,8
   10664:	00040693          	mv	a3,s0
   10668:	eb9ff06f          	j	10520 <_strtol_r+0x5c>
   1066c:	03000793          	li	a5,48
   10670:	02f89463          	bne	a7,a5,10698 <_strtol_r+0x1d4>
   10674:	00084783          	lbu	a5,0(a6)
   10678:	05800713          	li	a4,88
   1067c:	0df7f793          	andi	a5,a5,223
   10680:	00e79c63          	bne	a5,a4,10698 <_strtol_r+0x1d4>
   10684:	01000413          	li	s0,16
   10688:	00184883          	lbu	a7,1(a6)
   1068c:	00040693          	mv	a3,s0
   10690:	00280813          	addi	a6,a6,2
   10694:	e8dff06f          	j	10520 <_strtol_r+0x5c>
   10698:	01000413          	li	s0,16
   1069c:	e85ff06f          	j	10520 <_strtol_r+0x5c>

00000000000106a0 <strtol>:
   106a0:	00060693          	mv	a3,a2
   106a4:	00058613          	mv	a2,a1
   106a8:	00050593          	mv	a1,a0
   106ac:	8101b503          	ld	a0,-2032(gp) # 1b7d0 <_impure_ptr>
   106b0:	e15ff06f          	j	104c4 <_strtol_r>

00000000000106b4 <_vfprintf_r>:
   106b4:	e1010113          	addi	sp,sp,-496
   106b8:	1e113423          	sd	ra,488(sp)
   106bc:	1d313423          	sd	s3,456(sp)
   106c0:	1d413023          	sd	s4,448(sp)
   106c4:	1b713423          	sd	s7,424(sp)
   106c8:	00058a13          	mv	s4,a1
   106cc:	00060993          	mv	s3,a2
   106d0:	02d13423          	sd	a3,40(sp)
   106d4:	1e813023          	sd	s0,480(sp)
   106d8:	1c913c23          	sd	s1,472(sp)
   106dc:	1d213823          	sd	s2,464(sp)
   106e0:	1b513c23          	sd	s5,440(sp)
   106e4:	1b613823          	sd	s6,432(sp)
   106e8:	1b813023          	sd	s8,416(sp)
   106ec:	19913c23          	sd	s9,408(sp)
   106f0:	19a13823          	sd	s10,400(sp)
   106f4:	19b13423          	sd	s11,392(sp)
   106f8:	16813c27          	fsd	fs0,376(sp)
   106fc:	00050b93          	mv	s7,a0
   10700:	094040ef          	jal	14794 <_localeconv_r>
   10704:	00053783          	ld	a5,0(a0)
   10708:	00078513          	mv	a0,a5
   1070c:	06f13023          	sd	a5,96(sp)
   10710:	00c060ef          	jal	1671c <strlen>
   10714:	06a13423          	sd	a0,104(sp)
   10718:	000b8663          	beqz	s7,10724 <_vfprintf_r+0x70>
   1071c:	050ba783          	lw	a5,80(s7)
   10720:	2e078c63          	beqz	a5,10a18 <_vfprintf_r+0x364>
   10724:	010a1683          	lh	a3,16(s4)
   10728:	03069793          	slli	a5,a3,0x30
   1072c:	0307d793          	srli	a5,a5,0x30
   10730:	03279713          	slli	a4,a5,0x32
   10734:	02074a63          	bltz	a4,10768 <_vfprintf_r+0xb4>
   10738:	000027b7          	lui	a5,0x2
   1073c:	0aca2603          	lw	a2,172(s4)
   10740:	00f6e7b3          	or	a5,a3,a5
   10744:	0107979b          	slliw	a5,a5,0x10
   10748:	ffffe737          	lui	a4,0xffffe
   1074c:	4107d79b          	sraiw	a5,a5,0x10
   10750:	fff7071b          	addiw	a4,a4,-1
   10754:	00e67733          	and	a4,a2,a4
   10758:	00fa1823          	sh	a5,16(s4)
   1075c:	03079793          	slli	a5,a5,0x30
   10760:	0aea2623          	sw	a4,172(s4)
   10764:	0307d793          	srli	a5,a5,0x30
   10768:	0087f713          	andi	a4,a5,8
   1076c:	1e070063          	beqz	a4,1094c <_vfprintf_r+0x298>
   10770:	018a3703          	ld	a4,24(s4)
   10774:	1c070c63          	beqz	a4,1094c <_vfprintf_r+0x298>
   10778:	01a7f793          	andi	a5,a5,26
   1077c:	00a00713          	li	a4,10
   10780:	1ee78863          	beq	a5,a4,10970 <_vfprintf_r+0x2bc>
   10784:	000197b7          	lui	a5,0x19
   10788:	14878793          	addi	a5,a5,328 # 19148 <__errno+0x60>
   1078c:	0f010b13          	addi	s6,sp,240
   10790:	02f13823          	sd	a5,48(sp)
   10794:	0ef10793          	addi	a5,sp,239
   10798:	00019ab7          	lui	s5,0x19
   1079c:	000194b7          	lui	s1,0x19
   107a0:	40fb07b3          	sub	a5,s6,a5
   107a4:	04013c23          	sd	zero,88(sp)
   107a8:	0b613823          	sd	s6,176(sp)
   107ac:	0c013023          	sd	zero,192(sp)
   107b0:	0a012c23          	sw	zero,184(sp)
   107b4:	06012823          	sw	zero,112(sp)
   107b8:	000b0893          	mv	a7,s6
   107bc:	02013c23          	sd	zero,56(sp)
   107c0:	06012a23          	sw	zero,116(sp)
   107c4:	00012e23          	sw	zero,28(sp)
   107c8:	2b0a8a93          	addi	s5,s5,688 # 192b0 <blanks.4193>
   107cc:	2c048493          	addi	s1,s1,704 # 192c0 <zeroes.4194>
   107d0:	06f13c23          	sd	a5,120(sp)
   107d4:	0009c783          	lbu	a5,0(s3)
   107d8:	0e0782e3          	beqz	a5,110bc <_vfprintf_r+0xa08>
   107dc:	02500713          	li	a4,37
   107e0:	00098413          	mv	s0,s3
   107e4:	00e79663          	bne	a5,a4,107f0 <_vfprintf_r+0x13c>
   107e8:	0580006f          	j	10840 <_vfprintf_r+0x18c>
   107ec:	00e78863          	beq	a5,a4,107fc <_vfprintf_r+0x148>
   107f0:	00140413          	addi	s0,s0,1
   107f4:	00044783          	lbu	a5,0(s0)
   107f8:	fe079ae3          	bnez	a5,107ec <_vfprintf_r+0x138>
   107fc:	4134093b          	subw	s2,s0,s3
   10800:	04090063          	beqz	s2,10840 <_vfprintf_r+0x18c>
   10804:	0c013703          	ld	a4,192(sp)
   10808:	0b812783          	lw	a5,184(sp)
   1080c:	00090693          	mv	a3,s2
   10810:	00d70733          	add	a4,a4,a3
   10814:	0017879b          	addiw	a5,a5,1
   10818:	0138b023          	sd	s3,0(a7)
   1081c:	00d8b423          	sd	a3,8(a7)
   10820:	0ce13023          	sd	a4,192(sp)
   10824:	0af12c23          	sw	a5,184(sp)
   10828:	00700713          	li	a4,7
   1082c:	01088893          	addi	a7,a7,16
   10830:	16f74063          	blt	a4,a5,10990 <_vfprintf_r+0x2dc>
   10834:	01c12783          	lw	a5,28(sp)
   10838:	012787bb          	addw	a5,a5,s2
   1083c:	00f12e23          	sw	a5,28(sp)
   10840:	00044783          	lbu	a5,0(s0)
   10844:	16078463          	beqz	a5,109ac <_vfprintf_r+0x2f8>
   10848:	00140993          	addi	s3,s0,1
   1084c:	080107a3          	sb	zero,143(sp)
   10850:	00000613          	li	a2,0
   10854:	00000593          	li	a1,0
   10858:	fff00413          	li	s0,-1
   1085c:	00012c23          	sw	zero,24(sp)
   10860:	00000c13          	li	s8,0
   10864:	05800713          	li	a4,88
   10868:	00900693          	li	a3,9
   1086c:	02a00513          	li	a0,42
   10870:	0009cd03          	lbu	s10,0(s3)
   10874:	00198993          	addi	s3,s3,1
   10878:	fe0d079b          	addiw	a5,s10,-32
   1087c:	1cf762e3          	bltu	a4,a5,11240 <_vfprintf_r+0xb8c>
   10880:	03013803          	ld	a6,48(sp)
   10884:	02079793          	slli	a5,a5,0x20
   10888:	01e7d793          	srli	a5,a5,0x1e
   1088c:	010787b3          	add	a5,a5,a6
   10890:	0007a783          	lw	a5,0(a5)
   10894:	00078067          	jr	a5
   10898:	010c6c13          	ori	s8,s8,16
   1089c:	fd5ff06f          	j	10870 <_vfprintf_r+0x1bc>
   108a0:	02813783          	ld	a5,40(sp)
   108a4:	0007a803          	lw	a6,0(a5)
   108a8:	00878793          	addi	a5,a5,8
   108ac:	02f13423          	sd	a5,40(sp)
   108b0:	01012c23          	sw	a6,24(sp)
   108b4:	fa085ee3          	bgez	a6,10870 <_vfprintf_r+0x1bc>
   108b8:	410007bb          	negw	a5,a6
   108bc:	00f12c23          	sw	a5,24(sp)
   108c0:	004c6c13          	ori	s8,s8,4
   108c4:	fadff06f          	j	10870 <_vfprintf_r+0x1bc>
   108c8:	03000793          	li	a5,48
   108cc:	08f10823          	sb	a5,144(sp)
   108d0:	07800793          	li	a5,120
   108d4:	08f108a3          	sb	a5,145(sp)
   108d8:	02813783          	ld	a5,40(sp)
   108dc:	080107a3          	sb	zero,143(sp)
   108e0:	002c6693          	ori	a3,s8,2
   108e4:	00878713          	addi	a4,a5,8
   108e8:	0007b783          	ld	a5,0(a5)
   108ec:	180444e3          	bltz	s0,11274 <_vfprintf_r+0xbc0>
   108f0:	f7fc7c13          	andi	s8,s8,-129
   108f4:	02e13423          	sd	a4,40(sp)
   108f8:	002c6c13          	ori	s8,s8,2
   108fc:	120796e3          	bnez	a5,11228 <_vfprintf_r+0xb74>
   10900:	000197b7          	lui	a5,0x19
   10904:	6c878793          	addi	a5,a5,1736 # 196c8 <zeroes.4137+0x50>
   10908:	02f13c23          	sd	a5,56(sp)
   1090c:	07800d13          	li	s10,120
   10910:	00000613          	li	a2,0
   10914:	7e040463          	beqz	s0,110fc <_vfprintf_r+0xa48>
   10918:	00000793          	li	a5,0
   1091c:	000b0913          	mv	s2,s6
   10920:	03813683          	ld	a3,56(sp)
   10924:	00f7f713          	andi	a4,a5,15
   10928:	fff90913          	addi	s2,s2,-1
   1092c:	00e68733          	add	a4,a3,a4
   10930:	00074703          	lbu	a4,0(a4) # ffffffffffffe000 <_gp+0xfffffffffffe2040>
   10934:	0047d793          	srli	a5,a5,0x4
   10938:	00e90023          	sb	a4,0(s2)
   1093c:	fe0792e3          	bnez	a5,10920 <_vfprintf_r+0x26c>
   10940:	412b07b3          	sub	a5,s6,s2
   10944:	02f12023          	sw	a5,32(sp)
   10948:	1680006f          	j	10ab0 <_vfprintf_r+0x3fc>
   1094c:	000a0593          	mv	a1,s4
   10950:	000b8513          	mv	a0,s7
   10954:	2bd010ef          	jal	12410 <__swsetup_r>
   10958:	00050463          	beqz	a0,10960 <_vfprintf_r+0x2ac>
   1095c:	3940106f          	j	11cf0 <_vfprintf_r+0x163c>
   10960:	010a5783          	lhu	a5,16(s4)
   10964:	00a00713          	li	a4,10
   10968:	01a7f793          	andi	a5,a5,26
   1096c:	e0e79ce3          	bne	a5,a4,10784 <_vfprintf_r+0xd0>
   10970:	012a1783          	lh	a5,18(s4)
   10974:	e007c8e3          	bltz	a5,10784 <_vfprintf_r+0xd0>
   10978:	02813683          	ld	a3,40(sp)
   1097c:	00098613          	mv	a2,s3
   10980:	000a0593          	mv	a1,s4
   10984:	000b8513          	mv	a0,s7
   10988:	1c9010ef          	jal	12350 <__sbprintf>
   1098c:	04c0006f          	j	109d8 <_vfprintf_r+0x324>
   10990:	0b010613          	addi	a2,sp,176
   10994:	000a0593          	mv	a1,s4
   10998:	000b8513          	mv	a0,s7
   1099c:	73d050ef          	jal	168d8 <__sprint_r>
   109a0:	02051263          	bnez	a0,109c4 <_vfprintf_r+0x310>
   109a4:	000b0893          	mv	a7,s6
   109a8:	e8dff06f          	j	10834 <_vfprintf_r+0x180>
   109ac:	0c013783          	ld	a5,192(sp)
   109b0:	00078a63          	beqz	a5,109c4 <_vfprintf_r+0x310>
   109b4:	0b010613          	addi	a2,sp,176
   109b8:	000a0593          	mv	a1,s4
   109bc:	000b8513          	mv	a0,s7
   109c0:	719050ef          	jal	168d8 <__sprint_r>
   109c4:	010a5783          	lhu	a5,16(s4)
   109c8:	0407f793          	andi	a5,a5,64
   109cc:	00078463          	beqz	a5,109d4 <_vfprintf_r+0x320>
   109d0:	3200106f          	j	11cf0 <_vfprintf_r+0x163c>
   109d4:	01c12503          	lw	a0,28(sp)
   109d8:	1e813083          	ld	ra,488(sp)
   109dc:	1e013403          	ld	s0,480(sp)
   109e0:	1d813483          	ld	s1,472(sp)
   109e4:	1d013903          	ld	s2,464(sp)
   109e8:	1c813983          	ld	s3,456(sp)
   109ec:	1c013a03          	ld	s4,448(sp)
   109f0:	1b813a83          	ld	s5,440(sp)
   109f4:	1b013b03          	ld	s6,432(sp)
   109f8:	1a813b83          	ld	s7,424(sp)
   109fc:	1a013c03          	ld	s8,416(sp)
   10a00:	19813c83          	ld	s9,408(sp)
   10a04:	19013d03          	ld	s10,400(sp)
   10a08:	18813d83          	ld	s11,392(sp)
   10a0c:	17813407          	fld	fs0,376(sp)
   10a10:	1f010113          	addi	sp,sp,496
   10a14:	00008067          	ret
   10a18:	000b8513          	mv	a0,s7
   10a1c:	700030ef          	jal	1411c <__sinit>
   10a20:	d05ff06f          	j	10724 <_vfprintf_r+0x70>
   10a24:	00100613          	li	a2,1
   10a28:	02b00593          	li	a1,43
   10a2c:	e45ff06f          	j	10870 <_vfprintf_r+0x1bc>
   10a30:	00060463          	beqz	a2,10a38 <_vfprintf_r+0x384>
   10a34:	0d90106f          	j	1230c <_vfprintf_r+0x1c58>
   10a38:	010c7793          	andi	a5,s8,16
   10a3c:	22078263          	beqz	a5,10c60 <_vfprintf_r+0x5ac>
   10a40:	02813783          	ld	a5,40(sp)
   10a44:	080107a3          	sb	zero,143(sp)
   10a48:	00878713          	addi	a4,a5,8
   10a4c:	0007b783          	ld	a5,0(a5)
   10a50:	22044663          	bltz	s0,10c7c <_vfprintf_r+0x5c8>
   10a54:	02e13423          	sd	a4,40(sp)
   10a58:	f7fc7c13          	andi	s8,s8,-129
   10a5c:	22079663          	bnez	a5,10c88 <_vfprintf_r+0x5d4>
   10a60:	00000613          	li	a2,0
   10a64:	00000793          	li	a5,0
   10a68:	00041463          	bnez	s0,10a70 <_vfprintf_r+0x3bc>
   10a6c:	3680106f          	j	11dd4 <_vfprintf_r+0x1720>
   10a70:	000b0913          	mv	s2,s6
   10a74:	0077f713          	andi	a4,a5,7
   10a78:	fff90913          	addi	s2,s2,-1
   10a7c:	0307071b          	addiw	a4,a4,48
   10a80:	00e90023          	sb	a4,0(s2)
   10a84:	0037d793          	srli	a5,a5,0x3
   10a88:	fe0796e3          	bnez	a5,10a74 <_vfprintf_r+0x3c0>
   10a8c:	001c7793          	andi	a5,s8,1
   10a90:	ea0788e3          	beqz	a5,10940 <_vfprintf_r+0x28c>
   10a94:	03000793          	li	a5,48
   10a98:	eaf704e3          	beq	a4,a5,10940 <_vfprintf_r+0x28c>
   10a9c:	fff90713          	addi	a4,s2,-1
   10aa0:	40eb06b3          	sub	a3,s6,a4
   10aa4:	fef90fa3          	sb	a5,-1(s2)
   10aa8:	02d12023          	sw	a3,32(sp)
   10aac:	00070913          	mv	s2,a4
   10ab0:	02012783          	lw	a5,32(sp)
   10ab4:	00078d93          	mv	s11,a5
   10ab8:	0087d463          	ble	s0,a5,10ac0 <_vfprintf_r+0x40c>
   10abc:	00040d93          	mv	s11,s0
   10ac0:	01b12423          	sw	s11,8(sp)
   10ac4:	04012623          	sw	zero,76(sp)
   10ac8:	2a060263          	beqz	a2,10d6c <_vfprintf_r+0x6b8>
   10acc:	00812783          	lw	a5,8(sp)
   10ad0:	0017879b          	addiw	a5,a5,1
   10ad4:	00f12423          	sw	a5,8(sp)
   10ad8:	2940006f          	j	10d6c <_vfprintf_r+0x6b8>
   10adc:	0009cd03          	lbu	s10,0(s3)
   10ae0:	00198993          	addi	s3,s3,1
   10ae4:	00ad1463          	bne	s10,a0,10aec <_vfprintf_r+0x438>
   10ae8:	75c0106f          	j	12244 <_vfprintf_r+0x1b90>
   10aec:	fd0d079b          	addiw	a5,s10,-48
   10af0:	00000413          	li	s0,0
   10af4:	d8f6e2e3          	bltu	a3,a5,10878 <_vfprintf_r+0x1c4>
   10af8:	00198993          	addi	s3,s3,1
   10afc:	fff9cd03          	lbu	s10,-1(s3)
   10b00:	0014181b          	slliw	a6,s0,0x1
   10b04:	0034141b          	slliw	s0,s0,0x3
   10b08:	0088043b          	addw	s0,a6,s0
   10b0c:	00f4043b          	addw	s0,s0,a5
   10b10:	fd0d079b          	addiw	a5,s10,-48
   10b14:	fef6f2e3          	bleu	a5,a3,10af8 <_vfprintf_r+0x444>
   10b18:	d60450e3          	bgez	s0,10878 <_vfprintf_r+0x1c4>
   10b1c:	fff00413          	li	s0,-1
   10b20:	d59ff06f          	j	10878 <_vfprintf_r+0x1c4>
   10b24:	080c6c13          	ori	s8,s8,128
   10b28:	d49ff06f          	j	10870 <_vfprintf_r+0x1bc>
   10b2c:	d40592e3          	bnez	a1,10870 <_vfprintf_r+0x1bc>
   10b30:	00100613          	li	a2,1
   10b34:	02000593          	li	a1,32
   10b38:	d39ff06f          	j	10870 <_vfprintf_r+0x1bc>
   10b3c:	001c6c13          	ori	s8,s8,1
   10b40:	d31ff06f          	j	10870 <_vfprintf_r+0x1bc>
   10b44:	02813783          	ld	a5,40(sp)
   10b48:	080107a3          	sb	zero,143(sp)
   10b4c:	0007b903          	ld	s2,0(a5)
   10b50:	00878c93          	addi	s9,a5,8
   10b54:	00091463          	bnez	s2,10b5c <_vfprintf_r+0x4a8>
   10b58:	39c0106f          	j	11ef4 <_vfprintf_r+0x1840>
   10b5c:	01113023          	sd	a7,0(sp)
   10b60:	00045463          	bgez	s0,10b68 <_vfprintf_r+0x4b4>
   10b64:	3240106f          	j	11e88 <_vfprintf_r+0x17d4>
   10b68:	00040613          	mv	a2,s0
   10b6c:	00000593          	li	a1,0
   10b70:	00090513          	mv	a0,s2
   10b74:	564040ef          	jal	150d8 <memchr>
   10b78:	00013883          	ld	a7,0(sp)
   10b7c:	00051463          	bnez	a0,10b84 <_vfprintf_r+0x4d0>
   10b80:	4c00106f          	j	12040 <_vfprintf_r+0x198c>
   10b84:	412507bb          	subw	a5,a0,s2
   10b88:	02f12023          	sw	a5,32(sp)
   10b8c:	00078d93          	mv	s11,a5
   10b90:	0007d463          	bgez	a5,10b98 <_vfprintf_r+0x4e4>
   10b94:	3140106f          	j	11ea8 <_vfprintf_r+0x17f4>
   10b98:	08f14603          	lbu	a2,143(sp)
   10b9c:	01b12423          	sw	s11,8(sp)
   10ba0:	03913423          	sd	s9,40(sp)
   10ba4:	00000413          	li	s0,0
   10ba8:	04012623          	sw	zero,76(sp)
   10bac:	f1dff06f          	j	10ac8 <_vfprintf_r+0x414>
   10bb0:	00060463          	beqz	a2,10bb8 <_vfprintf_r+0x504>
   10bb4:	7800106f          	j	12334 <_vfprintf_r+0x1c80>
   10bb8:	010c7793          	andi	a5,s8,16
   10bbc:	0e078463          	beqz	a5,10ca4 <_vfprintf_r+0x5f0>
   10bc0:	02813783          	ld	a5,40(sp)
   10bc4:	080107a3          	sb	zero,143(sp)
   10bc8:	00878713          	addi	a4,a5,8
   10bcc:	0007b783          	ld	a5,0(a5)
   10bd0:	0e044863          	bltz	s0,10cc0 <_vfprintf_r+0x60c>
   10bd4:	02e13423          	sd	a4,40(sp)
   10bd8:	f7fc7c13          	andi	s8,s8,-129
   10bdc:	00000613          	li	a2,0
   10be0:	50078c63          	beqz	a5,110f8 <_vfprintf_r+0xa44>
   10be4:	00900713          	li	a4,9
   10be8:	000b0913          	mv	s2,s6
   10bec:	00a00693          	li	a3,10
   10bf0:	40f770e3          	bleu	a5,a4,117f0 <_vfprintf_r+0x113c>
   10bf4:	02d7f733          	remu	a4,a5,a3
   10bf8:	fff90913          	addi	s2,s2,-1
   10bfc:	02d7d7b3          	divu	a5,a5,a3
   10c00:	0307071b          	addiw	a4,a4,48
   10c04:	00e90023          	sb	a4,0(s2)
   10c08:	fe0796e3          	bnez	a5,10bf4 <_vfprintf_r+0x540>
   10c0c:	412b07b3          	sub	a5,s6,s2
   10c10:	02f12023          	sw	a5,32(sp)
   10c14:	e9dff06f          	j	10ab0 <_vfprintf_r+0x3fc>
   10c18:	00012c23          	sw	zero,24(sp)
   10c1c:	fd0d079b          	addiw	a5,s10,-48
   10c20:	01812303          	lw	t1,24(sp)
   10c24:	00198993          	addi	s3,s3,1
   10c28:	fff9cd03          	lbu	s10,-1(s3)
   10c2c:	0013181b          	slliw	a6,t1,0x1
   10c30:	00331c9b          	slliw	s9,t1,0x3
   10c34:	01980cbb          	addw	s9,a6,s9
   10c38:	019787bb          	addw	a5,a5,s9
   10c3c:	00f12c23          	sw	a5,24(sp)
   10c40:	fd0d079b          	addiw	a5,s10,-48
   10c44:	fcf6fee3          	bleu	a5,a3,10c20 <_vfprintf_r+0x56c>
   10c48:	c31ff06f          	j	10878 <_vfprintf_r+0x1c4>
   10c4c:	00060463          	beqz	a2,10c54 <_vfprintf_r+0x5a0>
   10c50:	6d80106f          	j	12328 <_vfprintf_r+0x1c74>
   10c54:	010c6c13          	ori	s8,s8,16
   10c58:	010c7793          	andi	a5,s8,16
   10c5c:	de0792e3          	bnez	a5,10a40 <_vfprintf_r+0x38c>
   10c60:	040c7793          	andi	a5,s8,64
   10c64:	080107a3          	sb	zero,143(sp)
   10c68:	580780e3          	beqz	a5,119e8 <_vfprintf_r+0x1334>
   10c6c:	02813783          	ld	a5,40(sp)
   10c70:	00878713          	addi	a4,a5,8
   10c74:	0007d783          	lhu	a5,0(a5)
   10c78:	dc045ee3          	bgez	s0,10a54 <_vfprintf_r+0x3a0>
   10c7c:	02e13423          	sd	a4,40(sp)
   10c80:	00000613          	li	a2,0
   10c84:	60078a63          	beqz	a5,11298 <_vfprintf_r+0xbe4>
   10c88:	00000613          	li	a2,0
   10c8c:	de5ff06f          	j	10a70 <_vfprintf_r+0x3bc>
   10c90:	00060463          	beqz	a2,10c98 <_vfprintf_r+0x5e4>
   10c94:	6880106f          	j	1231c <_vfprintf_r+0x1c68>
   10c98:	010c6c13          	ori	s8,s8,16
   10c9c:	010c7793          	andi	a5,s8,16
   10ca0:	f20790e3          	bnez	a5,10bc0 <_vfprintf_r+0x50c>
   10ca4:	040c7793          	andi	a5,s8,64
   10ca8:	080107a3          	sb	zero,143(sp)
   10cac:	500780e3          	beqz	a5,119ac <_vfprintf_r+0x12f8>
   10cb0:	02813783          	ld	a5,40(sp)
   10cb4:	00878713          	addi	a4,a5,8
   10cb8:	0007d783          	lhu	a5,0(a5)
   10cbc:	f0045ce3          	bgez	s0,10bd4 <_vfprintf_r+0x520>
   10cc0:	02e13423          	sd	a4,40(sp)
   10cc4:	00000613          	li	a2,0
   10cc8:	f0079ee3          	bnez	a5,10be4 <_vfprintf_r+0x530>
   10ccc:	00100793          	li	a5,1
   10cd0:	5c80006f          	j	11298 <_vfprintf_r+0xbe4>
   10cd4:	00060463          	beqz	a2,10cdc <_vfprintf_r+0x628>
   10cd8:	63c0106f          	j	12314 <_vfprintf_r+0x1c60>
   10cdc:	000197b7          	lui	a5,0x19
   10ce0:	6b078793          	addi	a5,a5,1712 # 196b0 <zeroes.4137+0x38>
   10ce4:	02f13c23          	sd	a5,56(sp)
   10ce8:	010c7793          	andi	a5,s8,16
   10cec:	4c078263          	beqz	a5,111b0 <_vfprintf_r+0xafc>
   10cf0:	02813703          	ld	a4,40(sp)
   10cf4:	00073783          	ld	a5,0(a4)
   10cf8:	00870713          	addi	a4,a4,8
   10cfc:	02e13423          	sd	a4,40(sp)
   10d00:	001c7713          	andi	a4,s8,1
   10d04:	120706e3          	beqz	a4,11630 <_vfprintf_r+0xf7c>
   10d08:	6a078ee3          	beqz	a5,11bc4 <_vfprintf_r+0x1510>
   10d0c:	03000713          	li	a4,48
   10d10:	08e10823          	sb	a4,144(sp)
   10d14:	09a108a3          	sb	s10,145(sp)
   10d18:	080107a3          	sb	zero,143(sp)
   10d1c:	002c6713          	ori	a4,s8,2
   10d20:	00045463          	bgez	s0,10d28 <_vfprintf_r+0x674>
   10d24:	2140106f          	j	11f38 <_vfprintf_r+0x1884>
   10d28:	f7fc7c13          	andi	s8,s8,-129
   10d2c:	002c6c13          	ori	s8,s8,2
   10d30:	00000613          	li	a2,0
   10d34:	be9ff06f          	j	1091c <_vfprintf_r+0x268>
   10d38:	02813703          	ld	a4,40(sp)
   10d3c:	00100693          	li	a3,1
   10d40:	00d12423          	sw	a3,8(sp)
   10d44:	00072783          	lw	a5,0(a4)
   10d48:	080107a3          	sb	zero,143(sp)
   10d4c:	00000613          	li	a2,0
   10d50:	0cf10423          	sb	a5,200(sp)
   10d54:	00870793          	addi	a5,a4,8
   10d58:	02f13423          	sd	a5,40(sp)
   10d5c:	02d12023          	sw	a3,32(sp)
   10d60:	00000413          	li	s0,0
   10d64:	04012623          	sw	zero,76(sp)
   10d68:	0c810913          	addi	s2,sp,200
   10d6c:	002c7793          	andi	a5,s8,2
   10d70:	04f12023          	sw	a5,64(sp)
   10d74:	00078863          	beqz	a5,10d84 <_vfprintf_r+0x6d0>
   10d78:	00812783          	lw	a5,8(sp)
   10d7c:	0027879b          	addiw	a5,a5,2
   10d80:	00f12423          	sw	a5,8(sp)
   10d84:	084c7793          	andi	a5,s8,132
   10d88:	04f12423          	sw	a5,72(sp)
   10d8c:	52079263          	bnez	a5,112b0 <_vfprintf_r+0xbfc>
   10d90:	01812783          	lw	a5,24(sp)
   10d94:	00812703          	lw	a4,8(sp)
   10d98:	40e78cbb          	subw	s9,a5,a4
   10d9c:	51905a63          	blez	s9,112b0 <_vfprintf_r+0xbfc>
   10da0:	01000793          	li	a5,16
   10da4:	0197c463          	blt	a5,s9,10dac <_vfprintf_r+0x6f8>
   10da8:	1080106f          	j	11eb0 <_vfprintf_r+0x17fc>
   10dac:	01000813          	li	a6,16
   10db0:	0c013783          	ld	a5,192(sp)
   10db4:	0b812703          	lw	a4,184(sp)
   10db8:	05513823          	sd	s5,80(sp)
   10dbc:	00700313          	li	t1,7
   10dc0:	00080d93          	mv	s11,a6
   10dc4:	00c0006f          	j	10dd0 <_vfprintf_r+0x71c>
   10dc8:	ff0c8c9b          	addiw	s9,s9,-16
   10dcc:	059dde63          	ble	s9,s11,10e28 <_vfprintf_r+0x774>
   10dd0:	01078793          	addi	a5,a5,16
   10dd4:	0017071b          	addiw	a4,a4,1
   10dd8:	0158b023          	sd	s5,0(a7)
   10ddc:	0108b423          	sd	a6,8(a7)
   10de0:	0cf13023          	sd	a5,192(sp)
   10de4:	0ae12c23          	sw	a4,184(sp)
   10de8:	01088893          	addi	a7,a7,16
   10dec:	fce35ee3          	ble	a4,t1,10dc8 <_vfprintf_r+0x714>
   10df0:	0b010613          	addi	a2,sp,176
   10df4:	000a0593          	mv	a1,s4
   10df8:	000b8513          	mv	a0,s7
   10dfc:	00613823          	sd	t1,16(sp)
   10e00:	01013023          	sd	a6,0(sp)
   10e04:	2d5050ef          	jal	168d8 <__sprint_r>
   10e08:	ba051ee3          	bnez	a0,109c4 <_vfprintf_r+0x310>
   10e0c:	ff0c8c9b          	addiw	s9,s9,-16
   10e10:	0c013783          	ld	a5,192(sp)
   10e14:	0b812703          	lw	a4,184(sp)
   10e18:	000b0893          	mv	a7,s6
   10e1c:	01013303          	ld	t1,16(sp)
   10e20:	00013803          	ld	a6,0(sp)
   10e24:	fb9dc6e3          	blt	s11,s9,10dd0 <_vfprintf_r+0x71c>
   10e28:	05013603          	ld	a2,80(sp)
   10e2c:	00fc87b3          	add	a5,s9,a5
   10e30:	0017071b          	addiw	a4,a4,1
   10e34:	00c8b023          	sd	a2,0(a7)
   10e38:	0198b423          	sd	s9,8(a7)
   10e3c:	0cf13023          	sd	a5,192(sp)
   10e40:	0ae12c23          	sw	a4,184(sp)
   10e44:	00700693          	li	a3,7
   10e48:	0ce6cae3          	blt	a3,a4,1171c <_vfprintf_r+0x1068>
   10e4c:	08f14603          	lbu	a2,143(sp)
   10e50:	01088893          	addi	a7,a7,16
   10e54:	02060a63          	beqz	a2,10e88 <_vfprintf_r+0x7d4>
   10e58:	0b812703          	lw	a4,184(sp)
   10e5c:	08f10693          	addi	a3,sp,143
   10e60:	00d8b023          	sd	a3,0(a7)
   10e64:	00178793          	addi	a5,a5,1
   10e68:	00100693          	li	a3,1
   10e6c:	0017071b          	addiw	a4,a4,1
   10e70:	00d8b423          	sd	a3,8(a7)
   10e74:	0cf13023          	sd	a5,192(sp)
   10e78:	0ae12c23          	sw	a4,184(sp)
   10e7c:	00700693          	li	a3,7
   10e80:	01088893          	addi	a7,a7,16
   10e84:	76e6c663          	blt	a3,a4,115f0 <_vfprintf_r+0xf3c>
   10e88:	04012703          	lw	a4,64(sp)
   10e8c:	02070a63          	beqz	a4,10ec0 <_vfprintf_r+0x80c>
   10e90:	0b812703          	lw	a4,184(sp)
   10e94:	09010693          	addi	a3,sp,144
   10e98:	00d8b023          	sd	a3,0(a7)
   10e9c:	00278793          	addi	a5,a5,2
   10ea0:	00200693          	li	a3,2
   10ea4:	0017071b          	addiw	a4,a4,1
   10ea8:	00d8b423          	sd	a3,8(a7)
   10eac:	0cf13023          	sd	a5,192(sp)
   10eb0:	0ae12c23          	sw	a4,184(sp)
   10eb4:	00700693          	li	a3,7
   10eb8:	01088893          	addi	a7,a7,16
   10ebc:	74e6ca63          	blt	a3,a4,11610 <_vfprintf_r+0xf5c>
   10ec0:	04812683          	lw	a3,72(sp)
   10ec4:	08000713          	li	a4,128
   10ec8:	5ee68663          	beq	a3,a4,114b4 <_vfprintf_r+0xe00>
   10ecc:	02012703          	lw	a4,32(sp)
   10ed0:	40e4043b          	subw	s0,s0,a4
   10ed4:	0c805063          	blez	s0,10f94 <_vfprintf_r+0x8e0>
   10ed8:	01000713          	li	a4,16
   10edc:	4e875ce3          	ble	s0,a4,11bd4 <_vfprintf_r+0x1520>
   10ee0:	01000c93          	li	s9,16
   10ee4:	0b812703          	lw	a4,184(sp)
   10ee8:	00913823          	sd	s1,16(sp)
   10eec:	00700813          	li	a6,7
   10ef0:	000c8d93          	mv	s11,s9
   10ef4:	00c0006f          	j	10f00 <_vfprintf_r+0x84c>
   10ef8:	ff04041b          	addiw	s0,s0,-16
   10efc:	048dda63          	ble	s0,s11,10f50 <_vfprintf_r+0x89c>
   10f00:	01078793          	addi	a5,a5,16
   10f04:	0017071b          	addiw	a4,a4,1
   10f08:	0098b023          	sd	s1,0(a7)
   10f0c:	0198b423          	sd	s9,8(a7)
   10f10:	0cf13023          	sd	a5,192(sp)
   10f14:	0ae12c23          	sw	a4,184(sp)
   10f18:	01088893          	addi	a7,a7,16
   10f1c:	fce85ee3          	ble	a4,a6,10ef8 <_vfprintf_r+0x844>
   10f20:	0b010613          	addi	a2,sp,176
   10f24:	000a0593          	mv	a1,s4
   10f28:	000b8513          	mv	a0,s7
   10f2c:	01013023          	sd	a6,0(sp)
   10f30:	1a9050ef          	jal	168d8 <__sprint_r>
   10f34:	a80518e3          	bnez	a0,109c4 <_vfprintf_r+0x310>
   10f38:	ff04041b          	addiw	s0,s0,-16
   10f3c:	0c013783          	ld	a5,192(sp)
   10f40:	0b812703          	lw	a4,184(sp)
   10f44:	000b0893          	mv	a7,s6
   10f48:	00013803          	ld	a6,0(sp)
   10f4c:	fa8dcae3          	blt	s11,s0,10f00 <_vfprintf_r+0x84c>
   10f50:	01013683          	ld	a3,16(sp)
   10f54:	008787b3          	add	a5,a5,s0
   10f58:	0017071b          	addiw	a4,a4,1
   10f5c:	00d8b023          	sd	a3,0(a7)
   10f60:	0088b423          	sd	s0,8(a7)
   10f64:	0cf13023          	sd	a5,192(sp)
   10f68:	0ae12c23          	sw	a4,184(sp)
   10f6c:	00700693          	li	a3,7
   10f70:	01088893          	addi	a7,a7,16
   10f74:	02e6d063          	ble	a4,a3,10f94 <_vfprintf_r+0x8e0>
   10f78:	0b010613          	addi	a2,sp,176
   10f7c:	000a0593          	mv	a1,s4
   10f80:	000b8513          	mv	a0,s7
   10f84:	155050ef          	jal	168d8 <__sprint_r>
   10f88:	a2051ee3          	bnez	a0,109c4 <_vfprintf_r+0x310>
   10f8c:	0c013783          	ld	a5,192(sp)
   10f90:	000b0893          	mv	a7,s6
   10f94:	100c7713          	andi	a4,s8,256
   10f98:	40071663          	bnez	a4,113a4 <_vfprintf_r+0xcf0>
   10f9c:	02012703          	lw	a4,32(sp)
   10fa0:	0b812683          	lw	a3,184(sp)
   10fa4:	0128b023          	sd	s2,0(a7)
   10fa8:	00e787b3          	add	a5,a5,a4
   10fac:	0016869b          	addiw	a3,a3,1
   10fb0:	00e8b423          	sd	a4,8(a7)
   10fb4:	0cf13023          	sd	a5,192(sp)
   10fb8:	0ad12c23          	sw	a3,184(sp)
   10fbc:	00700713          	li	a4,7
   10fc0:	3cd74263          	blt	a4,a3,11384 <_vfprintf_r+0xcd0>
   10fc4:	01088893          	addi	a7,a7,16
   10fc8:	004c7c13          	andi	s8,s8,4
   10fcc:	0c0c0063          	beqz	s8,1108c <_vfprintf_r+0x9d8>
   10fd0:	01812703          	lw	a4,24(sp)
   10fd4:	00812683          	lw	a3,8(sp)
   10fd8:	40d7043b          	subw	s0,a4,a3
   10fdc:	0a805863          	blez	s0,1108c <_vfprintf_r+0x9d8>
   10fe0:	01000713          	li	a4,16
   10fe4:	748754e3          	ble	s0,a4,11f2c <_vfprintf_r+0x1878>
   10fe8:	01000913          	li	s2,16
   10fec:	0b812703          	lw	a4,184(sp)
   10ff0:	05513823          	sd	s5,80(sp)
   10ff4:	00700c13          	li	s8,7
   10ff8:	00090d13          	mv	s10,s2
   10ffc:	00c0006f          	j	11008 <_vfprintf_r+0x954>
   11000:	ff04041b          	addiw	s0,s0,-16
   11004:	048d5663          	ble	s0,s10,11050 <_vfprintf_r+0x99c>
   11008:	01078793          	addi	a5,a5,16
   1100c:	0017071b          	addiw	a4,a4,1
   11010:	0158b023          	sd	s5,0(a7)
   11014:	0128b423          	sd	s2,8(a7)
   11018:	0cf13023          	sd	a5,192(sp)
   1101c:	0ae12c23          	sw	a4,184(sp)
   11020:	01088893          	addi	a7,a7,16
   11024:	fcec5ee3          	ble	a4,s8,11000 <_vfprintf_r+0x94c>
   11028:	0b010613          	addi	a2,sp,176
   1102c:	000a0593          	mv	a1,s4
   11030:	000b8513          	mv	a0,s7
   11034:	0a5050ef          	jal	168d8 <__sprint_r>
   11038:	980516e3          	bnez	a0,109c4 <_vfprintf_r+0x310>
   1103c:	ff04041b          	addiw	s0,s0,-16
   11040:	0c013783          	ld	a5,192(sp)
   11044:	0b812703          	lw	a4,184(sp)
   11048:	000b0893          	mv	a7,s6
   1104c:	fa8d4ee3          	blt	s10,s0,11008 <_vfprintf_r+0x954>
   11050:	05013683          	ld	a3,80(sp)
   11054:	008787b3          	add	a5,a5,s0
   11058:	0017071b          	addiw	a4,a4,1
   1105c:	00d8b023          	sd	a3,0(a7)
   11060:	0088b423          	sd	s0,8(a7)
   11064:	0cf13023          	sd	a5,192(sp)
   11068:	0ae12c23          	sw	a4,184(sp)
   1106c:	00700693          	li	a3,7
   11070:	00e6de63          	ble	a4,a3,1108c <_vfprintf_r+0x9d8>
   11074:	0b010613          	addi	a2,sp,176
   11078:	000a0593          	mv	a1,s4
   1107c:	000b8513          	mv	a0,s7
   11080:	059050ef          	jal	168d8 <__sprint_r>
   11084:	940510e3          	bnez	a0,109c4 <_vfprintf_r+0x310>
   11088:	0c013783          	ld	a5,192(sp)
   1108c:	01812c83          	lw	s9,24(sp)
   11090:	00812703          	lw	a4,8(sp)
   11094:	00ecd463          	ble	a4,s9,1109c <_vfprintf_r+0x9e8>
   11098:	00070c93          	mv	s9,a4
   1109c:	01c12703          	lw	a4,28(sp)
   110a0:	0197073b          	addw	a4,a4,s9
   110a4:	00e12e23          	sw	a4,28(sp)
   110a8:	52079863          	bnez	a5,115d8 <_vfprintf_r+0xf24>
   110ac:	0009c783          	lbu	a5,0(s3)
   110b0:	0a012c23          	sw	zero,184(sp)
   110b4:	000b0893          	mv	a7,s6
   110b8:	f2079263          	bnez	a5,107dc <_vfprintf_r+0x128>
   110bc:	00098413          	mv	s0,s3
   110c0:	f80ff06f          	j	10840 <_vfprintf_r+0x18c>
   110c4:	00060463          	beqz	a2,110cc <_vfprintf_r+0xa18>
   110c8:	22c0106f          	j	122f4 <_vfprintf_r+0x1c40>
   110cc:	010c7793          	andi	a5,s8,16
   110d0:	12078e63          	beqz	a5,1120c <_vfprintf_r+0xb58>
   110d4:	02813703          	ld	a4,40(sp)
   110d8:	00073783          	ld	a5,0(a4)
   110dc:	00870713          	addi	a4,a4,8
   110e0:	02e13423          	sd	a4,40(sp)
   110e4:	1407c0e3          	bltz	a5,11a24 <_vfprintf_r+0x1370>
   110e8:	08f14603          	lbu	a2,143(sp)
   110ec:	bc044ee3          	bltz	s0,10cc8 <_vfprintf_r+0x614>
   110f0:	f7fc7c13          	andi	s8,s8,-129
   110f4:	ae0798e3          	bnez	a5,10be4 <_vfprintf_r+0x530>
   110f8:	6e041a63          	bnez	s0,117ec <_vfprintf_r+0x1138>
   110fc:	00000413          	li	s0,0
   11100:	02012023          	sw	zero,32(sp)
   11104:	000b0913          	mv	s2,s6
   11108:	9a9ff06f          	j	10ab0 <_vfprintf_r+0x3fc>
   1110c:	040c6c13          	ori	s8,s8,64
   11110:	f60ff06f          	j	10870 <_vfprintf_r+0x1bc>
   11114:	00060463          	beqz	a2,1111c <_vfprintf_r+0xa68>
   11118:	1d40106f          	j	122ec <_vfprintf_r+0x1c38>
   1111c:	02813783          	ld	a5,40(sp)
   11120:	00100913          	li	s2,1
   11124:	0007b787          	fld	fa5,0(a5)
   11128:	00878793          	addi	a5,a5,8
   1112c:	01113023          	sd	a7,0(sp)
   11130:	04f13c27          	fsd	fa5,88(sp)
   11134:	05813c83          	ld	s9,88(sp)
   11138:	02f13423          	sd	a5,40(sp)
   1113c:	f20c8553          	fmv.d.x	fa0,s9
   11140:	2e8050ef          	jal	16428 <__fpclassifyd>
   11144:	00013883          	ld	a7,0(sp)
   11148:	0f251ce3          	bne	a0,s2,11a40 <_vfprintf_r+0x138c>
   1114c:	f20007d3          	fmv.d.x	fa5,zero
   11150:	f20c8753          	fmv.d.x	fa4,s9
   11154:	a2f717d3          	flt.d	a5,fa4,fa5
   11158:	600792e3          	bnez	a5,11f5c <_vfprintf_r+0x18a8>
   1115c:	08f14603          	lbu	a2,143(sp)
   11160:	04700793          	li	a5,71
   11164:	3da7d8e3          	ble	s10,a5,11d34 <_vfprintf_r+0x1680>
   11168:	00019937          	lui	s2,0x19
   1116c:	69890913          	addi	s2,s2,1688 # 19698 <zeroes.4137+0x20>
   11170:	00300793          	li	a5,3
   11174:	00f12423          	sw	a5,8(sp)
   11178:	f7fc7c13          	andi	s8,s8,-129
   1117c:	02f12023          	sw	a5,32(sp)
   11180:	00000413          	li	s0,0
   11184:	04012623          	sw	zero,76(sp)
   11188:	941ff06f          	j	10ac8 <_vfprintf_r+0x414>
   1118c:	008c6c13          	ori	s8,s8,8
   11190:	ee0ff06f          	j	10870 <_vfprintf_r+0x1bc>
   11194:	00060463          	beqz	a2,1119c <_vfprintf_r+0xae8>
   11198:	1280106f          	j	122c0 <_vfprintf_r+0x1c0c>
   1119c:	000197b7          	lui	a5,0x19
   111a0:	6c878793          	addi	a5,a5,1736 # 196c8 <zeroes.4137+0x50>
   111a4:	02f13c23          	sd	a5,56(sp)
   111a8:	010c7793          	andi	a5,s8,16
   111ac:	b40792e3          	bnez	a5,10cf0 <_vfprintf_r+0x63c>
   111b0:	040c7793          	andi	a5,s8,64
   111b4:	02813703          	ld	a4,40(sp)
   111b8:	1c0784e3          	beqz	a5,11b80 <_vfprintf_r+0x14cc>
   111bc:	00075783          	lhu	a5,0(a4)
   111c0:	00870713          	addi	a4,a4,8
   111c4:	02e13423          	sd	a4,40(sp)
   111c8:	b39ff06f          	j	10d00 <_vfprintf_r+0x64c>
   111cc:	00060463          	beqz	a2,111d4 <_vfprintf_r+0xb20>
   111d0:	10c0106f          	j	122dc <_vfprintf_r+0x1c28>
   111d4:	010c7793          	andi	a5,s8,16
   111d8:	1a078ce3          	beqz	a5,11b90 <_vfprintf_r+0x14dc>
   111dc:	02813683          	ld	a3,40(sp)
   111e0:	01c12703          	lw	a4,28(sp)
   111e4:	0006b783          	ld	a5,0(a3)
   111e8:	00868693          	addi	a3,a3,8
   111ec:	02d13423          	sd	a3,40(sp)
   111f0:	00e7b023          	sd	a4,0(a5)
   111f4:	de0ff06f          	j	107d4 <_vfprintf_r+0x120>
   111f8:	00060463          	beqz	a2,11200 <_vfprintf_r+0xb4c>
   111fc:	0d40106f          	j	122d0 <_vfprintf_r+0x1c1c>
   11200:	010c6c13          	ori	s8,s8,16
   11204:	010c7793          	andi	a5,s8,16
   11208:	ec0796e3          	bnez	a5,110d4 <_vfprintf_r+0xa20>
   1120c:	040c7793          	andi	a5,s8,64
   11210:	02813703          	ld	a4,40(sp)
   11214:	1a0780e3          	beqz	a5,11bb4 <_vfprintf_r+0x1500>
   11218:	00071783          	lh	a5,0(a4)
   1121c:	00870713          	addi	a4,a4,8
   11220:	02e13423          	sd	a4,40(sp)
   11224:	ec1ff06f          	j	110e4 <_vfprintf_r+0xa30>
   11228:	00019737          	lui	a4,0x19
   1122c:	6c870713          	addi	a4,a4,1736 # 196c8 <zeroes.4137+0x50>
   11230:	00000613          	li	a2,0
   11234:	02e13c23          	sd	a4,56(sp)
   11238:	07800d13          	li	s10,120
   1123c:	ee0ff06f          	j	1091c <_vfprintf_r+0x268>
   11240:	00060463          	beqz	a2,11248 <_vfprintf_r+0xb94>
   11244:	0c00106f          	j	12304 <_vfprintf_r+0x1c50>
   11248:	f60d0263          	beqz	s10,109ac <_vfprintf_r+0x2f8>
   1124c:	00100793          	li	a5,1
   11250:	00f12423          	sw	a5,8(sp)
   11254:	0da10423          	sb	s10,200(sp)
   11258:	080107a3          	sb	zero,143(sp)
   1125c:	00000613          	li	a2,0
   11260:	02f12023          	sw	a5,32(sp)
   11264:	00000413          	li	s0,0
   11268:	04012623          	sw	zero,76(sp)
   1126c:	0c810913          	addi	s2,sp,200
   11270:	afdff06f          	j	10d6c <_vfprintf_r+0x6b8>
   11274:	02e13423          	sd	a4,40(sp)
   11278:	00019737          	lui	a4,0x19
   1127c:	6c870713          	addi	a4,a4,1736 # 196c8 <zeroes.4137+0x50>
   11280:	00068c13          	mv	s8,a3
   11284:	02e13c23          	sd	a4,56(sp)
   11288:	07800d13          	li	s10,120
   1128c:	3a079a63          	bnez	a5,11640 <_vfprintf_r+0xf8c>
   11290:	00000613          	li	a2,0
   11294:	00200793          	li	a5,2
   11298:	00100713          	li	a4,1
   1129c:	54e78863          	beq	a5,a4,117ec <_vfprintf_r+0x1138>
   112a0:	00200713          	li	a4,2
   112a4:	e6e78a63          	beq	a5,a4,10918 <_vfprintf_r+0x264>
   112a8:	00000793          	li	a5,0
   112ac:	fc4ff06f          	j	10a70 <_vfprintf_r+0x3bc>
   112b0:	0c013783          	ld	a5,192(sp)
   112b4:	ba1ff06f          	j	10e54 <_vfprintf_r+0x7a0>
   112b8:	07012683          	lw	a3,112(sp)
   112bc:	00100713          	li	a4,1
   112c0:	00178793          	addi	a5,a5,1
   112c4:	6cd75663          	ble	a3,a4,11990 <_vfprintf_r+0x12dc>
   112c8:	0b812703          	lw	a4,184(sp)
   112cc:	00100693          	li	a3,1
   112d0:	00d8b423          	sd	a3,8(a7)
   112d4:	0017071b          	addiw	a4,a4,1
   112d8:	0128b023          	sd	s2,0(a7)
   112dc:	0cf13023          	sd	a5,192(sp)
   112e0:	0ae12c23          	sw	a4,184(sp)
   112e4:	00700693          	li	a3,7
   112e8:	01088893          	addi	a7,a7,16
   112ec:	6ce6ca63          	blt	a3,a4,119c0 <_vfprintf_r+0x130c>
   112f0:	06813683          	ld	a3,104(sp)
   112f4:	06013603          	ld	a2,96(sp)
   112f8:	0017071b          	addiw	a4,a4,1
   112fc:	00f687b3          	add	a5,a3,a5
   11300:	00d8b423          	sd	a3,8(a7)
   11304:	00c8b023          	sd	a2,0(a7)
   11308:	0cf13023          	sd	a5,192(sp)
   1130c:	0ae12c23          	sw	a4,184(sp)
   11310:	00700693          	li	a3,7
   11314:	01088893          	addi	a7,a7,16
   11318:	6ee6c263          	blt	a3,a4,119fc <_vfprintf_r+0x1348>
   1131c:	f20007d3          	fmv.d.x	fa5,zero
   11320:	05813707          	fld	fa4,88(sp)
   11324:	a2f726d3          	feq.d	a3,fa4,fa5
   11328:	40069c63          	bnez	a3,11740 <_vfprintf_r+0x108c>
   1132c:	07012683          	lw	a3,112(sp)
   11330:	00190913          	addi	s2,s2,1
   11334:	0017071b          	addiw	a4,a4,1
   11338:	fff6869b          	addiw	a3,a3,-1
   1133c:	00d787b3          	add	a5,a5,a3
   11340:	0128b023          	sd	s2,0(a7)
   11344:	00d8b423          	sd	a3,8(a7)
   11348:	0cf13023          	sd	a5,192(sp)
   1134c:	0ae12c23          	sw	a4,184(sp)
   11350:	00700693          	li	a3,7
   11354:	26e6c063          	blt	a3,a4,115b4 <_vfprintf_r+0xf00>
   11358:	01088893          	addi	a7,a7,16
   1135c:	07412683          	lw	a3,116(sp)
   11360:	0a010613          	addi	a2,sp,160
   11364:	0017071b          	addiw	a4,a4,1
   11368:	00f687b3          	add	a5,a3,a5
   1136c:	00c8b023          	sd	a2,0(a7)
   11370:	00d8b423          	sd	a3,8(a7)
   11374:	0cf13023          	sd	a5,192(sp)
   11378:	0ae12c23          	sw	a4,184(sp)
   1137c:	00700693          	li	a3,7
   11380:	c4e6d2e3          	ble	a4,a3,10fc4 <_vfprintf_r+0x910>
   11384:	0b010613          	addi	a2,sp,176
   11388:	000a0593          	mv	a1,s4
   1138c:	000b8513          	mv	a0,s7
   11390:	548050ef          	jal	168d8 <__sprint_r>
   11394:	e2051863          	bnez	a0,109c4 <_vfprintf_r+0x310>
   11398:	0c013783          	ld	a5,192(sp)
   1139c:	000b0893          	mv	a7,s6
   113a0:	c29ff06f          	j	10fc8 <_vfprintf_r+0x914>
   113a4:	06500713          	li	a4,101
   113a8:	f1a758e3          	ble	s10,a4,112b8 <_vfprintf_r+0xc04>
   113ac:	f20007d3          	fmv.d.x	fa5,zero
   113b0:	05813707          	fld	fa4,88(sp)
   113b4:	a2f72753          	feq.d	a4,fa4,fa5
   113b8:	28070863          	beqz	a4,11648 <_vfprintf_r+0xf94>
   113bc:	0b812703          	lw	a4,184(sp)
   113c0:	000196b7          	lui	a3,0x19
   113c4:	6e868693          	addi	a3,a3,1768 # 196e8 <zeroes.4137+0x70>
   113c8:	00d8b023          	sd	a3,0(a7)
   113cc:	00178793          	addi	a5,a5,1
   113d0:	00100693          	li	a3,1
   113d4:	0017071b          	addiw	a4,a4,1
   113d8:	00d8b423          	sd	a3,8(a7)
   113dc:	0cf13023          	sd	a5,192(sp)
   113e0:	0ae12c23          	sw	a4,184(sp)
   113e4:	00700693          	li	a3,7
   113e8:	01088893          	addi	a7,a7,16
   113ec:	7ee6ca63          	blt	a3,a4,11be0 <_vfprintf_r+0x152c>
   113f0:	09812703          	lw	a4,152(sp)
   113f4:	07012683          	lw	a3,112(sp)
   113f8:	00d74663          	blt	a4,a3,11404 <_vfprintf_r+0xd50>
   113fc:	001c7713          	andi	a4,s8,1
   11400:	bc0704e3          	beqz	a4,10fc8 <_vfprintf_r+0x914>
   11404:	06013703          	ld	a4,96(sp)
   11408:	06813683          	ld	a3,104(sp)
   1140c:	01088893          	addi	a7,a7,16
   11410:	fee8b823          	sd	a4,-16(a7)
   11414:	0b812703          	lw	a4,184(sp)
   11418:	00d787b3          	add	a5,a5,a3
   1141c:	fed8bc23          	sd	a3,-8(a7)
   11420:	0017071b          	addiw	a4,a4,1
   11424:	0cf13023          	sd	a5,192(sp)
   11428:	0ae12c23          	sw	a4,184(sp)
   1142c:	00700693          	li	a3,7
   11430:	1ce6c8e3          	blt	a3,a4,11e00 <_vfprintf_r+0x174c>
   11434:	07012703          	lw	a4,112(sp)
   11438:	fff7041b          	addiw	s0,a4,-1
   1143c:	b88056e3          	blez	s0,10fc8 <_vfprintf_r+0x914>
   11440:	01000713          	li	a4,16
   11444:	36875c63          	ble	s0,a4,117bc <_vfprintf_r+0x1108>
   11448:	01000913          	li	s2,16
   1144c:	0b812703          	lw	a4,184(sp)
   11450:	00913823          	sd	s1,16(sp)
   11454:	00700d13          	li	s10,7
   11458:	00090693          	mv	a3,s2
   1145c:	00c0006f          	j	11468 <_vfprintf_r+0xdb4>
   11460:	ff04041b          	addiw	s0,s0,-16
   11464:	3686d063          	ble	s0,a3,117c4 <_vfprintf_r+0x1110>
   11468:	01078793          	addi	a5,a5,16
   1146c:	0017071b          	addiw	a4,a4,1
   11470:	0098b023          	sd	s1,0(a7)
   11474:	0128b423          	sd	s2,8(a7)
   11478:	0cf13023          	sd	a5,192(sp)
   1147c:	0ae12c23          	sw	a4,184(sp)
   11480:	01088893          	addi	a7,a7,16
   11484:	fced5ee3          	ble	a4,s10,11460 <_vfprintf_r+0xdac>
   11488:	0b010613          	addi	a2,sp,176
   1148c:	000a0593          	mv	a1,s4
   11490:	000b8513          	mv	a0,s7
   11494:	00d13023          	sd	a3,0(sp)
   11498:	440050ef          	jal	168d8 <__sprint_r>
   1149c:	d2051463          	bnez	a0,109c4 <_vfprintf_r+0x310>
   114a0:	0c013783          	ld	a5,192(sp)
   114a4:	0b812703          	lw	a4,184(sp)
   114a8:	000b0893          	mv	a7,s6
   114ac:	00013683          	ld	a3,0(sp)
   114b0:	fb1ff06f          	j	11460 <_vfprintf_r+0xdac>
   114b4:	01812703          	lw	a4,24(sp)
   114b8:	00812683          	lw	a3,8(sp)
   114bc:	40d70cbb          	subw	s9,a4,a3
   114c0:	a19056e3          	blez	s9,10ecc <_vfprintf_r+0x818>
   114c4:	01000713          	li	a4,16
   114c8:	2f975ee3          	ble	s9,a4,11fc4 <_vfprintf_r+0x1910>
   114cc:	01000813          	li	a6,16
   114d0:	0b812703          	lw	a4,184(sp)
   114d4:	00913823          	sd	s1,16(sp)
   114d8:	00700313          	li	t1,7
   114dc:	00080d93          	mv	s11,a6
   114e0:	00c0006f          	j	114ec <_vfprintf_r+0xe38>
   114e4:	ff0c8c9b          	addiw	s9,s9,-16
   114e8:	059dde63          	ble	s9,s11,11544 <_vfprintf_r+0xe90>
   114ec:	01078793          	addi	a5,a5,16
   114f0:	0017071b          	addiw	a4,a4,1
   114f4:	0098b023          	sd	s1,0(a7)
   114f8:	0108b423          	sd	a6,8(a7)
   114fc:	0cf13023          	sd	a5,192(sp)
   11500:	0ae12c23          	sw	a4,184(sp)
   11504:	01088893          	addi	a7,a7,16
   11508:	fce35ee3          	ble	a4,t1,114e4 <_vfprintf_r+0xe30>
   1150c:	0b010613          	addi	a2,sp,176
   11510:	000a0593          	mv	a1,s4
   11514:	000b8513          	mv	a0,s7
   11518:	04613023          	sd	t1,64(sp)
   1151c:	01013023          	sd	a6,0(sp)
   11520:	3b8050ef          	jal	168d8 <__sprint_r>
   11524:	ca051063          	bnez	a0,109c4 <_vfprintf_r+0x310>
   11528:	ff0c8c9b          	addiw	s9,s9,-16
   1152c:	0c013783          	ld	a5,192(sp)
   11530:	0b812703          	lw	a4,184(sp)
   11534:	000b0893          	mv	a7,s6
   11538:	04013303          	ld	t1,64(sp)
   1153c:	00013803          	ld	a6,0(sp)
   11540:	fb9dc6e3          	blt	s11,s9,114ec <_vfprintf_r+0xe38>
   11544:	01013603          	ld	a2,16(sp)
   11548:	019787b3          	add	a5,a5,s9
   1154c:	0017071b          	addiw	a4,a4,1
   11550:	00c8b023          	sd	a2,0(a7)
   11554:	0198b423          	sd	s9,8(a7)
   11558:	0cf13023          	sd	a5,192(sp)
   1155c:	0ae12c23          	sw	a4,184(sp)
   11560:	00700693          	li	a3,7
   11564:	01088893          	addi	a7,a7,16
   11568:	96e6d2e3          	ble	a4,a3,10ecc <_vfprintf_r+0x818>
   1156c:	0b010613          	addi	a2,sp,176
   11570:	000a0593          	mv	a1,s4
   11574:	000b8513          	mv	a0,s7
   11578:	360050ef          	jal	168d8 <__sprint_r>
   1157c:	c4051463          	bnez	a0,109c4 <_vfprintf_r+0x310>
   11580:	0c013783          	ld	a5,192(sp)
   11584:	000b0893          	mv	a7,s6
   11588:	945ff06f          	j	10ecc <_vfprintf_r+0x818>
   1158c:	00913823          	sd	s1,16(sp)
   11590:	01013683          	ld	a3,16(sp)
   11594:	008787b3          	add	a5,a5,s0
   11598:	0017071b          	addiw	a4,a4,1
   1159c:	00d8b023          	sd	a3,0(a7)
   115a0:	0088b423          	sd	s0,8(a7)
   115a4:	0cf13023          	sd	a5,192(sp)
   115a8:	0ae12c23          	sw	a4,184(sp)
   115ac:	00700693          	li	a3,7
   115b0:	dae6d4e3          	ble	a4,a3,11358 <_vfprintf_r+0xca4>
   115b4:	0b010613          	addi	a2,sp,176
   115b8:	000a0593          	mv	a1,s4
   115bc:	000b8513          	mv	a0,s7
   115c0:	318050ef          	jal	168d8 <__sprint_r>
   115c4:	c0051063          	bnez	a0,109c4 <_vfprintf_r+0x310>
   115c8:	0c013783          	ld	a5,192(sp)
   115cc:	0b812703          	lw	a4,184(sp)
   115d0:	000b0893          	mv	a7,s6
   115d4:	d89ff06f          	j	1135c <_vfprintf_r+0xca8>
   115d8:	0b010613          	addi	a2,sp,176
   115dc:	000a0593          	mv	a1,s4
   115e0:	000b8513          	mv	a0,s7
   115e4:	2f4050ef          	jal	168d8 <__sprint_r>
   115e8:	ac0502e3          	beqz	a0,110ac <_vfprintf_r+0x9f8>
   115ec:	bd8ff06f          	j	109c4 <_vfprintf_r+0x310>
   115f0:	0b010613          	addi	a2,sp,176
   115f4:	000a0593          	mv	a1,s4
   115f8:	000b8513          	mv	a0,s7
   115fc:	2dc050ef          	jal	168d8 <__sprint_r>
   11600:	bc051263          	bnez	a0,109c4 <_vfprintf_r+0x310>
   11604:	0c013783          	ld	a5,192(sp)
   11608:	000b0893          	mv	a7,s6
   1160c:	87dff06f          	j	10e88 <_vfprintf_r+0x7d4>
   11610:	0b010613          	addi	a2,sp,176
   11614:	000a0593          	mv	a1,s4
   11618:	000b8513          	mv	a0,s7
   1161c:	2bc050ef          	jal	168d8 <__sprint_r>
   11620:	ba051263          	bnez	a0,109c4 <_vfprintf_r+0x310>
   11624:	0c013783          	ld	a5,192(sp)
   11628:	000b0893          	mv	a7,s6
   1162c:	895ff06f          	j	10ec0 <_vfprintf_r+0x80c>
   11630:	080107a3          	sb	zero,143(sp)
   11634:	c4044ce3          	bltz	s0,1128c <_vfprintf_r+0xbd8>
   11638:	f7fc7c13          	andi	s8,s8,-129
   1163c:	ac078a63          	beqz	a5,10910 <_vfprintf_r+0x25c>
   11640:	00000613          	li	a2,0
   11644:	ad8ff06f          	j	1091c <_vfprintf_r+0x268>
   11648:	09812403          	lw	s0,152(sp)
   1164c:	5a805c63          	blez	s0,11c04 <_vfprintf_r+0x1550>
   11650:	04c12703          	lw	a4,76(sp)
   11654:	07012683          	lw	a3,112(sp)
   11658:	00070413          	mv	s0,a4
   1165c:	00e6d463          	ble	a4,a3,11664 <_vfprintf_r+0xfb0>
   11660:	00068413          	mv	s0,a3
   11664:	02805663          	blez	s0,11690 <_vfprintf_r+0xfdc>
   11668:	0b812703          	lw	a4,184(sp)
   1166c:	008787b3          	add	a5,a5,s0
   11670:	0128b023          	sd	s2,0(a7)
   11674:	0017071b          	addiw	a4,a4,1
   11678:	0088b423          	sd	s0,8(a7)
   1167c:	0cf13023          	sd	a5,192(sp)
   11680:	0ae12c23          	sw	a4,184(sp)
   11684:	00700693          	li	a3,7
   11688:	01088893          	addi	a7,a7,16
   1168c:	6ae6ca63          	blt	a3,a4,11d40 <_vfprintf_r+0x168c>
   11690:	020448e3          	bltz	s0,11ec0 <_vfprintf_r+0x180c>
   11694:	04c12703          	lw	a4,76(sp)
   11698:	4087043b          	subw	s0,a4,s0
   1169c:	1a805c63          	blez	s0,11854 <_vfprintf_r+0x11a0>
   116a0:	01000713          	li	a4,16
   116a4:	16875263          	ble	s0,a4,11808 <_vfprintf_r+0x1154>
   116a8:	01000d13          	li	s10,16
   116ac:	0b812703          	lw	a4,184(sp)
   116b0:	00913823          	sd	s1,16(sp)
   116b4:	00700693          	li	a3,7
   116b8:	000d0813          	mv	a6,s10
   116bc:	00c0006f          	j	116c8 <_vfprintf_r+0x1014>
   116c0:	ff04041b          	addiw	s0,s0,-16
   116c4:	14885663          	ble	s0,a6,11810 <_vfprintf_r+0x115c>
   116c8:	01078793          	addi	a5,a5,16
   116cc:	0017071b          	addiw	a4,a4,1
   116d0:	0098b023          	sd	s1,0(a7)
   116d4:	01a8b423          	sd	s10,8(a7)
   116d8:	0cf13023          	sd	a5,192(sp)
   116dc:	0ae12c23          	sw	a4,184(sp)
   116e0:	01088893          	addi	a7,a7,16
   116e4:	fce6dee3          	ble	a4,a3,116c0 <_vfprintf_r+0x100c>
   116e8:	0b010613          	addi	a2,sp,176
   116ec:	000a0593          	mv	a1,s4
   116f0:	000b8513          	mv	a0,s7
   116f4:	03013023          	sd	a6,32(sp)
   116f8:	00d13023          	sd	a3,0(sp)
   116fc:	1dc050ef          	jal	168d8 <__sprint_r>
   11700:	ac051263          	bnez	a0,109c4 <_vfprintf_r+0x310>
   11704:	0c013783          	ld	a5,192(sp)
   11708:	0b812703          	lw	a4,184(sp)
   1170c:	000b0893          	mv	a7,s6
   11710:	02013803          	ld	a6,32(sp)
   11714:	00013683          	ld	a3,0(sp)
   11718:	fa9ff06f          	j	116c0 <_vfprintf_r+0x100c>
   1171c:	0b010613          	addi	a2,sp,176
   11720:	000a0593          	mv	a1,s4
   11724:	000b8513          	mv	a0,s7
   11728:	1b0050ef          	jal	168d8 <__sprint_r>
   1172c:	a8051c63          	bnez	a0,109c4 <_vfprintf_r+0x310>
   11730:	08f14603          	lbu	a2,143(sp)
   11734:	0c013783          	ld	a5,192(sp)
   11738:	000b0893          	mv	a7,s6
   1173c:	f18ff06f          	j	10e54 <_vfprintf_r+0x7a0>
   11740:	07012683          	lw	a3,112(sp)
   11744:	fff6841b          	addiw	s0,a3,-1
   11748:	c0805ae3          	blez	s0,1135c <_vfprintf_r+0xca8>
   1174c:	01000693          	li	a3,16
   11750:	e286dee3          	ble	s0,a3,1158c <_vfprintf_r+0xed8>
   11754:	01000913          	li	s2,16
   11758:	00913823          	sd	s1,16(sp)
   1175c:	00700d13          	li	s10,7
   11760:	00090693          	mv	a3,s2
   11764:	00c0006f          	j	11770 <_vfprintf_r+0x10bc>
   11768:	ff04041b          	addiw	s0,s0,-16
   1176c:	e286d2e3          	ble	s0,a3,11590 <_vfprintf_r+0xedc>
   11770:	01078793          	addi	a5,a5,16
   11774:	0017071b          	addiw	a4,a4,1
   11778:	0098b023          	sd	s1,0(a7)
   1177c:	0128b423          	sd	s2,8(a7)
   11780:	0cf13023          	sd	a5,192(sp)
   11784:	0ae12c23          	sw	a4,184(sp)
   11788:	01088893          	addi	a7,a7,16
   1178c:	fced5ee3          	ble	a4,s10,11768 <_vfprintf_r+0x10b4>
   11790:	0b010613          	addi	a2,sp,176
   11794:	000a0593          	mv	a1,s4
   11798:	000b8513          	mv	a0,s7
   1179c:	00d13023          	sd	a3,0(sp)
   117a0:	138050ef          	jal	168d8 <__sprint_r>
   117a4:	a2051063          	bnez	a0,109c4 <_vfprintf_r+0x310>
   117a8:	0c013783          	ld	a5,192(sp)
   117ac:	0b812703          	lw	a4,184(sp)
   117b0:	000b0893          	mv	a7,s6
   117b4:	00013683          	ld	a3,0(sp)
   117b8:	fb1ff06f          	j	11768 <_vfprintf_r+0x10b4>
   117bc:	0b812703          	lw	a4,184(sp)
   117c0:	00913823          	sd	s1,16(sp)
   117c4:	01013683          	ld	a3,16(sp)
   117c8:	008787b3          	add	a5,a5,s0
   117cc:	0088b423          	sd	s0,8(a7)
   117d0:	00d8b023          	sd	a3,0(a7)
   117d4:	0017071b          	addiw	a4,a4,1
   117d8:	0cf13023          	sd	a5,192(sp)
   117dc:	0ae12c23          	sw	a4,184(sp)
   117e0:	00700693          	li	a3,7
   117e4:	fee6d063          	ble	a4,a3,10fc4 <_vfprintf_r+0x910>
   117e8:	b9dff06f          	j	11384 <_vfprintf_r+0xcd0>
   117ec:	00000793          	li	a5,0
   117f0:	0307879b          	addiw	a5,a5,48
   117f4:	0ef107a3          	sb	a5,239(sp)
   117f8:	07813783          	ld	a5,120(sp)
   117fc:	0ef10913          	addi	s2,sp,239
   11800:	02f12023          	sw	a5,32(sp)
   11804:	aacff06f          	j	10ab0 <_vfprintf_r+0x3fc>
   11808:	0b812703          	lw	a4,184(sp)
   1180c:	00913823          	sd	s1,16(sp)
   11810:	01013683          	ld	a3,16(sp)
   11814:	008787b3          	add	a5,a5,s0
   11818:	0017071b          	addiw	a4,a4,1
   1181c:	00d8b023          	sd	a3,0(a7)
   11820:	0088b423          	sd	s0,8(a7)
   11824:	0cf13023          	sd	a5,192(sp)
   11828:	0ae12c23          	sw	a4,184(sp)
   1182c:	00700693          	li	a3,7
   11830:	01088893          	addi	a7,a7,16
   11834:	02e6d063          	ble	a4,a3,11854 <_vfprintf_r+0x11a0>
   11838:	0b010613          	addi	a2,sp,176
   1183c:	000a0593          	mv	a1,s4
   11840:	000b8513          	mv	a0,s7
   11844:	094050ef          	jal	168d8 <__sprint_r>
   11848:	96051e63          	bnez	a0,109c4 <_vfprintf_r+0x310>
   1184c:	0c013783          	ld	a5,192(sp)
   11850:	000b0893          	mv	a7,s6
   11854:	04c12d03          	lw	s10,76(sp)
   11858:	09812703          	lw	a4,152(sp)
   1185c:	07012683          	lw	a3,112(sp)
   11860:	01a90d33          	add	s10,s2,s10
   11864:	0cd74a63          	blt	a4,a3,11938 <_vfprintf_r+0x1284>
   11868:	001c7693          	andi	a3,s8,1
   1186c:	0c069663          	bnez	a3,11938 <_vfprintf_r+0x1284>
   11870:	07012683          	lw	a3,112(sp)
   11874:	00d90433          	add	s0,s2,a3
   11878:	41a40433          	sub	s0,s0,s10
   1187c:	40e6873b          	subw	a4,a3,a4
   11880:	0004041b          	sext.w	s0,s0
   11884:	00875463          	ble	s0,a4,1188c <_vfprintf_r+0x11d8>
   11888:	00070413          	mv	s0,a4
   1188c:	02805663          	blez	s0,118b8 <_vfprintf_r+0x1204>
   11890:	0b812683          	lw	a3,184(sp)
   11894:	008787b3          	add	a5,a5,s0
   11898:	01a8b023          	sd	s10,0(a7)
   1189c:	0016869b          	addiw	a3,a3,1
   118a0:	0088b423          	sd	s0,8(a7)
   118a4:	0cf13023          	sd	a5,192(sp)
   118a8:	0ad12c23          	sw	a3,184(sp)
   118ac:	00700613          	li	a2,7
   118b0:	01088893          	addi	a7,a7,16
   118b4:	4cd64263          	blt	a2,a3,11d78 <_vfprintf_r+0x16c4>
   118b8:	60044863          	bltz	s0,11ec8 <_vfprintf_r+0x1814>
   118bc:	4087043b          	subw	s0,a4,s0
   118c0:	f0805463          	blez	s0,10fc8 <_vfprintf_r+0x914>
   118c4:	01000713          	li	a4,16
   118c8:	ee875ae3          	ble	s0,a4,117bc <_vfprintf_r+0x1108>
   118cc:	01000913          	li	s2,16
   118d0:	0b812703          	lw	a4,184(sp)
   118d4:	00913823          	sd	s1,16(sp)
   118d8:	00700d13          	li	s10,7
   118dc:	00090693          	mv	a3,s2
   118e0:	00c0006f          	j	118ec <_vfprintf_r+0x1238>
   118e4:	ff04041b          	addiw	s0,s0,-16
   118e8:	ec86dee3          	ble	s0,a3,117c4 <_vfprintf_r+0x1110>
   118ec:	01078793          	addi	a5,a5,16
   118f0:	0017071b          	addiw	a4,a4,1
   118f4:	0098b023          	sd	s1,0(a7)
   118f8:	0128b423          	sd	s2,8(a7)
   118fc:	0cf13023          	sd	a5,192(sp)
   11900:	0ae12c23          	sw	a4,184(sp)
   11904:	01088893          	addi	a7,a7,16
   11908:	fced5ee3          	ble	a4,s10,118e4 <_vfprintf_r+0x1230>
   1190c:	0b010613          	addi	a2,sp,176
   11910:	000a0593          	mv	a1,s4
   11914:	000b8513          	mv	a0,s7
   11918:	00d13023          	sd	a3,0(sp)
   1191c:	7bd040ef          	jal	168d8 <__sprint_r>
   11920:	8a051263          	bnez	a0,109c4 <_vfprintf_r+0x310>
   11924:	0c013783          	ld	a5,192(sp)
   11928:	0b812703          	lw	a4,184(sp)
   1192c:	000b0893          	mv	a7,s6
   11930:	00013683          	ld	a3,0(sp)
   11934:	fb1ff06f          	j	118e4 <_vfprintf_r+0x1230>
   11938:	06013683          	ld	a3,96(sp)
   1193c:	06813603          	ld	a2,104(sp)
   11940:	01088893          	addi	a7,a7,16
   11944:	fed8b823          	sd	a3,-16(a7)
   11948:	0b812683          	lw	a3,184(sp)
   1194c:	00c787b3          	add	a5,a5,a2
   11950:	fec8bc23          	sd	a2,-8(a7)
   11954:	0016869b          	addiw	a3,a3,1
   11958:	0cf13023          	sd	a5,192(sp)
   1195c:	0ad12c23          	sw	a3,184(sp)
   11960:	00700613          	li	a2,7
   11964:	f0d656e3          	ble	a3,a2,11870 <_vfprintf_r+0x11bc>
   11968:	0b010613          	addi	a2,sp,176
   1196c:	000a0593          	mv	a1,s4
   11970:	000b8513          	mv	a0,s7
   11974:	765040ef          	jal	168d8 <__sprint_r>
   11978:	00050463          	beqz	a0,11980 <_vfprintf_r+0x12cc>
   1197c:	848ff06f          	j	109c4 <_vfprintf_r+0x310>
   11980:	09812703          	lw	a4,152(sp)
   11984:	0c013783          	ld	a5,192(sp)
   11988:	000b0893          	mv	a7,s6
   1198c:	ee5ff06f          	j	11870 <_vfprintf_r+0x11bc>
   11990:	00ec7733          	and	a4,s8,a4
   11994:	92071ae3          	bnez	a4,112c8 <_vfprintf_r+0xc14>
   11998:	0b812703          	lw	a4,184(sp)
   1199c:	0128b023          	sd	s2,0(a7)
   119a0:	00100693          	li	a3,1
   119a4:	0017071b          	addiw	a4,a4,1
   119a8:	99dff06f          	j	11344 <_vfprintf_r+0xc90>
   119ac:	02813783          	ld	a5,40(sp)
   119b0:	00878713          	addi	a4,a5,8
   119b4:	0007e783          	lwu	a5,0(a5)
   119b8:	a0045e63          	bgez	s0,10bd4 <_vfprintf_r+0x520>
   119bc:	b04ff06f          	j	10cc0 <_vfprintf_r+0x60c>
   119c0:	0b010613          	addi	a2,sp,176
   119c4:	000a0593          	mv	a1,s4
   119c8:	000b8513          	mv	a0,s7
   119cc:	70d040ef          	jal	168d8 <__sprint_r>
   119d0:	00050463          	beqz	a0,119d8 <_vfprintf_r+0x1324>
   119d4:	ff1fe06f          	j	109c4 <_vfprintf_r+0x310>
   119d8:	0c013783          	ld	a5,192(sp)
   119dc:	0b812703          	lw	a4,184(sp)
   119e0:	000b0893          	mv	a7,s6
   119e4:	90dff06f          	j	112f0 <_vfprintf_r+0xc3c>
   119e8:	02813783          	ld	a5,40(sp)
   119ec:	00878713          	addi	a4,a5,8
   119f0:	0007e783          	lwu	a5,0(a5)
   119f4:	86045063          	bgez	s0,10a54 <_vfprintf_r+0x3a0>
   119f8:	a84ff06f          	j	10c7c <_vfprintf_r+0x5c8>
   119fc:	0b010613          	addi	a2,sp,176
   11a00:	000a0593          	mv	a1,s4
   11a04:	000b8513          	mv	a0,s7
   11a08:	6d1040ef          	jal	168d8 <__sprint_r>
   11a0c:	00050463          	beqz	a0,11a14 <_vfprintf_r+0x1360>
   11a10:	fb5fe06f          	j	109c4 <_vfprintf_r+0x310>
   11a14:	0c013783          	ld	a5,192(sp)
   11a18:	0b812703          	lw	a4,184(sp)
   11a1c:	000b0893          	mv	a7,s6
   11a20:	8fdff06f          	j	1131c <_vfprintf_r+0xc68>
   11a24:	02d00713          	li	a4,45
   11a28:	08e107a3          	sb	a4,143(sp)
   11a2c:	40f007b3          	neg	a5,a5
   11a30:	4a044063          	bltz	s0,11ed0 <_vfprintf_r+0x181c>
   11a34:	f7fc7c13          	andi	s8,s8,-129
   11a38:	02d00613          	li	a2,45
   11a3c:	9a8ff06f          	j	10be4 <_vfprintf_r+0x530>
   11a40:	05813507          	fld	fa0,88(sp)
   11a44:	01113023          	sd	a7,0(sp)
   11a48:	1e1040ef          	jal	16428 <__fpclassifyd>
   11a4c:	00013883          	ld	a7,0(sp)
   11a50:	2a050463          	beqz	a0,11cf8 <_vfprintf_r+0x1644>
   11a54:	fff00793          	li	a5,-1
   11a58:	fdfd7d93          	andi	s11,s10,-33
   11a5c:	62f40c63          	beq	s0,a5,12094 <_vfprintf_r+0x19e0>
   11a60:	04700793          	li	a5,71
   11a64:	62fd8263          	beq	s11,a5,12088 <_vfprintf_r+0x19d4>
   11a68:	05813703          	ld	a4,88(sp)
   11a6c:	100c6693          	ori	a3,s8,256
   11a70:	00d12023          	sw	a3,0(sp)
   11a74:	42075793          	srai	a5,a4,0x20
   11a78:	f2070453          	fmv.d.x	fs0,a4
   11a7c:	00000c93          	li	s9,0
   11a80:	6607c663          	bltz	a5,120ec <_vfprintf_r+0x1a38>
   11a84:	06600793          	li	a5,102
   11a88:	60fd0a63          	beq	s10,a5,1209c <_vfprintf_r+0x19e8>
   11a8c:	04600793          	li	a5,70
   11a90:	72fd0863          	beq	s10,a5,121c0 <_vfprintf_r+0x1b0c>
   11a94:	fbbd859b          	addiw	a1,s11,-69
   11a98:	0015b593          	seqz	a1,a1
   11a9c:	228405d3          	fmv.d	fa1,fs0
   11aa0:	00b405bb          	addw	a1,s0,a1
   11aa4:	09c10793          	addi	a5,sp,156
   11aa8:	00058693          	mv	a3,a1
   11aac:	0a810813          	addi	a6,sp,168
   11ab0:	09810713          	addi	a4,sp,152
   11ab4:	00200613          	li	a2,2
   11ab8:	000b8513          	mv	a0,s7
   11abc:	01113823          	sd	a7,16(sp)
   11ac0:	00b13423          	sd	a1,8(sp)
   11ac4:	745000ef          	jal	12a08 <_dtoa_r>
   11ac8:	06700793          	li	a5,103
   11acc:	00050913          	mv	s2,a0
   11ad0:	00813583          	ld	a1,8(sp)
   11ad4:	01013883          	ld	a7,16(sp)
   11ad8:	46fd0863          	beq	s10,a5,11f48 <_vfprintf_r+0x1894>
   11adc:	04700793          	li	a5,71
   11ae0:	00b50733          	add	a4,a0,a1
   11ae4:	48fd0a63          	beq	s10,a5,11f78 <_vfprintf_r+0x18c4>
   11ae8:	f20007d3          	fmv.d.x	fa5,zero
   11aec:	00070793          	mv	a5,a4
   11af0:	a2f426d3          	feq.d	a3,fs0,fa5
   11af4:	02069263          	bnez	a3,11b18 <_vfprintf_r+0x1464>
   11af8:	0a813783          	ld	a5,168(sp)
   11afc:	00e7fe63          	bleu	a4,a5,11b18 <_vfprintf_r+0x1464>
   11b00:	03000613          	li	a2,48
   11b04:	00178693          	addi	a3,a5,1
   11b08:	0ad13423          	sd	a3,168(sp)
   11b0c:	00c78023          	sb	a2,0(a5)
   11b10:	0a813783          	ld	a5,168(sp)
   11b14:	fee7e8e3          	bltu	a5,a4,11b04 <_vfprintf_r+0x1450>
   11b18:	412787b3          	sub	a5,a5,s2
   11b1c:	06f12823          	sw	a5,112(sp)
   11b20:	04700793          	li	a5,71
   11b24:	46fd8663          	beq	s11,a5,11f90 <_vfprintf_r+0x18dc>
   11b28:	06500793          	li	a5,101
   11b2c:	7ba7dc63          	ble	s10,a5,122e4 <_vfprintf_r+0x1c30>
   11b30:	06600793          	li	a5,102
   11b34:	60fd0263          	beq	s10,a5,12138 <_vfprintf_r+0x1a84>
   11b38:	09812783          	lw	a5,152(sp)
   11b3c:	04f12623          	sw	a5,76(sp)
   11b40:	04c12703          	lw	a4,76(sp)
   11b44:	07012683          	lw	a3,112(sp)
   11b48:	00070793          	mv	a5,a4
   11b4c:	5ad74663          	blt	a4,a3,120f8 <_vfprintf_r+0x1a44>
   11b50:	001c7c13          	andi	s8,s8,1
   11b54:	5c0c1463          	bnez	s8,1211c <_vfprintf_r+0x1a68>
   11b58:	76074863          	bltz	a4,122c8 <_vfprintf_r+0x1c14>
   11b5c:	04c12703          	lw	a4,76(sp)
   11b60:	06700d13          	li	s10,103
   11b64:	02e12023          	sw	a4,32(sp)
   11b68:	440c9063          	bnez	s9,11fa8 <_vfprintf_r+0x18f4>
   11b6c:	08f14603          	lbu	a2,143(sp)
   11b70:	00f12423          	sw	a5,8(sp)
   11b74:	00012c03          	lw	s8,0(sp)
   11b78:	00000413          	li	s0,0
   11b7c:	f4dfe06f          	j	10ac8 <_vfprintf_r+0x414>
   11b80:	00076783          	lwu	a5,0(a4)
   11b84:	00870713          	addi	a4,a4,8
   11b88:	02e13423          	sd	a4,40(sp)
   11b8c:	974ff06f          	j	10d00 <_vfprintf_r+0x64c>
   11b90:	02813703          	ld	a4,40(sp)
   11b94:	040c7c13          	andi	s8,s8,64
   11b98:	00073783          	ld	a5,0(a4)
   11b9c:	00870713          	addi	a4,a4,8
   11ba0:	02e13423          	sd	a4,40(sp)
   11ba4:	180c0263          	beqz	s8,11d28 <_vfprintf_r+0x1674>
   11ba8:	01c15703          	lhu	a4,28(sp)
   11bac:	00e79023          	sh	a4,0(a5)
   11bb0:	c25fe06f          	j	107d4 <_vfprintf_r+0x120>
   11bb4:	00072783          	lw	a5,0(a4)
   11bb8:	00870713          	addi	a4,a4,8
   11bbc:	02e13423          	sd	a4,40(sp)
   11bc0:	d24ff06f          	j	110e4 <_vfprintf_r+0xa30>
   11bc4:	080107a3          	sb	zero,143(sp)
   11bc8:	ec044463          	bltz	s0,11290 <_vfprintf_r+0xbdc>
   11bcc:	f7fc7c13          	andi	s8,s8,-129
   11bd0:	d41fe06f          	j	10910 <_vfprintf_r+0x25c>
   11bd4:	0b812703          	lw	a4,184(sp)
   11bd8:	00913823          	sd	s1,16(sp)
   11bdc:	b74ff06f          	j	10f50 <_vfprintf_r+0x89c>
   11be0:	0b010613          	addi	a2,sp,176
   11be4:	000a0593          	mv	a1,s4
   11be8:	000b8513          	mv	a0,s7
   11bec:	4ed040ef          	jal	168d8 <__sprint_r>
   11bf0:	00050463          	beqz	a0,11bf8 <_vfprintf_r+0x1544>
   11bf4:	dd1fe06f          	j	109c4 <_vfprintf_r+0x310>
   11bf8:	0c013783          	ld	a5,192(sp)
   11bfc:	000b0893          	mv	a7,s6
   11c00:	ff0ff06f          	j	113f0 <_vfprintf_r+0xd3c>
   11c04:	0b812703          	lw	a4,184(sp)
   11c08:	000196b7          	lui	a3,0x19
   11c0c:	6e868693          	addi	a3,a3,1768 # 196e8 <zeroes.4137+0x70>
   11c10:	00d8b023          	sd	a3,0(a7)
   11c14:	00178793          	addi	a5,a5,1
   11c18:	00100693          	li	a3,1
   11c1c:	0017071b          	addiw	a4,a4,1
   11c20:	00d8b423          	sd	a3,8(a7)
   11c24:	0cf13023          	sd	a5,192(sp)
   11c28:	0ae12c23          	sw	a4,184(sp)
   11c2c:	00700693          	li	a3,7
   11c30:	01088893          	addi	a7,a7,16
   11c34:	16e6ca63          	blt	a3,a4,11da8 <_vfprintf_r+0x16f4>
   11c38:	12040663          	beqz	s0,11d64 <_vfprintf_r+0x16b0>
   11c3c:	06013703          	ld	a4,96(sp)
   11c40:	06813683          	ld	a3,104(sp)
   11c44:	01088893          	addi	a7,a7,16
   11c48:	fee8b823          	sd	a4,-16(a7)
   11c4c:	0b812703          	lw	a4,184(sp)
   11c50:	00f687b3          	add	a5,a3,a5
   11c54:	fed8bc23          	sd	a3,-8(a7)
   11c58:	0017071b          	addiw	a4,a4,1
   11c5c:	0cf13023          	sd	a5,192(sp)
   11c60:	0ae12c23          	sw	a4,184(sp)
   11c64:	00700693          	li	a3,7
   11c68:	3ee6ca63          	blt	a3,a4,1205c <_vfprintf_r+0x19a8>
   11c6c:	4080043b          	negw	s0,s0
   11c70:	20805263          	blez	s0,11e74 <_vfprintf_r+0x17c0>
   11c74:	01000693          	li	a3,16
   11c78:	1a86d663          	ble	s0,a3,11e24 <_vfprintf_r+0x1770>
   11c7c:	01000d13          	li	s10,16
   11c80:	00913823          	sd	s1,16(sp)
   11c84:	00700813          	li	a6,7
   11c88:	000d0693          	mv	a3,s10
   11c8c:	00c0006f          	j	11c98 <_vfprintf_r+0x15e4>
   11c90:	ff04041b          	addiw	s0,s0,-16
   11c94:	1886da63          	ble	s0,a3,11e28 <_vfprintf_r+0x1774>
   11c98:	01078793          	addi	a5,a5,16
   11c9c:	0017071b          	addiw	a4,a4,1
   11ca0:	0098b023          	sd	s1,0(a7)
   11ca4:	01a8b423          	sd	s10,8(a7)
   11ca8:	0cf13023          	sd	a5,192(sp)
   11cac:	0ae12c23          	sw	a4,184(sp)
   11cb0:	01088893          	addi	a7,a7,16
   11cb4:	fce85ee3          	ble	a4,a6,11c90 <_vfprintf_r+0x15dc>
   11cb8:	0b010613          	addi	a2,sp,176
   11cbc:	000a0593          	mv	a1,s4
   11cc0:	000b8513          	mv	a0,s7
   11cc4:	02d13023          	sd	a3,32(sp)
   11cc8:	01013023          	sd	a6,0(sp)
   11ccc:	40d040ef          	jal	168d8 <__sprint_r>
   11cd0:	00050463          	beqz	a0,11cd8 <_vfprintf_r+0x1624>
   11cd4:	cf1fe06f          	j	109c4 <_vfprintf_r+0x310>
   11cd8:	0c013783          	ld	a5,192(sp)
   11cdc:	0b812703          	lw	a4,184(sp)
   11ce0:	000b0893          	mv	a7,s6
   11ce4:	02013683          	ld	a3,32(sp)
   11ce8:	00013803          	ld	a6,0(sp)
   11cec:	fa5ff06f          	j	11c90 <_vfprintf_r+0x15dc>
   11cf0:	fff00513          	li	a0,-1
   11cf4:	ce5fe06f          	j	109d8 <_vfprintf_r+0x324>
   11cf8:	04700793          	li	a5,71
   11cfc:	27a7c863          	blt	a5,s10,11f6c <_vfprintf_r+0x18b8>
   11d00:	00019937          	lui	s2,0x19
   11d04:	6a090913          	addi	s2,s2,1696 # 196a0 <zeroes.4137+0x28>
   11d08:	00300793          	li	a5,3
   11d0c:	00f12423          	sw	a5,8(sp)
   11d10:	f7fc7c13          	andi	s8,s8,-129
   11d14:	08f14603          	lbu	a2,143(sp)
   11d18:	02f12023          	sw	a5,32(sp)
   11d1c:	00000413          	li	s0,0
   11d20:	04012623          	sw	zero,76(sp)
   11d24:	da5fe06f          	j	10ac8 <_vfprintf_r+0x414>
   11d28:	01c12703          	lw	a4,28(sp)
   11d2c:	00e7a023          	sw	a4,0(a5)
   11d30:	aa5fe06f          	j	107d4 <_vfprintf_r+0x120>
   11d34:	00019937          	lui	s2,0x19
   11d38:	69090913          	addi	s2,s2,1680 # 19690 <zeroes.4137+0x18>
   11d3c:	c34ff06f          	j	11170 <_vfprintf_r+0xabc>
   11d40:	0b010613          	addi	a2,sp,176
   11d44:	000a0593          	mv	a1,s4
   11d48:	000b8513          	mv	a0,s7
   11d4c:	38d040ef          	jal	168d8 <__sprint_r>
   11d50:	00050463          	beqz	a0,11d58 <_vfprintf_r+0x16a4>
   11d54:	c71fe06f          	j	109c4 <_vfprintf_r+0x310>
   11d58:	0c013783          	ld	a5,192(sp)
   11d5c:	000b0893          	mv	a7,s6
   11d60:	931ff06f          	j	11690 <_vfprintf_r+0xfdc>
   11d64:	07012703          	lw	a4,112(sp)
   11d68:	ec071ae3          	bnez	a4,11c3c <_vfprintf_r+0x1588>
   11d6c:	001c7713          	andi	a4,s8,1
   11d70:	a4070c63          	beqz	a4,10fc8 <_vfprintf_r+0x914>
   11d74:	ec9ff06f          	j	11c3c <_vfprintf_r+0x1588>
   11d78:	0b010613          	addi	a2,sp,176
   11d7c:	000a0593          	mv	a1,s4
   11d80:	000b8513          	mv	a0,s7
   11d84:	355040ef          	jal	168d8 <__sprint_r>
   11d88:	00050463          	beqz	a0,11d90 <_vfprintf_r+0x16dc>
   11d8c:	c39fe06f          	j	109c4 <_vfprintf_r+0x310>
   11d90:	09812703          	lw	a4,152(sp)
   11d94:	07012683          	lw	a3,112(sp)
   11d98:	0c013783          	ld	a5,192(sp)
   11d9c:	000b0893          	mv	a7,s6
   11da0:	40e6873b          	subw	a4,a3,a4
   11da4:	b15ff06f          	j	118b8 <_vfprintf_r+0x1204>
   11da8:	0b010613          	addi	a2,sp,176
   11dac:	000a0593          	mv	a1,s4
   11db0:	000b8513          	mv	a0,s7
   11db4:	325040ef          	jal	168d8 <__sprint_r>
   11db8:	00050463          	beqz	a0,11dc0 <_vfprintf_r+0x170c>
   11dbc:	c09fe06f          	j	109c4 <_vfprintf_r+0x310>
   11dc0:	09812403          	lw	s0,152(sp)
   11dc4:	0c013783          	ld	a5,192(sp)
   11dc8:	000b0893          	mv	a7,s6
   11dcc:	e60418e3          	bnez	s0,11c3c <_vfprintf_r+0x1588>
   11dd0:	f95ff06f          	j	11d64 <_vfprintf_r+0x16b0>
   11dd4:	001c7793          	andi	a5,s8,1
   11dd8:	00078e63          	beqz	a5,11df4 <_vfprintf_r+0x1740>
   11ddc:	03000793          	li	a5,48
   11de0:	0ef107a3          	sb	a5,239(sp)
   11de4:	07813783          	ld	a5,120(sp)
   11de8:	0ef10913          	addi	s2,sp,239
   11dec:	02f12023          	sw	a5,32(sp)
   11df0:	cc1fe06f          	j	10ab0 <_vfprintf_r+0x3fc>
   11df4:	02012023          	sw	zero,32(sp)
   11df8:	000b0913          	mv	s2,s6
   11dfc:	cb5fe06f          	j	10ab0 <_vfprintf_r+0x3fc>
   11e00:	0b010613          	addi	a2,sp,176
   11e04:	000a0593          	mv	a1,s4
   11e08:	000b8513          	mv	a0,s7
   11e0c:	2cd040ef          	jal	168d8 <__sprint_r>
   11e10:	00050463          	beqz	a0,11e18 <_vfprintf_r+0x1764>
   11e14:	bb1fe06f          	j	109c4 <_vfprintf_r+0x310>
   11e18:	0c013783          	ld	a5,192(sp)
   11e1c:	000b0893          	mv	a7,s6
   11e20:	e14ff06f          	j	11434 <_vfprintf_r+0xd80>
   11e24:	00913823          	sd	s1,16(sp)
   11e28:	01013683          	ld	a3,16(sp)
   11e2c:	008787b3          	add	a5,a5,s0
   11e30:	0017071b          	addiw	a4,a4,1
   11e34:	00d8b023          	sd	a3,0(a7)
   11e38:	0088b423          	sd	s0,8(a7)
   11e3c:	0cf13023          	sd	a5,192(sp)
   11e40:	0ae12c23          	sw	a4,184(sp)
   11e44:	00700693          	li	a3,7
   11e48:	01088893          	addi	a7,a7,16
   11e4c:	02e6d463          	ble	a4,a3,11e74 <_vfprintf_r+0x17c0>
   11e50:	0b010613          	addi	a2,sp,176
   11e54:	000a0593          	mv	a1,s4
   11e58:	000b8513          	mv	a0,s7
   11e5c:	27d040ef          	jal	168d8 <__sprint_r>
   11e60:	00050463          	beqz	a0,11e68 <_vfprintf_r+0x17b4>
   11e64:	b61fe06f          	j	109c4 <_vfprintf_r+0x310>
   11e68:	0c013783          	ld	a5,192(sp)
   11e6c:	0b812703          	lw	a4,184(sp)
   11e70:	000b0893          	mv	a7,s6
   11e74:	07012683          	lw	a3,112(sp)
   11e78:	0017071b          	addiw	a4,a4,1
   11e7c:	0128b023          	sd	s2,0(a7)
   11e80:	00f687b3          	add	a5,a3,a5
   11e84:	cecff06f          	j	11370 <_vfprintf_r+0xcbc>
   11e88:	00090513          	mv	a0,s2
   11e8c:	091040ef          	jal	1671c <strlen>
   11e90:	0005079b          	sext.w	a5,a0
   11e94:	02f12023          	sw	a5,32(sp)
   11e98:	00078d93          	mv	s11,a5
   11e9c:	00013883          	ld	a7,0(sp)
   11ea0:	0007c463          	bltz	a5,11ea8 <_vfprintf_r+0x17f4>
   11ea4:	cf5fe06f          	j	10b98 <_vfprintf_r+0x4e4>
   11ea8:	00000d93          	li	s11,0
   11eac:	cedfe06f          	j	10b98 <_vfprintf_r+0x4e4>
   11eb0:	0c013783          	ld	a5,192(sp)
   11eb4:	0b812703          	lw	a4,184(sp)
   11eb8:	05513823          	sd	s5,80(sp)
   11ebc:	f6dfe06f          	j	10e28 <_vfprintf_r+0x774>
   11ec0:	00000413          	li	s0,0
   11ec4:	fd0ff06f          	j	11694 <_vfprintf_r+0xfe0>
   11ec8:	00000413          	li	s0,0
   11ecc:	9f1ff06f          	j	118bc <_vfprintf_r+0x1208>
   11ed0:	02d00613          	li	a2,45
   11ed4:	00100713          	li	a4,1
   11ed8:	00100693          	li	a3,1
   11edc:	00d71463          	bne	a4,a3,11ee4 <_vfprintf_r+0x1830>
   11ee0:	d05fe06f          	j	10be4 <_vfprintf_r+0x530>
   11ee4:	00200693          	li	a3,2
   11ee8:	00d71463          	bne	a4,a3,11ef0 <_vfprintf_r+0x183c>
   11eec:	a31fe06f          	j	1091c <_vfprintf_r+0x268>
   11ef0:	b81fe06f          	j	10a70 <_vfprintf_r+0x3bc>
   11ef4:	00600713          	li	a4,6
   11ef8:	00877463          	bleu	s0,a4,11f00 <_vfprintf_r+0x184c>
   11efc:	00070413          	mv	s0,a4
   11f00:	02812023          	sw	s0,32(sp)
   11f04:	00040d93          	mv	s11,s0
   11f08:	32044a63          	bltz	s0,1223c <_vfprintf_r+0x1b88>
   11f0c:	00019937          	lui	s2,0x19
   11f10:	01b12423          	sw	s11,8(sp)
   11f14:	03913423          	sd	s9,40(sp)
   11f18:	00000613          	li	a2,0
   11f1c:	00000413          	li	s0,0
   11f20:	04012623          	sw	zero,76(sp)
   11f24:	6e090913          	addi	s2,s2,1760 # 196e0 <zeroes.4137+0x68>
   11f28:	e45fe06f          	j	10d6c <_vfprintf_r+0x6b8>
   11f2c:	0b812703          	lw	a4,184(sp)
   11f30:	05513823          	sd	s5,80(sp)
   11f34:	91cff06f          	j	11050 <_vfprintf_r+0x99c>
   11f38:	00070c13          	mv	s8,a4
   11f3c:	00000613          	li	a2,0
   11f40:	00200713          	li	a4,2
   11f44:	f95ff06f          	j	11ed8 <_vfprintf_r+0x1824>
   11f48:	001c7793          	andi	a5,s8,1
   11f4c:	00b50733          	add	a4,a0,a1
   11f50:	b8079ce3          	bnez	a5,11ae8 <_vfprintf_r+0x1434>
   11f54:	0a813783          	ld	a5,168(sp)
   11f58:	bc1ff06f          	j	11b18 <_vfprintf_r+0x1464>
   11f5c:	02d00793          	li	a5,45
   11f60:	08f107a3          	sb	a5,143(sp)
   11f64:	02d00613          	li	a2,45
   11f68:	9f8ff06f          	j	11160 <_vfprintf_r+0xaac>
   11f6c:	00019937          	lui	s2,0x19
   11f70:	6a890913          	addi	s2,s2,1704 # 196a8 <zeroes.4137+0x30>
   11f74:	d95ff06f          	j	11d08 <_vfprintf_r+0x1654>
   11f78:	001c7793          	andi	a5,s8,1
   11f7c:	26079a63          	bnez	a5,121f0 <_vfprintf_r+0x1b3c>
   11f80:	0a813783          	ld	a5,168(sp)
   11f84:	412787b3          	sub	a5,a5,s2
   11f88:	06f12823          	sw	a5,112(sp)
   11f8c:	35ad9c63          	bne	s11,s10,122e4 <_vfprintf_r+0x1c30>
   11f90:	09812783          	lw	a5,152(sp)
   11f94:	ffd00713          	li	a4,-3
   11f98:	02e7cc63          	blt	a5,a4,11fd0 <_vfprintf_r+0x191c>
   11f9c:	02f44a63          	blt	s0,a5,11fd0 <_vfprintf_r+0x191c>
   11fa0:	04f12623          	sw	a5,76(sp)
   11fa4:	b9dff06f          	j	11b40 <_vfprintf_r+0x148c>
   11fa8:	02d00713          	li	a4,45
   11fac:	08e107a3          	sb	a4,143(sp)
   11fb0:	00f12423          	sw	a5,8(sp)
   11fb4:	00012c03          	lw	s8,0(sp)
   11fb8:	02d00613          	li	a2,45
   11fbc:	00000413          	li	s0,0
   11fc0:	b0dfe06f          	j	10acc <_vfprintf_r+0x418>
   11fc4:	0b812703          	lw	a4,184(sp)
   11fc8:	00913823          	sd	s1,16(sp)
   11fcc:	d78ff06f          	j	11544 <_vfprintf_r+0xe90>
   11fd0:	ffed0d1b          	addiw	s10,s10,-2
   11fd4:	fff7879b          	addiw	a5,a5,-1
   11fd8:	08f12c23          	sw	a5,152(sp)
   11fdc:	0ba10023          	sb	s10,160(sp)
   11fe0:	2c07c863          	bltz	a5,122b0 <_vfprintf_r+0x1bfc>
   11fe4:	02b00713          	li	a4,43
   11fe8:	0ae100a3          	sb	a4,161(sp)
   11fec:	00900613          	li	a2,9
   11ff0:	16f64463          	blt	a2,a5,12158 <_vfprintf_r+0x1aa4>
   11ff4:	0307879b          	addiw	a5,a5,48
   11ff8:	03000713          	li	a4,48
   11ffc:	0af101a3          	sb	a5,163(sp)
   12000:	0ae10123          	sb	a4,162(sp)
   12004:	0a410793          	addi	a5,sp,164
   12008:	0a010713          	addi	a4,sp,160
   1200c:	40e787bb          	subw	a5,a5,a4
   12010:	07012703          	lw	a4,112(sp)
   12014:	06f12a23          	sw	a5,116(sp)
   12018:	00e787bb          	addw	a5,a5,a4
   1201c:	02f12023          	sw	a5,32(sp)
   12020:	00100793          	li	a5,1
   12024:	26e7d263          	ble	a4,a5,12288 <_vfprintf_r+0x1bd4>
   12028:	02012783          	lw	a5,32(sp)
   1202c:	0017879b          	addiw	a5,a5,1
   12030:	02f12023          	sw	a5,32(sp)
   12034:	2607c463          	bltz	a5,1229c <_vfprintf_r+0x1be8>
   12038:	04012623          	sw	zero,76(sp)
   1203c:	b2dff06f          	j	11b68 <_vfprintf_r+0x14b4>
   12040:	00812423          	sw	s0,8(sp)
   12044:	02812023          	sw	s0,32(sp)
   12048:	08f14603          	lbu	a2,143(sp)
   1204c:	03913423          	sd	s9,40(sp)
   12050:	00000413          	li	s0,0
   12054:	04012623          	sw	zero,76(sp)
   12058:	a71fe06f          	j	10ac8 <_vfprintf_r+0x414>
   1205c:	0b010613          	addi	a2,sp,176
   12060:	000a0593          	mv	a1,s4
   12064:	000b8513          	mv	a0,s7
   12068:	071040ef          	jal	168d8 <__sprint_r>
   1206c:	00050463          	beqz	a0,12074 <_vfprintf_r+0x19c0>
   12070:	955fe06f          	j	109c4 <_vfprintf_r+0x310>
   12074:	09812403          	lw	s0,152(sp)
   12078:	0c013783          	ld	a5,192(sp)
   1207c:	0b812703          	lw	a4,184(sp)
   12080:	000b0893          	mv	a7,s6
   12084:	be9ff06f          	j	11c6c <_vfprintf_r+0x15b8>
   12088:	9e0410e3          	bnez	s0,11a68 <_vfprintf_r+0x13b4>
   1208c:	00090413          	mv	s0,s2
   12090:	9d9ff06f          	j	11a68 <_vfprintf_r+0x13b4>
   12094:	00600413          	li	s0,6
   12098:	9d1ff06f          	j	11a68 <_vfprintf_r+0x13b4>
   1209c:	228405d3          	fmv.d	fa1,fs0
   120a0:	09810713          	addi	a4,sp,152
   120a4:	0a810813          	addi	a6,sp,168
   120a8:	09c10793          	addi	a5,sp,156
   120ac:	00040693          	mv	a3,s0
   120b0:	00300613          	li	a2,3
   120b4:	000b8513          	mv	a0,s7
   120b8:	01113423          	sd	a7,8(sp)
   120bc:	14d000ef          	jal	12a08 <_dtoa_r>
   120c0:	00813883          	ld	a7,8(sp)
   120c4:	00040713          	mv	a4,s0
   120c8:	00050913          	mv	s2,a0
   120cc:	00e50733          	add	a4,a0,a4
   120d0:	00040593          	mv	a1,s0
   120d4:	00094683          	lbu	a3,0(s2)
   120d8:	03000793          	li	a5,48
   120dc:	14f68063          	beq	a3,a5,1221c <_vfprintf_r+0x1b68>
   120e0:	09812583          	lw	a1,152(sp)
   120e4:	00b70733          	add	a4,a4,a1
   120e8:	a01ff06f          	j	11ae8 <_vfprintf_r+0x1434>
   120ec:	22841453          	fneg.d	fs0,fs0
   120f0:	02d00c93          	li	s9,45
   120f4:	991ff06f          	j	11a84 <_vfprintf_r+0x13d0>
   120f8:	04c12703          	lw	a4,76(sp)
   120fc:	00100793          	li	a5,1
   12100:	1ae05263          	blez	a4,122a4 <_vfprintf_r+0x1bf0>
   12104:	07012703          	lw	a4,112(sp)
   12108:	00e787bb          	addw	a5,a5,a4
   1210c:	02f12023          	sw	a5,32(sp)
   12110:	0007ce63          	bltz	a5,1212c <_vfprintf_r+0x1a78>
   12114:	06700d13          	li	s10,103
   12118:	a51ff06f          	j	11b68 <_vfprintf_r+0x14b4>
   1211c:	04c12783          	lw	a5,76(sp)
   12120:	0017879b          	addiw	a5,a5,1
   12124:	02f12023          	sw	a5,32(sp)
   12128:	fe07d6e3          	bgez	a5,12114 <_vfprintf_r+0x1a60>
   1212c:	00000793          	li	a5,0
   12130:	06700d13          	li	s10,103
   12134:	a35ff06f          	j	11b68 <_vfprintf_r+0x14b4>
   12138:	09812783          	lw	a5,152(sp)
   1213c:	04f12623          	sw	a5,76(sp)
   12140:	12f05263          	blez	a5,12264 <_vfprintf_r+0x1bb0>
   12144:	0a041e63          	bnez	s0,12200 <_vfprintf_r+0x1b4c>
   12148:	001c7c13          	andi	s8,s8,1
   1214c:	0a0c1a63          	bnez	s8,12200 <_vfprintf_r+0x1b4c>
   12150:	02f12023          	sw	a5,32(sp)
   12154:	a15ff06f          	j	11b68 <_vfprintf_r+0x14b4>
   12158:	0af10593          	addi	a1,sp,175
   1215c:	00058713          	mv	a4,a1
   12160:	00a00513          	li	a0,10
   12164:	02a7e6bb          	remw	a3,a5,a0
   12168:	fff70713          	addi	a4,a4,-1
   1216c:	02a7c7bb          	divw	a5,a5,a0
   12170:	0306869b          	addiw	a3,a3,48
   12174:	00d70023          	sb	a3,0(a4)
   12178:	fef646e3          	blt	a2,a5,12164 <_vfprintf_r+0x1ab0>
   1217c:	0307879b          	addiw	a5,a5,48
   12180:	0ff7f793          	andi	a5,a5,255
   12184:	fff70693          	addi	a3,a4,-1
   12188:	fef70fa3          	sb	a5,-1(a4)
   1218c:	16b6f863          	bleu	a1,a3,122fc <_vfprintf_r+0x1c48>
   12190:	0a210613          	addi	a2,sp,162
   12194:	0080006f          	j	1219c <_vfprintf_r+0x1ae8>
   12198:	0006c783          	lbu	a5,0(a3)
   1219c:	00160613          	addi	a2,a2,1
   121a0:	00168693          	addi	a3,a3,1
   121a4:	fef60fa3          	sb	a5,-1(a2)
   121a8:	feb698e3          	bne	a3,a1,12198 <_vfprintf_r+0x1ae4>
   121ac:	0b010793          	addi	a5,sp,176
   121b0:	40e787b3          	sub	a5,a5,a4
   121b4:	0a210713          	addi	a4,sp,162
   121b8:	00f707b3          	add	a5,a4,a5
   121bc:	e4dff06f          	j	12008 <_vfprintf_r+0x1954>
   121c0:	228405d3          	fmv.d	fa1,fs0
   121c4:	0a810813          	addi	a6,sp,168
   121c8:	09c10793          	addi	a5,sp,156
   121cc:	09810713          	addi	a4,sp,152
   121d0:	00040693          	mv	a3,s0
   121d4:	00300613          	li	a2,3
   121d8:	000b8513          	mv	a0,s7
   121dc:	01113423          	sd	a7,8(sp)
   121e0:	029000ef          	jal	12a08 <_dtoa_r>
   121e4:	00813883          	ld	a7,8(sp)
   121e8:	00050913          	mv	s2,a0
   121ec:	00040593          	mv	a1,s0
   121f0:	04600793          	li	a5,70
   121f4:	00b90733          	add	a4,s2,a1
   121f8:	ecfd0ee3          	beq	s10,a5,120d4 <_vfprintf_r+0x1a20>
   121fc:	8edff06f          	j	11ae8 <_vfprintf_r+0x1434>
   12200:	04c12783          	lw	a5,76(sp)
   12204:	0014041b          	addiw	s0,s0,1
   12208:	008787bb          	addw	a5,a5,s0
   1220c:	02f12023          	sw	a5,32(sp)
   12210:	9407dce3          	bgez	a5,11b68 <_vfprintf_r+0x14b4>
   12214:	00000793          	li	a5,0
   12218:	951ff06f          	j	11b68 <_vfprintf_r+0x14b4>
   1221c:	f20007d3          	fmv.d.x	fa5,zero
   12220:	a2f427d3          	feq.d	a5,fs0,fa5
   12224:	ea079ee3          	bnez	a5,120e0 <_vfprintf_r+0x1a2c>
   12228:	00100793          	li	a5,1
   1222c:	40b785bb          	subw	a1,a5,a1
   12230:	08b12c23          	sw	a1,152(sp)
   12234:	00b70733          	add	a4,a4,a1
   12238:	8b1ff06f          	j	11ae8 <_vfprintf_r+0x1434>
   1223c:	00000d93          	li	s11,0
   12240:	ccdff06f          	j	11f0c <_vfprintf_r+0x1858>
   12244:	02813783          	ld	a5,40(sp)
   12248:	0007a403          	lw	s0,0(a5)
   1224c:	00878793          	addi	a5,a5,8
   12250:	02f13423          	sd	a5,40(sp)
   12254:	00044463          	bltz	s0,1225c <_vfprintf_r+0x1ba8>
   12258:	e18fe06f          	j	10870 <_vfprintf_r+0x1bc>
   1225c:	fff00413          	li	s0,-1
   12260:	e10fe06f          	j	10870 <_vfprintf_r+0x1bc>
   12264:	00041a63          	bnez	s0,12278 <_vfprintf_r+0x1bc4>
   12268:	00100793          	li	a5,1
   1226c:	00fc7c33          	and	s8,s8,a5
   12270:	02f12023          	sw	a5,32(sp)
   12274:	8e0c0ae3          	beqz	s8,11b68 <_vfprintf_r+0x14b4>
   12278:	0024079b          	addiw	a5,s0,2
   1227c:	02f12023          	sw	a5,32(sp)
   12280:	8e07d4e3          	bgez	a5,11b68 <_vfprintf_r+0x14b4>
   12284:	f91ff06f          	j	12214 <_vfprintf_r+0x1b60>
   12288:	00fc7c33          	and	s8,s8,a5
   1228c:	d80c1ee3          	bnez	s8,12028 <_vfprintf_r+0x1974>
   12290:	02012703          	lw	a4,32(sp)
   12294:	00070793          	mv	a5,a4
   12298:	da0750e3          	bgez	a4,12038 <_vfprintf_r+0x1984>
   1229c:	00000793          	li	a5,0
   122a0:	d99ff06f          	j	12038 <_vfprintf_r+0x1984>
   122a4:	00200793          	li	a5,2
   122a8:	40e787bb          	subw	a5,a5,a4
   122ac:	e59ff06f          	j	12104 <_vfprintf_r+0x1a50>
   122b0:	02d00713          	li	a4,45
   122b4:	40f007bb          	negw	a5,a5
   122b8:	0ae100a3          	sb	a4,161(sp)
   122bc:	d31ff06f          	j	11fec <_vfprintf_r+0x1938>
   122c0:	08b107a3          	sb	a1,143(sp)
   122c4:	ed9fe06f          	j	1119c <_vfprintf_r+0xae8>
   122c8:	00000793          	li	a5,0
   122cc:	891ff06f          	j	11b5c <_vfprintf_r+0x14a8>
   122d0:	08b107a3          	sb	a1,143(sp)
   122d4:	010c6c13          	ori	s8,s8,16
   122d8:	f2dfe06f          	j	11204 <_vfprintf_r+0xb50>
   122dc:	08b107a3          	sb	a1,143(sp)
   122e0:	ef5fe06f          	j	111d4 <_vfprintf_r+0xb20>
   122e4:	09812783          	lw	a5,152(sp)
   122e8:	cedff06f          	j	11fd4 <_vfprintf_r+0x1920>
   122ec:	08b107a3          	sb	a1,143(sp)
   122f0:	e2dfe06f          	j	1111c <_vfprintf_r+0xa68>
   122f4:	08b107a3          	sb	a1,143(sp)
   122f8:	dd5fe06f          	j	110cc <_vfprintf_r+0xa18>
   122fc:	0a210793          	addi	a5,sp,162
   12300:	d09ff06f          	j	12008 <_vfprintf_r+0x1954>
   12304:	08b107a3          	sb	a1,143(sp)
   12308:	f41fe06f          	j	11248 <_vfprintf_r+0xb94>
   1230c:	08b107a3          	sb	a1,143(sp)
   12310:	f28fe06f          	j	10a38 <_vfprintf_r+0x384>
   12314:	08b107a3          	sb	a1,143(sp)
   12318:	9c5fe06f          	j	10cdc <_vfprintf_r+0x628>
   1231c:	08b107a3          	sb	a1,143(sp)
   12320:	010c6c13          	ori	s8,s8,16
   12324:	979fe06f          	j	10c9c <_vfprintf_r+0x5e8>
   12328:	08b107a3          	sb	a1,143(sp)
   1232c:	010c6c13          	ori	s8,s8,16
   12330:	929fe06f          	j	10c58 <_vfprintf_r+0x5a4>
   12334:	08b107a3          	sb	a1,143(sp)
   12338:	881fe06f          	j	10bb8 <_vfprintf_r+0x504>

000000000001233c <vfprintf>:
   1233c:	00060693          	mv	a3,a2
   12340:	00058613          	mv	a2,a1
   12344:	00050593          	mv	a1,a0
   12348:	8101b503          	ld	a0,-2032(gp) # 1b7d0 <_impure_ptr>
   1234c:	b68fe06f          	j	106b4 <_vfprintf_r>

0000000000012350 <__sbprintf>:
   12350:	0105d783          	lhu	a5,16(a1)
   12354:	0ac5ae03          	lw	t3,172(a1)
   12358:	0125d303          	lhu	t1,18(a1)
   1235c:	0305b883          	ld	a7,48(a1)
   12360:	0405b803          	ld	a6,64(a1)
   12364:	b3010113          	addi	sp,sp,-1232
   12368:	ffd7f793          	andi	a5,a5,-3
   1236c:	40000713          	li	a4,1024
   12370:	4c813023          	sd	s0,1216(sp)
   12374:	00f11823          	sh	a5,16(sp)
   12378:	00058413          	mv	s0,a1
   1237c:	0b010793          	addi	a5,sp,176
   12380:	00010593          	mv	a1,sp
   12384:	4a913c23          	sd	s1,1208(sp)
   12388:	4b213823          	sd	s2,1200(sp)
   1238c:	4c113423          	sd	ra,1224(sp)
   12390:	00050913          	mv	s2,a0
   12394:	0bc12623          	sw	t3,172(sp)
   12398:	00611923          	sh	t1,18(sp)
   1239c:	03113823          	sd	a7,48(sp)
   123a0:	05013023          	sd	a6,64(sp)
   123a4:	00f13023          	sd	a5,0(sp)
   123a8:	00f13c23          	sd	a5,24(sp)
   123ac:	00e12623          	sw	a4,12(sp)
   123b0:	02e12023          	sw	a4,32(sp)
   123b4:	02012423          	sw	zero,40(sp)
   123b8:	afcfe0ef          	jal	106b4 <_vfprintf_r>
   123bc:	00050493          	mv	s1,a0
   123c0:	00054a63          	bltz	a0,123d4 <__sbprintf+0x84>
   123c4:	00010593          	mv	a1,sp
   123c8:	00090513          	mv	a0,s2
   123cc:	1a5010ef          	jal	13d70 <_fflush_r>
   123d0:	02051c63          	bnez	a0,12408 <__sbprintf+0xb8>
   123d4:	01015783          	lhu	a5,16(sp)
   123d8:	0407f793          	andi	a5,a5,64
   123dc:	00078863          	beqz	a5,123ec <__sbprintf+0x9c>
   123e0:	01045783          	lhu	a5,16(s0)
   123e4:	0407e793          	ori	a5,a5,64
   123e8:	00f41823          	sh	a5,16(s0)
   123ec:	4c813083          	ld	ra,1224(sp)
   123f0:	00048513          	mv	a0,s1
   123f4:	4c013403          	ld	s0,1216(sp)
   123f8:	4b813483          	ld	s1,1208(sp)
   123fc:	4b013903          	ld	s2,1200(sp)
   12400:	4d010113          	addi	sp,sp,1232
   12404:	00008067          	ret
   12408:	fff00493          	li	s1,-1
   1240c:	fc9ff06f          	j	123d4 <__sbprintf+0x84>

0000000000012410 <__swsetup_r>:
   12410:	8101b783          	ld	a5,-2032(gp) # 1b7d0 <_impure_ptr>
   12414:	fe010113          	addi	sp,sp,-32
   12418:	00813823          	sd	s0,16(sp)
   1241c:	00913423          	sd	s1,8(sp)
   12420:	00113c23          	sd	ra,24(sp)
   12424:	00050493          	mv	s1,a0
   12428:	00058413          	mv	s0,a1
   1242c:	00078663          	beqz	a5,12438 <__swsetup_r+0x28>
   12430:	0507a703          	lw	a4,80(a5)
   12434:	0e070063          	beqz	a4,12514 <__swsetup_r+0x104>
   12438:	01041703          	lh	a4,16(s0)
   1243c:	03071793          	slli	a5,a4,0x30
   12440:	0307d793          	srli	a5,a5,0x30
   12444:	0087f693          	andi	a3,a5,8
   12448:	04068263          	beqz	a3,1248c <__swsetup_r+0x7c>
   1244c:	01843683          	ld	a3,24(s0)
   12450:	06068663          	beqz	a3,124bc <__swsetup_r+0xac>
   12454:	0017f713          	andi	a4,a5,1
   12458:	08071463          	bnez	a4,124e0 <__swsetup_r+0xd0>
   1245c:	0027f793          	andi	a5,a5,2
   12460:	00000713          	li	a4,0
   12464:	00079463          	bnez	a5,1246c <__swsetup_r+0x5c>
   12468:	02042703          	lw	a4,32(s0)
   1246c:	00e42623          	sw	a4,12(s0)
   12470:	00000513          	li	a0,0
   12474:	08068263          	beqz	a3,124f8 <__swsetup_r+0xe8>
   12478:	01813083          	ld	ra,24(sp)
   1247c:	01013403          	ld	s0,16(sp)
   12480:	00813483          	ld	s1,8(sp)
   12484:	02010113          	addi	sp,sp,32
   12488:	00008067          	ret
   1248c:	0107f693          	andi	a3,a5,16
   12490:	0c068663          	beqz	a3,1255c <__swsetup_r+0x14c>
   12494:	0047f793          	andi	a5,a5,4
   12498:	08079463          	bnez	a5,12520 <__swsetup_r+0x110>
   1249c:	01843683          	ld	a3,24(s0)
   124a0:	00876793          	ori	a5,a4,8
   124a4:	0107979b          	slliw	a5,a5,0x10
   124a8:	4107d79b          	sraiw	a5,a5,0x10
   124ac:	00f41823          	sh	a5,16(s0)
   124b0:	03079793          	slli	a5,a5,0x30
   124b4:	0307d793          	srli	a5,a5,0x30
   124b8:	f8069ee3          	bnez	a3,12454 <__swsetup_r+0x44>
   124bc:	2807f713          	andi	a4,a5,640
   124c0:	20000613          	li	a2,512
   124c4:	f8c708e3          	beq	a4,a2,12454 <__swsetup_r+0x44>
   124c8:	00040593          	mv	a1,s0
   124cc:	00048513          	mv	a0,s1
   124d0:	2ec020ef          	jal	147bc <__smakebuf_r>
   124d4:	01045783          	lhu	a5,16(s0)
   124d8:	01843683          	ld	a3,24(s0)
   124dc:	f79ff06f          	j	12454 <__swsetup_r+0x44>
   124e0:	02042783          	lw	a5,32(s0)
   124e4:	00042623          	sw	zero,12(s0)
   124e8:	00000513          	li	a0,0
   124ec:	40f007bb          	negw	a5,a5
   124f0:	02f42423          	sw	a5,40(s0)
   124f4:	f80692e3          	bnez	a3,12478 <__swsetup_r+0x68>
   124f8:	01041783          	lh	a5,16(s0)
   124fc:	0807f713          	andi	a4,a5,128
   12500:	f6070ce3          	beqz	a4,12478 <__swsetup_r+0x68>
   12504:	0407e793          	ori	a5,a5,64
   12508:	00f41823          	sh	a5,16(s0)
   1250c:	fff00513          	li	a0,-1
   12510:	f69ff06f          	j	12478 <__swsetup_r+0x68>
   12514:	00078513          	mv	a0,a5
   12518:	405010ef          	jal	1411c <__sinit>
   1251c:	f1dff06f          	j	12438 <__swsetup_r+0x28>
   12520:	05843583          	ld	a1,88(s0)
   12524:	00058e63          	beqz	a1,12540 <__swsetup_r+0x130>
   12528:	07440793          	addi	a5,s0,116
   1252c:	00f58863          	beq	a1,a5,1253c <__swsetup_r+0x12c>
   12530:	00048513          	mv	a0,s1
   12534:	541010ef          	jal	14274 <_free_r>
   12538:	01041703          	lh	a4,16(s0)
   1253c:	04043c23          	sd	zero,88(s0)
   12540:	01843683          	ld	a3,24(s0)
   12544:	fdb77713          	andi	a4,a4,-37
   12548:	0107171b          	slliw	a4,a4,0x10
   1254c:	4107571b          	sraiw	a4,a4,0x10
   12550:	00042423          	sw	zero,8(s0)
   12554:	00d43023          	sd	a3,0(s0)
   12558:	f49ff06f          	j	124a0 <__swsetup_r+0x90>
   1255c:	00900793          	li	a5,9
   12560:	00f4a023          	sw	a5,0(s1)
   12564:	04076713          	ori	a4,a4,64
   12568:	00e41823          	sh	a4,16(s0)
   1256c:	fff00513          	li	a0,-1
   12570:	f09ff06f          	j	12478 <__swsetup_r+0x68>

0000000000012574 <__register_exitproc>:
   12574:	fd010113          	addi	sp,sp,-48
   12578:	02813023          	sd	s0,32(sp)
   1257c:	8081b403          	ld	s0,-2040(gp) # 1b7c8 <_global_impure_ptr>
   12580:	00913c23          	sd	s1,24(sp)
   12584:	00050493          	mv	s1,a0
   12588:	1f843503          	ld	a0,504(s0)
   1258c:	01213823          	sd	s2,16(sp)
   12590:	01313423          	sd	s3,8(sp)
   12594:	01413023          	sd	s4,0(sp)
   12598:	02113423          	sd	ra,40(sp)
   1259c:	00058913          	mv	s2,a1
   125a0:	00060a13          	mv	s4,a2
   125a4:	00068993          	mv	s3,a3
   125a8:	0c050663          	beqz	a0,12674 <__register_exitproc+0x100>
   125ac:	00852703          	lw	a4,8(a0)
   125b0:	01f00793          	li	a5,31
   125b4:	0017059b          	addiw	a1,a4,1
   125b8:	04e7d063          	ble	a4,a5,125f8 <__register_exitproc+0x84>
   125bc:	000007b7          	lui	a5,0x0
   125c0:	00078793          	mv	a5,a5
   125c4:	0a078e63          	beqz	a5,12680 <__register_exitproc+0x10c>
   125c8:	31800513          	li	a0,792
   125cc:	fffee317          	auipc	t1,0xfffee
   125d0:	a34300e7          	jalr	t1,-1484 # 0 <_ftext-0x10000>
   125d4:	0a050663          	beqz	a0,12680 <__register_exitproc+0x10c>
   125d8:	1f843783          	ld	a5,504(s0)
   125dc:	00052423          	sw	zero,8(a0)
   125e0:	00100593          	li	a1,1
   125e4:	00f53023          	sd	a5,0(a0)
   125e8:	1ea43c23          	sd	a0,504(s0)
   125ec:	30052823          	sw	zero,784(a0)
   125f0:	30052a23          	sw	zero,788(a0)
   125f4:	00000713          	li	a4,0
   125f8:	00070793          	mv	a5,a4
   125fc:	02049e63          	bnez	s1,12638 <__register_exitproc+0xc4>
   12600:	00278793          	addi	a5,a5,2 # 2 <_ftext-0xfffe>
   12604:	00379793          	slli	a5,a5,0x3
   12608:	00b52423          	sw	a1,8(a0)
   1260c:	00f50533          	add	a0,a0,a5
   12610:	01253023          	sd	s2,0(a0)
   12614:	00000513          	li	a0,0
   12618:	02813083          	ld	ra,40(sp)
   1261c:	02013403          	ld	s0,32(sp)
   12620:	01813483          	ld	s1,24(sp)
   12624:	01013903          	ld	s2,16(sp)
   12628:	00813983          	ld	s3,8(sp)
   1262c:	00013a03          	ld	s4,0(sp)
   12630:	03010113          	addi	sp,sp,48
   12634:	00008067          	ret
   12638:	00371813          	slli	a6,a4,0x3
   1263c:	01050833          	add	a6,a0,a6
   12640:	11483823          	sd	s4,272(a6)
   12644:	31052883          	lw	a7,784(a0)
   12648:	00100613          	li	a2,1
   1264c:	00e6173b          	sllw	a4,a2,a4
   12650:	00e8e633          	or	a2,a7,a4
   12654:	30c52823          	sw	a2,784(a0)
   12658:	21383823          	sd	s3,528(a6)
   1265c:	00200693          	li	a3,2
   12660:	fad490e3          	bne	s1,a3,12600 <__register_exitproc+0x8c>
   12664:	31452683          	lw	a3,788(a0)
   12668:	00e6e733          	or	a4,a3,a4
   1266c:	30e52a23          	sw	a4,788(a0)
   12670:	f91ff06f          	j	12600 <__register_exitproc+0x8c>
   12674:	20040513          	addi	a0,s0,512
   12678:	1ea43c23          	sd	a0,504(s0)
   1267c:	f31ff06f          	j	125ac <__register_exitproc+0x38>
   12680:	fff00513          	li	a0,-1
   12684:	f95ff06f          	j	12618 <__register_exitproc+0xa4>

0000000000012688 <__call_exitprocs>:
   12688:	fa010113          	addi	sp,sp,-96
   1268c:	03413823          	sd	s4,48(sp)
   12690:	8081ba03          	ld	s4,-2040(gp) # 1b7c8 <_global_impure_ptr>
   12694:	03313c23          	sd	s3,56(sp)
   12698:	000009b7          	lui	s3,0x0
   1269c:	04913423          	sd	s1,72(sp)
   126a0:	05213023          	sd	s2,64(sp)
   126a4:	03513423          	sd	s5,40(sp)
   126a8:	01713c23          	sd	s7,24(sp)
   126ac:	01813823          	sd	s8,16(sp)
   126b0:	04113c23          	sd	ra,88(sp)
   126b4:	04813823          	sd	s0,80(sp)
   126b8:	03613023          	sd	s6,32(sp)
   126bc:	01913423          	sd	s9,8(sp)
   126c0:	01a13023          	sd	s10,0(sp)
   126c4:	00050913          	mv	s2,a0
   126c8:	00058b93          	mv	s7,a1
   126cc:	1f8a0a93          	addi	s5,s4,504
   126d0:	00100493          	li	s1,1
   126d4:	fff00c13          	li	s8,-1
   126d8:	00098993          	mv	s3,s3
   126dc:	1f8a3b03          	ld	s6,504(s4)
   126e0:	0c0b0663          	beqz	s6,127ac <__call_exitprocs+0x124>
   126e4:	000a8d13          	mv	s10,s5
   126e8:	008b2403          	lw	s0,8(s6)
   126ec:	fff4041b          	addiw	s0,s0,-1
   126f0:	02045263          	bgez	s0,12714 <__call_exitprocs+0x8c>
   126f4:	08c0006f          	j	12780 <__call_exitprocs+0xf8>
   126f8:	02040793          	addi	a5,s0,32
   126fc:	00379793          	slli	a5,a5,0x3
   12700:	00fb07b3          	add	a5,s6,a5
   12704:	1107b783          	ld	a5,272(a5)
   12708:	00fb8a63          	beq	s7,a5,1271c <__call_exitprocs+0x94>
   1270c:	fff4041b          	addiw	s0,s0,-1
   12710:	07840863          	beq	s0,s8,12780 <__call_exitprocs+0xf8>
   12714:	00040713          	mv	a4,s0
   12718:	fe0b90e3          	bnez	s7,126f8 <__call_exitprocs+0x70>
   1271c:	008b2783          	lw	a5,8(s6)
   12720:	00371713          	slli	a4,a4,0x3
   12724:	00eb0733          	add	a4,s6,a4
   12728:	fff7879b          	addiw	a5,a5,-1
   1272c:	01073683          	ld	a3,16(a4)
   12730:	0a878e63          	beq	a5,s0,127ec <__call_exitprocs+0x164>
   12734:	00073823          	sd	zero,16(a4)
   12738:	fc068ae3          	beqz	a3,1270c <__call_exitprocs+0x84>
   1273c:	310b2783          	lw	a5,784(s6)
   12740:	0084963b          	sllw	a2,s1,s0
   12744:	008b2c83          	lw	s9,8(s6)
   12748:	00f677b3          	and	a5,a2,a5
   1274c:	08078c63          	beqz	a5,127e4 <__call_exitprocs+0x15c>
   12750:	314b2783          	lw	a5,788(s6)
   12754:	00f67633          	and	a2,a2,a5
   12758:	08061e63          	bnez	a2,127f4 <__call_exitprocs+0x16c>
   1275c:	11073583          	ld	a1,272(a4)
   12760:	00090513          	mv	a0,s2
   12764:	000680e7          	jalr	a3
   12768:	008b2783          	lw	a5,8(s6)
   1276c:	f79798e3          	bne	a5,s9,126dc <__call_exitprocs+0x54>
   12770:	000d3783          	ld	a5,0(s10)
   12774:	f76794e3          	bne	a5,s6,126dc <__call_exitprocs+0x54>
   12778:	fff4041b          	addiw	s0,s0,-1
   1277c:	f9841ce3          	bne	s0,s8,12714 <__call_exitprocs+0x8c>
   12780:	02098663          	beqz	s3,127ac <__call_exitprocs+0x124>
   12784:	008b2783          	lw	a5,8(s6)
   12788:	06079c63          	bnez	a5,12800 <__call_exitprocs+0x178>
   1278c:	000b3783          	ld	a5,0(s6)
   12790:	08078263          	beqz	a5,12814 <__call_exitprocs+0x18c>
   12794:	000b0513          	mv	a0,s6
   12798:	00fd3023          	sd	a5,0(s10)
   1279c:	fffee317          	auipc	t1,0xfffee
   127a0:	864300e7          	jalr	t1,-1948 # 0 <_ftext-0x10000>
   127a4:	000d3b03          	ld	s6,0(s10)
   127a8:	f40b10e3          	bnez	s6,126e8 <__call_exitprocs+0x60>
   127ac:	05813083          	ld	ra,88(sp)
   127b0:	05013403          	ld	s0,80(sp)
   127b4:	04813483          	ld	s1,72(sp)
   127b8:	04013903          	ld	s2,64(sp)
   127bc:	03813983          	ld	s3,56(sp)
   127c0:	03013a03          	ld	s4,48(sp)
   127c4:	02813a83          	ld	s5,40(sp)
   127c8:	02013b03          	ld	s6,32(sp)
   127cc:	01813b83          	ld	s7,24(sp)
   127d0:	01013c03          	ld	s8,16(sp)
   127d4:	00813c83          	ld	s9,8(sp)
   127d8:	00013d03          	ld	s10,0(sp)
   127dc:	06010113          	addi	sp,sp,96
   127e0:	00008067          	ret
   127e4:	000680e7          	jalr	a3
   127e8:	f81ff06f          	j	12768 <__call_exitprocs+0xe0>
   127ec:	008b2423          	sw	s0,8(s6)
   127f0:	f49ff06f          	j	12738 <__call_exitprocs+0xb0>
   127f4:	11073503          	ld	a0,272(a4)
   127f8:	000680e7          	jalr	a3
   127fc:	f6dff06f          	j	12768 <__call_exitprocs+0xe0>
   12800:	000b3783          	ld	a5,0(s6)
   12804:	000b0d13          	mv	s10,s6
   12808:	00078b13          	mv	s6,a5
   1280c:	ec0b1ee3          	bnez	s6,126e8 <__call_exitprocs+0x60>
   12810:	f9dff06f          	j	127ac <__call_exitprocs+0x124>
   12814:	00000793          	li	a5,0
   12818:	fedff06f          	j	12804 <__call_exitprocs+0x17c>

000000000001281c <quorem>:
   1281c:	fc010113          	addi	sp,sp,-64
   12820:	03213023          	sd	s2,32(sp)
   12824:	01452783          	lw	a5,20(a0)
   12828:	0145a903          	lw	s2,20(a1)
   1282c:	02113c23          	sd	ra,56(sp)
   12830:	02813823          	sd	s0,48(sp)
   12834:	02913423          	sd	s1,40(sp)
   12838:	01313c23          	sd	s3,24(sp)
   1283c:	01413823          	sd	s4,16(sp)
   12840:	01513423          	sd	s5,8(sp)
   12844:	1b27ce63          	blt	a5,s2,12a00 <quorem+0x1e4>
   12848:	fff9091b          	addiw	s2,s2,-1
   1284c:	00090f13          	mv	t5,s2
   12850:	002f1f13          	slli	t5,t5,0x2
   12854:	01858413          	addi	s0,a1,24
   12858:	01e409b3          	add	s3,s0,t5
   1285c:	01850a13          	addi	s4,a0,24
   12860:	01ea0f33          	add	t5,s4,t5
   12864:	0009a783          	lw	a5,0(s3) # 0 <_ftext-0x10000>
   12868:	000f2483          	lw	s1,0(t5)
   1286c:	0017879b          	addiw	a5,a5,1
   12870:	02f4d4bb          	divuw	s1,s1,a5
   12874:	0a048e63          	beqz	s1,12930 <quorem+0x114>
   12878:	00010337          	lui	t1,0x10
   1287c:	00040e93          	mv	t4,s0
   12880:	000a0e13          	mv	t3,s4
   12884:	00000613          	li	a2,0
   12888:	00000713          	li	a4,0
   1288c:	fff3031b          	addiw	t1,t1,-1
   12890:	004e8e93          	addi	t4,t4,4
   12894:	ffcea803          	lw	a6,-4(t4)
   12898:	000e2683          	lw	a3,0(t3)
   1289c:	004e0e13          	addi	t3,t3,4
   128a0:	006878b3          	and	a7,a6,t1
   128a4:	029888bb          	mulw	a7,a7,s1
   128a8:	0108581b          	srliw	a6,a6,0x10
   128ac:	0066f7b3          	and	a5,a3,t1
   128b0:	0106d69b          	srliw	a3,a3,0x10
   128b4:	0298083b          	mulw	a6,a6,s1
   128b8:	00c888bb          	addw	a7,a7,a2
   128bc:	0108d61b          	srliw	a2,a7,0x10
   128c0:	0068f8b3          	and	a7,a7,t1
   128c4:	4117073b          	subw	a4,a4,a7
   128c8:	00f707bb          	addw	a5,a4,a5
   128cc:	4107d71b          	sraiw	a4,a5,0x10
   128d0:	0067f7b3          	and	a5,a5,t1
   128d4:	00c8063b          	addw	a2,a6,a2
   128d8:	00667833          	and	a6,a2,t1
   128dc:	410686bb          	subw	a3,a3,a6
   128e0:	00e6873b          	addw	a4,a3,a4
   128e4:	0107169b          	slliw	a3,a4,0x10
   128e8:	00f6e6b3          	or	a3,a3,a5
   128ec:	fede2e23          	sw	a3,-4(t3)
   128f0:	0106561b          	srliw	a2,a2,0x10
   128f4:	4107571b          	sraiw	a4,a4,0x10
   128f8:	f9d9fce3          	bleu	t4,s3,12890 <quorem+0x74>
   128fc:	000f2783          	lw	a5,0(t5)
   12900:	02079863          	bnez	a5,12930 <quorem+0x114>
   12904:	ffcf0793          	addi	a5,t5,-4
   12908:	02fa7263          	bleu	a5,s4,1292c <quorem+0x110>
   1290c:	ffcf2703          	lw	a4,-4(t5)
   12910:	00070863          	beqz	a4,12920 <quorem+0x104>
   12914:	0180006f          	j	1292c <quorem+0x110>
   12918:	0007a703          	lw	a4,0(a5)
   1291c:	00071863          	bnez	a4,1292c <quorem+0x110>
   12920:	ffc78793          	addi	a5,a5,-4
   12924:	fff9091b          	addiw	s2,s2,-1
   12928:	fefa68e3          	bltu	s4,a5,12918 <quorem+0xfc>
   1292c:	01252a23          	sw	s2,20(a0)
   12930:	00050a93          	mv	s5,a0
   12934:	388030ef          	jal	15cbc <__mcmp>
   12938:	0a054063          	bltz	a0,129d8 <quorem+0x1bc>
   1293c:	000105b7          	lui	a1,0x10
   12940:	0014849b          	addiw	s1,s1,1
   12944:	000a0613          	mv	a2,s4
   12948:	00000793          	li	a5,0
   1294c:	fff5859b          	addiw	a1,a1,-1
   12950:	00440413          	addi	s0,s0,4
   12954:	ffc42683          	lw	a3,-4(s0)
   12958:	00062703          	lw	a4,0(a2)
   1295c:	00460613          	addi	a2,a2,4
   12960:	00b6f833          	and	a6,a3,a1
   12964:	410787bb          	subw	a5,a5,a6
   12968:	00b77833          	and	a6,a4,a1
   1296c:	010787bb          	addw	a5,a5,a6
   12970:	0106d69b          	srliw	a3,a3,0x10
   12974:	0107571b          	srliw	a4,a4,0x10
   12978:	40d7073b          	subw	a4,a4,a3
   1297c:	4107d69b          	sraiw	a3,a5,0x10
   12980:	00d706bb          	addw	a3,a4,a3
   12984:	0106981b          	slliw	a6,a3,0x10
   12988:	00b7f733          	and	a4,a5,a1
   1298c:	00e86733          	or	a4,a6,a4
   12990:	fee62e23          	sw	a4,-4(a2)
   12994:	4106d79b          	sraiw	a5,a3,0x10
   12998:	fa89fce3          	bleu	s0,s3,12950 <quorem+0x134>
   1299c:	00291713          	slli	a4,s2,0x2
   129a0:	00ea0733          	add	a4,s4,a4
   129a4:	00072783          	lw	a5,0(a4)
   129a8:	02079863          	bnez	a5,129d8 <quorem+0x1bc>
   129ac:	ffc70793          	addi	a5,a4,-4
   129b0:	02fa7263          	bleu	a5,s4,129d4 <quorem+0x1b8>
   129b4:	ffc72703          	lw	a4,-4(a4)
   129b8:	00070863          	beqz	a4,129c8 <quorem+0x1ac>
   129bc:	0180006f          	j	129d4 <quorem+0x1b8>
   129c0:	0007a703          	lw	a4,0(a5)
   129c4:	00071863          	bnez	a4,129d4 <quorem+0x1b8>
   129c8:	ffc78793          	addi	a5,a5,-4
   129cc:	fff9091b          	addiw	s2,s2,-1
   129d0:	fefa68e3          	bltu	s4,a5,129c0 <quorem+0x1a4>
   129d4:	012aaa23          	sw	s2,20(s5)
   129d8:	00048513          	mv	a0,s1
   129dc:	03813083          	ld	ra,56(sp)
   129e0:	03013403          	ld	s0,48(sp)
   129e4:	02813483          	ld	s1,40(sp)
   129e8:	02013903          	ld	s2,32(sp)
   129ec:	01813983          	ld	s3,24(sp)
   129f0:	01013a03          	ld	s4,16(sp)
   129f4:	00813a83          	ld	s5,8(sp)
   129f8:	04010113          	addi	sp,sp,64
   129fc:	00008067          	ret
   12a00:	00000513          	li	a0,0
   12a04:	fd9ff06f          	j	129dc <quorem+0x1c0>

0000000000012a08 <_dtoa_r>:
   12a08:	e20585d3          	fmv.x.d	a1,fa1
   12a0c:	06053883          	ld	a7,96(a0)
   12a10:	f3010113          	addi	sp,sp,-208
   12a14:	0c813023          	sd	s0,192(sp)
   12a18:	0a913c23          	sd	s1,184(sp)
   12a1c:	0b313423          	sd	s3,168(sp)
   12a20:	09613823          	sd	s6,144(sp)
   12a24:	07913c23          	sd	s9,120(sp)
   12a28:	07a13823          	sd	s10,112(sp)
   12a2c:	0c113423          	sd	ra,200(sp)
   12a30:	0b213823          	sd	s2,176(sp)
   12a34:	0b413023          	sd	s4,160(sp)
   12a38:	09513c23          	sd	s5,152(sp)
   12a3c:	09713423          	sd	s7,136(sp)
   12a40:	09813023          	sd	s8,128(sp)
   12a44:	07b13423          	sd	s11,104(sp)
   12a48:	00e13023          	sd	a4,0(sp)
   12a4c:	00050413          	mv	s0,a0
   12a50:	00060993          	mv	s3,a2
   12a54:	00068c93          	mv	s9,a3
   12a58:	00078493          	mv	s1,a5
   12a5c:	00080b13          	mv	s6,a6
   12a60:	00058d13          	mv	s10,a1
   12a64:	02088263          	beqz	a7,12a88 <_dtoa_r+0x80>
   12a68:	06852603          	lw	a2,104(a0)
   12a6c:	00100693          	li	a3,1
   12a70:	00088593          	mv	a1,a7
   12a74:	00c696bb          	sllw	a3,a3,a2
   12a78:	00c8a423          	sw	a2,8(a7)
   12a7c:	00d8a623          	sw	a3,12(a7)
   12a80:	1f1020ef          	jal	15470 <_Bfree>
   12a84:	06043023          	sd	zero,96(s0)
   12a88:	420d5913          	srai	s2,s10,0x20
   12a8c:	0c094063          	bltz	s2,12b4c <_dtoa_r+0x144>
   12a90:	0004a023          	sw	zero,0(s1)
   12a94:	7ff007b7          	lui	a5,0x7ff00
   12a98:	00f976b3          	and	a3,s2,a5
   12a9c:	06f68a63          	beq	a3,a5,12b10 <_dtoa_r+0x108>
   12aa0:	f20007d3          	fmv.d.x	fa5,zero
   12aa4:	f20d0753          	fmv.d.x	fa4,s10
   12aa8:	a2f727d3          	feq.d	a5,fa4,fa5
   12aac:	0c078463          	beqz	a5,12b74 <_dtoa_r+0x16c>
   12ab0:	00013703          	ld	a4,0(sp)
   12ab4:	00100793          	li	a5,1
   12ab8:	00f72023          	sw	a5,0(a4)
   12abc:	480b0a63          	beqz	s6,12f50 <_dtoa_r+0x548>
   12ac0:	000197b7          	lui	a5,0x19
   12ac4:	6e978793          	addi	a5,a5,1769 # 196e9 <zeroes.4137+0x71>
   12ac8:	00019537          	lui	a0,0x19
   12acc:	00fb3023          	sd	a5,0(s6)
   12ad0:	6e850513          	addi	a0,a0,1768 # 196e8 <zeroes.4137+0x70>
   12ad4:	0c813083          	ld	ra,200(sp)
   12ad8:	0c013403          	ld	s0,192(sp)
   12adc:	0b813483          	ld	s1,184(sp)
   12ae0:	0b013903          	ld	s2,176(sp)
   12ae4:	0a813983          	ld	s3,168(sp)
   12ae8:	0a013a03          	ld	s4,160(sp)
   12aec:	09813a83          	ld	s5,152(sp)
   12af0:	09013b03          	ld	s6,144(sp)
   12af4:	08813b83          	ld	s7,136(sp)
   12af8:	08013c03          	ld	s8,128(sp)
   12afc:	07813c83          	ld	s9,120(sp)
   12b00:	07013d03          	ld	s10,112(sp)
   12b04:	06813d83          	ld	s11,104(sp)
   12b08:	0d010113          	addi	sp,sp,208
   12b0c:	00008067          	ret
   12b10:	00013703          	ld	a4,0(sp)
   12b14:	000027b7          	lui	a5,0x2
   12b18:	70f7879b          	addiw	a5,a5,1807
   12b1c:	00f72023          	sw	a5,0(a4)
   12b20:	00cd1793          	slli	a5,s10,0xc
   12b24:	3e079863          	bnez	a5,12f14 <_dtoa_r+0x50c>
   12b28:	00019537          	lui	a0,0x19
   12b2c:	6f050513          	addi	a0,a0,1776 # 196f0 <zeroes.4137+0x78>
   12b30:	fa0b02e3          	beqz	s6,12ad4 <_dtoa_r+0xcc>
   12b34:	00354703          	lbu	a4,3(a0)
   12b38:	00350793          	addi	a5,a0,3
   12b3c:	00070463          	beqz	a4,12b44 <_dtoa_r+0x13c>
   12b40:	00850793          	addi	a5,a0,8
   12b44:	00fb3023          	sd	a5,0(s6)
   12b48:	f8dff06f          	j	12ad4 <_dtoa_r+0xcc>
   12b4c:	800007b7          	lui	a5,0x80000
   12b50:	fff7c793          	not	a5,a5
   12b54:	020d1713          	slli	a4,s10,0x20
   12b58:	00f97933          	and	s2,s2,a5
   12b5c:	02091793          	slli	a5,s2,0x20
   12b60:	02075713          	srli	a4,a4,0x20
   12b64:	00100693          	li	a3,1
   12b68:	00d4a023          	sw	a3,0(s1)
   12b6c:	00f76d33          	or	s10,a4,a5
   12b70:	f25ff06f          	j	12a94 <_dtoa_r+0x8c>
   12b74:	f20d05d3          	fmv.d.x	fa1,s10
   12b78:	05810693          	addi	a3,sp,88
   12b7c:	05c10613          	addi	a2,sp,92
   12b80:	00040513          	mv	a0,s0
   12b84:	578030ef          	jal	160fc <__d2b>
   12b88:	02a13023          	sd	a0,32(sp)
   12b8c:	0149581b          	srliw	a6,s2,0x14
   12b90:	38081863          	bnez	a6,12f20 <_dtoa_r+0x518>
   12b94:	05812603          	lw	a2,88(sp)
   12b98:	05c12803          	lw	a6,92(sp)
   12b9c:	02000793          	li	a5,32
   12ba0:	0106083b          	addw	a6,a2,a6
   12ba4:	4328069b          	addiw	a3,a6,1074
   12ba8:	6ad7de63          	ble	a3,a5,13264 <_dtoa_r+0x85c>
   12bac:	04000593          	li	a1,64
   12bb0:	4128049b          	addiw	s1,a6,1042
   12bb4:	000d079b          	sext.w	a5,s10
   12bb8:	40d585bb          	subw	a1,a1,a3
   12bbc:	0097d7bb          	srlw	a5,a5,s1
   12bc0:	00b914bb          	sllw	s1,s2,a1
   12bc4:	0097e4b3          	or	s1,a5,s1
   12bc8:	d21487d3          	fcvt.d.wu	fa5,s1
   12bcc:	fe1006b7          	lui	a3,0xfe100
   12bd0:	fff8081b          	addiw	a6,a6,-1
   12bd4:	e20784d3          	fmv.x.d	s1,fa5
   12bd8:	00100913          	li	s2,1
   12bdc:	4204d793          	srai	a5,s1,0x20
   12be0:	00d787bb          	addw	a5,a5,a3
   12be4:	02049493          	slli	s1,s1,0x20
   12be8:	02079793          	slli	a5,a5,0x20
   12bec:	0204d493          	srli	s1,s1,0x20
   12bf0:	00f4e4b3          	or	s1,s1,a5
   12bf4:	0001c7b7          	lui	a5,0x1c
   12bf8:	8007b787          	fld	fa5,-2048(a5) # 1b800 <__wctomb+0x8>
   12bfc:	f2048753          	fmv.d.x	fa4,s1
   12c00:	0001c7b7          	lui	a5,0x1c
   12c04:	0af77653          	fsub.d	fa2,fa4,fa5
   12c08:	8107b787          	fld	fa5,-2032(a5) # 1b810 <__wctomb+0x18>
   12c0c:	0001c7b7          	lui	a5,0x1c
   12c10:	8087b687          	fld	fa3,-2040(a5) # 1b808 <__wctomb+0x10>
   12c14:	0001c7b7          	lui	a5,0x1c
   12c18:	d2080753          	fcvt.d.w	fa4,a6
   12c1c:	7ad677c3          	fmadd.d	fa5,fa2,fa3,fa5
   12c20:	8187b687          	fld	fa3,-2024(a5) # 1b818 <__wctomb+0x20>
   12c24:	7ad777c3          	fmadd.d	fa5,fa4,fa3,fa5
   12c28:	f2000753          	fmv.d.x	fa4,zero
   12c2c:	a2e797d3          	flt.d	a5,fa5,fa4
   12c30:	c2079bd3          	fcvt.w.d	s7,fa5,rtz
   12c34:	5e079e63          	bnez	a5,13230 <_dtoa_r+0x828>
   12c38:	00100793          	li	a5,1
   12c3c:	02f12823          	sw	a5,48(sp)
   12c40:	01600793          	li	a5,22
   12c44:	0377e663          	bltu	a5,s7,12c70 <_dtoa_r+0x268>
   12c48:	000197b7          	lui	a5,0x19
   12c4c:	003b9693          	slli	a3,s7,0x3
   12c50:	3e878793          	addi	a5,a5,1000 # 193e8 <__mprec_tens>
   12c54:	00f687b3          	add	a5,a3,a5
   12c58:	0007b787          	fld	fa5,0(a5)
   12c5c:	f20d0753          	fmv.d.x	fa4,s10
   12c60:	a2f717d3          	flt.d	a5,fa4,fa5
   12c64:	60078863          	beqz	a5,13274 <_dtoa_r+0x86c>
   12c68:	fffb8b9b          	addiw	s7,s7,-1
   12c6c:	02012823          	sw	zero,48(sp)
   12c70:	4106083b          	subw	a6,a2,a6
   12c74:	fff80d9b          	addiw	s11,a6,-1
   12c78:	00000813          	li	a6,0
   12c7c:	2e0dc063          	bltz	s11,12f5c <_dtoa_r+0x554>
   12c80:	5c0bc263          	bltz	s7,13244 <_dtoa_r+0x83c>
   12c84:	017d8dbb          	addw	s11,s11,s7
   12c88:	03712423          	sw	s7,40(sp)
   12c8c:	00000c13          	li	s8,0
   12c90:	00900793          	li	a5,9
   12c94:	2d37ea63          	bltu	a5,s3,12f68 <_dtoa_r+0x560>
   12c98:	00500793          	li	a5,5
   12c9c:	00100a13          	li	s4,1
   12ca0:	0137d663          	ble	s3,a5,12cac <_dtoa_r+0x2a4>
   12ca4:	ffc9899b          	addiw	s3,s3,-4
   12ca8:	00000a13          	li	s4,0
   12cac:	00300793          	li	a5,3
   12cb0:	2af982e3          	beq	s3,a5,13754 <_dtoa_r+0xd4c>
   12cb4:	1f37dce3          	ble	s3,a5,136ac <_dtoa_r+0xca4>
   12cb8:	00400793          	li	a5,4
   12cbc:	0cf98ae3          	beq	s3,a5,13590 <_dtoa_r+0xb88>
   12cc0:	00100793          	li	a5,1
   12cc4:	00f12823          	sw	a5,16(sp)
   12cc8:	00500793          	li	a5,5
   12ccc:	1ef996e3          	bne	s3,a5,136b8 <_dtoa_r+0xcb0>
   12cd0:	019b87bb          	addw	a5,s7,s9
   12cd4:	00178a9b          	addiw	s5,a5,1
   12cd8:	02f12a23          	sw	a5,52(sp)
   12cdc:	000a8513          	mv	a0,s5
   12ce0:	000a8493          	mv	s1,s5
   12ce4:	1b505ee3          	blez	s5,136a0 <_dtoa_r+0xc98>
   12ce8:	06042423          	sw	zero,104(s0)
   12cec:	01f00793          	li	a5,31
   12cf0:	00000593          	li	a1,0
   12cf4:	02a7f463          	bleu	a0,a5,12d1c <_dtoa_r+0x314>
   12cf8:	00100613          	li	a2,1
   12cfc:	00400693          	li	a3,4
   12d00:	0016969b          	slliw	a3,a3,0x1
   12d04:	00068793          	mv	a5,a3
   12d08:	01c78793          	addi	a5,a5,28
   12d0c:	00060593          	mv	a1,a2
   12d10:	0016061b          	addiw	a2,a2,1
   12d14:	fef576e3          	bleu	a5,a0,12d00 <_dtoa_r+0x2f8>
   12d18:	06b42423          	sw	a1,104(s0)
   12d1c:	00040513          	mv	a0,s0
   12d20:	03013c23          	sd	a6,56(sp)
   12d24:	6a0020ef          	jal	153c4 <_Balloc>
   12d28:	00a13423          	sd	a0,8(sp)
   12d2c:	06a43023          	sd	a0,96(s0)
   12d30:	00e00793          	li	a5,14
   12d34:	03813803          	ld	a6,56(sp)
   12d38:	2697e463          	bltu	a5,s1,12fa0 <_dtoa_r+0x598>
   12d3c:	260a0263          	beqz	s4,12fa0 <_dtoa_r+0x598>
   12d40:	03a13c23          	sd	s10,56(sp)
   12d44:	317054e3          	blez	s7,1384c <_dtoa_r+0xe44>
   12d48:	00fbf713          	andi	a4,s7,15
   12d4c:	00371693          	slli	a3,a4,0x3
   12d50:	00019737          	lui	a4,0x19
   12d54:	404bd79b          	sraiw	a5,s7,0x4
   12d58:	3e870713          	addi	a4,a4,1000 # 193e8 <__mprec_tens>
   12d5c:	00e68733          	add	a4,a3,a4
   12d60:	0107f693          	andi	a3,a5,16
   12d64:	00073687          	fld	fa3,0(a4)
   12d68:	f20d07d3          	fmv.d.x	fa5,s10
   12d6c:	00200713          	li	a4,2
   12d70:	00068c63          	beqz	a3,12d88 <_dtoa_r+0x380>
   12d74:	00019737          	lui	a4,0x19
   12d78:	4f873707          	fld	fa4,1272(a4) # 194f8 <__mprec_bigtens+0x20>
   12d7c:	00f7f793          	andi	a5,a5,15
   12d80:	00300713          	li	a4,3
   12d84:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   12d88:	02078663          	beqz	a5,12db4 <_dtoa_r+0x3ac>
   12d8c:	000196b7          	lui	a3,0x19
   12d90:	4d868693          	addi	a3,a3,1240 # 194d8 <__mprec_bigtens>
   12d94:	0017f613          	andi	a2,a5,1
   12d98:	4017d79b          	sraiw	a5,a5,0x1
   12d9c:	00060863          	beqz	a2,12dac <_dtoa_r+0x3a4>
   12da0:	0006b707          	fld	fa4,0(a3)
   12da4:	0017071b          	addiw	a4,a4,1
   12da8:	12e6f6d3          	fmul.d	fa3,fa3,fa4
   12dac:	00868693          	addi	a3,a3,8
   12db0:	fe0792e3          	bnez	a5,12d94 <_dtoa_r+0x38c>
   12db4:	1ad7f7d3          	fdiv.d	fa5,fa5,fa3
   12db8:	03012783          	lw	a5,48(sp)
   12dbc:	00078a63          	beqz	a5,12dd0 <_dtoa_r+0x3c8>
   12dc0:	0001c7b7          	lui	a5,0x1c
   12dc4:	8207b707          	fld	fa4,-2016(a5) # 1b820 <__wctomb+0x28>
   12dc8:	a2e797d3          	flt.d	a5,fa5,fa4
   12dcc:	440790e3          	bnez	a5,13a0c <_dtoa_r+0x1004>
   12dd0:	0001c7b7          	lui	a5,0x1c
   12dd4:	d20706d3          	fcvt.d.w	fa3,a4
   12dd8:	8307b707          	fld	fa4,-2000(a5) # 1b830 <__wctomb+0x38>
   12ddc:	fcc006b7          	lui	a3,0xfcc00
   12de0:	72f6f743          	fmadd.d	fa4,fa3,fa5,fa4
   12de4:	e2070753          	fmv.x.d	a4,fa4
   12de8:	42075793          	srai	a5,a4,0x20
   12dec:	00d787bb          	addw	a5,a5,a3
   12df0:	02071713          	slli	a4,a4,0x20
   12df4:	02079793          	slli	a5,a5,0x20
   12df8:	02075713          	srli	a4,a4,0x20
   12dfc:	00f76733          	or	a4,a4,a5
   12e00:	180a86e3          	beqz	s5,1378c <_dtoa_r+0xd84>
   12e04:	000b8693          	mv	a3,s7
   12e08:	000a8613          	mv	a2,s5
   12e0c:	01012783          	lw	a5,16(sp)
   12e10:	300782e3          	beqz	a5,13914 <_dtoa_r+0xf0c>
   12e14:	fff6079b          	addiw	a5,a2,-1
   12e18:	000195b7          	lui	a1,0x19
   12e1c:	3e858593          	addi	a1,a1,1000 # 193e8 <__mprec_tens>
   12e20:	00379793          	slli	a5,a5,0x3
   12e24:	00b787b3          	add	a5,a5,a1
   12e28:	0001c5b7          	lui	a1,0x1c
   12e2c:	0007b687          	fld	fa3,0(a5)
   12e30:	8405b707          	fld	fa4,-1984(a1) # 1b840 <__wctomb+0x48>
   12e34:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   12e38:	00813503          	ld	a0,8(sp)
   12e3c:	1ad77753          	fdiv.d	fa4,fa4,fa3
   12e40:	d20786d3          	fcvt.d.w	fa3,a5
   12e44:	0307879b          	addiw	a5,a5,48
   12e48:	0ff7f793          	andi	a5,a5,255
   12e4c:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   12e50:	f20706d3          	fmv.d.x	fa3,a4
   12e54:	00f50023          	sb	a5,0(a0)
   12e58:	00150493          	addi	s1,a0,1
   12e5c:	0ad77753          	fsub.d	fa4,fa4,fa3
   12e60:	a2e79753          	flt.d	a4,fa5,fa4
   12e64:	08071063          	bnez	a4,12ee4 <_dtoa_r+0x4dc>
   12e68:	0001c737          	lui	a4,0x1c
   12e6c:	82073587          	fld	fa1,-2016(a4) # 1b820 <__wctomb+0x28>
   12e70:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   12e74:	a2e69753          	flt.d	a4,fa3,fa4
   12e78:	40071ae3          	bnez	a4,13a8c <_dtoa_r+0x1084>
   12e7c:	00100793          	li	a5,1
   12e80:	1ac7d4e3          	ble	a2,a5,13828 <_dtoa_r+0xe20>
   12e84:	0001c7b7          	lui	a5,0x1c
   12e88:	ffe6061b          	addiw	a2,a2,-2
   12e8c:	02061613          	slli	a2,a2,0x20
   12e90:	8287b607          	fld	fa2,-2008(a5) # 1b828 <__wctomb+0x30>
   12e94:	00813783          	ld	a5,8(sp)
   12e98:	02065613          	srli	a2,a2,0x20
   12e9c:	00260613          	addi	a2,a2,2
   12ea0:	00c78633          	add	a2,a5,a2
   12ea4:	0140006f          	j	12eb8 <_dtoa_r+0x4b0>
   12ea8:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   12eac:	a2e69753          	flt.d	a4,fa3,fa4
   12eb0:	3c071ee3          	bnez	a4,13a8c <_dtoa_r+0x1084>
   12eb4:	16960ae3          	beq	a2,s1,13828 <_dtoa_r+0xe20>
   12eb8:	12c7f7d3          	fmul.d	fa5,fa5,fa2
   12ebc:	12c77753          	fmul.d	fa4,fa4,fa2
   12ec0:	00148493          	addi	s1,s1,1
   12ec4:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   12ec8:	d20786d3          	fcvt.d.w	fa3,a5
   12ecc:	0307879b          	addiw	a5,a5,48
   12ed0:	0ff7f793          	andi	a5,a5,255
   12ed4:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   12ed8:	fef48fa3          	sb	a5,-1(s1)
   12edc:	a2e79753          	flt.d	a4,fa5,fa4
   12ee0:	fc0704e3          	beqz	a4,12ea8 <_dtoa_r+0x4a0>
   12ee4:	00068b93          	mv	s7,a3
   12ee8:	02013583          	ld	a1,32(sp)
   12eec:	00040513          	mv	a0,s0
   12ef0:	001b8b9b          	addiw	s7,s7,1
   12ef4:	57c020ef          	jal	15470 <_Bfree>
   12ef8:	00013783          	ld	a5,0(sp)
   12efc:	00048023          	sb	zero,0(s1)
   12f00:	0177a023          	sw	s7,0(a5)
   12f04:	0c0b0ce3          	beqz	s6,137dc <_dtoa_r+0xdd4>
   12f08:	009b3023          	sd	s1,0(s6)
   12f0c:	00813503          	ld	a0,8(sp)
   12f10:	bc5ff06f          	j	12ad4 <_dtoa_r+0xcc>
   12f14:	00019537          	lui	a0,0x19
   12f18:	70050513          	addi	a0,a0,1792 # 19700 <zeroes.4137+0x88>
   12f1c:	c15ff06f          	j	12b30 <_dtoa_r+0x128>
   12f20:	00cd1793          	slli	a5,s10,0xc
   12f24:	02c7d693          	srli	a3,a5,0x2c
   12f28:	3ff007b7          	lui	a5,0x3ff00
   12f2c:	00f6e7b3          	or	a5,a3,a5
   12f30:	020d1493          	slli	s1,s10,0x20
   12f34:	02079793          	slli	a5,a5,0x20
   12f38:	0204d493          	srli	s1,s1,0x20
   12f3c:	00f4e4b3          	or	s1,s1,a5
   12f40:	c018081b          	addiw	a6,a6,-1023
   12f44:	05812603          	lw	a2,88(sp)
   12f48:	00000913          	li	s2,0
   12f4c:	ca9ff06f          	j	12bf4 <_dtoa_r+0x1ec>
   12f50:	00019537          	lui	a0,0x19
   12f54:	6e850513          	addi	a0,a0,1768 # 196e8 <zeroes.4137+0x70>
   12f58:	b7dff06f          	j	12ad4 <_dtoa_r+0xcc>
   12f5c:	41b0083b          	negw	a6,s11
   12f60:	00000d93          	li	s11,0
   12f64:	d1dff06f          	j	12c80 <_dtoa_r+0x278>
   12f68:	06042423          	sw	zero,104(s0)
   12f6c:	00000593          	li	a1,0
   12f70:	00040513          	mv	a0,s0
   12f74:	03013c23          	sd	a6,56(sp)
   12f78:	44c020ef          	jal	153c4 <_Balloc>
   12f7c:	03813803          	ld	a6,56(sp)
   12f80:	fff00a93          	li	s5,-1
   12f84:	00100793          	li	a5,1
   12f88:	00a13423          	sd	a0,8(sp)
   12f8c:	06a43023          	sd	a0,96(s0)
   12f90:	03512a23          	sw	s5,52(sp)
   12f94:	00000993          	li	s3,0
   12f98:	00000c93          	li	s9,0
   12f9c:	00f12823          	sw	a5,16(sp)
   12fa0:	05c12783          	lw	a5,92(sp)
   12fa4:	0e07ca63          	bltz	a5,13098 <_dtoa_r+0x690>
   12fa8:	00e00693          	li	a3,14
   12fac:	0f76c663          	blt	a3,s7,13098 <_dtoa_r+0x690>
   12fb0:	000197b7          	lui	a5,0x19
   12fb4:	003b9693          	slli	a3,s7,0x3
   12fb8:	3e878793          	addi	a5,a5,1000 # 193e8 <__mprec_tens>
   12fbc:	00f687b3          	add	a5,a3,a5
   12fc0:	0007b687          	fld	fa3,0(a5)
   12fc4:	5e0cc663          	bltz	s9,135b0 <_dtoa_r+0xba8>
   12fc8:	f20d0653          	fmv.d.x	fa2,s10
   12fcc:	00813703          	ld	a4,8(sp)
   12fd0:	22d69553          	fneg.d	fa0,fa3
   12fd4:	1ad67753          	fdiv.d	fa4,fa2,fa3
   12fd8:	00170493          	addi	s1,a4,1
   12fdc:	c20717d3          	fcvt.w.d	a5,fa4,rtz
   12fe0:	d20787d3          	fcvt.d.w	fa5,a5
   12fe4:	0307869b          	addiw	a3,a5,48
   12fe8:	00d70023          	sb	a3,0(a4)
   12fec:	00100713          	li	a4,1
   12ff0:	62f577c3          	fmadd.d	fa5,fa0,fa5,fa2
   12ff4:	2aea88e3          	beq	s5,a4,13aa4 <_dtoa_r+0x109c>
   12ff8:	0001c7b7          	lui	a5,0x1c
   12ffc:	8287b587          	fld	fa1,-2008(a5) # 1b828 <__wctomb+0x30>
   13000:	f2000653          	fmv.d.x	fa2,zero
   13004:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   13008:	a2c7a7d3          	feq.d	a5,fa5,fa2
   1300c:	ec079ee3          	bnez	a5,12ee8 <_dtoa_r+0x4e0>
   13010:	ffea869b          	addiw	a3,s5,-2
   13014:	02069693          	slli	a3,a3,0x20
   13018:	00813783          	ld	a5,8(sp)
   1301c:	0206d693          	srli	a3,a3,0x20
   13020:	00268693          	addi	a3,a3,2 # fffffffffcc00002 <_gp+0xfffffffffcbe4042>
   13024:	00d786b3          	add	a3,a5,a3
   13028:	0100006f          	j	13038 <_dtoa_r+0x630>
   1302c:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   13030:	a2c7a7d3          	feq.d	a5,fa5,fa2
   13034:	ea079ae3          	bnez	a5,12ee8 <_dtoa_r+0x4e0>
   13038:	1ad7f753          	fdiv.d	fa4,fa5,fa3
   1303c:	00148493          	addi	s1,s1,1
   13040:	c20717d3          	fcvt.w.d	a5,fa4,rtz
   13044:	d2078753          	fcvt.d.w	fa4,a5
   13048:	0307871b          	addiw	a4,a5,48
   1304c:	fee48fa3          	sb	a4,-1(s1)
   13050:	7ae577c3          	fmadd.d	fa5,fa0,fa4,fa5
   13054:	fcd49ce3          	bne	s1,a3,1302c <_dtoa_r+0x624>
   13058:	02f7f7d3          	fadd.d	fa5,fa5,fa5
   1305c:	a2f69753          	flt.d	a4,fa3,fa5
   13060:	7c070863          	beqz	a4,13830 <_dtoa_r+0xe28>
   13064:	fff6c783          	lbu	a5,-1(a3)
   13068:	00068493          	mv	s1,a3
   1306c:	03900693          	li	a3,57
   13070:	0140006f          	j	13084 <_dtoa_r+0x67c>
   13074:	00813783          	ld	a5,8(sp)
   13078:	02f70ce3          	beq	a4,a5,138b0 <_dtoa_r+0xea8>
   1307c:	fff74783          	lbu	a5,-1(a4)
   13080:	00070493          	mv	s1,a4
   13084:	fff48713          	addi	a4,s1,-1
   13088:	fed786e3          	beq	a5,a3,13074 <_dtoa_r+0x66c>
   1308c:	0017879b          	addiw	a5,a5,1
   13090:	00f70023          	sb	a5,0(a4)
   13094:	e55ff06f          	j	12ee8 <_dtoa_r+0x4e0>
   13098:	01012703          	lw	a4,16(sp)
   1309c:	1a070c63          	beqz	a4,13254 <_dtoa_r+0x84c>
   130a0:	00100693          	li	a3,1
   130a4:	5536d863          	ble	s3,a3,135f4 <_dtoa_r+0xbec>
   130a8:	fffa869b          	addiw	a3,s5,-1
   130ac:	72dc4c63          	blt	s8,a3,137e4 <_dtoa_r+0xddc>
   130b0:	40dc06bb          	subw	a3,s8,a3
   130b4:	00080493          	mv	s1,a6
   130b8:	000a8793          	mv	a5,s5
   130bc:	120ac2e3          	bltz	s5,139e0 <_dtoa_r+0xfd8>
   130c0:	00f8083b          	addw	a6,a6,a5
   130c4:	00100593          	li	a1,1
   130c8:	00040513          	mv	a0,s0
   130cc:	04d13423          	sd	a3,72(sp)
   130d0:	05013023          	sd	a6,64(sp)
   130d4:	03013c23          	sd	a6,56(sp)
   130d8:	00fd8dbb          	addw	s11,s11,a5
   130dc:	720020ef          	jal	157fc <__i2b>
   130e0:	04013803          	ld	a6,64(sp)
   130e4:	04813683          	ld	a3,72(sp)
   130e8:	00050a13          	mv	s4,a0
   130ec:	00048e63          	beqz	s1,13108 <_dtoa_r+0x700>
   130f0:	01b05c63          	blez	s11,13108 <_dtoa_r+0x700>
   130f4:	00048793          	mv	a5,s1
   130f8:	489dc463          	blt	s11,s1,13580 <_dtoa_r+0xb78>
   130fc:	40f8083b          	subw	a6,a6,a5
   13100:	40f484bb          	subw	s1,s1,a5
   13104:	40fd8dbb          	subw	s11,s11,a5
   13108:	02013903          	ld	s2,32(sp)
   1310c:	07805e63          	blez	s8,13188 <_dtoa_r+0x780>
   13110:	01012783          	lw	a5,16(sp)
   13114:	6a078463          	beqz	a5,137bc <_dtoa_r+0xdb4>
   13118:	04068a63          	beqz	a3,1316c <_dtoa_r+0x764>
   1311c:	00068613          	mv	a2,a3
   13120:	000a0593          	mv	a1,s4
   13124:	00040513          	mv	a0,s0
   13128:	05013023          	sd	a6,64(sp)
   1312c:	02d13c23          	sd	a3,56(sp)
   13130:	0f5020ef          	jal	15a24 <__pow5mult>
   13134:	02013603          	ld	a2,32(sp)
   13138:	00050593          	mv	a1,a0
   1313c:	00050a13          	mv	s4,a0
   13140:	00040513          	mv	a0,s0
   13144:	6ec020ef          	jal	15830 <__multiply>
   13148:	03813683          	ld	a3,56(sp)
   1314c:	02013583          	ld	a1,32(sp)
   13150:	00050913          	mv	s2,a0
   13154:	00040513          	mv	a0,s0
   13158:	40dc0c3b          	subw	s8,s8,a3
   1315c:	314020ef          	jal	15470 <_Bfree>
   13160:	04013803          	ld	a6,64(sp)
   13164:	020c0263          	beqz	s8,13188 <_dtoa_r+0x780>
   13168:	03213023          	sd	s2,32(sp)
   1316c:	02013583          	ld	a1,32(sp)
   13170:	000c0613          	mv	a2,s8
   13174:	00040513          	mv	a0,s0
   13178:	03013c23          	sd	a6,56(sp)
   1317c:	0a9020ef          	jal	15a24 <__pow5mult>
   13180:	03813803          	ld	a6,56(sp)
   13184:	00050913          	mv	s2,a0
   13188:	00100593          	li	a1,1
   1318c:	00040513          	mv	a0,s0
   13190:	03013023          	sd	a6,32(sp)
   13194:	668020ef          	jal	157fc <__i2b>
   13198:	02812783          	lw	a5,40(sp)
   1319c:	00050c13          	mv	s8,a0
   131a0:	02013803          	ld	a6,32(sp)
   131a4:	0c078c63          	beqz	a5,1327c <_dtoa_r+0x874>
   131a8:	00078613          	mv	a2,a5
   131ac:	00050593          	mv	a1,a0
   131b0:	00040513          	mv	a0,s0
   131b4:	071020ef          	jal	15a24 <__pow5mult>
   131b8:	00100793          	li	a5,1
   131bc:	00050c13          	mv	s8,a0
   131c0:	02013803          	ld	a6,32(sp)
   131c4:	3d37c263          	blt	a5,s3,13588 <_dtoa_r+0xb80>
   131c8:	00cd1793          	slli	a5,s10,0xc
   131cc:	3a079e63          	bnez	a5,13588 <_dtoa_r+0xb80>
   131d0:	420d5693          	srai	a3,s10,0x20
   131d4:	7ff007b7          	lui	a5,0x7ff00
   131d8:	00f6f7b3          	and	a5,a3,a5
   131dc:	02012023          	sw	zero,32(sp)
   131e0:	00078a63          	beqz	a5,131f4 <_dtoa_r+0x7ec>
   131e4:	00100793          	li	a5,1
   131e8:	0018081b          	addiw	a6,a6,1
   131ec:	001d8d9b          	addiw	s11,s11,1
   131f0:	02f12023          	sw	a5,32(sp)
   131f4:	02812783          	lw	a5,40(sp)
   131f8:	00100513          	li	a0,1
   131fc:	08078863          	beqz	a5,1328c <_dtoa_r+0x884>
   13200:	014c2783          	lw	a5,20(s8)
   13204:	03013423          	sd	a6,40(sp)
   13208:	fff7879b          	addiw	a5,a5,-1
   1320c:	00478793          	addi	a5,a5,4 # 7ff00004 <_gp+0x7fee4044>
   13210:	00279793          	slli	a5,a5,0x2
   13214:	00fc07b3          	add	a5,s8,a5
   13218:	0087a503          	lw	a0,8(a5)
   1321c:	4b4020ef          	jal	156d0 <__hi0bits>
   13220:	02000793          	li	a5,32
   13224:	40a7853b          	subw	a0,a5,a0
   13228:	02813803          	ld	a6,40(sp)
   1322c:	0600006f          	j	1328c <_dtoa_r+0x884>
   13230:	d20b8753          	fcvt.d.w	fa4,s7
   13234:	a2e7a7d3          	feq.d	a5,fa5,fa4
   13238:	0017b793          	seqz	a5,a5
   1323c:	40fb8bbb          	subw	s7,s7,a5
   13240:	9f9ff06f          	j	12c38 <_dtoa_r+0x230>
   13244:	4178083b          	subw	a6,a6,s7
   13248:	41700c3b          	negw	s8,s7
   1324c:	02012423          	sw	zero,40(sp)
   13250:	a41ff06f          	j	12c90 <_dtoa_r+0x288>
   13254:	000c0693          	mv	a3,s8
   13258:	00080493          	mv	s1,a6
   1325c:	00000a13          	li	s4,0
   13260:	e8dff06f          	j	130ec <_dtoa_r+0x6e4>
   13264:	000d049b          	sext.w	s1,s10
   13268:	40d787bb          	subw	a5,a5,a3
   1326c:	00f494bb          	sllw	s1,s1,a5
   13270:	959ff06f          	j	12bc8 <_dtoa_r+0x1c0>
   13274:	02012823          	sw	zero,48(sp)
   13278:	9f9ff06f          	j	12c70 <_dtoa_r+0x268>
   1327c:	00100793          	li	a5,1
   13280:	0737d4e3          	ble	s3,a5,13ae8 <_dtoa_r+0x10e0>
   13284:	02012023          	sw	zero,32(sp)
   13288:	00078513          	mv	a0,a5
   1328c:	01b507bb          	addw	a5,a0,s11
   13290:	01f7f793          	andi	a5,a5,31
   13294:	1a078663          	beqz	a5,13440 <_dtoa_r+0xa38>
   13298:	02000693          	li	a3,32
   1329c:	40f686bb          	subw	a3,a3,a5
   132a0:	00400613          	li	a2,4
   132a4:	04d658e3          	ble	a3,a2,13af4 <_dtoa_r+0x10ec>
   132a8:	01c00693          	li	a3,28
   132ac:	40f687bb          	subw	a5,a3,a5
   132b0:	00f8083b          	addw	a6,a6,a5
   132b4:	00f484bb          	addw	s1,s1,a5
   132b8:	00fd8dbb          	addw	s11,s11,a5
   132bc:	01005c63          	blez	a6,132d4 <_dtoa_r+0x8cc>
   132c0:	00090593          	mv	a1,s2
   132c4:	00080613          	mv	a2,a6
   132c8:	00040513          	mv	a0,s0
   132cc:	091020ef          	jal	15b5c <__lshift>
   132d0:	00050913          	mv	s2,a0
   132d4:	01b05c63          	blez	s11,132ec <_dtoa_r+0x8e4>
   132d8:	000c0593          	mv	a1,s8
   132dc:	000d8613          	mv	a2,s11
   132e0:	00040513          	mv	a0,s0
   132e4:	079020ef          	jal	15b5c <__lshift>
   132e8:	00050c13          	mv	s8,a0
   132ec:	03012783          	lw	a5,48(sp)
   132f0:	22079663          	bnez	a5,1351c <_dtoa_r+0xb14>
   132f4:	3f505e63          	blez	s5,136f0 <_dtoa_r+0xce8>
   132f8:	01012783          	lw	a5,16(sp)
   132fc:	14078c63          	beqz	a5,13454 <_dtoa_r+0xa4c>
   13300:	00905c63          	blez	s1,13318 <_dtoa_r+0x910>
   13304:	000a0593          	mv	a1,s4
   13308:	00048613          	mv	a2,s1
   1330c:	00040513          	mv	a0,s0
   13310:	04d020ef          	jal	15b5c <__lshift>
   13314:	00050a13          	mv	s4,a0
   13318:	02012783          	lw	a5,32(sp)
   1331c:	000a0d93          	mv	s11,s4
   13320:	5a079463          	bnez	a5,138c8 <_dtoa_r+0xec0>
   13324:	fffa849b          	addiw	s1,s5,-1
   13328:	00813783          	ld	a5,8(sp)
   1332c:	02049493          	slli	s1,s1,0x20
   13330:	0204d493          	srli	s1,s1,0x20
   13334:	00148493          	addi	s1,s1,1
   13338:	009784b3          	add	s1,a5,s1
   1333c:	00078c93          	mv	s9,a5
   13340:	001d7793          	andi	a5,s10,1
   13344:	00f13823          	sd	a5,16(sp)
   13348:	000c0593          	mv	a1,s8
   1334c:	00090513          	mv	a0,s2
   13350:	cccff0ef          	jal	1281c <quorem>
   13354:	00050d13          	mv	s10,a0
   13358:	02a12823          	sw	a0,48(sp)
   1335c:	000a0593          	mv	a1,s4
   13360:	00090513          	mv	a0,s2
   13364:	159020ef          	jal	15cbc <__mcmp>
   13368:	00050a93          	mv	s5,a0
   1336c:	000d8613          	mv	a2,s11
   13370:	000c0593          	mv	a1,s8
   13374:	00040513          	mv	a0,s0
   13378:	1a5020ef          	jal	15d1c <__mdiff>
   1337c:	01052683          	lw	a3,16(a0)
   13380:	00050793          	mv	a5,a0
   13384:	030d0d1b          	addiw	s10,s10,48
   13388:	00100713          	li	a4,1
   1338c:	00069e63          	bnez	a3,133a8 <_dtoa_r+0x9a0>
   13390:	00050593          	mv	a1,a0
   13394:	02a13023          	sd	a0,32(sp)
   13398:	00090513          	mv	a0,s2
   1339c:	121020ef          	jal	15cbc <__mcmp>
   133a0:	02013783          	ld	a5,32(sp)
   133a4:	00050713          	mv	a4,a0
   133a8:	00078593          	mv	a1,a5
   133ac:	00040513          	mv	a0,s0
   133b0:	02e13023          	sd	a4,32(sp)
   133b4:	0bc020ef          	jal	15470 <_Bfree>
   133b8:	02013703          	ld	a4,32(sp)
   133bc:	013767b3          	or	a5,a4,s3
   133c0:	00079663          	bnez	a5,133cc <_dtoa_r+0x9c4>
   133c4:	01012783          	lw	a5,16(sp)
   133c8:	24078063          	beqz	a5,13608 <_dtoa_r+0xc00>
   133cc:	260ac463          	bltz	s5,13634 <_dtoa_r+0xc2c>
   133d0:	013aeab3          	or	s5,s5,s3
   133d4:	000a9663          	bnez	s5,133e0 <_dtoa_r+0x9d8>
   133d8:	01012783          	lw	a5,16(sp)
   133dc:	24078c63          	beqz	a5,13634 <_dtoa_r+0xc2c>
   133e0:	5ee04263          	bgtz	a4,139c4 <_dtoa_r+0xfbc>
   133e4:	001c8c93          	addi	s9,s9,1
   133e8:	ffac8fa3          	sb	s10,-1(s9)
   133ec:	5f948463          	beq	s1,s9,139d4 <_dtoa_r+0xfcc>
   133f0:	00090593          	mv	a1,s2
   133f4:	00000693          	li	a3,0
   133f8:	00a00613          	li	a2,10
   133fc:	00040513          	mv	a0,s0
   13400:	094020ef          	jal	15494 <__multadd>
   13404:	00050913          	mv	s2,a0
   13408:	00000693          	li	a3,0
   1340c:	00a00613          	li	a2,10
   13410:	000a0593          	mv	a1,s4
   13414:	00040513          	mv	a0,s0
   13418:	27ba0463          	beq	s4,s11,13680 <_dtoa_r+0xc78>
   1341c:	078020ef          	jal	15494 <__multadd>
   13420:	000d8593          	mv	a1,s11
   13424:	00050a13          	mv	s4,a0
   13428:	00000693          	li	a3,0
   1342c:	00a00613          	li	a2,10
   13430:	00040513          	mv	a0,s0
   13434:	060020ef          	jal	15494 <__multadd>
   13438:	00050d93          	mv	s11,a0
   1343c:	f0dff06f          	j	13348 <_dtoa_r+0x940>
   13440:	01c00793          	li	a5,28
   13444:	00f8083b          	addw	a6,a6,a5
   13448:	00f484bb          	addw	s1,s1,a5
   1344c:	00fd8dbb          	addw	s11,s11,a5
   13450:	e6dff06f          	j	132bc <_dtoa_r+0x8b4>
   13454:	00813483          	ld	s1,8(sp)
   13458:	00100993          	li	s3,1
   1345c:	0100006f          	j	1346c <_dtoa_r+0xa64>
   13460:	034020ef          	jal	15494 <__multadd>
   13464:	00050913          	mv	s2,a0
   13468:	0019899b          	addiw	s3,s3,1
   1346c:	000c0593          	mv	a1,s8
   13470:	00090513          	mv	a0,s2
   13474:	ba8ff0ef          	jal	1281c <quorem>
   13478:	03050d1b          	addiw	s10,a0,48
   1347c:	00148493          	addi	s1,s1,1
   13480:	ffa48fa3          	sb	s10,-1(s1)
   13484:	00000693          	li	a3,0
   13488:	00a00613          	li	a2,10
   1348c:	00090593          	mv	a1,s2
   13490:	00040513          	mv	a0,s0
   13494:	fd59c6e3          	blt	s3,s5,13460 <_dtoa_r+0xa58>
   13498:	00000993          	li	s3,0
   1349c:	00090593          	mv	a1,s2
   134a0:	00100613          	li	a2,1
   134a4:	00040513          	mv	a0,s0
   134a8:	6b4020ef          	jal	15b5c <__lshift>
   134ac:	000c0593          	mv	a1,s8
   134b0:	02a13023          	sd	a0,32(sp)
   134b4:	009020ef          	jal	15cbc <__mcmp>
   134b8:	34a05463          	blez	a0,13800 <_dtoa_r+0xdf8>
   134bc:	fff4c703          	lbu	a4,-1(s1)
   134c0:	03900693          	li	a3,57
   134c4:	0140006f          	j	134d8 <_dtoa_r+0xad0>
   134c8:	00813703          	ld	a4,8(sp)
   134cc:	26e78a63          	beq	a5,a4,13740 <_dtoa_r+0xd38>
   134d0:	fff7c703          	lbu	a4,-1(a5)
   134d4:	00078493          	mv	s1,a5
   134d8:	fff48793          	addi	a5,s1,-1
   134dc:	fed706e3          	beq	a4,a3,134c8 <_dtoa_r+0xac0>
   134e0:	0017071b          	addiw	a4,a4,1
   134e4:	00e78023          	sb	a4,0(a5)
   134e8:	000c0593          	mv	a1,s8
   134ec:	00040513          	mv	a0,s0
   134f0:	781010ef          	jal	15470 <_Bfree>
   134f4:	9e0a0ae3          	beqz	s4,12ee8 <_dtoa_r+0x4e0>
   134f8:	00098a63          	beqz	s3,1350c <_dtoa_r+0xb04>
   134fc:	01498863          	beq	s3,s4,1350c <_dtoa_r+0xb04>
   13500:	00098593          	mv	a1,s3
   13504:	00040513          	mv	a0,s0
   13508:	769010ef          	jal	15470 <_Bfree>
   1350c:	000a0593          	mv	a1,s4
   13510:	00040513          	mv	a0,s0
   13514:	75d010ef          	jal	15470 <_Bfree>
   13518:	9d1ff06f          	j	12ee8 <_dtoa_r+0x4e0>
   1351c:	000c0593          	mv	a1,s8
   13520:	00090513          	mv	a0,s2
   13524:	798020ef          	jal	15cbc <__mcmp>
   13528:	dc0556e3          	bgez	a0,132f4 <_dtoa_r+0x8ec>
   1352c:	00090593          	mv	a1,s2
   13530:	00000693          	li	a3,0
   13534:	00a00613          	li	a2,10
   13538:	00040513          	mv	a0,s0
   1353c:	759010ef          	jal	15494 <__multadd>
   13540:	01012783          	lw	a5,16(sp)
   13544:	00050913          	mv	s2,a0
   13548:	fffb8b9b          	addiw	s7,s7,-1
   1354c:	56079063          	bnez	a5,13aac <_dtoa_r+0x10a4>
   13550:	03412783          	lw	a5,52(sp)
   13554:	00078a93          	mv	s5,a5
   13558:	eef04ee3          	bgtz	a5,13454 <_dtoa_r+0xa4c>
   1355c:	00200793          	li	a5,2
   13560:	5937c063          	blt	a5,s3,13ae0 <_dtoa_r+0x10d8>
   13564:	000c0593          	mv	a1,s8
   13568:	ab4ff0ef          	jal	1281c <quorem>
   1356c:	00813783          	ld	a5,8(sp)
   13570:	03050d1b          	addiw	s10,a0,48
   13574:	00178493          	addi	s1,a5,1
   13578:	ffa48fa3          	sb	s10,-1(s1)
   1357c:	f1dff06f          	j	13498 <_dtoa_r+0xa90>
   13580:	000d8793          	mv	a5,s11
   13584:	b79ff06f          	j	130fc <_dtoa_r+0x6f4>
   13588:	02012023          	sw	zero,32(sp)
   1358c:	c75ff06f          	j	13200 <_dtoa_r+0x7f8>
   13590:	00100793          	li	a5,1
   13594:	00f12823          	sw	a5,16(sp)
   13598:	0f905c63          	blez	s9,13690 <_dtoa_r+0xc88>
   1359c:	000c8513          	mv	a0,s9
   135a0:	000c8493          	mv	s1,s9
   135a4:	03912a23          	sw	s9,52(sp)
   135a8:	000c8a93          	mv	s5,s9
   135ac:	f3cff06f          	j	12ce8 <_dtoa_r+0x2e0>
   135b0:	a1504ce3          	bgtz	s5,12fc8 <_dtoa_r+0x5c0>
   135b4:	1e0a9e63          	bnez	s5,137b0 <_dtoa_r+0xda8>
   135b8:	0001c7b7          	lui	a5,0x1c
   135bc:	8387b787          	fld	fa5,-1992(a5) # 1b838 <__wctomb+0x40>
   135c0:	00000c13          	li	s8,0
   135c4:	00000a13          	li	s4,0
   135c8:	12f6f6d3          	fmul.d	fa3,fa3,fa5
   135cc:	f20d07d3          	fmv.d.x	fa5,s10
   135d0:	a2d78753          	fle.d	a4,fa5,fa3
   135d4:	14070a63          	beqz	a4,13728 <_dtoa_r+0xd20>
   135d8:	00813483          	ld	s1,8(sp)
   135dc:	fffccb93          	not	s7,s9
   135e0:	000c0593          	mv	a1,s8
   135e4:	00040513          	mv	a0,s0
   135e8:	689010ef          	jal	15470 <_Bfree>
   135ec:	8e0a0ee3          	beqz	s4,12ee8 <_dtoa_r+0x4e0>
   135f0:	f1dff06f          	j	1350c <_dtoa_r+0xb04>
   135f4:	3e090c63          	beqz	s2,139ec <_dtoa_r+0xfe4>
   135f8:	4337879b          	addiw	a5,a5,1075
   135fc:	000c0693          	mv	a3,s8
   13600:	00080493          	mv	s1,a6
   13604:	abdff06f          	j	130c0 <_dtoa_r+0x6b8>
   13608:	03900793          	li	a5,57
   1360c:	04fd0a63          	beq	s10,a5,13660 <_dtoa_r+0xc58>
   13610:	01505663          	blez	s5,1361c <_dtoa_r+0xc14>
   13614:	03012783          	lw	a5,48(sp)
   13618:	03178d1b          	addiw	s10,a5,49
   1361c:	000a0993          	mv	s3,s4
   13620:	001c8493          	addi	s1,s9,1
   13624:	01ac8023          	sb	s10,0(s9)
   13628:	000d8a13          	mv	s4,s11
   1362c:	03213023          	sd	s2,32(sp)
   13630:	eb9ff06f          	j	134e8 <_dtoa_r+0xae0>
   13634:	fee054e3          	blez	a4,1361c <_dtoa_r+0xc14>
   13638:	00090593          	mv	a1,s2
   1363c:	00100613          	li	a2,1
   13640:	00040513          	mv	a0,s0
   13644:	518020ef          	jal	15b5c <__lshift>
   13648:	000c0593          	mv	a1,s8
   1364c:	00050913          	mv	s2,a0
   13650:	66c020ef          	jal	15cbc <__mcmp>
   13654:	44a05063          	blez	a0,13a94 <_dtoa_r+0x108c>
   13658:	03900793          	li	a5,57
   1365c:	fafd1ce3          	bne	s10,a5,13614 <_dtoa_r+0xc0c>
   13660:	03900793          	li	a5,57
   13664:	000a0993          	mv	s3,s4
   13668:	001c8493          	addi	s1,s9,1
   1366c:	00fc8023          	sb	a5,0(s9)
   13670:	000d8a13          	mv	s4,s11
   13674:	03213023          	sd	s2,32(sp)
   13678:	03900713          	li	a4,57
   1367c:	e45ff06f          	j	134c0 <_dtoa_r+0xab8>
   13680:	615010ef          	jal	15494 <__multadd>
   13684:	00050a13          	mv	s4,a0
   13688:	00050d93          	mv	s11,a0
   1368c:	cbdff06f          	j	13348 <_dtoa_r+0x940>
   13690:	00100493          	li	s1,1
   13694:	02912a23          	sw	s1,52(sp)
   13698:	00048a93          	mv	s5,s1
   1369c:	00048c93          	mv	s9,s1
   136a0:	06042423          	sw	zero,104(s0)
   136a4:	00000593          	li	a1,0
   136a8:	e74ff06f          	j	12d1c <_dtoa_r+0x314>
   136ac:	00012823          	sw	zero,16(sp)
   136b0:	00200793          	li	a5,2
   136b4:	eef982e3          	beq	s3,a5,13598 <_dtoa_r+0xb90>
   136b8:	06042423          	sw	zero,104(s0)
   136bc:	00000593          	li	a1,0
   136c0:	00040513          	mv	a0,s0
   136c4:	03013c23          	sd	a6,56(sp)
   136c8:	4fd010ef          	jal	153c4 <_Balloc>
   136cc:	fff00a93          	li	s5,-1
   136d0:	00100793          	li	a5,1
   136d4:	00a13423          	sd	a0,8(sp)
   136d8:	06a43023          	sd	a0,96(s0)
   136dc:	03512a23          	sw	s5,52(sp)
   136e0:	00000c93          	li	s9,0
   136e4:	00f12823          	sw	a5,16(sp)
   136e8:	03813803          	ld	a6,56(sp)
   136ec:	8b5ff06f          	j	12fa0 <_dtoa_r+0x598>
   136f0:	00200793          	li	a5,2
   136f4:	c137d2e3          	ble	s3,a5,132f8 <_dtoa_r+0x8f0>
   136f8:	300a9663          	bnez	s5,13a04 <_dtoa_r+0xffc>
   136fc:	000c0593          	mv	a1,s8
   13700:	00000693          	li	a3,0
   13704:	00500613          	li	a2,5
   13708:	00040513          	mv	a0,s0
   1370c:	589010ef          	jal	15494 <__multadd>
   13710:	00050593          	mv	a1,a0
   13714:	00050c13          	mv	s8,a0
   13718:	00090513          	mv	a0,s2
   1371c:	5a0020ef          	jal	15cbc <__mcmp>
   13720:	03213023          	sd	s2,32(sp)
   13724:	eaa05ae3          	blez	a0,135d8 <_dtoa_r+0xbd0>
   13728:	00813703          	ld	a4,8(sp)
   1372c:	03100793          	li	a5,49
   13730:	001b8b9b          	addiw	s7,s7,1
   13734:	00170493          	addi	s1,a4,1
   13738:	00f70023          	sb	a5,0(a4)
   1373c:	ea5ff06f          	j	135e0 <_dtoa_r+0xbd8>
   13740:	00813703          	ld	a4,8(sp)
   13744:	03100793          	li	a5,49
   13748:	001b8b9b          	addiw	s7,s7,1
   1374c:	00f70023          	sb	a5,0(a4)
   13750:	d99ff06f          	j	134e8 <_dtoa_r+0xae0>
   13754:	00012823          	sw	zero,16(sp)
   13758:	d78ff06f          	j	12cd0 <_dtoa_r+0x2c8>
   1375c:	0001c7b7          	lui	a5,0x1c
   13760:	d20706d3          	fcvt.d.w	fa3,a4
   13764:	8307b707          	fld	fa4,-2000(a5) # 1b830 <__wctomb+0x38>
   13768:	fcc006b7          	lui	a3,0xfcc00
   1376c:	72d7f743          	fmadd.d	fa4,fa5,fa3,fa4
   13770:	e2070753          	fmv.x.d	a4,fa4
   13774:	42075793          	srai	a5,a4,0x20
   13778:	00d787bb          	addw	a5,a5,a3
   1377c:	02071713          	slli	a4,a4,0x20
   13780:	02079793          	slli	a5,a5,0x20
   13784:	02075713          	srli	a4,a4,0x20
   13788:	00f76733          	or	a4,a4,a5
   1378c:	0001c7b7          	lui	a5,0x1c
   13790:	8387b707          	fld	fa4,-1992(a5) # 1b838 <__wctomb+0x40>
   13794:	f20706d3          	fmv.d.x	fa3,a4
   13798:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
   1379c:	a2f697d3          	flt.d	a5,fa3,fa5
   137a0:	16079463          	bnez	a5,13908 <_dtoa_r+0xf00>
   137a4:	22d69753          	fneg.d	fa4,fa3
   137a8:	a2e797d3          	flt.d	a5,fa5,fa4
   137ac:	06078e63          	beqz	a5,13828 <_dtoa_r+0xe20>
   137b0:	00000c13          	li	s8,0
   137b4:	00000a13          	li	s4,0
   137b8:	e21ff06f          	j	135d8 <_dtoa_r+0xbd0>
   137bc:	00090593          	mv	a1,s2
   137c0:	000c0613          	mv	a2,s8
   137c4:	00040513          	mv	a0,s0
   137c8:	03013023          	sd	a6,32(sp)
   137cc:	258020ef          	jal	15a24 <__pow5mult>
   137d0:	00050913          	mv	s2,a0
   137d4:	02013803          	ld	a6,32(sp)
   137d8:	9b1ff06f          	j	13188 <_dtoa_r+0x780>
   137dc:	00813503          	ld	a0,8(sp)
   137e0:	af4ff06f          	j	12ad4 <_dtoa_r+0xcc>
   137e4:	02812783          	lw	a5,40(sp)
   137e8:	41868c3b          	subw	s8,a3,s8
   137ec:	018787bb          	addw	a5,a5,s8
   137f0:	02f12423          	sw	a5,40(sp)
   137f4:	00068c13          	mv	s8,a3
   137f8:	00000693          	li	a3,0
   137fc:	8b9ff06f          	j	130b4 <_dtoa_r+0x6ac>
   13800:	00051663          	bnez	a0,1380c <_dtoa_r+0xe04>
   13804:	001d7d13          	andi	s10,s10,1
   13808:	ca0d1ae3          	bnez	s10,134bc <_dtoa_r+0xab4>
   1380c:	03000693          	li	a3,48
   13810:	0080006f          	j	13818 <_dtoa_r+0xe10>
   13814:	00070493          	mv	s1,a4
   13818:	fff4c783          	lbu	a5,-1(s1)
   1381c:	fff48713          	addi	a4,s1,-1
   13820:	fed78ae3          	beq	a5,a3,13814 <_dtoa_r+0xe0c>
   13824:	cc5ff06f          	j	134e8 <_dtoa_r+0xae0>
   13828:	03813d03          	ld	s10,56(sp)
   1382c:	f74ff06f          	j	12fa0 <_dtoa_r+0x598>
   13830:	a2f6a753          	feq.d	a4,fa3,fa5
   13834:	00068493          	mv	s1,a3
   13838:	ea070863          	beqz	a4,12ee8 <_dtoa_r+0x4e0>
   1383c:	0017f793          	andi	a5,a5,1
   13840:	ea078463          	beqz	a5,12ee8 <_dtoa_r+0x4e0>
   13844:	fff6c783          	lbu	a5,-1(a3) # fffffffffcbfffff <_gp+0xfffffffffcbe403f>
   13848:	825ff06f          	j	1306c <_dtoa_r+0x664>
   1384c:	417007bb          	negw	a5,s7
   13850:	03813787          	fld	fa5,56(sp)
   13854:	00200713          	li	a4,2
   13858:	d6078063          	beqz	a5,12db8 <_dtoa_r+0x3b0>
   1385c:	00f7f693          	andi	a3,a5,15
   13860:	00019637          	lui	a2,0x19
   13864:	00369693          	slli	a3,a3,0x3
   13868:	3e860613          	addi	a2,a2,1000 # 193e8 <__mprec_tens>
   1386c:	00c686b3          	add	a3,a3,a2
   13870:	0006b787          	fld	fa5,0(a3)
   13874:	03813707          	fld	fa4,56(sp)
   13878:	4047d79b          	sraiw	a5,a5,0x4
   1387c:	12f777d3          	fmul.d	fa5,fa4,fa5
   13880:	d2078c63          	beqz	a5,12db8 <_dtoa_r+0x3b0>
   13884:	000196b7          	lui	a3,0x19
   13888:	4d868693          	addi	a3,a3,1240 # 194d8 <__mprec_bigtens>
   1388c:	0017f613          	andi	a2,a5,1
   13890:	4017d79b          	sraiw	a5,a5,0x1
   13894:	00060863          	beqz	a2,138a4 <_dtoa_r+0xe9c>
   13898:	0006b707          	fld	fa4,0(a3)
   1389c:	0017071b          	addiw	a4,a4,1
   138a0:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   138a4:	00868693          	addi	a3,a3,8
   138a8:	fe0792e3          	bnez	a5,1388c <_dtoa_r+0xe84>
   138ac:	d0cff06f          	j	12db8 <_dtoa_r+0x3b0>
   138b0:	00813683          	ld	a3,8(sp)
   138b4:	03000793          	li	a5,48
   138b8:	001b8b9b          	addiw	s7,s7,1
   138bc:	00f68023          	sb	a5,0(a3)
   138c0:	fff4c783          	lbu	a5,-1(s1)
   138c4:	fc8ff06f          	j	1308c <_dtoa_r+0x684>
   138c8:	008a2583          	lw	a1,8(s4)
   138cc:	00040513          	mv	a0,s0
   138d0:	2f5010ef          	jal	153c4 <_Balloc>
   138d4:	014a2603          	lw	a2,20(s4)
   138d8:	00050493          	mv	s1,a0
   138dc:	010a0593          	addi	a1,s4,16
   138e0:	00260613          	addi	a2,a2,2
   138e4:	00261613          	slli	a2,a2,0x2
   138e8:	01050513          	addi	a0,a0,16
   138ec:	0d5010ef          	jal	151c0 <memcpy>
   138f0:	00100613          	li	a2,1
   138f4:	00048593          	mv	a1,s1
   138f8:	00040513          	mv	a0,s0
   138fc:	260020ef          	jal	15b5c <__lshift>
   13900:	00050d93          	mv	s11,a0
   13904:	a21ff06f          	j	13324 <_dtoa_r+0x91c>
   13908:	00000c13          	li	s8,0
   1390c:	00000a13          	li	s4,0
   13910:	e19ff06f          	j	13728 <_dtoa_r+0xd20>
   13914:	fff6079b          	addiw	a5,a2,-1
   13918:	00019537          	lui	a0,0x19
   1391c:	c20795d3          	fcvt.w.d	a1,fa5,rtz
   13920:	00379793          	slli	a5,a5,0x3
   13924:	3e850513          	addi	a0,a0,1000 # 193e8 <__mprec_tens>
   13928:	00a787b3          	add	a5,a5,a0
   1392c:	0007b707          	fld	fa4,0(a5)
   13930:	00813783          	ld	a5,8(sp)
   13934:	d20586d3          	fcvt.d.w	fa3,a1
   13938:	f2070653          	fmv.d.x	fa2,a4
   1393c:	0305859b          	addiw	a1,a1,48
   13940:	00b78023          	sb	a1,0(a5)
   13944:	00178493          	addi	s1,a5,1
   13948:	00100793          	li	a5,1
   1394c:	12c77653          	fmul.d	fa2,fa4,fa2
   13950:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   13954:	04f60863          	beq	a2,a5,139a4 <_dtoa_r+0xf9c>
   13958:	ffe6061b          	addiw	a2,a2,-2
   1395c:	0001c7b7          	lui	a5,0x1c
   13960:	02061593          	slli	a1,a2,0x20
   13964:	8287b687          	fld	fa3,-2008(a5) # 1b828 <__wctomb+0x30>
   13968:	00813783          	ld	a5,8(sp)
   1396c:	0205d593          	srli	a1,a1,0x20
   13970:	00258513          	addi	a0,a1,2
   13974:	00a78533          	add	a0,a5,a0
   13978:	00048613          	mv	a2,s1
   1397c:	12d7f7d3          	fmul.d	fa5,fa5,fa3
   13980:	00160613          	addi	a2,a2,1
   13984:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   13988:	d2078753          	fcvt.d.w	fa4,a5
   1398c:	0307879b          	addiw	a5,a5,48
   13990:	fef60fa3          	sb	a5,-1(a2)
   13994:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
   13998:	fea612e3          	bne	a2,a0,1397c <_dtoa_r+0xf74>
   1399c:	00158593          	addi	a1,a1,1
   139a0:	00b484b3          	add	s1,s1,a1
   139a4:	0001c7b7          	lui	a5,0x1c
   139a8:	8407b707          	fld	fa4,-1984(a5) # 1b840 <__wctomb+0x48>
   139ac:	02e676d3          	fadd.d	fa3,fa2,fa4
   139b0:	a2f697d3          	flt.d	a5,fa3,fa5
   139b4:	0a078663          	beqz	a5,13a60 <_dtoa_r+0x1058>
   139b8:	fff4c783          	lbu	a5,-1(s1)
   139bc:	00068b93          	mv	s7,a3
   139c0:	eacff06f          	j	1306c <_dtoa_r+0x664>
   139c4:	03900793          	li	a5,57
   139c8:	c8fd0ce3          	beq	s10,a5,13660 <_dtoa_r+0xc58>
   139cc:	001d0d1b          	addiw	s10,s10,1
   139d0:	c4dff06f          	j	1361c <_dtoa_r+0xc14>
   139d4:	000a0993          	mv	s3,s4
   139d8:	000d8a13          	mv	s4,s11
   139dc:	ac1ff06f          	j	1349c <_dtoa_r+0xa94>
   139e0:	415804bb          	subw	s1,a6,s5
   139e4:	00000793          	li	a5,0
   139e8:	ed8ff06f          	j	130c0 <_dtoa_r+0x6b8>
   139ec:	05812603          	lw	a2,88(sp)
   139f0:	03600793          	li	a5,54
   139f4:	000c0693          	mv	a3,s8
   139f8:	40c787bb          	subw	a5,a5,a2
   139fc:	00080493          	mv	s1,a6
   13a00:	ec0ff06f          	j	130c0 <_dtoa_r+0x6b8>
   13a04:	03213023          	sd	s2,32(sp)
   13a08:	bd1ff06f          	j	135d8 <_dtoa_r+0xbd0>
   13a0c:	d40a88e3          	beqz	s5,1375c <_dtoa_r+0xd54>
   13a10:	03412603          	lw	a2,52(sp)
   13a14:	e0c05ae3          	blez	a2,13828 <_dtoa_r+0xe20>
   13a18:	0001c7b7          	lui	a5,0x1c
   13a1c:	8287b707          	fld	fa4,-2008(a5) # 1b828 <__wctomb+0x30>
   13a20:	0017071b          	addiw	a4,a4,1
   13a24:	0001c7b7          	lui	a5,0x1c
   13a28:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   13a2c:	d20706d3          	fcvt.d.w	fa3,a4
   13a30:	8307b707          	fld	fa4,-2000(a5) # 1b830 <__wctomb+0x38>
   13a34:	fcc005b7          	lui	a1,0xfcc00
   13a38:	fffb869b          	addiw	a3,s7,-1
   13a3c:	72d7f743          	fmadd.d	fa4,fa5,fa3,fa4
   13a40:	e2070753          	fmv.x.d	a4,fa4
   13a44:	42075793          	srai	a5,a4,0x20
   13a48:	00b787bb          	addw	a5,a5,a1
   13a4c:	02071713          	slli	a4,a4,0x20
   13a50:	02079793          	slli	a5,a5,0x20
   13a54:	02075713          	srli	a4,a4,0x20
   13a58:	00f76733          	or	a4,a4,a5
   13a5c:	bb0ff06f          	j	12e0c <_dtoa_r+0x404>
   13a60:	0ac77753          	fsub.d	fa4,fa4,fa2
   13a64:	03000613          	li	a2,48
   13a68:	a2e797d3          	flt.d	a5,fa5,fa4
   13a6c:	00079663          	bnez	a5,13a78 <_dtoa_r+0x1070>
   13a70:	db9ff06f          	j	13828 <_dtoa_r+0xe20>
   13a74:	00070493          	mv	s1,a4
   13a78:	fff4c783          	lbu	a5,-1(s1)
   13a7c:	fff48713          	addi	a4,s1,-1
   13a80:	fec78ae3          	beq	a5,a2,13a74 <_dtoa_r+0x106c>
   13a84:	00068b93          	mv	s7,a3
   13a88:	c60ff06f          	j	12ee8 <_dtoa_r+0x4e0>
   13a8c:	00068b93          	mv	s7,a3
   13a90:	ddcff06f          	j	1306c <_dtoa_r+0x664>
   13a94:	b80514e3          	bnez	a0,1361c <_dtoa_r+0xc14>
   13a98:	001d7793          	andi	a5,s10,1
   13a9c:	b80780e3          	beqz	a5,1361c <_dtoa_r+0xc14>
   13aa0:	bb9ff06f          	j	13658 <_dtoa_r+0xc50>
   13aa4:	00048693          	mv	a3,s1
   13aa8:	db0ff06f          	j	13058 <_dtoa_r+0x650>
   13aac:	000a0593          	mv	a1,s4
   13ab0:	00000693          	li	a3,0
   13ab4:	00a00613          	li	a2,10
   13ab8:	00040513          	mv	a0,s0
   13abc:	1d9010ef          	jal	15494 <__multadd>
   13ac0:	03412783          	lw	a5,52(sp)
   13ac4:	00050a13          	mv	s4,a0
   13ac8:	00078a93          	mv	s5,a5
   13acc:	82f04ae3          	bgtz	a5,13300 <_dtoa_r+0x8f8>
   13ad0:	00200793          	li	a5,2
   13ad4:	0137c663          	blt	a5,s3,13ae0 <_dtoa_r+0x10d8>
   13ad8:	03412a83          	lw	s5,52(sp)
   13adc:	825ff06f          	j	13300 <_dtoa_r+0x8f8>
   13ae0:	03412a83          	lw	s5,52(sp)
   13ae4:	c15ff06f          	j	136f8 <_dtoa_r+0xcf0>
   13ae8:	00cd1713          	slli	a4,s10,0xc
   13aec:	ee070263          	beqz	a4,131d0 <_dtoa_r+0x7c8>
   13af0:	f94ff06f          	j	13284 <_dtoa_r+0x87c>
   13af4:	fcc68463          	beq	a3,a2,132bc <_dtoa_r+0x8b4>
   13af8:	03c00693          	li	a3,60
   13afc:	40f687bb          	subw	a5,a3,a5
   13b00:	945ff06f          	j	13444 <_dtoa_r+0xa3c>

0000000000013b04 <__sflush_r>:
   13b04:	01059683          	lh	a3,16(a1) # fffffffffcc00010 <_gp+0xfffffffffcbe4050>
   13b08:	fd010113          	addi	sp,sp,-48
   13b0c:	00913c23          	sd	s1,24(sp)
   13b10:	03069713          	slli	a4,a3,0x30
   13b14:	03075713          	srli	a4,a4,0x30
   13b18:	01313423          	sd	s3,8(sp)
   13b1c:	02113423          	sd	ra,40(sp)
   13b20:	02813023          	sd	s0,32(sp)
   13b24:	01213823          	sd	s2,16(sp)
   13b28:	00877793          	andi	a5,a4,8
   13b2c:	00058493          	mv	s1,a1
   13b30:	00050993          	mv	s3,a0
   13b34:	0e079863          	bnez	a5,13c24 <__sflush_r+0x120>
   13b38:	000017b7          	lui	a5,0x1
   13b3c:	8007879b          	addiw	a5,a5,-2048
   13b40:	00f6e7b3          	or	a5,a3,a5
   13b44:	0107979b          	slliw	a5,a5,0x10
   13b48:	0085a703          	lw	a4,8(a1)
   13b4c:	4107d79b          	sraiw	a5,a5,0x10
   13b50:	00f59823          	sh	a5,16(a1)
   13b54:	1ae05863          	blez	a4,13d04 <__sflush_r+0x200>
   13b58:	0484b703          	ld	a4,72(s1)
   13b5c:	0a070463          	beqz	a4,13c04 <__sflush_r+0x100>
   13b60:	03079793          	slli	a5,a5,0x30
   13b64:	0307d793          	srli	a5,a5,0x30
   13b68:	0009a403          	lw	s0,0(s3)
   13b6c:	03379693          	slli	a3,a5,0x33
   13b70:	0009a023          	sw	zero,0(s3)
   13b74:	1806de63          	bgez	a3,13d10 <__sflush_r+0x20c>
   13b78:	0904b603          	ld	a2,144(s1)
   13b7c:	0047f793          	andi	a5,a5,4
   13b80:	00078e63          	beqz	a5,13b9c <__sflush_r+0x98>
   13b84:	0084a683          	lw	a3,8(s1)
   13b88:	0584b783          	ld	a5,88(s1)
   13b8c:	40d60633          	sub	a2,a2,a3
   13b90:	00078663          	beqz	a5,13b9c <__sflush_r+0x98>
   13b94:	0704a783          	lw	a5,112(s1)
   13b98:	40f60633          	sub	a2,a2,a5
   13b9c:	0304b583          	ld	a1,48(s1)
   13ba0:	00000693          	li	a3,0
   13ba4:	00098513          	mv	a0,s3
   13ba8:	000700e7          	jalr	a4
   13bac:	fff00793          	li	a5,-1
   13bb0:	0ef50c63          	beq	a0,a5,13ca8 <__sflush_r+0x1a4>
   13bb4:	0104d683          	lhu	a3,16(s1)
   13bb8:	fffff7b7          	lui	a5,0xfffff
   13bbc:	7ff7879b          	addiw	a5,a5,2047
   13bc0:	0184b703          	ld	a4,24(s1)
   13bc4:	00f6f7b3          	and	a5,a3,a5
   13bc8:	0107979b          	slliw	a5,a5,0x10
   13bcc:	4107d79b          	sraiw	a5,a5,0x10
   13bd0:	00e4b023          	sd	a4,0(s1)
   13bd4:	00f49823          	sh	a5,16(s1)
   13bd8:	0004a423          	sw	zero,8(s1)
   13bdc:	03379713          	slli	a4,a5,0x33
   13be0:	10074e63          	bltz	a4,13cfc <__sflush_r+0x1f8>
   13be4:	0584b583          	ld	a1,88(s1)
   13be8:	0089a023          	sw	s0,0(s3)
   13bec:	00058c63          	beqz	a1,13c04 <__sflush_r+0x100>
   13bf0:	07448793          	addi	a5,s1,116
   13bf4:	00f58663          	beq	a1,a5,13c00 <__sflush_r+0xfc>
   13bf8:	00098513          	mv	a0,s3
   13bfc:	678000ef          	jal	14274 <_free_r>
   13c00:	0404bc23          	sd	zero,88(s1)
   13c04:	00000513          	li	a0,0
   13c08:	02813083          	ld	ra,40(sp)
   13c0c:	02013403          	ld	s0,32(sp)
   13c10:	01813483          	ld	s1,24(sp)
   13c14:	01013903          	ld	s2,16(sp)
   13c18:	00813983          	ld	s3,8(sp)
   13c1c:	03010113          	addi	sp,sp,48
   13c20:	00008067          	ret
   13c24:	0185b903          	ld	s2,24(a1)
   13c28:	fc090ee3          	beqz	s2,13c04 <__sflush_r+0x100>
   13c2c:	0005b403          	ld	s0,0(a1)
   13c30:	00377713          	andi	a4,a4,3
   13c34:	0125b023          	sd	s2,0(a1)
   13c38:	4124043b          	subw	s0,s0,s2
   13c3c:	00000793          	li	a5,0
   13c40:	00071463          	bnez	a4,13c48 <__sflush_r+0x144>
   13c44:	0205a783          	lw	a5,32(a1)
   13c48:	00f4a623          	sw	a5,12(s1)
   13c4c:	00804863          	bgtz	s0,13c5c <__sflush_r+0x158>
   13c50:	fb5ff06f          	j	13c04 <__sflush_r+0x100>
   13c54:	00a90933          	add	s2,s2,a0
   13c58:	fa8056e3          	blez	s0,13c04 <__sflush_r+0x100>
   13c5c:	0404b783          	ld	a5,64(s1)
   13c60:	0304b583          	ld	a1,48(s1)
   13c64:	00040693          	mv	a3,s0
   13c68:	00090613          	mv	a2,s2
   13c6c:	00098513          	mv	a0,s3
   13c70:	000780e7          	jalr	a5
   13c74:	40a4043b          	subw	s0,s0,a0
   13c78:	fca04ee3          	bgtz	a0,13c54 <__sflush_r+0x150>
   13c7c:	0104d783          	lhu	a5,16(s1)
   13c80:	02813083          	ld	ra,40(sp)
   13c84:	fff00513          	li	a0,-1
   13c88:	0407e793          	ori	a5,a5,64
   13c8c:	00f49823          	sh	a5,16(s1)
   13c90:	02013403          	ld	s0,32(sp)
   13c94:	01813483          	ld	s1,24(sp)
   13c98:	01013903          	ld	s2,16(sp)
   13c9c:	00813983          	ld	s3,8(sp)
   13ca0:	03010113          	addi	sp,sp,48
   13ca4:	00008067          	ret
   13ca8:	0009a703          	lw	a4,0(s3)
   13cac:	01d00793          	li	a5,29
   13cb0:	fce7e6e3          	bltu	a5,a4,13c7c <__sflush_r+0x178>
   13cb4:	204007b7          	lui	a5,0x20400
   13cb8:	00178793          	addi	a5,a5,1 # 20400001 <_gp+0x203e4041>
   13cbc:	00e7d7b3          	srl	a5,a5,a4
   13cc0:	0017f793          	andi	a5,a5,1
   13cc4:	fa078ce3          	beqz	a5,13c7c <__sflush_r+0x178>
   13cc8:	0104d603          	lhu	a2,16(s1)
   13ccc:	fffff7b7          	lui	a5,0xfffff
   13cd0:	7ff7879b          	addiw	a5,a5,2047
   13cd4:	0184b683          	ld	a3,24(s1)
   13cd8:	00f677b3          	and	a5,a2,a5
   13cdc:	0107979b          	slliw	a5,a5,0x10
   13ce0:	4107d79b          	sraiw	a5,a5,0x10
   13ce4:	00d4b023          	sd	a3,0(s1)
   13ce8:	00f49823          	sh	a5,16(s1)
   13cec:	0004a423          	sw	zero,8(s1)
   13cf0:	03379693          	slli	a3,a5,0x33
   13cf4:	ee06d8e3          	bgez	a3,13be4 <__sflush_r+0xe0>
   13cf8:	ee0716e3          	bnez	a4,13be4 <__sflush_r+0xe0>
   13cfc:	08a4b823          	sd	a0,144(s1)
   13d00:	ee5ff06f          	j	13be4 <__sflush_r+0xe0>
   13d04:	0705a703          	lw	a4,112(a1)
   13d08:	e4e048e3          	bgtz	a4,13b58 <__sflush_r+0x54>
   13d0c:	ef9ff06f          	j	13c04 <__sflush_r+0x100>
   13d10:	0304b583          	ld	a1,48(s1)
   13d14:	00000613          	li	a2,0
   13d18:	00100693          	li	a3,1
   13d1c:	00098513          	mv	a0,s3
   13d20:	000700e7          	jalr	a4
   13d24:	fff00793          	li	a5,-1
   13d28:	00050613          	mv	a2,a0
   13d2c:	00f50863          	beq	a0,a5,13d3c <__sflush_r+0x238>
   13d30:	0104d783          	lhu	a5,16(s1)
   13d34:	0484b703          	ld	a4,72(s1)
   13d38:	e45ff06f          	j	13b7c <__sflush_r+0x78>
   13d3c:	0009a783          	lw	a5,0(s3)
   13d40:	fe0788e3          	beqz	a5,13d30 <__sflush_r+0x22c>
   13d44:	01d00713          	li	a4,29
   13d48:	00e78663          	beq	a5,a4,13d54 <__sflush_r+0x250>
   13d4c:	01600713          	li	a4,22
   13d50:	00e79863          	bne	a5,a4,13d60 <__sflush_r+0x25c>
   13d54:	0089a023          	sw	s0,0(s3)
   13d58:	00000513          	li	a0,0
   13d5c:	eadff06f          	j	13c08 <__sflush_r+0x104>
   13d60:	0104d783          	lhu	a5,16(s1)
   13d64:	0407e793          	ori	a5,a5,64
   13d68:	00f49823          	sh	a5,16(s1)
   13d6c:	e9dff06f          	j	13c08 <__sflush_r+0x104>

0000000000013d70 <_fflush_r>:
   13d70:	fe010113          	addi	sp,sp,-32
   13d74:	00813823          	sd	s0,16(sp)
   13d78:	00113c23          	sd	ra,24(sp)
   13d7c:	00050413          	mv	s0,a0
   13d80:	00050663          	beqz	a0,13d8c <_fflush_r+0x1c>
   13d84:	05052783          	lw	a5,80(a0)
   13d88:	02078a63          	beqz	a5,13dbc <_fflush_r+0x4c>
   13d8c:	01059783          	lh	a5,16(a1)
   13d90:	00079c63          	bnez	a5,13da8 <_fflush_r+0x38>
   13d94:	01813083          	ld	ra,24(sp)
   13d98:	00000513          	li	a0,0
   13d9c:	01013403          	ld	s0,16(sp)
   13da0:	02010113          	addi	sp,sp,32
   13da4:	00008067          	ret
   13da8:	00040513          	mv	a0,s0
   13dac:	01813083          	ld	ra,24(sp)
   13db0:	01013403          	ld	s0,16(sp)
   13db4:	02010113          	addi	sp,sp,32
   13db8:	d4dff06f          	j	13b04 <__sflush_r>
   13dbc:	00b13423          	sd	a1,8(sp)
   13dc0:	35c000ef          	jal	1411c <__sinit>
   13dc4:	00813583          	ld	a1,8(sp)
   13dc8:	fc5ff06f          	j	13d8c <_fflush_r+0x1c>

0000000000013dcc <fflush>:
   13dcc:	00050593          	mv	a1,a0
   13dd0:	00050663          	beqz	a0,13ddc <fflush+0x10>
   13dd4:	8101b503          	ld	a0,-2032(gp) # 1b7d0 <_impure_ptr>
   13dd8:	f99ff06f          	j	13d70 <_fflush_r>
   13ddc:	8081b503          	ld	a0,-2040(gp) # 1b7c8 <_global_impure_ptr>
   13de0:	000145b7          	lui	a1,0x14
   13de4:	d7058593          	addi	a1,a1,-656 # 13d70 <_fflush_r>
   13de8:	04d0006f          	j	14634 <_fwalk_reent>

0000000000013dec <__fp_unlock>:
   13dec:	00000513          	li	a0,0
   13df0:	00008067          	ret

0000000000013df4 <_cleanup_r>:
   13df4:	000185b7          	lui	a1,0x18
   13df8:	b1458593          	addi	a1,a1,-1260 # 17b14 <_fclose_r>
   13dfc:	0390006f          	j	14634 <_fwalk_reent>

0000000000013e00 <__sinit.part.1>:
   13e00:	fc010113          	addi	sp,sp,-64
   13e04:	000147b7          	lui	a5,0x14
   13e08:	02113c23          	sd	ra,56(sp)
   13e0c:	02813823          	sd	s0,48(sp)
   13e10:	02913423          	sd	s1,40(sp)
   13e14:	00853403          	ld	s0,8(a0)
   13e18:	03213023          	sd	s2,32(sp)
   13e1c:	01313c23          	sd	s3,24(sp)
   13e20:	01413823          	sd	s4,16(sp)
   13e24:	01513423          	sd	s5,8(sp)
   13e28:	01613023          	sd	s6,0(sp)
   13e2c:	df478793          	addi	a5,a5,-524 # 13df4 <_cleanup_r>
   13e30:	04f53c23          	sd	a5,88(a0)
   13e34:	53850713          	addi	a4,a0,1336
   13e38:	00300793          	li	a5,3
   13e3c:	52e53823          	sd	a4,1328(a0)
   13e40:	52f52423          	sw	a5,1320(a0)
   13e44:	52053023          	sd	zero,1312(a0)
   13e48:	00400793          	li	a5,4
   13e4c:	00050913          	mv	s2,a0
   13e50:	00f41823          	sh	a5,16(s0)
   13e54:	00800613          	li	a2,8
   13e58:	00000593          	li	a1,0
   13e5c:	00043023          	sd	zero,0(s0)
   13e60:	00042423          	sw	zero,8(s0)
   13e64:	00042623          	sw	zero,12(s0)
   13e68:	0a042623          	sw	zero,172(s0)
   13e6c:	00041923          	sh	zero,18(s0)
   13e70:	00043c23          	sd	zero,24(s0)
   13e74:	02042023          	sw	zero,32(s0)
   13e78:	02042423          	sw	zero,40(s0)
   13e7c:	0a440513          	addi	a0,s0,164
   13e80:	460010ef          	jal	152e0 <memset>
   13e84:	00016b37          	lui	s6,0x16
   13e88:	01093483          	ld	s1,16(s2)
   13e8c:	00016ab7          	lui	s5,0x16
   13e90:	00016a37          	lui	s4,0x16
   13e94:	000169b7          	lui	s3,0x16
   13e98:	4a0b0b13          	addi	s6,s6,1184 # 164a0 <__sread>
   13e9c:	50ca8a93          	addi	s5,s5,1292 # 1650c <__swrite>
   13ea0:	57ca0a13          	addi	s4,s4,1404 # 1657c <__sseek>
   13ea4:	5e898993          	addi	s3,s3,1512 # 165e8 <__sclose>
   13ea8:	03643c23          	sd	s6,56(s0)
   13eac:	05543023          	sd	s5,64(s0)
   13eb0:	05443423          	sd	s4,72(s0)
   13eb4:	05343823          	sd	s3,80(s0)
   13eb8:	02843823          	sd	s0,48(s0)
   13ebc:	00900793          	li	a5,9
   13ec0:	00f49823          	sh	a5,16(s1)
   13ec4:	00100793          	li	a5,1
   13ec8:	00f49923          	sh	a5,18(s1)
   13ecc:	00800613          	li	a2,8
   13ed0:	00000593          	li	a1,0
   13ed4:	0004b023          	sd	zero,0(s1)
   13ed8:	0004a423          	sw	zero,8(s1)
   13edc:	0004a623          	sw	zero,12(s1)
   13ee0:	0a04a623          	sw	zero,172(s1)
   13ee4:	0004bc23          	sd	zero,24(s1)
   13ee8:	0204a023          	sw	zero,32(s1)
   13eec:	0204a423          	sw	zero,40(s1)
   13ef0:	0a448513          	addi	a0,s1,164
   13ef4:	3ec010ef          	jal	152e0 <memset>
   13ef8:	01893403          	ld	s0,24(s2)
   13efc:	01200793          	li	a5,18
   13f00:	0364bc23          	sd	s6,56(s1)
   13f04:	0554b023          	sd	s5,64(s1)
   13f08:	0544b423          	sd	s4,72(s1)
   13f0c:	0534b823          	sd	s3,80(s1)
   13f10:	0294b823          	sd	s1,48(s1)
   13f14:	00f41823          	sh	a5,16(s0)
   13f18:	00200793          	li	a5,2
   13f1c:	00f41923          	sh	a5,18(s0)
   13f20:	00043023          	sd	zero,0(s0)
   13f24:	00042423          	sw	zero,8(s0)
   13f28:	00042623          	sw	zero,12(s0)
   13f2c:	0a042623          	sw	zero,172(s0)
   13f30:	00043c23          	sd	zero,24(s0)
   13f34:	02042023          	sw	zero,32(s0)
   13f38:	02042423          	sw	zero,40(s0)
   13f3c:	0a440513          	addi	a0,s0,164
   13f40:	00800613          	li	a2,8
   13f44:	00000593          	li	a1,0
   13f48:	398010ef          	jal	152e0 <memset>
   13f4c:	03813083          	ld	ra,56(sp)
   13f50:	03643c23          	sd	s6,56(s0)
   13f54:	05543023          	sd	s5,64(s0)
   13f58:	05443423          	sd	s4,72(s0)
   13f5c:	05343823          	sd	s3,80(s0)
   13f60:	02843823          	sd	s0,48(s0)
   13f64:	00100793          	li	a5,1
   13f68:	04f92823          	sw	a5,80(s2)
   13f6c:	03013403          	ld	s0,48(sp)
   13f70:	02813483          	ld	s1,40(sp)
   13f74:	02013903          	ld	s2,32(sp)
   13f78:	01813983          	ld	s3,24(sp)
   13f7c:	01013a03          	ld	s4,16(sp)
   13f80:	00813a83          	ld	s5,8(sp)
   13f84:	00013b03          	ld	s6,0(sp)
   13f88:	04010113          	addi	sp,sp,64
   13f8c:	00008067          	ret

0000000000013f90 <__fp_lock>:
   13f90:	00000513          	li	a0,0
   13f94:	00008067          	ret

0000000000013f98 <__sfmoreglue>:
   13f98:	fe010113          	addi	sp,sp,-32
   13f9c:	fff5879b          	addiw	a5,a1,-1
   13fa0:	00913423          	sd	s1,8(sp)
   13fa4:	0b000493          	li	s1,176
   13fa8:	029784b3          	mul	s1,a5,s1
   13fac:	01213023          	sd	s2,0(sp)
   13fb0:	00058913          	mv	s2,a1
   13fb4:	00813823          	sd	s0,16(sp)
   13fb8:	00113c23          	sd	ra,24(sp)
   13fbc:	0c848593          	addi	a1,s1,200
   13fc0:	1a9000ef          	jal	14968 <_malloc_r>
   13fc4:	00050413          	mv	s0,a0
   13fc8:	02050063          	beqz	a0,13fe8 <__sfmoreglue+0x50>
   13fcc:	01850513          	addi	a0,a0,24
   13fd0:	00043023          	sd	zero,0(s0)
   13fd4:	01242423          	sw	s2,8(s0)
   13fd8:	00a43823          	sd	a0,16(s0)
   13fdc:	0b048613          	addi	a2,s1,176
   13fe0:	00000593          	li	a1,0
   13fe4:	2fc010ef          	jal	152e0 <memset>
   13fe8:	01813083          	ld	ra,24(sp)
   13fec:	00040513          	mv	a0,s0
   13ff0:	00813483          	ld	s1,8(sp)
   13ff4:	01013403          	ld	s0,16(sp)
   13ff8:	00013903          	ld	s2,0(sp)
   13ffc:	02010113          	addi	sp,sp,32
   14000:	00008067          	ret

0000000000014004 <__sfp>:
   14004:	fd010113          	addi	sp,sp,-48
   14008:	01213823          	sd	s2,16(sp)
   1400c:	8081b903          	ld	s2,-2040(gp) # 1b7c8 <_global_impure_ptr>
   14010:	01313423          	sd	s3,8(sp)
   14014:	02113423          	sd	ra,40(sp)
   14018:	05092783          	lw	a5,80(s2)
   1401c:	02813023          	sd	s0,32(sp)
   14020:	00913c23          	sd	s1,24(sp)
   14024:	00050993          	mv	s3,a0
   14028:	00079663          	bnez	a5,14034 <__sfp+0x30>
   1402c:	00090513          	mv	a0,s2
   14030:	dd1ff0ef          	jal	13e00 <__sinit.part.1>
   14034:	52090913          	addi	s2,s2,1312
   14038:	fff00493          	li	s1,-1
   1403c:	00892783          	lw	a5,8(s2)
   14040:	01093403          	ld	s0,16(s2)
   14044:	fff7879b          	addiw	a5,a5,-1
   14048:	0007da63          	bgez	a5,1405c <__sfp+0x58>
   1404c:	0840006f          	j	140d0 <__sfp+0xcc>
   14050:	fff7879b          	addiw	a5,a5,-1
   14054:	0b040413          	addi	s0,s0,176
   14058:	06978c63          	beq	a5,s1,140d0 <__sfp+0xcc>
   1405c:	01041703          	lh	a4,16(s0)
   14060:	fe0718e3          	bnez	a4,14050 <__sfp+0x4c>
   14064:	fff00793          	li	a5,-1
   14068:	00f41923          	sh	a5,18(s0)
   1406c:	00100793          	li	a5,1
   14070:	00f41823          	sh	a5,16(s0)
   14074:	0a042623          	sw	zero,172(s0)
   14078:	00043023          	sd	zero,0(s0)
   1407c:	00042623          	sw	zero,12(s0)
   14080:	00042423          	sw	zero,8(s0)
   14084:	00043c23          	sd	zero,24(s0)
   14088:	02042023          	sw	zero,32(s0)
   1408c:	02042423          	sw	zero,40(s0)
   14090:	00800613          	li	a2,8
   14094:	00000593          	li	a1,0
   14098:	0a440513          	addi	a0,s0,164
   1409c:	244010ef          	jal	152e0 <memset>
   140a0:	00040513          	mv	a0,s0
   140a4:	04043c23          	sd	zero,88(s0)
   140a8:	06042023          	sw	zero,96(s0)
   140ac:	06043c23          	sd	zero,120(s0)
   140b0:	08042023          	sw	zero,128(s0)
   140b4:	02813083          	ld	ra,40(sp)
   140b8:	02013403          	ld	s0,32(sp)
   140bc:	01813483          	ld	s1,24(sp)
   140c0:	01013903          	ld	s2,16(sp)
   140c4:	00813983          	ld	s3,8(sp)
   140c8:	03010113          	addi	sp,sp,48
   140cc:	00008067          	ret
   140d0:	00093783          	ld	a5,0(s2)
   140d4:	00078663          	beqz	a5,140e0 <__sfp+0xdc>
   140d8:	00078913          	mv	s2,a5
   140dc:	f61ff06f          	j	1403c <__sfp+0x38>
   140e0:	00400593          	li	a1,4
   140e4:	00098513          	mv	a0,s3
   140e8:	eb1ff0ef          	jal	13f98 <__sfmoreglue>
   140ec:	00a93023          	sd	a0,0(s2)
   140f0:	00050663          	beqz	a0,140fc <__sfp+0xf8>
   140f4:	00050913          	mv	s2,a0
   140f8:	f45ff06f          	j	1403c <__sfp+0x38>
   140fc:	00c00793          	li	a5,12
   14100:	00f9a023          	sw	a5,0(s3)
   14104:	00000513          	li	a0,0
   14108:	fadff06f          	j	140b4 <__sfp+0xb0>

000000000001410c <_cleanup>:
   1410c:	8081b503          	ld	a0,-2040(gp) # 1b7c8 <_global_impure_ptr>
   14110:	000185b7          	lui	a1,0x18
   14114:	b1458593          	addi	a1,a1,-1260 # 17b14 <_fclose_r>
   14118:	51c0006f          	j	14634 <_fwalk_reent>

000000000001411c <__sinit>:
   1411c:	05052783          	lw	a5,80(a0)
   14120:	00078463          	beqz	a5,14128 <__sinit+0xc>
   14124:	00008067          	ret
   14128:	cd9ff06f          	j	13e00 <__sinit.part.1>

000000000001412c <__sfp_lock_acquire>:
   1412c:	00008067          	ret

0000000000014130 <__sfp_lock_release>:
   14130:	00008067          	ret

0000000000014134 <__sinit_lock_acquire>:
   14134:	00008067          	ret

0000000000014138 <__sinit_lock_release>:
   14138:	00008067          	ret

000000000001413c <__fp_lock_all>:
   1413c:	8101b503          	ld	a0,-2032(gp) # 1b7d0 <_impure_ptr>
   14140:	000145b7          	lui	a1,0x14
   14144:	f9058593          	addi	a1,a1,-112 # 13f90 <__fp_lock>
   14148:	43c0006f          	j	14584 <_fwalk>

000000000001414c <__fp_unlock_all>:
   1414c:	8101b503          	ld	a0,-2032(gp) # 1b7d0 <_impure_ptr>
   14150:	000145b7          	lui	a1,0x14
   14154:	dec58593          	addi	a1,a1,-532 # 13dec <__fp_unlock>
   14158:	42c0006f          	j	14584 <_fwalk>

000000000001415c <_malloc_trim_r>:
   1415c:	fd010113          	addi	sp,sp,-48
   14160:	01213823          	sd	s2,16(sp)
   14164:	0001b937          	lui	s2,0x1b
   14168:	02813023          	sd	s0,32(sp)
   1416c:	00913c23          	sd	s1,24(sp)
   14170:	00058413          	mv	s0,a1
   14174:	01313423          	sd	s3,8(sp)
   14178:	02113423          	sd	ra,40(sp)
   1417c:	00050993          	mv	s3,a0
   14180:	fa890913          	addi	s2,s2,-88 # 1afa8 <__malloc_av_>
   14184:	238010ef          	jal	153bc <__malloc_lock>
   14188:	01093703          	ld	a4,16(s2)
   1418c:	000017b7          	lui	a5,0x1
   14190:	fdf78593          	addi	a1,a5,-33 # fdf <_ftext-0xf021>
   14194:	00873483          	ld	s1,8(a4)
   14198:	ffc4f493          	andi	s1,s1,-4
   1419c:	40848433          	sub	s0,s1,s0
   141a0:	00b40433          	add	s0,s0,a1
   141a4:	00c45413          	srli	s0,s0,0xc
   141a8:	fff40413          	addi	s0,s0,-1
   141ac:	00c41413          	slli	s0,s0,0xc
   141b0:	00f44c63          	blt	s0,a5,141c8 <_malloc_trim_r+0x6c>
   141b4:	00000513          	li	a0,0
   141b8:	6c5040ef          	jal	1907c <sbrk>
   141bc:	01093783          	ld	a5,16(s2)
   141c0:	009787b3          	add	a5,a5,s1
   141c4:	02f50663          	beq	a0,a5,141f0 <_malloc_trim_r+0x94>
   141c8:	00098513          	mv	a0,s3
   141cc:	1f4010ef          	jal	153c0 <__malloc_unlock>
   141d0:	02813083          	ld	ra,40(sp)
   141d4:	00000513          	li	a0,0
   141d8:	02013403          	ld	s0,32(sp)
   141dc:	01813483          	ld	s1,24(sp)
   141e0:	01013903          	ld	s2,16(sp)
   141e4:	00813983          	ld	s3,8(sp)
   141e8:	03010113          	addi	sp,sp,48
   141ec:	00008067          	ret
   141f0:	40800533          	neg	a0,s0
   141f4:	689040ef          	jal	1907c <sbrk>
   141f8:	fff00793          	li	a5,-1
   141fc:	04f50463          	beq	a0,a5,14244 <_malloc_trim_r+0xe8>
   14200:	9081a783          	lw	a5,-1784(gp) # 1b8c8 <__malloc_current_mallinfo>
   14204:	01093683          	ld	a3,16(s2)
   14208:	408484b3          	sub	s1,s1,s0
   1420c:	0014e493          	ori	s1,s1,1
   14210:	4087843b          	subw	s0,a5,s0
   14214:	00098513          	mv	a0,s3
   14218:	0096b423          	sd	s1,8(a3)
   1421c:	9081a423          	sw	s0,-1784(gp) # 1b8c8 <__malloc_current_mallinfo>
   14220:	1a0010ef          	jal	153c0 <__malloc_unlock>
   14224:	02813083          	ld	ra,40(sp)
   14228:	00100513          	li	a0,1
   1422c:	02013403          	ld	s0,32(sp)
   14230:	01813483          	ld	s1,24(sp)
   14234:	01013903          	ld	s2,16(sp)
   14238:	00813983          	ld	s3,8(sp)
   1423c:	03010113          	addi	sp,sp,48
   14240:	00008067          	ret
   14244:	00000513          	li	a0,0
   14248:	635040ef          	jal	1907c <sbrk>
   1424c:	01093703          	ld	a4,16(s2)
   14250:	01f00693          	li	a3,31
   14254:	40e507b3          	sub	a5,a0,a4
   14258:	f6f6d8e3          	ble	a5,a3,141c8 <_malloc_trim_r+0x6c>
   1425c:	8281b683          	ld	a3,-2008(gp) # 1b7e8 <__malloc_sbrk_base>
   14260:	0017e793          	ori	a5,a5,1
   14264:	00f73423          	sd	a5,8(a4)
   14268:	40d50533          	sub	a0,a0,a3
   1426c:	90a1a423          	sw	a0,-1784(gp) # 1b8c8 <__malloc_current_mallinfo>
   14270:	f59ff06f          	j	141c8 <_malloc_trim_r+0x6c>

0000000000014274 <_free_r>:
   14274:	10058263          	beqz	a1,14378 <_free_r+0x104>
   14278:	fe010113          	addi	sp,sp,-32
   1427c:	00813823          	sd	s0,16(sp)
   14280:	00913423          	sd	s1,8(sp)
   14284:	00058413          	mv	s0,a1
   14288:	00050493          	mv	s1,a0
   1428c:	00113c23          	sd	ra,24(sp)
   14290:	12c010ef          	jal	153bc <__malloc_lock>
   14294:	ff843503          	ld	a0,-8(s0)
   14298:	ff040693          	addi	a3,s0,-16
   1429c:	0001b5b7          	lui	a1,0x1b
   142a0:	ffe57793          	andi	a5,a0,-2
   142a4:	00f68633          	add	a2,a3,a5
   142a8:	fa858593          	addi	a1,a1,-88 # 1afa8 <__malloc_av_>
   142ac:	00863703          	ld	a4,8(a2)
   142b0:	0105b803          	ld	a6,16(a1)
   142b4:	ffc77713          	andi	a4,a4,-4
   142b8:	17060663          	beq	a2,a6,14424 <_free_r+0x1b0>
   142bc:	00e63423          	sd	a4,8(a2)
   142c0:	00157513          	andi	a0,a0,1
   142c4:	02051663          	bnez	a0,142f0 <_free_r+0x7c>
   142c8:	ff043503          	ld	a0,-16(s0)
   142cc:	40a686b3          	sub	a3,a3,a0
   142d0:	0106b803          	ld	a6,16(a3)
   142d4:	00a787b3          	add	a5,a5,a0
   142d8:	0001b537          	lui	a0,0x1b
   142dc:	fb850513          	addi	a0,a0,-72 # 1afb8 <__malloc_av_+0x10>
   142e0:	18a80863          	beq	a6,a0,14470 <_free_r+0x1fc>
   142e4:	0186b503          	ld	a0,24(a3)
   142e8:	00a83c23          	sd	a0,24(a6)
   142ec:	01053823          	sd	a6,16(a0)
   142f0:	00e60533          	add	a0,a2,a4
   142f4:	00853503          	ld	a0,8(a0)
   142f8:	00157513          	andi	a0,a0,1
   142fc:	0e050a63          	beqz	a0,143f0 <_free_r+0x17c>
   14300:	0017e713          	ori	a4,a5,1
   14304:	00e6b423          	sd	a4,8(a3)
   14308:	00f68733          	add	a4,a3,a5
   1430c:	00f73023          	sd	a5,0(a4)
   14310:	1ff00713          	li	a4,511
   14314:	06f76463          	bltu	a4,a5,1437c <_free_r+0x108>
   14318:	0037d793          	srli	a5,a5,0x3
   1431c:	0007879b          	sext.w	a5,a5
   14320:	0017871b          	addiw	a4,a5,1
   14324:	0017171b          	slliw	a4,a4,0x1
   14328:	00371713          	slli	a4,a4,0x3
   1432c:	0085b603          	ld	a2,8(a1)
   14330:	00e58733          	add	a4,a1,a4
   14334:	00073803          	ld	a6,0(a4)
   14338:	4027d79b          	sraiw	a5,a5,0x2
   1433c:	00100513          	li	a0,1
   14340:	00f517b3          	sll	a5,a0,a5
   14344:	00c7e7b3          	or	a5,a5,a2
   14348:	ff070613          	addi	a2,a4,-16
   1434c:	00c6bc23          	sd	a2,24(a3)
   14350:	0106b823          	sd	a6,16(a3)
   14354:	00f5b423          	sd	a5,8(a1)
   14358:	00d73023          	sd	a3,0(a4)
   1435c:	00d83c23          	sd	a3,24(a6)
   14360:	00048513          	mv	a0,s1
   14364:	01813083          	ld	ra,24(sp)
   14368:	01013403          	ld	s0,16(sp)
   1436c:	00813483          	ld	s1,8(sp)
   14370:	02010113          	addi	sp,sp,32
   14374:	04c0106f          	j	153c0 <__malloc_unlock>
   14378:	00008067          	ret
   1437c:	0097d713          	srli	a4,a5,0x9
   14380:	00400613          	li	a2,4
   14384:	12e66263          	bltu	a2,a4,144a8 <_free_r+0x234>
   14388:	0067d713          	srli	a4,a5,0x6
   1438c:	0007071b          	sext.w	a4,a4
   14390:	0397051b          	addiw	a0,a4,57
   14394:	0387061b          	addiw	a2,a4,56
   14398:	0015151b          	slliw	a0,a0,0x1
   1439c:	00351513          	slli	a0,a0,0x3
   143a0:	00a58533          	add	a0,a1,a0
   143a4:	00053703          	ld	a4,0(a0)
   143a8:	ff050513          	addi	a0,a0,-16
   143ac:	10e50c63          	beq	a0,a4,144c4 <_free_r+0x250>
   143b0:	00873603          	ld	a2,8(a4)
   143b4:	ffc67613          	andi	a2,a2,-4
   143b8:	00c7f663          	bleu	a2,a5,143c4 <_free_r+0x150>
   143bc:	01073703          	ld	a4,16(a4)
   143c0:	fee518e3          	bne	a0,a4,143b0 <_free_r+0x13c>
   143c4:	01873503          	ld	a0,24(a4)
   143c8:	00a6bc23          	sd	a0,24(a3)
   143cc:	00e6b823          	sd	a4,16(a3)
   143d0:	00d53823          	sd	a3,16(a0)
   143d4:	01813083          	ld	ra,24(sp)
   143d8:	00048513          	mv	a0,s1
   143dc:	01013403          	ld	s0,16(sp)
   143e0:	00813483          	ld	s1,8(sp)
   143e4:	00d73c23          	sd	a3,24(a4)
   143e8:	02010113          	addi	sp,sp,32
   143ec:	7d50006f          	j	153c0 <__malloc_unlock>
   143f0:	01063503          	ld	a0,16(a2)
   143f4:	00e787b3          	add	a5,a5,a4
   143f8:	0001b737          	lui	a4,0x1b
   143fc:	fb870713          	addi	a4,a4,-72 # 1afb8 <__malloc_av_+0x10>
   14400:	0ee50263          	beq	a0,a4,144e4 <_free_r+0x270>
   14404:	01863803          	ld	a6,24(a2)
   14408:	0017e613          	ori	a2,a5,1
   1440c:	00f68733          	add	a4,a3,a5
   14410:	01053c23          	sd	a6,24(a0)
   14414:	00a83823          	sd	a0,16(a6)
   14418:	00c6b423          	sd	a2,8(a3)
   1441c:	00f73023          	sd	a5,0(a4)
   14420:	ef1ff06f          	j	14310 <_free_r+0x9c>
   14424:	00157513          	andi	a0,a0,1
   14428:	00e787b3          	add	a5,a5,a4
   1442c:	02051063          	bnez	a0,1444c <_free_r+0x1d8>
   14430:	ff043503          	ld	a0,-16(s0)
   14434:	40a686b3          	sub	a3,a3,a0
   14438:	0186b703          	ld	a4,24(a3)
   1443c:	0106b603          	ld	a2,16(a3)
   14440:	00a787b3          	add	a5,a5,a0
   14444:	00e63c23          	sd	a4,24(a2)
   14448:	00c73823          	sd	a2,16(a4)
   1444c:	0017e613          	ori	a2,a5,1
   14450:	8301b703          	ld	a4,-2000(gp) # 1b7f0 <__malloc_trim_threshold>
   14454:	00c6b423          	sd	a2,8(a3)
   14458:	00d5b823          	sd	a3,16(a1)
   1445c:	f0e7e2e3          	bltu	a5,a4,14360 <_free_r+0xec>
   14460:	8c01b583          	ld	a1,-1856(gp) # 1b880 <__malloc_top_pad>
   14464:	00048513          	mv	a0,s1
   14468:	cf5ff0ef          	jal	1415c <_malloc_trim_r>
   1446c:	ef5ff06f          	j	14360 <_free_r+0xec>
   14470:	00e605b3          	add	a1,a2,a4
   14474:	0085b583          	ld	a1,8(a1)
   14478:	0015f593          	andi	a1,a1,1
   1447c:	0e059a63          	bnez	a1,14570 <_free_r+0x2fc>
   14480:	01063583          	ld	a1,16(a2)
   14484:	01863603          	ld	a2,24(a2)
   14488:	00f707b3          	add	a5,a4,a5
   1448c:	0017e713          	ori	a4,a5,1
   14490:	00c5bc23          	sd	a2,24(a1)
   14494:	00b63823          	sd	a1,16(a2)
   14498:	00e6b423          	sd	a4,8(a3)
   1449c:	00f686b3          	add	a3,a3,a5
   144a0:	00f6b023          	sd	a5,0(a3)
   144a4:	ebdff06f          	j	14360 <_free_r+0xec>
   144a8:	01400613          	li	a2,20
   144ac:	04e66e63          	bltu	a2,a4,14508 <_free_r+0x294>
   144b0:	0007071b          	sext.w	a4,a4
   144b4:	05c7051b          	addiw	a0,a4,92
   144b8:	05b7061b          	addiw	a2,a4,91
   144bc:	0015151b          	slliw	a0,a0,0x1
   144c0:	eddff06f          	j	1439c <_free_r+0x128>
   144c4:	0085b783          	ld	a5,8(a1)
   144c8:	4026571b          	sraiw	a4,a2,0x2
   144cc:	00100613          	li	a2,1
   144d0:	00e61733          	sll	a4,a2,a4
   144d4:	00f767b3          	or	a5,a4,a5
   144d8:	00f5b423          	sd	a5,8(a1)
   144dc:	00050713          	mv	a4,a0
   144e0:	ee9ff06f          	j	143c8 <_free_r+0x154>
   144e4:	02d5b423          	sd	a3,40(a1)
   144e8:	02d5b023          	sd	a3,32(a1)
   144ec:	0017e713          	ori	a4,a5,1
   144f0:	00a6bc23          	sd	a0,24(a3)
   144f4:	00a6b823          	sd	a0,16(a3)
   144f8:	00e6b423          	sd	a4,8(a3)
   144fc:	00f686b3          	add	a3,a3,a5
   14500:	00f6b023          	sd	a5,0(a3)
   14504:	e5dff06f          	j	14360 <_free_r+0xec>
   14508:	05400613          	li	a2,84
   1450c:	00e66e63          	bltu	a2,a4,14528 <_free_r+0x2b4>
   14510:	00c7d713          	srli	a4,a5,0xc
   14514:	0007071b          	sext.w	a4,a4
   14518:	06f7051b          	addiw	a0,a4,111
   1451c:	06e7061b          	addiw	a2,a4,110
   14520:	0015151b          	slliw	a0,a0,0x1
   14524:	e79ff06f          	j	1439c <_free_r+0x128>
   14528:	15400613          	li	a2,340
   1452c:	00e66e63          	bltu	a2,a4,14548 <_free_r+0x2d4>
   14530:	00f7d713          	srli	a4,a5,0xf
   14534:	0007071b          	sext.w	a4,a4
   14538:	0787051b          	addiw	a0,a4,120
   1453c:	0777061b          	addiw	a2,a4,119
   14540:	0015151b          	slliw	a0,a0,0x1
   14544:	e59ff06f          	j	1439c <_free_r+0x128>
   14548:	55400813          	li	a6,1364
   1454c:	0fe00513          	li	a0,254
   14550:	07e00613          	li	a2,126
   14554:	e4e864e3          	bltu	a6,a4,1439c <_free_r+0x128>
   14558:	0127d713          	srli	a4,a5,0x12
   1455c:	0007071b          	sext.w	a4,a4
   14560:	07d7051b          	addiw	a0,a4,125
   14564:	07c7061b          	addiw	a2,a4,124
   14568:	0015151b          	slliw	a0,a0,0x1
   1456c:	e31ff06f          	j	1439c <_free_r+0x128>
   14570:	0017e713          	ori	a4,a5,1
   14574:	00e6b423          	sd	a4,8(a3)
   14578:	00f686b3          	add	a3,a3,a5
   1457c:	00f6b023          	sd	a5,0(a3)
   14580:	de1ff06f          	j	14360 <_free_r+0xec>

0000000000014584 <_fwalk>:
   14584:	fc010113          	addi	sp,sp,-64
   14588:	01513423          	sd	s5,8(sp)
   1458c:	02113c23          	sd	ra,56(sp)
   14590:	02813823          	sd	s0,48(sp)
   14594:	02913423          	sd	s1,40(sp)
   14598:	03213023          	sd	s2,32(sp)
   1459c:	01313c23          	sd	s3,24(sp)
   145a0:	01413823          	sd	s4,16(sp)
   145a4:	01613023          	sd	s6,0(sp)
   145a8:	52050a93          	addi	s5,a0,1312
   145ac:	080a8063          	beqz	s5,1462c <_fwalk+0xa8>
   145b0:	00058b13          	mv	s6,a1
   145b4:	00000a13          	li	s4,0
   145b8:	00100993          	li	s3,1
   145bc:	fff00913          	li	s2,-1
   145c0:	008aa483          	lw	s1,8(s5)
   145c4:	010ab403          	ld	s0,16(s5)
   145c8:	fff4849b          	addiw	s1,s1,-1
   145cc:	0204c663          	bltz	s1,145f8 <_fwalk+0x74>
   145d0:	01045783          	lhu	a5,16(s0)
   145d4:	fff4849b          	addiw	s1,s1,-1
   145d8:	00f9fc63          	bleu	a5,s3,145f0 <_fwalk+0x6c>
   145dc:	01241783          	lh	a5,18(s0)
   145e0:	00040513          	mv	a0,s0
   145e4:	01278663          	beq	a5,s2,145f0 <_fwalk+0x6c>
   145e8:	000b00e7          	jalr	s6
   145ec:	00aa6a33          	or	s4,s4,a0
   145f0:	0b040413          	addi	s0,s0,176
   145f4:	fd249ee3          	bne	s1,s2,145d0 <_fwalk+0x4c>
   145f8:	000aba83          	ld	s5,0(s5)
   145fc:	fc0a92e3          	bnez	s5,145c0 <_fwalk+0x3c>
   14600:	03813083          	ld	ra,56(sp)
   14604:	000a0513          	mv	a0,s4
   14608:	03013403          	ld	s0,48(sp)
   1460c:	02813483          	ld	s1,40(sp)
   14610:	02013903          	ld	s2,32(sp)
   14614:	01813983          	ld	s3,24(sp)
   14618:	01013a03          	ld	s4,16(sp)
   1461c:	00813a83          	ld	s5,8(sp)
   14620:	00013b03          	ld	s6,0(sp)
   14624:	04010113          	addi	sp,sp,64
   14628:	00008067          	ret
   1462c:	00000a13          	li	s4,0
   14630:	fd1ff06f          	j	14600 <_fwalk+0x7c>

0000000000014634 <_fwalk_reent>:
   14634:	fb010113          	addi	sp,sp,-80
   14638:	01613823          	sd	s6,16(sp)
   1463c:	04113423          	sd	ra,72(sp)
   14640:	04813023          	sd	s0,64(sp)
   14644:	02913c23          	sd	s1,56(sp)
   14648:	03213823          	sd	s2,48(sp)
   1464c:	03313423          	sd	s3,40(sp)
   14650:	03413023          	sd	s4,32(sp)
   14654:	01513c23          	sd	s5,24(sp)
   14658:	01713423          	sd	s7,8(sp)
   1465c:	52050b13          	addi	s6,a0,1312
   14660:	080b0663          	beqz	s6,146ec <_fwalk_reent+0xb8>
   14664:	00058b93          	mv	s7,a1
   14668:	00050a93          	mv	s5,a0
   1466c:	00000a13          	li	s4,0
   14670:	00100993          	li	s3,1
   14674:	fff00913          	li	s2,-1
   14678:	008b2483          	lw	s1,8(s6)
   1467c:	010b3403          	ld	s0,16(s6)
   14680:	fff4849b          	addiw	s1,s1,-1
   14684:	0204c863          	bltz	s1,146b4 <_fwalk_reent+0x80>
   14688:	01045783          	lhu	a5,16(s0)
   1468c:	fff4849b          	addiw	s1,s1,-1
   14690:	00f9fe63          	bleu	a5,s3,146ac <_fwalk_reent+0x78>
   14694:	01241783          	lh	a5,18(s0)
   14698:	00040593          	mv	a1,s0
   1469c:	000a8513          	mv	a0,s5
   146a0:	01278663          	beq	a5,s2,146ac <_fwalk_reent+0x78>
   146a4:	000b80e7          	jalr	s7
   146a8:	00aa6a33          	or	s4,s4,a0
   146ac:	0b040413          	addi	s0,s0,176
   146b0:	fd249ce3          	bne	s1,s2,14688 <_fwalk_reent+0x54>
   146b4:	000b3b03          	ld	s6,0(s6)
   146b8:	fc0b10e3          	bnez	s6,14678 <_fwalk_reent+0x44>
   146bc:	04813083          	ld	ra,72(sp)
   146c0:	000a0513          	mv	a0,s4
   146c4:	04013403          	ld	s0,64(sp)
   146c8:	03813483          	ld	s1,56(sp)
   146cc:	03013903          	ld	s2,48(sp)
   146d0:	02813983          	ld	s3,40(sp)
   146d4:	02013a03          	ld	s4,32(sp)
   146d8:	01813a83          	ld	s5,24(sp)
   146dc:	01013b03          	ld	s6,16(sp)
   146e0:	00813b83          	ld	s7,8(sp)
   146e4:	05010113          	addi	sp,sp,80
   146e8:	00008067          	ret
   146ec:	00000a13          	li	s4,0
   146f0:	fcdff06f          	j	146bc <_fwalk_reent+0x88>

00000000000146f4 <_setlocale_r>:
   146f4:	fe010113          	addi	sp,sp,-32
   146f8:	00913423          	sd	s1,8(sp)
   146fc:	00113c23          	sd	ra,24(sp)
   14700:	00813823          	sd	s0,16(sp)
   14704:	000194b7          	lui	s1,0x19
   14708:	02060063          	beqz	a2,14728 <_setlocale_r+0x34>
   1470c:	000195b7          	lui	a1,0x19
   14710:	70858593          	addi	a1,a1,1800 # 19708 <zeroes.4137+0x90>
   14714:	00060513          	mv	a0,a2
   14718:	00060413          	mv	s0,a2
   1471c:	6d5010ef          	jal	165f0 <strcmp>
   14720:	000194b7          	lui	s1,0x19
   14724:	00051e63          	bnez	a0,14740 <_setlocale_r+0x4c>
   14728:	68848513          	addi	a0,s1,1672 # 19688 <zeroes.4137+0x10>
   1472c:	01813083          	ld	ra,24(sp)
   14730:	01013403          	ld	s0,16(sp)
   14734:	00813483          	ld	s1,8(sp)
   14738:	02010113          	addi	sp,sp,32
   1473c:	00008067          	ret
   14740:	68848593          	addi	a1,s1,1672
   14744:	00040513          	mv	a0,s0
   14748:	6a9010ef          	jal	165f0 <strcmp>
   1474c:	fc050ee3          	beqz	a0,14728 <_setlocale_r+0x34>
   14750:	000195b7          	lui	a1,0x19
   14754:	6c058593          	addi	a1,a1,1728 # 196c0 <zeroes.4137+0x48>
   14758:	00040513          	mv	a0,s0
   1475c:	695010ef          	jal	165f0 <strcmp>
   14760:	fc0504e3          	beqz	a0,14728 <_setlocale_r+0x34>
   14764:	00000513          	li	a0,0
   14768:	fc5ff06f          	j	1472c <_setlocale_r+0x38>

000000000001476c <__locale_charset>:
   1476c:	0001b537          	lui	a0,0x1b
   14770:	f0850513          	addi	a0,a0,-248 # 1af08 <lc_ctype_charset>
   14774:	00008067          	ret

0000000000014778 <__locale_mb_cur_max>:
   14778:	8201a503          	lw	a0,-2016(gp) # 1b7e0 <__mb_cur_max>
   1477c:	00008067          	ret

0000000000014780 <__locale_msgcharset>:
   14780:	0001b537          	lui	a0,0x1b
   14784:	f2850513          	addi	a0,a0,-216 # 1af28 <lc_message_charset>
   14788:	00008067          	ret

000000000001478c <__locale_cjk_lang>:
   1478c:	00000513          	li	a0,0
   14790:	00008067          	ret

0000000000014794 <_localeconv_r>:
   14794:	0001b537          	lui	a0,0x1b
   14798:	f4850513          	addi	a0,a0,-184 # 1af48 <lconv>
   1479c:	00008067          	ret

00000000000147a0 <setlocale>:
   147a0:	00058613          	mv	a2,a1
   147a4:	00050593          	mv	a1,a0
   147a8:	8101b503          	ld	a0,-2032(gp) # 1b7d0 <_impure_ptr>
   147ac:	f49ff06f          	j	146f4 <_setlocale_r>

00000000000147b0 <localeconv>:
   147b0:	0001b537          	lui	a0,0x1b
   147b4:	f4850513          	addi	a0,a0,-184 # 1af48 <lconv>
   147b8:	00008067          	ret

00000000000147bc <__smakebuf_r>:
   147bc:	01059783          	lh	a5,16(a1)
   147c0:	f5010113          	addi	sp,sp,-176
   147c4:	08913c23          	sd	s1,152(sp)
   147c8:	03079493          	slli	s1,a5,0x30
   147cc:	0304d493          	srli	s1,s1,0x30
   147d0:	0a113423          	sd	ra,168(sp)
   147d4:	0a813023          	sd	s0,160(sp)
   147d8:	09213823          	sd	s2,144(sp)
   147dc:	09313423          	sd	s3,136(sp)
   147e0:	0024f713          	andi	a4,s1,2
   147e4:	0e071063          	bnez	a4,148c4 <__smakebuf_r+0x108>
   147e8:	00050913          	mv	s2,a0
   147ec:	01259503          	lh	a0,18(a1)
   147f0:	00058413          	mv	s0,a1
   147f4:	04054c63          	bltz	a0,1484c <__smakebuf_r+0x90>
   147f8:	00010593          	mv	a1,sp
   147fc:	5b4040ef          	jal	18db0 <fstat>
   14800:	04054063          	bltz	a0,14840 <__smakebuf_r+0x84>
   14804:	01012703          	lw	a4,16(sp)
   14808:	0000f7b7          	lui	a5,0xf
   1480c:	ffffe9b7          	lui	s3,0xffffe
   14810:	00f777b3          	and	a5,a4,a5
   14814:	013789bb          	addw	s3,a5,s3
   14818:	00008737          	lui	a4,0x8
   1481c:	0019b993          	seqz	s3,s3
   14820:	0ce78a63          	beq	a5,a4,148f4 <__smakebuf_r+0x138>
   14824:	01045703          	lhu	a4,16(s0)
   14828:	000017b7          	lui	a5,0x1
   1482c:	8007879b          	addiw	a5,a5,-2048
   14830:	00f767b3          	or	a5,a4,a5
   14834:	00f41823          	sh	a5,16(s0)
   14838:	40000493          	li	s1,1024
   1483c:	0340006f          	j	14870 <__smakebuf_r+0xb4>
   14840:	01041783          	lh	a5,16(s0)
   14844:	03079493          	slli	s1,a5,0x30
   14848:	0304d493          	srli	s1,s1,0x30
   1484c:	03849493          	slli	s1,s1,0x38
   14850:	00001737          	lui	a4,0x1
   14854:	43f4d493          	srai	s1,s1,0x3f
   14858:	8007071b          	addiw	a4,a4,-2048
   1485c:	c404f493          	andi	s1,s1,-960
   14860:	00e7e7b3          	or	a5,a5,a4
   14864:	40048493          	addi	s1,s1,1024
   14868:	00f41823          	sh	a5,16(s0)
   1486c:	00000993          	li	s3,0
   14870:	00048593          	mv	a1,s1
   14874:	00090513          	mv	a0,s2
   14878:	0f0000ef          	jal	14968 <_malloc_r>
   1487c:	0c050063          	beqz	a0,1493c <__smakebuf_r+0x180>
   14880:	01045783          	lhu	a5,16(s0)
   14884:	00014737          	lui	a4,0x14
   14888:	df470713          	addi	a4,a4,-524 # 13df4 <_cleanup_r>
   1488c:	04e93c23          	sd	a4,88(s2)
   14890:	0807e793          	ori	a5,a5,128
   14894:	00f41823          	sh	a5,16(s0)
   14898:	00a43023          	sd	a0,0(s0)
   1489c:	00a43c23          	sd	a0,24(s0)
   148a0:	02942023          	sw	s1,32(s0)
   148a4:	06099e63          	bnez	s3,14920 <__smakebuf_r+0x164>
   148a8:	0a813083          	ld	ra,168(sp)
   148ac:	0a013403          	ld	s0,160(sp)
   148b0:	09813483          	ld	s1,152(sp)
   148b4:	09013903          	ld	s2,144(sp)
   148b8:	08813983          	ld	s3,136(sp)
   148bc:	0b010113          	addi	sp,sp,176
   148c0:	00008067          	ret
   148c4:	0a813083          	ld	ra,168(sp)
   148c8:	07758793          	addi	a5,a1,119
   148cc:	00f5b023          	sd	a5,0(a1)
   148d0:	00f5bc23          	sd	a5,24(a1)
   148d4:	00100793          	li	a5,1
   148d8:	0a013403          	ld	s0,160(sp)
   148dc:	09813483          	ld	s1,152(sp)
   148e0:	09013903          	ld	s2,144(sp)
   148e4:	08813983          	ld	s3,136(sp)
   148e8:	02f5a023          	sw	a5,32(a1)
   148ec:	0b010113          	addi	sp,sp,176
   148f0:	00008067          	ret
   148f4:	04843703          	ld	a4,72(s0)
   148f8:	000167b7          	lui	a5,0x16
   148fc:	57c78793          	addi	a5,a5,1404 # 1657c <__sseek>
   14900:	f2f712e3          	bne	a4,a5,14824 <__smakebuf_r+0x68>
   14904:	01045783          	lhu	a5,16(s0)
   14908:	40000713          	li	a4,1024
   1490c:	08e42423          	sw	a4,136(s0)
   14910:	00e7e7b3          	or	a5,a5,a4
   14914:	00f41823          	sh	a5,16(s0)
   14918:	40000493          	li	s1,1024
   1491c:	f55ff06f          	j	14870 <__smakebuf_r+0xb4>
   14920:	01241503          	lh	a0,18(s0)
   14924:	618040ef          	jal	18f3c <isatty>
   14928:	f80500e3          	beqz	a0,148a8 <__smakebuf_r+0xec>
   1492c:	01045783          	lhu	a5,16(s0)
   14930:	0017e793          	ori	a5,a5,1
   14934:	00f41823          	sh	a5,16(s0)
   14938:	f71ff06f          	j	148a8 <__smakebuf_r+0xec>
   1493c:	01041783          	lh	a5,16(s0)
   14940:	2007f713          	andi	a4,a5,512
   14944:	f60712e3          	bnez	a4,148a8 <__smakebuf_r+0xec>
   14948:	0027e793          	ori	a5,a5,2
   1494c:	07740713          	addi	a4,s0,119
   14950:	00f41823          	sh	a5,16(s0)
   14954:	00100793          	li	a5,1
   14958:	00e43023          	sd	a4,0(s0)
   1495c:	00e43c23          	sd	a4,24(s0)
   14960:	02f42023          	sw	a5,32(s0)
   14964:	f45ff06f          	j	148a8 <__smakebuf_r+0xec>

0000000000014968 <_malloc_r>:
   14968:	fa010113          	addi	sp,sp,-96
   1496c:	04913423          	sd	s1,72(sp)
   14970:	03313c23          	sd	s3,56(sp)
   14974:	04113c23          	sd	ra,88(sp)
   14978:	04813823          	sd	s0,80(sp)
   1497c:	05213023          	sd	s2,64(sp)
   14980:	03413823          	sd	s4,48(sp)
   14984:	03513423          	sd	s5,40(sp)
   14988:	03613023          	sd	s6,32(sp)
   1498c:	01713c23          	sd	s7,24(sp)
   14990:	01813823          	sd	s8,16(sp)
   14994:	01913423          	sd	s9,8(sp)
   14998:	01758493          	addi	s1,a1,23
   1499c:	02e00793          	li	a5,46
   149a0:	00050993          	mv	s3,a0
   149a4:	1c97fa63          	bleu	s1,a5,14b78 <_malloc_r+0x210>
   149a8:	800007b7          	lui	a5,0x80000
   149ac:	ff04f493          	andi	s1,s1,-16
   149b0:	fff7c793          	not	a5,a5
   149b4:	2497ee63          	bltu	a5,s1,14c10 <_malloc_r+0x2a8>
   149b8:	24b4ec63          	bltu	s1,a1,14c10 <_malloc_r+0x2a8>
   149bc:	201000ef          	jal	153bc <__malloc_lock>
   149c0:	1f700793          	li	a5,503
   149c4:	7097f063          	bleu	s1,a5,150c4 <_malloc_r+0x75c>
   149c8:	0094d793          	srli	a5,s1,0x9
   149cc:	08000693          	li	a3,128
   149d0:	04000513          	li	a0,64
   149d4:	03f00593          	li	a1,63
   149d8:	24079463          	bnez	a5,14c20 <_malloc_r+0x2b8>
   149dc:	0001b937          	lui	s2,0x1b
   149e0:	fa890913          	addi	s2,s2,-88 # 1afa8 <__malloc_av_>
   149e4:	00369693          	slli	a3,a3,0x3
   149e8:	00d906b3          	add	a3,s2,a3
   149ec:	0086b403          	ld	s0,8(a3)
   149f0:	ff068693          	addi	a3,a3,-16
   149f4:	24868663          	beq	a3,s0,14c40 <_malloc_r+0x2d8>
   149f8:	00843783          	ld	a5,8(s0)
   149fc:	01f00613          	li	a2,31
   14a00:	ffc7f793          	andi	a5,a5,-4
   14a04:	40978733          	sub	a4,a5,s1
   14a08:	02e64063          	blt	a2,a4,14a28 <_malloc_r+0xc0>
   14a0c:	22075e63          	bgez	a4,14c48 <_malloc_r+0x2e0>
   14a10:	01843403          	ld	s0,24(s0)
   14a14:	22868663          	beq	a3,s0,14c40 <_malloc_r+0x2d8>
   14a18:	00843783          	ld	a5,8(s0)
   14a1c:	ffc7f793          	andi	a5,a5,-4
   14a20:	40978733          	sub	a4,a5,s1
   14a24:	fee654e3          	ble	a4,a2,14a0c <_malloc_r+0xa4>
   14a28:	00058693          	mv	a3,a1
   14a2c:	02093403          	ld	s0,32(s2)
   14a30:	01090813          	addi	a6,s2,16
   14a34:	47040a63          	beq	s0,a6,14ea8 <_malloc_r+0x540>
   14a38:	00843783          	ld	a5,8(s0)
   14a3c:	01f00613          	li	a2,31
   14a40:	ffc7f793          	andi	a5,a5,-4
   14a44:	40978733          	sub	a4,a5,s1
   14a48:	44e64a63          	blt	a2,a4,14e9c <_malloc_r+0x534>
   14a4c:	03093423          	sd	a6,40(s2)
   14a50:	03093023          	sd	a6,32(s2)
   14a54:	20075063          	bgez	a4,14c54 <_malloc_r+0x2ec>
   14a58:	1ff00713          	li	a4,511
   14a5c:	3cf76c63          	bltu	a4,a5,14e34 <_malloc_r+0x4cc>
   14a60:	0037d793          	srli	a5,a5,0x3
   14a64:	0007879b          	sext.w	a5,a5
   14a68:	0017861b          	addiw	a2,a5,1
   14a6c:	0016161b          	slliw	a2,a2,0x1
   14a70:	00361613          	slli	a2,a2,0x3
   14a74:	00893703          	ld	a4,8(s2)
   14a78:	00c90633          	add	a2,s2,a2
   14a7c:	00063503          	ld	a0,0(a2)
   14a80:	4027d79b          	sraiw	a5,a5,0x2
   14a84:	00100593          	li	a1,1
   14a88:	00f597b3          	sll	a5,a1,a5
   14a8c:	00e7e7b3          	or	a5,a5,a4
   14a90:	ff060713          	addi	a4,a2,-16
   14a94:	00e43c23          	sd	a4,24(s0)
   14a98:	00a43823          	sd	a0,16(s0)
   14a9c:	00f93423          	sd	a5,8(s2)
   14aa0:	00863023          	sd	s0,0(a2)
   14aa4:	00853c23          	sd	s0,24(a0)
   14aa8:	4026d61b          	sraiw	a2,a3,0x2
   14aac:	00100713          	li	a4,1
   14ab0:	00c71633          	sll	a2,a4,a2
   14ab4:	1cc7e063          	bltu	a5,a2,14c74 <_malloc_r+0x30c>
   14ab8:	00f67733          	and	a4,a2,a5
   14abc:	02071463          	bnez	a4,14ae4 <_malloc_r+0x17c>
   14ac0:	00161613          	slli	a2,a2,0x1
   14ac4:	ffc6f693          	andi	a3,a3,-4
   14ac8:	00f67733          	and	a4,a2,a5
   14acc:	0046869b          	addiw	a3,a3,4
   14ad0:	00071a63          	bnez	a4,14ae4 <_malloc_r+0x17c>
   14ad4:	00161613          	slli	a2,a2,0x1
   14ad8:	00f67733          	and	a4,a2,a5
   14adc:	0046869b          	addiw	a3,a3,4
   14ae0:	fe070ae3          	beqz	a4,14ad4 <_malloc_r+0x16c>
   14ae4:	01f00513          	li	a0,31
   14ae8:	0016889b          	addiw	a7,a3,1
   14aec:	0018989b          	slliw	a7,a7,0x1
   14af0:	00389893          	slli	a7,a7,0x3
   14af4:	011908b3          	add	a7,s2,a7
   14af8:	ff088893          	addi	a7,a7,-16
   14afc:	00088593          	mv	a1,a7
   14b00:	00068313          	mv	t1,a3
   14b04:	0185b403          	ld	s0,24(a1)
   14b08:	00859a63          	bne	a1,s0,14b1c <_malloc_r+0x1b4>
   14b0c:	3a40006f          	j	14eb0 <_malloc_r+0x548>
   14b10:	3c075263          	bgez	a4,14ed4 <_malloc_r+0x56c>
   14b14:	01843403          	ld	s0,24(s0)
   14b18:	38858c63          	beq	a1,s0,14eb0 <_malloc_r+0x548>
   14b1c:	00843783          	ld	a5,8(s0)
   14b20:	ffc7f793          	andi	a5,a5,-4
   14b24:	40978733          	sub	a4,a5,s1
   14b28:	fee554e3          	ble	a4,a0,14b10 <_malloc_r+0x1a8>
   14b2c:	01843783          	ld	a5,24(s0)
   14b30:	01043683          	ld	a3,16(s0)
   14b34:	0014e613          	ori	a2,s1,1
   14b38:	00c43423          	sd	a2,8(s0)
   14b3c:	00f6bc23          	sd	a5,24(a3)
   14b40:	00d7b823          	sd	a3,16(a5) # ffffffff80000010 <_gp+0xffffffff7ffe4050>
   14b44:	009404b3          	add	s1,s0,s1
   14b48:	02993423          	sd	s1,40(s2)
   14b4c:	02993023          	sd	s1,32(s2)
   14b50:	00176793          	ori	a5,a4,1
   14b54:	0104bc23          	sd	a6,24(s1)
   14b58:	0104b823          	sd	a6,16(s1)
   14b5c:	00f4b423          	sd	a5,8(s1)
   14b60:	00e484b3          	add	s1,s1,a4
   14b64:	00098513          	mv	a0,s3
   14b68:	00e4b023          	sd	a4,0(s1)
   14b6c:	055000ef          	jal	153c0 <__malloc_unlock>
   14b70:	01040513          	addi	a0,s0,16
   14b74:	0680006f          	j	14bdc <_malloc_r+0x274>
   14b78:	02000493          	li	s1,32
   14b7c:	08b4ea63          	bltu	s1,a1,14c10 <_malloc_r+0x2a8>
   14b80:	03d000ef          	jal	153bc <__malloc_lock>
   14b84:	00a00793          	li	a5,10
   14b88:	00400693          	li	a3,4
   14b8c:	0001b937          	lui	s2,0x1b
   14b90:	fa890913          	addi	s2,s2,-88 # 1afa8 <__malloc_av_>
   14b94:	00379793          	slli	a5,a5,0x3
   14b98:	00f907b3          	add	a5,s2,a5
   14b9c:	0087b403          	ld	s0,8(a5)
   14ba0:	ff078713          	addi	a4,a5,-16
   14ba4:	32e40063          	beq	s0,a4,14ec4 <_malloc_r+0x55c>
   14ba8:	00843783          	ld	a5,8(s0)
   14bac:	01843683          	ld	a3,24(s0)
   14bb0:	01043603          	ld	a2,16(s0)
   14bb4:	ffc7f793          	andi	a5,a5,-4
   14bb8:	00f407b3          	add	a5,s0,a5
   14bbc:	0087b703          	ld	a4,8(a5)
   14bc0:	00d63c23          	sd	a3,24(a2)
   14bc4:	00c6b823          	sd	a2,16(a3)
   14bc8:	00176713          	ori	a4,a4,1
   14bcc:	00098513          	mv	a0,s3
   14bd0:	00e7b423          	sd	a4,8(a5)
   14bd4:	7ec000ef          	jal	153c0 <__malloc_unlock>
   14bd8:	01040513          	addi	a0,s0,16
   14bdc:	05813083          	ld	ra,88(sp)
   14be0:	05013403          	ld	s0,80(sp)
   14be4:	04813483          	ld	s1,72(sp)
   14be8:	04013903          	ld	s2,64(sp)
   14bec:	03813983          	ld	s3,56(sp)
   14bf0:	03013a03          	ld	s4,48(sp)
   14bf4:	02813a83          	ld	s5,40(sp)
   14bf8:	02013b03          	ld	s6,32(sp)
   14bfc:	01813b83          	ld	s7,24(sp)
   14c00:	01013c03          	ld	s8,16(sp)
   14c04:	00813c83          	ld	s9,8(sp)
   14c08:	06010113          	addi	sp,sp,96
   14c0c:	00008067          	ret
   14c10:	00c00793          	li	a5,12
   14c14:	00f9a023          	sw	a5,0(s3) # ffffffffffffe000 <_gp+0xfffffffffffe2040>
   14c18:	00000513          	li	a0,0
   14c1c:	fc1ff06f          	j	14bdc <_malloc_r+0x274>
   14c20:	00400713          	li	a4,4
   14c24:	1ef76463          	bltu	a4,a5,14e0c <_malloc_r+0x4a4>
   14c28:	0064d593          	srli	a1,s1,0x6
   14c2c:	0005859b          	sext.w	a1,a1
   14c30:	0395851b          	addiw	a0,a1,57
   14c34:	0015169b          	slliw	a3,a0,0x1
   14c38:	0385859b          	addiw	a1,a1,56
   14c3c:	da1ff06f          	j	149dc <_malloc_r+0x74>
   14c40:	00050693          	mv	a3,a0
   14c44:	de9ff06f          	j	14a2c <_malloc_r+0xc4>
   14c48:	01843683          	ld	a3,24(s0)
   14c4c:	01043603          	ld	a2,16(s0)
   14c50:	f69ff06f          	j	14bb8 <_malloc_r+0x250>
   14c54:	00f407b3          	add	a5,s0,a5
   14c58:	0087b703          	ld	a4,8(a5)
   14c5c:	00098513          	mv	a0,s3
   14c60:	00176713          	ori	a4,a4,1
   14c64:	00e7b423          	sd	a4,8(a5)
   14c68:	758000ef          	jal	153c0 <__malloc_unlock>
   14c6c:	01040513          	addi	a0,s0,16
   14c70:	f6dff06f          	j	14bdc <_malloc_r+0x274>
   14c74:	01093403          	ld	s0,16(s2)
   14c78:	00843703          	ld	a4,8(s0)
   14c7c:	ffc77b93          	andi	s7,a4,-4
   14c80:	009be863          	bltu	s7,s1,14c90 <_malloc_r+0x328>
   14c84:	409b87b3          	sub	a5,s7,s1
   14c88:	01f00713          	li	a4,31
   14c8c:	14f74c63          	blt	a4,a5,14de4 <_malloc_r+0x47c>
   14c90:	8c01b783          	ld	a5,-1856(gp) # 1b880 <__malloc_top_pad>
   14c94:	8281b683          	ld	a3,-2008(gp) # 1b7e8 <__malloc_sbrk_base>
   14c98:	fff00713          	li	a4,-1
   14c9c:	00f487b3          	add	a5,s1,a5
   14ca0:	01740a33          	add	s4,s0,s7
   14ca4:	02078b13          	addi	s6,a5,32
   14ca8:	00e68c63          	beq	a3,a4,14cc0 <_malloc_r+0x358>
   14cac:	00001b37          	lui	s6,0x1
   14cb0:	01fb0b13          	addi	s6,s6,31 # 101f <_ftext-0xefe1>
   14cb4:	01678b33          	add	s6,a5,s6
   14cb8:	fffff7b7          	lui	a5,0xfffff
   14cbc:	00fb7b33          	and	s6,s6,a5
   14cc0:	000b0513          	mv	a0,s6
   14cc4:	3b8040ef          	jal	1907c <sbrk>
   14cc8:	fff00793          	li	a5,-1
   14ccc:	00050a93          	mv	s5,a0
   14cd0:	26f50263          	beq	a0,a5,14f34 <_malloc_r+0x5cc>
   14cd4:	25456e63          	bltu	a0,s4,14f30 <_malloc_r+0x5c8>
   14cd8:	90818c13          	addi	s8,gp,-1784 # 1b8c8 <__malloc_current_mallinfo>
   14cdc:	000c2783          	lw	a5,0(s8)
   14ce0:	00fb07bb          	addw	a5,s6,a5
   14ce4:	00fc2023          	sw	a5,0(s8)
   14ce8:	355a0463          	beq	s4,s5,15030 <_malloc_r+0x6c8>
   14cec:	8281b683          	ld	a3,-2008(gp) # 1b7e8 <__malloc_sbrk_base>
   14cf0:	fff00713          	li	a4,-1
   14cf4:	36e68263          	beq	a3,a4,15058 <_malloc_r+0x6f0>
   14cf8:	414a8a33          	sub	s4,s5,s4
   14cfc:	00fa07bb          	addw	a5,s4,a5
   14d00:	00fc2023          	sw	a5,0(s8)
   14d04:	00faf713          	andi	a4,s5,15
   14d08:	000017b7          	lui	a5,0x1
   14d0c:	00070a63          	beqz	a4,14d20 <_malloc_r+0x3b8>
   14d10:	40ea8ab3          	sub	s5,s5,a4
   14d14:	01078a13          	addi	s4,a5,16 # 1010 <_ftext-0xeff0>
   14d18:	010a8a93          	addi	s5,s5,16
   14d1c:	40ea07b3          	sub	a5,s4,a4
   14d20:	00001a37          	lui	s4,0x1
   14d24:	fffa0a13          	addi	s4,s4,-1 # fff <_ftext-0xf001>
   14d28:	016a8b33          	add	s6,s5,s6
   14d2c:	014b7b33          	and	s6,s6,s4
   14d30:	41678a33          	sub	s4,a5,s6
   14d34:	000a0513          	mv	a0,s4
   14d38:	344040ef          	jal	1907c <sbrk>
   14d3c:	fff00793          	li	a5,-1
   14d40:	30f50663          	beq	a0,a5,1504c <_malloc_r+0x6e4>
   14d44:	41550733          	sub	a4,a0,s5
   14d48:	01470733          	add	a4,a4,s4
   14d4c:	00176713          	ori	a4,a4,1
   14d50:	000a0a1b          	sext.w	s4,s4
   14d54:	000c2783          	lw	a5,0(s8)
   14d58:	01593823          	sd	s5,16(s2)
   14d5c:	00eab423          	sd	a4,8(s5)
   14d60:	00fa07bb          	addw	a5,s4,a5
   14d64:	00fc2023          	sw	a5,0(s8)
   14d68:	03240c63          	beq	s0,s2,14da0 <_malloc_r+0x438>
   14d6c:	01f00613          	li	a2,31
   14d70:	27767463          	bleu	s7,a2,14fd8 <_malloc_r+0x670>
   14d74:	00843683          	ld	a3,8(s0)
   14d78:	fe8b8713          	addi	a4,s7,-24
   14d7c:	ff077713          	andi	a4,a4,-16
   14d80:	0016f693          	andi	a3,a3,1
   14d84:	00e6e6b3          	or	a3,a3,a4
   14d88:	00d43423          	sd	a3,8(s0)
   14d8c:	00900593          	li	a1,9
   14d90:	00e406b3          	add	a3,s0,a4
   14d94:	00b6b423          	sd	a1,8(a3)
   14d98:	00b6b823          	sd	a1,16(a3)
   14d9c:	2ce66263          	bltu	a2,a4,15060 <_malloc_r+0x6f8>
   14da0:	8b81b683          	ld	a3,-1864(gp) # 1b878 <__malloc_max_sbrked_mem>
   14da4:	00f6f463          	bleu	a5,a3,14dac <_malloc_r+0x444>
   14da8:	8af1bc23          	sd	a5,-1864(gp) # 1b878 <__malloc_max_sbrked_mem>
   14dac:	8b01b683          	ld	a3,-1872(gp) # 1b870 <__malloc_max_total_mem>
   14db0:	01093403          	ld	s0,16(s2)
   14db4:	00f6f463          	bleu	a5,a3,14dbc <_malloc_r+0x454>
   14db8:	8af1b823          	sd	a5,-1872(gp) # 1b870 <__malloc_max_total_mem>
   14dbc:	00843703          	ld	a4,8(s0)
   14dc0:	ffc77713          	andi	a4,a4,-4
   14dc4:	409707b3          	sub	a5,a4,s1
   14dc8:	00976663          	bltu	a4,s1,14dd4 <_malloc_r+0x46c>
   14dcc:	01f00713          	li	a4,31
   14dd0:	00f74a63          	blt	a4,a5,14de4 <_malloc_r+0x47c>
   14dd4:	00098513          	mv	a0,s3
   14dd8:	5e8000ef          	jal	153c0 <__malloc_unlock>
   14ddc:	00000513          	li	a0,0
   14de0:	dfdff06f          	j	14bdc <_malloc_r+0x274>
   14de4:	0014e713          	ori	a4,s1,1
   14de8:	00e43423          	sd	a4,8(s0)
   14dec:	009404b3          	add	s1,s0,s1
   14df0:	00993823          	sd	s1,16(s2)
   14df4:	0017e793          	ori	a5,a5,1
   14df8:	00098513          	mv	a0,s3
   14dfc:	00f4b423          	sd	a5,8(s1)
   14e00:	5c0000ef          	jal	153c0 <__malloc_unlock>
   14e04:	01040513          	addi	a0,s0,16
   14e08:	dd5ff06f          	j	14bdc <_malloc_r+0x274>
   14e0c:	01400713          	li	a4,20
   14e10:	0ef77a63          	bleu	a5,a4,14f04 <_malloc_r+0x59c>
   14e14:	05400713          	li	a4,84
   14e18:	18f76063          	bltu	a4,a5,14f98 <_malloc_r+0x630>
   14e1c:	00c4d593          	srli	a1,s1,0xc
   14e20:	0005859b          	sext.w	a1,a1
   14e24:	06f5851b          	addiw	a0,a1,111
   14e28:	0015169b          	slliw	a3,a0,0x1
   14e2c:	06e5859b          	addiw	a1,a1,110
   14e30:	badff06f          	j	149dc <_malloc_r+0x74>
   14e34:	0097d713          	srli	a4,a5,0x9
   14e38:	00400613          	li	a2,4
   14e3c:	0ce67e63          	bleu	a4,a2,14f18 <_malloc_r+0x5b0>
   14e40:	01400613          	li	a2,20
   14e44:	1ce66663          	bltu	a2,a4,15010 <_malloc_r+0x6a8>
   14e48:	0007071b          	sext.w	a4,a4
   14e4c:	05c7059b          	addiw	a1,a4,92
   14e50:	05b7061b          	addiw	a2,a4,91
   14e54:	0015959b          	slliw	a1,a1,0x1
   14e58:	00359593          	slli	a1,a1,0x3
   14e5c:	00b905b3          	add	a1,s2,a1
   14e60:	0005b703          	ld	a4,0(a1)
   14e64:	ff058593          	addi	a1,a1,-16
   14e68:	14e58863          	beq	a1,a4,14fb8 <_malloc_r+0x650>
   14e6c:	00873603          	ld	a2,8(a4)
   14e70:	ffc67613          	andi	a2,a2,-4
   14e74:	00c7f663          	bleu	a2,a5,14e80 <_malloc_r+0x518>
   14e78:	01073703          	ld	a4,16(a4)
   14e7c:	fee598e3          	bne	a1,a4,14e6c <_malloc_r+0x504>
   14e80:	01873583          	ld	a1,24(a4)
   14e84:	00893783          	ld	a5,8(s2)
   14e88:	00b43c23          	sd	a1,24(s0)
   14e8c:	00e43823          	sd	a4,16(s0)
   14e90:	0085b823          	sd	s0,16(a1)
   14e94:	00873c23          	sd	s0,24(a4)
   14e98:	c11ff06f          	j	14aa8 <_malloc_r+0x140>
   14e9c:	0014e793          	ori	a5,s1,1
   14ea0:	00f43423          	sd	a5,8(s0)
   14ea4:	ca1ff06f          	j	14b44 <_malloc_r+0x1dc>
   14ea8:	00893783          	ld	a5,8(s2)
   14eac:	bfdff06f          	j	14aa8 <_malloc_r+0x140>
   14eb0:	0013031b          	addiw	t1,t1,1
   14eb4:	00337793          	andi	a5,t1,3
   14eb8:	01058593          	addi	a1,a1,16
   14ebc:	c40794e3          	bnez	a5,14b04 <_malloc_r+0x19c>
   14ec0:	0900006f          	j	14f50 <_malloc_r+0x5e8>
   14ec4:	0187b403          	ld	s0,24(a5)
   14ec8:	0026869b          	addiw	a3,a3,2
   14ecc:	b68780e3          	beq	a5,s0,14a2c <_malloc_r+0xc4>
   14ed0:	cd9ff06f          	j	14ba8 <_malloc_r+0x240>
   14ed4:	00f407b3          	add	a5,s0,a5
   14ed8:	0087b703          	ld	a4,8(a5)
   14edc:	01843683          	ld	a3,24(s0)
   14ee0:	01043603          	ld	a2,16(s0)
   14ee4:	00176713          	ori	a4,a4,1
   14ee8:	00e7b423          	sd	a4,8(a5)
   14eec:	00d63c23          	sd	a3,24(a2)
   14ef0:	00098513          	mv	a0,s3
   14ef4:	00c6b823          	sd	a2,16(a3)
   14ef8:	4c8000ef          	jal	153c0 <__malloc_unlock>
   14efc:	01040513          	addi	a0,s0,16
   14f00:	cddff06f          	j	14bdc <_malloc_r+0x274>
   14f04:	0007879b          	sext.w	a5,a5
   14f08:	05c7851b          	addiw	a0,a5,92
   14f0c:	05b7859b          	addiw	a1,a5,91
   14f10:	0015169b          	slliw	a3,a0,0x1
   14f14:	ac9ff06f          	j	149dc <_malloc_r+0x74>
   14f18:	0067d713          	srli	a4,a5,0x6
   14f1c:	0007071b          	sext.w	a4,a4
   14f20:	0397059b          	addiw	a1,a4,57
   14f24:	0387061b          	addiw	a2,a4,56
   14f28:	0015959b          	slliw	a1,a1,0x1
   14f2c:	f2dff06f          	j	14e58 <_malloc_r+0x4f0>
   14f30:	db2404e3          	beq	s0,s2,14cd8 <_malloc_r+0x370>
   14f34:	01093403          	ld	s0,16(s2)
   14f38:	00843703          	ld	a4,8(s0)
   14f3c:	ffc77713          	andi	a4,a4,-4
   14f40:	e85ff06f          	j	14dc4 <_malloc_r+0x45c>
   14f44:	0108b783          	ld	a5,16(a7)
   14f48:	fff6869b          	addiw	a3,a3,-1
   14f4c:	16f89863          	bne	a7,a5,150bc <_malloc_r+0x754>
   14f50:	0036f793          	andi	a5,a3,3
   14f54:	ff088893          	addi	a7,a7,-16
   14f58:	fe0796e3          	bnez	a5,14f44 <_malloc_r+0x5dc>
   14f5c:	00893783          	ld	a5,8(s2)
   14f60:	fff64713          	not	a4,a2
   14f64:	00f777b3          	and	a5,a4,a5
   14f68:	00f93423          	sd	a5,8(s2)
   14f6c:	00161613          	slli	a2,a2,0x1
   14f70:	d0c7e2e3          	bltu	a5,a2,14c74 <_malloc_r+0x30c>
   14f74:	d00600e3          	beqz	a2,14c74 <_malloc_r+0x30c>
   14f78:	00f67733          	and	a4,a2,a5
   14f7c:	00030693          	mv	a3,t1
   14f80:	b60714e3          	bnez	a4,14ae8 <_malloc_r+0x180>
   14f84:	00161613          	slli	a2,a2,0x1
   14f88:	00f67733          	and	a4,a2,a5
   14f8c:	0046869b          	addiw	a3,a3,4
   14f90:	fe070ae3          	beqz	a4,14f84 <_malloc_r+0x61c>
   14f94:	b55ff06f          	j	14ae8 <_malloc_r+0x180>
   14f98:	15400713          	li	a4,340
   14f9c:	04f76463          	bltu	a4,a5,14fe4 <_malloc_r+0x67c>
   14fa0:	00f4d593          	srli	a1,s1,0xf
   14fa4:	0005859b          	sext.w	a1,a1
   14fa8:	0785851b          	addiw	a0,a1,120
   14fac:	0015169b          	slliw	a3,a0,0x1
   14fb0:	0775859b          	addiw	a1,a1,119
   14fb4:	a29ff06f          	j	149dc <_malloc_r+0x74>
   14fb8:	00893783          	ld	a5,8(s2)
   14fbc:	4026571b          	sraiw	a4,a2,0x2
   14fc0:	00100613          	li	a2,1
   14fc4:	00e61733          	sll	a4,a2,a4
   14fc8:	00f767b3          	or	a5,a4,a5
   14fcc:	00f93423          	sd	a5,8(s2)
   14fd0:	00058713          	mv	a4,a1
   14fd4:	eb5ff06f          	j	14e88 <_malloc_r+0x520>
   14fd8:	00100793          	li	a5,1
   14fdc:	00fab423          	sd	a5,8(s5)
   14fe0:	df5ff06f          	j	14dd4 <_malloc_r+0x46c>
   14fe4:	55400713          	li	a4,1364
   14fe8:	0fe00693          	li	a3,254
   14fec:	07f00513          	li	a0,127
   14ff0:	07e00593          	li	a1,126
   14ff4:	9ef764e3          	bltu	a4,a5,149dc <_malloc_r+0x74>
   14ff8:	0124d593          	srli	a1,s1,0x12
   14ffc:	0005859b          	sext.w	a1,a1
   15000:	07d5851b          	addiw	a0,a1,125
   15004:	0015169b          	slliw	a3,a0,0x1
   15008:	07c5859b          	addiw	a1,a1,124
   1500c:	9d1ff06f          	j	149dc <_malloc_r+0x74>
   15010:	05400613          	li	a2,84
   15014:	06e66063          	bltu	a2,a4,15074 <_malloc_r+0x70c>
   15018:	00c7d713          	srli	a4,a5,0xc
   1501c:	0007071b          	sext.w	a4,a4
   15020:	06f7059b          	addiw	a1,a4,111
   15024:	06e7061b          	addiw	a2,a4,110
   15028:	0015959b          	slliw	a1,a1,0x1
   1502c:	e2dff06f          	j	14e58 <_malloc_r+0x4f0>
   15030:	034a1713          	slli	a4,s4,0x34
   15034:	ca071ce3          	bnez	a4,14cec <_malloc_r+0x384>
   15038:	01093683          	ld	a3,16(s2)
   1503c:	016b8733          	add	a4,s7,s6
   15040:	00176713          	ori	a4,a4,1
   15044:	00e6b423          	sd	a4,8(a3)
   15048:	d59ff06f          	j	14da0 <_malloc_r+0x438>
   1504c:	00100713          	li	a4,1
   15050:	00000a13          	li	s4,0
   15054:	d01ff06f          	j	14d54 <_malloc_r+0x3ec>
   15058:	8351b423          	sd	s5,-2008(gp) # 1b7e8 <__malloc_sbrk_base>
   1505c:	ca9ff06f          	j	14d04 <_malloc_r+0x39c>
   15060:	01040593          	addi	a1,s0,16
   15064:	00098513          	mv	a0,s3
   15068:	a0cff0ef          	jal	14274 <_free_r>
   1506c:	000c2783          	lw	a5,0(s8)
   15070:	d31ff06f          	j	14da0 <_malloc_r+0x438>
   15074:	15400613          	li	a2,340
   15078:	00e66e63          	bltu	a2,a4,15094 <_malloc_r+0x72c>
   1507c:	00f7d713          	srli	a4,a5,0xf
   15080:	0007071b          	sext.w	a4,a4
   15084:	0787059b          	addiw	a1,a4,120
   15088:	0777061b          	addiw	a2,a4,119
   1508c:	0015959b          	slliw	a1,a1,0x1
   15090:	dc9ff06f          	j	14e58 <_malloc_r+0x4f0>
   15094:	55400513          	li	a0,1364
   15098:	0fe00593          	li	a1,254
   1509c:	07e00613          	li	a2,126
   150a0:	dae56ce3          	bltu	a0,a4,14e58 <_malloc_r+0x4f0>
   150a4:	0127d713          	srli	a4,a5,0x12
   150a8:	0007071b          	sext.w	a4,a4
   150ac:	07d7059b          	addiw	a1,a4,125
   150b0:	07c7061b          	addiw	a2,a4,124
   150b4:	0015959b          	slliw	a1,a1,0x1
   150b8:	da1ff06f          	j	14e58 <_malloc_r+0x4f0>
   150bc:	00893783          	ld	a5,8(s2)
   150c0:	eadff06f          	j	14f6c <_malloc_r+0x604>
   150c4:	0034d693          	srli	a3,s1,0x3
   150c8:	0006869b          	sext.w	a3,a3
   150cc:	0016879b          	addiw	a5,a3,1
   150d0:	0017979b          	slliw	a5,a5,0x1
   150d4:	ab9ff06f          	j	14b8c <_malloc_r+0x224>

00000000000150d8 <memchr>:
   150d8:	00757793          	andi	a5,a0,7
   150dc:	0ff5f813          	andi	a6,a1,255
   150e0:	0c078c63          	beqz	a5,151b8 <memchr+0xe0>
   150e4:	fff60793          	addi	a5,a2,-1
   150e8:	06060463          	beqz	a2,15150 <memchr+0x78>
   150ec:	00054703          	lbu	a4,0(a0)
   150f0:	07070263          	beq	a4,a6,15154 <memchr+0x7c>
   150f4:	00080693          	mv	a3,a6
   150f8:	0140006f          	j	1510c <memchr+0x34>
   150fc:	04078a63          	beqz	a5,15150 <memchr+0x78>
   15100:	00054703          	lbu	a4,0(a0)
   15104:	fff78793          	addi	a5,a5,-1
   15108:	04d70663          	beq	a4,a3,15154 <memchr+0x7c>
   1510c:	00150513          	addi	a0,a0,1
   15110:	00757713          	andi	a4,a0,7
   15114:	fe0714e3          	bnez	a4,150fc <memchr+0x24>
   15118:	00700693          	li	a3,7
   1511c:	02f6ee63          	bltu	a3,a5,15158 <memchr+0x80>
   15120:	02078863          	beqz	a5,15150 <memchr+0x78>
   15124:	00054703          	lbu	a4,0(a0)
   15128:	03070663          	beq	a4,a6,15154 <memchr+0x7c>
   1512c:	00150713          	addi	a4,a0,1
   15130:	00f507b3          	add	a5,a0,a5
   15134:	00080613          	mv	a2,a6
   15138:	0100006f          	j	15148 <memchr+0x70>
   1513c:	00170713          	addi	a4,a4,1
   15140:	fff74683          	lbu	a3,-1(a4)
   15144:	00c68863          	beq	a3,a2,15154 <memchr+0x7c>
   15148:	00070513          	mv	a0,a4
   1514c:	fee798e3          	bne	a5,a4,1513c <memchr+0x64>
   15150:	00000513          	li	a0,0
   15154:	00008067          	ret
   15158:	0ff5f593          	andi	a1,a1,255
   1515c:	0085971b          	slliw	a4,a1,0x8
   15160:	00b765b3          	or	a1,a4,a1
   15164:	00058713          	mv	a4,a1
   15168:	01071613          	slli	a2,a4,0x10
   1516c:	00c76733          	or	a4,a4,a2
   15170:	0001c637          	lui	a2,0x1c
   15174:	84863303          	ld	t1,-1976(a2) # 1b848 <__wctomb+0x50>
   15178:	0001c637          	lui	a2,0x1c
   1517c:	85063883          	ld	a7,-1968(a2) # 1b850 <__wctomb+0x58>
   15180:	02071613          	slli	a2,a4,0x20
   15184:	00e66633          	or	a2,a2,a4
   15188:	00068593          	mv	a1,a3
   1518c:	00053703          	ld	a4,0(a0)
   15190:	00e64733          	xor	a4,a2,a4
   15194:	006706b3          	add	a3,a4,t1
   15198:	fff74713          	not	a4,a4
   1519c:	00e6f733          	and	a4,a3,a4
   151a0:	01177733          	and	a4,a4,a7
   151a4:	f80710e3          	bnez	a4,15124 <memchr+0x4c>
   151a8:	ff878793          	addi	a5,a5,-8
   151ac:	00850513          	addi	a0,a0,8
   151b0:	fcf5eee3          	bltu	a1,a5,1518c <memchr+0xb4>
   151b4:	f6dff06f          	j	15120 <memchr+0x48>
   151b8:	00060793          	mv	a5,a2
   151bc:	f5dff06f          	j	15118 <memchr+0x40>

00000000000151c0 <memcpy>:
   151c0:	00a5c7b3          	xor	a5,a1,a0
   151c4:	0077f793          	andi	a5,a5,7
   151c8:	00c508b3          	add	a7,a0,a2
   151cc:	0e079263          	bnez	a5,152b0 <memcpy+0xf0>
   151d0:	00700793          	li	a5,7
   151d4:	0ec7fe63          	bleu	a2,a5,152d0 <memcpy+0x110>
   151d8:	00757793          	andi	a5,a0,7
   151dc:	04079a63          	bnez	a5,15230 <memcpy+0x70>
   151e0:	ff88f813          	andi	a6,a7,-8
   151e4:	fc080793          	addi	a5,a6,-64
   151e8:	00050713          	mv	a4,a0
   151ec:	06f56663          	bltu	a0,a5,15258 <memcpy+0x98>
   151f0:	00058693          	mv	a3,a1
   151f4:	00070793          	mv	a5,a4
   151f8:	03077863          	bleu	a6,a4,15228 <memcpy+0x68>
   151fc:	0006b603          	ld	a2,0(a3)
   15200:	00878793          	addi	a5,a5,8
   15204:	00868693          	addi	a3,a3,8
   15208:	fec7bc23          	sd	a2,-8(a5)
   1520c:	ff07e8e3          	bltu	a5,a6,151fc <memcpy+0x3c>
   15210:	fff74793          	not	a5,a4
   15214:	01078833          	add	a6,a5,a6
   15218:	ff887813          	andi	a6,a6,-8
   1521c:	00880813          	addi	a6,a6,8
   15220:	01070733          	add	a4,a4,a6
   15224:	010585b3          	add	a1,a1,a6
   15228:	09176863          	bltu	a4,a7,152b8 <memcpy+0xf8>
   1522c:	00008067          	ret
   15230:	00050713          	mv	a4,a0
   15234:	0005c683          	lbu	a3,0(a1)
   15238:	00170713          	addi	a4,a4,1
   1523c:	00777793          	andi	a5,a4,7
   15240:	fed70fa3          	sb	a3,-1(a4)
   15244:	00158593          	addi	a1,a1,1
   15248:	fe0796e3          	bnez	a5,15234 <memcpy+0x74>
   1524c:	ff88f813          	andi	a6,a7,-8
   15250:	fc080793          	addi	a5,a6,-64
   15254:	f8f77ee3          	bleu	a5,a4,151f0 <memcpy+0x30>
   15258:	0005b383          	ld	t2,0(a1)
   1525c:	0085b283          	ld	t0,8(a1)
   15260:	0105bf83          	ld	t6,16(a1)
   15264:	0185bf03          	ld	t5,24(a1)
   15268:	0205be83          	ld	t4,32(a1)
   1526c:	0285be03          	ld	t3,40(a1)
   15270:	0305b303          	ld	t1,48(a1)
   15274:	0385b603          	ld	a2,56(a1)
   15278:	04858593          	addi	a1,a1,72
   1527c:	04870713          	addi	a4,a4,72
   15280:	ff85b683          	ld	a3,-8(a1)
   15284:	fa773c23          	sd	t2,-72(a4)
   15288:	fc573023          	sd	t0,-64(a4)
   1528c:	fdf73423          	sd	t6,-56(a4)
   15290:	fde73823          	sd	t5,-48(a4)
   15294:	fdd73c23          	sd	t4,-40(a4)
   15298:	ffc73023          	sd	t3,-32(a4)
   1529c:	fe673423          	sd	t1,-24(a4)
   152a0:	fec73823          	sd	a2,-16(a4)
   152a4:	fed73c23          	sd	a3,-8(a4)
   152a8:	faf768e3          	bltu	a4,a5,15258 <memcpy+0x98>
   152ac:	f45ff06f          	j	151f0 <memcpy+0x30>
   152b0:	00050713          	mv	a4,a0
   152b4:	03157463          	bleu	a7,a0,152dc <memcpy+0x11c>
   152b8:	0005c783          	lbu	a5,0(a1)
   152bc:	00170713          	addi	a4,a4,1
   152c0:	00158593          	addi	a1,a1,1
   152c4:	fef70fa3          	sb	a5,-1(a4)
   152c8:	ff1768e3          	bltu	a4,a7,152b8 <memcpy+0xf8>
   152cc:	00008067          	ret
   152d0:	00050713          	mv	a4,a0
   152d4:	ff1562e3          	bltu	a0,a7,152b8 <memcpy+0xf8>
   152d8:	f55ff06f          	j	1522c <memcpy+0x6c>
   152dc:	00008067          	ret

00000000000152e0 <memset>:
   152e0:	00f00813          	li	a6,15
   152e4:	00050713          	mv	a4,a0
   152e8:	02c87a63          	bleu	a2,a6,1531c <memset+0x3c>
   152ec:	00f77793          	andi	a5,a4,15
   152f0:	0a079063          	bnez	a5,15390 <memset+0xb0>
   152f4:	06059e63          	bnez	a1,15370 <memset+0x90>
   152f8:	ff067693          	andi	a3,a2,-16
   152fc:	00f67613          	andi	a2,a2,15
   15300:	00e686b3          	add	a3,a3,a4
   15304:	00b73023          	sd	a1,0(a4)
   15308:	00b73423          	sd	a1,8(a4)
   1530c:	01070713          	addi	a4,a4,16
   15310:	fed76ae3          	bltu	a4,a3,15304 <memset+0x24>
   15314:	00061463          	bnez	a2,1531c <memset+0x3c>
   15318:	00008067          	ret
   1531c:	40c806b3          	sub	a3,a6,a2
   15320:	00269693          	slli	a3,a3,0x2
   15324:	00000297          	auipc	t0,0x0
   15328:	005686b3          	add	a3,a3,t0
   1532c:	00c68067          	jr	a3,12
   15330:	00b70723          	sb	a1,14(a4)
   15334:	00b706a3          	sb	a1,13(a4)
   15338:	00b70623          	sb	a1,12(a4)
   1533c:	00b705a3          	sb	a1,11(a4)
   15340:	00b70523          	sb	a1,10(a4)
   15344:	00b704a3          	sb	a1,9(a4)
   15348:	00b70423          	sb	a1,8(a4)
   1534c:	00b703a3          	sb	a1,7(a4)
   15350:	00b70323          	sb	a1,6(a4)
   15354:	00b702a3          	sb	a1,5(a4)
   15358:	00b70223          	sb	a1,4(a4)
   1535c:	00b701a3          	sb	a1,3(a4)
   15360:	00b70123          	sb	a1,2(a4)
   15364:	00b700a3          	sb	a1,1(a4)
   15368:	00b70023          	sb	a1,0(a4)
   1536c:	00008067          	ret
   15370:	0ff5f593          	andi	a1,a1,255
   15374:	00859693          	slli	a3,a1,0x8
   15378:	00d5e5b3          	or	a1,a1,a3
   1537c:	01059693          	slli	a3,a1,0x10
   15380:	00d5e5b3          	or	a1,a1,a3
   15384:	02059693          	slli	a3,a1,0x20
   15388:	00d5e5b3          	or	a1,a1,a3
   1538c:	f6dff06f          	j	152f8 <memset+0x18>
   15390:	00279693          	slli	a3,a5,0x2
   15394:	00000297          	auipc	t0,0x0
   15398:	005686b3          	add	a3,a3,t0
   1539c:	00008293          	mv	t0,ra
   153a0:	f98680e7          	jalr	a3,-104
   153a4:	00028093          	mv	ra,t0
   153a8:	ff078793          	addi	a5,a5,-16
   153ac:	40f70733          	sub	a4,a4,a5
   153b0:	00f60633          	add	a2,a2,a5
   153b4:	f6c874e3          	bleu	a2,a6,1531c <memset+0x3c>
   153b8:	f3dff06f          	j	152f4 <memset+0x14>

00000000000153bc <__malloc_lock>:
   153bc:	00008067          	ret

00000000000153c0 <__malloc_unlock>:
   153c0:	00008067          	ret

00000000000153c4 <_Balloc>:
   153c4:	07853783          	ld	a5,120(a0)
   153c8:	fe010113          	addi	sp,sp,-32
   153cc:	00813823          	sd	s0,16(sp)
   153d0:	00913423          	sd	s1,8(sp)
   153d4:	00113c23          	sd	ra,24(sp)
   153d8:	01213023          	sd	s2,0(sp)
   153dc:	00050413          	mv	s0,a0
   153e0:	00058493          	mv	s1,a1
   153e4:	02078e63          	beqz	a5,15420 <_Balloc+0x5c>
   153e8:	00349513          	slli	a0,s1,0x3
   153ec:	00a787b3          	add	a5,a5,a0
   153f0:	0007b503          	ld	a0,0(a5)
   153f4:	04050663          	beqz	a0,15440 <_Balloc+0x7c>
   153f8:	00053703          	ld	a4,0(a0)
   153fc:	00e7b023          	sd	a4,0(a5)
   15400:	00052a23          	sw	zero,20(a0)
   15404:	00052823          	sw	zero,16(a0)
   15408:	01813083          	ld	ra,24(sp)
   1540c:	01013403          	ld	s0,16(sp)
   15410:	00813483          	ld	s1,8(sp)
   15414:	00013903          	ld	s2,0(sp)
   15418:	02010113          	addi	sp,sp,32
   1541c:	00008067          	ret
   15420:	04100613          	li	a2,65
   15424:	00800593          	li	a1,8
   15428:	638020ef          	jal	17a60 <_calloc_r>
   1542c:	06a43c23          	sd	a0,120(s0)
   15430:	00050793          	mv	a5,a0
   15434:	fa051ae3          	bnez	a0,153e8 <_Balloc+0x24>
   15438:	00000513          	li	a0,0
   1543c:	fcdff06f          	j	15408 <_Balloc+0x44>
   15440:	00100913          	li	s2,1
   15444:	0099193b          	sllw	s2,s2,s1
   15448:	fff9061b          	addiw	a2,s2,-1
   1544c:	00860613          	addi	a2,a2,8
   15450:	00261613          	slli	a2,a2,0x2
   15454:	00100593          	li	a1,1
   15458:	00040513          	mv	a0,s0
   1545c:	604020ef          	jal	17a60 <_calloc_r>
   15460:	fc050ce3          	beqz	a0,15438 <_Balloc+0x74>
   15464:	00952423          	sw	s1,8(a0)
   15468:	01252623          	sw	s2,12(a0)
   1546c:	f95ff06f          	j	15400 <_Balloc+0x3c>

0000000000015470 <_Bfree>:
   15470:	02058063          	beqz	a1,15490 <_Bfree+0x20>
   15474:	0085a783          	lw	a5,8(a1)
   15478:	07853703          	ld	a4,120(a0)
   1547c:	00379793          	slli	a5,a5,0x3
   15480:	00f707b3          	add	a5,a4,a5
   15484:	0007b703          	ld	a4,0(a5)
   15488:	00e5b023          	sd	a4,0(a1)
   1548c:	00b7b023          	sd	a1,0(a5)
   15490:	00008067          	ret

0000000000015494 <__multadd>:
   15494:	fc010113          	addi	sp,sp,-64
   15498:	00010837          	lui	a6,0x10
   1549c:	02813823          	sd	s0,48(sp)
   154a0:	02913423          	sd	s1,40(sp)
   154a4:	03213023          	sd	s2,32(sp)
   154a8:	00058493          	mv	s1,a1
   154ac:	0145a403          	lw	s0,20(a1)
   154b0:	00050913          	mv	s2,a0
   154b4:	02113c23          	sd	ra,56(sp)
   154b8:	01313c23          	sd	s3,24(sp)
   154bc:	01858593          	addi	a1,a1,24
   154c0:	00000513          	li	a0,0
   154c4:	fff8081b          	addiw	a6,a6,-1
   154c8:	0005a783          	lw	a5,0(a1)
   154cc:	00458593          	addi	a1,a1,4
   154d0:	0015051b          	addiw	a0,a0,1
   154d4:	0107f733          	and	a4,a5,a6
   154d8:	02c7073b          	mulw	a4,a4,a2
   154dc:	0107d79b          	srliw	a5,a5,0x10
   154e0:	02c787bb          	mulw	a5,a5,a2
   154e4:	00d7073b          	addw	a4,a4,a3
   154e8:	0107569b          	srliw	a3,a4,0x10
   154ec:	01077733          	and	a4,a4,a6
   154f0:	00d786bb          	addw	a3,a5,a3
   154f4:	0106979b          	slliw	a5,a3,0x10
   154f8:	00e7873b          	addw	a4,a5,a4
   154fc:	fee5ae23          	sw	a4,-4(a1)
   15500:	0106d69b          	srliw	a3,a3,0x10
   15504:	fc8542e3          	blt	a0,s0,154c8 <__multadd+0x34>
   15508:	02068263          	beqz	a3,1552c <__multadd+0x98>
   1550c:	00c4a783          	lw	a5,12(s1)
   15510:	02f45e63          	ble	a5,s0,1554c <__multadd+0xb8>
   15514:	00440793          	addi	a5,s0,4
   15518:	00279793          	slli	a5,a5,0x2
   1551c:	00f487b3          	add	a5,s1,a5
   15520:	00d7a423          	sw	a3,8(a5)
   15524:	0014041b          	addiw	s0,s0,1
   15528:	0084aa23          	sw	s0,20(s1)
   1552c:	03813083          	ld	ra,56(sp)
   15530:	00048513          	mv	a0,s1
   15534:	03013403          	ld	s0,48(sp)
   15538:	02813483          	ld	s1,40(sp)
   1553c:	02013903          	ld	s2,32(sp)
   15540:	01813983          	ld	s3,24(sp)
   15544:	04010113          	addi	sp,sp,64
   15548:	00008067          	ret
   1554c:	0084a583          	lw	a1,8(s1)
   15550:	00090513          	mv	a0,s2
   15554:	00d13423          	sd	a3,8(sp)
   15558:	0015859b          	addiw	a1,a1,1
   1555c:	e69ff0ef          	jal	153c4 <_Balloc>
   15560:	0144a603          	lw	a2,20(s1)
   15564:	00050993          	mv	s3,a0
   15568:	01048593          	addi	a1,s1,16
   1556c:	00260613          	addi	a2,a2,2
   15570:	01050513          	addi	a0,a0,16
   15574:	00261613          	slli	a2,a2,0x2
   15578:	c49ff0ef          	jal	151c0 <memcpy>
   1557c:	0084a703          	lw	a4,8(s1)
   15580:	07893783          	ld	a5,120(s2)
   15584:	00813683          	ld	a3,8(sp)
   15588:	00371713          	slli	a4,a4,0x3
   1558c:	00e787b3          	add	a5,a5,a4
   15590:	0007b703          	ld	a4,0(a5)
   15594:	00e4b023          	sd	a4,0(s1)
   15598:	0097b023          	sd	s1,0(a5)
   1559c:	00098493          	mv	s1,s3
   155a0:	f75ff06f          	j	15514 <__multadd+0x80>

00000000000155a4 <__s2b>:
   155a4:	fc010113          	addi	sp,sp,-64
   155a8:	0086879b          	addiw	a5,a3,8
   155ac:	03213023          	sd	s2,32(sp)
   155b0:	00068913          	mv	s2,a3
   155b4:	00900693          	li	a3,9
   155b8:	02d7c6bb          	divw	a3,a5,a3
   155bc:	02813823          	sd	s0,48(sp)
   155c0:	02913423          	sd	s1,40(sp)
   155c4:	01313c23          	sd	s3,24(sp)
   155c8:	01413823          	sd	s4,16(sp)
   155cc:	02113c23          	sd	ra,56(sp)
   155d0:	01513423          	sd	s5,8(sp)
   155d4:	01613023          	sd	s6,0(sp)
   155d8:	00100793          	li	a5,1
   155dc:	00058413          	mv	s0,a1
   155e0:	00050993          	mv	s3,a0
   155e4:	00060a13          	mv	s4,a2
   155e8:	00070493          	mv	s1,a4
   155ec:	00000593          	li	a1,0
   155f0:	00d7d863          	ble	a3,a5,15600 <__s2b+0x5c>
   155f4:	0017979b          	slliw	a5,a5,0x1
   155f8:	0015859b          	addiw	a1,a1,1
   155fc:	fed7cce3          	blt	a5,a3,155f4 <__s2b+0x50>
   15600:	00098513          	mv	a0,s3
   15604:	dc1ff0ef          	jal	153c4 <_Balloc>
   15608:	00100793          	li	a5,1
   1560c:	00f52a23          	sw	a5,20(a0)
   15610:	00952c23          	sw	s1,24(a0)
   15614:	00900793          	li	a5,9
   15618:	0b47d663          	ble	s4,a5,156c4 <__s2b+0x120>
   1561c:	ff6a0b1b          	addiw	s6,s4,-10
   15620:	020b1b13          	slli	s6,s6,0x20
   15624:	020b5b13          	srli	s6,s6,0x20
   15628:	00940a93          	addi	s5,s0,9
   1562c:	00ab0793          	addi	a5,s6,10
   15630:	00f40433          	add	s0,s0,a5
   15634:	000a8493          	mv	s1,s5
   15638:	00148493          	addi	s1,s1,1
   1563c:	fff4c683          	lbu	a3,-1(s1)
   15640:	00050593          	mv	a1,a0
   15644:	00a00613          	li	a2,10
   15648:	fd06869b          	addiw	a3,a3,-48
   1564c:	00098513          	mv	a0,s3
   15650:	e45ff0ef          	jal	15494 <__multadd>
   15654:	fe8492e3          	bne	s1,s0,15638 <__s2b+0x94>
   15658:	016a8433          	add	s0,s5,s6
   1565c:	00240413          	addi	s0,s0,2
   15660:	032a5e63          	ble	s2,s4,1569c <__s2b+0xf8>
   15664:	fff9091b          	addiw	s2,s2,-1
   15668:	414904bb          	subw	s1,s2,s4
   1566c:	02049493          	slli	s1,s1,0x20
   15670:	0204d493          	srli	s1,s1,0x20
   15674:	00148493          	addi	s1,s1,1
   15678:	009404b3          	add	s1,s0,s1
   1567c:	00140413          	addi	s0,s0,1
   15680:	fff44683          	lbu	a3,-1(s0)
   15684:	00050593          	mv	a1,a0
   15688:	00a00613          	li	a2,10
   1568c:	fd06869b          	addiw	a3,a3,-48
   15690:	00098513          	mv	a0,s3
   15694:	e01ff0ef          	jal	15494 <__multadd>
   15698:	fe9412e3          	bne	s0,s1,1567c <__s2b+0xd8>
   1569c:	03813083          	ld	ra,56(sp)
   156a0:	03013403          	ld	s0,48(sp)
   156a4:	02813483          	ld	s1,40(sp)
   156a8:	02013903          	ld	s2,32(sp)
   156ac:	01813983          	ld	s3,24(sp)
   156b0:	01013a03          	ld	s4,16(sp)
   156b4:	00813a83          	ld	s5,8(sp)
   156b8:	00013b03          	ld	s6,0(sp)
   156bc:	04010113          	addi	sp,sp,64
   156c0:	00008067          	ret
   156c4:	00a40413          	addi	s0,s0,10
   156c8:	00078a13          	mv	s4,a5
   156cc:	f95ff06f          	j	15660 <__s2b+0xbc>

00000000000156d0 <__hi0bits>:
   156d0:	ffff06b7          	lui	a3,0xffff0
   156d4:	00d576b3          	and	a3,a0,a3
   156d8:	00050793          	mv	a5,a0
   156dc:	00000713          	li	a4,0
   156e0:	00069663          	bnez	a3,156ec <__hi0bits+0x1c>
   156e4:	0105179b          	slliw	a5,a0,0x10
   156e8:	01000713          	li	a4,16
   156ec:	ff0006b7          	lui	a3,0xff000
   156f0:	00d7f6b3          	and	a3,a5,a3
   156f4:	00069663          	bnez	a3,15700 <__hi0bits+0x30>
   156f8:	0087071b          	addiw	a4,a4,8
   156fc:	0087979b          	slliw	a5,a5,0x8
   15700:	f00006b7          	lui	a3,0xf0000
   15704:	00d7f6b3          	and	a3,a5,a3
   15708:	00069663          	bnez	a3,15714 <__hi0bits+0x44>
   1570c:	0047071b          	addiw	a4,a4,4
   15710:	0047979b          	slliw	a5,a5,0x4
   15714:	c00006b7          	lui	a3,0xc0000
   15718:	00d7f6b3          	and	a3,a5,a3
   1571c:	00069663          	bnez	a3,15728 <__hi0bits+0x58>
   15720:	0027071b          	addiw	a4,a4,2
   15724:	0027979b          	slliw	a5,a5,0x2
   15728:	0007ce63          	bltz	a5,15744 <__hi0bits+0x74>
   1572c:	02179693          	slli	a3,a5,0x21
   15730:	02000513          	li	a0,32
   15734:	0006c463          	bltz	a3,1573c <__hi0bits+0x6c>
   15738:	00008067          	ret
   1573c:	0017051b          	addiw	a0,a4,1
   15740:	00008067          	ret
   15744:	00070513          	mv	a0,a4
   15748:	00008067          	ret

000000000001574c <__lo0bits>:
   1574c:	00052783          	lw	a5,0(a0)
   15750:	00050693          	mv	a3,a0
   15754:	0077f713          	andi	a4,a5,7
   15758:	02070463          	beqz	a4,15780 <__lo0bits+0x34>
   1575c:	0017f713          	andi	a4,a5,1
   15760:	00000513          	li	a0,0
   15764:	08071263          	bnez	a4,157e8 <__lo0bits+0x9c>
   15768:	0027f713          	andi	a4,a5,2
   1576c:	08071063          	bnez	a4,157ec <__lo0bits+0xa0>
   15770:	0027d79b          	srliw	a5,a5,0x2
   15774:	00f6a023          	sw	a5,0(a3) # ffffffffc0000000 <_gp+0xffffffffbffe4040>
   15778:	00200513          	li	a0,2
   1577c:	00008067          	ret
   15780:	0107961b          	slliw	a2,a5,0x10
   15784:	0106561b          	srliw	a2,a2,0x10
   15788:	00000713          	li	a4,0
   1578c:	00061663          	bnez	a2,15798 <__lo0bits+0x4c>
   15790:	0107d79b          	srliw	a5,a5,0x10
   15794:	01000713          	li	a4,16
   15798:	0ff7f613          	andi	a2,a5,255
   1579c:	00061663          	bnez	a2,157a8 <__lo0bits+0x5c>
   157a0:	0087071b          	addiw	a4,a4,8
   157a4:	0087d79b          	srliw	a5,a5,0x8
   157a8:	00f7f613          	andi	a2,a5,15
   157ac:	00061663          	bnez	a2,157b8 <__lo0bits+0x6c>
   157b0:	0047071b          	addiw	a4,a4,4
   157b4:	0047d79b          	srliw	a5,a5,0x4
   157b8:	0037f613          	andi	a2,a5,3
   157bc:	00061663          	bnez	a2,157c8 <__lo0bits+0x7c>
   157c0:	0027071b          	addiw	a4,a4,2
   157c4:	0027d79b          	srliw	a5,a5,0x2
   157c8:	0017f613          	andi	a2,a5,1
   157cc:	00061a63          	bnez	a2,157e0 <__lo0bits+0x94>
   157d0:	0017d79b          	srliw	a5,a5,0x1
   157d4:	02000513          	li	a0,32
   157d8:	00078863          	beqz	a5,157e8 <__lo0bits+0x9c>
   157dc:	0017071b          	addiw	a4,a4,1
   157e0:	00f6a023          	sw	a5,0(a3)
   157e4:	00070513          	mv	a0,a4
   157e8:	00008067          	ret
   157ec:	0017d79b          	srliw	a5,a5,0x1
   157f0:	00f6a023          	sw	a5,0(a3)
   157f4:	00100513          	li	a0,1
   157f8:	00008067          	ret

00000000000157fc <__i2b>:
   157fc:	ff010113          	addi	sp,sp,-16
   15800:	00813023          	sd	s0,0(sp)
   15804:	00058413          	mv	s0,a1
   15808:	00100593          	li	a1,1
   1580c:	00113423          	sd	ra,8(sp)
   15810:	bb5ff0ef          	jal	153c4 <_Balloc>
   15814:	00813083          	ld	ra,8(sp)
   15818:	00100713          	li	a4,1
   1581c:	00852c23          	sw	s0,24(a0)
   15820:	00e52a23          	sw	a4,20(a0)
   15824:	00013403          	ld	s0,0(sp)
   15828:	01010113          	addi	sp,sp,16
   1582c:	00008067          	ret

0000000000015830 <__multiply>:
   15830:	fd010113          	addi	sp,sp,-48
   15834:	01313423          	sd	s3,8(sp)
   15838:	01413023          	sd	s4,0(sp)
   1583c:	0145a983          	lw	s3,20(a1)
   15840:	01462a03          	lw	s4,20(a2)
   15844:	00913c23          	sd	s1,24(sp)
   15848:	01213823          	sd	s2,16(sp)
   1584c:	02113423          	sd	ra,40(sp)
   15850:	02813023          	sd	s0,32(sp)
   15854:	00058913          	mv	s2,a1
   15858:	00060493          	mv	s1,a2
   1585c:	0149dc63          	ble	s4,s3,15874 <__multiply+0x44>
   15860:	00098713          	mv	a4,s3
   15864:	00060913          	mv	s2,a2
   15868:	000a0993          	mv	s3,s4
   1586c:	00058493          	mv	s1,a1
   15870:	00070a13          	mv	s4,a4
   15874:	00c92783          	lw	a5,12(s2)
   15878:	00892583          	lw	a1,8(s2)
   1587c:	0149843b          	addw	s0,s3,s4
   15880:	0087a7b3          	slt	a5,a5,s0
   15884:	00f585bb          	addw	a1,a1,a5
   15888:	b3dff0ef          	jal	153c4 <_Balloc>
   1588c:	00040893          	mv	a7,s0
   15890:	01850313          	addi	t1,a0,24
   15894:	00289893          	slli	a7,a7,0x2
   15898:	011308b3          	add	a7,t1,a7
   1589c:	00030793          	mv	a5,t1
   158a0:	01137863          	bleu	a7,t1,158b0 <__multiply+0x80>
   158a4:	0007a023          	sw	zero,0(a5)
   158a8:	00478793          	addi	a5,a5,4
   158ac:	ff17ece3          	bltu	a5,a7,158a4 <__multiply+0x74>
   158b0:	01848613          	addi	a2,s1,24
   158b4:	002a1e13          	slli	t3,s4,0x2
   158b8:	01890e93          	addi	t4,s2,24
   158bc:	00299813          	slli	a6,s3,0x2
   158c0:	000105b7          	lui	a1,0x10
   158c4:	01c60e33          	add	t3,a2,t3
   158c8:	010e8833          	add	a6,t4,a6
   158cc:	fff5859b          	addiw	a1,a1,-1
   158d0:	11c67463          	bleu	t3,a2,159d8 <__multiply+0x1a8>
   158d4:	00062383          	lw	t2,0(a2)
   158d8:	00b3f4b3          	and	s1,t2,a1
   158dc:	06048a63          	beqz	s1,15950 <__multiply+0x120>
   158e0:	00030293          	mv	t0,t1
   158e4:	000e8f93          	mv	t6,t4
   158e8:	00000793          	li	a5,0
   158ec:	0080006f          	j	158f4 <__multiply+0xc4>
   158f0:	00038293          	mv	t0,t2
   158f4:	000fa683          	lw	a3,0(t6)
   158f8:	0002af03          	lw	t5,0(t0) # 15394 <memset+0xb4>
   158fc:	00428393          	addi	t2,t0,4
   15900:	00b6f733          	and	a4,a3,a1
   15904:	0297073b          	mulw	a4,a4,s1
   15908:	0106d69b          	srliw	a3,a3,0x10
   1590c:	00bf7933          	and	s2,t5,a1
   15910:	010f5f1b          	srliw	t5,t5,0x10
   15914:	004f8f93          	addi	t6,t6,4
   15918:	029686bb          	mulw	a3,a3,s1
   1591c:	0127073b          	addw	a4,a4,s2
   15920:	00f707bb          	addw	a5,a4,a5
   15924:	0107d71b          	srliw	a4,a5,0x10
   15928:	00b7f7b3          	and	a5,a5,a1
   1592c:	01e686bb          	addw	a3,a3,t5
   15930:	00e6873b          	addw	a4,a3,a4
   15934:	0107169b          	slliw	a3,a4,0x10
   15938:	00f6e7b3          	or	a5,a3,a5
   1593c:	fef3ae23          	sw	a5,-4(t2)
   15940:	0107579b          	srliw	a5,a4,0x10
   15944:	fb0fe6e3          	bltu	t6,a6,158f0 <__multiply+0xc0>
   15948:	00f2a223          	sw	a5,4(t0)
   1594c:	00062383          	lw	t2,0(a2)
   15950:	0103d39b          	srliw	t2,t2,0x10
   15954:	06038c63          	beqz	t2,159cc <__multiply+0x19c>
   15958:	00032783          	lw	a5,0(t1) # 10000 <_ftext>
   1595c:	00030293          	mv	t0,t1
   15960:	000e8f93          	mv	t6,t4
   15964:	00078f13          	mv	t5,a5
   15968:	00000693          	li	a3,0
   1596c:	0080006f          	j	15974 <__multiply+0x144>
   15970:	00048293          	mv	t0,s1
   15974:	000fa703          	lw	a4,0(t6)
   15978:	010f5f1b          	srliw	t5,t5,0x10
   1597c:	00b7f7b3          	and	a5,a5,a1
   15980:	00b77733          	and	a4,a4,a1
   15984:	0277073b          	mulw	a4,a4,t2
   15988:	00428493          	addi	s1,t0,4
   1598c:	004f8f93          	addi	t6,t6,4
   15990:	01e7073b          	addw	a4,a4,t5
   15994:	00d706bb          	addw	a3,a4,a3
   15998:	0106971b          	slliw	a4,a3,0x10
   1599c:	00f767b3          	or	a5,a4,a5
   159a0:	fef4ae23          	sw	a5,-4(s1)
   159a4:	ffefd703          	lhu	a4,-2(t6)
   159a8:	0042af03          	lw	t5,4(t0)
   159ac:	0106d69b          	srliw	a3,a3,0x10
   159b0:	0277073b          	mulw	a4,a4,t2
   159b4:	00bf77b3          	and	a5,t5,a1
   159b8:	00f707bb          	addw	a5,a4,a5
   159bc:	00d787bb          	addw	a5,a5,a3
   159c0:	0107d69b          	srliw	a3,a5,0x10
   159c4:	fb0fe6e3          	bltu	t6,a6,15970 <__multiply+0x140>
   159c8:	00f2a223          	sw	a5,4(t0)
   159cc:	00460613          	addi	a2,a2,4
   159d0:	00430313          	addi	t1,t1,4
   159d4:	f1c660e3          	bltu	a2,t3,158d4 <__multiply+0xa4>
   159d8:	02805463          	blez	s0,15a00 <__multiply+0x1d0>
   159dc:	ffc8a783          	lw	a5,-4(a7)
   159e0:	ffc88893          	addi	a7,a7,-4
   159e4:	00078863          	beqz	a5,159f4 <__multiply+0x1c4>
   159e8:	0180006f          	j	15a00 <__multiply+0x1d0>
   159ec:	0008a783          	lw	a5,0(a7)
   159f0:	00079863          	bnez	a5,15a00 <__multiply+0x1d0>
   159f4:	fff4041b          	addiw	s0,s0,-1
   159f8:	ffc88893          	addi	a7,a7,-4
   159fc:	fe0418e3          	bnez	s0,159ec <__multiply+0x1bc>
   15a00:	02813083          	ld	ra,40(sp)
   15a04:	00852a23          	sw	s0,20(a0)
   15a08:	01813483          	ld	s1,24(sp)
   15a0c:	02013403          	ld	s0,32(sp)
   15a10:	01013903          	ld	s2,16(sp)
   15a14:	00813983          	ld	s3,8(sp)
   15a18:	00013a03          	ld	s4,0(sp)
   15a1c:	03010113          	addi	sp,sp,48
   15a20:	00008067          	ret

0000000000015a24 <__pow5mult>:
   15a24:	fd010113          	addi	sp,sp,-48
   15a28:	02813023          	sd	s0,32(sp)
   15a2c:	01213823          	sd	s2,16(sp)
   15a30:	01313423          	sd	s3,8(sp)
   15a34:	02113423          	sd	ra,40(sp)
   15a38:	00913c23          	sd	s1,24(sp)
   15a3c:	00367793          	andi	a5,a2,3
   15a40:	00060413          	mv	s0,a2
   15a44:	00050993          	mv	s3,a0
   15a48:	00058913          	mv	s2,a1
   15a4c:	0a079e63          	bnez	a5,15b08 <__pow5mult+0xe4>
   15a50:	4024541b          	sraiw	s0,s0,0x2
   15a54:	06040663          	beqz	s0,15ac0 <__pow5mult+0x9c>
   15a58:	0709b483          	ld	s1,112(s3)
   15a5c:	0c048a63          	beqz	s1,15b30 <__pow5mult+0x10c>
   15a60:	00147793          	andi	a5,s0,1
   15a64:	02079063          	bnez	a5,15a84 <__pow5mult+0x60>
   15a68:	4014541b          	sraiw	s0,s0,0x1
   15a6c:	04040a63          	beqz	s0,15ac0 <__pow5mult+0x9c>
   15a70:	0004b503          	ld	a0,0(s1)
   15a74:	06050663          	beqz	a0,15ae0 <__pow5mult+0xbc>
   15a78:	00050493          	mv	s1,a0
   15a7c:	00147793          	andi	a5,s0,1
   15a80:	fe0784e3          	beqz	a5,15a68 <__pow5mult+0x44>
   15a84:	00048613          	mv	a2,s1
   15a88:	00090593          	mv	a1,s2
   15a8c:	00098513          	mv	a0,s3
   15a90:	da1ff0ef          	jal	15830 <__multiply>
   15a94:	06090663          	beqz	s2,15b00 <__pow5mult+0xdc>
   15a98:	00892783          	lw	a5,8(s2)
   15a9c:	0789b703          	ld	a4,120(s3)
   15aa0:	4014541b          	sraiw	s0,s0,0x1
   15aa4:	00379793          	slli	a5,a5,0x3
   15aa8:	00f707b3          	add	a5,a4,a5
   15aac:	0007b703          	ld	a4,0(a5)
   15ab0:	00e93023          	sd	a4,0(s2)
   15ab4:	0127b023          	sd	s2,0(a5)
   15ab8:	00050913          	mv	s2,a0
   15abc:	fa041ae3          	bnez	s0,15a70 <__pow5mult+0x4c>
   15ac0:	02813083          	ld	ra,40(sp)
   15ac4:	00090513          	mv	a0,s2
   15ac8:	02013403          	ld	s0,32(sp)
   15acc:	01813483          	ld	s1,24(sp)
   15ad0:	01013903          	ld	s2,16(sp)
   15ad4:	00813983          	ld	s3,8(sp)
   15ad8:	03010113          	addi	sp,sp,48
   15adc:	00008067          	ret
   15ae0:	00048613          	mv	a2,s1
   15ae4:	00048593          	mv	a1,s1
   15ae8:	00098513          	mv	a0,s3
   15aec:	d45ff0ef          	jal	15830 <__multiply>
   15af0:	00a4b023          	sd	a0,0(s1)
   15af4:	00053023          	sd	zero,0(a0)
   15af8:	00050493          	mv	s1,a0
   15afc:	f81ff06f          	j	15a7c <__pow5mult+0x58>
   15b00:	00050913          	mv	s2,a0
   15b04:	f65ff06f          	j	15a68 <__pow5mult+0x44>
   15b08:	fff7879b          	addiw	a5,a5,-1
   15b0c:	00019737          	lui	a4,0x19
   15b10:	3d870713          	addi	a4,a4,984 # 193d8 <p05.2568>
   15b14:	00279793          	slli	a5,a5,0x2
   15b18:	00f707b3          	add	a5,a4,a5
   15b1c:	0007a603          	lw	a2,0(a5)
   15b20:	00000693          	li	a3,0
   15b24:	971ff0ef          	jal	15494 <__multadd>
   15b28:	00050913          	mv	s2,a0
   15b2c:	f25ff06f          	j	15a50 <__pow5mult+0x2c>
   15b30:	00100593          	li	a1,1
   15b34:	00098513          	mv	a0,s3
   15b38:	88dff0ef          	jal	153c4 <_Balloc>
   15b3c:	27100793          	li	a5,625
   15b40:	00f52c23          	sw	a5,24(a0)
   15b44:	00100793          	li	a5,1
   15b48:	00f52a23          	sw	a5,20(a0)
   15b4c:	06a9b823          	sd	a0,112(s3)
   15b50:	00050493          	mv	s1,a0
   15b54:	00053023          	sd	zero,0(a0)
   15b58:	f09ff06f          	j	15a60 <__pow5mult+0x3c>

0000000000015b5c <__lshift>:
   15b5c:	fc010113          	addi	sp,sp,-64
   15b60:	01513423          	sd	s5,8(sp)
   15b64:	0145aa83          	lw	s5,20(a1) # 10014 <_ftext+0x14>
   15b68:	02813823          	sd	s0,48(sp)
   15b6c:	00c5a783          	lw	a5,12(a1)
   15b70:	4056541b          	sraiw	s0,a2,0x5
   15b74:	01540abb          	addw	s5,s0,s5
   15b78:	02913423          	sd	s1,40(sp)
   15b7c:	03213023          	sd	s2,32(sp)
   15b80:	01313c23          	sd	s3,24(sp)
   15b84:	01413823          	sd	s4,16(sp)
   15b88:	02113c23          	sd	ra,56(sp)
   15b8c:	001a849b          	addiw	s1,s5,1
   15b90:	00058913          	mv	s2,a1
   15b94:	00060993          	mv	s3,a2
   15b98:	00050a13          	mv	s4,a0
   15b9c:	0085a583          	lw	a1,8(a1)
   15ba0:	0097d863          	ble	s1,a5,15bb0 <__lshift+0x54>
   15ba4:	0017979b          	slliw	a5,a5,0x1
   15ba8:	0015859b          	addiw	a1,a1,1
   15bac:	fe97cce3          	blt	a5,s1,15ba4 <__lshift+0x48>
   15bb0:	000a0513          	mv	a0,s4
   15bb4:	811ff0ef          	jal	153c4 <_Balloc>
   15bb8:	01850793          	addi	a5,a0,24
   15bbc:	0e805c63          	blez	s0,15cb4 <__lshift+0x158>
   15bc0:	fff4071b          	addiw	a4,s0,-1
   15bc4:	02071713          	slli	a4,a4,0x20
   15bc8:	02075713          	srli	a4,a4,0x20
   15bcc:	00170713          	addi	a4,a4,1
   15bd0:	00271713          	slli	a4,a4,0x2
   15bd4:	00e78733          	add	a4,a5,a4
   15bd8:	00478793          	addi	a5,a5,4
   15bdc:	fe07ae23          	sw	zero,-4(a5)
   15be0:	fee79ce3          	bne	a5,a4,15bd8 <__lshift+0x7c>
   15be4:	01492883          	lw	a7,20(s2)
   15be8:	01890793          	addi	a5,s2,24
   15bec:	01f9f613          	andi	a2,s3,31
   15bf0:	00289893          	slli	a7,a7,0x2
   15bf4:	011788b3          	add	a7,a5,a7
   15bf8:	08060863          	beqz	a2,15c88 <__lshift+0x12c>
   15bfc:	02000313          	li	t1,32
   15c00:	40c3033b          	subw	t1,t1,a2
   15c04:	00000693          	li	a3,0
   15c08:	0080006f          	j	15c10 <__lshift+0xb4>
   15c0c:	00080713          	mv	a4,a6
   15c10:	0007a583          	lw	a1,0(a5)
   15c14:	00470813          	addi	a6,a4,4
   15c18:	00478793          	addi	a5,a5,4
   15c1c:	00c595bb          	sllw	a1,a1,a2
   15c20:	00d5e6b3          	or	a3,a1,a3
   15c24:	fed82e23          	sw	a3,-4(a6) # fffc <_ftext-0x4>
   15c28:	ffc7a683          	lw	a3,-4(a5)
   15c2c:	0066d6bb          	srlw	a3,a3,t1
   15c30:	fd17eee3          	bltu	a5,a7,15c0c <__lshift+0xb0>
   15c34:	00d72223          	sw	a3,4(a4)
   15c38:	00068463          	beqz	a3,15c40 <__lshift+0xe4>
   15c3c:	002a849b          	addiw	s1,s5,2
   15c40:	00892783          	lw	a5,8(s2)
   15c44:	078a3703          	ld	a4,120(s4)
   15c48:	fff4849b          	addiw	s1,s1,-1
   15c4c:	00379793          	slli	a5,a5,0x3
   15c50:	00f707b3          	add	a5,a4,a5
   15c54:	0007b703          	ld	a4,0(a5)
   15c58:	03813083          	ld	ra,56(sp)
   15c5c:	00952a23          	sw	s1,20(a0)
   15c60:	00e93023          	sd	a4,0(s2)
   15c64:	0127b023          	sd	s2,0(a5)
   15c68:	03013403          	ld	s0,48(sp)
   15c6c:	02813483          	ld	s1,40(sp)
   15c70:	02013903          	ld	s2,32(sp)
   15c74:	01813983          	ld	s3,24(sp)
   15c78:	01013a03          	ld	s4,16(sp)
   15c7c:	00813a83          	ld	s5,8(sp)
   15c80:	04010113          	addi	sp,sp,64
   15c84:	00008067          	ret
   15c88:	00478793          	addi	a5,a5,4
   15c8c:	ffc7a683          	lw	a3,-4(a5)
   15c90:	00470713          	addi	a4,a4,4
   15c94:	fed72e23          	sw	a3,-4(a4)
   15c98:	fb17f4e3          	bleu	a7,a5,15c40 <__lshift+0xe4>
   15c9c:	00478793          	addi	a5,a5,4
   15ca0:	ffc7a683          	lw	a3,-4(a5)
   15ca4:	00470713          	addi	a4,a4,4
   15ca8:	fed72e23          	sw	a3,-4(a4)
   15cac:	fd17eee3          	bltu	a5,a7,15c88 <__lshift+0x12c>
   15cb0:	f91ff06f          	j	15c40 <__lshift+0xe4>
   15cb4:	00078713          	mv	a4,a5
   15cb8:	f2dff06f          	j	15be4 <__lshift+0x88>

0000000000015cbc <__mcmp>:
   15cbc:	01452783          	lw	a5,20(a0)
   15cc0:	0145a703          	lw	a4,20(a1)
   15cc4:	40e787bb          	subw	a5,a5,a4
   15cc8:	04079263          	bnez	a5,15d0c <__mcmp+0x50>
   15ccc:	00271713          	slli	a4,a4,0x2
   15cd0:	01850513          	addi	a0,a0,24
   15cd4:	01858593          	addi	a1,a1,24
   15cd8:	00e507b3          	add	a5,a0,a4
   15cdc:	00e585b3          	add	a1,a1,a4
   15ce0:	0080006f          	j	15ce8 <__mcmp+0x2c>
   15ce4:	02f57863          	bleu	a5,a0,15d14 <__mcmp+0x58>
   15ce8:	ffc78793          	addi	a5,a5,-4
   15cec:	ffc58593          	addi	a1,a1,-4
   15cf0:	0007a703          	lw	a4,0(a5)
   15cf4:	0005a683          	lw	a3,0(a1)
   15cf8:	fed706e3          	beq	a4,a3,15ce4 <__mcmp+0x28>
   15cfc:	00d737b3          	sltu	a5,a4,a3
   15d00:	40f007bb          	negw	a5,a5
   15d04:	0017e513          	ori	a0,a5,1
   15d08:	00008067          	ret
   15d0c:	00078513          	mv	a0,a5
   15d10:	00008067          	ret
   15d14:	00000513          	li	a0,0
   15d18:	00008067          	ret

0000000000015d1c <__mdiff>:
   15d1c:	0145a703          	lw	a4,20(a1)
   15d20:	01462783          	lw	a5,20(a2)
   15d24:	fd010113          	addi	sp,sp,-48
   15d28:	01213823          	sd	s2,16(sp)
   15d2c:	01313423          	sd	s3,8(sp)
   15d30:	02113423          	sd	ra,40(sp)
   15d34:	02813023          	sd	s0,32(sp)
   15d38:	00913c23          	sd	s1,24(sp)
   15d3c:	01413023          	sd	s4,0(sp)
   15d40:	40f7073b          	subw	a4,a4,a5
   15d44:	00058913          	mv	s2,a1
   15d48:	00060993          	mv	s3,a2
   15d4c:	04071863          	bnez	a4,15d9c <__mdiff+0x80>
   15d50:	00279713          	slli	a4,a5,0x2
   15d54:	01858813          	addi	a6,a1,24
   15d58:	01860413          	addi	s0,a2,24
   15d5c:	00e807b3          	add	a5,a6,a4
   15d60:	00e40733          	add	a4,s0,a4
   15d64:	0080006f          	j	15d6c <__mdiff+0x50>
   15d68:	16f87263          	bleu	a5,a6,15ecc <__mdiff+0x1b0>
   15d6c:	ffc78793          	addi	a5,a5,-4
   15d70:	ffc70713          	addi	a4,a4,-4
   15d74:	0007a583          	lw	a1,0(a5)
   15d78:	00072683          	lw	a3,0(a4)
   15d7c:	fed586e3          	beq	a1,a3,15d68 <__mdiff+0x4c>
   15d80:	18d5f063          	bleu	a3,a1,15f00 <__mdiff+0x1e4>
   15d84:	00090793          	mv	a5,s2
   15d88:	00080493          	mv	s1,a6
   15d8c:	00098913          	mv	s2,s3
   15d90:	00100a13          	li	s4,1
   15d94:	00078993          	mv	s3,a5
   15d98:	0140006f          	j	15dac <__mdiff+0x90>
   15d9c:	16074a63          	bltz	a4,15f10 <__mdiff+0x1f4>
   15da0:	01860493          	addi	s1,a2,24
   15da4:	01858413          	addi	s0,a1,24
   15da8:	00000a13          	li	s4,0
   15dac:	00892583          	lw	a1,8(s2)
   15db0:	e14ff0ef          	jal	153c4 <_Balloc>
   15db4:	01492e03          	lw	t3,20(s2)
   15db8:	0149af03          	lw	t5,20(s3)
   15dbc:	00010337          	lui	t1,0x10
   15dc0:	002e1e93          	slli	t4,t3,0x2
   15dc4:	002f1f13          	slli	t5,t5,0x2
   15dc8:	01452823          	sw	s4,16(a0)
   15dcc:	01d40eb3          	add	t4,s0,t4
   15dd0:	01e48f33          	add	t5,s1,t5
   15dd4:	01850813          	addi	a6,a0,24
   15dd8:	00000693          	li	a3,0
   15ddc:	fff3031b          	addiw	t1,t1,-1
   15de0:	00042583          	lw	a1,0(s0)
   15de4:	0004a883          	lw	a7,0(s1)
   15de8:	00480813          	addi	a6,a6,4
   15dec:	0065f633          	and	a2,a1,t1
   15df0:	00d606bb          	addw	a3,a2,a3
   15df4:	0068f733          	and	a4,a7,t1
   15df8:	40e6873b          	subw	a4,a3,a4
   15dfc:	0105d59b          	srliw	a1,a1,0x10
   15e00:	0108d69b          	srliw	a3,a7,0x10
   15e04:	40d585bb          	subw	a1,a1,a3
   15e08:	4107569b          	sraiw	a3,a4,0x10
   15e0c:	00d586bb          	addw	a3,a1,a3
   15e10:	0106979b          	slliw	a5,a3,0x10
   15e14:	00677733          	and	a4,a4,t1
   15e18:	00e7e7b3          	or	a5,a5,a4
   15e1c:	00448493          	addi	s1,s1,4
   15e20:	fef82e23          	sw	a5,-4(a6)
   15e24:	00440413          	addi	s0,s0,4
   15e28:	4106d69b          	sraiw	a3,a3,0x10
   15e2c:	fbe4eae3          	bltu	s1,t5,15de0 <__mdiff+0xc4>
   15e30:	07d47063          	bleu	t4,s0,15e90 <__mdiff+0x174>
   15e34:	00010f37          	lui	t5,0x10
   15e38:	00080313          	mv	t1,a6
   15e3c:	00040893          	mv	a7,s0
   15e40:	ffff0f1b          	addiw	t5,t5,-1
   15e44:	0008a583          	lw	a1,0(a7)
   15e48:	00430313          	addi	t1,t1,4 # 10004 <_ftext+0x4>
   15e4c:	00488893          	addi	a7,a7,4
   15e50:	01e5f633          	and	a2,a1,t5
   15e54:	00d606bb          	addw	a3,a2,a3
   15e58:	4106d71b          	sraiw	a4,a3,0x10
   15e5c:	0105d59b          	srliw	a1,a1,0x10
   15e60:	00e5873b          	addw	a4,a1,a4
   15e64:	01e6f6b3          	and	a3,a3,t5
   15e68:	0107179b          	slliw	a5,a4,0x10
   15e6c:	00d7e7b3          	or	a5,a5,a3
   15e70:	fef32e23          	sw	a5,-4(t1)
   15e74:	4107569b          	sraiw	a3,a4,0x10
   15e78:	fdd8e6e3          	bltu	a7,t4,15e44 <__mdiff+0x128>
   15e7c:	fff44413          	not	s0,s0
   15e80:	01d40eb3          	add	t4,s0,t4
   15e84:	ffcefe93          	andi	t4,t4,-4
   15e88:	004e8e93          	addi	t4,t4,4
   15e8c:	01d80833          	add	a6,a6,t4
   15e90:	ffc80813          	addi	a6,a6,-4
   15e94:	00079a63          	bnez	a5,15ea8 <__mdiff+0x18c>
   15e98:	ffc80813          	addi	a6,a6,-4
   15e9c:	00082783          	lw	a5,0(a6)
   15ea0:	fffe0e1b          	addiw	t3,t3,-1
   15ea4:	fe078ae3          	beqz	a5,15e98 <__mdiff+0x17c>
   15ea8:	02813083          	ld	ra,40(sp)
   15eac:	02013403          	ld	s0,32(sp)
   15eb0:	01813483          	ld	s1,24(sp)
   15eb4:	01013903          	ld	s2,16(sp)
   15eb8:	00813983          	ld	s3,8(sp)
   15ebc:	00013a03          	ld	s4,0(sp)
   15ec0:	01c52a23          	sw	t3,20(a0)
   15ec4:	03010113          	addi	sp,sp,48
   15ec8:	00008067          	ret
   15ecc:	00000593          	li	a1,0
   15ed0:	cf4ff0ef          	jal	153c4 <_Balloc>
   15ed4:	02813083          	ld	ra,40(sp)
   15ed8:	00100793          	li	a5,1
   15edc:	02013403          	ld	s0,32(sp)
   15ee0:	01813483          	ld	s1,24(sp)
   15ee4:	01013903          	ld	s2,16(sp)
   15ee8:	00813983          	ld	s3,8(sp)
   15eec:	00013a03          	ld	s4,0(sp)
   15ef0:	00f52a23          	sw	a5,20(a0)
   15ef4:	00052c23          	sw	zero,24(a0)
   15ef8:	03010113          	addi	sp,sp,48
   15efc:	00008067          	ret
   15f00:	00040493          	mv	s1,s0
   15f04:	00000a13          	li	s4,0
   15f08:	00080413          	mv	s0,a6
   15f0c:	ea1ff06f          	j	15dac <__mdiff+0x90>
   15f10:	00090793          	mv	a5,s2
   15f14:	01890493          	addi	s1,s2,24
   15f18:	01898413          	addi	s0,s3,24
   15f1c:	00098913          	mv	s2,s3
   15f20:	00100a13          	li	s4,1
   15f24:	00078993          	mv	s3,a5
   15f28:	e85ff06f          	j	15dac <__mdiff+0x90>

0000000000015f2c <__ulp>:
   15f2c:	e20507d3          	fmv.x.d	a5,fa0
   15f30:	7ff00737          	lui	a4,0x7ff00
   15f34:	4207d793          	srai	a5,a5,0x20
   15f38:	00e7f7b3          	and	a5,a5,a4
   15f3c:	fcc00737          	lui	a4,0xfcc00
   15f40:	00e787bb          	addw	a5,a5,a4
   15f44:	00f05863          	blez	a5,15f54 <__ulp+0x28>
   15f48:	02079793          	slli	a5,a5,0x20
   15f4c:	f2078553          	fmv.d.x	fa0,a5
   15f50:	00008067          	ret
   15f54:	40f007bb          	negw	a5,a5
   15f58:	4147d79b          	sraiw	a5,a5,0x14
   15f5c:	01300713          	li	a4,19
   15f60:	04f75063          	ble	a5,a4,15fa0 <__ulp+0x74>
   15f64:	fec7869b          	addiw	a3,a5,-20
   15f68:	01e00613          	li	a2,30
   15f6c:	00000793          	li	a5,0
   15f70:	00100713          	li	a4,1
   15f74:	00d64663          	blt	a2,a3,15f80 <__ulp+0x54>
   15f78:	fff6c693          	not	a3,a3
   15f7c:	00d7173b          	sllw	a4,a4,a3
   15f80:	fff00693          	li	a3,-1
   15f84:	02069693          	slli	a3,a3,0x20
   15f88:	02071713          	slli	a4,a4,0x20
   15f8c:	02075713          	srli	a4,a4,0x20
   15f90:	00d7f7b3          	and	a5,a5,a3
   15f94:	00e7e7b3          	or	a5,a5,a4
   15f98:	f2078553          	fmv.d.x	fa0,a5
   15f9c:	00008067          	ret
   15fa0:	00080737          	lui	a4,0x80
   15fa4:	40f757bb          	sraw	a5,a4,a5
   15fa8:	fa1ff06f          	j	15f48 <__ulp+0x1c>

0000000000015fac <__b2d>:
   15fac:	fd010113          	addi	sp,sp,-48
   15fb0:	02813023          	sd	s0,32(sp)
   15fb4:	01452403          	lw	s0,20(a0)
   15fb8:	00913c23          	sd	s1,24(sp)
   15fbc:	01850493          	addi	s1,a0,24
   15fc0:	00241413          	slli	s0,s0,0x2
   15fc4:	00848433          	add	s0,s1,s0
   15fc8:	01213823          	sd	s2,16(sp)
   15fcc:	ffc42903          	lw	s2,-4(s0)
   15fd0:	01313423          	sd	s3,8(sp)
   15fd4:	01413023          	sd	s4,0(sp)
   15fd8:	00090513          	mv	a0,s2
   15fdc:	00058a13          	mv	s4,a1
   15fe0:	02113423          	sd	ra,40(sp)
   15fe4:	eecff0ef          	jal	156d0 <__hi0bits>
   15fe8:	02000793          	li	a5,32
   15fec:	40a7873b          	subw	a4,a5,a0
   15ff0:	00ea2023          	sw	a4,0(s4)
   15ff4:	00a00713          	li	a4,10
   15ff8:	ffc40993          	addi	s3,s0,-4
   15ffc:	06a74a63          	blt	a4,a0,16070 <__b2d+0xc4>
   16000:	00b00693          	li	a3,11
   16004:	40a686bb          	subw	a3,a3,a0
   16008:	3ff00737          	lui	a4,0x3ff00
   1600c:	00d957bb          	srlw	a5,s2,a3
   16010:	00e7e7b3          	or	a5,a5,a4
   16014:	02079793          	slli	a5,a5,0x20
   16018:	00000713          	li	a4,0
   1601c:	0134f663          	bleu	s3,s1,16028 <__b2d+0x7c>
   16020:	ff842703          	lw	a4,-8(s0)
   16024:	00d7573b          	srlw	a4,a4,a3
   16028:	0155051b          	addiw	a0,a0,21
   1602c:	00a9153b          	sllw	a0,s2,a0
   16030:	00e56533          	or	a0,a0,a4
   16034:	fff00713          	li	a4,-1
   16038:	02051513          	slli	a0,a0,0x20
   1603c:	02071713          	slli	a4,a4,0x20
   16040:	02055513          	srli	a0,a0,0x20
   16044:	00e7f7b3          	and	a5,a5,a4
   16048:	00a7e7b3          	or	a5,a5,a0
   1604c:	02813083          	ld	ra,40(sp)
   16050:	f2078553          	fmv.d.x	fa0,a5
   16054:	02013403          	ld	s0,32(sp)
   16058:	01813483          	ld	s1,24(sp)
   1605c:	01013903          	ld	s2,16(sp)
   16060:	00813983          	ld	s3,8(sp)
   16064:	00013a03          	ld	s4,0(sp)
   16068:	03010113          	addi	sp,sp,48
   1606c:	00008067          	ret
   16070:	ff55051b          	addiw	a0,a0,-11
   16074:	0534f263          	bleu	s3,s1,160b8 <__b2d+0x10c>
   16078:	ff842683          	lw	a3,-8(s0)
   1607c:	04050263          	beqz	a0,160c0 <__b2d+0x114>
   16080:	40a7863b          	subw	a2,a5,a0
   16084:	00a917bb          	sllw	a5,s2,a0
   16088:	3ff00937          	lui	s2,0x3ff00
   1608c:	00c6d73b          	srlw	a4,a3,a2
   16090:	0127e7b3          	or	a5,a5,s2
   16094:	00e7e7b3          	or	a5,a5,a4
   16098:	ff840713          	addi	a4,s0,-8
   1609c:	02079793          	slli	a5,a5,0x20
   160a0:	04e4fa63          	bleu	a4,s1,160f4 <__b2d+0x148>
   160a4:	ff442703          	lw	a4,-12(s0)
   160a8:	00a6953b          	sllw	a0,a3,a0
   160ac:	00c756bb          	srlw	a3,a4,a2
   160b0:	00a6e533          	or	a0,a3,a0
   160b4:	f81ff06f          	j	16034 <__b2d+0x88>
   160b8:	00000693          	li	a3,0
   160bc:	02051063          	bnez	a0,160dc <__b2d+0x130>
   160c0:	3ff00737          	lui	a4,0x3ff00
   160c4:	00e967b3          	or	a5,s2,a4
   160c8:	02069693          	slli	a3,a3,0x20
   160cc:	0206d693          	srli	a3,a3,0x20
   160d0:	02079793          	slli	a5,a5,0x20
   160d4:	00d7e7b3          	or	a5,a5,a3
   160d8:	f75ff06f          	j	1604c <__b2d+0xa0>
   160dc:	00a917bb          	sllw	a5,s2,a0
   160e0:	3ff00737          	lui	a4,0x3ff00
   160e4:	00e7e7b3          	or	a5,a5,a4
   160e8:	02079793          	slli	a5,a5,0x20
   160ec:	00000513          	li	a0,0
   160f0:	f45ff06f          	j	16034 <__b2d+0x88>
   160f4:	00a6953b          	sllw	a0,a3,a0
   160f8:	f3dff06f          	j	16034 <__b2d+0x88>

00000000000160fc <__d2b>:
   160fc:	fc010113          	addi	sp,sp,-64
   16100:	02813823          	sd	s0,48(sp)
   16104:	e2058453          	fmv.x.d	s0,fa1
   16108:	00100593          	li	a1,1
   1610c:	02913423          	sd	s1,40(sp)
   16110:	03213023          	sd	s2,32(sp)
   16114:	01313c23          	sd	s3,24(sp)
   16118:	01413823          	sd	s4,16(sp)
   1611c:	00068993          	mv	s3,a3
   16120:	02113c23          	sd	ra,56(sp)
   16124:	00060a13          	mv	s4,a2
   16128:	a9cff0ef          	jal	153c4 <_Balloc>
   1612c:	42045793          	srai	a5,s0,0x20
   16130:	02179493          	slli	s1,a5,0x21
   16134:	001006b7          	lui	a3,0x100
   16138:	fff6871b          	addiw	a4,a3,-1
   1613c:	0354d493          	srli	s1,s1,0x35
   16140:	00050913          	mv	s2,a0
   16144:	00e7f7b3          	and	a5,a5,a4
   16148:	00048463          	beqz	s1,16150 <__d2b+0x54>
   1614c:	00d7e7b3          	or	a5,a5,a3
   16150:	00f12623          	sw	a5,12(sp)
   16154:	0004041b          	sext.w	s0,s0
   16158:	08040063          	beqz	s0,161d8 <__d2b+0xdc>
   1615c:	00810513          	addi	a0,sp,8
   16160:	00812423          	sw	s0,8(sp)
   16164:	de8ff0ef          	jal	1574c <__lo0bits>
   16168:	00c12783          	lw	a5,12(sp)
   1616c:	0a051463          	bnez	a0,16214 <__d2b+0x118>
   16170:	00812703          	lw	a4,8(sp)
   16174:	00e92c23          	sw	a4,24(s2) # 3ff00018 <_gp+0x3fee4058>
   16178:	0017b413          	seqz	s0,a5
   1617c:	00200713          	li	a4,2
   16180:	4087043b          	subw	s0,a4,s0
   16184:	00f92e23          	sw	a5,28(s2)
   16188:	00892a23          	sw	s0,20(s2)
   1618c:	06049663          	bnez	s1,161f8 <__d2b+0xfc>
   16190:	bce5051b          	addiw	a0,a0,-1074
   16194:	00241793          	slli	a5,s0,0x2
   16198:	00aa2023          	sw	a0,0(s4)
   1619c:	00f907b3          	add	a5,s2,a5
   161a0:	0147a503          	lw	a0,20(a5)
   161a4:	0054141b          	slliw	s0,s0,0x5
   161a8:	d28ff0ef          	jal	156d0 <__hi0bits>
   161ac:	40a4053b          	subw	a0,s0,a0
   161b0:	00a9a023          	sw	a0,0(s3)
   161b4:	03813083          	ld	ra,56(sp)
   161b8:	00090513          	mv	a0,s2
   161bc:	03013403          	ld	s0,48(sp)
   161c0:	02813483          	ld	s1,40(sp)
   161c4:	02013903          	ld	s2,32(sp)
   161c8:	01813983          	ld	s3,24(sp)
   161cc:	01013a03          	ld	s4,16(sp)
   161d0:	04010113          	addi	sp,sp,64
   161d4:	00008067          	ret
   161d8:	00c10513          	addi	a0,sp,12
   161dc:	d70ff0ef          	jal	1574c <__lo0bits>
   161e0:	00c12783          	lw	a5,12(sp)
   161e4:	00100413          	li	s0,1
   161e8:	00892a23          	sw	s0,20(s2)
   161ec:	00f92c23          	sw	a5,24(s2)
   161f0:	0205051b          	addiw	a0,a0,32
   161f4:	f8048ee3          	beqz	s1,16190 <__d2b+0x94>
   161f8:	bcd4849b          	addiw	s1,s1,-1075
   161fc:	00a484bb          	addw	s1,s1,a0
   16200:	03500793          	li	a5,53
   16204:	009a2023          	sw	s1,0(s4)
   16208:	40a7853b          	subw	a0,a5,a0
   1620c:	00a9a023          	sw	a0,0(s3)
   16210:	fa5ff06f          	j	161b4 <__d2b+0xb8>
   16214:	02000713          	li	a4,32
   16218:	00812683          	lw	a3,8(sp)
   1621c:	40a7073b          	subw	a4,a4,a0
   16220:	00e7973b          	sllw	a4,a5,a4
   16224:	00d76733          	or	a4,a4,a3
   16228:	00a7d7bb          	srlw	a5,a5,a0
   1622c:	00e92c23          	sw	a4,24(s2)
   16230:	00f12623          	sw	a5,12(sp)
   16234:	f45ff06f          	j	16178 <__d2b+0x7c>

0000000000016238 <__ratio>:
   16238:	fd010113          	addi	sp,sp,-48
   1623c:	00913c23          	sd	s1,24(sp)
   16240:	00058493          	mv	s1,a1
   16244:	00810593          	addi	a1,sp,8
   16248:	02113423          	sd	ra,40(sp)
   1624c:	02813023          	sd	s0,32(sp)
   16250:	01213823          	sd	s2,16(sp)
   16254:	00050913          	mv	s2,a0
   16258:	d55ff0ef          	jal	15fac <__b2d>
   1625c:	00c10593          	addi	a1,sp,12
   16260:	00048513          	mv	a0,s1
   16264:	e2050453          	fmv.x.d	s0,fa0
   16268:	d45ff0ef          	jal	15fac <__b2d>
   1626c:	01492703          	lw	a4,20(s2)
   16270:	0144a783          	lw	a5,20(s1)
   16274:	00c12603          	lw	a2,12(sp)
   16278:	e20506d3          	fmv.x.d	a3,fa0
   1627c:	40f707bb          	subw	a5,a4,a5
   16280:	0057971b          	slliw	a4,a5,0x5
   16284:	00812783          	lw	a5,8(sp)
   16288:	40c787bb          	subw	a5,a5,a2
   1628c:	00f707bb          	addw	a5,a4,a5
   16290:	04f05463          	blez	a5,162d8 <__ratio+0xa0>
   16294:	00040713          	mv	a4,s0
   16298:	0147979b          	slliw	a5,a5,0x14
   1629c:	42045413          	srai	s0,s0,0x20
   162a0:	00f407bb          	addw	a5,s0,a5
   162a4:	02071413          	slli	s0,a4,0x20
   162a8:	02079793          	slli	a5,a5,0x20
   162ac:	02045413          	srli	s0,s0,0x20
   162b0:	00f46433          	or	s0,s0,a5
   162b4:	f20407d3          	fmv.d.x	fa5,s0
   162b8:	f2068753          	fmv.d.x	fa4,a3
   162bc:	02813083          	ld	ra,40(sp)
   162c0:	02013403          	ld	s0,32(sp)
   162c4:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   162c8:	01813483          	ld	s1,24(sp)
   162cc:	01013903          	ld	s2,16(sp)
   162d0:	03010113          	addi	sp,sp,48
   162d4:	00008067          	ret
   162d8:	00068613          	mv	a2,a3
   162dc:	0147979b          	slliw	a5,a5,0x14
   162e0:	4206d693          	srai	a3,a3,0x20
   162e4:	40f687bb          	subw	a5,a3,a5
   162e8:	02061693          	slli	a3,a2,0x20
   162ec:	02079793          	slli	a5,a5,0x20
   162f0:	0206d693          	srli	a3,a3,0x20
   162f4:	00f6e6b3          	or	a3,a3,a5
   162f8:	fbdff06f          	j	162b4 <__ratio+0x7c>

00000000000162fc <_mprec_log10>:
   162fc:	01700793          	li	a5,23
   16300:	02a7d263          	ble	a0,a5,16324 <_mprec_log10+0x28>
   16304:	0001c7b7          	lui	a5,0x1c
   16308:	8207b507          	fld	fa0,-2016(a5) # 1b820 <__wctomb+0x28>
   1630c:	0001c7b7          	lui	a5,0x1c
   16310:	8287b787          	fld	fa5,-2008(a5) # 1b828 <__wctomb+0x30>
   16314:	fff5051b          	addiw	a0,a0,-1
   16318:	12f57553          	fmul.d	fa0,fa0,fa5
   1631c:	fe051ce3          	bnez	a0,16314 <_mprec_log10+0x18>
   16320:	00008067          	ret
   16324:	000197b7          	lui	a5,0x19
   16328:	3d878793          	addi	a5,a5,984 # 193d8 <p05.2568>
   1632c:	00351513          	slli	a0,a0,0x3
   16330:	00a78533          	add	a0,a5,a0
   16334:	01053507          	fld	fa0,16(a0)
   16338:	00008067          	ret

000000000001633c <__copybits>:
   1633c:	01462703          	lw	a4,20(a2)
   16340:	fff5859b          	addiw	a1,a1,-1
   16344:	4055d81b          	sraiw	a6,a1,0x5
   16348:	00180813          	addi	a6,a6,1
   1634c:	01860793          	addi	a5,a2,24
   16350:	00271713          	slli	a4,a4,0x2
   16354:	00281813          	slli	a6,a6,0x2
   16358:	00e786b3          	add	a3,a5,a4
   1635c:	01050833          	add	a6,a0,a6
   16360:	02d7f863          	bleu	a3,a5,16390 <__copybits+0x54>
   16364:	00050713          	mv	a4,a0
   16368:	00478793          	addi	a5,a5,4
   1636c:	ffc7a583          	lw	a1,-4(a5)
   16370:	00470713          	addi	a4,a4,4 # 3ff00004 <_gp+0x3fee4044>
   16374:	feb72e23          	sw	a1,-4(a4)
   16378:	fed7e8e3          	bltu	a5,a3,16368 <__copybits+0x2c>
   1637c:	40c687b3          	sub	a5,a3,a2
   16380:	fe778793          	addi	a5,a5,-25
   16384:	ffc7f793          	andi	a5,a5,-4
   16388:	00478793          	addi	a5,a5,4
   1638c:	00f50533          	add	a0,a0,a5
   16390:	01057863          	bleu	a6,a0,163a0 <__copybits+0x64>
   16394:	00450513          	addi	a0,a0,4
   16398:	fe052e23          	sw	zero,-4(a0)
   1639c:	ff056ce3          	bltu	a0,a6,16394 <__copybits+0x58>
   163a0:	00008067          	ret

00000000000163a4 <__any_on>:
   163a4:	01452783          	lw	a5,20(a0)
   163a8:	4055d71b          	sraiw	a4,a1,0x5
   163ac:	01850693          	addi	a3,a0,24
   163b0:	04e7c463          	blt	a5,a4,163f8 <__any_on+0x54>
   163b4:	04f75063          	ble	a5,a4,163f4 <__any_on+0x50>
   163b8:	00070793          	mv	a5,a4
   163bc:	00279793          	slli	a5,a5,0x2
   163c0:	01f5f593          	andi	a1,a1,31
   163c4:	00f687b3          	add	a5,a3,a5
   163c8:	04059063          	bnez	a1,16408 <__any_on+0x64>
   163cc:	04f6fa63          	bleu	a5,a3,16420 <__any_on+0x7c>
   163d0:	ffc7a503          	lw	a0,-4(a5)
   163d4:	ffc78793          	addi	a5,a5,-4
   163d8:	00051a63          	bnez	a0,163ec <__any_on+0x48>
   163dc:	02f6f463          	bleu	a5,a3,16404 <__any_on+0x60>
   163e0:	ffc78793          	addi	a5,a5,-4
   163e4:	0007a703          	lw	a4,0(a5)
   163e8:	fe070ae3          	beqz	a4,163dc <__any_on+0x38>
   163ec:	00100513          	li	a0,1
   163f0:	00008067          	ret
   163f4:	00070793          	mv	a5,a4
   163f8:	00279793          	slli	a5,a5,0x2
   163fc:	00f687b3          	add	a5,a3,a5
   16400:	fcdff06f          	j	163cc <__any_on+0x28>
   16404:	00008067          	ret
   16408:	0007a603          	lw	a2,0(a5)
   1640c:	00100513          	li	a0,1
   16410:	00b6573b          	srlw	a4,a2,a1
   16414:	00b715bb          	sllw	a1,a4,a1
   16418:	fab60ae3          	beq	a2,a1,163cc <__any_on+0x28>
   1641c:	00008067          	ret
   16420:	00000513          	li	a0,0
   16424:	00008067          	ret

0000000000016428 <__fpclassifyd>:
   16428:	e20507d3          	fmv.x.d	a5,fa0
   1642c:	00200513          	li	a0,2
   16430:	4207d713          	srai	a4,a5,0x20
   16434:	0007879b          	sext.w	a5,a5
   16438:	00f766b3          	or	a3,a4,a5
   1643c:	00069463          	bnez	a3,16444 <__fpclassifyd+0x1c>
   16440:	00008067          	ret
   16444:	800006b7          	lui	a3,0x80000
   16448:	04d70863          	beq	a4,a3,16498 <__fpclassifyd+0x70>
   1644c:	fff006b7          	lui	a3,0xfff00
   16450:	00d706bb          	addw	a3,a4,a3
   16454:	7fe00637          	lui	a2,0x7fe00
   16458:	00400513          	li	a0,4
   1645c:	fec6e2e3          	bltu	a3,a2,16440 <__fpclassifyd+0x18>
   16460:	7ff006b7          	lui	a3,0x7ff00
   16464:	00d706bb          	addw	a3,a4,a3
   16468:	fcc6ece3          	bltu	a3,a2,16440 <__fpclassifyd+0x18>
   1646c:	800006b7          	lui	a3,0x80000
   16470:	fff6c693          	not	a3,a3
   16474:	00d77733          	and	a4,a4,a3
   16478:	001006b7          	lui	a3,0x100
   1647c:	00300513          	li	a0,3
   16480:	fcd760e3          	bltu	a4,a3,16440 <__fpclassifyd+0x18>
   16484:	7ff006b7          	lui	a3,0x7ff00
   16488:	00000513          	li	a0,0
   1648c:	fad71ae3          	bne	a4,a3,16440 <__fpclassifyd+0x18>
   16490:	0017b513          	seqz	a0,a5
   16494:	00008067          	ret
   16498:	fc079ae3          	bnez	a5,1646c <__fpclassifyd+0x44>
   1649c:	00008067          	ret

00000000000164a0 <__sread>:
   164a0:	01259503          	lh	a0,18(a1)
   164a4:	ff010113          	addi	sp,sp,-16
   164a8:	00813023          	sd	s0,0(sp)
   164ac:	00058413          	mv	s0,a1
   164b0:	00060593          	mv	a1,a2
   164b4:	00068613          	mv	a2,a3
   164b8:	00113423          	sd	ra,8(sp)
   164bc:	0cd020ef          	jal	18d88 <read>
   164c0:	02054063          	bltz	a0,164e0 <__sread+0x40>
   164c4:	09043783          	ld	a5,144(s0)
   164c8:	00813083          	ld	ra,8(sp)
   164cc:	00a787b3          	add	a5,a5,a0
   164d0:	08f43823          	sd	a5,144(s0)
   164d4:	00013403          	ld	s0,0(sp)
   164d8:	01010113          	addi	sp,sp,16
   164dc:	00008067          	ret
   164e0:	01045703          	lhu	a4,16(s0)
   164e4:	fffff7b7          	lui	a5,0xfffff
   164e8:	00813083          	ld	ra,8(sp)
   164ec:	fff7879b          	addiw	a5,a5,-1
   164f0:	00f777b3          	and	a5,a4,a5
   164f4:	00f41823          	sh	a5,16(s0)
   164f8:	00013403          	ld	s0,0(sp)
   164fc:	01010113          	addi	sp,sp,16
   16500:	00008067          	ret

0000000000016504 <__seofread>:
   16504:	00000513          	li	a0,0
   16508:	00008067          	ret

000000000001650c <__swrite>:
   1650c:	01059703          	lh	a4,16(a1)
   16510:	fd010113          	addi	sp,sp,-48
   16514:	02813023          	sd	s0,32(sp)
   16518:	00913c23          	sd	s1,24(sp)
   1651c:	02113423          	sd	ra,40(sp)
   16520:	10077793          	andi	a5,a4,256
   16524:	00058413          	mv	s0,a1
   16528:	00060493          	mv	s1,a2
   1652c:	02078063          	beqz	a5,1654c <__swrite+0x40>
   16530:	01259503          	lh	a0,18(a1)
   16534:	00200613          	li	a2,2
   16538:	00000593          	li	a1,0
   1653c:	00d13423          	sd	a3,8(sp)
   16540:	035020ef          	jal	18d74 <lseek>
   16544:	01041703          	lh	a4,16(s0)
   16548:	00813683          	ld	a3,8(sp)
   1654c:	fffff7b7          	lui	a5,0xfffff
   16550:	fff7879b          	addiw	a5,a5,-1
   16554:	00f777b3          	and	a5,a4,a5
   16558:	01241503          	lh	a0,18(s0)
   1655c:	00f41823          	sh	a5,16(s0)
   16560:	00048593          	mv	a1,s1
   16564:	02813083          	ld	ra,40(sp)
   16568:	02013403          	ld	s0,32(sp)
   1656c:	01813483          	ld	s1,24(sp)
   16570:	00068613          	mv	a2,a3
   16574:	03010113          	addi	sp,sp,48
   16578:	0250206f          	j	18d9c <write>

000000000001657c <__sseek>:
   1657c:	01259503          	lh	a0,18(a1)
   16580:	ff010113          	addi	sp,sp,-16
   16584:	00813023          	sd	s0,0(sp)
   16588:	00058413          	mv	s0,a1
   1658c:	00060593          	mv	a1,a2
   16590:	00068613          	mv	a2,a3
   16594:	00113423          	sd	ra,8(sp)
   16598:	7dc020ef          	jal	18d74 <lseek>
   1659c:	fff00793          	li	a5,-1
   165a0:	01045703          	lhu	a4,16(s0)
   165a4:	02f50263          	beq	a0,a5,165c8 <__sseek+0x4c>
   165a8:	00813083          	ld	ra,8(sp)
   165ac:	000017b7          	lui	a5,0x1
   165b0:	00f767b3          	or	a5,a4,a5
   165b4:	08a43823          	sd	a0,144(s0)
   165b8:	00f41823          	sh	a5,16(s0)
   165bc:	00013403          	ld	s0,0(sp)
   165c0:	01010113          	addi	sp,sp,16
   165c4:	00008067          	ret
   165c8:	fffff7b7          	lui	a5,0xfffff
   165cc:	00813083          	ld	ra,8(sp)
   165d0:	fff7879b          	addiw	a5,a5,-1
   165d4:	00f777b3          	and	a5,a4,a5
   165d8:	00f41823          	sh	a5,16(s0)
   165dc:	00013403          	ld	s0,0(sp)
   165e0:	01010113          	addi	sp,sp,16
   165e4:	00008067          	ret

00000000000165e8 <__sclose>:
   165e8:	01259503          	lh	a0,18(a1)
   165ec:	05d0206f          	j	18e48 <close>

00000000000165f0 <strcmp>:
   165f0:	00b56733          	or	a4,a0,a1
   165f4:	fff00393          	li	t2,-1
   165f8:	00777713          	andi	a4,a4,7
   165fc:	0c071c63          	bnez	a4,166d4 <strcmp+0xe4>
   16600:	00005e17          	auipc	t3,0x5
   16604:	258e3e03          	ld	t3,600(t3) # 1b858 <mask>
   16608:	00053603          	ld	a2,0(a0)
   1660c:	0005b683          	ld	a3,0(a1)
   16610:	01c672b3          	and	t0,a2,t3
   16614:	01c66333          	or	t1,a2,t3
   16618:	01c282b3          	add	t0,t0,t3
   1661c:	0062e2b3          	or	t0,t0,t1
   16620:	0c729e63          	bne	t0,t2,166fc <strcmp+0x10c>
   16624:	04d61663          	bne	a2,a3,16670 <strcmp+0x80>
   16628:	00853603          	ld	a2,8(a0)
   1662c:	0085b683          	ld	a3,8(a1)
   16630:	01c672b3          	and	t0,a2,t3
   16634:	01c66333          	or	t1,a2,t3
   16638:	01c282b3          	add	t0,t0,t3
   1663c:	0062e2b3          	or	t0,t0,t1
   16640:	0a729a63          	bne	t0,t2,166f4 <strcmp+0x104>
   16644:	02d61663          	bne	a2,a3,16670 <strcmp+0x80>
   16648:	01053603          	ld	a2,16(a0)
   1664c:	0105b683          	ld	a3,16(a1)
   16650:	01c672b3          	and	t0,a2,t3
   16654:	01c66333          	or	t1,a2,t3
   16658:	01c282b3          	add	t0,t0,t3
   1665c:	0062e2b3          	or	t0,t0,t1
   16660:	0a729463          	bne	t0,t2,16708 <strcmp+0x118>
   16664:	01850513          	addi	a0,a0,24
   16668:	01858593          	addi	a1,a1,24
   1666c:	f8d60ee3          	beq	a2,a3,16608 <strcmp+0x18>
   16670:	03061713          	slli	a4,a2,0x30
   16674:	03069793          	slli	a5,a3,0x30
   16678:	02f71a63          	bne	a4,a5,166ac <strcmp+0xbc>
   1667c:	02061713          	slli	a4,a2,0x20
   16680:	02069793          	slli	a5,a3,0x20
   16684:	02f71463          	bne	a4,a5,166ac <strcmp+0xbc>
   16688:	01061713          	slli	a4,a2,0x10
   1668c:	01069793          	slli	a5,a3,0x10
   16690:	00f71e63          	bne	a4,a5,166ac <strcmp+0xbc>
   16694:	03065713          	srli	a4,a2,0x30
   16698:	0306d793          	srli	a5,a3,0x30
   1669c:	40f70533          	sub	a0,a4,a5
   166a0:	0ff57593          	andi	a1,a0,255
   166a4:	02059063          	bnez	a1,166c4 <strcmp+0xd4>
   166a8:	00008067          	ret
   166ac:	03075713          	srli	a4,a4,0x30
   166b0:	0307d793          	srli	a5,a5,0x30
   166b4:	40f70533          	sub	a0,a4,a5
   166b8:	0ff57593          	andi	a1,a0,255
   166bc:	00059463          	bnez	a1,166c4 <strcmp+0xd4>
   166c0:	00008067          	ret
   166c4:	0ff77713          	andi	a4,a4,255
   166c8:	0ff7f793          	andi	a5,a5,255
   166cc:	40f70533          	sub	a0,a4,a5
   166d0:	00008067          	ret
   166d4:	00054603          	lbu	a2,0(a0)
   166d8:	0005c683          	lbu	a3,0(a1)
   166dc:	00150513          	addi	a0,a0,1
   166e0:	00158593          	addi	a1,a1,1
   166e4:	00d61463          	bne	a2,a3,166ec <strcmp+0xfc>
   166e8:	fe0616e3          	bnez	a2,166d4 <strcmp+0xe4>
   166ec:	40d60533          	sub	a0,a2,a3
   166f0:	00008067          	ret
   166f4:	00850513          	addi	a0,a0,8
   166f8:	00858593          	addi	a1,a1,8
   166fc:	fcd61ce3          	bne	a2,a3,166d4 <strcmp+0xe4>
   16700:	00000513          	li	a0,0
   16704:	00008067          	ret
   16708:	01050513          	addi	a0,a0,16
   1670c:	01058593          	addi	a1,a1,16
   16710:	fcd612e3          	bne	a2,a3,166d4 <strcmp+0xe4>
   16714:	00000513          	li	a0,0
   16718:	00008067          	ret

000000000001671c <strlen>:
   1671c:	00757793          	andi	a5,a0,7
   16720:	00050593          	mv	a1,a0
   16724:	06079a63          	bnez	a5,16798 <strlen+0x7c>
   16728:	0001c7b7          	lui	a5,0x1c
   1672c:	8587b683          	ld	a3,-1960(a5) # 1b858 <mask>
   16730:	fff00613          	li	a2,-1
   16734:	00850513          	addi	a0,a0,8
   16738:	ff853783          	ld	a5,-8(a0)
   1673c:	00d7f733          	and	a4,a5,a3
   16740:	00d70733          	add	a4,a4,a3
   16744:	00d7e7b3          	or	a5,a5,a3
   16748:	00f767b3          	or	a5,a4,a5
   1674c:	fec784e3          	beq	a5,a2,16734 <strlen+0x18>
   16750:	ff854783          	lbu	a5,-8(a0)
   16754:	40b505b3          	sub	a1,a0,a1
   16758:	06078263          	beqz	a5,167bc <strlen+0xa0>
   1675c:	ff954783          	lbu	a5,-7(a0)
   16760:	04078a63          	beqz	a5,167b4 <strlen+0x98>
   16764:	ffa54783          	lbu	a5,-6(a0)
   16768:	06078263          	beqz	a5,167cc <strlen+0xb0>
   1676c:	ffb54783          	lbu	a5,-5(a0)
   16770:	04078a63          	beqz	a5,167c4 <strlen+0xa8>
   16774:	ffc54783          	lbu	a5,-4(a0)
   16778:	ffd54703          	lbu	a4,-3(a0)
   1677c:	ffe54683          	lbu	a3,-2(a0)
   16780:	04078a63          	beqz	a5,167d4 <strlen+0xb8>
   16784:	04070c63          	beqz	a4,167dc <strlen+0xc0>
   16788:	fff58513          	addi	a0,a1,-1
   1678c:	04068c63          	beqz	a3,167e4 <strlen+0xc8>
   16790:	00008067          	ret
   16794:	f8070ae3          	beqz	a4,16728 <strlen+0xc>
   16798:	00054783          	lbu	a5,0(a0)
   1679c:	00150513          	addi	a0,a0,1
   167a0:	00757713          	andi	a4,a0,7
   167a4:	fe0798e3          	bnez	a5,16794 <strlen+0x78>
   167a8:	40b50533          	sub	a0,a0,a1
   167ac:	fff50513          	addi	a0,a0,-1
   167b0:	00008067          	ret
   167b4:	ff958513          	addi	a0,a1,-7
   167b8:	00008067          	ret
   167bc:	ff858513          	addi	a0,a1,-8
   167c0:	00008067          	ret
   167c4:	ffb58513          	addi	a0,a1,-5
   167c8:	00008067          	ret
   167cc:	ffa58513          	addi	a0,a1,-6
   167d0:	00008067          	ret
   167d4:	ffc58513          	addi	a0,a1,-4
   167d8:	00008067          	ret
   167dc:	ffd58513          	addi	a0,a1,-3
   167e0:	00008067          	ret
   167e4:	ffe58513          	addi	a0,a1,-2
   167e8:	00008067          	ret

00000000000167ec <__sprint_r.part.0>:
   167ec:	0ac5a783          	lw	a5,172(a1)
   167f0:	fb010113          	addi	sp,sp,-80
   167f4:	01613823          	sd	s6,16(sp)
   167f8:	04113423          	sd	ra,72(sp)
   167fc:	04813023          	sd	s0,64(sp)
   16800:	02913c23          	sd	s1,56(sp)
   16804:	03213823          	sd	s2,48(sp)
   16808:	03313423          	sd	s3,40(sp)
   1680c:	03413023          	sd	s4,32(sp)
   16810:	01513c23          	sd	s5,24(sp)
   16814:	01713423          	sd	s7,8(sp)
   16818:	03279713          	slli	a4,a5,0x32
   1681c:	00060b13          	mv	s6,a2
   16820:	0a075863          	bgez	a4,168d0 <__sprint_r.part.0+0xe4>
   16824:	01063783          	ld	a5,16(a2) # 7fe00010 <_gp+0x7fde4050>
   16828:	00058a13          	mv	s4,a1
   1682c:	00050a93          	mv	s5,a0
   16830:	00063b83          	ld	s7,0(a2)
   16834:	fff00993          	li	s3,-1
   16838:	08078863          	beqz	a5,168c8 <__sprint_r.part.0+0xdc>
   1683c:	008bb903          	ld	s2,8(s7)
   16840:	000bb483          	ld	s1,0(s7)
   16844:	00000413          	li	s0,0
   16848:	00295913          	srli	s2,s2,0x2
   1684c:	0009091b          	sext.w	s2,s2
   16850:	01204863          	bgtz	s2,16860 <__sprint_r.part.0+0x74>
   16854:	0600006f          	j	168b4 <__sprint_r.part.0+0xc8>
   16858:	00448493          	addi	s1,s1,4
   1685c:	04890a63          	beq	s2,s0,168b0 <__sprint_r.part.0+0xc4>
   16860:	0004a583          	lw	a1,0(s1)
   16864:	000a0613          	mv	a2,s4
   16868:	000a8513          	mv	a0,s5
   1686c:	524010ef          	jal	17d90 <_fputwc_r>
   16870:	0014041b          	addiw	s0,s0,1
   16874:	ff3512e3          	bne	a0,s3,16858 <__sprint_r.part.0+0x6c>
   16878:	00098513          	mv	a0,s3
   1687c:	04813083          	ld	ra,72(sp)
   16880:	000b3823          	sd	zero,16(s6)
   16884:	000b2423          	sw	zero,8(s6)
   16888:	04013403          	ld	s0,64(sp)
   1688c:	03813483          	ld	s1,56(sp)
   16890:	03013903          	ld	s2,48(sp)
   16894:	02813983          	ld	s3,40(sp)
   16898:	02013a03          	ld	s4,32(sp)
   1689c:	01813a83          	ld	s5,24(sp)
   168a0:	01013b03          	ld	s6,16(sp)
   168a4:	00813b83          	ld	s7,8(sp)
   168a8:	05010113          	addi	sp,sp,80
   168ac:	00008067          	ret
   168b0:	010b3783          	ld	a5,16(s6)
   168b4:	00291913          	slli	s2,s2,0x2
   168b8:	412787b3          	sub	a5,a5,s2
   168bc:	00fb3823          	sd	a5,16(s6)
   168c0:	010b8b93          	addi	s7,s7,16
   168c4:	f6079ce3          	bnez	a5,1683c <__sprint_r.part.0+0x50>
   168c8:	00000513          	li	a0,0
   168cc:	fb1ff06f          	j	1687c <__sprint_r.part.0+0x90>
   168d0:	564010ef          	jal	17e34 <__sfvwrite_r>
   168d4:	fa9ff06f          	j	1687c <__sprint_r.part.0+0x90>

00000000000168d8 <__sprint_r>:
   168d8:	01063703          	ld	a4,16(a2)
   168dc:	00070463          	beqz	a4,168e4 <__sprint_r+0xc>
   168e0:	f0dff06f          	j	167ec <__sprint_r.part.0>
   168e4:	00062423          	sw	zero,8(a2)
   168e8:	00000513          	li	a0,0
   168ec:	00008067          	ret

00000000000168f0 <_vfiprintf_r>:
   168f0:	e6010113          	addi	sp,sp,-416
   168f4:	17513423          	sd	s5,360(sp)
   168f8:	17613023          	sd	s6,352(sp)
   168fc:	15a13023          	sd	s10,320(sp)
   16900:	18113c23          	sd	ra,408(sp)
   16904:	18813823          	sd	s0,400(sp)
   16908:	18913423          	sd	s1,392(sp)
   1690c:	19213023          	sd	s2,384(sp)
   16910:	17313c23          	sd	s3,376(sp)
   16914:	17413823          	sd	s4,368(sp)
   16918:	15713c23          	sd	s7,344(sp)
   1691c:	15813823          	sd	s8,336(sp)
   16920:	15913423          	sd	s9,328(sp)
   16924:	13b13c23          	sd	s11,312(sp)
   16928:	00d13423          	sd	a3,8(sp)
   1692c:	00050a93          	mv	s5,a0
   16930:	00058d13          	mv	s10,a1
   16934:	00060b13          	mv	s6,a2
   16938:	00050663          	beqz	a0,16944 <_vfiprintf_r+0x54>
   1693c:	05052783          	lw	a5,80(a0)
   16940:	1e078c63          	beqz	a5,16b38 <_vfiprintf_r+0x248>
   16944:	010d1683          	lh	a3,16(s10)
   16948:	03069793          	slli	a5,a3,0x30
   1694c:	0307d793          	srli	a5,a5,0x30
   16950:	03279713          	slli	a4,a5,0x32
   16954:	02074a63          	bltz	a4,16988 <_vfiprintf_r+0x98>
   16958:	000027b7          	lui	a5,0x2
   1695c:	0acd2603          	lw	a2,172(s10)
   16960:	00f6e7b3          	or	a5,a3,a5
   16964:	0107979b          	slliw	a5,a5,0x10
   16968:	ffffe737          	lui	a4,0xffffe
   1696c:	4107d79b          	sraiw	a5,a5,0x10
   16970:	fff7071b          	addiw	a4,a4,-1
   16974:	00e67733          	and	a4,a2,a4
   16978:	00fd1823          	sh	a5,16(s10)
   1697c:	03079793          	slli	a5,a5,0x30
   16980:	0aed2623          	sw	a4,172(s10)
   16984:	0307d793          	srli	a5,a5,0x30
   16988:	0087f713          	andi	a4,a5,8
   1698c:	12070a63          	beqz	a4,16ac0 <_vfiprintf_r+0x1d0>
   16990:	018d3703          	ld	a4,24(s10)
   16994:	12070663          	beqz	a4,16ac0 <_vfiprintf_r+0x1d0>
   16998:	01a7f793          	andi	a5,a5,26
   1699c:	00a00713          	li	a4,10
   169a0:	14e78063          	beq	a5,a4,16ae0 <_vfiprintf_r+0x1f0>
   169a4:	0b010c93          	addi	s9,sp,176
   169a8:	00019c37          	lui	s8,0x19
   169ac:	0af10793          	addi	a5,sp,175
   169b0:	500c0713          	addi	a4,s8,1280 # 19500 <__mprec_bigtens+0x28>
   169b4:	40fc87b3          	sub	a5,s9,a5
   169b8:	000198b7          	lui	a7,0x19
   169bc:	07913823          	sd	s9,112(sp)
   169c0:	08013023          	sd	zero,128(sp)
   169c4:	06012c23          	sw	zero,120(sp)
   169c8:	000c8413          	mv	s0,s9
   169cc:	00013c23          	sd	zero,24(sp)
   169d0:	04012c23          	sw	zero,88(sp)
   169d4:	00e13823          	sd	a4,16(sp)
   169d8:	66888c13          	addi	s8,a7,1640 # 19668 <blanks.4136>
   169dc:	04f12e23          	sw	a5,92(sp)
   169e0:	000b4783          	lbu	a5,0(s6)
   169e4:	4e078ee3          	beqz	a5,176e0 <_vfiprintf_r+0xdf0>
   169e8:	02500713          	li	a4,37
   169ec:	000b0493          	mv	s1,s6
   169f0:	00e79663          	bne	a5,a4,169fc <_vfiprintf_r+0x10c>
   169f4:	0580006f          	j	16a4c <_vfiprintf_r+0x15c>
   169f8:	00e78863          	beq	a5,a4,16a08 <_vfiprintf_r+0x118>
   169fc:	00148493          	addi	s1,s1,1
   16a00:	0004c783          	lbu	a5,0(s1)
   16a04:	fe079ae3          	bnez	a5,169f8 <_vfiprintf_r+0x108>
   16a08:	4164893b          	subw	s2,s1,s6
   16a0c:	04090063          	beqz	s2,16a4c <_vfiprintf_r+0x15c>
   16a10:	08013703          	ld	a4,128(sp)
   16a14:	07812783          	lw	a5,120(sp)
   16a18:	00090613          	mv	a2,s2
   16a1c:	00e60733          	add	a4,a2,a4
   16a20:	0017879b          	addiw	a5,a5,1
   16a24:	00c43423          	sd	a2,8(s0)
   16a28:	01643023          	sd	s6,0(s0)
   16a2c:	08e13023          	sd	a4,128(sp)
   16a30:	06f12c23          	sw	a5,120(sp)
   16a34:	00700613          	li	a2,7
   16a38:	01040413          	addi	s0,s0,16
   16a3c:	06f64463          	blt	a2,a5,16aa4 <_vfiprintf_r+0x1b4>
   16a40:	05812783          	lw	a5,88(sp)
   16a44:	012787bb          	addw	a5,a5,s2
   16a48:	04f12c23          	sw	a5,88(sp)
   16a4c:	0004c783          	lbu	a5,0(s1)
   16a50:	580786e3          	beqz	a5,177dc <_vfiprintf_r+0xeec>
   16a54:	00148813          	addi	a6,s1,1
   16a58:	060103a3          	sb	zero,103(sp)
   16a5c:	00000513          	li	a0,0
   16a60:	00000e93          	li	t4,0
   16a64:	fff00493          	li	s1,-1
   16a68:	00000913          	li	s2,0
   16a6c:	00000313          	li	t1,0
   16a70:	05800613          	li	a2,88
   16a74:	00900593          	li	a1,9
   16a78:	02a00f13          	li	t5,42
   16a7c:	00084703          	lbu	a4,0(a6)
   16a80:	00180b13          	addi	s6,a6,1
   16a84:	fe07079b          	addiw	a5,a4,-32
   16a88:	66f66263          	bltu	a2,a5,170ec <_vfiprintf_r+0x7fc>
   16a8c:	01013683          	ld	a3,16(sp)
   16a90:	02079793          	slli	a5,a5,0x20
   16a94:	01e7d793          	srli	a5,a5,0x1e
   16a98:	00d787b3          	add	a5,a5,a3
   16a9c:	0007a783          	lw	a5,0(a5) # 2000 <_ftext-0xe000>
   16aa0:	00078067          	jr	a5
   16aa4:	2e071ee3          	bnez	a4,175a0 <_vfiprintf_r+0xcb0>
   16aa8:	06012c23          	sw	zero,120(sp)
   16aac:	000c8413          	mv	s0,s9
   16ab0:	f91ff06f          	j	16a40 <_vfiprintf_r+0x150>
   16ab4:	01036313          	ori	t1,t1,16
   16ab8:	000b0813          	mv	a6,s6
   16abc:	fc1ff06f          	j	16a7c <_vfiprintf_r+0x18c>
   16ac0:	000d0593          	mv	a1,s10
   16ac4:	000a8513          	mv	a0,s5
   16ac8:	949fb0ef          	jal	12410 <__swsetup_r>
   16acc:	4e0512e3          	bnez	a0,177b0 <_vfiprintf_r+0xec0>
   16ad0:	010d5783          	lhu	a5,16(s10)
   16ad4:	00a00713          	li	a4,10
   16ad8:	01a7f793          	andi	a5,a5,26
   16adc:	ece794e3          	bne	a5,a4,169a4 <_vfiprintf_r+0xb4>
   16ae0:	012d1783          	lh	a5,18(s10)
   16ae4:	ec07c0e3          	bltz	a5,169a4 <_vfiprintf_r+0xb4>
   16ae8:	00813683          	ld	a3,8(sp)
   16aec:	000b0613          	mv	a2,s6
   16af0:	000d0593          	mv	a1,s10
   16af4:	000a8513          	mv	a0,s5
   16af8:	6a9000ef          	jal	179a0 <__sbprintf>
   16afc:	19813083          	ld	ra,408(sp)
   16b00:	19013403          	ld	s0,400(sp)
   16b04:	18813483          	ld	s1,392(sp)
   16b08:	18013903          	ld	s2,384(sp)
   16b0c:	17813983          	ld	s3,376(sp)
   16b10:	17013a03          	ld	s4,368(sp)
   16b14:	16813a83          	ld	s5,360(sp)
   16b18:	16013b03          	ld	s6,352(sp)
   16b1c:	15813b83          	ld	s7,344(sp)
   16b20:	15013c03          	ld	s8,336(sp)
   16b24:	14813c83          	ld	s9,328(sp)
   16b28:	14013d03          	ld	s10,320(sp)
   16b2c:	13813d83          	ld	s11,312(sp)
   16b30:	1a010113          	addi	sp,sp,416
   16b34:	00008067          	ret
   16b38:	de4fd0ef          	jal	1411c <__sinit>
   16b3c:	e09ff06f          	j	16944 <_vfiprintf_r+0x54>
   16b40:	00813783          	ld	a5,8(sp)
   16b44:	0007a903          	lw	s2,0(a5)
   16b48:	00878793          	addi	a5,a5,8
   16b4c:	00f13423          	sd	a5,8(sp)
   16b50:	f60954e3          	bgez	s2,16ab8 <_vfiprintf_r+0x1c8>
   16b54:	4120093b          	negw	s2,s2
   16b58:	00436313          	ori	t1,t1,4
   16b5c:	000b0813          	mv	a6,s6
   16b60:	f1dff06f          	j	16a7c <_vfiprintf_r+0x18c>
   16b64:	03000793          	li	a5,48
   16b68:	06f10423          	sb	a5,104(sp)
   16b6c:	07800793          	li	a5,120
   16b70:	06f104a3          	sb	a5,105(sp)
   16b74:	00813783          	ld	a5,8(sp)
   16b78:	060103a3          	sb	zero,103(sp)
   16b7c:	00236613          	ori	a2,t1,2
   16b80:	00878713          	addi	a4,a5,8
   16b84:	0007b783          	ld	a5,0(a5)
   16b88:	2e04cce3          	bltz	s1,17680 <_vfiprintf_r+0xd90>
   16b8c:	f7f37313          	andi	t1,t1,-129
   16b90:	00e13423          	sd	a4,8(sp)
   16b94:	00236313          	ori	t1,t1,2
   16b98:	32079ae3          	bnez	a5,176cc <_vfiprintf_r+0xddc>
   16b9c:	000197b7          	lui	a5,0x19
   16ba0:	6c878793          	addi	a5,a5,1736 # 196c8 <zeroes.4137+0x50>
   16ba4:	00f13c23          	sd	a5,24(sp)
   16ba8:	00000593          	li	a1,0
   16bac:	200498e3          	bnez	s1,175bc <_vfiprintf_r+0xccc>
   16bb0:	00000493          	li	s1,0
   16bb4:	00000a13          	li	s4,0
   16bb8:	000c8b93          	mv	s7,s9
   16bbc:	00048993          	mv	s3,s1
   16bc0:	0144d463          	ble	s4,s1,16bc8 <_vfiprintf_r+0x2d8>
   16bc4:	000a0993          	mv	s3,s4
   16bc8:	00b035b3          	snez	a1,a1
   16bcc:	00b989bb          	addw	s3,s3,a1
   16bd0:	00237393          	andi	t2,t1,2
   16bd4:	00038463          	beqz	t2,16bdc <_vfiprintf_r+0x2ec>
   16bd8:	0029899b          	addiw	s3,s3,2
   16bdc:	08437293          	andi	t0,t1,132
   16be0:	58029463          	bnez	t0,17168 <_vfiprintf_r+0x878>
   16be4:	41390dbb          	subw	s11,s2,s3
   16be8:	59b05063          	blez	s11,17168 <_vfiprintf_r+0x878>
   16bec:	01000793          	li	a5,16
   16bf0:	45b7dee3          	ble	s11,a5,1784c <_vfiprintf_r+0xf5c>
   16bf4:	01000e93          	li	t4,16
   16bf8:	08013783          	ld	a5,128(sp)
   16bfc:	07812503          	lw	a0,120(sp)
   16c00:	05813823          	sd	s8,80(sp)
   16c04:	00700f13          	li	t5,7
   16c08:	000e8f93          	mv	t6,t4
   16c0c:	0180006f          	j	16c24 <_vfiprintf_r+0x334>
   16c10:	0025061b          	addiw	a2,a0,2
   16c14:	01040413          	addi	s0,s0,16
   16c18:	00058513          	mv	a0,a1
   16c1c:	ff0d8d9b          	addiw	s11,s11,-16
   16c20:	03bfdc63          	ble	s11,t6,16c58 <_vfiprintf_r+0x368>
   16c24:	01078793          	addi	a5,a5,16
   16c28:	0015059b          	addiw	a1,a0,1
   16c2c:	01843023          	sd	s8,0(s0)
   16c30:	01d43423          	sd	t4,8(s0)
   16c34:	08f13023          	sd	a5,128(sp)
   16c38:	06b12c23          	sw	a1,120(sp)
   16c3c:	fcbf5ae3          	ble	a1,t5,16c10 <_vfiprintf_r+0x320>
   16c40:	4c079863          	bnez	a5,17110 <_vfiprintf_r+0x820>
   16c44:	ff0d8d9b          	addiw	s11,s11,-16
   16c48:	00000513          	li	a0,0
   16c4c:	00100613          	li	a2,1
   16c50:	000c8413          	mv	s0,s9
   16c54:	fdbfc8e3          	blt	t6,s11,16c24 <_vfiprintf_r+0x334>
   16c58:	05013703          	ld	a4,80(sp)
   16c5c:	00fd87b3          	add	a5,s11,a5
   16c60:	01b43423          	sd	s11,8(s0)
   16c64:	00e43023          	sd	a4,0(s0)
   16c68:	08f13023          	sd	a5,128(sp)
   16c6c:	06c12c23          	sw	a2,120(sp)
   16c70:	00700593          	li	a1,7
   16c74:	7ac5cc63          	blt	a1,a2,1742c <_vfiprintf_r+0xb3c>
   16c78:	06714503          	lbu	a0,103(sp)
   16c7c:	01040413          	addi	s0,s0,16
   16c80:	0016059b          	addiw	a1,a2,1
   16c84:	4e051c63          	bnez	a0,1717c <_vfiprintf_r+0x88c>
   16c88:	52038663          	beqz	t2,171b4 <_vfiprintf_r+0x8c4>
   16c8c:	06810613          	addi	a2,sp,104
   16c90:	00278793          	addi	a5,a5,2
   16c94:	00c43023          	sd	a2,0(s0)
   16c98:	00200613          	li	a2,2
   16c9c:	00c43423          	sd	a2,8(s0)
   16ca0:	08f13023          	sd	a5,128(sp)
   16ca4:	06b12c23          	sw	a1,120(sp)
   16ca8:	00700613          	li	a2,7
   16cac:	7cb65863          	ble	a1,a2,1747c <_vfiprintf_r+0xb8c>
   16cb0:	10079ae3          	bnez	a5,175c4 <_vfiprintf_r+0xcd4>
   16cb4:	08000513          	li	a0,128
   16cb8:	00100593          	li	a1,1
   16cbc:	00000613          	li	a2,0
   16cc0:	000c8413          	mv	s0,s9
   16cc4:	4ea29c63          	bne	t0,a0,171bc <_vfiprintf_r+0x8cc>
   16cc8:	41390ebb          	subw	t4,s2,s3
   16ccc:	4fd05863          	blez	t4,171bc <_vfiprintf_r+0x8cc>
   16cd0:	01000513          	li	a0,16
   16cd4:	3fd55ce3          	ble	t4,a0,178cc <_vfiprintf_r+0xfdc>
   16cd8:	01000f13          	li	t5,16
   16cdc:	00019737          	lui	a4,0x19
   16ce0:	67870d93          	addi	s11,a4,1656 # 19678 <zeroes.4137>
   16ce4:	00700f93          	li	t6,7
   16ce8:	000f0293          	mv	t0,t5
   16cec:	0180006f          	j	16d04 <_vfiprintf_r+0x414>
   16cf0:	0026051b          	addiw	a0,a2,2
   16cf4:	01040413          	addi	s0,s0,16
   16cf8:	00058613          	mv	a2,a1
   16cfc:	ff0e8e9b          	addiw	t4,t4,-16
   16d00:	03d2dc63          	ble	t4,t0,16d38 <_vfiprintf_r+0x448>
   16d04:	01078793          	addi	a5,a5,16
   16d08:	0016059b          	addiw	a1,a2,1
   16d0c:	01b43023          	sd	s11,0(s0)
   16d10:	01e43423          	sd	t5,8(s0)
   16d14:	08f13023          	sd	a5,128(sp)
   16d18:	06b12c23          	sw	a1,120(sp)
   16d1c:	fcbfdae3          	ble	a1,t6,16cf0 <_vfiprintf_r+0x400>
   16d20:	6a079e63          	bnez	a5,173dc <_vfiprintf_r+0xaec>
   16d24:	ff0e8e9b          	addiw	t4,t4,-16
   16d28:	00100513          	li	a0,1
   16d2c:	00000613          	li	a2,0
   16d30:	000c8413          	mv	s0,s9
   16d34:	fdd2c8e3          	blt	t0,t4,16d04 <_vfiprintf_r+0x414>
   16d38:	01d787b3          	add	a5,a5,t4
   16d3c:	01b43023          	sd	s11,0(s0)
   16d40:	01d43423          	sd	t4,8(s0)
   16d44:	08f13023          	sd	a5,128(sp)
   16d48:	06a12c23          	sw	a0,120(sp)
   16d4c:	00700613          	li	a2,7
   16d50:	0ea646e3          	blt	a2,a0,1763c <_vfiprintf_r+0xd4c>
   16d54:	414484bb          	subw	s1,s1,s4
   16d58:	01040413          	addi	s0,s0,16
   16d5c:	0015059b          	addiw	a1,a0,1
   16d60:	00050613          	mv	a2,a0
   16d64:	46904063          	bgtz	s1,171c4 <_vfiprintf_r+0x8d4>
   16d68:	00fa07b3          	add	a5,s4,a5
   16d6c:	01743023          	sd	s7,0(s0)
   16d70:	01443423          	sd	s4,8(s0)
   16d74:	08f13023          	sd	a5,128(sp)
   16d78:	06b12c23          	sw	a1,120(sp)
   16d7c:	00700713          	li	a4,7
   16d80:	4eb75a63          	ble	a1,a4,17274 <_vfiprintf_r+0x984>
   16d84:	7a079463          	bnez	a5,1752c <_vfiprintf_r+0xc3c>
   16d88:	06012c23          	sw	zero,120(sp)
   16d8c:	00437313          	andi	t1,t1,4
   16d90:	00030663          	beqz	t1,16d9c <_vfiprintf_r+0x4ac>
   16d94:	413904bb          	subw	s1,s2,s3
   16d98:	229040e3          	bgtz	s1,177b8 <_vfiprintf_r+0xec8>
   16d9c:	01395463          	ble	s3,s2,16da4 <_vfiprintf_r+0x4b4>
   16da0:	00098913          	mv	s2,s3
   16da4:	05812783          	lw	a5,88(sp)
   16da8:	012787bb          	addw	a5,a5,s2
   16dac:	04f12c23          	sw	a5,88(sp)
   16db0:	06012c23          	sw	zero,120(sp)
   16db4:	000c8413          	mv	s0,s9
   16db8:	c29ff06f          	j	169e0 <_vfiprintf_r+0xf0>
   16dbc:	00100513          	li	a0,1
   16dc0:	02b00e93          	li	t4,43
   16dc4:	000b0813          	mv	a6,s6
   16dc8:	cb5ff06f          	j	16a7c <_vfiprintf_r+0x18c>
   16dcc:	08036313          	ori	t1,t1,128
   16dd0:	000b0813          	mv	a6,s6
   16dd4:	ca9ff06f          	j	16a7c <_vfiprintf_r+0x18c>
   16dd8:	00000913          	li	s2,0
   16ddc:	fd07079b          	addiw	a5,a4,-48
   16de0:	001b0b13          	addi	s6,s6,1
   16de4:	fffb4703          	lbu	a4,-1(s6)
   16de8:	00191f9b          	slliw	t6,s2,0x1
   16dec:	0039191b          	slliw	s2,s2,0x3
   16df0:	012f893b          	addw	s2,t6,s2
   16df4:	0127893b          	addw	s2,a5,s2
   16df8:	fd07079b          	addiw	a5,a4,-48
   16dfc:	fef5f2e3          	bleu	a5,a1,16de0 <_vfiprintf_r+0x4f0>
   16e00:	c85ff06f          	j	16a84 <_vfiprintf_r+0x194>
   16e04:	360518e3          	bnez	a0,17974 <_vfiprintf_r+0x1084>
   16e08:	01036313          	ori	t1,t1,16
   16e0c:	01037793          	andi	a5,t1,16
   16e10:	74078263          	beqz	a5,17554 <_vfiprintf_r+0xc64>
   16e14:	00813703          	ld	a4,8(sp)
   16e18:	00073783          	ld	a5,0(a4)
   16e1c:	00870713          	addi	a4,a4,8
   16e20:	00e13423          	sd	a4,8(sp)
   16e24:	0e07c6e3          	bltz	a5,17710 <_vfiprintf_r+0xe20>
   16e28:	06714583          	lbu	a1,103(sp)
   16e2c:	6e04c063          	bltz	s1,1750c <_vfiprintf_r+0xc1c>
   16e30:	f7f37313          	andi	t1,t1,-129
   16e34:	10078c63          	beqz	a5,16f4c <_vfiprintf_r+0x65c>
   16e38:	00900613          	li	a2,9
   16e3c:	000c8b93          	mv	s7,s9
   16e40:	00a00513          	li	a0,10
   16e44:	10f67863          	bleu	a5,a2,16f54 <_vfiprintf_r+0x664>
   16e48:	02a7f633          	remu	a2,a5,a0
   16e4c:	fffb8b93          	addi	s7,s7,-1
   16e50:	02a7d7b3          	divu	a5,a5,a0
   16e54:	0306061b          	addiw	a2,a2,48
   16e58:	00cb8023          	sb	a2,0(s7)
   16e5c:	fe0796e3          	bnez	a5,16e48 <_vfiprintf_r+0x558>
   16e60:	417c8a3b          	subw	s4,s9,s7
   16e64:	d59ff06f          	j	16bbc <_vfiprintf_r+0x2cc>
   16e68:	300512e3          	bnez	a0,1796c <_vfiprintf_r+0x107c>
   16e6c:	01036313          	ori	t1,t1,16
   16e70:	01037793          	andi	a5,t1,16
   16e74:	6e078e63          	beqz	a5,17570 <_vfiprintf_r+0xc80>
   16e78:	00813783          	ld	a5,8(sp)
   16e7c:	060103a3          	sb	zero,103(sp)
   16e80:	00878713          	addi	a4,a5,8
   16e84:	0007b783          	ld	a5,0(a5)
   16e88:	7004c263          	bltz	s1,1758c <_vfiprintf_r+0xc9c>
   16e8c:	00e13423          	sd	a4,8(sp)
   16e90:	f7f37313          	andi	t1,t1,-129
   16e94:	70079263          	bnez	a5,17598 <_vfiprintf_r+0xca8>
   16e98:	00000593          	li	a1,0
   16e9c:	00000793          	li	a5,0
   16ea0:	2a0482e3          	beqz	s1,17944 <_vfiprintf_r+0x1054>
   16ea4:	000c8b93          	mv	s7,s9
   16ea8:	0077f613          	andi	a2,a5,7
   16eac:	fffb8b93          	addi	s7,s7,-1
   16eb0:	0306061b          	addiw	a2,a2,48
   16eb4:	00cb8023          	sb	a2,0(s7)
   16eb8:	0037d793          	srli	a5,a5,0x3
   16ebc:	fe0796e3          	bnez	a5,16ea8 <_vfiprintf_r+0x5b8>
   16ec0:	00137793          	andi	a5,t1,1
   16ec4:	f8078ee3          	beqz	a5,16e60 <_vfiprintf_r+0x570>
   16ec8:	03000793          	li	a5,48
   16ecc:	f8f60ae3          	beq	a2,a5,16e60 <_vfiprintf_r+0x570>
   16ed0:	fffb8613          	addi	a2,s7,-1
   16ed4:	40cc8a33          	sub	s4,s9,a2
   16ed8:	fefb8fa3          	sb	a5,-1(s7)
   16edc:	000a0a1b          	sext.w	s4,s4
   16ee0:	00060b93          	mv	s7,a2
   16ee4:	cd9ff06f          	j	16bbc <_vfiprintf_r+0x2cc>
   16ee8:	28051ee3          	bnez	a0,17984 <_vfiprintf_r+0x1094>
   16eec:	01037793          	andi	a5,t1,16
   16ef0:	040786e3          	beqz	a5,1773c <_vfiprintf_r+0xe4c>
   16ef4:	00813683          	ld	a3,8(sp)
   16ef8:	05812703          	lw	a4,88(sp)
   16efc:	0006b783          	ld	a5,0(a3) # 7ff00000 <_gp+0x7fee4040>
   16f00:	00868693          	addi	a3,a3,8
   16f04:	00d13423          	sd	a3,8(sp)
   16f08:	00e7b023          	sd	a4,0(a5)
   16f0c:	ad5ff06f          	j	169e0 <_vfiprintf_r+0xf0>
   16f10:	260516e3          	bnez	a0,1797c <_vfiprintf_r+0x108c>
   16f14:	01036313          	ori	t1,t1,16
   16f18:	01037793          	andi	a5,t1,16
   16f1c:	5c079a63          	bnez	a5,174f0 <_vfiprintf_r+0xc00>
   16f20:	04037793          	andi	a5,t1,64
   16f24:	060103a3          	sb	zero,103(sp)
   16f28:	7c078063          	beqz	a5,176e8 <_vfiprintf_r+0xdf8>
   16f2c:	00813783          	ld	a5,8(sp)
   16f30:	00878713          	addi	a4,a5,8
   16f34:	0007d783          	lhu	a5,0(a5)
   16f38:	5c04c663          	bltz	s1,17504 <_vfiprintf_r+0xc14>
   16f3c:	00e13423          	sd	a4,8(sp)
   16f40:	f7f37313          	andi	t1,t1,-129
   16f44:	00000593          	li	a1,0
   16f48:	ee0798e3          	bnez	a5,16e38 <_vfiprintf_r+0x548>
   16f4c:	c60482e3          	beqz	s1,16bb0 <_vfiprintf_r+0x2c0>
   16f50:	00000793          	li	a5,0
   16f54:	0307879b          	addiw	a5,a5,48
   16f58:	0af107a3          	sb	a5,175(sp)
   16f5c:	05c12a03          	lw	s4,92(sp)
   16f60:	0af10b93          	addi	s7,sp,175
   16f64:	c59ff06f          	j	16bbc <_vfiprintf_r+0x2cc>
   16f68:	b40e98e3          	bnez	t4,16ab8 <_vfiprintf_r+0x1c8>
   16f6c:	00100513          	li	a0,1
   16f70:	02000e93          	li	t4,32
   16f74:	000b0813          	mv	a6,s6
   16f78:	b05ff06f          	j	16a7c <_vfiprintf_r+0x18c>
   16f7c:	00136313          	ori	t1,t1,1
   16f80:	000b0813          	mv	a6,s6
   16f84:	af9ff06f          	j	16a7c <_vfiprintf_r+0x18c>
   16f88:	00813783          	ld	a5,8(sp)
   16f8c:	060103a3          	sb	zero,103(sp)
   16f90:	0007bb83          	ld	s7,0(a5)
   16f94:	00878d93          	addi	s11,a5,8
   16f98:	0e0b84e3          	beqz	s7,17880 <_vfiprintf_r+0xf90>
   16f9c:	0404cee3          	bltz	s1,177f8 <_vfiprintf_r+0xf08>
   16fa0:	00048613          	mv	a2,s1
   16fa4:	00000593          	li	a1,0
   16fa8:	000b8513          	mv	a0,s7
   16fac:	00613423          	sd	t1,8(sp)
   16fb0:	928fe0ef          	jal	150d8 <memchr>
   16fb4:	00813303          	ld	t1,8(sp)
   16fb8:	120502e3          	beqz	a0,178dc <_vfiprintf_r+0xfec>
   16fbc:	41750a3b          	subw	s4,a0,s7
   16fc0:	06714583          	lbu	a1,103(sp)
   16fc4:	01b13423          	sd	s11,8(sp)
   16fc8:	00000493          	li	s1,0
   16fcc:	bf1ff06f          	j	16bbc <_vfiprintf_r+0x2cc>
   16fd0:	f40504e3          	beqz	a0,16f18 <_vfiprintf_r+0x628>
   16fd4:	07d103a3          	sb	t4,103(sp)
   16fd8:	f41ff06f          	j	16f18 <_vfiprintf_r+0x628>
   16fdc:	00813703          	ld	a4,8(sp)
   16fe0:	00100993          	li	s3,1
   16fe4:	060103a3          	sb	zero,103(sp)
   16fe8:	00072783          	lw	a5,0(a4)
   16fec:	00098a13          	mv	s4,s3
   16ff0:	08810b93          	addi	s7,sp,136
   16ff4:	08f10423          	sb	a5,136(sp)
   16ff8:	00870793          	addi	a5,a4,8
   16ffc:	00f13423          	sd	a5,8(sp)
   17000:	00000493          	li	s1,0
   17004:	bcdff06f          	j	16bd0 <_vfiprintf_r+0x2e0>
   17008:	e00502e3          	beqz	a0,16e0c <_vfiprintf_r+0x51c>
   1700c:	07d103a3          	sb	t4,103(sp)
   17010:	dfdff06f          	j	16e0c <_vfiprintf_r+0x51c>
   17014:	120510e3          	bnez	a0,17934 <_vfiprintf_r+0x1044>
   17018:	000197b7          	lui	a5,0x19
   1701c:	6b078793          	addi	a5,a5,1712 # 196b0 <zeroes.4137+0x38>
   17020:	00f13c23          	sd	a5,24(sp)
   17024:	01037793          	andi	a5,t1,16
   17028:	06078063          	beqz	a5,17088 <_vfiprintf_r+0x798>
   1702c:	00813683          	ld	a3,8(sp)
   17030:	0006b783          	ld	a5,0(a3)
   17034:	00868693          	addi	a3,a3,8
   17038:	00d13423          	sd	a3,8(sp)
   1703c:	00137613          	andi	a2,t1,1
   17040:	46060863          	beqz	a2,174b0 <_vfiprintf_r+0xbc0>
   17044:	66079063          	bnez	a5,176a4 <_vfiprintf_r+0xdb4>
   17048:	060103a3          	sb	zero,103(sp)
   1704c:	6404c663          	bltz	s1,17698 <_vfiprintf_r+0xda8>
   17050:	f7f37313          	andi	t1,t1,-129
   17054:	b55ff06f          	j	16ba8 <_vfiprintf_r+0x2b8>
   17058:	e0050ce3          	beqz	a0,16e70 <_vfiprintf_r+0x580>
   1705c:	07d103a3          	sb	t4,103(sp)
   17060:	e11ff06f          	j	16e70 <_vfiprintf_r+0x580>
   17064:	04036313          	ori	t1,t1,64
   17068:	000b0813          	mv	a6,s6
   1706c:	a11ff06f          	j	16a7c <_vfiprintf_r+0x18c>
   17070:	0a051ee3          	bnez	a0,1792c <_vfiprintf_r+0x103c>
   17074:	000197b7          	lui	a5,0x19
   17078:	6c878793          	addi	a5,a5,1736 # 196c8 <zeroes.4137+0x50>
   1707c:	00f13c23          	sd	a5,24(sp)
   17080:	01037793          	andi	a5,t1,16
   17084:	fa0794e3          	bnez	a5,1702c <_vfiprintf_r+0x73c>
   17088:	04037793          	andi	a5,t1,64
   1708c:	00813683          	ld	a3,8(sp)
   17090:	68078e63          	beqz	a5,1772c <_vfiprintf_r+0xe3c>
   17094:	0006d783          	lhu	a5,0(a3)
   17098:	00868693          	addi	a3,a3,8
   1709c:	00d13423          	sd	a3,8(sp)
   170a0:	f9dff06f          	j	1703c <_vfiprintf_r+0x74c>
   170a4:	000b4703          	lbu	a4,0(s6)
   170a8:	001b0813          	addi	a6,s6,1
   170ac:	05e70ee3          	beq	a4,t5,17908 <_vfiprintf_r+0x1018>
   170b0:	fd07079b          	addiw	a5,a4,-48
   170b4:	00000493          	li	s1,0
   170b8:	00080b13          	mv	s6,a6
   170bc:	9cf5e4e3          	bltu	a1,a5,16a84 <_vfiprintf_r+0x194>
   170c0:	001b0b13          	addi	s6,s6,1
   170c4:	fffb4703          	lbu	a4,-1(s6)
   170c8:	00149f9b          	slliw	t6,s1,0x1
   170cc:	0034949b          	slliw	s1,s1,0x3
   170d0:	009f84bb          	addw	s1,t6,s1
   170d4:	00f484bb          	addw	s1,s1,a5
   170d8:	fd07079b          	addiw	a5,a4,-48
   170dc:	fef5f2e3          	bleu	a5,a1,170c0 <_vfiprintf_r+0x7d0>
   170e0:	9a04d2e3          	bgez	s1,16a84 <_vfiprintf_r+0x194>
   170e4:	fff00493          	li	s1,-1
   170e8:	99dff06f          	j	16a84 <_vfiprintf_r+0x194>
   170ec:	040518e3          	bnez	a0,1793c <_vfiprintf_r+0x104c>
   170f0:	6e070663          	beqz	a4,177dc <_vfiprintf_r+0xeec>
   170f4:	00100993          	li	s3,1
   170f8:	08e10423          	sb	a4,136(sp)
   170fc:	060103a3          	sb	zero,103(sp)
   17100:	00098a13          	mv	s4,s3
   17104:	08810b93          	addi	s7,sp,136
   17108:	00000493          	li	s1,0
   1710c:	ac5ff06f          	j	16bd0 <_vfiprintf_r+0x2e0>
   17110:	07010613          	addi	a2,sp,112
   17114:	000d0593          	mv	a1,s10
   17118:	000a8513          	mv	a0,s5
   1711c:	05f13423          	sd	t6,72(sp)
   17120:	05e13023          	sd	t5,64(sp)
   17124:	03d13c23          	sd	t4,56(sp)
   17128:	02513823          	sd	t0,48(sp)
   1712c:	02713423          	sd	t2,40(sp)
   17130:	02613023          	sd	t1,32(sp)
   17134:	eb8ff0ef          	jal	167ec <__sprint_r.part.0>
   17138:	22051063          	bnez	a0,17358 <_vfiprintf_r+0xa68>
   1713c:	07812503          	lw	a0,120(sp)
   17140:	08013783          	ld	a5,128(sp)
   17144:	000c8413          	mv	s0,s9
   17148:	0015061b          	addiw	a2,a0,1
   1714c:	04813f83          	ld	t6,72(sp)
   17150:	04013f03          	ld	t5,64(sp)
   17154:	03813e83          	ld	t4,56(sp)
   17158:	03013283          	ld	t0,48(sp)
   1715c:	02813383          	ld	t2,40(sp)
   17160:	02013303          	ld	t1,32(sp)
   17164:	ab9ff06f          	j	16c1c <_vfiprintf_r+0x32c>
   17168:	07812603          	lw	a2,120(sp)
   1716c:	08013783          	ld	a5,128(sp)
   17170:	0016059b          	addiw	a1,a2,1
   17174:	06714503          	lbu	a0,103(sp)
   17178:	b00508e3          	beqz	a0,16c88 <_vfiprintf_r+0x398>
   1717c:	00100513          	li	a0,1
   17180:	06710613          	addi	a2,sp,103
   17184:	00a787b3          	add	a5,a5,a0
   17188:	00c43023          	sd	a2,0(s0)
   1718c:	00a43423          	sd	a0,8(s0)
   17190:	08f13023          	sd	a5,128(sp)
   17194:	06b12c23          	sw	a1,120(sp)
   17198:	00700613          	li	a2,7
   1719c:	2ab65a63          	ble	a1,a2,17450 <_vfiprintf_r+0xb60>
   171a0:	44079e63          	bnez	a5,175fc <_vfiprintf_r+0xd0c>
   171a4:	2c039063          	bnez	t2,17464 <_vfiprintf_r+0xb74>
   171a8:	00000613          	li	a2,0
   171ac:	00050593          	mv	a1,a0
   171b0:	000c8413          	mv	s0,s9
   171b4:	08000513          	li	a0,128
   171b8:	b0a288e3          	beq	t0,a0,16cc8 <_vfiprintf_r+0x3d8>
   171bc:	414484bb          	subw	s1,s1,s4
   171c0:	ba9054e3          	blez	s1,16d68 <_vfiprintf_r+0x478>
   171c4:	00019737          	lui	a4,0x19
   171c8:	01000513          	li	a0,16
   171cc:	67870d93          	addi	s11,a4,1656 # 19678 <zeroes.4137>
   171d0:	06955263          	ble	s1,a0,17234 <_vfiprintf_r+0x944>
   171d4:	01000e93          	li	t4,16
   171d8:	00019737          	lui	a4,0x19
   171dc:	67870d93          	addi	s11,a4,1656 # 19678 <zeroes.4137>
   171e0:	00700f13          	li	t5,7
   171e4:	000e8f93          	mv	t6,t4
   171e8:	0180006f          	j	17200 <_vfiprintf_r+0x910>
   171ec:	0026059b          	addiw	a1,a2,2
   171f0:	01040413          	addi	s0,s0,16
   171f4:	00050613          	mv	a2,a0
   171f8:	ff04849b          	addiw	s1,s1,-16
   171fc:	029fdc63          	ble	s1,t6,17234 <_vfiprintf_r+0x944>
   17200:	01078793          	addi	a5,a5,16
   17204:	0016051b          	addiw	a0,a2,1
   17208:	01b43023          	sd	s11,0(s0)
   1720c:	01d43423          	sd	t4,8(s0)
   17210:	08f13023          	sd	a5,128(sp)
   17214:	06a12c23          	sw	a0,120(sp)
   17218:	fcaf5ae3          	ble	a0,t5,171ec <_vfiprintf_r+0x8fc>
   1721c:	14079863          	bnez	a5,1736c <_vfiprintf_r+0xa7c>
   17220:	ff04849b          	addiw	s1,s1,-16
   17224:	00100593          	li	a1,1
   17228:	00000613          	li	a2,0
   1722c:	000c8413          	mv	s0,s9
   17230:	fc9fc8e3          	blt	t6,s1,17200 <_vfiprintf_r+0x910>
   17234:	009787b3          	add	a5,a5,s1
   17238:	01b43023          	sd	s11,0(s0)
   1723c:	00943423          	sd	s1,8(s0)
   17240:	08f13023          	sd	a5,128(sp)
   17244:	06b12c23          	sw	a1,120(sp)
   17248:	00700613          	li	a2,7
   1724c:	24b64063          	blt	a2,a1,1748c <_vfiprintf_r+0xb9c>
   17250:	01040413          	addi	s0,s0,16
   17254:	0015859b          	addiw	a1,a1,1
   17258:	00fa07b3          	add	a5,s4,a5
   1725c:	01743023          	sd	s7,0(s0)
   17260:	01443423          	sd	s4,8(s0)
   17264:	08f13023          	sd	a5,128(sp)
   17268:	06b12c23          	sw	a1,120(sp)
   1726c:	00700713          	li	a4,7
   17270:	b0b74ae3          	blt	a4,a1,16d84 <_vfiprintf_r+0x494>
   17274:	01040413          	addi	s0,s0,16
   17278:	00437313          	andi	t1,t1,4
   1727c:	0a030863          	beqz	t1,1732c <_vfiprintf_r+0xa3c>
   17280:	413904bb          	subw	s1,s2,s3
   17284:	0a905463          	blez	s1,1732c <_vfiprintf_r+0xa3c>
   17288:	01000713          	li	a4,16
   1728c:	62975863          	ble	s1,a4,178bc <_vfiprintf_r+0xfcc>
   17290:	01000a13          	li	s4,16
   17294:	07812603          	lw	a2,120(sp)
   17298:	05813823          	sd	s8,80(sp)
   1729c:	00700d93          	li	s11,7
   172a0:	000a0b93          	mv	s7,s4
   172a4:	0180006f          	j	172bc <_vfiprintf_r+0x9cc>
   172a8:	0026059b          	addiw	a1,a2,2
   172ac:	01040413          	addi	s0,s0,16
   172b0:	00070613          	mv	a2,a4
   172b4:	ff04849b          	addiw	s1,s1,-16
   172b8:	029bdc63          	ble	s1,s7,172f0 <_vfiprintf_r+0xa00>
   172bc:	01078793          	addi	a5,a5,16
   172c0:	0016071b          	addiw	a4,a2,1
   172c4:	01843023          	sd	s8,0(s0)
   172c8:	01443423          	sd	s4,8(s0)
   172cc:	08f13023          	sd	a5,128(sp)
   172d0:	06e12c23          	sw	a4,120(sp)
   172d4:	fceddae3          	ble	a4,s11,172a8 <_vfiprintf_r+0x9b8>
   172d8:	0c079e63          	bnez	a5,173b4 <_vfiprintf_r+0xac4>
   172dc:	ff04849b          	addiw	s1,s1,-16
   172e0:	00100593          	li	a1,1
   172e4:	00000613          	li	a2,0
   172e8:	000c8413          	mv	s0,s9
   172ec:	fc9bc8e3          	blt	s7,s1,172bc <_vfiprintf_r+0x9cc>
   172f0:	05013703          	ld	a4,80(sp)
   172f4:	009787b3          	add	a5,a5,s1
   172f8:	00943423          	sd	s1,8(s0)
   172fc:	00e43023          	sd	a4,0(s0)
   17300:	08f13023          	sd	a5,128(sp)
   17304:	06b12c23          	sw	a1,120(sp)
   17308:	00700713          	li	a4,7
   1730c:	02b75063          	ble	a1,a4,1732c <_vfiprintf_r+0xa3c>
   17310:	a80786e3          	beqz	a5,16d9c <_vfiprintf_r+0x4ac>
   17314:	07010613          	addi	a2,sp,112
   17318:	000d0593          	mv	a1,s10
   1731c:	000a8513          	mv	a0,s5
   17320:	cccff0ef          	jal	167ec <__sprint_r.part.0>
   17324:	02051a63          	bnez	a0,17358 <_vfiprintf_r+0xa68>
   17328:	08013783          	ld	a5,128(sp)
   1732c:	01395463          	ble	s3,s2,17334 <_vfiprintf_r+0xa44>
   17330:	00098913          	mv	s2,s3
   17334:	05812703          	lw	a4,88(sp)
   17338:	0127073b          	addw	a4,a4,s2
   1733c:	04e12c23          	sw	a4,88(sp)
   17340:	a60788e3          	beqz	a5,16db0 <_vfiprintf_r+0x4c0>
   17344:	07010613          	addi	a2,sp,112
   17348:	000d0593          	mv	a1,s10
   1734c:	000a8513          	mv	a0,s5
   17350:	c9cff0ef          	jal	167ec <__sprint_r.part.0>
   17354:	a4050ee3          	beqz	a0,16db0 <_vfiprintf_r+0x4c0>
   17358:	010d5783          	lhu	a5,16(s10)
   1735c:	0407f793          	andi	a5,a5,64
   17360:	44079863          	bnez	a5,177b0 <_vfiprintf_r+0xec0>
   17364:	05812503          	lw	a0,88(sp)
   17368:	f94ff06f          	j	16afc <_vfiprintf_r+0x20c>
   1736c:	07010613          	addi	a2,sp,112
   17370:	000d0593          	mv	a1,s10
   17374:	000a8513          	mv	a0,s5
   17378:	03f13c23          	sd	t6,56(sp)
   1737c:	03e13823          	sd	t5,48(sp)
   17380:	03d13423          	sd	t4,40(sp)
   17384:	02613023          	sd	t1,32(sp)
   17388:	c64ff0ef          	jal	167ec <__sprint_r.part.0>
   1738c:	fc0516e3          	bnez	a0,17358 <_vfiprintf_r+0xa68>
   17390:	07812603          	lw	a2,120(sp)
   17394:	08013783          	ld	a5,128(sp)
   17398:	000c8413          	mv	s0,s9
   1739c:	0016059b          	addiw	a1,a2,1
   173a0:	03813f83          	ld	t6,56(sp)
   173a4:	03013f03          	ld	t5,48(sp)
   173a8:	02813e83          	ld	t4,40(sp)
   173ac:	02013303          	ld	t1,32(sp)
   173b0:	e49ff06f          	j	171f8 <_vfiprintf_r+0x908>
   173b4:	07010613          	addi	a2,sp,112
   173b8:	000d0593          	mv	a1,s10
   173bc:	000a8513          	mv	a0,s5
   173c0:	c2cff0ef          	jal	167ec <__sprint_r.part.0>
   173c4:	f8051ae3          	bnez	a0,17358 <_vfiprintf_r+0xa68>
   173c8:	07812603          	lw	a2,120(sp)
   173cc:	08013783          	ld	a5,128(sp)
   173d0:	000c8413          	mv	s0,s9
   173d4:	0016059b          	addiw	a1,a2,1
   173d8:	eddff06f          	j	172b4 <_vfiprintf_r+0x9c4>
   173dc:	07010613          	addi	a2,sp,112
   173e0:	000d0593          	mv	a1,s10
   173e4:	000a8513          	mv	a0,s5
   173e8:	04513023          	sd	t0,64(sp)
   173ec:	03f13c23          	sd	t6,56(sp)
   173f0:	03e13823          	sd	t5,48(sp)
   173f4:	03d13423          	sd	t4,40(sp)
   173f8:	02613023          	sd	t1,32(sp)
   173fc:	bf0ff0ef          	jal	167ec <__sprint_r.part.0>
   17400:	f4051ce3          	bnez	a0,17358 <_vfiprintf_r+0xa68>
   17404:	07812603          	lw	a2,120(sp)
   17408:	08013783          	ld	a5,128(sp)
   1740c:	000c8413          	mv	s0,s9
   17410:	0016051b          	addiw	a0,a2,1
   17414:	04013283          	ld	t0,64(sp)
   17418:	03813f83          	ld	t6,56(sp)
   1741c:	03013f03          	ld	t5,48(sp)
   17420:	02813e83          	ld	t4,40(sp)
   17424:	02013303          	ld	t1,32(sp)
   17428:	8d5ff06f          	j	16cfc <_vfiprintf_r+0x40c>
   1742c:	34079263          	bnez	a5,17770 <_vfiprintf_r+0xe80>
   17430:	06714603          	lbu	a2,103(sp)
   17434:	02060663          	beqz	a2,17460 <_vfiprintf_r+0xb70>
   17438:	00100793          	li	a5,1
   1743c:	06710613          	addi	a2,sp,103
   17440:	0ac13823          	sd	a2,176(sp)
   17444:	0af13c23          	sd	a5,184(sp)
   17448:	00078593          	mv	a1,a5
   1744c:	000c8413          	mv	s0,s9
   17450:	00058613          	mv	a2,a1
   17454:	01040413          	addi	s0,s0,16
   17458:	0015859b          	addiw	a1,a1,1
   1745c:	82dff06f          	j	16c88 <_vfiprintf_r+0x398>
   17460:	36038063          	beqz	t2,177c0 <_vfiprintf_r+0xed0>
   17464:	00200793          	li	a5,2
   17468:	06810613          	addi	a2,sp,104
   1746c:	0ac13823          	sd	a2,176(sp)
   17470:	0af13c23          	sd	a5,184(sp)
   17474:	00100593          	li	a1,1
   17478:	000c8413          	mv	s0,s9
   1747c:	00058613          	mv	a2,a1
   17480:	01040413          	addi	s0,s0,16
   17484:	0015859b          	addiw	a1,a1,1
   17488:	d2dff06f          	j	171b4 <_vfiprintf_r+0x8c4>
   1748c:	1c079263          	bnez	a5,17650 <_vfiprintf_r+0xd60>
   17490:	00100713          	li	a4,1
   17494:	000a0793          	mv	a5,s4
   17498:	0b713823          	sd	s7,176(sp)
   1749c:	0b413c23          	sd	s4,184(sp)
   174a0:	09413023          	sd	s4,128(sp)
   174a4:	06e12c23          	sw	a4,120(sp)
   174a8:	000c8413          	mv	s0,s9
   174ac:	dc9ff06f          	j	17274 <_vfiprintf_r+0x984>
   174b0:	060103a3          	sb	zero,103(sp)
   174b4:	1e04c063          	bltz	s1,17694 <_vfiprintf_r+0xda4>
   174b8:	f7f37313          	andi	t1,t1,-129
   174bc:	ee078663          	beqz	a5,16ba8 <_vfiprintf_r+0x2b8>
   174c0:	00000593          	li	a1,0
   174c4:	000c8b93          	mv	s7,s9
   174c8:	01813703          	ld	a4,24(sp)
   174cc:	00f7f613          	andi	a2,a5,15
   174d0:	fffb8b93          	addi	s7,s7,-1
   174d4:	00c70633          	add	a2,a4,a2
   174d8:	00064603          	lbu	a2,0(a2)
   174dc:	0047d793          	srli	a5,a5,0x4
   174e0:	00cb8023          	sb	a2,0(s7)
   174e4:	fe0792e3          	bnez	a5,174c8 <_vfiprintf_r+0xbd8>
   174e8:	417c8a3b          	subw	s4,s9,s7
   174ec:	ed0ff06f          	j	16bbc <_vfiprintf_r+0x2cc>
   174f0:	00813783          	ld	a5,8(sp)
   174f4:	060103a3          	sb	zero,103(sp)
   174f8:	00878713          	addi	a4,a5,8
   174fc:	0007b783          	ld	a5,0(a5)
   17500:	a204dee3          	bgez	s1,16f3c <_vfiprintf_r+0x64c>
   17504:	00e13423          	sd	a4,8(sp)
   17508:	00000593          	li	a1,0
   1750c:	920796e3          	bnez	a5,16e38 <_vfiprintf_r+0x548>
   17510:	00100793          	li	a5,1
   17514:	00100713          	li	a4,1
   17518:	a2e78ce3          	beq	a5,a4,16f50 <_vfiprintf_r+0x660>
   1751c:	00200713          	li	a4,2
   17520:	08e78e63          	beq	a5,a4,175bc <_vfiprintf_r+0xccc>
   17524:	00000793          	li	a5,0
   17528:	97dff06f          	j	16ea4 <_vfiprintf_r+0x5b4>
   1752c:	07010613          	addi	a2,sp,112
   17530:	000d0593          	mv	a1,s10
   17534:	000a8513          	mv	a0,s5
   17538:	02613023          	sd	t1,32(sp)
   1753c:	ab0ff0ef          	jal	167ec <__sprint_r.part.0>
   17540:	e0051ce3          	bnez	a0,17358 <_vfiprintf_r+0xa68>
   17544:	08013783          	ld	a5,128(sp)
   17548:	000c8413          	mv	s0,s9
   1754c:	02013303          	ld	t1,32(sp)
   17550:	d29ff06f          	j	17278 <_vfiprintf_r+0x988>
   17554:	04037793          	andi	a5,t1,64
   17558:	00813703          	ld	a4,8(sp)
   1755c:	20078263          	beqz	a5,17760 <_vfiprintf_r+0xe70>
   17560:	00071783          	lh	a5,0(a4)
   17564:	00870713          	addi	a4,a4,8
   17568:	00e13423          	sd	a4,8(sp)
   1756c:	8b9ff06f          	j	16e24 <_vfiprintf_r+0x534>
   17570:	04037793          	andi	a5,t1,64
   17574:	060103a3          	sb	zero,103(sp)
   17578:	18078263          	beqz	a5,176fc <_vfiprintf_r+0xe0c>
   1757c:	00813783          	ld	a5,8(sp)
   17580:	00878713          	addi	a4,a5,8
   17584:	0007d783          	lhu	a5,0(a5)
   17588:	9004d2e3          	bgez	s1,16e8c <_vfiprintf_r+0x59c>
   1758c:	00e13423          	sd	a4,8(sp)
   17590:	00000593          	li	a1,0
   17594:	f80780e3          	beqz	a5,17514 <_vfiprintf_r+0xc24>
   17598:	00000593          	li	a1,0
   1759c:	909ff06f          	j	16ea4 <_vfiprintf_r+0x5b4>
   175a0:	07010613          	addi	a2,sp,112
   175a4:	000d0593          	mv	a1,s10
   175a8:	000a8513          	mv	a0,s5
   175ac:	a40ff0ef          	jal	167ec <__sprint_r.part.0>
   175b0:	da0514e3          	bnez	a0,17358 <_vfiprintf_r+0xa68>
   175b4:	000c8413          	mv	s0,s9
   175b8:	c88ff06f          	j	16a40 <_vfiprintf_r+0x150>
   175bc:	00000793          	li	a5,0
   175c0:	f05ff06f          	j	174c4 <_vfiprintf_r+0xbd4>
   175c4:	07010613          	addi	a2,sp,112
   175c8:	000d0593          	mv	a1,s10
   175cc:	000a8513          	mv	a0,s5
   175d0:	02513423          	sd	t0,40(sp)
   175d4:	02613023          	sd	t1,32(sp)
   175d8:	a14ff0ef          	jal	167ec <__sprint_r.part.0>
   175dc:	d6051ee3          	bnez	a0,17358 <_vfiprintf_r+0xa68>
   175e0:	07812603          	lw	a2,120(sp)
   175e4:	08013783          	ld	a5,128(sp)
   175e8:	000c8413          	mv	s0,s9
   175ec:	0016059b          	addiw	a1,a2,1
   175f0:	02813283          	ld	t0,40(sp)
   175f4:	02013303          	ld	t1,32(sp)
   175f8:	bbdff06f          	j	171b4 <_vfiprintf_r+0x8c4>
   175fc:	07010613          	addi	a2,sp,112
   17600:	000d0593          	mv	a1,s10
   17604:	000a8513          	mv	a0,s5
   17608:	02513823          	sd	t0,48(sp)
   1760c:	02713423          	sd	t2,40(sp)
   17610:	02613023          	sd	t1,32(sp)
   17614:	9d8ff0ef          	jal	167ec <__sprint_r.part.0>
   17618:	d40510e3          	bnez	a0,17358 <_vfiprintf_r+0xa68>
   1761c:	07812603          	lw	a2,120(sp)
   17620:	08013783          	ld	a5,128(sp)
   17624:	000c8413          	mv	s0,s9
   17628:	0016059b          	addiw	a1,a2,1
   1762c:	03013283          	ld	t0,48(sp)
   17630:	02813383          	ld	t2,40(sp)
   17634:	02013303          	ld	t1,32(sp)
   17638:	e50ff06f          	j	16c88 <_vfiprintf_r+0x398>
   1763c:	1e079063          	bnez	a5,1781c <_vfiprintf_r+0xf2c>
   17640:	00100593          	li	a1,1
   17644:	00000613          	li	a2,0
   17648:	000c8413          	mv	s0,s9
   1764c:	b71ff06f          	j	171bc <_vfiprintf_r+0x8cc>
   17650:	07010613          	addi	a2,sp,112
   17654:	000d0593          	mv	a1,s10
   17658:	000a8513          	mv	a0,s5
   1765c:	02613023          	sd	t1,32(sp)
   17660:	98cff0ef          	jal	167ec <__sprint_r.part.0>
   17664:	ce051ae3          	bnez	a0,17358 <_vfiprintf_r+0xa68>
   17668:	07812583          	lw	a1,120(sp)
   1766c:	08013783          	ld	a5,128(sp)
   17670:	000c8413          	mv	s0,s9
   17674:	0015859b          	addiw	a1,a1,1
   17678:	02013303          	ld	t1,32(sp)
   1767c:	eecff06f          	j	16d68 <_vfiprintf_r+0x478>
   17680:	00e13423          	sd	a4,8(sp)
   17684:	00019737          	lui	a4,0x19
   17688:	6c870713          	addi	a4,a4,1736 # 196c8 <zeroes.4137+0x50>
   1768c:	00060313          	mv	t1,a2
   17690:	00e13c23          	sd	a4,24(sp)
   17694:	e20796e3          	bnez	a5,174c0 <_vfiprintf_r+0xbd0>
   17698:	00000593          	li	a1,0
   1769c:	00200793          	li	a5,2
   176a0:	e75ff06f          	j	17514 <_vfiprintf_r+0xc24>
   176a4:	03000613          	li	a2,48
   176a8:	06e104a3          	sb	a4,105(sp)
   176ac:	06c10423          	sb	a2,104(sp)
   176b0:	060103a3          	sb	zero,103(sp)
   176b4:	00236713          	ori	a4,t1,2
   176b8:	1a04c463          	bltz	s1,17860 <_vfiprintf_r+0xf70>
   176bc:	f7f37313          	andi	t1,t1,-129
   176c0:	00236313          	ori	t1,t1,2
   176c4:	00000593          	li	a1,0
   176c8:	dfdff06f          	j	174c4 <_vfiprintf_r+0xbd4>
   176cc:	00019737          	lui	a4,0x19
   176d0:	6c870713          	addi	a4,a4,1736 # 196c8 <zeroes.4137+0x50>
   176d4:	00000593          	li	a1,0
   176d8:	00e13c23          	sd	a4,24(sp)
   176dc:	de9ff06f          	j	174c4 <_vfiprintf_r+0xbd4>
   176e0:	000b0493          	mv	s1,s6
   176e4:	b68ff06f          	j	16a4c <_vfiprintf_r+0x15c>
   176e8:	00813783          	ld	a5,8(sp)
   176ec:	00878713          	addi	a4,a5,8
   176f0:	0007e783          	lwu	a5,0(a5)
   176f4:	8404d4e3          	bgez	s1,16f3c <_vfiprintf_r+0x64c>
   176f8:	e0dff06f          	j	17504 <_vfiprintf_r+0xc14>
   176fc:	00813783          	ld	a5,8(sp)
   17700:	00878713          	addi	a4,a5,8
   17704:	0007e783          	lwu	a5,0(a5)
   17708:	f804d263          	bgez	s1,16e8c <_vfiprintf_r+0x59c>
   1770c:	e81ff06f          	j	1758c <_vfiprintf_r+0xc9c>
   17710:	02d00713          	li	a4,45
   17714:	06e103a3          	sb	a4,103(sp)
   17718:	40f007b3          	neg	a5,a5
   1771c:	1804c863          	bltz	s1,178ac <_vfiprintf_r+0xfbc>
   17720:	f7f37313          	andi	t1,t1,-129
   17724:	02d00593          	li	a1,45
   17728:	f10ff06f          	j	16e38 <_vfiprintf_r+0x548>
   1772c:	0006e783          	lwu	a5,0(a3)
   17730:	00868693          	addi	a3,a3,8
   17734:	00d13423          	sd	a3,8(sp)
   17738:	905ff06f          	j	1703c <_vfiprintf_r+0x74c>
   1773c:	00813703          	ld	a4,8(sp)
   17740:	04037313          	andi	t1,t1,64
   17744:	00073783          	ld	a5,0(a4)
   17748:	00870713          	addi	a4,a4,8
   1774c:	00e13423          	sd	a4,8(sp)
   17750:	08030063          	beqz	t1,177d0 <_vfiprintf_r+0xee0>
   17754:	05815703          	lhu	a4,88(sp)
   17758:	00e79023          	sh	a4,0(a5)
   1775c:	a84ff06f          	j	169e0 <_vfiprintf_r+0xf0>
   17760:	00072783          	lw	a5,0(a4)
   17764:	00870713          	addi	a4,a4,8
   17768:	00e13423          	sd	a4,8(sp)
   1776c:	eb8ff06f          	j	16e24 <_vfiprintf_r+0x534>
   17770:	07010613          	addi	a2,sp,112
   17774:	000d0593          	mv	a1,s10
   17778:	000a8513          	mv	a0,s5
   1777c:	02513823          	sd	t0,48(sp)
   17780:	02713423          	sd	t2,40(sp)
   17784:	02613023          	sd	t1,32(sp)
   17788:	864ff0ef          	jal	167ec <__sprint_r.part.0>
   1778c:	bc0516e3          	bnez	a0,17358 <_vfiprintf_r+0xa68>
   17790:	07812603          	lw	a2,120(sp)
   17794:	08013783          	ld	a5,128(sp)
   17798:	000c8413          	mv	s0,s9
   1779c:	0016059b          	addiw	a1,a2,1
   177a0:	03013283          	ld	t0,48(sp)
   177a4:	02813383          	ld	t2,40(sp)
   177a8:	02013303          	ld	t1,32(sp)
   177ac:	9c9ff06f          	j	17174 <_vfiprintf_r+0x884>
   177b0:	fff00513          	li	a0,-1
   177b4:	b48ff06f          	j	16afc <_vfiprintf_r+0x20c>
   177b8:	000c8413          	mv	s0,s9
   177bc:	acdff06f          	j	17288 <_vfiprintf_r+0x998>
   177c0:	00000613          	li	a2,0
   177c4:	00100593          	li	a1,1
   177c8:	000c8413          	mv	s0,s9
   177cc:	9e9ff06f          	j	171b4 <_vfiprintf_r+0x8c4>
   177d0:	05812703          	lw	a4,88(sp)
   177d4:	00e7a023          	sw	a4,0(a5)
   177d8:	a08ff06f          	j	169e0 <_vfiprintf_r+0xf0>
   177dc:	08013783          	ld	a5,128(sp)
   177e0:	b6078ce3          	beqz	a5,17358 <_vfiprintf_r+0xa68>
   177e4:	07010613          	addi	a2,sp,112
   177e8:	000d0593          	mv	a1,s10
   177ec:	000a8513          	mv	a0,s5
   177f0:	ffdfe0ef          	jal	167ec <__sprint_r.part.0>
   177f4:	b65ff06f          	j	17358 <_vfiprintf_r+0xa68>
   177f8:	000b8513          	mv	a0,s7
   177fc:	02613023          	sd	t1,32(sp)
   17800:	f1dfe0ef          	jal	1671c <strlen>
   17804:	00050a1b          	sext.w	s4,a0
   17808:	06714583          	lbu	a1,103(sp)
   1780c:	01b13423          	sd	s11,8(sp)
   17810:	00000493          	li	s1,0
   17814:	02013303          	ld	t1,32(sp)
   17818:	ba4ff06f          	j	16bbc <_vfiprintf_r+0x2cc>
   1781c:	07010613          	addi	a2,sp,112
   17820:	000d0593          	mv	a1,s10
   17824:	000a8513          	mv	a0,s5
   17828:	02613023          	sd	t1,32(sp)
   1782c:	fc1fe0ef          	jal	167ec <__sprint_r.part.0>
   17830:	b20514e3          	bnez	a0,17358 <_vfiprintf_r+0xa68>
   17834:	07812603          	lw	a2,120(sp)
   17838:	08013783          	ld	a5,128(sp)
   1783c:	000c8413          	mv	s0,s9
   17840:	0016059b          	addiw	a1,a2,1
   17844:	02013303          	ld	t1,32(sp)
   17848:	975ff06f          	j	171bc <_vfiprintf_r+0x8cc>
   1784c:	07812603          	lw	a2,120(sp)
   17850:	08013783          	ld	a5,128(sp)
   17854:	05813823          	sd	s8,80(sp)
   17858:	0016061b          	addiw	a2,a2,1
   1785c:	bfcff06f          	j	16c58 <_vfiprintf_r+0x368>
   17860:	00000593          	li	a1,0
   17864:	00200613          	li	a2,2
   17868:	00100513          	li	a0,1
   1786c:	08a60263          	beq	a2,a0,178f0 <_vfiprintf_r+0x1000>
   17870:	00200513          	li	a0,2
   17874:	08a61263          	bne	a2,a0,178f8 <_vfiprintf_r+0x1008>
   17878:	00070313          	mv	t1,a4
   1787c:	c49ff06f          	j	174c4 <_vfiprintf_r+0xbd4>
   17880:	00600793          	li	a5,6
   17884:	0097f463          	bleu	s1,a5,1788c <_vfiprintf_r+0xf9c>
   17888:	00078493          	mv	s1,a5
   1788c:	00048a13          	mv	s4,s1
   17890:	00048993          	mv	s3,s1
   17894:	0604c663          	bltz	s1,17900 <_vfiprintf_r+0x1010>
   17898:	00019737          	lui	a4,0x19
   1789c:	01b13423          	sd	s11,8(sp)
   178a0:	6e070b93          	addi	s7,a4,1760 # 196e0 <zeroes.4137+0x68>
   178a4:	00000493          	li	s1,0
   178a8:	b28ff06f          	j	16bd0 <_vfiprintf_r+0x2e0>
   178ac:	00030713          	mv	a4,t1
   178b0:	02d00593          	li	a1,45
   178b4:	00100613          	li	a2,1
   178b8:	fb1ff06f          	j	17868 <_vfiprintf_r+0xf78>
   178bc:	07812583          	lw	a1,120(sp)
   178c0:	05813823          	sd	s8,80(sp)
   178c4:	0015859b          	addiw	a1,a1,1
   178c8:	a29ff06f          	j	172f0 <_vfiprintf_r+0xa00>
   178cc:	00019737          	lui	a4,0x19
   178d0:	00058513          	mv	a0,a1
   178d4:	67870d93          	addi	s11,a4,1656 # 19678 <zeroes.4137>
   178d8:	c60ff06f          	j	16d38 <_vfiprintf_r+0x448>
   178dc:	00048a13          	mv	s4,s1
   178e0:	06714583          	lbu	a1,103(sp)
   178e4:	01b13423          	sd	s11,8(sp)
   178e8:	00000493          	li	s1,0
   178ec:	ad0ff06f          	j	16bbc <_vfiprintf_r+0x2cc>
   178f0:	00070313          	mv	t1,a4
   178f4:	d44ff06f          	j	16e38 <_vfiprintf_r+0x548>
   178f8:	00070313          	mv	t1,a4
   178fc:	da8ff06f          	j	16ea4 <_vfiprintf_r+0x5b4>
   17900:	00000993          	li	s3,0
   17904:	f95ff06f          	j	17898 <_vfiprintf_r+0xfa8>
   17908:	00813783          	ld	a5,8(sp)
   1790c:	00080b13          	mv	s6,a6
   17910:	0007a483          	lw	s1,0(a5)
   17914:	00878b93          	addi	s7,a5,8
   17918:	01713423          	sd	s7,8(sp)
   1791c:	9804de63          	bgez	s1,16ab8 <_vfiprintf_r+0x1c8>
   17920:	fff00493          	li	s1,-1
   17924:	000b0813          	mv	a6,s6
   17928:	954ff06f          	j	16a7c <_vfiprintf_r+0x18c>
   1792c:	07d103a3          	sb	t4,103(sp)
   17930:	f44ff06f          	j	17074 <_vfiprintf_r+0x784>
   17934:	07d103a3          	sb	t4,103(sp)
   17938:	ee0ff06f          	j	17018 <_vfiprintf_r+0x728>
   1793c:	07d103a3          	sb	t4,103(sp)
   17940:	fb0ff06f          	j	170f0 <_vfiprintf_r+0x800>
   17944:	00137793          	andi	a5,t1,1
   17948:	00078c63          	beqz	a5,17960 <_vfiprintf_r+0x1070>
   1794c:	03000793          	li	a5,48
   17950:	0af107a3          	sb	a5,175(sp)
   17954:	05c12a03          	lw	s4,92(sp)
   17958:	0af10b93          	addi	s7,sp,175
   1795c:	a60ff06f          	j	16bbc <_vfiprintf_r+0x2cc>
   17960:	00000a13          	li	s4,0
   17964:	000c8b93          	mv	s7,s9
   17968:	a54ff06f          	j	16bbc <_vfiprintf_r+0x2cc>
   1796c:	07d103a3          	sb	t4,103(sp)
   17970:	cfcff06f          	j	16e6c <_vfiprintf_r+0x57c>
   17974:	07d103a3          	sb	t4,103(sp)
   17978:	c90ff06f          	j	16e08 <_vfiprintf_r+0x518>
   1797c:	07d103a3          	sb	t4,103(sp)
   17980:	d94ff06f          	j	16f14 <_vfiprintf_r+0x624>
   17984:	07d103a3          	sb	t4,103(sp)
   17988:	d64ff06f          	j	16eec <_vfiprintf_r+0x5fc>

000000000001798c <vfiprintf>:
   1798c:	00060693          	mv	a3,a2
   17990:	00058613          	mv	a2,a1
   17994:	00050593          	mv	a1,a0
   17998:	8101b503          	ld	a0,-2032(gp) # 1b7d0 <_impure_ptr>
   1799c:	f55fe06f          	j	168f0 <_vfiprintf_r>

00000000000179a0 <__sbprintf>:
   179a0:	0105d783          	lhu	a5,16(a1)
   179a4:	0ac5ae03          	lw	t3,172(a1)
   179a8:	0125d303          	lhu	t1,18(a1)
   179ac:	0305b883          	ld	a7,48(a1)
   179b0:	0405b803          	ld	a6,64(a1)
   179b4:	b3010113          	addi	sp,sp,-1232
   179b8:	ffd7f793          	andi	a5,a5,-3
   179bc:	40000713          	li	a4,1024
   179c0:	4c813023          	sd	s0,1216(sp)
   179c4:	00f11823          	sh	a5,16(sp)
   179c8:	00058413          	mv	s0,a1
   179cc:	0b010793          	addi	a5,sp,176
   179d0:	00010593          	mv	a1,sp
   179d4:	4a913c23          	sd	s1,1208(sp)
   179d8:	4b213823          	sd	s2,1200(sp)
   179dc:	4c113423          	sd	ra,1224(sp)
   179e0:	00050913          	mv	s2,a0
   179e4:	0bc12623          	sw	t3,172(sp)
   179e8:	00611923          	sh	t1,18(sp)
   179ec:	03113823          	sd	a7,48(sp)
   179f0:	05013023          	sd	a6,64(sp)
   179f4:	00f13023          	sd	a5,0(sp)
   179f8:	00f13c23          	sd	a5,24(sp)
   179fc:	00e12623          	sw	a4,12(sp)
   17a00:	02e12023          	sw	a4,32(sp)
   17a04:	02012423          	sw	zero,40(sp)
   17a08:	ee9fe0ef          	jal	168f0 <_vfiprintf_r>
   17a0c:	00050493          	mv	s1,a0
   17a10:	00054a63          	bltz	a0,17a24 <__sbprintf+0x84>
   17a14:	00010593          	mv	a1,sp
   17a18:	00090513          	mv	a0,s2
   17a1c:	b54fc0ef          	jal	13d70 <_fflush_r>
   17a20:	02051c63          	bnez	a0,17a58 <__sbprintf+0xb8>
   17a24:	01015783          	lhu	a5,16(sp)
   17a28:	0407f793          	andi	a5,a5,64
   17a2c:	00078863          	beqz	a5,17a3c <__sbprintf+0x9c>
   17a30:	01045783          	lhu	a5,16(s0)
   17a34:	0407e793          	ori	a5,a5,64
   17a38:	00f41823          	sh	a5,16(s0)
   17a3c:	4c813083          	ld	ra,1224(sp)
   17a40:	00048513          	mv	a0,s1
   17a44:	4c013403          	ld	s0,1216(sp)
   17a48:	4b813483          	ld	s1,1208(sp)
   17a4c:	4b013903          	ld	s2,1200(sp)
   17a50:	4d010113          	addi	sp,sp,1232
   17a54:	00008067          	ret
   17a58:	fff00493          	li	s1,-1
   17a5c:	fc9ff06f          	j	17a24 <__sbprintf+0x84>

0000000000017a60 <_calloc_r>:
   17a60:	02c585b3          	mul	a1,a1,a2
   17a64:	ff010113          	addi	sp,sp,-16
   17a68:	00113423          	sd	ra,8(sp)
   17a6c:	00813023          	sd	s0,0(sp)
   17a70:	ef9fc0ef          	jal	14968 <_malloc_r>
   17a74:	08050c63          	beqz	a0,17b0c <_calloc_r+0xac>
   17a78:	ff853603          	ld	a2,-8(a0)
   17a7c:	04800713          	li	a4,72
   17a80:	00050413          	mv	s0,a0
   17a84:	ffc67613          	andi	a2,a2,-4
   17a88:	ff860613          	addi	a2,a2,-8
   17a8c:	04c76e63          	bltu	a4,a2,17ae8 <_calloc_r+0x88>
   17a90:	02700693          	li	a3,39
   17a94:	00050793          	mv	a5,a0
   17a98:	02c6f863          	bleu	a2,a3,17ac8 <_calloc_r+0x68>
   17a9c:	00053023          	sd	zero,0(a0)
   17aa0:	00053423          	sd	zero,8(a0)
   17aa4:	03700793          	li	a5,55
   17aa8:	04c7fe63          	bleu	a2,a5,17b04 <_calloc_r+0xa4>
   17aac:	00053823          	sd	zero,16(a0)
   17ab0:	00053c23          	sd	zero,24(a0)
   17ab4:	02050793          	addi	a5,a0,32
   17ab8:	00e61863          	bne	a2,a4,17ac8 <_calloc_r+0x68>
   17abc:	02053023          	sd	zero,32(a0)
   17ac0:	03050793          	addi	a5,a0,48
   17ac4:	02053423          	sd	zero,40(a0)
   17ac8:	0007b023          	sd	zero,0(a5)
   17acc:	0007b423          	sd	zero,8(a5)
   17ad0:	0007b823          	sd	zero,16(a5)
   17ad4:	00040513          	mv	a0,s0
   17ad8:	00813083          	ld	ra,8(sp)
   17adc:	00013403          	ld	s0,0(sp)
   17ae0:	01010113          	addi	sp,sp,16
   17ae4:	00008067          	ret
   17ae8:	00000593          	li	a1,0
   17aec:	ff4fd0ef          	jal	152e0 <memset>
   17af0:	00813083          	ld	ra,8(sp)
   17af4:	00040513          	mv	a0,s0
   17af8:	00013403          	ld	s0,0(sp)
   17afc:	01010113          	addi	sp,sp,16
   17b00:	00008067          	ret
   17b04:	01050793          	addi	a5,a0,16
   17b08:	fc1ff06f          	j	17ac8 <_calloc_r+0x68>
   17b0c:	00000513          	li	a0,0
   17b10:	fc9ff06f          	j	17ad8 <_calloc_r+0x78>

0000000000017b14 <_fclose_r>:
   17b14:	0e058e63          	beqz	a1,17c10 <_fclose_r+0xfc>
   17b18:	fe010113          	addi	sp,sp,-32
   17b1c:	00813823          	sd	s0,16(sp)
   17b20:	00913423          	sd	s1,8(sp)
   17b24:	00113c23          	sd	ra,24(sp)
   17b28:	01213023          	sd	s2,0(sp)
   17b2c:	00050493          	mv	s1,a0
   17b30:	00058413          	mv	s0,a1
   17b34:	00050663          	beqz	a0,17b40 <_fclose_r+0x2c>
   17b38:	05052783          	lw	a5,80(a0)
   17b3c:	0a078a63          	beqz	a5,17bf0 <_fclose_r+0xdc>
   17b40:	01041783          	lh	a5,16(s0)
   17b44:	00000513          	li	a0,0
   17b48:	00079e63          	bnez	a5,17b64 <_fclose_r+0x50>
   17b4c:	01813083          	ld	ra,24(sp)
   17b50:	01013403          	ld	s0,16(sp)
   17b54:	00813483          	ld	s1,8(sp)
   17b58:	00013903          	ld	s2,0(sp)
   17b5c:	02010113          	addi	sp,sp,32
   17b60:	00008067          	ret
   17b64:	00040593          	mv	a1,s0
   17b68:	00048513          	mv	a0,s1
   17b6c:	f99fb0ef          	jal	13b04 <__sflush_r>
   17b70:	05043783          	ld	a5,80(s0)
   17b74:	00050913          	mv	s2,a0
   17b78:	00078a63          	beqz	a5,17b8c <_fclose_r+0x78>
   17b7c:	03043583          	ld	a1,48(s0)
   17b80:	00048513          	mv	a0,s1
   17b84:	000780e7          	jalr	a5
   17b88:	06054863          	bltz	a0,17bf8 <_fclose_r+0xe4>
   17b8c:	01045783          	lhu	a5,16(s0)
   17b90:	0807f793          	andi	a5,a5,128
   17b94:	06079663          	bnez	a5,17c00 <_fclose_r+0xec>
   17b98:	05843583          	ld	a1,88(s0)
   17b9c:	00058c63          	beqz	a1,17bb4 <_fclose_r+0xa0>
   17ba0:	07440793          	addi	a5,s0,116
   17ba4:	00f58663          	beq	a1,a5,17bb0 <_fclose_r+0x9c>
   17ba8:	00048513          	mv	a0,s1
   17bac:	ec8fc0ef          	jal	14274 <_free_r>
   17bb0:	04043c23          	sd	zero,88(s0)
   17bb4:	07843583          	ld	a1,120(s0)
   17bb8:	00058863          	beqz	a1,17bc8 <_fclose_r+0xb4>
   17bbc:	00048513          	mv	a0,s1
   17bc0:	eb4fc0ef          	jal	14274 <_free_r>
   17bc4:	06043c23          	sd	zero,120(s0)
   17bc8:	d64fc0ef          	jal	1412c <__sfp_lock_acquire>
   17bcc:	00041823          	sh	zero,16(s0)
   17bd0:	d60fc0ef          	jal	14130 <__sfp_lock_release>
   17bd4:	01813083          	ld	ra,24(sp)
   17bd8:	00090513          	mv	a0,s2
   17bdc:	01013403          	ld	s0,16(sp)
   17be0:	00813483          	ld	s1,8(sp)
   17be4:	00013903          	ld	s2,0(sp)
   17be8:	02010113          	addi	sp,sp,32
   17bec:	00008067          	ret
   17bf0:	d2cfc0ef          	jal	1411c <__sinit>
   17bf4:	f4dff06f          	j	17b40 <_fclose_r+0x2c>
   17bf8:	fff00913          	li	s2,-1
   17bfc:	f91ff06f          	j	17b8c <_fclose_r+0x78>
   17c00:	01843583          	ld	a1,24(s0)
   17c04:	00048513          	mv	a0,s1
   17c08:	e6cfc0ef          	jal	14274 <_free_r>
   17c0c:	f8dff06f          	j	17b98 <_fclose_r+0x84>
   17c10:	00000513          	li	a0,0
   17c14:	00008067          	ret

0000000000017c18 <fclose>:
   17c18:	00050593          	mv	a1,a0
   17c1c:	8101b503          	ld	a0,-2032(gp) # 1b7d0 <_impure_ptr>
   17c20:	ef5ff06f          	j	17b14 <_fclose_r>

0000000000017c24 <__fputwc>:
   17c24:	fb010113          	addi	sp,sp,-80
   17c28:	04813023          	sd	s0,64(sp)
   17c2c:	03413023          	sd	s4,32(sp)
   17c30:	01513c23          	sd	s5,24(sp)
   17c34:	04113423          	sd	ra,72(sp)
   17c38:	02913c23          	sd	s1,56(sp)
   17c3c:	03213823          	sd	s2,48(sp)
   17c40:	03313423          	sd	s3,40(sp)
   17c44:	01613823          	sd	s6,16(sp)
   17c48:	00050a93          	mv	s5,a0
   17c4c:	00058a13          	mv	s4,a1
   17c50:	00060413          	mv	s0,a2
   17c54:	b25fc0ef          	jal	14778 <__locale_mb_cur_max>
   17c58:	00100793          	li	a5,1
   17c5c:	10f50663          	beq	a0,a5,17d68 <__fputwc+0x144>
   17c60:	00810493          	addi	s1,sp,8
   17c64:	0a440693          	addi	a3,s0,164
   17c68:	000a0613          	mv	a2,s4
   17c6c:	00048593          	mv	a1,s1
   17c70:	000a8513          	mv	a0,s5
   17c74:	699000ef          	jal	18b0c <_wcrtomb_r>
   17c78:	fff00793          	li	a5,-1
   17c7c:	00050993          	mv	s3,a0
   17c80:	08f50e63          	beq	a0,a5,17d1c <__fputwc+0xf8>
   17c84:	10050263          	beqz	a0,17d88 <__fputwc+0x164>
   17c88:	00814583          	lbu	a1,8(sp)
   17c8c:	00c42783          	lw	a5,12(s0)
   17c90:	00000913          	li	s2,0
   17c94:	00a00b13          	li	s6,10
   17c98:	fff7879b          	addiw	a5,a5,-1
   17c9c:	00f42623          	sw	a5,12(s0)
   17ca0:	0207cc63          	bltz	a5,17cd8 <__fputwc+0xb4>
   17ca4:	00043783          	ld	a5,0(s0)
   17ca8:	00b78023          	sb	a1,0(a5)
   17cac:	00043783          	ld	a5,0(s0)
   17cb0:	00178793          	addi	a5,a5,1
   17cb4:	00f43023          	sd	a5,0(s0)
   17cb8:	00190913          	addi	s2,s2,1
   17cbc:	00148493          	addi	s1,s1,1
   17cc0:	0d397463          	bleu	s3,s2,17d88 <__fputwc+0x164>
   17cc4:	00c42783          	lw	a5,12(s0)
   17cc8:	0004c583          	lbu	a1,0(s1)
   17ccc:	fff7879b          	addiw	a5,a5,-1
   17cd0:	00f42623          	sw	a5,12(s0)
   17cd4:	fc07d8e3          	bgez	a5,17ca4 <__fputwc+0x80>
   17cd8:	02842703          	lw	a4,40(s0)
   17cdc:	06e7ca63          	blt	a5,a4,17d50 <__fputwc+0x12c>
   17ce0:	00043783          	ld	a5,0(s0)
   17ce4:	00b78023          	sb	a1,0(a5)
   17ce8:	00043783          	ld	a5,0(s0)
   17cec:	0007c703          	lbu	a4,0(a5)
   17cf0:	00178793          	addi	a5,a5,1
   17cf4:	fd6710e3          	bne	a4,s6,17cb4 <__fputwc+0x90>
   17cf8:	00040613          	mv	a2,s0
   17cfc:	000b0593          	mv	a1,s6
   17d00:	000a8513          	mv	a0,s5
   17d04:	481000ef          	jal	18984 <__swbuf_r>
   17d08:	0015051b          	addiw	a0,a0,1
   17d0c:	00153513          	seqz	a0,a0
   17d10:	fa0504e3          	beqz	a0,17cb8 <__fputwc+0x94>
   17d14:	fff00513          	li	a0,-1
   17d18:	0100006f          	j	17d28 <__fputwc+0x104>
   17d1c:	01045783          	lhu	a5,16(s0)
   17d20:	0407e793          	ori	a5,a5,64
   17d24:	00f41823          	sh	a5,16(s0)
   17d28:	04813083          	ld	ra,72(sp)
   17d2c:	04013403          	ld	s0,64(sp)
   17d30:	03813483          	ld	s1,56(sp)
   17d34:	03013903          	ld	s2,48(sp)
   17d38:	02813983          	ld	s3,40(sp)
   17d3c:	02013a03          	ld	s4,32(sp)
   17d40:	01813a83          	ld	s5,24(sp)
   17d44:	01013b03          	ld	s6,16(sp)
   17d48:	05010113          	addi	sp,sp,80
   17d4c:	00008067          	ret
   17d50:	00040613          	mv	a2,s0
   17d54:	000a8513          	mv	a0,s5
   17d58:	42d000ef          	jal	18984 <__swbuf_r>
   17d5c:	0015051b          	addiw	a0,a0,1
   17d60:	00153513          	seqz	a0,a0
   17d64:	fadff06f          	j	17d10 <__fputwc+0xec>
   17d68:	fffa079b          	addiw	a5,s4,-1
   17d6c:	0fe00713          	li	a4,254
   17d70:	eef768e3          	bltu	a4,a5,17c60 <__fputwc+0x3c>
   17d74:	0ffa7593          	andi	a1,s4,255
   17d78:	00b10423          	sb	a1,8(sp)
   17d7c:	00100993          	li	s3,1
   17d80:	00810493          	addi	s1,sp,8
   17d84:	f09ff06f          	j	17c8c <__fputwc+0x68>
   17d88:	000a0513          	mv	a0,s4
   17d8c:	f9dff06f          	j	17d28 <__fputwc+0x104>

0000000000017d90 <_fputwc_r>:
   17d90:	01061783          	lh	a5,16(a2)
   17d94:	00002737          	lui	a4,0x2
   17d98:	03279693          	slli	a3,a5,0x32
   17d9c:	0006cc63          	bltz	a3,17db4 <_fputwc_r+0x24>
   17da0:	0ac62683          	lw	a3,172(a2)
   17da4:	00e7e7b3          	or	a5,a5,a4
   17da8:	00f61823          	sh	a5,16(a2)
   17dac:	00e6e733          	or	a4,a3,a4
   17db0:	0ae62623          	sw	a4,172(a2)
   17db4:	e71ff06f          	j	17c24 <__fputwc>

0000000000017db8 <fputwc>:
   17db8:	fd010113          	addi	sp,sp,-48
   17dbc:	02813023          	sd	s0,32(sp)
   17dc0:	8101b403          	ld	s0,-2032(gp) # 1b7d0 <_impure_ptr>
   17dc4:	00913c23          	sd	s1,24(sp)
   17dc8:	02113423          	sd	ra,40(sp)
   17dcc:	00050493          	mv	s1,a0
   17dd0:	00058613          	mv	a2,a1
   17dd4:	00040663          	beqz	s0,17de0 <fputwc+0x28>
   17dd8:	05042783          	lw	a5,80(s0)
   17ddc:	04078263          	beqz	a5,17e20 <fputwc+0x68>
   17de0:	01061783          	lh	a5,16(a2)
   17de4:	00002737          	lui	a4,0x2
   17de8:	03279693          	slli	a3,a5,0x32
   17dec:	0006cc63          	bltz	a3,17e04 <fputwc+0x4c>
   17df0:	0ac62683          	lw	a3,172(a2)
   17df4:	00e7e7b3          	or	a5,a5,a4
   17df8:	00f61823          	sh	a5,16(a2)
   17dfc:	00e6e733          	or	a4,a3,a4
   17e00:	0ae62623          	sw	a4,172(a2)
   17e04:	00048593          	mv	a1,s1
   17e08:	00040513          	mv	a0,s0
   17e0c:	02813083          	ld	ra,40(sp)
   17e10:	02013403          	ld	s0,32(sp)
   17e14:	01813483          	ld	s1,24(sp)
   17e18:	03010113          	addi	sp,sp,48
   17e1c:	e09ff06f          	j	17c24 <__fputwc>
   17e20:	00040513          	mv	a0,s0
   17e24:	00b13423          	sd	a1,8(sp)
   17e28:	af4fc0ef          	jal	1411c <__sinit>
   17e2c:	00813603          	ld	a2,8(sp)
   17e30:	fb1ff06f          	j	17de0 <fputwc+0x28>

0000000000017e34 <__sfvwrite_r>:
   17e34:	01063783          	ld	a5,16(a2)
   17e38:	26078a63          	beqz	a5,180ac <__sfvwrite_r+0x278>
   17e3c:	0105d703          	lhu	a4,16(a1)
   17e40:	f9010113          	addi	sp,sp,-112
   17e44:	06813023          	sd	s0,96(sp)
   17e48:	03513c23          	sd	s5,56(sp)
   17e4c:	03613823          	sd	s6,48(sp)
   17e50:	06113423          	sd	ra,104(sp)
   17e54:	04913c23          	sd	s1,88(sp)
   17e58:	05213823          	sd	s2,80(sp)
   17e5c:	05313423          	sd	s3,72(sp)
   17e60:	05413023          	sd	s4,64(sp)
   17e64:	03713423          	sd	s7,40(sp)
   17e68:	03813023          	sd	s8,32(sp)
   17e6c:	01913c23          	sd	s9,24(sp)
   17e70:	01a13823          	sd	s10,16(sp)
   17e74:	01b13423          	sd	s11,8(sp)
   17e78:	00877793          	andi	a5,a4,8
   17e7c:	00058413          	mv	s0,a1
   17e80:	00050b13          	mv	s6,a0
   17e84:	00060a93          	mv	s5,a2
   17e88:	0a078863          	beqz	a5,17f38 <__sfvwrite_r+0x104>
   17e8c:	0185b783          	ld	a5,24(a1)
   17e90:	0a078463          	beqz	a5,17f38 <__sfvwrite_r+0x104>
   17e94:	00277793          	andi	a5,a4,2
   17e98:	000ab483          	ld	s1,0(s5)
   17e9c:	0c078063          	beqz	a5,17f5c <__sfvwrite_r+0x128>
   17ea0:	80000a37          	lui	s4,0x80000
   17ea4:	00000993          	li	s3,0
   17ea8:	00000913          	li	s2,0
   17eac:	c00a4a13          	xori	s4,s4,-1024
   17eb0:	00098613          	mv	a2,s3
   17eb4:	000b0513          	mv	a0,s6
   17eb8:	1e090263          	beqz	s2,1809c <__sfvwrite_r+0x268>
   17ebc:	00090693          	mv	a3,s2
   17ec0:	012a7463          	bleu	s2,s4,17ec8 <__sfvwrite_r+0x94>
   17ec4:	000a0693          	mv	a3,s4
   17ec8:	04043783          	ld	a5,64(s0)
   17ecc:	03043583          	ld	a1,48(s0)
   17ed0:	0006869b          	sext.w	a3,a3
   17ed4:	000780e7          	jalr	a5
   17ed8:	22a05063          	blez	a0,180f8 <__sfvwrite_r+0x2c4>
   17edc:	010ab783          	ld	a5,16(s5)
   17ee0:	00a989b3          	add	s3,s3,a0
   17ee4:	40a90933          	sub	s2,s2,a0
   17ee8:	40a78533          	sub	a0,a5,a0
   17eec:	00aab823          	sd	a0,16(s5)
   17ef0:	fc0510e3          	bnez	a0,17eb0 <__sfvwrite_r+0x7c>
   17ef4:	00000793          	li	a5,0
   17ef8:	06813083          	ld	ra,104(sp)
   17efc:	00078513          	mv	a0,a5
   17f00:	06013403          	ld	s0,96(sp)
   17f04:	05813483          	ld	s1,88(sp)
   17f08:	05013903          	ld	s2,80(sp)
   17f0c:	04813983          	ld	s3,72(sp)
   17f10:	04013a03          	ld	s4,64(sp)
   17f14:	03813a83          	ld	s5,56(sp)
   17f18:	03013b03          	ld	s6,48(sp)
   17f1c:	02813b83          	ld	s7,40(sp)
   17f20:	02013c03          	ld	s8,32(sp)
   17f24:	01813c83          	ld	s9,24(sp)
   17f28:	01013d03          	ld	s10,16(sp)
   17f2c:	00813d83          	ld	s11,8(sp)
   17f30:	07010113          	addi	sp,sp,112
   17f34:	00008067          	ret
   17f38:	00040593          	mv	a1,s0
   17f3c:	000b0513          	mv	a0,s6
   17f40:	cd0fa0ef          	jal	12410 <__swsetup_r>
   17f44:	fff00793          	li	a5,-1
   17f48:	fa0518e3          	bnez	a0,17ef8 <__sfvwrite_r+0xc4>
   17f4c:	01045703          	lhu	a4,16(s0)
   17f50:	000ab483          	ld	s1,0(s5)
   17f54:	00277793          	andi	a5,a4,2
   17f58:	f40794e3          	bnez	a5,17ea0 <__sfvwrite_r+0x6c>
   17f5c:	00177793          	andi	a5,a4,1
   17f60:	1a079663          	bnez	a5,1810c <__sfvwrite_r+0x2d8>
   17f64:	80000bb7          	lui	s7,0x80000
   17f68:	ffebcc13          	xori	s8,s7,-2
   17f6c:	00000c93          	li	s9,0
   17f70:	00000913          	li	s2,0
   17f74:	fffbcb93          	not	s7,s7
   17f78:	10090a63          	beqz	s2,1808c <__sfvwrite_r+0x258>
   17f7c:	00c42983          	lw	s3,12(s0)
   17f80:	20077793          	andi	a5,a4,512
   17f84:	00098a13          	mv	s4,s3
   17f88:	26078863          	beqz	a5,181f8 <__sfvwrite_r+0x3c4>
   17f8c:	2b396a63          	bltu	s2,s3,18240 <__sfvwrite_r+0x40c>
   17f90:	48077793          	andi	a5,a4,1152
   17f94:	2a078663          	beqz	a5,18240 <__sfvwrite_r+0x40c>
   17f98:	02042a03          	lw	s4,32(s0)
   17f9c:	01843583          	ld	a1,24(s0)
   17fa0:	00043d03          	ld	s10,0(s0)
   17fa4:	001a179b          	slliw	a5,s4,0x1
   17fa8:	01478a3b          	addw	s4,a5,s4
   17fac:	01fa579b          	srliw	a5,s4,0x1f
   17fb0:	40bd0d3b          	subw	s10,s10,a1
   17fb4:	01478a3b          	addw	s4,a5,s4
   17fb8:	000d0993          	mv	s3,s10
   17fbc:	401a5a1b          	sraiw	s4,s4,0x1
   17fc0:	00198793          	addi	a5,s3,1
   17fc4:	000a0613          	mv	a2,s4
   17fc8:	012787b3          	add	a5,a5,s2
   17fcc:	00f67863          	bleu	a5,a2,17fdc <__sfvwrite_r+0x1a8>
   17fd0:	001d0a1b          	addiw	s4,s10,1
   17fd4:	01490a3b          	addw	s4,s2,s4
   17fd8:	000a0613          	mv	a2,s4
   17fdc:	40077713          	andi	a4,a4,1024
   17fe0:	2a070a63          	beqz	a4,18294 <__sfvwrite_r+0x460>
   17fe4:	00060593          	mv	a1,a2
   17fe8:	000b0513          	mv	a0,s6
   17fec:	97dfc0ef          	jal	14968 <_malloc_r>
   17ff0:	00050d93          	mv	s11,a0
   17ff4:	2e050263          	beqz	a0,182d8 <__sfvwrite_r+0x4a4>
   17ff8:	01843583          	ld	a1,24(s0)
   17ffc:	00098613          	mv	a2,s3
   18000:	9c0fd0ef          	jal	151c0 <memcpy>
   18004:	01045783          	lhu	a5,16(s0)
   18008:	b7f7f793          	andi	a5,a5,-1153
   1800c:	0807e793          	ori	a5,a5,128
   18010:	00f41823          	sh	a5,16(s0)
   18014:	41aa0d3b          	subw	s10,s4,s10
   18018:	013d8533          	add	a0,s11,s3
   1801c:	03442023          	sw	s4,32(s0)
   18020:	01b43c23          	sd	s11,24(s0)
   18024:	00a43023          	sd	a0,0(s0)
   18028:	00090a13          	mv	s4,s2
   1802c:	01a42623          	sw	s10,12(s0)
   18030:	000a0d13          	mv	s10,s4
   18034:	00090993          	mv	s3,s2
   18038:	01497863          	bleu	s4,s2,18048 <__sfvwrite_r+0x214>
   1803c:	00090d13          	mv	s10,s2
   18040:	00090993          	mv	s3,s2
   18044:	00090a13          	mv	s4,s2
   18048:	000d0613          	mv	a2,s10
   1804c:	000c8593          	mv	a1,s9
   18050:	298000ef          	jal	182e8 <memmove>
   18054:	00c42783          	lw	a5,12(s0)
   18058:	00043603          	ld	a2,0(s0)
   1805c:	41478a3b          	subw	s4,a5,s4
   18060:	01a60633          	add	a2,a2,s10
   18064:	01442623          	sw	s4,12(s0)
   18068:	00c43023          	sd	a2,0(s0)
   1806c:	010ab503          	ld	a0,16(s5)
   18070:	013c8cb3          	add	s9,s9,s3
   18074:	41390933          	sub	s2,s2,s3
   18078:	413509b3          	sub	s3,a0,s3
   1807c:	013ab823          	sd	s3,16(s5)
   18080:	e6098ae3          	beqz	s3,17ef4 <__sfvwrite_r+0xc0>
   18084:	01045703          	lhu	a4,16(s0)
   18088:	ee091ae3          	bnez	s2,17f7c <__sfvwrite_r+0x148>
   1808c:	0004bc83          	ld	s9,0(s1)
   18090:	0084b903          	ld	s2,8(s1)
   18094:	01048493          	addi	s1,s1,16
   18098:	ee1ff06f          	j	17f78 <__sfvwrite_r+0x144>
   1809c:	0004b983          	ld	s3,0(s1)
   180a0:	0084b903          	ld	s2,8(s1)
   180a4:	01048493          	addi	s1,s1,16
   180a8:	e09ff06f          	j	17eb0 <__sfvwrite_r+0x7c>
   180ac:	00000793          	li	a5,0
   180b0:	00078513          	mv	a0,a5
   180b4:	00008067          	ret
   180b8:	01397463          	bleu	s3,s2,180c0 <__sfvwrite_r+0x28c>
   180bc:	00090993          	mv	s3,s2
   180c0:	00098613          	mv	a2,s3
   180c4:	000c8593          	mv	a1,s9
   180c8:	220000ef          	jal	182e8 <memmove>
   180cc:	00c42783          	lw	a5,12(s0)
   180d0:	00043703          	ld	a4,0(s0)
   180d4:	413787bb          	subw	a5,a5,s3
   180d8:	01370733          	add	a4,a4,s3
   180dc:	00f42623          	sw	a5,12(s0)
   180e0:	00e43023          	sd	a4,0(s0)
   180e4:	f80794e3          	bnez	a5,1806c <__sfvwrite_r+0x238>
   180e8:	00040593          	mv	a1,s0
   180ec:	000b0513          	mv	a0,s6
   180f0:	c81fb0ef          	jal	13d70 <_fflush_r>
   180f4:	f6050ce3          	beqz	a0,1806c <__sfvwrite_r+0x238>
   180f8:	01041783          	lh	a5,16(s0)
   180fc:	0407e793          	ori	a5,a5,64
   18100:	00f41823          	sh	a5,16(s0)
   18104:	fff00793          	li	a5,-1
   18108:	df1ff06f          	j	17ef8 <__sfvwrite_r+0xc4>
   1810c:	00000a13          	li	s4,0
   18110:	00000c13          	li	s8,0
   18114:	00000d13          	li	s10,0
   18118:	00000913          	li	s2,0
   1811c:	06090e63          	beqz	s2,18198 <__sfvwrite_r+0x364>
   18120:	140c0863          	beqz	s8,18270 <__sfvwrite_r+0x43c>
   18124:	000a0993          	mv	s3,s4
   18128:	01497463          	bleu	s4,s2,18130 <__sfvwrite_r+0x2fc>
   1812c:	00090993          	mv	s3,s2
   18130:	00043503          	ld	a0,0(s0)
   18134:	01843783          	ld	a5,24(s0)
   18138:	00098b93          	mv	s7,s3
   1813c:	02042683          	lw	a3,32(s0)
   18140:	00a7fa63          	bleu	a0,a5,18154 <__sfvwrite_r+0x320>
   18144:	00c42c83          	lw	s9,12(s0)
   18148:	01968cbb          	addw	s9,a3,s9
   1814c:	000c8d93          	mv	s11,s9
   18150:	053dce63          	blt	s11,s3,181ac <__sfvwrite_r+0x378>
   18154:	0ed9ca63          	blt	s3,a3,18248 <__sfvwrite_r+0x414>
   18158:	04043783          	ld	a5,64(s0)
   1815c:	03043583          	ld	a1,48(s0)
   18160:	000d0613          	mv	a2,s10
   18164:	000b0513          	mv	a0,s6
   18168:	000780e7          	jalr	a5
   1816c:	00050b93          	mv	s7,a0
   18170:	f8a054e3          	blez	a0,180f8 <__sfvwrite_r+0x2c4>
   18174:	417a0a3b          	subw	s4,s4,s7
   18178:	060a0463          	beqz	s4,181e0 <__sfvwrite_r+0x3ac>
   1817c:	010ab783          	ld	a5,16(s5)
   18180:	017d0d33          	add	s10,s10,s7
   18184:	41790933          	sub	s2,s2,s7
   18188:	41778bb3          	sub	s7,a5,s7
   1818c:	017ab823          	sd	s7,16(s5)
   18190:	d60b82e3          	beqz	s7,17ef4 <__sfvwrite_r+0xc0>
   18194:	f80916e3          	bnez	s2,18120 <__sfvwrite_r+0x2ec>
   18198:	0004bd03          	ld	s10,0(s1)
   1819c:	0084b903          	ld	s2,8(s1)
   181a0:	00000c13          	li	s8,0
   181a4:	01048493          	addi	s1,s1,16
   181a8:	f75ff06f          	j	1811c <__sfvwrite_r+0x2e8>
   181ac:	000d0593          	mv	a1,s10
   181b0:	000c8613          	mv	a2,s9
   181b4:	134000ef          	jal	182e8 <memmove>
   181b8:	00043783          	ld	a5,0(s0)
   181bc:	00040593          	mv	a1,s0
   181c0:	000b0513          	mv	a0,s6
   181c4:	01b78db3          	add	s11,a5,s11
   181c8:	01b43023          	sd	s11,0(s0)
   181cc:	ba5fb0ef          	jal	13d70 <_fflush_r>
   181d0:	f20514e3          	bnez	a0,180f8 <__sfvwrite_r+0x2c4>
   181d4:	000c8b93          	mv	s7,s9
   181d8:	417a0a3b          	subw	s4,s4,s7
   181dc:	fa0a10e3          	bnez	s4,1817c <__sfvwrite_r+0x348>
   181e0:	00040593          	mv	a1,s0
   181e4:	000b0513          	mv	a0,s6
   181e8:	b89fb0ef          	jal	13d70 <_fflush_r>
   181ec:	f00516e3          	bnez	a0,180f8 <__sfvwrite_r+0x2c4>
   181f0:	00000c13          	li	s8,0
   181f4:	f89ff06f          	j	1817c <__sfvwrite_r+0x348>
   181f8:	00043503          	ld	a0,0(s0)
   181fc:	01843783          	ld	a5,24(s0)
   18200:	eaa7ece3          	bltu	a5,a0,180b8 <__sfvwrite_r+0x284>
   18204:	02042783          	lw	a5,32(s0)
   18208:	eaf968e3          	bltu	s2,a5,180b8 <__sfvwrite_r+0x284>
   1820c:	000b8693          	mv	a3,s7
   18210:	012c6463          	bltu	s8,s2,18218 <__sfvwrite_r+0x3e4>
   18214:	0009069b          	sext.w	a3,s2
   18218:	02f6c6bb          	divw	a3,a3,a5
   1821c:	04043703          	ld	a4,64(s0)
   18220:	03043583          	ld	a1,48(s0)
   18224:	000c8613          	mv	a2,s9
   18228:	000b0513          	mv	a0,s6
   1822c:	02f686bb          	mulw	a3,a3,a5
   18230:	000700e7          	jalr	a4
   18234:	eca052e3          	blez	a0,180f8 <__sfvwrite_r+0x2c4>
   18238:	00050993          	mv	s3,a0
   1823c:	e31ff06f          	j	1806c <__sfvwrite_r+0x238>
   18240:	00043503          	ld	a0,0(s0)
   18244:	dedff06f          	j	18030 <__sfvwrite_r+0x1fc>
   18248:	00098613          	mv	a2,s3
   1824c:	000d0593          	mv	a1,s10
   18250:	098000ef          	jal	182e8 <memmove>
   18254:	00c42703          	lw	a4,12(s0)
   18258:	00043783          	ld	a5,0(s0)
   1825c:	4137073b          	subw	a4,a4,s3
   18260:	013789b3          	add	s3,a5,s3
   18264:	00e42623          	sw	a4,12(s0)
   18268:	01343023          	sd	s3,0(s0)
   1826c:	f09ff06f          	j	18174 <__sfvwrite_r+0x340>
   18270:	00090613          	mv	a2,s2
   18274:	00a00593          	li	a1,10
   18278:	000d0513          	mv	a0,s10
   1827c:	e5dfc0ef          	jal	150d8 <memchr>
   18280:	04050663          	beqz	a0,182cc <__sfvwrite_r+0x498>
   18284:	00150a13          	addi	s4,a0,1
   18288:	41aa0a3b          	subw	s4,s4,s10
   1828c:	00100c13          	li	s8,1
   18290:	e95ff06f          	j	18124 <__sfvwrite_r+0x2f0>
   18294:	000b0513          	mv	a0,s6
   18298:	170000ef          	jal	18408 <_realloc_r>
   1829c:	00050d93          	mv	s11,a0
   182a0:	d6051ae3          	bnez	a0,18014 <__sfvwrite_r+0x1e0>
   182a4:	01843583          	ld	a1,24(s0)
   182a8:	000b0513          	mv	a0,s6
   182ac:	fc9fb0ef          	jal	14274 <_free_r>
   182b0:	01045783          	lhu	a5,16(s0)
   182b4:	00c00713          	li	a4,12
   182b8:	00eb2023          	sw	a4,0(s6)
   182bc:	f7f7f793          	andi	a5,a5,-129
   182c0:	0107979b          	slliw	a5,a5,0x10
   182c4:	4107d79b          	sraiw	a5,a5,0x10
   182c8:	e35ff06f          	j	180fc <__sfvwrite_r+0x2c8>
   182cc:	00190a1b          	addiw	s4,s2,1
   182d0:	00100c13          	li	s8,1
   182d4:	e51ff06f          	j	18124 <__sfvwrite_r+0x2f0>
   182d8:	00c00793          	li	a5,12
   182dc:	00fb2023          	sw	a5,0(s6)
   182e0:	01041783          	lh	a5,16(s0)
   182e4:	e19ff06f          	j	180fc <__sfvwrite_r+0x2c8>

00000000000182e8 <memmove>:
   182e8:	02a5f863          	bleu	a0,a1,18318 <memmove+0x30>
   182ec:	00c58733          	add	a4,a1,a2
   182f0:	02e57463          	bleu	a4,a0,18318 <memmove+0x30>
   182f4:	00c507b3          	add	a5,a0,a2
   182f8:	40c785b3          	sub	a1,a5,a2
   182fc:	0e060263          	beqz	a2,183e0 <memmove+0xf8>
   18300:	fff70713          	addi	a4,a4,-1 # 1fff <_ftext-0xe001>
   18304:	00074683          	lbu	a3,0(a4)
   18308:	fff78793          	addi	a5,a5,-1
   1830c:	00d78023          	sb	a3,0(a5)
   18310:	fef598e3          	bne	a1,a5,18300 <memmove+0x18>
   18314:	00008067          	ret
   18318:	01f00893          	li	a7,31
   1831c:	0cc8f463          	bleu	a2,a7,183e4 <memmove+0xfc>
   18320:	00a5e7b3          	or	a5,a1,a0
   18324:	0077f793          	andi	a5,a5,7
   18328:	0c079463          	bnez	a5,183f0 <memmove+0x108>
   1832c:	00058713          	mv	a4,a1
   18330:	00050793          	mv	a5,a0
   18334:	00060693          	mv	a3,a2
   18338:	00073803          	ld	a6,0(a4)
   1833c:	02078793          	addi	a5,a5,32
   18340:	02070713          	addi	a4,a4,32
   18344:	ff07b023          	sd	a6,-32(a5)
   18348:	fe873803          	ld	a6,-24(a4)
   1834c:	fe068693          	addi	a3,a3,-32
   18350:	ff07b423          	sd	a6,-24(a5)
   18354:	ff073803          	ld	a6,-16(a4)
   18358:	ff07b823          	sd	a6,-16(a5)
   1835c:	ff873803          	ld	a6,-8(a4)
   18360:	ff07bc23          	sd	a6,-8(a5)
   18364:	fcd8eae3          	bltu	a7,a3,18338 <memmove+0x50>
   18368:	fe060713          	addi	a4,a2,-32
   1836c:	fe077713          	andi	a4,a4,-32
   18370:	02070713          	addi	a4,a4,32
   18374:	01f67e13          	andi	t3,a2,31
   18378:	00700313          	li	t1,7
   1837c:	00e507b3          	add	a5,a0,a4
   18380:	00e585b3          	add	a1,a1,a4
   18384:	07c37c63          	bleu	t3,t1,183fc <memmove+0x114>
   18388:	00058813          	mv	a6,a1
   1838c:	00078693          	mv	a3,a5
   18390:	000e0713          	mv	a4,t3
   18394:	00880813          	addi	a6,a6,8
   18398:	ff883883          	ld	a7,-8(a6)
   1839c:	00868693          	addi	a3,a3,8
   183a0:	ff870713          	addi	a4,a4,-8
   183a4:	ff16bc23          	sd	a7,-8(a3)
   183a8:	fee366e3          	bltu	t1,a4,18394 <memmove+0xac>
   183ac:	ff8e0713          	addi	a4,t3,-8
   183b0:	ff877713          	andi	a4,a4,-8
   183b4:	00870713          	addi	a4,a4,8
   183b8:	00767613          	andi	a2,a2,7
   183bc:	00e787b3          	add	a5,a5,a4
   183c0:	00e585b3          	add	a1,a1,a4
   183c4:	02060a63          	beqz	a2,183f8 <memmove+0x110>
   183c8:	00c78633          	add	a2,a5,a2
   183cc:	00158593          	addi	a1,a1,1
   183d0:	fff5c703          	lbu	a4,-1(a1)
   183d4:	00178793          	addi	a5,a5,1
   183d8:	fee78fa3          	sb	a4,-1(a5)
   183dc:	fec798e3          	bne	a5,a2,183cc <memmove+0xe4>
   183e0:	00008067          	ret
   183e4:	00050793          	mv	a5,a0
   183e8:	fe0610e3          	bnez	a2,183c8 <memmove+0xe0>
   183ec:	00c0006f          	j	183f8 <memmove+0x110>
   183f0:	00050793          	mv	a5,a0
   183f4:	fd5ff06f          	j	183c8 <memmove+0xe0>
   183f8:	00008067          	ret
   183fc:	000e0613          	mv	a2,t3
   18400:	fc0614e3          	bnez	a2,183c8 <memmove+0xe0>
   18404:	ff5ff06f          	j	183f8 <memmove+0x110>

0000000000018408 <_realloc_r>:
   18408:	fb010113          	addi	sp,sp,-80
   1840c:	02913c23          	sd	s1,56(sp)
   18410:	04113423          	sd	ra,72(sp)
   18414:	04813023          	sd	s0,64(sp)
   18418:	03213823          	sd	s2,48(sp)
   1841c:	03313423          	sd	s3,40(sp)
   18420:	03413023          	sd	s4,32(sp)
   18424:	01513c23          	sd	s5,24(sp)
   18428:	01613823          	sd	s6,16(sp)
   1842c:	01713423          	sd	s7,8(sp)
   18430:	01813023          	sd	s8,0(sp)
   18434:	00060493          	mv	s1,a2
   18438:	1c058a63          	beqz	a1,1860c <_realloc_r+0x204>
   1843c:	00058993          	mv	s3,a1
   18440:	00050913          	mv	s2,a0
   18444:	f79fc0ef          	jal	153bc <__malloc_lock>
   18448:	ff89b783          	ld	a5,-8(s3)
   1844c:	01748413          	addi	s0,s1,23
   18450:	02e00713          	li	a4,46
   18454:	ff098a93          	addi	s5,s3,-16
   18458:	ffc7fa13          	andi	s4,a5,-4
   1845c:	0c877463          	bleu	s0,a4,18524 <_realloc_r+0x11c>
   18460:	80000737          	lui	a4,0x80000
   18464:	ff047413          	andi	s0,s0,-16
   18468:	fff74713          	not	a4,a4
   1846c:	14876a63          	bltu	a4,s0,185c0 <_realloc_r+0x1b8>
   18470:	14946863          	bltu	s0,s1,185c0 <_realloc_r+0x1b8>
   18474:	0a8a5c63          	ble	s0,s4,1852c <_realloc_r+0x124>
   18478:	0001bb37          	lui	s6,0x1b
   1847c:	fa8b0b13          	addi	s6,s6,-88 # 1afa8 <__malloc_av_>
   18480:	010b3703          	ld	a4,16(s6)
   18484:	014a86b3          	add	a3,s5,s4
   18488:	2ee68e63          	beq	a3,a4,18784 <_realloc_r+0x37c>
   1848c:	0086b703          	ld	a4,8(a3)
   18490:	ffe77613          	andi	a2,a4,-2
   18494:	00c68633          	add	a2,a3,a2
   18498:	00863603          	ld	a2,8(a2)
   1849c:	00167613          	andi	a2,a2,1
   184a0:	0e060c63          	beqz	a2,18598 <_realloc_r+0x190>
   184a4:	0017f793          	andi	a5,a5,1
   184a8:	26078063          	beqz	a5,18708 <_realloc_r+0x300>
   184ac:	00048593          	mv	a1,s1
   184b0:	00090513          	mv	a0,s2
   184b4:	cb4fc0ef          	jal	14968 <_malloc_r>
   184b8:	00050493          	mv	s1,a0
   184bc:	48050e63          	beqz	a0,18958 <_realloc_r+0x550>
   184c0:	ff89b783          	ld	a5,-8(s3)
   184c4:	ff050713          	addi	a4,a0,-16
   184c8:	ffe7f793          	andi	a5,a5,-2
   184cc:	00fa87b3          	add	a5,s5,a5
   184d0:	40f70e63          	beq	a4,a5,188ec <_realloc_r+0x4e4>
   184d4:	ff8a0613          	addi	a2,s4,-8 # ffffffff7ffffff8 <_gp+0xffffffff7ffe4038>
   184d8:	04800793          	li	a5,72
   184dc:	3ec7e263          	bltu	a5,a2,188c0 <_realloc_r+0x4b8>
   184e0:	02700713          	li	a4,39
   184e4:	36c76663          	bltu	a4,a2,18850 <_realloc_r+0x448>
   184e8:	00050793          	mv	a5,a0
   184ec:	00098713          	mv	a4,s3
   184f0:	00073683          	ld	a3,0(a4) # ffffffff80000000 <_gp+0xffffffff7ffe4040>
   184f4:	00d7b023          	sd	a3,0(a5)
   184f8:	00873683          	ld	a3,8(a4)
   184fc:	00d7b423          	sd	a3,8(a5)
   18500:	01073703          	ld	a4,16(a4)
   18504:	00e7b823          	sd	a4,16(a5)
   18508:	00098593          	mv	a1,s3
   1850c:	00090513          	mv	a0,s2
   18510:	d65fb0ef          	jal	14274 <_free_r>
   18514:	00090513          	mv	a0,s2
   18518:	ea9fc0ef          	jal	153c0 <__malloc_unlock>
   1851c:	00048513          	mv	a0,s1
   18520:	0480006f          	j	18568 <_realloc_r+0x160>
   18524:	02000413          	li	s0,32
   18528:	f49ff06f          	j	18470 <_realloc_r+0x68>
   1852c:	00098493          	mv	s1,s3
   18530:	408a07b3          	sub	a5,s4,s0
   18534:	01f00713          	li	a4,31
   18538:	08f76c63          	bltu	a4,a5,185d0 <_realloc_r+0x1c8>
   1853c:	008ab783          	ld	a5,8(s5)
   18540:	014a8733          	add	a4,s5,s4
   18544:	0017f793          	andi	a5,a5,1
   18548:	0147e633          	or	a2,a5,s4
   1854c:	00cab423          	sd	a2,8(s5)
   18550:	00873783          	ld	a5,8(a4)
   18554:	0017e793          	ori	a5,a5,1
   18558:	00f73423          	sd	a5,8(a4)
   1855c:	00090513          	mv	a0,s2
   18560:	e61fc0ef          	jal	153c0 <__malloc_unlock>
   18564:	00048513          	mv	a0,s1
   18568:	04813083          	ld	ra,72(sp)
   1856c:	04013403          	ld	s0,64(sp)
   18570:	03813483          	ld	s1,56(sp)
   18574:	03013903          	ld	s2,48(sp)
   18578:	02813983          	ld	s3,40(sp)
   1857c:	02013a03          	ld	s4,32(sp)
   18580:	01813a83          	ld	s5,24(sp)
   18584:	01013b03          	ld	s6,16(sp)
   18588:	00813b83          	ld	s7,8(sp)
   1858c:	00013c03          	ld	s8,0(sp)
   18590:	05010113          	addi	sp,sp,80
   18594:	00008067          	ret
   18598:	ffc77713          	andi	a4,a4,-4
   1859c:	01470733          	add	a4,a4,s4
   185a0:	0a874063          	blt	a4,s0,18640 <_realloc_r+0x238>
   185a4:	0186b783          	ld	a5,24(a3)
   185a8:	0106b683          	ld	a3,16(a3)
   185ac:	00098493          	mv	s1,s3
   185b0:	00070a13          	mv	s4,a4
   185b4:	00f6bc23          	sd	a5,24(a3)
   185b8:	00d7b823          	sd	a3,16(a5)
   185bc:	f75ff06f          	j	18530 <_realloc_r+0x128>
   185c0:	00c00793          	li	a5,12
   185c4:	00f92023          	sw	a5,0(s2)
   185c8:	00000513          	li	a0,0
   185cc:	f9dff06f          	j	18568 <_realloc_r+0x160>
   185d0:	008ab703          	ld	a4,8(s5)
   185d4:	008a85b3          	add	a1,s5,s0
   185d8:	0017e693          	ori	a3,a5,1
   185dc:	00177713          	andi	a4,a4,1
   185e0:	00876433          	or	s0,a4,s0
   185e4:	008ab423          	sd	s0,8(s5)
   185e8:	00d5b423          	sd	a3,8(a1)
   185ec:	00f587b3          	add	a5,a1,a5
   185f0:	0087b703          	ld	a4,8(a5)
   185f4:	01058593          	addi	a1,a1,16
   185f8:	00090513          	mv	a0,s2
   185fc:	00176713          	ori	a4,a4,1
   18600:	00e7b423          	sd	a4,8(a5)
   18604:	c71fb0ef          	jal	14274 <_free_r>
   18608:	f55ff06f          	j	1855c <_realloc_r+0x154>
   1860c:	04813083          	ld	ra,72(sp)
   18610:	04013403          	ld	s0,64(sp)
   18614:	03813483          	ld	s1,56(sp)
   18618:	03013903          	ld	s2,48(sp)
   1861c:	02813983          	ld	s3,40(sp)
   18620:	02013a03          	ld	s4,32(sp)
   18624:	01813a83          	ld	s5,24(sp)
   18628:	01013b03          	ld	s6,16(sp)
   1862c:	00813b83          	ld	s7,8(sp)
   18630:	00013c03          	ld	s8,0(sp)
   18634:	00060593          	mv	a1,a2
   18638:	05010113          	addi	sp,sp,80
   1863c:	b2cfc06f          	j	14968 <_malloc_r>
   18640:	0017f793          	andi	a5,a5,1
   18644:	e60794e3          	bnez	a5,184ac <_realloc_r+0xa4>
   18648:	ff09bb83          	ld	s7,-16(s3)
   1864c:	417a8bb3          	sub	s7,s5,s7
   18650:	008bb783          	ld	a5,8(s7) # ffffffff80000008 <_gp+0xffffffff7ffe4048>
   18654:	ffc7f793          	andi	a5,a5,-4
   18658:	00f70b33          	add	s6,a4,a5
   1865c:	0a8b4e63          	blt	s6,s0,18718 <_realloc_r+0x310>
   18660:	0186b783          	ld	a5,24(a3)
   18664:	0106b703          	ld	a4,16(a3)
   18668:	ff8a0613          	addi	a2,s4,-8
   1866c:	010b8493          	addi	s1,s7,16
   18670:	00f73c23          	sd	a5,24(a4)
   18674:	00e7b823          	sd	a4,16(a5)
   18678:	010bb703          	ld	a4,16(s7)
   1867c:	018bb783          	ld	a5,24(s7)
   18680:	00f73c23          	sd	a5,24(a4)
   18684:	00e7b823          	sd	a4,16(a5)
   18688:	04800793          	li	a5,72
   1868c:	1ec7e463          	bltu	a5,a2,18874 <_realloc_r+0x46c>
   18690:	02700713          	li	a4,39
   18694:	00048793          	mv	a5,s1
   18698:	04c77663          	bleu	a2,a4,186e4 <_realloc_r+0x2dc>
   1869c:	0009b783          	ld	a5,0(s3)
   186a0:	00fbb823          	sd	a5,16(s7)
   186a4:	0089b783          	ld	a5,8(s3)
   186a8:	00fbbc23          	sd	a5,24(s7)
   186ac:	03700793          	li	a5,55
   186b0:	24c7f863          	bleu	a2,a5,18900 <_realloc_r+0x4f8>
   186b4:	0109b783          	ld	a5,16(s3)
   186b8:	02fbb023          	sd	a5,32(s7)
   186bc:	0189b783          	ld	a5,24(s3)
   186c0:	02fbb423          	sd	a5,40(s7)
   186c4:	04800793          	li	a5,72
   186c8:	0af61863          	bne	a2,a5,18778 <_realloc_r+0x370>
   186cc:	0209b703          	ld	a4,32(s3)
   186d0:	040b8793          	addi	a5,s7,64
   186d4:	03098993          	addi	s3,s3,48
   186d8:	02ebb823          	sd	a4,48(s7)
   186dc:	ff89b703          	ld	a4,-8(s3)
   186e0:	02ebbc23          	sd	a4,56(s7)
   186e4:	0009b703          	ld	a4,0(s3)
   186e8:	000b0a13          	mv	s4,s6
   186ec:	000b8a93          	mv	s5,s7
   186f0:	00e7b023          	sd	a4,0(a5)
   186f4:	0089b703          	ld	a4,8(s3)
   186f8:	00e7b423          	sd	a4,8(a5)
   186fc:	0109b703          	ld	a4,16(s3)
   18700:	00e7b823          	sd	a4,16(a5)
   18704:	e2dff06f          	j	18530 <_realloc_r+0x128>
   18708:	ff09bb83          	ld	s7,-16(s3)
   1870c:	417a8bb3          	sub	s7,s5,s7
   18710:	008bb783          	ld	a5,8(s7)
   18714:	ffc7f793          	andi	a5,a5,-4
   18718:	00fa0b33          	add	s6,s4,a5
   1871c:	d88b48e3          	blt	s6,s0,184ac <_realloc_r+0xa4>
   18720:	018bb783          	ld	a5,24(s7)
   18724:	010bb703          	ld	a4,16(s7)
   18728:	ff8a0613          	addi	a2,s4,-8
   1872c:	04800693          	li	a3,72
   18730:	00f73c23          	sd	a5,24(a4)
   18734:	00e7b823          	sd	a4,16(a5)
   18738:	010b8493          	addi	s1,s7,16
   1873c:	12c6ec63          	bltu	a3,a2,18874 <_realloc_r+0x46c>
   18740:	02700713          	li	a4,39
   18744:	00048793          	mv	a5,s1
   18748:	f8c77ee3          	bleu	a2,a4,186e4 <_realloc_r+0x2dc>
   1874c:	0009b783          	ld	a5,0(s3)
   18750:	00fbb823          	sd	a5,16(s7)
   18754:	0089b783          	ld	a5,8(s3)
   18758:	00fbbc23          	sd	a5,24(s7)
   1875c:	03700793          	li	a5,55
   18760:	1ac7f063          	bleu	a2,a5,18900 <_realloc_r+0x4f8>
   18764:	0109b783          	ld	a5,16(s3)
   18768:	02fbb023          	sd	a5,32(s7)
   1876c:	0189b783          	ld	a5,24(s3)
   18770:	02fbb423          	sd	a5,40(s7)
   18774:	f4d60ce3          	beq	a2,a3,186cc <_realloc_r+0x2c4>
   18778:	030b8793          	addi	a5,s7,48
   1877c:	02098993          	addi	s3,s3,32
   18780:	f65ff06f          	j	186e4 <_realloc_r+0x2dc>
   18784:	0086b703          	ld	a4,8(a3)
   18788:	02040693          	addi	a3,s0,32
   1878c:	ffc77713          	andi	a4,a4,-4
   18790:	01470733          	add	a4,a4,s4
   18794:	0ed75c63          	ble	a3,a4,1888c <_realloc_r+0x484>
   18798:	0017f793          	andi	a5,a5,1
   1879c:	d00798e3          	bnez	a5,184ac <_realloc_r+0xa4>
   187a0:	ff09bb83          	ld	s7,-16(s3)
   187a4:	417a8bb3          	sub	s7,s5,s7
   187a8:	008bb783          	ld	a5,8(s7)
   187ac:	ffc7f793          	andi	a5,a5,-4
   187b0:	00e78c33          	add	s8,a5,a4
   187b4:	f6dc42e3          	blt	s8,a3,18718 <_realloc_r+0x310>
   187b8:	018bb783          	ld	a5,24(s7)
   187bc:	010bb703          	ld	a4,16(s7)
   187c0:	ff8a0613          	addi	a2,s4,-8
   187c4:	04800693          	li	a3,72
   187c8:	00f73c23          	sd	a5,24(a4)
   187cc:	00e7b823          	sd	a4,16(a5)
   187d0:	010b8493          	addi	s1,s7,16
   187d4:	14c6ea63          	bltu	a3,a2,18928 <_realloc_r+0x520>
   187d8:	02700713          	li	a4,39
   187dc:	00048793          	mv	a5,s1
   187e0:	02c77263          	bleu	a2,a4,18804 <_realloc_r+0x3fc>
   187e4:	0009b783          	ld	a5,0(s3)
   187e8:	00fbb823          	sd	a5,16(s7)
   187ec:	0089b783          	ld	a5,8(s3)
   187f0:	00fbbc23          	sd	a5,24(s7)
   187f4:	03700793          	li	a5,55
   187f8:	14c7e063          	bltu	a5,a2,18938 <_realloc_r+0x530>
   187fc:	020b8793          	addi	a5,s7,32
   18800:	01098993          	addi	s3,s3,16
   18804:	0009b703          	ld	a4,0(s3)
   18808:	00e7b023          	sd	a4,0(a5)
   1880c:	0089b703          	ld	a4,8(s3)
   18810:	00e7b423          	sd	a4,8(a5)
   18814:	0109b703          	ld	a4,16(s3)
   18818:	00e7b823          	sd	a4,16(a5)
   1881c:	008b8733          	add	a4,s7,s0
   18820:	408c07b3          	sub	a5,s8,s0
   18824:	00eb3823          	sd	a4,16(s6)
   18828:	0017e793          	ori	a5,a5,1
   1882c:	00f73423          	sd	a5,8(a4)
   18830:	008bb783          	ld	a5,8(s7)
   18834:	00090513          	mv	a0,s2
   18838:	0017f793          	andi	a5,a5,1
   1883c:	0087e433          	or	s0,a5,s0
   18840:	008bb423          	sd	s0,8(s7)
   18844:	b7dfc0ef          	jal	153c0 <__malloc_unlock>
   18848:	00048513          	mv	a0,s1
   1884c:	d1dff06f          	j	18568 <_realloc_r+0x160>
   18850:	0009b703          	ld	a4,0(s3)
   18854:	00e53023          	sd	a4,0(a0)
   18858:	0089b703          	ld	a4,8(s3)
   1885c:	00e53423          	sd	a4,8(a0)
   18860:	03700713          	li	a4,55
   18864:	06c76463          	bltu	a4,a2,188cc <_realloc_r+0x4c4>
   18868:	01050793          	addi	a5,a0,16
   1886c:	01098713          	addi	a4,s3,16
   18870:	c81ff06f          	j	184f0 <_realloc_r+0xe8>
   18874:	00098593          	mv	a1,s3
   18878:	00048513          	mv	a0,s1
   1887c:	a6dff0ef          	jal	182e8 <memmove>
   18880:	000b0a13          	mv	s4,s6
   18884:	000b8a93          	mv	s5,s7
   18888:	ca9ff06f          	j	18530 <_realloc_r+0x128>
   1888c:	008a8ab3          	add	s5,s5,s0
   18890:	408707b3          	sub	a5,a4,s0
   18894:	015b3823          	sd	s5,16(s6)
   18898:	0017e793          	ori	a5,a5,1
   1889c:	00fab423          	sd	a5,8(s5)
   188a0:	ff89b783          	ld	a5,-8(s3)
   188a4:	00090513          	mv	a0,s2
   188a8:	0017f793          	andi	a5,a5,1
   188ac:	0087e433          	or	s0,a5,s0
   188b0:	fe89bc23          	sd	s0,-8(s3)
   188b4:	b0dfc0ef          	jal	153c0 <__malloc_unlock>
   188b8:	00098513          	mv	a0,s3
   188bc:	cadff06f          	j	18568 <_realloc_r+0x160>
   188c0:	00098593          	mv	a1,s3
   188c4:	a25ff0ef          	jal	182e8 <memmove>
   188c8:	c41ff06f          	j	18508 <_realloc_r+0x100>
   188cc:	0109b703          	ld	a4,16(s3)
   188d0:	00e53823          	sd	a4,16(a0)
   188d4:	0189b703          	ld	a4,24(s3)
   188d8:	00e53c23          	sd	a4,24(a0)
   188dc:	02f60863          	beq	a2,a5,1890c <_realloc_r+0x504>
   188e0:	02050793          	addi	a5,a0,32
   188e4:	02098713          	addi	a4,s3,32
   188e8:	c09ff06f          	j	184f0 <_realloc_r+0xe8>
   188ec:	ff853783          	ld	a5,-8(a0)
   188f0:	00098493          	mv	s1,s3
   188f4:	ffc7f793          	andi	a5,a5,-4
   188f8:	00fa0a33          	add	s4,s4,a5
   188fc:	c35ff06f          	j	18530 <_realloc_r+0x128>
   18900:	020b8793          	addi	a5,s7,32
   18904:	01098993          	addi	s3,s3,16
   18908:	dddff06f          	j	186e4 <_realloc_r+0x2dc>
   1890c:	0209b683          	ld	a3,32(s3)
   18910:	03050793          	addi	a5,a0,48
   18914:	03098713          	addi	a4,s3,48
   18918:	02d53023          	sd	a3,32(a0)
   1891c:	0289b683          	ld	a3,40(s3)
   18920:	02d53423          	sd	a3,40(a0)
   18924:	bcdff06f          	j	184f0 <_realloc_r+0xe8>
   18928:	00098593          	mv	a1,s3
   1892c:	00048513          	mv	a0,s1
   18930:	9b9ff0ef          	jal	182e8 <memmove>
   18934:	ee9ff06f          	j	1881c <_realloc_r+0x414>
   18938:	0109b783          	ld	a5,16(s3)
   1893c:	02fbb023          	sd	a5,32(s7)
   18940:	0189b783          	ld	a5,24(s3)
   18944:	02fbb423          	sd	a5,40(s7)
   18948:	02d60063          	beq	a2,a3,18968 <_realloc_r+0x560>
   1894c:	030b8793          	addi	a5,s7,48
   18950:	02098993          	addi	s3,s3,32
   18954:	eb1ff06f          	j	18804 <_realloc_r+0x3fc>
   18958:	00090513          	mv	a0,s2
   1895c:	a65fc0ef          	jal	153c0 <__malloc_unlock>
   18960:	00000513          	li	a0,0
   18964:	c05ff06f          	j	18568 <_realloc_r+0x160>
   18968:	0209b703          	ld	a4,32(s3)
   1896c:	040b8793          	addi	a5,s7,64
   18970:	03098993          	addi	s3,s3,48
   18974:	02ebb823          	sd	a4,48(s7)
   18978:	ff89b703          	ld	a4,-8(s3)
   1897c:	02ebbc23          	sd	a4,56(s7)
   18980:	e85ff06f          	j	18804 <_realloc_r+0x3fc>

0000000000018984 <__swbuf_r>:
   18984:	fd010113          	addi	sp,sp,-48
   18988:	02813023          	sd	s0,32(sp)
   1898c:	00913c23          	sd	s1,24(sp)
   18990:	01313423          	sd	s3,8(sp)
   18994:	02113423          	sd	ra,40(sp)
   18998:	01213823          	sd	s2,16(sp)
   1899c:	00050493          	mv	s1,a0
   189a0:	00058993          	mv	s3,a1
   189a4:	00060413          	mv	s0,a2
   189a8:	00050663          	beqz	a0,189b4 <__swbuf_r+0x30>
   189ac:	05052783          	lw	a5,80(a0)
   189b0:	12078e63          	beqz	a5,18aec <__swbuf_r+0x168>
   189b4:	01041683          	lh	a3,16(s0)
   189b8:	02842783          	lw	a5,40(s0)
   189bc:	03069713          	slli	a4,a3,0x30
   189c0:	03075713          	srli	a4,a4,0x30
   189c4:	00f42623          	sw	a5,12(s0)
   189c8:	00877793          	andi	a5,a4,8
   189cc:	0e078e63          	beqz	a5,18ac8 <__swbuf_r+0x144>
   189d0:	01843783          	ld	a5,24(s0)
   189d4:	0e078a63          	beqz	a5,18ac8 <__swbuf_r+0x144>
   189d8:	03271613          	slli	a2,a4,0x32
   189dc:	0ff9f913          	andi	s2,s3,255
   189e0:	06065663          	bgez	a2,18a4c <__swbuf_r+0xc8>
   189e4:	00043703          	ld	a4,0(s0)
   189e8:	02042683          	lw	a3,32(s0)
   189ec:	40f707bb          	subw	a5,a4,a5
   189f0:	08d7d663          	ble	a3,a5,18a7c <__swbuf_r+0xf8>
   189f4:	0017879b          	addiw	a5,a5,1
   189f8:	00c42683          	lw	a3,12(s0)
   189fc:	00170613          	addi	a2,a4,1
   18a00:	00c43023          	sd	a2,0(s0)
   18a04:	fff6869b          	addiw	a3,a3,-1
   18a08:	00d42623          	sw	a3,12(s0)
   18a0c:	01370023          	sb	s3,0(a4)
   18a10:	02042703          	lw	a4,32(s0)
   18a14:	08f70263          	beq	a4,a5,18a98 <__swbuf_r+0x114>
   18a18:	01045783          	lhu	a5,16(s0)
   18a1c:	00090513          	mv	a0,s2
   18a20:	0017f793          	andi	a5,a5,1
   18a24:	00078663          	beqz	a5,18a30 <__swbuf_r+0xac>
   18a28:	00a00793          	li	a5,10
   18a2c:	06f90663          	beq	s2,a5,18a98 <__swbuf_r+0x114>
   18a30:	02813083          	ld	ra,40(sp)
   18a34:	02013403          	ld	s0,32(sp)
   18a38:	01813483          	ld	s1,24(sp)
   18a3c:	01013903          	ld	s2,16(sp)
   18a40:	00813983          	ld	s3,8(sp)
   18a44:	03010113          	addi	sp,sp,48
   18a48:	00008067          	ret
   18a4c:	0ac42583          	lw	a1,172(s0)
   18a50:	ffffe737          	lui	a4,0xffffe
   18a54:	fff7071b          	addiw	a4,a4,-1
   18a58:	00e5f733          	and	a4,a1,a4
   18a5c:	00002637          	lui	a2,0x2
   18a60:	00c6e6b3          	or	a3,a3,a2
   18a64:	0ae42623          	sw	a4,172(s0)
   18a68:	00043703          	ld	a4,0(s0)
   18a6c:	00d41823          	sh	a3,16(s0)
   18a70:	02042683          	lw	a3,32(s0)
   18a74:	40f707bb          	subw	a5,a4,a5
   18a78:	f6d7cee3          	blt	a5,a3,189f4 <__swbuf_r+0x70>
   18a7c:	00040593          	mv	a1,s0
   18a80:	00048513          	mv	a0,s1
   18a84:	aecfb0ef          	jal	13d70 <_fflush_r>
   18a88:	06051663          	bnez	a0,18af4 <__swbuf_r+0x170>
   18a8c:	00043703          	ld	a4,0(s0)
   18a90:	00100793          	li	a5,1
   18a94:	f65ff06f          	j	189f8 <__swbuf_r+0x74>
   18a98:	00040593          	mv	a1,s0
   18a9c:	00048513          	mv	a0,s1
   18aa0:	ad0fb0ef          	jal	13d70 <_fflush_r>
   18aa4:	04051863          	bnez	a0,18af4 <__swbuf_r+0x170>
   18aa8:	02813083          	ld	ra,40(sp)
   18aac:	00090513          	mv	a0,s2
   18ab0:	02013403          	ld	s0,32(sp)
   18ab4:	01813483          	ld	s1,24(sp)
   18ab8:	01013903          	ld	s2,16(sp)
   18abc:	00813983          	ld	s3,8(sp)
   18ac0:	03010113          	addi	sp,sp,48
   18ac4:	00008067          	ret
   18ac8:	00040593          	mv	a1,s0
   18acc:	00048513          	mv	a0,s1
   18ad0:	941f90ef          	jal	12410 <__swsetup_r>
   18ad4:	02051063          	bnez	a0,18af4 <__swbuf_r+0x170>
   18ad8:	01041683          	lh	a3,16(s0)
   18adc:	01843783          	ld	a5,24(s0)
   18ae0:	03069713          	slli	a4,a3,0x30
   18ae4:	03075713          	srli	a4,a4,0x30
   18ae8:	ef1ff06f          	j	189d8 <__swbuf_r+0x54>
   18aec:	e30fb0ef          	jal	1411c <__sinit>
   18af0:	ec5ff06f          	j	189b4 <__swbuf_r+0x30>
   18af4:	fff00513          	li	a0,-1
   18af8:	f39ff06f          	j	18a30 <__swbuf_r+0xac>

0000000000018afc <__swbuf>:
   18afc:	00058613          	mv	a2,a1
   18b00:	00050593          	mv	a1,a0
   18b04:	8101b503          	ld	a0,-2032(gp) # 1b7d0 <_impure_ptr>
   18b08:	e7dff06f          	j	18984 <__swbuf_r>

0000000000018b0c <_wcrtomb_r>:
   18b0c:	fc010113          	addi	sp,sp,-64
   18b10:	02913423          	sd	s1,40(sp)
   18b14:	03213023          	sd	s2,32(sp)
   18b18:	02113c23          	sd	ra,56(sp)
   18b1c:	02813823          	sd	s0,48(sp)
   18b20:	01313c23          	sd	s3,24(sp)
   18b24:	01413823          	sd	s4,16(sp)
   18b28:	00050493          	mv	s1,a0
   18b2c:	00068913          	mv	s2,a3
   18b30:	06058663          	beqz	a1,18b9c <_wcrtomb_r+0x90>
   18b34:	8381ba03          	ld	s4,-1992(gp) # 1b7f8 <__wctomb>
   18b38:	00058413          	mv	s0,a1
   18b3c:	00060993          	mv	s3,a2
   18b40:	c2dfb0ef          	jal	1476c <__locale_charset>
   18b44:	00050693          	mv	a3,a0
   18b48:	00090713          	mv	a4,s2
   18b4c:	00098613          	mv	a2,s3
   18b50:	00040593          	mv	a1,s0
   18b54:	00048513          	mv	a0,s1
   18b58:	000a00e7          	jalr	s4
   18b5c:	00050793          	mv	a5,a0
   18b60:	fff00713          	li	a4,-1
   18b64:	00078513          	mv	a0,a5
   18b68:	00e79a63          	bne	a5,a4,18b7c <_wcrtomb_r+0x70>
   18b6c:	00092023          	sw	zero,0(s2)
   18b70:	08a00793          	li	a5,138
   18b74:	00f4a023          	sw	a5,0(s1)
   18b78:	fff00513          	li	a0,-1
   18b7c:	03813083          	ld	ra,56(sp)
   18b80:	03013403          	ld	s0,48(sp)
   18b84:	02813483          	ld	s1,40(sp)
   18b88:	02013903          	ld	s2,32(sp)
   18b8c:	01813983          	ld	s3,24(sp)
   18b90:	01013a03          	ld	s4,16(sp)
   18b94:	04010113          	addi	sp,sp,64
   18b98:	00008067          	ret
   18b9c:	8381b403          	ld	s0,-1992(gp) # 1b7f8 <__wctomb>
   18ba0:	bcdfb0ef          	jal	1476c <__locale_charset>
   18ba4:	00050693          	mv	a3,a0
   18ba8:	00090713          	mv	a4,s2
   18bac:	00000613          	li	a2,0
   18bb0:	00010593          	mv	a1,sp
   18bb4:	00048513          	mv	a0,s1
   18bb8:	000400e7          	jalr	s0
   18bbc:	00050793          	mv	a5,a0
   18bc0:	fa1ff06f          	j	18b60 <_wcrtomb_r+0x54>

0000000000018bc4 <wcrtomb>:
   18bc4:	fc010113          	addi	sp,sp,-64
   18bc8:	02913423          	sd	s1,40(sp)
   18bcc:	03213023          	sd	s2,32(sp)
   18bd0:	02113c23          	sd	ra,56(sp)
   18bd4:	02813823          	sd	s0,48(sp)
   18bd8:	01313c23          	sd	s3,24(sp)
   18bdc:	01413823          	sd	s4,16(sp)
   18be0:	00060913          	mv	s2,a2
   18be4:	8101b483          	ld	s1,-2032(gp) # 1b7d0 <_impure_ptr>
   18be8:	06050663          	beqz	a0,18c54 <wcrtomb+0x90>
   18bec:	8381ba03          	ld	s4,-1992(gp) # 1b7f8 <__wctomb>
   18bf0:	00058993          	mv	s3,a1
   18bf4:	00050413          	mv	s0,a0
   18bf8:	b75fb0ef          	jal	1476c <__locale_charset>
   18bfc:	00050693          	mv	a3,a0
   18c00:	00090713          	mv	a4,s2
   18c04:	00098613          	mv	a2,s3
   18c08:	00040593          	mv	a1,s0
   18c0c:	00048513          	mv	a0,s1
   18c10:	000a00e7          	jalr	s4
   18c14:	00050793          	mv	a5,a0
   18c18:	fff00713          	li	a4,-1
   18c1c:	00078513          	mv	a0,a5
   18c20:	00e79a63          	bne	a5,a4,18c34 <wcrtomb+0x70>
   18c24:	00092023          	sw	zero,0(s2)
   18c28:	08a00793          	li	a5,138
   18c2c:	00f4a023          	sw	a5,0(s1)
   18c30:	fff00513          	li	a0,-1
   18c34:	03813083          	ld	ra,56(sp)
   18c38:	03013403          	ld	s0,48(sp)
   18c3c:	02813483          	ld	s1,40(sp)
   18c40:	02013903          	ld	s2,32(sp)
   18c44:	01813983          	ld	s3,24(sp)
   18c48:	01013a03          	ld	s4,16(sp)
   18c4c:	04010113          	addi	sp,sp,64
   18c50:	00008067          	ret
   18c54:	8381b403          	ld	s0,-1992(gp) # 1b7f8 <__wctomb>
   18c58:	b15fb0ef          	jal	1476c <__locale_charset>
   18c5c:	00050693          	mv	a3,a0
   18c60:	00090713          	mv	a4,s2
   18c64:	00000613          	li	a2,0
   18c68:	00010593          	mv	a1,sp
   18c6c:	00048513          	mv	a0,s1
   18c70:	000400e7          	jalr	s0
   18c74:	00050793          	mv	a5,a0
   18c78:	fa1ff06f          	j	18c18 <wcrtomb+0x54>

0000000000018c7c <__ascii_wctomb>:
   18c7c:	00058c63          	beqz	a1,18c94 <__ascii_wctomb+0x18>
   18c80:	0ff00793          	li	a5,255
   18c84:	00c7ec63          	bltu	a5,a2,18c9c <__ascii_wctomb+0x20>
   18c88:	00c58023          	sb	a2,0(a1)
   18c8c:	00100513          	li	a0,1
   18c90:	00008067          	ret
   18c94:	00000513          	li	a0,0
   18c98:	00008067          	ret
   18c9c:	08a00793          	li	a5,138
   18ca0:	00f52023          	sw	a5,0(a0)
   18ca4:	fff00513          	li	a0,-1
   18ca8:	00008067          	ret

0000000000018cac <_wctomb_r>:
   18cac:	fd010113          	addi	sp,sp,-48
   18cb0:	02813023          	sd	s0,32(sp)
   18cb4:	8381b403          	ld	s0,-1992(gp) # 1b7f8 <__wctomb>
   18cb8:	02113423          	sd	ra,40(sp)
   18cbc:	00913c23          	sd	s1,24(sp)
   18cc0:	01213823          	sd	s2,16(sp)
   18cc4:	01313423          	sd	s3,8(sp)
   18cc8:	01413023          	sd	s4,0(sp)
   18ccc:	00050493          	mv	s1,a0
   18cd0:	00068a13          	mv	s4,a3
   18cd4:	00058913          	mv	s2,a1
   18cd8:	00060993          	mv	s3,a2
   18cdc:	a91fb0ef          	jal	1476c <__locale_charset>
   18ce0:	000a0713          	mv	a4,s4
   18ce4:	00050693          	mv	a3,a0
   18ce8:	00098613          	mv	a2,s3
   18cec:	00090593          	mv	a1,s2
   18cf0:	00048513          	mv	a0,s1
   18cf4:	00040313          	mv	t1,s0
   18cf8:	02813083          	ld	ra,40(sp)
   18cfc:	02013403          	ld	s0,32(sp)
   18d00:	01813483          	ld	s1,24(sp)
   18d04:	01013903          	ld	s2,16(sp)
   18d08:	00813983          	ld	s3,8(sp)
   18d0c:	00013a03          	ld	s4,0(sp)
   18d10:	03010113          	addi	sp,sp,48
   18d14:	00030067          	jr	t1

0000000000018d18 <__syscall_error>:
   18d18:	ff010113          	addi	sp,sp,-16
   18d1c:	00113423          	sd	ra,8(sp)
   18d20:	00813023          	sd	s0,0(sp)
   18d24:	00050413          	mv	s0,a0
   18d28:	3c0000ef          	jal	190e8 <__errno>
   18d2c:	00813083          	ld	ra,8(sp)
   18d30:	408007bb          	negw	a5,s0
   18d34:	00f52023          	sw	a5,0(a0)
   18d38:	00013403          	ld	s0,0(sp)
   18d3c:	fff00513          	li	a0,-1
   18d40:	01010113          	addi	sp,sp,16
   18d44:	00008067          	ret

0000000000018d48 <open>:
   18d48:	00000693          	li	a3,0
   18d4c:	40000893          	li	a7,1024
   18d50:	00000073          	ecall
   18d54:	fc0542e3          	bltz	a0,18d18 <__syscall_error>
   18d58:	0005051b          	sext.w	a0,a0
   18d5c:	00008067          	ret

0000000000018d60 <openat>:
   18d60:	03800893          	li	a7,56
   18d64:	00000073          	ecall
   18d68:	fa0548e3          	bltz	a0,18d18 <__syscall_error>
   18d6c:	0005051b          	sext.w	a0,a0
   18d70:	00008067          	ret

0000000000018d74 <lseek>:
   18d74:	00000693          	li	a3,0
   18d78:	03e00893          	li	a7,62
   18d7c:	00000073          	ecall
   18d80:	f8054ce3          	bltz	a0,18d18 <__syscall_error>
   18d84:	00008067          	ret

0000000000018d88 <read>:
   18d88:	00000693          	li	a3,0
   18d8c:	03f00893          	li	a7,63
   18d90:	00000073          	ecall
   18d94:	f80542e3          	bltz	a0,18d18 <__syscall_error>
   18d98:	00008067          	ret

0000000000018d9c <write>:
   18d9c:	00000693          	li	a3,0
   18da0:	04000893          	li	a7,64
   18da4:	00000073          	ecall
   18da8:	f60548e3          	bltz	a0,18d18 <__syscall_error>
   18dac:	00008067          	ret

0000000000018db0 <fstat>:
   18db0:	00000613          	li	a2,0
   18db4:	00000693          	li	a3,0
   18db8:	05000893          	li	a7,80
   18dbc:	00000073          	ecall
   18dc0:	f4054ce3          	bltz	a0,18d18 <__syscall_error>
   18dc4:	0005051b          	sext.w	a0,a0
   18dc8:	00008067          	ret

0000000000018dcc <stat>:
   18dcc:	00000613          	li	a2,0
   18dd0:	00000693          	li	a3,0
   18dd4:	40e00893          	li	a7,1038
   18dd8:	00000073          	ecall
   18ddc:	f2054ee3          	bltz	a0,18d18 <__syscall_error>
   18de0:	0005051b          	sext.w	a0,a0
   18de4:	00008067          	ret

0000000000018de8 <lstat>:
   18de8:	00000613          	li	a2,0
   18dec:	00000693          	li	a3,0
   18df0:	40f00893          	li	a7,1039
   18df4:	00000073          	ecall
   18df8:	f20540e3          	bltz	a0,18d18 <__syscall_error>
   18dfc:	0005051b          	sext.w	a0,a0
   18e00:	00008067          	ret

0000000000018e04 <fstatat>:
   18e04:	04f00893          	li	a7,79
   18e08:	00000073          	ecall
   18e0c:	f00546e3          	bltz	a0,18d18 <__syscall_error>
   18e10:	0005051b          	sext.w	a0,a0
   18e14:	00008067          	ret

0000000000018e18 <access>:
   18e18:	00000613          	li	a2,0
   18e1c:	00000693          	li	a3,0
   18e20:	40900893          	li	a7,1033
   18e24:	00000073          	ecall
   18e28:	ee0548e3          	bltz	a0,18d18 <__syscall_error>
   18e2c:	0005051b          	sext.w	a0,a0
   18e30:	00008067          	ret

0000000000018e34 <faccessat>:
   18e34:	03000893          	li	a7,48
   18e38:	00000073          	ecall
   18e3c:	ec054ee3          	bltz	a0,18d18 <__syscall_error>
   18e40:	0005051b          	sext.w	a0,a0
   18e44:	00008067          	ret

0000000000018e48 <close>:
   18e48:	00000593          	li	a1,0
   18e4c:	00000613          	li	a2,0
   18e50:	00000693          	li	a3,0
   18e54:	03900893          	li	a7,57
   18e58:	00000073          	ecall
   18e5c:	ea054ee3          	bltz	a0,18d18 <__syscall_error>
   18e60:	0005051b          	sext.w	a0,a0
   18e64:	00008067          	ret

0000000000018e68 <link>:
   18e68:	00000613          	li	a2,0
   18e6c:	00000693          	li	a3,0
   18e70:	40100893          	li	a7,1025
   18e74:	00000073          	ecall
   18e78:	ea0540e3          	bltz	a0,18d18 <__syscall_error>
   18e7c:	0005051b          	sext.w	a0,a0
   18e80:	00008067          	ret

0000000000018e84 <unlink>:
   18e84:	00000593          	li	a1,0
   18e88:	00000613          	li	a2,0
   18e8c:	00000693          	li	a3,0
   18e90:	40200893          	li	a7,1026
   18e94:	00000073          	ecall
   18e98:	e80540e3          	bltz	a0,18d18 <__syscall_error>
   18e9c:	0005051b          	sext.w	a0,a0
   18ea0:	00008067          	ret

0000000000018ea4 <execve>:
   18ea4:	ff010113          	addi	sp,sp,-16
   18ea8:	00113423          	sd	ra,8(sp)
   18eac:	23c000ef          	jal	190e8 <__errno>
   18eb0:	00813083          	ld	ra,8(sp)
   18eb4:	00c00793          	li	a5,12
   18eb8:	00f52023          	sw	a5,0(a0)
   18ebc:	01010113          	addi	sp,sp,16
   18ec0:	fff00513          	li	a0,-1
   18ec4:	00008067          	ret

0000000000018ec8 <fork>:
   18ec8:	ff010113          	addi	sp,sp,-16
   18ecc:	00113423          	sd	ra,8(sp)
   18ed0:	218000ef          	jal	190e8 <__errno>
   18ed4:	00813083          	ld	ra,8(sp)
   18ed8:	00b00793          	li	a5,11
   18edc:	00f52023          	sw	a5,0(a0)
   18ee0:	01010113          	addi	sp,sp,16
   18ee4:	fff00513          	li	a0,-1
   18ee8:	00008067          	ret

0000000000018eec <getpid>:
   18eec:	00100513          	li	a0,1
   18ef0:	00008067          	ret

0000000000018ef4 <kill>:
   18ef4:	ff010113          	addi	sp,sp,-16
   18ef8:	00113423          	sd	ra,8(sp)
   18efc:	1ec000ef          	jal	190e8 <__errno>
   18f00:	00813083          	ld	ra,8(sp)
   18f04:	01600793          	li	a5,22
   18f08:	00f52023          	sw	a5,0(a0)
   18f0c:	01010113          	addi	sp,sp,16
   18f10:	fff00513          	li	a0,-1
   18f14:	00008067          	ret

0000000000018f18 <wait>:
   18f18:	ff010113          	addi	sp,sp,-16
   18f1c:	00113423          	sd	ra,8(sp)
   18f20:	1c8000ef          	jal	190e8 <__errno>
   18f24:	00813083          	ld	ra,8(sp)
   18f28:	00a00793          	li	a5,10
   18f2c:	00f52023          	sw	a5,0(a0)
   18f30:	01010113          	addi	sp,sp,16
   18f34:	fff00513          	li	a0,-1
   18f38:	00008067          	ret

0000000000018f3c <isatty>:
   18f3c:	f8010113          	addi	sp,sp,-128
   18f40:	00010593          	mv	a1,sp
   18f44:	00000613          	li	a2,0
   18f48:	00000693          	li	a3,0
   18f4c:	05000893          	li	a7,80
   18f50:	00000073          	ecall
   18f54:	dc0542e3          	bltz	a0,18d18 <__syscall_error>
   18f58:	fff00793          	li	a5,-1
   18f5c:	0005051b          	sext.w	a0,a0
   18f60:	00f50863          	beq	a0,a5,18f70 <isatty+0x34>
   18f64:	01012503          	lw	a0,16(sp)
   18f68:	40d5551b          	sraiw	a0,a0,0xd
   18f6c:	00157513          	andi	a0,a0,1
   18f70:	08010113          	addi	sp,sp,128
   18f74:	00008067          	ret

0000000000018f78 <times>:
   18f78:	93018313          	addi	t1,gp,-1744 # 1b8f0 <t0.2343>
   18f7c:	00033703          	ld	a4,0(t1)
   18f80:	ff010113          	addi	sp,sp,-16
   18f84:	00050813          	mv	a6,a0
   18f88:	02071063          	bnez	a4,18fa8 <times+0x30>
   18f8c:	93018513          	addi	a0,gp,-1744 # 1b8f0 <t0.2343>
   18f90:	00000593          	li	a1,0
   18f94:	00000613          	li	a2,0
   18f98:	00000693          	li	a3,0
   18f9c:	0a900893          	li	a7,169
   18fa0:	00000073          	ecall
   18fa4:	d6054ae3          	bltz	a0,18d18 <__syscall_error>
   18fa8:	00010513          	mv	a0,sp
   18fac:	00000593          	li	a1,0
   18fb0:	00000613          	li	a2,0
   18fb4:	00000693          	li	a3,0
   18fb8:	0a900893          	li	a7,169
   18fbc:	00000073          	ecall
   18fc0:	d4054ce3          	bltz	a0,18d18 <__syscall_error>
   18fc4:	00033703          	ld	a4,0(t1)
   18fc8:	00013783          	ld	a5,0(sp)
   18fcc:	fff00513          	li	a0,-1
   18fd0:	00083823          	sd	zero,16(a6)
   18fd4:	40e786b3          	sub	a3,a5,a4
   18fd8:	000f47b7          	lui	a5,0xf4
   18fdc:	24078793          	addi	a5,a5,576 # f4240 <_gp+0xd8280>
   18fe0:	02f68733          	mul	a4,a3,a5
   18fe4:	00833683          	ld	a3,8(t1)
   18fe8:	00813783          	ld	a5,8(sp)
   18fec:	00083c23          	sd	zero,24(a6)
   18ff0:	00083423          	sd	zero,8(a6)
   18ff4:	40d787b3          	sub	a5,a5,a3
   18ff8:	01010113          	addi	sp,sp,16
   18ffc:	00f707b3          	add	a5,a4,a5
   19000:	00f83023          	sd	a5,0(a6)
   19004:	00008067          	ret

0000000000019008 <gettimeofday>:
   19008:	00000593          	li	a1,0
   1900c:	00000613          	li	a2,0
   19010:	00000693          	li	a3,0
   19014:	0a900893          	li	a7,169
   19018:	00000073          	ecall
   1901c:	ce054ee3          	bltz	a0,18d18 <__syscall_error>
   19020:	0005051b          	sext.w	a0,a0
   19024:	00008067          	ret

0000000000019028 <ftime>:
   19028:	00051423          	sh	zero,8(a0)
   1902c:	00053023          	sd	zero,0(a0)
   19030:	00000513          	li	a0,0
   19034:	00008067          	ret

0000000000019038 <utime>:
   19038:	fff00513          	li	a0,-1
   1903c:	00008067          	ret

0000000000019040 <chown>:
   19040:	fff00513          	li	a0,-1
   19044:	00008067          	ret

0000000000019048 <chmod>:
   19048:	fff00513          	li	a0,-1
   1904c:	00008067          	ret

0000000000019050 <chdir>:
   19050:	fff00513          	li	a0,-1
   19054:	00008067          	ret

0000000000019058 <getcwd>:
   19058:	00000513          	li	a0,0
   1905c:	00008067          	ret

0000000000019060 <sysconf>:
   19060:	00200793          	li	a5,2
   19064:	00f51863          	bne	a0,a5,19074 <sysconf+0x14>
   19068:	000f4537          	lui	a0,0xf4
   1906c:	24050513          	addi	a0,a0,576 # f4240 <_gp+0xd8280>
   19070:	00008067          	ret
   19074:	fff00513          	li	a0,-1
   19078:	00008067          	ret

000000000001907c <sbrk>:
   1907c:	8c81b703          	ld	a4,-1848(gp) # 1b888 <heap_end.2381>
   19080:	00050793          	mv	a5,a0
   19084:	00071663          	bnez	a4,19090 <sbrk+0x14>
   19088:	94018713          	addi	a4,gp,-1728 # 1b900 <_end>
   1908c:	8ce1b423          	sd	a4,-1848(gp) # 1b888 <heap_end.2381>
   19090:	00e78533          	add	a0,a5,a4
   19094:	00000593          	li	a1,0
   19098:	00000613          	li	a2,0
   1909c:	00000693          	li	a3,0
   190a0:	0d600893          	li	a7,214
   190a4:	00000073          	ecall
   190a8:	c60548e3          	bltz	a0,18d18 <__syscall_error>
   190ac:	8c81b683          	ld	a3,-1848(gp) # 1b888 <heap_end.2381>
   190b0:	fff00713          	li	a4,-1
   190b4:	00d787b3          	add	a5,a5,a3
   190b8:	00f51663          	bne	a0,a5,190c4 <sbrk+0x48>
   190bc:	8ca1b423          	sd	a0,-1848(gp) # 1b888 <heap_end.2381>
   190c0:	00068713          	mv	a4,a3
   190c4:	00070513          	mv	a0,a4
   190c8:	00008067          	ret

00000000000190cc <_exit>:
   190cc:	00000593          	li	a1,0
   190d0:	00000613          	li	a2,0
   190d4:	00000693          	li	a3,0
   190d8:	05d00893          	li	a7,93
   190dc:	00000073          	ecall
   190e0:	c2054ce3          	bltz	a0,18d18 <__syscall_error>
   190e4:	0000006f          	j	190e4 <_exit+0x18>

00000000000190e8 <__errno>:
   190e8:	8101b503          	ld	a0,-2032(gp) # 1b7d0 <_impure_ptr>
   190ec:	00008067          	ret
