
op_float:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010000 <_ftext>:
   10000:	0000e197          	auipc	gp,0xe
   10004:	f0018193          	addi	gp,gp,-256 # 1df00 <_gp>
   10008:	0000d297          	auipc	t0,0xd
   1000c:	7c828293          	addi	t0,t0,1992 # 1d7d0 <_PathLocale>
   10010:	0000e317          	auipc	t1,0xe
   10014:	86030313          	addi	t1,t1,-1952 # 1d870 <_end>
   10018:	0002b023          	sd	zero,0(t0)
   1001c:	00828293          	addi	t0,t0,8
   10020:	fe62ece3          	bltu	t0,t1,10018 <_ftext+0x18>
   10024:	00000517          	auipc	a0,0x0
   10028:	2e850513          	addi	a0,a0,744 # 1030c <__libc_fini_array>
   1002c:	294000ef          	jal	102c0 <atexit>
   10030:	338000ef          	jal	10368 <__libc_init_array>
   10034:	00012503          	lw	a0,0(sp)
   10038:	00810593          	addi	a1,sp,8
   1003c:	00000613          	li	a2,0
   10040:	124000ef          	jal	10164 <main>
   10044:	2980006f          	j	102dc <exit>

0000000000010048 <_fini>:
   10048:	00008067          	ret

000000000001004c <deregister_tm_clones>:
   1004c:	0001d537          	lui	a0,0x1d
   10050:	0001d7b7          	lui	a5,0x1d
   10054:	6f850713          	addi	a4,a0,1784 # 1d6f8 <__TMC_END__>
   10058:	6ff78793          	addi	a5,a5,1791 # 1d6ff <__TMC_END__+0x7>
   1005c:	40e787b3          	sub	a5,a5,a4
   10060:	00e00713          	li	a4,14
   10064:	00f77c63          	bleu	a5,a4,1007c <deregister_tm_clones+0x30>
   10068:	00000337          	lui	t1,0x0
   1006c:	00030313          	mv	t1,t1
   10070:	00030663          	beqz	t1,1007c <deregister_tm_clones+0x30>
   10074:	6f850513          	addi	a0,a0,1784
   10078:	00030067          	jr	t1
   1007c:	00008067          	ret

0000000000010080 <register_tm_clones>:
   10080:	0001d537          	lui	a0,0x1d
   10084:	0001d7b7          	lui	a5,0x1d
   10088:	6f850593          	addi	a1,a0,1784 # 1d6f8 <__TMC_END__>
   1008c:	6f878793          	addi	a5,a5,1784 # 1d6f8 <__TMC_END__>
   10090:	40b787b3          	sub	a5,a5,a1
   10094:	4037d793          	srai	a5,a5,0x3
   10098:	03f7d593          	srli	a1,a5,0x3f
   1009c:	00f585b3          	add	a1,a1,a5
   100a0:	4015d593          	srai	a1,a1,0x1
   100a4:	00058c63          	beqz	a1,100bc <register_tm_clones+0x3c>
   100a8:	00000337          	lui	t1,0x0
   100ac:	00030313          	mv	t1,t1
   100b0:	00030663          	beqz	t1,100bc <register_tm_clones+0x3c>
   100b4:	6f850513          	addi	a0,a0,1784
   100b8:	00030067          	jr	t1
   100bc:	00008067          	ret

00000000000100c0 <__do_global_dtors_aux>:
   100c0:	ff010113          	addi	sp,sp,-16
   100c4:	00813023          	sd	s0,0(sp)
   100c8:	9001c783          	lbu	a5,-1792(gp) # 1d800 <_bss_start>
   100cc:	00113423          	sd	ra,8(sp)
   100d0:	02079663          	bnez	a5,100fc <__do_global_dtors_aux+0x3c>
   100d4:	f79ff0ef          	jal	1004c <deregister_tm_clones>
   100d8:	000007b7          	lui	a5,0x0
   100dc:	00078793          	mv	a5,a5
   100e0:	00078a63          	beqz	a5,100f4 <__do_global_dtors_aux+0x34>
   100e4:	0001b537          	lui	a0,0x1b
   100e8:	55850513          	addi	a0,a0,1368 # 1b558 <__fini_array_end>
   100ec:	ffff0317          	auipc	t1,0xffff0
   100f0:	f14300e7          	jalr	t1,-236 # 0 <_ftext-0x10000>
   100f4:	00100793          	li	a5,1
   100f8:	90f18023          	sb	a5,-1792(gp) # 1d800 <_bss_start>
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
   10120:	0001b537          	lui	a0,0x1b
   10124:	90818593          	addi	a1,gp,-1784 # 1d808 <object.3092>
   10128:	55850513          	addi	a0,a0,1368 # 1b558 <__fini_array_end>
   1012c:	ffff0317          	auipc	t1,0xffff0
   10130:	ed4300e7          	jalr	t1,-300 # 0 <_ftext-0x10000>
   10134:	0001c7b7          	lui	a5,0x1c
   10138:	6f878513          	addi	a0,a5,1784 # 1c6f8 <__JCR_END__>
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
   1018c:	148000ef          	jal	102d4 <atof>
   10190:	22a507d3          	fmv.d	fa5,fa0
   10194:	4017f7d3          	fcvt.s.d	fa5,fa5
   10198:	fef42427          	fsw	fa5,-24(s0)
   1019c:	fd043783          	ld	a5,-48(s0)
   101a0:	01078793          	addi	a5,a5,16
   101a4:	0007b783          	ld	a5,0(a5)
   101a8:	0007c783          	lbu	a5,0(a5)
   101ac:	fef403a3          	sb	a5,-25(s0)
   101b0:	fd043783          	ld	a5,-48(s0)
   101b4:	01878793          	addi	a5,a5,24
   101b8:	0007b783          	ld	a5,0(a5)
   101bc:	00078513          	mv	a0,a5
   101c0:	114000ef          	jal	102d4 <atof>
   101c4:	22a507d3          	fmv.d	fa5,fa0
   101c8:	4017f7d3          	fcvt.s.d	fa5,fa5
   101cc:	fef42027          	fsw	fa5,-32(s0)
   101d0:	fe744783          	lbu	a5,-25(s0)
   101d4:	02b00713          	li	a4,43
   101d8:	02e78663          	beq	a5,a4,10204 <main+0xa0>
   101dc:	02b00713          	li	a4,43
   101e0:	00f74863          	blt	a4,a5,101f0 <main+0x8c>
   101e4:	02a00713          	li	a4,42
   101e8:	04e78263          	beq	a5,a4,1022c <main+0xc8>
   101ec:	0680006f          	j	10254 <main+0xf0>
   101f0:	02d00713          	li	a4,45
   101f4:	02e78263          	beq	a5,a4,10218 <main+0xb4>
   101f8:	02f00713          	li	a4,47
   101fc:	04e78263          	beq	a5,a4,10240 <main+0xdc>
   10200:	0540006f          	j	10254 <main+0xf0>
   10204:	fe842707          	flw	fa4,-24(s0)
   10208:	fe042787          	flw	fa5,-32(s0)
   1020c:	00f777d3          	fadd.s	fa5,fa4,fa5
   10210:	fef42627          	fsw	fa5,-20(s0)
   10214:	05c0006f          	j	10270 <main+0x10c>
   10218:	fe842707          	flw	fa4,-24(s0)
   1021c:	fe042787          	flw	fa5,-32(s0)
   10220:	08f777d3          	fsub.s	fa5,fa4,fa5
   10224:	fef42627          	fsw	fa5,-20(s0)
   10228:	0480006f          	j	10270 <main+0x10c>
   1022c:	fe842707          	flw	fa4,-24(s0)
   10230:	fe042787          	flw	fa5,-32(s0)
   10234:	10f777d3          	fmul.s	fa5,fa4,fa5
   10238:	fef42627          	fsw	fa5,-20(s0)
   1023c:	0340006f          	j	10270 <main+0x10c>
   10240:	fe842707          	flw	fa4,-24(s0)
   10244:	fe042787          	flw	fa5,-32(s0)
   10248:	18f777d3          	fdiv.s	fa5,fa4,fa5
   1024c:	fef42627          	fsw	fa5,-20(s0)
   10250:	0200006f          	j	10270 <main+0x10c>
   10254:	fe744783          	lbu	a5,-25(s0)
   10258:	00078593          	mv	a1,a5
   1025c:	0001b7b7          	lui	a5,0x1b
   10260:	e1078513          	addi	a0,a5,-496 # 1ae10 <sulp+0x6c>
   10264:	1e8000ef          	jal	1044c <printf>
   10268:	00100793          	li	a5,1
   1026c:	0400006f          	j	102ac <main+0x148>
   10270:	fe842787          	flw	fa5,-24(s0)
   10274:	42078753          	fcvt.d.s	fa4,fa5
   10278:	fe744783          	lbu	a5,-25(s0)
   1027c:	fe042787          	flw	fa5,-32(s0)
   10280:	420786d3          	fcvt.d.s	fa3,fa5
   10284:	fec42787          	flw	fa5,-20(s0)
   10288:	420787d3          	fcvt.d.s	fa5,fa5
   1028c:	e2078753          	fmv.x.d	a4,fa5
   10290:	e20686d3          	fmv.x.d	a3,fa3
   10294:	00078613          	mv	a2,a5
   10298:	e20705d3          	fmv.x.d	a1,fa4
   1029c:	0001b7b7          	lui	a5,0x1b
   102a0:	e2878513          	addi	a0,a5,-472 # 1ae28 <sulp+0x84>
   102a4:	1a8000ef          	jal	1044c <printf>
   102a8:	00000793          	li	a5,0
   102ac:	00078513          	mv	a0,a5
   102b0:	02813083          	ld	ra,40(sp)
   102b4:	02013403          	ld	s0,32(sp)
   102b8:	03010113          	addi	sp,sp,48
   102bc:	00008067          	ret

00000000000102c0 <atexit>:
   102c0:	00050593          	mv	a1,a0
   102c4:	00000693          	li	a3,0
   102c8:	00000613          	li	a2,0
   102cc:	00000513          	li	a0,0
   102d0:	3900306f          	j	13660 <__register_exitproc>

00000000000102d4 <atof>:
   102d4:	00000593          	li	a1,0
   102d8:	4680106f          	j	11740 <strtod>

00000000000102dc <exit>:
   102dc:	ff010113          	addi	sp,sp,-16
   102e0:	00000593          	li	a1,0
   102e4:	00813023          	sd	s0,0(sp)
   102e8:	00113423          	sd	ra,8(sp)
   102ec:	00050413          	mv	s0,a0
   102f0:	484030ef          	jal	13774 <__call_exitprocs>
   102f4:	8081b503          	ld	a0,-2040(gp) # 1d708 <_global_impure_ptr>
   102f8:	05853783          	ld	a5,88(a0)
   102fc:	00078463          	beqz	a5,10304 <exit+0x28>
   10300:	000780e7          	jalr	a5
   10304:	00040513          	mv	a0,s0
   10308:	2790a0ef          	jal	1ad80 <_exit>

000000000001030c <__libc_fini_array>:
   1030c:	fe010113          	addi	sp,sp,-32
   10310:	00813823          	sd	s0,16(sp)
   10314:	00913423          	sd	s1,8(sp)
   10318:	0001b437          	lui	s0,0x1b
   1031c:	0001b4b7          	lui	s1,0x1b
   10320:	55048493          	addi	s1,s1,1360 # 1b550 <__init_array_end>
   10324:	55840413          	addi	s0,s0,1368 # 1b558 <__fini_array_end>
   10328:	40940433          	sub	s0,s0,s1
   1032c:	ff840793          	addi	a5,s0,-8
   10330:	00113c23          	sd	ra,24(sp)
   10334:	40345413          	srai	s0,s0,0x3
   10338:	009784b3          	add	s1,a5,s1
   1033c:	00040c63          	beqz	s0,10354 <__libc_fini_array+0x48>
   10340:	0004b783          	ld	a5,0(s1)
   10344:	fff40413          	addi	s0,s0,-1
   10348:	ff848493          	addi	s1,s1,-8
   1034c:	000780e7          	jalr	a5
   10350:	fe0418e3          	bnez	s0,10340 <__libc_fini_array+0x34>
   10354:	01813083          	ld	ra,24(sp)
   10358:	01013403          	ld	s0,16(sp)
   1035c:	00813483          	ld	s1,8(sp)
   10360:	02010113          	addi	sp,sp,32
   10364:	ce5ff06f          	j	10048 <_fini>

0000000000010368 <__libc_init_array>:
   10368:	fe010113          	addi	sp,sp,-32
   1036c:	00813823          	sd	s0,16(sp)
   10370:	0001b7b7          	lui	a5,0x1b
   10374:	0001b437          	lui	s0,0x1b
   10378:	01213023          	sd	s2,0(sp)
   1037c:	54878793          	addi	a5,a5,1352 # 1b548 <_etext>
   10380:	54840913          	addi	s2,s0,1352 # 1b548 <_etext>
   10384:	41278933          	sub	s2,a5,s2
   10388:	00913423          	sd	s1,8(sp)
   1038c:	00113c23          	sd	ra,24(sp)
   10390:	40395913          	srai	s2,s2,0x3
   10394:	54840413          	addi	s0,s0,1352
   10398:	00000493          	li	s1,0
   1039c:	00090c63          	beqz	s2,103b4 <__libc_init_array+0x4c>
   103a0:	00043783          	ld	a5,0(s0)
   103a4:	00148493          	addi	s1,s1,1
   103a8:	00840413          	addi	s0,s0,8
   103ac:	000780e7          	jalr	a5
   103b0:	fe9918e3          	bne	s2,s1,103a0 <__libc_init_array+0x38>
   103b4:	c95ff0ef          	jal	10048 <_fini>
   103b8:	0001b437          	lui	s0,0x1b
   103bc:	0001b7b7          	lui	a5,0x1b
   103c0:	54840913          	addi	s2,s0,1352 # 1b548 <_etext>
   103c4:	55078793          	addi	a5,a5,1360 # 1b550 <__init_array_end>
   103c8:	41278933          	sub	s2,a5,s2
   103cc:	40395913          	srai	s2,s2,0x3
   103d0:	54840413          	addi	s0,s0,1352
   103d4:	00000493          	li	s1,0
   103d8:	00090c63          	beqz	s2,103f0 <__libc_init_array+0x88>
   103dc:	00043783          	ld	a5,0(s0)
   103e0:	00148493          	addi	s1,s1,1
   103e4:	00840413          	addi	s0,s0,8
   103e8:	000780e7          	jalr	a5
   103ec:	fe9918e3          	bne	s2,s1,103dc <__libc_init_array+0x74>
   103f0:	01813083          	ld	ra,24(sp)
   103f4:	01013403          	ld	s0,16(sp)
   103f8:	00813483          	ld	s1,8(sp)
   103fc:	00013903          	ld	s2,0(sp)
   10400:	02010113          	addi	sp,sp,32
   10404:	00008067          	ret

0000000000010408 <_printf_r>:
   10408:	fb010113          	addi	sp,sp,-80
   1040c:	02c13023          	sd	a2,32(sp)
   10410:	02d13423          	sd	a3,40(sp)
   10414:	02f13c23          	sd	a5,56(sp)
   10418:	02e13823          	sd	a4,48(sp)
   1041c:	05013023          	sd	a6,64(sp)
   10420:	05113423          	sd	a7,72(sp)
   10424:	00058613          	mv	a2,a1
   10428:	01053583          	ld	a1,16(a0)
   1042c:	02010793          	addi	a5,sp,32
   10430:	00078693          	mv	a3,a5
   10434:	00113c23          	sd	ra,24(sp)
   10438:	00f13423          	sd	a5,8(sp)
   1043c:	364010ef          	jal	117a0 <_vfprintf_r>
   10440:	01813083          	ld	ra,24(sp)
   10444:	05010113          	addi	sp,sp,80
   10448:	00008067          	ret

000000000001044c <printf>:
   1044c:	8101b303          	ld	t1,-2032(gp) # 1d710 <_impure_ptr>
   10450:	fa010113          	addi	sp,sp,-96
   10454:	02c13823          	sd	a2,48(sp)
   10458:	02d13c23          	sd	a3,56(sp)
   1045c:	04f13423          	sd	a5,72(sp)
   10460:	02b13423          	sd	a1,40(sp)
   10464:	04e13023          	sd	a4,64(sp)
   10468:	05013823          	sd	a6,80(sp)
   1046c:	05113c23          	sd	a7,88(sp)
   10470:	01033583          	ld	a1,16(t1)
   10474:	02810793          	addi	a5,sp,40
   10478:	00050613          	mv	a2,a0
   1047c:	00078693          	mv	a3,a5
   10480:	00030513          	mv	a0,t1
   10484:	00113c23          	sd	ra,24(sp)
   10488:	00f13423          	sd	a5,8(sp)
   1048c:	314010ef          	jal	117a0 <_vfprintf_r>
   10490:	01813083          	ld	ra,24(sp)
   10494:	06010113          	addi	sp,sp,96
   10498:	00008067          	ret

000000000001049c <_strtod_r>:
   1049c:	f0010113          	addi	sp,sp,-256
   104a0:	0e813823          	sd	s0,240(sp)
   104a4:	0f213023          	sd	s2,224(sp)
   104a8:	0d313c23          	sd	s3,216(sp)
   104ac:	0b713c23          	sd	s7,184(sp)
   104b0:	0b913423          	sd	s9,168(sp)
   104b4:	0e113c23          	sd	ra,248(sp)
   104b8:	0e913423          	sd	s1,232(sp)
   104bc:	0d413823          	sd	s4,208(sp)
   104c0:	0d513423          	sd	s5,200(sp)
   104c4:	0d613023          	sd	s6,192(sp)
   104c8:	0b813823          	sd	s8,176(sp)
   104cc:	0ba13023          	sd	s10,160(sp)
   104d0:	09b13c23          	sd	s11,152(sp)
   104d4:	08813427          	fsd	fs0,136(sp)
   104d8:	08913027          	fsd	fs1,128(sp)
   104dc:	07213c27          	fsd	fs2,120(sp)
   104e0:	07313827          	fsd	fs3,112(sp)
   104e4:	07413427          	fsd	fs4,104(sp)
   104e8:	07513027          	fsd	fs5,96(sp)
   104ec:	05613c27          	fsd	fs6,88(sp)
   104f0:	05713827          	fsd	fs7,80(sp)
   104f4:	04013023          	sd	zero,64(sp)
   104f8:	02b13c23          	sd	a1,56(sp)
   104fc:	00058b93          	mv	s7,a1
   10500:	000bc783          	lbu	a5,0(s7)
   10504:	00060993          	mv	s3,a2
   10508:	0001b6b7          	lui	a3,0x1b
   1050c:	02d00613          	li	a2,45
   10510:	00058c93          	mv	s9,a1
   10514:	00050413          	mv	s0,a0
   10518:	00000913          	li	s2,0
   1051c:	e3868693          	addi	a3,a3,-456 # 1ae38 <sulp+0x94>
   10520:	28f66e63          	bltu	a2,a5,107bc <_strtod_r+0x320>
   10524:	00279713          	slli	a4,a5,0x2
   10528:	00d70733          	add	a4,a4,a3
   1052c:	00072703          	lw	a4,0(a4)
   10530:	00070067          	jr	a4
   10534:	00000a93          	li	s5,0
   10538:	001b8713          	addi	a4,s7,1
   1053c:	02e13c23          	sd	a4,56(sp)
   10540:	001bc783          	lbu	a5,1(s7)
   10544:	1c078e63          	beqz	a5,10720 <_strtod_r+0x284>
   10548:	00070b93          	mv	s7,a4
   1054c:	03000713          	li	a4,48
   10550:	000b8a13          	mv	s4,s7
   10554:	00000b13          	li	s6,0
   10558:	26e78c63          	beq	a5,a4,107d0 <_strtod_r+0x334>
   1055c:	fd07871b          	addiw	a4,a5,-48
   10560:	0ff77713          	andi	a4,a4,255
   10564:	00900513          	li	a0,9
   10568:	40e566e3          	bltu	a0,a4,11174 <_strtod_r+0xcd8>
   1056c:	001a0593          	addi	a1,s4,1
   10570:	00000d93          	li	s11,0
   10574:	00000d13          	li	s10,0
   10578:	00000c13          	li	s8,0
   1057c:	00800813          	li	a6,8
   10580:	29884663          	blt	a6,s8,1080c <_strtod_r+0x370>
   10584:	001d161b          	slliw	a2,s10,0x1
   10588:	003d171b          	slliw	a4,s10,0x3
   1058c:	00e6073b          	addw	a4,a2,a4
   10590:	00f7073b          	addw	a4,a4,a5
   10594:	fd070d1b          	addiw	s10,a4,-48
   10598:	02b13c23          	sd	a1,56(sp)
   1059c:	0005c783          	lbu	a5,0(a1)
   105a0:	00058913          	mv	s2,a1
   105a4:	001c0c1b          	addiw	s8,s8,1
   105a8:	fd07869b          	addiw	a3,a5,-48
   105ac:	0ff6f693          	andi	a3,a3,255
   105b0:	00158593          	addi	a1,a1,1
   105b4:	fcd576e3          	bleu	a3,a0,10580 <_strtod_r+0xe4>
   105b8:	00078493          	mv	s1,a5
   105bc:	00040513          	mv	a0,s0
   105c0:	5a5050ef          	jal	16364 <_localeconv_r>
   105c4:	00053b83          	ld	s7,0(a0)
   105c8:	00040513          	mv	a0,s0
   105cc:	599050ef          	jal	16364 <_localeconv_r>
   105d0:	00053503          	ld	a0,0(a0)
   105d4:	525070ef          	jal	182f8 <strlen>
   105d8:	00050613          	mv	a2,a0
   105dc:	000b8593          	mv	a1,s7
   105e0:	00090513          	mv	a0,s2
   105e4:	5e5070ef          	jal	183c8 <strncmp>
   105e8:	32050e63          	beqz	a0,10924 <_strtod_r+0x488>
   105ec:	000c0693          	mv	a3,s8
   105f0:	00000613          	li	a2,0
   105f4:	00000593          	li	a1,0
   105f8:	00000513          	li	a0,0
   105fc:	fdf4f793          	andi	a5,s1,-33
   10600:	04500713          	li	a4,69
   10604:	00000b93          	li	s7,0
   10608:	10e79463          	bne	a5,a4,10710 <_strtod_r+0x274>
   1060c:	00c6e7b3          	or	a5,a3,a2
   10610:	0167e7b3          	or	a5,a5,s6
   10614:	10078663          	beqz	a5,10720 <_strtod_r+0x284>
   10618:	03813c83          	ld	s9,56(sp)
   1061c:	02b00713          	li	a4,43
   10620:	001c8793          	addi	a5,s9,1
   10624:	02f13c23          	sd	a5,56(sp)
   10628:	001cc783          	lbu	a5,1(s9)
   1062c:	22e780e3          	beq	a5,a4,1104c <_strtod_r+0xbb0>
   10630:	02d00713          	li	a4,45
   10634:	04e78ce3          	beq	a5,a4,10e8c <_strtod_r+0x9f0>
   10638:	00078493          	mv	s1,a5
   1063c:	00000893          	li	a7,0
   10640:	fd04879b          	addiw	a5,s1,-48
   10644:	00900813          	li	a6,9
   10648:	00048713          	mv	a4,s1
   1064c:	12f860e3          	bltu	a6,a5,10f6c <_strtod_r+0xad0>
   10650:	03000793          	li	a5,48
   10654:	02f49263          	bne	s1,a5,10678 <_strtod_r+0x1dc>
   10658:	03813783          	ld	a5,56(sp)
   1065c:	00048813          	mv	a6,s1
   10660:	00178793          	addi	a5,a5,1
   10664:	02f13c23          	sd	a5,56(sp)
   10668:	0007c703          	lbu	a4,0(a5)
   1066c:	00178793          	addi	a5,a5,1
   10670:	00070493          	mv	s1,a4
   10674:	ff0708e3          	beq	a4,a6,10664 <_strtod_r+0x1c8>
   10678:	fcf7071b          	addiw	a4,a4,-49
   1067c:	00800793          	li	a5,8
   10680:	00000b93          	li	s7,0
   10684:	08e7e663          	bltu	a5,a4,10710 <_strtod_r+0x274>
   10688:	03813f03          	ld	t5,56(sp)
   1068c:	fd04879b          	addiw	a5,s1,-48
   10690:	00900e93          	li	t4,9
   10694:	001f0e13          	addi	t3,t5,1
   10698:	03c13c23          	sd	t3,56(sp)
   1069c:	001f4483          	lbu	s1,1(t5)
   106a0:	fd04871b          	addiw	a4,s1,-48
   106a4:	0ff77713          	andi	a4,a4,255
   106a8:	02eeee63          	bltu	t4,a4,106e4 <_strtod_r+0x248>
   106ac:	002f0313          	addi	t1,t5,2
   106b0:	02613c23          	sd	t1,56(sp)
   106b4:	00034803          	lbu	a6,0(t1)
   106b8:	0017971b          	slliw	a4,a5,0x1
   106bc:	0037979b          	slliw	a5,a5,0x3
   106c0:	00f707bb          	addw	a5,a4,a5
   106c4:	fd08071b          	addiw	a4,a6,-48
   106c8:	009787bb          	addw	a5,a5,s1
   106cc:	0ff77713          	andi	a4,a4,255
   106d0:	00030e13          	mv	t3,t1
   106d4:	fd07879b          	addiw	a5,a5,-48
   106d8:	00080493          	mv	s1,a6
   106dc:	00130313          	addi	t1,t1,1
   106e0:	fceef8e3          	bleu	a4,t4,106b0 <_strtod_r+0x214>
   106e4:	00005737          	lui	a4,0x5
   106e8:	41ee0e33          	sub	t3,t3,t5
   106ec:	00800813          	li	a6,8
   106f0:	e1f70b9b          	addiw	s7,a4,-481
   106f4:	01c84a63          	blt	a6,t3,10708 <_strtod_r+0x26c>
   106f8:	e1f7071b          	addiw	a4,a4,-481
   106fc:	00078b93          	mv	s7,a5
   10700:	00f75463          	ble	a5,a4,10708 <_strtod_r+0x26c>
   10704:	00070b93          	mv	s7,a4
   10708:	00088463          	beqz	a7,10710 <_strtod_r+0x274>
   1070c:	41700bbb          	negw	s7,s7
   10710:	10069a63          	bnez	a3,10824 <_strtod_r+0x388>
   10714:	01666b33          	or	s6,a2,s6
   10718:	200b1263          	bnez	s6,1091c <_strtod_r+0x480>
   1071c:	70050a63          	beqz	a0,10e30 <_strtod_r+0x994>
   10720:	00000493          	li	s1,0
   10724:	00000a93          	li	s5,0
   10728:	00098663          	beqz	s3,10734 <_strtod_r+0x298>
   1072c:	0199b023          	sd	s9,0(s3)
   10730:	060a9263          	bnez	s5,10794 <_strtod_r+0x2f8>
   10734:	0f813083          	ld	ra,248(sp)
   10738:	f2048553          	fmv.d.x	fa0,s1
   1073c:	0f013403          	ld	s0,240(sp)
   10740:	0e813483          	ld	s1,232(sp)
   10744:	0e013903          	ld	s2,224(sp)
   10748:	0d813983          	ld	s3,216(sp)
   1074c:	0d013a03          	ld	s4,208(sp)
   10750:	0c813a83          	ld	s5,200(sp)
   10754:	0c013b03          	ld	s6,192(sp)
   10758:	0b813b83          	ld	s7,184(sp)
   1075c:	0b013c03          	ld	s8,176(sp)
   10760:	0a813c83          	ld	s9,168(sp)
   10764:	0a013d03          	ld	s10,160(sp)
   10768:	09813d83          	ld	s11,152(sp)
   1076c:	08813407          	fld	fs0,136(sp)
   10770:	08013487          	fld	fs1,128(sp)
   10774:	07813907          	fld	fs2,120(sp)
   10778:	07013987          	fld	fs3,112(sp)
   1077c:	06813a07          	fld	fs4,104(sp)
   10780:	06013a87          	fld	fs5,96(sp)
   10784:	05813b07          	fld	fs6,88(sp)
   10788:	05013b87          	fld	fs7,80(sp)
   1078c:	10010113          	addi	sp,sp,256
   10790:	00008067          	ret
   10794:	f20487d3          	fmv.d.x	fa5,s1
   10798:	22f797d3          	fneg.d	fa5,fa5
   1079c:	e20784d3          	fmv.x.d	s1,fa5
   107a0:	f95ff06f          	j	10734 <_strtod_r+0x298>
   107a4:	00100a93          	li	s5,1
   107a8:	d91ff06f          	j	10538 <_strtod_r+0x9c>
   107ac:	001b8b93          	addi	s7,s7,1
   107b0:	03713c23          	sd	s7,56(sp)
   107b4:	000bc783          	lbu	a5,0(s7)
   107b8:	d6f676e3          	bleu	a5,a2,10524 <_strtod_r+0x88>
   107bc:	03000713          	li	a4,48
   107c0:	00000a93          	li	s5,0
   107c4:	000b8a13          	mv	s4,s7
   107c8:	00000b13          	li	s6,0
   107cc:	d8e798e3          	bne	a5,a4,1055c <_strtod_r+0xc0>
   107d0:	001bc703          	lbu	a4,1(s7)
   107d4:	05800693          	li	a3,88
   107d8:	7ad70063          	beq	a4,a3,10f78 <_strtod_r+0xadc>
   107dc:	07800693          	li	a3,120
   107e0:	78d70c63          	beq	a4,a3,10f78 <_strtod_r+0xadc>
   107e4:	001b8713          	addi	a4,s7,1
   107e8:	00070a13          	mv	s4,a4
   107ec:	02e13c23          	sd	a4,56(sp)
   107f0:	00170713          	addi	a4,a4,1 # 5001 <_ftext-0xafff>
   107f4:	fff74483          	lbu	s1,-1(a4)
   107f8:	fef488e3          	beq	s1,a5,107e8 <_strtod_r+0x34c>
   107fc:	12048063          	beqz	s1,1091c <_strtod_r+0x480>
   10800:	00048793          	mv	a5,s1
   10804:	00100b13          	li	s6,1
   10808:	d55ff06f          	j	1055c <_strtod_r+0xc0>
   1080c:	001d961b          	slliw	a2,s11,0x1
   10810:	003d969b          	slliw	a3,s11,0x3
   10814:	00d606bb          	addw	a3,a2,a3
   10818:	00f687bb          	addw	a5,a3,a5
   1081c:	fd078d9b          	addiw	s11,a5,-48
   10820:	d79ff06f          	j	10598 <_strtod_r+0xfc>
   10824:	40bb8bbb          	subw	s7,s7,a1
   10828:	000c1463          	bnez	s8,10830 <_strtod_r+0x394>
   1082c:	00068c13          	mv	s8,a3
   10830:	01000793          	li	a5,16
   10834:	00068713          	mv	a4,a3
   10838:	00d7d463          	ble	a3,a5,10840 <_strtod_r+0x3a4>
   1083c:	00078713          	mv	a4,a5
   10840:	d21d07d3          	fcvt.d.wu	fa5,s10
   10844:	00900793          	li	a5,9
   10848:	e20785d3          	fmv.x.d	a1,fa5
   1084c:	00058913          	mv	s2,a1
   10850:	02e7d663          	ble	a4,a5,1087c <_strtod_r+0x3e0>
   10854:	ff77079b          	addiw	a5,a4,-9
   10858:	0001b637          	lui	a2,0x1b
   1085c:	00379793          	slli	a5,a5,0x3
   10860:	20060613          	addi	a2,a2,512 # 1b200 <__mprec_tens>
   10864:	00c78633          	add	a2,a5,a2
   10868:	d21d87d3          	fcvt.d.wu	fa5,s11
   1086c:	00063707          	fld	fa4,0(a2)
   10870:	f20586d3          	fmv.d.x	fa3,a1
   10874:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   10878:	e2078953          	fmv.x.d	s2,fa5
   1087c:	00f00793          	li	a5,15
   10880:	10d7c663          	blt	a5,a3,1098c <_strtod_r+0x4f0>
   10884:	080b8863          	beqz	s7,10914 <_strtod_r+0x478>
   10888:	357054e3          	blez	s7,113d0 <_strtod_r+0xf34>
   1088c:	01600613          	li	a2,22
   10890:	29764ce3          	blt	a2,s7,11328 <_strtod_r+0xe8c>
   10894:	0001b737          	lui	a4,0x1b
   10898:	003b9793          	slli	a5,s7,0x3
   1089c:	20070713          	addi	a4,a4,512 # 1b200 <__mprec_tens>
   108a0:	00e787b3          	add	a5,a5,a4
   108a4:	0007b787          	fld	fa5,0(a5)
   108a8:	f2090753          	fmv.d.x	fa4,s2
   108ac:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   108b0:	e20784d3          	fmv.x.d	s1,fa5
   108b4:	e6098ee3          	beqz	s3,10730 <_strtod_r+0x294>
   108b8:	03813c83          	ld	s9,56(sp)
   108bc:	0199b023          	sd	s9,0(s3)
   108c0:	e71ff06f          	j	10730 <_strtod_r+0x294>
   108c4:	0001b737          	lui	a4,0x1b
   108c8:	02d13c23          	sd	a3,56(sp)
   108cc:	00068613          	mv	a2,a3
   108d0:	4b070713          	addi	a4,a4,1200 # 1b4b0 <zeroes.4137+0x20>
   108d4:	01900893          	li	a7,25
   108d8:	00170713          	addi	a4,a4,1
   108dc:	fff74503          	lbu	a0,-1(a4)
   108e0:	00160613          	addi	a2,a2,1
   108e4:	480500e3          	beqz	a0,11564 <_strtod_r+0x10c8>
   108e8:	00064583          	lbu	a1,0(a2)
   108ec:	fbf5879b          	addiw	a5,a1,-65
   108f0:	0ff7f793          	andi	a5,a5,255
   108f4:	00058813          	mv	a6,a1
   108f8:	00f8e463          	bltu	a7,a5,10900 <_strtod_r+0x464>
   108fc:	0205881b          	addiw	a6,a1,32
   10900:	fca80ce3          	beq	a6,a0,108d8 <_strtod_r+0x43c>
   10904:	00168693          	addi	a3,a3,1
   10908:	02d13c23          	sd	a3,56(sp)
   1090c:	7ff00913          	li	s2,2047
   10910:	03491913          	slli	s2,s2,0x34
   10914:	00090493          	mv	s1,s2
   10918:	f9dff06f          	j	108b4 <_strtod_r+0x418>
   1091c:	00000493          	li	s1,0
   10920:	f95ff06f          	j	108b4 <_strtod_r+0x418>
   10924:	00040513          	mv	a0,s0
   10928:	23d050ef          	jal	16364 <_localeconv_r>
   1092c:	00053503          	ld	a0,0(a0)
   10930:	1c9070ef          	jal	182f8 <strlen>
   10934:	03813783          	ld	a5,56(sp)
   10938:	00a78533          	add	a0,a5,a0
   1093c:	02a13c23          	sd	a0,56(sp)
   10940:	00054483          	lbu	s1,0(a0)
   10944:	4a0c1863          	bnez	s8,10df4 <_strtod_r+0x958>
   10948:	03000793          	li	a5,48
   1094c:	2ef494e3          	bne	s1,a5,11434 <_strtod_r+0xf98>
   10950:	00150793          	addi	a5,a0,1
   10954:	00000613          	li	a2,0
   10958:	00048713          	mv	a4,s1
   1095c:	02f13c23          	sd	a5,56(sp)
   10960:	0007c483          	lbu	s1,0(a5)
   10964:	0016061b          	addiw	a2,a2,1
   10968:	00178793          	addi	a5,a5,1
   1096c:	fee488e3          	beq	s1,a4,1095c <_strtod_r+0x4c0>
   10970:	fcf4879b          	addiw	a5,s1,-49
   10974:	00800713          	li	a4,8
   10978:	16f778e3          	bleu	a5,a4,112e8 <_strtod_r+0xe4c>
   1097c:	00000693          	li	a3,0
   10980:	00000593          	li	a1,0
   10984:	00100513          	li	a0,1
   10988:	c75ff06f          	j	105fc <_strtod_r+0x160>
   1098c:	40e6873b          	subw	a4,a3,a4
   10990:	0177073b          	addw	a4,a4,s7
   10994:	70e05a63          	blez	a4,110a8 <_strtod_r+0xc0c>
   10998:	00f77793          	andi	a5,a4,15
   1099c:	02078263          	beqz	a5,109c0 <_strtod_r+0x524>
   109a0:	0001b637          	lui	a2,0x1b
   109a4:	00379793          	slli	a5,a5,0x3
   109a8:	20060613          	addi	a2,a2,512 # 1b200 <__mprec_tens>
   109ac:	00c787b3          	add	a5,a5,a2
   109b0:	f2090753          	fmv.d.x	fa4,s2
   109b4:	0007b787          	fld	fa5,0(a5)
   109b8:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   109bc:	e2078953          	fmv.x.d	s2,fa5
   109c0:	ff077793          	andi	a5,a4,-16
   109c4:	0c078863          	beqz	a5,10a94 <_strtod_r+0x5f8>
   109c8:	13400713          	li	a4,308
   109cc:	4cf74a63          	blt	a4,a5,10ea0 <_strtod_r+0xa04>
   109d0:	4047d79b          	sraiw	a5,a5,0x4
   109d4:	00100513          	li	a0,1
   109d8:	3af55ce3          	ble	a5,a0,11590 <_strtod_r+0x10f4>
   109dc:	0001b737          	lui	a4,0x1b
   109e0:	2f070313          	addi	t1,a4,752 # 1b2f0 <__mprec_bigtens>
   109e4:	00090813          	mv	a6,s2
   109e8:	2f070713          	addi	a4,a4,752
   109ec:	00000893          	li	a7,0
   109f0:	00000613          	li	a2,0
   109f4:	0017f593          	andi	a1,a5,1
   109f8:	00058c63          	beqz	a1,10a10 <_strtod_r+0x574>
   109fc:	f2080753          	fmv.d.x	fa4,a6
   10a00:	00073787          	fld	fa5,0(a4)
   10a04:	00100893          	li	a7,1
   10a08:	12f777d3          	fmul.d	fa5,fa4,fa5
   10a0c:	e2078853          	fmv.x.d	a6,fa5
   10a10:	4017d79b          	sraiw	a5,a5,0x1
   10a14:	0016061b          	addiw	a2,a2,1
   10a18:	00870713          	addi	a4,a4,8
   10a1c:	fca79ce3          	bne	a5,a0,109f4 <_strtod_r+0x558>
   10a20:	500890e3          	bnez	a7,11720 <_strtod_r+0x1284>
   10a24:	00361793          	slli	a5,a2,0x3
   10a28:	42095713          	srai	a4,s2,0x20
   10a2c:	00f30633          	add	a2,t1,a5
   10a30:	fcb007b7          	lui	a5,0xfcb00
   10a34:	00f707bb          	addw	a5,a4,a5
   10a38:	fff00713          	li	a4,-1
   10a3c:	02075713          	srli	a4,a4,0x20
   10a40:	02079793          	slli	a5,a5,0x20
   10a44:	00e97933          	and	s2,s2,a4
   10a48:	00f96933          	or	s2,s2,a5
   10a4c:	00063787          	fld	fa5,0(a2)
   10a50:	f2090753          	fmv.d.x	fa4,s2
   10a54:	7ff007b7          	lui	a5,0x7ff00
   10a58:	7ca005b7          	lui	a1,0x7ca00
   10a5c:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   10a60:	e2078953          	fmv.x.d	s2,fa5
   10a64:	42095613          	srai	a2,s2,0x20
   10a68:	00f677b3          	and	a5,a2,a5
   10a6c:	42f5ea63          	bltu	a1,a5,10ea0 <_strtod_r+0xa04>
   10a70:	7c9005b7          	lui	a1,0x7c900
   10a74:	2cf5f4e3          	bleu	a5,a1,1153c <_strtod_r+0x10a0>
   10a78:	7ff007b7          	lui	a5,0x7ff00
   10a7c:	02091913          	slli	s2,s2,0x20
   10a80:	fff78793          	addi	a5,a5,-1 # 7fefffff <_gp+0x7fee20ff>
   10a84:	02095913          	srli	s2,s2,0x20
   10a88:	02079793          	slli	a5,a5,0x20
   10a8c:	00f96933          	or	s2,s2,a5
   10a90:	00e96933          	or	s2,s2,a4
   10a94:	00000c93          	li	s9,0
   10a98:	000d0713          	mv	a4,s10
   10a9c:	000c0613          	mv	a2,s8
   10aa0:	000a0593          	mv	a1,s4
   10aa4:	00040513          	mv	a0,s0
   10aa8:	6cc060ef          	jal	17174 <__s2b>
   10aac:	00050d13          	mv	s10,a0
   10ab0:	3e050863          	beqz	a0,10ea0 <_strtod_r+0xa04>
   10ab4:	417007bb          	negw	a5,s7
   10ab8:	41fbdd9b          	sraiw	s11,s7,0x1f
   10abc:	00fdf7b3          	and	a5,s11,a5
   10ac0:	01712423          	sw	s7,8(sp)
   10ac4:	00f12623          	sw	a5,12(sp)
   10ac8:	100bc0e3          	bltz	s7,113c8 <_strtod_r+0xf2c>
   10acc:	0001d7b7          	lui	a5,0x1d
   10ad0:	7407b907          	fld	fs2,1856(a5) # 1d740 <__wctomb+0x10>
   10ad4:	0001d7b7          	lui	a5,0x1d
   10ad8:	7507b487          	fld	fs1,1872(a5) # 1d750 <__wctomb+0x20>
   10adc:	0001d7b7          	lui	a5,0x1d
   10ae0:	7487b987          	fld	fs3,1864(a5) # 1d748 <__wctomb+0x18>
   10ae4:	0001d7b7          	lui	a5,0x1d
   10ae8:	7387bb07          	fld	fs6,1848(a5) # 1d738 <__wctomb+0x8>
   10aec:	0001d7b7          	lui	a5,0x1d
   10af0:	23290ad3          	fmv.d	fs5,fs2
   10af4:	7607ba07          	fld	fs4,1888(a5) # 1d760 <__wctomb+0x30>
   10af8:	00000c13          	li	s8,0
   10afc:	00000a13          	li	s4,0
   10b00:	008d2583          	lw	a1,8(s10)
   10b04:	00040513          	mv	a0,s0
   10b08:	48c060ef          	jal	16f94 <_Balloc>
   10b0c:	00050b13          	mv	s6,a0
   10b10:	3a050263          	beqz	a0,10eb4 <_strtod_r+0xa18>
   10b14:	014d2603          	lw	a2,20(s10)
   10b18:	010d0593          	addi	a1,s10,16
   10b1c:	01050513          	addi	a0,a0,16
   10b20:	00260613          	addi	a2,a2,2
   10b24:	00261613          	slli	a2,a2,0x2
   10b28:	268060ef          	jal	16d90 <memcpy>
   10b2c:	f20905d3          	fmv.d.x	fa1,s2
   10b30:	04810693          	addi	a3,sp,72
   10b34:	03410613          	addi	a2,sp,52
   10b38:	00040513          	mv	a0,s0
   10b3c:	190070ef          	jal	17ccc <__d2b>
   10b40:	04a13023          	sd	a0,64(sp)
   10b44:	00090493          	mv	s1,s2
   10b48:	36050863          	beqz	a0,10eb8 <_strtod_r+0xa1c>
   10b4c:	00100593          	li	a1,1
   10b50:	00040513          	mv	a0,s0
   10b54:	079060ef          	jal	173cc <__i2b>
   10b58:	00050a13          	mv	s4,a0
   10b5c:	34050c63          	beqz	a0,10eb4 <_strtod_r+0xa18>
   10b60:	03412703          	lw	a4,52(sp)
   10b64:	3a074e63          	bltz	a4,10f20 <_strtod_r+0xa84>
   10b68:	00c12783          	lw	a5,12(sp)
   10b6c:	00812583          	lw	a1,8(sp)
   10b70:	00e78dbb          	addw	s11,a5,a4
   10b74:	04812503          	lw	a0,72(sp)
   10b78:	4197073b          	subw	a4,a4,s9
   10b7c:	00100693          	li	a3,1
   10b80:	00a7073b          	addw	a4,a4,a0
   10b84:	03600793          	li	a5,54
   10b88:	fff7071b          	addiw	a4,a4,-1
   10b8c:	c0200613          	li	a2,-1022
   10b90:	00012c23          	sw	zero,24(sp)
   10b94:	00d12823          	sw	a3,16(sp)
   10b98:	40a787bb          	subw	a5,a5,a0
   10b9c:	00c75e63          	ble	a2,a4,10bb8 <_strtod_r+0x71c>
   10ba0:	40e6063b          	subw	a2,a2,a4
   10ba4:	01f00513          	li	a0,31
   10ba8:	40c787bb          	subw	a5,a5,a2
   10bac:	38c54263          	blt	a0,a2,10f30 <_strtod_r+0xa94>
   10bb0:	00c6973b          	sllw	a4,a3,a2
   10bb4:	00e12823          	sw	a4,16(sp)
   10bb8:	00f5873b          	addw	a4,a1,a5
   10bbc:	00fd87bb          	addw	a5,s11,a5
   10bc0:	00ec8bbb          	addw	s7,s9,a4
   10bc4:	000d8593          	mv	a1,s11
   10bc8:	01b7d463          	ble	s11,a5,10bd0 <_strtod_r+0x734>
   10bcc:	00078593          	mv	a1,a5
   10bd0:	000b8613          	mv	a2,s7
   10bd4:	0175d463          	ble	s7,a1,10bdc <_strtod_r+0x740>
   10bd8:	00058613          	mv	a2,a1
   10bdc:	00c05863          	blez	a2,10bec <_strtod_r+0x750>
   10be0:	40c787bb          	subw	a5,a5,a2
   10be4:	40cb8bbb          	subw	s7,s7,a2
   10be8:	40cd8dbb          	subw	s11,s11,a2
   10bec:	00c12703          	lw	a4,12(sp)
   10bf0:	06070063          	beqz	a4,10c50 <_strtod_r+0x7b4>
   10bf4:	000a0593          	mv	a1,s4
   10bf8:	00070613          	mv	a2,a4
   10bfc:	00040513          	mv	a0,s0
   10c00:	02f13023          	sd	a5,32(sp)
   10c04:	1f1060ef          	jal	175f4 <__pow5mult>
   10c08:	00050a13          	mv	s4,a0
   10c0c:	02013783          	ld	a5,32(sp)
   10c10:	2a050263          	beqz	a0,10eb4 <_strtod_r+0xa18>
   10c14:	04013603          	ld	a2,64(sp)
   10c18:	00050593          	mv	a1,a0
   10c1c:	00040513          	mv	a0,s0
   10c20:	02f13023          	sd	a5,32(sp)
   10c24:	7dc060ef          	jal	17400 <__multiply>
   10c28:	02013783          	ld	a5,32(sp)
   10c2c:	28050463          	beqz	a0,10eb4 <_strtod_r+0xa18>
   10c30:	04013583          	ld	a1,64(sp)
   10c34:	02a13423          	sd	a0,40(sp)
   10c38:	00040513          	mv	a0,s0
   10c3c:	02f13023          	sd	a5,32(sp)
   10c40:	400060ef          	jal	17040 <_Bfree>
   10c44:	02813603          	ld	a2,40(sp)
   10c48:	02013783          	ld	a5,32(sp)
   10c4c:	04c13023          	sd	a2,64(sp)
   10c50:	00f05e63          	blez	a5,10c6c <_strtod_r+0x7d0>
   10c54:	04013583          	ld	a1,64(sp)
   10c58:	00078613          	mv	a2,a5
   10c5c:	00040513          	mv	a0,s0
   10c60:	2cd060ef          	jal	1772c <__lshift>
   10c64:	04a13023          	sd	a0,64(sp)
   10c68:	24050863          	beqz	a0,10eb8 <_strtod_r+0xa1c>
   10c6c:	00812783          	lw	a5,8(sp)
   10c70:	00078e63          	beqz	a5,10c8c <_strtod_r+0x7f0>
   10c74:	00812603          	lw	a2,8(sp)
   10c78:	000b0593          	mv	a1,s6
   10c7c:	00040513          	mv	a0,s0
   10c80:	175060ef          	jal	175f4 <__pow5mult>
   10c84:	00050b13          	mv	s6,a0
   10c88:	22050663          	beqz	a0,10eb4 <_strtod_r+0xa18>
   10c8c:	01705e63          	blez	s7,10ca8 <_strtod_r+0x80c>
   10c90:	000b0593          	mv	a1,s6
   10c94:	000b8613          	mv	a2,s7
   10c98:	00040513          	mv	a0,s0
   10c9c:	291060ef          	jal	1772c <__lshift>
   10ca0:	00050b13          	mv	s6,a0
   10ca4:	20050863          	beqz	a0,10eb4 <_strtod_r+0xa18>
   10ca8:	01b05e63          	blez	s11,10cc4 <_strtod_r+0x828>
   10cac:	000a0593          	mv	a1,s4
   10cb0:	000d8613          	mv	a2,s11
   10cb4:	00040513          	mv	a0,s0
   10cb8:	275060ef          	jal	1772c <__lshift>
   10cbc:	00050a13          	mv	s4,a0
   10cc0:	1e050a63          	beqz	a0,10eb4 <_strtod_r+0xa18>
   10cc4:	04013583          	ld	a1,64(sp)
   10cc8:	000b0613          	mv	a2,s6
   10ccc:	00040513          	mv	a0,s0
   10cd0:	41d060ef          	jal	178ec <__mdiff>
   10cd4:	00050c13          	mv	s8,a0
   10cd8:	1c050e63          	beqz	a0,10eb4 <_strtod_r+0xa18>
   10cdc:	01052783          	lw	a5,16(a0)
   10ce0:	000a0593          	mv	a1,s4
   10ce4:	00052823          	sw	zero,16(a0)
   10ce8:	00078b93          	mv	s7,a5
   10cec:	3a1060ef          	jal	1788c <__mcmp>
   10cf0:	7c054063          	bltz	a0,114b0 <_strtod_r+0x1014>
   10cf4:	74050463          	beqz	a0,1143c <_strtod_r+0xfa0>
   10cf8:	000a0593          	mv	a1,s4
   10cfc:	000c0513          	mv	a0,s8
   10d00:	108070ef          	jal	17e08 <__ratio>
   10d04:	a29507d3          	fle.d	a5,fa0,fs1
   10d08:	20078063          	beqz	a5,10f08 <_strtod_r+0xa6c>
   10d0c:	220b8e63          	beqz	s7,10f48 <_strtod_r+0xaac>
   10d10:	0001d737          	lui	a4,0x1d
   10d14:	74873407          	fld	fs0,1864(a4) # 1d748 <__wctomb+0x18>
   10d18:	3ff00793          	li	a5,1023
   10d1c:	03479793          	slli	a5,a5,0x34
   10d20:	42095713          	srai	a4,s2,0x20
   10d24:	7ff006b7          	lui	a3,0x7ff00
   10d28:	00d77633          	and	a2,a4,a3
   10d2c:	7fe005b7          	lui	a1,0x7fe00
   10d30:	28b60863          	beq	a2,a1,10fc0 <_strtod_r+0xb24>
   10d34:	040c8c63          	beqz	s9,10d8c <_strtod_r+0x8f0>
   10d38:	06a00737          	lui	a4,0x6a00
   10d3c:	04c76863          	bltu	a4,a2,10d8c <_strtod_r+0x8f0>
   10d40:	0001d737          	lui	a4,0x1d
   10d44:	75873787          	fld	fa5,1880(a4) # 1d758 <__wctomb+0x28>
   10d48:	a2f40753          	fle.d	a4,fs0,fa5
   10d4c:	02070063          	beqz	a4,10d6c <_strtod_r+0x8d0>
   10d50:	c21417d3          	fcvt.wu.d	a5,fs0,rtz
   10d54:	62078063          	beqz	a5,11374 <_strtod_r+0xed8>
   10d58:	d2178453          	fcvt.d.wu	fs0,a5
   10d5c:	e20407d3          	fmv.x.d	a5,fs0
   10d60:	000b9663          	bnez	s7,10d6c <_strtod_r+0x8d0>
   10d64:	228417d3          	fneg.d	fa5,fs0
   10d68:	e20787d3          	fmv.x.d	a5,fa5
   10d6c:	4207d713          	srai	a4,a5,0x20
   10d70:	06b006b7          	lui	a3,0x6b00
   10d74:	00d7073b          	addw	a4,a4,a3
   10d78:	40c7073b          	subw	a4,a4,a2
   10d7c:	02079793          	slli	a5,a5,0x20
   10d80:	02071713          	slli	a4,a4,0x20
   10d84:	0207d793          	srli	a5,a5,0x20
   10d88:	00e7e7b3          	or	a5,a5,a4
   10d8c:	f2048553          	fmv.d.x	fa0,s1
   10d90:	00c13823          	sd	a2,16(sp)
   10d94:	f2078bd3          	fmv.d.x	fs7,a5
   10d98:	565060ef          	jal	17afc <__ulp>
   10d9c:	f20487d3          	fmv.d.x	fa5,s1
   10da0:	01013603          	ld	a2,16(sp)
   10da4:	7aabf7c3          	fmadd.d	fa5,fs7,fa0,fa5
   10da8:	e2078953          	fmv.x.d	s2,fa5
   10dac:	42095713          	srai	a4,s2,0x20
   10db0:	000c9863          	bnez	s9,10dc0 <_strtod_r+0x924>
   10db4:	7ff007b7          	lui	a5,0x7ff00
   10db8:	00f777b3          	and	a5,a4,a5
   10dbc:	28f60c63          	beq	a2,a5,11054 <_strtod_r+0xbb8>
   10dc0:	04013583          	ld	a1,64(sp)
   10dc4:	00040513          	mv	a0,s0
   10dc8:	278060ef          	jal	17040 <_Bfree>
   10dcc:	000b0593          	mv	a1,s6
   10dd0:	00040513          	mv	a0,s0
   10dd4:	26c060ef          	jal	17040 <_Bfree>
   10dd8:	000a0593          	mv	a1,s4
   10ddc:	00040513          	mv	a0,s0
   10de0:	260060ef          	jal	17040 <_Bfree>
   10de4:	000c0593          	mv	a1,s8
   10de8:	00040513          	mv	a0,s0
   10dec:	254060ef          	jal	17040 <_Bfree>
   10df0:	d11ff06f          	j	10b00 <_strtod_r+0x664>
   10df4:	000c0693          	mv	a3,s8
   10df8:	00000613          	li	a2,0
   10dfc:	00000593          	li	a1,0
   10e00:	fd04851b          	addiw	a0,s1,-48
   10e04:	00900793          	li	a5,9
   10e08:	b6a7eee3          	bltu	a5,a0,10984 <_strtod_r+0x4e8>
   10e0c:	0016071b          	addiw	a4,a2,1
   10e10:	00050493          	mv	s1,a0
   10e14:	46051863          	bnez	a0,11284 <_strtod_r+0xde8>
   10e18:	03813803          	ld	a6,56(sp)
   10e1c:	00070613          	mv	a2,a4
   10e20:	00180793          	addi	a5,a6,1
   10e24:	02f13c23          	sd	a5,56(sp)
   10e28:	00184483          	lbu	s1,1(a6)
   10e2c:	fd5ff06f          	j	10e00 <_strtod_r+0x964>
   10e30:	04e00793          	li	a5,78
   10e34:	00f48c63          	beq	s1,a5,10e4c <_strtod_r+0x9b0>
   10e38:	5497d463          	ble	s1,a5,11380 <_strtod_r+0xee4>
   10e3c:	06900793          	li	a5,105
   10e40:	54f48463          	beq	s1,a5,11388 <_strtod_r+0xeec>
   10e44:	06e00793          	li	a5,110
   10e48:	8cf49ce3          	bne	s1,a5,10720 <_strtod_r+0x284>
   10e4c:	03813603          	ld	a2,56(sp)
   10e50:	0001b737          	lui	a4,0x1b
   10e54:	4b870713          	addi	a4,a4,1208 # 1b4b8 <zeroes.4137+0x28>
   10e58:	01900813          	li	a6,25
   10e5c:	00170713          	addi	a4,a4,1
   10e60:	fff74583          	lbu	a1,-1(a4)
   10e64:	5a058663          	beqz	a1,11410 <_strtod_r+0xf74>
   10e68:	00160613          	addi	a2,a2,1
   10e6c:	00064683          	lbu	a3,0(a2)
   10e70:	fbf6879b          	addiw	a5,a3,-65
   10e74:	0ff7f793          	andi	a5,a5,255
   10e78:	00068513          	mv	a0,a3
   10e7c:	00f86463          	bltu	a6,a5,10e84 <_strtod_r+0x9e8>
   10e80:	0206851b          	addiw	a0,a3,32
   10e84:	fcb50ce3          	beq	a0,a1,10e5c <_strtod_r+0x9c0>
   10e88:	899ff06f          	j	10720 <_strtod_r+0x284>
   10e8c:	00100893          	li	a7,1
   10e90:	002c8793          	addi	a5,s9,2
   10e94:	02f13c23          	sd	a5,56(sp)
   10e98:	002cc483          	lbu	s1,2(s9)
   10e9c:	fa4ff06f          	j	10640 <_strtod_r+0x1a4>
   10ea0:	02200793          	li	a5,34
   10ea4:	7ff00493          	li	s1,2047
   10ea8:	00f42023          	sw	a5,0(s0)
   10eac:	03449493          	slli	s1,s1,0x34
   10eb0:	a05ff06f          	j	108b4 <_strtod_r+0x418>
   10eb4:	04013503          	ld	a0,64(sp)
   10eb8:	02200793          	li	a5,34
   10ebc:	7ff00493          	li	s1,2047
   10ec0:	00f42023          	sw	a5,0(s0)
   10ec4:	03449493          	slli	s1,s1,0x34
   10ec8:	00050593          	mv	a1,a0
   10ecc:	00040513          	mv	a0,s0
   10ed0:	170060ef          	jal	17040 <_Bfree>
   10ed4:	000b0593          	mv	a1,s6
   10ed8:	00040513          	mv	a0,s0
   10edc:	164060ef          	jal	17040 <_Bfree>
   10ee0:	000a0593          	mv	a1,s4
   10ee4:	00040513          	mv	a0,s0
   10ee8:	158060ef          	jal	17040 <_Bfree>
   10eec:	000d0593          	mv	a1,s10
   10ef0:	00040513          	mv	a0,s0
   10ef4:	14c060ef          	jal	17040 <_Bfree>
   10ef8:	000c0593          	mv	a1,s8
   10efc:	00040513          	mv	a0,s0
   10f00:	140060ef          	jal	17040 <_Bfree>
   10f04:	9b1ff06f          	j	108b4 <_strtod_r+0x418>
   10f08:	13257453          	fmul.d	fs0,fa0,fs2
   10f0c:	e20407d3          	fmv.x.d	a5,fs0
   10f10:	e00b98e3          	bnez	s7,10d20 <_strtod_r+0x884>
   10f14:	228417d3          	fneg.d	fa5,fs0
   10f18:	e20787d3          	fmv.x.d	a5,fa5
   10f1c:	e05ff06f          	j	10d20 <_strtod_r+0x884>
   10f20:	00812783          	lw	a5,8(sp)
   10f24:	00c12d83          	lw	s11,12(sp)
   10f28:	40e785bb          	subw	a1,a5,a4
   10f2c:	c49ff06f          	j	10b74 <_strtod_r+0x6d8>
   10f30:	01012683          	lw	a3,16(sp)
   10f34:	be200613          	li	a2,-1054
   10f38:	40e6073b          	subw	a4,a2,a4
   10f3c:	00e6973b          	sllw	a4,a3,a4
   10f40:	00e12c23          	sw	a4,24(sp)
   10f44:	c75ff06f          	j	10bb8 <_strtod_r+0x71c>
   10f48:	00c91793          	slli	a5,s2,0xc
   10f4c:	12078e63          	beqz	a5,11088 <_strtod_r+0xbec>
   10f50:	00100793          	li	a5,1
   10f54:	5cf90a63          	beq	s2,a5,11528 <_strtod_r+0x108c>
   10f58:	bff00793          	li	a5,-1025
   10f5c:	0001d737          	lui	a4,0x1d
   10f60:	03479793          	slli	a5,a5,0x34
   10f64:	74873407          	fld	fs0,1864(a4) # 1d748 <__wctomb+0x18>
   10f68:	db9ff06f          	j	10d20 <_strtod_r+0x884>
   10f6c:	03913c23          	sd	s9,56(sp)
   10f70:	00000b93          	li	s7,0
   10f74:	f9cff06f          	j	10710 <_strtod_r+0x274>
   10f78:	0001b637          	lui	a2,0x1b
   10f7c:	000a8793          	mv	a5,s5
   10f80:	04010713          	addi	a4,sp,64
   10f84:	03410693          	addi	a3,sp,52
   10f88:	f1060613          	addi	a2,a2,-240 # 1af10 <fpi.2617>
   10f8c:	03810593          	addi	a1,sp,56
   10f90:	00040513          	mv	a0,s0
   10f94:	141040ef          	jal	158d4 <__gethex>
   10f98:	00757a13          	andi	s4,a0,7
   10f9c:	00050b13          	mv	s6,a0
   10fa0:	00000493          	li	s1,0
   10fa4:	900a08e3          	beqz	s4,108b4 <_strtod_r+0x418>
   10fa8:	00600793          	li	a5,6
   10fac:	1efa1e63          	bne	s4,a5,111a8 <_strtod_r+0xd0c>
   10fb0:	001b8713          	addi	a4,s7,1
   10fb4:	02e13c23          	sd	a4,56(sp)
   10fb8:	00000a93          	li	s5,0
   10fbc:	8f9ff06f          	j	108b4 <_strtod_r+0x418>
   10fc0:	fcb005b7          	lui	a1,0xfcb00
   10fc4:	00b7073b          	addw	a4,a4,a1
   10fc8:	fff00593          	li	a1,-1
   10fcc:	0205d593          	srli	a1,a1,0x20
   10fd0:	02071713          	slli	a4,a4,0x20
   10fd4:	00b97933          	and	s2,s2,a1
   10fd8:	00e96933          	or	s2,s2,a4
   10fdc:	f2090553          	fmv.d.x	fa0,s2
   10fe0:	f2078bd3          	fmv.d.x	fs7,a5
   10fe4:	00d13c23          	sd	a3,24(sp)
   10fe8:	00c13823          	sd	a2,16(sp)
   10fec:	02b13023          	sd	a1,32(sp)
   10ff0:	30d060ef          	jal	17afc <__ulp>
   10ff4:	f20907d3          	fmv.d.x	fa5,s2
   10ff8:	01813683          	ld	a3,24(sp)
   10ffc:	7ca00737          	lui	a4,0x7ca00
   11000:	7aabf7c3          	fmadd.d	fa5,fs7,fa0,fa5
   11004:	01013603          	ld	a2,16(sp)
   11008:	e2078953          	fmv.x.d	s2,fa5
   1100c:	42095793          	srai	a5,s2,0x20
   11010:	00d7f6b3          	and	a3,a5,a3
   11014:	16e6ec63          	bltu	a3,a4,1118c <_strtod_r+0xcf0>
   11018:	7ff00793          	li	a5,2047
   1101c:	03479793          	slli	a5,a5,0x34
   11020:	fff78793          	addi	a5,a5,-1 # 7fefffff <_gp+0x7fee20ff>
   11024:	02013583          	ld	a1,32(sp)
   11028:	e8f486e3          	beq	s1,a5,10eb4 <_strtod_r+0xa18>
   1102c:	7ff007b7          	lui	a5,0x7ff00
   11030:	02091913          	slli	s2,s2,0x20
   11034:	fff78793          	addi	a5,a5,-1 # 7fefffff <_gp+0x7fee20ff>
   11038:	02095913          	srli	s2,s2,0x20
   1103c:	02079793          	slli	a5,a5,0x20
   11040:	00f96933          	or	s2,s2,a5
   11044:	00b96933          	or	s2,s2,a1
   11048:	d79ff06f          	j	10dc0 <_strtod_r+0x924>
   1104c:	00000893          	li	a7,0
   11050:	e41ff06f          	j	10e90 <_strtod_r+0x9f4>
   11054:	c20417d3          	fcvt.w.d	a5,fs0,rtz
   11058:	d2078553          	fcvt.d.w	fa0,a5
   1105c:	0aa47553          	fsub.d	fa0,fs0,fa0
   11060:	0e0b9c63          	bnez	s7,11158 <_strtod_r+0xcbc>
   11064:	00c91793          	slli	a5,s2,0xc
   11068:	0e079863          	bnez	a5,11158 <_strtod_r+0xcbc>
   1106c:	0001d7b7          	lui	a5,0x1d
   11070:	7707b787          	fld	fa5,1904(a5) # 1d770 <__wctomb+0x40>
   11074:	a2f517d3          	flt.d	a5,fa0,fa5
   11078:	d40784e3          	beqz	a5,10dc0 <_strtod_r+0x924>
   1107c:	04013503          	ld	a0,64(sp)
   11080:	00090493          	mv	s1,s2
   11084:	e45ff06f          	j	10ec8 <_strtod_r+0xa2c>
   11088:	a33517d3          	flt.d	a5,fa0,fs3
   1108c:	36079c63          	bnez	a5,11404 <_strtod_r+0xf68>
   11090:	0001d7b7          	lui	a5,0x1d
   11094:	7407b407          	fld	fs0,1856(a5) # 1d740 <__wctomb+0x10>
   11098:	12857453          	fmul.d	fs0,fa0,fs0
   1109c:	228417d3          	fneg.d	fa5,fs0
   110a0:	e20787d3          	fmv.x.d	a5,fa5
   110a4:	c7dff06f          	j	10d20 <_strtod_r+0x884>
   110a8:	9e0706e3          	beqz	a4,10a94 <_strtod_r+0x5f8>
   110ac:	40e007bb          	negw	a5,a4
   110b0:	00f7f713          	andi	a4,a5,15
   110b4:	02070263          	beqz	a4,110d8 <_strtod_r+0xc3c>
   110b8:	0001b637          	lui	a2,0x1b
   110bc:	00371713          	slli	a4,a4,0x3
   110c0:	20060613          	addi	a2,a2,512 # 1b200 <__mprec_tens>
   110c4:	00c70733          	add	a4,a4,a2
   110c8:	f2090753          	fmv.d.x	fa4,s2
   110cc:	00073787          	fld	fa5,0(a4) # 7ca00000 <_gp+0x7c9e2100>
   110d0:	1af777d3          	fdiv.d	fa5,fa4,fa5
   110d4:	e2078953          	fmv.x.d	s2,fa5
   110d8:	4047d79b          	sraiw	a5,a5,0x4
   110dc:	9a078ce3          	beqz	a5,10a94 <_strtod_r+0x5f8>
   110e0:	01f00713          	li	a4,31
   110e4:	06f74263          	blt	a4,a5,11148 <_strtod_r+0xcac>
   110e8:	0107f713          	andi	a4,a5,16
   110ec:	54070a63          	beqz	a4,11640 <_strtod_r+0x11a4>
   110f0:	06a00c93          	li	s9,106
   110f4:	50f05663          	blez	a5,11600 <_strtod_r+0x1164>
   110f8:	0001b737          	lui	a4,0x1b
   110fc:	00090593          	mv	a1,s2
   11100:	f4070713          	addi	a4,a4,-192 # 1af40 <tinytens>
   11104:	00000513          	li	a0,0
   11108:	0017f613          	andi	a2,a5,1
   1110c:	00060c63          	beqz	a2,11124 <_strtod_r+0xc88>
   11110:	f2058753          	fmv.d.x	fa4,a1
   11114:	00073787          	fld	fa5,0(a4)
   11118:	00100513          	li	a0,1
   1111c:	12f777d3          	fmul.d	fa5,fa4,fa5
   11120:	e20785d3          	fmv.x.d	a1,fa5
   11124:	4017d79b          	sraiw	a5,a5,0x1
   11128:	00870713          	addi	a4,a4,8
   1112c:	fc079ee3          	bnez	a5,11108 <_strtod_r+0xc6c>
   11130:	60051463          	bnez	a0,11738 <_strtod_r+0x129c>
   11134:	4c0c9663          	bnez	s9,11600 <_strtod_r+0x1164>
   11138:	f20007d3          	fmv.d.x	fa5,zero
   1113c:	f2090753          	fmv.d.x	fa4,s2
   11140:	a2f727d3          	feq.d	a5,fa4,fa5
   11144:	94078ae3          	beqz	a5,10a98 <_strtod_r+0x5fc>
   11148:	02200793          	li	a5,34
   1114c:	00f42023          	sw	a5,0(s0)
   11150:	00000493          	li	s1,0
   11154:	f60ff06f          	j	108b4 <_strtod_r+0x418>
   11158:	a34517d3          	flt.d	a5,fa0,fs4
   1115c:	f20790e3          	bnez	a5,1107c <_strtod_r+0xbe0>
   11160:	0001d7b7          	lui	a5,0x1d
   11164:	7687b787          	fld	fa5,1896(a5) # 1d768 <__wctomb+0x38>
   11168:	a2a797d3          	flt.d	a5,fa5,fa0
   1116c:	c4078ae3          	beqz	a5,10dc0 <_strtod_r+0x924>
   11170:	f0dff06f          	j	1107c <_strtod_r+0xbe0>
   11174:	00078493          	mv	s1,a5
   11178:	000a0913          	mv	s2,s4
   1117c:	00000d93          	li	s11,0
   11180:	00000d13          	li	s10,0
   11184:	00000c13          	li	s8,0
   11188:	c34ff06f          	j	105bc <_strtod_r+0x120>
   1118c:	03500737          	lui	a4,0x3500
   11190:	00e7873b          	addw	a4,a5,a4
   11194:	02091913          	slli	s2,s2,0x20
   11198:	02071793          	slli	a5,a4,0x20
   1119c:	02095913          	srli	s2,s2,0x20
   111a0:	00f96933          	or	s2,s2,a5
   111a4:	c0dff06f          	j	10db0 <_strtod_r+0x914>
   111a8:	04013603          	ld	a2,64(sp)
   111ac:	00060e63          	beqz	a2,111c8 <_strtod_r+0xd2c>
   111b0:	03500593          	li	a1,53
   111b4:	04810513          	addi	a0,sp,72
   111b8:	555060ef          	jal	17f0c <__copybits>
   111bc:	04013583          	ld	a1,64(sp)
   111c0:	00040513          	mv	a0,s0
   111c4:	67d050ef          	jal	17040 <_Bfree>
   111c8:	00600793          	li	a5,6
   111cc:	0347e463          	bltu	a5,s4,111f4 <_strtod_r+0xd58>
   111d0:	020a1793          	slli	a5,s4,0x20
   111d4:	0001b737          	lui	a4,0x1b
   111d8:	01e7d793          	srli	a5,a5,0x1e
   111dc:	ef070713          	addi	a4,a4,-272 # 1aef0 <sulp+0x14c>
   111e0:	00e787b3          	add	a5,a5,a4
   111e4:	0007a783          	lw	a5,0(a5)
   111e8:	00078067          	jr	a5
   111ec:	7ff00913          	li	s2,2047
   111f0:	03491913          	slli	s2,s2,0x34
   111f4:	008b7b13          	andi	s6,s6,8
   111f8:	f00b0e63          	beqz	s6,10914 <_strtod_r+0x478>
   111fc:	42095713          	srai	a4,s2,0x20
   11200:	800007b7          	lui	a5,0x80000
   11204:	00f767b3          	or	a5,a4,a5
   11208:	02091493          	slli	s1,s2,0x20
   1120c:	02079793          	slli	a5,a5,0x20
   11210:	0204d493          	srli	s1,s1,0x20
   11214:	00f4e4b3          	or	s1,s1,a5
   11218:	e9cff06f          	j	108b4 <_strtod_r+0x418>
   1121c:	04c16783          	lwu	a5,76(sp)
   11220:	04816903          	lwu	s2,72(sp)
   11224:	02079793          	slli	a5,a5,0x20
   11228:	00f96933          	or	s2,s2,a5
   1122c:	fc9ff06f          	j	111f4 <_strtod_r+0xd58>
   11230:	03412783          	lw	a5,52(sp)
   11234:	04c12683          	lw	a3,76(sp)
   11238:	fff00737          	lui	a4,0xfff00
   1123c:	4337879b          	addiw	a5,a5,1075
   11240:	fff7071b          	addiw	a4,a4,-1
   11244:	00e6f733          	and	a4,a3,a4
   11248:	0147979b          	slliw	a5,a5,0x14
   1124c:	04816903          	lwu	s2,72(sp)
   11250:	00f767b3          	or	a5,a4,a5
   11254:	02079793          	slli	a5,a5,0x20
   11258:	00f96933          	or	s2,s2,a5
   1125c:	f99ff06f          	j	111f4 <_strtod_r+0xd58>
   11260:	800007b7          	lui	a5,0x80000
   11264:	fff7c793          	not	a5,a5
   11268:	fff00913          	li	s2,-1
   1126c:	02079793          	slli	a5,a5,0x20
   11270:	02095913          	srli	s2,s2,0x20
   11274:	0127e933          	or	s2,a5,s2
   11278:	f7dff06f          	j	111f4 <_strtod_r+0xd58>
   1127c:	00000913          	li	s2,0
   11280:	f75ff06f          	j	111f4 <_strtod_r+0xd58>
   11284:	00100793          	li	a5,1
   11288:	00e585bb          	addw	a1,a1,a4
   1128c:	00d6063b          	addw	a2,a2,a3
   11290:	00800813          	li	a6,8
   11294:	01000313          	li	t1,16
   11298:	48f70863          	beq	a4,a5,11728 <_strtod_r+0x128c>
   1129c:	0016869b          	addiw	a3,a3,1
   112a0:	fff6871b          	addiw	a4,a3,-1
   112a4:	06e86863          	bltu	a6,a4,11314 <_strtod_r+0xe78>
   112a8:	001d189b          	slliw	a7,s10,0x1
   112ac:	003d171b          	slliw	a4,s10,0x3
   112b0:	00e88d3b          	addw	s10,a7,a4
   112b4:	fec694e3          	bne	a3,a2,1129c <_strtod_r+0xe00>
   112b8:	03813803          	ld	a6,56(sp)
   112bc:	0016869b          	addiw	a3,a3,1
   112c0:	00800713          	li	a4,8
   112c4:	02c75c63          	ble	a2,a4,112fc <_strtod_r+0xe60>
   112c8:	01000793          	li	a5,16
   112cc:	00000613          	li	a2,0
   112d0:	b4d7c8e3          	blt	a5,a3,10e20 <_strtod_r+0x984>
   112d4:	001d971b          	slliw	a4,s11,0x1
   112d8:	003d979b          	slliw	a5,s11,0x3
   112dc:	00f707bb          	addw	a5,a4,a5
   112e0:	00f50dbb          	addw	s11,a0,a5
   112e4:	b3dff06f          	j	10e20 <_strtod_r+0x984>
   112e8:	03813a03          	ld	s4,56(sp)
   112ec:	fd04849b          	addiw	s1,s1,-48
   112f0:	0016059b          	addiw	a1,a2,1
   112f4:	000a0813          	mv	a6,s4
   112f8:	00100693          	li	a3,1
   112fc:	001d161b          	slliw	a2,s10,0x1
   11300:	003d171b          	slliw	a4,s10,0x3
   11304:	00e6073b          	addw	a4,a2,a4
   11308:	00e48d3b          	addw	s10,s1,a4
   1130c:	00000613          	li	a2,0
   11310:	b11ff06f          	j	10e20 <_strtod_r+0x984>
   11314:	fad340e3          	blt	t1,a3,112b4 <_strtod_r+0xe18>
   11318:	001d971b          	slliw	a4,s11,0x1
   1131c:	003d979b          	slliw	a5,s11,0x3
   11320:	00f70dbb          	addw	s11,a4,a5
   11324:	f91ff06f          	j	112b4 <_strtod_r+0xe18>
   11328:	02500613          	li	a2,37
   1132c:	40d6063b          	subw	a2,a2,a3
   11330:	e5764e63          	blt	a2,s7,1098c <_strtod_r+0x4f0>
   11334:	40d787bb          	subw	a5,a5,a3
   11338:	00078713          	mv	a4,a5
   1133c:	0001b6b7          	lui	a3,0x1b
   11340:	20068693          	addi	a3,a3,512 # 1b200 <__mprec_tens>
   11344:	00371713          	slli	a4,a4,0x3
   11348:	00d70733          	add	a4,a4,a3
   1134c:	00073787          	fld	fa5,0(a4) # fffffffffff00000 <_gp+0xffffffffffee2100>
   11350:	f2090753          	fmv.d.x	fa4,s2
   11354:	40fb87bb          	subw	a5,s7,a5
   11358:	00379793          	slli	a5,a5,0x3
   1135c:	12e7f753          	fmul.d	fa4,fa5,fa4
   11360:	00d787b3          	add	a5,a5,a3
   11364:	0007b787          	fld	fa5,0(a5) # ffffffff80000000 <_gp+0xffffffff7ffe2100>
   11368:	12f777d3          	fmul.d	fa5,fa4,fa5
   1136c:	e20784d3          	fmv.x.d	s1,fa5
   11370:	d44ff06f          	j	108b4 <_strtod_r+0x418>
   11374:	0001d7b7          	lui	a5,0x1d
   11378:	7487b407          	fld	fs0,1864(a5) # 1d748 <__wctomb+0x18>
   1137c:	9e1ff06f          	j	10d5c <_strtod_r+0x8c0>
   11380:	04900793          	li	a5,73
   11384:	b8f49e63          	bne	s1,a5,10720 <_strtod_r+0x284>
   11388:	03813683          	ld	a3,56(sp)
   1138c:	0001b737          	lui	a4,0x1b
   11390:	4a870713          	addi	a4,a4,1192 # 1b4a8 <zeroes.4137+0x18>
   11394:	01900813          	li	a6,25
   11398:	00170713          	addi	a4,a4,1
   1139c:	fff74583          	lbu	a1,-1(a4)
   113a0:	d2058263          	beqz	a1,108c4 <_strtod_r+0x428>
   113a4:	00168693          	addi	a3,a3,1
   113a8:	0006c603          	lbu	a2,0(a3)
   113ac:	fbf6079b          	addiw	a5,a2,-65
   113b0:	0ff7f793          	andi	a5,a5,255
   113b4:	00060513          	mv	a0,a2
   113b8:	00f86463          	bltu	a6,a5,113c0 <_strtod_r+0xf24>
   113bc:	0206051b          	addiw	a0,a2,32
   113c0:	fcb50ce3          	beq	a0,a1,11398 <_strtod_r+0xefc>
   113c4:	b5cff06f          	j	10720 <_strtod_r+0x284>
   113c8:	00012423          	sw	zero,8(sp)
   113cc:	f00ff06f          	j	10acc <_strtod_r+0x630>
   113d0:	fea00793          	li	a5,-22
   113d4:	dafbcc63          	blt	s7,a5,1098c <_strtod_r+0x4f0>
   113d8:	41700bbb          	negw	s7,s7
   113dc:	000b8793          	mv	a5,s7
   113e0:	0001b737          	lui	a4,0x1b
   113e4:	00379793          	slli	a5,a5,0x3
   113e8:	20070713          	addi	a4,a4,512 # 1b200 <__mprec_tens>
   113ec:	00e787b3          	add	a5,a5,a4
   113f0:	0007b787          	fld	fa5,0(a5)
   113f4:	f2090753          	fmv.d.x	fa4,s2
   113f8:	1af777d3          	fdiv.d	fa5,fa4,fa5
   113fc:	e20784d3          	fmv.x.d	s1,fa5
   11400:	cb4ff06f          	j	108b4 <_strtod_r+0x418>
   11404:	e20b07d3          	fmv.x.d	a5,fs6
   11408:	235a8453          	fmv.d	fs0,fs5
   1140c:	915ff06f          	j	10d20 <_strtod_r+0x884>
   11410:	00160793          	addi	a5,a2,1
   11414:	02f13c23          	sd	a5,56(sp)
   11418:	00164703          	lbu	a4,1(a2)
   1141c:	02800793          	li	a5,40
   11420:	18f70063          	beq	a4,a5,115a0 <_strtod_r+0x1104>
   11424:	fff00913          	li	s2,-1
   11428:	03391913          	slli	s2,s2,0x33
   1142c:	00090493          	mv	s1,s2
   11430:	c84ff06f          	j	108b4 <_strtod_r+0x418>
   11434:	00000613          	li	a2,0
   11438:	d38ff06f          	j	10970 <_strtod_r+0x4d4>
   1143c:	120b8863          	beqz	s7,1156c <_strtod_r+0x10d0>
   11440:	42095693          	srai	a3,s2,0x20
   11444:	fff6c793          	not	a5,a3
   11448:	02c79713          	slli	a4,a5,0x2c
   1144c:	26070063          	beqz	a4,116ac <_strtod_r+0x1210>
   11450:	01812703          	lw	a4,24(sp)
   11454:	12070463          	beqz	a4,1157c <_strtod_r+0x10e0>
   11458:	42095793          	srai	a5,s2,0x20
   1145c:	00e7f7b3          	and	a5,a5,a4
   11460:	02078063          	beqz	a5,11480 <_strtod_r+0xfe4>
   11464:	000c8593          	mv	a1,s9
   11468:	00090513          	mv	a0,s2
   1146c:	160b8863          	beqz	s7,115dc <_strtod_r+0x1140>
   11470:	135090ef          	jal	1ada4 <sulp>
   11474:	f20487d3          	fmv.d.x	fa5,s1
   11478:	02a7f7d3          	fadd.d	fa5,fa5,fa0
   1147c:	e20784d3          	fmv.x.d	s1,fa5
   11480:	0c0c8e63          	beqz	s9,1155c <_strtod_r+0x10c0>
   11484:	39500793          	li	a5,917
   11488:	03479793          	slli	a5,a5,0x34
   1148c:	f20487d3          	fmv.d.x	fa5,s1
   11490:	f2078753          	fmv.d.x	fa4,a5
   11494:	04013503          	ld	a0,64(sp)
   11498:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   1149c:	e20784d3          	fmv.x.d	s1,fa5
   114a0:	a20494e3          	bnez	s1,10ec8 <_strtod_r+0xa2c>
   114a4:	02200793          	li	a5,34
   114a8:	00f42023          	sw	a5,0(s0)
   114ac:	a1dff06f          	j	10ec8 <_strtod_r+0xa2c>
   114b0:	fc0b98e3          	bnez	s7,11480 <_strtod_r+0xfe4>
   114b4:	00c91793          	slli	a5,s2,0xc
   114b8:	fc0794e3          	bnez	a5,11480 <_strtod_r+0xfe4>
   114bc:	02095913          	srli	s2,s2,0x20
   114c0:	0009071b          	sext.w	a4,s2
   114c4:	7ff007b7          	lui	a5,0x7ff00
   114c8:	00f777b3          	and	a5,a4,a5
   114cc:	06b00737          	lui	a4,0x6b00
   114d0:	faf778e3          	bleu	a5,a4,11480 <_strtod_r+0xfe4>
   114d4:	018c2783          	lw	a5,24(s8)
   114d8:	00079863          	bnez	a5,114e8 <_strtod_r+0x104c>
   114dc:	014c2703          	lw	a4,20(s8)
   114e0:	00100793          	li	a5,1
   114e4:	f8e7dee3          	ble	a4,a5,11480 <_strtod_r+0xfe4>
   114e8:	000c0593          	mv	a1,s8
   114ec:	00100613          	li	a2,1
   114f0:	00040513          	mv	a0,s0
   114f4:	238060ef          	jal	1772c <__lshift>
   114f8:	000a0593          	mv	a1,s4
   114fc:	00050c13          	mv	s8,a0
   11500:	38c060ef          	jal	1788c <__mcmp>
   11504:	f6a05ee3          	blez	a0,11480 <_strtod_r+0xfe4>
   11508:	140c8263          	beqz	s9,1164c <_strtod_r+0x11b0>
   1150c:	0009071b          	sext.w	a4,s2
   11510:	7ff007b7          	lui	a5,0x7ff00
   11514:	00f777b3          	and	a5,a4,a5
   11518:	06b00737          	lui	a4,0x6b00
   1151c:	12f74863          	blt	a4,a5,1164c <_strtod_r+0x11b0>
   11520:	03700737          	lui	a4,0x3700
   11524:	f6f740e3          	blt	a4,a5,11484 <_strtod_r+0xfe8>
   11528:	02200793          	li	a5,34
   1152c:	00f42023          	sw	a5,0(s0)
   11530:	04013503          	ld	a0,64(sp)
   11534:	00000493          	li	s1,0
   11538:	991ff06f          	j	10ec8 <_strtod_r+0xa2c>
   1153c:	035007b7          	lui	a5,0x3500
   11540:	00f607bb          	addw	a5,a2,a5
   11544:	02091913          	slli	s2,s2,0x20
   11548:	02079793          	slli	a5,a5,0x20
   1154c:	02095913          	srli	s2,s2,0x20
   11550:	00f96933          	or	s2,s2,a5
   11554:	00000c93          	li	s9,0
   11558:	d40ff06f          	j	10a98 <_strtod_r+0x5fc>
   1155c:	04013503          	ld	a0,64(sp)
   11560:	969ff06f          	j	10ec8 <_strtod_r+0xa2c>
   11564:	02c13c23          	sd	a2,56(sp)
   11568:	ba4ff06f          	j	1090c <_strtod_r+0x470>
   1156c:	00c91793          	slli	a5,s2,0xc
   11570:	ee0790e3          	bnez	a5,11450 <_strtod_r+0xfb4>
   11574:	02095913          	srli	s2,s2,0x20
   11578:	f91ff06f          	j	11508 <_strtod_r+0x106c>
   1157c:	01012703          	lw	a4,16(sp)
   11580:	0009079b          	sext.w	a5,s2
   11584:	00e7f7b3          	and	a5,a5,a4
   11588:	ee078ce3          	beqz	a5,11480 <_strtod_r+0xfe4>
   1158c:	ed9ff06f          	j	11464 <_strtod_r+0xfc8>
   11590:	0001b337          	lui	t1,0x1b
   11594:	00000613          	li	a2,0
   11598:	2f030313          	addi	t1,t1,752 # 1b2f0 <__mprec_bigtens>
   1159c:	c88ff06f          	j	10a24 <_strtod_r+0x588>
   115a0:	0001b5b7          	lui	a1,0x1b
   115a4:	04810613          	addi	a2,sp,72
   115a8:	f2858593          	addi	a1,a1,-216 # 1af28 <fpinan.2653>
   115ac:	03810513          	addi	a0,sp,56
   115b0:	2b5040ef          	jal	16064 <__hexnan>
   115b4:	00500793          	li	a5,5
   115b8:	e6f516e3          	bne	a0,a5,11424 <_strtod_r+0xf88>
   115bc:	04c12703          	lw	a4,76(sp)
   115c0:	04816903          	lwu	s2,72(sp)
   115c4:	7ff007b7          	lui	a5,0x7ff00
   115c8:	00f767b3          	or	a5,a4,a5
   115cc:	02079793          	slli	a5,a5,0x20
   115d0:	0127e933          	or	s2,a5,s2
   115d4:	00090493          	mv	s1,s2
   115d8:	adcff06f          	j	108b4 <_strtod_r+0x418>
   115dc:	7c8090ef          	jal	1ada4 <sulp>
   115e0:	f20487d3          	fmv.d.x	fa5,s1
   115e4:	0aa7f7d3          	fsub.d	fa5,fa5,fa0
   115e8:	e20784d3          	fmv.x.d	s1,fa5
   115ec:	f20007d3          	fmv.d.x	fa5,zero
   115f0:	f2048753          	fmv.d.x	fa4,s1
   115f4:	a2f727d3          	feq.d	a5,fa4,fa5
   115f8:	f20798e3          	bnez	a5,11528 <_strtod_r+0x108c>
   115fc:	e85ff06f          	j	11480 <_strtod_r+0xfe4>
   11600:	42095613          	srai	a2,s2,0x20
   11604:	02161793          	slli	a5,a2,0x21
   11608:	0357d713          	srli	a4,a5,0x35
   1160c:	06b00793          	li	a5,107
   11610:	40e787bb          	subw	a5,a5,a4
   11614:	b2f052e3          	blez	a5,11138 <_strtod_r+0xc9c>
   11618:	01f00713          	li	a4,31
   1161c:	06f75263          	ble	a5,a4,11680 <_strtod_r+0x11e4>
   11620:	fff00713          	li	a4,-1
   11624:	02071593          	slli	a1,a4,0x20
   11628:	00b97933          	and	s2,s2,a1
   1162c:	03400593          	li	a1,52
   11630:	0cf5da63          	ble	a5,a1,11704 <_strtod_r+0x1268>
   11634:	03700913          	li	s2,55
   11638:	03491913          	slli	s2,s2,0x34
   1163c:	afdff06f          	j	11138 <_strtod_r+0xc9c>
   11640:	00000c93          	li	s9,0
   11644:	aaf04ae3          	bgtz	a5,110f8 <_strtod_r+0xc5c>
   11648:	af1ff06f          	j	11138 <_strtod_r+0xc9c>
   1164c:	7ff00737          	lui	a4,0x7ff00
   11650:	0009091b          	sext.w	s2,s2
   11654:	fff007b7          	lui	a5,0xfff00
   11658:	00e97933          	and	s2,s2,a4
   1165c:	00f9073b          	addw	a4,s2,a5
   11660:	001007b7          	lui	a5,0x100
   11664:	fff7879b          	addiw	a5,a5,-1
   11668:	00f767b3          	or	a5,a4,a5
   1166c:	fff00493          	li	s1,-1
   11670:	02079793          	slli	a5,a5,0x20
   11674:	0204d493          	srli	s1,s1,0x20
   11678:	00f4e4b3          	or	s1,s1,a5
   1167c:	e05ff06f          	j	11480 <_strtod_r+0xfe4>
   11680:	fff00713          	li	a4,-1
   11684:	0009061b          	sext.w	a2,s2
   11688:	00f717bb          	sllw	a5,a4,a5
   1168c:	00f677b3          	and	a5,a2,a5
   11690:	fff00713          	li	a4,-1
   11694:	02079793          	slli	a5,a5,0x20
   11698:	02071713          	slli	a4,a4,0x20
   1169c:	0207d793          	srli	a5,a5,0x20
   116a0:	00e97933          	and	s2,s2,a4
   116a4:	00f96933          	or	s2,s2,a5
   116a8:	a91ff06f          	j	11138 <_strtod_r+0xc9c>
   116ac:	0009059b          	sext.w	a1,s2
   116b0:	fff00713          	li	a4,-1
   116b4:	020c8263          	beqz	s9,116d8 <_strtod_r+0x123c>
   116b8:	7ff007b7          	lui	a5,0x7ff00
   116bc:	00f6f7b3          	and	a5,a3,a5
   116c0:	06a00637          	lui	a2,0x6a00
   116c4:	00f66a63          	bltu	a2,a5,116d8 <_strtod_r+0x123c>
   116c8:	0147d79b          	srliw	a5,a5,0x14
   116cc:	06b00613          	li	a2,107
   116d0:	40f607bb          	subw	a5,a2,a5
   116d4:	00f7173b          	sllw	a4,a4,a5
   116d8:	d6b71ce3          	bne	a4,a1,11450 <_strtod_r+0xfb4>
   116dc:	7ff00713          	li	a4,2047
   116e0:	03471713          	slli	a4,a4,0x34
   116e4:	fff70713          	addi	a4,a4,-1 # 7fefffff <_gp+0x7fee20ff>
   116e8:	fce90663          	beq	s2,a4,10eb4 <_strtod_r+0xa18>
   116ec:	7ff007b7          	lui	a5,0x7ff00
   116f0:	00f6f7b3          	and	a5,a3,a5
   116f4:	001004b7          	lui	s1,0x100
   116f8:	009784bb          	addw	s1,a5,s1
   116fc:	02049493          	slli	s1,s1,0x20
   11700:	d81ff06f          	j	11480 <_strtod_r+0xfe4>
   11704:	00f717bb          	sllw	a5,a4,a5
   11708:	00c7f7b3          	and	a5,a5,a2
   1170c:	02075713          	srli	a4,a4,0x20
   11710:	02079793          	slli	a5,a5,0x20
   11714:	00e97933          	and	s2,s2,a4
   11718:	00f96933          	or	s2,s2,a5
   1171c:	a1dff06f          	j	11138 <_strtod_r+0xc9c>
   11720:	00080913          	mv	s2,a6
   11724:	b00ff06f          	j	10a24 <_strtod_r+0x588>
   11728:	00068613          	mv	a2,a3
   1172c:	03813803          	ld	a6,56(sp)
   11730:	00f686bb          	addw	a3,a3,a5
   11734:	b8dff06f          	j	112c0 <_strtod_r+0xe24>
   11738:	00058913          	mv	s2,a1
   1173c:	9f9ff06f          	j	11134 <_strtod_r+0xc98>

0000000000011740 <strtod>:
   11740:	00058613          	mv	a2,a1
   11744:	00050593          	mv	a1,a0
   11748:	8101b503          	ld	a0,-2032(gp) # 1d710 <_impure_ptr>
   1174c:	d51fe06f          	j	1049c <_strtod_r>

0000000000011750 <strtof>:
   11750:	00058613          	mv	a2,a1
   11754:	00050593          	mv	a1,a0
   11758:	8101b503          	ld	a0,-2032(gp) # 1d710 <_impure_ptr>
   1175c:	fe010113          	addi	sp,sp,-32
   11760:	00813427          	fsd	fs0,8(sp)
   11764:	00113c23          	sd	ra,24(sp)
   11768:	d35fe0ef          	jal	1049c <_strtod_r>
   1176c:	22a50453          	fmv.d	fs0,fa0
   11770:	095060ef          	jal	18004 <__fpclassifyd>
   11774:	00050c63          	beqz	a0,1178c <strtof+0x3c>
   11778:	01813083          	ld	ra,24(sp)
   1177c:	40147553          	fcvt.s.d	fa0,fs0
   11780:	00813407          	fld	fs0,8(sp)
   11784:	02010113          	addi	sp,sp,32
   11788:	00008067          	ret
   1178c:	01813083          	ld	ra,24(sp)
   11790:	00813407          	fld	fs0,8(sp)
   11794:	00000513          	li	a0,0
   11798:	02010113          	addi	sp,sp,32
   1179c:	05d0606f          	j	17ff8 <nanf>

00000000000117a0 <_vfprintf_r>:
   117a0:	e1010113          	addi	sp,sp,-496
   117a4:	1e113423          	sd	ra,488(sp)
   117a8:	1d313423          	sd	s3,456(sp)
   117ac:	1d413023          	sd	s4,448(sp)
   117b0:	1b713423          	sd	s7,424(sp)
   117b4:	00058a13          	mv	s4,a1
   117b8:	00060993          	mv	s3,a2
   117bc:	02d13423          	sd	a3,40(sp)
   117c0:	1e813023          	sd	s0,480(sp)
   117c4:	1c913c23          	sd	s1,472(sp)
   117c8:	1d213823          	sd	s2,464(sp)
   117cc:	1b513c23          	sd	s5,440(sp)
   117d0:	1b613823          	sd	s6,432(sp)
   117d4:	1b813023          	sd	s8,416(sp)
   117d8:	19913c23          	sd	s9,408(sp)
   117dc:	19a13823          	sd	s10,400(sp)
   117e0:	19b13423          	sd	s11,392(sp)
   117e4:	16813c27          	fsd	fs0,376(sp)
   117e8:	00050b93          	mv	s7,a0
   117ec:	379040ef          	jal	16364 <_localeconv_r>
   117f0:	00053783          	ld	a5,0(a0)
   117f4:	00078513          	mv	a0,a5
   117f8:	06f13023          	sd	a5,96(sp)
   117fc:	2fd060ef          	jal	182f8 <strlen>
   11800:	06a13423          	sd	a0,104(sp)
   11804:	000b8663          	beqz	s7,11810 <_vfprintf_r+0x70>
   11808:	050ba783          	lw	a5,80(s7)
   1180c:	2e078c63          	beqz	a5,11b04 <_vfprintf_r+0x364>
   11810:	010a1683          	lh	a3,16(s4)
   11814:	03069793          	slli	a5,a3,0x30
   11818:	0307d793          	srli	a5,a5,0x30
   1181c:	03279713          	slli	a4,a5,0x32
   11820:	02074a63          	bltz	a4,11854 <_vfprintf_r+0xb4>
   11824:	000027b7          	lui	a5,0x2
   11828:	0aca2603          	lw	a2,172(s4)
   1182c:	00f6e7b3          	or	a5,a3,a5
   11830:	0107979b          	slliw	a5,a5,0x10
   11834:	ffffe737          	lui	a4,0xffffe
   11838:	4107d79b          	sraiw	a5,a5,0x10
   1183c:	fff7071b          	addiw	a4,a4,-1
   11840:	00e67733          	and	a4,a2,a4
   11844:	00fa1823          	sh	a5,16(s4)
   11848:	03079793          	slli	a5,a5,0x30
   1184c:	0aea2623          	sw	a4,172(s4)
   11850:	0307d793          	srli	a5,a5,0x30
   11854:	0087f713          	andi	a4,a5,8
   11858:	1e070063          	beqz	a4,11a38 <_vfprintf_r+0x298>
   1185c:	018a3703          	ld	a4,24(s4)
   11860:	1c070c63          	beqz	a4,11a38 <_vfprintf_r+0x298>
   11864:	01a7f793          	andi	a5,a5,26
   11868:	00a00713          	li	a4,10
   1186c:	1ee78863          	beq	a5,a4,11a5c <_vfprintf_r+0x2bc>
   11870:	0001b7b7          	lui	a5,0x1b
   11874:	f6878793          	addi	a5,a5,-152 # 1af68 <tinytens+0x28>
   11878:	0f010b13          	addi	s6,sp,240
   1187c:	02f13823          	sd	a5,48(sp)
   11880:	0ef10793          	addi	a5,sp,239
   11884:	0001bab7          	lui	s5,0x1b
   11888:	0001b4b7          	lui	s1,0x1b
   1188c:	40fb07b3          	sub	a5,s6,a5
   11890:	04013c23          	sd	zero,88(sp)
   11894:	0b613823          	sd	s6,176(sp)
   11898:	0c013023          	sd	zero,192(sp)
   1189c:	0a012c23          	sw	zero,184(sp)
   118a0:	06012823          	sw	zero,112(sp)
   118a4:	000b0893          	mv	a7,s6
   118a8:	02013c23          	sd	zero,56(sp)
   118ac:	06012a23          	sw	zero,116(sp)
   118b0:	00012e23          	sw	zero,28(sp)
   118b4:	0d0a8a93          	addi	s5,s5,208 # 1b0d0 <blanks.4193>
   118b8:	0e048493          	addi	s1,s1,224 # 1b0e0 <zeroes.4194>
   118bc:	06f13c23          	sd	a5,120(sp)
   118c0:	0009c783          	lbu	a5,0(s3)
   118c4:	0e0782e3          	beqz	a5,121a8 <_vfprintf_r+0xa08>
   118c8:	02500713          	li	a4,37
   118cc:	00098413          	mv	s0,s3
   118d0:	00e79663          	bne	a5,a4,118dc <_vfprintf_r+0x13c>
   118d4:	0580006f          	j	1192c <_vfprintf_r+0x18c>
   118d8:	00e78863          	beq	a5,a4,118e8 <_vfprintf_r+0x148>
   118dc:	00140413          	addi	s0,s0,1
   118e0:	00044783          	lbu	a5,0(s0)
   118e4:	fe079ae3          	bnez	a5,118d8 <_vfprintf_r+0x138>
   118e8:	4134093b          	subw	s2,s0,s3
   118ec:	04090063          	beqz	s2,1192c <_vfprintf_r+0x18c>
   118f0:	0c013703          	ld	a4,192(sp)
   118f4:	0b812783          	lw	a5,184(sp)
   118f8:	00090693          	mv	a3,s2
   118fc:	00d70733          	add	a4,a4,a3
   11900:	0017879b          	addiw	a5,a5,1
   11904:	0138b023          	sd	s3,0(a7)
   11908:	00d8b423          	sd	a3,8(a7)
   1190c:	0ce13023          	sd	a4,192(sp)
   11910:	0af12c23          	sw	a5,184(sp)
   11914:	00700713          	li	a4,7
   11918:	01088893          	addi	a7,a7,16
   1191c:	16f74063          	blt	a4,a5,11a7c <_vfprintf_r+0x2dc>
   11920:	01c12783          	lw	a5,28(sp)
   11924:	012787bb          	addw	a5,a5,s2
   11928:	00f12e23          	sw	a5,28(sp)
   1192c:	00044783          	lbu	a5,0(s0)
   11930:	16078463          	beqz	a5,11a98 <_vfprintf_r+0x2f8>
   11934:	00140993          	addi	s3,s0,1
   11938:	080107a3          	sb	zero,143(sp)
   1193c:	00000613          	li	a2,0
   11940:	00000593          	li	a1,0
   11944:	fff00413          	li	s0,-1
   11948:	00012c23          	sw	zero,24(sp)
   1194c:	00000c13          	li	s8,0
   11950:	05800713          	li	a4,88
   11954:	00900693          	li	a3,9
   11958:	02a00513          	li	a0,42
   1195c:	0009cd03          	lbu	s10,0(s3)
   11960:	00198993          	addi	s3,s3,1
   11964:	fe0d079b          	addiw	a5,s10,-32
   11968:	1cf762e3          	bltu	a4,a5,1232c <_vfprintf_r+0xb8c>
   1196c:	03013803          	ld	a6,48(sp)
   11970:	02079793          	slli	a5,a5,0x20
   11974:	01e7d793          	srli	a5,a5,0x1e
   11978:	010787b3          	add	a5,a5,a6
   1197c:	0007a783          	lw	a5,0(a5)
   11980:	00078067          	jr	a5
   11984:	010c6c13          	ori	s8,s8,16
   11988:	fd5ff06f          	j	1195c <_vfprintf_r+0x1bc>
   1198c:	02813783          	ld	a5,40(sp)
   11990:	0007a803          	lw	a6,0(a5)
   11994:	00878793          	addi	a5,a5,8
   11998:	02f13423          	sd	a5,40(sp)
   1199c:	01012c23          	sw	a6,24(sp)
   119a0:	fa085ee3          	bgez	a6,1195c <_vfprintf_r+0x1bc>
   119a4:	410007bb          	negw	a5,a6
   119a8:	00f12c23          	sw	a5,24(sp)
   119ac:	004c6c13          	ori	s8,s8,4
   119b0:	fadff06f          	j	1195c <_vfprintf_r+0x1bc>
   119b4:	03000793          	li	a5,48
   119b8:	08f10823          	sb	a5,144(sp)
   119bc:	07800793          	li	a5,120
   119c0:	08f108a3          	sb	a5,145(sp)
   119c4:	02813783          	ld	a5,40(sp)
   119c8:	080107a3          	sb	zero,143(sp)
   119cc:	002c6693          	ori	a3,s8,2
   119d0:	00878713          	addi	a4,a5,8
   119d4:	0007b783          	ld	a5,0(a5)
   119d8:	180444e3          	bltz	s0,12360 <_vfprintf_r+0xbc0>
   119dc:	f7fc7c13          	andi	s8,s8,-129
   119e0:	02e13423          	sd	a4,40(sp)
   119e4:	002c6c13          	ori	s8,s8,2
   119e8:	120796e3          	bnez	a5,12314 <_vfprintf_r+0xb74>
   119ec:	0001b7b7          	lui	a5,0x1b
   119f0:	4f878793          	addi	a5,a5,1272 # 1b4f8 <zeroes.4137+0x68>
   119f4:	02f13c23          	sd	a5,56(sp)
   119f8:	07800d13          	li	s10,120
   119fc:	00000613          	li	a2,0
   11a00:	7e040463          	beqz	s0,121e8 <_vfprintf_r+0xa48>
   11a04:	00000793          	li	a5,0
   11a08:	000b0913          	mv	s2,s6
   11a0c:	03813683          	ld	a3,56(sp)
   11a10:	00f7f713          	andi	a4,a5,15
   11a14:	fff90913          	addi	s2,s2,-1
   11a18:	00e68733          	add	a4,a3,a4
   11a1c:	00074703          	lbu	a4,0(a4) # ffffffffffffe000 <_gp+0xfffffffffffe0100>
   11a20:	0047d793          	srli	a5,a5,0x4
   11a24:	00e90023          	sb	a4,0(s2)
   11a28:	fe0792e3          	bnez	a5,11a0c <_vfprintf_r+0x26c>
   11a2c:	412b07b3          	sub	a5,s6,s2
   11a30:	02f12023          	sw	a5,32(sp)
   11a34:	1680006f          	j	11b9c <_vfprintf_r+0x3fc>
   11a38:	000a0593          	mv	a1,s4
   11a3c:	000b8513          	mv	a0,s7
   11a40:	2bd010ef          	jal	134fc <__swsetup_r>
   11a44:	00050463          	beqz	a0,11a4c <_vfprintf_r+0x2ac>
   11a48:	3940106f          	j	12ddc <_vfprintf_r+0x163c>
   11a4c:	010a5783          	lhu	a5,16(s4)
   11a50:	00a00713          	li	a4,10
   11a54:	01a7f793          	andi	a5,a5,26
   11a58:	e0e79ce3          	bne	a5,a4,11870 <_vfprintf_r+0xd0>
   11a5c:	012a1783          	lh	a5,18(s4)
   11a60:	e007c8e3          	bltz	a5,11870 <_vfprintf_r+0xd0>
   11a64:	02813683          	ld	a3,40(sp)
   11a68:	00098613          	mv	a2,s3
   11a6c:	000a0593          	mv	a1,s4
   11a70:	000b8513          	mv	a0,s7
   11a74:	1c9010ef          	jal	1343c <__sbprintf>
   11a78:	04c0006f          	j	11ac4 <_vfprintf_r+0x324>
   11a7c:	0b010613          	addi	a2,sp,176
   11a80:	000a0593          	mv	a1,s4
   11a84:	000b8513          	mv	a0,s7
   11a88:	305060ef          	jal	1858c <__sprint_r>
   11a8c:	02051263          	bnez	a0,11ab0 <_vfprintf_r+0x310>
   11a90:	000b0893          	mv	a7,s6
   11a94:	e8dff06f          	j	11920 <_vfprintf_r+0x180>
   11a98:	0c013783          	ld	a5,192(sp)
   11a9c:	00078a63          	beqz	a5,11ab0 <_vfprintf_r+0x310>
   11aa0:	0b010613          	addi	a2,sp,176
   11aa4:	000a0593          	mv	a1,s4
   11aa8:	000b8513          	mv	a0,s7
   11aac:	2e1060ef          	jal	1858c <__sprint_r>
   11ab0:	010a5783          	lhu	a5,16(s4)
   11ab4:	0407f793          	andi	a5,a5,64
   11ab8:	00078463          	beqz	a5,11ac0 <_vfprintf_r+0x320>
   11abc:	3200106f          	j	12ddc <_vfprintf_r+0x163c>
   11ac0:	01c12503          	lw	a0,28(sp)
   11ac4:	1e813083          	ld	ra,488(sp)
   11ac8:	1e013403          	ld	s0,480(sp)
   11acc:	1d813483          	ld	s1,472(sp)
   11ad0:	1d013903          	ld	s2,464(sp)
   11ad4:	1c813983          	ld	s3,456(sp)
   11ad8:	1c013a03          	ld	s4,448(sp)
   11adc:	1b813a83          	ld	s5,440(sp)
   11ae0:	1b013b03          	ld	s6,432(sp)
   11ae4:	1a813b83          	ld	s7,424(sp)
   11ae8:	1a013c03          	ld	s8,416(sp)
   11aec:	19813c83          	ld	s9,408(sp)
   11af0:	19013d03          	ld	s10,400(sp)
   11af4:	18813d83          	ld	s11,392(sp)
   11af8:	17813407          	fld	fs0,376(sp)
   11afc:	1f010113          	addi	sp,sp,496
   11b00:	00008067          	ret
   11b04:	000b8513          	mv	a0,s7
   11b08:	700030ef          	jal	15208 <__sinit>
   11b0c:	d05ff06f          	j	11810 <_vfprintf_r+0x70>
   11b10:	00100613          	li	a2,1
   11b14:	02b00593          	li	a1,43
   11b18:	e45ff06f          	j	1195c <_vfprintf_r+0x1bc>
   11b1c:	00060463          	beqz	a2,11b24 <_vfprintf_r+0x384>
   11b20:	0d90106f          	j	133f8 <_vfprintf_r+0x1c58>
   11b24:	010c7793          	andi	a5,s8,16
   11b28:	22078263          	beqz	a5,11d4c <_vfprintf_r+0x5ac>
   11b2c:	02813783          	ld	a5,40(sp)
   11b30:	080107a3          	sb	zero,143(sp)
   11b34:	00878713          	addi	a4,a5,8
   11b38:	0007b783          	ld	a5,0(a5)
   11b3c:	22044663          	bltz	s0,11d68 <_vfprintf_r+0x5c8>
   11b40:	02e13423          	sd	a4,40(sp)
   11b44:	f7fc7c13          	andi	s8,s8,-129
   11b48:	22079663          	bnez	a5,11d74 <_vfprintf_r+0x5d4>
   11b4c:	00000613          	li	a2,0
   11b50:	00000793          	li	a5,0
   11b54:	00041463          	bnez	s0,11b5c <_vfprintf_r+0x3bc>
   11b58:	3680106f          	j	12ec0 <_vfprintf_r+0x1720>
   11b5c:	000b0913          	mv	s2,s6
   11b60:	0077f713          	andi	a4,a5,7
   11b64:	fff90913          	addi	s2,s2,-1
   11b68:	0307071b          	addiw	a4,a4,48
   11b6c:	00e90023          	sb	a4,0(s2)
   11b70:	0037d793          	srli	a5,a5,0x3
   11b74:	fe0796e3          	bnez	a5,11b60 <_vfprintf_r+0x3c0>
   11b78:	001c7793          	andi	a5,s8,1
   11b7c:	ea0788e3          	beqz	a5,11a2c <_vfprintf_r+0x28c>
   11b80:	03000793          	li	a5,48
   11b84:	eaf704e3          	beq	a4,a5,11a2c <_vfprintf_r+0x28c>
   11b88:	fff90713          	addi	a4,s2,-1
   11b8c:	40eb06b3          	sub	a3,s6,a4
   11b90:	fef90fa3          	sb	a5,-1(s2)
   11b94:	02d12023          	sw	a3,32(sp)
   11b98:	00070913          	mv	s2,a4
   11b9c:	02012783          	lw	a5,32(sp)
   11ba0:	00078d93          	mv	s11,a5
   11ba4:	0087d463          	ble	s0,a5,11bac <_vfprintf_r+0x40c>
   11ba8:	00040d93          	mv	s11,s0
   11bac:	01b12423          	sw	s11,8(sp)
   11bb0:	04012623          	sw	zero,76(sp)
   11bb4:	2a060263          	beqz	a2,11e58 <_vfprintf_r+0x6b8>
   11bb8:	00812783          	lw	a5,8(sp)
   11bbc:	0017879b          	addiw	a5,a5,1
   11bc0:	00f12423          	sw	a5,8(sp)
   11bc4:	2940006f          	j	11e58 <_vfprintf_r+0x6b8>
   11bc8:	0009cd03          	lbu	s10,0(s3)
   11bcc:	00198993          	addi	s3,s3,1
   11bd0:	00ad1463          	bne	s10,a0,11bd8 <_vfprintf_r+0x438>
   11bd4:	75c0106f          	j	13330 <_vfprintf_r+0x1b90>
   11bd8:	fd0d079b          	addiw	a5,s10,-48
   11bdc:	00000413          	li	s0,0
   11be0:	d8f6e2e3          	bltu	a3,a5,11964 <_vfprintf_r+0x1c4>
   11be4:	00198993          	addi	s3,s3,1
   11be8:	fff9cd03          	lbu	s10,-1(s3)
   11bec:	0014181b          	slliw	a6,s0,0x1
   11bf0:	0034141b          	slliw	s0,s0,0x3
   11bf4:	0088043b          	addw	s0,a6,s0
   11bf8:	00f4043b          	addw	s0,s0,a5
   11bfc:	fd0d079b          	addiw	a5,s10,-48
   11c00:	fef6f2e3          	bleu	a5,a3,11be4 <_vfprintf_r+0x444>
   11c04:	d60450e3          	bgez	s0,11964 <_vfprintf_r+0x1c4>
   11c08:	fff00413          	li	s0,-1
   11c0c:	d59ff06f          	j	11964 <_vfprintf_r+0x1c4>
   11c10:	080c6c13          	ori	s8,s8,128
   11c14:	d49ff06f          	j	1195c <_vfprintf_r+0x1bc>
   11c18:	d40592e3          	bnez	a1,1195c <_vfprintf_r+0x1bc>
   11c1c:	00100613          	li	a2,1
   11c20:	02000593          	li	a1,32
   11c24:	d39ff06f          	j	1195c <_vfprintf_r+0x1bc>
   11c28:	001c6c13          	ori	s8,s8,1
   11c2c:	d31ff06f          	j	1195c <_vfprintf_r+0x1bc>
   11c30:	02813783          	ld	a5,40(sp)
   11c34:	080107a3          	sb	zero,143(sp)
   11c38:	0007b903          	ld	s2,0(a5)
   11c3c:	00878c93          	addi	s9,a5,8
   11c40:	00091463          	bnez	s2,11c48 <_vfprintf_r+0x4a8>
   11c44:	39c0106f          	j	12fe0 <_vfprintf_r+0x1840>
   11c48:	01113023          	sd	a7,0(sp)
   11c4c:	00045463          	bgez	s0,11c54 <_vfprintf_r+0x4b4>
   11c50:	3240106f          	j	12f74 <_vfprintf_r+0x17d4>
   11c54:	00040613          	mv	a2,s0
   11c58:	00000593          	li	a1,0
   11c5c:	00090513          	mv	a0,s2
   11c60:	048050ef          	jal	16ca8 <memchr>
   11c64:	00013883          	ld	a7,0(sp)
   11c68:	00051463          	bnez	a0,11c70 <_vfprintf_r+0x4d0>
   11c6c:	4c00106f          	j	1312c <_vfprintf_r+0x198c>
   11c70:	412507bb          	subw	a5,a0,s2
   11c74:	02f12023          	sw	a5,32(sp)
   11c78:	00078d93          	mv	s11,a5
   11c7c:	0007d463          	bgez	a5,11c84 <_vfprintf_r+0x4e4>
   11c80:	3140106f          	j	12f94 <_vfprintf_r+0x17f4>
   11c84:	08f14603          	lbu	a2,143(sp)
   11c88:	01b12423          	sw	s11,8(sp)
   11c8c:	03913423          	sd	s9,40(sp)
   11c90:	00000413          	li	s0,0
   11c94:	04012623          	sw	zero,76(sp)
   11c98:	f1dff06f          	j	11bb4 <_vfprintf_r+0x414>
   11c9c:	00060463          	beqz	a2,11ca4 <_vfprintf_r+0x504>
   11ca0:	7800106f          	j	13420 <_vfprintf_r+0x1c80>
   11ca4:	010c7793          	andi	a5,s8,16
   11ca8:	0e078463          	beqz	a5,11d90 <_vfprintf_r+0x5f0>
   11cac:	02813783          	ld	a5,40(sp)
   11cb0:	080107a3          	sb	zero,143(sp)
   11cb4:	00878713          	addi	a4,a5,8
   11cb8:	0007b783          	ld	a5,0(a5)
   11cbc:	0e044863          	bltz	s0,11dac <_vfprintf_r+0x60c>
   11cc0:	02e13423          	sd	a4,40(sp)
   11cc4:	f7fc7c13          	andi	s8,s8,-129
   11cc8:	00000613          	li	a2,0
   11ccc:	50078c63          	beqz	a5,121e4 <_vfprintf_r+0xa44>
   11cd0:	00900713          	li	a4,9
   11cd4:	000b0913          	mv	s2,s6
   11cd8:	00a00693          	li	a3,10
   11cdc:	40f770e3          	bleu	a5,a4,128dc <_vfprintf_r+0x113c>
   11ce0:	02d7f733          	remu	a4,a5,a3
   11ce4:	fff90913          	addi	s2,s2,-1
   11ce8:	02d7d7b3          	divu	a5,a5,a3
   11cec:	0307071b          	addiw	a4,a4,48
   11cf0:	00e90023          	sb	a4,0(s2)
   11cf4:	fe0796e3          	bnez	a5,11ce0 <_vfprintf_r+0x540>
   11cf8:	412b07b3          	sub	a5,s6,s2
   11cfc:	02f12023          	sw	a5,32(sp)
   11d00:	e9dff06f          	j	11b9c <_vfprintf_r+0x3fc>
   11d04:	00012c23          	sw	zero,24(sp)
   11d08:	fd0d079b          	addiw	a5,s10,-48
   11d0c:	01812303          	lw	t1,24(sp)
   11d10:	00198993          	addi	s3,s3,1
   11d14:	fff9cd03          	lbu	s10,-1(s3)
   11d18:	0013181b          	slliw	a6,t1,0x1
   11d1c:	00331c9b          	slliw	s9,t1,0x3
   11d20:	01980cbb          	addw	s9,a6,s9
   11d24:	019787bb          	addw	a5,a5,s9
   11d28:	00f12c23          	sw	a5,24(sp)
   11d2c:	fd0d079b          	addiw	a5,s10,-48
   11d30:	fcf6fee3          	bleu	a5,a3,11d0c <_vfprintf_r+0x56c>
   11d34:	c31ff06f          	j	11964 <_vfprintf_r+0x1c4>
   11d38:	00060463          	beqz	a2,11d40 <_vfprintf_r+0x5a0>
   11d3c:	6d80106f          	j	13414 <_vfprintf_r+0x1c74>
   11d40:	010c6c13          	ori	s8,s8,16
   11d44:	010c7793          	andi	a5,s8,16
   11d48:	de0792e3          	bnez	a5,11b2c <_vfprintf_r+0x38c>
   11d4c:	040c7793          	andi	a5,s8,64
   11d50:	080107a3          	sb	zero,143(sp)
   11d54:	580780e3          	beqz	a5,12ad4 <_vfprintf_r+0x1334>
   11d58:	02813783          	ld	a5,40(sp)
   11d5c:	00878713          	addi	a4,a5,8
   11d60:	0007d783          	lhu	a5,0(a5)
   11d64:	dc045ee3          	bgez	s0,11b40 <_vfprintf_r+0x3a0>
   11d68:	02e13423          	sd	a4,40(sp)
   11d6c:	00000613          	li	a2,0
   11d70:	60078a63          	beqz	a5,12384 <_vfprintf_r+0xbe4>
   11d74:	00000613          	li	a2,0
   11d78:	de5ff06f          	j	11b5c <_vfprintf_r+0x3bc>
   11d7c:	00060463          	beqz	a2,11d84 <_vfprintf_r+0x5e4>
   11d80:	6880106f          	j	13408 <_vfprintf_r+0x1c68>
   11d84:	010c6c13          	ori	s8,s8,16
   11d88:	010c7793          	andi	a5,s8,16
   11d8c:	f20790e3          	bnez	a5,11cac <_vfprintf_r+0x50c>
   11d90:	040c7793          	andi	a5,s8,64
   11d94:	080107a3          	sb	zero,143(sp)
   11d98:	500780e3          	beqz	a5,12a98 <_vfprintf_r+0x12f8>
   11d9c:	02813783          	ld	a5,40(sp)
   11da0:	00878713          	addi	a4,a5,8
   11da4:	0007d783          	lhu	a5,0(a5)
   11da8:	f0045ce3          	bgez	s0,11cc0 <_vfprintf_r+0x520>
   11dac:	02e13423          	sd	a4,40(sp)
   11db0:	00000613          	li	a2,0
   11db4:	f0079ee3          	bnez	a5,11cd0 <_vfprintf_r+0x530>
   11db8:	00100793          	li	a5,1
   11dbc:	5c80006f          	j	12384 <_vfprintf_r+0xbe4>
   11dc0:	00060463          	beqz	a2,11dc8 <_vfprintf_r+0x628>
   11dc4:	63c0106f          	j	13400 <_vfprintf_r+0x1c60>
   11dc8:	0001b7b7          	lui	a5,0x1b
   11dcc:	4e078793          	addi	a5,a5,1248 # 1b4e0 <zeroes.4137+0x50>
   11dd0:	02f13c23          	sd	a5,56(sp)
   11dd4:	010c7793          	andi	a5,s8,16
   11dd8:	4c078263          	beqz	a5,1229c <_vfprintf_r+0xafc>
   11ddc:	02813703          	ld	a4,40(sp)
   11de0:	00073783          	ld	a5,0(a4)
   11de4:	00870713          	addi	a4,a4,8
   11de8:	02e13423          	sd	a4,40(sp)
   11dec:	001c7713          	andi	a4,s8,1
   11df0:	120706e3          	beqz	a4,1271c <_vfprintf_r+0xf7c>
   11df4:	6a078ee3          	beqz	a5,12cb0 <_vfprintf_r+0x1510>
   11df8:	03000713          	li	a4,48
   11dfc:	08e10823          	sb	a4,144(sp)
   11e00:	09a108a3          	sb	s10,145(sp)
   11e04:	080107a3          	sb	zero,143(sp)
   11e08:	002c6713          	ori	a4,s8,2
   11e0c:	00045463          	bgez	s0,11e14 <_vfprintf_r+0x674>
   11e10:	2140106f          	j	13024 <_vfprintf_r+0x1884>
   11e14:	f7fc7c13          	andi	s8,s8,-129
   11e18:	002c6c13          	ori	s8,s8,2
   11e1c:	00000613          	li	a2,0
   11e20:	be9ff06f          	j	11a08 <_vfprintf_r+0x268>
   11e24:	02813703          	ld	a4,40(sp)
   11e28:	00100693          	li	a3,1
   11e2c:	00d12423          	sw	a3,8(sp)
   11e30:	00072783          	lw	a5,0(a4)
   11e34:	080107a3          	sb	zero,143(sp)
   11e38:	00000613          	li	a2,0
   11e3c:	0cf10423          	sb	a5,200(sp)
   11e40:	00870793          	addi	a5,a4,8
   11e44:	02f13423          	sd	a5,40(sp)
   11e48:	02d12023          	sw	a3,32(sp)
   11e4c:	00000413          	li	s0,0
   11e50:	04012623          	sw	zero,76(sp)
   11e54:	0c810913          	addi	s2,sp,200
   11e58:	002c7793          	andi	a5,s8,2
   11e5c:	04f12023          	sw	a5,64(sp)
   11e60:	00078863          	beqz	a5,11e70 <_vfprintf_r+0x6d0>
   11e64:	00812783          	lw	a5,8(sp)
   11e68:	0027879b          	addiw	a5,a5,2
   11e6c:	00f12423          	sw	a5,8(sp)
   11e70:	084c7793          	andi	a5,s8,132
   11e74:	04f12423          	sw	a5,72(sp)
   11e78:	52079263          	bnez	a5,1239c <_vfprintf_r+0xbfc>
   11e7c:	01812783          	lw	a5,24(sp)
   11e80:	00812703          	lw	a4,8(sp)
   11e84:	40e78cbb          	subw	s9,a5,a4
   11e88:	51905a63          	blez	s9,1239c <_vfprintf_r+0xbfc>
   11e8c:	01000793          	li	a5,16
   11e90:	0197c463          	blt	a5,s9,11e98 <_vfprintf_r+0x6f8>
   11e94:	1080106f          	j	12f9c <_vfprintf_r+0x17fc>
   11e98:	01000813          	li	a6,16
   11e9c:	0c013783          	ld	a5,192(sp)
   11ea0:	0b812703          	lw	a4,184(sp)
   11ea4:	05513823          	sd	s5,80(sp)
   11ea8:	00700313          	li	t1,7
   11eac:	00080d93          	mv	s11,a6
   11eb0:	00c0006f          	j	11ebc <_vfprintf_r+0x71c>
   11eb4:	ff0c8c9b          	addiw	s9,s9,-16
   11eb8:	059dde63          	ble	s9,s11,11f14 <_vfprintf_r+0x774>
   11ebc:	01078793          	addi	a5,a5,16
   11ec0:	0017071b          	addiw	a4,a4,1
   11ec4:	0158b023          	sd	s5,0(a7)
   11ec8:	0108b423          	sd	a6,8(a7)
   11ecc:	0cf13023          	sd	a5,192(sp)
   11ed0:	0ae12c23          	sw	a4,184(sp)
   11ed4:	01088893          	addi	a7,a7,16
   11ed8:	fce35ee3          	ble	a4,t1,11eb4 <_vfprintf_r+0x714>
   11edc:	0b010613          	addi	a2,sp,176
   11ee0:	000a0593          	mv	a1,s4
   11ee4:	000b8513          	mv	a0,s7
   11ee8:	00613823          	sd	t1,16(sp)
   11eec:	01013023          	sd	a6,0(sp)
   11ef0:	69c060ef          	jal	1858c <__sprint_r>
   11ef4:	ba051ee3          	bnez	a0,11ab0 <_vfprintf_r+0x310>
   11ef8:	ff0c8c9b          	addiw	s9,s9,-16
   11efc:	0c013783          	ld	a5,192(sp)
   11f00:	0b812703          	lw	a4,184(sp)
   11f04:	000b0893          	mv	a7,s6
   11f08:	01013303          	ld	t1,16(sp)
   11f0c:	00013803          	ld	a6,0(sp)
   11f10:	fb9dc6e3          	blt	s11,s9,11ebc <_vfprintf_r+0x71c>
   11f14:	05013603          	ld	a2,80(sp)
   11f18:	00fc87b3          	add	a5,s9,a5
   11f1c:	0017071b          	addiw	a4,a4,1
   11f20:	00c8b023          	sd	a2,0(a7)
   11f24:	0198b423          	sd	s9,8(a7)
   11f28:	0cf13023          	sd	a5,192(sp)
   11f2c:	0ae12c23          	sw	a4,184(sp)
   11f30:	00700693          	li	a3,7
   11f34:	0ce6cae3          	blt	a3,a4,12808 <_vfprintf_r+0x1068>
   11f38:	08f14603          	lbu	a2,143(sp)
   11f3c:	01088893          	addi	a7,a7,16
   11f40:	02060a63          	beqz	a2,11f74 <_vfprintf_r+0x7d4>
   11f44:	0b812703          	lw	a4,184(sp)
   11f48:	08f10693          	addi	a3,sp,143
   11f4c:	00d8b023          	sd	a3,0(a7)
   11f50:	00178793          	addi	a5,a5,1
   11f54:	00100693          	li	a3,1
   11f58:	0017071b          	addiw	a4,a4,1
   11f5c:	00d8b423          	sd	a3,8(a7)
   11f60:	0cf13023          	sd	a5,192(sp)
   11f64:	0ae12c23          	sw	a4,184(sp)
   11f68:	00700693          	li	a3,7
   11f6c:	01088893          	addi	a7,a7,16
   11f70:	76e6c663          	blt	a3,a4,126dc <_vfprintf_r+0xf3c>
   11f74:	04012703          	lw	a4,64(sp)
   11f78:	02070a63          	beqz	a4,11fac <_vfprintf_r+0x80c>
   11f7c:	0b812703          	lw	a4,184(sp)
   11f80:	09010693          	addi	a3,sp,144
   11f84:	00d8b023          	sd	a3,0(a7)
   11f88:	00278793          	addi	a5,a5,2
   11f8c:	00200693          	li	a3,2
   11f90:	0017071b          	addiw	a4,a4,1
   11f94:	00d8b423          	sd	a3,8(a7)
   11f98:	0cf13023          	sd	a5,192(sp)
   11f9c:	0ae12c23          	sw	a4,184(sp)
   11fa0:	00700693          	li	a3,7
   11fa4:	01088893          	addi	a7,a7,16
   11fa8:	74e6ca63          	blt	a3,a4,126fc <_vfprintf_r+0xf5c>
   11fac:	04812683          	lw	a3,72(sp)
   11fb0:	08000713          	li	a4,128
   11fb4:	5ee68663          	beq	a3,a4,125a0 <_vfprintf_r+0xe00>
   11fb8:	02012703          	lw	a4,32(sp)
   11fbc:	40e4043b          	subw	s0,s0,a4
   11fc0:	0c805063          	blez	s0,12080 <_vfprintf_r+0x8e0>
   11fc4:	01000713          	li	a4,16
   11fc8:	4e875ce3          	ble	s0,a4,12cc0 <_vfprintf_r+0x1520>
   11fcc:	01000c93          	li	s9,16
   11fd0:	0b812703          	lw	a4,184(sp)
   11fd4:	00913823          	sd	s1,16(sp)
   11fd8:	00700813          	li	a6,7
   11fdc:	000c8d93          	mv	s11,s9
   11fe0:	00c0006f          	j	11fec <_vfprintf_r+0x84c>
   11fe4:	ff04041b          	addiw	s0,s0,-16
   11fe8:	048dda63          	ble	s0,s11,1203c <_vfprintf_r+0x89c>
   11fec:	01078793          	addi	a5,a5,16
   11ff0:	0017071b          	addiw	a4,a4,1
   11ff4:	0098b023          	sd	s1,0(a7)
   11ff8:	0198b423          	sd	s9,8(a7)
   11ffc:	0cf13023          	sd	a5,192(sp)
   12000:	0ae12c23          	sw	a4,184(sp)
   12004:	01088893          	addi	a7,a7,16
   12008:	fce85ee3          	ble	a4,a6,11fe4 <_vfprintf_r+0x844>
   1200c:	0b010613          	addi	a2,sp,176
   12010:	000a0593          	mv	a1,s4
   12014:	000b8513          	mv	a0,s7
   12018:	01013023          	sd	a6,0(sp)
   1201c:	570060ef          	jal	1858c <__sprint_r>
   12020:	a80518e3          	bnez	a0,11ab0 <_vfprintf_r+0x310>
   12024:	ff04041b          	addiw	s0,s0,-16
   12028:	0c013783          	ld	a5,192(sp)
   1202c:	0b812703          	lw	a4,184(sp)
   12030:	000b0893          	mv	a7,s6
   12034:	00013803          	ld	a6,0(sp)
   12038:	fa8dcae3          	blt	s11,s0,11fec <_vfprintf_r+0x84c>
   1203c:	01013683          	ld	a3,16(sp)
   12040:	008787b3          	add	a5,a5,s0
   12044:	0017071b          	addiw	a4,a4,1
   12048:	00d8b023          	sd	a3,0(a7)
   1204c:	0088b423          	sd	s0,8(a7)
   12050:	0cf13023          	sd	a5,192(sp)
   12054:	0ae12c23          	sw	a4,184(sp)
   12058:	00700693          	li	a3,7
   1205c:	01088893          	addi	a7,a7,16
   12060:	02e6d063          	ble	a4,a3,12080 <_vfprintf_r+0x8e0>
   12064:	0b010613          	addi	a2,sp,176
   12068:	000a0593          	mv	a1,s4
   1206c:	000b8513          	mv	a0,s7
   12070:	51c060ef          	jal	1858c <__sprint_r>
   12074:	a2051ee3          	bnez	a0,11ab0 <_vfprintf_r+0x310>
   12078:	0c013783          	ld	a5,192(sp)
   1207c:	000b0893          	mv	a7,s6
   12080:	100c7713          	andi	a4,s8,256
   12084:	40071663          	bnez	a4,12490 <_vfprintf_r+0xcf0>
   12088:	02012703          	lw	a4,32(sp)
   1208c:	0b812683          	lw	a3,184(sp)
   12090:	0128b023          	sd	s2,0(a7)
   12094:	00e787b3          	add	a5,a5,a4
   12098:	0016869b          	addiw	a3,a3,1
   1209c:	00e8b423          	sd	a4,8(a7)
   120a0:	0cf13023          	sd	a5,192(sp)
   120a4:	0ad12c23          	sw	a3,184(sp)
   120a8:	00700713          	li	a4,7
   120ac:	3cd74263          	blt	a4,a3,12470 <_vfprintf_r+0xcd0>
   120b0:	01088893          	addi	a7,a7,16
   120b4:	004c7c13          	andi	s8,s8,4
   120b8:	0c0c0063          	beqz	s8,12178 <_vfprintf_r+0x9d8>
   120bc:	01812703          	lw	a4,24(sp)
   120c0:	00812683          	lw	a3,8(sp)
   120c4:	40d7043b          	subw	s0,a4,a3
   120c8:	0a805863          	blez	s0,12178 <_vfprintf_r+0x9d8>
   120cc:	01000713          	li	a4,16
   120d0:	748754e3          	ble	s0,a4,13018 <_vfprintf_r+0x1878>
   120d4:	01000913          	li	s2,16
   120d8:	0b812703          	lw	a4,184(sp)
   120dc:	05513823          	sd	s5,80(sp)
   120e0:	00700c13          	li	s8,7
   120e4:	00090d13          	mv	s10,s2
   120e8:	00c0006f          	j	120f4 <_vfprintf_r+0x954>
   120ec:	ff04041b          	addiw	s0,s0,-16
   120f0:	048d5663          	ble	s0,s10,1213c <_vfprintf_r+0x99c>
   120f4:	01078793          	addi	a5,a5,16
   120f8:	0017071b          	addiw	a4,a4,1
   120fc:	0158b023          	sd	s5,0(a7)
   12100:	0128b423          	sd	s2,8(a7)
   12104:	0cf13023          	sd	a5,192(sp)
   12108:	0ae12c23          	sw	a4,184(sp)
   1210c:	01088893          	addi	a7,a7,16
   12110:	fcec5ee3          	ble	a4,s8,120ec <_vfprintf_r+0x94c>
   12114:	0b010613          	addi	a2,sp,176
   12118:	000a0593          	mv	a1,s4
   1211c:	000b8513          	mv	a0,s7
   12120:	46c060ef          	jal	1858c <__sprint_r>
   12124:	980516e3          	bnez	a0,11ab0 <_vfprintf_r+0x310>
   12128:	ff04041b          	addiw	s0,s0,-16
   1212c:	0c013783          	ld	a5,192(sp)
   12130:	0b812703          	lw	a4,184(sp)
   12134:	000b0893          	mv	a7,s6
   12138:	fa8d4ee3          	blt	s10,s0,120f4 <_vfprintf_r+0x954>
   1213c:	05013683          	ld	a3,80(sp)
   12140:	008787b3          	add	a5,a5,s0
   12144:	0017071b          	addiw	a4,a4,1
   12148:	00d8b023          	sd	a3,0(a7)
   1214c:	0088b423          	sd	s0,8(a7)
   12150:	0cf13023          	sd	a5,192(sp)
   12154:	0ae12c23          	sw	a4,184(sp)
   12158:	00700693          	li	a3,7
   1215c:	00e6de63          	ble	a4,a3,12178 <_vfprintf_r+0x9d8>
   12160:	0b010613          	addi	a2,sp,176
   12164:	000a0593          	mv	a1,s4
   12168:	000b8513          	mv	a0,s7
   1216c:	420060ef          	jal	1858c <__sprint_r>
   12170:	940510e3          	bnez	a0,11ab0 <_vfprintf_r+0x310>
   12174:	0c013783          	ld	a5,192(sp)
   12178:	01812c83          	lw	s9,24(sp)
   1217c:	00812703          	lw	a4,8(sp)
   12180:	00ecd463          	ble	a4,s9,12188 <_vfprintf_r+0x9e8>
   12184:	00070c93          	mv	s9,a4
   12188:	01c12703          	lw	a4,28(sp)
   1218c:	0197073b          	addw	a4,a4,s9
   12190:	00e12e23          	sw	a4,28(sp)
   12194:	52079863          	bnez	a5,126c4 <_vfprintf_r+0xf24>
   12198:	0009c783          	lbu	a5,0(s3)
   1219c:	0a012c23          	sw	zero,184(sp)
   121a0:	000b0893          	mv	a7,s6
   121a4:	f2079263          	bnez	a5,118c8 <_vfprintf_r+0x128>
   121a8:	00098413          	mv	s0,s3
   121ac:	f80ff06f          	j	1192c <_vfprintf_r+0x18c>
   121b0:	00060463          	beqz	a2,121b8 <_vfprintf_r+0xa18>
   121b4:	22c0106f          	j	133e0 <_vfprintf_r+0x1c40>
   121b8:	010c7793          	andi	a5,s8,16
   121bc:	12078e63          	beqz	a5,122f8 <_vfprintf_r+0xb58>
   121c0:	02813703          	ld	a4,40(sp)
   121c4:	00073783          	ld	a5,0(a4)
   121c8:	00870713          	addi	a4,a4,8
   121cc:	02e13423          	sd	a4,40(sp)
   121d0:	1407c0e3          	bltz	a5,12b10 <_vfprintf_r+0x1370>
   121d4:	08f14603          	lbu	a2,143(sp)
   121d8:	bc044ee3          	bltz	s0,11db4 <_vfprintf_r+0x614>
   121dc:	f7fc7c13          	andi	s8,s8,-129
   121e0:	ae0798e3          	bnez	a5,11cd0 <_vfprintf_r+0x530>
   121e4:	6e041a63          	bnez	s0,128d8 <_vfprintf_r+0x1138>
   121e8:	00000413          	li	s0,0
   121ec:	02012023          	sw	zero,32(sp)
   121f0:	000b0913          	mv	s2,s6
   121f4:	9a9ff06f          	j	11b9c <_vfprintf_r+0x3fc>
   121f8:	040c6c13          	ori	s8,s8,64
   121fc:	f60ff06f          	j	1195c <_vfprintf_r+0x1bc>
   12200:	00060463          	beqz	a2,12208 <_vfprintf_r+0xa68>
   12204:	1d40106f          	j	133d8 <_vfprintf_r+0x1c38>
   12208:	02813783          	ld	a5,40(sp)
   1220c:	00100913          	li	s2,1
   12210:	0007b787          	fld	fa5,0(a5)
   12214:	00878793          	addi	a5,a5,8
   12218:	01113023          	sd	a7,0(sp)
   1221c:	04f13c27          	fsd	fa5,88(sp)
   12220:	05813c83          	ld	s9,88(sp)
   12224:	02f13423          	sd	a5,40(sp)
   12228:	f20c8553          	fmv.d.x	fa0,s9
   1222c:	5d9050ef          	jal	18004 <__fpclassifyd>
   12230:	00013883          	ld	a7,0(sp)
   12234:	0f251ce3          	bne	a0,s2,12b2c <_vfprintf_r+0x138c>
   12238:	f20007d3          	fmv.d.x	fa5,zero
   1223c:	f20c8753          	fmv.d.x	fa4,s9
   12240:	a2f717d3          	flt.d	a5,fa4,fa5
   12244:	600792e3          	bnez	a5,13048 <_vfprintf_r+0x18a8>
   12248:	08f14603          	lbu	a2,143(sp)
   1224c:	04700793          	li	a5,71
   12250:	3da7d8e3          	ble	s10,a5,12e20 <_vfprintf_r+0x1680>
   12254:	0001b937          	lui	s2,0x1b
   12258:	4c890913          	addi	s2,s2,1224 # 1b4c8 <zeroes.4137+0x38>
   1225c:	00300793          	li	a5,3
   12260:	00f12423          	sw	a5,8(sp)
   12264:	f7fc7c13          	andi	s8,s8,-129
   12268:	02f12023          	sw	a5,32(sp)
   1226c:	00000413          	li	s0,0
   12270:	04012623          	sw	zero,76(sp)
   12274:	941ff06f          	j	11bb4 <_vfprintf_r+0x414>
   12278:	008c6c13          	ori	s8,s8,8
   1227c:	ee0ff06f          	j	1195c <_vfprintf_r+0x1bc>
   12280:	00060463          	beqz	a2,12288 <_vfprintf_r+0xae8>
   12284:	1280106f          	j	133ac <_vfprintf_r+0x1c0c>
   12288:	0001b7b7          	lui	a5,0x1b
   1228c:	4f878793          	addi	a5,a5,1272 # 1b4f8 <zeroes.4137+0x68>
   12290:	02f13c23          	sd	a5,56(sp)
   12294:	010c7793          	andi	a5,s8,16
   12298:	b40792e3          	bnez	a5,11ddc <_vfprintf_r+0x63c>
   1229c:	040c7793          	andi	a5,s8,64
   122a0:	02813703          	ld	a4,40(sp)
   122a4:	1c0784e3          	beqz	a5,12c6c <_vfprintf_r+0x14cc>
   122a8:	00075783          	lhu	a5,0(a4)
   122ac:	00870713          	addi	a4,a4,8
   122b0:	02e13423          	sd	a4,40(sp)
   122b4:	b39ff06f          	j	11dec <_vfprintf_r+0x64c>
   122b8:	00060463          	beqz	a2,122c0 <_vfprintf_r+0xb20>
   122bc:	10c0106f          	j	133c8 <_vfprintf_r+0x1c28>
   122c0:	010c7793          	andi	a5,s8,16
   122c4:	1a078ce3          	beqz	a5,12c7c <_vfprintf_r+0x14dc>
   122c8:	02813683          	ld	a3,40(sp)
   122cc:	01c12703          	lw	a4,28(sp)
   122d0:	0006b783          	ld	a5,0(a3)
   122d4:	00868693          	addi	a3,a3,8
   122d8:	02d13423          	sd	a3,40(sp)
   122dc:	00e7b023          	sd	a4,0(a5)
   122e0:	de0ff06f          	j	118c0 <_vfprintf_r+0x120>
   122e4:	00060463          	beqz	a2,122ec <_vfprintf_r+0xb4c>
   122e8:	0d40106f          	j	133bc <_vfprintf_r+0x1c1c>
   122ec:	010c6c13          	ori	s8,s8,16
   122f0:	010c7793          	andi	a5,s8,16
   122f4:	ec0796e3          	bnez	a5,121c0 <_vfprintf_r+0xa20>
   122f8:	040c7793          	andi	a5,s8,64
   122fc:	02813703          	ld	a4,40(sp)
   12300:	1a0780e3          	beqz	a5,12ca0 <_vfprintf_r+0x1500>
   12304:	00071783          	lh	a5,0(a4)
   12308:	00870713          	addi	a4,a4,8
   1230c:	02e13423          	sd	a4,40(sp)
   12310:	ec1ff06f          	j	121d0 <_vfprintf_r+0xa30>
   12314:	0001b737          	lui	a4,0x1b
   12318:	4f870713          	addi	a4,a4,1272 # 1b4f8 <zeroes.4137+0x68>
   1231c:	00000613          	li	a2,0
   12320:	02e13c23          	sd	a4,56(sp)
   12324:	07800d13          	li	s10,120
   12328:	ee0ff06f          	j	11a08 <_vfprintf_r+0x268>
   1232c:	00060463          	beqz	a2,12334 <_vfprintf_r+0xb94>
   12330:	0c00106f          	j	133f0 <_vfprintf_r+0x1c50>
   12334:	f60d0263          	beqz	s10,11a98 <_vfprintf_r+0x2f8>
   12338:	00100793          	li	a5,1
   1233c:	00f12423          	sw	a5,8(sp)
   12340:	0da10423          	sb	s10,200(sp)
   12344:	080107a3          	sb	zero,143(sp)
   12348:	00000613          	li	a2,0
   1234c:	02f12023          	sw	a5,32(sp)
   12350:	00000413          	li	s0,0
   12354:	04012623          	sw	zero,76(sp)
   12358:	0c810913          	addi	s2,sp,200
   1235c:	afdff06f          	j	11e58 <_vfprintf_r+0x6b8>
   12360:	02e13423          	sd	a4,40(sp)
   12364:	0001b737          	lui	a4,0x1b
   12368:	4f870713          	addi	a4,a4,1272 # 1b4f8 <zeroes.4137+0x68>
   1236c:	00068c13          	mv	s8,a3
   12370:	02e13c23          	sd	a4,56(sp)
   12374:	07800d13          	li	s10,120
   12378:	3a079a63          	bnez	a5,1272c <_vfprintf_r+0xf8c>
   1237c:	00000613          	li	a2,0
   12380:	00200793          	li	a5,2
   12384:	00100713          	li	a4,1
   12388:	54e78863          	beq	a5,a4,128d8 <_vfprintf_r+0x1138>
   1238c:	00200713          	li	a4,2
   12390:	e6e78a63          	beq	a5,a4,11a04 <_vfprintf_r+0x264>
   12394:	00000793          	li	a5,0
   12398:	fc4ff06f          	j	11b5c <_vfprintf_r+0x3bc>
   1239c:	0c013783          	ld	a5,192(sp)
   123a0:	ba1ff06f          	j	11f40 <_vfprintf_r+0x7a0>
   123a4:	07012683          	lw	a3,112(sp)
   123a8:	00100713          	li	a4,1
   123ac:	00178793          	addi	a5,a5,1
   123b0:	6cd75663          	ble	a3,a4,12a7c <_vfprintf_r+0x12dc>
   123b4:	0b812703          	lw	a4,184(sp)
   123b8:	00100693          	li	a3,1
   123bc:	00d8b423          	sd	a3,8(a7)
   123c0:	0017071b          	addiw	a4,a4,1
   123c4:	0128b023          	sd	s2,0(a7)
   123c8:	0cf13023          	sd	a5,192(sp)
   123cc:	0ae12c23          	sw	a4,184(sp)
   123d0:	00700693          	li	a3,7
   123d4:	01088893          	addi	a7,a7,16
   123d8:	6ce6ca63          	blt	a3,a4,12aac <_vfprintf_r+0x130c>
   123dc:	06813683          	ld	a3,104(sp)
   123e0:	06013603          	ld	a2,96(sp)
   123e4:	0017071b          	addiw	a4,a4,1
   123e8:	00f687b3          	add	a5,a3,a5
   123ec:	00d8b423          	sd	a3,8(a7)
   123f0:	00c8b023          	sd	a2,0(a7)
   123f4:	0cf13023          	sd	a5,192(sp)
   123f8:	0ae12c23          	sw	a4,184(sp)
   123fc:	00700693          	li	a3,7
   12400:	01088893          	addi	a7,a7,16
   12404:	6ee6c263          	blt	a3,a4,12ae8 <_vfprintf_r+0x1348>
   12408:	f20007d3          	fmv.d.x	fa5,zero
   1240c:	05813707          	fld	fa4,88(sp)
   12410:	a2f726d3          	feq.d	a3,fa4,fa5
   12414:	40069c63          	bnez	a3,1282c <_vfprintf_r+0x108c>
   12418:	07012683          	lw	a3,112(sp)
   1241c:	00190913          	addi	s2,s2,1
   12420:	0017071b          	addiw	a4,a4,1
   12424:	fff6869b          	addiw	a3,a3,-1
   12428:	00d787b3          	add	a5,a5,a3
   1242c:	0128b023          	sd	s2,0(a7)
   12430:	00d8b423          	sd	a3,8(a7)
   12434:	0cf13023          	sd	a5,192(sp)
   12438:	0ae12c23          	sw	a4,184(sp)
   1243c:	00700693          	li	a3,7
   12440:	26e6c063          	blt	a3,a4,126a0 <_vfprintf_r+0xf00>
   12444:	01088893          	addi	a7,a7,16
   12448:	07412683          	lw	a3,116(sp)
   1244c:	0a010613          	addi	a2,sp,160
   12450:	0017071b          	addiw	a4,a4,1
   12454:	00f687b3          	add	a5,a3,a5
   12458:	00c8b023          	sd	a2,0(a7)
   1245c:	00d8b423          	sd	a3,8(a7)
   12460:	0cf13023          	sd	a5,192(sp)
   12464:	0ae12c23          	sw	a4,184(sp)
   12468:	00700693          	li	a3,7
   1246c:	c4e6d2e3          	ble	a4,a3,120b0 <_vfprintf_r+0x910>
   12470:	0b010613          	addi	a2,sp,176
   12474:	000a0593          	mv	a1,s4
   12478:	000b8513          	mv	a0,s7
   1247c:	110060ef          	jal	1858c <__sprint_r>
   12480:	e2051863          	bnez	a0,11ab0 <_vfprintf_r+0x310>
   12484:	0c013783          	ld	a5,192(sp)
   12488:	000b0893          	mv	a7,s6
   1248c:	c29ff06f          	j	120b4 <_vfprintf_r+0x914>
   12490:	06500713          	li	a4,101
   12494:	f1a758e3          	ble	s10,a4,123a4 <_vfprintf_r+0xc04>
   12498:	f20007d3          	fmv.d.x	fa5,zero
   1249c:	05813707          	fld	fa4,88(sp)
   124a0:	a2f72753          	feq.d	a4,fa4,fa5
   124a4:	28070863          	beqz	a4,12734 <_vfprintf_r+0xf94>
   124a8:	0b812703          	lw	a4,184(sp)
   124ac:	0001b6b7          	lui	a3,0x1b
   124b0:	51868693          	addi	a3,a3,1304 # 1b518 <zeroes.4137+0x88>
   124b4:	00d8b023          	sd	a3,0(a7)
   124b8:	00178793          	addi	a5,a5,1
   124bc:	00100693          	li	a3,1
   124c0:	0017071b          	addiw	a4,a4,1
   124c4:	00d8b423          	sd	a3,8(a7)
   124c8:	0cf13023          	sd	a5,192(sp)
   124cc:	0ae12c23          	sw	a4,184(sp)
   124d0:	00700693          	li	a3,7
   124d4:	01088893          	addi	a7,a7,16
   124d8:	7ee6ca63          	blt	a3,a4,12ccc <_vfprintf_r+0x152c>
   124dc:	09812703          	lw	a4,152(sp)
   124e0:	07012683          	lw	a3,112(sp)
   124e4:	00d74663          	blt	a4,a3,124f0 <_vfprintf_r+0xd50>
   124e8:	001c7713          	andi	a4,s8,1
   124ec:	bc0704e3          	beqz	a4,120b4 <_vfprintf_r+0x914>
   124f0:	06013703          	ld	a4,96(sp)
   124f4:	06813683          	ld	a3,104(sp)
   124f8:	01088893          	addi	a7,a7,16
   124fc:	fee8b823          	sd	a4,-16(a7)
   12500:	0b812703          	lw	a4,184(sp)
   12504:	00d787b3          	add	a5,a5,a3
   12508:	fed8bc23          	sd	a3,-8(a7)
   1250c:	0017071b          	addiw	a4,a4,1
   12510:	0cf13023          	sd	a5,192(sp)
   12514:	0ae12c23          	sw	a4,184(sp)
   12518:	00700693          	li	a3,7
   1251c:	1ce6c8e3          	blt	a3,a4,12eec <_vfprintf_r+0x174c>
   12520:	07012703          	lw	a4,112(sp)
   12524:	fff7041b          	addiw	s0,a4,-1
   12528:	b88056e3          	blez	s0,120b4 <_vfprintf_r+0x914>
   1252c:	01000713          	li	a4,16
   12530:	36875c63          	ble	s0,a4,128a8 <_vfprintf_r+0x1108>
   12534:	01000913          	li	s2,16
   12538:	0b812703          	lw	a4,184(sp)
   1253c:	00913823          	sd	s1,16(sp)
   12540:	00700d13          	li	s10,7
   12544:	00090693          	mv	a3,s2
   12548:	00c0006f          	j	12554 <_vfprintf_r+0xdb4>
   1254c:	ff04041b          	addiw	s0,s0,-16
   12550:	3686d063          	ble	s0,a3,128b0 <_vfprintf_r+0x1110>
   12554:	01078793          	addi	a5,a5,16
   12558:	0017071b          	addiw	a4,a4,1
   1255c:	0098b023          	sd	s1,0(a7)
   12560:	0128b423          	sd	s2,8(a7)
   12564:	0cf13023          	sd	a5,192(sp)
   12568:	0ae12c23          	sw	a4,184(sp)
   1256c:	01088893          	addi	a7,a7,16
   12570:	fced5ee3          	ble	a4,s10,1254c <_vfprintf_r+0xdac>
   12574:	0b010613          	addi	a2,sp,176
   12578:	000a0593          	mv	a1,s4
   1257c:	000b8513          	mv	a0,s7
   12580:	00d13023          	sd	a3,0(sp)
   12584:	008060ef          	jal	1858c <__sprint_r>
   12588:	d2051463          	bnez	a0,11ab0 <_vfprintf_r+0x310>
   1258c:	0c013783          	ld	a5,192(sp)
   12590:	0b812703          	lw	a4,184(sp)
   12594:	000b0893          	mv	a7,s6
   12598:	00013683          	ld	a3,0(sp)
   1259c:	fb1ff06f          	j	1254c <_vfprintf_r+0xdac>
   125a0:	01812703          	lw	a4,24(sp)
   125a4:	00812683          	lw	a3,8(sp)
   125a8:	40d70cbb          	subw	s9,a4,a3
   125ac:	a19056e3          	blez	s9,11fb8 <_vfprintf_r+0x818>
   125b0:	01000713          	li	a4,16
   125b4:	2f975ee3          	ble	s9,a4,130b0 <_vfprintf_r+0x1910>
   125b8:	01000813          	li	a6,16
   125bc:	0b812703          	lw	a4,184(sp)
   125c0:	00913823          	sd	s1,16(sp)
   125c4:	00700313          	li	t1,7
   125c8:	00080d93          	mv	s11,a6
   125cc:	00c0006f          	j	125d8 <_vfprintf_r+0xe38>
   125d0:	ff0c8c9b          	addiw	s9,s9,-16
   125d4:	059dde63          	ble	s9,s11,12630 <_vfprintf_r+0xe90>
   125d8:	01078793          	addi	a5,a5,16
   125dc:	0017071b          	addiw	a4,a4,1
   125e0:	0098b023          	sd	s1,0(a7)
   125e4:	0108b423          	sd	a6,8(a7)
   125e8:	0cf13023          	sd	a5,192(sp)
   125ec:	0ae12c23          	sw	a4,184(sp)
   125f0:	01088893          	addi	a7,a7,16
   125f4:	fce35ee3          	ble	a4,t1,125d0 <_vfprintf_r+0xe30>
   125f8:	0b010613          	addi	a2,sp,176
   125fc:	000a0593          	mv	a1,s4
   12600:	000b8513          	mv	a0,s7
   12604:	04613023          	sd	t1,64(sp)
   12608:	01013023          	sd	a6,0(sp)
   1260c:	781050ef          	jal	1858c <__sprint_r>
   12610:	ca051063          	bnez	a0,11ab0 <_vfprintf_r+0x310>
   12614:	ff0c8c9b          	addiw	s9,s9,-16
   12618:	0c013783          	ld	a5,192(sp)
   1261c:	0b812703          	lw	a4,184(sp)
   12620:	000b0893          	mv	a7,s6
   12624:	04013303          	ld	t1,64(sp)
   12628:	00013803          	ld	a6,0(sp)
   1262c:	fb9dc6e3          	blt	s11,s9,125d8 <_vfprintf_r+0xe38>
   12630:	01013603          	ld	a2,16(sp)
   12634:	019787b3          	add	a5,a5,s9
   12638:	0017071b          	addiw	a4,a4,1
   1263c:	00c8b023          	sd	a2,0(a7)
   12640:	0198b423          	sd	s9,8(a7)
   12644:	0cf13023          	sd	a5,192(sp)
   12648:	0ae12c23          	sw	a4,184(sp)
   1264c:	00700693          	li	a3,7
   12650:	01088893          	addi	a7,a7,16
   12654:	96e6d2e3          	ble	a4,a3,11fb8 <_vfprintf_r+0x818>
   12658:	0b010613          	addi	a2,sp,176
   1265c:	000a0593          	mv	a1,s4
   12660:	000b8513          	mv	a0,s7
   12664:	729050ef          	jal	1858c <__sprint_r>
   12668:	c4051463          	bnez	a0,11ab0 <_vfprintf_r+0x310>
   1266c:	0c013783          	ld	a5,192(sp)
   12670:	000b0893          	mv	a7,s6
   12674:	945ff06f          	j	11fb8 <_vfprintf_r+0x818>
   12678:	00913823          	sd	s1,16(sp)
   1267c:	01013683          	ld	a3,16(sp)
   12680:	008787b3          	add	a5,a5,s0
   12684:	0017071b          	addiw	a4,a4,1
   12688:	00d8b023          	sd	a3,0(a7)
   1268c:	0088b423          	sd	s0,8(a7)
   12690:	0cf13023          	sd	a5,192(sp)
   12694:	0ae12c23          	sw	a4,184(sp)
   12698:	00700693          	li	a3,7
   1269c:	dae6d4e3          	ble	a4,a3,12444 <_vfprintf_r+0xca4>
   126a0:	0b010613          	addi	a2,sp,176
   126a4:	000a0593          	mv	a1,s4
   126a8:	000b8513          	mv	a0,s7
   126ac:	6e1050ef          	jal	1858c <__sprint_r>
   126b0:	c0051063          	bnez	a0,11ab0 <_vfprintf_r+0x310>
   126b4:	0c013783          	ld	a5,192(sp)
   126b8:	0b812703          	lw	a4,184(sp)
   126bc:	000b0893          	mv	a7,s6
   126c0:	d89ff06f          	j	12448 <_vfprintf_r+0xca8>
   126c4:	0b010613          	addi	a2,sp,176
   126c8:	000a0593          	mv	a1,s4
   126cc:	000b8513          	mv	a0,s7
   126d0:	6bd050ef          	jal	1858c <__sprint_r>
   126d4:	ac0502e3          	beqz	a0,12198 <_vfprintf_r+0x9f8>
   126d8:	bd8ff06f          	j	11ab0 <_vfprintf_r+0x310>
   126dc:	0b010613          	addi	a2,sp,176
   126e0:	000a0593          	mv	a1,s4
   126e4:	000b8513          	mv	a0,s7
   126e8:	6a5050ef          	jal	1858c <__sprint_r>
   126ec:	bc051263          	bnez	a0,11ab0 <_vfprintf_r+0x310>
   126f0:	0c013783          	ld	a5,192(sp)
   126f4:	000b0893          	mv	a7,s6
   126f8:	87dff06f          	j	11f74 <_vfprintf_r+0x7d4>
   126fc:	0b010613          	addi	a2,sp,176
   12700:	000a0593          	mv	a1,s4
   12704:	000b8513          	mv	a0,s7
   12708:	685050ef          	jal	1858c <__sprint_r>
   1270c:	ba051263          	bnez	a0,11ab0 <_vfprintf_r+0x310>
   12710:	0c013783          	ld	a5,192(sp)
   12714:	000b0893          	mv	a7,s6
   12718:	895ff06f          	j	11fac <_vfprintf_r+0x80c>
   1271c:	080107a3          	sb	zero,143(sp)
   12720:	c4044ce3          	bltz	s0,12378 <_vfprintf_r+0xbd8>
   12724:	f7fc7c13          	andi	s8,s8,-129
   12728:	ac078a63          	beqz	a5,119fc <_vfprintf_r+0x25c>
   1272c:	00000613          	li	a2,0
   12730:	ad8ff06f          	j	11a08 <_vfprintf_r+0x268>
   12734:	09812403          	lw	s0,152(sp)
   12738:	5a805c63          	blez	s0,12cf0 <_vfprintf_r+0x1550>
   1273c:	04c12703          	lw	a4,76(sp)
   12740:	07012683          	lw	a3,112(sp)
   12744:	00070413          	mv	s0,a4
   12748:	00e6d463          	ble	a4,a3,12750 <_vfprintf_r+0xfb0>
   1274c:	00068413          	mv	s0,a3
   12750:	02805663          	blez	s0,1277c <_vfprintf_r+0xfdc>
   12754:	0b812703          	lw	a4,184(sp)
   12758:	008787b3          	add	a5,a5,s0
   1275c:	0128b023          	sd	s2,0(a7)
   12760:	0017071b          	addiw	a4,a4,1
   12764:	0088b423          	sd	s0,8(a7)
   12768:	0cf13023          	sd	a5,192(sp)
   1276c:	0ae12c23          	sw	a4,184(sp)
   12770:	00700693          	li	a3,7
   12774:	01088893          	addi	a7,a7,16
   12778:	6ae6ca63          	blt	a3,a4,12e2c <_vfprintf_r+0x168c>
   1277c:	020448e3          	bltz	s0,12fac <_vfprintf_r+0x180c>
   12780:	04c12703          	lw	a4,76(sp)
   12784:	4087043b          	subw	s0,a4,s0
   12788:	1a805c63          	blez	s0,12940 <_vfprintf_r+0x11a0>
   1278c:	01000713          	li	a4,16
   12790:	16875263          	ble	s0,a4,128f4 <_vfprintf_r+0x1154>
   12794:	01000d13          	li	s10,16
   12798:	0b812703          	lw	a4,184(sp)
   1279c:	00913823          	sd	s1,16(sp)
   127a0:	00700693          	li	a3,7
   127a4:	000d0813          	mv	a6,s10
   127a8:	00c0006f          	j	127b4 <_vfprintf_r+0x1014>
   127ac:	ff04041b          	addiw	s0,s0,-16
   127b0:	14885663          	ble	s0,a6,128fc <_vfprintf_r+0x115c>
   127b4:	01078793          	addi	a5,a5,16
   127b8:	0017071b          	addiw	a4,a4,1
   127bc:	0098b023          	sd	s1,0(a7)
   127c0:	01a8b423          	sd	s10,8(a7)
   127c4:	0cf13023          	sd	a5,192(sp)
   127c8:	0ae12c23          	sw	a4,184(sp)
   127cc:	01088893          	addi	a7,a7,16
   127d0:	fce6dee3          	ble	a4,a3,127ac <_vfprintf_r+0x100c>
   127d4:	0b010613          	addi	a2,sp,176
   127d8:	000a0593          	mv	a1,s4
   127dc:	000b8513          	mv	a0,s7
   127e0:	03013023          	sd	a6,32(sp)
   127e4:	00d13023          	sd	a3,0(sp)
   127e8:	5a5050ef          	jal	1858c <__sprint_r>
   127ec:	ac051263          	bnez	a0,11ab0 <_vfprintf_r+0x310>
   127f0:	0c013783          	ld	a5,192(sp)
   127f4:	0b812703          	lw	a4,184(sp)
   127f8:	000b0893          	mv	a7,s6
   127fc:	02013803          	ld	a6,32(sp)
   12800:	00013683          	ld	a3,0(sp)
   12804:	fa9ff06f          	j	127ac <_vfprintf_r+0x100c>
   12808:	0b010613          	addi	a2,sp,176
   1280c:	000a0593          	mv	a1,s4
   12810:	000b8513          	mv	a0,s7
   12814:	579050ef          	jal	1858c <__sprint_r>
   12818:	a8051c63          	bnez	a0,11ab0 <_vfprintf_r+0x310>
   1281c:	08f14603          	lbu	a2,143(sp)
   12820:	0c013783          	ld	a5,192(sp)
   12824:	000b0893          	mv	a7,s6
   12828:	f18ff06f          	j	11f40 <_vfprintf_r+0x7a0>
   1282c:	07012683          	lw	a3,112(sp)
   12830:	fff6841b          	addiw	s0,a3,-1
   12834:	c0805ae3          	blez	s0,12448 <_vfprintf_r+0xca8>
   12838:	01000693          	li	a3,16
   1283c:	e286dee3          	ble	s0,a3,12678 <_vfprintf_r+0xed8>
   12840:	01000913          	li	s2,16
   12844:	00913823          	sd	s1,16(sp)
   12848:	00700d13          	li	s10,7
   1284c:	00090693          	mv	a3,s2
   12850:	00c0006f          	j	1285c <_vfprintf_r+0x10bc>
   12854:	ff04041b          	addiw	s0,s0,-16
   12858:	e286d2e3          	ble	s0,a3,1267c <_vfprintf_r+0xedc>
   1285c:	01078793          	addi	a5,a5,16
   12860:	0017071b          	addiw	a4,a4,1
   12864:	0098b023          	sd	s1,0(a7)
   12868:	0128b423          	sd	s2,8(a7)
   1286c:	0cf13023          	sd	a5,192(sp)
   12870:	0ae12c23          	sw	a4,184(sp)
   12874:	01088893          	addi	a7,a7,16
   12878:	fced5ee3          	ble	a4,s10,12854 <_vfprintf_r+0x10b4>
   1287c:	0b010613          	addi	a2,sp,176
   12880:	000a0593          	mv	a1,s4
   12884:	000b8513          	mv	a0,s7
   12888:	00d13023          	sd	a3,0(sp)
   1288c:	501050ef          	jal	1858c <__sprint_r>
   12890:	a2051063          	bnez	a0,11ab0 <_vfprintf_r+0x310>
   12894:	0c013783          	ld	a5,192(sp)
   12898:	0b812703          	lw	a4,184(sp)
   1289c:	000b0893          	mv	a7,s6
   128a0:	00013683          	ld	a3,0(sp)
   128a4:	fb1ff06f          	j	12854 <_vfprintf_r+0x10b4>
   128a8:	0b812703          	lw	a4,184(sp)
   128ac:	00913823          	sd	s1,16(sp)
   128b0:	01013683          	ld	a3,16(sp)
   128b4:	008787b3          	add	a5,a5,s0
   128b8:	0088b423          	sd	s0,8(a7)
   128bc:	00d8b023          	sd	a3,0(a7)
   128c0:	0017071b          	addiw	a4,a4,1
   128c4:	0cf13023          	sd	a5,192(sp)
   128c8:	0ae12c23          	sw	a4,184(sp)
   128cc:	00700693          	li	a3,7
   128d0:	fee6d063          	ble	a4,a3,120b0 <_vfprintf_r+0x910>
   128d4:	b9dff06f          	j	12470 <_vfprintf_r+0xcd0>
   128d8:	00000793          	li	a5,0
   128dc:	0307879b          	addiw	a5,a5,48
   128e0:	0ef107a3          	sb	a5,239(sp)
   128e4:	07813783          	ld	a5,120(sp)
   128e8:	0ef10913          	addi	s2,sp,239
   128ec:	02f12023          	sw	a5,32(sp)
   128f0:	aacff06f          	j	11b9c <_vfprintf_r+0x3fc>
   128f4:	0b812703          	lw	a4,184(sp)
   128f8:	00913823          	sd	s1,16(sp)
   128fc:	01013683          	ld	a3,16(sp)
   12900:	008787b3          	add	a5,a5,s0
   12904:	0017071b          	addiw	a4,a4,1
   12908:	00d8b023          	sd	a3,0(a7)
   1290c:	0088b423          	sd	s0,8(a7)
   12910:	0cf13023          	sd	a5,192(sp)
   12914:	0ae12c23          	sw	a4,184(sp)
   12918:	00700693          	li	a3,7
   1291c:	01088893          	addi	a7,a7,16
   12920:	02e6d063          	ble	a4,a3,12940 <_vfprintf_r+0x11a0>
   12924:	0b010613          	addi	a2,sp,176
   12928:	000a0593          	mv	a1,s4
   1292c:	000b8513          	mv	a0,s7
   12930:	45d050ef          	jal	1858c <__sprint_r>
   12934:	96051e63          	bnez	a0,11ab0 <_vfprintf_r+0x310>
   12938:	0c013783          	ld	a5,192(sp)
   1293c:	000b0893          	mv	a7,s6
   12940:	04c12d03          	lw	s10,76(sp)
   12944:	09812703          	lw	a4,152(sp)
   12948:	07012683          	lw	a3,112(sp)
   1294c:	01a90d33          	add	s10,s2,s10
   12950:	0cd74a63          	blt	a4,a3,12a24 <_vfprintf_r+0x1284>
   12954:	001c7693          	andi	a3,s8,1
   12958:	0c069663          	bnez	a3,12a24 <_vfprintf_r+0x1284>
   1295c:	07012683          	lw	a3,112(sp)
   12960:	00d90433          	add	s0,s2,a3
   12964:	41a40433          	sub	s0,s0,s10
   12968:	40e6873b          	subw	a4,a3,a4
   1296c:	0004041b          	sext.w	s0,s0
   12970:	00875463          	ble	s0,a4,12978 <_vfprintf_r+0x11d8>
   12974:	00070413          	mv	s0,a4
   12978:	02805663          	blez	s0,129a4 <_vfprintf_r+0x1204>
   1297c:	0b812683          	lw	a3,184(sp)
   12980:	008787b3          	add	a5,a5,s0
   12984:	01a8b023          	sd	s10,0(a7)
   12988:	0016869b          	addiw	a3,a3,1
   1298c:	0088b423          	sd	s0,8(a7)
   12990:	0cf13023          	sd	a5,192(sp)
   12994:	0ad12c23          	sw	a3,184(sp)
   12998:	00700613          	li	a2,7
   1299c:	01088893          	addi	a7,a7,16
   129a0:	4cd64263          	blt	a2,a3,12e64 <_vfprintf_r+0x16c4>
   129a4:	60044863          	bltz	s0,12fb4 <_vfprintf_r+0x1814>
   129a8:	4087043b          	subw	s0,a4,s0
   129ac:	f0805463          	blez	s0,120b4 <_vfprintf_r+0x914>
   129b0:	01000713          	li	a4,16
   129b4:	ee875ae3          	ble	s0,a4,128a8 <_vfprintf_r+0x1108>
   129b8:	01000913          	li	s2,16
   129bc:	0b812703          	lw	a4,184(sp)
   129c0:	00913823          	sd	s1,16(sp)
   129c4:	00700d13          	li	s10,7
   129c8:	00090693          	mv	a3,s2
   129cc:	00c0006f          	j	129d8 <_vfprintf_r+0x1238>
   129d0:	ff04041b          	addiw	s0,s0,-16
   129d4:	ec86dee3          	ble	s0,a3,128b0 <_vfprintf_r+0x1110>
   129d8:	01078793          	addi	a5,a5,16
   129dc:	0017071b          	addiw	a4,a4,1
   129e0:	0098b023          	sd	s1,0(a7)
   129e4:	0128b423          	sd	s2,8(a7)
   129e8:	0cf13023          	sd	a5,192(sp)
   129ec:	0ae12c23          	sw	a4,184(sp)
   129f0:	01088893          	addi	a7,a7,16
   129f4:	fced5ee3          	ble	a4,s10,129d0 <_vfprintf_r+0x1230>
   129f8:	0b010613          	addi	a2,sp,176
   129fc:	000a0593          	mv	a1,s4
   12a00:	000b8513          	mv	a0,s7
   12a04:	00d13023          	sd	a3,0(sp)
   12a08:	385050ef          	jal	1858c <__sprint_r>
   12a0c:	8a051263          	bnez	a0,11ab0 <_vfprintf_r+0x310>
   12a10:	0c013783          	ld	a5,192(sp)
   12a14:	0b812703          	lw	a4,184(sp)
   12a18:	000b0893          	mv	a7,s6
   12a1c:	00013683          	ld	a3,0(sp)
   12a20:	fb1ff06f          	j	129d0 <_vfprintf_r+0x1230>
   12a24:	06013683          	ld	a3,96(sp)
   12a28:	06813603          	ld	a2,104(sp)
   12a2c:	01088893          	addi	a7,a7,16
   12a30:	fed8b823          	sd	a3,-16(a7)
   12a34:	0b812683          	lw	a3,184(sp)
   12a38:	00c787b3          	add	a5,a5,a2
   12a3c:	fec8bc23          	sd	a2,-8(a7)
   12a40:	0016869b          	addiw	a3,a3,1
   12a44:	0cf13023          	sd	a5,192(sp)
   12a48:	0ad12c23          	sw	a3,184(sp)
   12a4c:	00700613          	li	a2,7
   12a50:	f0d656e3          	ble	a3,a2,1295c <_vfprintf_r+0x11bc>
   12a54:	0b010613          	addi	a2,sp,176
   12a58:	000a0593          	mv	a1,s4
   12a5c:	000b8513          	mv	a0,s7
   12a60:	32d050ef          	jal	1858c <__sprint_r>
   12a64:	00050463          	beqz	a0,12a6c <_vfprintf_r+0x12cc>
   12a68:	848ff06f          	j	11ab0 <_vfprintf_r+0x310>
   12a6c:	09812703          	lw	a4,152(sp)
   12a70:	0c013783          	ld	a5,192(sp)
   12a74:	000b0893          	mv	a7,s6
   12a78:	ee5ff06f          	j	1295c <_vfprintf_r+0x11bc>
   12a7c:	00ec7733          	and	a4,s8,a4
   12a80:	92071ae3          	bnez	a4,123b4 <_vfprintf_r+0xc14>
   12a84:	0b812703          	lw	a4,184(sp)
   12a88:	0128b023          	sd	s2,0(a7)
   12a8c:	00100693          	li	a3,1
   12a90:	0017071b          	addiw	a4,a4,1
   12a94:	99dff06f          	j	12430 <_vfprintf_r+0xc90>
   12a98:	02813783          	ld	a5,40(sp)
   12a9c:	00878713          	addi	a4,a5,8
   12aa0:	0007e783          	lwu	a5,0(a5)
   12aa4:	a0045e63          	bgez	s0,11cc0 <_vfprintf_r+0x520>
   12aa8:	b04ff06f          	j	11dac <_vfprintf_r+0x60c>
   12aac:	0b010613          	addi	a2,sp,176
   12ab0:	000a0593          	mv	a1,s4
   12ab4:	000b8513          	mv	a0,s7
   12ab8:	2d5050ef          	jal	1858c <__sprint_r>
   12abc:	00050463          	beqz	a0,12ac4 <_vfprintf_r+0x1324>
   12ac0:	ff1fe06f          	j	11ab0 <_vfprintf_r+0x310>
   12ac4:	0c013783          	ld	a5,192(sp)
   12ac8:	0b812703          	lw	a4,184(sp)
   12acc:	000b0893          	mv	a7,s6
   12ad0:	90dff06f          	j	123dc <_vfprintf_r+0xc3c>
   12ad4:	02813783          	ld	a5,40(sp)
   12ad8:	00878713          	addi	a4,a5,8
   12adc:	0007e783          	lwu	a5,0(a5)
   12ae0:	86045063          	bgez	s0,11b40 <_vfprintf_r+0x3a0>
   12ae4:	a84ff06f          	j	11d68 <_vfprintf_r+0x5c8>
   12ae8:	0b010613          	addi	a2,sp,176
   12aec:	000a0593          	mv	a1,s4
   12af0:	000b8513          	mv	a0,s7
   12af4:	299050ef          	jal	1858c <__sprint_r>
   12af8:	00050463          	beqz	a0,12b00 <_vfprintf_r+0x1360>
   12afc:	fb5fe06f          	j	11ab0 <_vfprintf_r+0x310>
   12b00:	0c013783          	ld	a5,192(sp)
   12b04:	0b812703          	lw	a4,184(sp)
   12b08:	000b0893          	mv	a7,s6
   12b0c:	8fdff06f          	j	12408 <_vfprintf_r+0xc68>
   12b10:	02d00713          	li	a4,45
   12b14:	08e107a3          	sb	a4,143(sp)
   12b18:	40f007b3          	neg	a5,a5
   12b1c:	4a044063          	bltz	s0,12fbc <_vfprintf_r+0x181c>
   12b20:	f7fc7c13          	andi	s8,s8,-129
   12b24:	02d00613          	li	a2,45
   12b28:	9a8ff06f          	j	11cd0 <_vfprintf_r+0x530>
   12b2c:	05813507          	fld	fa0,88(sp)
   12b30:	01113023          	sd	a7,0(sp)
   12b34:	4d0050ef          	jal	18004 <__fpclassifyd>
   12b38:	00013883          	ld	a7,0(sp)
   12b3c:	2a050463          	beqz	a0,12de4 <_vfprintf_r+0x1644>
   12b40:	fff00793          	li	a5,-1
   12b44:	fdfd7d93          	andi	s11,s10,-33
   12b48:	62f40c63          	beq	s0,a5,13180 <_vfprintf_r+0x19e0>
   12b4c:	04700793          	li	a5,71
   12b50:	62fd8263          	beq	s11,a5,13174 <_vfprintf_r+0x19d4>
   12b54:	05813703          	ld	a4,88(sp)
   12b58:	100c6693          	ori	a3,s8,256
   12b5c:	00d12023          	sw	a3,0(sp)
   12b60:	42075793          	srai	a5,a4,0x20
   12b64:	f2070453          	fmv.d.x	fs0,a4
   12b68:	00000c93          	li	s9,0
   12b6c:	6607c663          	bltz	a5,131d8 <_vfprintf_r+0x1a38>
   12b70:	06600793          	li	a5,102
   12b74:	60fd0a63          	beq	s10,a5,13188 <_vfprintf_r+0x19e8>
   12b78:	04600793          	li	a5,70
   12b7c:	72fd0863          	beq	s10,a5,132ac <_vfprintf_r+0x1b0c>
   12b80:	fbbd859b          	addiw	a1,s11,-69
   12b84:	0015b593          	seqz	a1,a1
   12b88:	228405d3          	fmv.d	fa1,fs0
   12b8c:	00b405bb          	addw	a1,s0,a1
   12b90:	09c10793          	addi	a5,sp,156
   12b94:	00058693          	mv	a3,a1
   12b98:	0a810813          	addi	a6,sp,168
   12b9c:	09810713          	addi	a4,sp,152
   12ba0:	00200613          	li	a2,2
   12ba4:	000b8513          	mv	a0,s7
   12ba8:	01113823          	sd	a7,16(sp)
   12bac:	00b13423          	sd	a1,8(sp)
   12bb0:	745000ef          	jal	13af4 <_dtoa_r>
   12bb4:	06700793          	li	a5,103
   12bb8:	00050913          	mv	s2,a0
   12bbc:	00813583          	ld	a1,8(sp)
   12bc0:	01013883          	ld	a7,16(sp)
   12bc4:	46fd0863          	beq	s10,a5,13034 <_vfprintf_r+0x1894>
   12bc8:	04700793          	li	a5,71
   12bcc:	00b50733          	add	a4,a0,a1
   12bd0:	48fd0a63          	beq	s10,a5,13064 <_vfprintf_r+0x18c4>
   12bd4:	f20007d3          	fmv.d.x	fa5,zero
   12bd8:	00070793          	mv	a5,a4
   12bdc:	a2f426d3          	feq.d	a3,fs0,fa5
   12be0:	02069263          	bnez	a3,12c04 <_vfprintf_r+0x1464>
   12be4:	0a813783          	ld	a5,168(sp)
   12be8:	00e7fe63          	bleu	a4,a5,12c04 <_vfprintf_r+0x1464>
   12bec:	03000613          	li	a2,48
   12bf0:	00178693          	addi	a3,a5,1
   12bf4:	0ad13423          	sd	a3,168(sp)
   12bf8:	00c78023          	sb	a2,0(a5)
   12bfc:	0a813783          	ld	a5,168(sp)
   12c00:	fee7e8e3          	bltu	a5,a4,12bf0 <_vfprintf_r+0x1450>
   12c04:	412787b3          	sub	a5,a5,s2
   12c08:	06f12823          	sw	a5,112(sp)
   12c0c:	04700793          	li	a5,71
   12c10:	46fd8663          	beq	s11,a5,1307c <_vfprintf_r+0x18dc>
   12c14:	06500793          	li	a5,101
   12c18:	7ba7dc63          	ble	s10,a5,133d0 <_vfprintf_r+0x1c30>
   12c1c:	06600793          	li	a5,102
   12c20:	60fd0263          	beq	s10,a5,13224 <_vfprintf_r+0x1a84>
   12c24:	09812783          	lw	a5,152(sp)
   12c28:	04f12623          	sw	a5,76(sp)
   12c2c:	04c12703          	lw	a4,76(sp)
   12c30:	07012683          	lw	a3,112(sp)
   12c34:	00070793          	mv	a5,a4
   12c38:	5ad74663          	blt	a4,a3,131e4 <_vfprintf_r+0x1a44>
   12c3c:	001c7c13          	andi	s8,s8,1
   12c40:	5c0c1463          	bnez	s8,13208 <_vfprintf_r+0x1a68>
   12c44:	76074863          	bltz	a4,133b4 <_vfprintf_r+0x1c14>
   12c48:	04c12703          	lw	a4,76(sp)
   12c4c:	06700d13          	li	s10,103
   12c50:	02e12023          	sw	a4,32(sp)
   12c54:	440c9063          	bnez	s9,13094 <_vfprintf_r+0x18f4>
   12c58:	08f14603          	lbu	a2,143(sp)
   12c5c:	00f12423          	sw	a5,8(sp)
   12c60:	00012c03          	lw	s8,0(sp)
   12c64:	00000413          	li	s0,0
   12c68:	f4dfe06f          	j	11bb4 <_vfprintf_r+0x414>
   12c6c:	00076783          	lwu	a5,0(a4)
   12c70:	00870713          	addi	a4,a4,8
   12c74:	02e13423          	sd	a4,40(sp)
   12c78:	974ff06f          	j	11dec <_vfprintf_r+0x64c>
   12c7c:	02813703          	ld	a4,40(sp)
   12c80:	040c7c13          	andi	s8,s8,64
   12c84:	00073783          	ld	a5,0(a4)
   12c88:	00870713          	addi	a4,a4,8
   12c8c:	02e13423          	sd	a4,40(sp)
   12c90:	180c0263          	beqz	s8,12e14 <_vfprintf_r+0x1674>
   12c94:	01c15703          	lhu	a4,28(sp)
   12c98:	00e79023          	sh	a4,0(a5)
   12c9c:	c25fe06f          	j	118c0 <_vfprintf_r+0x120>
   12ca0:	00072783          	lw	a5,0(a4)
   12ca4:	00870713          	addi	a4,a4,8
   12ca8:	02e13423          	sd	a4,40(sp)
   12cac:	d24ff06f          	j	121d0 <_vfprintf_r+0xa30>
   12cb0:	080107a3          	sb	zero,143(sp)
   12cb4:	ec044463          	bltz	s0,1237c <_vfprintf_r+0xbdc>
   12cb8:	f7fc7c13          	andi	s8,s8,-129
   12cbc:	d41fe06f          	j	119fc <_vfprintf_r+0x25c>
   12cc0:	0b812703          	lw	a4,184(sp)
   12cc4:	00913823          	sd	s1,16(sp)
   12cc8:	b74ff06f          	j	1203c <_vfprintf_r+0x89c>
   12ccc:	0b010613          	addi	a2,sp,176
   12cd0:	000a0593          	mv	a1,s4
   12cd4:	000b8513          	mv	a0,s7
   12cd8:	0b5050ef          	jal	1858c <__sprint_r>
   12cdc:	00050463          	beqz	a0,12ce4 <_vfprintf_r+0x1544>
   12ce0:	dd1fe06f          	j	11ab0 <_vfprintf_r+0x310>
   12ce4:	0c013783          	ld	a5,192(sp)
   12ce8:	000b0893          	mv	a7,s6
   12cec:	ff0ff06f          	j	124dc <_vfprintf_r+0xd3c>
   12cf0:	0b812703          	lw	a4,184(sp)
   12cf4:	0001b6b7          	lui	a3,0x1b
   12cf8:	51868693          	addi	a3,a3,1304 # 1b518 <zeroes.4137+0x88>
   12cfc:	00d8b023          	sd	a3,0(a7)
   12d00:	00178793          	addi	a5,a5,1
   12d04:	00100693          	li	a3,1
   12d08:	0017071b          	addiw	a4,a4,1
   12d0c:	00d8b423          	sd	a3,8(a7)
   12d10:	0cf13023          	sd	a5,192(sp)
   12d14:	0ae12c23          	sw	a4,184(sp)
   12d18:	00700693          	li	a3,7
   12d1c:	01088893          	addi	a7,a7,16
   12d20:	16e6ca63          	blt	a3,a4,12e94 <_vfprintf_r+0x16f4>
   12d24:	12040663          	beqz	s0,12e50 <_vfprintf_r+0x16b0>
   12d28:	06013703          	ld	a4,96(sp)
   12d2c:	06813683          	ld	a3,104(sp)
   12d30:	01088893          	addi	a7,a7,16
   12d34:	fee8b823          	sd	a4,-16(a7)
   12d38:	0b812703          	lw	a4,184(sp)
   12d3c:	00f687b3          	add	a5,a3,a5
   12d40:	fed8bc23          	sd	a3,-8(a7)
   12d44:	0017071b          	addiw	a4,a4,1
   12d48:	0cf13023          	sd	a5,192(sp)
   12d4c:	0ae12c23          	sw	a4,184(sp)
   12d50:	00700693          	li	a3,7
   12d54:	3ee6ca63          	blt	a3,a4,13148 <_vfprintf_r+0x19a8>
   12d58:	4080043b          	negw	s0,s0
   12d5c:	20805263          	blez	s0,12f60 <_vfprintf_r+0x17c0>
   12d60:	01000693          	li	a3,16
   12d64:	1a86d663          	ble	s0,a3,12f10 <_vfprintf_r+0x1770>
   12d68:	01000d13          	li	s10,16
   12d6c:	00913823          	sd	s1,16(sp)
   12d70:	00700813          	li	a6,7
   12d74:	000d0693          	mv	a3,s10
   12d78:	00c0006f          	j	12d84 <_vfprintf_r+0x15e4>
   12d7c:	ff04041b          	addiw	s0,s0,-16
   12d80:	1886da63          	ble	s0,a3,12f14 <_vfprintf_r+0x1774>
   12d84:	01078793          	addi	a5,a5,16
   12d88:	0017071b          	addiw	a4,a4,1
   12d8c:	0098b023          	sd	s1,0(a7)
   12d90:	01a8b423          	sd	s10,8(a7)
   12d94:	0cf13023          	sd	a5,192(sp)
   12d98:	0ae12c23          	sw	a4,184(sp)
   12d9c:	01088893          	addi	a7,a7,16
   12da0:	fce85ee3          	ble	a4,a6,12d7c <_vfprintf_r+0x15dc>
   12da4:	0b010613          	addi	a2,sp,176
   12da8:	000a0593          	mv	a1,s4
   12dac:	000b8513          	mv	a0,s7
   12db0:	02d13023          	sd	a3,32(sp)
   12db4:	01013023          	sd	a6,0(sp)
   12db8:	7d4050ef          	jal	1858c <__sprint_r>
   12dbc:	00050463          	beqz	a0,12dc4 <_vfprintf_r+0x1624>
   12dc0:	cf1fe06f          	j	11ab0 <_vfprintf_r+0x310>
   12dc4:	0c013783          	ld	a5,192(sp)
   12dc8:	0b812703          	lw	a4,184(sp)
   12dcc:	000b0893          	mv	a7,s6
   12dd0:	02013683          	ld	a3,32(sp)
   12dd4:	00013803          	ld	a6,0(sp)
   12dd8:	fa5ff06f          	j	12d7c <_vfprintf_r+0x15dc>
   12ddc:	fff00513          	li	a0,-1
   12de0:	ce5fe06f          	j	11ac4 <_vfprintf_r+0x324>
   12de4:	04700793          	li	a5,71
   12de8:	27a7c863          	blt	a5,s10,13058 <_vfprintf_r+0x18b8>
   12dec:	0001b937          	lui	s2,0x1b
   12df0:	4d090913          	addi	s2,s2,1232 # 1b4d0 <zeroes.4137+0x40>
   12df4:	00300793          	li	a5,3
   12df8:	00f12423          	sw	a5,8(sp)
   12dfc:	f7fc7c13          	andi	s8,s8,-129
   12e00:	08f14603          	lbu	a2,143(sp)
   12e04:	02f12023          	sw	a5,32(sp)
   12e08:	00000413          	li	s0,0
   12e0c:	04012623          	sw	zero,76(sp)
   12e10:	da5fe06f          	j	11bb4 <_vfprintf_r+0x414>
   12e14:	01c12703          	lw	a4,28(sp)
   12e18:	00e7a023          	sw	a4,0(a5)
   12e1c:	aa5fe06f          	j	118c0 <_vfprintf_r+0x120>
   12e20:	0001b937          	lui	s2,0x1b
   12e24:	4c090913          	addi	s2,s2,1216 # 1b4c0 <zeroes.4137+0x30>
   12e28:	c34ff06f          	j	1225c <_vfprintf_r+0xabc>
   12e2c:	0b010613          	addi	a2,sp,176
   12e30:	000a0593          	mv	a1,s4
   12e34:	000b8513          	mv	a0,s7
   12e38:	754050ef          	jal	1858c <__sprint_r>
   12e3c:	00050463          	beqz	a0,12e44 <_vfprintf_r+0x16a4>
   12e40:	c71fe06f          	j	11ab0 <_vfprintf_r+0x310>
   12e44:	0c013783          	ld	a5,192(sp)
   12e48:	000b0893          	mv	a7,s6
   12e4c:	931ff06f          	j	1277c <_vfprintf_r+0xfdc>
   12e50:	07012703          	lw	a4,112(sp)
   12e54:	ec071ae3          	bnez	a4,12d28 <_vfprintf_r+0x1588>
   12e58:	001c7713          	andi	a4,s8,1
   12e5c:	a4070c63          	beqz	a4,120b4 <_vfprintf_r+0x914>
   12e60:	ec9ff06f          	j	12d28 <_vfprintf_r+0x1588>
   12e64:	0b010613          	addi	a2,sp,176
   12e68:	000a0593          	mv	a1,s4
   12e6c:	000b8513          	mv	a0,s7
   12e70:	71c050ef          	jal	1858c <__sprint_r>
   12e74:	00050463          	beqz	a0,12e7c <_vfprintf_r+0x16dc>
   12e78:	c39fe06f          	j	11ab0 <_vfprintf_r+0x310>
   12e7c:	09812703          	lw	a4,152(sp)
   12e80:	07012683          	lw	a3,112(sp)
   12e84:	0c013783          	ld	a5,192(sp)
   12e88:	000b0893          	mv	a7,s6
   12e8c:	40e6873b          	subw	a4,a3,a4
   12e90:	b15ff06f          	j	129a4 <_vfprintf_r+0x1204>
   12e94:	0b010613          	addi	a2,sp,176
   12e98:	000a0593          	mv	a1,s4
   12e9c:	000b8513          	mv	a0,s7
   12ea0:	6ec050ef          	jal	1858c <__sprint_r>
   12ea4:	00050463          	beqz	a0,12eac <_vfprintf_r+0x170c>
   12ea8:	c09fe06f          	j	11ab0 <_vfprintf_r+0x310>
   12eac:	09812403          	lw	s0,152(sp)
   12eb0:	0c013783          	ld	a5,192(sp)
   12eb4:	000b0893          	mv	a7,s6
   12eb8:	e60418e3          	bnez	s0,12d28 <_vfprintf_r+0x1588>
   12ebc:	f95ff06f          	j	12e50 <_vfprintf_r+0x16b0>
   12ec0:	001c7793          	andi	a5,s8,1
   12ec4:	00078e63          	beqz	a5,12ee0 <_vfprintf_r+0x1740>
   12ec8:	03000793          	li	a5,48
   12ecc:	0ef107a3          	sb	a5,239(sp)
   12ed0:	07813783          	ld	a5,120(sp)
   12ed4:	0ef10913          	addi	s2,sp,239
   12ed8:	02f12023          	sw	a5,32(sp)
   12edc:	cc1fe06f          	j	11b9c <_vfprintf_r+0x3fc>
   12ee0:	02012023          	sw	zero,32(sp)
   12ee4:	000b0913          	mv	s2,s6
   12ee8:	cb5fe06f          	j	11b9c <_vfprintf_r+0x3fc>
   12eec:	0b010613          	addi	a2,sp,176
   12ef0:	000a0593          	mv	a1,s4
   12ef4:	000b8513          	mv	a0,s7
   12ef8:	694050ef          	jal	1858c <__sprint_r>
   12efc:	00050463          	beqz	a0,12f04 <_vfprintf_r+0x1764>
   12f00:	bb1fe06f          	j	11ab0 <_vfprintf_r+0x310>
   12f04:	0c013783          	ld	a5,192(sp)
   12f08:	000b0893          	mv	a7,s6
   12f0c:	e14ff06f          	j	12520 <_vfprintf_r+0xd80>
   12f10:	00913823          	sd	s1,16(sp)
   12f14:	01013683          	ld	a3,16(sp)
   12f18:	008787b3          	add	a5,a5,s0
   12f1c:	0017071b          	addiw	a4,a4,1
   12f20:	00d8b023          	sd	a3,0(a7)
   12f24:	0088b423          	sd	s0,8(a7)
   12f28:	0cf13023          	sd	a5,192(sp)
   12f2c:	0ae12c23          	sw	a4,184(sp)
   12f30:	00700693          	li	a3,7
   12f34:	01088893          	addi	a7,a7,16
   12f38:	02e6d463          	ble	a4,a3,12f60 <_vfprintf_r+0x17c0>
   12f3c:	0b010613          	addi	a2,sp,176
   12f40:	000a0593          	mv	a1,s4
   12f44:	000b8513          	mv	a0,s7
   12f48:	644050ef          	jal	1858c <__sprint_r>
   12f4c:	00050463          	beqz	a0,12f54 <_vfprintf_r+0x17b4>
   12f50:	b61fe06f          	j	11ab0 <_vfprintf_r+0x310>
   12f54:	0c013783          	ld	a5,192(sp)
   12f58:	0b812703          	lw	a4,184(sp)
   12f5c:	000b0893          	mv	a7,s6
   12f60:	07012683          	lw	a3,112(sp)
   12f64:	0017071b          	addiw	a4,a4,1
   12f68:	0128b023          	sd	s2,0(a7)
   12f6c:	00f687b3          	add	a5,a3,a5
   12f70:	cecff06f          	j	1245c <_vfprintf_r+0xcbc>
   12f74:	00090513          	mv	a0,s2
   12f78:	380050ef          	jal	182f8 <strlen>
   12f7c:	0005079b          	sext.w	a5,a0
   12f80:	02f12023          	sw	a5,32(sp)
   12f84:	00078d93          	mv	s11,a5
   12f88:	00013883          	ld	a7,0(sp)
   12f8c:	0007c463          	bltz	a5,12f94 <_vfprintf_r+0x17f4>
   12f90:	cf5fe06f          	j	11c84 <_vfprintf_r+0x4e4>
   12f94:	00000d93          	li	s11,0
   12f98:	cedfe06f          	j	11c84 <_vfprintf_r+0x4e4>
   12f9c:	0c013783          	ld	a5,192(sp)
   12fa0:	0b812703          	lw	a4,184(sp)
   12fa4:	05513823          	sd	s5,80(sp)
   12fa8:	f6dfe06f          	j	11f14 <_vfprintf_r+0x774>
   12fac:	00000413          	li	s0,0
   12fb0:	fd0ff06f          	j	12780 <_vfprintf_r+0xfe0>
   12fb4:	00000413          	li	s0,0
   12fb8:	9f1ff06f          	j	129a8 <_vfprintf_r+0x1208>
   12fbc:	02d00613          	li	a2,45
   12fc0:	00100713          	li	a4,1
   12fc4:	00100693          	li	a3,1
   12fc8:	00d71463          	bne	a4,a3,12fd0 <_vfprintf_r+0x1830>
   12fcc:	d05fe06f          	j	11cd0 <_vfprintf_r+0x530>
   12fd0:	00200693          	li	a3,2
   12fd4:	00d71463          	bne	a4,a3,12fdc <_vfprintf_r+0x183c>
   12fd8:	a31fe06f          	j	11a08 <_vfprintf_r+0x268>
   12fdc:	b81fe06f          	j	11b5c <_vfprintf_r+0x3bc>
   12fe0:	00600713          	li	a4,6
   12fe4:	00877463          	bleu	s0,a4,12fec <_vfprintf_r+0x184c>
   12fe8:	00070413          	mv	s0,a4
   12fec:	02812023          	sw	s0,32(sp)
   12ff0:	00040d93          	mv	s11,s0
   12ff4:	32044a63          	bltz	s0,13328 <_vfprintf_r+0x1b88>
   12ff8:	0001b937          	lui	s2,0x1b
   12ffc:	01b12423          	sw	s11,8(sp)
   13000:	03913423          	sd	s9,40(sp)
   13004:	00000613          	li	a2,0
   13008:	00000413          	li	s0,0
   1300c:	04012623          	sw	zero,76(sp)
   13010:	51090913          	addi	s2,s2,1296 # 1b510 <zeroes.4137+0x80>
   13014:	e45fe06f          	j	11e58 <_vfprintf_r+0x6b8>
   13018:	0b812703          	lw	a4,184(sp)
   1301c:	05513823          	sd	s5,80(sp)
   13020:	91cff06f          	j	1213c <_vfprintf_r+0x99c>
   13024:	00070c13          	mv	s8,a4
   13028:	00000613          	li	a2,0
   1302c:	00200713          	li	a4,2
   13030:	f95ff06f          	j	12fc4 <_vfprintf_r+0x1824>
   13034:	001c7793          	andi	a5,s8,1
   13038:	00b50733          	add	a4,a0,a1
   1303c:	b8079ce3          	bnez	a5,12bd4 <_vfprintf_r+0x1434>
   13040:	0a813783          	ld	a5,168(sp)
   13044:	bc1ff06f          	j	12c04 <_vfprintf_r+0x1464>
   13048:	02d00793          	li	a5,45
   1304c:	08f107a3          	sb	a5,143(sp)
   13050:	02d00613          	li	a2,45
   13054:	9f8ff06f          	j	1224c <_vfprintf_r+0xaac>
   13058:	0001b937          	lui	s2,0x1b
   1305c:	4d890913          	addi	s2,s2,1240 # 1b4d8 <zeroes.4137+0x48>
   13060:	d95ff06f          	j	12df4 <_vfprintf_r+0x1654>
   13064:	001c7793          	andi	a5,s8,1
   13068:	26079a63          	bnez	a5,132dc <_vfprintf_r+0x1b3c>
   1306c:	0a813783          	ld	a5,168(sp)
   13070:	412787b3          	sub	a5,a5,s2
   13074:	06f12823          	sw	a5,112(sp)
   13078:	35ad9c63          	bne	s11,s10,133d0 <_vfprintf_r+0x1c30>
   1307c:	09812783          	lw	a5,152(sp)
   13080:	ffd00713          	li	a4,-3
   13084:	02e7cc63          	blt	a5,a4,130bc <_vfprintf_r+0x191c>
   13088:	02f44a63          	blt	s0,a5,130bc <_vfprintf_r+0x191c>
   1308c:	04f12623          	sw	a5,76(sp)
   13090:	b9dff06f          	j	12c2c <_vfprintf_r+0x148c>
   13094:	02d00713          	li	a4,45
   13098:	08e107a3          	sb	a4,143(sp)
   1309c:	00f12423          	sw	a5,8(sp)
   130a0:	00012c03          	lw	s8,0(sp)
   130a4:	02d00613          	li	a2,45
   130a8:	00000413          	li	s0,0
   130ac:	b0dfe06f          	j	11bb8 <_vfprintf_r+0x418>
   130b0:	0b812703          	lw	a4,184(sp)
   130b4:	00913823          	sd	s1,16(sp)
   130b8:	d78ff06f          	j	12630 <_vfprintf_r+0xe90>
   130bc:	ffed0d1b          	addiw	s10,s10,-2
   130c0:	fff7879b          	addiw	a5,a5,-1
   130c4:	08f12c23          	sw	a5,152(sp)
   130c8:	0ba10023          	sb	s10,160(sp)
   130cc:	2c07c863          	bltz	a5,1339c <_vfprintf_r+0x1bfc>
   130d0:	02b00713          	li	a4,43
   130d4:	0ae100a3          	sb	a4,161(sp)
   130d8:	00900613          	li	a2,9
   130dc:	16f64463          	blt	a2,a5,13244 <_vfprintf_r+0x1aa4>
   130e0:	0307879b          	addiw	a5,a5,48
   130e4:	03000713          	li	a4,48
   130e8:	0af101a3          	sb	a5,163(sp)
   130ec:	0ae10123          	sb	a4,162(sp)
   130f0:	0a410793          	addi	a5,sp,164
   130f4:	0a010713          	addi	a4,sp,160
   130f8:	40e787bb          	subw	a5,a5,a4
   130fc:	07012703          	lw	a4,112(sp)
   13100:	06f12a23          	sw	a5,116(sp)
   13104:	00e787bb          	addw	a5,a5,a4
   13108:	02f12023          	sw	a5,32(sp)
   1310c:	00100793          	li	a5,1
   13110:	26e7d263          	ble	a4,a5,13374 <_vfprintf_r+0x1bd4>
   13114:	02012783          	lw	a5,32(sp)
   13118:	0017879b          	addiw	a5,a5,1
   1311c:	02f12023          	sw	a5,32(sp)
   13120:	2607c463          	bltz	a5,13388 <_vfprintf_r+0x1be8>
   13124:	04012623          	sw	zero,76(sp)
   13128:	b2dff06f          	j	12c54 <_vfprintf_r+0x14b4>
   1312c:	00812423          	sw	s0,8(sp)
   13130:	02812023          	sw	s0,32(sp)
   13134:	08f14603          	lbu	a2,143(sp)
   13138:	03913423          	sd	s9,40(sp)
   1313c:	00000413          	li	s0,0
   13140:	04012623          	sw	zero,76(sp)
   13144:	a71fe06f          	j	11bb4 <_vfprintf_r+0x414>
   13148:	0b010613          	addi	a2,sp,176
   1314c:	000a0593          	mv	a1,s4
   13150:	000b8513          	mv	a0,s7
   13154:	438050ef          	jal	1858c <__sprint_r>
   13158:	00050463          	beqz	a0,13160 <_vfprintf_r+0x19c0>
   1315c:	955fe06f          	j	11ab0 <_vfprintf_r+0x310>
   13160:	09812403          	lw	s0,152(sp)
   13164:	0c013783          	ld	a5,192(sp)
   13168:	0b812703          	lw	a4,184(sp)
   1316c:	000b0893          	mv	a7,s6
   13170:	be9ff06f          	j	12d58 <_vfprintf_r+0x15b8>
   13174:	9e0410e3          	bnez	s0,12b54 <_vfprintf_r+0x13b4>
   13178:	00090413          	mv	s0,s2
   1317c:	9d9ff06f          	j	12b54 <_vfprintf_r+0x13b4>
   13180:	00600413          	li	s0,6
   13184:	9d1ff06f          	j	12b54 <_vfprintf_r+0x13b4>
   13188:	228405d3          	fmv.d	fa1,fs0
   1318c:	09810713          	addi	a4,sp,152
   13190:	0a810813          	addi	a6,sp,168
   13194:	09c10793          	addi	a5,sp,156
   13198:	00040693          	mv	a3,s0
   1319c:	00300613          	li	a2,3
   131a0:	000b8513          	mv	a0,s7
   131a4:	01113423          	sd	a7,8(sp)
   131a8:	14d000ef          	jal	13af4 <_dtoa_r>
   131ac:	00813883          	ld	a7,8(sp)
   131b0:	00040713          	mv	a4,s0
   131b4:	00050913          	mv	s2,a0
   131b8:	00e50733          	add	a4,a0,a4
   131bc:	00040593          	mv	a1,s0
   131c0:	00094683          	lbu	a3,0(s2)
   131c4:	03000793          	li	a5,48
   131c8:	14f68063          	beq	a3,a5,13308 <_vfprintf_r+0x1b68>
   131cc:	09812583          	lw	a1,152(sp)
   131d0:	00b70733          	add	a4,a4,a1
   131d4:	a01ff06f          	j	12bd4 <_vfprintf_r+0x1434>
   131d8:	22841453          	fneg.d	fs0,fs0
   131dc:	02d00c93          	li	s9,45
   131e0:	991ff06f          	j	12b70 <_vfprintf_r+0x13d0>
   131e4:	04c12703          	lw	a4,76(sp)
   131e8:	00100793          	li	a5,1
   131ec:	1ae05263          	blez	a4,13390 <_vfprintf_r+0x1bf0>
   131f0:	07012703          	lw	a4,112(sp)
   131f4:	00e787bb          	addw	a5,a5,a4
   131f8:	02f12023          	sw	a5,32(sp)
   131fc:	0007ce63          	bltz	a5,13218 <_vfprintf_r+0x1a78>
   13200:	06700d13          	li	s10,103
   13204:	a51ff06f          	j	12c54 <_vfprintf_r+0x14b4>
   13208:	04c12783          	lw	a5,76(sp)
   1320c:	0017879b          	addiw	a5,a5,1
   13210:	02f12023          	sw	a5,32(sp)
   13214:	fe07d6e3          	bgez	a5,13200 <_vfprintf_r+0x1a60>
   13218:	00000793          	li	a5,0
   1321c:	06700d13          	li	s10,103
   13220:	a35ff06f          	j	12c54 <_vfprintf_r+0x14b4>
   13224:	09812783          	lw	a5,152(sp)
   13228:	04f12623          	sw	a5,76(sp)
   1322c:	12f05263          	blez	a5,13350 <_vfprintf_r+0x1bb0>
   13230:	0a041e63          	bnez	s0,132ec <_vfprintf_r+0x1b4c>
   13234:	001c7c13          	andi	s8,s8,1
   13238:	0a0c1a63          	bnez	s8,132ec <_vfprintf_r+0x1b4c>
   1323c:	02f12023          	sw	a5,32(sp)
   13240:	a15ff06f          	j	12c54 <_vfprintf_r+0x14b4>
   13244:	0af10593          	addi	a1,sp,175
   13248:	00058713          	mv	a4,a1
   1324c:	00a00513          	li	a0,10
   13250:	02a7e6bb          	remw	a3,a5,a0
   13254:	fff70713          	addi	a4,a4,-1
   13258:	02a7c7bb          	divw	a5,a5,a0
   1325c:	0306869b          	addiw	a3,a3,48
   13260:	00d70023          	sb	a3,0(a4)
   13264:	fef646e3          	blt	a2,a5,13250 <_vfprintf_r+0x1ab0>
   13268:	0307879b          	addiw	a5,a5,48
   1326c:	0ff7f793          	andi	a5,a5,255
   13270:	fff70693          	addi	a3,a4,-1
   13274:	fef70fa3          	sb	a5,-1(a4)
   13278:	16b6f863          	bleu	a1,a3,133e8 <_vfprintf_r+0x1c48>
   1327c:	0a210613          	addi	a2,sp,162
   13280:	0080006f          	j	13288 <_vfprintf_r+0x1ae8>
   13284:	0006c783          	lbu	a5,0(a3)
   13288:	00160613          	addi	a2,a2,1 # 6a00001 <_gp+0x69e2101>
   1328c:	00168693          	addi	a3,a3,1
   13290:	fef60fa3          	sb	a5,-1(a2)
   13294:	feb698e3          	bne	a3,a1,13284 <_vfprintf_r+0x1ae4>
   13298:	0b010793          	addi	a5,sp,176
   1329c:	40e787b3          	sub	a5,a5,a4
   132a0:	0a210713          	addi	a4,sp,162
   132a4:	00f707b3          	add	a5,a4,a5
   132a8:	e4dff06f          	j	130f4 <_vfprintf_r+0x1954>
   132ac:	228405d3          	fmv.d	fa1,fs0
   132b0:	0a810813          	addi	a6,sp,168
   132b4:	09c10793          	addi	a5,sp,156
   132b8:	09810713          	addi	a4,sp,152
   132bc:	00040693          	mv	a3,s0
   132c0:	00300613          	li	a2,3
   132c4:	000b8513          	mv	a0,s7
   132c8:	01113423          	sd	a7,8(sp)
   132cc:	029000ef          	jal	13af4 <_dtoa_r>
   132d0:	00813883          	ld	a7,8(sp)
   132d4:	00050913          	mv	s2,a0
   132d8:	00040593          	mv	a1,s0
   132dc:	04600793          	li	a5,70
   132e0:	00b90733          	add	a4,s2,a1
   132e4:	ecfd0ee3          	beq	s10,a5,131c0 <_vfprintf_r+0x1a20>
   132e8:	8edff06f          	j	12bd4 <_vfprintf_r+0x1434>
   132ec:	04c12783          	lw	a5,76(sp)
   132f0:	0014041b          	addiw	s0,s0,1
   132f4:	008787bb          	addw	a5,a5,s0
   132f8:	02f12023          	sw	a5,32(sp)
   132fc:	9407dce3          	bgez	a5,12c54 <_vfprintf_r+0x14b4>
   13300:	00000793          	li	a5,0
   13304:	951ff06f          	j	12c54 <_vfprintf_r+0x14b4>
   13308:	f20007d3          	fmv.d.x	fa5,zero
   1330c:	a2f427d3          	feq.d	a5,fs0,fa5
   13310:	ea079ee3          	bnez	a5,131cc <_vfprintf_r+0x1a2c>
   13314:	00100793          	li	a5,1
   13318:	40b785bb          	subw	a1,a5,a1
   1331c:	08b12c23          	sw	a1,152(sp)
   13320:	00b70733          	add	a4,a4,a1
   13324:	8b1ff06f          	j	12bd4 <_vfprintf_r+0x1434>
   13328:	00000d93          	li	s11,0
   1332c:	ccdff06f          	j	12ff8 <_vfprintf_r+0x1858>
   13330:	02813783          	ld	a5,40(sp)
   13334:	0007a403          	lw	s0,0(a5)
   13338:	00878793          	addi	a5,a5,8
   1333c:	02f13423          	sd	a5,40(sp)
   13340:	00044463          	bltz	s0,13348 <_vfprintf_r+0x1ba8>
   13344:	e18fe06f          	j	1195c <_vfprintf_r+0x1bc>
   13348:	fff00413          	li	s0,-1
   1334c:	e10fe06f          	j	1195c <_vfprintf_r+0x1bc>
   13350:	00041a63          	bnez	s0,13364 <_vfprintf_r+0x1bc4>
   13354:	00100793          	li	a5,1
   13358:	00fc7c33          	and	s8,s8,a5
   1335c:	02f12023          	sw	a5,32(sp)
   13360:	8e0c0ae3          	beqz	s8,12c54 <_vfprintf_r+0x14b4>
   13364:	0024079b          	addiw	a5,s0,2
   13368:	02f12023          	sw	a5,32(sp)
   1336c:	8e07d4e3          	bgez	a5,12c54 <_vfprintf_r+0x14b4>
   13370:	f91ff06f          	j	13300 <_vfprintf_r+0x1b60>
   13374:	00fc7c33          	and	s8,s8,a5
   13378:	d80c1ee3          	bnez	s8,13114 <_vfprintf_r+0x1974>
   1337c:	02012703          	lw	a4,32(sp)
   13380:	00070793          	mv	a5,a4
   13384:	da0750e3          	bgez	a4,13124 <_vfprintf_r+0x1984>
   13388:	00000793          	li	a5,0
   1338c:	d99ff06f          	j	13124 <_vfprintf_r+0x1984>
   13390:	00200793          	li	a5,2
   13394:	40e787bb          	subw	a5,a5,a4
   13398:	e59ff06f          	j	131f0 <_vfprintf_r+0x1a50>
   1339c:	02d00713          	li	a4,45
   133a0:	40f007bb          	negw	a5,a5
   133a4:	0ae100a3          	sb	a4,161(sp)
   133a8:	d31ff06f          	j	130d8 <_vfprintf_r+0x1938>
   133ac:	08b107a3          	sb	a1,143(sp)
   133b0:	ed9fe06f          	j	12288 <_vfprintf_r+0xae8>
   133b4:	00000793          	li	a5,0
   133b8:	891ff06f          	j	12c48 <_vfprintf_r+0x14a8>
   133bc:	08b107a3          	sb	a1,143(sp)
   133c0:	010c6c13          	ori	s8,s8,16
   133c4:	f2dfe06f          	j	122f0 <_vfprintf_r+0xb50>
   133c8:	08b107a3          	sb	a1,143(sp)
   133cc:	ef5fe06f          	j	122c0 <_vfprintf_r+0xb20>
   133d0:	09812783          	lw	a5,152(sp)
   133d4:	cedff06f          	j	130c0 <_vfprintf_r+0x1920>
   133d8:	08b107a3          	sb	a1,143(sp)
   133dc:	e2dfe06f          	j	12208 <_vfprintf_r+0xa68>
   133e0:	08b107a3          	sb	a1,143(sp)
   133e4:	dd5fe06f          	j	121b8 <_vfprintf_r+0xa18>
   133e8:	0a210793          	addi	a5,sp,162
   133ec:	d09ff06f          	j	130f4 <_vfprintf_r+0x1954>
   133f0:	08b107a3          	sb	a1,143(sp)
   133f4:	f41fe06f          	j	12334 <_vfprintf_r+0xb94>
   133f8:	08b107a3          	sb	a1,143(sp)
   133fc:	f28fe06f          	j	11b24 <_vfprintf_r+0x384>
   13400:	08b107a3          	sb	a1,143(sp)
   13404:	9c5fe06f          	j	11dc8 <_vfprintf_r+0x628>
   13408:	08b107a3          	sb	a1,143(sp)
   1340c:	010c6c13          	ori	s8,s8,16
   13410:	979fe06f          	j	11d88 <_vfprintf_r+0x5e8>
   13414:	08b107a3          	sb	a1,143(sp)
   13418:	010c6c13          	ori	s8,s8,16
   1341c:	929fe06f          	j	11d44 <_vfprintf_r+0x5a4>
   13420:	08b107a3          	sb	a1,143(sp)
   13424:	881fe06f          	j	11ca4 <_vfprintf_r+0x504>

0000000000013428 <vfprintf>:
   13428:	00060693          	mv	a3,a2
   1342c:	00058613          	mv	a2,a1
   13430:	00050593          	mv	a1,a0
   13434:	8101b503          	ld	a0,-2032(gp) # 1d710 <_impure_ptr>
   13438:	b68fe06f          	j	117a0 <_vfprintf_r>

000000000001343c <__sbprintf>:
   1343c:	0105d783          	lhu	a5,16(a1)
   13440:	0ac5ae03          	lw	t3,172(a1)
   13444:	0125d303          	lhu	t1,18(a1)
   13448:	0305b883          	ld	a7,48(a1)
   1344c:	0405b803          	ld	a6,64(a1)
   13450:	b3010113          	addi	sp,sp,-1232
   13454:	ffd7f793          	andi	a5,a5,-3
   13458:	40000713          	li	a4,1024
   1345c:	4c813023          	sd	s0,1216(sp)
   13460:	00f11823          	sh	a5,16(sp)
   13464:	00058413          	mv	s0,a1
   13468:	0b010793          	addi	a5,sp,176
   1346c:	00010593          	mv	a1,sp
   13470:	4a913c23          	sd	s1,1208(sp)
   13474:	4b213823          	sd	s2,1200(sp)
   13478:	4c113423          	sd	ra,1224(sp)
   1347c:	00050913          	mv	s2,a0
   13480:	0bc12623          	sw	t3,172(sp)
   13484:	00611923          	sh	t1,18(sp)
   13488:	03113823          	sd	a7,48(sp)
   1348c:	05013023          	sd	a6,64(sp)
   13490:	00f13023          	sd	a5,0(sp)
   13494:	00f13c23          	sd	a5,24(sp)
   13498:	00e12623          	sw	a4,12(sp)
   1349c:	02e12023          	sw	a4,32(sp)
   134a0:	02012423          	sw	zero,40(sp)
   134a4:	afcfe0ef          	jal	117a0 <_vfprintf_r>
   134a8:	00050493          	mv	s1,a0
   134ac:	00054a63          	bltz	a0,134c0 <__sbprintf+0x84>
   134b0:	00010593          	mv	a1,sp
   134b4:	00090513          	mv	a0,s2
   134b8:	1a5010ef          	jal	14e5c <_fflush_r>
   134bc:	02051c63          	bnez	a0,134f4 <__sbprintf+0xb8>
   134c0:	01015783          	lhu	a5,16(sp)
   134c4:	0407f793          	andi	a5,a5,64
   134c8:	00078863          	beqz	a5,134d8 <__sbprintf+0x9c>
   134cc:	01045783          	lhu	a5,16(s0)
   134d0:	0407e793          	ori	a5,a5,64
   134d4:	00f41823          	sh	a5,16(s0)
   134d8:	4c813083          	ld	ra,1224(sp)
   134dc:	00048513          	mv	a0,s1
   134e0:	4c013403          	ld	s0,1216(sp)
   134e4:	4b813483          	ld	s1,1208(sp)
   134e8:	4b013903          	ld	s2,1200(sp)
   134ec:	4d010113          	addi	sp,sp,1232
   134f0:	00008067          	ret
   134f4:	fff00493          	li	s1,-1
   134f8:	fc9ff06f          	j	134c0 <__sbprintf+0x84>

00000000000134fc <__swsetup_r>:
   134fc:	8101b783          	ld	a5,-2032(gp) # 1d710 <_impure_ptr>
   13500:	fe010113          	addi	sp,sp,-32
   13504:	00813823          	sd	s0,16(sp)
   13508:	00913423          	sd	s1,8(sp)
   1350c:	00113c23          	sd	ra,24(sp)
   13510:	00050493          	mv	s1,a0
   13514:	00058413          	mv	s0,a1
   13518:	00078663          	beqz	a5,13524 <__swsetup_r+0x28>
   1351c:	0507a703          	lw	a4,80(a5)
   13520:	0e070063          	beqz	a4,13600 <__swsetup_r+0x104>
   13524:	01041703          	lh	a4,16(s0)
   13528:	03071793          	slli	a5,a4,0x30
   1352c:	0307d793          	srli	a5,a5,0x30
   13530:	0087f693          	andi	a3,a5,8
   13534:	04068263          	beqz	a3,13578 <__swsetup_r+0x7c>
   13538:	01843683          	ld	a3,24(s0)
   1353c:	06068663          	beqz	a3,135a8 <__swsetup_r+0xac>
   13540:	0017f713          	andi	a4,a5,1
   13544:	08071463          	bnez	a4,135cc <__swsetup_r+0xd0>
   13548:	0027f793          	andi	a5,a5,2
   1354c:	00000713          	li	a4,0
   13550:	00079463          	bnez	a5,13558 <__swsetup_r+0x5c>
   13554:	02042703          	lw	a4,32(s0)
   13558:	00e42623          	sw	a4,12(s0)
   1355c:	00000513          	li	a0,0
   13560:	08068263          	beqz	a3,135e4 <__swsetup_r+0xe8>
   13564:	01813083          	ld	ra,24(sp)
   13568:	01013403          	ld	s0,16(sp)
   1356c:	00813483          	ld	s1,8(sp)
   13570:	02010113          	addi	sp,sp,32
   13574:	00008067          	ret
   13578:	0107f693          	andi	a3,a5,16
   1357c:	0c068663          	beqz	a3,13648 <__swsetup_r+0x14c>
   13580:	0047f793          	andi	a5,a5,4
   13584:	08079463          	bnez	a5,1360c <__swsetup_r+0x110>
   13588:	01843683          	ld	a3,24(s0)
   1358c:	00876793          	ori	a5,a4,8
   13590:	0107979b          	slliw	a5,a5,0x10
   13594:	4107d79b          	sraiw	a5,a5,0x10
   13598:	00f41823          	sh	a5,16(s0)
   1359c:	03079793          	slli	a5,a5,0x30
   135a0:	0307d793          	srli	a5,a5,0x30
   135a4:	f8069ee3          	bnez	a3,13540 <__swsetup_r+0x44>
   135a8:	2807f713          	andi	a4,a5,640
   135ac:	20000613          	li	a2,512
   135b0:	f8c708e3          	beq	a4,a2,13540 <__swsetup_r+0x44>
   135b4:	00040593          	mv	a1,s0
   135b8:	00048513          	mv	a0,s1
   135bc:	5d1020ef          	jal	1638c <__smakebuf_r>
   135c0:	01045783          	lhu	a5,16(s0)
   135c4:	01843683          	ld	a3,24(s0)
   135c8:	f79ff06f          	j	13540 <__swsetup_r+0x44>
   135cc:	02042783          	lw	a5,32(s0)
   135d0:	00042623          	sw	zero,12(s0)
   135d4:	00000513          	li	a0,0
   135d8:	40f007bb          	negw	a5,a5
   135dc:	02f42423          	sw	a5,40(s0)
   135e0:	f80692e3          	bnez	a3,13564 <__swsetup_r+0x68>
   135e4:	01041783          	lh	a5,16(s0)
   135e8:	0807f713          	andi	a4,a5,128
   135ec:	f6070ce3          	beqz	a4,13564 <__swsetup_r+0x68>
   135f0:	0407e793          	ori	a5,a5,64
   135f4:	00f41823          	sh	a5,16(s0)
   135f8:	fff00513          	li	a0,-1
   135fc:	f69ff06f          	j	13564 <__swsetup_r+0x68>
   13600:	00078513          	mv	a0,a5
   13604:	405010ef          	jal	15208 <__sinit>
   13608:	f1dff06f          	j	13524 <__swsetup_r+0x28>
   1360c:	05843583          	ld	a1,88(s0)
   13610:	00058e63          	beqz	a1,1362c <__swsetup_r+0x130>
   13614:	07440793          	addi	a5,s0,116
   13618:	00f58863          	beq	a1,a5,13628 <__swsetup_r+0x12c>
   1361c:	00048513          	mv	a0,s1
   13620:	541010ef          	jal	15360 <_free_r>
   13624:	01041703          	lh	a4,16(s0)
   13628:	04043c23          	sd	zero,88(s0)
   1362c:	01843683          	ld	a3,24(s0)
   13630:	fdb77713          	andi	a4,a4,-37
   13634:	0107171b          	slliw	a4,a4,0x10
   13638:	4107571b          	sraiw	a4,a4,0x10
   1363c:	00042423          	sw	zero,8(s0)
   13640:	00d43023          	sd	a3,0(s0)
   13644:	f49ff06f          	j	1358c <__swsetup_r+0x90>
   13648:	00900793          	li	a5,9
   1364c:	00f4a023          	sw	a5,0(s1)
   13650:	04076713          	ori	a4,a4,64
   13654:	00e41823          	sh	a4,16(s0)
   13658:	fff00513          	li	a0,-1
   1365c:	f09ff06f          	j	13564 <__swsetup_r+0x68>

0000000000013660 <__register_exitproc>:
   13660:	fd010113          	addi	sp,sp,-48
   13664:	02813023          	sd	s0,32(sp)
   13668:	8081b403          	ld	s0,-2040(gp) # 1d708 <_global_impure_ptr>
   1366c:	00913c23          	sd	s1,24(sp)
   13670:	00050493          	mv	s1,a0
   13674:	1f843503          	ld	a0,504(s0)
   13678:	01213823          	sd	s2,16(sp)
   1367c:	01313423          	sd	s3,8(sp)
   13680:	01413023          	sd	s4,0(sp)
   13684:	02113423          	sd	ra,40(sp)
   13688:	00058913          	mv	s2,a1
   1368c:	00060a13          	mv	s4,a2
   13690:	00068993          	mv	s3,a3
   13694:	0c050663          	beqz	a0,13760 <__register_exitproc+0x100>
   13698:	00852703          	lw	a4,8(a0)
   1369c:	01f00793          	li	a5,31
   136a0:	0017059b          	addiw	a1,a4,1
   136a4:	04e7d063          	ble	a4,a5,136e4 <__register_exitproc+0x84>
   136a8:	000007b7          	lui	a5,0x0
   136ac:	00078793          	mv	a5,a5
   136b0:	0a078e63          	beqz	a5,1376c <__register_exitproc+0x10c>
   136b4:	31800513          	li	a0,792
   136b8:	fffed317          	auipc	t1,0xfffed
   136bc:	948300e7          	jalr	t1,-1720 # 0 <_ftext-0x10000>
   136c0:	0a050663          	beqz	a0,1376c <__register_exitproc+0x10c>
   136c4:	1f843783          	ld	a5,504(s0)
   136c8:	00052423          	sw	zero,8(a0)
   136cc:	00100593          	li	a1,1
   136d0:	00f53023          	sd	a5,0(a0)
   136d4:	1ea43c23          	sd	a0,504(s0)
   136d8:	30052823          	sw	zero,784(a0)
   136dc:	30052a23          	sw	zero,788(a0)
   136e0:	00000713          	li	a4,0
   136e4:	00070793          	mv	a5,a4
   136e8:	02049e63          	bnez	s1,13724 <__register_exitproc+0xc4>
   136ec:	00278793          	addi	a5,a5,2 # 2 <_ftext-0xfffe>
   136f0:	00379793          	slli	a5,a5,0x3
   136f4:	00b52423          	sw	a1,8(a0)
   136f8:	00f50533          	add	a0,a0,a5
   136fc:	01253023          	sd	s2,0(a0)
   13700:	00000513          	li	a0,0
   13704:	02813083          	ld	ra,40(sp)
   13708:	02013403          	ld	s0,32(sp)
   1370c:	01813483          	ld	s1,24(sp)
   13710:	01013903          	ld	s2,16(sp)
   13714:	00813983          	ld	s3,8(sp)
   13718:	00013a03          	ld	s4,0(sp)
   1371c:	03010113          	addi	sp,sp,48
   13720:	00008067          	ret
   13724:	00371813          	slli	a6,a4,0x3
   13728:	01050833          	add	a6,a0,a6
   1372c:	11483823          	sd	s4,272(a6)
   13730:	31052883          	lw	a7,784(a0)
   13734:	00100613          	li	a2,1
   13738:	00e6173b          	sllw	a4,a2,a4
   1373c:	00e8e633          	or	a2,a7,a4
   13740:	30c52823          	sw	a2,784(a0)
   13744:	21383823          	sd	s3,528(a6)
   13748:	00200693          	li	a3,2
   1374c:	fad490e3          	bne	s1,a3,136ec <__register_exitproc+0x8c>
   13750:	31452683          	lw	a3,788(a0)
   13754:	00e6e733          	or	a4,a3,a4
   13758:	30e52a23          	sw	a4,788(a0)
   1375c:	f91ff06f          	j	136ec <__register_exitproc+0x8c>
   13760:	20040513          	addi	a0,s0,512
   13764:	1ea43c23          	sd	a0,504(s0)
   13768:	f31ff06f          	j	13698 <__register_exitproc+0x38>
   1376c:	fff00513          	li	a0,-1
   13770:	f95ff06f          	j	13704 <__register_exitproc+0xa4>

0000000000013774 <__call_exitprocs>:
   13774:	fa010113          	addi	sp,sp,-96
   13778:	03413823          	sd	s4,48(sp)
   1377c:	8081ba03          	ld	s4,-2040(gp) # 1d708 <_global_impure_ptr>
   13780:	03313c23          	sd	s3,56(sp)
   13784:	000009b7          	lui	s3,0x0
   13788:	04913423          	sd	s1,72(sp)
   1378c:	05213023          	sd	s2,64(sp)
   13790:	03513423          	sd	s5,40(sp)
   13794:	01713c23          	sd	s7,24(sp)
   13798:	01813823          	sd	s8,16(sp)
   1379c:	04113c23          	sd	ra,88(sp)
   137a0:	04813823          	sd	s0,80(sp)
   137a4:	03613023          	sd	s6,32(sp)
   137a8:	01913423          	sd	s9,8(sp)
   137ac:	01a13023          	sd	s10,0(sp)
   137b0:	00050913          	mv	s2,a0
   137b4:	00058b93          	mv	s7,a1
   137b8:	1f8a0a93          	addi	s5,s4,504
   137bc:	00100493          	li	s1,1
   137c0:	fff00c13          	li	s8,-1
   137c4:	00098993          	mv	s3,s3
   137c8:	1f8a3b03          	ld	s6,504(s4)
   137cc:	0c0b0663          	beqz	s6,13898 <__call_exitprocs+0x124>
   137d0:	000a8d13          	mv	s10,s5
   137d4:	008b2403          	lw	s0,8(s6)
   137d8:	fff4041b          	addiw	s0,s0,-1
   137dc:	02045263          	bgez	s0,13800 <__call_exitprocs+0x8c>
   137e0:	08c0006f          	j	1386c <__call_exitprocs+0xf8>
   137e4:	02040793          	addi	a5,s0,32
   137e8:	00379793          	slli	a5,a5,0x3
   137ec:	00fb07b3          	add	a5,s6,a5
   137f0:	1107b783          	ld	a5,272(a5)
   137f4:	00fb8a63          	beq	s7,a5,13808 <__call_exitprocs+0x94>
   137f8:	fff4041b          	addiw	s0,s0,-1
   137fc:	07840863          	beq	s0,s8,1386c <__call_exitprocs+0xf8>
   13800:	00040713          	mv	a4,s0
   13804:	fe0b90e3          	bnez	s7,137e4 <__call_exitprocs+0x70>
   13808:	008b2783          	lw	a5,8(s6)
   1380c:	00371713          	slli	a4,a4,0x3
   13810:	00eb0733          	add	a4,s6,a4
   13814:	fff7879b          	addiw	a5,a5,-1
   13818:	01073683          	ld	a3,16(a4)
   1381c:	0a878e63          	beq	a5,s0,138d8 <__call_exitprocs+0x164>
   13820:	00073823          	sd	zero,16(a4)
   13824:	fc068ae3          	beqz	a3,137f8 <__call_exitprocs+0x84>
   13828:	310b2783          	lw	a5,784(s6)
   1382c:	0084963b          	sllw	a2,s1,s0
   13830:	008b2c83          	lw	s9,8(s6)
   13834:	00f677b3          	and	a5,a2,a5
   13838:	08078c63          	beqz	a5,138d0 <__call_exitprocs+0x15c>
   1383c:	314b2783          	lw	a5,788(s6)
   13840:	00f67633          	and	a2,a2,a5
   13844:	08061e63          	bnez	a2,138e0 <__call_exitprocs+0x16c>
   13848:	11073583          	ld	a1,272(a4)
   1384c:	00090513          	mv	a0,s2
   13850:	000680e7          	jalr	a3
   13854:	008b2783          	lw	a5,8(s6)
   13858:	f79798e3          	bne	a5,s9,137c8 <__call_exitprocs+0x54>
   1385c:	000d3783          	ld	a5,0(s10)
   13860:	f76794e3          	bne	a5,s6,137c8 <__call_exitprocs+0x54>
   13864:	fff4041b          	addiw	s0,s0,-1
   13868:	f9841ce3          	bne	s0,s8,13800 <__call_exitprocs+0x8c>
   1386c:	02098663          	beqz	s3,13898 <__call_exitprocs+0x124>
   13870:	008b2783          	lw	a5,8(s6)
   13874:	06079c63          	bnez	a5,138ec <__call_exitprocs+0x178>
   13878:	000b3783          	ld	a5,0(s6)
   1387c:	08078263          	beqz	a5,13900 <__call_exitprocs+0x18c>
   13880:	000b0513          	mv	a0,s6
   13884:	00fd3023          	sd	a5,0(s10)
   13888:	fffec317          	auipc	t1,0xfffec
   1388c:	778300e7          	jalr	t1,1912 # 0 <_ftext-0x10000>
   13890:	000d3b03          	ld	s6,0(s10)
   13894:	f40b10e3          	bnez	s6,137d4 <__call_exitprocs+0x60>
   13898:	05813083          	ld	ra,88(sp)
   1389c:	05013403          	ld	s0,80(sp)
   138a0:	04813483          	ld	s1,72(sp)
   138a4:	04013903          	ld	s2,64(sp)
   138a8:	03813983          	ld	s3,56(sp)
   138ac:	03013a03          	ld	s4,48(sp)
   138b0:	02813a83          	ld	s5,40(sp)
   138b4:	02013b03          	ld	s6,32(sp)
   138b8:	01813b83          	ld	s7,24(sp)
   138bc:	01013c03          	ld	s8,16(sp)
   138c0:	00813c83          	ld	s9,8(sp)
   138c4:	00013d03          	ld	s10,0(sp)
   138c8:	06010113          	addi	sp,sp,96
   138cc:	00008067          	ret
   138d0:	000680e7          	jalr	a3
   138d4:	f81ff06f          	j	13854 <__call_exitprocs+0xe0>
   138d8:	008b2423          	sw	s0,8(s6)
   138dc:	f49ff06f          	j	13824 <__call_exitprocs+0xb0>
   138e0:	11073503          	ld	a0,272(a4)
   138e4:	000680e7          	jalr	a3
   138e8:	f6dff06f          	j	13854 <__call_exitprocs+0xe0>
   138ec:	000b3783          	ld	a5,0(s6)
   138f0:	000b0d13          	mv	s10,s6
   138f4:	00078b13          	mv	s6,a5
   138f8:	ec0b1ee3          	bnez	s6,137d4 <__call_exitprocs+0x60>
   138fc:	f9dff06f          	j	13898 <__call_exitprocs+0x124>
   13900:	00000793          	li	a5,0
   13904:	fedff06f          	j	138f0 <__call_exitprocs+0x17c>

0000000000013908 <quorem>:
   13908:	fc010113          	addi	sp,sp,-64
   1390c:	03213023          	sd	s2,32(sp)
   13910:	01452783          	lw	a5,20(a0)
   13914:	0145a903          	lw	s2,20(a1)
   13918:	02113c23          	sd	ra,56(sp)
   1391c:	02813823          	sd	s0,48(sp)
   13920:	02913423          	sd	s1,40(sp)
   13924:	01313c23          	sd	s3,24(sp)
   13928:	01413823          	sd	s4,16(sp)
   1392c:	01513423          	sd	s5,8(sp)
   13930:	1b27ce63          	blt	a5,s2,13aec <quorem+0x1e4>
   13934:	fff9091b          	addiw	s2,s2,-1
   13938:	00090f13          	mv	t5,s2
   1393c:	002f1f13          	slli	t5,t5,0x2
   13940:	01858413          	addi	s0,a1,24
   13944:	01e409b3          	add	s3,s0,t5
   13948:	01850a13          	addi	s4,a0,24
   1394c:	01ea0f33          	add	t5,s4,t5
   13950:	0009a783          	lw	a5,0(s3) # 0 <_ftext-0x10000>
   13954:	000f2483          	lw	s1,0(t5)
   13958:	0017879b          	addiw	a5,a5,1
   1395c:	02f4d4bb          	divuw	s1,s1,a5
   13960:	0a048e63          	beqz	s1,13a1c <quorem+0x114>
   13964:	00010337          	lui	t1,0x10
   13968:	00040e93          	mv	t4,s0
   1396c:	000a0e13          	mv	t3,s4
   13970:	00000613          	li	a2,0
   13974:	00000713          	li	a4,0
   13978:	fff3031b          	addiw	t1,t1,-1
   1397c:	004e8e93          	addi	t4,t4,4
   13980:	ffcea803          	lw	a6,-4(t4)
   13984:	000e2683          	lw	a3,0(t3)
   13988:	004e0e13          	addi	t3,t3,4
   1398c:	006878b3          	and	a7,a6,t1
   13990:	029888bb          	mulw	a7,a7,s1
   13994:	0108581b          	srliw	a6,a6,0x10
   13998:	0066f7b3          	and	a5,a3,t1
   1399c:	0106d69b          	srliw	a3,a3,0x10
   139a0:	0298083b          	mulw	a6,a6,s1
   139a4:	00c888bb          	addw	a7,a7,a2
   139a8:	0108d61b          	srliw	a2,a7,0x10
   139ac:	0068f8b3          	and	a7,a7,t1
   139b0:	4117073b          	subw	a4,a4,a7
   139b4:	00f707bb          	addw	a5,a4,a5
   139b8:	4107d71b          	sraiw	a4,a5,0x10
   139bc:	0067f7b3          	and	a5,a5,t1
   139c0:	00c8063b          	addw	a2,a6,a2
   139c4:	00667833          	and	a6,a2,t1
   139c8:	410686bb          	subw	a3,a3,a6
   139cc:	00e6873b          	addw	a4,a3,a4
   139d0:	0107169b          	slliw	a3,a4,0x10
   139d4:	00f6e6b3          	or	a3,a3,a5
   139d8:	fede2e23          	sw	a3,-4(t3)
   139dc:	0106561b          	srliw	a2,a2,0x10
   139e0:	4107571b          	sraiw	a4,a4,0x10
   139e4:	f9d9fce3          	bleu	t4,s3,1397c <quorem+0x74>
   139e8:	000f2783          	lw	a5,0(t5)
   139ec:	02079863          	bnez	a5,13a1c <quorem+0x114>
   139f0:	ffcf0793          	addi	a5,t5,-4
   139f4:	02fa7263          	bleu	a5,s4,13a18 <quorem+0x110>
   139f8:	ffcf2703          	lw	a4,-4(t5)
   139fc:	00070863          	beqz	a4,13a0c <quorem+0x104>
   13a00:	0180006f          	j	13a18 <quorem+0x110>
   13a04:	0007a703          	lw	a4,0(a5)
   13a08:	00071863          	bnez	a4,13a18 <quorem+0x110>
   13a0c:	ffc78793          	addi	a5,a5,-4
   13a10:	fff9091b          	addiw	s2,s2,-1
   13a14:	fefa68e3          	bltu	s4,a5,13a04 <quorem+0xfc>
   13a18:	01252a23          	sw	s2,20(a0)
   13a1c:	00050a93          	mv	s5,a0
   13a20:	66d030ef          	jal	1788c <__mcmp>
   13a24:	0a054063          	bltz	a0,13ac4 <quorem+0x1bc>
   13a28:	000105b7          	lui	a1,0x10
   13a2c:	0014849b          	addiw	s1,s1,1
   13a30:	000a0613          	mv	a2,s4
   13a34:	00000793          	li	a5,0
   13a38:	fff5859b          	addiw	a1,a1,-1
   13a3c:	00440413          	addi	s0,s0,4
   13a40:	ffc42683          	lw	a3,-4(s0)
   13a44:	00062703          	lw	a4,0(a2)
   13a48:	00460613          	addi	a2,a2,4
   13a4c:	00b6f833          	and	a6,a3,a1
   13a50:	410787bb          	subw	a5,a5,a6
   13a54:	00b77833          	and	a6,a4,a1
   13a58:	010787bb          	addw	a5,a5,a6
   13a5c:	0106d69b          	srliw	a3,a3,0x10
   13a60:	0107571b          	srliw	a4,a4,0x10
   13a64:	40d7073b          	subw	a4,a4,a3
   13a68:	4107d69b          	sraiw	a3,a5,0x10
   13a6c:	00d706bb          	addw	a3,a4,a3
   13a70:	0106981b          	slliw	a6,a3,0x10
   13a74:	00b7f733          	and	a4,a5,a1
   13a78:	00e86733          	or	a4,a6,a4
   13a7c:	fee62e23          	sw	a4,-4(a2)
   13a80:	4106d79b          	sraiw	a5,a3,0x10
   13a84:	fa89fce3          	bleu	s0,s3,13a3c <quorem+0x134>
   13a88:	00291713          	slli	a4,s2,0x2
   13a8c:	00ea0733          	add	a4,s4,a4
   13a90:	00072783          	lw	a5,0(a4)
   13a94:	02079863          	bnez	a5,13ac4 <quorem+0x1bc>
   13a98:	ffc70793          	addi	a5,a4,-4
   13a9c:	02fa7263          	bleu	a5,s4,13ac0 <quorem+0x1b8>
   13aa0:	ffc72703          	lw	a4,-4(a4)
   13aa4:	00070863          	beqz	a4,13ab4 <quorem+0x1ac>
   13aa8:	0180006f          	j	13ac0 <quorem+0x1b8>
   13aac:	0007a703          	lw	a4,0(a5)
   13ab0:	00071863          	bnez	a4,13ac0 <quorem+0x1b8>
   13ab4:	ffc78793          	addi	a5,a5,-4
   13ab8:	fff9091b          	addiw	s2,s2,-1
   13abc:	fefa68e3          	bltu	s4,a5,13aac <quorem+0x1a4>
   13ac0:	012aaa23          	sw	s2,20(s5)
   13ac4:	00048513          	mv	a0,s1
   13ac8:	03813083          	ld	ra,56(sp)
   13acc:	03013403          	ld	s0,48(sp)
   13ad0:	02813483          	ld	s1,40(sp)
   13ad4:	02013903          	ld	s2,32(sp)
   13ad8:	01813983          	ld	s3,24(sp)
   13adc:	01013a03          	ld	s4,16(sp)
   13ae0:	00813a83          	ld	s5,8(sp)
   13ae4:	04010113          	addi	sp,sp,64
   13ae8:	00008067          	ret
   13aec:	00000513          	li	a0,0
   13af0:	fd9ff06f          	j	13ac8 <quorem+0x1c0>

0000000000013af4 <_dtoa_r>:
   13af4:	e20585d3          	fmv.x.d	a1,fa1
   13af8:	06053883          	ld	a7,96(a0)
   13afc:	f3010113          	addi	sp,sp,-208
   13b00:	0c813023          	sd	s0,192(sp)
   13b04:	0a913c23          	sd	s1,184(sp)
   13b08:	0b313423          	sd	s3,168(sp)
   13b0c:	09613823          	sd	s6,144(sp)
   13b10:	07913c23          	sd	s9,120(sp)
   13b14:	07a13823          	sd	s10,112(sp)
   13b18:	0c113423          	sd	ra,200(sp)
   13b1c:	0b213823          	sd	s2,176(sp)
   13b20:	0b413023          	sd	s4,160(sp)
   13b24:	09513c23          	sd	s5,152(sp)
   13b28:	09713423          	sd	s7,136(sp)
   13b2c:	09813023          	sd	s8,128(sp)
   13b30:	07b13423          	sd	s11,104(sp)
   13b34:	00e13023          	sd	a4,0(sp)
   13b38:	00050413          	mv	s0,a0
   13b3c:	00060993          	mv	s3,a2
   13b40:	00068c93          	mv	s9,a3
   13b44:	00078493          	mv	s1,a5
   13b48:	00080b13          	mv	s6,a6
   13b4c:	00058d13          	mv	s10,a1
   13b50:	02088263          	beqz	a7,13b74 <_dtoa_r+0x80>
   13b54:	06852603          	lw	a2,104(a0)
   13b58:	00100693          	li	a3,1
   13b5c:	00088593          	mv	a1,a7
   13b60:	00c696bb          	sllw	a3,a3,a2
   13b64:	00c8a423          	sw	a2,8(a7)
   13b68:	00d8a623          	sw	a3,12(a7)
   13b6c:	4d4030ef          	jal	17040 <_Bfree>
   13b70:	06043023          	sd	zero,96(s0)
   13b74:	420d5913          	srai	s2,s10,0x20
   13b78:	0c094063          	bltz	s2,13c38 <_dtoa_r+0x144>
   13b7c:	0004a023          	sw	zero,0(s1)
   13b80:	7ff007b7          	lui	a5,0x7ff00
   13b84:	00f976b3          	and	a3,s2,a5
   13b88:	06f68a63          	beq	a3,a5,13bfc <_dtoa_r+0x108>
   13b8c:	f20007d3          	fmv.d.x	fa5,zero
   13b90:	f20d0753          	fmv.d.x	fa4,s10
   13b94:	a2f727d3          	feq.d	a5,fa4,fa5
   13b98:	0c078463          	beqz	a5,13c60 <_dtoa_r+0x16c>
   13b9c:	00013703          	ld	a4,0(sp)
   13ba0:	00100793          	li	a5,1
   13ba4:	00f72023          	sw	a5,0(a4)
   13ba8:	480b0a63          	beqz	s6,1403c <_dtoa_r+0x548>
   13bac:	0001b7b7          	lui	a5,0x1b
   13bb0:	51978793          	addi	a5,a5,1305 # 1b519 <zeroes.4137+0x89>
   13bb4:	0001b537          	lui	a0,0x1b
   13bb8:	00fb3023          	sd	a5,0(s6)
   13bbc:	51850513          	addi	a0,a0,1304 # 1b518 <zeroes.4137+0x88>
   13bc0:	0c813083          	ld	ra,200(sp)
   13bc4:	0c013403          	ld	s0,192(sp)
   13bc8:	0b813483          	ld	s1,184(sp)
   13bcc:	0b013903          	ld	s2,176(sp)
   13bd0:	0a813983          	ld	s3,168(sp)
   13bd4:	0a013a03          	ld	s4,160(sp)
   13bd8:	09813a83          	ld	s5,152(sp)
   13bdc:	09013b03          	ld	s6,144(sp)
   13be0:	08813b83          	ld	s7,136(sp)
   13be4:	08013c03          	ld	s8,128(sp)
   13be8:	07813c83          	ld	s9,120(sp)
   13bec:	07013d03          	ld	s10,112(sp)
   13bf0:	06813d83          	ld	s11,104(sp)
   13bf4:	0d010113          	addi	sp,sp,208
   13bf8:	00008067          	ret
   13bfc:	00013703          	ld	a4,0(sp)
   13c00:	000027b7          	lui	a5,0x2
   13c04:	70f7879b          	addiw	a5,a5,1807
   13c08:	00f72023          	sw	a5,0(a4)
   13c0c:	00cd1793          	slli	a5,s10,0xc
   13c10:	3e079863          	bnez	a5,14000 <_dtoa_r+0x50c>
   13c14:	0001b537          	lui	a0,0x1b
   13c18:	52050513          	addi	a0,a0,1312 # 1b520 <zeroes.4137+0x90>
   13c1c:	fa0b02e3          	beqz	s6,13bc0 <_dtoa_r+0xcc>
   13c20:	00354703          	lbu	a4,3(a0)
   13c24:	00350793          	addi	a5,a0,3
   13c28:	00070463          	beqz	a4,13c30 <_dtoa_r+0x13c>
   13c2c:	00850793          	addi	a5,a0,8
   13c30:	00fb3023          	sd	a5,0(s6)
   13c34:	f8dff06f          	j	13bc0 <_dtoa_r+0xcc>
   13c38:	800007b7          	lui	a5,0x80000
   13c3c:	fff7c793          	not	a5,a5
   13c40:	020d1713          	slli	a4,s10,0x20
   13c44:	00f97933          	and	s2,s2,a5
   13c48:	02091793          	slli	a5,s2,0x20
   13c4c:	02075713          	srli	a4,a4,0x20
   13c50:	00100693          	li	a3,1
   13c54:	00d4a023          	sw	a3,0(s1)
   13c58:	00f76d33          	or	s10,a4,a5
   13c5c:	f25ff06f          	j	13b80 <_dtoa_r+0x8c>
   13c60:	f20d05d3          	fmv.d.x	fa1,s10
   13c64:	05810693          	addi	a3,sp,88
   13c68:	05c10613          	addi	a2,sp,92
   13c6c:	00040513          	mv	a0,s0
   13c70:	05c040ef          	jal	17ccc <__d2b>
   13c74:	02a13023          	sd	a0,32(sp)
   13c78:	0149581b          	srliw	a6,s2,0x14
   13c7c:	38081863          	bnez	a6,1400c <_dtoa_r+0x518>
   13c80:	05812603          	lw	a2,88(sp)
   13c84:	05c12803          	lw	a6,92(sp)
   13c88:	02000793          	li	a5,32
   13c8c:	0106083b          	addw	a6,a2,a6
   13c90:	4328069b          	addiw	a3,a6,1074
   13c94:	6ad7de63          	ble	a3,a5,14350 <_dtoa_r+0x85c>
   13c98:	04000593          	li	a1,64
   13c9c:	4128049b          	addiw	s1,a6,1042
   13ca0:	000d079b          	sext.w	a5,s10
   13ca4:	40d585bb          	subw	a1,a1,a3
   13ca8:	0097d7bb          	srlw	a5,a5,s1
   13cac:	00b914bb          	sllw	s1,s2,a1
   13cb0:	0097e4b3          	or	s1,a5,s1
   13cb4:	d21487d3          	fcvt.d.wu	fa5,s1
   13cb8:	fe1006b7          	lui	a3,0xfe100
   13cbc:	fff8081b          	addiw	a6,a6,-1
   13cc0:	e20784d3          	fmv.x.d	s1,fa5
   13cc4:	00100913          	li	s2,1
   13cc8:	4204d793          	srai	a5,s1,0x20
   13ccc:	00d787bb          	addw	a5,a5,a3
   13cd0:	02049493          	slli	s1,s1,0x20
   13cd4:	02079793          	slli	a5,a5,0x20
   13cd8:	0204d493          	srli	s1,s1,0x20
   13cdc:	00f4e4b3          	or	s1,s1,a5
   13ce0:	0001d7b7          	lui	a5,0x1d
   13ce4:	7787b787          	fld	fa5,1912(a5) # 1d778 <__wctomb+0x48>
   13ce8:	f2048753          	fmv.d.x	fa4,s1
   13cec:	0001d7b7          	lui	a5,0x1d
   13cf0:	0af77653          	fsub.d	fa2,fa4,fa5
   13cf4:	7887b787          	fld	fa5,1928(a5) # 1d788 <__wctomb+0x58>
   13cf8:	0001d7b7          	lui	a5,0x1d
   13cfc:	7807b687          	fld	fa3,1920(a5) # 1d780 <__wctomb+0x50>
   13d00:	0001d7b7          	lui	a5,0x1d
   13d04:	d2080753          	fcvt.d.w	fa4,a6
   13d08:	7ad677c3          	fmadd.d	fa5,fa2,fa3,fa5
   13d0c:	7907b687          	fld	fa3,1936(a5) # 1d790 <__wctomb+0x60>
   13d10:	7ad777c3          	fmadd.d	fa5,fa4,fa3,fa5
   13d14:	f2000753          	fmv.d.x	fa4,zero
   13d18:	a2e797d3          	flt.d	a5,fa5,fa4
   13d1c:	c2079bd3          	fcvt.w.d	s7,fa5,rtz
   13d20:	5e079e63          	bnez	a5,1431c <_dtoa_r+0x828>
   13d24:	00100793          	li	a5,1
   13d28:	02f12823          	sw	a5,48(sp)
   13d2c:	01600793          	li	a5,22
   13d30:	0377e663          	bltu	a5,s7,13d5c <_dtoa_r+0x268>
   13d34:	0001b7b7          	lui	a5,0x1b
   13d38:	003b9693          	slli	a3,s7,0x3
   13d3c:	20078793          	addi	a5,a5,512 # 1b200 <__mprec_tens>
   13d40:	00f687b3          	add	a5,a3,a5
   13d44:	0007b787          	fld	fa5,0(a5)
   13d48:	f20d0753          	fmv.d.x	fa4,s10
   13d4c:	a2f717d3          	flt.d	a5,fa4,fa5
   13d50:	60078863          	beqz	a5,14360 <_dtoa_r+0x86c>
   13d54:	fffb8b9b          	addiw	s7,s7,-1
   13d58:	02012823          	sw	zero,48(sp)
   13d5c:	4106083b          	subw	a6,a2,a6
   13d60:	fff80d9b          	addiw	s11,a6,-1
   13d64:	00000813          	li	a6,0
   13d68:	2e0dc063          	bltz	s11,14048 <_dtoa_r+0x554>
   13d6c:	5c0bc263          	bltz	s7,14330 <_dtoa_r+0x83c>
   13d70:	017d8dbb          	addw	s11,s11,s7
   13d74:	03712423          	sw	s7,40(sp)
   13d78:	00000c13          	li	s8,0
   13d7c:	00900793          	li	a5,9
   13d80:	2d37ea63          	bltu	a5,s3,14054 <_dtoa_r+0x560>
   13d84:	00500793          	li	a5,5
   13d88:	00100a13          	li	s4,1
   13d8c:	0137d663          	ble	s3,a5,13d98 <_dtoa_r+0x2a4>
   13d90:	ffc9899b          	addiw	s3,s3,-4
   13d94:	00000a13          	li	s4,0
   13d98:	00300793          	li	a5,3
   13d9c:	2af982e3          	beq	s3,a5,14840 <_dtoa_r+0xd4c>
   13da0:	1f37dce3          	ble	s3,a5,14798 <_dtoa_r+0xca4>
   13da4:	00400793          	li	a5,4
   13da8:	0cf98ae3          	beq	s3,a5,1467c <_dtoa_r+0xb88>
   13dac:	00100793          	li	a5,1
   13db0:	00f12823          	sw	a5,16(sp)
   13db4:	00500793          	li	a5,5
   13db8:	1ef996e3          	bne	s3,a5,147a4 <_dtoa_r+0xcb0>
   13dbc:	019b87bb          	addw	a5,s7,s9
   13dc0:	00178a9b          	addiw	s5,a5,1
   13dc4:	02f12a23          	sw	a5,52(sp)
   13dc8:	000a8513          	mv	a0,s5
   13dcc:	000a8493          	mv	s1,s5
   13dd0:	1b505ee3          	blez	s5,1478c <_dtoa_r+0xc98>
   13dd4:	06042423          	sw	zero,104(s0)
   13dd8:	01f00793          	li	a5,31
   13ddc:	00000593          	li	a1,0
   13de0:	02a7f463          	bleu	a0,a5,13e08 <_dtoa_r+0x314>
   13de4:	00100613          	li	a2,1
   13de8:	00400693          	li	a3,4
   13dec:	0016969b          	slliw	a3,a3,0x1
   13df0:	00068793          	mv	a5,a3
   13df4:	01c78793          	addi	a5,a5,28
   13df8:	00060593          	mv	a1,a2
   13dfc:	0016061b          	addiw	a2,a2,1
   13e00:	fef576e3          	bleu	a5,a0,13dec <_dtoa_r+0x2f8>
   13e04:	06b42423          	sw	a1,104(s0)
   13e08:	00040513          	mv	a0,s0
   13e0c:	03013c23          	sd	a6,56(sp)
   13e10:	184030ef          	jal	16f94 <_Balloc>
   13e14:	00a13423          	sd	a0,8(sp)
   13e18:	06a43023          	sd	a0,96(s0)
   13e1c:	00e00793          	li	a5,14
   13e20:	03813803          	ld	a6,56(sp)
   13e24:	2697e463          	bltu	a5,s1,1408c <_dtoa_r+0x598>
   13e28:	260a0263          	beqz	s4,1408c <_dtoa_r+0x598>
   13e2c:	03a13c23          	sd	s10,56(sp)
   13e30:	317054e3          	blez	s7,14938 <_dtoa_r+0xe44>
   13e34:	00fbf713          	andi	a4,s7,15
   13e38:	00371693          	slli	a3,a4,0x3
   13e3c:	0001b737          	lui	a4,0x1b
   13e40:	404bd79b          	sraiw	a5,s7,0x4
   13e44:	20070713          	addi	a4,a4,512 # 1b200 <__mprec_tens>
   13e48:	00e68733          	add	a4,a3,a4
   13e4c:	0107f693          	andi	a3,a5,16
   13e50:	00073687          	fld	fa3,0(a4)
   13e54:	f20d07d3          	fmv.d.x	fa5,s10
   13e58:	00200713          	li	a4,2
   13e5c:	00068c63          	beqz	a3,13e74 <_dtoa_r+0x380>
   13e60:	0001b737          	lui	a4,0x1b
   13e64:	31073707          	fld	fa4,784(a4) # 1b310 <__mprec_bigtens+0x20>
   13e68:	00f7f793          	andi	a5,a5,15
   13e6c:	00300713          	li	a4,3
   13e70:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   13e74:	02078663          	beqz	a5,13ea0 <_dtoa_r+0x3ac>
   13e78:	0001b6b7          	lui	a3,0x1b
   13e7c:	2f068693          	addi	a3,a3,752 # 1b2f0 <__mprec_bigtens>
   13e80:	0017f613          	andi	a2,a5,1
   13e84:	4017d79b          	sraiw	a5,a5,0x1
   13e88:	00060863          	beqz	a2,13e98 <_dtoa_r+0x3a4>
   13e8c:	0006b707          	fld	fa4,0(a3)
   13e90:	0017071b          	addiw	a4,a4,1
   13e94:	12e6f6d3          	fmul.d	fa3,fa3,fa4
   13e98:	00868693          	addi	a3,a3,8
   13e9c:	fe0792e3          	bnez	a5,13e80 <_dtoa_r+0x38c>
   13ea0:	1ad7f7d3          	fdiv.d	fa5,fa5,fa3
   13ea4:	03012783          	lw	a5,48(sp)
   13ea8:	00078a63          	beqz	a5,13ebc <_dtoa_r+0x3c8>
   13eac:	0001d7b7          	lui	a5,0x1d
   13eb0:	7487b707          	fld	fa4,1864(a5) # 1d748 <__wctomb+0x18>
   13eb4:	a2e797d3          	flt.d	a5,fa5,fa4
   13eb8:	440790e3          	bnez	a5,14af8 <_dtoa_r+0x1004>
   13ebc:	0001d7b7          	lui	a5,0x1d
   13ec0:	d20706d3          	fcvt.d.w	fa3,a4
   13ec4:	7a07b707          	fld	fa4,1952(a5) # 1d7a0 <__wctomb+0x70>
   13ec8:	fcc006b7          	lui	a3,0xfcc00
   13ecc:	72f6f743          	fmadd.d	fa4,fa3,fa5,fa4
   13ed0:	e2070753          	fmv.x.d	a4,fa4
   13ed4:	42075793          	srai	a5,a4,0x20
   13ed8:	00d787bb          	addw	a5,a5,a3
   13edc:	02071713          	slli	a4,a4,0x20
   13ee0:	02079793          	slli	a5,a5,0x20
   13ee4:	02075713          	srli	a4,a4,0x20
   13ee8:	00f76733          	or	a4,a4,a5
   13eec:	180a86e3          	beqz	s5,14878 <_dtoa_r+0xd84>
   13ef0:	000b8693          	mv	a3,s7
   13ef4:	000a8613          	mv	a2,s5
   13ef8:	01012783          	lw	a5,16(sp)
   13efc:	300782e3          	beqz	a5,14a00 <_dtoa_r+0xf0c>
   13f00:	fff6079b          	addiw	a5,a2,-1
   13f04:	0001b5b7          	lui	a1,0x1b
   13f08:	20058593          	addi	a1,a1,512 # 1b200 <__mprec_tens>
   13f0c:	00379793          	slli	a5,a5,0x3
   13f10:	00b787b3          	add	a5,a5,a1
   13f14:	0001d5b7          	lui	a1,0x1d
   13f18:	0007b687          	fld	fa3,0(a5)
   13f1c:	7405b707          	fld	fa4,1856(a1) # 1d740 <__wctomb+0x10>
   13f20:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   13f24:	00813503          	ld	a0,8(sp)
   13f28:	1ad77753          	fdiv.d	fa4,fa4,fa3
   13f2c:	d20786d3          	fcvt.d.w	fa3,a5
   13f30:	0307879b          	addiw	a5,a5,48
   13f34:	0ff7f793          	andi	a5,a5,255
   13f38:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   13f3c:	f20706d3          	fmv.d.x	fa3,a4
   13f40:	00f50023          	sb	a5,0(a0)
   13f44:	00150493          	addi	s1,a0,1
   13f48:	0ad77753          	fsub.d	fa4,fa4,fa3
   13f4c:	a2e79753          	flt.d	a4,fa5,fa4
   13f50:	08071063          	bnez	a4,13fd0 <_dtoa_r+0x4dc>
   13f54:	0001d737          	lui	a4,0x1d
   13f58:	74873587          	fld	fa1,1864(a4) # 1d748 <__wctomb+0x18>
   13f5c:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   13f60:	a2e69753          	flt.d	a4,fa3,fa4
   13f64:	40071ae3          	bnez	a4,14b78 <_dtoa_r+0x1084>
   13f68:	00100793          	li	a5,1
   13f6c:	1ac7d4e3          	ble	a2,a5,14914 <_dtoa_r+0xe20>
   13f70:	0001d7b7          	lui	a5,0x1d
   13f74:	ffe6061b          	addiw	a2,a2,-2
   13f78:	02061613          	slli	a2,a2,0x20
   13f7c:	7987b607          	fld	fa2,1944(a5) # 1d798 <__wctomb+0x68>
   13f80:	00813783          	ld	a5,8(sp)
   13f84:	02065613          	srli	a2,a2,0x20
   13f88:	00260613          	addi	a2,a2,2
   13f8c:	00c78633          	add	a2,a5,a2
   13f90:	0140006f          	j	13fa4 <_dtoa_r+0x4b0>
   13f94:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   13f98:	a2e69753          	flt.d	a4,fa3,fa4
   13f9c:	3c071ee3          	bnez	a4,14b78 <_dtoa_r+0x1084>
   13fa0:	16960ae3          	beq	a2,s1,14914 <_dtoa_r+0xe20>
   13fa4:	12c7f7d3          	fmul.d	fa5,fa5,fa2
   13fa8:	12c77753          	fmul.d	fa4,fa4,fa2
   13fac:	00148493          	addi	s1,s1,1
   13fb0:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   13fb4:	d20786d3          	fcvt.d.w	fa3,a5
   13fb8:	0307879b          	addiw	a5,a5,48
   13fbc:	0ff7f793          	andi	a5,a5,255
   13fc0:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   13fc4:	fef48fa3          	sb	a5,-1(s1)
   13fc8:	a2e79753          	flt.d	a4,fa5,fa4
   13fcc:	fc0704e3          	beqz	a4,13f94 <_dtoa_r+0x4a0>
   13fd0:	00068b93          	mv	s7,a3
   13fd4:	02013583          	ld	a1,32(sp)
   13fd8:	00040513          	mv	a0,s0
   13fdc:	001b8b9b          	addiw	s7,s7,1
   13fe0:	060030ef          	jal	17040 <_Bfree>
   13fe4:	00013783          	ld	a5,0(sp)
   13fe8:	00048023          	sb	zero,0(s1)
   13fec:	0177a023          	sw	s7,0(a5)
   13ff0:	0c0b0ce3          	beqz	s6,148c8 <_dtoa_r+0xdd4>
   13ff4:	009b3023          	sd	s1,0(s6)
   13ff8:	00813503          	ld	a0,8(sp)
   13ffc:	bc5ff06f          	j	13bc0 <_dtoa_r+0xcc>
   14000:	0001b537          	lui	a0,0x1b
   14004:	53050513          	addi	a0,a0,1328 # 1b530 <zeroes.4137+0xa0>
   14008:	c15ff06f          	j	13c1c <_dtoa_r+0x128>
   1400c:	00cd1793          	slli	a5,s10,0xc
   14010:	02c7d693          	srli	a3,a5,0x2c
   14014:	3ff007b7          	lui	a5,0x3ff00
   14018:	00f6e7b3          	or	a5,a3,a5
   1401c:	020d1493          	slli	s1,s10,0x20
   14020:	02079793          	slli	a5,a5,0x20
   14024:	0204d493          	srli	s1,s1,0x20
   14028:	00f4e4b3          	or	s1,s1,a5
   1402c:	c018081b          	addiw	a6,a6,-1023
   14030:	05812603          	lw	a2,88(sp)
   14034:	00000913          	li	s2,0
   14038:	ca9ff06f          	j	13ce0 <_dtoa_r+0x1ec>
   1403c:	0001b537          	lui	a0,0x1b
   14040:	51850513          	addi	a0,a0,1304 # 1b518 <zeroes.4137+0x88>
   14044:	b7dff06f          	j	13bc0 <_dtoa_r+0xcc>
   14048:	41b0083b          	negw	a6,s11
   1404c:	00000d93          	li	s11,0
   14050:	d1dff06f          	j	13d6c <_dtoa_r+0x278>
   14054:	06042423          	sw	zero,104(s0)
   14058:	00000593          	li	a1,0
   1405c:	00040513          	mv	a0,s0
   14060:	03013c23          	sd	a6,56(sp)
   14064:	731020ef          	jal	16f94 <_Balloc>
   14068:	03813803          	ld	a6,56(sp)
   1406c:	fff00a93          	li	s5,-1
   14070:	00100793          	li	a5,1
   14074:	00a13423          	sd	a0,8(sp)
   14078:	06a43023          	sd	a0,96(s0)
   1407c:	03512a23          	sw	s5,52(sp)
   14080:	00000993          	li	s3,0
   14084:	00000c93          	li	s9,0
   14088:	00f12823          	sw	a5,16(sp)
   1408c:	05c12783          	lw	a5,92(sp)
   14090:	0e07ca63          	bltz	a5,14184 <_dtoa_r+0x690>
   14094:	00e00693          	li	a3,14
   14098:	0f76c663          	blt	a3,s7,14184 <_dtoa_r+0x690>
   1409c:	0001b7b7          	lui	a5,0x1b
   140a0:	003b9693          	slli	a3,s7,0x3
   140a4:	20078793          	addi	a5,a5,512 # 1b200 <__mprec_tens>
   140a8:	00f687b3          	add	a5,a3,a5
   140ac:	0007b687          	fld	fa3,0(a5)
   140b0:	5e0cc663          	bltz	s9,1469c <_dtoa_r+0xba8>
   140b4:	f20d0653          	fmv.d.x	fa2,s10
   140b8:	00813703          	ld	a4,8(sp)
   140bc:	22d69553          	fneg.d	fa0,fa3
   140c0:	1ad67753          	fdiv.d	fa4,fa2,fa3
   140c4:	00170493          	addi	s1,a4,1
   140c8:	c20717d3          	fcvt.w.d	a5,fa4,rtz
   140cc:	d20787d3          	fcvt.d.w	fa5,a5
   140d0:	0307869b          	addiw	a3,a5,48
   140d4:	00d70023          	sb	a3,0(a4)
   140d8:	00100713          	li	a4,1
   140dc:	62f577c3          	fmadd.d	fa5,fa0,fa5,fa2
   140e0:	2aea88e3          	beq	s5,a4,14b90 <_dtoa_r+0x109c>
   140e4:	0001d7b7          	lui	a5,0x1d
   140e8:	7987b587          	fld	fa1,1944(a5) # 1d798 <__wctomb+0x68>
   140ec:	f2000653          	fmv.d.x	fa2,zero
   140f0:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   140f4:	a2c7a7d3          	feq.d	a5,fa5,fa2
   140f8:	ec079ee3          	bnez	a5,13fd4 <_dtoa_r+0x4e0>
   140fc:	ffea869b          	addiw	a3,s5,-2
   14100:	02069693          	slli	a3,a3,0x20
   14104:	00813783          	ld	a5,8(sp)
   14108:	0206d693          	srli	a3,a3,0x20
   1410c:	00268693          	addi	a3,a3,2 # fffffffffcc00002 <_gp+0xfffffffffcbe2102>
   14110:	00d786b3          	add	a3,a5,a3
   14114:	0100006f          	j	14124 <_dtoa_r+0x630>
   14118:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   1411c:	a2c7a7d3          	feq.d	a5,fa5,fa2
   14120:	ea079ae3          	bnez	a5,13fd4 <_dtoa_r+0x4e0>
   14124:	1ad7f753          	fdiv.d	fa4,fa5,fa3
   14128:	00148493          	addi	s1,s1,1
   1412c:	c20717d3          	fcvt.w.d	a5,fa4,rtz
   14130:	d2078753          	fcvt.d.w	fa4,a5
   14134:	0307871b          	addiw	a4,a5,48
   14138:	fee48fa3          	sb	a4,-1(s1)
   1413c:	7ae577c3          	fmadd.d	fa5,fa0,fa4,fa5
   14140:	fcd49ce3          	bne	s1,a3,14118 <_dtoa_r+0x624>
   14144:	02f7f7d3          	fadd.d	fa5,fa5,fa5
   14148:	a2f69753          	flt.d	a4,fa3,fa5
   1414c:	7c070863          	beqz	a4,1491c <_dtoa_r+0xe28>
   14150:	fff6c783          	lbu	a5,-1(a3)
   14154:	00068493          	mv	s1,a3
   14158:	03900693          	li	a3,57
   1415c:	0140006f          	j	14170 <_dtoa_r+0x67c>
   14160:	00813783          	ld	a5,8(sp)
   14164:	02f70ce3          	beq	a4,a5,1499c <_dtoa_r+0xea8>
   14168:	fff74783          	lbu	a5,-1(a4)
   1416c:	00070493          	mv	s1,a4
   14170:	fff48713          	addi	a4,s1,-1
   14174:	fed786e3          	beq	a5,a3,14160 <_dtoa_r+0x66c>
   14178:	0017879b          	addiw	a5,a5,1
   1417c:	00f70023          	sb	a5,0(a4)
   14180:	e55ff06f          	j	13fd4 <_dtoa_r+0x4e0>
   14184:	01012703          	lw	a4,16(sp)
   14188:	1a070c63          	beqz	a4,14340 <_dtoa_r+0x84c>
   1418c:	00100693          	li	a3,1
   14190:	5536d863          	ble	s3,a3,146e0 <_dtoa_r+0xbec>
   14194:	fffa869b          	addiw	a3,s5,-1
   14198:	72dc4c63          	blt	s8,a3,148d0 <_dtoa_r+0xddc>
   1419c:	40dc06bb          	subw	a3,s8,a3
   141a0:	00080493          	mv	s1,a6
   141a4:	000a8793          	mv	a5,s5
   141a8:	120ac2e3          	bltz	s5,14acc <_dtoa_r+0xfd8>
   141ac:	00f8083b          	addw	a6,a6,a5
   141b0:	00100593          	li	a1,1
   141b4:	00040513          	mv	a0,s0
   141b8:	04d13423          	sd	a3,72(sp)
   141bc:	05013023          	sd	a6,64(sp)
   141c0:	03013c23          	sd	a6,56(sp)
   141c4:	00fd8dbb          	addw	s11,s11,a5
   141c8:	204030ef          	jal	173cc <__i2b>
   141cc:	04013803          	ld	a6,64(sp)
   141d0:	04813683          	ld	a3,72(sp)
   141d4:	00050a13          	mv	s4,a0
   141d8:	00048e63          	beqz	s1,141f4 <_dtoa_r+0x700>
   141dc:	01b05c63          	blez	s11,141f4 <_dtoa_r+0x700>
   141e0:	00048793          	mv	a5,s1
   141e4:	489dc463          	blt	s11,s1,1466c <_dtoa_r+0xb78>
   141e8:	40f8083b          	subw	a6,a6,a5
   141ec:	40f484bb          	subw	s1,s1,a5
   141f0:	40fd8dbb          	subw	s11,s11,a5
   141f4:	02013903          	ld	s2,32(sp)
   141f8:	07805e63          	blez	s8,14274 <_dtoa_r+0x780>
   141fc:	01012783          	lw	a5,16(sp)
   14200:	6a078463          	beqz	a5,148a8 <_dtoa_r+0xdb4>
   14204:	04068a63          	beqz	a3,14258 <_dtoa_r+0x764>
   14208:	00068613          	mv	a2,a3
   1420c:	000a0593          	mv	a1,s4
   14210:	00040513          	mv	a0,s0
   14214:	05013023          	sd	a6,64(sp)
   14218:	02d13c23          	sd	a3,56(sp)
   1421c:	3d8030ef          	jal	175f4 <__pow5mult>
   14220:	02013603          	ld	a2,32(sp)
   14224:	00050593          	mv	a1,a0
   14228:	00050a13          	mv	s4,a0
   1422c:	00040513          	mv	a0,s0
   14230:	1d0030ef          	jal	17400 <__multiply>
   14234:	03813683          	ld	a3,56(sp)
   14238:	02013583          	ld	a1,32(sp)
   1423c:	00050913          	mv	s2,a0
   14240:	00040513          	mv	a0,s0
   14244:	40dc0c3b          	subw	s8,s8,a3
   14248:	5f9020ef          	jal	17040 <_Bfree>
   1424c:	04013803          	ld	a6,64(sp)
   14250:	020c0263          	beqz	s8,14274 <_dtoa_r+0x780>
   14254:	03213023          	sd	s2,32(sp)
   14258:	02013583          	ld	a1,32(sp)
   1425c:	000c0613          	mv	a2,s8
   14260:	00040513          	mv	a0,s0
   14264:	03013c23          	sd	a6,56(sp)
   14268:	38c030ef          	jal	175f4 <__pow5mult>
   1426c:	03813803          	ld	a6,56(sp)
   14270:	00050913          	mv	s2,a0
   14274:	00100593          	li	a1,1
   14278:	00040513          	mv	a0,s0
   1427c:	03013023          	sd	a6,32(sp)
   14280:	14c030ef          	jal	173cc <__i2b>
   14284:	02812783          	lw	a5,40(sp)
   14288:	00050c13          	mv	s8,a0
   1428c:	02013803          	ld	a6,32(sp)
   14290:	0c078c63          	beqz	a5,14368 <_dtoa_r+0x874>
   14294:	00078613          	mv	a2,a5
   14298:	00050593          	mv	a1,a0
   1429c:	00040513          	mv	a0,s0
   142a0:	354030ef          	jal	175f4 <__pow5mult>
   142a4:	00100793          	li	a5,1
   142a8:	00050c13          	mv	s8,a0
   142ac:	02013803          	ld	a6,32(sp)
   142b0:	3d37c263          	blt	a5,s3,14674 <_dtoa_r+0xb80>
   142b4:	00cd1793          	slli	a5,s10,0xc
   142b8:	3a079e63          	bnez	a5,14674 <_dtoa_r+0xb80>
   142bc:	420d5693          	srai	a3,s10,0x20
   142c0:	7ff007b7          	lui	a5,0x7ff00
   142c4:	00f6f7b3          	and	a5,a3,a5
   142c8:	02012023          	sw	zero,32(sp)
   142cc:	00078a63          	beqz	a5,142e0 <_dtoa_r+0x7ec>
   142d0:	00100793          	li	a5,1
   142d4:	0018081b          	addiw	a6,a6,1
   142d8:	001d8d9b          	addiw	s11,s11,1
   142dc:	02f12023          	sw	a5,32(sp)
   142e0:	02812783          	lw	a5,40(sp)
   142e4:	00100513          	li	a0,1
   142e8:	08078863          	beqz	a5,14378 <_dtoa_r+0x884>
   142ec:	014c2783          	lw	a5,20(s8)
   142f0:	03013423          	sd	a6,40(sp)
   142f4:	fff7879b          	addiw	a5,a5,-1
   142f8:	00478793          	addi	a5,a5,4 # 7ff00004 <_gp+0x7fee2104>
   142fc:	00279793          	slli	a5,a5,0x2
   14300:	00fc07b3          	add	a5,s8,a5
   14304:	0087a503          	lw	a0,8(a5)
   14308:	799020ef          	jal	172a0 <__hi0bits>
   1430c:	02000793          	li	a5,32
   14310:	40a7853b          	subw	a0,a5,a0
   14314:	02813803          	ld	a6,40(sp)
   14318:	0600006f          	j	14378 <_dtoa_r+0x884>
   1431c:	d20b8753          	fcvt.d.w	fa4,s7
   14320:	a2e7a7d3          	feq.d	a5,fa5,fa4
   14324:	0017b793          	seqz	a5,a5
   14328:	40fb8bbb          	subw	s7,s7,a5
   1432c:	9f9ff06f          	j	13d24 <_dtoa_r+0x230>
   14330:	4178083b          	subw	a6,a6,s7
   14334:	41700c3b          	negw	s8,s7
   14338:	02012423          	sw	zero,40(sp)
   1433c:	a41ff06f          	j	13d7c <_dtoa_r+0x288>
   14340:	000c0693          	mv	a3,s8
   14344:	00080493          	mv	s1,a6
   14348:	00000a13          	li	s4,0
   1434c:	e8dff06f          	j	141d8 <_dtoa_r+0x6e4>
   14350:	000d049b          	sext.w	s1,s10
   14354:	40d787bb          	subw	a5,a5,a3
   14358:	00f494bb          	sllw	s1,s1,a5
   1435c:	959ff06f          	j	13cb4 <_dtoa_r+0x1c0>
   14360:	02012823          	sw	zero,48(sp)
   14364:	9f9ff06f          	j	13d5c <_dtoa_r+0x268>
   14368:	00100793          	li	a5,1
   1436c:	0737d4e3          	ble	s3,a5,14bd4 <_dtoa_r+0x10e0>
   14370:	02012023          	sw	zero,32(sp)
   14374:	00078513          	mv	a0,a5
   14378:	01b507bb          	addw	a5,a0,s11
   1437c:	01f7f793          	andi	a5,a5,31
   14380:	1a078663          	beqz	a5,1452c <_dtoa_r+0xa38>
   14384:	02000693          	li	a3,32
   14388:	40f686bb          	subw	a3,a3,a5
   1438c:	00400613          	li	a2,4
   14390:	04d658e3          	ble	a3,a2,14be0 <_dtoa_r+0x10ec>
   14394:	01c00693          	li	a3,28
   14398:	40f687bb          	subw	a5,a3,a5
   1439c:	00f8083b          	addw	a6,a6,a5
   143a0:	00f484bb          	addw	s1,s1,a5
   143a4:	00fd8dbb          	addw	s11,s11,a5
   143a8:	01005c63          	blez	a6,143c0 <_dtoa_r+0x8cc>
   143ac:	00090593          	mv	a1,s2
   143b0:	00080613          	mv	a2,a6
   143b4:	00040513          	mv	a0,s0
   143b8:	374030ef          	jal	1772c <__lshift>
   143bc:	00050913          	mv	s2,a0
   143c0:	01b05c63          	blez	s11,143d8 <_dtoa_r+0x8e4>
   143c4:	000c0593          	mv	a1,s8
   143c8:	000d8613          	mv	a2,s11
   143cc:	00040513          	mv	a0,s0
   143d0:	35c030ef          	jal	1772c <__lshift>
   143d4:	00050c13          	mv	s8,a0
   143d8:	03012783          	lw	a5,48(sp)
   143dc:	22079663          	bnez	a5,14608 <_dtoa_r+0xb14>
   143e0:	3f505e63          	blez	s5,147dc <_dtoa_r+0xce8>
   143e4:	01012783          	lw	a5,16(sp)
   143e8:	14078c63          	beqz	a5,14540 <_dtoa_r+0xa4c>
   143ec:	00905c63          	blez	s1,14404 <_dtoa_r+0x910>
   143f0:	000a0593          	mv	a1,s4
   143f4:	00048613          	mv	a2,s1
   143f8:	00040513          	mv	a0,s0
   143fc:	330030ef          	jal	1772c <__lshift>
   14400:	00050a13          	mv	s4,a0
   14404:	02012783          	lw	a5,32(sp)
   14408:	000a0d93          	mv	s11,s4
   1440c:	5a079463          	bnez	a5,149b4 <_dtoa_r+0xec0>
   14410:	fffa849b          	addiw	s1,s5,-1
   14414:	00813783          	ld	a5,8(sp)
   14418:	02049493          	slli	s1,s1,0x20
   1441c:	0204d493          	srli	s1,s1,0x20
   14420:	00148493          	addi	s1,s1,1
   14424:	009784b3          	add	s1,a5,s1
   14428:	00078c93          	mv	s9,a5
   1442c:	001d7793          	andi	a5,s10,1
   14430:	00f13823          	sd	a5,16(sp)
   14434:	000c0593          	mv	a1,s8
   14438:	00090513          	mv	a0,s2
   1443c:	cccff0ef          	jal	13908 <quorem>
   14440:	00050d13          	mv	s10,a0
   14444:	02a12823          	sw	a0,48(sp)
   14448:	000a0593          	mv	a1,s4
   1444c:	00090513          	mv	a0,s2
   14450:	43c030ef          	jal	1788c <__mcmp>
   14454:	00050a93          	mv	s5,a0
   14458:	000d8613          	mv	a2,s11
   1445c:	000c0593          	mv	a1,s8
   14460:	00040513          	mv	a0,s0
   14464:	488030ef          	jal	178ec <__mdiff>
   14468:	01052683          	lw	a3,16(a0)
   1446c:	00050793          	mv	a5,a0
   14470:	030d0d1b          	addiw	s10,s10,48
   14474:	00100713          	li	a4,1
   14478:	00069e63          	bnez	a3,14494 <_dtoa_r+0x9a0>
   1447c:	00050593          	mv	a1,a0
   14480:	02a13023          	sd	a0,32(sp)
   14484:	00090513          	mv	a0,s2
   14488:	404030ef          	jal	1788c <__mcmp>
   1448c:	02013783          	ld	a5,32(sp)
   14490:	00050713          	mv	a4,a0
   14494:	00078593          	mv	a1,a5
   14498:	00040513          	mv	a0,s0
   1449c:	02e13023          	sd	a4,32(sp)
   144a0:	3a1020ef          	jal	17040 <_Bfree>
   144a4:	02013703          	ld	a4,32(sp)
   144a8:	013767b3          	or	a5,a4,s3
   144ac:	00079663          	bnez	a5,144b8 <_dtoa_r+0x9c4>
   144b0:	01012783          	lw	a5,16(sp)
   144b4:	24078063          	beqz	a5,146f4 <_dtoa_r+0xc00>
   144b8:	260ac463          	bltz	s5,14720 <_dtoa_r+0xc2c>
   144bc:	013aeab3          	or	s5,s5,s3
   144c0:	000a9663          	bnez	s5,144cc <_dtoa_r+0x9d8>
   144c4:	01012783          	lw	a5,16(sp)
   144c8:	24078c63          	beqz	a5,14720 <_dtoa_r+0xc2c>
   144cc:	5ee04263          	bgtz	a4,14ab0 <_dtoa_r+0xfbc>
   144d0:	001c8c93          	addi	s9,s9,1
   144d4:	ffac8fa3          	sb	s10,-1(s9)
   144d8:	5f948463          	beq	s1,s9,14ac0 <_dtoa_r+0xfcc>
   144dc:	00090593          	mv	a1,s2
   144e0:	00000693          	li	a3,0
   144e4:	00a00613          	li	a2,10
   144e8:	00040513          	mv	a0,s0
   144ec:	379020ef          	jal	17064 <__multadd>
   144f0:	00050913          	mv	s2,a0
   144f4:	00000693          	li	a3,0
   144f8:	00a00613          	li	a2,10
   144fc:	000a0593          	mv	a1,s4
   14500:	00040513          	mv	a0,s0
   14504:	27ba0463          	beq	s4,s11,1476c <_dtoa_r+0xc78>
   14508:	35d020ef          	jal	17064 <__multadd>
   1450c:	000d8593          	mv	a1,s11
   14510:	00050a13          	mv	s4,a0
   14514:	00000693          	li	a3,0
   14518:	00a00613          	li	a2,10
   1451c:	00040513          	mv	a0,s0
   14520:	345020ef          	jal	17064 <__multadd>
   14524:	00050d93          	mv	s11,a0
   14528:	f0dff06f          	j	14434 <_dtoa_r+0x940>
   1452c:	01c00793          	li	a5,28
   14530:	00f8083b          	addw	a6,a6,a5
   14534:	00f484bb          	addw	s1,s1,a5
   14538:	00fd8dbb          	addw	s11,s11,a5
   1453c:	e6dff06f          	j	143a8 <_dtoa_r+0x8b4>
   14540:	00813483          	ld	s1,8(sp)
   14544:	00100993          	li	s3,1
   14548:	0100006f          	j	14558 <_dtoa_r+0xa64>
   1454c:	319020ef          	jal	17064 <__multadd>
   14550:	00050913          	mv	s2,a0
   14554:	0019899b          	addiw	s3,s3,1
   14558:	000c0593          	mv	a1,s8
   1455c:	00090513          	mv	a0,s2
   14560:	ba8ff0ef          	jal	13908 <quorem>
   14564:	03050d1b          	addiw	s10,a0,48
   14568:	00148493          	addi	s1,s1,1
   1456c:	ffa48fa3          	sb	s10,-1(s1)
   14570:	00000693          	li	a3,0
   14574:	00a00613          	li	a2,10
   14578:	00090593          	mv	a1,s2
   1457c:	00040513          	mv	a0,s0
   14580:	fd59c6e3          	blt	s3,s5,1454c <_dtoa_r+0xa58>
   14584:	00000993          	li	s3,0
   14588:	00090593          	mv	a1,s2
   1458c:	00100613          	li	a2,1
   14590:	00040513          	mv	a0,s0
   14594:	198030ef          	jal	1772c <__lshift>
   14598:	000c0593          	mv	a1,s8
   1459c:	02a13023          	sd	a0,32(sp)
   145a0:	2ec030ef          	jal	1788c <__mcmp>
   145a4:	34a05463          	blez	a0,148ec <_dtoa_r+0xdf8>
   145a8:	fff4c703          	lbu	a4,-1(s1)
   145ac:	03900693          	li	a3,57
   145b0:	0140006f          	j	145c4 <_dtoa_r+0xad0>
   145b4:	00813703          	ld	a4,8(sp)
   145b8:	26e78a63          	beq	a5,a4,1482c <_dtoa_r+0xd38>
   145bc:	fff7c703          	lbu	a4,-1(a5)
   145c0:	00078493          	mv	s1,a5
   145c4:	fff48793          	addi	a5,s1,-1
   145c8:	fed706e3          	beq	a4,a3,145b4 <_dtoa_r+0xac0>
   145cc:	0017071b          	addiw	a4,a4,1
   145d0:	00e78023          	sb	a4,0(a5)
   145d4:	000c0593          	mv	a1,s8
   145d8:	00040513          	mv	a0,s0
   145dc:	265020ef          	jal	17040 <_Bfree>
   145e0:	9e0a0ae3          	beqz	s4,13fd4 <_dtoa_r+0x4e0>
   145e4:	00098a63          	beqz	s3,145f8 <_dtoa_r+0xb04>
   145e8:	01498863          	beq	s3,s4,145f8 <_dtoa_r+0xb04>
   145ec:	00098593          	mv	a1,s3
   145f0:	00040513          	mv	a0,s0
   145f4:	24d020ef          	jal	17040 <_Bfree>
   145f8:	000a0593          	mv	a1,s4
   145fc:	00040513          	mv	a0,s0
   14600:	241020ef          	jal	17040 <_Bfree>
   14604:	9d1ff06f          	j	13fd4 <_dtoa_r+0x4e0>
   14608:	000c0593          	mv	a1,s8
   1460c:	00090513          	mv	a0,s2
   14610:	27c030ef          	jal	1788c <__mcmp>
   14614:	dc0556e3          	bgez	a0,143e0 <_dtoa_r+0x8ec>
   14618:	00090593          	mv	a1,s2
   1461c:	00000693          	li	a3,0
   14620:	00a00613          	li	a2,10
   14624:	00040513          	mv	a0,s0
   14628:	23d020ef          	jal	17064 <__multadd>
   1462c:	01012783          	lw	a5,16(sp)
   14630:	00050913          	mv	s2,a0
   14634:	fffb8b9b          	addiw	s7,s7,-1
   14638:	56079063          	bnez	a5,14b98 <_dtoa_r+0x10a4>
   1463c:	03412783          	lw	a5,52(sp)
   14640:	00078a93          	mv	s5,a5
   14644:	eef04ee3          	bgtz	a5,14540 <_dtoa_r+0xa4c>
   14648:	00200793          	li	a5,2
   1464c:	5937c063          	blt	a5,s3,14bcc <_dtoa_r+0x10d8>
   14650:	000c0593          	mv	a1,s8
   14654:	ab4ff0ef          	jal	13908 <quorem>
   14658:	00813783          	ld	a5,8(sp)
   1465c:	03050d1b          	addiw	s10,a0,48
   14660:	00178493          	addi	s1,a5,1
   14664:	ffa48fa3          	sb	s10,-1(s1)
   14668:	f1dff06f          	j	14584 <_dtoa_r+0xa90>
   1466c:	000d8793          	mv	a5,s11
   14670:	b79ff06f          	j	141e8 <_dtoa_r+0x6f4>
   14674:	02012023          	sw	zero,32(sp)
   14678:	c75ff06f          	j	142ec <_dtoa_r+0x7f8>
   1467c:	00100793          	li	a5,1
   14680:	00f12823          	sw	a5,16(sp)
   14684:	0f905c63          	blez	s9,1477c <_dtoa_r+0xc88>
   14688:	000c8513          	mv	a0,s9
   1468c:	000c8493          	mv	s1,s9
   14690:	03912a23          	sw	s9,52(sp)
   14694:	000c8a93          	mv	s5,s9
   14698:	f3cff06f          	j	13dd4 <_dtoa_r+0x2e0>
   1469c:	a1504ce3          	bgtz	s5,140b4 <_dtoa_r+0x5c0>
   146a0:	1e0a9e63          	bnez	s5,1489c <_dtoa_r+0xda8>
   146a4:	0001d7b7          	lui	a5,0x1d
   146a8:	7a87b787          	fld	fa5,1960(a5) # 1d7a8 <__wctomb+0x78>
   146ac:	00000c13          	li	s8,0
   146b0:	00000a13          	li	s4,0
   146b4:	12f6f6d3          	fmul.d	fa3,fa3,fa5
   146b8:	f20d07d3          	fmv.d.x	fa5,s10
   146bc:	a2d78753          	fle.d	a4,fa5,fa3
   146c0:	14070a63          	beqz	a4,14814 <_dtoa_r+0xd20>
   146c4:	00813483          	ld	s1,8(sp)
   146c8:	fffccb93          	not	s7,s9
   146cc:	000c0593          	mv	a1,s8
   146d0:	00040513          	mv	a0,s0
   146d4:	16d020ef          	jal	17040 <_Bfree>
   146d8:	8e0a0ee3          	beqz	s4,13fd4 <_dtoa_r+0x4e0>
   146dc:	f1dff06f          	j	145f8 <_dtoa_r+0xb04>
   146e0:	3e090c63          	beqz	s2,14ad8 <_dtoa_r+0xfe4>
   146e4:	4337879b          	addiw	a5,a5,1075
   146e8:	000c0693          	mv	a3,s8
   146ec:	00080493          	mv	s1,a6
   146f0:	abdff06f          	j	141ac <_dtoa_r+0x6b8>
   146f4:	03900793          	li	a5,57
   146f8:	04fd0a63          	beq	s10,a5,1474c <_dtoa_r+0xc58>
   146fc:	01505663          	blez	s5,14708 <_dtoa_r+0xc14>
   14700:	03012783          	lw	a5,48(sp)
   14704:	03178d1b          	addiw	s10,a5,49
   14708:	000a0993          	mv	s3,s4
   1470c:	001c8493          	addi	s1,s9,1
   14710:	01ac8023          	sb	s10,0(s9)
   14714:	000d8a13          	mv	s4,s11
   14718:	03213023          	sd	s2,32(sp)
   1471c:	eb9ff06f          	j	145d4 <_dtoa_r+0xae0>
   14720:	fee054e3          	blez	a4,14708 <_dtoa_r+0xc14>
   14724:	00090593          	mv	a1,s2
   14728:	00100613          	li	a2,1
   1472c:	00040513          	mv	a0,s0
   14730:	7fd020ef          	jal	1772c <__lshift>
   14734:	000c0593          	mv	a1,s8
   14738:	00050913          	mv	s2,a0
   1473c:	150030ef          	jal	1788c <__mcmp>
   14740:	44a05063          	blez	a0,14b80 <_dtoa_r+0x108c>
   14744:	03900793          	li	a5,57
   14748:	fafd1ce3          	bne	s10,a5,14700 <_dtoa_r+0xc0c>
   1474c:	03900793          	li	a5,57
   14750:	000a0993          	mv	s3,s4
   14754:	001c8493          	addi	s1,s9,1
   14758:	00fc8023          	sb	a5,0(s9)
   1475c:	000d8a13          	mv	s4,s11
   14760:	03213023          	sd	s2,32(sp)
   14764:	03900713          	li	a4,57
   14768:	e45ff06f          	j	145ac <_dtoa_r+0xab8>
   1476c:	0f9020ef          	jal	17064 <__multadd>
   14770:	00050a13          	mv	s4,a0
   14774:	00050d93          	mv	s11,a0
   14778:	cbdff06f          	j	14434 <_dtoa_r+0x940>
   1477c:	00100493          	li	s1,1
   14780:	02912a23          	sw	s1,52(sp)
   14784:	00048a93          	mv	s5,s1
   14788:	00048c93          	mv	s9,s1
   1478c:	06042423          	sw	zero,104(s0)
   14790:	00000593          	li	a1,0
   14794:	e74ff06f          	j	13e08 <_dtoa_r+0x314>
   14798:	00012823          	sw	zero,16(sp)
   1479c:	00200793          	li	a5,2
   147a0:	eef982e3          	beq	s3,a5,14684 <_dtoa_r+0xb90>
   147a4:	06042423          	sw	zero,104(s0)
   147a8:	00000593          	li	a1,0
   147ac:	00040513          	mv	a0,s0
   147b0:	03013c23          	sd	a6,56(sp)
   147b4:	7e0020ef          	jal	16f94 <_Balloc>
   147b8:	fff00a93          	li	s5,-1
   147bc:	00100793          	li	a5,1
   147c0:	00a13423          	sd	a0,8(sp)
   147c4:	06a43023          	sd	a0,96(s0)
   147c8:	03512a23          	sw	s5,52(sp)
   147cc:	00000c93          	li	s9,0
   147d0:	00f12823          	sw	a5,16(sp)
   147d4:	03813803          	ld	a6,56(sp)
   147d8:	8b5ff06f          	j	1408c <_dtoa_r+0x598>
   147dc:	00200793          	li	a5,2
   147e0:	c137d2e3          	ble	s3,a5,143e4 <_dtoa_r+0x8f0>
   147e4:	300a9663          	bnez	s5,14af0 <_dtoa_r+0xffc>
   147e8:	000c0593          	mv	a1,s8
   147ec:	00000693          	li	a3,0
   147f0:	00500613          	li	a2,5
   147f4:	00040513          	mv	a0,s0
   147f8:	06d020ef          	jal	17064 <__multadd>
   147fc:	00050593          	mv	a1,a0
   14800:	00050c13          	mv	s8,a0
   14804:	00090513          	mv	a0,s2
   14808:	084030ef          	jal	1788c <__mcmp>
   1480c:	03213023          	sd	s2,32(sp)
   14810:	eaa05ae3          	blez	a0,146c4 <_dtoa_r+0xbd0>
   14814:	00813703          	ld	a4,8(sp)
   14818:	03100793          	li	a5,49
   1481c:	001b8b9b          	addiw	s7,s7,1
   14820:	00170493          	addi	s1,a4,1
   14824:	00f70023          	sb	a5,0(a4)
   14828:	ea5ff06f          	j	146cc <_dtoa_r+0xbd8>
   1482c:	00813703          	ld	a4,8(sp)
   14830:	03100793          	li	a5,49
   14834:	001b8b9b          	addiw	s7,s7,1
   14838:	00f70023          	sb	a5,0(a4)
   1483c:	d99ff06f          	j	145d4 <_dtoa_r+0xae0>
   14840:	00012823          	sw	zero,16(sp)
   14844:	d78ff06f          	j	13dbc <_dtoa_r+0x2c8>
   14848:	0001d7b7          	lui	a5,0x1d
   1484c:	d20706d3          	fcvt.d.w	fa3,a4
   14850:	7a07b707          	fld	fa4,1952(a5) # 1d7a0 <__wctomb+0x70>
   14854:	fcc006b7          	lui	a3,0xfcc00
   14858:	72d7f743          	fmadd.d	fa4,fa5,fa3,fa4
   1485c:	e2070753          	fmv.x.d	a4,fa4
   14860:	42075793          	srai	a5,a4,0x20
   14864:	00d787bb          	addw	a5,a5,a3
   14868:	02071713          	slli	a4,a4,0x20
   1486c:	02079793          	slli	a5,a5,0x20
   14870:	02075713          	srli	a4,a4,0x20
   14874:	00f76733          	or	a4,a4,a5
   14878:	0001d7b7          	lui	a5,0x1d
   1487c:	7a87b707          	fld	fa4,1960(a5) # 1d7a8 <__wctomb+0x78>
   14880:	f20706d3          	fmv.d.x	fa3,a4
   14884:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
   14888:	a2f697d3          	flt.d	a5,fa3,fa5
   1488c:	16079463          	bnez	a5,149f4 <_dtoa_r+0xf00>
   14890:	22d69753          	fneg.d	fa4,fa3
   14894:	a2e797d3          	flt.d	a5,fa5,fa4
   14898:	06078e63          	beqz	a5,14914 <_dtoa_r+0xe20>
   1489c:	00000c13          	li	s8,0
   148a0:	00000a13          	li	s4,0
   148a4:	e21ff06f          	j	146c4 <_dtoa_r+0xbd0>
   148a8:	00090593          	mv	a1,s2
   148ac:	000c0613          	mv	a2,s8
   148b0:	00040513          	mv	a0,s0
   148b4:	03013023          	sd	a6,32(sp)
   148b8:	53d020ef          	jal	175f4 <__pow5mult>
   148bc:	00050913          	mv	s2,a0
   148c0:	02013803          	ld	a6,32(sp)
   148c4:	9b1ff06f          	j	14274 <_dtoa_r+0x780>
   148c8:	00813503          	ld	a0,8(sp)
   148cc:	af4ff06f          	j	13bc0 <_dtoa_r+0xcc>
   148d0:	02812783          	lw	a5,40(sp)
   148d4:	41868c3b          	subw	s8,a3,s8
   148d8:	018787bb          	addw	a5,a5,s8
   148dc:	02f12423          	sw	a5,40(sp)
   148e0:	00068c13          	mv	s8,a3
   148e4:	00000693          	li	a3,0
   148e8:	8b9ff06f          	j	141a0 <_dtoa_r+0x6ac>
   148ec:	00051663          	bnez	a0,148f8 <_dtoa_r+0xe04>
   148f0:	001d7d13          	andi	s10,s10,1
   148f4:	ca0d1ae3          	bnez	s10,145a8 <_dtoa_r+0xab4>
   148f8:	03000693          	li	a3,48
   148fc:	0080006f          	j	14904 <_dtoa_r+0xe10>
   14900:	00070493          	mv	s1,a4
   14904:	fff4c783          	lbu	a5,-1(s1)
   14908:	fff48713          	addi	a4,s1,-1
   1490c:	fed78ae3          	beq	a5,a3,14900 <_dtoa_r+0xe0c>
   14910:	cc5ff06f          	j	145d4 <_dtoa_r+0xae0>
   14914:	03813d03          	ld	s10,56(sp)
   14918:	f74ff06f          	j	1408c <_dtoa_r+0x598>
   1491c:	a2f6a753          	feq.d	a4,fa3,fa5
   14920:	00068493          	mv	s1,a3
   14924:	ea070863          	beqz	a4,13fd4 <_dtoa_r+0x4e0>
   14928:	0017f793          	andi	a5,a5,1
   1492c:	ea078463          	beqz	a5,13fd4 <_dtoa_r+0x4e0>
   14930:	fff6c783          	lbu	a5,-1(a3) # fffffffffcbfffff <_gp+0xfffffffffcbe20ff>
   14934:	825ff06f          	j	14158 <_dtoa_r+0x664>
   14938:	417007bb          	negw	a5,s7
   1493c:	03813787          	fld	fa5,56(sp)
   14940:	00200713          	li	a4,2
   14944:	d6078063          	beqz	a5,13ea4 <_dtoa_r+0x3b0>
   14948:	00f7f693          	andi	a3,a5,15
   1494c:	0001b637          	lui	a2,0x1b
   14950:	00369693          	slli	a3,a3,0x3
   14954:	20060613          	addi	a2,a2,512 # 1b200 <__mprec_tens>
   14958:	00c686b3          	add	a3,a3,a2
   1495c:	0006b787          	fld	fa5,0(a3)
   14960:	03813707          	fld	fa4,56(sp)
   14964:	4047d79b          	sraiw	a5,a5,0x4
   14968:	12f777d3          	fmul.d	fa5,fa4,fa5
   1496c:	d2078c63          	beqz	a5,13ea4 <_dtoa_r+0x3b0>
   14970:	0001b6b7          	lui	a3,0x1b
   14974:	2f068693          	addi	a3,a3,752 # 1b2f0 <__mprec_bigtens>
   14978:	0017f613          	andi	a2,a5,1
   1497c:	4017d79b          	sraiw	a5,a5,0x1
   14980:	00060863          	beqz	a2,14990 <_dtoa_r+0xe9c>
   14984:	0006b707          	fld	fa4,0(a3)
   14988:	0017071b          	addiw	a4,a4,1
   1498c:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   14990:	00868693          	addi	a3,a3,8
   14994:	fe0792e3          	bnez	a5,14978 <_dtoa_r+0xe84>
   14998:	d0cff06f          	j	13ea4 <_dtoa_r+0x3b0>
   1499c:	00813683          	ld	a3,8(sp)
   149a0:	03000793          	li	a5,48
   149a4:	001b8b9b          	addiw	s7,s7,1
   149a8:	00f68023          	sb	a5,0(a3)
   149ac:	fff4c783          	lbu	a5,-1(s1)
   149b0:	fc8ff06f          	j	14178 <_dtoa_r+0x684>
   149b4:	008a2583          	lw	a1,8(s4)
   149b8:	00040513          	mv	a0,s0
   149bc:	5d8020ef          	jal	16f94 <_Balloc>
   149c0:	014a2603          	lw	a2,20(s4)
   149c4:	00050493          	mv	s1,a0
   149c8:	010a0593          	addi	a1,s4,16
   149cc:	00260613          	addi	a2,a2,2
   149d0:	00261613          	slli	a2,a2,0x2
   149d4:	01050513          	addi	a0,a0,16
   149d8:	3b8020ef          	jal	16d90 <memcpy>
   149dc:	00100613          	li	a2,1
   149e0:	00048593          	mv	a1,s1
   149e4:	00040513          	mv	a0,s0
   149e8:	545020ef          	jal	1772c <__lshift>
   149ec:	00050d93          	mv	s11,a0
   149f0:	a21ff06f          	j	14410 <_dtoa_r+0x91c>
   149f4:	00000c13          	li	s8,0
   149f8:	00000a13          	li	s4,0
   149fc:	e19ff06f          	j	14814 <_dtoa_r+0xd20>
   14a00:	fff6079b          	addiw	a5,a2,-1
   14a04:	0001b537          	lui	a0,0x1b
   14a08:	c20795d3          	fcvt.w.d	a1,fa5,rtz
   14a0c:	00379793          	slli	a5,a5,0x3
   14a10:	20050513          	addi	a0,a0,512 # 1b200 <__mprec_tens>
   14a14:	00a787b3          	add	a5,a5,a0
   14a18:	0007b707          	fld	fa4,0(a5)
   14a1c:	00813783          	ld	a5,8(sp)
   14a20:	d20586d3          	fcvt.d.w	fa3,a1
   14a24:	f2070653          	fmv.d.x	fa2,a4
   14a28:	0305859b          	addiw	a1,a1,48
   14a2c:	00b78023          	sb	a1,0(a5)
   14a30:	00178493          	addi	s1,a5,1
   14a34:	00100793          	li	a5,1
   14a38:	12c77653          	fmul.d	fa2,fa4,fa2
   14a3c:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   14a40:	04f60863          	beq	a2,a5,14a90 <_dtoa_r+0xf9c>
   14a44:	ffe6061b          	addiw	a2,a2,-2
   14a48:	0001d7b7          	lui	a5,0x1d
   14a4c:	02061593          	slli	a1,a2,0x20
   14a50:	7987b687          	fld	fa3,1944(a5) # 1d798 <__wctomb+0x68>
   14a54:	00813783          	ld	a5,8(sp)
   14a58:	0205d593          	srli	a1,a1,0x20
   14a5c:	00258513          	addi	a0,a1,2
   14a60:	00a78533          	add	a0,a5,a0
   14a64:	00048613          	mv	a2,s1
   14a68:	12d7f7d3          	fmul.d	fa5,fa5,fa3
   14a6c:	00160613          	addi	a2,a2,1
   14a70:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   14a74:	d2078753          	fcvt.d.w	fa4,a5
   14a78:	0307879b          	addiw	a5,a5,48
   14a7c:	fef60fa3          	sb	a5,-1(a2)
   14a80:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
   14a84:	fea612e3          	bne	a2,a0,14a68 <_dtoa_r+0xf74>
   14a88:	00158593          	addi	a1,a1,1
   14a8c:	00b484b3          	add	s1,s1,a1
   14a90:	0001d7b7          	lui	a5,0x1d
   14a94:	7407b707          	fld	fa4,1856(a5) # 1d740 <__wctomb+0x10>
   14a98:	02e676d3          	fadd.d	fa3,fa2,fa4
   14a9c:	a2f697d3          	flt.d	a5,fa3,fa5
   14aa0:	0a078663          	beqz	a5,14b4c <_dtoa_r+0x1058>
   14aa4:	fff4c783          	lbu	a5,-1(s1)
   14aa8:	00068b93          	mv	s7,a3
   14aac:	eacff06f          	j	14158 <_dtoa_r+0x664>
   14ab0:	03900793          	li	a5,57
   14ab4:	c8fd0ce3          	beq	s10,a5,1474c <_dtoa_r+0xc58>
   14ab8:	001d0d1b          	addiw	s10,s10,1
   14abc:	c4dff06f          	j	14708 <_dtoa_r+0xc14>
   14ac0:	000a0993          	mv	s3,s4
   14ac4:	000d8a13          	mv	s4,s11
   14ac8:	ac1ff06f          	j	14588 <_dtoa_r+0xa94>
   14acc:	415804bb          	subw	s1,a6,s5
   14ad0:	00000793          	li	a5,0
   14ad4:	ed8ff06f          	j	141ac <_dtoa_r+0x6b8>
   14ad8:	05812603          	lw	a2,88(sp)
   14adc:	03600793          	li	a5,54
   14ae0:	000c0693          	mv	a3,s8
   14ae4:	40c787bb          	subw	a5,a5,a2
   14ae8:	00080493          	mv	s1,a6
   14aec:	ec0ff06f          	j	141ac <_dtoa_r+0x6b8>
   14af0:	03213023          	sd	s2,32(sp)
   14af4:	bd1ff06f          	j	146c4 <_dtoa_r+0xbd0>
   14af8:	d40a88e3          	beqz	s5,14848 <_dtoa_r+0xd54>
   14afc:	03412603          	lw	a2,52(sp)
   14b00:	e0c05ae3          	blez	a2,14914 <_dtoa_r+0xe20>
   14b04:	0001d7b7          	lui	a5,0x1d
   14b08:	7987b707          	fld	fa4,1944(a5) # 1d798 <__wctomb+0x68>
   14b0c:	0017071b          	addiw	a4,a4,1
   14b10:	0001d7b7          	lui	a5,0x1d
   14b14:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   14b18:	d20706d3          	fcvt.d.w	fa3,a4
   14b1c:	7a07b707          	fld	fa4,1952(a5) # 1d7a0 <__wctomb+0x70>
   14b20:	fcc005b7          	lui	a1,0xfcc00
   14b24:	fffb869b          	addiw	a3,s7,-1
   14b28:	72d7f743          	fmadd.d	fa4,fa5,fa3,fa4
   14b2c:	e2070753          	fmv.x.d	a4,fa4
   14b30:	42075793          	srai	a5,a4,0x20
   14b34:	00b787bb          	addw	a5,a5,a1
   14b38:	02071713          	slli	a4,a4,0x20
   14b3c:	02079793          	slli	a5,a5,0x20
   14b40:	02075713          	srli	a4,a4,0x20
   14b44:	00f76733          	or	a4,a4,a5
   14b48:	bb0ff06f          	j	13ef8 <_dtoa_r+0x404>
   14b4c:	0ac77753          	fsub.d	fa4,fa4,fa2
   14b50:	03000613          	li	a2,48
   14b54:	a2e797d3          	flt.d	a5,fa5,fa4
   14b58:	00079663          	bnez	a5,14b64 <_dtoa_r+0x1070>
   14b5c:	db9ff06f          	j	14914 <_dtoa_r+0xe20>
   14b60:	00070493          	mv	s1,a4
   14b64:	fff4c783          	lbu	a5,-1(s1)
   14b68:	fff48713          	addi	a4,s1,-1
   14b6c:	fec78ae3          	beq	a5,a2,14b60 <_dtoa_r+0x106c>
   14b70:	00068b93          	mv	s7,a3
   14b74:	c60ff06f          	j	13fd4 <_dtoa_r+0x4e0>
   14b78:	00068b93          	mv	s7,a3
   14b7c:	ddcff06f          	j	14158 <_dtoa_r+0x664>
   14b80:	b80514e3          	bnez	a0,14708 <_dtoa_r+0xc14>
   14b84:	001d7793          	andi	a5,s10,1
   14b88:	b80780e3          	beqz	a5,14708 <_dtoa_r+0xc14>
   14b8c:	bb9ff06f          	j	14744 <_dtoa_r+0xc50>
   14b90:	00048693          	mv	a3,s1
   14b94:	db0ff06f          	j	14144 <_dtoa_r+0x650>
   14b98:	000a0593          	mv	a1,s4
   14b9c:	00000693          	li	a3,0
   14ba0:	00a00613          	li	a2,10
   14ba4:	00040513          	mv	a0,s0
   14ba8:	4bc020ef          	jal	17064 <__multadd>
   14bac:	03412783          	lw	a5,52(sp)
   14bb0:	00050a13          	mv	s4,a0
   14bb4:	00078a93          	mv	s5,a5
   14bb8:	82f04ae3          	bgtz	a5,143ec <_dtoa_r+0x8f8>
   14bbc:	00200793          	li	a5,2
   14bc0:	0137c663          	blt	a5,s3,14bcc <_dtoa_r+0x10d8>
   14bc4:	03412a83          	lw	s5,52(sp)
   14bc8:	825ff06f          	j	143ec <_dtoa_r+0x8f8>
   14bcc:	03412a83          	lw	s5,52(sp)
   14bd0:	c15ff06f          	j	147e4 <_dtoa_r+0xcf0>
   14bd4:	00cd1713          	slli	a4,s10,0xc
   14bd8:	ee070263          	beqz	a4,142bc <_dtoa_r+0x7c8>
   14bdc:	f94ff06f          	j	14370 <_dtoa_r+0x87c>
   14be0:	fcc68463          	beq	a3,a2,143a8 <_dtoa_r+0x8b4>
   14be4:	03c00693          	li	a3,60
   14be8:	40f687bb          	subw	a5,a3,a5
   14bec:	945ff06f          	j	14530 <_dtoa_r+0xa3c>

0000000000014bf0 <__sflush_r>:
   14bf0:	01059683          	lh	a3,16(a1) # fffffffffcc00010 <_gp+0xfffffffffcbe2110>
   14bf4:	fd010113          	addi	sp,sp,-48
   14bf8:	00913c23          	sd	s1,24(sp)
   14bfc:	03069713          	slli	a4,a3,0x30
   14c00:	03075713          	srli	a4,a4,0x30
   14c04:	01313423          	sd	s3,8(sp)
   14c08:	02113423          	sd	ra,40(sp)
   14c0c:	02813023          	sd	s0,32(sp)
   14c10:	01213823          	sd	s2,16(sp)
   14c14:	00877793          	andi	a5,a4,8
   14c18:	00058493          	mv	s1,a1
   14c1c:	00050993          	mv	s3,a0
   14c20:	0e079863          	bnez	a5,14d10 <__sflush_r+0x120>
   14c24:	000017b7          	lui	a5,0x1
   14c28:	8007879b          	addiw	a5,a5,-2048
   14c2c:	00f6e7b3          	or	a5,a3,a5
   14c30:	0107979b          	slliw	a5,a5,0x10
   14c34:	0085a703          	lw	a4,8(a1)
   14c38:	4107d79b          	sraiw	a5,a5,0x10
   14c3c:	00f59823          	sh	a5,16(a1)
   14c40:	1ae05863          	blez	a4,14df0 <__sflush_r+0x200>
   14c44:	0484b703          	ld	a4,72(s1)
   14c48:	0a070463          	beqz	a4,14cf0 <__sflush_r+0x100>
   14c4c:	03079793          	slli	a5,a5,0x30
   14c50:	0307d793          	srli	a5,a5,0x30
   14c54:	0009a403          	lw	s0,0(s3)
   14c58:	03379693          	slli	a3,a5,0x33
   14c5c:	0009a023          	sw	zero,0(s3)
   14c60:	1806de63          	bgez	a3,14dfc <__sflush_r+0x20c>
   14c64:	0904b603          	ld	a2,144(s1)
   14c68:	0047f793          	andi	a5,a5,4
   14c6c:	00078e63          	beqz	a5,14c88 <__sflush_r+0x98>
   14c70:	0084a683          	lw	a3,8(s1)
   14c74:	0584b783          	ld	a5,88(s1)
   14c78:	40d60633          	sub	a2,a2,a3
   14c7c:	00078663          	beqz	a5,14c88 <__sflush_r+0x98>
   14c80:	0704a783          	lw	a5,112(s1)
   14c84:	40f60633          	sub	a2,a2,a5
   14c88:	0304b583          	ld	a1,48(s1)
   14c8c:	00000693          	li	a3,0
   14c90:	00098513          	mv	a0,s3
   14c94:	000700e7          	jalr	a4
   14c98:	fff00793          	li	a5,-1
   14c9c:	0ef50c63          	beq	a0,a5,14d94 <__sflush_r+0x1a4>
   14ca0:	0104d683          	lhu	a3,16(s1)
   14ca4:	fffff7b7          	lui	a5,0xfffff
   14ca8:	7ff7879b          	addiw	a5,a5,2047
   14cac:	0184b703          	ld	a4,24(s1)
   14cb0:	00f6f7b3          	and	a5,a3,a5
   14cb4:	0107979b          	slliw	a5,a5,0x10
   14cb8:	4107d79b          	sraiw	a5,a5,0x10
   14cbc:	00e4b023          	sd	a4,0(s1)
   14cc0:	00f49823          	sh	a5,16(s1)
   14cc4:	0004a423          	sw	zero,8(s1)
   14cc8:	03379713          	slli	a4,a5,0x33
   14ccc:	10074e63          	bltz	a4,14de8 <__sflush_r+0x1f8>
   14cd0:	0584b583          	ld	a1,88(s1)
   14cd4:	0089a023          	sw	s0,0(s3)
   14cd8:	00058c63          	beqz	a1,14cf0 <__sflush_r+0x100>
   14cdc:	07448793          	addi	a5,s1,116
   14ce0:	00f58663          	beq	a1,a5,14cec <__sflush_r+0xfc>
   14ce4:	00098513          	mv	a0,s3
   14ce8:	678000ef          	jal	15360 <_free_r>
   14cec:	0404bc23          	sd	zero,88(s1)
   14cf0:	00000513          	li	a0,0
   14cf4:	02813083          	ld	ra,40(sp)
   14cf8:	02013403          	ld	s0,32(sp)
   14cfc:	01813483          	ld	s1,24(sp)
   14d00:	01013903          	ld	s2,16(sp)
   14d04:	00813983          	ld	s3,8(sp)
   14d08:	03010113          	addi	sp,sp,48
   14d0c:	00008067          	ret
   14d10:	0185b903          	ld	s2,24(a1)
   14d14:	fc090ee3          	beqz	s2,14cf0 <__sflush_r+0x100>
   14d18:	0005b403          	ld	s0,0(a1)
   14d1c:	00377713          	andi	a4,a4,3
   14d20:	0125b023          	sd	s2,0(a1)
   14d24:	4124043b          	subw	s0,s0,s2
   14d28:	00000793          	li	a5,0
   14d2c:	00071463          	bnez	a4,14d34 <__sflush_r+0x144>
   14d30:	0205a783          	lw	a5,32(a1)
   14d34:	00f4a623          	sw	a5,12(s1)
   14d38:	00804863          	bgtz	s0,14d48 <__sflush_r+0x158>
   14d3c:	fb5ff06f          	j	14cf0 <__sflush_r+0x100>
   14d40:	00a90933          	add	s2,s2,a0
   14d44:	fa8056e3          	blez	s0,14cf0 <__sflush_r+0x100>
   14d48:	0404b783          	ld	a5,64(s1)
   14d4c:	0304b583          	ld	a1,48(s1)
   14d50:	00040693          	mv	a3,s0
   14d54:	00090613          	mv	a2,s2
   14d58:	00098513          	mv	a0,s3
   14d5c:	000780e7          	jalr	a5
   14d60:	40a4043b          	subw	s0,s0,a0
   14d64:	fca04ee3          	bgtz	a0,14d40 <__sflush_r+0x150>
   14d68:	0104d783          	lhu	a5,16(s1)
   14d6c:	02813083          	ld	ra,40(sp)
   14d70:	fff00513          	li	a0,-1
   14d74:	0407e793          	ori	a5,a5,64
   14d78:	00f49823          	sh	a5,16(s1)
   14d7c:	02013403          	ld	s0,32(sp)
   14d80:	01813483          	ld	s1,24(sp)
   14d84:	01013903          	ld	s2,16(sp)
   14d88:	00813983          	ld	s3,8(sp)
   14d8c:	03010113          	addi	sp,sp,48
   14d90:	00008067          	ret
   14d94:	0009a703          	lw	a4,0(s3)
   14d98:	01d00793          	li	a5,29
   14d9c:	fce7e6e3          	bltu	a5,a4,14d68 <__sflush_r+0x178>
   14da0:	204007b7          	lui	a5,0x20400
   14da4:	00178793          	addi	a5,a5,1 # 20400001 <_gp+0x203e2101>
   14da8:	00e7d7b3          	srl	a5,a5,a4
   14dac:	0017f793          	andi	a5,a5,1
   14db0:	fa078ce3          	beqz	a5,14d68 <__sflush_r+0x178>
   14db4:	0104d603          	lhu	a2,16(s1)
   14db8:	fffff7b7          	lui	a5,0xfffff
   14dbc:	7ff7879b          	addiw	a5,a5,2047
   14dc0:	0184b683          	ld	a3,24(s1)
   14dc4:	00f677b3          	and	a5,a2,a5
   14dc8:	0107979b          	slliw	a5,a5,0x10
   14dcc:	4107d79b          	sraiw	a5,a5,0x10
   14dd0:	00d4b023          	sd	a3,0(s1)
   14dd4:	00f49823          	sh	a5,16(s1)
   14dd8:	0004a423          	sw	zero,8(s1)
   14ddc:	03379693          	slli	a3,a5,0x33
   14de0:	ee06d8e3          	bgez	a3,14cd0 <__sflush_r+0xe0>
   14de4:	ee0716e3          	bnez	a4,14cd0 <__sflush_r+0xe0>
   14de8:	08a4b823          	sd	a0,144(s1)
   14dec:	ee5ff06f          	j	14cd0 <__sflush_r+0xe0>
   14df0:	0705a703          	lw	a4,112(a1)
   14df4:	e4e048e3          	bgtz	a4,14c44 <__sflush_r+0x54>
   14df8:	ef9ff06f          	j	14cf0 <__sflush_r+0x100>
   14dfc:	0304b583          	ld	a1,48(s1)
   14e00:	00000613          	li	a2,0
   14e04:	00100693          	li	a3,1
   14e08:	00098513          	mv	a0,s3
   14e0c:	000700e7          	jalr	a4
   14e10:	fff00793          	li	a5,-1
   14e14:	00050613          	mv	a2,a0
   14e18:	00f50863          	beq	a0,a5,14e28 <__sflush_r+0x238>
   14e1c:	0104d783          	lhu	a5,16(s1)
   14e20:	0484b703          	ld	a4,72(s1)
   14e24:	e45ff06f          	j	14c68 <__sflush_r+0x78>
   14e28:	0009a783          	lw	a5,0(s3)
   14e2c:	fe0788e3          	beqz	a5,14e1c <__sflush_r+0x22c>
   14e30:	01d00713          	li	a4,29
   14e34:	00e78663          	beq	a5,a4,14e40 <__sflush_r+0x250>
   14e38:	01600713          	li	a4,22
   14e3c:	00e79863          	bne	a5,a4,14e4c <__sflush_r+0x25c>
   14e40:	0089a023          	sw	s0,0(s3)
   14e44:	00000513          	li	a0,0
   14e48:	eadff06f          	j	14cf4 <__sflush_r+0x104>
   14e4c:	0104d783          	lhu	a5,16(s1)
   14e50:	0407e793          	ori	a5,a5,64
   14e54:	00f49823          	sh	a5,16(s1)
   14e58:	e9dff06f          	j	14cf4 <__sflush_r+0x104>

0000000000014e5c <_fflush_r>:
   14e5c:	fe010113          	addi	sp,sp,-32
   14e60:	00813823          	sd	s0,16(sp)
   14e64:	00113c23          	sd	ra,24(sp)
   14e68:	00050413          	mv	s0,a0
   14e6c:	00050663          	beqz	a0,14e78 <_fflush_r+0x1c>
   14e70:	05052783          	lw	a5,80(a0)
   14e74:	02078a63          	beqz	a5,14ea8 <_fflush_r+0x4c>
   14e78:	01059783          	lh	a5,16(a1)
   14e7c:	00079c63          	bnez	a5,14e94 <_fflush_r+0x38>
   14e80:	01813083          	ld	ra,24(sp)
   14e84:	00000513          	li	a0,0
   14e88:	01013403          	ld	s0,16(sp)
   14e8c:	02010113          	addi	sp,sp,32
   14e90:	00008067          	ret
   14e94:	00040513          	mv	a0,s0
   14e98:	01813083          	ld	ra,24(sp)
   14e9c:	01013403          	ld	s0,16(sp)
   14ea0:	02010113          	addi	sp,sp,32
   14ea4:	d4dff06f          	j	14bf0 <__sflush_r>
   14ea8:	00b13423          	sd	a1,8(sp)
   14eac:	35c000ef          	jal	15208 <__sinit>
   14eb0:	00813583          	ld	a1,8(sp)
   14eb4:	fc5ff06f          	j	14e78 <_fflush_r+0x1c>

0000000000014eb8 <fflush>:
   14eb8:	00050593          	mv	a1,a0
   14ebc:	00050663          	beqz	a0,14ec8 <fflush+0x10>
   14ec0:	8101b503          	ld	a0,-2032(gp) # 1d710 <_impure_ptr>
   14ec4:	f99ff06f          	j	14e5c <_fflush_r>
   14ec8:	8081b503          	ld	a0,-2040(gp) # 1d708 <_global_impure_ptr>
   14ecc:	000155b7          	lui	a1,0x15
   14ed0:	e5c58593          	addi	a1,a1,-420 # 14e5c <_fflush_r>
   14ed4:	04d0006f          	j	15720 <_fwalk_reent>

0000000000014ed8 <__fp_unlock>:
   14ed8:	00000513          	li	a0,0
   14edc:	00008067          	ret

0000000000014ee0 <_cleanup_r>:
   14ee0:	000195b7          	lui	a1,0x19
   14ee4:	7c858593          	addi	a1,a1,1992 # 197c8 <_fclose_r>
   14ee8:	0390006f          	j	15720 <_fwalk_reent>

0000000000014eec <__sinit.part.1>:
   14eec:	fc010113          	addi	sp,sp,-64
   14ef0:	000157b7          	lui	a5,0x15
   14ef4:	02113c23          	sd	ra,56(sp)
   14ef8:	02813823          	sd	s0,48(sp)
   14efc:	02913423          	sd	s1,40(sp)
   14f00:	00853403          	ld	s0,8(a0)
   14f04:	03213023          	sd	s2,32(sp)
   14f08:	01313c23          	sd	s3,24(sp)
   14f0c:	01413823          	sd	s4,16(sp)
   14f10:	01513423          	sd	s5,8(sp)
   14f14:	01613023          	sd	s6,0(sp)
   14f18:	ee078793          	addi	a5,a5,-288 # 14ee0 <_cleanup_r>
   14f1c:	04f53c23          	sd	a5,88(a0)
   14f20:	53850713          	addi	a4,a0,1336
   14f24:	00300793          	li	a5,3
   14f28:	52e53823          	sd	a4,1328(a0)
   14f2c:	52f52423          	sw	a5,1320(a0)
   14f30:	52053023          	sd	zero,1312(a0)
   14f34:	00400793          	li	a5,4
   14f38:	00050913          	mv	s2,a0
   14f3c:	00f41823          	sh	a5,16(s0)
   14f40:	00800613          	li	a2,8
   14f44:	00000593          	li	a1,0
   14f48:	00043023          	sd	zero,0(s0)
   14f4c:	00042423          	sw	zero,8(s0)
   14f50:	00042623          	sw	zero,12(s0)
   14f54:	0a042623          	sw	zero,172(s0)
   14f58:	00041923          	sh	zero,18(s0)
   14f5c:	00043c23          	sd	zero,24(s0)
   14f60:	02042023          	sw	zero,32(s0)
   14f64:	02042423          	sw	zero,40(s0)
   14f68:	0a440513          	addi	a0,s0,164
   14f6c:	745010ef          	jal	16eb0 <memset>
   14f70:	00018b37          	lui	s6,0x18
   14f74:	01093483          	ld	s1,16(s2)
   14f78:	00018ab7          	lui	s5,0x18
   14f7c:	00018a37          	lui	s4,0x18
   14f80:	000189b7          	lui	s3,0x18
   14f84:	07cb0b13          	addi	s6,s6,124 # 1807c <__sread>
   14f88:	0e8a8a93          	addi	s5,s5,232 # 180e8 <__swrite>
   14f8c:	158a0a13          	addi	s4,s4,344 # 18158 <__sseek>
   14f90:	1c498993          	addi	s3,s3,452 # 181c4 <__sclose>
   14f94:	03643c23          	sd	s6,56(s0)
   14f98:	05543023          	sd	s5,64(s0)
   14f9c:	05443423          	sd	s4,72(s0)
   14fa0:	05343823          	sd	s3,80(s0)
   14fa4:	02843823          	sd	s0,48(s0)
   14fa8:	00900793          	li	a5,9
   14fac:	00f49823          	sh	a5,16(s1)
   14fb0:	00100793          	li	a5,1
   14fb4:	00f49923          	sh	a5,18(s1)
   14fb8:	00800613          	li	a2,8
   14fbc:	00000593          	li	a1,0
   14fc0:	0004b023          	sd	zero,0(s1)
   14fc4:	0004a423          	sw	zero,8(s1)
   14fc8:	0004a623          	sw	zero,12(s1)
   14fcc:	0a04a623          	sw	zero,172(s1)
   14fd0:	0004bc23          	sd	zero,24(s1)
   14fd4:	0204a023          	sw	zero,32(s1)
   14fd8:	0204a423          	sw	zero,40(s1)
   14fdc:	0a448513          	addi	a0,s1,164
   14fe0:	6d1010ef          	jal	16eb0 <memset>
   14fe4:	01893403          	ld	s0,24(s2)
   14fe8:	01200793          	li	a5,18
   14fec:	0364bc23          	sd	s6,56(s1)
   14ff0:	0554b023          	sd	s5,64(s1)
   14ff4:	0544b423          	sd	s4,72(s1)
   14ff8:	0534b823          	sd	s3,80(s1)
   14ffc:	0294b823          	sd	s1,48(s1)
   15000:	00f41823          	sh	a5,16(s0)
   15004:	00200793          	li	a5,2
   15008:	00f41923          	sh	a5,18(s0)
   1500c:	00043023          	sd	zero,0(s0)
   15010:	00042423          	sw	zero,8(s0)
   15014:	00042623          	sw	zero,12(s0)
   15018:	0a042623          	sw	zero,172(s0)
   1501c:	00043c23          	sd	zero,24(s0)
   15020:	02042023          	sw	zero,32(s0)
   15024:	02042423          	sw	zero,40(s0)
   15028:	0a440513          	addi	a0,s0,164
   1502c:	00800613          	li	a2,8
   15030:	00000593          	li	a1,0
   15034:	67d010ef          	jal	16eb0 <memset>
   15038:	03813083          	ld	ra,56(sp)
   1503c:	03643c23          	sd	s6,56(s0)
   15040:	05543023          	sd	s5,64(s0)
   15044:	05443423          	sd	s4,72(s0)
   15048:	05343823          	sd	s3,80(s0)
   1504c:	02843823          	sd	s0,48(s0)
   15050:	00100793          	li	a5,1
   15054:	04f92823          	sw	a5,80(s2)
   15058:	03013403          	ld	s0,48(sp)
   1505c:	02813483          	ld	s1,40(sp)
   15060:	02013903          	ld	s2,32(sp)
   15064:	01813983          	ld	s3,24(sp)
   15068:	01013a03          	ld	s4,16(sp)
   1506c:	00813a83          	ld	s5,8(sp)
   15070:	00013b03          	ld	s6,0(sp)
   15074:	04010113          	addi	sp,sp,64
   15078:	00008067          	ret

000000000001507c <__fp_lock>:
   1507c:	00000513          	li	a0,0
   15080:	00008067          	ret

0000000000015084 <__sfmoreglue>:
   15084:	fe010113          	addi	sp,sp,-32
   15088:	fff5879b          	addiw	a5,a1,-1
   1508c:	00913423          	sd	s1,8(sp)
   15090:	0b000493          	li	s1,176
   15094:	029784b3          	mul	s1,a5,s1
   15098:	01213023          	sd	s2,0(sp)
   1509c:	00058913          	mv	s2,a1
   150a0:	00813823          	sd	s0,16(sp)
   150a4:	00113c23          	sd	ra,24(sp)
   150a8:	0c848593          	addi	a1,s1,200
   150ac:	48c010ef          	jal	16538 <_malloc_r>
   150b0:	00050413          	mv	s0,a0
   150b4:	02050063          	beqz	a0,150d4 <__sfmoreglue+0x50>
   150b8:	01850513          	addi	a0,a0,24
   150bc:	00043023          	sd	zero,0(s0)
   150c0:	01242423          	sw	s2,8(s0)
   150c4:	00a43823          	sd	a0,16(s0)
   150c8:	0b048613          	addi	a2,s1,176
   150cc:	00000593          	li	a1,0
   150d0:	5e1010ef          	jal	16eb0 <memset>
   150d4:	01813083          	ld	ra,24(sp)
   150d8:	00040513          	mv	a0,s0
   150dc:	00813483          	ld	s1,8(sp)
   150e0:	01013403          	ld	s0,16(sp)
   150e4:	00013903          	ld	s2,0(sp)
   150e8:	02010113          	addi	sp,sp,32
   150ec:	00008067          	ret

00000000000150f0 <__sfp>:
   150f0:	fd010113          	addi	sp,sp,-48
   150f4:	01213823          	sd	s2,16(sp)
   150f8:	8081b903          	ld	s2,-2040(gp) # 1d708 <_global_impure_ptr>
   150fc:	01313423          	sd	s3,8(sp)
   15100:	02113423          	sd	ra,40(sp)
   15104:	05092783          	lw	a5,80(s2)
   15108:	02813023          	sd	s0,32(sp)
   1510c:	00913c23          	sd	s1,24(sp)
   15110:	00050993          	mv	s3,a0
   15114:	00079663          	bnez	a5,15120 <__sfp+0x30>
   15118:	00090513          	mv	a0,s2
   1511c:	dd1ff0ef          	jal	14eec <__sinit.part.1>
   15120:	52090913          	addi	s2,s2,1312
   15124:	fff00493          	li	s1,-1
   15128:	00892783          	lw	a5,8(s2)
   1512c:	01093403          	ld	s0,16(s2)
   15130:	fff7879b          	addiw	a5,a5,-1
   15134:	0007da63          	bgez	a5,15148 <__sfp+0x58>
   15138:	0840006f          	j	151bc <__sfp+0xcc>
   1513c:	fff7879b          	addiw	a5,a5,-1
   15140:	0b040413          	addi	s0,s0,176
   15144:	06978c63          	beq	a5,s1,151bc <__sfp+0xcc>
   15148:	01041703          	lh	a4,16(s0)
   1514c:	fe0718e3          	bnez	a4,1513c <__sfp+0x4c>
   15150:	fff00793          	li	a5,-1
   15154:	00f41923          	sh	a5,18(s0)
   15158:	00100793          	li	a5,1
   1515c:	00f41823          	sh	a5,16(s0)
   15160:	0a042623          	sw	zero,172(s0)
   15164:	00043023          	sd	zero,0(s0)
   15168:	00042623          	sw	zero,12(s0)
   1516c:	00042423          	sw	zero,8(s0)
   15170:	00043c23          	sd	zero,24(s0)
   15174:	02042023          	sw	zero,32(s0)
   15178:	02042423          	sw	zero,40(s0)
   1517c:	00800613          	li	a2,8
   15180:	00000593          	li	a1,0
   15184:	0a440513          	addi	a0,s0,164
   15188:	529010ef          	jal	16eb0 <memset>
   1518c:	00040513          	mv	a0,s0
   15190:	04043c23          	sd	zero,88(s0)
   15194:	06042023          	sw	zero,96(s0)
   15198:	06043c23          	sd	zero,120(s0)
   1519c:	08042023          	sw	zero,128(s0)
   151a0:	02813083          	ld	ra,40(sp)
   151a4:	02013403          	ld	s0,32(sp)
   151a8:	01813483          	ld	s1,24(sp)
   151ac:	01013903          	ld	s2,16(sp)
   151b0:	00813983          	ld	s3,8(sp)
   151b4:	03010113          	addi	sp,sp,48
   151b8:	00008067          	ret
   151bc:	00093783          	ld	a5,0(s2)
   151c0:	00078663          	beqz	a5,151cc <__sfp+0xdc>
   151c4:	00078913          	mv	s2,a5
   151c8:	f61ff06f          	j	15128 <__sfp+0x38>
   151cc:	00400593          	li	a1,4
   151d0:	00098513          	mv	a0,s3
   151d4:	eb1ff0ef          	jal	15084 <__sfmoreglue>
   151d8:	00a93023          	sd	a0,0(s2)
   151dc:	00050663          	beqz	a0,151e8 <__sfp+0xf8>
   151e0:	00050913          	mv	s2,a0
   151e4:	f45ff06f          	j	15128 <__sfp+0x38>
   151e8:	00c00793          	li	a5,12
   151ec:	00f9a023          	sw	a5,0(s3)
   151f0:	00000513          	li	a0,0
   151f4:	fadff06f          	j	151a0 <__sfp+0xb0>

00000000000151f8 <_cleanup>:
   151f8:	8081b503          	ld	a0,-2040(gp) # 1d708 <_global_impure_ptr>
   151fc:	000195b7          	lui	a1,0x19
   15200:	7c858593          	addi	a1,a1,1992 # 197c8 <_fclose_r>
   15204:	51c0006f          	j	15720 <_fwalk_reent>

0000000000015208 <__sinit>:
   15208:	05052783          	lw	a5,80(a0)
   1520c:	00078463          	beqz	a5,15214 <__sinit+0xc>
   15210:	00008067          	ret
   15214:	cd9ff06f          	j	14eec <__sinit.part.1>

0000000000015218 <__sfp_lock_acquire>:
   15218:	00008067          	ret

000000000001521c <__sfp_lock_release>:
   1521c:	00008067          	ret

0000000000015220 <__sinit_lock_acquire>:
   15220:	00008067          	ret

0000000000015224 <__sinit_lock_release>:
   15224:	00008067          	ret

0000000000015228 <__fp_lock_all>:
   15228:	8101b503          	ld	a0,-2032(gp) # 1d710 <_impure_ptr>
   1522c:	000155b7          	lui	a1,0x15
   15230:	07c58593          	addi	a1,a1,124 # 1507c <__fp_lock>
   15234:	43c0006f          	j	15670 <_fwalk>

0000000000015238 <__fp_unlock_all>:
   15238:	8101b503          	ld	a0,-2032(gp) # 1d710 <_impure_ptr>
   1523c:	000155b7          	lui	a1,0x15
   15240:	ed858593          	addi	a1,a1,-296 # 14ed8 <__fp_unlock>
   15244:	42c0006f          	j	15670 <_fwalk>

0000000000015248 <_malloc_trim_r>:
   15248:	fd010113          	addi	sp,sp,-48
   1524c:	01213823          	sd	s2,16(sp)
   15250:	0001d937          	lui	s2,0x1d
   15254:	02813023          	sd	s0,32(sp)
   15258:	00913c23          	sd	s1,24(sp)
   1525c:	00058413          	mv	s0,a1
   15260:	01313423          	sd	s3,8(sp)
   15264:	02113423          	sd	ra,40(sp)
   15268:	00050993          	mv	s3,a0
   1526c:	ee890913          	addi	s2,s2,-280 # 1cee8 <__malloc_av_>
   15270:	51d010ef          	jal	16f8c <__malloc_lock>
   15274:	01093703          	ld	a4,16(s2)
   15278:	000017b7          	lui	a5,0x1
   1527c:	fdf78593          	addi	a1,a5,-33 # fdf <_ftext-0xf021>
   15280:	00873483          	ld	s1,8(a4)
   15284:	ffc4f493          	andi	s1,s1,-4
   15288:	40848433          	sub	s0,s1,s0
   1528c:	00b40433          	add	s0,s0,a1
   15290:	00c45413          	srli	s0,s0,0xc
   15294:	fff40413          	addi	s0,s0,-1
   15298:	00c41413          	slli	s0,s0,0xc
   1529c:	00f44c63          	blt	s0,a5,152b4 <_malloc_trim_r+0x6c>
   152a0:	00000513          	li	a0,0
   152a4:	28d050ef          	jal	1ad30 <sbrk>
   152a8:	01093783          	ld	a5,16(s2)
   152ac:	009787b3          	add	a5,a5,s1
   152b0:	02f50663          	beq	a0,a5,152dc <_malloc_trim_r+0x94>
   152b4:	00098513          	mv	a0,s3
   152b8:	4d9010ef          	jal	16f90 <__malloc_unlock>
   152bc:	02813083          	ld	ra,40(sp)
   152c0:	00000513          	li	a0,0
   152c4:	02013403          	ld	s0,32(sp)
   152c8:	01813483          	ld	s1,24(sp)
   152cc:	01013903          	ld	s2,16(sp)
   152d0:	00813983          	ld	s3,8(sp)
   152d4:	03010113          	addi	sp,sp,48
   152d8:	00008067          	ret
   152dc:	40800533          	neg	a0,s0
   152e0:	251050ef          	jal	1ad30 <sbrk>
   152e4:	fff00793          	li	a5,-1
   152e8:	04f50463          	beq	a0,a5,15330 <_malloc_trim_r+0xe8>
   152ec:	9381a783          	lw	a5,-1736(gp) # 1d838 <__malloc_current_mallinfo>
   152f0:	01093683          	ld	a3,16(s2)
   152f4:	408484b3          	sub	s1,s1,s0
   152f8:	0014e493          	ori	s1,s1,1
   152fc:	4087843b          	subw	s0,a5,s0
   15300:	00098513          	mv	a0,s3
   15304:	0096b423          	sd	s1,8(a3)
   15308:	9281ac23          	sw	s0,-1736(gp) # 1d838 <__malloc_current_mallinfo>
   1530c:	485010ef          	jal	16f90 <__malloc_unlock>
   15310:	02813083          	ld	ra,40(sp)
   15314:	00100513          	li	a0,1
   15318:	02013403          	ld	s0,32(sp)
   1531c:	01813483          	ld	s1,24(sp)
   15320:	01013903          	ld	s2,16(sp)
   15324:	00813983          	ld	s3,8(sp)
   15328:	03010113          	addi	sp,sp,48
   1532c:	00008067          	ret
   15330:	00000513          	li	a0,0
   15334:	1fd050ef          	jal	1ad30 <sbrk>
   15338:	01093703          	ld	a4,16(s2)
   1533c:	01f00693          	li	a3,31
   15340:	40e507b3          	sub	a5,a0,a4
   15344:	f6f6d8e3          	ble	a5,a3,152b4 <_malloc_trim_r+0x6c>
   15348:	8201b683          	ld	a3,-2016(gp) # 1d720 <__malloc_sbrk_base>
   1534c:	0017e793          	ori	a5,a5,1
   15350:	00f73423          	sd	a5,8(a4)
   15354:	40d50533          	sub	a0,a0,a3
   15358:	92a1ac23          	sw	a0,-1736(gp) # 1d838 <__malloc_current_mallinfo>
   1535c:	f59ff06f          	j	152b4 <_malloc_trim_r+0x6c>

0000000000015360 <_free_r>:
   15360:	10058263          	beqz	a1,15464 <_free_r+0x104>
   15364:	fe010113          	addi	sp,sp,-32
   15368:	00813823          	sd	s0,16(sp)
   1536c:	00913423          	sd	s1,8(sp)
   15370:	00058413          	mv	s0,a1
   15374:	00050493          	mv	s1,a0
   15378:	00113c23          	sd	ra,24(sp)
   1537c:	411010ef          	jal	16f8c <__malloc_lock>
   15380:	ff843503          	ld	a0,-8(s0)
   15384:	ff040693          	addi	a3,s0,-16
   15388:	0001d5b7          	lui	a1,0x1d
   1538c:	ffe57793          	andi	a5,a0,-2
   15390:	00f68633          	add	a2,a3,a5
   15394:	ee858593          	addi	a1,a1,-280 # 1cee8 <__malloc_av_>
   15398:	00863703          	ld	a4,8(a2)
   1539c:	0105b803          	ld	a6,16(a1)
   153a0:	ffc77713          	andi	a4,a4,-4
   153a4:	17060663          	beq	a2,a6,15510 <_free_r+0x1b0>
   153a8:	00e63423          	sd	a4,8(a2)
   153ac:	00157513          	andi	a0,a0,1
   153b0:	02051663          	bnez	a0,153dc <_free_r+0x7c>
   153b4:	ff043503          	ld	a0,-16(s0)
   153b8:	40a686b3          	sub	a3,a3,a0
   153bc:	0106b803          	ld	a6,16(a3)
   153c0:	00a787b3          	add	a5,a5,a0
   153c4:	0001d537          	lui	a0,0x1d
   153c8:	ef850513          	addi	a0,a0,-264 # 1cef8 <__malloc_av_+0x10>
   153cc:	18a80863          	beq	a6,a0,1555c <_free_r+0x1fc>
   153d0:	0186b503          	ld	a0,24(a3)
   153d4:	00a83c23          	sd	a0,24(a6)
   153d8:	01053823          	sd	a6,16(a0)
   153dc:	00e60533          	add	a0,a2,a4
   153e0:	00853503          	ld	a0,8(a0)
   153e4:	00157513          	andi	a0,a0,1
   153e8:	0e050a63          	beqz	a0,154dc <_free_r+0x17c>
   153ec:	0017e713          	ori	a4,a5,1
   153f0:	00e6b423          	sd	a4,8(a3)
   153f4:	00f68733          	add	a4,a3,a5
   153f8:	00f73023          	sd	a5,0(a4)
   153fc:	1ff00713          	li	a4,511
   15400:	06f76463          	bltu	a4,a5,15468 <_free_r+0x108>
   15404:	0037d793          	srli	a5,a5,0x3
   15408:	0007879b          	sext.w	a5,a5
   1540c:	0017871b          	addiw	a4,a5,1
   15410:	0017171b          	slliw	a4,a4,0x1
   15414:	00371713          	slli	a4,a4,0x3
   15418:	0085b603          	ld	a2,8(a1)
   1541c:	00e58733          	add	a4,a1,a4
   15420:	00073803          	ld	a6,0(a4)
   15424:	4027d79b          	sraiw	a5,a5,0x2
   15428:	00100513          	li	a0,1
   1542c:	00f517b3          	sll	a5,a0,a5
   15430:	00c7e7b3          	or	a5,a5,a2
   15434:	ff070613          	addi	a2,a4,-16
   15438:	00c6bc23          	sd	a2,24(a3)
   1543c:	0106b823          	sd	a6,16(a3)
   15440:	00f5b423          	sd	a5,8(a1)
   15444:	00d73023          	sd	a3,0(a4)
   15448:	00d83c23          	sd	a3,24(a6)
   1544c:	00048513          	mv	a0,s1
   15450:	01813083          	ld	ra,24(sp)
   15454:	01013403          	ld	s0,16(sp)
   15458:	00813483          	ld	s1,8(sp)
   1545c:	02010113          	addi	sp,sp,32
   15460:	3310106f          	j	16f90 <__malloc_unlock>
   15464:	00008067          	ret
   15468:	0097d713          	srli	a4,a5,0x9
   1546c:	00400613          	li	a2,4
   15470:	12e66263          	bltu	a2,a4,15594 <_free_r+0x234>
   15474:	0067d713          	srli	a4,a5,0x6
   15478:	0007071b          	sext.w	a4,a4
   1547c:	0397051b          	addiw	a0,a4,57
   15480:	0387061b          	addiw	a2,a4,56
   15484:	0015151b          	slliw	a0,a0,0x1
   15488:	00351513          	slli	a0,a0,0x3
   1548c:	00a58533          	add	a0,a1,a0
   15490:	00053703          	ld	a4,0(a0)
   15494:	ff050513          	addi	a0,a0,-16
   15498:	10e50c63          	beq	a0,a4,155b0 <_free_r+0x250>
   1549c:	00873603          	ld	a2,8(a4)
   154a0:	ffc67613          	andi	a2,a2,-4
   154a4:	00c7f663          	bleu	a2,a5,154b0 <_free_r+0x150>
   154a8:	01073703          	ld	a4,16(a4)
   154ac:	fee518e3          	bne	a0,a4,1549c <_free_r+0x13c>
   154b0:	01873503          	ld	a0,24(a4)
   154b4:	00a6bc23          	sd	a0,24(a3)
   154b8:	00e6b823          	sd	a4,16(a3)
   154bc:	00d53823          	sd	a3,16(a0)
   154c0:	01813083          	ld	ra,24(sp)
   154c4:	00048513          	mv	a0,s1
   154c8:	01013403          	ld	s0,16(sp)
   154cc:	00813483          	ld	s1,8(sp)
   154d0:	00d73c23          	sd	a3,24(a4)
   154d4:	02010113          	addi	sp,sp,32
   154d8:	2b90106f          	j	16f90 <__malloc_unlock>
   154dc:	01063503          	ld	a0,16(a2)
   154e0:	00e787b3          	add	a5,a5,a4
   154e4:	0001d737          	lui	a4,0x1d
   154e8:	ef870713          	addi	a4,a4,-264 # 1cef8 <__malloc_av_+0x10>
   154ec:	0ee50263          	beq	a0,a4,155d0 <_free_r+0x270>
   154f0:	01863803          	ld	a6,24(a2)
   154f4:	0017e613          	ori	a2,a5,1
   154f8:	00f68733          	add	a4,a3,a5
   154fc:	01053c23          	sd	a6,24(a0)
   15500:	00a83823          	sd	a0,16(a6)
   15504:	00c6b423          	sd	a2,8(a3)
   15508:	00f73023          	sd	a5,0(a4)
   1550c:	ef1ff06f          	j	153fc <_free_r+0x9c>
   15510:	00157513          	andi	a0,a0,1
   15514:	00e787b3          	add	a5,a5,a4
   15518:	02051063          	bnez	a0,15538 <_free_r+0x1d8>
   1551c:	ff043503          	ld	a0,-16(s0)
   15520:	40a686b3          	sub	a3,a3,a0
   15524:	0186b703          	ld	a4,24(a3)
   15528:	0106b603          	ld	a2,16(a3)
   1552c:	00a787b3          	add	a5,a5,a0
   15530:	00e63c23          	sd	a4,24(a2)
   15534:	00c73823          	sd	a2,16(a4)
   15538:	0017e613          	ori	a2,a5,1
   1553c:	8281b703          	ld	a4,-2008(gp) # 1d728 <__malloc_trim_threshold>
   15540:	00c6b423          	sd	a2,8(a3)
   15544:	00d5b823          	sd	a3,16(a1)
   15548:	f0e7e2e3          	bltu	a5,a4,1544c <_free_r+0xec>
   1554c:	8f01b583          	ld	a1,-1808(gp) # 1d7f0 <__malloc_top_pad>
   15550:	00048513          	mv	a0,s1
   15554:	cf5ff0ef          	jal	15248 <_malloc_trim_r>
   15558:	ef5ff06f          	j	1544c <_free_r+0xec>
   1555c:	00e605b3          	add	a1,a2,a4
   15560:	0085b583          	ld	a1,8(a1)
   15564:	0015f593          	andi	a1,a1,1
   15568:	0e059a63          	bnez	a1,1565c <_free_r+0x2fc>
   1556c:	01063583          	ld	a1,16(a2)
   15570:	01863603          	ld	a2,24(a2)
   15574:	00f707b3          	add	a5,a4,a5
   15578:	0017e713          	ori	a4,a5,1
   1557c:	00c5bc23          	sd	a2,24(a1)
   15580:	00b63823          	sd	a1,16(a2)
   15584:	00e6b423          	sd	a4,8(a3)
   15588:	00f686b3          	add	a3,a3,a5
   1558c:	00f6b023          	sd	a5,0(a3)
   15590:	ebdff06f          	j	1544c <_free_r+0xec>
   15594:	01400613          	li	a2,20
   15598:	04e66e63          	bltu	a2,a4,155f4 <_free_r+0x294>
   1559c:	0007071b          	sext.w	a4,a4
   155a0:	05c7051b          	addiw	a0,a4,92
   155a4:	05b7061b          	addiw	a2,a4,91
   155a8:	0015151b          	slliw	a0,a0,0x1
   155ac:	eddff06f          	j	15488 <_free_r+0x128>
   155b0:	0085b783          	ld	a5,8(a1)
   155b4:	4026571b          	sraiw	a4,a2,0x2
   155b8:	00100613          	li	a2,1
   155bc:	00e61733          	sll	a4,a2,a4
   155c0:	00f767b3          	or	a5,a4,a5
   155c4:	00f5b423          	sd	a5,8(a1)
   155c8:	00050713          	mv	a4,a0
   155cc:	ee9ff06f          	j	154b4 <_free_r+0x154>
   155d0:	02d5b423          	sd	a3,40(a1)
   155d4:	02d5b023          	sd	a3,32(a1)
   155d8:	0017e713          	ori	a4,a5,1
   155dc:	00a6bc23          	sd	a0,24(a3)
   155e0:	00a6b823          	sd	a0,16(a3)
   155e4:	00e6b423          	sd	a4,8(a3)
   155e8:	00f686b3          	add	a3,a3,a5
   155ec:	00f6b023          	sd	a5,0(a3)
   155f0:	e5dff06f          	j	1544c <_free_r+0xec>
   155f4:	05400613          	li	a2,84
   155f8:	00e66e63          	bltu	a2,a4,15614 <_free_r+0x2b4>
   155fc:	00c7d713          	srli	a4,a5,0xc
   15600:	0007071b          	sext.w	a4,a4
   15604:	06f7051b          	addiw	a0,a4,111
   15608:	06e7061b          	addiw	a2,a4,110
   1560c:	0015151b          	slliw	a0,a0,0x1
   15610:	e79ff06f          	j	15488 <_free_r+0x128>
   15614:	15400613          	li	a2,340
   15618:	00e66e63          	bltu	a2,a4,15634 <_free_r+0x2d4>
   1561c:	00f7d713          	srli	a4,a5,0xf
   15620:	0007071b          	sext.w	a4,a4
   15624:	0787051b          	addiw	a0,a4,120
   15628:	0777061b          	addiw	a2,a4,119
   1562c:	0015151b          	slliw	a0,a0,0x1
   15630:	e59ff06f          	j	15488 <_free_r+0x128>
   15634:	55400813          	li	a6,1364
   15638:	0fe00513          	li	a0,254
   1563c:	07e00613          	li	a2,126
   15640:	e4e864e3          	bltu	a6,a4,15488 <_free_r+0x128>
   15644:	0127d713          	srli	a4,a5,0x12
   15648:	0007071b          	sext.w	a4,a4
   1564c:	07d7051b          	addiw	a0,a4,125
   15650:	07c7061b          	addiw	a2,a4,124
   15654:	0015151b          	slliw	a0,a0,0x1
   15658:	e31ff06f          	j	15488 <_free_r+0x128>
   1565c:	0017e713          	ori	a4,a5,1
   15660:	00e6b423          	sd	a4,8(a3)
   15664:	00f686b3          	add	a3,a3,a5
   15668:	00f6b023          	sd	a5,0(a3)
   1566c:	de1ff06f          	j	1544c <_free_r+0xec>

0000000000015670 <_fwalk>:
   15670:	fc010113          	addi	sp,sp,-64
   15674:	01513423          	sd	s5,8(sp)
   15678:	02113c23          	sd	ra,56(sp)
   1567c:	02813823          	sd	s0,48(sp)
   15680:	02913423          	sd	s1,40(sp)
   15684:	03213023          	sd	s2,32(sp)
   15688:	01313c23          	sd	s3,24(sp)
   1568c:	01413823          	sd	s4,16(sp)
   15690:	01613023          	sd	s6,0(sp)
   15694:	52050a93          	addi	s5,a0,1312
   15698:	080a8063          	beqz	s5,15718 <_fwalk+0xa8>
   1569c:	00058b13          	mv	s6,a1
   156a0:	00000a13          	li	s4,0
   156a4:	00100993          	li	s3,1
   156a8:	fff00913          	li	s2,-1
   156ac:	008aa483          	lw	s1,8(s5)
   156b0:	010ab403          	ld	s0,16(s5)
   156b4:	fff4849b          	addiw	s1,s1,-1
   156b8:	0204c663          	bltz	s1,156e4 <_fwalk+0x74>
   156bc:	01045783          	lhu	a5,16(s0)
   156c0:	fff4849b          	addiw	s1,s1,-1
   156c4:	00f9fc63          	bleu	a5,s3,156dc <_fwalk+0x6c>
   156c8:	01241783          	lh	a5,18(s0)
   156cc:	00040513          	mv	a0,s0
   156d0:	01278663          	beq	a5,s2,156dc <_fwalk+0x6c>
   156d4:	000b00e7          	jalr	s6
   156d8:	00aa6a33          	or	s4,s4,a0
   156dc:	0b040413          	addi	s0,s0,176
   156e0:	fd249ee3          	bne	s1,s2,156bc <_fwalk+0x4c>
   156e4:	000aba83          	ld	s5,0(s5)
   156e8:	fc0a92e3          	bnez	s5,156ac <_fwalk+0x3c>
   156ec:	03813083          	ld	ra,56(sp)
   156f0:	000a0513          	mv	a0,s4
   156f4:	03013403          	ld	s0,48(sp)
   156f8:	02813483          	ld	s1,40(sp)
   156fc:	02013903          	ld	s2,32(sp)
   15700:	01813983          	ld	s3,24(sp)
   15704:	01013a03          	ld	s4,16(sp)
   15708:	00813a83          	ld	s5,8(sp)
   1570c:	00013b03          	ld	s6,0(sp)
   15710:	04010113          	addi	sp,sp,64
   15714:	00008067          	ret
   15718:	00000a13          	li	s4,0
   1571c:	fd1ff06f          	j	156ec <_fwalk+0x7c>

0000000000015720 <_fwalk_reent>:
   15720:	fb010113          	addi	sp,sp,-80
   15724:	01613823          	sd	s6,16(sp)
   15728:	04113423          	sd	ra,72(sp)
   1572c:	04813023          	sd	s0,64(sp)
   15730:	02913c23          	sd	s1,56(sp)
   15734:	03213823          	sd	s2,48(sp)
   15738:	03313423          	sd	s3,40(sp)
   1573c:	03413023          	sd	s4,32(sp)
   15740:	01513c23          	sd	s5,24(sp)
   15744:	01713423          	sd	s7,8(sp)
   15748:	52050b13          	addi	s6,a0,1312
   1574c:	080b0663          	beqz	s6,157d8 <_fwalk_reent+0xb8>
   15750:	00058b93          	mv	s7,a1
   15754:	00050a93          	mv	s5,a0
   15758:	00000a13          	li	s4,0
   1575c:	00100993          	li	s3,1
   15760:	fff00913          	li	s2,-1
   15764:	008b2483          	lw	s1,8(s6)
   15768:	010b3403          	ld	s0,16(s6)
   1576c:	fff4849b          	addiw	s1,s1,-1
   15770:	0204c863          	bltz	s1,157a0 <_fwalk_reent+0x80>
   15774:	01045783          	lhu	a5,16(s0)
   15778:	fff4849b          	addiw	s1,s1,-1
   1577c:	00f9fe63          	bleu	a5,s3,15798 <_fwalk_reent+0x78>
   15780:	01241783          	lh	a5,18(s0)
   15784:	00040593          	mv	a1,s0
   15788:	000a8513          	mv	a0,s5
   1578c:	01278663          	beq	a5,s2,15798 <_fwalk_reent+0x78>
   15790:	000b80e7          	jalr	s7
   15794:	00aa6a33          	or	s4,s4,a0
   15798:	0b040413          	addi	s0,s0,176
   1579c:	fd249ce3          	bne	s1,s2,15774 <_fwalk_reent+0x54>
   157a0:	000b3b03          	ld	s6,0(s6)
   157a4:	fc0b10e3          	bnez	s6,15764 <_fwalk_reent+0x44>
   157a8:	04813083          	ld	ra,72(sp)
   157ac:	000a0513          	mv	a0,s4
   157b0:	04013403          	ld	s0,64(sp)
   157b4:	03813483          	ld	s1,56(sp)
   157b8:	03013903          	ld	s2,48(sp)
   157bc:	02813983          	ld	s3,40(sp)
   157c0:	02013a03          	ld	s4,32(sp)
   157c4:	01813a83          	ld	s5,24(sp)
   157c8:	01013b03          	ld	s6,16(sp)
   157cc:	00813b83          	ld	s7,8(sp)
   157d0:	05010113          	addi	sp,sp,80
   157d4:	00008067          	ret
   157d8:	00000a13          	li	s4,0
   157dc:	fcdff06f          	j	157a8 <_fwalk_reent+0x88>

00000000000157e0 <rshift>:
   157e0:	01452703          	lw	a4,20(a0)
   157e4:	4055d69b          	sraiw	a3,a1,0x5
   157e8:	01850893          	addi	a7,a0,24
   157ec:	08e6d863          	ble	a4,a3,1587c <rshift+0x9c>
   157f0:	00068613          	mv	a2,a3
   157f4:	00271713          	slli	a4,a4,0x2
   157f8:	00261613          	slli	a2,a2,0x2
   157fc:	01f5f593          	andi	a1,a1,31
   15800:	00e88733          	add	a4,a7,a4
   15804:	00c88633          	add	a2,a7,a2
   15808:	08058063          	beqz	a1,15888 <rshift+0xa8>
   1580c:	00062783          	lw	a5,0(a2)
   15810:	02000e13          	li	t3,32
   15814:	00460693          	addi	a3,a2,4
   15818:	40be0e3b          	subw	t3,t3,a1
   1581c:	00b7d7bb          	srlw	a5,a5,a1
   15820:	0ae6f663          	bleu	a4,a3,158cc <rshift+0xec>
   15824:	00088313          	mv	t1,a7
   15828:	0006a803          	lw	a6,0(a3)
   1582c:	00430313          	addi	t1,t1,4 # 10004 <_ftext+0x4>
   15830:	00468693          	addi	a3,a3,4
   15834:	01c8183b          	sllw	a6,a6,t3
   15838:	00f867b3          	or	a5,a6,a5
   1583c:	fef32e23          	sw	a5,-4(t1)
   15840:	ffc6a783          	lw	a5,-4(a3)
   15844:	00b7d7bb          	srlw	a5,a5,a1
   15848:	fee6e0e3          	bltu	a3,a4,15828 <rshift+0x48>
   1584c:	40c70733          	sub	a4,a4,a2
   15850:	ffb70713          	addi	a4,a4,-5
   15854:	ffc77713          	andi	a4,a4,-4
   15858:	00470713          	addi	a4,a4,4
   1585c:	00e88733          	add	a4,a7,a4
   15860:	00f72023          	sw	a5,0(a4)
   15864:	00078463          	beqz	a5,1586c <rshift+0x8c>
   15868:	00470713          	addi	a4,a4,4
   1586c:	411707b3          	sub	a5,a4,a7
   15870:	4027d793          	srai	a5,a5,0x2
   15874:	0007879b          	sext.w	a5,a5
   15878:	0480006f          	j	158c0 <rshift+0xe0>
   1587c:	00052a23          	sw	zero,20(a0)
   15880:	00052c23          	sw	zero,24(a0)
   15884:	00008067          	ret
   15888:	00088793          	mv	a5,a7
   1588c:	00060693          	mv	a3,a2
   15890:	fee676e3          	bleu	a4,a2,1587c <rshift+0x9c>
   15894:	00468693          	addi	a3,a3,4
   15898:	ffc6a583          	lw	a1,-4(a3)
   1589c:	00478793          	addi	a5,a5,4
   158a0:	feb7ae23          	sw	a1,-4(a5)
   158a4:	fee6e8e3          	bltu	a3,a4,15894 <rshift+0xb4>
   158a8:	fff64793          	not	a5,a2
   158ac:	00e787b3          	add	a5,a5,a4
   158b0:	ffc7f793          	andi	a5,a5,-4
   158b4:	00478793          	addi	a5,a5,4
   158b8:	4027d793          	srai	a5,a5,0x2
   158bc:	0007879b          	sext.w	a5,a5
   158c0:	00f52a23          	sw	a5,20(a0)
   158c4:	fa078ee3          	beqz	a5,15880 <rshift+0xa0>
   158c8:	00008067          	ret
   158cc:	00088713          	mv	a4,a7
   158d0:	f91ff06f          	j	15860 <rshift+0x80>

00000000000158d4 <__gethex>:
   158d4:	f4010113          	addi	sp,sp,-192
   158d8:	00d13c23          	sd	a3,24(sp)
   158dc:	00e13423          	sd	a4,8(sp)
   158e0:	02f12223          	sw	a5,36(sp)
   158e4:	0a113c23          	sd	ra,184(sp)
   158e8:	0a913423          	sd	s1,168(sp)
   158ec:	0b213023          	sd	s2,160(sp)
   158f0:	09313c23          	sd	s3,152(sp)
   158f4:	00058913          	mv	s2,a1
   158f8:	09413823          	sd	s4,144(sp)
   158fc:	07713c23          	sd	s7,120(sp)
   15900:	00060993          	mv	s3,a2
   15904:	0a813823          	sd	s0,176(sp)
   15908:	09513423          	sd	s5,136(sp)
   1590c:	09613023          	sd	s6,128(sp)
   15910:	07813823          	sd	s8,112(sp)
   15914:	07913423          	sd	s9,104(sp)
   15918:	07a13023          	sd	s10,96(sp)
   1591c:	05b13c23          	sd	s11,88(sp)
   15920:	00050a13          	mv	s4,a0
   15924:	241000ef          	jal	16364 <_localeconv_r>
   15928:	00053483          	ld	s1,0(a0)
   1592c:	00048513          	mv	a0,s1
   15930:	1c9020ef          	jal	182f8 <strlen>
   15934:	00093783          	ld	a5,0(s2)
   15938:	00a486b3          	add	a3,s1,a0
   1593c:	fff6c683          	lbu	a3,-1(a3)
   15940:	0027c703          	lbu	a4,2(a5)
   15944:	00050b93          	mv	s7,a0
   15948:	00d13823          	sd	a3,16(sp)
   1594c:	03000693          	li	a3,48
   15950:	5cd71063          	bne	a4,a3,15f10 <__gethex+0x63c>
   15954:	00378793          	addi	a5,a5,3
   15958:	00000b13          	li	s6,0
   1595c:	00070613          	mv	a2,a4
   15960:	00078d93          	mv	s11,a5
   15964:	00178793          	addi	a5,a5,1
   15968:	fff7c703          	lbu	a4,-1(a5)
   1596c:	001b0b1b          	addiw	s6,s6,1
   15970:	fec708e3          	beq	a4,a2,15960 <__gethex+0x8c>
   15974:	0001b8b7          	lui	a7,0x1b
   15978:	0f088a93          	addi	s5,a7,240 # 1b0f0 <__hexdig>
   1597c:	00ea8733          	add	a4,s5,a4
   15980:	00074783          	lbu	a5,0(a4)
   15984:	1e078e63          	beqz	a5,15b80 <__gethex+0x2ac>
   15988:	000dc783          	lbu	a5,0(s11)
   1598c:	00000413          	li	s0,0
   15990:	00000c93          	li	s9,0
   15994:	00fa87b3          	add	a5,s5,a5
   15998:	0007c783          	lbu	a5,0(a5)
   1599c:	000d8c13          	mv	s8,s11
   159a0:	00078c63          	beqz	a5,159b8 <__gethex+0xe4>
   159a4:	001c0c13          	addi	s8,s8,1
   159a8:	000c4783          	lbu	a5,0(s8)
   159ac:	00fa87b3          	add	a5,s5,a5
   159b0:	0007c783          	lbu	a5,0(a5)
   159b4:	fe0798e3          	bnez	a5,159a4 <__gethex+0xd0>
   159b8:	000b8613          	mv	a2,s7
   159bc:	00048593          	mv	a1,s1
   159c0:	000c0513          	mv	a0,s8
   159c4:	205020ef          	jal	183c8 <strncmp>
   159c8:	1a050663          	beqz	a0,15b74 <__gethex+0x2a0>
   159cc:	000c4783          	lbu	a5,0(s8)
   159d0:	500c8a63          	beqz	s9,15ee4 <__gethex+0x610>
   159d4:	419c0cbb          	subw	s9,s8,s9
   159d8:	002c9c9b          	slliw	s9,s9,0x2
   159dc:	41900cbb          	negw	s9,s9
   159e0:	05000713          	li	a4,80
   159e4:	20e78e63          	beq	a5,a4,15c00 <__gethex+0x32c>
   159e8:	07000713          	li	a4,112
   159ec:	000c0d13          	mv	s10,s8
   159f0:	20e78863          	beq	a5,a4,15c00 <__gethex+0x32c>
   159f4:	01893023          	sd	s8,0(s2)
   159f8:	1a041c63          	bnez	s0,15bb0 <__gethex+0x2dc>
   159fc:	41bd07b3          	sub	a5,s10,s11
   15a00:	fff7879b          	addiw	a5,a5,-1
   15a04:	00700713          	li	a4,7
   15a08:	00000593          	li	a1,0
   15a0c:	00f75863          	ble	a5,a4,15a1c <__gethex+0x148>
   15a10:	4017d79b          	sraiw	a5,a5,0x1
   15a14:	0015859b          	addiw	a1,a1,1
   15a18:	fef74ce3          	blt	a4,a5,15a10 <__gethex+0x13c>
   15a1c:	000a0513          	mv	a0,s4
   15a20:	574010ef          	jal	16f94 <_Balloc>
   15a24:	01850913          	addi	s2,a0,24
   15a28:	00050b13          	mv	s6,a0
   15a2c:	00090313          	mv	t1,s2
   15a30:	00000793          	li	a5,0
   15a34:	05adf863          	bleu	s10,s11,15a84 <__gethex+0x1b0>
   15a38:	01012403          	lw	s0,16(sp)
   15a3c:	00100f13          	li	t5,1
   15a40:	00000c13          	li	s8,0
   15a44:	417f0f33          	sub	t5,t5,s7
   15a48:	02000e13          	li	t3,32
   15a4c:	fffd4703          	lbu	a4,-1(s10)
   15a50:	fffd0f93          	addi	t6,s10,-1
   15a54:	0a870c63          	beq	a4,s0,15b0c <__gethex+0x238>
   15a58:	11cc0263          	beq	s8,t3,15b5c <__gethex+0x288>
   15a5c:	000c0613          	mv	a2,s8
   15a60:	004c0c1b          	addiw	s8,s8,4
   15a64:	fffd4683          	lbu	a3,-1(s10)
   15a68:	000f8d13          	mv	s10,t6
   15a6c:	00da86b3          	add	a3,s5,a3
   15a70:	0006c703          	lbu	a4,0(a3)
   15a74:	00f77713          	andi	a4,a4,15
   15a78:	00c7173b          	sllw	a4,a4,a2
   15a7c:	00e7e7b3          	or	a5,a5,a4
   15a80:	fdade6e3          	bltu	s11,s10,15a4c <__gethex+0x178>
   15a84:	00430713          	addi	a4,t1,4
   15a88:	41270733          	sub	a4,a4,s2
   15a8c:	40275713          	srai	a4,a4,0x2
   15a90:	0007071b          	sext.w	a4,a4
   15a94:	00f32023          	sw	a5,0(t1)
   15a98:	00eb2a23          	sw	a4,20(s6)
   15a9c:	00078513          	mv	a0,a5
   15aa0:	0057141b          	slliw	s0,a4,0x5
   15aa4:	7fc010ef          	jal	172a0 <__hi0bits>
   15aa8:	0009a483          	lw	s1,0(s3)
   15aac:	40a4053b          	subw	a0,s0,a0
   15ab0:	3ca4c663          	blt	s1,a0,15e7c <__gethex+0x5a8>
   15ab4:	00000c13          	li	s8,0
   15ab8:	42954a63          	blt	a0,s1,15eec <__gethex+0x618>
   15abc:	0089a783          	lw	a5,8(s3)
   15ac0:	2f97ce63          	blt	a5,s9,15dbc <__gethex+0x4e8>
   15ac4:	0049a783          	lw	a5,4(s3)
   15ac8:	36fcd863          	ble	a5,s9,15e38 <__gethex+0x564>
   15acc:	41978cbb          	subw	s9,a5,s9
   15ad0:	1c9ccc63          	blt	s9,s1,15ca8 <__gethex+0x3d4>
   15ad4:	00c9a703          	lw	a4,12(s3)
   15ad8:	00200693          	li	a3,2
   15adc:	4ad70a63          	beq	a4,a3,15f90 <__gethex+0x6bc>
   15ae0:	00300693          	li	a3,3
   15ae4:	46d70c63          	beq	a4,a3,15f5c <__gethex+0x688>
   15ae8:	00100693          	li	a3,1
   15aec:	4ad70863          	beq	a4,a3,15f9c <__gethex+0x6c8>
   15af0:	000a0513          	mv	a0,s4
   15af4:	000b0593          	mv	a1,s6
   15af8:	548010ef          	jal	17040 <_Bfree>
   15afc:	00813783          	ld	a5,8(sp)
   15b00:	05000513          	li	a0,80
   15b04:	0007b023          	sd	zero,0(a5)
   15b08:	0b40006f          	j	15bbc <__gethex+0x2e8>
   15b0c:	01ef8733          	add	a4,t6,t5
   15b10:	f5b764e3          	bltu	a4,s11,15a58 <__gethex+0x184>
   15b14:	00070513          	mv	a0,a4
   15b18:	000b8613          	mv	a2,s7
   15b1c:	00048593          	mv	a1,s1
   15b20:	05c13023          	sd	t3,64(sp)
   15b24:	03e13c23          	sd	t5,56(sp)
   15b28:	02f13823          	sd	a5,48(sp)
   15b2c:	02613423          	sd	t1,40(sp)
   15b30:	00e13823          	sd	a4,16(sp)
   15b34:	05f13423          	sd	t6,72(sp)
   15b38:	091020ef          	jal	183c8 <strncmp>
   15b3c:	01013703          	ld	a4,16(sp)
   15b40:	02813303          	ld	t1,40(sp)
   15b44:	03013783          	ld	a5,48(sp)
   15b48:	03813f03          	ld	t5,56(sp)
   15b4c:	04013e03          	ld	t3,64(sp)
   15b50:	28050463          	beqz	a0,15dd8 <__gethex+0x504>
   15b54:	04813f83          	ld	t6,72(sp)
   15b58:	f1cc12e3          	bne	s8,t3,15a5c <__gethex+0x188>
   15b5c:	00f32023          	sw	a5,0(t1)
   15b60:	00400c13          	li	s8,4
   15b64:	00430313          	addi	t1,t1,4
   15b68:	00000793          	li	a5,0
   15b6c:	00000613          	li	a2,0
   15b70:	ef5ff06f          	j	15a64 <__gethex+0x190>
   15b74:	3a0c8863          	beqz	s9,15f24 <__gethex+0x650>
   15b78:	000c4783          	lbu	a5,0(s8)
   15b7c:	e59ff06f          	j	159d4 <__gethex+0x100>
   15b80:	000b8613          	mv	a2,s7
   15b84:	00048593          	mv	a1,s1
   15b88:	000d8513          	mv	a0,s11
   15b8c:	03d020ef          	jal	183c8 <strncmp>
   15b90:	26050063          	beqz	a0,15df0 <__gethex+0x51c>
   15b94:	000dc783          	lbu	a5,0(s11)
   15b98:	000d8c13          	mv	s8,s11
   15b9c:	05000713          	li	a4,80
   15ba0:	04e78c63          	beq	a5,a4,15bf8 <__gethex+0x324>
   15ba4:	07000713          	li	a4,112
   15ba8:	04e78863          	beq	a5,a4,15bf8 <__gethex+0x324>
   15bac:	01893023          	sd	s8,0(s2)
   15bb0:	001b3513          	seqz	a0,s6
   15bb4:	40a0053b          	negw	a0,a0
   15bb8:	00657513          	andi	a0,a0,6
   15bbc:	0b813083          	ld	ra,184(sp)
   15bc0:	0b013403          	ld	s0,176(sp)
   15bc4:	0a813483          	ld	s1,168(sp)
   15bc8:	0a013903          	ld	s2,160(sp)
   15bcc:	09813983          	ld	s3,152(sp)
   15bd0:	09013a03          	ld	s4,144(sp)
   15bd4:	08813a83          	ld	s5,136(sp)
   15bd8:	08013b03          	ld	s6,128(sp)
   15bdc:	07813b83          	ld	s7,120(sp)
   15be0:	07013c03          	ld	s8,112(sp)
   15be4:	06813c83          	ld	s9,104(sp)
   15be8:	06013d03          	ld	s10,96(sp)
   15bec:	05813d83          	ld	s11,88(sp)
   15bf0:	0c010113          	addi	sp,sp,192
   15bf4:	00008067          	ret
   15bf8:	00000c93          	li	s9,0
   15bfc:	00100413          	li	s0,1
   15c00:	001c4783          	lbu	a5,1(s8)
   15c04:	02b00713          	li	a4,43
   15c08:	26e78663          	beq	a5,a4,15e74 <__gethex+0x5a0>
   15c0c:	02d00713          	li	a4,45
   15c10:	00100593          	li	a1,1
   15c14:	1ce79863          	bne	a5,a4,15de4 <__gethex+0x510>
   15c18:	002c4783          	lbu	a5,2(s8)
   15c1c:	002c0513          	addi	a0,s8,2
   15c20:	00fa87b3          	add	a5,s5,a5
   15c24:	0007c783          	lbu	a5,0(a5)
   15c28:	01800e13          	li	t3,24
   15c2c:	000c0d13          	mv	s10,s8
   15c30:	fff7871b          	addiw	a4,a5,-1
   15c34:	0ff77713          	andi	a4,a4,255
   15c38:	daee6ee3          	bltu	t3,a4,159f4 <__gethex+0x120>
   15c3c:	00154703          	lbu	a4,1(a0)
   15c40:	ff07879b          	addiw	a5,a5,-16
   15c44:	00150513          	addi	a0,a0,1
   15c48:	00ea8733          	add	a4,s5,a4
   15c4c:	00074e83          	lbu	t4,0(a4)
   15c50:	fffe871b          	addiw	a4,t4,-1
   15c54:	0ff77713          	andi	a4,a4,255
   15c58:	02ee6c63          	bltu	t3,a4,15c90 <__gethex+0x3bc>
   15c5c:	00150513          	addi	a0,a0,1
   15c60:	00054603          	lbu	a2,0(a0)
   15c64:	0017971b          	slliw	a4,a5,0x1
   15c68:	0037979b          	slliw	a5,a5,0x3
   15c6c:	00ca8633          	add	a2,s5,a2
   15c70:	00064603          	lbu	a2,0(a2)
   15c74:	00f707bb          	addw	a5,a4,a5
   15c78:	01d787bb          	addw	a5,a5,t4
   15c7c:	fff6071b          	addiw	a4,a2,-1
   15c80:	0ff77713          	andi	a4,a4,255
   15c84:	ff07879b          	addiw	a5,a5,-16
   15c88:	00060e93          	mv	t4,a2
   15c8c:	fcee78e3          	bleu	a4,t3,15c5c <__gethex+0x388>
   15c90:	00058463          	beqz	a1,15c98 <__gethex+0x3c4>
   15c94:	40f007bb          	negw	a5,a5
   15c98:	000c0d13          	mv	s10,s8
   15c9c:	00fc8cbb          	addw	s9,s9,a5
   15ca0:	00050c13          	mv	s8,a0
   15ca4:	d51ff06f          	j	159f4 <__gethex+0x120>
   15ca8:	fffc841b          	addiw	s0,s9,-1
   15cac:	2a0c1463          	bnez	s8,15f54 <__gethex+0x680>
   15cb0:	00040a63          	beqz	s0,15cc4 <__gethex+0x3f0>
   15cb4:	00040593          	mv	a1,s0
   15cb8:	000b0513          	mv	a0,s6
   15cbc:	2b8020ef          	jal	17f74 <__any_on>
   15cc0:	00050c13          	mv	s8,a0
   15cc4:	4054579b          	sraiw	a5,s0,0x5
   15cc8:	00279793          	slli	a5,a5,0x2
   15ccc:	00f907b3          	add	a5,s2,a5
   15cd0:	0007a783          	lw	a5,0(a5)
   15cd4:	00100713          	li	a4,1
   15cd8:	0087173b          	sllw	a4,a4,s0
   15cdc:	00f777b3          	and	a5,a4,a5
   15ce0:	00078463          	beqz	a5,15ce8 <__gethex+0x414>
   15ce4:	002c6c13          	ori	s8,s8,2
   15ce8:	000c8593          	mv	a1,s9
   15cec:	000b0513          	mv	a0,s6
   15cf0:	af1ff0ef          	jal	157e0 <rshift>
   15cf4:	419484bb          	subw	s1,s1,s9
   15cf8:	0049ac83          	lw	s9,4(s3)
   15cfc:	00200413          	li	s0,2
   15d00:	140c0e63          	beqz	s8,15e5c <__gethex+0x588>
   15d04:	00c9a783          	lw	a5,12(s3)
   15d08:	00200713          	li	a4,2
   15d0c:	12e78a63          	beq	a5,a4,15e40 <__gethex+0x56c>
   15d10:	00300713          	li	a4,3
   15d14:	12e78e63          	beq	a5,a4,15e50 <__gethex+0x57c>
   15d18:	00100713          	li	a4,1
   15d1c:	12e79e63          	bne	a5,a4,15e58 <__gethex+0x584>
   15d20:	002c7793          	andi	a5,s8,2
   15d24:	12078a63          	beqz	a5,15e58 <__gethex+0x584>
   15d28:	00092783          	lw	a5,0(s2)
   15d2c:	00fc67b3          	or	a5,s8,a5
   15d30:	00e7f7b3          	and	a5,a5,a4
   15d34:	12078263          	beqz	a5,15e58 <__gethex+0x584>
   15d38:	014b2c03          	lw	s8,20(s6)
   15d3c:	00090793          	mv	a5,s2
   15d40:	fff00693          	li	a3,-1
   15d44:	002c1b93          	slli	s7,s8,0x2
   15d48:	01790633          	add	a2,s2,s7
   15d4c:	0100006f          	j	15d5c <__gethex+0x488>
   15d50:	00478793          	addi	a5,a5,4
   15d54:	fe07ae23          	sw	zero,-4(a5)
   15d58:	26c7f263          	bleu	a2,a5,15fbc <__gethex+0x6e8>
   15d5c:	0007a703          	lw	a4,0(a5)
   15d60:	fed708e3          	beq	a4,a3,15d50 <__gethex+0x47c>
   15d64:	0017071b          	addiw	a4,a4,1
   15d68:	00e7a023          	sw	a4,0(a5)
   15d6c:	00200793          	li	a5,2
   15d70:	26f40c63          	beq	s0,a5,15fe8 <__gethex+0x714>
   15d74:	014b2783          	lw	a5,20(s6)
   15d78:	02fc4463          	blt	s8,a5,15da0 <__gethex+0x4cc>
   15d7c:	01f4f493          	andi	s1,s1,31
   15d80:	02100413          	li	s0,33
   15d84:	0c048c63          	beqz	s1,15e5c <__gethex+0x588>
   15d88:	01790933          	add	s2,s2,s7
   15d8c:	ffc92503          	lw	a0,-4(s2)
   15d90:	510010ef          	jal	172a0 <__hi0bits>
   15d94:	02000793          	li	a5,32
   15d98:	409784bb          	subw	s1,a5,s1
   15d9c:	0c955063          	ble	s1,a0,15e5c <__gethex+0x588>
   15da0:	00100593          	li	a1,1
   15da4:	000b0513          	mv	a0,s6
   15da8:	a39ff0ef          	jal	157e0 <rshift>
   15dac:	0089a783          	lw	a5,8(s3)
   15db0:	001c8c9b          	addiw	s9,s9,1
   15db4:	02100413          	li	s0,33
   15db8:	0b97d263          	ble	s9,a5,15e5c <__gethex+0x588>
   15dbc:	000a0513          	mv	a0,s4
   15dc0:	000b0593          	mv	a1,s6
   15dc4:	27c010ef          	jal	17040 <_Bfree>
   15dc8:	00813783          	ld	a5,8(sp)
   15dcc:	0a300513          	li	a0,163
   15dd0:	0007b023          	sd	zero,0(a5)
   15dd4:	de9ff06f          	j	15bbc <__gethex+0x2e8>
   15dd8:	00070d13          	mv	s10,a4
   15ddc:	c7ade8e3          	bltu	s11,s10,15a4c <__gethex+0x178>
   15de0:	ca5ff06f          	j	15a84 <__gethex+0x1b0>
   15de4:	001c0513          	addi	a0,s8,1
   15de8:	00000593          	li	a1,0
   15dec:	e35ff06f          	j	15c20 <__gethex+0x34c>
   15df0:	017d8c33          	add	s8,s11,s7
   15df4:	000c4703          	lbu	a4,0(s8)
   15df8:	00ea87b3          	add	a5,s5,a4
   15dfc:	0007c783          	lbu	a5,0(a5)
   15e00:	10078e63          	beqz	a5,15f1c <__gethex+0x648>
   15e04:	03000693          	li	a3,48
   15e08:	000c0d93          	mv	s11,s8
   15e0c:	00d71e63          	bne	a4,a3,15e28 <__gethex+0x554>
   15e10:	00070793          	mv	a5,a4
   15e14:	001d8d93          	addi	s11,s11,1
   15e18:	000dc703          	lbu	a4,0(s11)
   15e1c:	fef70ce3          	beq	a4,a5,15e14 <__gethex+0x540>
   15e20:	00ea87b3          	add	a5,s5,a4
   15e24:	0007c783          	lbu	a5,0(a5)
   15e28:	0017b413          	seqz	s0,a5
   15e2c:	000c0c93          	mv	s9,s8
   15e30:	00100b13          	li	s6,1
   15e34:	b69ff06f          	j	1599c <__gethex+0xc8>
   15e38:	00100413          	li	s0,1
   15e3c:	ec5ff06f          	j	15d00 <__gethex+0x42c>
   15e40:	02412703          	lw	a4,36(sp)
   15e44:	00100793          	li	a5,1
   15e48:	40e787bb          	subw	a5,a5,a4
   15e4c:	02f12223          	sw	a5,36(sp)
   15e50:	02412783          	lw	a5,36(sp)
   15e54:	ee0792e3          	bnez	a5,15d38 <__gethex+0x464>
   15e58:	01046413          	ori	s0,s0,16
   15e5c:	00813783          	ld	a5,8(sp)
   15e60:	00040513          	mv	a0,s0
   15e64:	0167b023          	sd	s6,0(a5)
   15e68:	01813783          	ld	a5,24(sp)
   15e6c:	0197a023          	sw	s9,0(a5)
   15e70:	d4dff06f          	j	15bbc <__gethex+0x2e8>
   15e74:	00000593          	li	a1,0
   15e78:	da1ff06f          	j	15c18 <__gethex+0x344>
   15e7c:	4095043b          	subw	s0,a0,s1
   15e80:	00040593          	mv	a1,s0
   15e84:	000b0513          	mv	a0,s6
   15e88:	0ec020ef          	jal	17f74 <__any_on>
   15e8c:	00000c13          	li	s8,0
   15e90:	04050063          	beqz	a0,15ed0 <__gethex+0x5fc>
   15e94:	fff4071b          	addiw	a4,s0,-1
   15e98:	4057579b          	sraiw	a5,a4,0x5
   15e9c:	00279793          	slli	a5,a5,0x2
   15ea0:	00f907b3          	add	a5,s2,a5
   15ea4:	0007a783          	lw	a5,0(a5)
   15ea8:	00100c13          	li	s8,1
   15eac:	00ec16bb          	sllw	a3,s8,a4
   15eb0:	00f6f7b3          	and	a5,a3,a5
   15eb4:	00078e63          	beqz	a5,15ed0 <__gethex+0x5fc>
   15eb8:	0cec5863          	ble	a4,s8,15f88 <__gethex+0x6b4>
   15ebc:	ffe4059b          	addiw	a1,s0,-2
   15ec0:	000b0513          	mv	a0,s6
   15ec4:	0b0020ef          	jal	17f74 <__any_on>
   15ec8:	0c050063          	beqz	a0,15f88 <__gethex+0x6b4>
   15ecc:	00300c13          	li	s8,3
   15ed0:	00040593          	mv	a1,s0
   15ed4:	000b0513          	mv	a0,s6
   15ed8:	909ff0ef          	jal	157e0 <rshift>
   15edc:	008c8cbb          	addw	s9,s9,s0
   15ee0:	bddff06f          	j	15abc <__gethex+0x1e8>
   15ee4:	00000c93          	li	s9,0
   15ee8:	af9ff06f          	j	159e0 <__gethex+0x10c>
   15eec:	40a4843b          	subw	s0,s1,a0
   15ef0:	000b0593          	mv	a1,s6
   15ef4:	00040613          	mv	a2,s0
   15ef8:	000a0513          	mv	a0,s4
   15efc:	031010ef          	jal	1772c <__lshift>
   15f00:	00050b13          	mv	s6,a0
   15f04:	408c8cbb          	subw	s9,s9,s0
   15f08:	01850913          	addi	s2,a0,24
   15f0c:	bb1ff06f          	j	15abc <__gethex+0x1e8>
   15f10:	00278d93          	addi	s11,a5,2
   15f14:	00000b13          	li	s6,0
   15f18:	a5dff06f          	j	15974 <__gethex+0xa0>
   15f1c:	00070793          	mv	a5,a4
   15f20:	c7dff06f          	j	15b9c <__gethex+0x2c8>
   15f24:	017c0cb3          	add	s9,s8,s7
   15f28:	000cc783          	lbu	a5,0(s9)
   15f2c:	000c8c13          	mv	s8,s9
   15f30:	00fa8733          	add	a4,s5,a5
   15f34:	00074703          	lbu	a4,0(a4)
   15f38:	a8070ee3          	beqz	a4,159d4 <__gethex+0x100>
   15f3c:	001c0c13          	addi	s8,s8,1
   15f40:	000c4783          	lbu	a5,0(s8)
   15f44:	00fa8733          	add	a4,s5,a5
   15f48:	00074703          	lbu	a4,0(a4)
   15f4c:	fe0718e3          	bnez	a4,15f3c <__gethex+0x668>
   15f50:	a85ff06f          	j	159d4 <__gethex+0x100>
   15f54:	00100c13          	li	s8,1
   15f58:	d6dff06f          	j	15cc4 <__gethex+0x3f0>
   15f5c:	02412703          	lw	a4,36(sp)
   15f60:	b80708e3          	beqz	a4,15af0 <__gethex+0x21c>
   15f64:	01813703          	ld	a4,24(sp)
   15f68:	06200513          	li	a0,98
   15f6c:	00f72023          	sw	a5,0(a4)
   15f70:	00100793          	li	a5,1
   15f74:	00fb2a23          	sw	a5,20(s6)
   15f78:	00f92023          	sw	a5,0(s2)
   15f7c:	00813783          	ld	a5,8(sp)
   15f80:	0167b023          	sd	s6,0(a5)
   15f84:	c39ff06f          	j	15bbc <__gethex+0x2e8>
   15f88:	00200c13          	li	s8,2
   15f8c:	f45ff06f          	j	15ed0 <__gethex+0x5fc>
   15f90:	02412703          	lw	a4,36(sp)
   15f94:	fc0708e3          	beqz	a4,15f64 <__gethex+0x690>
   15f98:	b59ff06f          	j	15af0 <__gethex+0x21c>
   15f9c:	b5949ae3          	bne	s1,s9,15af0 <__gethex+0x21c>
   15fa0:	fc9752e3          	ble	s1,a4,15f64 <__gethex+0x690>
   15fa4:	fff4859b          	addiw	a1,s1,-1
   15fa8:	000b0513          	mv	a0,s6
   15fac:	7c9010ef          	jal	17f74 <__any_on>
   15fb0:	b40500e3          	beqz	a0,15af0 <__gethex+0x21c>
   15fb4:	0049a783          	lw	a5,4(s3)
   15fb8:	fadff06f          	j	15f64 <__gethex+0x690>
   15fbc:	014b2703          	lw	a4,20(s6)
   15fc0:	00cb2783          	lw	a5,12(s6)
   15fc4:	04f75c63          	ble	a5,a4,1601c <__gethex+0x748>
   15fc8:	00470793          	addi	a5,a4,4
   15fcc:	00279793          	slli	a5,a5,0x2
   15fd0:	0017071b          	addiw	a4,a4,1
   15fd4:	00eb2a23          	sw	a4,20(s6)
   15fd8:	00fb07b3          	add	a5,s6,a5
   15fdc:	00100713          	li	a4,1
   15fe0:	00e7a423          	sw	a4,8(a5)
   15fe4:	d89ff06f          	j	15d6c <__gethex+0x498>
   15fe8:	0009a783          	lw	a5,0(s3)
   15fec:	02200413          	li	s0,34
   15ff0:	fff7879b          	addiw	a5,a5,-1
   15ff4:	e6f494e3          	bne	s1,a5,15e5c <__gethex+0x588>
   15ff8:	4054d79b          	sraiw	a5,s1,0x5
   15ffc:	00279793          	slli	a5,a5,0x2
   16000:	00f90933          	add	s2,s2,a5
   16004:	00092503          	lw	a0,0(s2)
   16008:	02200793          	li	a5,34
   1600c:	0095553b          	srlw	a0,a0,s1
   16010:	00157413          	andi	s0,a0,1
   16014:	4087843b          	subw	s0,a5,s0
   16018:	e45ff06f          	j	15e5c <__gethex+0x588>
   1601c:	008b2583          	lw	a1,8(s6)
   16020:	000a0513          	mv	a0,s4
   16024:	0015859b          	addiw	a1,a1,1
   16028:	76d000ef          	jal	16f94 <_Balloc>
   1602c:	014b2603          	lw	a2,20(s6)
   16030:	00050d13          	mv	s10,a0
   16034:	010b0593          	addi	a1,s6,16
   16038:	00260613          	addi	a2,a2,2
   1603c:	00261613          	slli	a2,a2,0x2
   16040:	01050513          	addi	a0,a0,16
   16044:	54d000ef          	jal	16d90 <memcpy>
   16048:	000b0593          	mv	a1,s6
   1604c:	000a0513          	mv	a0,s4
   16050:	7f1000ef          	jal	17040 <_Bfree>
   16054:	014d2703          	lw	a4,20(s10)
   16058:	018d0913          	addi	s2,s10,24
   1605c:	000d0b13          	mv	s6,s10
   16060:	f69ff06f          	j	15fc8 <__gethex+0x6f4>

0000000000016064 <__hexnan>:
   16064:	fd010113          	addi	sp,sp,-48
   16068:	01213c23          	sd	s2,24(sp)
   1606c:	0005a903          	lw	s2,0(a1)
   16070:	02913023          	sd	s1,32(sp)
   16074:	02813423          	sd	s0,40(sp)
   16078:	4059549b          	sraiw	s1,s2,0x5
   1607c:	00249493          	slli	s1,s1,0x2
   16080:	01313823          	sd	s3,16(sp)
   16084:	01413423          	sd	s4,8(sp)
   16088:	01f97913          	andi	s2,s2,31
   1608c:	009604b3          	add	s1,a2,s1
   16090:	00090463          	beqz	s2,16098 <__hexnan+0x34>
   16094:	00448493          	addi	s1,s1,4
   16098:	00053683          	ld	a3,0(a0)
   1609c:	ffc48313          	addi	t1,s1,-4
   160a0:	0001bfb7          	lui	t6,0x1b
   160a4:	fe04ae23          	sw	zero,-4(s1)
   160a8:	00030f13          	mv	t5,t1
   160ac:	00030593          	mv	a1,t1
   160b0:	00000813          	li	a6,0
   160b4:	00000293          	li	t0,0
   160b8:	00000e93          	li	t4,0
   160bc:	0f0f8f93          	addi	t6,t6,240 # 1b0f0 <__hexdig>
   160c0:	00800413          	li	s0,8
   160c4:	02000393          	li	t2,32
   160c8:	00700993          	li	s3,7
   160cc:	00168693          	addi	a3,a3,1
   160d0:	0006c703          	lbu	a4,0(a3)
   160d4:	08070263          	beqz	a4,16158 <__hexnan+0xf4>
   160d8:	02071793          	slli	a5,a4,0x20
   160dc:	0207d793          	srli	a5,a5,0x20
   160e0:	01f787b3          	add	a5,a5,t6
   160e4:	0007c783          	lbu	a5,0(a5)
   160e8:	0e079263          	bnez	a5,161cc <__hexnan+0x168>
   160ec:	10e3ea63          	bltu	t2,a4,16200 <__hexnan+0x19c>
   160f0:	fdd2dee3          	ble	t4,t0,160cc <__hexnan+0x68>
   160f4:	03e5fe63          	bleu	t5,a1,16130 <__hexnan+0xcc>
   160f8:	0309cc63          	blt	s3,a6,16130 <__hexnan+0xcc>
   160fc:	4104083b          	subw	a6,s0,a6
   16100:	0005a883          	lw	a7,0(a1)
   16104:	0028181b          	slliw	a6,a6,0x2
   16108:	41038a3b          	subw	s4,t2,a6
   1610c:	00058793          	mv	a5,a1
   16110:	0047ae03          	lw	t3,4(a5)
   16114:	00478793          	addi	a5,a5,4
   16118:	014e173b          	sllw	a4,t3,s4
   1611c:	01176733          	or	a4,a4,a7
   16120:	010e58bb          	srlw	a7,t3,a6
   16124:	fee7ae23          	sw	a4,-4(a5)
   16128:	0117a023          	sw	a7,0(a5)
   1612c:	ffe7e2e3          	bltu	a5,t5,16110 <__hexnan+0xac>
   16130:	00800813          	li	a6,8
   16134:	f8b67ce3          	bleu	a1,a2,160cc <__hexnan+0x68>
   16138:	fe05ae23          	sw	zero,-4(a1)
   1613c:	00168693          	addi	a3,a3,1
   16140:	0006c703          	lbu	a4,0(a3)
   16144:	ffc58f13          	addi	t5,a1,-4
   16148:	000e8293          	mv	t0,t4
   1614c:	000f0593          	mv	a1,t5
   16150:	00000813          	li	a6,0
   16154:	f80712e3          	bnez	a4,160d8 <__hexnan+0x74>
   16158:	0a0e8863          	beqz	t4,16208 <__hexnan+0x1a4>
   1615c:	01e5f663          	bleu	t5,a1,16168 <__hexnan+0x104>
   16160:	00700793          	li	a5,7
   16164:	1307d063          	ble	a6,a5,16284 <__hexnan+0x220>
   16168:	0cb67063          	bleu	a1,a2,16228 <__hexnan+0x1c4>
   1616c:	00060793          	mv	a5,a2
   16170:	00458593          	addi	a1,a1,4
   16174:	ffc5a703          	lw	a4,-4(a1)
   16178:	00478793          	addi	a5,a5,4
   1617c:	fee7ae23          	sw	a4,-4(a5)
   16180:	feb378e3          	bleu	a1,t1,16170 <__hexnan+0x10c>
   16184:	00478793          	addi	a5,a5,4
   16188:	fe07ae23          	sw	zero,-4(a5)
   1618c:	fef37ce3          	bleu	a5,t1,16184 <__hexnan+0x120>
   16190:	ffc4a783          	lw	a5,-4(s1)
   16194:	00500513          	li	a0,5
   16198:	06079a63          	bnez	a5,1620c <__hexnan+0x1a8>
   1619c:	0a660863          	beq	a2,t1,1624c <__hexnan+0x1e8>
   161a0:	ffc30313          	addi	t1,t1,-4
   161a4:	00032783          	lw	a5,0(t1)
   161a8:	fe078ae3          	beqz	a5,1619c <__hexnan+0x138>
   161ac:	00500513          	li	a0,5
   161b0:	02813403          	ld	s0,40(sp)
   161b4:	02013483          	ld	s1,32(sp)
   161b8:	01813903          	ld	s2,24(sp)
   161bc:	01013983          	ld	s3,16(sp)
   161c0:	00813a03          	ld	s4,8(sp)
   161c4:	03010113          	addi	sp,sp,48
   161c8:	00008067          	ret
   161cc:	0018081b          	addiw	a6,a6,1
   161d0:	001e8e9b          	addiw	t4,t4,1
   161d4:	01045a63          	ble	a6,s0,161e8 <__hexnan+0x184>
   161d8:	eeb67ae3          	bleu	a1,a2,160cc <__hexnan+0x68>
   161dc:	fe05ae23          	sw	zero,-4(a1)
   161e0:	00100813          	li	a6,1
   161e4:	ffc58593          	addi	a1,a1,-4
   161e8:	0005a703          	lw	a4,0(a1)
   161ec:	00f7f793          	andi	a5,a5,15
   161f0:	0047171b          	slliw	a4,a4,0x4
   161f4:	00f767b3          	or	a5,a4,a5
   161f8:	00f5a023          	sw	a5,0(a1)
   161fc:	ed1ff06f          	j	160cc <__hexnan+0x68>
   16200:	02900793          	li	a5,41
   16204:	06f70863          	beq	a4,a5,16274 <__hexnan+0x210>
   16208:	00400513          	li	a0,4
   1620c:	02813403          	ld	s0,40(sp)
   16210:	02013483          	ld	s1,32(sp)
   16214:	01813903          	ld	s2,24(sp)
   16218:	01013983          	ld	s3,16(sp)
   1621c:	00813a03          	ld	s4,8(sp)
   16220:	03010113          	addi	sp,sp,48
   16224:	00008067          	ret
   16228:	ffc4a783          	lw	a5,-4(s1)
   1622c:	f60904e3          	beqz	s2,16194 <__hexnan+0x130>
   16230:	02000713          	li	a4,32
   16234:	4127093b          	subw	s2,a4,s2
   16238:	fff00713          	li	a4,-1
   1623c:	0127573b          	srlw	a4,a4,s2
   16240:	00f777b3          	and	a5,a4,a5
   16244:	fef4ae23          	sw	a5,-4(s1)
   16248:	f4dff06f          	j	16194 <__hexnan+0x130>
   1624c:	00100793          	li	a5,1
   16250:	00500513          	li	a0,5
   16254:	02813403          	ld	s0,40(sp)
   16258:	02013483          	ld	s1,32(sp)
   1625c:	01813903          	ld	s2,24(sp)
   16260:	01013983          	ld	s3,16(sp)
   16264:	00813a03          	ld	s4,8(sp)
   16268:	00f32023          	sw	a5,0(t1)
   1626c:	03010113          	addi	sp,sp,48
   16270:	00008067          	ret
   16274:	00168693          	addi	a3,a3,1
   16278:	00d53023          	sd	a3,0(a0)
   1627c:	ee0e90e3          	bnez	t4,1615c <__hexnan+0xf8>
   16280:	f89ff06f          	j	16208 <__hexnan+0x1a4>
   16284:	00800793          	li	a5,8
   16288:	4107883b          	subw	a6,a5,a6
   1628c:	0005a683          	lw	a3,0(a1)
   16290:	0028181b          	slliw	a6,a6,0x2
   16294:	02000893          	li	a7,32
   16298:	410888bb          	subw	a7,a7,a6
   1629c:	00058793          	mv	a5,a1
   162a0:	0047a503          	lw	a0,4(a5)
   162a4:	00478793          	addi	a5,a5,4
   162a8:	0115173b          	sllw	a4,a0,a7
   162ac:	00d76733          	or	a4,a4,a3
   162b0:	010556bb          	srlw	a3,a0,a6
   162b4:	fee7ae23          	sw	a4,-4(a5)
   162b8:	00d7a023          	sw	a3,0(a5)
   162bc:	ffe7e2e3          	bltu	a5,t5,162a0 <__hexnan+0x23c>
   162c0:	ea9ff06f          	j	16168 <__hexnan+0x104>

00000000000162c4 <_setlocale_r>:
   162c4:	fe010113          	addi	sp,sp,-32
   162c8:	00913423          	sd	s1,8(sp)
   162cc:	00113c23          	sd	ra,24(sp)
   162d0:	00813823          	sd	s0,16(sp)
   162d4:	0001b4b7          	lui	s1,0x1b
   162d8:	02060063          	beqz	a2,162f8 <_setlocale_r+0x34>
   162dc:	0001b5b7          	lui	a1,0x1b
   162e0:	53858593          	addi	a1,a1,1336 # 1b538 <zeroes.4137+0xa8>
   162e4:	00060513          	mv	a0,a2
   162e8:	00060413          	mv	s0,a2
   162ec:	6e1010ef          	jal	181cc <strcmp>
   162f0:	0001b4b7          	lui	s1,0x1b
   162f4:	00051e63          	bnez	a0,16310 <_setlocale_r+0x4c>
   162f8:	4a048513          	addi	a0,s1,1184 # 1b4a0 <zeroes.4137+0x10>
   162fc:	01813083          	ld	ra,24(sp)
   16300:	01013403          	ld	s0,16(sp)
   16304:	00813483          	ld	s1,8(sp)
   16308:	02010113          	addi	sp,sp,32
   1630c:	00008067          	ret
   16310:	4a048593          	addi	a1,s1,1184
   16314:	00040513          	mv	a0,s0
   16318:	6b5010ef          	jal	181cc <strcmp>
   1631c:	fc050ee3          	beqz	a0,162f8 <_setlocale_r+0x34>
   16320:	0001b5b7          	lui	a1,0x1b
   16324:	4f058593          	addi	a1,a1,1264 # 1b4f0 <zeroes.4137+0x60>
   16328:	00040513          	mv	a0,s0
   1632c:	6a1010ef          	jal	181cc <strcmp>
   16330:	fc0504e3          	beqz	a0,162f8 <_setlocale_r+0x34>
   16334:	00000513          	li	a0,0
   16338:	fc5ff06f          	j	162fc <_setlocale_r+0x38>

000000000001633c <__locale_charset>:
   1633c:	0001d537          	lui	a0,0x1d
   16340:	e4850513          	addi	a0,a0,-440 # 1ce48 <lc_ctype_charset>
   16344:	00008067          	ret

0000000000016348 <__locale_mb_cur_max>:
   16348:	8181a503          	lw	a0,-2024(gp) # 1d718 <__mb_cur_max>
   1634c:	00008067          	ret

0000000000016350 <__locale_msgcharset>:
   16350:	0001d537          	lui	a0,0x1d
   16354:	e6850513          	addi	a0,a0,-408 # 1ce68 <lc_message_charset>
   16358:	00008067          	ret

000000000001635c <__locale_cjk_lang>:
   1635c:	00000513          	li	a0,0
   16360:	00008067          	ret

0000000000016364 <_localeconv_r>:
   16364:	0001d537          	lui	a0,0x1d
   16368:	e8850513          	addi	a0,a0,-376 # 1ce88 <lconv>
   1636c:	00008067          	ret

0000000000016370 <setlocale>:
   16370:	00058613          	mv	a2,a1
   16374:	00050593          	mv	a1,a0
   16378:	8101b503          	ld	a0,-2032(gp) # 1d710 <_impure_ptr>
   1637c:	f49ff06f          	j	162c4 <_setlocale_r>

0000000000016380 <localeconv>:
   16380:	0001d537          	lui	a0,0x1d
   16384:	e8850513          	addi	a0,a0,-376 # 1ce88 <lconv>
   16388:	00008067          	ret

000000000001638c <__smakebuf_r>:
   1638c:	01059783          	lh	a5,16(a1)
   16390:	f5010113          	addi	sp,sp,-176
   16394:	08913c23          	sd	s1,152(sp)
   16398:	03079493          	slli	s1,a5,0x30
   1639c:	0304d493          	srli	s1,s1,0x30
   163a0:	0a113423          	sd	ra,168(sp)
   163a4:	0a813023          	sd	s0,160(sp)
   163a8:	09213823          	sd	s2,144(sp)
   163ac:	09313423          	sd	s3,136(sp)
   163b0:	0024f713          	andi	a4,s1,2
   163b4:	0e071063          	bnez	a4,16494 <__smakebuf_r+0x108>
   163b8:	00050913          	mv	s2,a0
   163bc:	01259503          	lh	a0,18(a1)
   163c0:	00058413          	mv	s0,a1
   163c4:	04054c63          	bltz	a0,1641c <__smakebuf_r+0x90>
   163c8:	00010593          	mv	a1,sp
   163cc:	698040ef          	jal	1aa64 <fstat>
   163d0:	04054063          	bltz	a0,16410 <__smakebuf_r+0x84>
   163d4:	01012703          	lw	a4,16(sp)
   163d8:	0000f7b7          	lui	a5,0xf
   163dc:	ffffe9b7          	lui	s3,0xffffe
   163e0:	00f777b3          	and	a5,a4,a5
   163e4:	013789bb          	addw	s3,a5,s3
   163e8:	00008737          	lui	a4,0x8
   163ec:	0019b993          	seqz	s3,s3
   163f0:	0ce78a63          	beq	a5,a4,164c4 <__smakebuf_r+0x138>
   163f4:	01045703          	lhu	a4,16(s0)
   163f8:	000017b7          	lui	a5,0x1
   163fc:	8007879b          	addiw	a5,a5,-2048
   16400:	00f767b3          	or	a5,a4,a5
   16404:	00f41823          	sh	a5,16(s0)
   16408:	40000493          	li	s1,1024
   1640c:	0340006f          	j	16440 <__smakebuf_r+0xb4>
   16410:	01041783          	lh	a5,16(s0)
   16414:	03079493          	slli	s1,a5,0x30
   16418:	0304d493          	srli	s1,s1,0x30
   1641c:	03849493          	slli	s1,s1,0x38
   16420:	00001737          	lui	a4,0x1
   16424:	43f4d493          	srai	s1,s1,0x3f
   16428:	8007071b          	addiw	a4,a4,-2048
   1642c:	c404f493          	andi	s1,s1,-960
   16430:	00e7e7b3          	or	a5,a5,a4
   16434:	40048493          	addi	s1,s1,1024
   16438:	00f41823          	sh	a5,16(s0)
   1643c:	00000993          	li	s3,0
   16440:	00048593          	mv	a1,s1
   16444:	00090513          	mv	a0,s2
   16448:	0f0000ef          	jal	16538 <_malloc_r>
   1644c:	0c050063          	beqz	a0,1650c <__smakebuf_r+0x180>
   16450:	01045783          	lhu	a5,16(s0)
   16454:	00015737          	lui	a4,0x15
   16458:	ee070713          	addi	a4,a4,-288 # 14ee0 <_cleanup_r>
   1645c:	04e93c23          	sd	a4,88(s2)
   16460:	0807e793          	ori	a5,a5,128
   16464:	00f41823          	sh	a5,16(s0)
   16468:	00a43023          	sd	a0,0(s0)
   1646c:	00a43c23          	sd	a0,24(s0)
   16470:	02942023          	sw	s1,32(s0)
   16474:	06099e63          	bnez	s3,164f0 <__smakebuf_r+0x164>
   16478:	0a813083          	ld	ra,168(sp)
   1647c:	0a013403          	ld	s0,160(sp)
   16480:	09813483          	ld	s1,152(sp)
   16484:	09013903          	ld	s2,144(sp)
   16488:	08813983          	ld	s3,136(sp)
   1648c:	0b010113          	addi	sp,sp,176
   16490:	00008067          	ret
   16494:	0a813083          	ld	ra,168(sp)
   16498:	07758793          	addi	a5,a1,119
   1649c:	00f5b023          	sd	a5,0(a1)
   164a0:	00f5bc23          	sd	a5,24(a1)
   164a4:	00100793          	li	a5,1
   164a8:	0a013403          	ld	s0,160(sp)
   164ac:	09813483          	ld	s1,152(sp)
   164b0:	09013903          	ld	s2,144(sp)
   164b4:	08813983          	ld	s3,136(sp)
   164b8:	02f5a023          	sw	a5,32(a1)
   164bc:	0b010113          	addi	sp,sp,176
   164c0:	00008067          	ret
   164c4:	04843703          	ld	a4,72(s0)
   164c8:	000187b7          	lui	a5,0x18
   164cc:	15878793          	addi	a5,a5,344 # 18158 <__sseek>
   164d0:	f2f712e3          	bne	a4,a5,163f4 <__smakebuf_r+0x68>
   164d4:	01045783          	lhu	a5,16(s0)
   164d8:	40000713          	li	a4,1024
   164dc:	08e42423          	sw	a4,136(s0)
   164e0:	00e7e7b3          	or	a5,a5,a4
   164e4:	00f41823          	sh	a5,16(s0)
   164e8:	40000493          	li	s1,1024
   164ec:	f55ff06f          	j	16440 <__smakebuf_r+0xb4>
   164f0:	01241503          	lh	a0,18(s0)
   164f4:	6fc040ef          	jal	1abf0 <isatty>
   164f8:	f80500e3          	beqz	a0,16478 <__smakebuf_r+0xec>
   164fc:	01045783          	lhu	a5,16(s0)
   16500:	0017e793          	ori	a5,a5,1
   16504:	00f41823          	sh	a5,16(s0)
   16508:	f71ff06f          	j	16478 <__smakebuf_r+0xec>
   1650c:	01041783          	lh	a5,16(s0)
   16510:	2007f713          	andi	a4,a5,512
   16514:	f60712e3          	bnez	a4,16478 <__smakebuf_r+0xec>
   16518:	0027e793          	ori	a5,a5,2
   1651c:	07740713          	addi	a4,s0,119
   16520:	00f41823          	sh	a5,16(s0)
   16524:	00100793          	li	a5,1
   16528:	00e43023          	sd	a4,0(s0)
   1652c:	00e43c23          	sd	a4,24(s0)
   16530:	02f42023          	sw	a5,32(s0)
   16534:	f45ff06f          	j	16478 <__smakebuf_r+0xec>

0000000000016538 <_malloc_r>:
   16538:	fa010113          	addi	sp,sp,-96
   1653c:	04913423          	sd	s1,72(sp)
   16540:	03313c23          	sd	s3,56(sp)
   16544:	04113c23          	sd	ra,88(sp)
   16548:	04813823          	sd	s0,80(sp)
   1654c:	05213023          	sd	s2,64(sp)
   16550:	03413823          	sd	s4,48(sp)
   16554:	03513423          	sd	s5,40(sp)
   16558:	03613023          	sd	s6,32(sp)
   1655c:	01713c23          	sd	s7,24(sp)
   16560:	01813823          	sd	s8,16(sp)
   16564:	01913423          	sd	s9,8(sp)
   16568:	01758493          	addi	s1,a1,23
   1656c:	02e00793          	li	a5,46
   16570:	00050993          	mv	s3,a0
   16574:	1c97fa63          	bleu	s1,a5,16748 <_malloc_r+0x210>
   16578:	800007b7          	lui	a5,0x80000
   1657c:	ff04f493          	andi	s1,s1,-16
   16580:	fff7c793          	not	a5,a5
   16584:	2497ee63          	bltu	a5,s1,167e0 <_malloc_r+0x2a8>
   16588:	24b4ec63          	bltu	s1,a1,167e0 <_malloc_r+0x2a8>
   1658c:	201000ef          	jal	16f8c <__malloc_lock>
   16590:	1f700793          	li	a5,503
   16594:	7097f063          	bleu	s1,a5,16c94 <_malloc_r+0x75c>
   16598:	0094d793          	srli	a5,s1,0x9
   1659c:	08000693          	li	a3,128
   165a0:	04000513          	li	a0,64
   165a4:	03f00593          	li	a1,63
   165a8:	24079463          	bnez	a5,167f0 <_malloc_r+0x2b8>
   165ac:	0001d937          	lui	s2,0x1d
   165b0:	ee890913          	addi	s2,s2,-280 # 1cee8 <__malloc_av_>
   165b4:	00369693          	slli	a3,a3,0x3
   165b8:	00d906b3          	add	a3,s2,a3
   165bc:	0086b403          	ld	s0,8(a3)
   165c0:	ff068693          	addi	a3,a3,-16
   165c4:	24868663          	beq	a3,s0,16810 <_malloc_r+0x2d8>
   165c8:	00843783          	ld	a5,8(s0)
   165cc:	01f00613          	li	a2,31
   165d0:	ffc7f793          	andi	a5,a5,-4
   165d4:	40978733          	sub	a4,a5,s1
   165d8:	02e64063          	blt	a2,a4,165f8 <_malloc_r+0xc0>
   165dc:	22075e63          	bgez	a4,16818 <_malloc_r+0x2e0>
   165e0:	01843403          	ld	s0,24(s0)
   165e4:	22868663          	beq	a3,s0,16810 <_malloc_r+0x2d8>
   165e8:	00843783          	ld	a5,8(s0)
   165ec:	ffc7f793          	andi	a5,a5,-4
   165f0:	40978733          	sub	a4,a5,s1
   165f4:	fee654e3          	ble	a4,a2,165dc <_malloc_r+0xa4>
   165f8:	00058693          	mv	a3,a1
   165fc:	02093403          	ld	s0,32(s2)
   16600:	01090813          	addi	a6,s2,16
   16604:	47040a63          	beq	s0,a6,16a78 <_malloc_r+0x540>
   16608:	00843783          	ld	a5,8(s0)
   1660c:	01f00613          	li	a2,31
   16610:	ffc7f793          	andi	a5,a5,-4
   16614:	40978733          	sub	a4,a5,s1
   16618:	44e64a63          	blt	a2,a4,16a6c <_malloc_r+0x534>
   1661c:	03093423          	sd	a6,40(s2)
   16620:	03093023          	sd	a6,32(s2)
   16624:	20075063          	bgez	a4,16824 <_malloc_r+0x2ec>
   16628:	1ff00713          	li	a4,511
   1662c:	3cf76c63          	bltu	a4,a5,16a04 <_malloc_r+0x4cc>
   16630:	0037d793          	srli	a5,a5,0x3
   16634:	0007879b          	sext.w	a5,a5
   16638:	0017861b          	addiw	a2,a5,1
   1663c:	0016161b          	slliw	a2,a2,0x1
   16640:	00361613          	slli	a2,a2,0x3
   16644:	00893703          	ld	a4,8(s2)
   16648:	00c90633          	add	a2,s2,a2
   1664c:	00063503          	ld	a0,0(a2)
   16650:	4027d79b          	sraiw	a5,a5,0x2
   16654:	00100593          	li	a1,1
   16658:	00f597b3          	sll	a5,a1,a5
   1665c:	00e7e7b3          	or	a5,a5,a4
   16660:	ff060713          	addi	a4,a2,-16
   16664:	00e43c23          	sd	a4,24(s0)
   16668:	00a43823          	sd	a0,16(s0)
   1666c:	00f93423          	sd	a5,8(s2)
   16670:	00863023          	sd	s0,0(a2)
   16674:	00853c23          	sd	s0,24(a0)
   16678:	4026d61b          	sraiw	a2,a3,0x2
   1667c:	00100713          	li	a4,1
   16680:	00c71633          	sll	a2,a4,a2
   16684:	1cc7e063          	bltu	a5,a2,16844 <_malloc_r+0x30c>
   16688:	00f67733          	and	a4,a2,a5
   1668c:	02071463          	bnez	a4,166b4 <_malloc_r+0x17c>
   16690:	00161613          	slli	a2,a2,0x1
   16694:	ffc6f693          	andi	a3,a3,-4
   16698:	00f67733          	and	a4,a2,a5
   1669c:	0046869b          	addiw	a3,a3,4
   166a0:	00071a63          	bnez	a4,166b4 <_malloc_r+0x17c>
   166a4:	00161613          	slli	a2,a2,0x1
   166a8:	00f67733          	and	a4,a2,a5
   166ac:	0046869b          	addiw	a3,a3,4
   166b0:	fe070ae3          	beqz	a4,166a4 <_malloc_r+0x16c>
   166b4:	01f00513          	li	a0,31
   166b8:	0016889b          	addiw	a7,a3,1
   166bc:	0018989b          	slliw	a7,a7,0x1
   166c0:	00389893          	slli	a7,a7,0x3
   166c4:	011908b3          	add	a7,s2,a7
   166c8:	ff088893          	addi	a7,a7,-16
   166cc:	00088593          	mv	a1,a7
   166d0:	00068313          	mv	t1,a3
   166d4:	0185b403          	ld	s0,24(a1)
   166d8:	00859a63          	bne	a1,s0,166ec <_malloc_r+0x1b4>
   166dc:	3a40006f          	j	16a80 <_malloc_r+0x548>
   166e0:	3c075263          	bgez	a4,16aa4 <_malloc_r+0x56c>
   166e4:	01843403          	ld	s0,24(s0)
   166e8:	38858c63          	beq	a1,s0,16a80 <_malloc_r+0x548>
   166ec:	00843783          	ld	a5,8(s0)
   166f0:	ffc7f793          	andi	a5,a5,-4
   166f4:	40978733          	sub	a4,a5,s1
   166f8:	fee554e3          	ble	a4,a0,166e0 <_malloc_r+0x1a8>
   166fc:	01843783          	ld	a5,24(s0)
   16700:	01043683          	ld	a3,16(s0)
   16704:	0014e613          	ori	a2,s1,1
   16708:	00c43423          	sd	a2,8(s0)
   1670c:	00f6bc23          	sd	a5,24(a3)
   16710:	00d7b823          	sd	a3,16(a5) # ffffffff80000010 <_gp+0xffffffff7ffe2110>
   16714:	009404b3          	add	s1,s0,s1
   16718:	02993423          	sd	s1,40(s2)
   1671c:	02993023          	sd	s1,32(s2)
   16720:	00176793          	ori	a5,a4,1
   16724:	0104bc23          	sd	a6,24(s1)
   16728:	0104b823          	sd	a6,16(s1)
   1672c:	00f4b423          	sd	a5,8(s1)
   16730:	00e484b3          	add	s1,s1,a4
   16734:	00098513          	mv	a0,s3
   16738:	00e4b023          	sd	a4,0(s1)
   1673c:	055000ef          	jal	16f90 <__malloc_unlock>
   16740:	01040513          	addi	a0,s0,16
   16744:	0680006f          	j	167ac <_malloc_r+0x274>
   16748:	02000493          	li	s1,32
   1674c:	08b4ea63          	bltu	s1,a1,167e0 <_malloc_r+0x2a8>
   16750:	03d000ef          	jal	16f8c <__malloc_lock>
   16754:	00a00793          	li	a5,10
   16758:	00400693          	li	a3,4
   1675c:	0001d937          	lui	s2,0x1d
   16760:	ee890913          	addi	s2,s2,-280 # 1cee8 <__malloc_av_>
   16764:	00379793          	slli	a5,a5,0x3
   16768:	00f907b3          	add	a5,s2,a5
   1676c:	0087b403          	ld	s0,8(a5)
   16770:	ff078713          	addi	a4,a5,-16
   16774:	32e40063          	beq	s0,a4,16a94 <_malloc_r+0x55c>
   16778:	00843783          	ld	a5,8(s0)
   1677c:	01843683          	ld	a3,24(s0)
   16780:	01043603          	ld	a2,16(s0)
   16784:	ffc7f793          	andi	a5,a5,-4
   16788:	00f407b3          	add	a5,s0,a5
   1678c:	0087b703          	ld	a4,8(a5)
   16790:	00d63c23          	sd	a3,24(a2)
   16794:	00c6b823          	sd	a2,16(a3)
   16798:	00176713          	ori	a4,a4,1
   1679c:	00098513          	mv	a0,s3
   167a0:	00e7b423          	sd	a4,8(a5)
   167a4:	7ec000ef          	jal	16f90 <__malloc_unlock>
   167a8:	01040513          	addi	a0,s0,16
   167ac:	05813083          	ld	ra,88(sp)
   167b0:	05013403          	ld	s0,80(sp)
   167b4:	04813483          	ld	s1,72(sp)
   167b8:	04013903          	ld	s2,64(sp)
   167bc:	03813983          	ld	s3,56(sp)
   167c0:	03013a03          	ld	s4,48(sp)
   167c4:	02813a83          	ld	s5,40(sp)
   167c8:	02013b03          	ld	s6,32(sp)
   167cc:	01813b83          	ld	s7,24(sp)
   167d0:	01013c03          	ld	s8,16(sp)
   167d4:	00813c83          	ld	s9,8(sp)
   167d8:	06010113          	addi	sp,sp,96
   167dc:	00008067          	ret
   167e0:	00c00793          	li	a5,12
   167e4:	00f9a023          	sw	a5,0(s3) # ffffffffffffe000 <_gp+0xfffffffffffe0100>
   167e8:	00000513          	li	a0,0
   167ec:	fc1ff06f          	j	167ac <_malloc_r+0x274>
   167f0:	00400713          	li	a4,4
   167f4:	1ef76463          	bltu	a4,a5,169dc <_malloc_r+0x4a4>
   167f8:	0064d593          	srli	a1,s1,0x6
   167fc:	0005859b          	sext.w	a1,a1
   16800:	0395851b          	addiw	a0,a1,57
   16804:	0015169b          	slliw	a3,a0,0x1
   16808:	0385859b          	addiw	a1,a1,56
   1680c:	da1ff06f          	j	165ac <_malloc_r+0x74>
   16810:	00050693          	mv	a3,a0
   16814:	de9ff06f          	j	165fc <_malloc_r+0xc4>
   16818:	01843683          	ld	a3,24(s0)
   1681c:	01043603          	ld	a2,16(s0)
   16820:	f69ff06f          	j	16788 <_malloc_r+0x250>
   16824:	00f407b3          	add	a5,s0,a5
   16828:	0087b703          	ld	a4,8(a5)
   1682c:	00098513          	mv	a0,s3
   16830:	00176713          	ori	a4,a4,1
   16834:	00e7b423          	sd	a4,8(a5)
   16838:	758000ef          	jal	16f90 <__malloc_unlock>
   1683c:	01040513          	addi	a0,s0,16
   16840:	f6dff06f          	j	167ac <_malloc_r+0x274>
   16844:	01093403          	ld	s0,16(s2)
   16848:	00843703          	ld	a4,8(s0)
   1684c:	ffc77b93          	andi	s7,a4,-4
   16850:	009be863          	bltu	s7,s1,16860 <_malloc_r+0x328>
   16854:	409b87b3          	sub	a5,s7,s1
   16858:	01f00713          	li	a4,31
   1685c:	14f74c63          	blt	a4,a5,169b4 <_malloc_r+0x47c>
   16860:	8f01b783          	ld	a5,-1808(gp) # 1d7f0 <__malloc_top_pad>
   16864:	8201b683          	ld	a3,-2016(gp) # 1d720 <__malloc_sbrk_base>
   16868:	fff00713          	li	a4,-1
   1686c:	00f487b3          	add	a5,s1,a5
   16870:	01740a33          	add	s4,s0,s7
   16874:	02078b13          	addi	s6,a5,32
   16878:	00e68c63          	beq	a3,a4,16890 <_malloc_r+0x358>
   1687c:	00001b37          	lui	s6,0x1
   16880:	01fb0b13          	addi	s6,s6,31 # 101f <_ftext-0xefe1>
   16884:	01678b33          	add	s6,a5,s6
   16888:	fffff7b7          	lui	a5,0xfffff
   1688c:	00fb7b33          	and	s6,s6,a5
   16890:	000b0513          	mv	a0,s6
   16894:	49c040ef          	jal	1ad30 <sbrk>
   16898:	fff00793          	li	a5,-1
   1689c:	00050a93          	mv	s5,a0
   168a0:	26f50263          	beq	a0,a5,16b04 <_malloc_r+0x5cc>
   168a4:	25456e63          	bltu	a0,s4,16b00 <_malloc_r+0x5c8>
   168a8:	93818c13          	addi	s8,gp,-1736 # 1d838 <__malloc_current_mallinfo>
   168ac:	000c2783          	lw	a5,0(s8)
   168b0:	00fb07bb          	addw	a5,s6,a5
   168b4:	00fc2023          	sw	a5,0(s8)
   168b8:	355a0463          	beq	s4,s5,16c00 <_malloc_r+0x6c8>
   168bc:	8201b683          	ld	a3,-2016(gp) # 1d720 <__malloc_sbrk_base>
   168c0:	fff00713          	li	a4,-1
   168c4:	36e68263          	beq	a3,a4,16c28 <_malloc_r+0x6f0>
   168c8:	414a8a33          	sub	s4,s5,s4
   168cc:	00fa07bb          	addw	a5,s4,a5
   168d0:	00fc2023          	sw	a5,0(s8)
   168d4:	00faf713          	andi	a4,s5,15
   168d8:	000017b7          	lui	a5,0x1
   168dc:	00070a63          	beqz	a4,168f0 <_malloc_r+0x3b8>
   168e0:	40ea8ab3          	sub	s5,s5,a4
   168e4:	01078a13          	addi	s4,a5,16 # 1010 <_ftext-0xeff0>
   168e8:	010a8a93          	addi	s5,s5,16
   168ec:	40ea07b3          	sub	a5,s4,a4
   168f0:	00001a37          	lui	s4,0x1
   168f4:	fffa0a13          	addi	s4,s4,-1 # fff <_ftext-0xf001>
   168f8:	016a8b33          	add	s6,s5,s6
   168fc:	014b7b33          	and	s6,s6,s4
   16900:	41678a33          	sub	s4,a5,s6
   16904:	000a0513          	mv	a0,s4
   16908:	428040ef          	jal	1ad30 <sbrk>
   1690c:	fff00793          	li	a5,-1
   16910:	30f50663          	beq	a0,a5,16c1c <_malloc_r+0x6e4>
   16914:	41550733          	sub	a4,a0,s5
   16918:	01470733          	add	a4,a4,s4
   1691c:	00176713          	ori	a4,a4,1
   16920:	000a0a1b          	sext.w	s4,s4
   16924:	000c2783          	lw	a5,0(s8)
   16928:	01593823          	sd	s5,16(s2)
   1692c:	00eab423          	sd	a4,8(s5)
   16930:	00fa07bb          	addw	a5,s4,a5
   16934:	00fc2023          	sw	a5,0(s8)
   16938:	03240c63          	beq	s0,s2,16970 <_malloc_r+0x438>
   1693c:	01f00613          	li	a2,31
   16940:	27767463          	bleu	s7,a2,16ba8 <_malloc_r+0x670>
   16944:	00843683          	ld	a3,8(s0)
   16948:	fe8b8713          	addi	a4,s7,-24
   1694c:	ff077713          	andi	a4,a4,-16
   16950:	0016f693          	andi	a3,a3,1
   16954:	00e6e6b3          	or	a3,a3,a4
   16958:	00d43423          	sd	a3,8(s0)
   1695c:	00900593          	li	a1,9
   16960:	00e406b3          	add	a3,s0,a4
   16964:	00b6b423          	sd	a1,8(a3)
   16968:	00b6b823          	sd	a1,16(a3)
   1696c:	2ce66263          	bltu	a2,a4,16c30 <_malloc_r+0x6f8>
   16970:	8e81b683          	ld	a3,-1816(gp) # 1d7e8 <__malloc_max_sbrked_mem>
   16974:	00f6f463          	bleu	a5,a3,1697c <_malloc_r+0x444>
   16978:	8ef1b423          	sd	a5,-1816(gp) # 1d7e8 <__malloc_max_sbrked_mem>
   1697c:	8e01b683          	ld	a3,-1824(gp) # 1d7e0 <__malloc_max_total_mem>
   16980:	01093403          	ld	s0,16(s2)
   16984:	00f6f463          	bleu	a5,a3,1698c <_malloc_r+0x454>
   16988:	8ef1b023          	sd	a5,-1824(gp) # 1d7e0 <__malloc_max_total_mem>
   1698c:	00843703          	ld	a4,8(s0)
   16990:	ffc77713          	andi	a4,a4,-4
   16994:	409707b3          	sub	a5,a4,s1
   16998:	00976663          	bltu	a4,s1,169a4 <_malloc_r+0x46c>
   1699c:	01f00713          	li	a4,31
   169a0:	00f74a63          	blt	a4,a5,169b4 <_malloc_r+0x47c>
   169a4:	00098513          	mv	a0,s3
   169a8:	5e8000ef          	jal	16f90 <__malloc_unlock>
   169ac:	00000513          	li	a0,0
   169b0:	dfdff06f          	j	167ac <_malloc_r+0x274>
   169b4:	0014e713          	ori	a4,s1,1
   169b8:	00e43423          	sd	a4,8(s0)
   169bc:	009404b3          	add	s1,s0,s1
   169c0:	00993823          	sd	s1,16(s2)
   169c4:	0017e793          	ori	a5,a5,1
   169c8:	00098513          	mv	a0,s3
   169cc:	00f4b423          	sd	a5,8(s1)
   169d0:	5c0000ef          	jal	16f90 <__malloc_unlock>
   169d4:	01040513          	addi	a0,s0,16
   169d8:	dd5ff06f          	j	167ac <_malloc_r+0x274>
   169dc:	01400713          	li	a4,20
   169e0:	0ef77a63          	bleu	a5,a4,16ad4 <_malloc_r+0x59c>
   169e4:	05400713          	li	a4,84
   169e8:	18f76063          	bltu	a4,a5,16b68 <_malloc_r+0x630>
   169ec:	00c4d593          	srli	a1,s1,0xc
   169f0:	0005859b          	sext.w	a1,a1
   169f4:	06f5851b          	addiw	a0,a1,111
   169f8:	0015169b          	slliw	a3,a0,0x1
   169fc:	06e5859b          	addiw	a1,a1,110
   16a00:	badff06f          	j	165ac <_malloc_r+0x74>
   16a04:	0097d713          	srli	a4,a5,0x9
   16a08:	00400613          	li	a2,4
   16a0c:	0ce67e63          	bleu	a4,a2,16ae8 <_malloc_r+0x5b0>
   16a10:	01400613          	li	a2,20
   16a14:	1ce66663          	bltu	a2,a4,16be0 <_malloc_r+0x6a8>
   16a18:	0007071b          	sext.w	a4,a4
   16a1c:	05c7059b          	addiw	a1,a4,92
   16a20:	05b7061b          	addiw	a2,a4,91
   16a24:	0015959b          	slliw	a1,a1,0x1
   16a28:	00359593          	slli	a1,a1,0x3
   16a2c:	00b905b3          	add	a1,s2,a1
   16a30:	0005b703          	ld	a4,0(a1)
   16a34:	ff058593          	addi	a1,a1,-16
   16a38:	14e58863          	beq	a1,a4,16b88 <_malloc_r+0x650>
   16a3c:	00873603          	ld	a2,8(a4)
   16a40:	ffc67613          	andi	a2,a2,-4
   16a44:	00c7f663          	bleu	a2,a5,16a50 <_malloc_r+0x518>
   16a48:	01073703          	ld	a4,16(a4)
   16a4c:	fee598e3          	bne	a1,a4,16a3c <_malloc_r+0x504>
   16a50:	01873583          	ld	a1,24(a4)
   16a54:	00893783          	ld	a5,8(s2)
   16a58:	00b43c23          	sd	a1,24(s0)
   16a5c:	00e43823          	sd	a4,16(s0)
   16a60:	0085b823          	sd	s0,16(a1)
   16a64:	00873c23          	sd	s0,24(a4)
   16a68:	c11ff06f          	j	16678 <_malloc_r+0x140>
   16a6c:	0014e793          	ori	a5,s1,1
   16a70:	00f43423          	sd	a5,8(s0)
   16a74:	ca1ff06f          	j	16714 <_malloc_r+0x1dc>
   16a78:	00893783          	ld	a5,8(s2)
   16a7c:	bfdff06f          	j	16678 <_malloc_r+0x140>
   16a80:	0013031b          	addiw	t1,t1,1
   16a84:	00337793          	andi	a5,t1,3
   16a88:	01058593          	addi	a1,a1,16
   16a8c:	c40794e3          	bnez	a5,166d4 <_malloc_r+0x19c>
   16a90:	0900006f          	j	16b20 <_malloc_r+0x5e8>
   16a94:	0187b403          	ld	s0,24(a5)
   16a98:	0026869b          	addiw	a3,a3,2
   16a9c:	b68780e3          	beq	a5,s0,165fc <_malloc_r+0xc4>
   16aa0:	cd9ff06f          	j	16778 <_malloc_r+0x240>
   16aa4:	00f407b3          	add	a5,s0,a5
   16aa8:	0087b703          	ld	a4,8(a5)
   16aac:	01843683          	ld	a3,24(s0)
   16ab0:	01043603          	ld	a2,16(s0)
   16ab4:	00176713          	ori	a4,a4,1
   16ab8:	00e7b423          	sd	a4,8(a5)
   16abc:	00d63c23          	sd	a3,24(a2)
   16ac0:	00098513          	mv	a0,s3
   16ac4:	00c6b823          	sd	a2,16(a3)
   16ac8:	4c8000ef          	jal	16f90 <__malloc_unlock>
   16acc:	01040513          	addi	a0,s0,16
   16ad0:	cddff06f          	j	167ac <_malloc_r+0x274>
   16ad4:	0007879b          	sext.w	a5,a5
   16ad8:	05c7851b          	addiw	a0,a5,92
   16adc:	05b7859b          	addiw	a1,a5,91
   16ae0:	0015169b          	slliw	a3,a0,0x1
   16ae4:	ac9ff06f          	j	165ac <_malloc_r+0x74>
   16ae8:	0067d713          	srli	a4,a5,0x6
   16aec:	0007071b          	sext.w	a4,a4
   16af0:	0397059b          	addiw	a1,a4,57
   16af4:	0387061b          	addiw	a2,a4,56
   16af8:	0015959b          	slliw	a1,a1,0x1
   16afc:	f2dff06f          	j	16a28 <_malloc_r+0x4f0>
   16b00:	db2404e3          	beq	s0,s2,168a8 <_malloc_r+0x370>
   16b04:	01093403          	ld	s0,16(s2)
   16b08:	00843703          	ld	a4,8(s0)
   16b0c:	ffc77713          	andi	a4,a4,-4
   16b10:	e85ff06f          	j	16994 <_malloc_r+0x45c>
   16b14:	0108b783          	ld	a5,16(a7)
   16b18:	fff6869b          	addiw	a3,a3,-1
   16b1c:	16f89863          	bne	a7,a5,16c8c <_malloc_r+0x754>
   16b20:	0036f793          	andi	a5,a3,3
   16b24:	ff088893          	addi	a7,a7,-16
   16b28:	fe0796e3          	bnez	a5,16b14 <_malloc_r+0x5dc>
   16b2c:	00893783          	ld	a5,8(s2)
   16b30:	fff64713          	not	a4,a2
   16b34:	00f777b3          	and	a5,a4,a5
   16b38:	00f93423          	sd	a5,8(s2)
   16b3c:	00161613          	slli	a2,a2,0x1
   16b40:	d0c7e2e3          	bltu	a5,a2,16844 <_malloc_r+0x30c>
   16b44:	d00600e3          	beqz	a2,16844 <_malloc_r+0x30c>
   16b48:	00f67733          	and	a4,a2,a5
   16b4c:	00030693          	mv	a3,t1
   16b50:	b60714e3          	bnez	a4,166b8 <_malloc_r+0x180>
   16b54:	00161613          	slli	a2,a2,0x1
   16b58:	00f67733          	and	a4,a2,a5
   16b5c:	0046869b          	addiw	a3,a3,4
   16b60:	fe070ae3          	beqz	a4,16b54 <_malloc_r+0x61c>
   16b64:	b55ff06f          	j	166b8 <_malloc_r+0x180>
   16b68:	15400713          	li	a4,340
   16b6c:	04f76463          	bltu	a4,a5,16bb4 <_malloc_r+0x67c>
   16b70:	00f4d593          	srli	a1,s1,0xf
   16b74:	0005859b          	sext.w	a1,a1
   16b78:	0785851b          	addiw	a0,a1,120
   16b7c:	0015169b          	slliw	a3,a0,0x1
   16b80:	0775859b          	addiw	a1,a1,119
   16b84:	a29ff06f          	j	165ac <_malloc_r+0x74>
   16b88:	00893783          	ld	a5,8(s2)
   16b8c:	4026571b          	sraiw	a4,a2,0x2
   16b90:	00100613          	li	a2,1
   16b94:	00e61733          	sll	a4,a2,a4
   16b98:	00f767b3          	or	a5,a4,a5
   16b9c:	00f93423          	sd	a5,8(s2)
   16ba0:	00058713          	mv	a4,a1
   16ba4:	eb5ff06f          	j	16a58 <_malloc_r+0x520>
   16ba8:	00100793          	li	a5,1
   16bac:	00fab423          	sd	a5,8(s5)
   16bb0:	df5ff06f          	j	169a4 <_malloc_r+0x46c>
   16bb4:	55400713          	li	a4,1364
   16bb8:	0fe00693          	li	a3,254
   16bbc:	07f00513          	li	a0,127
   16bc0:	07e00593          	li	a1,126
   16bc4:	9ef764e3          	bltu	a4,a5,165ac <_malloc_r+0x74>
   16bc8:	0124d593          	srli	a1,s1,0x12
   16bcc:	0005859b          	sext.w	a1,a1
   16bd0:	07d5851b          	addiw	a0,a1,125
   16bd4:	0015169b          	slliw	a3,a0,0x1
   16bd8:	07c5859b          	addiw	a1,a1,124
   16bdc:	9d1ff06f          	j	165ac <_malloc_r+0x74>
   16be0:	05400613          	li	a2,84
   16be4:	06e66063          	bltu	a2,a4,16c44 <_malloc_r+0x70c>
   16be8:	00c7d713          	srli	a4,a5,0xc
   16bec:	0007071b          	sext.w	a4,a4
   16bf0:	06f7059b          	addiw	a1,a4,111
   16bf4:	06e7061b          	addiw	a2,a4,110
   16bf8:	0015959b          	slliw	a1,a1,0x1
   16bfc:	e2dff06f          	j	16a28 <_malloc_r+0x4f0>
   16c00:	034a1713          	slli	a4,s4,0x34
   16c04:	ca071ce3          	bnez	a4,168bc <_malloc_r+0x384>
   16c08:	01093683          	ld	a3,16(s2)
   16c0c:	016b8733          	add	a4,s7,s6
   16c10:	00176713          	ori	a4,a4,1
   16c14:	00e6b423          	sd	a4,8(a3)
   16c18:	d59ff06f          	j	16970 <_malloc_r+0x438>
   16c1c:	00100713          	li	a4,1
   16c20:	00000a13          	li	s4,0
   16c24:	d01ff06f          	j	16924 <_malloc_r+0x3ec>
   16c28:	8351b023          	sd	s5,-2016(gp) # 1d720 <__malloc_sbrk_base>
   16c2c:	ca9ff06f          	j	168d4 <_malloc_r+0x39c>
   16c30:	01040593          	addi	a1,s0,16
   16c34:	00098513          	mv	a0,s3
   16c38:	f28fe0ef          	jal	15360 <_free_r>
   16c3c:	000c2783          	lw	a5,0(s8)
   16c40:	d31ff06f          	j	16970 <_malloc_r+0x438>
   16c44:	15400613          	li	a2,340
   16c48:	00e66e63          	bltu	a2,a4,16c64 <_malloc_r+0x72c>
   16c4c:	00f7d713          	srli	a4,a5,0xf
   16c50:	0007071b          	sext.w	a4,a4
   16c54:	0787059b          	addiw	a1,a4,120
   16c58:	0777061b          	addiw	a2,a4,119
   16c5c:	0015959b          	slliw	a1,a1,0x1
   16c60:	dc9ff06f          	j	16a28 <_malloc_r+0x4f0>
   16c64:	55400513          	li	a0,1364
   16c68:	0fe00593          	li	a1,254
   16c6c:	07e00613          	li	a2,126
   16c70:	dae56ce3          	bltu	a0,a4,16a28 <_malloc_r+0x4f0>
   16c74:	0127d713          	srli	a4,a5,0x12
   16c78:	0007071b          	sext.w	a4,a4
   16c7c:	07d7059b          	addiw	a1,a4,125
   16c80:	07c7061b          	addiw	a2,a4,124
   16c84:	0015959b          	slliw	a1,a1,0x1
   16c88:	da1ff06f          	j	16a28 <_malloc_r+0x4f0>
   16c8c:	00893783          	ld	a5,8(s2)
   16c90:	eadff06f          	j	16b3c <_malloc_r+0x604>
   16c94:	0034d693          	srli	a3,s1,0x3
   16c98:	0006869b          	sext.w	a3,a3
   16c9c:	0016879b          	addiw	a5,a3,1
   16ca0:	0017979b          	slliw	a5,a5,0x1
   16ca4:	ab9ff06f          	j	1675c <_malloc_r+0x224>

0000000000016ca8 <memchr>:
   16ca8:	00757793          	andi	a5,a0,7
   16cac:	0ff5f813          	andi	a6,a1,255
   16cb0:	0c078c63          	beqz	a5,16d88 <memchr+0xe0>
   16cb4:	fff60793          	addi	a5,a2,-1
   16cb8:	06060463          	beqz	a2,16d20 <memchr+0x78>
   16cbc:	00054703          	lbu	a4,0(a0)
   16cc0:	07070263          	beq	a4,a6,16d24 <memchr+0x7c>
   16cc4:	00080693          	mv	a3,a6
   16cc8:	0140006f          	j	16cdc <memchr+0x34>
   16ccc:	04078a63          	beqz	a5,16d20 <memchr+0x78>
   16cd0:	00054703          	lbu	a4,0(a0)
   16cd4:	fff78793          	addi	a5,a5,-1
   16cd8:	04d70663          	beq	a4,a3,16d24 <memchr+0x7c>
   16cdc:	00150513          	addi	a0,a0,1
   16ce0:	00757713          	andi	a4,a0,7
   16ce4:	fe0714e3          	bnez	a4,16ccc <memchr+0x24>
   16ce8:	00700693          	li	a3,7
   16cec:	02f6ee63          	bltu	a3,a5,16d28 <memchr+0x80>
   16cf0:	02078863          	beqz	a5,16d20 <memchr+0x78>
   16cf4:	00054703          	lbu	a4,0(a0)
   16cf8:	03070663          	beq	a4,a6,16d24 <memchr+0x7c>
   16cfc:	00150713          	addi	a4,a0,1
   16d00:	00f507b3          	add	a5,a0,a5
   16d04:	00080613          	mv	a2,a6
   16d08:	0100006f          	j	16d18 <memchr+0x70>
   16d0c:	00170713          	addi	a4,a4,1
   16d10:	fff74683          	lbu	a3,-1(a4)
   16d14:	00c68863          	beq	a3,a2,16d24 <memchr+0x7c>
   16d18:	00070513          	mv	a0,a4
   16d1c:	fee798e3          	bne	a5,a4,16d0c <memchr+0x64>
   16d20:	00000513          	li	a0,0
   16d24:	00008067          	ret
   16d28:	0ff5f593          	andi	a1,a1,255
   16d2c:	0085971b          	slliw	a4,a1,0x8
   16d30:	00b765b3          	or	a1,a4,a1
   16d34:	00058713          	mv	a4,a1
   16d38:	01071613          	slli	a2,a4,0x10
   16d3c:	00c76733          	or	a4,a4,a2
   16d40:	0001d637          	lui	a2,0x1d
   16d44:	7b063303          	ld	t1,1968(a2) # 1d7b0 <__wctomb+0x80>
   16d48:	0001d637          	lui	a2,0x1d
   16d4c:	7b863883          	ld	a7,1976(a2) # 1d7b8 <__wctomb+0x88>
   16d50:	02071613          	slli	a2,a4,0x20
   16d54:	00e66633          	or	a2,a2,a4
   16d58:	00068593          	mv	a1,a3
   16d5c:	00053703          	ld	a4,0(a0)
   16d60:	00e64733          	xor	a4,a2,a4
   16d64:	006706b3          	add	a3,a4,t1
   16d68:	fff74713          	not	a4,a4
   16d6c:	00e6f733          	and	a4,a3,a4
   16d70:	01177733          	and	a4,a4,a7
   16d74:	f80710e3          	bnez	a4,16cf4 <memchr+0x4c>
   16d78:	ff878793          	addi	a5,a5,-8
   16d7c:	00850513          	addi	a0,a0,8
   16d80:	fcf5eee3          	bltu	a1,a5,16d5c <memchr+0xb4>
   16d84:	f6dff06f          	j	16cf0 <memchr+0x48>
   16d88:	00060793          	mv	a5,a2
   16d8c:	f5dff06f          	j	16ce8 <memchr+0x40>

0000000000016d90 <memcpy>:
   16d90:	00a5c7b3          	xor	a5,a1,a0
   16d94:	0077f793          	andi	a5,a5,7
   16d98:	00c508b3          	add	a7,a0,a2
   16d9c:	0e079263          	bnez	a5,16e80 <memcpy+0xf0>
   16da0:	00700793          	li	a5,7
   16da4:	0ec7fe63          	bleu	a2,a5,16ea0 <memcpy+0x110>
   16da8:	00757793          	andi	a5,a0,7
   16dac:	04079a63          	bnez	a5,16e00 <memcpy+0x70>
   16db0:	ff88f813          	andi	a6,a7,-8
   16db4:	fc080793          	addi	a5,a6,-64
   16db8:	00050713          	mv	a4,a0
   16dbc:	06f56663          	bltu	a0,a5,16e28 <memcpy+0x98>
   16dc0:	00058693          	mv	a3,a1
   16dc4:	00070793          	mv	a5,a4
   16dc8:	03077863          	bleu	a6,a4,16df8 <memcpy+0x68>
   16dcc:	0006b603          	ld	a2,0(a3)
   16dd0:	00878793          	addi	a5,a5,8
   16dd4:	00868693          	addi	a3,a3,8
   16dd8:	fec7bc23          	sd	a2,-8(a5)
   16ddc:	ff07e8e3          	bltu	a5,a6,16dcc <memcpy+0x3c>
   16de0:	fff74793          	not	a5,a4
   16de4:	01078833          	add	a6,a5,a6
   16de8:	ff887813          	andi	a6,a6,-8
   16dec:	00880813          	addi	a6,a6,8
   16df0:	01070733          	add	a4,a4,a6
   16df4:	010585b3          	add	a1,a1,a6
   16df8:	09176863          	bltu	a4,a7,16e88 <memcpy+0xf8>
   16dfc:	00008067          	ret
   16e00:	00050713          	mv	a4,a0
   16e04:	0005c683          	lbu	a3,0(a1)
   16e08:	00170713          	addi	a4,a4,1
   16e0c:	00777793          	andi	a5,a4,7
   16e10:	fed70fa3          	sb	a3,-1(a4)
   16e14:	00158593          	addi	a1,a1,1
   16e18:	fe0796e3          	bnez	a5,16e04 <memcpy+0x74>
   16e1c:	ff88f813          	andi	a6,a7,-8
   16e20:	fc080793          	addi	a5,a6,-64
   16e24:	f8f77ee3          	bleu	a5,a4,16dc0 <memcpy+0x30>
   16e28:	0005b383          	ld	t2,0(a1)
   16e2c:	0085b283          	ld	t0,8(a1)
   16e30:	0105bf83          	ld	t6,16(a1)
   16e34:	0185bf03          	ld	t5,24(a1)
   16e38:	0205be83          	ld	t4,32(a1)
   16e3c:	0285be03          	ld	t3,40(a1)
   16e40:	0305b303          	ld	t1,48(a1)
   16e44:	0385b603          	ld	a2,56(a1)
   16e48:	04858593          	addi	a1,a1,72
   16e4c:	04870713          	addi	a4,a4,72
   16e50:	ff85b683          	ld	a3,-8(a1)
   16e54:	fa773c23          	sd	t2,-72(a4)
   16e58:	fc573023          	sd	t0,-64(a4)
   16e5c:	fdf73423          	sd	t6,-56(a4)
   16e60:	fde73823          	sd	t5,-48(a4)
   16e64:	fdd73c23          	sd	t4,-40(a4)
   16e68:	ffc73023          	sd	t3,-32(a4)
   16e6c:	fe673423          	sd	t1,-24(a4)
   16e70:	fec73823          	sd	a2,-16(a4)
   16e74:	fed73c23          	sd	a3,-8(a4)
   16e78:	faf768e3          	bltu	a4,a5,16e28 <memcpy+0x98>
   16e7c:	f45ff06f          	j	16dc0 <memcpy+0x30>
   16e80:	00050713          	mv	a4,a0
   16e84:	03157463          	bleu	a7,a0,16eac <memcpy+0x11c>
   16e88:	0005c783          	lbu	a5,0(a1)
   16e8c:	00170713          	addi	a4,a4,1
   16e90:	00158593          	addi	a1,a1,1
   16e94:	fef70fa3          	sb	a5,-1(a4)
   16e98:	ff1768e3          	bltu	a4,a7,16e88 <memcpy+0xf8>
   16e9c:	00008067          	ret
   16ea0:	00050713          	mv	a4,a0
   16ea4:	ff1562e3          	bltu	a0,a7,16e88 <memcpy+0xf8>
   16ea8:	f55ff06f          	j	16dfc <memcpy+0x6c>
   16eac:	00008067          	ret

0000000000016eb0 <memset>:
   16eb0:	00f00813          	li	a6,15
   16eb4:	00050713          	mv	a4,a0
   16eb8:	02c87a63          	bleu	a2,a6,16eec <memset+0x3c>
   16ebc:	00f77793          	andi	a5,a4,15
   16ec0:	0a079063          	bnez	a5,16f60 <memset+0xb0>
   16ec4:	06059e63          	bnez	a1,16f40 <memset+0x90>
   16ec8:	ff067693          	andi	a3,a2,-16
   16ecc:	00f67613          	andi	a2,a2,15
   16ed0:	00e686b3          	add	a3,a3,a4
   16ed4:	00b73023          	sd	a1,0(a4)
   16ed8:	00b73423          	sd	a1,8(a4)
   16edc:	01070713          	addi	a4,a4,16
   16ee0:	fed76ae3          	bltu	a4,a3,16ed4 <memset+0x24>
   16ee4:	00061463          	bnez	a2,16eec <memset+0x3c>
   16ee8:	00008067          	ret
   16eec:	40c806b3          	sub	a3,a6,a2
   16ef0:	00269693          	slli	a3,a3,0x2
   16ef4:	00000297          	auipc	t0,0x0
   16ef8:	005686b3          	add	a3,a3,t0
   16efc:	00c68067          	jr	a3,12
   16f00:	00b70723          	sb	a1,14(a4)
   16f04:	00b706a3          	sb	a1,13(a4)
   16f08:	00b70623          	sb	a1,12(a4)
   16f0c:	00b705a3          	sb	a1,11(a4)
   16f10:	00b70523          	sb	a1,10(a4)
   16f14:	00b704a3          	sb	a1,9(a4)
   16f18:	00b70423          	sb	a1,8(a4)
   16f1c:	00b703a3          	sb	a1,7(a4)
   16f20:	00b70323          	sb	a1,6(a4)
   16f24:	00b702a3          	sb	a1,5(a4)
   16f28:	00b70223          	sb	a1,4(a4)
   16f2c:	00b701a3          	sb	a1,3(a4)
   16f30:	00b70123          	sb	a1,2(a4)
   16f34:	00b700a3          	sb	a1,1(a4)
   16f38:	00b70023          	sb	a1,0(a4)
   16f3c:	00008067          	ret
   16f40:	0ff5f593          	andi	a1,a1,255
   16f44:	00859693          	slli	a3,a1,0x8
   16f48:	00d5e5b3          	or	a1,a1,a3
   16f4c:	01059693          	slli	a3,a1,0x10
   16f50:	00d5e5b3          	or	a1,a1,a3
   16f54:	02059693          	slli	a3,a1,0x20
   16f58:	00d5e5b3          	or	a1,a1,a3
   16f5c:	f6dff06f          	j	16ec8 <memset+0x18>
   16f60:	00279693          	slli	a3,a5,0x2
   16f64:	00000297          	auipc	t0,0x0
   16f68:	005686b3          	add	a3,a3,t0
   16f6c:	00008293          	mv	t0,ra
   16f70:	f98680e7          	jalr	a3,-104
   16f74:	00028093          	mv	ra,t0
   16f78:	ff078793          	addi	a5,a5,-16
   16f7c:	40f70733          	sub	a4,a4,a5
   16f80:	00f60633          	add	a2,a2,a5
   16f84:	f6c874e3          	bleu	a2,a6,16eec <memset+0x3c>
   16f88:	f3dff06f          	j	16ec4 <memset+0x14>

0000000000016f8c <__malloc_lock>:
   16f8c:	00008067          	ret

0000000000016f90 <__malloc_unlock>:
   16f90:	00008067          	ret

0000000000016f94 <_Balloc>:
   16f94:	07853783          	ld	a5,120(a0)
   16f98:	fe010113          	addi	sp,sp,-32
   16f9c:	00813823          	sd	s0,16(sp)
   16fa0:	00913423          	sd	s1,8(sp)
   16fa4:	00113c23          	sd	ra,24(sp)
   16fa8:	01213023          	sd	s2,0(sp)
   16fac:	00050413          	mv	s0,a0
   16fb0:	00058493          	mv	s1,a1
   16fb4:	02078e63          	beqz	a5,16ff0 <_Balloc+0x5c>
   16fb8:	00349513          	slli	a0,s1,0x3
   16fbc:	00a787b3          	add	a5,a5,a0
   16fc0:	0007b503          	ld	a0,0(a5)
   16fc4:	04050663          	beqz	a0,17010 <_Balloc+0x7c>
   16fc8:	00053703          	ld	a4,0(a0)
   16fcc:	00e7b023          	sd	a4,0(a5)
   16fd0:	00052a23          	sw	zero,20(a0)
   16fd4:	00052823          	sw	zero,16(a0)
   16fd8:	01813083          	ld	ra,24(sp)
   16fdc:	01013403          	ld	s0,16(sp)
   16fe0:	00813483          	ld	s1,8(sp)
   16fe4:	00013903          	ld	s2,0(sp)
   16fe8:	02010113          	addi	sp,sp,32
   16fec:	00008067          	ret
   16ff0:	04100613          	li	a2,65
   16ff4:	00800593          	li	a1,8
   16ff8:	71c020ef          	jal	19714 <_calloc_r>
   16ffc:	06a43c23          	sd	a0,120(s0)
   17000:	00050793          	mv	a5,a0
   17004:	fa051ae3          	bnez	a0,16fb8 <_Balloc+0x24>
   17008:	00000513          	li	a0,0
   1700c:	fcdff06f          	j	16fd8 <_Balloc+0x44>
   17010:	00100913          	li	s2,1
   17014:	0099193b          	sllw	s2,s2,s1
   17018:	fff9061b          	addiw	a2,s2,-1
   1701c:	00860613          	addi	a2,a2,8
   17020:	00261613          	slli	a2,a2,0x2
   17024:	00100593          	li	a1,1
   17028:	00040513          	mv	a0,s0
   1702c:	6e8020ef          	jal	19714 <_calloc_r>
   17030:	fc050ce3          	beqz	a0,17008 <_Balloc+0x74>
   17034:	00952423          	sw	s1,8(a0)
   17038:	01252623          	sw	s2,12(a0)
   1703c:	f95ff06f          	j	16fd0 <_Balloc+0x3c>

0000000000017040 <_Bfree>:
   17040:	02058063          	beqz	a1,17060 <_Bfree+0x20>
   17044:	0085a783          	lw	a5,8(a1)
   17048:	07853703          	ld	a4,120(a0)
   1704c:	00379793          	slli	a5,a5,0x3
   17050:	00f707b3          	add	a5,a4,a5
   17054:	0007b703          	ld	a4,0(a5)
   17058:	00e5b023          	sd	a4,0(a1)
   1705c:	00b7b023          	sd	a1,0(a5)
   17060:	00008067          	ret

0000000000017064 <__multadd>:
   17064:	fc010113          	addi	sp,sp,-64
   17068:	00010837          	lui	a6,0x10
   1706c:	02813823          	sd	s0,48(sp)
   17070:	02913423          	sd	s1,40(sp)
   17074:	03213023          	sd	s2,32(sp)
   17078:	00058493          	mv	s1,a1
   1707c:	0145a403          	lw	s0,20(a1)
   17080:	00050913          	mv	s2,a0
   17084:	02113c23          	sd	ra,56(sp)
   17088:	01313c23          	sd	s3,24(sp)
   1708c:	01858593          	addi	a1,a1,24
   17090:	00000513          	li	a0,0
   17094:	fff8081b          	addiw	a6,a6,-1
   17098:	0005a783          	lw	a5,0(a1)
   1709c:	00458593          	addi	a1,a1,4
   170a0:	0015051b          	addiw	a0,a0,1
   170a4:	0107f733          	and	a4,a5,a6
   170a8:	02c7073b          	mulw	a4,a4,a2
   170ac:	0107d79b          	srliw	a5,a5,0x10
   170b0:	02c787bb          	mulw	a5,a5,a2
   170b4:	00d7073b          	addw	a4,a4,a3
   170b8:	0107569b          	srliw	a3,a4,0x10
   170bc:	01077733          	and	a4,a4,a6
   170c0:	00d786bb          	addw	a3,a5,a3
   170c4:	0106979b          	slliw	a5,a3,0x10
   170c8:	00e7873b          	addw	a4,a5,a4
   170cc:	fee5ae23          	sw	a4,-4(a1)
   170d0:	0106d69b          	srliw	a3,a3,0x10
   170d4:	fc8542e3          	blt	a0,s0,17098 <__multadd+0x34>
   170d8:	02068263          	beqz	a3,170fc <__multadd+0x98>
   170dc:	00c4a783          	lw	a5,12(s1)
   170e0:	02f45e63          	ble	a5,s0,1711c <__multadd+0xb8>
   170e4:	00440793          	addi	a5,s0,4
   170e8:	00279793          	slli	a5,a5,0x2
   170ec:	00f487b3          	add	a5,s1,a5
   170f0:	00d7a423          	sw	a3,8(a5)
   170f4:	0014041b          	addiw	s0,s0,1
   170f8:	0084aa23          	sw	s0,20(s1)
   170fc:	03813083          	ld	ra,56(sp)
   17100:	00048513          	mv	a0,s1
   17104:	03013403          	ld	s0,48(sp)
   17108:	02813483          	ld	s1,40(sp)
   1710c:	02013903          	ld	s2,32(sp)
   17110:	01813983          	ld	s3,24(sp)
   17114:	04010113          	addi	sp,sp,64
   17118:	00008067          	ret
   1711c:	0084a583          	lw	a1,8(s1)
   17120:	00090513          	mv	a0,s2
   17124:	00d13423          	sd	a3,8(sp)
   17128:	0015859b          	addiw	a1,a1,1
   1712c:	e69ff0ef          	jal	16f94 <_Balloc>
   17130:	0144a603          	lw	a2,20(s1)
   17134:	00050993          	mv	s3,a0
   17138:	01048593          	addi	a1,s1,16
   1713c:	00260613          	addi	a2,a2,2
   17140:	01050513          	addi	a0,a0,16
   17144:	00261613          	slli	a2,a2,0x2
   17148:	c49ff0ef          	jal	16d90 <memcpy>
   1714c:	0084a703          	lw	a4,8(s1)
   17150:	07893783          	ld	a5,120(s2)
   17154:	00813683          	ld	a3,8(sp)
   17158:	00371713          	slli	a4,a4,0x3
   1715c:	00e787b3          	add	a5,a5,a4
   17160:	0007b703          	ld	a4,0(a5)
   17164:	00e4b023          	sd	a4,0(s1)
   17168:	0097b023          	sd	s1,0(a5)
   1716c:	00098493          	mv	s1,s3
   17170:	f75ff06f          	j	170e4 <__multadd+0x80>

0000000000017174 <__s2b>:
   17174:	fc010113          	addi	sp,sp,-64
   17178:	0086879b          	addiw	a5,a3,8
   1717c:	03213023          	sd	s2,32(sp)
   17180:	00068913          	mv	s2,a3
   17184:	00900693          	li	a3,9
   17188:	02d7c6bb          	divw	a3,a5,a3
   1718c:	02813823          	sd	s0,48(sp)
   17190:	02913423          	sd	s1,40(sp)
   17194:	01313c23          	sd	s3,24(sp)
   17198:	01413823          	sd	s4,16(sp)
   1719c:	02113c23          	sd	ra,56(sp)
   171a0:	01513423          	sd	s5,8(sp)
   171a4:	01613023          	sd	s6,0(sp)
   171a8:	00100793          	li	a5,1
   171ac:	00058413          	mv	s0,a1
   171b0:	00050993          	mv	s3,a0
   171b4:	00060a13          	mv	s4,a2
   171b8:	00070493          	mv	s1,a4
   171bc:	00000593          	li	a1,0
   171c0:	00d7d863          	ble	a3,a5,171d0 <__s2b+0x5c>
   171c4:	0017979b          	slliw	a5,a5,0x1
   171c8:	0015859b          	addiw	a1,a1,1
   171cc:	fed7cce3          	blt	a5,a3,171c4 <__s2b+0x50>
   171d0:	00098513          	mv	a0,s3
   171d4:	dc1ff0ef          	jal	16f94 <_Balloc>
   171d8:	00100793          	li	a5,1
   171dc:	00f52a23          	sw	a5,20(a0)
   171e0:	00952c23          	sw	s1,24(a0)
   171e4:	00900793          	li	a5,9
   171e8:	0b47d663          	ble	s4,a5,17294 <__s2b+0x120>
   171ec:	ff6a0b1b          	addiw	s6,s4,-10
   171f0:	020b1b13          	slli	s6,s6,0x20
   171f4:	020b5b13          	srli	s6,s6,0x20
   171f8:	00940a93          	addi	s5,s0,9
   171fc:	00ab0793          	addi	a5,s6,10
   17200:	00f40433          	add	s0,s0,a5
   17204:	000a8493          	mv	s1,s5
   17208:	00148493          	addi	s1,s1,1
   1720c:	fff4c683          	lbu	a3,-1(s1)
   17210:	00050593          	mv	a1,a0
   17214:	00a00613          	li	a2,10
   17218:	fd06869b          	addiw	a3,a3,-48
   1721c:	00098513          	mv	a0,s3
   17220:	e45ff0ef          	jal	17064 <__multadd>
   17224:	fe8492e3          	bne	s1,s0,17208 <__s2b+0x94>
   17228:	016a8433          	add	s0,s5,s6
   1722c:	00240413          	addi	s0,s0,2
   17230:	032a5e63          	ble	s2,s4,1726c <__s2b+0xf8>
   17234:	fff9091b          	addiw	s2,s2,-1
   17238:	414904bb          	subw	s1,s2,s4
   1723c:	02049493          	slli	s1,s1,0x20
   17240:	0204d493          	srli	s1,s1,0x20
   17244:	00148493          	addi	s1,s1,1
   17248:	009404b3          	add	s1,s0,s1
   1724c:	00140413          	addi	s0,s0,1
   17250:	fff44683          	lbu	a3,-1(s0)
   17254:	00050593          	mv	a1,a0
   17258:	00a00613          	li	a2,10
   1725c:	fd06869b          	addiw	a3,a3,-48
   17260:	00098513          	mv	a0,s3
   17264:	e01ff0ef          	jal	17064 <__multadd>
   17268:	fe9412e3          	bne	s0,s1,1724c <__s2b+0xd8>
   1726c:	03813083          	ld	ra,56(sp)
   17270:	03013403          	ld	s0,48(sp)
   17274:	02813483          	ld	s1,40(sp)
   17278:	02013903          	ld	s2,32(sp)
   1727c:	01813983          	ld	s3,24(sp)
   17280:	01013a03          	ld	s4,16(sp)
   17284:	00813a83          	ld	s5,8(sp)
   17288:	00013b03          	ld	s6,0(sp)
   1728c:	04010113          	addi	sp,sp,64
   17290:	00008067          	ret
   17294:	00a40413          	addi	s0,s0,10
   17298:	00078a13          	mv	s4,a5
   1729c:	f95ff06f          	j	17230 <__s2b+0xbc>

00000000000172a0 <__hi0bits>:
   172a0:	ffff06b7          	lui	a3,0xffff0
   172a4:	00d576b3          	and	a3,a0,a3
   172a8:	00050793          	mv	a5,a0
   172ac:	00000713          	li	a4,0
   172b0:	00069663          	bnez	a3,172bc <__hi0bits+0x1c>
   172b4:	0105179b          	slliw	a5,a0,0x10
   172b8:	01000713          	li	a4,16
   172bc:	ff0006b7          	lui	a3,0xff000
   172c0:	00d7f6b3          	and	a3,a5,a3
   172c4:	00069663          	bnez	a3,172d0 <__hi0bits+0x30>
   172c8:	0087071b          	addiw	a4,a4,8
   172cc:	0087979b          	slliw	a5,a5,0x8
   172d0:	f00006b7          	lui	a3,0xf0000
   172d4:	00d7f6b3          	and	a3,a5,a3
   172d8:	00069663          	bnez	a3,172e4 <__hi0bits+0x44>
   172dc:	0047071b          	addiw	a4,a4,4
   172e0:	0047979b          	slliw	a5,a5,0x4
   172e4:	c00006b7          	lui	a3,0xc0000
   172e8:	00d7f6b3          	and	a3,a5,a3
   172ec:	00069663          	bnez	a3,172f8 <__hi0bits+0x58>
   172f0:	0027071b          	addiw	a4,a4,2
   172f4:	0027979b          	slliw	a5,a5,0x2
   172f8:	0007ce63          	bltz	a5,17314 <__hi0bits+0x74>
   172fc:	02179693          	slli	a3,a5,0x21
   17300:	02000513          	li	a0,32
   17304:	0006c463          	bltz	a3,1730c <__hi0bits+0x6c>
   17308:	00008067          	ret
   1730c:	0017051b          	addiw	a0,a4,1
   17310:	00008067          	ret
   17314:	00070513          	mv	a0,a4
   17318:	00008067          	ret

000000000001731c <__lo0bits>:
   1731c:	00052783          	lw	a5,0(a0)
   17320:	00050693          	mv	a3,a0
   17324:	0077f713          	andi	a4,a5,7
   17328:	02070463          	beqz	a4,17350 <__lo0bits+0x34>
   1732c:	0017f713          	andi	a4,a5,1
   17330:	00000513          	li	a0,0
   17334:	08071263          	bnez	a4,173b8 <__lo0bits+0x9c>
   17338:	0027f713          	andi	a4,a5,2
   1733c:	08071063          	bnez	a4,173bc <__lo0bits+0xa0>
   17340:	0027d79b          	srliw	a5,a5,0x2
   17344:	00f6a023          	sw	a5,0(a3) # ffffffffc0000000 <_gp+0xffffffffbffe2100>
   17348:	00200513          	li	a0,2
   1734c:	00008067          	ret
   17350:	0107961b          	slliw	a2,a5,0x10
   17354:	0106561b          	srliw	a2,a2,0x10
   17358:	00000713          	li	a4,0
   1735c:	00061663          	bnez	a2,17368 <__lo0bits+0x4c>
   17360:	0107d79b          	srliw	a5,a5,0x10
   17364:	01000713          	li	a4,16
   17368:	0ff7f613          	andi	a2,a5,255
   1736c:	00061663          	bnez	a2,17378 <__lo0bits+0x5c>
   17370:	0087071b          	addiw	a4,a4,8
   17374:	0087d79b          	srliw	a5,a5,0x8
   17378:	00f7f613          	andi	a2,a5,15
   1737c:	00061663          	bnez	a2,17388 <__lo0bits+0x6c>
   17380:	0047071b          	addiw	a4,a4,4
   17384:	0047d79b          	srliw	a5,a5,0x4
   17388:	0037f613          	andi	a2,a5,3
   1738c:	00061663          	bnez	a2,17398 <__lo0bits+0x7c>
   17390:	0027071b          	addiw	a4,a4,2
   17394:	0027d79b          	srliw	a5,a5,0x2
   17398:	0017f613          	andi	a2,a5,1
   1739c:	00061a63          	bnez	a2,173b0 <__lo0bits+0x94>
   173a0:	0017d79b          	srliw	a5,a5,0x1
   173a4:	02000513          	li	a0,32
   173a8:	00078863          	beqz	a5,173b8 <__lo0bits+0x9c>
   173ac:	0017071b          	addiw	a4,a4,1
   173b0:	00f6a023          	sw	a5,0(a3)
   173b4:	00070513          	mv	a0,a4
   173b8:	00008067          	ret
   173bc:	0017d79b          	srliw	a5,a5,0x1
   173c0:	00f6a023          	sw	a5,0(a3)
   173c4:	00100513          	li	a0,1
   173c8:	00008067          	ret

00000000000173cc <__i2b>:
   173cc:	ff010113          	addi	sp,sp,-16
   173d0:	00813023          	sd	s0,0(sp)
   173d4:	00058413          	mv	s0,a1
   173d8:	00100593          	li	a1,1
   173dc:	00113423          	sd	ra,8(sp)
   173e0:	bb5ff0ef          	jal	16f94 <_Balloc>
   173e4:	00813083          	ld	ra,8(sp)
   173e8:	00100713          	li	a4,1
   173ec:	00852c23          	sw	s0,24(a0)
   173f0:	00e52a23          	sw	a4,20(a0)
   173f4:	00013403          	ld	s0,0(sp)
   173f8:	01010113          	addi	sp,sp,16
   173fc:	00008067          	ret

0000000000017400 <__multiply>:
   17400:	fd010113          	addi	sp,sp,-48
   17404:	01313423          	sd	s3,8(sp)
   17408:	01413023          	sd	s4,0(sp)
   1740c:	0145a983          	lw	s3,20(a1)
   17410:	01462a03          	lw	s4,20(a2)
   17414:	00913c23          	sd	s1,24(sp)
   17418:	01213823          	sd	s2,16(sp)
   1741c:	02113423          	sd	ra,40(sp)
   17420:	02813023          	sd	s0,32(sp)
   17424:	00058913          	mv	s2,a1
   17428:	00060493          	mv	s1,a2
   1742c:	0149dc63          	ble	s4,s3,17444 <__multiply+0x44>
   17430:	00098713          	mv	a4,s3
   17434:	00060913          	mv	s2,a2
   17438:	000a0993          	mv	s3,s4
   1743c:	00058493          	mv	s1,a1
   17440:	00070a13          	mv	s4,a4
   17444:	00c92783          	lw	a5,12(s2)
   17448:	00892583          	lw	a1,8(s2)
   1744c:	0149843b          	addw	s0,s3,s4
   17450:	0087a7b3          	slt	a5,a5,s0
   17454:	00f585bb          	addw	a1,a1,a5
   17458:	b3dff0ef          	jal	16f94 <_Balloc>
   1745c:	00040893          	mv	a7,s0
   17460:	01850313          	addi	t1,a0,24
   17464:	00289893          	slli	a7,a7,0x2
   17468:	011308b3          	add	a7,t1,a7
   1746c:	00030793          	mv	a5,t1
   17470:	01137863          	bleu	a7,t1,17480 <__multiply+0x80>
   17474:	0007a023          	sw	zero,0(a5)
   17478:	00478793          	addi	a5,a5,4
   1747c:	ff17ece3          	bltu	a5,a7,17474 <__multiply+0x74>
   17480:	01848613          	addi	a2,s1,24
   17484:	002a1e13          	slli	t3,s4,0x2
   17488:	01890e93          	addi	t4,s2,24
   1748c:	00299813          	slli	a6,s3,0x2
   17490:	000105b7          	lui	a1,0x10
   17494:	01c60e33          	add	t3,a2,t3
   17498:	010e8833          	add	a6,t4,a6
   1749c:	fff5859b          	addiw	a1,a1,-1
   174a0:	11c67463          	bleu	t3,a2,175a8 <__multiply+0x1a8>
   174a4:	00062383          	lw	t2,0(a2)
   174a8:	00b3f4b3          	and	s1,t2,a1
   174ac:	06048a63          	beqz	s1,17520 <__multiply+0x120>
   174b0:	00030293          	mv	t0,t1
   174b4:	000e8f93          	mv	t6,t4
   174b8:	00000793          	li	a5,0
   174bc:	0080006f          	j	174c4 <__multiply+0xc4>
   174c0:	00038293          	mv	t0,t2
   174c4:	000fa683          	lw	a3,0(t6)
   174c8:	0002af03          	lw	t5,0(t0) # 16f64 <memset+0xb4>
   174cc:	00428393          	addi	t2,t0,4
   174d0:	00b6f733          	and	a4,a3,a1
   174d4:	0297073b          	mulw	a4,a4,s1
   174d8:	0106d69b          	srliw	a3,a3,0x10
   174dc:	00bf7933          	and	s2,t5,a1
   174e0:	010f5f1b          	srliw	t5,t5,0x10
   174e4:	004f8f93          	addi	t6,t6,4
   174e8:	029686bb          	mulw	a3,a3,s1
   174ec:	0127073b          	addw	a4,a4,s2
   174f0:	00f707bb          	addw	a5,a4,a5
   174f4:	0107d71b          	srliw	a4,a5,0x10
   174f8:	00b7f7b3          	and	a5,a5,a1
   174fc:	01e686bb          	addw	a3,a3,t5
   17500:	00e6873b          	addw	a4,a3,a4
   17504:	0107169b          	slliw	a3,a4,0x10
   17508:	00f6e7b3          	or	a5,a3,a5
   1750c:	fef3ae23          	sw	a5,-4(t2)
   17510:	0107579b          	srliw	a5,a4,0x10
   17514:	fb0fe6e3          	bltu	t6,a6,174c0 <__multiply+0xc0>
   17518:	00f2a223          	sw	a5,4(t0)
   1751c:	00062383          	lw	t2,0(a2)
   17520:	0103d39b          	srliw	t2,t2,0x10
   17524:	06038c63          	beqz	t2,1759c <__multiply+0x19c>
   17528:	00032783          	lw	a5,0(t1)
   1752c:	00030293          	mv	t0,t1
   17530:	000e8f93          	mv	t6,t4
   17534:	00078f13          	mv	t5,a5
   17538:	00000693          	li	a3,0
   1753c:	0080006f          	j	17544 <__multiply+0x144>
   17540:	00048293          	mv	t0,s1
   17544:	000fa703          	lw	a4,0(t6)
   17548:	010f5f1b          	srliw	t5,t5,0x10
   1754c:	00b7f7b3          	and	a5,a5,a1
   17550:	00b77733          	and	a4,a4,a1
   17554:	0277073b          	mulw	a4,a4,t2
   17558:	00428493          	addi	s1,t0,4
   1755c:	004f8f93          	addi	t6,t6,4
   17560:	01e7073b          	addw	a4,a4,t5
   17564:	00d706bb          	addw	a3,a4,a3
   17568:	0106971b          	slliw	a4,a3,0x10
   1756c:	00f767b3          	or	a5,a4,a5
   17570:	fef4ae23          	sw	a5,-4(s1)
   17574:	ffefd703          	lhu	a4,-2(t6)
   17578:	0042af03          	lw	t5,4(t0)
   1757c:	0106d69b          	srliw	a3,a3,0x10
   17580:	0277073b          	mulw	a4,a4,t2
   17584:	00bf77b3          	and	a5,t5,a1
   17588:	00f707bb          	addw	a5,a4,a5
   1758c:	00d787bb          	addw	a5,a5,a3
   17590:	0107d69b          	srliw	a3,a5,0x10
   17594:	fb0fe6e3          	bltu	t6,a6,17540 <__multiply+0x140>
   17598:	00f2a223          	sw	a5,4(t0)
   1759c:	00460613          	addi	a2,a2,4
   175a0:	00430313          	addi	t1,t1,4
   175a4:	f1c660e3          	bltu	a2,t3,174a4 <__multiply+0xa4>
   175a8:	02805463          	blez	s0,175d0 <__multiply+0x1d0>
   175ac:	ffc8a783          	lw	a5,-4(a7)
   175b0:	ffc88893          	addi	a7,a7,-4
   175b4:	00078863          	beqz	a5,175c4 <__multiply+0x1c4>
   175b8:	0180006f          	j	175d0 <__multiply+0x1d0>
   175bc:	0008a783          	lw	a5,0(a7)
   175c0:	00079863          	bnez	a5,175d0 <__multiply+0x1d0>
   175c4:	fff4041b          	addiw	s0,s0,-1
   175c8:	ffc88893          	addi	a7,a7,-4
   175cc:	fe0418e3          	bnez	s0,175bc <__multiply+0x1bc>
   175d0:	02813083          	ld	ra,40(sp)
   175d4:	00852a23          	sw	s0,20(a0)
   175d8:	01813483          	ld	s1,24(sp)
   175dc:	02013403          	ld	s0,32(sp)
   175e0:	01013903          	ld	s2,16(sp)
   175e4:	00813983          	ld	s3,8(sp)
   175e8:	00013a03          	ld	s4,0(sp)
   175ec:	03010113          	addi	sp,sp,48
   175f0:	00008067          	ret

00000000000175f4 <__pow5mult>:
   175f4:	fd010113          	addi	sp,sp,-48
   175f8:	02813023          	sd	s0,32(sp)
   175fc:	01213823          	sd	s2,16(sp)
   17600:	01313423          	sd	s3,8(sp)
   17604:	02113423          	sd	ra,40(sp)
   17608:	00913c23          	sd	s1,24(sp)
   1760c:	00367793          	andi	a5,a2,3
   17610:	00060413          	mv	s0,a2
   17614:	00050993          	mv	s3,a0
   17618:	00058913          	mv	s2,a1
   1761c:	0a079e63          	bnez	a5,176d8 <__pow5mult+0xe4>
   17620:	4024541b          	sraiw	s0,s0,0x2
   17624:	06040663          	beqz	s0,17690 <__pow5mult+0x9c>
   17628:	0709b483          	ld	s1,112(s3)
   1762c:	0c048a63          	beqz	s1,17700 <__pow5mult+0x10c>
   17630:	00147793          	andi	a5,s0,1
   17634:	02079063          	bnez	a5,17654 <__pow5mult+0x60>
   17638:	4014541b          	sraiw	s0,s0,0x1
   1763c:	04040a63          	beqz	s0,17690 <__pow5mult+0x9c>
   17640:	0004b503          	ld	a0,0(s1)
   17644:	06050663          	beqz	a0,176b0 <__pow5mult+0xbc>
   17648:	00050493          	mv	s1,a0
   1764c:	00147793          	andi	a5,s0,1
   17650:	fe0784e3          	beqz	a5,17638 <__pow5mult+0x44>
   17654:	00048613          	mv	a2,s1
   17658:	00090593          	mv	a1,s2
   1765c:	00098513          	mv	a0,s3
   17660:	da1ff0ef          	jal	17400 <__multiply>
   17664:	06090663          	beqz	s2,176d0 <__pow5mult+0xdc>
   17668:	00892783          	lw	a5,8(s2)
   1766c:	0789b703          	ld	a4,120(s3)
   17670:	4014541b          	sraiw	s0,s0,0x1
   17674:	00379793          	slli	a5,a5,0x3
   17678:	00f707b3          	add	a5,a4,a5
   1767c:	0007b703          	ld	a4,0(a5)
   17680:	00e93023          	sd	a4,0(s2)
   17684:	0127b023          	sd	s2,0(a5)
   17688:	00050913          	mv	s2,a0
   1768c:	fa041ae3          	bnez	s0,17640 <__pow5mult+0x4c>
   17690:	02813083          	ld	ra,40(sp)
   17694:	00090513          	mv	a0,s2
   17698:	02013403          	ld	s0,32(sp)
   1769c:	01813483          	ld	s1,24(sp)
   176a0:	01013903          	ld	s2,16(sp)
   176a4:	00813983          	ld	s3,8(sp)
   176a8:	03010113          	addi	sp,sp,48
   176ac:	00008067          	ret
   176b0:	00048613          	mv	a2,s1
   176b4:	00048593          	mv	a1,s1
   176b8:	00098513          	mv	a0,s3
   176bc:	d45ff0ef          	jal	17400 <__multiply>
   176c0:	00a4b023          	sd	a0,0(s1)
   176c4:	00053023          	sd	zero,0(a0)
   176c8:	00050493          	mv	s1,a0
   176cc:	f81ff06f          	j	1764c <__pow5mult+0x58>
   176d0:	00050913          	mv	s2,a0
   176d4:	f65ff06f          	j	17638 <__pow5mult+0x44>
   176d8:	fff7879b          	addiw	a5,a5,-1
   176dc:	0001b737          	lui	a4,0x1b
   176e0:	1f070713          	addi	a4,a4,496 # 1b1f0 <p05.2568>
   176e4:	00279793          	slli	a5,a5,0x2
   176e8:	00f707b3          	add	a5,a4,a5
   176ec:	0007a603          	lw	a2,0(a5)
   176f0:	00000693          	li	a3,0
   176f4:	971ff0ef          	jal	17064 <__multadd>
   176f8:	00050913          	mv	s2,a0
   176fc:	f25ff06f          	j	17620 <__pow5mult+0x2c>
   17700:	00100593          	li	a1,1
   17704:	00098513          	mv	a0,s3
   17708:	88dff0ef          	jal	16f94 <_Balloc>
   1770c:	27100793          	li	a5,625
   17710:	00f52c23          	sw	a5,24(a0)
   17714:	00100793          	li	a5,1
   17718:	00f52a23          	sw	a5,20(a0)
   1771c:	06a9b823          	sd	a0,112(s3)
   17720:	00050493          	mv	s1,a0
   17724:	00053023          	sd	zero,0(a0)
   17728:	f09ff06f          	j	17630 <__pow5mult+0x3c>

000000000001772c <__lshift>:
   1772c:	fc010113          	addi	sp,sp,-64
   17730:	01513423          	sd	s5,8(sp)
   17734:	0145aa83          	lw	s5,20(a1) # 10014 <_ftext+0x14>
   17738:	02813823          	sd	s0,48(sp)
   1773c:	00c5a783          	lw	a5,12(a1)
   17740:	4056541b          	sraiw	s0,a2,0x5
   17744:	01540abb          	addw	s5,s0,s5
   17748:	02913423          	sd	s1,40(sp)
   1774c:	03213023          	sd	s2,32(sp)
   17750:	01313c23          	sd	s3,24(sp)
   17754:	01413823          	sd	s4,16(sp)
   17758:	02113c23          	sd	ra,56(sp)
   1775c:	001a849b          	addiw	s1,s5,1
   17760:	00058913          	mv	s2,a1
   17764:	00060993          	mv	s3,a2
   17768:	00050a13          	mv	s4,a0
   1776c:	0085a583          	lw	a1,8(a1)
   17770:	0097d863          	ble	s1,a5,17780 <__lshift+0x54>
   17774:	0017979b          	slliw	a5,a5,0x1
   17778:	0015859b          	addiw	a1,a1,1
   1777c:	fe97cce3          	blt	a5,s1,17774 <__lshift+0x48>
   17780:	000a0513          	mv	a0,s4
   17784:	811ff0ef          	jal	16f94 <_Balloc>
   17788:	01850793          	addi	a5,a0,24
   1778c:	0e805c63          	blez	s0,17884 <__lshift+0x158>
   17790:	fff4071b          	addiw	a4,s0,-1
   17794:	02071713          	slli	a4,a4,0x20
   17798:	02075713          	srli	a4,a4,0x20
   1779c:	00170713          	addi	a4,a4,1
   177a0:	00271713          	slli	a4,a4,0x2
   177a4:	00e78733          	add	a4,a5,a4
   177a8:	00478793          	addi	a5,a5,4
   177ac:	fe07ae23          	sw	zero,-4(a5)
   177b0:	fee79ce3          	bne	a5,a4,177a8 <__lshift+0x7c>
   177b4:	01492883          	lw	a7,20(s2)
   177b8:	01890793          	addi	a5,s2,24
   177bc:	01f9f613          	andi	a2,s3,31
   177c0:	00289893          	slli	a7,a7,0x2
   177c4:	011788b3          	add	a7,a5,a7
   177c8:	08060863          	beqz	a2,17858 <__lshift+0x12c>
   177cc:	02000313          	li	t1,32
   177d0:	40c3033b          	subw	t1,t1,a2
   177d4:	00000693          	li	a3,0
   177d8:	0080006f          	j	177e0 <__lshift+0xb4>
   177dc:	00080713          	mv	a4,a6
   177e0:	0007a583          	lw	a1,0(a5)
   177e4:	00470813          	addi	a6,a4,4
   177e8:	00478793          	addi	a5,a5,4
   177ec:	00c595bb          	sllw	a1,a1,a2
   177f0:	00d5e6b3          	or	a3,a1,a3
   177f4:	fed82e23          	sw	a3,-4(a6) # fffc <_ftext-0x4>
   177f8:	ffc7a683          	lw	a3,-4(a5)
   177fc:	0066d6bb          	srlw	a3,a3,t1
   17800:	fd17eee3          	bltu	a5,a7,177dc <__lshift+0xb0>
   17804:	00d72223          	sw	a3,4(a4)
   17808:	00068463          	beqz	a3,17810 <__lshift+0xe4>
   1780c:	002a849b          	addiw	s1,s5,2
   17810:	00892783          	lw	a5,8(s2)
   17814:	078a3703          	ld	a4,120(s4)
   17818:	fff4849b          	addiw	s1,s1,-1
   1781c:	00379793          	slli	a5,a5,0x3
   17820:	00f707b3          	add	a5,a4,a5
   17824:	0007b703          	ld	a4,0(a5)
   17828:	03813083          	ld	ra,56(sp)
   1782c:	00952a23          	sw	s1,20(a0)
   17830:	00e93023          	sd	a4,0(s2)
   17834:	0127b023          	sd	s2,0(a5)
   17838:	03013403          	ld	s0,48(sp)
   1783c:	02813483          	ld	s1,40(sp)
   17840:	02013903          	ld	s2,32(sp)
   17844:	01813983          	ld	s3,24(sp)
   17848:	01013a03          	ld	s4,16(sp)
   1784c:	00813a83          	ld	s5,8(sp)
   17850:	04010113          	addi	sp,sp,64
   17854:	00008067          	ret
   17858:	00478793          	addi	a5,a5,4
   1785c:	ffc7a683          	lw	a3,-4(a5)
   17860:	00470713          	addi	a4,a4,4
   17864:	fed72e23          	sw	a3,-4(a4)
   17868:	fb17f4e3          	bleu	a7,a5,17810 <__lshift+0xe4>
   1786c:	00478793          	addi	a5,a5,4
   17870:	ffc7a683          	lw	a3,-4(a5)
   17874:	00470713          	addi	a4,a4,4
   17878:	fed72e23          	sw	a3,-4(a4)
   1787c:	fd17eee3          	bltu	a5,a7,17858 <__lshift+0x12c>
   17880:	f91ff06f          	j	17810 <__lshift+0xe4>
   17884:	00078713          	mv	a4,a5
   17888:	f2dff06f          	j	177b4 <__lshift+0x88>

000000000001788c <__mcmp>:
   1788c:	01452783          	lw	a5,20(a0)
   17890:	0145a703          	lw	a4,20(a1)
   17894:	40e787bb          	subw	a5,a5,a4
   17898:	04079263          	bnez	a5,178dc <__mcmp+0x50>
   1789c:	00271713          	slli	a4,a4,0x2
   178a0:	01850513          	addi	a0,a0,24
   178a4:	01858593          	addi	a1,a1,24
   178a8:	00e507b3          	add	a5,a0,a4
   178ac:	00e585b3          	add	a1,a1,a4
   178b0:	0080006f          	j	178b8 <__mcmp+0x2c>
   178b4:	02f57863          	bleu	a5,a0,178e4 <__mcmp+0x58>
   178b8:	ffc78793          	addi	a5,a5,-4
   178bc:	ffc58593          	addi	a1,a1,-4
   178c0:	0007a703          	lw	a4,0(a5)
   178c4:	0005a683          	lw	a3,0(a1)
   178c8:	fed706e3          	beq	a4,a3,178b4 <__mcmp+0x28>
   178cc:	00d737b3          	sltu	a5,a4,a3
   178d0:	40f007bb          	negw	a5,a5
   178d4:	0017e513          	ori	a0,a5,1
   178d8:	00008067          	ret
   178dc:	00078513          	mv	a0,a5
   178e0:	00008067          	ret
   178e4:	00000513          	li	a0,0
   178e8:	00008067          	ret

00000000000178ec <__mdiff>:
   178ec:	0145a703          	lw	a4,20(a1)
   178f0:	01462783          	lw	a5,20(a2)
   178f4:	fd010113          	addi	sp,sp,-48
   178f8:	01213823          	sd	s2,16(sp)
   178fc:	01313423          	sd	s3,8(sp)
   17900:	02113423          	sd	ra,40(sp)
   17904:	02813023          	sd	s0,32(sp)
   17908:	00913c23          	sd	s1,24(sp)
   1790c:	01413023          	sd	s4,0(sp)
   17910:	40f7073b          	subw	a4,a4,a5
   17914:	00058913          	mv	s2,a1
   17918:	00060993          	mv	s3,a2
   1791c:	04071863          	bnez	a4,1796c <__mdiff+0x80>
   17920:	00279713          	slli	a4,a5,0x2
   17924:	01858813          	addi	a6,a1,24
   17928:	01860413          	addi	s0,a2,24
   1792c:	00e807b3          	add	a5,a6,a4
   17930:	00e40733          	add	a4,s0,a4
   17934:	0080006f          	j	1793c <__mdiff+0x50>
   17938:	16f87263          	bleu	a5,a6,17a9c <__mdiff+0x1b0>
   1793c:	ffc78793          	addi	a5,a5,-4
   17940:	ffc70713          	addi	a4,a4,-4
   17944:	0007a583          	lw	a1,0(a5)
   17948:	00072683          	lw	a3,0(a4)
   1794c:	fed586e3          	beq	a1,a3,17938 <__mdiff+0x4c>
   17950:	18d5f063          	bleu	a3,a1,17ad0 <__mdiff+0x1e4>
   17954:	00090793          	mv	a5,s2
   17958:	00080493          	mv	s1,a6
   1795c:	00098913          	mv	s2,s3
   17960:	00100a13          	li	s4,1
   17964:	00078993          	mv	s3,a5
   17968:	0140006f          	j	1797c <__mdiff+0x90>
   1796c:	16074a63          	bltz	a4,17ae0 <__mdiff+0x1f4>
   17970:	01860493          	addi	s1,a2,24
   17974:	01858413          	addi	s0,a1,24
   17978:	00000a13          	li	s4,0
   1797c:	00892583          	lw	a1,8(s2)
   17980:	e14ff0ef          	jal	16f94 <_Balloc>
   17984:	01492e03          	lw	t3,20(s2)
   17988:	0149af03          	lw	t5,20(s3)
   1798c:	00010337          	lui	t1,0x10
   17990:	002e1e93          	slli	t4,t3,0x2
   17994:	002f1f13          	slli	t5,t5,0x2
   17998:	01452823          	sw	s4,16(a0)
   1799c:	01d40eb3          	add	t4,s0,t4
   179a0:	01e48f33          	add	t5,s1,t5
   179a4:	01850813          	addi	a6,a0,24
   179a8:	00000693          	li	a3,0
   179ac:	fff3031b          	addiw	t1,t1,-1
   179b0:	00042583          	lw	a1,0(s0)
   179b4:	0004a883          	lw	a7,0(s1)
   179b8:	00480813          	addi	a6,a6,4
   179bc:	0065f633          	and	a2,a1,t1
   179c0:	00d606bb          	addw	a3,a2,a3
   179c4:	0068f733          	and	a4,a7,t1
   179c8:	40e6873b          	subw	a4,a3,a4
   179cc:	0105d59b          	srliw	a1,a1,0x10
   179d0:	0108d69b          	srliw	a3,a7,0x10
   179d4:	40d585bb          	subw	a1,a1,a3
   179d8:	4107569b          	sraiw	a3,a4,0x10
   179dc:	00d586bb          	addw	a3,a1,a3
   179e0:	0106979b          	slliw	a5,a3,0x10
   179e4:	00677733          	and	a4,a4,t1
   179e8:	00e7e7b3          	or	a5,a5,a4
   179ec:	00448493          	addi	s1,s1,4
   179f0:	fef82e23          	sw	a5,-4(a6)
   179f4:	00440413          	addi	s0,s0,4
   179f8:	4106d69b          	sraiw	a3,a3,0x10
   179fc:	fbe4eae3          	bltu	s1,t5,179b0 <__mdiff+0xc4>
   17a00:	07d47063          	bleu	t4,s0,17a60 <__mdiff+0x174>
   17a04:	00010f37          	lui	t5,0x10
   17a08:	00080313          	mv	t1,a6
   17a0c:	00040893          	mv	a7,s0
   17a10:	ffff0f1b          	addiw	t5,t5,-1
   17a14:	0008a583          	lw	a1,0(a7)
   17a18:	00430313          	addi	t1,t1,4 # 10004 <_ftext+0x4>
   17a1c:	00488893          	addi	a7,a7,4
   17a20:	01e5f633          	and	a2,a1,t5
   17a24:	00d606bb          	addw	a3,a2,a3
   17a28:	4106d71b          	sraiw	a4,a3,0x10
   17a2c:	0105d59b          	srliw	a1,a1,0x10
   17a30:	00e5873b          	addw	a4,a1,a4
   17a34:	01e6f6b3          	and	a3,a3,t5
   17a38:	0107179b          	slliw	a5,a4,0x10
   17a3c:	00d7e7b3          	or	a5,a5,a3
   17a40:	fef32e23          	sw	a5,-4(t1)
   17a44:	4107569b          	sraiw	a3,a4,0x10
   17a48:	fdd8e6e3          	bltu	a7,t4,17a14 <__mdiff+0x128>
   17a4c:	fff44413          	not	s0,s0
   17a50:	01d40eb3          	add	t4,s0,t4
   17a54:	ffcefe93          	andi	t4,t4,-4
   17a58:	004e8e93          	addi	t4,t4,4
   17a5c:	01d80833          	add	a6,a6,t4
   17a60:	ffc80813          	addi	a6,a6,-4
   17a64:	00079a63          	bnez	a5,17a78 <__mdiff+0x18c>
   17a68:	ffc80813          	addi	a6,a6,-4
   17a6c:	00082783          	lw	a5,0(a6)
   17a70:	fffe0e1b          	addiw	t3,t3,-1
   17a74:	fe078ae3          	beqz	a5,17a68 <__mdiff+0x17c>
   17a78:	02813083          	ld	ra,40(sp)
   17a7c:	02013403          	ld	s0,32(sp)
   17a80:	01813483          	ld	s1,24(sp)
   17a84:	01013903          	ld	s2,16(sp)
   17a88:	00813983          	ld	s3,8(sp)
   17a8c:	00013a03          	ld	s4,0(sp)
   17a90:	01c52a23          	sw	t3,20(a0)
   17a94:	03010113          	addi	sp,sp,48
   17a98:	00008067          	ret
   17a9c:	00000593          	li	a1,0
   17aa0:	cf4ff0ef          	jal	16f94 <_Balloc>
   17aa4:	02813083          	ld	ra,40(sp)
   17aa8:	00100793          	li	a5,1
   17aac:	02013403          	ld	s0,32(sp)
   17ab0:	01813483          	ld	s1,24(sp)
   17ab4:	01013903          	ld	s2,16(sp)
   17ab8:	00813983          	ld	s3,8(sp)
   17abc:	00013a03          	ld	s4,0(sp)
   17ac0:	00f52a23          	sw	a5,20(a0)
   17ac4:	00052c23          	sw	zero,24(a0)
   17ac8:	03010113          	addi	sp,sp,48
   17acc:	00008067          	ret
   17ad0:	00040493          	mv	s1,s0
   17ad4:	00000a13          	li	s4,0
   17ad8:	00080413          	mv	s0,a6
   17adc:	ea1ff06f          	j	1797c <__mdiff+0x90>
   17ae0:	00090793          	mv	a5,s2
   17ae4:	01890493          	addi	s1,s2,24
   17ae8:	01898413          	addi	s0,s3,24
   17aec:	00098913          	mv	s2,s3
   17af0:	00100a13          	li	s4,1
   17af4:	00078993          	mv	s3,a5
   17af8:	e85ff06f          	j	1797c <__mdiff+0x90>

0000000000017afc <__ulp>:
   17afc:	e20507d3          	fmv.x.d	a5,fa0
   17b00:	7ff00737          	lui	a4,0x7ff00
   17b04:	4207d793          	srai	a5,a5,0x20
   17b08:	00e7f7b3          	and	a5,a5,a4
   17b0c:	fcc00737          	lui	a4,0xfcc00
   17b10:	00e787bb          	addw	a5,a5,a4
   17b14:	00f05863          	blez	a5,17b24 <__ulp+0x28>
   17b18:	02079793          	slli	a5,a5,0x20
   17b1c:	f2078553          	fmv.d.x	fa0,a5
   17b20:	00008067          	ret
   17b24:	40f007bb          	negw	a5,a5
   17b28:	4147d79b          	sraiw	a5,a5,0x14
   17b2c:	01300713          	li	a4,19
   17b30:	04f75063          	ble	a5,a4,17b70 <__ulp+0x74>
   17b34:	fec7869b          	addiw	a3,a5,-20
   17b38:	01e00613          	li	a2,30
   17b3c:	00000793          	li	a5,0
   17b40:	00100713          	li	a4,1
   17b44:	00d64663          	blt	a2,a3,17b50 <__ulp+0x54>
   17b48:	fff6c693          	not	a3,a3
   17b4c:	00d7173b          	sllw	a4,a4,a3
   17b50:	fff00693          	li	a3,-1
   17b54:	02069693          	slli	a3,a3,0x20
   17b58:	02071713          	slli	a4,a4,0x20
   17b5c:	02075713          	srli	a4,a4,0x20
   17b60:	00d7f7b3          	and	a5,a5,a3
   17b64:	00e7e7b3          	or	a5,a5,a4
   17b68:	f2078553          	fmv.d.x	fa0,a5
   17b6c:	00008067          	ret
   17b70:	00080737          	lui	a4,0x80
   17b74:	40f757bb          	sraw	a5,a4,a5
   17b78:	fa1ff06f          	j	17b18 <__ulp+0x1c>

0000000000017b7c <__b2d>:
   17b7c:	fd010113          	addi	sp,sp,-48
   17b80:	02813023          	sd	s0,32(sp)
   17b84:	01452403          	lw	s0,20(a0)
   17b88:	00913c23          	sd	s1,24(sp)
   17b8c:	01850493          	addi	s1,a0,24
   17b90:	00241413          	slli	s0,s0,0x2
   17b94:	00848433          	add	s0,s1,s0
   17b98:	01213823          	sd	s2,16(sp)
   17b9c:	ffc42903          	lw	s2,-4(s0)
   17ba0:	01313423          	sd	s3,8(sp)
   17ba4:	01413023          	sd	s4,0(sp)
   17ba8:	00090513          	mv	a0,s2
   17bac:	00058a13          	mv	s4,a1
   17bb0:	02113423          	sd	ra,40(sp)
   17bb4:	eecff0ef          	jal	172a0 <__hi0bits>
   17bb8:	02000793          	li	a5,32
   17bbc:	40a7873b          	subw	a4,a5,a0
   17bc0:	00ea2023          	sw	a4,0(s4)
   17bc4:	00a00713          	li	a4,10
   17bc8:	ffc40993          	addi	s3,s0,-4
   17bcc:	06a74a63          	blt	a4,a0,17c40 <__b2d+0xc4>
   17bd0:	00b00693          	li	a3,11
   17bd4:	40a686bb          	subw	a3,a3,a0
   17bd8:	3ff00737          	lui	a4,0x3ff00
   17bdc:	00d957bb          	srlw	a5,s2,a3
   17be0:	00e7e7b3          	or	a5,a5,a4
   17be4:	02079793          	slli	a5,a5,0x20
   17be8:	00000713          	li	a4,0
   17bec:	0134f663          	bleu	s3,s1,17bf8 <__b2d+0x7c>
   17bf0:	ff842703          	lw	a4,-8(s0)
   17bf4:	00d7573b          	srlw	a4,a4,a3
   17bf8:	0155051b          	addiw	a0,a0,21
   17bfc:	00a9153b          	sllw	a0,s2,a0
   17c00:	00e56533          	or	a0,a0,a4
   17c04:	fff00713          	li	a4,-1
   17c08:	02051513          	slli	a0,a0,0x20
   17c0c:	02071713          	slli	a4,a4,0x20
   17c10:	02055513          	srli	a0,a0,0x20
   17c14:	00e7f7b3          	and	a5,a5,a4
   17c18:	00a7e7b3          	or	a5,a5,a0
   17c1c:	02813083          	ld	ra,40(sp)
   17c20:	f2078553          	fmv.d.x	fa0,a5
   17c24:	02013403          	ld	s0,32(sp)
   17c28:	01813483          	ld	s1,24(sp)
   17c2c:	01013903          	ld	s2,16(sp)
   17c30:	00813983          	ld	s3,8(sp)
   17c34:	00013a03          	ld	s4,0(sp)
   17c38:	03010113          	addi	sp,sp,48
   17c3c:	00008067          	ret
   17c40:	ff55051b          	addiw	a0,a0,-11
   17c44:	0534f263          	bleu	s3,s1,17c88 <__b2d+0x10c>
   17c48:	ff842683          	lw	a3,-8(s0)
   17c4c:	04050263          	beqz	a0,17c90 <__b2d+0x114>
   17c50:	40a7863b          	subw	a2,a5,a0
   17c54:	00a917bb          	sllw	a5,s2,a0
   17c58:	3ff00937          	lui	s2,0x3ff00
   17c5c:	00c6d73b          	srlw	a4,a3,a2
   17c60:	0127e7b3          	or	a5,a5,s2
   17c64:	00e7e7b3          	or	a5,a5,a4
   17c68:	ff840713          	addi	a4,s0,-8
   17c6c:	02079793          	slli	a5,a5,0x20
   17c70:	04e4fa63          	bleu	a4,s1,17cc4 <__b2d+0x148>
   17c74:	ff442703          	lw	a4,-12(s0)
   17c78:	00a6953b          	sllw	a0,a3,a0
   17c7c:	00c756bb          	srlw	a3,a4,a2
   17c80:	00a6e533          	or	a0,a3,a0
   17c84:	f81ff06f          	j	17c04 <__b2d+0x88>
   17c88:	00000693          	li	a3,0
   17c8c:	02051063          	bnez	a0,17cac <__b2d+0x130>
   17c90:	3ff00737          	lui	a4,0x3ff00
   17c94:	00e967b3          	or	a5,s2,a4
   17c98:	02069693          	slli	a3,a3,0x20
   17c9c:	0206d693          	srli	a3,a3,0x20
   17ca0:	02079793          	slli	a5,a5,0x20
   17ca4:	00d7e7b3          	or	a5,a5,a3
   17ca8:	f75ff06f          	j	17c1c <__b2d+0xa0>
   17cac:	00a917bb          	sllw	a5,s2,a0
   17cb0:	3ff00737          	lui	a4,0x3ff00
   17cb4:	00e7e7b3          	or	a5,a5,a4
   17cb8:	02079793          	slli	a5,a5,0x20
   17cbc:	00000513          	li	a0,0
   17cc0:	f45ff06f          	j	17c04 <__b2d+0x88>
   17cc4:	00a6953b          	sllw	a0,a3,a0
   17cc8:	f3dff06f          	j	17c04 <__b2d+0x88>

0000000000017ccc <__d2b>:
   17ccc:	fc010113          	addi	sp,sp,-64
   17cd0:	02813823          	sd	s0,48(sp)
   17cd4:	e2058453          	fmv.x.d	s0,fa1
   17cd8:	00100593          	li	a1,1
   17cdc:	02913423          	sd	s1,40(sp)
   17ce0:	03213023          	sd	s2,32(sp)
   17ce4:	01313c23          	sd	s3,24(sp)
   17ce8:	01413823          	sd	s4,16(sp)
   17cec:	00068993          	mv	s3,a3
   17cf0:	02113c23          	sd	ra,56(sp)
   17cf4:	00060a13          	mv	s4,a2
   17cf8:	a9cff0ef          	jal	16f94 <_Balloc>
   17cfc:	42045793          	srai	a5,s0,0x20
   17d00:	02179493          	slli	s1,a5,0x21
   17d04:	001006b7          	lui	a3,0x100
   17d08:	fff6871b          	addiw	a4,a3,-1
   17d0c:	0354d493          	srli	s1,s1,0x35
   17d10:	00050913          	mv	s2,a0
   17d14:	00e7f7b3          	and	a5,a5,a4
   17d18:	00048463          	beqz	s1,17d20 <__d2b+0x54>
   17d1c:	00d7e7b3          	or	a5,a5,a3
   17d20:	00f12623          	sw	a5,12(sp)
   17d24:	0004041b          	sext.w	s0,s0
   17d28:	08040063          	beqz	s0,17da8 <__d2b+0xdc>
   17d2c:	00810513          	addi	a0,sp,8
   17d30:	00812423          	sw	s0,8(sp)
   17d34:	de8ff0ef          	jal	1731c <__lo0bits>
   17d38:	00c12783          	lw	a5,12(sp)
   17d3c:	0a051463          	bnez	a0,17de4 <__d2b+0x118>
   17d40:	00812703          	lw	a4,8(sp)
   17d44:	00e92c23          	sw	a4,24(s2) # 3ff00018 <_gp+0x3fee2118>
   17d48:	0017b413          	seqz	s0,a5
   17d4c:	00200713          	li	a4,2
   17d50:	4087043b          	subw	s0,a4,s0
   17d54:	00f92e23          	sw	a5,28(s2)
   17d58:	00892a23          	sw	s0,20(s2)
   17d5c:	06049663          	bnez	s1,17dc8 <__d2b+0xfc>
   17d60:	bce5051b          	addiw	a0,a0,-1074
   17d64:	00241793          	slli	a5,s0,0x2
   17d68:	00aa2023          	sw	a0,0(s4)
   17d6c:	00f907b3          	add	a5,s2,a5
   17d70:	0147a503          	lw	a0,20(a5)
   17d74:	0054141b          	slliw	s0,s0,0x5
   17d78:	d28ff0ef          	jal	172a0 <__hi0bits>
   17d7c:	40a4053b          	subw	a0,s0,a0
   17d80:	00a9a023          	sw	a0,0(s3)
   17d84:	03813083          	ld	ra,56(sp)
   17d88:	00090513          	mv	a0,s2
   17d8c:	03013403          	ld	s0,48(sp)
   17d90:	02813483          	ld	s1,40(sp)
   17d94:	02013903          	ld	s2,32(sp)
   17d98:	01813983          	ld	s3,24(sp)
   17d9c:	01013a03          	ld	s4,16(sp)
   17da0:	04010113          	addi	sp,sp,64
   17da4:	00008067          	ret
   17da8:	00c10513          	addi	a0,sp,12
   17dac:	d70ff0ef          	jal	1731c <__lo0bits>
   17db0:	00c12783          	lw	a5,12(sp)
   17db4:	00100413          	li	s0,1
   17db8:	00892a23          	sw	s0,20(s2)
   17dbc:	00f92c23          	sw	a5,24(s2)
   17dc0:	0205051b          	addiw	a0,a0,32
   17dc4:	f8048ee3          	beqz	s1,17d60 <__d2b+0x94>
   17dc8:	bcd4849b          	addiw	s1,s1,-1075
   17dcc:	00a484bb          	addw	s1,s1,a0
   17dd0:	03500793          	li	a5,53
   17dd4:	009a2023          	sw	s1,0(s4)
   17dd8:	40a7853b          	subw	a0,a5,a0
   17ddc:	00a9a023          	sw	a0,0(s3)
   17de0:	fa5ff06f          	j	17d84 <__d2b+0xb8>
   17de4:	02000713          	li	a4,32
   17de8:	00812683          	lw	a3,8(sp)
   17dec:	40a7073b          	subw	a4,a4,a0
   17df0:	00e7973b          	sllw	a4,a5,a4
   17df4:	00d76733          	or	a4,a4,a3
   17df8:	00a7d7bb          	srlw	a5,a5,a0
   17dfc:	00e92c23          	sw	a4,24(s2)
   17e00:	00f12623          	sw	a5,12(sp)
   17e04:	f45ff06f          	j	17d48 <__d2b+0x7c>

0000000000017e08 <__ratio>:
   17e08:	fd010113          	addi	sp,sp,-48
   17e0c:	00913c23          	sd	s1,24(sp)
   17e10:	00058493          	mv	s1,a1
   17e14:	00810593          	addi	a1,sp,8
   17e18:	02113423          	sd	ra,40(sp)
   17e1c:	02813023          	sd	s0,32(sp)
   17e20:	01213823          	sd	s2,16(sp)
   17e24:	00050913          	mv	s2,a0
   17e28:	d55ff0ef          	jal	17b7c <__b2d>
   17e2c:	00c10593          	addi	a1,sp,12
   17e30:	00048513          	mv	a0,s1
   17e34:	e2050453          	fmv.x.d	s0,fa0
   17e38:	d45ff0ef          	jal	17b7c <__b2d>
   17e3c:	01492703          	lw	a4,20(s2)
   17e40:	0144a783          	lw	a5,20(s1)
   17e44:	00c12603          	lw	a2,12(sp)
   17e48:	e20506d3          	fmv.x.d	a3,fa0
   17e4c:	40f707bb          	subw	a5,a4,a5
   17e50:	0057971b          	slliw	a4,a5,0x5
   17e54:	00812783          	lw	a5,8(sp)
   17e58:	40c787bb          	subw	a5,a5,a2
   17e5c:	00f707bb          	addw	a5,a4,a5
   17e60:	04f05463          	blez	a5,17ea8 <__ratio+0xa0>
   17e64:	00040713          	mv	a4,s0
   17e68:	0147979b          	slliw	a5,a5,0x14
   17e6c:	42045413          	srai	s0,s0,0x20
   17e70:	00f407bb          	addw	a5,s0,a5
   17e74:	02071413          	slli	s0,a4,0x20
   17e78:	02079793          	slli	a5,a5,0x20
   17e7c:	02045413          	srli	s0,s0,0x20
   17e80:	00f46433          	or	s0,s0,a5
   17e84:	f20407d3          	fmv.d.x	fa5,s0
   17e88:	f2068753          	fmv.d.x	fa4,a3
   17e8c:	02813083          	ld	ra,40(sp)
   17e90:	02013403          	ld	s0,32(sp)
   17e94:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   17e98:	01813483          	ld	s1,24(sp)
   17e9c:	01013903          	ld	s2,16(sp)
   17ea0:	03010113          	addi	sp,sp,48
   17ea4:	00008067          	ret
   17ea8:	00068613          	mv	a2,a3
   17eac:	0147979b          	slliw	a5,a5,0x14
   17eb0:	4206d693          	srai	a3,a3,0x20
   17eb4:	40f687bb          	subw	a5,a3,a5
   17eb8:	02061693          	slli	a3,a2,0x20
   17ebc:	02079793          	slli	a5,a5,0x20
   17ec0:	0206d693          	srli	a3,a3,0x20
   17ec4:	00f6e6b3          	or	a3,a3,a5
   17ec8:	fbdff06f          	j	17e84 <__ratio+0x7c>

0000000000017ecc <_mprec_log10>:
   17ecc:	01700793          	li	a5,23
   17ed0:	02a7d263          	ble	a0,a5,17ef4 <_mprec_log10+0x28>
   17ed4:	0001d7b7          	lui	a5,0x1d
   17ed8:	7487b507          	fld	fa0,1864(a5) # 1d748 <__wctomb+0x18>
   17edc:	0001d7b7          	lui	a5,0x1d
   17ee0:	7987b787          	fld	fa5,1944(a5) # 1d798 <__wctomb+0x68>
   17ee4:	fff5051b          	addiw	a0,a0,-1
   17ee8:	12f57553          	fmul.d	fa0,fa0,fa5
   17eec:	fe051ce3          	bnez	a0,17ee4 <_mprec_log10+0x18>
   17ef0:	00008067          	ret
   17ef4:	0001b7b7          	lui	a5,0x1b
   17ef8:	1f078793          	addi	a5,a5,496 # 1b1f0 <p05.2568>
   17efc:	00351513          	slli	a0,a0,0x3
   17f00:	00a78533          	add	a0,a5,a0
   17f04:	01053507          	fld	fa0,16(a0)
   17f08:	00008067          	ret

0000000000017f0c <__copybits>:
   17f0c:	01462703          	lw	a4,20(a2)
   17f10:	fff5859b          	addiw	a1,a1,-1
   17f14:	4055d81b          	sraiw	a6,a1,0x5
   17f18:	00180813          	addi	a6,a6,1
   17f1c:	01860793          	addi	a5,a2,24
   17f20:	00271713          	slli	a4,a4,0x2
   17f24:	00281813          	slli	a6,a6,0x2
   17f28:	00e786b3          	add	a3,a5,a4
   17f2c:	01050833          	add	a6,a0,a6
   17f30:	02d7f863          	bleu	a3,a5,17f60 <__copybits+0x54>
   17f34:	00050713          	mv	a4,a0
   17f38:	00478793          	addi	a5,a5,4
   17f3c:	ffc7a583          	lw	a1,-4(a5)
   17f40:	00470713          	addi	a4,a4,4 # 3ff00004 <_gp+0x3fee2104>
   17f44:	feb72e23          	sw	a1,-4(a4)
   17f48:	fed7e8e3          	bltu	a5,a3,17f38 <__copybits+0x2c>
   17f4c:	40c687b3          	sub	a5,a3,a2
   17f50:	fe778793          	addi	a5,a5,-25
   17f54:	ffc7f793          	andi	a5,a5,-4
   17f58:	00478793          	addi	a5,a5,4
   17f5c:	00f50533          	add	a0,a0,a5
   17f60:	01057863          	bleu	a6,a0,17f70 <__copybits+0x64>
   17f64:	00450513          	addi	a0,a0,4
   17f68:	fe052e23          	sw	zero,-4(a0)
   17f6c:	ff056ce3          	bltu	a0,a6,17f64 <__copybits+0x58>
   17f70:	00008067          	ret

0000000000017f74 <__any_on>:
   17f74:	01452783          	lw	a5,20(a0)
   17f78:	4055d71b          	sraiw	a4,a1,0x5
   17f7c:	01850693          	addi	a3,a0,24
   17f80:	04e7c463          	blt	a5,a4,17fc8 <__any_on+0x54>
   17f84:	04f75063          	ble	a5,a4,17fc4 <__any_on+0x50>
   17f88:	00070793          	mv	a5,a4
   17f8c:	00279793          	slli	a5,a5,0x2
   17f90:	01f5f593          	andi	a1,a1,31
   17f94:	00f687b3          	add	a5,a3,a5
   17f98:	04059063          	bnez	a1,17fd8 <__any_on+0x64>
   17f9c:	04f6fa63          	bleu	a5,a3,17ff0 <__any_on+0x7c>
   17fa0:	ffc7a503          	lw	a0,-4(a5)
   17fa4:	ffc78793          	addi	a5,a5,-4
   17fa8:	00051a63          	bnez	a0,17fbc <__any_on+0x48>
   17fac:	02f6f463          	bleu	a5,a3,17fd4 <__any_on+0x60>
   17fb0:	ffc78793          	addi	a5,a5,-4
   17fb4:	0007a703          	lw	a4,0(a5)
   17fb8:	fe070ae3          	beqz	a4,17fac <__any_on+0x38>
   17fbc:	00100513          	li	a0,1
   17fc0:	00008067          	ret
   17fc4:	00070793          	mv	a5,a4
   17fc8:	00279793          	slli	a5,a5,0x2
   17fcc:	00f687b3          	add	a5,a3,a5
   17fd0:	fcdff06f          	j	17f9c <__any_on+0x28>
   17fd4:	00008067          	ret
   17fd8:	0007a603          	lw	a2,0(a5)
   17fdc:	00100513          	li	a0,1
   17fe0:	00b6573b          	srlw	a4,a2,a1
   17fe4:	00b715bb          	sllw	a1,a4,a1
   17fe8:	fab60ae3          	beq	a2,a1,17f9c <__any_on+0x28>
   17fec:	00008067          	ret
   17ff0:	00000513          	li	a0,0
   17ff4:	00008067          	ret

0000000000017ff8 <nanf>:
   17ff8:	0001d7b7          	lui	a5,0x1d
   17ffc:	7c07a507          	flw	fa0,1984(a5) # 1d7c0 <__wctomb+0x90>
   18000:	00008067          	ret

0000000000018004 <__fpclassifyd>:
   18004:	e20507d3          	fmv.x.d	a5,fa0
   18008:	00200513          	li	a0,2
   1800c:	4207d713          	srai	a4,a5,0x20
   18010:	0007879b          	sext.w	a5,a5
   18014:	00f766b3          	or	a3,a4,a5
   18018:	00069463          	bnez	a3,18020 <__fpclassifyd+0x1c>
   1801c:	00008067          	ret
   18020:	800006b7          	lui	a3,0x80000
   18024:	04d70863          	beq	a4,a3,18074 <__fpclassifyd+0x70>
   18028:	fff006b7          	lui	a3,0xfff00
   1802c:	00d706bb          	addw	a3,a4,a3
   18030:	7fe00637          	lui	a2,0x7fe00
   18034:	00400513          	li	a0,4
   18038:	fec6e2e3          	bltu	a3,a2,1801c <__fpclassifyd+0x18>
   1803c:	7ff006b7          	lui	a3,0x7ff00
   18040:	00d706bb          	addw	a3,a4,a3
   18044:	fcc6ece3          	bltu	a3,a2,1801c <__fpclassifyd+0x18>
   18048:	800006b7          	lui	a3,0x80000
   1804c:	fff6c693          	not	a3,a3
   18050:	00d77733          	and	a4,a4,a3
   18054:	001006b7          	lui	a3,0x100
   18058:	00300513          	li	a0,3
   1805c:	fcd760e3          	bltu	a4,a3,1801c <__fpclassifyd+0x18>
   18060:	7ff006b7          	lui	a3,0x7ff00
   18064:	00000513          	li	a0,0
   18068:	fad71ae3          	bne	a4,a3,1801c <__fpclassifyd+0x18>
   1806c:	0017b513          	seqz	a0,a5
   18070:	00008067          	ret
   18074:	fc079ae3          	bnez	a5,18048 <__fpclassifyd+0x44>
   18078:	00008067          	ret

000000000001807c <__sread>:
   1807c:	01259503          	lh	a0,18(a1)
   18080:	ff010113          	addi	sp,sp,-16
   18084:	00813023          	sd	s0,0(sp)
   18088:	00058413          	mv	s0,a1
   1808c:	00060593          	mv	a1,a2
   18090:	00068613          	mv	a2,a3
   18094:	00113423          	sd	ra,8(sp)
   18098:	1a5020ef          	jal	1aa3c <read>
   1809c:	02054063          	bltz	a0,180bc <__sread+0x40>
   180a0:	09043783          	ld	a5,144(s0)
   180a4:	00813083          	ld	ra,8(sp)
   180a8:	00a787b3          	add	a5,a5,a0
   180ac:	08f43823          	sd	a5,144(s0)
   180b0:	00013403          	ld	s0,0(sp)
   180b4:	01010113          	addi	sp,sp,16
   180b8:	00008067          	ret
   180bc:	01045703          	lhu	a4,16(s0)
   180c0:	fffff7b7          	lui	a5,0xfffff
   180c4:	00813083          	ld	ra,8(sp)
   180c8:	fff7879b          	addiw	a5,a5,-1
   180cc:	00f777b3          	and	a5,a4,a5
   180d0:	00f41823          	sh	a5,16(s0)
   180d4:	00013403          	ld	s0,0(sp)
   180d8:	01010113          	addi	sp,sp,16
   180dc:	00008067          	ret

00000000000180e0 <__seofread>:
   180e0:	00000513          	li	a0,0
   180e4:	00008067          	ret

00000000000180e8 <__swrite>:
   180e8:	01059703          	lh	a4,16(a1)
   180ec:	fd010113          	addi	sp,sp,-48
   180f0:	02813023          	sd	s0,32(sp)
   180f4:	00913c23          	sd	s1,24(sp)
   180f8:	02113423          	sd	ra,40(sp)
   180fc:	10077793          	andi	a5,a4,256
   18100:	00058413          	mv	s0,a1
   18104:	00060493          	mv	s1,a2
   18108:	02078063          	beqz	a5,18128 <__swrite+0x40>
   1810c:	01259503          	lh	a0,18(a1)
   18110:	00200613          	li	a2,2
   18114:	00000593          	li	a1,0
   18118:	00d13423          	sd	a3,8(sp)
   1811c:	10d020ef          	jal	1aa28 <lseek>
   18120:	01041703          	lh	a4,16(s0)
   18124:	00813683          	ld	a3,8(sp)
   18128:	fffff7b7          	lui	a5,0xfffff
   1812c:	fff7879b          	addiw	a5,a5,-1
   18130:	00f777b3          	and	a5,a4,a5
   18134:	01241503          	lh	a0,18(s0)
   18138:	00f41823          	sh	a5,16(s0)
   1813c:	00048593          	mv	a1,s1
   18140:	02813083          	ld	ra,40(sp)
   18144:	02013403          	ld	s0,32(sp)
   18148:	01813483          	ld	s1,24(sp)
   1814c:	00068613          	mv	a2,a3
   18150:	03010113          	addi	sp,sp,48
   18154:	0fd0206f          	j	1aa50 <write>

0000000000018158 <__sseek>:
   18158:	01259503          	lh	a0,18(a1)
   1815c:	ff010113          	addi	sp,sp,-16
   18160:	00813023          	sd	s0,0(sp)
   18164:	00058413          	mv	s0,a1
   18168:	00060593          	mv	a1,a2
   1816c:	00068613          	mv	a2,a3
   18170:	00113423          	sd	ra,8(sp)
   18174:	0b5020ef          	jal	1aa28 <lseek>
   18178:	fff00793          	li	a5,-1
   1817c:	01045703          	lhu	a4,16(s0)
   18180:	02f50263          	beq	a0,a5,181a4 <__sseek+0x4c>
   18184:	00813083          	ld	ra,8(sp)
   18188:	000017b7          	lui	a5,0x1
   1818c:	00f767b3          	or	a5,a4,a5
   18190:	08a43823          	sd	a0,144(s0)
   18194:	00f41823          	sh	a5,16(s0)
   18198:	00013403          	ld	s0,0(sp)
   1819c:	01010113          	addi	sp,sp,16
   181a0:	00008067          	ret
   181a4:	fffff7b7          	lui	a5,0xfffff
   181a8:	00813083          	ld	ra,8(sp)
   181ac:	fff7879b          	addiw	a5,a5,-1
   181b0:	00f777b3          	and	a5,a4,a5
   181b4:	00f41823          	sh	a5,16(s0)
   181b8:	00013403          	ld	s0,0(sp)
   181bc:	01010113          	addi	sp,sp,16
   181c0:	00008067          	ret

00000000000181c4 <__sclose>:
   181c4:	01259503          	lh	a0,18(a1)
   181c8:	1350206f          	j	1aafc <close>

00000000000181cc <strcmp>:
   181cc:	00b56733          	or	a4,a0,a1
   181d0:	fff00393          	li	t2,-1
   181d4:	00777713          	andi	a4,a4,7
   181d8:	0c071c63          	bnez	a4,182b0 <strcmp+0xe4>
   181dc:	00005e17          	auipc	t3,0x5
   181e0:	5ece3e03          	ld	t3,1516(t3) # 1d7c8 <mask>
   181e4:	00053603          	ld	a2,0(a0)
   181e8:	0005b683          	ld	a3,0(a1)
   181ec:	01c672b3          	and	t0,a2,t3
   181f0:	01c66333          	or	t1,a2,t3
   181f4:	01c282b3          	add	t0,t0,t3
   181f8:	0062e2b3          	or	t0,t0,t1
   181fc:	0c729e63          	bne	t0,t2,182d8 <strcmp+0x10c>
   18200:	04d61663          	bne	a2,a3,1824c <strcmp+0x80>
   18204:	00853603          	ld	a2,8(a0)
   18208:	0085b683          	ld	a3,8(a1)
   1820c:	01c672b3          	and	t0,a2,t3
   18210:	01c66333          	or	t1,a2,t3
   18214:	01c282b3          	add	t0,t0,t3
   18218:	0062e2b3          	or	t0,t0,t1
   1821c:	0a729a63          	bne	t0,t2,182d0 <strcmp+0x104>
   18220:	02d61663          	bne	a2,a3,1824c <strcmp+0x80>
   18224:	01053603          	ld	a2,16(a0)
   18228:	0105b683          	ld	a3,16(a1)
   1822c:	01c672b3          	and	t0,a2,t3
   18230:	01c66333          	or	t1,a2,t3
   18234:	01c282b3          	add	t0,t0,t3
   18238:	0062e2b3          	or	t0,t0,t1
   1823c:	0a729463          	bne	t0,t2,182e4 <strcmp+0x118>
   18240:	01850513          	addi	a0,a0,24
   18244:	01858593          	addi	a1,a1,24
   18248:	f8d60ee3          	beq	a2,a3,181e4 <strcmp+0x18>
   1824c:	03061713          	slli	a4,a2,0x30
   18250:	03069793          	slli	a5,a3,0x30
   18254:	02f71a63          	bne	a4,a5,18288 <strcmp+0xbc>
   18258:	02061713          	slli	a4,a2,0x20
   1825c:	02069793          	slli	a5,a3,0x20
   18260:	02f71463          	bne	a4,a5,18288 <strcmp+0xbc>
   18264:	01061713          	slli	a4,a2,0x10
   18268:	01069793          	slli	a5,a3,0x10
   1826c:	00f71e63          	bne	a4,a5,18288 <strcmp+0xbc>
   18270:	03065713          	srli	a4,a2,0x30
   18274:	0306d793          	srli	a5,a3,0x30
   18278:	40f70533          	sub	a0,a4,a5
   1827c:	0ff57593          	andi	a1,a0,255
   18280:	02059063          	bnez	a1,182a0 <strcmp+0xd4>
   18284:	00008067          	ret
   18288:	03075713          	srli	a4,a4,0x30
   1828c:	0307d793          	srli	a5,a5,0x30
   18290:	40f70533          	sub	a0,a4,a5
   18294:	0ff57593          	andi	a1,a0,255
   18298:	00059463          	bnez	a1,182a0 <strcmp+0xd4>
   1829c:	00008067          	ret
   182a0:	0ff77713          	andi	a4,a4,255
   182a4:	0ff7f793          	andi	a5,a5,255
   182a8:	40f70533          	sub	a0,a4,a5
   182ac:	00008067          	ret
   182b0:	00054603          	lbu	a2,0(a0)
   182b4:	0005c683          	lbu	a3,0(a1)
   182b8:	00150513          	addi	a0,a0,1
   182bc:	00158593          	addi	a1,a1,1
   182c0:	00d61463          	bne	a2,a3,182c8 <strcmp+0xfc>
   182c4:	fe0616e3          	bnez	a2,182b0 <strcmp+0xe4>
   182c8:	40d60533          	sub	a0,a2,a3
   182cc:	00008067          	ret
   182d0:	00850513          	addi	a0,a0,8
   182d4:	00858593          	addi	a1,a1,8
   182d8:	fcd61ce3          	bne	a2,a3,182b0 <strcmp+0xe4>
   182dc:	00000513          	li	a0,0
   182e0:	00008067          	ret
   182e4:	01050513          	addi	a0,a0,16
   182e8:	01058593          	addi	a1,a1,16
   182ec:	fcd612e3          	bne	a2,a3,182b0 <strcmp+0xe4>
   182f0:	00000513          	li	a0,0
   182f4:	00008067          	ret

00000000000182f8 <strlen>:
   182f8:	00757793          	andi	a5,a0,7
   182fc:	00050593          	mv	a1,a0
   18300:	06079a63          	bnez	a5,18374 <strlen+0x7c>
   18304:	0001d7b7          	lui	a5,0x1d
   18308:	7c87b683          	ld	a3,1992(a5) # 1d7c8 <mask>
   1830c:	fff00613          	li	a2,-1
   18310:	00850513          	addi	a0,a0,8
   18314:	ff853783          	ld	a5,-8(a0)
   18318:	00d7f733          	and	a4,a5,a3
   1831c:	00d70733          	add	a4,a4,a3
   18320:	00d7e7b3          	or	a5,a5,a3
   18324:	00f767b3          	or	a5,a4,a5
   18328:	fec784e3          	beq	a5,a2,18310 <strlen+0x18>
   1832c:	ff854783          	lbu	a5,-8(a0)
   18330:	40b505b3          	sub	a1,a0,a1
   18334:	06078263          	beqz	a5,18398 <strlen+0xa0>
   18338:	ff954783          	lbu	a5,-7(a0)
   1833c:	04078a63          	beqz	a5,18390 <strlen+0x98>
   18340:	ffa54783          	lbu	a5,-6(a0)
   18344:	06078263          	beqz	a5,183a8 <strlen+0xb0>
   18348:	ffb54783          	lbu	a5,-5(a0)
   1834c:	04078a63          	beqz	a5,183a0 <strlen+0xa8>
   18350:	ffc54783          	lbu	a5,-4(a0)
   18354:	ffd54703          	lbu	a4,-3(a0)
   18358:	ffe54683          	lbu	a3,-2(a0)
   1835c:	04078a63          	beqz	a5,183b0 <strlen+0xb8>
   18360:	04070c63          	beqz	a4,183b8 <strlen+0xc0>
   18364:	fff58513          	addi	a0,a1,-1
   18368:	04068c63          	beqz	a3,183c0 <strlen+0xc8>
   1836c:	00008067          	ret
   18370:	f8070ae3          	beqz	a4,18304 <strlen+0xc>
   18374:	00054783          	lbu	a5,0(a0)
   18378:	00150513          	addi	a0,a0,1
   1837c:	00757713          	andi	a4,a0,7
   18380:	fe0798e3          	bnez	a5,18370 <strlen+0x78>
   18384:	40b50533          	sub	a0,a0,a1
   18388:	fff50513          	addi	a0,a0,-1
   1838c:	00008067          	ret
   18390:	ff958513          	addi	a0,a1,-7
   18394:	00008067          	ret
   18398:	ff858513          	addi	a0,a1,-8
   1839c:	00008067          	ret
   183a0:	ffb58513          	addi	a0,a1,-5
   183a4:	00008067          	ret
   183a8:	ffa58513          	addi	a0,a1,-6
   183ac:	00008067          	ret
   183b0:	ffc58513          	addi	a0,a1,-4
   183b4:	00008067          	ret
   183b8:	ffd58513          	addi	a0,a1,-3
   183bc:	00008067          	ret
   183c0:	ffe58513          	addi	a0,a1,-2
   183c4:	00008067          	ret

00000000000183c8 <strncmp>:
   183c8:	0c060263          	beqz	a2,1848c <strncmp+0xc4>
   183cc:	00b567b3          	or	a5,a0,a1
   183d0:	0077f793          	andi	a5,a5,7
   183d4:	06079e63          	bnez	a5,18450 <strncmp+0x88>
   183d8:	00700893          	li	a7,7
   183dc:	06c8fa63          	bleu	a2,a7,18450 <strncmp+0x88>
   183e0:	00053783          	ld	a5,0(a0)
   183e4:	0005b703          	ld	a4,0(a1)
   183e8:	06e79463          	bne	a5,a4,18450 <strncmp+0x88>
   183ec:	ff860613          	addi	a2,a2,-8 # 7fdffff8 <_gp+0x7fde20f8>
   183f0:	08060e63          	beqz	a2,1848c <strncmp+0xc4>
   183f4:	0001d737          	lui	a4,0x1d
   183f8:	7b073e03          	ld	t3,1968(a4) # 1d7b0 <__wctomb+0x80>
   183fc:	0001d737          	lui	a4,0x1d
   18400:	7b873303          	ld	t1,1976(a4) # 1d7b8 <__wctomb+0x88>
   18404:	fff7c713          	not	a4,a5
   18408:	01c787b3          	add	a5,a5,t3
   1840c:	00f777b3          	and	a5,a4,a5
   18410:	0067f7b3          	and	a5,a5,t1
   18414:	02078863          	beqz	a5,18444 <strncmp+0x7c>
   18418:	0740006f          	j	1848c <strncmp+0xc4>
   1841c:	00053703          	ld	a4,0(a0)
   18420:	0005b683          	ld	a3,0(a1)
   18424:	01c70833          	add	a6,a4,t3
   18428:	fff74793          	not	a5,a4
   1842c:	00f877b3          	and	a5,a6,a5
   18430:	0067f7b3          	and	a5,a5,t1
   18434:	00d71e63          	bne	a4,a3,18450 <strncmp+0x88>
   18438:	ff860613          	addi	a2,a2,-8
   1843c:	04060863          	beqz	a2,1848c <strncmp+0xc4>
   18440:	04079663          	bnez	a5,1848c <strncmp+0xc4>
   18444:	00850513          	addi	a0,a0,8
   18448:	00858593          	addi	a1,a1,8
   1844c:	fcc8e8e3          	bltu	a7,a2,1841c <strncmp+0x54>
   18450:	00054703          	lbu	a4,0(a0)
   18454:	0005c783          	lbu	a5,0(a1)
   18458:	fff60613          	addi	a2,a2,-1
   1845c:	02e79c63          	bne	a5,a4,18494 <strncmp+0xcc>
   18460:	02060663          	beqz	a2,1848c <strncmp+0xc4>
   18464:	02078463          	beqz	a5,1848c <strncmp+0xc4>
   18468:	00150513          	addi	a0,a0,1
   1846c:	00158593          	addi	a1,a1,1
   18470:	00054783          	lbu	a5,0(a0)
   18474:	0005c703          	lbu	a4,0(a1)
   18478:	fff60613          	addi	a2,a2,-1
   1847c:	fee782e3          	beq	a5,a4,18460 <strncmp+0x98>
   18480:	00070513          	mv	a0,a4
   18484:	40a7853b          	subw	a0,a5,a0
   18488:	00008067          	ret
   1848c:	00000513          	li	a0,0
   18490:	00008067          	ret
   18494:	00078513          	mv	a0,a5
   18498:	00070793          	mv	a5,a4
   1849c:	fe9ff06f          	j	18484 <strncmp+0xbc>

00000000000184a0 <__sprint_r.part.0>:
   184a0:	0ac5a783          	lw	a5,172(a1)
   184a4:	fb010113          	addi	sp,sp,-80
   184a8:	01613823          	sd	s6,16(sp)
   184ac:	04113423          	sd	ra,72(sp)
   184b0:	04813023          	sd	s0,64(sp)
   184b4:	02913c23          	sd	s1,56(sp)
   184b8:	03213823          	sd	s2,48(sp)
   184bc:	03313423          	sd	s3,40(sp)
   184c0:	03413023          	sd	s4,32(sp)
   184c4:	01513c23          	sd	s5,24(sp)
   184c8:	01713423          	sd	s7,8(sp)
   184cc:	03279713          	slli	a4,a5,0x32
   184d0:	00060b13          	mv	s6,a2
   184d4:	0a075863          	bgez	a4,18584 <__sprint_r.part.0+0xe4>
   184d8:	01063783          	ld	a5,16(a2)
   184dc:	00058a13          	mv	s4,a1
   184e0:	00050a93          	mv	s5,a0
   184e4:	00063b83          	ld	s7,0(a2)
   184e8:	fff00993          	li	s3,-1
   184ec:	08078863          	beqz	a5,1857c <__sprint_r.part.0+0xdc>
   184f0:	008bb903          	ld	s2,8(s7)
   184f4:	000bb483          	ld	s1,0(s7)
   184f8:	00000413          	li	s0,0
   184fc:	00295913          	srli	s2,s2,0x2
   18500:	0009091b          	sext.w	s2,s2
   18504:	01204863          	bgtz	s2,18514 <__sprint_r.part.0+0x74>
   18508:	0600006f          	j	18568 <__sprint_r.part.0+0xc8>
   1850c:	00448493          	addi	s1,s1,4
   18510:	04890a63          	beq	s2,s0,18564 <__sprint_r.part.0+0xc4>
   18514:	0004a583          	lw	a1,0(s1)
   18518:	000a0613          	mv	a2,s4
   1851c:	000a8513          	mv	a0,s5
   18520:	524010ef          	jal	19a44 <_fputwc_r>
   18524:	0014041b          	addiw	s0,s0,1
   18528:	ff3512e3          	bne	a0,s3,1850c <__sprint_r.part.0+0x6c>
   1852c:	00098513          	mv	a0,s3
   18530:	04813083          	ld	ra,72(sp)
   18534:	000b3823          	sd	zero,16(s6)
   18538:	000b2423          	sw	zero,8(s6)
   1853c:	04013403          	ld	s0,64(sp)
   18540:	03813483          	ld	s1,56(sp)
   18544:	03013903          	ld	s2,48(sp)
   18548:	02813983          	ld	s3,40(sp)
   1854c:	02013a03          	ld	s4,32(sp)
   18550:	01813a83          	ld	s5,24(sp)
   18554:	01013b03          	ld	s6,16(sp)
   18558:	00813b83          	ld	s7,8(sp)
   1855c:	05010113          	addi	sp,sp,80
   18560:	00008067          	ret
   18564:	010b3783          	ld	a5,16(s6)
   18568:	00291913          	slli	s2,s2,0x2
   1856c:	412787b3          	sub	a5,a5,s2
   18570:	00fb3823          	sd	a5,16(s6)
   18574:	010b8b93          	addi	s7,s7,16
   18578:	f6079ce3          	bnez	a5,184f0 <__sprint_r.part.0+0x50>
   1857c:	00000513          	li	a0,0
   18580:	fb1ff06f          	j	18530 <__sprint_r.part.0+0x90>
   18584:	564010ef          	jal	19ae8 <__sfvwrite_r>
   18588:	fa9ff06f          	j	18530 <__sprint_r.part.0+0x90>

000000000001858c <__sprint_r>:
   1858c:	01063703          	ld	a4,16(a2)
   18590:	00070463          	beqz	a4,18598 <__sprint_r+0xc>
   18594:	f0dff06f          	j	184a0 <__sprint_r.part.0>
   18598:	00062423          	sw	zero,8(a2)
   1859c:	00000513          	li	a0,0
   185a0:	00008067          	ret

00000000000185a4 <_vfiprintf_r>:
   185a4:	e6010113          	addi	sp,sp,-416
   185a8:	17513423          	sd	s5,360(sp)
   185ac:	17613023          	sd	s6,352(sp)
   185b0:	15a13023          	sd	s10,320(sp)
   185b4:	18113c23          	sd	ra,408(sp)
   185b8:	18813823          	sd	s0,400(sp)
   185bc:	18913423          	sd	s1,392(sp)
   185c0:	19213023          	sd	s2,384(sp)
   185c4:	17313c23          	sd	s3,376(sp)
   185c8:	17413823          	sd	s4,368(sp)
   185cc:	15713c23          	sd	s7,344(sp)
   185d0:	15813823          	sd	s8,336(sp)
   185d4:	15913423          	sd	s9,328(sp)
   185d8:	13b13c23          	sd	s11,312(sp)
   185dc:	00d13423          	sd	a3,8(sp)
   185e0:	00050a93          	mv	s5,a0
   185e4:	00058d13          	mv	s10,a1
   185e8:	00060b13          	mv	s6,a2
   185ec:	00050663          	beqz	a0,185f8 <_vfiprintf_r+0x54>
   185f0:	05052783          	lw	a5,80(a0)
   185f4:	1e078c63          	beqz	a5,187ec <_vfiprintf_r+0x248>
   185f8:	010d1683          	lh	a3,16(s10)
   185fc:	03069793          	slli	a5,a3,0x30
   18600:	0307d793          	srli	a5,a5,0x30
   18604:	03279713          	slli	a4,a5,0x32
   18608:	02074a63          	bltz	a4,1863c <_vfiprintf_r+0x98>
   1860c:	000027b7          	lui	a5,0x2
   18610:	0acd2603          	lw	a2,172(s10)
   18614:	00f6e7b3          	or	a5,a3,a5
   18618:	0107979b          	slliw	a5,a5,0x10
   1861c:	ffffe737          	lui	a4,0xffffe
   18620:	4107d79b          	sraiw	a5,a5,0x10
   18624:	fff7071b          	addiw	a4,a4,-1
   18628:	00e67733          	and	a4,a2,a4
   1862c:	00fd1823          	sh	a5,16(s10)
   18630:	03079793          	slli	a5,a5,0x30
   18634:	0aed2623          	sw	a4,172(s10)
   18638:	0307d793          	srli	a5,a5,0x30
   1863c:	0087f713          	andi	a4,a5,8
   18640:	12070a63          	beqz	a4,18774 <_vfiprintf_r+0x1d0>
   18644:	018d3703          	ld	a4,24(s10)
   18648:	12070663          	beqz	a4,18774 <_vfiprintf_r+0x1d0>
   1864c:	01a7f793          	andi	a5,a5,26
   18650:	00a00713          	li	a4,10
   18654:	14e78063          	beq	a5,a4,18794 <_vfiprintf_r+0x1f0>
   18658:	0b010c93          	addi	s9,sp,176
   1865c:	0001bc37          	lui	s8,0x1b
   18660:	0af10793          	addi	a5,sp,175
   18664:	318c0713          	addi	a4,s8,792 # 1b318 <__mprec_bigtens+0x28>
   18668:	40fc87b3          	sub	a5,s9,a5
   1866c:	0001b8b7          	lui	a7,0x1b
   18670:	07913823          	sd	s9,112(sp)
   18674:	08013023          	sd	zero,128(sp)
   18678:	06012c23          	sw	zero,120(sp)
   1867c:	000c8413          	mv	s0,s9
   18680:	00013c23          	sd	zero,24(sp)
   18684:	04012c23          	sw	zero,88(sp)
   18688:	00e13823          	sd	a4,16(sp)
   1868c:	48088c13          	addi	s8,a7,1152 # 1b480 <blanks.4136>
   18690:	04f12e23          	sw	a5,92(sp)
   18694:	000b4783          	lbu	a5,0(s6)
   18698:	4e078ee3          	beqz	a5,19394 <_vfiprintf_r+0xdf0>
   1869c:	02500713          	li	a4,37
   186a0:	000b0493          	mv	s1,s6
   186a4:	00e79663          	bne	a5,a4,186b0 <_vfiprintf_r+0x10c>
   186a8:	0580006f          	j	18700 <_vfiprintf_r+0x15c>
   186ac:	00e78863          	beq	a5,a4,186bc <_vfiprintf_r+0x118>
   186b0:	00148493          	addi	s1,s1,1
   186b4:	0004c783          	lbu	a5,0(s1)
   186b8:	fe079ae3          	bnez	a5,186ac <_vfiprintf_r+0x108>
   186bc:	4164893b          	subw	s2,s1,s6
   186c0:	04090063          	beqz	s2,18700 <_vfiprintf_r+0x15c>
   186c4:	08013703          	ld	a4,128(sp)
   186c8:	07812783          	lw	a5,120(sp)
   186cc:	00090613          	mv	a2,s2
   186d0:	00e60733          	add	a4,a2,a4
   186d4:	0017879b          	addiw	a5,a5,1
   186d8:	00c43423          	sd	a2,8(s0)
   186dc:	01643023          	sd	s6,0(s0)
   186e0:	08e13023          	sd	a4,128(sp)
   186e4:	06f12c23          	sw	a5,120(sp)
   186e8:	00700613          	li	a2,7
   186ec:	01040413          	addi	s0,s0,16
   186f0:	06f64463          	blt	a2,a5,18758 <_vfiprintf_r+0x1b4>
   186f4:	05812783          	lw	a5,88(sp)
   186f8:	012787bb          	addw	a5,a5,s2
   186fc:	04f12c23          	sw	a5,88(sp)
   18700:	0004c783          	lbu	a5,0(s1)
   18704:	580786e3          	beqz	a5,19490 <_vfiprintf_r+0xeec>
   18708:	00148813          	addi	a6,s1,1
   1870c:	060103a3          	sb	zero,103(sp)
   18710:	00000513          	li	a0,0
   18714:	00000e93          	li	t4,0
   18718:	fff00493          	li	s1,-1
   1871c:	00000913          	li	s2,0
   18720:	00000313          	li	t1,0
   18724:	05800613          	li	a2,88
   18728:	00900593          	li	a1,9
   1872c:	02a00f13          	li	t5,42
   18730:	00084703          	lbu	a4,0(a6)
   18734:	00180b13          	addi	s6,a6,1
   18738:	fe07079b          	addiw	a5,a4,-32
   1873c:	66f66263          	bltu	a2,a5,18da0 <_vfiprintf_r+0x7fc>
   18740:	01013683          	ld	a3,16(sp)
   18744:	02079793          	slli	a5,a5,0x20
   18748:	01e7d793          	srli	a5,a5,0x1e
   1874c:	00d787b3          	add	a5,a5,a3
   18750:	0007a783          	lw	a5,0(a5) # 2000 <_ftext-0xe000>
   18754:	00078067          	jr	a5
   18758:	2e071ee3          	bnez	a4,19254 <_vfiprintf_r+0xcb0>
   1875c:	06012c23          	sw	zero,120(sp)
   18760:	000c8413          	mv	s0,s9
   18764:	f91ff06f          	j	186f4 <_vfiprintf_r+0x150>
   18768:	01036313          	ori	t1,t1,16
   1876c:	000b0813          	mv	a6,s6
   18770:	fc1ff06f          	j	18730 <_vfiprintf_r+0x18c>
   18774:	000d0593          	mv	a1,s10
   18778:	000a8513          	mv	a0,s5
   1877c:	d81fa0ef          	jal	134fc <__swsetup_r>
   18780:	4e0512e3          	bnez	a0,19464 <_vfiprintf_r+0xec0>
   18784:	010d5783          	lhu	a5,16(s10)
   18788:	00a00713          	li	a4,10
   1878c:	01a7f793          	andi	a5,a5,26
   18790:	ece794e3          	bne	a5,a4,18658 <_vfiprintf_r+0xb4>
   18794:	012d1783          	lh	a5,18(s10)
   18798:	ec07c0e3          	bltz	a5,18658 <_vfiprintf_r+0xb4>
   1879c:	00813683          	ld	a3,8(sp)
   187a0:	000b0613          	mv	a2,s6
   187a4:	000d0593          	mv	a1,s10
   187a8:	000a8513          	mv	a0,s5
   187ac:	6a9000ef          	jal	19654 <__sbprintf>
   187b0:	19813083          	ld	ra,408(sp)
   187b4:	19013403          	ld	s0,400(sp)
   187b8:	18813483          	ld	s1,392(sp)
   187bc:	18013903          	ld	s2,384(sp)
   187c0:	17813983          	ld	s3,376(sp)
   187c4:	17013a03          	ld	s4,368(sp)
   187c8:	16813a83          	ld	s5,360(sp)
   187cc:	16013b03          	ld	s6,352(sp)
   187d0:	15813b83          	ld	s7,344(sp)
   187d4:	15013c03          	ld	s8,336(sp)
   187d8:	14813c83          	ld	s9,328(sp)
   187dc:	14013d03          	ld	s10,320(sp)
   187e0:	13813d83          	ld	s11,312(sp)
   187e4:	1a010113          	addi	sp,sp,416
   187e8:	00008067          	ret
   187ec:	a1dfc0ef          	jal	15208 <__sinit>
   187f0:	e09ff06f          	j	185f8 <_vfiprintf_r+0x54>
   187f4:	00813783          	ld	a5,8(sp)
   187f8:	0007a903          	lw	s2,0(a5)
   187fc:	00878793          	addi	a5,a5,8
   18800:	00f13423          	sd	a5,8(sp)
   18804:	f60954e3          	bgez	s2,1876c <_vfiprintf_r+0x1c8>
   18808:	4120093b          	negw	s2,s2
   1880c:	00436313          	ori	t1,t1,4
   18810:	000b0813          	mv	a6,s6
   18814:	f1dff06f          	j	18730 <_vfiprintf_r+0x18c>
   18818:	03000793          	li	a5,48
   1881c:	06f10423          	sb	a5,104(sp)
   18820:	07800793          	li	a5,120
   18824:	06f104a3          	sb	a5,105(sp)
   18828:	00813783          	ld	a5,8(sp)
   1882c:	060103a3          	sb	zero,103(sp)
   18830:	00236613          	ori	a2,t1,2
   18834:	00878713          	addi	a4,a5,8
   18838:	0007b783          	ld	a5,0(a5)
   1883c:	2e04cce3          	bltz	s1,19334 <_vfiprintf_r+0xd90>
   18840:	f7f37313          	andi	t1,t1,-129
   18844:	00e13423          	sd	a4,8(sp)
   18848:	00236313          	ori	t1,t1,2
   1884c:	32079ae3          	bnez	a5,19380 <_vfiprintf_r+0xddc>
   18850:	0001b7b7          	lui	a5,0x1b
   18854:	4f878793          	addi	a5,a5,1272 # 1b4f8 <zeroes.4137+0x68>
   18858:	00f13c23          	sd	a5,24(sp)
   1885c:	00000593          	li	a1,0
   18860:	200498e3          	bnez	s1,19270 <_vfiprintf_r+0xccc>
   18864:	00000493          	li	s1,0
   18868:	00000a13          	li	s4,0
   1886c:	000c8b93          	mv	s7,s9
   18870:	00048993          	mv	s3,s1
   18874:	0144d463          	ble	s4,s1,1887c <_vfiprintf_r+0x2d8>
   18878:	000a0993          	mv	s3,s4
   1887c:	00b035b3          	snez	a1,a1
   18880:	00b989bb          	addw	s3,s3,a1
   18884:	00237393          	andi	t2,t1,2
   18888:	00038463          	beqz	t2,18890 <_vfiprintf_r+0x2ec>
   1888c:	0029899b          	addiw	s3,s3,2
   18890:	08437293          	andi	t0,t1,132
   18894:	58029463          	bnez	t0,18e1c <_vfiprintf_r+0x878>
   18898:	41390dbb          	subw	s11,s2,s3
   1889c:	59b05063          	blez	s11,18e1c <_vfiprintf_r+0x878>
   188a0:	01000793          	li	a5,16
   188a4:	45b7dee3          	ble	s11,a5,19500 <_vfiprintf_r+0xf5c>
   188a8:	01000e93          	li	t4,16
   188ac:	08013783          	ld	a5,128(sp)
   188b0:	07812503          	lw	a0,120(sp)
   188b4:	05813823          	sd	s8,80(sp)
   188b8:	00700f13          	li	t5,7
   188bc:	000e8f93          	mv	t6,t4
   188c0:	0180006f          	j	188d8 <_vfiprintf_r+0x334>
   188c4:	0025061b          	addiw	a2,a0,2
   188c8:	01040413          	addi	s0,s0,16
   188cc:	00058513          	mv	a0,a1
   188d0:	ff0d8d9b          	addiw	s11,s11,-16
   188d4:	03bfdc63          	ble	s11,t6,1890c <_vfiprintf_r+0x368>
   188d8:	01078793          	addi	a5,a5,16
   188dc:	0015059b          	addiw	a1,a0,1
   188e0:	01843023          	sd	s8,0(s0)
   188e4:	01d43423          	sd	t4,8(s0)
   188e8:	08f13023          	sd	a5,128(sp)
   188ec:	06b12c23          	sw	a1,120(sp)
   188f0:	fcbf5ae3          	ble	a1,t5,188c4 <_vfiprintf_r+0x320>
   188f4:	4c079863          	bnez	a5,18dc4 <_vfiprintf_r+0x820>
   188f8:	ff0d8d9b          	addiw	s11,s11,-16
   188fc:	00000513          	li	a0,0
   18900:	00100613          	li	a2,1
   18904:	000c8413          	mv	s0,s9
   18908:	fdbfc8e3          	blt	t6,s11,188d8 <_vfiprintf_r+0x334>
   1890c:	05013703          	ld	a4,80(sp)
   18910:	00fd87b3          	add	a5,s11,a5
   18914:	01b43423          	sd	s11,8(s0)
   18918:	00e43023          	sd	a4,0(s0)
   1891c:	08f13023          	sd	a5,128(sp)
   18920:	06c12c23          	sw	a2,120(sp)
   18924:	00700593          	li	a1,7
   18928:	7ac5cc63          	blt	a1,a2,190e0 <_vfiprintf_r+0xb3c>
   1892c:	06714503          	lbu	a0,103(sp)
   18930:	01040413          	addi	s0,s0,16
   18934:	0016059b          	addiw	a1,a2,1
   18938:	4e051c63          	bnez	a0,18e30 <_vfiprintf_r+0x88c>
   1893c:	52038663          	beqz	t2,18e68 <_vfiprintf_r+0x8c4>
   18940:	06810613          	addi	a2,sp,104
   18944:	00278793          	addi	a5,a5,2
   18948:	00c43023          	sd	a2,0(s0)
   1894c:	00200613          	li	a2,2
   18950:	00c43423          	sd	a2,8(s0)
   18954:	08f13023          	sd	a5,128(sp)
   18958:	06b12c23          	sw	a1,120(sp)
   1895c:	00700613          	li	a2,7
   18960:	7cb65863          	ble	a1,a2,19130 <_vfiprintf_r+0xb8c>
   18964:	10079ae3          	bnez	a5,19278 <_vfiprintf_r+0xcd4>
   18968:	08000513          	li	a0,128
   1896c:	00100593          	li	a1,1
   18970:	00000613          	li	a2,0
   18974:	000c8413          	mv	s0,s9
   18978:	4ea29c63          	bne	t0,a0,18e70 <_vfiprintf_r+0x8cc>
   1897c:	41390ebb          	subw	t4,s2,s3
   18980:	4fd05863          	blez	t4,18e70 <_vfiprintf_r+0x8cc>
   18984:	01000513          	li	a0,16
   18988:	3fd55ce3          	ble	t4,a0,19580 <_vfiprintf_r+0xfdc>
   1898c:	01000f13          	li	t5,16
   18990:	0001b737          	lui	a4,0x1b
   18994:	49070d93          	addi	s11,a4,1168 # 1b490 <zeroes.4137>
   18998:	00700f93          	li	t6,7
   1899c:	000f0293          	mv	t0,t5
   189a0:	0180006f          	j	189b8 <_vfiprintf_r+0x414>
   189a4:	0026051b          	addiw	a0,a2,2
   189a8:	01040413          	addi	s0,s0,16
   189ac:	00058613          	mv	a2,a1
   189b0:	ff0e8e9b          	addiw	t4,t4,-16
   189b4:	03d2dc63          	ble	t4,t0,189ec <_vfiprintf_r+0x448>
   189b8:	01078793          	addi	a5,a5,16
   189bc:	0016059b          	addiw	a1,a2,1
   189c0:	01b43023          	sd	s11,0(s0)
   189c4:	01e43423          	sd	t5,8(s0)
   189c8:	08f13023          	sd	a5,128(sp)
   189cc:	06b12c23          	sw	a1,120(sp)
   189d0:	fcbfdae3          	ble	a1,t6,189a4 <_vfiprintf_r+0x400>
   189d4:	6a079e63          	bnez	a5,19090 <_vfiprintf_r+0xaec>
   189d8:	ff0e8e9b          	addiw	t4,t4,-16
   189dc:	00100513          	li	a0,1
   189e0:	00000613          	li	a2,0
   189e4:	000c8413          	mv	s0,s9
   189e8:	fdd2c8e3          	blt	t0,t4,189b8 <_vfiprintf_r+0x414>
   189ec:	01d787b3          	add	a5,a5,t4
   189f0:	01b43023          	sd	s11,0(s0)
   189f4:	01d43423          	sd	t4,8(s0)
   189f8:	08f13023          	sd	a5,128(sp)
   189fc:	06a12c23          	sw	a0,120(sp)
   18a00:	00700613          	li	a2,7
   18a04:	0ea646e3          	blt	a2,a0,192f0 <_vfiprintf_r+0xd4c>
   18a08:	414484bb          	subw	s1,s1,s4
   18a0c:	01040413          	addi	s0,s0,16
   18a10:	0015059b          	addiw	a1,a0,1
   18a14:	00050613          	mv	a2,a0
   18a18:	46904063          	bgtz	s1,18e78 <_vfiprintf_r+0x8d4>
   18a1c:	00fa07b3          	add	a5,s4,a5
   18a20:	01743023          	sd	s7,0(s0)
   18a24:	01443423          	sd	s4,8(s0)
   18a28:	08f13023          	sd	a5,128(sp)
   18a2c:	06b12c23          	sw	a1,120(sp)
   18a30:	00700713          	li	a4,7
   18a34:	4eb75a63          	ble	a1,a4,18f28 <_vfiprintf_r+0x984>
   18a38:	7a079463          	bnez	a5,191e0 <_vfiprintf_r+0xc3c>
   18a3c:	06012c23          	sw	zero,120(sp)
   18a40:	00437313          	andi	t1,t1,4
   18a44:	00030663          	beqz	t1,18a50 <_vfiprintf_r+0x4ac>
   18a48:	413904bb          	subw	s1,s2,s3
   18a4c:	229040e3          	bgtz	s1,1946c <_vfiprintf_r+0xec8>
   18a50:	01395463          	ble	s3,s2,18a58 <_vfiprintf_r+0x4b4>
   18a54:	00098913          	mv	s2,s3
   18a58:	05812783          	lw	a5,88(sp)
   18a5c:	012787bb          	addw	a5,a5,s2
   18a60:	04f12c23          	sw	a5,88(sp)
   18a64:	06012c23          	sw	zero,120(sp)
   18a68:	000c8413          	mv	s0,s9
   18a6c:	c29ff06f          	j	18694 <_vfiprintf_r+0xf0>
   18a70:	00100513          	li	a0,1
   18a74:	02b00e93          	li	t4,43
   18a78:	000b0813          	mv	a6,s6
   18a7c:	cb5ff06f          	j	18730 <_vfiprintf_r+0x18c>
   18a80:	08036313          	ori	t1,t1,128
   18a84:	000b0813          	mv	a6,s6
   18a88:	ca9ff06f          	j	18730 <_vfiprintf_r+0x18c>
   18a8c:	00000913          	li	s2,0
   18a90:	fd07079b          	addiw	a5,a4,-48
   18a94:	001b0b13          	addi	s6,s6,1
   18a98:	fffb4703          	lbu	a4,-1(s6)
   18a9c:	00191f9b          	slliw	t6,s2,0x1
   18aa0:	0039191b          	slliw	s2,s2,0x3
   18aa4:	012f893b          	addw	s2,t6,s2
   18aa8:	0127893b          	addw	s2,a5,s2
   18aac:	fd07079b          	addiw	a5,a4,-48
   18ab0:	fef5f2e3          	bleu	a5,a1,18a94 <_vfiprintf_r+0x4f0>
   18ab4:	c85ff06f          	j	18738 <_vfiprintf_r+0x194>
   18ab8:	360518e3          	bnez	a0,19628 <_vfiprintf_r+0x1084>
   18abc:	01036313          	ori	t1,t1,16
   18ac0:	01037793          	andi	a5,t1,16
   18ac4:	74078263          	beqz	a5,19208 <_vfiprintf_r+0xc64>
   18ac8:	00813703          	ld	a4,8(sp)
   18acc:	00073783          	ld	a5,0(a4)
   18ad0:	00870713          	addi	a4,a4,8
   18ad4:	00e13423          	sd	a4,8(sp)
   18ad8:	0e07c6e3          	bltz	a5,193c4 <_vfiprintf_r+0xe20>
   18adc:	06714583          	lbu	a1,103(sp)
   18ae0:	6e04c063          	bltz	s1,191c0 <_vfiprintf_r+0xc1c>
   18ae4:	f7f37313          	andi	t1,t1,-129
   18ae8:	10078c63          	beqz	a5,18c00 <_vfiprintf_r+0x65c>
   18aec:	00900613          	li	a2,9
   18af0:	000c8b93          	mv	s7,s9
   18af4:	00a00513          	li	a0,10
   18af8:	10f67863          	bleu	a5,a2,18c08 <_vfiprintf_r+0x664>
   18afc:	02a7f633          	remu	a2,a5,a0
   18b00:	fffb8b93          	addi	s7,s7,-1
   18b04:	02a7d7b3          	divu	a5,a5,a0
   18b08:	0306061b          	addiw	a2,a2,48
   18b0c:	00cb8023          	sb	a2,0(s7)
   18b10:	fe0796e3          	bnez	a5,18afc <_vfiprintf_r+0x558>
   18b14:	417c8a3b          	subw	s4,s9,s7
   18b18:	d59ff06f          	j	18870 <_vfiprintf_r+0x2cc>
   18b1c:	300512e3          	bnez	a0,19620 <_vfiprintf_r+0x107c>
   18b20:	01036313          	ori	t1,t1,16
   18b24:	01037793          	andi	a5,t1,16
   18b28:	6e078e63          	beqz	a5,19224 <_vfiprintf_r+0xc80>
   18b2c:	00813783          	ld	a5,8(sp)
   18b30:	060103a3          	sb	zero,103(sp)
   18b34:	00878713          	addi	a4,a5,8
   18b38:	0007b783          	ld	a5,0(a5)
   18b3c:	7004c263          	bltz	s1,19240 <_vfiprintf_r+0xc9c>
   18b40:	00e13423          	sd	a4,8(sp)
   18b44:	f7f37313          	andi	t1,t1,-129
   18b48:	70079263          	bnez	a5,1924c <_vfiprintf_r+0xca8>
   18b4c:	00000593          	li	a1,0
   18b50:	00000793          	li	a5,0
   18b54:	2a0482e3          	beqz	s1,195f8 <_vfiprintf_r+0x1054>
   18b58:	000c8b93          	mv	s7,s9
   18b5c:	0077f613          	andi	a2,a5,7
   18b60:	fffb8b93          	addi	s7,s7,-1
   18b64:	0306061b          	addiw	a2,a2,48
   18b68:	00cb8023          	sb	a2,0(s7)
   18b6c:	0037d793          	srli	a5,a5,0x3
   18b70:	fe0796e3          	bnez	a5,18b5c <_vfiprintf_r+0x5b8>
   18b74:	00137793          	andi	a5,t1,1
   18b78:	f8078ee3          	beqz	a5,18b14 <_vfiprintf_r+0x570>
   18b7c:	03000793          	li	a5,48
   18b80:	f8f60ae3          	beq	a2,a5,18b14 <_vfiprintf_r+0x570>
   18b84:	fffb8613          	addi	a2,s7,-1
   18b88:	40cc8a33          	sub	s4,s9,a2
   18b8c:	fefb8fa3          	sb	a5,-1(s7)
   18b90:	000a0a1b          	sext.w	s4,s4
   18b94:	00060b93          	mv	s7,a2
   18b98:	cd9ff06f          	j	18870 <_vfiprintf_r+0x2cc>
   18b9c:	28051ee3          	bnez	a0,19638 <_vfiprintf_r+0x1094>
   18ba0:	01037793          	andi	a5,t1,16
   18ba4:	040786e3          	beqz	a5,193f0 <_vfiprintf_r+0xe4c>
   18ba8:	00813683          	ld	a3,8(sp)
   18bac:	05812703          	lw	a4,88(sp)
   18bb0:	0006b783          	ld	a5,0(a3) # 7ff00000 <_gp+0x7fee2100>
   18bb4:	00868693          	addi	a3,a3,8
   18bb8:	00d13423          	sd	a3,8(sp)
   18bbc:	00e7b023          	sd	a4,0(a5)
   18bc0:	ad5ff06f          	j	18694 <_vfiprintf_r+0xf0>
   18bc4:	260516e3          	bnez	a0,19630 <_vfiprintf_r+0x108c>
   18bc8:	01036313          	ori	t1,t1,16
   18bcc:	01037793          	andi	a5,t1,16
   18bd0:	5c079a63          	bnez	a5,191a4 <_vfiprintf_r+0xc00>
   18bd4:	04037793          	andi	a5,t1,64
   18bd8:	060103a3          	sb	zero,103(sp)
   18bdc:	7c078063          	beqz	a5,1939c <_vfiprintf_r+0xdf8>
   18be0:	00813783          	ld	a5,8(sp)
   18be4:	00878713          	addi	a4,a5,8
   18be8:	0007d783          	lhu	a5,0(a5)
   18bec:	5c04c663          	bltz	s1,191b8 <_vfiprintf_r+0xc14>
   18bf0:	00e13423          	sd	a4,8(sp)
   18bf4:	f7f37313          	andi	t1,t1,-129
   18bf8:	00000593          	li	a1,0
   18bfc:	ee0798e3          	bnez	a5,18aec <_vfiprintf_r+0x548>
   18c00:	c60482e3          	beqz	s1,18864 <_vfiprintf_r+0x2c0>
   18c04:	00000793          	li	a5,0
   18c08:	0307879b          	addiw	a5,a5,48
   18c0c:	0af107a3          	sb	a5,175(sp)
   18c10:	05c12a03          	lw	s4,92(sp)
   18c14:	0af10b93          	addi	s7,sp,175
   18c18:	c59ff06f          	j	18870 <_vfiprintf_r+0x2cc>
   18c1c:	b40e98e3          	bnez	t4,1876c <_vfiprintf_r+0x1c8>
   18c20:	00100513          	li	a0,1
   18c24:	02000e93          	li	t4,32
   18c28:	000b0813          	mv	a6,s6
   18c2c:	b05ff06f          	j	18730 <_vfiprintf_r+0x18c>
   18c30:	00136313          	ori	t1,t1,1
   18c34:	000b0813          	mv	a6,s6
   18c38:	af9ff06f          	j	18730 <_vfiprintf_r+0x18c>
   18c3c:	00813783          	ld	a5,8(sp)
   18c40:	060103a3          	sb	zero,103(sp)
   18c44:	0007bb83          	ld	s7,0(a5)
   18c48:	00878d93          	addi	s11,a5,8
   18c4c:	0e0b84e3          	beqz	s7,19534 <_vfiprintf_r+0xf90>
   18c50:	0404cee3          	bltz	s1,194ac <_vfiprintf_r+0xf08>
   18c54:	00048613          	mv	a2,s1
   18c58:	00000593          	li	a1,0
   18c5c:	000b8513          	mv	a0,s7
   18c60:	00613423          	sd	t1,8(sp)
   18c64:	844fe0ef          	jal	16ca8 <memchr>
   18c68:	00813303          	ld	t1,8(sp)
   18c6c:	120502e3          	beqz	a0,19590 <_vfiprintf_r+0xfec>
   18c70:	41750a3b          	subw	s4,a0,s7
   18c74:	06714583          	lbu	a1,103(sp)
   18c78:	01b13423          	sd	s11,8(sp)
   18c7c:	00000493          	li	s1,0
   18c80:	bf1ff06f          	j	18870 <_vfiprintf_r+0x2cc>
   18c84:	f40504e3          	beqz	a0,18bcc <_vfiprintf_r+0x628>
   18c88:	07d103a3          	sb	t4,103(sp)
   18c8c:	f41ff06f          	j	18bcc <_vfiprintf_r+0x628>
   18c90:	00813703          	ld	a4,8(sp)
   18c94:	00100993          	li	s3,1
   18c98:	060103a3          	sb	zero,103(sp)
   18c9c:	00072783          	lw	a5,0(a4)
   18ca0:	00098a13          	mv	s4,s3
   18ca4:	08810b93          	addi	s7,sp,136
   18ca8:	08f10423          	sb	a5,136(sp)
   18cac:	00870793          	addi	a5,a4,8
   18cb0:	00f13423          	sd	a5,8(sp)
   18cb4:	00000493          	li	s1,0
   18cb8:	bcdff06f          	j	18884 <_vfiprintf_r+0x2e0>
   18cbc:	e00502e3          	beqz	a0,18ac0 <_vfiprintf_r+0x51c>
   18cc0:	07d103a3          	sb	t4,103(sp)
   18cc4:	dfdff06f          	j	18ac0 <_vfiprintf_r+0x51c>
   18cc8:	120510e3          	bnez	a0,195e8 <_vfiprintf_r+0x1044>
   18ccc:	0001b7b7          	lui	a5,0x1b
   18cd0:	4e078793          	addi	a5,a5,1248 # 1b4e0 <zeroes.4137+0x50>
   18cd4:	00f13c23          	sd	a5,24(sp)
   18cd8:	01037793          	andi	a5,t1,16
   18cdc:	06078063          	beqz	a5,18d3c <_vfiprintf_r+0x798>
   18ce0:	00813683          	ld	a3,8(sp)
   18ce4:	0006b783          	ld	a5,0(a3)
   18ce8:	00868693          	addi	a3,a3,8
   18cec:	00d13423          	sd	a3,8(sp)
   18cf0:	00137613          	andi	a2,t1,1
   18cf4:	46060863          	beqz	a2,19164 <_vfiprintf_r+0xbc0>
   18cf8:	66079063          	bnez	a5,19358 <_vfiprintf_r+0xdb4>
   18cfc:	060103a3          	sb	zero,103(sp)
   18d00:	6404c663          	bltz	s1,1934c <_vfiprintf_r+0xda8>
   18d04:	f7f37313          	andi	t1,t1,-129
   18d08:	b55ff06f          	j	1885c <_vfiprintf_r+0x2b8>
   18d0c:	e0050ce3          	beqz	a0,18b24 <_vfiprintf_r+0x580>
   18d10:	07d103a3          	sb	t4,103(sp)
   18d14:	e11ff06f          	j	18b24 <_vfiprintf_r+0x580>
   18d18:	04036313          	ori	t1,t1,64
   18d1c:	000b0813          	mv	a6,s6
   18d20:	a11ff06f          	j	18730 <_vfiprintf_r+0x18c>
   18d24:	0a051ee3          	bnez	a0,195e0 <_vfiprintf_r+0x103c>
   18d28:	0001b7b7          	lui	a5,0x1b
   18d2c:	4f878793          	addi	a5,a5,1272 # 1b4f8 <zeroes.4137+0x68>
   18d30:	00f13c23          	sd	a5,24(sp)
   18d34:	01037793          	andi	a5,t1,16
   18d38:	fa0794e3          	bnez	a5,18ce0 <_vfiprintf_r+0x73c>
   18d3c:	04037793          	andi	a5,t1,64
   18d40:	00813683          	ld	a3,8(sp)
   18d44:	68078e63          	beqz	a5,193e0 <_vfiprintf_r+0xe3c>
   18d48:	0006d783          	lhu	a5,0(a3)
   18d4c:	00868693          	addi	a3,a3,8
   18d50:	00d13423          	sd	a3,8(sp)
   18d54:	f9dff06f          	j	18cf0 <_vfiprintf_r+0x74c>
   18d58:	000b4703          	lbu	a4,0(s6)
   18d5c:	001b0813          	addi	a6,s6,1
   18d60:	05e70ee3          	beq	a4,t5,195bc <_vfiprintf_r+0x1018>
   18d64:	fd07079b          	addiw	a5,a4,-48
   18d68:	00000493          	li	s1,0
   18d6c:	00080b13          	mv	s6,a6
   18d70:	9cf5e4e3          	bltu	a1,a5,18738 <_vfiprintf_r+0x194>
   18d74:	001b0b13          	addi	s6,s6,1
   18d78:	fffb4703          	lbu	a4,-1(s6)
   18d7c:	00149f9b          	slliw	t6,s1,0x1
   18d80:	0034949b          	slliw	s1,s1,0x3
   18d84:	009f84bb          	addw	s1,t6,s1
   18d88:	00f484bb          	addw	s1,s1,a5
   18d8c:	fd07079b          	addiw	a5,a4,-48
   18d90:	fef5f2e3          	bleu	a5,a1,18d74 <_vfiprintf_r+0x7d0>
   18d94:	9a04d2e3          	bgez	s1,18738 <_vfiprintf_r+0x194>
   18d98:	fff00493          	li	s1,-1
   18d9c:	99dff06f          	j	18738 <_vfiprintf_r+0x194>
   18da0:	040518e3          	bnez	a0,195f0 <_vfiprintf_r+0x104c>
   18da4:	6e070663          	beqz	a4,19490 <_vfiprintf_r+0xeec>
   18da8:	00100993          	li	s3,1
   18dac:	08e10423          	sb	a4,136(sp)
   18db0:	060103a3          	sb	zero,103(sp)
   18db4:	00098a13          	mv	s4,s3
   18db8:	08810b93          	addi	s7,sp,136
   18dbc:	00000493          	li	s1,0
   18dc0:	ac5ff06f          	j	18884 <_vfiprintf_r+0x2e0>
   18dc4:	07010613          	addi	a2,sp,112
   18dc8:	000d0593          	mv	a1,s10
   18dcc:	000a8513          	mv	a0,s5
   18dd0:	05f13423          	sd	t6,72(sp)
   18dd4:	05e13023          	sd	t5,64(sp)
   18dd8:	03d13c23          	sd	t4,56(sp)
   18ddc:	02513823          	sd	t0,48(sp)
   18de0:	02713423          	sd	t2,40(sp)
   18de4:	02613023          	sd	t1,32(sp)
   18de8:	eb8ff0ef          	jal	184a0 <__sprint_r.part.0>
   18dec:	22051063          	bnez	a0,1900c <_vfiprintf_r+0xa68>
   18df0:	07812503          	lw	a0,120(sp)
   18df4:	08013783          	ld	a5,128(sp)
   18df8:	000c8413          	mv	s0,s9
   18dfc:	0015061b          	addiw	a2,a0,1
   18e00:	04813f83          	ld	t6,72(sp)
   18e04:	04013f03          	ld	t5,64(sp)
   18e08:	03813e83          	ld	t4,56(sp)
   18e0c:	03013283          	ld	t0,48(sp)
   18e10:	02813383          	ld	t2,40(sp)
   18e14:	02013303          	ld	t1,32(sp)
   18e18:	ab9ff06f          	j	188d0 <_vfiprintf_r+0x32c>
   18e1c:	07812603          	lw	a2,120(sp)
   18e20:	08013783          	ld	a5,128(sp)
   18e24:	0016059b          	addiw	a1,a2,1
   18e28:	06714503          	lbu	a0,103(sp)
   18e2c:	b00508e3          	beqz	a0,1893c <_vfiprintf_r+0x398>
   18e30:	00100513          	li	a0,1
   18e34:	06710613          	addi	a2,sp,103
   18e38:	00a787b3          	add	a5,a5,a0
   18e3c:	00c43023          	sd	a2,0(s0)
   18e40:	00a43423          	sd	a0,8(s0)
   18e44:	08f13023          	sd	a5,128(sp)
   18e48:	06b12c23          	sw	a1,120(sp)
   18e4c:	00700613          	li	a2,7
   18e50:	2ab65a63          	ble	a1,a2,19104 <_vfiprintf_r+0xb60>
   18e54:	44079e63          	bnez	a5,192b0 <_vfiprintf_r+0xd0c>
   18e58:	2c039063          	bnez	t2,19118 <_vfiprintf_r+0xb74>
   18e5c:	00000613          	li	a2,0
   18e60:	00050593          	mv	a1,a0
   18e64:	000c8413          	mv	s0,s9
   18e68:	08000513          	li	a0,128
   18e6c:	b0a288e3          	beq	t0,a0,1897c <_vfiprintf_r+0x3d8>
   18e70:	414484bb          	subw	s1,s1,s4
   18e74:	ba9054e3          	blez	s1,18a1c <_vfiprintf_r+0x478>
   18e78:	0001b737          	lui	a4,0x1b
   18e7c:	01000513          	li	a0,16
   18e80:	49070d93          	addi	s11,a4,1168 # 1b490 <zeroes.4137>
   18e84:	06955263          	ble	s1,a0,18ee8 <_vfiprintf_r+0x944>
   18e88:	01000e93          	li	t4,16
   18e8c:	0001b737          	lui	a4,0x1b
   18e90:	49070d93          	addi	s11,a4,1168 # 1b490 <zeroes.4137>
   18e94:	00700f13          	li	t5,7
   18e98:	000e8f93          	mv	t6,t4
   18e9c:	0180006f          	j	18eb4 <_vfiprintf_r+0x910>
   18ea0:	0026059b          	addiw	a1,a2,2
   18ea4:	01040413          	addi	s0,s0,16
   18ea8:	00050613          	mv	a2,a0
   18eac:	ff04849b          	addiw	s1,s1,-16
   18eb0:	029fdc63          	ble	s1,t6,18ee8 <_vfiprintf_r+0x944>
   18eb4:	01078793          	addi	a5,a5,16
   18eb8:	0016051b          	addiw	a0,a2,1
   18ebc:	01b43023          	sd	s11,0(s0)
   18ec0:	01d43423          	sd	t4,8(s0)
   18ec4:	08f13023          	sd	a5,128(sp)
   18ec8:	06a12c23          	sw	a0,120(sp)
   18ecc:	fcaf5ae3          	ble	a0,t5,18ea0 <_vfiprintf_r+0x8fc>
   18ed0:	14079863          	bnez	a5,19020 <_vfiprintf_r+0xa7c>
   18ed4:	ff04849b          	addiw	s1,s1,-16
   18ed8:	00100593          	li	a1,1
   18edc:	00000613          	li	a2,0
   18ee0:	000c8413          	mv	s0,s9
   18ee4:	fc9fc8e3          	blt	t6,s1,18eb4 <_vfiprintf_r+0x910>
   18ee8:	009787b3          	add	a5,a5,s1
   18eec:	01b43023          	sd	s11,0(s0)
   18ef0:	00943423          	sd	s1,8(s0)
   18ef4:	08f13023          	sd	a5,128(sp)
   18ef8:	06b12c23          	sw	a1,120(sp)
   18efc:	00700613          	li	a2,7
   18f00:	24b64063          	blt	a2,a1,19140 <_vfiprintf_r+0xb9c>
   18f04:	01040413          	addi	s0,s0,16
   18f08:	0015859b          	addiw	a1,a1,1
   18f0c:	00fa07b3          	add	a5,s4,a5
   18f10:	01743023          	sd	s7,0(s0)
   18f14:	01443423          	sd	s4,8(s0)
   18f18:	08f13023          	sd	a5,128(sp)
   18f1c:	06b12c23          	sw	a1,120(sp)
   18f20:	00700713          	li	a4,7
   18f24:	b0b74ae3          	blt	a4,a1,18a38 <_vfiprintf_r+0x494>
   18f28:	01040413          	addi	s0,s0,16
   18f2c:	00437313          	andi	t1,t1,4
   18f30:	0a030863          	beqz	t1,18fe0 <_vfiprintf_r+0xa3c>
   18f34:	413904bb          	subw	s1,s2,s3
   18f38:	0a905463          	blez	s1,18fe0 <_vfiprintf_r+0xa3c>
   18f3c:	01000713          	li	a4,16
   18f40:	62975863          	ble	s1,a4,19570 <_vfiprintf_r+0xfcc>
   18f44:	01000a13          	li	s4,16
   18f48:	07812603          	lw	a2,120(sp)
   18f4c:	05813823          	sd	s8,80(sp)
   18f50:	00700d93          	li	s11,7
   18f54:	000a0b93          	mv	s7,s4
   18f58:	0180006f          	j	18f70 <_vfiprintf_r+0x9cc>
   18f5c:	0026059b          	addiw	a1,a2,2
   18f60:	01040413          	addi	s0,s0,16
   18f64:	00070613          	mv	a2,a4
   18f68:	ff04849b          	addiw	s1,s1,-16
   18f6c:	029bdc63          	ble	s1,s7,18fa4 <_vfiprintf_r+0xa00>
   18f70:	01078793          	addi	a5,a5,16
   18f74:	0016071b          	addiw	a4,a2,1
   18f78:	01843023          	sd	s8,0(s0)
   18f7c:	01443423          	sd	s4,8(s0)
   18f80:	08f13023          	sd	a5,128(sp)
   18f84:	06e12c23          	sw	a4,120(sp)
   18f88:	fceddae3          	ble	a4,s11,18f5c <_vfiprintf_r+0x9b8>
   18f8c:	0c079e63          	bnez	a5,19068 <_vfiprintf_r+0xac4>
   18f90:	ff04849b          	addiw	s1,s1,-16
   18f94:	00100593          	li	a1,1
   18f98:	00000613          	li	a2,0
   18f9c:	000c8413          	mv	s0,s9
   18fa0:	fc9bc8e3          	blt	s7,s1,18f70 <_vfiprintf_r+0x9cc>
   18fa4:	05013703          	ld	a4,80(sp)
   18fa8:	009787b3          	add	a5,a5,s1
   18fac:	00943423          	sd	s1,8(s0)
   18fb0:	00e43023          	sd	a4,0(s0)
   18fb4:	08f13023          	sd	a5,128(sp)
   18fb8:	06b12c23          	sw	a1,120(sp)
   18fbc:	00700713          	li	a4,7
   18fc0:	02b75063          	ble	a1,a4,18fe0 <_vfiprintf_r+0xa3c>
   18fc4:	a80786e3          	beqz	a5,18a50 <_vfiprintf_r+0x4ac>
   18fc8:	07010613          	addi	a2,sp,112
   18fcc:	000d0593          	mv	a1,s10
   18fd0:	000a8513          	mv	a0,s5
   18fd4:	cccff0ef          	jal	184a0 <__sprint_r.part.0>
   18fd8:	02051a63          	bnez	a0,1900c <_vfiprintf_r+0xa68>
   18fdc:	08013783          	ld	a5,128(sp)
   18fe0:	01395463          	ble	s3,s2,18fe8 <_vfiprintf_r+0xa44>
   18fe4:	00098913          	mv	s2,s3
   18fe8:	05812703          	lw	a4,88(sp)
   18fec:	0127073b          	addw	a4,a4,s2
   18ff0:	04e12c23          	sw	a4,88(sp)
   18ff4:	a60788e3          	beqz	a5,18a64 <_vfiprintf_r+0x4c0>
   18ff8:	07010613          	addi	a2,sp,112
   18ffc:	000d0593          	mv	a1,s10
   19000:	000a8513          	mv	a0,s5
   19004:	c9cff0ef          	jal	184a0 <__sprint_r.part.0>
   19008:	a4050ee3          	beqz	a0,18a64 <_vfiprintf_r+0x4c0>
   1900c:	010d5783          	lhu	a5,16(s10)
   19010:	0407f793          	andi	a5,a5,64
   19014:	44079863          	bnez	a5,19464 <_vfiprintf_r+0xec0>
   19018:	05812503          	lw	a0,88(sp)
   1901c:	f94ff06f          	j	187b0 <_vfiprintf_r+0x20c>
   19020:	07010613          	addi	a2,sp,112
   19024:	000d0593          	mv	a1,s10
   19028:	000a8513          	mv	a0,s5
   1902c:	03f13c23          	sd	t6,56(sp)
   19030:	03e13823          	sd	t5,48(sp)
   19034:	03d13423          	sd	t4,40(sp)
   19038:	02613023          	sd	t1,32(sp)
   1903c:	c64ff0ef          	jal	184a0 <__sprint_r.part.0>
   19040:	fc0516e3          	bnez	a0,1900c <_vfiprintf_r+0xa68>
   19044:	07812603          	lw	a2,120(sp)
   19048:	08013783          	ld	a5,128(sp)
   1904c:	000c8413          	mv	s0,s9
   19050:	0016059b          	addiw	a1,a2,1
   19054:	03813f83          	ld	t6,56(sp)
   19058:	03013f03          	ld	t5,48(sp)
   1905c:	02813e83          	ld	t4,40(sp)
   19060:	02013303          	ld	t1,32(sp)
   19064:	e49ff06f          	j	18eac <_vfiprintf_r+0x908>
   19068:	07010613          	addi	a2,sp,112
   1906c:	000d0593          	mv	a1,s10
   19070:	000a8513          	mv	a0,s5
   19074:	c2cff0ef          	jal	184a0 <__sprint_r.part.0>
   19078:	f8051ae3          	bnez	a0,1900c <_vfiprintf_r+0xa68>
   1907c:	07812603          	lw	a2,120(sp)
   19080:	08013783          	ld	a5,128(sp)
   19084:	000c8413          	mv	s0,s9
   19088:	0016059b          	addiw	a1,a2,1
   1908c:	eddff06f          	j	18f68 <_vfiprintf_r+0x9c4>
   19090:	07010613          	addi	a2,sp,112
   19094:	000d0593          	mv	a1,s10
   19098:	000a8513          	mv	a0,s5
   1909c:	04513023          	sd	t0,64(sp)
   190a0:	03f13c23          	sd	t6,56(sp)
   190a4:	03e13823          	sd	t5,48(sp)
   190a8:	03d13423          	sd	t4,40(sp)
   190ac:	02613023          	sd	t1,32(sp)
   190b0:	bf0ff0ef          	jal	184a0 <__sprint_r.part.0>
   190b4:	f4051ce3          	bnez	a0,1900c <_vfiprintf_r+0xa68>
   190b8:	07812603          	lw	a2,120(sp)
   190bc:	08013783          	ld	a5,128(sp)
   190c0:	000c8413          	mv	s0,s9
   190c4:	0016051b          	addiw	a0,a2,1
   190c8:	04013283          	ld	t0,64(sp)
   190cc:	03813f83          	ld	t6,56(sp)
   190d0:	03013f03          	ld	t5,48(sp)
   190d4:	02813e83          	ld	t4,40(sp)
   190d8:	02013303          	ld	t1,32(sp)
   190dc:	8d5ff06f          	j	189b0 <_vfiprintf_r+0x40c>
   190e0:	34079263          	bnez	a5,19424 <_vfiprintf_r+0xe80>
   190e4:	06714603          	lbu	a2,103(sp)
   190e8:	02060663          	beqz	a2,19114 <_vfiprintf_r+0xb70>
   190ec:	00100793          	li	a5,1
   190f0:	06710613          	addi	a2,sp,103
   190f4:	0ac13823          	sd	a2,176(sp)
   190f8:	0af13c23          	sd	a5,184(sp)
   190fc:	00078593          	mv	a1,a5
   19100:	000c8413          	mv	s0,s9
   19104:	00058613          	mv	a2,a1
   19108:	01040413          	addi	s0,s0,16
   1910c:	0015859b          	addiw	a1,a1,1
   19110:	82dff06f          	j	1893c <_vfiprintf_r+0x398>
   19114:	36038063          	beqz	t2,19474 <_vfiprintf_r+0xed0>
   19118:	00200793          	li	a5,2
   1911c:	06810613          	addi	a2,sp,104
   19120:	0ac13823          	sd	a2,176(sp)
   19124:	0af13c23          	sd	a5,184(sp)
   19128:	00100593          	li	a1,1
   1912c:	000c8413          	mv	s0,s9
   19130:	00058613          	mv	a2,a1
   19134:	01040413          	addi	s0,s0,16
   19138:	0015859b          	addiw	a1,a1,1
   1913c:	d2dff06f          	j	18e68 <_vfiprintf_r+0x8c4>
   19140:	1c079263          	bnez	a5,19304 <_vfiprintf_r+0xd60>
   19144:	00100713          	li	a4,1
   19148:	000a0793          	mv	a5,s4
   1914c:	0b713823          	sd	s7,176(sp)
   19150:	0b413c23          	sd	s4,184(sp)
   19154:	09413023          	sd	s4,128(sp)
   19158:	06e12c23          	sw	a4,120(sp)
   1915c:	000c8413          	mv	s0,s9
   19160:	dc9ff06f          	j	18f28 <_vfiprintf_r+0x984>
   19164:	060103a3          	sb	zero,103(sp)
   19168:	1e04c063          	bltz	s1,19348 <_vfiprintf_r+0xda4>
   1916c:	f7f37313          	andi	t1,t1,-129
   19170:	ee078663          	beqz	a5,1885c <_vfiprintf_r+0x2b8>
   19174:	00000593          	li	a1,0
   19178:	000c8b93          	mv	s7,s9
   1917c:	01813703          	ld	a4,24(sp)
   19180:	00f7f613          	andi	a2,a5,15
   19184:	fffb8b93          	addi	s7,s7,-1
   19188:	00c70633          	add	a2,a4,a2
   1918c:	00064603          	lbu	a2,0(a2)
   19190:	0047d793          	srli	a5,a5,0x4
   19194:	00cb8023          	sb	a2,0(s7)
   19198:	fe0792e3          	bnez	a5,1917c <_vfiprintf_r+0xbd8>
   1919c:	417c8a3b          	subw	s4,s9,s7
   191a0:	ed0ff06f          	j	18870 <_vfiprintf_r+0x2cc>
   191a4:	00813783          	ld	a5,8(sp)
   191a8:	060103a3          	sb	zero,103(sp)
   191ac:	00878713          	addi	a4,a5,8
   191b0:	0007b783          	ld	a5,0(a5)
   191b4:	a204dee3          	bgez	s1,18bf0 <_vfiprintf_r+0x64c>
   191b8:	00e13423          	sd	a4,8(sp)
   191bc:	00000593          	li	a1,0
   191c0:	920796e3          	bnez	a5,18aec <_vfiprintf_r+0x548>
   191c4:	00100793          	li	a5,1
   191c8:	00100713          	li	a4,1
   191cc:	a2e78ce3          	beq	a5,a4,18c04 <_vfiprintf_r+0x660>
   191d0:	00200713          	li	a4,2
   191d4:	08e78e63          	beq	a5,a4,19270 <_vfiprintf_r+0xccc>
   191d8:	00000793          	li	a5,0
   191dc:	97dff06f          	j	18b58 <_vfiprintf_r+0x5b4>
   191e0:	07010613          	addi	a2,sp,112
   191e4:	000d0593          	mv	a1,s10
   191e8:	000a8513          	mv	a0,s5
   191ec:	02613023          	sd	t1,32(sp)
   191f0:	ab0ff0ef          	jal	184a0 <__sprint_r.part.0>
   191f4:	e0051ce3          	bnez	a0,1900c <_vfiprintf_r+0xa68>
   191f8:	08013783          	ld	a5,128(sp)
   191fc:	000c8413          	mv	s0,s9
   19200:	02013303          	ld	t1,32(sp)
   19204:	d29ff06f          	j	18f2c <_vfiprintf_r+0x988>
   19208:	04037793          	andi	a5,t1,64
   1920c:	00813703          	ld	a4,8(sp)
   19210:	20078263          	beqz	a5,19414 <_vfiprintf_r+0xe70>
   19214:	00071783          	lh	a5,0(a4)
   19218:	00870713          	addi	a4,a4,8
   1921c:	00e13423          	sd	a4,8(sp)
   19220:	8b9ff06f          	j	18ad8 <_vfiprintf_r+0x534>
   19224:	04037793          	andi	a5,t1,64
   19228:	060103a3          	sb	zero,103(sp)
   1922c:	18078263          	beqz	a5,193b0 <_vfiprintf_r+0xe0c>
   19230:	00813783          	ld	a5,8(sp)
   19234:	00878713          	addi	a4,a5,8
   19238:	0007d783          	lhu	a5,0(a5)
   1923c:	9004d2e3          	bgez	s1,18b40 <_vfiprintf_r+0x59c>
   19240:	00e13423          	sd	a4,8(sp)
   19244:	00000593          	li	a1,0
   19248:	f80780e3          	beqz	a5,191c8 <_vfiprintf_r+0xc24>
   1924c:	00000593          	li	a1,0
   19250:	909ff06f          	j	18b58 <_vfiprintf_r+0x5b4>
   19254:	07010613          	addi	a2,sp,112
   19258:	000d0593          	mv	a1,s10
   1925c:	000a8513          	mv	a0,s5
   19260:	a40ff0ef          	jal	184a0 <__sprint_r.part.0>
   19264:	da0514e3          	bnez	a0,1900c <_vfiprintf_r+0xa68>
   19268:	000c8413          	mv	s0,s9
   1926c:	c88ff06f          	j	186f4 <_vfiprintf_r+0x150>
   19270:	00000793          	li	a5,0
   19274:	f05ff06f          	j	19178 <_vfiprintf_r+0xbd4>
   19278:	07010613          	addi	a2,sp,112
   1927c:	000d0593          	mv	a1,s10
   19280:	000a8513          	mv	a0,s5
   19284:	02513423          	sd	t0,40(sp)
   19288:	02613023          	sd	t1,32(sp)
   1928c:	a14ff0ef          	jal	184a0 <__sprint_r.part.0>
   19290:	d6051ee3          	bnez	a0,1900c <_vfiprintf_r+0xa68>
   19294:	07812603          	lw	a2,120(sp)
   19298:	08013783          	ld	a5,128(sp)
   1929c:	000c8413          	mv	s0,s9
   192a0:	0016059b          	addiw	a1,a2,1
   192a4:	02813283          	ld	t0,40(sp)
   192a8:	02013303          	ld	t1,32(sp)
   192ac:	bbdff06f          	j	18e68 <_vfiprintf_r+0x8c4>
   192b0:	07010613          	addi	a2,sp,112
   192b4:	000d0593          	mv	a1,s10
   192b8:	000a8513          	mv	a0,s5
   192bc:	02513823          	sd	t0,48(sp)
   192c0:	02713423          	sd	t2,40(sp)
   192c4:	02613023          	sd	t1,32(sp)
   192c8:	9d8ff0ef          	jal	184a0 <__sprint_r.part.0>
   192cc:	d40510e3          	bnez	a0,1900c <_vfiprintf_r+0xa68>
   192d0:	07812603          	lw	a2,120(sp)
   192d4:	08013783          	ld	a5,128(sp)
   192d8:	000c8413          	mv	s0,s9
   192dc:	0016059b          	addiw	a1,a2,1
   192e0:	03013283          	ld	t0,48(sp)
   192e4:	02813383          	ld	t2,40(sp)
   192e8:	02013303          	ld	t1,32(sp)
   192ec:	e50ff06f          	j	1893c <_vfiprintf_r+0x398>
   192f0:	1e079063          	bnez	a5,194d0 <_vfiprintf_r+0xf2c>
   192f4:	00100593          	li	a1,1
   192f8:	00000613          	li	a2,0
   192fc:	000c8413          	mv	s0,s9
   19300:	b71ff06f          	j	18e70 <_vfiprintf_r+0x8cc>
   19304:	07010613          	addi	a2,sp,112
   19308:	000d0593          	mv	a1,s10
   1930c:	000a8513          	mv	a0,s5
   19310:	02613023          	sd	t1,32(sp)
   19314:	98cff0ef          	jal	184a0 <__sprint_r.part.0>
   19318:	ce051ae3          	bnez	a0,1900c <_vfiprintf_r+0xa68>
   1931c:	07812583          	lw	a1,120(sp)
   19320:	08013783          	ld	a5,128(sp)
   19324:	000c8413          	mv	s0,s9
   19328:	0015859b          	addiw	a1,a1,1
   1932c:	02013303          	ld	t1,32(sp)
   19330:	eecff06f          	j	18a1c <_vfiprintf_r+0x478>
   19334:	00e13423          	sd	a4,8(sp)
   19338:	0001b737          	lui	a4,0x1b
   1933c:	4f870713          	addi	a4,a4,1272 # 1b4f8 <zeroes.4137+0x68>
   19340:	00060313          	mv	t1,a2
   19344:	00e13c23          	sd	a4,24(sp)
   19348:	e20796e3          	bnez	a5,19174 <_vfiprintf_r+0xbd0>
   1934c:	00000593          	li	a1,0
   19350:	00200793          	li	a5,2
   19354:	e75ff06f          	j	191c8 <_vfiprintf_r+0xc24>
   19358:	03000613          	li	a2,48
   1935c:	06e104a3          	sb	a4,105(sp)
   19360:	06c10423          	sb	a2,104(sp)
   19364:	060103a3          	sb	zero,103(sp)
   19368:	00236713          	ori	a4,t1,2
   1936c:	1a04c463          	bltz	s1,19514 <_vfiprintf_r+0xf70>
   19370:	f7f37313          	andi	t1,t1,-129
   19374:	00236313          	ori	t1,t1,2
   19378:	00000593          	li	a1,0
   1937c:	dfdff06f          	j	19178 <_vfiprintf_r+0xbd4>
   19380:	0001b737          	lui	a4,0x1b
   19384:	4f870713          	addi	a4,a4,1272 # 1b4f8 <zeroes.4137+0x68>
   19388:	00000593          	li	a1,0
   1938c:	00e13c23          	sd	a4,24(sp)
   19390:	de9ff06f          	j	19178 <_vfiprintf_r+0xbd4>
   19394:	000b0493          	mv	s1,s6
   19398:	b68ff06f          	j	18700 <_vfiprintf_r+0x15c>
   1939c:	00813783          	ld	a5,8(sp)
   193a0:	00878713          	addi	a4,a5,8
   193a4:	0007e783          	lwu	a5,0(a5)
   193a8:	8404d4e3          	bgez	s1,18bf0 <_vfiprintf_r+0x64c>
   193ac:	e0dff06f          	j	191b8 <_vfiprintf_r+0xc14>
   193b0:	00813783          	ld	a5,8(sp)
   193b4:	00878713          	addi	a4,a5,8
   193b8:	0007e783          	lwu	a5,0(a5)
   193bc:	f804d263          	bgez	s1,18b40 <_vfiprintf_r+0x59c>
   193c0:	e81ff06f          	j	19240 <_vfiprintf_r+0xc9c>
   193c4:	02d00713          	li	a4,45
   193c8:	06e103a3          	sb	a4,103(sp)
   193cc:	40f007b3          	neg	a5,a5
   193d0:	1804c863          	bltz	s1,19560 <_vfiprintf_r+0xfbc>
   193d4:	f7f37313          	andi	t1,t1,-129
   193d8:	02d00593          	li	a1,45
   193dc:	f10ff06f          	j	18aec <_vfiprintf_r+0x548>
   193e0:	0006e783          	lwu	a5,0(a3)
   193e4:	00868693          	addi	a3,a3,8
   193e8:	00d13423          	sd	a3,8(sp)
   193ec:	905ff06f          	j	18cf0 <_vfiprintf_r+0x74c>
   193f0:	00813703          	ld	a4,8(sp)
   193f4:	04037313          	andi	t1,t1,64
   193f8:	00073783          	ld	a5,0(a4)
   193fc:	00870713          	addi	a4,a4,8
   19400:	00e13423          	sd	a4,8(sp)
   19404:	08030063          	beqz	t1,19484 <_vfiprintf_r+0xee0>
   19408:	05815703          	lhu	a4,88(sp)
   1940c:	00e79023          	sh	a4,0(a5)
   19410:	a84ff06f          	j	18694 <_vfiprintf_r+0xf0>
   19414:	00072783          	lw	a5,0(a4)
   19418:	00870713          	addi	a4,a4,8
   1941c:	00e13423          	sd	a4,8(sp)
   19420:	eb8ff06f          	j	18ad8 <_vfiprintf_r+0x534>
   19424:	07010613          	addi	a2,sp,112
   19428:	000d0593          	mv	a1,s10
   1942c:	000a8513          	mv	a0,s5
   19430:	02513823          	sd	t0,48(sp)
   19434:	02713423          	sd	t2,40(sp)
   19438:	02613023          	sd	t1,32(sp)
   1943c:	864ff0ef          	jal	184a0 <__sprint_r.part.0>
   19440:	bc0516e3          	bnez	a0,1900c <_vfiprintf_r+0xa68>
   19444:	07812603          	lw	a2,120(sp)
   19448:	08013783          	ld	a5,128(sp)
   1944c:	000c8413          	mv	s0,s9
   19450:	0016059b          	addiw	a1,a2,1
   19454:	03013283          	ld	t0,48(sp)
   19458:	02813383          	ld	t2,40(sp)
   1945c:	02013303          	ld	t1,32(sp)
   19460:	9c9ff06f          	j	18e28 <_vfiprintf_r+0x884>
   19464:	fff00513          	li	a0,-1
   19468:	b48ff06f          	j	187b0 <_vfiprintf_r+0x20c>
   1946c:	000c8413          	mv	s0,s9
   19470:	acdff06f          	j	18f3c <_vfiprintf_r+0x998>
   19474:	00000613          	li	a2,0
   19478:	00100593          	li	a1,1
   1947c:	000c8413          	mv	s0,s9
   19480:	9e9ff06f          	j	18e68 <_vfiprintf_r+0x8c4>
   19484:	05812703          	lw	a4,88(sp)
   19488:	00e7a023          	sw	a4,0(a5)
   1948c:	a08ff06f          	j	18694 <_vfiprintf_r+0xf0>
   19490:	08013783          	ld	a5,128(sp)
   19494:	b6078ce3          	beqz	a5,1900c <_vfiprintf_r+0xa68>
   19498:	07010613          	addi	a2,sp,112
   1949c:	000d0593          	mv	a1,s10
   194a0:	000a8513          	mv	a0,s5
   194a4:	ffdfe0ef          	jal	184a0 <__sprint_r.part.0>
   194a8:	b65ff06f          	j	1900c <_vfiprintf_r+0xa68>
   194ac:	000b8513          	mv	a0,s7
   194b0:	02613023          	sd	t1,32(sp)
   194b4:	e45fe0ef          	jal	182f8 <strlen>
   194b8:	00050a1b          	sext.w	s4,a0
   194bc:	06714583          	lbu	a1,103(sp)
   194c0:	01b13423          	sd	s11,8(sp)
   194c4:	00000493          	li	s1,0
   194c8:	02013303          	ld	t1,32(sp)
   194cc:	ba4ff06f          	j	18870 <_vfiprintf_r+0x2cc>
   194d0:	07010613          	addi	a2,sp,112
   194d4:	000d0593          	mv	a1,s10
   194d8:	000a8513          	mv	a0,s5
   194dc:	02613023          	sd	t1,32(sp)
   194e0:	fc1fe0ef          	jal	184a0 <__sprint_r.part.0>
   194e4:	b20514e3          	bnez	a0,1900c <_vfiprintf_r+0xa68>
   194e8:	07812603          	lw	a2,120(sp)
   194ec:	08013783          	ld	a5,128(sp)
   194f0:	000c8413          	mv	s0,s9
   194f4:	0016059b          	addiw	a1,a2,1
   194f8:	02013303          	ld	t1,32(sp)
   194fc:	975ff06f          	j	18e70 <_vfiprintf_r+0x8cc>
   19500:	07812603          	lw	a2,120(sp)
   19504:	08013783          	ld	a5,128(sp)
   19508:	05813823          	sd	s8,80(sp)
   1950c:	0016061b          	addiw	a2,a2,1
   19510:	bfcff06f          	j	1890c <_vfiprintf_r+0x368>
   19514:	00000593          	li	a1,0
   19518:	00200613          	li	a2,2
   1951c:	00100513          	li	a0,1
   19520:	08a60263          	beq	a2,a0,195a4 <_vfiprintf_r+0x1000>
   19524:	00200513          	li	a0,2
   19528:	08a61263          	bne	a2,a0,195ac <_vfiprintf_r+0x1008>
   1952c:	00070313          	mv	t1,a4
   19530:	c49ff06f          	j	19178 <_vfiprintf_r+0xbd4>
   19534:	00600793          	li	a5,6
   19538:	0097f463          	bleu	s1,a5,19540 <_vfiprintf_r+0xf9c>
   1953c:	00078493          	mv	s1,a5
   19540:	00048a13          	mv	s4,s1
   19544:	00048993          	mv	s3,s1
   19548:	0604c663          	bltz	s1,195b4 <_vfiprintf_r+0x1010>
   1954c:	0001b737          	lui	a4,0x1b
   19550:	01b13423          	sd	s11,8(sp)
   19554:	51070b93          	addi	s7,a4,1296 # 1b510 <zeroes.4137+0x80>
   19558:	00000493          	li	s1,0
   1955c:	b28ff06f          	j	18884 <_vfiprintf_r+0x2e0>
   19560:	00030713          	mv	a4,t1
   19564:	02d00593          	li	a1,45
   19568:	00100613          	li	a2,1
   1956c:	fb1ff06f          	j	1951c <_vfiprintf_r+0xf78>
   19570:	07812583          	lw	a1,120(sp)
   19574:	05813823          	sd	s8,80(sp)
   19578:	0015859b          	addiw	a1,a1,1
   1957c:	a29ff06f          	j	18fa4 <_vfiprintf_r+0xa00>
   19580:	0001b737          	lui	a4,0x1b
   19584:	00058513          	mv	a0,a1
   19588:	49070d93          	addi	s11,a4,1168 # 1b490 <zeroes.4137>
   1958c:	c60ff06f          	j	189ec <_vfiprintf_r+0x448>
   19590:	00048a13          	mv	s4,s1
   19594:	06714583          	lbu	a1,103(sp)
   19598:	01b13423          	sd	s11,8(sp)
   1959c:	00000493          	li	s1,0
   195a0:	ad0ff06f          	j	18870 <_vfiprintf_r+0x2cc>
   195a4:	00070313          	mv	t1,a4
   195a8:	d44ff06f          	j	18aec <_vfiprintf_r+0x548>
   195ac:	00070313          	mv	t1,a4
   195b0:	da8ff06f          	j	18b58 <_vfiprintf_r+0x5b4>
   195b4:	00000993          	li	s3,0
   195b8:	f95ff06f          	j	1954c <_vfiprintf_r+0xfa8>
   195bc:	00813783          	ld	a5,8(sp)
   195c0:	00080b13          	mv	s6,a6
   195c4:	0007a483          	lw	s1,0(a5)
   195c8:	00878b93          	addi	s7,a5,8
   195cc:	01713423          	sd	s7,8(sp)
   195d0:	9804de63          	bgez	s1,1876c <_vfiprintf_r+0x1c8>
   195d4:	fff00493          	li	s1,-1
   195d8:	000b0813          	mv	a6,s6
   195dc:	954ff06f          	j	18730 <_vfiprintf_r+0x18c>
   195e0:	07d103a3          	sb	t4,103(sp)
   195e4:	f44ff06f          	j	18d28 <_vfiprintf_r+0x784>
   195e8:	07d103a3          	sb	t4,103(sp)
   195ec:	ee0ff06f          	j	18ccc <_vfiprintf_r+0x728>
   195f0:	07d103a3          	sb	t4,103(sp)
   195f4:	fb0ff06f          	j	18da4 <_vfiprintf_r+0x800>
   195f8:	00137793          	andi	a5,t1,1
   195fc:	00078c63          	beqz	a5,19614 <_vfiprintf_r+0x1070>
   19600:	03000793          	li	a5,48
   19604:	0af107a3          	sb	a5,175(sp)
   19608:	05c12a03          	lw	s4,92(sp)
   1960c:	0af10b93          	addi	s7,sp,175
   19610:	a60ff06f          	j	18870 <_vfiprintf_r+0x2cc>
   19614:	00000a13          	li	s4,0
   19618:	000c8b93          	mv	s7,s9
   1961c:	a54ff06f          	j	18870 <_vfiprintf_r+0x2cc>
   19620:	07d103a3          	sb	t4,103(sp)
   19624:	cfcff06f          	j	18b20 <_vfiprintf_r+0x57c>
   19628:	07d103a3          	sb	t4,103(sp)
   1962c:	c90ff06f          	j	18abc <_vfiprintf_r+0x518>
   19630:	07d103a3          	sb	t4,103(sp)
   19634:	d94ff06f          	j	18bc8 <_vfiprintf_r+0x624>
   19638:	07d103a3          	sb	t4,103(sp)
   1963c:	d64ff06f          	j	18ba0 <_vfiprintf_r+0x5fc>

0000000000019640 <vfiprintf>:
   19640:	00060693          	mv	a3,a2
   19644:	00058613          	mv	a2,a1
   19648:	00050593          	mv	a1,a0
   1964c:	8101b503          	ld	a0,-2032(gp) # 1d710 <_impure_ptr>
   19650:	f55fe06f          	j	185a4 <_vfiprintf_r>

0000000000019654 <__sbprintf>:
   19654:	0105d783          	lhu	a5,16(a1)
   19658:	0ac5ae03          	lw	t3,172(a1)
   1965c:	0125d303          	lhu	t1,18(a1)
   19660:	0305b883          	ld	a7,48(a1)
   19664:	0405b803          	ld	a6,64(a1)
   19668:	b3010113          	addi	sp,sp,-1232
   1966c:	ffd7f793          	andi	a5,a5,-3
   19670:	40000713          	li	a4,1024
   19674:	4c813023          	sd	s0,1216(sp)
   19678:	00f11823          	sh	a5,16(sp)
   1967c:	00058413          	mv	s0,a1
   19680:	0b010793          	addi	a5,sp,176
   19684:	00010593          	mv	a1,sp
   19688:	4a913c23          	sd	s1,1208(sp)
   1968c:	4b213823          	sd	s2,1200(sp)
   19690:	4c113423          	sd	ra,1224(sp)
   19694:	00050913          	mv	s2,a0
   19698:	0bc12623          	sw	t3,172(sp)
   1969c:	00611923          	sh	t1,18(sp)
   196a0:	03113823          	sd	a7,48(sp)
   196a4:	05013023          	sd	a6,64(sp)
   196a8:	00f13023          	sd	a5,0(sp)
   196ac:	00f13c23          	sd	a5,24(sp)
   196b0:	00e12623          	sw	a4,12(sp)
   196b4:	02e12023          	sw	a4,32(sp)
   196b8:	02012423          	sw	zero,40(sp)
   196bc:	ee9fe0ef          	jal	185a4 <_vfiprintf_r>
   196c0:	00050493          	mv	s1,a0
   196c4:	00054a63          	bltz	a0,196d8 <__sbprintf+0x84>
   196c8:	00010593          	mv	a1,sp
   196cc:	00090513          	mv	a0,s2
   196d0:	f8cfb0ef          	jal	14e5c <_fflush_r>
   196d4:	02051c63          	bnez	a0,1970c <__sbprintf+0xb8>
   196d8:	01015783          	lhu	a5,16(sp)
   196dc:	0407f793          	andi	a5,a5,64
   196e0:	00078863          	beqz	a5,196f0 <__sbprintf+0x9c>
   196e4:	01045783          	lhu	a5,16(s0)
   196e8:	0407e793          	ori	a5,a5,64
   196ec:	00f41823          	sh	a5,16(s0)
   196f0:	4c813083          	ld	ra,1224(sp)
   196f4:	00048513          	mv	a0,s1
   196f8:	4c013403          	ld	s0,1216(sp)
   196fc:	4b813483          	ld	s1,1208(sp)
   19700:	4b013903          	ld	s2,1200(sp)
   19704:	4d010113          	addi	sp,sp,1232
   19708:	00008067          	ret
   1970c:	fff00493          	li	s1,-1
   19710:	fc9ff06f          	j	196d8 <__sbprintf+0x84>

0000000000019714 <_calloc_r>:
   19714:	02c585b3          	mul	a1,a1,a2
   19718:	ff010113          	addi	sp,sp,-16
   1971c:	00113423          	sd	ra,8(sp)
   19720:	00813023          	sd	s0,0(sp)
   19724:	e15fc0ef          	jal	16538 <_malloc_r>
   19728:	08050c63          	beqz	a0,197c0 <_calloc_r+0xac>
   1972c:	ff853603          	ld	a2,-8(a0)
   19730:	04800713          	li	a4,72
   19734:	00050413          	mv	s0,a0
   19738:	ffc67613          	andi	a2,a2,-4
   1973c:	ff860613          	addi	a2,a2,-8
   19740:	04c76e63          	bltu	a4,a2,1979c <_calloc_r+0x88>
   19744:	02700693          	li	a3,39
   19748:	00050793          	mv	a5,a0
   1974c:	02c6f863          	bleu	a2,a3,1977c <_calloc_r+0x68>
   19750:	00053023          	sd	zero,0(a0)
   19754:	00053423          	sd	zero,8(a0)
   19758:	03700793          	li	a5,55
   1975c:	04c7fe63          	bleu	a2,a5,197b8 <_calloc_r+0xa4>
   19760:	00053823          	sd	zero,16(a0)
   19764:	00053c23          	sd	zero,24(a0)
   19768:	02050793          	addi	a5,a0,32
   1976c:	00e61863          	bne	a2,a4,1977c <_calloc_r+0x68>
   19770:	02053023          	sd	zero,32(a0)
   19774:	03050793          	addi	a5,a0,48
   19778:	02053423          	sd	zero,40(a0)
   1977c:	0007b023          	sd	zero,0(a5)
   19780:	0007b423          	sd	zero,8(a5)
   19784:	0007b823          	sd	zero,16(a5)
   19788:	00040513          	mv	a0,s0
   1978c:	00813083          	ld	ra,8(sp)
   19790:	00013403          	ld	s0,0(sp)
   19794:	01010113          	addi	sp,sp,16
   19798:	00008067          	ret
   1979c:	00000593          	li	a1,0
   197a0:	f10fd0ef          	jal	16eb0 <memset>
   197a4:	00813083          	ld	ra,8(sp)
   197a8:	00040513          	mv	a0,s0
   197ac:	00013403          	ld	s0,0(sp)
   197b0:	01010113          	addi	sp,sp,16
   197b4:	00008067          	ret
   197b8:	01050793          	addi	a5,a0,16
   197bc:	fc1ff06f          	j	1977c <_calloc_r+0x68>
   197c0:	00000513          	li	a0,0
   197c4:	fc9ff06f          	j	1978c <_calloc_r+0x78>

00000000000197c8 <_fclose_r>:
   197c8:	0e058e63          	beqz	a1,198c4 <_fclose_r+0xfc>
   197cc:	fe010113          	addi	sp,sp,-32
   197d0:	00813823          	sd	s0,16(sp)
   197d4:	00913423          	sd	s1,8(sp)
   197d8:	00113c23          	sd	ra,24(sp)
   197dc:	01213023          	sd	s2,0(sp)
   197e0:	00050493          	mv	s1,a0
   197e4:	00058413          	mv	s0,a1
   197e8:	00050663          	beqz	a0,197f4 <_fclose_r+0x2c>
   197ec:	05052783          	lw	a5,80(a0)
   197f0:	0a078a63          	beqz	a5,198a4 <_fclose_r+0xdc>
   197f4:	01041783          	lh	a5,16(s0)
   197f8:	00000513          	li	a0,0
   197fc:	00079e63          	bnez	a5,19818 <_fclose_r+0x50>
   19800:	01813083          	ld	ra,24(sp)
   19804:	01013403          	ld	s0,16(sp)
   19808:	00813483          	ld	s1,8(sp)
   1980c:	00013903          	ld	s2,0(sp)
   19810:	02010113          	addi	sp,sp,32
   19814:	00008067          	ret
   19818:	00040593          	mv	a1,s0
   1981c:	00048513          	mv	a0,s1
   19820:	bd0fb0ef          	jal	14bf0 <__sflush_r>
   19824:	05043783          	ld	a5,80(s0)
   19828:	00050913          	mv	s2,a0
   1982c:	00078a63          	beqz	a5,19840 <_fclose_r+0x78>
   19830:	03043583          	ld	a1,48(s0)
   19834:	00048513          	mv	a0,s1
   19838:	000780e7          	jalr	a5
   1983c:	06054863          	bltz	a0,198ac <_fclose_r+0xe4>
   19840:	01045783          	lhu	a5,16(s0)
   19844:	0807f793          	andi	a5,a5,128
   19848:	06079663          	bnez	a5,198b4 <_fclose_r+0xec>
   1984c:	05843583          	ld	a1,88(s0)
   19850:	00058c63          	beqz	a1,19868 <_fclose_r+0xa0>
   19854:	07440793          	addi	a5,s0,116
   19858:	00f58663          	beq	a1,a5,19864 <_fclose_r+0x9c>
   1985c:	00048513          	mv	a0,s1
   19860:	b01fb0ef          	jal	15360 <_free_r>
   19864:	04043c23          	sd	zero,88(s0)
   19868:	07843583          	ld	a1,120(s0)
   1986c:	00058863          	beqz	a1,1987c <_fclose_r+0xb4>
   19870:	00048513          	mv	a0,s1
   19874:	aedfb0ef          	jal	15360 <_free_r>
   19878:	06043c23          	sd	zero,120(s0)
   1987c:	99dfb0ef          	jal	15218 <__sfp_lock_acquire>
   19880:	00041823          	sh	zero,16(s0)
   19884:	999fb0ef          	jal	1521c <__sfp_lock_release>
   19888:	01813083          	ld	ra,24(sp)
   1988c:	00090513          	mv	a0,s2
   19890:	01013403          	ld	s0,16(sp)
   19894:	00813483          	ld	s1,8(sp)
   19898:	00013903          	ld	s2,0(sp)
   1989c:	02010113          	addi	sp,sp,32
   198a0:	00008067          	ret
   198a4:	965fb0ef          	jal	15208 <__sinit>
   198a8:	f4dff06f          	j	197f4 <_fclose_r+0x2c>
   198ac:	fff00913          	li	s2,-1
   198b0:	f91ff06f          	j	19840 <_fclose_r+0x78>
   198b4:	01843583          	ld	a1,24(s0)
   198b8:	00048513          	mv	a0,s1
   198bc:	aa5fb0ef          	jal	15360 <_free_r>
   198c0:	f8dff06f          	j	1984c <_fclose_r+0x84>
   198c4:	00000513          	li	a0,0
   198c8:	00008067          	ret

00000000000198cc <fclose>:
   198cc:	00050593          	mv	a1,a0
   198d0:	8101b503          	ld	a0,-2032(gp) # 1d710 <_impure_ptr>
   198d4:	ef5ff06f          	j	197c8 <_fclose_r>

00000000000198d8 <__fputwc>:
   198d8:	fb010113          	addi	sp,sp,-80
   198dc:	04813023          	sd	s0,64(sp)
   198e0:	03413023          	sd	s4,32(sp)
   198e4:	01513c23          	sd	s5,24(sp)
   198e8:	04113423          	sd	ra,72(sp)
   198ec:	02913c23          	sd	s1,56(sp)
   198f0:	03213823          	sd	s2,48(sp)
   198f4:	03313423          	sd	s3,40(sp)
   198f8:	01613823          	sd	s6,16(sp)
   198fc:	00050a93          	mv	s5,a0
   19900:	00058a13          	mv	s4,a1
   19904:	00060413          	mv	s0,a2
   19908:	a41fc0ef          	jal	16348 <__locale_mb_cur_max>
   1990c:	00100793          	li	a5,1
   19910:	10f50663          	beq	a0,a5,19a1c <__fputwc+0x144>
   19914:	00810493          	addi	s1,sp,8
   19918:	0a440693          	addi	a3,s0,164
   1991c:	000a0613          	mv	a2,s4
   19920:	00048593          	mv	a1,s1
   19924:	000a8513          	mv	a0,s5
   19928:	699000ef          	jal	1a7c0 <_wcrtomb_r>
   1992c:	fff00793          	li	a5,-1
   19930:	00050993          	mv	s3,a0
   19934:	08f50e63          	beq	a0,a5,199d0 <__fputwc+0xf8>
   19938:	10050263          	beqz	a0,19a3c <__fputwc+0x164>
   1993c:	00814583          	lbu	a1,8(sp)
   19940:	00c42783          	lw	a5,12(s0)
   19944:	00000913          	li	s2,0
   19948:	00a00b13          	li	s6,10
   1994c:	fff7879b          	addiw	a5,a5,-1
   19950:	00f42623          	sw	a5,12(s0)
   19954:	0207cc63          	bltz	a5,1998c <__fputwc+0xb4>
   19958:	00043783          	ld	a5,0(s0)
   1995c:	00b78023          	sb	a1,0(a5)
   19960:	00043783          	ld	a5,0(s0)
   19964:	00178793          	addi	a5,a5,1
   19968:	00f43023          	sd	a5,0(s0)
   1996c:	00190913          	addi	s2,s2,1
   19970:	00148493          	addi	s1,s1,1
   19974:	0d397463          	bleu	s3,s2,19a3c <__fputwc+0x164>
   19978:	00c42783          	lw	a5,12(s0)
   1997c:	0004c583          	lbu	a1,0(s1)
   19980:	fff7879b          	addiw	a5,a5,-1
   19984:	00f42623          	sw	a5,12(s0)
   19988:	fc07d8e3          	bgez	a5,19958 <__fputwc+0x80>
   1998c:	02842703          	lw	a4,40(s0)
   19990:	06e7ca63          	blt	a5,a4,19a04 <__fputwc+0x12c>
   19994:	00043783          	ld	a5,0(s0)
   19998:	00b78023          	sb	a1,0(a5)
   1999c:	00043783          	ld	a5,0(s0)
   199a0:	0007c703          	lbu	a4,0(a5)
   199a4:	00178793          	addi	a5,a5,1
   199a8:	fd6710e3          	bne	a4,s6,19968 <__fputwc+0x90>
   199ac:	00040613          	mv	a2,s0
   199b0:	000b0593          	mv	a1,s6
   199b4:	000a8513          	mv	a0,s5
   199b8:	481000ef          	jal	1a638 <__swbuf_r>
   199bc:	0015051b          	addiw	a0,a0,1
   199c0:	00153513          	seqz	a0,a0
   199c4:	fa0504e3          	beqz	a0,1996c <__fputwc+0x94>
   199c8:	fff00513          	li	a0,-1
   199cc:	0100006f          	j	199dc <__fputwc+0x104>
   199d0:	01045783          	lhu	a5,16(s0)
   199d4:	0407e793          	ori	a5,a5,64
   199d8:	00f41823          	sh	a5,16(s0)
   199dc:	04813083          	ld	ra,72(sp)
   199e0:	04013403          	ld	s0,64(sp)
   199e4:	03813483          	ld	s1,56(sp)
   199e8:	03013903          	ld	s2,48(sp)
   199ec:	02813983          	ld	s3,40(sp)
   199f0:	02013a03          	ld	s4,32(sp)
   199f4:	01813a83          	ld	s5,24(sp)
   199f8:	01013b03          	ld	s6,16(sp)
   199fc:	05010113          	addi	sp,sp,80
   19a00:	00008067          	ret
   19a04:	00040613          	mv	a2,s0
   19a08:	000a8513          	mv	a0,s5
   19a0c:	42d000ef          	jal	1a638 <__swbuf_r>
   19a10:	0015051b          	addiw	a0,a0,1
   19a14:	00153513          	seqz	a0,a0
   19a18:	fadff06f          	j	199c4 <__fputwc+0xec>
   19a1c:	fffa079b          	addiw	a5,s4,-1
   19a20:	0fe00713          	li	a4,254
   19a24:	eef768e3          	bltu	a4,a5,19914 <__fputwc+0x3c>
   19a28:	0ffa7593          	andi	a1,s4,255
   19a2c:	00b10423          	sb	a1,8(sp)
   19a30:	00100993          	li	s3,1
   19a34:	00810493          	addi	s1,sp,8
   19a38:	f09ff06f          	j	19940 <__fputwc+0x68>
   19a3c:	000a0513          	mv	a0,s4
   19a40:	f9dff06f          	j	199dc <__fputwc+0x104>

0000000000019a44 <_fputwc_r>:
   19a44:	01061783          	lh	a5,16(a2)
   19a48:	00002737          	lui	a4,0x2
   19a4c:	03279693          	slli	a3,a5,0x32
   19a50:	0006cc63          	bltz	a3,19a68 <_fputwc_r+0x24>
   19a54:	0ac62683          	lw	a3,172(a2)
   19a58:	00e7e7b3          	or	a5,a5,a4
   19a5c:	00f61823          	sh	a5,16(a2)
   19a60:	00e6e733          	or	a4,a3,a4
   19a64:	0ae62623          	sw	a4,172(a2)
   19a68:	e71ff06f          	j	198d8 <__fputwc>

0000000000019a6c <fputwc>:
   19a6c:	fd010113          	addi	sp,sp,-48
   19a70:	02813023          	sd	s0,32(sp)
   19a74:	8101b403          	ld	s0,-2032(gp) # 1d710 <_impure_ptr>
   19a78:	00913c23          	sd	s1,24(sp)
   19a7c:	02113423          	sd	ra,40(sp)
   19a80:	00050493          	mv	s1,a0
   19a84:	00058613          	mv	a2,a1
   19a88:	00040663          	beqz	s0,19a94 <fputwc+0x28>
   19a8c:	05042783          	lw	a5,80(s0)
   19a90:	04078263          	beqz	a5,19ad4 <fputwc+0x68>
   19a94:	01061783          	lh	a5,16(a2)
   19a98:	00002737          	lui	a4,0x2
   19a9c:	03279693          	slli	a3,a5,0x32
   19aa0:	0006cc63          	bltz	a3,19ab8 <fputwc+0x4c>
   19aa4:	0ac62683          	lw	a3,172(a2)
   19aa8:	00e7e7b3          	or	a5,a5,a4
   19aac:	00f61823          	sh	a5,16(a2)
   19ab0:	00e6e733          	or	a4,a3,a4
   19ab4:	0ae62623          	sw	a4,172(a2)
   19ab8:	00048593          	mv	a1,s1
   19abc:	00040513          	mv	a0,s0
   19ac0:	02813083          	ld	ra,40(sp)
   19ac4:	02013403          	ld	s0,32(sp)
   19ac8:	01813483          	ld	s1,24(sp)
   19acc:	03010113          	addi	sp,sp,48
   19ad0:	e09ff06f          	j	198d8 <__fputwc>
   19ad4:	00040513          	mv	a0,s0
   19ad8:	00b13423          	sd	a1,8(sp)
   19adc:	f2cfb0ef          	jal	15208 <__sinit>
   19ae0:	00813603          	ld	a2,8(sp)
   19ae4:	fb1ff06f          	j	19a94 <fputwc+0x28>

0000000000019ae8 <__sfvwrite_r>:
   19ae8:	01063783          	ld	a5,16(a2)
   19aec:	26078a63          	beqz	a5,19d60 <__sfvwrite_r+0x278>
   19af0:	0105d703          	lhu	a4,16(a1)
   19af4:	f9010113          	addi	sp,sp,-112
   19af8:	06813023          	sd	s0,96(sp)
   19afc:	03513c23          	sd	s5,56(sp)
   19b00:	03613823          	sd	s6,48(sp)
   19b04:	06113423          	sd	ra,104(sp)
   19b08:	04913c23          	sd	s1,88(sp)
   19b0c:	05213823          	sd	s2,80(sp)
   19b10:	05313423          	sd	s3,72(sp)
   19b14:	05413023          	sd	s4,64(sp)
   19b18:	03713423          	sd	s7,40(sp)
   19b1c:	03813023          	sd	s8,32(sp)
   19b20:	01913c23          	sd	s9,24(sp)
   19b24:	01a13823          	sd	s10,16(sp)
   19b28:	01b13423          	sd	s11,8(sp)
   19b2c:	00877793          	andi	a5,a4,8
   19b30:	00058413          	mv	s0,a1
   19b34:	00050b13          	mv	s6,a0
   19b38:	00060a93          	mv	s5,a2
   19b3c:	0a078863          	beqz	a5,19bec <__sfvwrite_r+0x104>
   19b40:	0185b783          	ld	a5,24(a1)
   19b44:	0a078463          	beqz	a5,19bec <__sfvwrite_r+0x104>
   19b48:	00277793          	andi	a5,a4,2
   19b4c:	000ab483          	ld	s1,0(s5)
   19b50:	0c078063          	beqz	a5,19c10 <__sfvwrite_r+0x128>
   19b54:	80000a37          	lui	s4,0x80000
   19b58:	00000993          	li	s3,0
   19b5c:	00000913          	li	s2,0
   19b60:	c00a4a13          	xori	s4,s4,-1024
   19b64:	00098613          	mv	a2,s3
   19b68:	000b0513          	mv	a0,s6
   19b6c:	1e090263          	beqz	s2,19d50 <__sfvwrite_r+0x268>
   19b70:	00090693          	mv	a3,s2
   19b74:	012a7463          	bleu	s2,s4,19b7c <__sfvwrite_r+0x94>
   19b78:	000a0693          	mv	a3,s4
   19b7c:	04043783          	ld	a5,64(s0)
   19b80:	03043583          	ld	a1,48(s0)
   19b84:	0006869b          	sext.w	a3,a3
   19b88:	000780e7          	jalr	a5
   19b8c:	22a05063          	blez	a0,19dac <__sfvwrite_r+0x2c4>
   19b90:	010ab783          	ld	a5,16(s5)
   19b94:	00a989b3          	add	s3,s3,a0
   19b98:	40a90933          	sub	s2,s2,a0
   19b9c:	40a78533          	sub	a0,a5,a0
   19ba0:	00aab823          	sd	a0,16(s5)
   19ba4:	fc0510e3          	bnez	a0,19b64 <__sfvwrite_r+0x7c>
   19ba8:	00000793          	li	a5,0
   19bac:	06813083          	ld	ra,104(sp)
   19bb0:	00078513          	mv	a0,a5
   19bb4:	06013403          	ld	s0,96(sp)
   19bb8:	05813483          	ld	s1,88(sp)
   19bbc:	05013903          	ld	s2,80(sp)
   19bc0:	04813983          	ld	s3,72(sp)
   19bc4:	04013a03          	ld	s4,64(sp)
   19bc8:	03813a83          	ld	s5,56(sp)
   19bcc:	03013b03          	ld	s6,48(sp)
   19bd0:	02813b83          	ld	s7,40(sp)
   19bd4:	02013c03          	ld	s8,32(sp)
   19bd8:	01813c83          	ld	s9,24(sp)
   19bdc:	01013d03          	ld	s10,16(sp)
   19be0:	00813d83          	ld	s11,8(sp)
   19be4:	07010113          	addi	sp,sp,112
   19be8:	00008067          	ret
   19bec:	00040593          	mv	a1,s0
   19bf0:	000b0513          	mv	a0,s6
   19bf4:	909f90ef          	jal	134fc <__swsetup_r>
   19bf8:	fff00793          	li	a5,-1
   19bfc:	fa0518e3          	bnez	a0,19bac <__sfvwrite_r+0xc4>
   19c00:	01045703          	lhu	a4,16(s0)
   19c04:	000ab483          	ld	s1,0(s5)
   19c08:	00277793          	andi	a5,a4,2
   19c0c:	f40794e3          	bnez	a5,19b54 <__sfvwrite_r+0x6c>
   19c10:	00177793          	andi	a5,a4,1
   19c14:	1a079663          	bnez	a5,19dc0 <__sfvwrite_r+0x2d8>
   19c18:	80000bb7          	lui	s7,0x80000
   19c1c:	ffebcc13          	xori	s8,s7,-2
   19c20:	00000c93          	li	s9,0
   19c24:	00000913          	li	s2,0
   19c28:	fffbcb93          	not	s7,s7
   19c2c:	10090a63          	beqz	s2,19d40 <__sfvwrite_r+0x258>
   19c30:	00c42983          	lw	s3,12(s0)
   19c34:	20077793          	andi	a5,a4,512
   19c38:	00098a13          	mv	s4,s3
   19c3c:	26078863          	beqz	a5,19eac <__sfvwrite_r+0x3c4>
   19c40:	2b396a63          	bltu	s2,s3,19ef4 <__sfvwrite_r+0x40c>
   19c44:	48077793          	andi	a5,a4,1152
   19c48:	2a078663          	beqz	a5,19ef4 <__sfvwrite_r+0x40c>
   19c4c:	02042a03          	lw	s4,32(s0)
   19c50:	01843583          	ld	a1,24(s0)
   19c54:	00043d03          	ld	s10,0(s0)
   19c58:	001a179b          	slliw	a5,s4,0x1
   19c5c:	01478a3b          	addw	s4,a5,s4
   19c60:	01fa579b          	srliw	a5,s4,0x1f
   19c64:	40bd0d3b          	subw	s10,s10,a1
   19c68:	01478a3b          	addw	s4,a5,s4
   19c6c:	000d0993          	mv	s3,s10
   19c70:	401a5a1b          	sraiw	s4,s4,0x1
   19c74:	00198793          	addi	a5,s3,1
   19c78:	000a0613          	mv	a2,s4
   19c7c:	012787b3          	add	a5,a5,s2
   19c80:	00f67863          	bleu	a5,a2,19c90 <__sfvwrite_r+0x1a8>
   19c84:	001d0a1b          	addiw	s4,s10,1
   19c88:	01490a3b          	addw	s4,s2,s4
   19c8c:	000a0613          	mv	a2,s4
   19c90:	40077713          	andi	a4,a4,1024
   19c94:	2a070a63          	beqz	a4,19f48 <__sfvwrite_r+0x460>
   19c98:	00060593          	mv	a1,a2
   19c9c:	000b0513          	mv	a0,s6
   19ca0:	899fc0ef          	jal	16538 <_malloc_r>
   19ca4:	00050d93          	mv	s11,a0
   19ca8:	2e050263          	beqz	a0,19f8c <__sfvwrite_r+0x4a4>
   19cac:	01843583          	ld	a1,24(s0)
   19cb0:	00098613          	mv	a2,s3
   19cb4:	8dcfd0ef          	jal	16d90 <memcpy>
   19cb8:	01045783          	lhu	a5,16(s0)
   19cbc:	b7f7f793          	andi	a5,a5,-1153
   19cc0:	0807e793          	ori	a5,a5,128
   19cc4:	00f41823          	sh	a5,16(s0)
   19cc8:	41aa0d3b          	subw	s10,s4,s10
   19ccc:	013d8533          	add	a0,s11,s3
   19cd0:	03442023          	sw	s4,32(s0)
   19cd4:	01b43c23          	sd	s11,24(s0)
   19cd8:	00a43023          	sd	a0,0(s0)
   19cdc:	00090a13          	mv	s4,s2
   19ce0:	01a42623          	sw	s10,12(s0)
   19ce4:	000a0d13          	mv	s10,s4
   19ce8:	00090993          	mv	s3,s2
   19cec:	01497863          	bleu	s4,s2,19cfc <__sfvwrite_r+0x214>
   19cf0:	00090d13          	mv	s10,s2
   19cf4:	00090993          	mv	s3,s2
   19cf8:	00090a13          	mv	s4,s2
   19cfc:	000d0613          	mv	a2,s10
   19d00:	000c8593          	mv	a1,s9
   19d04:	298000ef          	jal	19f9c <memmove>
   19d08:	00c42783          	lw	a5,12(s0)
   19d0c:	00043603          	ld	a2,0(s0)
   19d10:	41478a3b          	subw	s4,a5,s4
   19d14:	01a60633          	add	a2,a2,s10
   19d18:	01442623          	sw	s4,12(s0)
   19d1c:	00c43023          	sd	a2,0(s0)
   19d20:	010ab503          	ld	a0,16(s5)
   19d24:	013c8cb3          	add	s9,s9,s3
   19d28:	41390933          	sub	s2,s2,s3
   19d2c:	413509b3          	sub	s3,a0,s3
   19d30:	013ab823          	sd	s3,16(s5)
   19d34:	e6098ae3          	beqz	s3,19ba8 <__sfvwrite_r+0xc0>
   19d38:	01045703          	lhu	a4,16(s0)
   19d3c:	ee091ae3          	bnez	s2,19c30 <__sfvwrite_r+0x148>
   19d40:	0004bc83          	ld	s9,0(s1)
   19d44:	0084b903          	ld	s2,8(s1)
   19d48:	01048493          	addi	s1,s1,16
   19d4c:	ee1ff06f          	j	19c2c <__sfvwrite_r+0x144>
   19d50:	0004b983          	ld	s3,0(s1)
   19d54:	0084b903          	ld	s2,8(s1)
   19d58:	01048493          	addi	s1,s1,16
   19d5c:	e09ff06f          	j	19b64 <__sfvwrite_r+0x7c>
   19d60:	00000793          	li	a5,0
   19d64:	00078513          	mv	a0,a5
   19d68:	00008067          	ret
   19d6c:	01397463          	bleu	s3,s2,19d74 <__sfvwrite_r+0x28c>
   19d70:	00090993          	mv	s3,s2
   19d74:	00098613          	mv	a2,s3
   19d78:	000c8593          	mv	a1,s9
   19d7c:	220000ef          	jal	19f9c <memmove>
   19d80:	00c42783          	lw	a5,12(s0)
   19d84:	00043703          	ld	a4,0(s0)
   19d88:	413787bb          	subw	a5,a5,s3
   19d8c:	01370733          	add	a4,a4,s3
   19d90:	00f42623          	sw	a5,12(s0)
   19d94:	00e43023          	sd	a4,0(s0)
   19d98:	f80794e3          	bnez	a5,19d20 <__sfvwrite_r+0x238>
   19d9c:	00040593          	mv	a1,s0
   19da0:	000b0513          	mv	a0,s6
   19da4:	8b8fb0ef          	jal	14e5c <_fflush_r>
   19da8:	f6050ce3          	beqz	a0,19d20 <__sfvwrite_r+0x238>
   19dac:	01041783          	lh	a5,16(s0)
   19db0:	0407e793          	ori	a5,a5,64
   19db4:	00f41823          	sh	a5,16(s0)
   19db8:	fff00793          	li	a5,-1
   19dbc:	df1ff06f          	j	19bac <__sfvwrite_r+0xc4>
   19dc0:	00000a13          	li	s4,0
   19dc4:	00000c13          	li	s8,0
   19dc8:	00000d13          	li	s10,0
   19dcc:	00000913          	li	s2,0
   19dd0:	06090e63          	beqz	s2,19e4c <__sfvwrite_r+0x364>
   19dd4:	140c0863          	beqz	s8,19f24 <__sfvwrite_r+0x43c>
   19dd8:	000a0993          	mv	s3,s4
   19ddc:	01497463          	bleu	s4,s2,19de4 <__sfvwrite_r+0x2fc>
   19de0:	00090993          	mv	s3,s2
   19de4:	00043503          	ld	a0,0(s0)
   19de8:	01843783          	ld	a5,24(s0)
   19dec:	00098b93          	mv	s7,s3
   19df0:	02042683          	lw	a3,32(s0)
   19df4:	00a7fa63          	bleu	a0,a5,19e08 <__sfvwrite_r+0x320>
   19df8:	00c42c83          	lw	s9,12(s0)
   19dfc:	01968cbb          	addw	s9,a3,s9
   19e00:	000c8d93          	mv	s11,s9
   19e04:	053dce63          	blt	s11,s3,19e60 <__sfvwrite_r+0x378>
   19e08:	0ed9ca63          	blt	s3,a3,19efc <__sfvwrite_r+0x414>
   19e0c:	04043783          	ld	a5,64(s0)
   19e10:	03043583          	ld	a1,48(s0)
   19e14:	000d0613          	mv	a2,s10
   19e18:	000b0513          	mv	a0,s6
   19e1c:	000780e7          	jalr	a5
   19e20:	00050b93          	mv	s7,a0
   19e24:	f8a054e3          	blez	a0,19dac <__sfvwrite_r+0x2c4>
   19e28:	417a0a3b          	subw	s4,s4,s7
   19e2c:	060a0463          	beqz	s4,19e94 <__sfvwrite_r+0x3ac>
   19e30:	010ab783          	ld	a5,16(s5)
   19e34:	017d0d33          	add	s10,s10,s7
   19e38:	41790933          	sub	s2,s2,s7
   19e3c:	41778bb3          	sub	s7,a5,s7
   19e40:	017ab823          	sd	s7,16(s5)
   19e44:	d60b82e3          	beqz	s7,19ba8 <__sfvwrite_r+0xc0>
   19e48:	f80916e3          	bnez	s2,19dd4 <__sfvwrite_r+0x2ec>
   19e4c:	0004bd03          	ld	s10,0(s1)
   19e50:	0084b903          	ld	s2,8(s1)
   19e54:	00000c13          	li	s8,0
   19e58:	01048493          	addi	s1,s1,16
   19e5c:	f75ff06f          	j	19dd0 <__sfvwrite_r+0x2e8>
   19e60:	000d0593          	mv	a1,s10
   19e64:	000c8613          	mv	a2,s9
   19e68:	134000ef          	jal	19f9c <memmove>
   19e6c:	00043783          	ld	a5,0(s0)
   19e70:	00040593          	mv	a1,s0
   19e74:	000b0513          	mv	a0,s6
   19e78:	01b78db3          	add	s11,a5,s11
   19e7c:	01b43023          	sd	s11,0(s0)
   19e80:	fddfa0ef          	jal	14e5c <_fflush_r>
   19e84:	f20514e3          	bnez	a0,19dac <__sfvwrite_r+0x2c4>
   19e88:	000c8b93          	mv	s7,s9
   19e8c:	417a0a3b          	subw	s4,s4,s7
   19e90:	fa0a10e3          	bnez	s4,19e30 <__sfvwrite_r+0x348>
   19e94:	00040593          	mv	a1,s0
   19e98:	000b0513          	mv	a0,s6
   19e9c:	fc1fa0ef          	jal	14e5c <_fflush_r>
   19ea0:	f00516e3          	bnez	a0,19dac <__sfvwrite_r+0x2c4>
   19ea4:	00000c13          	li	s8,0
   19ea8:	f89ff06f          	j	19e30 <__sfvwrite_r+0x348>
   19eac:	00043503          	ld	a0,0(s0)
   19eb0:	01843783          	ld	a5,24(s0)
   19eb4:	eaa7ece3          	bltu	a5,a0,19d6c <__sfvwrite_r+0x284>
   19eb8:	02042783          	lw	a5,32(s0)
   19ebc:	eaf968e3          	bltu	s2,a5,19d6c <__sfvwrite_r+0x284>
   19ec0:	000b8693          	mv	a3,s7
   19ec4:	012c6463          	bltu	s8,s2,19ecc <__sfvwrite_r+0x3e4>
   19ec8:	0009069b          	sext.w	a3,s2
   19ecc:	02f6c6bb          	divw	a3,a3,a5
   19ed0:	04043703          	ld	a4,64(s0)
   19ed4:	03043583          	ld	a1,48(s0)
   19ed8:	000c8613          	mv	a2,s9
   19edc:	000b0513          	mv	a0,s6
   19ee0:	02f686bb          	mulw	a3,a3,a5
   19ee4:	000700e7          	jalr	a4
   19ee8:	eca052e3          	blez	a0,19dac <__sfvwrite_r+0x2c4>
   19eec:	00050993          	mv	s3,a0
   19ef0:	e31ff06f          	j	19d20 <__sfvwrite_r+0x238>
   19ef4:	00043503          	ld	a0,0(s0)
   19ef8:	dedff06f          	j	19ce4 <__sfvwrite_r+0x1fc>
   19efc:	00098613          	mv	a2,s3
   19f00:	000d0593          	mv	a1,s10
   19f04:	098000ef          	jal	19f9c <memmove>
   19f08:	00c42703          	lw	a4,12(s0)
   19f0c:	00043783          	ld	a5,0(s0)
   19f10:	4137073b          	subw	a4,a4,s3
   19f14:	013789b3          	add	s3,a5,s3
   19f18:	00e42623          	sw	a4,12(s0)
   19f1c:	01343023          	sd	s3,0(s0)
   19f20:	f09ff06f          	j	19e28 <__sfvwrite_r+0x340>
   19f24:	00090613          	mv	a2,s2
   19f28:	00a00593          	li	a1,10
   19f2c:	000d0513          	mv	a0,s10
   19f30:	d79fc0ef          	jal	16ca8 <memchr>
   19f34:	04050663          	beqz	a0,19f80 <__sfvwrite_r+0x498>
   19f38:	00150a13          	addi	s4,a0,1
   19f3c:	41aa0a3b          	subw	s4,s4,s10
   19f40:	00100c13          	li	s8,1
   19f44:	e95ff06f          	j	19dd8 <__sfvwrite_r+0x2f0>
   19f48:	000b0513          	mv	a0,s6
   19f4c:	170000ef          	jal	1a0bc <_realloc_r>
   19f50:	00050d93          	mv	s11,a0
   19f54:	d6051ae3          	bnez	a0,19cc8 <__sfvwrite_r+0x1e0>
   19f58:	01843583          	ld	a1,24(s0)
   19f5c:	000b0513          	mv	a0,s6
   19f60:	c00fb0ef          	jal	15360 <_free_r>
   19f64:	01045783          	lhu	a5,16(s0)
   19f68:	00c00713          	li	a4,12
   19f6c:	00eb2023          	sw	a4,0(s6)
   19f70:	f7f7f793          	andi	a5,a5,-129
   19f74:	0107979b          	slliw	a5,a5,0x10
   19f78:	4107d79b          	sraiw	a5,a5,0x10
   19f7c:	e35ff06f          	j	19db0 <__sfvwrite_r+0x2c8>
   19f80:	00190a1b          	addiw	s4,s2,1
   19f84:	00100c13          	li	s8,1
   19f88:	e51ff06f          	j	19dd8 <__sfvwrite_r+0x2f0>
   19f8c:	00c00793          	li	a5,12
   19f90:	00fb2023          	sw	a5,0(s6)
   19f94:	01041783          	lh	a5,16(s0)
   19f98:	e19ff06f          	j	19db0 <__sfvwrite_r+0x2c8>

0000000000019f9c <memmove>:
   19f9c:	02a5f863          	bleu	a0,a1,19fcc <memmove+0x30>
   19fa0:	00c58733          	add	a4,a1,a2
   19fa4:	02e57463          	bleu	a4,a0,19fcc <memmove+0x30>
   19fa8:	00c507b3          	add	a5,a0,a2
   19fac:	40c785b3          	sub	a1,a5,a2
   19fb0:	0e060263          	beqz	a2,1a094 <memmove+0xf8>
   19fb4:	fff70713          	addi	a4,a4,-1 # 1fff <_ftext-0xe001>
   19fb8:	00074683          	lbu	a3,0(a4)
   19fbc:	fff78793          	addi	a5,a5,-1
   19fc0:	00d78023          	sb	a3,0(a5)
   19fc4:	fef598e3          	bne	a1,a5,19fb4 <memmove+0x18>
   19fc8:	00008067          	ret
   19fcc:	01f00893          	li	a7,31
   19fd0:	0cc8f463          	bleu	a2,a7,1a098 <memmove+0xfc>
   19fd4:	00a5e7b3          	or	a5,a1,a0
   19fd8:	0077f793          	andi	a5,a5,7
   19fdc:	0c079463          	bnez	a5,1a0a4 <memmove+0x108>
   19fe0:	00058713          	mv	a4,a1
   19fe4:	00050793          	mv	a5,a0
   19fe8:	00060693          	mv	a3,a2
   19fec:	00073803          	ld	a6,0(a4)
   19ff0:	02078793          	addi	a5,a5,32
   19ff4:	02070713          	addi	a4,a4,32
   19ff8:	ff07b023          	sd	a6,-32(a5)
   19ffc:	fe873803          	ld	a6,-24(a4)
   1a000:	fe068693          	addi	a3,a3,-32
   1a004:	ff07b423          	sd	a6,-24(a5)
   1a008:	ff073803          	ld	a6,-16(a4)
   1a00c:	ff07b823          	sd	a6,-16(a5)
   1a010:	ff873803          	ld	a6,-8(a4)
   1a014:	ff07bc23          	sd	a6,-8(a5)
   1a018:	fcd8eae3          	bltu	a7,a3,19fec <memmove+0x50>
   1a01c:	fe060713          	addi	a4,a2,-32
   1a020:	fe077713          	andi	a4,a4,-32
   1a024:	02070713          	addi	a4,a4,32
   1a028:	01f67e13          	andi	t3,a2,31
   1a02c:	00700313          	li	t1,7
   1a030:	00e507b3          	add	a5,a0,a4
   1a034:	00e585b3          	add	a1,a1,a4
   1a038:	07c37c63          	bleu	t3,t1,1a0b0 <memmove+0x114>
   1a03c:	00058813          	mv	a6,a1
   1a040:	00078693          	mv	a3,a5
   1a044:	000e0713          	mv	a4,t3
   1a048:	00880813          	addi	a6,a6,8
   1a04c:	ff883883          	ld	a7,-8(a6)
   1a050:	00868693          	addi	a3,a3,8
   1a054:	ff870713          	addi	a4,a4,-8
   1a058:	ff16bc23          	sd	a7,-8(a3)
   1a05c:	fee366e3          	bltu	t1,a4,1a048 <memmove+0xac>
   1a060:	ff8e0713          	addi	a4,t3,-8
   1a064:	ff877713          	andi	a4,a4,-8
   1a068:	00870713          	addi	a4,a4,8
   1a06c:	00767613          	andi	a2,a2,7
   1a070:	00e787b3          	add	a5,a5,a4
   1a074:	00e585b3          	add	a1,a1,a4
   1a078:	02060a63          	beqz	a2,1a0ac <memmove+0x110>
   1a07c:	00c78633          	add	a2,a5,a2
   1a080:	00158593          	addi	a1,a1,1
   1a084:	fff5c703          	lbu	a4,-1(a1)
   1a088:	00178793          	addi	a5,a5,1
   1a08c:	fee78fa3          	sb	a4,-1(a5)
   1a090:	fec798e3          	bne	a5,a2,1a080 <memmove+0xe4>
   1a094:	00008067          	ret
   1a098:	00050793          	mv	a5,a0
   1a09c:	fe0610e3          	bnez	a2,1a07c <memmove+0xe0>
   1a0a0:	00c0006f          	j	1a0ac <memmove+0x110>
   1a0a4:	00050793          	mv	a5,a0
   1a0a8:	fd5ff06f          	j	1a07c <memmove+0xe0>
   1a0ac:	00008067          	ret
   1a0b0:	000e0613          	mv	a2,t3
   1a0b4:	fc0614e3          	bnez	a2,1a07c <memmove+0xe0>
   1a0b8:	ff5ff06f          	j	1a0ac <memmove+0x110>

000000000001a0bc <_realloc_r>:
   1a0bc:	fb010113          	addi	sp,sp,-80
   1a0c0:	02913c23          	sd	s1,56(sp)
   1a0c4:	04113423          	sd	ra,72(sp)
   1a0c8:	04813023          	sd	s0,64(sp)
   1a0cc:	03213823          	sd	s2,48(sp)
   1a0d0:	03313423          	sd	s3,40(sp)
   1a0d4:	03413023          	sd	s4,32(sp)
   1a0d8:	01513c23          	sd	s5,24(sp)
   1a0dc:	01613823          	sd	s6,16(sp)
   1a0e0:	01713423          	sd	s7,8(sp)
   1a0e4:	01813023          	sd	s8,0(sp)
   1a0e8:	00060493          	mv	s1,a2
   1a0ec:	1c058a63          	beqz	a1,1a2c0 <_realloc_r+0x204>
   1a0f0:	00058993          	mv	s3,a1
   1a0f4:	00050913          	mv	s2,a0
   1a0f8:	e95fc0ef          	jal	16f8c <__malloc_lock>
   1a0fc:	ff89b783          	ld	a5,-8(s3)
   1a100:	01748413          	addi	s0,s1,23
   1a104:	02e00713          	li	a4,46
   1a108:	ff098a93          	addi	s5,s3,-16
   1a10c:	ffc7fa13          	andi	s4,a5,-4
   1a110:	0c877463          	bleu	s0,a4,1a1d8 <_realloc_r+0x11c>
   1a114:	80000737          	lui	a4,0x80000
   1a118:	ff047413          	andi	s0,s0,-16
   1a11c:	fff74713          	not	a4,a4
   1a120:	14876a63          	bltu	a4,s0,1a274 <_realloc_r+0x1b8>
   1a124:	14946863          	bltu	s0,s1,1a274 <_realloc_r+0x1b8>
   1a128:	0a8a5c63          	ble	s0,s4,1a1e0 <_realloc_r+0x124>
   1a12c:	0001db37          	lui	s6,0x1d
   1a130:	ee8b0b13          	addi	s6,s6,-280 # 1cee8 <__malloc_av_>
   1a134:	010b3703          	ld	a4,16(s6)
   1a138:	014a86b3          	add	a3,s5,s4
   1a13c:	2ee68e63          	beq	a3,a4,1a438 <_realloc_r+0x37c>
   1a140:	0086b703          	ld	a4,8(a3)
   1a144:	ffe77613          	andi	a2,a4,-2
   1a148:	00c68633          	add	a2,a3,a2
   1a14c:	00863603          	ld	a2,8(a2)
   1a150:	00167613          	andi	a2,a2,1
   1a154:	0e060c63          	beqz	a2,1a24c <_realloc_r+0x190>
   1a158:	0017f793          	andi	a5,a5,1
   1a15c:	26078063          	beqz	a5,1a3bc <_realloc_r+0x300>
   1a160:	00048593          	mv	a1,s1
   1a164:	00090513          	mv	a0,s2
   1a168:	bd0fc0ef          	jal	16538 <_malloc_r>
   1a16c:	00050493          	mv	s1,a0
   1a170:	48050e63          	beqz	a0,1a60c <_realloc_r+0x550>
   1a174:	ff89b783          	ld	a5,-8(s3)
   1a178:	ff050713          	addi	a4,a0,-16
   1a17c:	ffe7f793          	andi	a5,a5,-2
   1a180:	00fa87b3          	add	a5,s5,a5
   1a184:	40f70e63          	beq	a4,a5,1a5a0 <_realloc_r+0x4e4>
   1a188:	ff8a0613          	addi	a2,s4,-8 # ffffffff7ffffff8 <_gp+0xffffffff7ffe20f8>
   1a18c:	04800793          	li	a5,72
   1a190:	3ec7e263          	bltu	a5,a2,1a574 <_realloc_r+0x4b8>
   1a194:	02700713          	li	a4,39
   1a198:	36c76663          	bltu	a4,a2,1a504 <_realloc_r+0x448>
   1a19c:	00050793          	mv	a5,a0
   1a1a0:	00098713          	mv	a4,s3
   1a1a4:	00073683          	ld	a3,0(a4) # ffffffff80000000 <_gp+0xffffffff7ffe2100>
   1a1a8:	00d7b023          	sd	a3,0(a5)
   1a1ac:	00873683          	ld	a3,8(a4)
   1a1b0:	00d7b423          	sd	a3,8(a5)
   1a1b4:	01073703          	ld	a4,16(a4)
   1a1b8:	00e7b823          	sd	a4,16(a5)
   1a1bc:	00098593          	mv	a1,s3
   1a1c0:	00090513          	mv	a0,s2
   1a1c4:	99cfb0ef          	jal	15360 <_free_r>
   1a1c8:	00090513          	mv	a0,s2
   1a1cc:	dc5fc0ef          	jal	16f90 <__malloc_unlock>
   1a1d0:	00048513          	mv	a0,s1
   1a1d4:	0480006f          	j	1a21c <_realloc_r+0x160>
   1a1d8:	02000413          	li	s0,32
   1a1dc:	f49ff06f          	j	1a124 <_realloc_r+0x68>
   1a1e0:	00098493          	mv	s1,s3
   1a1e4:	408a07b3          	sub	a5,s4,s0
   1a1e8:	01f00713          	li	a4,31
   1a1ec:	08f76c63          	bltu	a4,a5,1a284 <_realloc_r+0x1c8>
   1a1f0:	008ab783          	ld	a5,8(s5)
   1a1f4:	014a8733          	add	a4,s5,s4
   1a1f8:	0017f793          	andi	a5,a5,1
   1a1fc:	0147e633          	or	a2,a5,s4
   1a200:	00cab423          	sd	a2,8(s5)
   1a204:	00873783          	ld	a5,8(a4)
   1a208:	0017e793          	ori	a5,a5,1
   1a20c:	00f73423          	sd	a5,8(a4)
   1a210:	00090513          	mv	a0,s2
   1a214:	d7dfc0ef          	jal	16f90 <__malloc_unlock>
   1a218:	00048513          	mv	a0,s1
   1a21c:	04813083          	ld	ra,72(sp)
   1a220:	04013403          	ld	s0,64(sp)
   1a224:	03813483          	ld	s1,56(sp)
   1a228:	03013903          	ld	s2,48(sp)
   1a22c:	02813983          	ld	s3,40(sp)
   1a230:	02013a03          	ld	s4,32(sp)
   1a234:	01813a83          	ld	s5,24(sp)
   1a238:	01013b03          	ld	s6,16(sp)
   1a23c:	00813b83          	ld	s7,8(sp)
   1a240:	00013c03          	ld	s8,0(sp)
   1a244:	05010113          	addi	sp,sp,80
   1a248:	00008067          	ret
   1a24c:	ffc77713          	andi	a4,a4,-4
   1a250:	01470733          	add	a4,a4,s4
   1a254:	0a874063          	blt	a4,s0,1a2f4 <_realloc_r+0x238>
   1a258:	0186b783          	ld	a5,24(a3)
   1a25c:	0106b683          	ld	a3,16(a3)
   1a260:	00098493          	mv	s1,s3
   1a264:	00070a13          	mv	s4,a4
   1a268:	00f6bc23          	sd	a5,24(a3)
   1a26c:	00d7b823          	sd	a3,16(a5)
   1a270:	f75ff06f          	j	1a1e4 <_realloc_r+0x128>
   1a274:	00c00793          	li	a5,12
   1a278:	00f92023          	sw	a5,0(s2)
   1a27c:	00000513          	li	a0,0
   1a280:	f9dff06f          	j	1a21c <_realloc_r+0x160>
   1a284:	008ab703          	ld	a4,8(s5)
   1a288:	008a85b3          	add	a1,s5,s0
   1a28c:	0017e693          	ori	a3,a5,1
   1a290:	00177713          	andi	a4,a4,1
   1a294:	00876433          	or	s0,a4,s0
   1a298:	008ab423          	sd	s0,8(s5)
   1a29c:	00d5b423          	sd	a3,8(a1)
   1a2a0:	00f587b3          	add	a5,a1,a5
   1a2a4:	0087b703          	ld	a4,8(a5)
   1a2a8:	01058593          	addi	a1,a1,16
   1a2ac:	00090513          	mv	a0,s2
   1a2b0:	00176713          	ori	a4,a4,1
   1a2b4:	00e7b423          	sd	a4,8(a5)
   1a2b8:	8a8fb0ef          	jal	15360 <_free_r>
   1a2bc:	f55ff06f          	j	1a210 <_realloc_r+0x154>
   1a2c0:	04813083          	ld	ra,72(sp)
   1a2c4:	04013403          	ld	s0,64(sp)
   1a2c8:	03813483          	ld	s1,56(sp)
   1a2cc:	03013903          	ld	s2,48(sp)
   1a2d0:	02813983          	ld	s3,40(sp)
   1a2d4:	02013a03          	ld	s4,32(sp)
   1a2d8:	01813a83          	ld	s5,24(sp)
   1a2dc:	01013b03          	ld	s6,16(sp)
   1a2e0:	00813b83          	ld	s7,8(sp)
   1a2e4:	00013c03          	ld	s8,0(sp)
   1a2e8:	00060593          	mv	a1,a2
   1a2ec:	05010113          	addi	sp,sp,80
   1a2f0:	a48fc06f          	j	16538 <_malloc_r>
   1a2f4:	0017f793          	andi	a5,a5,1
   1a2f8:	e60794e3          	bnez	a5,1a160 <_realloc_r+0xa4>
   1a2fc:	ff09bb83          	ld	s7,-16(s3)
   1a300:	417a8bb3          	sub	s7,s5,s7
   1a304:	008bb783          	ld	a5,8(s7) # ffffffff80000008 <_gp+0xffffffff7ffe2108>
   1a308:	ffc7f793          	andi	a5,a5,-4
   1a30c:	00f70b33          	add	s6,a4,a5
   1a310:	0a8b4e63          	blt	s6,s0,1a3cc <_realloc_r+0x310>
   1a314:	0186b783          	ld	a5,24(a3)
   1a318:	0106b703          	ld	a4,16(a3)
   1a31c:	ff8a0613          	addi	a2,s4,-8
   1a320:	010b8493          	addi	s1,s7,16
   1a324:	00f73c23          	sd	a5,24(a4)
   1a328:	00e7b823          	sd	a4,16(a5)
   1a32c:	010bb703          	ld	a4,16(s7)
   1a330:	018bb783          	ld	a5,24(s7)
   1a334:	00f73c23          	sd	a5,24(a4)
   1a338:	00e7b823          	sd	a4,16(a5)
   1a33c:	04800793          	li	a5,72
   1a340:	1ec7e463          	bltu	a5,a2,1a528 <_realloc_r+0x46c>
   1a344:	02700713          	li	a4,39
   1a348:	00048793          	mv	a5,s1
   1a34c:	04c77663          	bleu	a2,a4,1a398 <_realloc_r+0x2dc>
   1a350:	0009b783          	ld	a5,0(s3)
   1a354:	00fbb823          	sd	a5,16(s7)
   1a358:	0089b783          	ld	a5,8(s3)
   1a35c:	00fbbc23          	sd	a5,24(s7)
   1a360:	03700793          	li	a5,55
   1a364:	24c7f863          	bleu	a2,a5,1a5b4 <_realloc_r+0x4f8>
   1a368:	0109b783          	ld	a5,16(s3)
   1a36c:	02fbb023          	sd	a5,32(s7)
   1a370:	0189b783          	ld	a5,24(s3)
   1a374:	02fbb423          	sd	a5,40(s7)
   1a378:	04800793          	li	a5,72
   1a37c:	0af61863          	bne	a2,a5,1a42c <_realloc_r+0x370>
   1a380:	0209b703          	ld	a4,32(s3)
   1a384:	040b8793          	addi	a5,s7,64
   1a388:	03098993          	addi	s3,s3,48
   1a38c:	02ebb823          	sd	a4,48(s7)
   1a390:	ff89b703          	ld	a4,-8(s3)
   1a394:	02ebbc23          	sd	a4,56(s7)
   1a398:	0009b703          	ld	a4,0(s3)
   1a39c:	000b0a13          	mv	s4,s6
   1a3a0:	000b8a93          	mv	s5,s7
   1a3a4:	00e7b023          	sd	a4,0(a5)
   1a3a8:	0089b703          	ld	a4,8(s3)
   1a3ac:	00e7b423          	sd	a4,8(a5)
   1a3b0:	0109b703          	ld	a4,16(s3)
   1a3b4:	00e7b823          	sd	a4,16(a5)
   1a3b8:	e2dff06f          	j	1a1e4 <_realloc_r+0x128>
   1a3bc:	ff09bb83          	ld	s7,-16(s3)
   1a3c0:	417a8bb3          	sub	s7,s5,s7
   1a3c4:	008bb783          	ld	a5,8(s7)
   1a3c8:	ffc7f793          	andi	a5,a5,-4
   1a3cc:	00fa0b33          	add	s6,s4,a5
   1a3d0:	d88b48e3          	blt	s6,s0,1a160 <_realloc_r+0xa4>
   1a3d4:	018bb783          	ld	a5,24(s7)
   1a3d8:	010bb703          	ld	a4,16(s7)
   1a3dc:	ff8a0613          	addi	a2,s4,-8
   1a3e0:	04800693          	li	a3,72
   1a3e4:	00f73c23          	sd	a5,24(a4)
   1a3e8:	00e7b823          	sd	a4,16(a5)
   1a3ec:	010b8493          	addi	s1,s7,16
   1a3f0:	12c6ec63          	bltu	a3,a2,1a528 <_realloc_r+0x46c>
   1a3f4:	02700713          	li	a4,39
   1a3f8:	00048793          	mv	a5,s1
   1a3fc:	f8c77ee3          	bleu	a2,a4,1a398 <_realloc_r+0x2dc>
   1a400:	0009b783          	ld	a5,0(s3)
   1a404:	00fbb823          	sd	a5,16(s7)
   1a408:	0089b783          	ld	a5,8(s3)
   1a40c:	00fbbc23          	sd	a5,24(s7)
   1a410:	03700793          	li	a5,55
   1a414:	1ac7f063          	bleu	a2,a5,1a5b4 <_realloc_r+0x4f8>
   1a418:	0109b783          	ld	a5,16(s3)
   1a41c:	02fbb023          	sd	a5,32(s7)
   1a420:	0189b783          	ld	a5,24(s3)
   1a424:	02fbb423          	sd	a5,40(s7)
   1a428:	f4d60ce3          	beq	a2,a3,1a380 <_realloc_r+0x2c4>
   1a42c:	030b8793          	addi	a5,s7,48
   1a430:	02098993          	addi	s3,s3,32
   1a434:	f65ff06f          	j	1a398 <_realloc_r+0x2dc>
   1a438:	0086b703          	ld	a4,8(a3)
   1a43c:	02040693          	addi	a3,s0,32
   1a440:	ffc77713          	andi	a4,a4,-4
   1a444:	01470733          	add	a4,a4,s4
   1a448:	0ed75c63          	ble	a3,a4,1a540 <_realloc_r+0x484>
   1a44c:	0017f793          	andi	a5,a5,1
   1a450:	d00798e3          	bnez	a5,1a160 <_realloc_r+0xa4>
   1a454:	ff09bb83          	ld	s7,-16(s3)
   1a458:	417a8bb3          	sub	s7,s5,s7
   1a45c:	008bb783          	ld	a5,8(s7)
   1a460:	ffc7f793          	andi	a5,a5,-4
   1a464:	00e78c33          	add	s8,a5,a4
   1a468:	f6dc42e3          	blt	s8,a3,1a3cc <_realloc_r+0x310>
   1a46c:	018bb783          	ld	a5,24(s7)
   1a470:	010bb703          	ld	a4,16(s7)
   1a474:	ff8a0613          	addi	a2,s4,-8
   1a478:	04800693          	li	a3,72
   1a47c:	00f73c23          	sd	a5,24(a4)
   1a480:	00e7b823          	sd	a4,16(a5)
   1a484:	010b8493          	addi	s1,s7,16
   1a488:	14c6ea63          	bltu	a3,a2,1a5dc <_realloc_r+0x520>
   1a48c:	02700713          	li	a4,39
   1a490:	00048793          	mv	a5,s1
   1a494:	02c77263          	bleu	a2,a4,1a4b8 <_realloc_r+0x3fc>
   1a498:	0009b783          	ld	a5,0(s3)
   1a49c:	00fbb823          	sd	a5,16(s7)
   1a4a0:	0089b783          	ld	a5,8(s3)
   1a4a4:	00fbbc23          	sd	a5,24(s7)
   1a4a8:	03700793          	li	a5,55
   1a4ac:	14c7e063          	bltu	a5,a2,1a5ec <_realloc_r+0x530>
   1a4b0:	020b8793          	addi	a5,s7,32
   1a4b4:	01098993          	addi	s3,s3,16
   1a4b8:	0009b703          	ld	a4,0(s3)
   1a4bc:	00e7b023          	sd	a4,0(a5)
   1a4c0:	0089b703          	ld	a4,8(s3)
   1a4c4:	00e7b423          	sd	a4,8(a5)
   1a4c8:	0109b703          	ld	a4,16(s3)
   1a4cc:	00e7b823          	sd	a4,16(a5)
   1a4d0:	008b8733          	add	a4,s7,s0
   1a4d4:	408c07b3          	sub	a5,s8,s0
   1a4d8:	00eb3823          	sd	a4,16(s6)
   1a4dc:	0017e793          	ori	a5,a5,1
   1a4e0:	00f73423          	sd	a5,8(a4)
   1a4e4:	008bb783          	ld	a5,8(s7)
   1a4e8:	00090513          	mv	a0,s2
   1a4ec:	0017f793          	andi	a5,a5,1
   1a4f0:	0087e433          	or	s0,a5,s0
   1a4f4:	008bb423          	sd	s0,8(s7)
   1a4f8:	a99fc0ef          	jal	16f90 <__malloc_unlock>
   1a4fc:	00048513          	mv	a0,s1
   1a500:	d1dff06f          	j	1a21c <_realloc_r+0x160>
   1a504:	0009b703          	ld	a4,0(s3)
   1a508:	00e53023          	sd	a4,0(a0)
   1a50c:	0089b703          	ld	a4,8(s3)
   1a510:	00e53423          	sd	a4,8(a0)
   1a514:	03700713          	li	a4,55
   1a518:	06c76463          	bltu	a4,a2,1a580 <_realloc_r+0x4c4>
   1a51c:	01050793          	addi	a5,a0,16
   1a520:	01098713          	addi	a4,s3,16
   1a524:	c81ff06f          	j	1a1a4 <_realloc_r+0xe8>
   1a528:	00098593          	mv	a1,s3
   1a52c:	00048513          	mv	a0,s1
   1a530:	a6dff0ef          	jal	19f9c <memmove>
   1a534:	000b0a13          	mv	s4,s6
   1a538:	000b8a93          	mv	s5,s7
   1a53c:	ca9ff06f          	j	1a1e4 <_realloc_r+0x128>
   1a540:	008a8ab3          	add	s5,s5,s0
   1a544:	408707b3          	sub	a5,a4,s0
   1a548:	015b3823          	sd	s5,16(s6)
   1a54c:	0017e793          	ori	a5,a5,1
   1a550:	00fab423          	sd	a5,8(s5)
   1a554:	ff89b783          	ld	a5,-8(s3)
   1a558:	00090513          	mv	a0,s2
   1a55c:	0017f793          	andi	a5,a5,1
   1a560:	0087e433          	or	s0,a5,s0
   1a564:	fe89bc23          	sd	s0,-8(s3)
   1a568:	a29fc0ef          	jal	16f90 <__malloc_unlock>
   1a56c:	00098513          	mv	a0,s3
   1a570:	cadff06f          	j	1a21c <_realloc_r+0x160>
   1a574:	00098593          	mv	a1,s3
   1a578:	a25ff0ef          	jal	19f9c <memmove>
   1a57c:	c41ff06f          	j	1a1bc <_realloc_r+0x100>
   1a580:	0109b703          	ld	a4,16(s3)
   1a584:	00e53823          	sd	a4,16(a0)
   1a588:	0189b703          	ld	a4,24(s3)
   1a58c:	00e53c23          	sd	a4,24(a0)
   1a590:	02f60863          	beq	a2,a5,1a5c0 <_realloc_r+0x504>
   1a594:	02050793          	addi	a5,a0,32
   1a598:	02098713          	addi	a4,s3,32
   1a59c:	c09ff06f          	j	1a1a4 <_realloc_r+0xe8>
   1a5a0:	ff853783          	ld	a5,-8(a0)
   1a5a4:	00098493          	mv	s1,s3
   1a5a8:	ffc7f793          	andi	a5,a5,-4
   1a5ac:	00fa0a33          	add	s4,s4,a5
   1a5b0:	c35ff06f          	j	1a1e4 <_realloc_r+0x128>
   1a5b4:	020b8793          	addi	a5,s7,32
   1a5b8:	01098993          	addi	s3,s3,16
   1a5bc:	dddff06f          	j	1a398 <_realloc_r+0x2dc>
   1a5c0:	0209b683          	ld	a3,32(s3)
   1a5c4:	03050793          	addi	a5,a0,48
   1a5c8:	03098713          	addi	a4,s3,48
   1a5cc:	02d53023          	sd	a3,32(a0)
   1a5d0:	0289b683          	ld	a3,40(s3)
   1a5d4:	02d53423          	sd	a3,40(a0)
   1a5d8:	bcdff06f          	j	1a1a4 <_realloc_r+0xe8>
   1a5dc:	00098593          	mv	a1,s3
   1a5e0:	00048513          	mv	a0,s1
   1a5e4:	9b9ff0ef          	jal	19f9c <memmove>
   1a5e8:	ee9ff06f          	j	1a4d0 <_realloc_r+0x414>
   1a5ec:	0109b783          	ld	a5,16(s3)
   1a5f0:	02fbb023          	sd	a5,32(s7)
   1a5f4:	0189b783          	ld	a5,24(s3)
   1a5f8:	02fbb423          	sd	a5,40(s7)
   1a5fc:	02d60063          	beq	a2,a3,1a61c <_realloc_r+0x560>
   1a600:	030b8793          	addi	a5,s7,48
   1a604:	02098993          	addi	s3,s3,32
   1a608:	eb1ff06f          	j	1a4b8 <_realloc_r+0x3fc>
   1a60c:	00090513          	mv	a0,s2
   1a610:	981fc0ef          	jal	16f90 <__malloc_unlock>
   1a614:	00000513          	li	a0,0
   1a618:	c05ff06f          	j	1a21c <_realloc_r+0x160>
   1a61c:	0209b703          	ld	a4,32(s3)
   1a620:	040b8793          	addi	a5,s7,64
   1a624:	03098993          	addi	s3,s3,48
   1a628:	02ebb823          	sd	a4,48(s7)
   1a62c:	ff89b703          	ld	a4,-8(s3)
   1a630:	02ebbc23          	sd	a4,56(s7)
   1a634:	e85ff06f          	j	1a4b8 <_realloc_r+0x3fc>

000000000001a638 <__swbuf_r>:
   1a638:	fd010113          	addi	sp,sp,-48
   1a63c:	02813023          	sd	s0,32(sp)
   1a640:	00913c23          	sd	s1,24(sp)
   1a644:	01313423          	sd	s3,8(sp)
   1a648:	02113423          	sd	ra,40(sp)
   1a64c:	01213823          	sd	s2,16(sp)
   1a650:	00050493          	mv	s1,a0
   1a654:	00058993          	mv	s3,a1
   1a658:	00060413          	mv	s0,a2
   1a65c:	00050663          	beqz	a0,1a668 <__swbuf_r+0x30>
   1a660:	05052783          	lw	a5,80(a0)
   1a664:	12078e63          	beqz	a5,1a7a0 <__swbuf_r+0x168>
   1a668:	01041683          	lh	a3,16(s0)
   1a66c:	02842783          	lw	a5,40(s0)
   1a670:	03069713          	slli	a4,a3,0x30
   1a674:	03075713          	srli	a4,a4,0x30
   1a678:	00f42623          	sw	a5,12(s0)
   1a67c:	00877793          	andi	a5,a4,8
   1a680:	0e078e63          	beqz	a5,1a77c <__swbuf_r+0x144>
   1a684:	01843783          	ld	a5,24(s0)
   1a688:	0e078a63          	beqz	a5,1a77c <__swbuf_r+0x144>
   1a68c:	03271613          	slli	a2,a4,0x32
   1a690:	0ff9f913          	andi	s2,s3,255
   1a694:	06065663          	bgez	a2,1a700 <__swbuf_r+0xc8>
   1a698:	00043703          	ld	a4,0(s0)
   1a69c:	02042683          	lw	a3,32(s0)
   1a6a0:	40f707bb          	subw	a5,a4,a5
   1a6a4:	08d7d663          	ble	a3,a5,1a730 <__swbuf_r+0xf8>
   1a6a8:	0017879b          	addiw	a5,a5,1
   1a6ac:	00c42683          	lw	a3,12(s0)
   1a6b0:	00170613          	addi	a2,a4,1
   1a6b4:	00c43023          	sd	a2,0(s0)
   1a6b8:	fff6869b          	addiw	a3,a3,-1
   1a6bc:	00d42623          	sw	a3,12(s0)
   1a6c0:	01370023          	sb	s3,0(a4)
   1a6c4:	02042703          	lw	a4,32(s0)
   1a6c8:	08f70263          	beq	a4,a5,1a74c <__swbuf_r+0x114>
   1a6cc:	01045783          	lhu	a5,16(s0)
   1a6d0:	00090513          	mv	a0,s2
   1a6d4:	0017f793          	andi	a5,a5,1
   1a6d8:	00078663          	beqz	a5,1a6e4 <__swbuf_r+0xac>
   1a6dc:	00a00793          	li	a5,10
   1a6e0:	06f90663          	beq	s2,a5,1a74c <__swbuf_r+0x114>
   1a6e4:	02813083          	ld	ra,40(sp)
   1a6e8:	02013403          	ld	s0,32(sp)
   1a6ec:	01813483          	ld	s1,24(sp)
   1a6f0:	01013903          	ld	s2,16(sp)
   1a6f4:	00813983          	ld	s3,8(sp)
   1a6f8:	03010113          	addi	sp,sp,48
   1a6fc:	00008067          	ret
   1a700:	0ac42583          	lw	a1,172(s0)
   1a704:	ffffe737          	lui	a4,0xffffe
   1a708:	fff7071b          	addiw	a4,a4,-1
   1a70c:	00e5f733          	and	a4,a1,a4
   1a710:	00002637          	lui	a2,0x2
   1a714:	00c6e6b3          	or	a3,a3,a2
   1a718:	0ae42623          	sw	a4,172(s0)
   1a71c:	00043703          	ld	a4,0(s0)
   1a720:	00d41823          	sh	a3,16(s0)
   1a724:	02042683          	lw	a3,32(s0)
   1a728:	40f707bb          	subw	a5,a4,a5
   1a72c:	f6d7cee3          	blt	a5,a3,1a6a8 <__swbuf_r+0x70>
   1a730:	00040593          	mv	a1,s0
   1a734:	00048513          	mv	a0,s1
   1a738:	f24fa0ef          	jal	14e5c <_fflush_r>
   1a73c:	06051663          	bnez	a0,1a7a8 <__swbuf_r+0x170>
   1a740:	00043703          	ld	a4,0(s0)
   1a744:	00100793          	li	a5,1
   1a748:	f65ff06f          	j	1a6ac <__swbuf_r+0x74>
   1a74c:	00040593          	mv	a1,s0
   1a750:	00048513          	mv	a0,s1
   1a754:	f08fa0ef          	jal	14e5c <_fflush_r>
   1a758:	04051863          	bnez	a0,1a7a8 <__swbuf_r+0x170>
   1a75c:	02813083          	ld	ra,40(sp)
   1a760:	00090513          	mv	a0,s2
   1a764:	02013403          	ld	s0,32(sp)
   1a768:	01813483          	ld	s1,24(sp)
   1a76c:	01013903          	ld	s2,16(sp)
   1a770:	00813983          	ld	s3,8(sp)
   1a774:	03010113          	addi	sp,sp,48
   1a778:	00008067          	ret
   1a77c:	00040593          	mv	a1,s0
   1a780:	00048513          	mv	a0,s1
   1a784:	d79f80ef          	jal	134fc <__swsetup_r>
   1a788:	02051063          	bnez	a0,1a7a8 <__swbuf_r+0x170>
   1a78c:	01041683          	lh	a3,16(s0)
   1a790:	01843783          	ld	a5,24(s0)
   1a794:	03069713          	slli	a4,a3,0x30
   1a798:	03075713          	srli	a4,a4,0x30
   1a79c:	ef1ff06f          	j	1a68c <__swbuf_r+0x54>
   1a7a0:	a69fa0ef          	jal	15208 <__sinit>
   1a7a4:	ec5ff06f          	j	1a668 <__swbuf_r+0x30>
   1a7a8:	fff00513          	li	a0,-1
   1a7ac:	f39ff06f          	j	1a6e4 <__swbuf_r+0xac>

000000000001a7b0 <__swbuf>:
   1a7b0:	00058613          	mv	a2,a1
   1a7b4:	00050593          	mv	a1,a0
   1a7b8:	8101b503          	ld	a0,-2032(gp) # 1d710 <_impure_ptr>
   1a7bc:	e7dff06f          	j	1a638 <__swbuf_r>

000000000001a7c0 <_wcrtomb_r>:
   1a7c0:	fc010113          	addi	sp,sp,-64
   1a7c4:	02913423          	sd	s1,40(sp)
   1a7c8:	03213023          	sd	s2,32(sp)
   1a7cc:	02113c23          	sd	ra,56(sp)
   1a7d0:	02813823          	sd	s0,48(sp)
   1a7d4:	01313c23          	sd	s3,24(sp)
   1a7d8:	01413823          	sd	s4,16(sp)
   1a7dc:	00050493          	mv	s1,a0
   1a7e0:	00068913          	mv	s2,a3
   1a7e4:	06058663          	beqz	a1,1a850 <_wcrtomb_r+0x90>
   1a7e8:	8301ba03          	ld	s4,-2000(gp) # 1d730 <__wctomb>
   1a7ec:	00058413          	mv	s0,a1
   1a7f0:	00060993          	mv	s3,a2
   1a7f4:	b49fb0ef          	jal	1633c <__locale_charset>
   1a7f8:	00050693          	mv	a3,a0
   1a7fc:	00090713          	mv	a4,s2
   1a800:	00098613          	mv	a2,s3
   1a804:	00040593          	mv	a1,s0
   1a808:	00048513          	mv	a0,s1
   1a80c:	000a00e7          	jalr	s4
   1a810:	00050793          	mv	a5,a0
   1a814:	fff00713          	li	a4,-1
   1a818:	00078513          	mv	a0,a5
   1a81c:	00e79a63          	bne	a5,a4,1a830 <_wcrtomb_r+0x70>
   1a820:	00092023          	sw	zero,0(s2)
   1a824:	08a00793          	li	a5,138
   1a828:	00f4a023          	sw	a5,0(s1)
   1a82c:	fff00513          	li	a0,-1
   1a830:	03813083          	ld	ra,56(sp)
   1a834:	03013403          	ld	s0,48(sp)
   1a838:	02813483          	ld	s1,40(sp)
   1a83c:	02013903          	ld	s2,32(sp)
   1a840:	01813983          	ld	s3,24(sp)
   1a844:	01013a03          	ld	s4,16(sp)
   1a848:	04010113          	addi	sp,sp,64
   1a84c:	00008067          	ret
   1a850:	8301b403          	ld	s0,-2000(gp) # 1d730 <__wctomb>
   1a854:	ae9fb0ef          	jal	1633c <__locale_charset>
   1a858:	00050693          	mv	a3,a0
   1a85c:	00090713          	mv	a4,s2
   1a860:	00000613          	li	a2,0
   1a864:	00010593          	mv	a1,sp
   1a868:	00048513          	mv	a0,s1
   1a86c:	000400e7          	jalr	s0
   1a870:	00050793          	mv	a5,a0
   1a874:	fa1ff06f          	j	1a814 <_wcrtomb_r+0x54>

000000000001a878 <wcrtomb>:
   1a878:	fc010113          	addi	sp,sp,-64
   1a87c:	02913423          	sd	s1,40(sp)
   1a880:	03213023          	sd	s2,32(sp)
   1a884:	02113c23          	sd	ra,56(sp)
   1a888:	02813823          	sd	s0,48(sp)
   1a88c:	01313c23          	sd	s3,24(sp)
   1a890:	01413823          	sd	s4,16(sp)
   1a894:	00060913          	mv	s2,a2
   1a898:	8101b483          	ld	s1,-2032(gp) # 1d710 <_impure_ptr>
   1a89c:	06050663          	beqz	a0,1a908 <wcrtomb+0x90>
   1a8a0:	8301ba03          	ld	s4,-2000(gp) # 1d730 <__wctomb>
   1a8a4:	00058993          	mv	s3,a1
   1a8a8:	00050413          	mv	s0,a0
   1a8ac:	a91fb0ef          	jal	1633c <__locale_charset>
   1a8b0:	00050693          	mv	a3,a0
   1a8b4:	00090713          	mv	a4,s2
   1a8b8:	00098613          	mv	a2,s3
   1a8bc:	00040593          	mv	a1,s0
   1a8c0:	00048513          	mv	a0,s1
   1a8c4:	000a00e7          	jalr	s4
   1a8c8:	00050793          	mv	a5,a0
   1a8cc:	fff00713          	li	a4,-1
   1a8d0:	00078513          	mv	a0,a5
   1a8d4:	00e79a63          	bne	a5,a4,1a8e8 <wcrtomb+0x70>
   1a8d8:	00092023          	sw	zero,0(s2)
   1a8dc:	08a00793          	li	a5,138
   1a8e0:	00f4a023          	sw	a5,0(s1)
   1a8e4:	fff00513          	li	a0,-1
   1a8e8:	03813083          	ld	ra,56(sp)
   1a8ec:	03013403          	ld	s0,48(sp)
   1a8f0:	02813483          	ld	s1,40(sp)
   1a8f4:	02013903          	ld	s2,32(sp)
   1a8f8:	01813983          	ld	s3,24(sp)
   1a8fc:	01013a03          	ld	s4,16(sp)
   1a900:	04010113          	addi	sp,sp,64
   1a904:	00008067          	ret
   1a908:	8301b403          	ld	s0,-2000(gp) # 1d730 <__wctomb>
   1a90c:	a31fb0ef          	jal	1633c <__locale_charset>
   1a910:	00050693          	mv	a3,a0
   1a914:	00090713          	mv	a4,s2
   1a918:	00000613          	li	a2,0
   1a91c:	00010593          	mv	a1,sp
   1a920:	00048513          	mv	a0,s1
   1a924:	000400e7          	jalr	s0
   1a928:	00050793          	mv	a5,a0
   1a92c:	fa1ff06f          	j	1a8cc <wcrtomb+0x54>

000000000001a930 <__ascii_wctomb>:
   1a930:	00058c63          	beqz	a1,1a948 <__ascii_wctomb+0x18>
   1a934:	0ff00793          	li	a5,255
   1a938:	00c7ec63          	bltu	a5,a2,1a950 <__ascii_wctomb+0x20>
   1a93c:	00c58023          	sb	a2,0(a1)
   1a940:	00100513          	li	a0,1
   1a944:	00008067          	ret
   1a948:	00000513          	li	a0,0
   1a94c:	00008067          	ret
   1a950:	08a00793          	li	a5,138
   1a954:	00f52023          	sw	a5,0(a0)
   1a958:	fff00513          	li	a0,-1
   1a95c:	00008067          	ret

000000000001a960 <_wctomb_r>:
   1a960:	fd010113          	addi	sp,sp,-48
   1a964:	02813023          	sd	s0,32(sp)
   1a968:	8301b403          	ld	s0,-2000(gp) # 1d730 <__wctomb>
   1a96c:	02113423          	sd	ra,40(sp)
   1a970:	00913c23          	sd	s1,24(sp)
   1a974:	01213823          	sd	s2,16(sp)
   1a978:	01313423          	sd	s3,8(sp)
   1a97c:	01413023          	sd	s4,0(sp)
   1a980:	00050493          	mv	s1,a0
   1a984:	00068a13          	mv	s4,a3
   1a988:	00058913          	mv	s2,a1
   1a98c:	00060993          	mv	s3,a2
   1a990:	9adfb0ef          	jal	1633c <__locale_charset>
   1a994:	000a0713          	mv	a4,s4
   1a998:	00050693          	mv	a3,a0
   1a99c:	00098613          	mv	a2,s3
   1a9a0:	00090593          	mv	a1,s2
   1a9a4:	00048513          	mv	a0,s1
   1a9a8:	00040313          	mv	t1,s0
   1a9ac:	02813083          	ld	ra,40(sp)
   1a9b0:	02013403          	ld	s0,32(sp)
   1a9b4:	01813483          	ld	s1,24(sp)
   1a9b8:	01013903          	ld	s2,16(sp)
   1a9bc:	00813983          	ld	s3,8(sp)
   1a9c0:	00013a03          	ld	s4,0(sp)
   1a9c4:	03010113          	addi	sp,sp,48
   1a9c8:	00030067          	jr	t1

000000000001a9cc <__syscall_error>:
   1a9cc:	ff010113          	addi	sp,sp,-16
   1a9d0:	00113423          	sd	ra,8(sp)
   1a9d4:	00813023          	sd	s0,0(sp)
   1a9d8:	00050413          	mv	s0,a0
   1a9dc:	3c0000ef          	jal	1ad9c <__errno>
   1a9e0:	00813083          	ld	ra,8(sp)
   1a9e4:	408007bb          	negw	a5,s0
   1a9e8:	00f52023          	sw	a5,0(a0)
   1a9ec:	00013403          	ld	s0,0(sp)
   1a9f0:	fff00513          	li	a0,-1
   1a9f4:	01010113          	addi	sp,sp,16
   1a9f8:	00008067          	ret

000000000001a9fc <open>:
   1a9fc:	00000693          	li	a3,0
   1aa00:	40000893          	li	a7,1024
   1aa04:	00000073          	ecall
   1aa08:	fc0542e3          	bltz	a0,1a9cc <__syscall_error>
   1aa0c:	0005051b          	sext.w	a0,a0
   1aa10:	00008067          	ret

000000000001aa14 <openat>:
   1aa14:	03800893          	li	a7,56
   1aa18:	00000073          	ecall
   1aa1c:	fa0548e3          	bltz	a0,1a9cc <__syscall_error>
   1aa20:	0005051b          	sext.w	a0,a0
   1aa24:	00008067          	ret

000000000001aa28 <lseek>:
   1aa28:	00000693          	li	a3,0
   1aa2c:	03e00893          	li	a7,62
   1aa30:	00000073          	ecall
   1aa34:	f8054ce3          	bltz	a0,1a9cc <__syscall_error>
   1aa38:	00008067          	ret

000000000001aa3c <read>:
   1aa3c:	00000693          	li	a3,0
   1aa40:	03f00893          	li	a7,63
   1aa44:	00000073          	ecall
   1aa48:	f80542e3          	bltz	a0,1a9cc <__syscall_error>
   1aa4c:	00008067          	ret

000000000001aa50 <write>:
   1aa50:	00000693          	li	a3,0
   1aa54:	04000893          	li	a7,64
   1aa58:	00000073          	ecall
   1aa5c:	f60548e3          	bltz	a0,1a9cc <__syscall_error>
   1aa60:	00008067          	ret

000000000001aa64 <fstat>:
   1aa64:	00000613          	li	a2,0
   1aa68:	00000693          	li	a3,0
   1aa6c:	05000893          	li	a7,80
   1aa70:	00000073          	ecall
   1aa74:	f4054ce3          	bltz	a0,1a9cc <__syscall_error>
   1aa78:	0005051b          	sext.w	a0,a0
   1aa7c:	00008067          	ret

000000000001aa80 <stat>:
   1aa80:	00000613          	li	a2,0
   1aa84:	00000693          	li	a3,0
   1aa88:	40e00893          	li	a7,1038
   1aa8c:	00000073          	ecall
   1aa90:	f2054ee3          	bltz	a0,1a9cc <__syscall_error>
   1aa94:	0005051b          	sext.w	a0,a0
   1aa98:	00008067          	ret

000000000001aa9c <lstat>:
   1aa9c:	00000613          	li	a2,0
   1aaa0:	00000693          	li	a3,0
   1aaa4:	40f00893          	li	a7,1039
   1aaa8:	00000073          	ecall
   1aaac:	f20540e3          	bltz	a0,1a9cc <__syscall_error>
   1aab0:	0005051b          	sext.w	a0,a0
   1aab4:	00008067          	ret

000000000001aab8 <fstatat>:
   1aab8:	04f00893          	li	a7,79
   1aabc:	00000073          	ecall
   1aac0:	f00546e3          	bltz	a0,1a9cc <__syscall_error>
   1aac4:	0005051b          	sext.w	a0,a0
   1aac8:	00008067          	ret

000000000001aacc <access>:
   1aacc:	00000613          	li	a2,0
   1aad0:	00000693          	li	a3,0
   1aad4:	40900893          	li	a7,1033
   1aad8:	00000073          	ecall
   1aadc:	ee0548e3          	bltz	a0,1a9cc <__syscall_error>
   1aae0:	0005051b          	sext.w	a0,a0
   1aae4:	00008067          	ret

000000000001aae8 <faccessat>:
   1aae8:	03000893          	li	a7,48
   1aaec:	00000073          	ecall
   1aaf0:	ec054ee3          	bltz	a0,1a9cc <__syscall_error>
   1aaf4:	0005051b          	sext.w	a0,a0
   1aaf8:	00008067          	ret

000000000001aafc <close>:
   1aafc:	00000593          	li	a1,0
   1ab00:	00000613          	li	a2,0
   1ab04:	00000693          	li	a3,0
   1ab08:	03900893          	li	a7,57
   1ab0c:	00000073          	ecall
   1ab10:	ea054ee3          	bltz	a0,1a9cc <__syscall_error>
   1ab14:	0005051b          	sext.w	a0,a0
   1ab18:	00008067          	ret

000000000001ab1c <link>:
   1ab1c:	00000613          	li	a2,0
   1ab20:	00000693          	li	a3,0
   1ab24:	40100893          	li	a7,1025
   1ab28:	00000073          	ecall
   1ab2c:	ea0540e3          	bltz	a0,1a9cc <__syscall_error>
   1ab30:	0005051b          	sext.w	a0,a0
   1ab34:	00008067          	ret

000000000001ab38 <unlink>:
   1ab38:	00000593          	li	a1,0
   1ab3c:	00000613          	li	a2,0
   1ab40:	00000693          	li	a3,0
   1ab44:	40200893          	li	a7,1026
   1ab48:	00000073          	ecall
   1ab4c:	e80540e3          	bltz	a0,1a9cc <__syscall_error>
   1ab50:	0005051b          	sext.w	a0,a0
   1ab54:	00008067          	ret

000000000001ab58 <execve>:
   1ab58:	ff010113          	addi	sp,sp,-16
   1ab5c:	00113423          	sd	ra,8(sp)
   1ab60:	23c000ef          	jal	1ad9c <__errno>
   1ab64:	00813083          	ld	ra,8(sp)
   1ab68:	00c00793          	li	a5,12
   1ab6c:	00f52023          	sw	a5,0(a0)
   1ab70:	01010113          	addi	sp,sp,16
   1ab74:	fff00513          	li	a0,-1
   1ab78:	00008067          	ret

000000000001ab7c <fork>:
   1ab7c:	ff010113          	addi	sp,sp,-16
   1ab80:	00113423          	sd	ra,8(sp)
   1ab84:	218000ef          	jal	1ad9c <__errno>
   1ab88:	00813083          	ld	ra,8(sp)
   1ab8c:	00b00793          	li	a5,11
   1ab90:	00f52023          	sw	a5,0(a0)
   1ab94:	01010113          	addi	sp,sp,16
   1ab98:	fff00513          	li	a0,-1
   1ab9c:	00008067          	ret

000000000001aba0 <getpid>:
   1aba0:	00100513          	li	a0,1
   1aba4:	00008067          	ret

000000000001aba8 <kill>:
   1aba8:	ff010113          	addi	sp,sp,-16
   1abac:	00113423          	sd	ra,8(sp)
   1abb0:	1ec000ef          	jal	1ad9c <__errno>
   1abb4:	00813083          	ld	ra,8(sp)
   1abb8:	01600793          	li	a5,22
   1abbc:	00f52023          	sw	a5,0(a0)
   1abc0:	01010113          	addi	sp,sp,16
   1abc4:	fff00513          	li	a0,-1
   1abc8:	00008067          	ret

000000000001abcc <wait>:
   1abcc:	ff010113          	addi	sp,sp,-16
   1abd0:	00113423          	sd	ra,8(sp)
   1abd4:	1c8000ef          	jal	1ad9c <__errno>
   1abd8:	00813083          	ld	ra,8(sp)
   1abdc:	00a00793          	li	a5,10
   1abe0:	00f52023          	sw	a5,0(a0)
   1abe4:	01010113          	addi	sp,sp,16
   1abe8:	fff00513          	li	a0,-1
   1abec:	00008067          	ret

000000000001abf0 <isatty>:
   1abf0:	f8010113          	addi	sp,sp,-128
   1abf4:	00010593          	mv	a1,sp
   1abf8:	00000613          	li	a2,0
   1abfc:	00000693          	li	a3,0
   1ac00:	05000893          	li	a7,80
   1ac04:	00000073          	ecall
   1ac08:	dc0542e3          	bltz	a0,1a9cc <__syscall_error>
   1ac0c:	fff00793          	li	a5,-1
   1ac10:	0005051b          	sext.w	a0,a0
   1ac14:	00f50863          	beq	a0,a5,1ac24 <isatty+0x34>
   1ac18:	01012503          	lw	a0,16(sp)
   1ac1c:	40d5551b          	sraiw	a0,a0,0xd
   1ac20:	00157513          	andi	a0,a0,1
   1ac24:	08010113          	addi	sp,sp,128
   1ac28:	00008067          	ret

000000000001ac2c <times>:
   1ac2c:	96018313          	addi	t1,gp,-1696 # 1d860 <t0.2343>
   1ac30:	00033703          	ld	a4,0(t1)
   1ac34:	ff010113          	addi	sp,sp,-16
   1ac38:	00050813          	mv	a6,a0
   1ac3c:	02071063          	bnez	a4,1ac5c <times+0x30>
   1ac40:	96018513          	addi	a0,gp,-1696 # 1d860 <t0.2343>
   1ac44:	00000593          	li	a1,0
   1ac48:	00000613          	li	a2,0
   1ac4c:	00000693          	li	a3,0
   1ac50:	0a900893          	li	a7,169
   1ac54:	00000073          	ecall
   1ac58:	d6054ae3          	bltz	a0,1a9cc <__syscall_error>
   1ac5c:	00010513          	mv	a0,sp
   1ac60:	00000593          	li	a1,0
   1ac64:	00000613          	li	a2,0
   1ac68:	00000693          	li	a3,0
   1ac6c:	0a900893          	li	a7,169
   1ac70:	00000073          	ecall
   1ac74:	d4054ce3          	bltz	a0,1a9cc <__syscall_error>
   1ac78:	00033703          	ld	a4,0(t1)
   1ac7c:	00013783          	ld	a5,0(sp)
   1ac80:	fff00513          	li	a0,-1
   1ac84:	00083823          	sd	zero,16(a6)
   1ac88:	40e786b3          	sub	a3,a5,a4
   1ac8c:	000f47b7          	lui	a5,0xf4
   1ac90:	24078793          	addi	a5,a5,576 # f4240 <_gp+0xd6340>
   1ac94:	02f68733          	mul	a4,a3,a5
   1ac98:	00833683          	ld	a3,8(t1)
   1ac9c:	00813783          	ld	a5,8(sp)
   1aca0:	00083c23          	sd	zero,24(a6)
   1aca4:	00083423          	sd	zero,8(a6)
   1aca8:	40d787b3          	sub	a5,a5,a3
   1acac:	01010113          	addi	sp,sp,16
   1acb0:	00f707b3          	add	a5,a4,a5
   1acb4:	00f83023          	sd	a5,0(a6)
   1acb8:	00008067          	ret

000000000001acbc <gettimeofday>:
   1acbc:	00000593          	li	a1,0
   1acc0:	00000613          	li	a2,0
   1acc4:	00000693          	li	a3,0
   1acc8:	0a900893          	li	a7,169
   1accc:	00000073          	ecall
   1acd0:	ce054ee3          	bltz	a0,1a9cc <__syscall_error>
   1acd4:	0005051b          	sext.w	a0,a0
   1acd8:	00008067          	ret

000000000001acdc <ftime>:
   1acdc:	00051423          	sh	zero,8(a0)
   1ace0:	00053023          	sd	zero,0(a0)
   1ace4:	00000513          	li	a0,0
   1ace8:	00008067          	ret

000000000001acec <utime>:
   1acec:	fff00513          	li	a0,-1
   1acf0:	00008067          	ret

000000000001acf4 <chown>:
   1acf4:	fff00513          	li	a0,-1
   1acf8:	00008067          	ret

000000000001acfc <chmod>:
   1acfc:	fff00513          	li	a0,-1
   1ad00:	00008067          	ret

000000000001ad04 <chdir>:
   1ad04:	fff00513          	li	a0,-1
   1ad08:	00008067          	ret

000000000001ad0c <getcwd>:
   1ad0c:	00000513          	li	a0,0
   1ad10:	00008067          	ret

000000000001ad14 <sysconf>:
   1ad14:	00200793          	li	a5,2
   1ad18:	00f51863          	bne	a0,a5,1ad28 <sysconf+0x14>
   1ad1c:	000f4537          	lui	a0,0xf4
   1ad20:	24050513          	addi	a0,a0,576 # f4240 <_gp+0xd6340>
   1ad24:	00008067          	ret
   1ad28:	fff00513          	li	a0,-1
   1ad2c:	00008067          	ret

000000000001ad30 <sbrk>:
   1ad30:	8f81b703          	ld	a4,-1800(gp) # 1d7f8 <heap_end.2381>
   1ad34:	00050793          	mv	a5,a0
   1ad38:	00071663          	bnez	a4,1ad44 <sbrk+0x14>
   1ad3c:	97018713          	addi	a4,gp,-1680 # 1d870 <_end>
   1ad40:	8ee1bc23          	sd	a4,-1800(gp) # 1d7f8 <heap_end.2381>
   1ad44:	00e78533          	add	a0,a5,a4
   1ad48:	00000593          	li	a1,0
   1ad4c:	00000613          	li	a2,0
   1ad50:	00000693          	li	a3,0
   1ad54:	0d600893          	li	a7,214
   1ad58:	00000073          	ecall
   1ad5c:	c60548e3          	bltz	a0,1a9cc <__syscall_error>
   1ad60:	8f81b683          	ld	a3,-1800(gp) # 1d7f8 <heap_end.2381>
   1ad64:	fff00713          	li	a4,-1
   1ad68:	00d787b3          	add	a5,a5,a3
   1ad6c:	00f51663          	bne	a0,a5,1ad78 <sbrk+0x48>
   1ad70:	8ea1bc23          	sd	a0,-1800(gp) # 1d7f8 <heap_end.2381>
   1ad74:	00068713          	mv	a4,a3
   1ad78:	00070513          	mv	a0,a4
   1ad7c:	00008067          	ret

000000000001ad80 <_exit>:
   1ad80:	00000593          	li	a1,0
   1ad84:	00000613          	li	a2,0
   1ad88:	00000693          	li	a3,0
   1ad8c:	05d00893          	li	a7,93
   1ad90:	00000073          	ecall
   1ad94:	c2054ce3          	bltz	a0,1a9cc <__syscall_error>
   1ad98:	0000006f          	j	1ad98 <_exit+0x18>

000000000001ad9c <__errno>:
   1ad9c:	8101b503          	ld	a0,-2032(gp) # 1d710 <_impure_ptr>
   1ada0:	00008067          	ret

000000000001ada4 <sulp>:
   1ada4:	f2050553          	fmv.d.x	fa0,a0
   1ada8:	fe010113          	addi	sp,sp,-32
   1adac:	00913423          	sd	s1,8(sp)
   1adb0:	00058493          	mv	s1,a1
   1adb4:	00813823          	sd	s0,16(sp)
   1adb8:	00113c23          	sd	ra,24(sp)
   1adbc:	00050413          	mv	s0,a0
   1adc0:	d3dfc0ef          	jal	17afc <__ulp>
   1adc4:	02048a63          	beqz	s1,1adf8 <sulp+0x54>
   1adc8:	42045413          	srai	s0,s0,0x20
   1adcc:	02141413          	slli	s0,s0,0x21
   1add0:	03545413          	srli	s0,s0,0x35
   1add4:	06b00793          	li	a5,107
   1add8:	408787bb          	subw	a5,a5,s0
   1addc:	00f05e63          	blez	a5,1adf8 <sulp+0x54>
   1ade0:	0147979b          	slliw	a5,a5,0x14
   1ade4:	3ff00737          	lui	a4,0x3ff00
   1ade8:	00e787bb          	addw	a5,a5,a4
   1adec:	02079793          	slli	a5,a5,0x20
   1adf0:	f20787d3          	fmv.d.x	fa5,a5
   1adf4:	12f57553          	fmul.d	fa0,fa0,fa5
   1adf8:	01813083          	ld	ra,24(sp)
   1adfc:	01013403          	ld	s0,16(sp)
   1ae00:	00813483          	ld	s1,8(sp)
   1ae04:	02010113          	addi	sp,sp,32
   1ae08:	00008067          	ret
