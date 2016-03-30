
op_double:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010000 <_ftext>:
   10000:	0000e197          	auipc	gp,0xe
   10004:	ee018193          	addi	gp,gp,-288 # 1dee0 <_gp>
   10008:	0000d297          	auipc	t0,0xd
   1000c:	7a828293          	addi	t0,t0,1960 # 1d7b0 <_PathLocale>
   10010:	0000e317          	auipc	t1,0xe
   10014:	84030313          	addi	t1,t1,-1984 # 1d850 <_end>
   10018:	0002b023          	sd	zero,0(t0)
   1001c:	00828293          	addi	t0,t0,8
   10020:	fe62ece3          	bltu	t0,t1,10018 <_ftext+0x18>
   10024:	00000517          	auipc	a0,0x0
   10028:	2c050513          	addi	a0,a0,704 # 102e4 <__libc_fini_array>
   1002c:	26c000ef          	jal	10298 <atexit>
   10030:	310000ef          	jal	10340 <__libc_init_array>
   10034:	00012503          	lw	a0,0(sp)
   10038:	00810593          	addi	a1,sp,8
   1003c:	00000613          	li	a2,0
   10040:	124000ef          	jal	10164 <main>
   10044:	2700006f          	j	102b4 <exit>

0000000000010048 <_fini>:
   10048:	00008067          	ret

000000000001004c <deregister_tm_clones>:
   1004c:	0001d537          	lui	a0,0x1d
   10050:	0001d7b7          	lui	a5,0x1d
   10054:	6d850713          	addi	a4,a0,1752 # 1d6d8 <__TMC_END__>
   10058:	6df78793          	addi	a5,a5,1759 # 1d6df <__TMC_END__+0x7>
   1005c:	40e787b3          	sub	a5,a5,a4
   10060:	00e00713          	li	a4,14
   10064:	00f77c63          	bleu	a5,a4,1007c <deregister_tm_clones+0x30>
   10068:	00000337          	lui	t1,0x0
   1006c:	00030313          	mv	t1,t1
   10070:	00030663          	beqz	t1,1007c <deregister_tm_clones+0x30>
   10074:	6d850513          	addi	a0,a0,1752
   10078:	00030067          	jr	t1
   1007c:	00008067          	ret

0000000000010080 <register_tm_clones>:
   10080:	0001d537          	lui	a0,0x1d
   10084:	0001d7b7          	lui	a5,0x1d
   10088:	6d850593          	addi	a1,a0,1752 # 1d6d8 <__TMC_END__>
   1008c:	6d878793          	addi	a5,a5,1752 # 1d6d8 <__TMC_END__>
   10090:	40b787b3          	sub	a5,a5,a1
   10094:	4037d793          	srai	a5,a5,0x3
   10098:	03f7d593          	srli	a1,a5,0x3f
   1009c:	00f585b3          	add	a1,a1,a5
   100a0:	4015d593          	srai	a1,a1,0x1
   100a4:	00058c63          	beqz	a1,100bc <register_tm_clones+0x3c>
   100a8:	00000337          	lui	t1,0x0
   100ac:	00030313          	mv	t1,t1
   100b0:	00030663          	beqz	t1,100bc <register_tm_clones+0x3c>
   100b4:	6d850513          	addi	a0,a0,1752
   100b8:	00030067          	jr	t1
   100bc:	00008067          	ret

00000000000100c0 <__do_global_dtors_aux>:
   100c0:	ff010113          	addi	sp,sp,-16
   100c4:	00813023          	sd	s0,0(sp)
   100c8:	9001c783          	lbu	a5,-1792(gp) # 1d7e0 <_bss_start>
   100cc:	00113423          	sd	ra,8(sp)
   100d0:	02079663          	bnez	a5,100fc <__do_global_dtors_aux+0x3c>
   100d4:	f79ff0ef          	jal	1004c <deregister_tm_clones>
   100d8:	000007b7          	lui	a5,0x0
   100dc:	00078793          	mv	a5,a5
   100e0:	00078a63          	beqz	a5,100f4 <__do_global_dtors_aux+0x34>
   100e4:	0001b537          	lui	a0,0x1b
   100e8:	53050513          	addi	a0,a0,1328 # 1b530 <__fini_array_end>
   100ec:	ffff0317          	auipc	t1,0xffff0
   100f0:	f14300e7          	jalr	t1,-236 # 0 <_ftext-0x10000>
   100f4:	00100793          	li	a5,1
   100f8:	90f18023          	sb	a5,-1792(gp) # 1d7e0 <_bss_start>
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
   10124:	90818593          	addi	a1,gp,-1784 # 1d7e8 <object.3092>
   10128:	53050513          	addi	a0,a0,1328 # 1b530 <__fini_array_end>
   1012c:	ffff0317          	auipc	t1,0xffff0
   10130:	ed4300e7          	jalr	t1,-300 # 0 <_ftext-0x10000>
   10134:	0001c7b7          	lui	a5,0x1c
   10138:	6d078513          	addi	a0,a5,1744 # 1c6d0 <__JCR_END__>
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
   10164:	fc010113          	addi	sp,sp,-64
   10168:	02113c23          	sd	ra,56(sp)
   1016c:	02813823          	sd	s0,48(sp)
   10170:	04010413          	addi	s0,sp,64
   10174:	fca42623          	sw	a0,-52(s0)
   10178:	fcb43023          	sd	a1,-64(s0)
   1017c:	fc043783          	ld	a5,-64(s0)
   10180:	00878793          	addi	a5,a5,8 # 8 <_ftext-0xfff8>
   10184:	0007b783          	ld	a5,0(a5)
   10188:	00078513          	mv	a0,a5
   1018c:	120000ef          	jal	102ac <atof>
   10190:	fea43027          	fsd	fa0,-32(s0)
   10194:	fc043783          	ld	a5,-64(s0)
   10198:	01078793          	addi	a5,a5,16
   1019c:	0007b783          	ld	a5,0(a5)
   101a0:	0007c783          	lbu	a5,0(a5)
   101a4:	fcf40fa3          	sb	a5,-33(s0)
   101a8:	fc043783          	ld	a5,-64(s0)
   101ac:	01878793          	addi	a5,a5,24
   101b0:	0007b783          	ld	a5,0(a5)
   101b4:	00078513          	mv	a0,a5
   101b8:	0f4000ef          	jal	102ac <atof>
   101bc:	fca43827          	fsd	fa0,-48(s0)
   101c0:	fdf44783          	lbu	a5,-33(s0)
   101c4:	02b00713          	li	a4,43
   101c8:	02e78663          	beq	a5,a4,101f4 <main+0x90>
   101cc:	02b00713          	li	a4,43
   101d0:	00f74863          	blt	a4,a5,101e0 <main+0x7c>
   101d4:	02a00713          	li	a4,42
   101d8:	04e78263          	beq	a5,a4,1021c <main+0xb8>
   101dc:	0680006f          	j	10244 <main+0xe0>
   101e0:	02d00713          	li	a4,45
   101e4:	02e78263          	beq	a5,a4,10208 <main+0xa4>
   101e8:	02f00713          	li	a4,47
   101ec:	04e78263          	beq	a5,a4,10230 <main+0xcc>
   101f0:	0540006f          	j	10244 <main+0xe0>
   101f4:	fe043707          	fld	fa4,-32(s0)
   101f8:	fd043787          	fld	fa5,-48(s0)
   101fc:	02f777d3          	fadd.d	fa5,fa4,fa5
   10200:	fef43427          	fsd	fa5,-24(s0)
   10204:	05c0006f          	j	10260 <main+0xfc>
   10208:	fe043707          	fld	fa4,-32(s0)
   1020c:	fd043787          	fld	fa5,-48(s0)
   10210:	0af777d3          	fsub.d	fa5,fa4,fa5
   10214:	fef43427          	fsd	fa5,-24(s0)
   10218:	0480006f          	j	10260 <main+0xfc>
   1021c:	fe043707          	fld	fa4,-32(s0)
   10220:	fd043787          	fld	fa5,-48(s0)
   10224:	12f777d3          	fmul.d	fa5,fa4,fa5
   10228:	fef43427          	fsd	fa5,-24(s0)
   1022c:	0340006f          	j	10260 <main+0xfc>
   10230:	fe043707          	fld	fa4,-32(s0)
   10234:	fd043787          	fld	fa5,-48(s0)
   10238:	1af777d3          	fdiv.d	fa5,fa4,fa5
   1023c:	fef43427          	fsd	fa5,-24(s0)
   10240:	0200006f          	j	10260 <main+0xfc>
   10244:	fdf44783          	lbu	a5,-33(s0)
   10248:	00078593          	mv	a1,a5
   1024c:	0001b7b7          	lui	a5,0x1b
   10250:	de878513          	addi	a0,a5,-536 # 1ade8 <sulp+0x6c>
   10254:	1d0000ef          	jal	10424 <printf>
   10258:	00100793          	li	a5,1
   1025c:	0280006f          	j	10284 <main+0x120>
   10260:	fdf44783          	lbu	a5,-33(s0)
   10264:	fe843703          	ld	a4,-24(s0)
   10268:	fd043683          	ld	a3,-48(s0)
   1026c:	00078613          	mv	a2,a5
   10270:	fe043583          	ld	a1,-32(s0)
   10274:	0001b7b7          	lui	a5,0x1b
   10278:	e0078513          	addi	a0,a5,-512 # 1ae00 <sulp+0x84>
   1027c:	1a8000ef          	jal	10424 <printf>
   10280:	00000793          	li	a5,0
   10284:	00078513          	mv	a0,a5
   10288:	03813083          	ld	ra,56(sp)
   1028c:	03013403          	ld	s0,48(sp)
   10290:	04010113          	addi	sp,sp,64
   10294:	00008067          	ret

0000000000010298 <atexit>:
   10298:	00050593          	mv	a1,a0
   1029c:	00000693          	li	a3,0
   102a0:	00000613          	li	a2,0
   102a4:	00000513          	li	a0,0
   102a8:	3900306f          	j	13638 <__register_exitproc>

00000000000102ac <atof>:
   102ac:	00000593          	li	a1,0
   102b0:	4680106f          	j	11718 <strtod>

00000000000102b4 <exit>:
   102b4:	ff010113          	addi	sp,sp,-16
   102b8:	00000593          	li	a1,0
   102bc:	00813023          	sd	s0,0(sp)
   102c0:	00113423          	sd	ra,8(sp)
   102c4:	00050413          	mv	s0,a0
   102c8:	484030ef          	jal	1374c <__call_exitprocs>
   102cc:	8081b503          	ld	a0,-2040(gp) # 1d6e8 <_global_impure_ptr>
   102d0:	05853783          	ld	a5,88(a0)
   102d4:	00078463          	beqz	a5,102dc <exit+0x28>
   102d8:	000780e7          	jalr	a5
   102dc:	00040513          	mv	a0,s0
   102e0:	2790a0ef          	jal	1ad58 <_exit>

00000000000102e4 <__libc_fini_array>:
   102e4:	fe010113          	addi	sp,sp,-32
   102e8:	00813823          	sd	s0,16(sp)
   102ec:	00913423          	sd	s1,8(sp)
   102f0:	0001b437          	lui	s0,0x1b
   102f4:	0001b4b7          	lui	s1,0x1b
   102f8:	52848493          	addi	s1,s1,1320 # 1b528 <__init_array_end>
   102fc:	53040413          	addi	s0,s0,1328 # 1b530 <__fini_array_end>
   10300:	40940433          	sub	s0,s0,s1
   10304:	ff840793          	addi	a5,s0,-8
   10308:	00113c23          	sd	ra,24(sp)
   1030c:	40345413          	srai	s0,s0,0x3
   10310:	009784b3          	add	s1,a5,s1
   10314:	00040c63          	beqz	s0,1032c <__libc_fini_array+0x48>
   10318:	0004b783          	ld	a5,0(s1)
   1031c:	fff40413          	addi	s0,s0,-1
   10320:	ff848493          	addi	s1,s1,-8
   10324:	000780e7          	jalr	a5
   10328:	fe0418e3          	bnez	s0,10318 <__libc_fini_array+0x34>
   1032c:	01813083          	ld	ra,24(sp)
   10330:	01013403          	ld	s0,16(sp)
   10334:	00813483          	ld	s1,8(sp)
   10338:	02010113          	addi	sp,sp,32
   1033c:	d0dff06f          	j	10048 <_fini>

0000000000010340 <__libc_init_array>:
   10340:	fe010113          	addi	sp,sp,-32
   10344:	00813823          	sd	s0,16(sp)
   10348:	0001b7b7          	lui	a5,0x1b
   1034c:	0001b437          	lui	s0,0x1b
   10350:	01213023          	sd	s2,0(sp)
   10354:	52078793          	addi	a5,a5,1312 # 1b520 <_etext>
   10358:	52040913          	addi	s2,s0,1312 # 1b520 <_etext>
   1035c:	41278933          	sub	s2,a5,s2
   10360:	00913423          	sd	s1,8(sp)
   10364:	00113c23          	sd	ra,24(sp)
   10368:	40395913          	srai	s2,s2,0x3
   1036c:	52040413          	addi	s0,s0,1312
   10370:	00000493          	li	s1,0
   10374:	00090c63          	beqz	s2,1038c <__libc_init_array+0x4c>
   10378:	00043783          	ld	a5,0(s0)
   1037c:	00148493          	addi	s1,s1,1
   10380:	00840413          	addi	s0,s0,8
   10384:	000780e7          	jalr	a5
   10388:	fe9918e3          	bne	s2,s1,10378 <__libc_init_array+0x38>
   1038c:	cbdff0ef          	jal	10048 <_fini>
   10390:	0001b437          	lui	s0,0x1b
   10394:	0001b7b7          	lui	a5,0x1b
   10398:	52040913          	addi	s2,s0,1312 # 1b520 <_etext>
   1039c:	52878793          	addi	a5,a5,1320 # 1b528 <__init_array_end>
   103a0:	41278933          	sub	s2,a5,s2
   103a4:	40395913          	srai	s2,s2,0x3
   103a8:	52040413          	addi	s0,s0,1312
   103ac:	00000493          	li	s1,0
   103b0:	00090c63          	beqz	s2,103c8 <__libc_init_array+0x88>
   103b4:	00043783          	ld	a5,0(s0)
   103b8:	00148493          	addi	s1,s1,1
   103bc:	00840413          	addi	s0,s0,8
   103c0:	000780e7          	jalr	a5
   103c4:	fe9918e3          	bne	s2,s1,103b4 <__libc_init_array+0x74>
   103c8:	01813083          	ld	ra,24(sp)
   103cc:	01013403          	ld	s0,16(sp)
   103d0:	00813483          	ld	s1,8(sp)
   103d4:	00013903          	ld	s2,0(sp)
   103d8:	02010113          	addi	sp,sp,32
   103dc:	00008067          	ret

00000000000103e0 <_printf_r>:
   103e0:	fb010113          	addi	sp,sp,-80
   103e4:	02c13023          	sd	a2,32(sp)
   103e8:	02d13423          	sd	a3,40(sp)
   103ec:	02f13c23          	sd	a5,56(sp)
   103f0:	02e13823          	sd	a4,48(sp)
   103f4:	05013023          	sd	a6,64(sp)
   103f8:	05113423          	sd	a7,72(sp)
   103fc:	00058613          	mv	a2,a1
   10400:	01053583          	ld	a1,16(a0)
   10404:	02010793          	addi	a5,sp,32
   10408:	00078693          	mv	a3,a5
   1040c:	00113c23          	sd	ra,24(sp)
   10410:	00f13423          	sd	a5,8(sp)
   10414:	364010ef          	jal	11778 <_vfprintf_r>
   10418:	01813083          	ld	ra,24(sp)
   1041c:	05010113          	addi	sp,sp,80
   10420:	00008067          	ret

0000000000010424 <printf>:
   10424:	8101b303          	ld	t1,-2032(gp) # 1d6f0 <_impure_ptr>
   10428:	fa010113          	addi	sp,sp,-96
   1042c:	02c13823          	sd	a2,48(sp)
   10430:	02d13c23          	sd	a3,56(sp)
   10434:	04f13423          	sd	a5,72(sp)
   10438:	02b13423          	sd	a1,40(sp)
   1043c:	04e13023          	sd	a4,64(sp)
   10440:	05013823          	sd	a6,80(sp)
   10444:	05113c23          	sd	a7,88(sp)
   10448:	01033583          	ld	a1,16(t1)
   1044c:	02810793          	addi	a5,sp,40
   10450:	00050613          	mv	a2,a0
   10454:	00078693          	mv	a3,a5
   10458:	00030513          	mv	a0,t1
   1045c:	00113c23          	sd	ra,24(sp)
   10460:	00f13423          	sd	a5,8(sp)
   10464:	314010ef          	jal	11778 <_vfprintf_r>
   10468:	01813083          	ld	ra,24(sp)
   1046c:	06010113          	addi	sp,sp,96
   10470:	00008067          	ret

0000000000010474 <_strtod_r>:
   10474:	f0010113          	addi	sp,sp,-256
   10478:	0e813823          	sd	s0,240(sp)
   1047c:	0f213023          	sd	s2,224(sp)
   10480:	0d313c23          	sd	s3,216(sp)
   10484:	0b713c23          	sd	s7,184(sp)
   10488:	0b913423          	sd	s9,168(sp)
   1048c:	0e113c23          	sd	ra,248(sp)
   10490:	0e913423          	sd	s1,232(sp)
   10494:	0d413823          	sd	s4,208(sp)
   10498:	0d513423          	sd	s5,200(sp)
   1049c:	0d613023          	sd	s6,192(sp)
   104a0:	0b813823          	sd	s8,176(sp)
   104a4:	0ba13023          	sd	s10,160(sp)
   104a8:	09b13c23          	sd	s11,152(sp)
   104ac:	08813427          	fsd	fs0,136(sp)
   104b0:	08913027          	fsd	fs1,128(sp)
   104b4:	07213c27          	fsd	fs2,120(sp)
   104b8:	07313827          	fsd	fs3,112(sp)
   104bc:	07413427          	fsd	fs4,104(sp)
   104c0:	07513027          	fsd	fs5,96(sp)
   104c4:	05613c27          	fsd	fs6,88(sp)
   104c8:	05713827          	fsd	fs7,80(sp)
   104cc:	04013023          	sd	zero,64(sp)
   104d0:	02b13c23          	sd	a1,56(sp)
   104d4:	00058b93          	mv	s7,a1
   104d8:	000bc783          	lbu	a5,0(s7)
   104dc:	00060993          	mv	s3,a2
   104e0:	0001b6b7          	lui	a3,0x1b
   104e4:	02d00613          	li	a2,45
   104e8:	00058c93          	mv	s9,a1
   104ec:	00050413          	mv	s0,a0
   104f0:	00000913          	li	s2,0
   104f4:	e1068693          	addi	a3,a3,-496 # 1ae10 <sulp+0x94>
   104f8:	28f66e63          	bltu	a2,a5,10794 <_strtod_r+0x320>
   104fc:	00279713          	slli	a4,a5,0x2
   10500:	00d70733          	add	a4,a4,a3
   10504:	00072703          	lw	a4,0(a4)
   10508:	00070067          	jr	a4
   1050c:	00000a93          	li	s5,0
   10510:	001b8713          	addi	a4,s7,1
   10514:	02e13c23          	sd	a4,56(sp)
   10518:	001bc783          	lbu	a5,1(s7)
   1051c:	1c078e63          	beqz	a5,106f8 <_strtod_r+0x284>
   10520:	00070b93          	mv	s7,a4
   10524:	03000713          	li	a4,48
   10528:	000b8a13          	mv	s4,s7
   1052c:	00000b13          	li	s6,0
   10530:	26e78c63          	beq	a5,a4,107a8 <_strtod_r+0x334>
   10534:	fd07871b          	addiw	a4,a5,-48
   10538:	0ff77713          	andi	a4,a4,255
   1053c:	00900513          	li	a0,9
   10540:	40e566e3          	bltu	a0,a4,1114c <_strtod_r+0xcd8>
   10544:	001a0593          	addi	a1,s4,1
   10548:	00000d93          	li	s11,0
   1054c:	00000d13          	li	s10,0
   10550:	00000c13          	li	s8,0
   10554:	00800813          	li	a6,8
   10558:	29884663          	blt	a6,s8,107e4 <_strtod_r+0x370>
   1055c:	001d161b          	slliw	a2,s10,0x1
   10560:	003d171b          	slliw	a4,s10,0x3
   10564:	00e6073b          	addw	a4,a2,a4
   10568:	00f7073b          	addw	a4,a4,a5
   1056c:	fd070d1b          	addiw	s10,a4,-48
   10570:	02b13c23          	sd	a1,56(sp)
   10574:	0005c783          	lbu	a5,0(a1)
   10578:	00058913          	mv	s2,a1
   1057c:	001c0c1b          	addiw	s8,s8,1
   10580:	fd07869b          	addiw	a3,a5,-48
   10584:	0ff6f693          	andi	a3,a3,255
   10588:	00158593          	addi	a1,a1,1
   1058c:	fcd576e3          	bleu	a3,a0,10558 <_strtod_r+0xe4>
   10590:	00078493          	mv	s1,a5
   10594:	00040513          	mv	a0,s0
   10598:	5a5050ef          	jal	1633c <_localeconv_r>
   1059c:	00053b83          	ld	s7,0(a0)
   105a0:	00040513          	mv	a0,s0
   105a4:	599050ef          	jal	1633c <_localeconv_r>
   105a8:	00053503          	ld	a0,0(a0)
   105ac:	525070ef          	jal	182d0 <strlen>
   105b0:	00050613          	mv	a2,a0
   105b4:	000b8593          	mv	a1,s7
   105b8:	00090513          	mv	a0,s2
   105bc:	5e5070ef          	jal	183a0 <strncmp>
   105c0:	32050e63          	beqz	a0,108fc <_strtod_r+0x488>
   105c4:	000c0693          	mv	a3,s8
   105c8:	00000613          	li	a2,0
   105cc:	00000593          	li	a1,0
   105d0:	00000513          	li	a0,0
   105d4:	fdf4f793          	andi	a5,s1,-33
   105d8:	04500713          	li	a4,69
   105dc:	00000b93          	li	s7,0
   105e0:	10e79463          	bne	a5,a4,106e8 <_strtod_r+0x274>
   105e4:	00c6e7b3          	or	a5,a3,a2
   105e8:	0167e7b3          	or	a5,a5,s6
   105ec:	10078663          	beqz	a5,106f8 <_strtod_r+0x284>
   105f0:	03813c83          	ld	s9,56(sp)
   105f4:	02b00713          	li	a4,43
   105f8:	001c8793          	addi	a5,s9,1
   105fc:	02f13c23          	sd	a5,56(sp)
   10600:	001cc783          	lbu	a5,1(s9)
   10604:	22e780e3          	beq	a5,a4,11024 <_strtod_r+0xbb0>
   10608:	02d00713          	li	a4,45
   1060c:	04e78ce3          	beq	a5,a4,10e64 <_strtod_r+0x9f0>
   10610:	00078493          	mv	s1,a5
   10614:	00000893          	li	a7,0
   10618:	fd04879b          	addiw	a5,s1,-48
   1061c:	00900813          	li	a6,9
   10620:	00048713          	mv	a4,s1
   10624:	12f860e3          	bltu	a6,a5,10f44 <_strtod_r+0xad0>
   10628:	03000793          	li	a5,48
   1062c:	02f49263          	bne	s1,a5,10650 <_strtod_r+0x1dc>
   10630:	03813783          	ld	a5,56(sp)
   10634:	00048813          	mv	a6,s1
   10638:	00178793          	addi	a5,a5,1
   1063c:	02f13c23          	sd	a5,56(sp)
   10640:	0007c703          	lbu	a4,0(a5)
   10644:	00178793          	addi	a5,a5,1
   10648:	00070493          	mv	s1,a4
   1064c:	ff0708e3          	beq	a4,a6,1063c <_strtod_r+0x1c8>
   10650:	fcf7071b          	addiw	a4,a4,-49
   10654:	00800793          	li	a5,8
   10658:	00000b93          	li	s7,0
   1065c:	08e7e663          	bltu	a5,a4,106e8 <_strtod_r+0x274>
   10660:	03813f03          	ld	t5,56(sp)
   10664:	fd04879b          	addiw	a5,s1,-48
   10668:	00900e93          	li	t4,9
   1066c:	001f0e13          	addi	t3,t5,1
   10670:	03c13c23          	sd	t3,56(sp)
   10674:	001f4483          	lbu	s1,1(t5)
   10678:	fd04871b          	addiw	a4,s1,-48
   1067c:	0ff77713          	andi	a4,a4,255
   10680:	02eeee63          	bltu	t4,a4,106bc <_strtod_r+0x248>
   10684:	002f0313          	addi	t1,t5,2
   10688:	02613c23          	sd	t1,56(sp)
   1068c:	00034803          	lbu	a6,0(t1)
   10690:	0017971b          	slliw	a4,a5,0x1
   10694:	0037979b          	slliw	a5,a5,0x3
   10698:	00f707bb          	addw	a5,a4,a5
   1069c:	fd08071b          	addiw	a4,a6,-48
   106a0:	009787bb          	addw	a5,a5,s1
   106a4:	0ff77713          	andi	a4,a4,255
   106a8:	00030e13          	mv	t3,t1
   106ac:	fd07879b          	addiw	a5,a5,-48
   106b0:	00080493          	mv	s1,a6
   106b4:	00130313          	addi	t1,t1,1
   106b8:	fceef8e3          	bleu	a4,t4,10688 <_strtod_r+0x214>
   106bc:	00005737          	lui	a4,0x5
   106c0:	41ee0e33          	sub	t3,t3,t5
   106c4:	00800813          	li	a6,8
   106c8:	e1f70b9b          	addiw	s7,a4,-481
   106cc:	01c84a63          	blt	a6,t3,106e0 <_strtod_r+0x26c>
   106d0:	e1f7071b          	addiw	a4,a4,-481
   106d4:	00078b93          	mv	s7,a5
   106d8:	00f75463          	ble	a5,a4,106e0 <_strtod_r+0x26c>
   106dc:	00070b93          	mv	s7,a4
   106e0:	00088463          	beqz	a7,106e8 <_strtod_r+0x274>
   106e4:	41700bbb          	negw	s7,s7
   106e8:	10069a63          	bnez	a3,107fc <_strtod_r+0x388>
   106ec:	01666b33          	or	s6,a2,s6
   106f0:	200b1263          	bnez	s6,108f4 <_strtod_r+0x480>
   106f4:	70050a63          	beqz	a0,10e08 <_strtod_r+0x994>
   106f8:	00000493          	li	s1,0
   106fc:	00000a93          	li	s5,0
   10700:	00098663          	beqz	s3,1070c <_strtod_r+0x298>
   10704:	0199b023          	sd	s9,0(s3)
   10708:	060a9263          	bnez	s5,1076c <_strtod_r+0x2f8>
   1070c:	0f813083          	ld	ra,248(sp)
   10710:	f2048553          	fmv.d.x	fa0,s1
   10714:	0f013403          	ld	s0,240(sp)
   10718:	0e813483          	ld	s1,232(sp)
   1071c:	0e013903          	ld	s2,224(sp)
   10720:	0d813983          	ld	s3,216(sp)
   10724:	0d013a03          	ld	s4,208(sp)
   10728:	0c813a83          	ld	s5,200(sp)
   1072c:	0c013b03          	ld	s6,192(sp)
   10730:	0b813b83          	ld	s7,184(sp)
   10734:	0b013c03          	ld	s8,176(sp)
   10738:	0a813c83          	ld	s9,168(sp)
   1073c:	0a013d03          	ld	s10,160(sp)
   10740:	09813d83          	ld	s11,152(sp)
   10744:	08813407          	fld	fs0,136(sp)
   10748:	08013487          	fld	fs1,128(sp)
   1074c:	07813907          	fld	fs2,120(sp)
   10750:	07013987          	fld	fs3,112(sp)
   10754:	06813a07          	fld	fs4,104(sp)
   10758:	06013a87          	fld	fs5,96(sp)
   1075c:	05813b07          	fld	fs6,88(sp)
   10760:	05013b87          	fld	fs7,80(sp)
   10764:	10010113          	addi	sp,sp,256
   10768:	00008067          	ret
   1076c:	f20487d3          	fmv.d.x	fa5,s1
   10770:	22f797d3          	fneg.d	fa5,fa5
   10774:	e20784d3          	fmv.x.d	s1,fa5
   10778:	f95ff06f          	j	1070c <_strtod_r+0x298>
   1077c:	00100a93          	li	s5,1
   10780:	d91ff06f          	j	10510 <_strtod_r+0x9c>
   10784:	001b8b93          	addi	s7,s7,1
   10788:	03713c23          	sd	s7,56(sp)
   1078c:	000bc783          	lbu	a5,0(s7)
   10790:	d6f676e3          	bleu	a5,a2,104fc <_strtod_r+0x88>
   10794:	03000713          	li	a4,48
   10798:	00000a93          	li	s5,0
   1079c:	000b8a13          	mv	s4,s7
   107a0:	00000b13          	li	s6,0
   107a4:	d8e798e3          	bne	a5,a4,10534 <_strtod_r+0xc0>
   107a8:	001bc703          	lbu	a4,1(s7)
   107ac:	05800693          	li	a3,88
   107b0:	7ad70063          	beq	a4,a3,10f50 <_strtod_r+0xadc>
   107b4:	07800693          	li	a3,120
   107b8:	78d70c63          	beq	a4,a3,10f50 <_strtod_r+0xadc>
   107bc:	001b8713          	addi	a4,s7,1
   107c0:	00070a13          	mv	s4,a4
   107c4:	02e13c23          	sd	a4,56(sp)
   107c8:	00170713          	addi	a4,a4,1 # 5001 <_ftext-0xafff>
   107cc:	fff74483          	lbu	s1,-1(a4)
   107d0:	fef488e3          	beq	s1,a5,107c0 <_strtod_r+0x34c>
   107d4:	12048063          	beqz	s1,108f4 <_strtod_r+0x480>
   107d8:	00048793          	mv	a5,s1
   107dc:	00100b13          	li	s6,1
   107e0:	d55ff06f          	j	10534 <_strtod_r+0xc0>
   107e4:	001d961b          	slliw	a2,s11,0x1
   107e8:	003d969b          	slliw	a3,s11,0x3
   107ec:	00d606bb          	addw	a3,a2,a3
   107f0:	00f687bb          	addw	a5,a3,a5
   107f4:	fd078d9b          	addiw	s11,a5,-48
   107f8:	d79ff06f          	j	10570 <_strtod_r+0xfc>
   107fc:	40bb8bbb          	subw	s7,s7,a1
   10800:	000c1463          	bnez	s8,10808 <_strtod_r+0x394>
   10804:	00068c13          	mv	s8,a3
   10808:	01000793          	li	a5,16
   1080c:	00068713          	mv	a4,a3
   10810:	00d7d463          	ble	a3,a5,10818 <_strtod_r+0x3a4>
   10814:	00078713          	mv	a4,a5
   10818:	d21d07d3          	fcvt.d.wu	fa5,s10
   1081c:	00900793          	li	a5,9
   10820:	e20785d3          	fmv.x.d	a1,fa5
   10824:	00058913          	mv	s2,a1
   10828:	02e7d663          	ble	a4,a5,10854 <_strtod_r+0x3e0>
   1082c:	ff77079b          	addiw	a5,a4,-9
   10830:	0001b637          	lui	a2,0x1b
   10834:	00379793          	slli	a5,a5,0x3
   10838:	1d860613          	addi	a2,a2,472 # 1b1d8 <__mprec_tens>
   1083c:	00c78633          	add	a2,a5,a2
   10840:	d21d87d3          	fcvt.d.wu	fa5,s11
   10844:	00063707          	fld	fa4,0(a2)
   10848:	f20586d3          	fmv.d.x	fa3,a1
   1084c:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   10850:	e2078953          	fmv.x.d	s2,fa5
   10854:	00f00793          	li	a5,15
   10858:	10d7c663          	blt	a5,a3,10964 <_strtod_r+0x4f0>
   1085c:	080b8863          	beqz	s7,108ec <_strtod_r+0x478>
   10860:	357054e3          	blez	s7,113a8 <_strtod_r+0xf34>
   10864:	01600613          	li	a2,22
   10868:	29764ce3          	blt	a2,s7,11300 <_strtod_r+0xe8c>
   1086c:	0001b737          	lui	a4,0x1b
   10870:	003b9793          	slli	a5,s7,0x3
   10874:	1d870713          	addi	a4,a4,472 # 1b1d8 <__mprec_tens>
   10878:	00e787b3          	add	a5,a5,a4
   1087c:	0007b787          	fld	fa5,0(a5)
   10880:	f2090753          	fmv.d.x	fa4,s2
   10884:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   10888:	e20784d3          	fmv.x.d	s1,fa5
   1088c:	e6098ee3          	beqz	s3,10708 <_strtod_r+0x294>
   10890:	03813c83          	ld	s9,56(sp)
   10894:	0199b023          	sd	s9,0(s3)
   10898:	e71ff06f          	j	10708 <_strtod_r+0x294>
   1089c:	0001b737          	lui	a4,0x1b
   108a0:	02d13c23          	sd	a3,56(sp)
   108a4:	00068613          	mv	a2,a3
   108a8:	48870713          	addi	a4,a4,1160 # 1b488 <zeroes.4137+0x20>
   108ac:	01900893          	li	a7,25
   108b0:	00170713          	addi	a4,a4,1
   108b4:	fff74503          	lbu	a0,-1(a4)
   108b8:	00160613          	addi	a2,a2,1
   108bc:	480500e3          	beqz	a0,1153c <_strtod_r+0x10c8>
   108c0:	00064583          	lbu	a1,0(a2)
   108c4:	fbf5879b          	addiw	a5,a1,-65
   108c8:	0ff7f793          	andi	a5,a5,255
   108cc:	00058813          	mv	a6,a1
   108d0:	00f8e463          	bltu	a7,a5,108d8 <_strtod_r+0x464>
   108d4:	0205881b          	addiw	a6,a1,32
   108d8:	fca80ce3          	beq	a6,a0,108b0 <_strtod_r+0x43c>
   108dc:	00168693          	addi	a3,a3,1
   108e0:	02d13c23          	sd	a3,56(sp)
   108e4:	7ff00913          	li	s2,2047
   108e8:	03491913          	slli	s2,s2,0x34
   108ec:	00090493          	mv	s1,s2
   108f0:	f9dff06f          	j	1088c <_strtod_r+0x418>
   108f4:	00000493          	li	s1,0
   108f8:	f95ff06f          	j	1088c <_strtod_r+0x418>
   108fc:	00040513          	mv	a0,s0
   10900:	23d050ef          	jal	1633c <_localeconv_r>
   10904:	00053503          	ld	a0,0(a0)
   10908:	1c9070ef          	jal	182d0 <strlen>
   1090c:	03813783          	ld	a5,56(sp)
   10910:	00a78533          	add	a0,a5,a0
   10914:	02a13c23          	sd	a0,56(sp)
   10918:	00054483          	lbu	s1,0(a0)
   1091c:	4a0c1863          	bnez	s8,10dcc <_strtod_r+0x958>
   10920:	03000793          	li	a5,48
   10924:	2ef494e3          	bne	s1,a5,1140c <_strtod_r+0xf98>
   10928:	00150793          	addi	a5,a0,1
   1092c:	00000613          	li	a2,0
   10930:	00048713          	mv	a4,s1
   10934:	02f13c23          	sd	a5,56(sp)
   10938:	0007c483          	lbu	s1,0(a5)
   1093c:	0016061b          	addiw	a2,a2,1
   10940:	00178793          	addi	a5,a5,1
   10944:	fee488e3          	beq	s1,a4,10934 <_strtod_r+0x4c0>
   10948:	fcf4879b          	addiw	a5,s1,-49
   1094c:	00800713          	li	a4,8
   10950:	16f778e3          	bleu	a5,a4,112c0 <_strtod_r+0xe4c>
   10954:	00000693          	li	a3,0
   10958:	00000593          	li	a1,0
   1095c:	00100513          	li	a0,1
   10960:	c75ff06f          	j	105d4 <_strtod_r+0x160>
   10964:	40e6873b          	subw	a4,a3,a4
   10968:	0177073b          	addw	a4,a4,s7
   1096c:	70e05a63          	blez	a4,11080 <_strtod_r+0xc0c>
   10970:	00f77793          	andi	a5,a4,15
   10974:	02078263          	beqz	a5,10998 <_strtod_r+0x524>
   10978:	0001b637          	lui	a2,0x1b
   1097c:	00379793          	slli	a5,a5,0x3
   10980:	1d860613          	addi	a2,a2,472 # 1b1d8 <__mprec_tens>
   10984:	00c787b3          	add	a5,a5,a2
   10988:	f2090753          	fmv.d.x	fa4,s2
   1098c:	0007b787          	fld	fa5,0(a5)
   10990:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   10994:	e2078953          	fmv.x.d	s2,fa5
   10998:	ff077793          	andi	a5,a4,-16
   1099c:	0c078863          	beqz	a5,10a6c <_strtod_r+0x5f8>
   109a0:	13400713          	li	a4,308
   109a4:	4cf74a63          	blt	a4,a5,10e78 <_strtod_r+0xa04>
   109a8:	4047d79b          	sraiw	a5,a5,0x4
   109ac:	00100513          	li	a0,1
   109b0:	3af55ce3          	ble	a5,a0,11568 <_strtod_r+0x10f4>
   109b4:	0001b737          	lui	a4,0x1b
   109b8:	2c870313          	addi	t1,a4,712 # 1b2c8 <__mprec_bigtens>
   109bc:	00090813          	mv	a6,s2
   109c0:	2c870713          	addi	a4,a4,712
   109c4:	00000893          	li	a7,0
   109c8:	00000613          	li	a2,0
   109cc:	0017f593          	andi	a1,a5,1
   109d0:	00058c63          	beqz	a1,109e8 <_strtod_r+0x574>
   109d4:	f2080753          	fmv.d.x	fa4,a6
   109d8:	00073787          	fld	fa5,0(a4)
   109dc:	00100893          	li	a7,1
   109e0:	12f777d3          	fmul.d	fa5,fa4,fa5
   109e4:	e2078853          	fmv.x.d	a6,fa5
   109e8:	4017d79b          	sraiw	a5,a5,0x1
   109ec:	0016061b          	addiw	a2,a2,1
   109f0:	00870713          	addi	a4,a4,8
   109f4:	fca79ce3          	bne	a5,a0,109cc <_strtod_r+0x558>
   109f8:	500890e3          	bnez	a7,116f8 <_strtod_r+0x1284>
   109fc:	00361793          	slli	a5,a2,0x3
   10a00:	42095713          	srai	a4,s2,0x20
   10a04:	00f30633          	add	a2,t1,a5
   10a08:	fcb007b7          	lui	a5,0xfcb00
   10a0c:	00f707bb          	addw	a5,a4,a5
   10a10:	fff00713          	li	a4,-1
   10a14:	02075713          	srli	a4,a4,0x20
   10a18:	02079793          	slli	a5,a5,0x20
   10a1c:	00e97933          	and	s2,s2,a4
   10a20:	00f96933          	or	s2,s2,a5
   10a24:	00063787          	fld	fa5,0(a2)
   10a28:	f2090753          	fmv.d.x	fa4,s2
   10a2c:	7ff007b7          	lui	a5,0x7ff00
   10a30:	7ca005b7          	lui	a1,0x7ca00
   10a34:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   10a38:	e2078953          	fmv.x.d	s2,fa5
   10a3c:	42095613          	srai	a2,s2,0x20
   10a40:	00f677b3          	and	a5,a2,a5
   10a44:	42f5ea63          	bltu	a1,a5,10e78 <_strtod_r+0xa04>
   10a48:	7c9005b7          	lui	a1,0x7c900
   10a4c:	2cf5f4e3          	bleu	a5,a1,11514 <_strtod_r+0x10a0>
   10a50:	7ff007b7          	lui	a5,0x7ff00
   10a54:	02091913          	slli	s2,s2,0x20
   10a58:	fff78793          	addi	a5,a5,-1 # 7fefffff <_gp+0x7fee211f>
   10a5c:	02095913          	srli	s2,s2,0x20
   10a60:	02079793          	slli	a5,a5,0x20
   10a64:	00f96933          	or	s2,s2,a5
   10a68:	00e96933          	or	s2,s2,a4
   10a6c:	00000c93          	li	s9,0
   10a70:	000d0713          	mv	a4,s10
   10a74:	000c0613          	mv	a2,s8
   10a78:	000a0593          	mv	a1,s4
   10a7c:	00040513          	mv	a0,s0
   10a80:	6cc060ef          	jal	1714c <__s2b>
   10a84:	00050d13          	mv	s10,a0
   10a88:	3e050863          	beqz	a0,10e78 <_strtod_r+0xa04>
   10a8c:	417007bb          	negw	a5,s7
   10a90:	41fbdd9b          	sraiw	s11,s7,0x1f
   10a94:	00fdf7b3          	and	a5,s11,a5
   10a98:	01712423          	sw	s7,8(sp)
   10a9c:	00f12623          	sw	a5,12(sp)
   10aa0:	100bc0e3          	bltz	s7,113a0 <_strtod_r+0xf2c>
   10aa4:	0001d7b7          	lui	a5,0x1d
   10aa8:	7207b907          	fld	fs2,1824(a5) # 1d720 <__wctomb+0x10>
   10aac:	0001d7b7          	lui	a5,0x1d
   10ab0:	7307b487          	fld	fs1,1840(a5) # 1d730 <__wctomb+0x20>
   10ab4:	0001d7b7          	lui	a5,0x1d
   10ab8:	7287b987          	fld	fs3,1832(a5) # 1d728 <__wctomb+0x18>
   10abc:	0001d7b7          	lui	a5,0x1d
   10ac0:	7187bb07          	fld	fs6,1816(a5) # 1d718 <__wctomb+0x8>
   10ac4:	0001d7b7          	lui	a5,0x1d
   10ac8:	23290ad3          	fmv.d	fs5,fs2
   10acc:	7407ba07          	fld	fs4,1856(a5) # 1d740 <__wctomb+0x30>
   10ad0:	00000c13          	li	s8,0
   10ad4:	00000a13          	li	s4,0
   10ad8:	008d2583          	lw	a1,8(s10)
   10adc:	00040513          	mv	a0,s0
   10ae0:	48c060ef          	jal	16f6c <_Balloc>
   10ae4:	00050b13          	mv	s6,a0
   10ae8:	3a050263          	beqz	a0,10e8c <_strtod_r+0xa18>
   10aec:	014d2603          	lw	a2,20(s10)
   10af0:	010d0593          	addi	a1,s10,16
   10af4:	01050513          	addi	a0,a0,16
   10af8:	00260613          	addi	a2,a2,2
   10afc:	00261613          	slli	a2,a2,0x2
   10b00:	268060ef          	jal	16d68 <memcpy>
   10b04:	f20905d3          	fmv.d.x	fa1,s2
   10b08:	04810693          	addi	a3,sp,72
   10b0c:	03410613          	addi	a2,sp,52
   10b10:	00040513          	mv	a0,s0
   10b14:	190070ef          	jal	17ca4 <__d2b>
   10b18:	04a13023          	sd	a0,64(sp)
   10b1c:	00090493          	mv	s1,s2
   10b20:	36050863          	beqz	a0,10e90 <_strtod_r+0xa1c>
   10b24:	00100593          	li	a1,1
   10b28:	00040513          	mv	a0,s0
   10b2c:	079060ef          	jal	173a4 <__i2b>
   10b30:	00050a13          	mv	s4,a0
   10b34:	34050c63          	beqz	a0,10e8c <_strtod_r+0xa18>
   10b38:	03412703          	lw	a4,52(sp)
   10b3c:	3a074e63          	bltz	a4,10ef8 <_strtod_r+0xa84>
   10b40:	00c12783          	lw	a5,12(sp)
   10b44:	00812583          	lw	a1,8(sp)
   10b48:	00e78dbb          	addw	s11,a5,a4
   10b4c:	04812503          	lw	a0,72(sp)
   10b50:	4197073b          	subw	a4,a4,s9
   10b54:	00100693          	li	a3,1
   10b58:	00a7073b          	addw	a4,a4,a0
   10b5c:	03600793          	li	a5,54
   10b60:	fff7071b          	addiw	a4,a4,-1
   10b64:	c0200613          	li	a2,-1022
   10b68:	00012c23          	sw	zero,24(sp)
   10b6c:	00d12823          	sw	a3,16(sp)
   10b70:	40a787bb          	subw	a5,a5,a0
   10b74:	00c75e63          	ble	a2,a4,10b90 <_strtod_r+0x71c>
   10b78:	40e6063b          	subw	a2,a2,a4
   10b7c:	01f00513          	li	a0,31
   10b80:	40c787bb          	subw	a5,a5,a2
   10b84:	38c54263          	blt	a0,a2,10f08 <_strtod_r+0xa94>
   10b88:	00c6973b          	sllw	a4,a3,a2
   10b8c:	00e12823          	sw	a4,16(sp)
   10b90:	00f5873b          	addw	a4,a1,a5
   10b94:	00fd87bb          	addw	a5,s11,a5
   10b98:	00ec8bbb          	addw	s7,s9,a4
   10b9c:	000d8593          	mv	a1,s11
   10ba0:	01b7d463          	ble	s11,a5,10ba8 <_strtod_r+0x734>
   10ba4:	00078593          	mv	a1,a5
   10ba8:	000b8613          	mv	a2,s7
   10bac:	0175d463          	ble	s7,a1,10bb4 <_strtod_r+0x740>
   10bb0:	00058613          	mv	a2,a1
   10bb4:	00c05863          	blez	a2,10bc4 <_strtod_r+0x750>
   10bb8:	40c787bb          	subw	a5,a5,a2
   10bbc:	40cb8bbb          	subw	s7,s7,a2
   10bc0:	40cd8dbb          	subw	s11,s11,a2
   10bc4:	00c12703          	lw	a4,12(sp)
   10bc8:	06070063          	beqz	a4,10c28 <_strtod_r+0x7b4>
   10bcc:	000a0593          	mv	a1,s4
   10bd0:	00070613          	mv	a2,a4
   10bd4:	00040513          	mv	a0,s0
   10bd8:	02f13023          	sd	a5,32(sp)
   10bdc:	1f1060ef          	jal	175cc <__pow5mult>
   10be0:	00050a13          	mv	s4,a0
   10be4:	02013783          	ld	a5,32(sp)
   10be8:	2a050263          	beqz	a0,10e8c <_strtod_r+0xa18>
   10bec:	04013603          	ld	a2,64(sp)
   10bf0:	00050593          	mv	a1,a0
   10bf4:	00040513          	mv	a0,s0
   10bf8:	02f13023          	sd	a5,32(sp)
   10bfc:	7dc060ef          	jal	173d8 <__multiply>
   10c00:	02013783          	ld	a5,32(sp)
   10c04:	28050463          	beqz	a0,10e8c <_strtod_r+0xa18>
   10c08:	04013583          	ld	a1,64(sp)
   10c0c:	02a13423          	sd	a0,40(sp)
   10c10:	00040513          	mv	a0,s0
   10c14:	02f13023          	sd	a5,32(sp)
   10c18:	400060ef          	jal	17018 <_Bfree>
   10c1c:	02813603          	ld	a2,40(sp)
   10c20:	02013783          	ld	a5,32(sp)
   10c24:	04c13023          	sd	a2,64(sp)
   10c28:	00f05e63          	blez	a5,10c44 <_strtod_r+0x7d0>
   10c2c:	04013583          	ld	a1,64(sp)
   10c30:	00078613          	mv	a2,a5
   10c34:	00040513          	mv	a0,s0
   10c38:	2cd060ef          	jal	17704 <__lshift>
   10c3c:	04a13023          	sd	a0,64(sp)
   10c40:	24050863          	beqz	a0,10e90 <_strtod_r+0xa1c>
   10c44:	00812783          	lw	a5,8(sp)
   10c48:	00078e63          	beqz	a5,10c64 <_strtod_r+0x7f0>
   10c4c:	00812603          	lw	a2,8(sp)
   10c50:	000b0593          	mv	a1,s6
   10c54:	00040513          	mv	a0,s0
   10c58:	175060ef          	jal	175cc <__pow5mult>
   10c5c:	00050b13          	mv	s6,a0
   10c60:	22050663          	beqz	a0,10e8c <_strtod_r+0xa18>
   10c64:	01705e63          	blez	s7,10c80 <_strtod_r+0x80c>
   10c68:	000b0593          	mv	a1,s6
   10c6c:	000b8613          	mv	a2,s7
   10c70:	00040513          	mv	a0,s0
   10c74:	291060ef          	jal	17704 <__lshift>
   10c78:	00050b13          	mv	s6,a0
   10c7c:	20050863          	beqz	a0,10e8c <_strtod_r+0xa18>
   10c80:	01b05e63          	blez	s11,10c9c <_strtod_r+0x828>
   10c84:	000a0593          	mv	a1,s4
   10c88:	000d8613          	mv	a2,s11
   10c8c:	00040513          	mv	a0,s0
   10c90:	275060ef          	jal	17704 <__lshift>
   10c94:	00050a13          	mv	s4,a0
   10c98:	1e050a63          	beqz	a0,10e8c <_strtod_r+0xa18>
   10c9c:	04013583          	ld	a1,64(sp)
   10ca0:	000b0613          	mv	a2,s6
   10ca4:	00040513          	mv	a0,s0
   10ca8:	41d060ef          	jal	178c4 <__mdiff>
   10cac:	00050c13          	mv	s8,a0
   10cb0:	1c050e63          	beqz	a0,10e8c <_strtod_r+0xa18>
   10cb4:	01052783          	lw	a5,16(a0)
   10cb8:	000a0593          	mv	a1,s4
   10cbc:	00052823          	sw	zero,16(a0)
   10cc0:	00078b93          	mv	s7,a5
   10cc4:	3a1060ef          	jal	17864 <__mcmp>
   10cc8:	7c054063          	bltz	a0,11488 <_strtod_r+0x1014>
   10ccc:	74050463          	beqz	a0,11414 <_strtod_r+0xfa0>
   10cd0:	000a0593          	mv	a1,s4
   10cd4:	000c0513          	mv	a0,s8
   10cd8:	108070ef          	jal	17de0 <__ratio>
   10cdc:	a29507d3          	fle.d	a5,fa0,fs1
   10ce0:	20078063          	beqz	a5,10ee0 <_strtod_r+0xa6c>
   10ce4:	220b8e63          	beqz	s7,10f20 <_strtod_r+0xaac>
   10ce8:	0001d737          	lui	a4,0x1d
   10cec:	72873407          	fld	fs0,1832(a4) # 1d728 <__wctomb+0x18>
   10cf0:	3ff00793          	li	a5,1023
   10cf4:	03479793          	slli	a5,a5,0x34
   10cf8:	42095713          	srai	a4,s2,0x20
   10cfc:	7ff006b7          	lui	a3,0x7ff00
   10d00:	00d77633          	and	a2,a4,a3
   10d04:	7fe005b7          	lui	a1,0x7fe00
   10d08:	28b60863          	beq	a2,a1,10f98 <_strtod_r+0xb24>
   10d0c:	040c8c63          	beqz	s9,10d64 <_strtod_r+0x8f0>
   10d10:	06a00737          	lui	a4,0x6a00
   10d14:	04c76863          	bltu	a4,a2,10d64 <_strtod_r+0x8f0>
   10d18:	0001d737          	lui	a4,0x1d
   10d1c:	73873787          	fld	fa5,1848(a4) # 1d738 <__wctomb+0x28>
   10d20:	a2f40753          	fle.d	a4,fs0,fa5
   10d24:	02070063          	beqz	a4,10d44 <_strtod_r+0x8d0>
   10d28:	c21417d3          	fcvt.wu.d	a5,fs0,rtz
   10d2c:	62078063          	beqz	a5,1134c <_strtod_r+0xed8>
   10d30:	d2178453          	fcvt.d.wu	fs0,a5
   10d34:	e20407d3          	fmv.x.d	a5,fs0
   10d38:	000b9663          	bnez	s7,10d44 <_strtod_r+0x8d0>
   10d3c:	228417d3          	fneg.d	fa5,fs0
   10d40:	e20787d3          	fmv.x.d	a5,fa5
   10d44:	4207d713          	srai	a4,a5,0x20
   10d48:	06b006b7          	lui	a3,0x6b00
   10d4c:	00d7073b          	addw	a4,a4,a3
   10d50:	40c7073b          	subw	a4,a4,a2
   10d54:	02079793          	slli	a5,a5,0x20
   10d58:	02071713          	slli	a4,a4,0x20
   10d5c:	0207d793          	srli	a5,a5,0x20
   10d60:	00e7e7b3          	or	a5,a5,a4
   10d64:	f2048553          	fmv.d.x	fa0,s1
   10d68:	00c13823          	sd	a2,16(sp)
   10d6c:	f2078bd3          	fmv.d.x	fs7,a5
   10d70:	565060ef          	jal	17ad4 <__ulp>
   10d74:	f20487d3          	fmv.d.x	fa5,s1
   10d78:	01013603          	ld	a2,16(sp)
   10d7c:	7aabf7c3          	fmadd.d	fa5,fs7,fa0,fa5
   10d80:	e2078953          	fmv.x.d	s2,fa5
   10d84:	42095713          	srai	a4,s2,0x20
   10d88:	000c9863          	bnez	s9,10d98 <_strtod_r+0x924>
   10d8c:	7ff007b7          	lui	a5,0x7ff00
   10d90:	00f777b3          	and	a5,a4,a5
   10d94:	28f60c63          	beq	a2,a5,1102c <_strtod_r+0xbb8>
   10d98:	04013583          	ld	a1,64(sp)
   10d9c:	00040513          	mv	a0,s0
   10da0:	278060ef          	jal	17018 <_Bfree>
   10da4:	000b0593          	mv	a1,s6
   10da8:	00040513          	mv	a0,s0
   10dac:	26c060ef          	jal	17018 <_Bfree>
   10db0:	000a0593          	mv	a1,s4
   10db4:	00040513          	mv	a0,s0
   10db8:	260060ef          	jal	17018 <_Bfree>
   10dbc:	000c0593          	mv	a1,s8
   10dc0:	00040513          	mv	a0,s0
   10dc4:	254060ef          	jal	17018 <_Bfree>
   10dc8:	d11ff06f          	j	10ad8 <_strtod_r+0x664>
   10dcc:	000c0693          	mv	a3,s8
   10dd0:	00000613          	li	a2,0
   10dd4:	00000593          	li	a1,0
   10dd8:	fd04851b          	addiw	a0,s1,-48
   10ddc:	00900793          	li	a5,9
   10de0:	b6a7eee3          	bltu	a5,a0,1095c <_strtod_r+0x4e8>
   10de4:	0016071b          	addiw	a4,a2,1
   10de8:	00050493          	mv	s1,a0
   10dec:	46051863          	bnez	a0,1125c <_strtod_r+0xde8>
   10df0:	03813803          	ld	a6,56(sp)
   10df4:	00070613          	mv	a2,a4
   10df8:	00180793          	addi	a5,a6,1
   10dfc:	02f13c23          	sd	a5,56(sp)
   10e00:	00184483          	lbu	s1,1(a6)
   10e04:	fd5ff06f          	j	10dd8 <_strtod_r+0x964>
   10e08:	04e00793          	li	a5,78
   10e0c:	00f48c63          	beq	s1,a5,10e24 <_strtod_r+0x9b0>
   10e10:	5497d463          	ble	s1,a5,11358 <_strtod_r+0xee4>
   10e14:	06900793          	li	a5,105
   10e18:	54f48463          	beq	s1,a5,11360 <_strtod_r+0xeec>
   10e1c:	06e00793          	li	a5,110
   10e20:	8cf49ce3          	bne	s1,a5,106f8 <_strtod_r+0x284>
   10e24:	03813603          	ld	a2,56(sp)
   10e28:	0001b737          	lui	a4,0x1b
   10e2c:	49070713          	addi	a4,a4,1168 # 1b490 <zeroes.4137+0x28>
   10e30:	01900813          	li	a6,25
   10e34:	00170713          	addi	a4,a4,1
   10e38:	fff74583          	lbu	a1,-1(a4)
   10e3c:	5a058663          	beqz	a1,113e8 <_strtod_r+0xf74>
   10e40:	00160613          	addi	a2,a2,1
   10e44:	00064683          	lbu	a3,0(a2)
   10e48:	fbf6879b          	addiw	a5,a3,-65
   10e4c:	0ff7f793          	andi	a5,a5,255
   10e50:	00068513          	mv	a0,a3
   10e54:	00f86463          	bltu	a6,a5,10e5c <_strtod_r+0x9e8>
   10e58:	0206851b          	addiw	a0,a3,32
   10e5c:	fcb50ce3          	beq	a0,a1,10e34 <_strtod_r+0x9c0>
   10e60:	899ff06f          	j	106f8 <_strtod_r+0x284>
   10e64:	00100893          	li	a7,1
   10e68:	002c8793          	addi	a5,s9,2
   10e6c:	02f13c23          	sd	a5,56(sp)
   10e70:	002cc483          	lbu	s1,2(s9)
   10e74:	fa4ff06f          	j	10618 <_strtod_r+0x1a4>
   10e78:	02200793          	li	a5,34
   10e7c:	7ff00493          	li	s1,2047
   10e80:	00f42023          	sw	a5,0(s0)
   10e84:	03449493          	slli	s1,s1,0x34
   10e88:	a05ff06f          	j	1088c <_strtod_r+0x418>
   10e8c:	04013503          	ld	a0,64(sp)
   10e90:	02200793          	li	a5,34
   10e94:	7ff00493          	li	s1,2047
   10e98:	00f42023          	sw	a5,0(s0)
   10e9c:	03449493          	slli	s1,s1,0x34
   10ea0:	00050593          	mv	a1,a0
   10ea4:	00040513          	mv	a0,s0
   10ea8:	170060ef          	jal	17018 <_Bfree>
   10eac:	000b0593          	mv	a1,s6
   10eb0:	00040513          	mv	a0,s0
   10eb4:	164060ef          	jal	17018 <_Bfree>
   10eb8:	000a0593          	mv	a1,s4
   10ebc:	00040513          	mv	a0,s0
   10ec0:	158060ef          	jal	17018 <_Bfree>
   10ec4:	000d0593          	mv	a1,s10
   10ec8:	00040513          	mv	a0,s0
   10ecc:	14c060ef          	jal	17018 <_Bfree>
   10ed0:	000c0593          	mv	a1,s8
   10ed4:	00040513          	mv	a0,s0
   10ed8:	140060ef          	jal	17018 <_Bfree>
   10edc:	9b1ff06f          	j	1088c <_strtod_r+0x418>
   10ee0:	13257453          	fmul.d	fs0,fa0,fs2
   10ee4:	e20407d3          	fmv.x.d	a5,fs0
   10ee8:	e00b98e3          	bnez	s7,10cf8 <_strtod_r+0x884>
   10eec:	228417d3          	fneg.d	fa5,fs0
   10ef0:	e20787d3          	fmv.x.d	a5,fa5
   10ef4:	e05ff06f          	j	10cf8 <_strtod_r+0x884>
   10ef8:	00812783          	lw	a5,8(sp)
   10efc:	00c12d83          	lw	s11,12(sp)
   10f00:	40e785bb          	subw	a1,a5,a4
   10f04:	c49ff06f          	j	10b4c <_strtod_r+0x6d8>
   10f08:	01012683          	lw	a3,16(sp)
   10f0c:	be200613          	li	a2,-1054
   10f10:	40e6073b          	subw	a4,a2,a4
   10f14:	00e6973b          	sllw	a4,a3,a4
   10f18:	00e12c23          	sw	a4,24(sp)
   10f1c:	c75ff06f          	j	10b90 <_strtod_r+0x71c>
   10f20:	00c91793          	slli	a5,s2,0xc
   10f24:	12078e63          	beqz	a5,11060 <_strtod_r+0xbec>
   10f28:	00100793          	li	a5,1
   10f2c:	5cf90a63          	beq	s2,a5,11500 <_strtod_r+0x108c>
   10f30:	bff00793          	li	a5,-1025
   10f34:	0001d737          	lui	a4,0x1d
   10f38:	03479793          	slli	a5,a5,0x34
   10f3c:	72873407          	fld	fs0,1832(a4) # 1d728 <__wctomb+0x18>
   10f40:	db9ff06f          	j	10cf8 <_strtod_r+0x884>
   10f44:	03913c23          	sd	s9,56(sp)
   10f48:	00000b93          	li	s7,0
   10f4c:	f9cff06f          	j	106e8 <_strtod_r+0x274>
   10f50:	0001b637          	lui	a2,0x1b
   10f54:	000a8793          	mv	a5,s5
   10f58:	04010713          	addi	a4,sp,64
   10f5c:	03410693          	addi	a3,sp,52
   10f60:	ee860613          	addi	a2,a2,-280 # 1aee8 <fpi.2617>
   10f64:	03810593          	addi	a1,sp,56
   10f68:	00040513          	mv	a0,s0
   10f6c:	141040ef          	jal	158ac <__gethex>
   10f70:	00757a13          	andi	s4,a0,7
   10f74:	00050b13          	mv	s6,a0
   10f78:	00000493          	li	s1,0
   10f7c:	900a08e3          	beqz	s4,1088c <_strtod_r+0x418>
   10f80:	00600793          	li	a5,6
   10f84:	1efa1e63          	bne	s4,a5,11180 <_strtod_r+0xd0c>
   10f88:	001b8713          	addi	a4,s7,1
   10f8c:	02e13c23          	sd	a4,56(sp)
   10f90:	00000a93          	li	s5,0
   10f94:	8f9ff06f          	j	1088c <_strtod_r+0x418>
   10f98:	fcb005b7          	lui	a1,0xfcb00
   10f9c:	00b7073b          	addw	a4,a4,a1
   10fa0:	fff00593          	li	a1,-1
   10fa4:	0205d593          	srli	a1,a1,0x20
   10fa8:	02071713          	slli	a4,a4,0x20
   10fac:	00b97933          	and	s2,s2,a1
   10fb0:	00e96933          	or	s2,s2,a4
   10fb4:	f2090553          	fmv.d.x	fa0,s2
   10fb8:	f2078bd3          	fmv.d.x	fs7,a5
   10fbc:	00d13c23          	sd	a3,24(sp)
   10fc0:	00c13823          	sd	a2,16(sp)
   10fc4:	02b13023          	sd	a1,32(sp)
   10fc8:	30d060ef          	jal	17ad4 <__ulp>
   10fcc:	f20907d3          	fmv.d.x	fa5,s2
   10fd0:	01813683          	ld	a3,24(sp)
   10fd4:	7ca00737          	lui	a4,0x7ca00
   10fd8:	7aabf7c3          	fmadd.d	fa5,fs7,fa0,fa5
   10fdc:	01013603          	ld	a2,16(sp)
   10fe0:	e2078953          	fmv.x.d	s2,fa5
   10fe4:	42095793          	srai	a5,s2,0x20
   10fe8:	00d7f6b3          	and	a3,a5,a3
   10fec:	16e6ec63          	bltu	a3,a4,11164 <_strtod_r+0xcf0>
   10ff0:	7ff00793          	li	a5,2047
   10ff4:	03479793          	slli	a5,a5,0x34
   10ff8:	fff78793          	addi	a5,a5,-1 # 7fefffff <_gp+0x7fee211f>
   10ffc:	02013583          	ld	a1,32(sp)
   11000:	e8f486e3          	beq	s1,a5,10e8c <_strtod_r+0xa18>
   11004:	7ff007b7          	lui	a5,0x7ff00
   11008:	02091913          	slli	s2,s2,0x20
   1100c:	fff78793          	addi	a5,a5,-1 # 7fefffff <_gp+0x7fee211f>
   11010:	02095913          	srli	s2,s2,0x20
   11014:	02079793          	slli	a5,a5,0x20
   11018:	00f96933          	or	s2,s2,a5
   1101c:	00b96933          	or	s2,s2,a1
   11020:	d79ff06f          	j	10d98 <_strtod_r+0x924>
   11024:	00000893          	li	a7,0
   11028:	e41ff06f          	j	10e68 <_strtod_r+0x9f4>
   1102c:	c20417d3          	fcvt.w.d	a5,fs0,rtz
   11030:	d2078553          	fcvt.d.w	fa0,a5
   11034:	0aa47553          	fsub.d	fa0,fs0,fa0
   11038:	0e0b9c63          	bnez	s7,11130 <_strtod_r+0xcbc>
   1103c:	00c91793          	slli	a5,s2,0xc
   11040:	0e079863          	bnez	a5,11130 <_strtod_r+0xcbc>
   11044:	0001d7b7          	lui	a5,0x1d
   11048:	7507b787          	fld	fa5,1872(a5) # 1d750 <__wctomb+0x40>
   1104c:	a2f517d3          	flt.d	a5,fa0,fa5
   11050:	d40784e3          	beqz	a5,10d98 <_strtod_r+0x924>
   11054:	04013503          	ld	a0,64(sp)
   11058:	00090493          	mv	s1,s2
   1105c:	e45ff06f          	j	10ea0 <_strtod_r+0xa2c>
   11060:	a33517d3          	flt.d	a5,fa0,fs3
   11064:	36079c63          	bnez	a5,113dc <_strtod_r+0xf68>
   11068:	0001d7b7          	lui	a5,0x1d
   1106c:	7207b407          	fld	fs0,1824(a5) # 1d720 <__wctomb+0x10>
   11070:	12857453          	fmul.d	fs0,fa0,fs0
   11074:	228417d3          	fneg.d	fa5,fs0
   11078:	e20787d3          	fmv.x.d	a5,fa5
   1107c:	c7dff06f          	j	10cf8 <_strtod_r+0x884>
   11080:	9e0706e3          	beqz	a4,10a6c <_strtod_r+0x5f8>
   11084:	40e007bb          	negw	a5,a4
   11088:	00f7f713          	andi	a4,a5,15
   1108c:	02070263          	beqz	a4,110b0 <_strtod_r+0xc3c>
   11090:	0001b637          	lui	a2,0x1b
   11094:	00371713          	slli	a4,a4,0x3
   11098:	1d860613          	addi	a2,a2,472 # 1b1d8 <__mprec_tens>
   1109c:	00c70733          	add	a4,a4,a2
   110a0:	f2090753          	fmv.d.x	fa4,s2
   110a4:	00073787          	fld	fa5,0(a4) # 7ca00000 <_gp+0x7c9e2120>
   110a8:	1af777d3          	fdiv.d	fa5,fa4,fa5
   110ac:	e2078953          	fmv.x.d	s2,fa5
   110b0:	4047d79b          	sraiw	a5,a5,0x4
   110b4:	9a078ce3          	beqz	a5,10a6c <_strtod_r+0x5f8>
   110b8:	01f00713          	li	a4,31
   110bc:	06f74263          	blt	a4,a5,11120 <_strtod_r+0xcac>
   110c0:	0107f713          	andi	a4,a5,16
   110c4:	54070a63          	beqz	a4,11618 <_strtod_r+0x11a4>
   110c8:	06a00c93          	li	s9,106
   110cc:	50f05663          	blez	a5,115d8 <_strtod_r+0x1164>
   110d0:	0001b737          	lui	a4,0x1b
   110d4:	00090593          	mv	a1,s2
   110d8:	f1870713          	addi	a4,a4,-232 # 1af18 <tinytens>
   110dc:	00000513          	li	a0,0
   110e0:	0017f613          	andi	a2,a5,1
   110e4:	00060c63          	beqz	a2,110fc <_strtod_r+0xc88>
   110e8:	f2058753          	fmv.d.x	fa4,a1
   110ec:	00073787          	fld	fa5,0(a4)
   110f0:	00100513          	li	a0,1
   110f4:	12f777d3          	fmul.d	fa5,fa4,fa5
   110f8:	e20785d3          	fmv.x.d	a1,fa5
   110fc:	4017d79b          	sraiw	a5,a5,0x1
   11100:	00870713          	addi	a4,a4,8
   11104:	fc079ee3          	bnez	a5,110e0 <_strtod_r+0xc6c>
   11108:	60051463          	bnez	a0,11710 <_strtod_r+0x129c>
   1110c:	4c0c9663          	bnez	s9,115d8 <_strtod_r+0x1164>
   11110:	f20007d3          	fmv.d.x	fa5,zero
   11114:	f2090753          	fmv.d.x	fa4,s2
   11118:	a2f727d3          	feq.d	a5,fa4,fa5
   1111c:	94078ae3          	beqz	a5,10a70 <_strtod_r+0x5fc>
   11120:	02200793          	li	a5,34
   11124:	00f42023          	sw	a5,0(s0)
   11128:	00000493          	li	s1,0
   1112c:	f60ff06f          	j	1088c <_strtod_r+0x418>
   11130:	a34517d3          	flt.d	a5,fa0,fs4
   11134:	f20790e3          	bnez	a5,11054 <_strtod_r+0xbe0>
   11138:	0001d7b7          	lui	a5,0x1d
   1113c:	7487b787          	fld	fa5,1864(a5) # 1d748 <__wctomb+0x38>
   11140:	a2a797d3          	flt.d	a5,fa5,fa0
   11144:	c4078ae3          	beqz	a5,10d98 <_strtod_r+0x924>
   11148:	f0dff06f          	j	11054 <_strtod_r+0xbe0>
   1114c:	00078493          	mv	s1,a5
   11150:	000a0913          	mv	s2,s4
   11154:	00000d93          	li	s11,0
   11158:	00000d13          	li	s10,0
   1115c:	00000c13          	li	s8,0
   11160:	c34ff06f          	j	10594 <_strtod_r+0x120>
   11164:	03500737          	lui	a4,0x3500
   11168:	00e7873b          	addw	a4,a5,a4
   1116c:	02091913          	slli	s2,s2,0x20
   11170:	02071793          	slli	a5,a4,0x20
   11174:	02095913          	srli	s2,s2,0x20
   11178:	00f96933          	or	s2,s2,a5
   1117c:	c0dff06f          	j	10d88 <_strtod_r+0x914>
   11180:	04013603          	ld	a2,64(sp)
   11184:	00060e63          	beqz	a2,111a0 <_strtod_r+0xd2c>
   11188:	03500593          	li	a1,53
   1118c:	04810513          	addi	a0,sp,72
   11190:	555060ef          	jal	17ee4 <__copybits>
   11194:	04013583          	ld	a1,64(sp)
   11198:	00040513          	mv	a0,s0
   1119c:	67d050ef          	jal	17018 <_Bfree>
   111a0:	00600793          	li	a5,6
   111a4:	0347e463          	bltu	a5,s4,111cc <_strtod_r+0xd58>
   111a8:	020a1793          	slli	a5,s4,0x20
   111ac:	0001b737          	lui	a4,0x1b
   111b0:	01e7d793          	srli	a5,a5,0x1e
   111b4:	ec870713          	addi	a4,a4,-312 # 1aec8 <sulp+0x14c>
   111b8:	00e787b3          	add	a5,a5,a4
   111bc:	0007a783          	lw	a5,0(a5)
   111c0:	00078067          	jr	a5
   111c4:	7ff00913          	li	s2,2047
   111c8:	03491913          	slli	s2,s2,0x34
   111cc:	008b7b13          	andi	s6,s6,8
   111d0:	f00b0e63          	beqz	s6,108ec <_strtod_r+0x478>
   111d4:	42095713          	srai	a4,s2,0x20
   111d8:	800007b7          	lui	a5,0x80000
   111dc:	00f767b3          	or	a5,a4,a5
   111e0:	02091493          	slli	s1,s2,0x20
   111e4:	02079793          	slli	a5,a5,0x20
   111e8:	0204d493          	srli	s1,s1,0x20
   111ec:	00f4e4b3          	or	s1,s1,a5
   111f0:	e9cff06f          	j	1088c <_strtod_r+0x418>
   111f4:	04c16783          	lwu	a5,76(sp)
   111f8:	04816903          	lwu	s2,72(sp)
   111fc:	02079793          	slli	a5,a5,0x20
   11200:	00f96933          	or	s2,s2,a5
   11204:	fc9ff06f          	j	111cc <_strtod_r+0xd58>
   11208:	03412783          	lw	a5,52(sp)
   1120c:	04c12683          	lw	a3,76(sp)
   11210:	fff00737          	lui	a4,0xfff00
   11214:	4337879b          	addiw	a5,a5,1075
   11218:	fff7071b          	addiw	a4,a4,-1
   1121c:	00e6f733          	and	a4,a3,a4
   11220:	0147979b          	slliw	a5,a5,0x14
   11224:	04816903          	lwu	s2,72(sp)
   11228:	00f767b3          	or	a5,a4,a5
   1122c:	02079793          	slli	a5,a5,0x20
   11230:	00f96933          	or	s2,s2,a5
   11234:	f99ff06f          	j	111cc <_strtod_r+0xd58>
   11238:	800007b7          	lui	a5,0x80000
   1123c:	fff7c793          	not	a5,a5
   11240:	fff00913          	li	s2,-1
   11244:	02079793          	slli	a5,a5,0x20
   11248:	02095913          	srli	s2,s2,0x20
   1124c:	0127e933          	or	s2,a5,s2
   11250:	f7dff06f          	j	111cc <_strtod_r+0xd58>
   11254:	00000913          	li	s2,0
   11258:	f75ff06f          	j	111cc <_strtod_r+0xd58>
   1125c:	00100793          	li	a5,1
   11260:	00e585bb          	addw	a1,a1,a4
   11264:	00d6063b          	addw	a2,a2,a3
   11268:	00800813          	li	a6,8
   1126c:	01000313          	li	t1,16
   11270:	48f70863          	beq	a4,a5,11700 <_strtod_r+0x128c>
   11274:	0016869b          	addiw	a3,a3,1
   11278:	fff6871b          	addiw	a4,a3,-1
   1127c:	06e86863          	bltu	a6,a4,112ec <_strtod_r+0xe78>
   11280:	001d189b          	slliw	a7,s10,0x1
   11284:	003d171b          	slliw	a4,s10,0x3
   11288:	00e88d3b          	addw	s10,a7,a4
   1128c:	fec694e3          	bne	a3,a2,11274 <_strtod_r+0xe00>
   11290:	03813803          	ld	a6,56(sp)
   11294:	0016869b          	addiw	a3,a3,1
   11298:	00800713          	li	a4,8
   1129c:	02c75c63          	ble	a2,a4,112d4 <_strtod_r+0xe60>
   112a0:	01000793          	li	a5,16
   112a4:	00000613          	li	a2,0
   112a8:	b4d7c8e3          	blt	a5,a3,10df8 <_strtod_r+0x984>
   112ac:	001d971b          	slliw	a4,s11,0x1
   112b0:	003d979b          	slliw	a5,s11,0x3
   112b4:	00f707bb          	addw	a5,a4,a5
   112b8:	00f50dbb          	addw	s11,a0,a5
   112bc:	b3dff06f          	j	10df8 <_strtod_r+0x984>
   112c0:	03813a03          	ld	s4,56(sp)
   112c4:	fd04849b          	addiw	s1,s1,-48
   112c8:	0016059b          	addiw	a1,a2,1
   112cc:	000a0813          	mv	a6,s4
   112d0:	00100693          	li	a3,1
   112d4:	001d161b          	slliw	a2,s10,0x1
   112d8:	003d171b          	slliw	a4,s10,0x3
   112dc:	00e6073b          	addw	a4,a2,a4
   112e0:	00e48d3b          	addw	s10,s1,a4
   112e4:	00000613          	li	a2,0
   112e8:	b11ff06f          	j	10df8 <_strtod_r+0x984>
   112ec:	fad340e3          	blt	t1,a3,1128c <_strtod_r+0xe18>
   112f0:	001d971b          	slliw	a4,s11,0x1
   112f4:	003d979b          	slliw	a5,s11,0x3
   112f8:	00f70dbb          	addw	s11,a4,a5
   112fc:	f91ff06f          	j	1128c <_strtod_r+0xe18>
   11300:	02500613          	li	a2,37
   11304:	40d6063b          	subw	a2,a2,a3
   11308:	e5764e63          	blt	a2,s7,10964 <_strtod_r+0x4f0>
   1130c:	40d787bb          	subw	a5,a5,a3
   11310:	00078713          	mv	a4,a5
   11314:	0001b6b7          	lui	a3,0x1b
   11318:	1d868693          	addi	a3,a3,472 # 1b1d8 <__mprec_tens>
   1131c:	00371713          	slli	a4,a4,0x3
   11320:	00d70733          	add	a4,a4,a3
   11324:	00073787          	fld	fa5,0(a4) # fffffffffff00000 <_gp+0xffffffffffee2120>
   11328:	f2090753          	fmv.d.x	fa4,s2
   1132c:	40fb87bb          	subw	a5,s7,a5
   11330:	00379793          	slli	a5,a5,0x3
   11334:	12e7f753          	fmul.d	fa4,fa5,fa4
   11338:	00d787b3          	add	a5,a5,a3
   1133c:	0007b787          	fld	fa5,0(a5) # ffffffff80000000 <_gp+0xffffffff7ffe2120>
   11340:	12f777d3          	fmul.d	fa5,fa4,fa5
   11344:	e20784d3          	fmv.x.d	s1,fa5
   11348:	d44ff06f          	j	1088c <_strtod_r+0x418>
   1134c:	0001d7b7          	lui	a5,0x1d
   11350:	7287b407          	fld	fs0,1832(a5) # 1d728 <__wctomb+0x18>
   11354:	9e1ff06f          	j	10d34 <_strtod_r+0x8c0>
   11358:	04900793          	li	a5,73
   1135c:	b8f49e63          	bne	s1,a5,106f8 <_strtod_r+0x284>
   11360:	03813683          	ld	a3,56(sp)
   11364:	0001b737          	lui	a4,0x1b
   11368:	48070713          	addi	a4,a4,1152 # 1b480 <zeroes.4137+0x18>
   1136c:	01900813          	li	a6,25
   11370:	00170713          	addi	a4,a4,1
   11374:	fff74583          	lbu	a1,-1(a4)
   11378:	d2058263          	beqz	a1,1089c <_strtod_r+0x428>
   1137c:	00168693          	addi	a3,a3,1
   11380:	0006c603          	lbu	a2,0(a3)
   11384:	fbf6079b          	addiw	a5,a2,-65
   11388:	0ff7f793          	andi	a5,a5,255
   1138c:	00060513          	mv	a0,a2
   11390:	00f86463          	bltu	a6,a5,11398 <_strtod_r+0xf24>
   11394:	0206051b          	addiw	a0,a2,32
   11398:	fcb50ce3          	beq	a0,a1,11370 <_strtod_r+0xefc>
   1139c:	b5cff06f          	j	106f8 <_strtod_r+0x284>
   113a0:	00012423          	sw	zero,8(sp)
   113a4:	f00ff06f          	j	10aa4 <_strtod_r+0x630>
   113a8:	fea00793          	li	a5,-22
   113ac:	dafbcc63          	blt	s7,a5,10964 <_strtod_r+0x4f0>
   113b0:	41700bbb          	negw	s7,s7
   113b4:	000b8793          	mv	a5,s7
   113b8:	0001b737          	lui	a4,0x1b
   113bc:	00379793          	slli	a5,a5,0x3
   113c0:	1d870713          	addi	a4,a4,472 # 1b1d8 <__mprec_tens>
   113c4:	00e787b3          	add	a5,a5,a4
   113c8:	0007b787          	fld	fa5,0(a5)
   113cc:	f2090753          	fmv.d.x	fa4,s2
   113d0:	1af777d3          	fdiv.d	fa5,fa4,fa5
   113d4:	e20784d3          	fmv.x.d	s1,fa5
   113d8:	cb4ff06f          	j	1088c <_strtod_r+0x418>
   113dc:	e20b07d3          	fmv.x.d	a5,fs6
   113e0:	235a8453          	fmv.d	fs0,fs5
   113e4:	915ff06f          	j	10cf8 <_strtod_r+0x884>
   113e8:	00160793          	addi	a5,a2,1
   113ec:	02f13c23          	sd	a5,56(sp)
   113f0:	00164703          	lbu	a4,1(a2)
   113f4:	02800793          	li	a5,40
   113f8:	18f70063          	beq	a4,a5,11578 <_strtod_r+0x1104>
   113fc:	fff00913          	li	s2,-1
   11400:	03391913          	slli	s2,s2,0x33
   11404:	00090493          	mv	s1,s2
   11408:	c84ff06f          	j	1088c <_strtod_r+0x418>
   1140c:	00000613          	li	a2,0
   11410:	d38ff06f          	j	10948 <_strtod_r+0x4d4>
   11414:	120b8863          	beqz	s7,11544 <_strtod_r+0x10d0>
   11418:	42095693          	srai	a3,s2,0x20
   1141c:	fff6c793          	not	a5,a3
   11420:	02c79713          	slli	a4,a5,0x2c
   11424:	26070063          	beqz	a4,11684 <_strtod_r+0x1210>
   11428:	01812703          	lw	a4,24(sp)
   1142c:	12070463          	beqz	a4,11554 <_strtod_r+0x10e0>
   11430:	42095793          	srai	a5,s2,0x20
   11434:	00e7f7b3          	and	a5,a5,a4
   11438:	02078063          	beqz	a5,11458 <_strtod_r+0xfe4>
   1143c:	000c8593          	mv	a1,s9
   11440:	00090513          	mv	a0,s2
   11444:	160b8863          	beqz	s7,115b4 <_strtod_r+0x1140>
   11448:	135090ef          	jal	1ad7c <sulp>
   1144c:	f20487d3          	fmv.d.x	fa5,s1
   11450:	02a7f7d3          	fadd.d	fa5,fa5,fa0
   11454:	e20784d3          	fmv.x.d	s1,fa5
   11458:	0c0c8e63          	beqz	s9,11534 <_strtod_r+0x10c0>
   1145c:	39500793          	li	a5,917
   11460:	03479793          	slli	a5,a5,0x34
   11464:	f20487d3          	fmv.d.x	fa5,s1
   11468:	f2078753          	fmv.d.x	fa4,a5
   1146c:	04013503          	ld	a0,64(sp)
   11470:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   11474:	e20784d3          	fmv.x.d	s1,fa5
   11478:	a20494e3          	bnez	s1,10ea0 <_strtod_r+0xa2c>
   1147c:	02200793          	li	a5,34
   11480:	00f42023          	sw	a5,0(s0)
   11484:	a1dff06f          	j	10ea0 <_strtod_r+0xa2c>
   11488:	fc0b98e3          	bnez	s7,11458 <_strtod_r+0xfe4>
   1148c:	00c91793          	slli	a5,s2,0xc
   11490:	fc0794e3          	bnez	a5,11458 <_strtod_r+0xfe4>
   11494:	02095913          	srli	s2,s2,0x20
   11498:	0009071b          	sext.w	a4,s2
   1149c:	7ff007b7          	lui	a5,0x7ff00
   114a0:	00f777b3          	and	a5,a4,a5
   114a4:	06b00737          	lui	a4,0x6b00
   114a8:	faf778e3          	bleu	a5,a4,11458 <_strtod_r+0xfe4>
   114ac:	018c2783          	lw	a5,24(s8)
   114b0:	00079863          	bnez	a5,114c0 <_strtod_r+0x104c>
   114b4:	014c2703          	lw	a4,20(s8)
   114b8:	00100793          	li	a5,1
   114bc:	f8e7dee3          	ble	a4,a5,11458 <_strtod_r+0xfe4>
   114c0:	000c0593          	mv	a1,s8
   114c4:	00100613          	li	a2,1
   114c8:	00040513          	mv	a0,s0
   114cc:	238060ef          	jal	17704 <__lshift>
   114d0:	000a0593          	mv	a1,s4
   114d4:	00050c13          	mv	s8,a0
   114d8:	38c060ef          	jal	17864 <__mcmp>
   114dc:	f6a05ee3          	blez	a0,11458 <_strtod_r+0xfe4>
   114e0:	140c8263          	beqz	s9,11624 <_strtod_r+0x11b0>
   114e4:	0009071b          	sext.w	a4,s2
   114e8:	7ff007b7          	lui	a5,0x7ff00
   114ec:	00f777b3          	and	a5,a4,a5
   114f0:	06b00737          	lui	a4,0x6b00
   114f4:	12f74863          	blt	a4,a5,11624 <_strtod_r+0x11b0>
   114f8:	03700737          	lui	a4,0x3700
   114fc:	f6f740e3          	blt	a4,a5,1145c <_strtod_r+0xfe8>
   11500:	02200793          	li	a5,34
   11504:	00f42023          	sw	a5,0(s0)
   11508:	04013503          	ld	a0,64(sp)
   1150c:	00000493          	li	s1,0
   11510:	991ff06f          	j	10ea0 <_strtod_r+0xa2c>
   11514:	035007b7          	lui	a5,0x3500
   11518:	00f607bb          	addw	a5,a2,a5
   1151c:	02091913          	slli	s2,s2,0x20
   11520:	02079793          	slli	a5,a5,0x20
   11524:	02095913          	srli	s2,s2,0x20
   11528:	00f96933          	or	s2,s2,a5
   1152c:	00000c93          	li	s9,0
   11530:	d40ff06f          	j	10a70 <_strtod_r+0x5fc>
   11534:	04013503          	ld	a0,64(sp)
   11538:	969ff06f          	j	10ea0 <_strtod_r+0xa2c>
   1153c:	02c13c23          	sd	a2,56(sp)
   11540:	ba4ff06f          	j	108e4 <_strtod_r+0x470>
   11544:	00c91793          	slli	a5,s2,0xc
   11548:	ee0790e3          	bnez	a5,11428 <_strtod_r+0xfb4>
   1154c:	02095913          	srli	s2,s2,0x20
   11550:	f91ff06f          	j	114e0 <_strtod_r+0x106c>
   11554:	01012703          	lw	a4,16(sp)
   11558:	0009079b          	sext.w	a5,s2
   1155c:	00e7f7b3          	and	a5,a5,a4
   11560:	ee078ce3          	beqz	a5,11458 <_strtod_r+0xfe4>
   11564:	ed9ff06f          	j	1143c <_strtod_r+0xfc8>
   11568:	0001b337          	lui	t1,0x1b
   1156c:	00000613          	li	a2,0
   11570:	2c830313          	addi	t1,t1,712 # 1b2c8 <__mprec_bigtens>
   11574:	c88ff06f          	j	109fc <_strtod_r+0x588>
   11578:	0001b5b7          	lui	a1,0x1b
   1157c:	04810613          	addi	a2,sp,72
   11580:	f0058593          	addi	a1,a1,-256 # 1af00 <fpinan.2653>
   11584:	03810513          	addi	a0,sp,56
   11588:	2b5040ef          	jal	1603c <__hexnan>
   1158c:	00500793          	li	a5,5
   11590:	e6f516e3          	bne	a0,a5,113fc <_strtod_r+0xf88>
   11594:	04c12703          	lw	a4,76(sp)
   11598:	04816903          	lwu	s2,72(sp)
   1159c:	7ff007b7          	lui	a5,0x7ff00
   115a0:	00f767b3          	or	a5,a4,a5
   115a4:	02079793          	slli	a5,a5,0x20
   115a8:	0127e933          	or	s2,a5,s2
   115ac:	00090493          	mv	s1,s2
   115b0:	adcff06f          	j	1088c <_strtod_r+0x418>
   115b4:	7c8090ef          	jal	1ad7c <sulp>
   115b8:	f20487d3          	fmv.d.x	fa5,s1
   115bc:	0aa7f7d3          	fsub.d	fa5,fa5,fa0
   115c0:	e20784d3          	fmv.x.d	s1,fa5
   115c4:	f20007d3          	fmv.d.x	fa5,zero
   115c8:	f2048753          	fmv.d.x	fa4,s1
   115cc:	a2f727d3          	feq.d	a5,fa4,fa5
   115d0:	f20798e3          	bnez	a5,11500 <_strtod_r+0x108c>
   115d4:	e85ff06f          	j	11458 <_strtod_r+0xfe4>
   115d8:	42095613          	srai	a2,s2,0x20
   115dc:	02161793          	slli	a5,a2,0x21
   115e0:	0357d713          	srli	a4,a5,0x35
   115e4:	06b00793          	li	a5,107
   115e8:	40e787bb          	subw	a5,a5,a4
   115ec:	b2f052e3          	blez	a5,11110 <_strtod_r+0xc9c>
   115f0:	01f00713          	li	a4,31
   115f4:	06f75263          	ble	a5,a4,11658 <_strtod_r+0x11e4>
   115f8:	fff00713          	li	a4,-1
   115fc:	02071593          	slli	a1,a4,0x20
   11600:	00b97933          	and	s2,s2,a1
   11604:	03400593          	li	a1,52
   11608:	0cf5da63          	ble	a5,a1,116dc <_strtod_r+0x1268>
   1160c:	03700913          	li	s2,55
   11610:	03491913          	slli	s2,s2,0x34
   11614:	afdff06f          	j	11110 <_strtod_r+0xc9c>
   11618:	00000c93          	li	s9,0
   1161c:	aaf04ae3          	bgtz	a5,110d0 <_strtod_r+0xc5c>
   11620:	af1ff06f          	j	11110 <_strtod_r+0xc9c>
   11624:	7ff00737          	lui	a4,0x7ff00
   11628:	0009091b          	sext.w	s2,s2
   1162c:	fff007b7          	lui	a5,0xfff00
   11630:	00e97933          	and	s2,s2,a4
   11634:	00f9073b          	addw	a4,s2,a5
   11638:	001007b7          	lui	a5,0x100
   1163c:	fff7879b          	addiw	a5,a5,-1
   11640:	00f767b3          	or	a5,a4,a5
   11644:	fff00493          	li	s1,-1
   11648:	02079793          	slli	a5,a5,0x20
   1164c:	0204d493          	srli	s1,s1,0x20
   11650:	00f4e4b3          	or	s1,s1,a5
   11654:	e05ff06f          	j	11458 <_strtod_r+0xfe4>
   11658:	fff00713          	li	a4,-1
   1165c:	0009061b          	sext.w	a2,s2
   11660:	00f717bb          	sllw	a5,a4,a5
   11664:	00f677b3          	and	a5,a2,a5
   11668:	fff00713          	li	a4,-1
   1166c:	02079793          	slli	a5,a5,0x20
   11670:	02071713          	slli	a4,a4,0x20
   11674:	0207d793          	srli	a5,a5,0x20
   11678:	00e97933          	and	s2,s2,a4
   1167c:	00f96933          	or	s2,s2,a5
   11680:	a91ff06f          	j	11110 <_strtod_r+0xc9c>
   11684:	0009059b          	sext.w	a1,s2
   11688:	fff00713          	li	a4,-1
   1168c:	020c8263          	beqz	s9,116b0 <_strtod_r+0x123c>
   11690:	7ff007b7          	lui	a5,0x7ff00
   11694:	00f6f7b3          	and	a5,a3,a5
   11698:	06a00637          	lui	a2,0x6a00
   1169c:	00f66a63          	bltu	a2,a5,116b0 <_strtod_r+0x123c>
   116a0:	0147d79b          	srliw	a5,a5,0x14
   116a4:	06b00613          	li	a2,107
   116a8:	40f607bb          	subw	a5,a2,a5
   116ac:	00f7173b          	sllw	a4,a4,a5
   116b0:	d6b71ce3          	bne	a4,a1,11428 <_strtod_r+0xfb4>
   116b4:	7ff00713          	li	a4,2047
   116b8:	03471713          	slli	a4,a4,0x34
   116bc:	fff70713          	addi	a4,a4,-1 # 7fefffff <_gp+0x7fee211f>
   116c0:	fce90663          	beq	s2,a4,10e8c <_strtod_r+0xa18>
   116c4:	7ff007b7          	lui	a5,0x7ff00
   116c8:	00f6f7b3          	and	a5,a3,a5
   116cc:	001004b7          	lui	s1,0x100
   116d0:	009784bb          	addw	s1,a5,s1
   116d4:	02049493          	slli	s1,s1,0x20
   116d8:	d81ff06f          	j	11458 <_strtod_r+0xfe4>
   116dc:	00f717bb          	sllw	a5,a4,a5
   116e0:	00c7f7b3          	and	a5,a5,a2
   116e4:	02075713          	srli	a4,a4,0x20
   116e8:	02079793          	slli	a5,a5,0x20
   116ec:	00e97933          	and	s2,s2,a4
   116f0:	00f96933          	or	s2,s2,a5
   116f4:	a1dff06f          	j	11110 <_strtod_r+0xc9c>
   116f8:	00080913          	mv	s2,a6
   116fc:	b00ff06f          	j	109fc <_strtod_r+0x588>
   11700:	00068613          	mv	a2,a3
   11704:	03813803          	ld	a6,56(sp)
   11708:	00f686bb          	addw	a3,a3,a5
   1170c:	b8dff06f          	j	11298 <_strtod_r+0xe24>
   11710:	00058913          	mv	s2,a1
   11714:	9f9ff06f          	j	1110c <_strtod_r+0xc98>

0000000000011718 <strtod>:
   11718:	00058613          	mv	a2,a1
   1171c:	00050593          	mv	a1,a0
   11720:	8101b503          	ld	a0,-2032(gp) # 1d6f0 <_impure_ptr>
   11724:	d51fe06f          	j	10474 <_strtod_r>

0000000000011728 <strtof>:
   11728:	00058613          	mv	a2,a1
   1172c:	00050593          	mv	a1,a0
   11730:	8101b503          	ld	a0,-2032(gp) # 1d6f0 <_impure_ptr>
   11734:	fe010113          	addi	sp,sp,-32
   11738:	00813427          	fsd	fs0,8(sp)
   1173c:	00113c23          	sd	ra,24(sp)
   11740:	d35fe0ef          	jal	10474 <_strtod_r>
   11744:	22a50453          	fmv.d	fs0,fa0
   11748:	095060ef          	jal	17fdc <__fpclassifyd>
   1174c:	00050c63          	beqz	a0,11764 <strtof+0x3c>
   11750:	01813083          	ld	ra,24(sp)
   11754:	40147553          	fcvt.s.d	fa0,fs0
   11758:	00813407          	fld	fs0,8(sp)
   1175c:	02010113          	addi	sp,sp,32
   11760:	00008067          	ret
   11764:	01813083          	ld	ra,24(sp)
   11768:	00813407          	fld	fs0,8(sp)
   1176c:	00000513          	li	a0,0
   11770:	02010113          	addi	sp,sp,32
   11774:	05d0606f          	j	17fd0 <nanf>

0000000000011778 <_vfprintf_r>:
   11778:	e1010113          	addi	sp,sp,-496
   1177c:	1e113423          	sd	ra,488(sp)
   11780:	1d313423          	sd	s3,456(sp)
   11784:	1d413023          	sd	s4,448(sp)
   11788:	1b713423          	sd	s7,424(sp)
   1178c:	00058a13          	mv	s4,a1
   11790:	00060993          	mv	s3,a2
   11794:	02d13423          	sd	a3,40(sp)
   11798:	1e813023          	sd	s0,480(sp)
   1179c:	1c913c23          	sd	s1,472(sp)
   117a0:	1d213823          	sd	s2,464(sp)
   117a4:	1b513c23          	sd	s5,440(sp)
   117a8:	1b613823          	sd	s6,432(sp)
   117ac:	1b813023          	sd	s8,416(sp)
   117b0:	19913c23          	sd	s9,408(sp)
   117b4:	19a13823          	sd	s10,400(sp)
   117b8:	19b13423          	sd	s11,392(sp)
   117bc:	16813c27          	fsd	fs0,376(sp)
   117c0:	00050b93          	mv	s7,a0
   117c4:	379040ef          	jal	1633c <_localeconv_r>
   117c8:	00053783          	ld	a5,0(a0)
   117cc:	00078513          	mv	a0,a5
   117d0:	06f13023          	sd	a5,96(sp)
   117d4:	2fd060ef          	jal	182d0 <strlen>
   117d8:	06a13423          	sd	a0,104(sp)
   117dc:	000b8663          	beqz	s7,117e8 <_vfprintf_r+0x70>
   117e0:	050ba783          	lw	a5,80(s7)
   117e4:	2e078c63          	beqz	a5,11adc <_vfprintf_r+0x364>
   117e8:	010a1683          	lh	a3,16(s4)
   117ec:	03069793          	slli	a5,a3,0x30
   117f0:	0307d793          	srli	a5,a5,0x30
   117f4:	03279713          	slli	a4,a5,0x32
   117f8:	02074a63          	bltz	a4,1182c <_vfprintf_r+0xb4>
   117fc:	000027b7          	lui	a5,0x2
   11800:	0aca2603          	lw	a2,172(s4)
   11804:	00f6e7b3          	or	a5,a3,a5
   11808:	0107979b          	slliw	a5,a5,0x10
   1180c:	ffffe737          	lui	a4,0xffffe
   11810:	4107d79b          	sraiw	a5,a5,0x10
   11814:	fff7071b          	addiw	a4,a4,-1
   11818:	00e67733          	and	a4,a2,a4
   1181c:	00fa1823          	sh	a5,16(s4)
   11820:	03079793          	slli	a5,a5,0x30
   11824:	0aea2623          	sw	a4,172(s4)
   11828:	0307d793          	srli	a5,a5,0x30
   1182c:	0087f713          	andi	a4,a5,8
   11830:	1e070063          	beqz	a4,11a10 <_vfprintf_r+0x298>
   11834:	018a3703          	ld	a4,24(s4)
   11838:	1c070c63          	beqz	a4,11a10 <_vfprintf_r+0x298>
   1183c:	01a7f793          	andi	a5,a5,26
   11840:	00a00713          	li	a4,10
   11844:	1ee78863          	beq	a5,a4,11a34 <_vfprintf_r+0x2bc>
   11848:	0001b7b7          	lui	a5,0x1b
   1184c:	f4078793          	addi	a5,a5,-192 # 1af40 <tinytens+0x28>
   11850:	0f010b13          	addi	s6,sp,240
   11854:	02f13823          	sd	a5,48(sp)
   11858:	0ef10793          	addi	a5,sp,239
   1185c:	0001bab7          	lui	s5,0x1b
   11860:	0001b4b7          	lui	s1,0x1b
   11864:	40fb07b3          	sub	a5,s6,a5
   11868:	04013c23          	sd	zero,88(sp)
   1186c:	0b613823          	sd	s6,176(sp)
   11870:	0c013023          	sd	zero,192(sp)
   11874:	0a012c23          	sw	zero,184(sp)
   11878:	06012823          	sw	zero,112(sp)
   1187c:	000b0893          	mv	a7,s6
   11880:	02013c23          	sd	zero,56(sp)
   11884:	06012a23          	sw	zero,116(sp)
   11888:	00012e23          	sw	zero,28(sp)
   1188c:	0a8a8a93          	addi	s5,s5,168 # 1b0a8 <blanks.4193>
   11890:	0b848493          	addi	s1,s1,184 # 1b0b8 <zeroes.4194>
   11894:	06f13c23          	sd	a5,120(sp)
   11898:	0009c783          	lbu	a5,0(s3)
   1189c:	0e0782e3          	beqz	a5,12180 <_vfprintf_r+0xa08>
   118a0:	02500713          	li	a4,37
   118a4:	00098413          	mv	s0,s3
   118a8:	00e79663          	bne	a5,a4,118b4 <_vfprintf_r+0x13c>
   118ac:	0580006f          	j	11904 <_vfprintf_r+0x18c>
   118b0:	00e78863          	beq	a5,a4,118c0 <_vfprintf_r+0x148>
   118b4:	00140413          	addi	s0,s0,1
   118b8:	00044783          	lbu	a5,0(s0)
   118bc:	fe079ae3          	bnez	a5,118b0 <_vfprintf_r+0x138>
   118c0:	4134093b          	subw	s2,s0,s3
   118c4:	04090063          	beqz	s2,11904 <_vfprintf_r+0x18c>
   118c8:	0c013703          	ld	a4,192(sp)
   118cc:	0b812783          	lw	a5,184(sp)
   118d0:	00090693          	mv	a3,s2
   118d4:	00d70733          	add	a4,a4,a3
   118d8:	0017879b          	addiw	a5,a5,1
   118dc:	0138b023          	sd	s3,0(a7)
   118e0:	00d8b423          	sd	a3,8(a7)
   118e4:	0ce13023          	sd	a4,192(sp)
   118e8:	0af12c23          	sw	a5,184(sp)
   118ec:	00700713          	li	a4,7
   118f0:	01088893          	addi	a7,a7,16
   118f4:	16f74063          	blt	a4,a5,11a54 <_vfprintf_r+0x2dc>
   118f8:	01c12783          	lw	a5,28(sp)
   118fc:	012787bb          	addw	a5,a5,s2
   11900:	00f12e23          	sw	a5,28(sp)
   11904:	00044783          	lbu	a5,0(s0)
   11908:	16078463          	beqz	a5,11a70 <_vfprintf_r+0x2f8>
   1190c:	00140993          	addi	s3,s0,1
   11910:	080107a3          	sb	zero,143(sp)
   11914:	00000613          	li	a2,0
   11918:	00000593          	li	a1,0
   1191c:	fff00413          	li	s0,-1
   11920:	00012c23          	sw	zero,24(sp)
   11924:	00000c13          	li	s8,0
   11928:	05800713          	li	a4,88
   1192c:	00900693          	li	a3,9
   11930:	02a00513          	li	a0,42
   11934:	0009cd03          	lbu	s10,0(s3)
   11938:	00198993          	addi	s3,s3,1
   1193c:	fe0d079b          	addiw	a5,s10,-32
   11940:	1cf762e3          	bltu	a4,a5,12304 <_vfprintf_r+0xb8c>
   11944:	03013803          	ld	a6,48(sp)
   11948:	02079793          	slli	a5,a5,0x20
   1194c:	01e7d793          	srli	a5,a5,0x1e
   11950:	010787b3          	add	a5,a5,a6
   11954:	0007a783          	lw	a5,0(a5)
   11958:	00078067          	jr	a5
   1195c:	010c6c13          	ori	s8,s8,16
   11960:	fd5ff06f          	j	11934 <_vfprintf_r+0x1bc>
   11964:	02813783          	ld	a5,40(sp)
   11968:	0007a803          	lw	a6,0(a5)
   1196c:	00878793          	addi	a5,a5,8
   11970:	02f13423          	sd	a5,40(sp)
   11974:	01012c23          	sw	a6,24(sp)
   11978:	fa085ee3          	bgez	a6,11934 <_vfprintf_r+0x1bc>
   1197c:	410007bb          	negw	a5,a6
   11980:	00f12c23          	sw	a5,24(sp)
   11984:	004c6c13          	ori	s8,s8,4
   11988:	fadff06f          	j	11934 <_vfprintf_r+0x1bc>
   1198c:	03000793          	li	a5,48
   11990:	08f10823          	sb	a5,144(sp)
   11994:	07800793          	li	a5,120
   11998:	08f108a3          	sb	a5,145(sp)
   1199c:	02813783          	ld	a5,40(sp)
   119a0:	080107a3          	sb	zero,143(sp)
   119a4:	002c6693          	ori	a3,s8,2
   119a8:	00878713          	addi	a4,a5,8
   119ac:	0007b783          	ld	a5,0(a5)
   119b0:	180444e3          	bltz	s0,12338 <_vfprintf_r+0xbc0>
   119b4:	f7fc7c13          	andi	s8,s8,-129
   119b8:	02e13423          	sd	a4,40(sp)
   119bc:	002c6c13          	ori	s8,s8,2
   119c0:	120796e3          	bnez	a5,122ec <_vfprintf_r+0xb74>
   119c4:	0001b7b7          	lui	a5,0x1b
   119c8:	4d078793          	addi	a5,a5,1232 # 1b4d0 <zeroes.4137+0x68>
   119cc:	02f13c23          	sd	a5,56(sp)
   119d0:	07800d13          	li	s10,120
   119d4:	00000613          	li	a2,0
   119d8:	7e040463          	beqz	s0,121c0 <_vfprintf_r+0xa48>
   119dc:	00000793          	li	a5,0
   119e0:	000b0913          	mv	s2,s6
   119e4:	03813683          	ld	a3,56(sp)
   119e8:	00f7f713          	andi	a4,a5,15
   119ec:	fff90913          	addi	s2,s2,-1
   119f0:	00e68733          	add	a4,a3,a4
   119f4:	00074703          	lbu	a4,0(a4) # ffffffffffffe000 <_gp+0xfffffffffffe0120>
   119f8:	0047d793          	srli	a5,a5,0x4
   119fc:	00e90023          	sb	a4,0(s2)
   11a00:	fe0792e3          	bnez	a5,119e4 <_vfprintf_r+0x26c>
   11a04:	412b07b3          	sub	a5,s6,s2
   11a08:	02f12023          	sw	a5,32(sp)
   11a0c:	1680006f          	j	11b74 <_vfprintf_r+0x3fc>
   11a10:	000a0593          	mv	a1,s4
   11a14:	000b8513          	mv	a0,s7
   11a18:	2bd010ef          	jal	134d4 <__swsetup_r>
   11a1c:	00050463          	beqz	a0,11a24 <_vfprintf_r+0x2ac>
   11a20:	3940106f          	j	12db4 <_vfprintf_r+0x163c>
   11a24:	010a5783          	lhu	a5,16(s4)
   11a28:	00a00713          	li	a4,10
   11a2c:	01a7f793          	andi	a5,a5,26
   11a30:	e0e79ce3          	bne	a5,a4,11848 <_vfprintf_r+0xd0>
   11a34:	012a1783          	lh	a5,18(s4)
   11a38:	e007c8e3          	bltz	a5,11848 <_vfprintf_r+0xd0>
   11a3c:	02813683          	ld	a3,40(sp)
   11a40:	00098613          	mv	a2,s3
   11a44:	000a0593          	mv	a1,s4
   11a48:	000b8513          	mv	a0,s7
   11a4c:	1c9010ef          	jal	13414 <__sbprintf>
   11a50:	04c0006f          	j	11a9c <_vfprintf_r+0x324>
   11a54:	0b010613          	addi	a2,sp,176
   11a58:	000a0593          	mv	a1,s4
   11a5c:	000b8513          	mv	a0,s7
   11a60:	305060ef          	jal	18564 <__sprint_r>
   11a64:	02051263          	bnez	a0,11a88 <_vfprintf_r+0x310>
   11a68:	000b0893          	mv	a7,s6
   11a6c:	e8dff06f          	j	118f8 <_vfprintf_r+0x180>
   11a70:	0c013783          	ld	a5,192(sp)
   11a74:	00078a63          	beqz	a5,11a88 <_vfprintf_r+0x310>
   11a78:	0b010613          	addi	a2,sp,176
   11a7c:	000a0593          	mv	a1,s4
   11a80:	000b8513          	mv	a0,s7
   11a84:	2e1060ef          	jal	18564 <__sprint_r>
   11a88:	010a5783          	lhu	a5,16(s4)
   11a8c:	0407f793          	andi	a5,a5,64
   11a90:	00078463          	beqz	a5,11a98 <_vfprintf_r+0x320>
   11a94:	3200106f          	j	12db4 <_vfprintf_r+0x163c>
   11a98:	01c12503          	lw	a0,28(sp)
   11a9c:	1e813083          	ld	ra,488(sp)
   11aa0:	1e013403          	ld	s0,480(sp)
   11aa4:	1d813483          	ld	s1,472(sp)
   11aa8:	1d013903          	ld	s2,464(sp)
   11aac:	1c813983          	ld	s3,456(sp)
   11ab0:	1c013a03          	ld	s4,448(sp)
   11ab4:	1b813a83          	ld	s5,440(sp)
   11ab8:	1b013b03          	ld	s6,432(sp)
   11abc:	1a813b83          	ld	s7,424(sp)
   11ac0:	1a013c03          	ld	s8,416(sp)
   11ac4:	19813c83          	ld	s9,408(sp)
   11ac8:	19013d03          	ld	s10,400(sp)
   11acc:	18813d83          	ld	s11,392(sp)
   11ad0:	17813407          	fld	fs0,376(sp)
   11ad4:	1f010113          	addi	sp,sp,496
   11ad8:	00008067          	ret
   11adc:	000b8513          	mv	a0,s7
   11ae0:	700030ef          	jal	151e0 <__sinit>
   11ae4:	d05ff06f          	j	117e8 <_vfprintf_r+0x70>
   11ae8:	00100613          	li	a2,1
   11aec:	02b00593          	li	a1,43
   11af0:	e45ff06f          	j	11934 <_vfprintf_r+0x1bc>
   11af4:	00060463          	beqz	a2,11afc <_vfprintf_r+0x384>
   11af8:	0d90106f          	j	133d0 <_vfprintf_r+0x1c58>
   11afc:	010c7793          	andi	a5,s8,16
   11b00:	22078263          	beqz	a5,11d24 <_vfprintf_r+0x5ac>
   11b04:	02813783          	ld	a5,40(sp)
   11b08:	080107a3          	sb	zero,143(sp)
   11b0c:	00878713          	addi	a4,a5,8
   11b10:	0007b783          	ld	a5,0(a5)
   11b14:	22044663          	bltz	s0,11d40 <_vfprintf_r+0x5c8>
   11b18:	02e13423          	sd	a4,40(sp)
   11b1c:	f7fc7c13          	andi	s8,s8,-129
   11b20:	22079663          	bnez	a5,11d4c <_vfprintf_r+0x5d4>
   11b24:	00000613          	li	a2,0
   11b28:	00000793          	li	a5,0
   11b2c:	00041463          	bnez	s0,11b34 <_vfprintf_r+0x3bc>
   11b30:	3680106f          	j	12e98 <_vfprintf_r+0x1720>
   11b34:	000b0913          	mv	s2,s6
   11b38:	0077f713          	andi	a4,a5,7
   11b3c:	fff90913          	addi	s2,s2,-1
   11b40:	0307071b          	addiw	a4,a4,48
   11b44:	00e90023          	sb	a4,0(s2)
   11b48:	0037d793          	srli	a5,a5,0x3
   11b4c:	fe0796e3          	bnez	a5,11b38 <_vfprintf_r+0x3c0>
   11b50:	001c7793          	andi	a5,s8,1
   11b54:	ea0788e3          	beqz	a5,11a04 <_vfprintf_r+0x28c>
   11b58:	03000793          	li	a5,48
   11b5c:	eaf704e3          	beq	a4,a5,11a04 <_vfprintf_r+0x28c>
   11b60:	fff90713          	addi	a4,s2,-1
   11b64:	40eb06b3          	sub	a3,s6,a4
   11b68:	fef90fa3          	sb	a5,-1(s2)
   11b6c:	02d12023          	sw	a3,32(sp)
   11b70:	00070913          	mv	s2,a4
   11b74:	02012783          	lw	a5,32(sp)
   11b78:	00078d93          	mv	s11,a5
   11b7c:	0087d463          	ble	s0,a5,11b84 <_vfprintf_r+0x40c>
   11b80:	00040d93          	mv	s11,s0
   11b84:	01b12423          	sw	s11,8(sp)
   11b88:	04012623          	sw	zero,76(sp)
   11b8c:	2a060263          	beqz	a2,11e30 <_vfprintf_r+0x6b8>
   11b90:	00812783          	lw	a5,8(sp)
   11b94:	0017879b          	addiw	a5,a5,1
   11b98:	00f12423          	sw	a5,8(sp)
   11b9c:	2940006f          	j	11e30 <_vfprintf_r+0x6b8>
   11ba0:	0009cd03          	lbu	s10,0(s3)
   11ba4:	00198993          	addi	s3,s3,1
   11ba8:	00ad1463          	bne	s10,a0,11bb0 <_vfprintf_r+0x438>
   11bac:	75c0106f          	j	13308 <_vfprintf_r+0x1b90>
   11bb0:	fd0d079b          	addiw	a5,s10,-48
   11bb4:	00000413          	li	s0,0
   11bb8:	d8f6e2e3          	bltu	a3,a5,1193c <_vfprintf_r+0x1c4>
   11bbc:	00198993          	addi	s3,s3,1
   11bc0:	fff9cd03          	lbu	s10,-1(s3)
   11bc4:	0014181b          	slliw	a6,s0,0x1
   11bc8:	0034141b          	slliw	s0,s0,0x3
   11bcc:	0088043b          	addw	s0,a6,s0
   11bd0:	00f4043b          	addw	s0,s0,a5
   11bd4:	fd0d079b          	addiw	a5,s10,-48
   11bd8:	fef6f2e3          	bleu	a5,a3,11bbc <_vfprintf_r+0x444>
   11bdc:	d60450e3          	bgez	s0,1193c <_vfprintf_r+0x1c4>
   11be0:	fff00413          	li	s0,-1
   11be4:	d59ff06f          	j	1193c <_vfprintf_r+0x1c4>
   11be8:	080c6c13          	ori	s8,s8,128
   11bec:	d49ff06f          	j	11934 <_vfprintf_r+0x1bc>
   11bf0:	d40592e3          	bnez	a1,11934 <_vfprintf_r+0x1bc>
   11bf4:	00100613          	li	a2,1
   11bf8:	02000593          	li	a1,32
   11bfc:	d39ff06f          	j	11934 <_vfprintf_r+0x1bc>
   11c00:	001c6c13          	ori	s8,s8,1
   11c04:	d31ff06f          	j	11934 <_vfprintf_r+0x1bc>
   11c08:	02813783          	ld	a5,40(sp)
   11c0c:	080107a3          	sb	zero,143(sp)
   11c10:	0007b903          	ld	s2,0(a5)
   11c14:	00878c93          	addi	s9,a5,8
   11c18:	00091463          	bnez	s2,11c20 <_vfprintf_r+0x4a8>
   11c1c:	39c0106f          	j	12fb8 <_vfprintf_r+0x1840>
   11c20:	01113023          	sd	a7,0(sp)
   11c24:	00045463          	bgez	s0,11c2c <_vfprintf_r+0x4b4>
   11c28:	3240106f          	j	12f4c <_vfprintf_r+0x17d4>
   11c2c:	00040613          	mv	a2,s0
   11c30:	00000593          	li	a1,0
   11c34:	00090513          	mv	a0,s2
   11c38:	048050ef          	jal	16c80 <memchr>
   11c3c:	00013883          	ld	a7,0(sp)
   11c40:	00051463          	bnez	a0,11c48 <_vfprintf_r+0x4d0>
   11c44:	4c00106f          	j	13104 <_vfprintf_r+0x198c>
   11c48:	412507bb          	subw	a5,a0,s2
   11c4c:	02f12023          	sw	a5,32(sp)
   11c50:	00078d93          	mv	s11,a5
   11c54:	0007d463          	bgez	a5,11c5c <_vfprintf_r+0x4e4>
   11c58:	3140106f          	j	12f6c <_vfprintf_r+0x17f4>
   11c5c:	08f14603          	lbu	a2,143(sp)
   11c60:	01b12423          	sw	s11,8(sp)
   11c64:	03913423          	sd	s9,40(sp)
   11c68:	00000413          	li	s0,0
   11c6c:	04012623          	sw	zero,76(sp)
   11c70:	f1dff06f          	j	11b8c <_vfprintf_r+0x414>
   11c74:	00060463          	beqz	a2,11c7c <_vfprintf_r+0x504>
   11c78:	7800106f          	j	133f8 <_vfprintf_r+0x1c80>
   11c7c:	010c7793          	andi	a5,s8,16
   11c80:	0e078463          	beqz	a5,11d68 <_vfprintf_r+0x5f0>
   11c84:	02813783          	ld	a5,40(sp)
   11c88:	080107a3          	sb	zero,143(sp)
   11c8c:	00878713          	addi	a4,a5,8
   11c90:	0007b783          	ld	a5,0(a5)
   11c94:	0e044863          	bltz	s0,11d84 <_vfprintf_r+0x60c>
   11c98:	02e13423          	sd	a4,40(sp)
   11c9c:	f7fc7c13          	andi	s8,s8,-129
   11ca0:	00000613          	li	a2,0
   11ca4:	50078c63          	beqz	a5,121bc <_vfprintf_r+0xa44>
   11ca8:	00900713          	li	a4,9
   11cac:	000b0913          	mv	s2,s6
   11cb0:	00a00693          	li	a3,10
   11cb4:	40f770e3          	bleu	a5,a4,128b4 <_vfprintf_r+0x113c>
   11cb8:	02d7f733          	remu	a4,a5,a3
   11cbc:	fff90913          	addi	s2,s2,-1
   11cc0:	02d7d7b3          	divu	a5,a5,a3
   11cc4:	0307071b          	addiw	a4,a4,48
   11cc8:	00e90023          	sb	a4,0(s2)
   11ccc:	fe0796e3          	bnez	a5,11cb8 <_vfprintf_r+0x540>
   11cd0:	412b07b3          	sub	a5,s6,s2
   11cd4:	02f12023          	sw	a5,32(sp)
   11cd8:	e9dff06f          	j	11b74 <_vfprintf_r+0x3fc>
   11cdc:	00012c23          	sw	zero,24(sp)
   11ce0:	fd0d079b          	addiw	a5,s10,-48
   11ce4:	01812303          	lw	t1,24(sp)
   11ce8:	00198993          	addi	s3,s3,1
   11cec:	fff9cd03          	lbu	s10,-1(s3)
   11cf0:	0013181b          	slliw	a6,t1,0x1
   11cf4:	00331c9b          	slliw	s9,t1,0x3
   11cf8:	01980cbb          	addw	s9,a6,s9
   11cfc:	019787bb          	addw	a5,a5,s9
   11d00:	00f12c23          	sw	a5,24(sp)
   11d04:	fd0d079b          	addiw	a5,s10,-48
   11d08:	fcf6fee3          	bleu	a5,a3,11ce4 <_vfprintf_r+0x56c>
   11d0c:	c31ff06f          	j	1193c <_vfprintf_r+0x1c4>
   11d10:	00060463          	beqz	a2,11d18 <_vfprintf_r+0x5a0>
   11d14:	6d80106f          	j	133ec <_vfprintf_r+0x1c74>
   11d18:	010c6c13          	ori	s8,s8,16
   11d1c:	010c7793          	andi	a5,s8,16
   11d20:	de0792e3          	bnez	a5,11b04 <_vfprintf_r+0x38c>
   11d24:	040c7793          	andi	a5,s8,64
   11d28:	080107a3          	sb	zero,143(sp)
   11d2c:	580780e3          	beqz	a5,12aac <_vfprintf_r+0x1334>
   11d30:	02813783          	ld	a5,40(sp)
   11d34:	00878713          	addi	a4,a5,8
   11d38:	0007d783          	lhu	a5,0(a5)
   11d3c:	dc045ee3          	bgez	s0,11b18 <_vfprintf_r+0x3a0>
   11d40:	02e13423          	sd	a4,40(sp)
   11d44:	00000613          	li	a2,0
   11d48:	60078a63          	beqz	a5,1235c <_vfprintf_r+0xbe4>
   11d4c:	00000613          	li	a2,0
   11d50:	de5ff06f          	j	11b34 <_vfprintf_r+0x3bc>
   11d54:	00060463          	beqz	a2,11d5c <_vfprintf_r+0x5e4>
   11d58:	6880106f          	j	133e0 <_vfprintf_r+0x1c68>
   11d5c:	010c6c13          	ori	s8,s8,16
   11d60:	010c7793          	andi	a5,s8,16
   11d64:	f20790e3          	bnez	a5,11c84 <_vfprintf_r+0x50c>
   11d68:	040c7793          	andi	a5,s8,64
   11d6c:	080107a3          	sb	zero,143(sp)
   11d70:	500780e3          	beqz	a5,12a70 <_vfprintf_r+0x12f8>
   11d74:	02813783          	ld	a5,40(sp)
   11d78:	00878713          	addi	a4,a5,8
   11d7c:	0007d783          	lhu	a5,0(a5)
   11d80:	f0045ce3          	bgez	s0,11c98 <_vfprintf_r+0x520>
   11d84:	02e13423          	sd	a4,40(sp)
   11d88:	00000613          	li	a2,0
   11d8c:	f0079ee3          	bnez	a5,11ca8 <_vfprintf_r+0x530>
   11d90:	00100793          	li	a5,1
   11d94:	5c80006f          	j	1235c <_vfprintf_r+0xbe4>
   11d98:	00060463          	beqz	a2,11da0 <_vfprintf_r+0x628>
   11d9c:	63c0106f          	j	133d8 <_vfprintf_r+0x1c60>
   11da0:	0001b7b7          	lui	a5,0x1b
   11da4:	4b878793          	addi	a5,a5,1208 # 1b4b8 <zeroes.4137+0x50>
   11da8:	02f13c23          	sd	a5,56(sp)
   11dac:	010c7793          	andi	a5,s8,16
   11db0:	4c078263          	beqz	a5,12274 <_vfprintf_r+0xafc>
   11db4:	02813703          	ld	a4,40(sp)
   11db8:	00073783          	ld	a5,0(a4)
   11dbc:	00870713          	addi	a4,a4,8
   11dc0:	02e13423          	sd	a4,40(sp)
   11dc4:	001c7713          	andi	a4,s8,1
   11dc8:	120706e3          	beqz	a4,126f4 <_vfprintf_r+0xf7c>
   11dcc:	6a078ee3          	beqz	a5,12c88 <_vfprintf_r+0x1510>
   11dd0:	03000713          	li	a4,48
   11dd4:	08e10823          	sb	a4,144(sp)
   11dd8:	09a108a3          	sb	s10,145(sp)
   11ddc:	080107a3          	sb	zero,143(sp)
   11de0:	002c6713          	ori	a4,s8,2
   11de4:	00045463          	bgez	s0,11dec <_vfprintf_r+0x674>
   11de8:	2140106f          	j	12ffc <_vfprintf_r+0x1884>
   11dec:	f7fc7c13          	andi	s8,s8,-129
   11df0:	002c6c13          	ori	s8,s8,2
   11df4:	00000613          	li	a2,0
   11df8:	be9ff06f          	j	119e0 <_vfprintf_r+0x268>
   11dfc:	02813703          	ld	a4,40(sp)
   11e00:	00100693          	li	a3,1
   11e04:	00d12423          	sw	a3,8(sp)
   11e08:	00072783          	lw	a5,0(a4)
   11e0c:	080107a3          	sb	zero,143(sp)
   11e10:	00000613          	li	a2,0
   11e14:	0cf10423          	sb	a5,200(sp)
   11e18:	00870793          	addi	a5,a4,8
   11e1c:	02f13423          	sd	a5,40(sp)
   11e20:	02d12023          	sw	a3,32(sp)
   11e24:	00000413          	li	s0,0
   11e28:	04012623          	sw	zero,76(sp)
   11e2c:	0c810913          	addi	s2,sp,200
   11e30:	002c7793          	andi	a5,s8,2
   11e34:	04f12023          	sw	a5,64(sp)
   11e38:	00078863          	beqz	a5,11e48 <_vfprintf_r+0x6d0>
   11e3c:	00812783          	lw	a5,8(sp)
   11e40:	0027879b          	addiw	a5,a5,2
   11e44:	00f12423          	sw	a5,8(sp)
   11e48:	084c7793          	andi	a5,s8,132
   11e4c:	04f12423          	sw	a5,72(sp)
   11e50:	52079263          	bnez	a5,12374 <_vfprintf_r+0xbfc>
   11e54:	01812783          	lw	a5,24(sp)
   11e58:	00812703          	lw	a4,8(sp)
   11e5c:	40e78cbb          	subw	s9,a5,a4
   11e60:	51905a63          	blez	s9,12374 <_vfprintf_r+0xbfc>
   11e64:	01000793          	li	a5,16
   11e68:	0197c463          	blt	a5,s9,11e70 <_vfprintf_r+0x6f8>
   11e6c:	1080106f          	j	12f74 <_vfprintf_r+0x17fc>
   11e70:	01000813          	li	a6,16
   11e74:	0c013783          	ld	a5,192(sp)
   11e78:	0b812703          	lw	a4,184(sp)
   11e7c:	05513823          	sd	s5,80(sp)
   11e80:	00700313          	li	t1,7
   11e84:	00080d93          	mv	s11,a6
   11e88:	00c0006f          	j	11e94 <_vfprintf_r+0x71c>
   11e8c:	ff0c8c9b          	addiw	s9,s9,-16
   11e90:	059dde63          	ble	s9,s11,11eec <_vfprintf_r+0x774>
   11e94:	01078793          	addi	a5,a5,16
   11e98:	0017071b          	addiw	a4,a4,1
   11e9c:	0158b023          	sd	s5,0(a7)
   11ea0:	0108b423          	sd	a6,8(a7)
   11ea4:	0cf13023          	sd	a5,192(sp)
   11ea8:	0ae12c23          	sw	a4,184(sp)
   11eac:	01088893          	addi	a7,a7,16
   11eb0:	fce35ee3          	ble	a4,t1,11e8c <_vfprintf_r+0x714>
   11eb4:	0b010613          	addi	a2,sp,176
   11eb8:	000a0593          	mv	a1,s4
   11ebc:	000b8513          	mv	a0,s7
   11ec0:	00613823          	sd	t1,16(sp)
   11ec4:	01013023          	sd	a6,0(sp)
   11ec8:	69c060ef          	jal	18564 <__sprint_r>
   11ecc:	ba051ee3          	bnez	a0,11a88 <_vfprintf_r+0x310>
   11ed0:	ff0c8c9b          	addiw	s9,s9,-16
   11ed4:	0c013783          	ld	a5,192(sp)
   11ed8:	0b812703          	lw	a4,184(sp)
   11edc:	000b0893          	mv	a7,s6
   11ee0:	01013303          	ld	t1,16(sp)
   11ee4:	00013803          	ld	a6,0(sp)
   11ee8:	fb9dc6e3          	blt	s11,s9,11e94 <_vfprintf_r+0x71c>
   11eec:	05013603          	ld	a2,80(sp)
   11ef0:	00fc87b3          	add	a5,s9,a5
   11ef4:	0017071b          	addiw	a4,a4,1
   11ef8:	00c8b023          	sd	a2,0(a7)
   11efc:	0198b423          	sd	s9,8(a7)
   11f00:	0cf13023          	sd	a5,192(sp)
   11f04:	0ae12c23          	sw	a4,184(sp)
   11f08:	00700693          	li	a3,7
   11f0c:	0ce6cae3          	blt	a3,a4,127e0 <_vfprintf_r+0x1068>
   11f10:	08f14603          	lbu	a2,143(sp)
   11f14:	01088893          	addi	a7,a7,16
   11f18:	02060a63          	beqz	a2,11f4c <_vfprintf_r+0x7d4>
   11f1c:	0b812703          	lw	a4,184(sp)
   11f20:	08f10693          	addi	a3,sp,143
   11f24:	00d8b023          	sd	a3,0(a7)
   11f28:	00178793          	addi	a5,a5,1
   11f2c:	00100693          	li	a3,1
   11f30:	0017071b          	addiw	a4,a4,1
   11f34:	00d8b423          	sd	a3,8(a7)
   11f38:	0cf13023          	sd	a5,192(sp)
   11f3c:	0ae12c23          	sw	a4,184(sp)
   11f40:	00700693          	li	a3,7
   11f44:	01088893          	addi	a7,a7,16
   11f48:	76e6c663          	blt	a3,a4,126b4 <_vfprintf_r+0xf3c>
   11f4c:	04012703          	lw	a4,64(sp)
   11f50:	02070a63          	beqz	a4,11f84 <_vfprintf_r+0x80c>
   11f54:	0b812703          	lw	a4,184(sp)
   11f58:	09010693          	addi	a3,sp,144
   11f5c:	00d8b023          	sd	a3,0(a7)
   11f60:	00278793          	addi	a5,a5,2
   11f64:	00200693          	li	a3,2
   11f68:	0017071b          	addiw	a4,a4,1
   11f6c:	00d8b423          	sd	a3,8(a7)
   11f70:	0cf13023          	sd	a5,192(sp)
   11f74:	0ae12c23          	sw	a4,184(sp)
   11f78:	00700693          	li	a3,7
   11f7c:	01088893          	addi	a7,a7,16
   11f80:	74e6ca63          	blt	a3,a4,126d4 <_vfprintf_r+0xf5c>
   11f84:	04812683          	lw	a3,72(sp)
   11f88:	08000713          	li	a4,128
   11f8c:	5ee68663          	beq	a3,a4,12578 <_vfprintf_r+0xe00>
   11f90:	02012703          	lw	a4,32(sp)
   11f94:	40e4043b          	subw	s0,s0,a4
   11f98:	0c805063          	blez	s0,12058 <_vfprintf_r+0x8e0>
   11f9c:	01000713          	li	a4,16
   11fa0:	4e875ce3          	ble	s0,a4,12c98 <_vfprintf_r+0x1520>
   11fa4:	01000c93          	li	s9,16
   11fa8:	0b812703          	lw	a4,184(sp)
   11fac:	00913823          	sd	s1,16(sp)
   11fb0:	00700813          	li	a6,7
   11fb4:	000c8d93          	mv	s11,s9
   11fb8:	00c0006f          	j	11fc4 <_vfprintf_r+0x84c>
   11fbc:	ff04041b          	addiw	s0,s0,-16
   11fc0:	048dda63          	ble	s0,s11,12014 <_vfprintf_r+0x89c>
   11fc4:	01078793          	addi	a5,a5,16
   11fc8:	0017071b          	addiw	a4,a4,1
   11fcc:	0098b023          	sd	s1,0(a7)
   11fd0:	0198b423          	sd	s9,8(a7)
   11fd4:	0cf13023          	sd	a5,192(sp)
   11fd8:	0ae12c23          	sw	a4,184(sp)
   11fdc:	01088893          	addi	a7,a7,16
   11fe0:	fce85ee3          	ble	a4,a6,11fbc <_vfprintf_r+0x844>
   11fe4:	0b010613          	addi	a2,sp,176
   11fe8:	000a0593          	mv	a1,s4
   11fec:	000b8513          	mv	a0,s7
   11ff0:	01013023          	sd	a6,0(sp)
   11ff4:	570060ef          	jal	18564 <__sprint_r>
   11ff8:	a80518e3          	bnez	a0,11a88 <_vfprintf_r+0x310>
   11ffc:	ff04041b          	addiw	s0,s0,-16
   12000:	0c013783          	ld	a5,192(sp)
   12004:	0b812703          	lw	a4,184(sp)
   12008:	000b0893          	mv	a7,s6
   1200c:	00013803          	ld	a6,0(sp)
   12010:	fa8dcae3          	blt	s11,s0,11fc4 <_vfprintf_r+0x84c>
   12014:	01013683          	ld	a3,16(sp)
   12018:	008787b3          	add	a5,a5,s0
   1201c:	0017071b          	addiw	a4,a4,1
   12020:	00d8b023          	sd	a3,0(a7)
   12024:	0088b423          	sd	s0,8(a7)
   12028:	0cf13023          	sd	a5,192(sp)
   1202c:	0ae12c23          	sw	a4,184(sp)
   12030:	00700693          	li	a3,7
   12034:	01088893          	addi	a7,a7,16
   12038:	02e6d063          	ble	a4,a3,12058 <_vfprintf_r+0x8e0>
   1203c:	0b010613          	addi	a2,sp,176
   12040:	000a0593          	mv	a1,s4
   12044:	000b8513          	mv	a0,s7
   12048:	51c060ef          	jal	18564 <__sprint_r>
   1204c:	a2051ee3          	bnez	a0,11a88 <_vfprintf_r+0x310>
   12050:	0c013783          	ld	a5,192(sp)
   12054:	000b0893          	mv	a7,s6
   12058:	100c7713          	andi	a4,s8,256
   1205c:	40071663          	bnez	a4,12468 <_vfprintf_r+0xcf0>
   12060:	02012703          	lw	a4,32(sp)
   12064:	0b812683          	lw	a3,184(sp)
   12068:	0128b023          	sd	s2,0(a7)
   1206c:	00e787b3          	add	a5,a5,a4
   12070:	0016869b          	addiw	a3,a3,1
   12074:	00e8b423          	sd	a4,8(a7)
   12078:	0cf13023          	sd	a5,192(sp)
   1207c:	0ad12c23          	sw	a3,184(sp)
   12080:	00700713          	li	a4,7
   12084:	3cd74263          	blt	a4,a3,12448 <_vfprintf_r+0xcd0>
   12088:	01088893          	addi	a7,a7,16
   1208c:	004c7c13          	andi	s8,s8,4
   12090:	0c0c0063          	beqz	s8,12150 <_vfprintf_r+0x9d8>
   12094:	01812703          	lw	a4,24(sp)
   12098:	00812683          	lw	a3,8(sp)
   1209c:	40d7043b          	subw	s0,a4,a3
   120a0:	0a805863          	blez	s0,12150 <_vfprintf_r+0x9d8>
   120a4:	01000713          	li	a4,16
   120a8:	748754e3          	ble	s0,a4,12ff0 <_vfprintf_r+0x1878>
   120ac:	01000913          	li	s2,16
   120b0:	0b812703          	lw	a4,184(sp)
   120b4:	05513823          	sd	s5,80(sp)
   120b8:	00700c13          	li	s8,7
   120bc:	00090d13          	mv	s10,s2
   120c0:	00c0006f          	j	120cc <_vfprintf_r+0x954>
   120c4:	ff04041b          	addiw	s0,s0,-16
   120c8:	048d5663          	ble	s0,s10,12114 <_vfprintf_r+0x99c>
   120cc:	01078793          	addi	a5,a5,16
   120d0:	0017071b          	addiw	a4,a4,1
   120d4:	0158b023          	sd	s5,0(a7)
   120d8:	0128b423          	sd	s2,8(a7)
   120dc:	0cf13023          	sd	a5,192(sp)
   120e0:	0ae12c23          	sw	a4,184(sp)
   120e4:	01088893          	addi	a7,a7,16
   120e8:	fcec5ee3          	ble	a4,s8,120c4 <_vfprintf_r+0x94c>
   120ec:	0b010613          	addi	a2,sp,176
   120f0:	000a0593          	mv	a1,s4
   120f4:	000b8513          	mv	a0,s7
   120f8:	46c060ef          	jal	18564 <__sprint_r>
   120fc:	980516e3          	bnez	a0,11a88 <_vfprintf_r+0x310>
   12100:	ff04041b          	addiw	s0,s0,-16
   12104:	0c013783          	ld	a5,192(sp)
   12108:	0b812703          	lw	a4,184(sp)
   1210c:	000b0893          	mv	a7,s6
   12110:	fa8d4ee3          	blt	s10,s0,120cc <_vfprintf_r+0x954>
   12114:	05013683          	ld	a3,80(sp)
   12118:	008787b3          	add	a5,a5,s0
   1211c:	0017071b          	addiw	a4,a4,1
   12120:	00d8b023          	sd	a3,0(a7)
   12124:	0088b423          	sd	s0,8(a7)
   12128:	0cf13023          	sd	a5,192(sp)
   1212c:	0ae12c23          	sw	a4,184(sp)
   12130:	00700693          	li	a3,7
   12134:	00e6de63          	ble	a4,a3,12150 <_vfprintf_r+0x9d8>
   12138:	0b010613          	addi	a2,sp,176
   1213c:	000a0593          	mv	a1,s4
   12140:	000b8513          	mv	a0,s7
   12144:	420060ef          	jal	18564 <__sprint_r>
   12148:	940510e3          	bnez	a0,11a88 <_vfprintf_r+0x310>
   1214c:	0c013783          	ld	a5,192(sp)
   12150:	01812c83          	lw	s9,24(sp)
   12154:	00812703          	lw	a4,8(sp)
   12158:	00ecd463          	ble	a4,s9,12160 <_vfprintf_r+0x9e8>
   1215c:	00070c93          	mv	s9,a4
   12160:	01c12703          	lw	a4,28(sp)
   12164:	0197073b          	addw	a4,a4,s9
   12168:	00e12e23          	sw	a4,28(sp)
   1216c:	52079863          	bnez	a5,1269c <_vfprintf_r+0xf24>
   12170:	0009c783          	lbu	a5,0(s3)
   12174:	0a012c23          	sw	zero,184(sp)
   12178:	000b0893          	mv	a7,s6
   1217c:	f2079263          	bnez	a5,118a0 <_vfprintf_r+0x128>
   12180:	00098413          	mv	s0,s3
   12184:	f80ff06f          	j	11904 <_vfprintf_r+0x18c>
   12188:	00060463          	beqz	a2,12190 <_vfprintf_r+0xa18>
   1218c:	22c0106f          	j	133b8 <_vfprintf_r+0x1c40>
   12190:	010c7793          	andi	a5,s8,16
   12194:	12078e63          	beqz	a5,122d0 <_vfprintf_r+0xb58>
   12198:	02813703          	ld	a4,40(sp)
   1219c:	00073783          	ld	a5,0(a4)
   121a0:	00870713          	addi	a4,a4,8
   121a4:	02e13423          	sd	a4,40(sp)
   121a8:	1407c0e3          	bltz	a5,12ae8 <_vfprintf_r+0x1370>
   121ac:	08f14603          	lbu	a2,143(sp)
   121b0:	bc044ee3          	bltz	s0,11d8c <_vfprintf_r+0x614>
   121b4:	f7fc7c13          	andi	s8,s8,-129
   121b8:	ae0798e3          	bnez	a5,11ca8 <_vfprintf_r+0x530>
   121bc:	6e041a63          	bnez	s0,128b0 <_vfprintf_r+0x1138>
   121c0:	00000413          	li	s0,0
   121c4:	02012023          	sw	zero,32(sp)
   121c8:	000b0913          	mv	s2,s6
   121cc:	9a9ff06f          	j	11b74 <_vfprintf_r+0x3fc>
   121d0:	040c6c13          	ori	s8,s8,64
   121d4:	f60ff06f          	j	11934 <_vfprintf_r+0x1bc>
   121d8:	00060463          	beqz	a2,121e0 <_vfprintf_r+0xa68>
   121dc:	1d40106f          	j	133b0 <_vfprintf_r+0x1c38>
   121e0:	02813783          	ld	a5,40(sp)
   121e4:	00100913          	li	s2,1
   121e8:	0007b787          	fld	fa5,0(a5)
   121ec:	00878793          	addi	a5,a5,8
   121f0:	01113023          	sd	a7,0(sp)
   121f4:	04f13c27          	fsd	fa5,88(sp)
   121f8:	05813c83          	ld	s9,88(sp)
   121fc:	02f13423          	sd	a5,40(sp)
   12200:	f20c8553          	fmv.d.x	fa0,s9
   12204:	5d9050ef          	jal	17fdc <__fpclassifyd>
   12208:	00013883          	ld	a7,0(sp)
   1220c:	0f251ce3          	bne	a0,s2,12b04 <_vfprintf_r+0x138c>
   12210:	f20007d3          	fmv.d.x	fa5,zero
   12214:	f20c8753          	fmv.d.x	fa4,s9
   12218:	a2f717d3          	flt.d	a5,fa4,fa5
   1221c:	600792e3          	bnez	a5,13020 <_vfprintf_r+0x18a8>
   12220:	08f14603          	lbu	a2,143(sp)
   12224:	04700793          	li	a5,71
   12228:	3da7d8e3          	ble	s10,a5,12df8 <_vfprintf_r+0x1680>
   1222c:	0001b937          	lui	s2,0x1b
   12230:	4a090913          	addi	s2,s2,1184 # 1b4a0 <zeroes.4137+0x38>
   12234:	00300793          	li	a5,3
   12238:	00f12423          	sw	a5,8(sp)
   1223c:	f7fc7c13          	andi	s8,s8,-129
   12240:	02f12023          	sw	a5,32(sp)
   12244:	00000413          	li	s0,0
   12248:	04012623          	sw	zero,76(sp)
   1224c:	941ff06f          	j	11b8c <_vfprintf_r+0x414>
   12250:	008c6c13          	ori	s8,s8,8
   12254:	ee0ff06f          	j	11934 <_vfprintf_r+0x1bc>
   12258:	00060463          	beqz	a2,12260 <_vfprintf_r+0xae8>
   1225c:	1280106f          	j	13384 <_vfprintf_r+0x1c0c>
   12260:	0001b7b7          	lui	a5,0x1b
   12264:	4d078793          	addi	a5,a5,1232 # 1b4d0 <zeroes.4137+0x68>
   12268:	02f13c23          	sd	a5,56(sp)
   1226c:	010c7793          	andi	a5,s8,16
   12270:	b40792e3          	bnez	a5,11db4 <_vfprintf_r+0x63c>
   12274:	040c7793          	andi	a5,s8,64
   12278:	02813703          	ld	a4,40(sp)
   1227c:	1c0784e3          	beqz	a5,12c44 <_vfprintf_r+0x14cc>
   12280:	00075783          	lhu	a5,0(a4)
   12284:	00870713          	addi	a4,a4,8
   12288:	02e13423          	sd	a4,40(sp)
   1228c:	b39ff06f          	j	11dc4 <_vfprintf_r+0x64c>
   12290:	00060463          	beqz	a2,12298 <_vfprintf_r+0xb20>
   12294:	10c0106f          	j	133a0 <_vfprintf_r+0x1c28>
   12298:	010c7793          	andi	a5,s8,16
   1229c:	1a078ce3          	beqz	a5,12c54 <_vfprintf_r+0x14dc>
   122a0:	02813683          	ld	a3,40(sp)
   122a4:	01c12703          	lw	a4,28(sp)
   122a8:	0006b783          	ld	a5,0(a3)
   122ac:	00868693          	addi	a3,a3,8
   122b0:	02d13423          	sd	a3,40(sp)
   122b4:	00e7b023          	sd	a4,0(a5)
   122b8:	de0ff06f          	j	11898 <_vfprintf_r+0x120>
   122bc:	00060463          	beqz	a2,122c4 <_vfprintf_r+0xb4c>
   122c0:	0d40106f          	j	13394 <_vfprintf_r+0x1c1c>
   122c4:	010c6c13          	ori	s8,s8,16
   122c8:	010c7793          	andi	a5,s8,16
   122cc:	ec0796e3          	bnez	a5,12198 <_vfprintf_r+0xa20>
   122d0:	040c7793          	andi	a5,s8,64
   122d4:	02813703          	ld	a4,40(sp)
   122d8:	1a0780e3          	beqz	a5,12c78 <_vfprintf_r+0x1500>
   122dc:	00071783          	lh	a5,0(a4)
   122e0:	00870713          	addi	a4,a4,8
   122e4:	02e13423          	sd	a4,40(sp)
   122e8:	ec1ff06f          	j	121a8 <_vfprintf_r+0xa30>
   122ec:	0001b737          	lui	a4,0x1b
   122f0:	4d070713          	addi	a4,a4,1232 # 1b4d0 <zeroes.4137+0x68>
   122f4:	00000613          	li	a2,0
   122f8:	02e13c23          	sd	a4,56(sp)
   122fc:	07800d13          	li	s10,120
   12300:	ee0ff06f          	j	119e0 <_vfprintf_r+0x268>
   12304:	00060463          	beqz	a2,1230c <_vfprintf_r+0xb94>
   12308:	0c00106f          	j	133c8 <_vfprintf_r+0x1c50>
   1230c:	f60d0263          	beqz	s10,11a70 <_vfprintf_r+0x2f8>
   12310:	00100793          	li	a5,1
   12314:	00f12423          	sw	a5,8(sp)
   12318:	0da10423          	sb	s10,200(sp)
   1231c:	080107a3          	sb	zero,143(sp)
   12320:	00000613          	li	a2,0
   12324:	02f12023          	sw	a5,32(sp)
   12328:	00000413          	li	s0,0
   1232c:	04012623          	sw	zero,76(sp)
   12330:	0c810913          	addi	s2,sp,200
   12334:	afdff06f          	j	11e30 <_vfprintf_r+0x6b8>
   12338:	02e13423          	sd	a4,40(sp)
   1233c:	0001b737          	lui	a4,0x1b
   12340:	4d070713          	addi	a4,a4,1232 # 1b4d0 <zeroes.4137+0x68>
   12344:	00068c13          	mv	s8,a3
   12348:	02e13c23          	sd	a4,56(sp)
   1234c:	07800d13          	li	s10,120
   12350:	3a079a63          	bnez	a5,12704 <_vfprintf_r+0xf8c>
   12354:	00000613          	li	a2,0
   12358:	00200793          	li	a5,2
   1235c:	00100713          	li	a4,1
   12360:	54e78863          	beq	a5,a4,128b0 <_vfprintf_r+0x1138>
   12364:	00200713          	li	a4,2
   12368:	e6e78a63          	beq	a5,a4,119dc <_vfprintf_r+0x264>
   1236c:	00000793          	li	a5,0
   12370:	fc4ff06f          	j	11b34 <_vfprintf_r+0x3bc>
   12374:	0c013783          	ld	a5,192(sp)
   12378:	ba1ff06f          	j	11f18 <_vfprintf_r+0x7a0>
   1237c:	07012683          	lw	a3,112(sp)
   12380:	00100713          	li	a4,1
   12384:	00178793          	addi	a5,a5,1
   12388:	6cd75663          	ble	a3,a4,12a54 <_vfprintf_r+0x12dc>
   1238c:	0b812703          	lw	a4,184(sp)
   12390:	00100693          	li	a3,1
   12394:	00d8b423          	sd	a3,8(a7)
   12398:	0017071b          	addiw	a4,a4,1
   1239c:	0128b023          	sd	s2,0(a7)
   123a0:	0cf13023          	sd	a5,192(sp)
   123a4:	0ae12c23          	sw	a4,184(sp)
   123a8:	00700693          	li	a3,7
   123ac:	01088893          	addi	a7,a7,16
   123b0:	6ce6ca63          	blt	a3,a4,12a84 <_vfprintf_r+0x130c>
   123b4:	06813683          	ld	a3,104(sp)
   123b8:	06013603          	ld	a2,96(sp)
   123bc:	0017071b          	addiw	a4,a4,1
   123c0:	00f687b3          	add	a5,a3,a5
   123c4:	00d8b423          	sd	a3,8(a7)
   123c8:	00c8b023          	sd	a2,0(a7)
   123cc:	0cf13023          	sd	a5,192(sp)
   123d0:	0ae12c23          	sw	a4,184(sp)
   123d4:	00700693          	li	a3,7
   123d8:	01088893          	addi	a7,a7,16
   123dc:	6ee6c263          	blt	a3,a4,12ac0 <_vfprintf_r+0x1348>
   123e0:	f20007d3          	fmv.d.x	fa5,zero
   123e4:	05813707          	fld	fa4,88(sp)
   123e8:	a2f726d3          	feq.d	a3,fa4,fa5
   123ec:	40069c63          	bnez	a3,12804 <_vfprintf_r+0x108c>
   123f0:	07012683          	lw	a3,112(sp)
   123f4:	00190913          	addi	s2,s2,1
   123f8:	0017071b          	addiw	a4,a4,1
   123fc:	fff6869b          	addiw	a3,a3,-1
   12400:	00d787b3          	add	a5,a5,a3
   12404:	0128b023          	sd	s2,0(a7)
   12408:	00d8b423          	sd	a3,8(a7)
   1240c:	0cf13023          	sd	a5,192(sp)
   12410:	0ae12c23          	sw	a4,184(sp)
   12414:	00700693          	li	a3,7
   12418:	26e6c063          	blt	a3,a4,12678 <_vfprintf_r+0xf00>
   1241c:	01088893          	addi	a7,a7,16
   12420:	07412683          	lw	a3,116(sp)
   12424:	0a010613          	addi	a2,sp,160
   12428:	0017071b          	addiw	a4,a4,1
   1242c:	00f687b3          	add	a5,a3,a5
   12430:	00c8b023          	sd	a2,0(a7)
   12434:	00d8b423          	sd	a3,8(a7)
   12438:	0cf13023          	sd	a5,192(sp)
   1243c:	0ae12c23          	sw	a4,184(sp)
   12440:	00700693          	li	a3,7
   12444:	c4e6d2e3          	ble	a4,a3,12088 <_vfprintf_r+0x910>
   12448:	0b010613          	addi	a2,sp,176
   1244c:	000a0593          	mv	a1,s4
   12450:	000b8513          	mv	a0,s7
   12454:	110060ef          	jal	18564 <__sprint_r>
   12458:	e2051863          	bnez	a0,11a88 <_vfprintf_r+0x310>
   1245c:	0c013783          	ld	a5,192(sp)
   12460:	000b0893          	mv	a7,s6
   12464:	c29ff06f          	j	1208c <_vfprintf_r+0x914>
   12468:	06500713          	li	a4,101
   1246c:	f1a758e3          	ble	s10,a4,1237c <_vfprintf_r+0xc04>
   12470:	f20007d3          	fmv.d.x	fa5,zero
   12474:	05813707          	fld	fa4,88(sp)
   12478:	a2f72753          	feq.d	a4,fa4,fa5
   1247c:	28070863          	beqz	a4,1270c <_vfprintf_r+0xf94>
   12480:	0b812703          	lw	a4,184(sp)
   12484:	0001b6b7          	lui	a3,0x1b
   12488:	4f068693          	addi	a3,a3,1264 # 1b4f0 <zeroes.4137+0x88>
   1248c:	00d8b023          	sd	a3,0(a7)
   12490:	00178793          	addi	a5,a5,1
   12494:	00100693          	li	a3,1
   12498:	0017071b          	addiw	a4,a4,1
   1249c:	00d8b423          	sd	a3,8(a7)
   124a0:	0cf13023          	sd	a5,192(sp)
   124a4:	0ae12c23          	sw	a4,184(sp)
   124a8:	00700693          	li	a3,7
   124ac:	01088893          	addi	a7,a7,16
   124b0:	7ee6ca63          	blt	a3,a4,12ca4 <_vfprintf_r+0x152c>
   124b4:	09812703          	lw	a4,152(sp)
   124b8:	07012683          	lw	a3,112(sp)
   124bc:	00d74663          	blt	a4,a3,124c8 <_vfprintf_r+0xd50>
   124c0:	001c7713          	andi	a4,s8,1
   124c4:	bc0704e3          	beqz	a4,1208c <_vfprintf_r+0x914>
   124c8:	06013703          	ld	a4,96(sp)
   124cc:	06813683          	ld	a3,104(sp)
   124d0:	01088893          	addi	a7,a7,16
   124d4:	fee8b823          	sd	a4,-16(a7)
   124d8:	0b812703          	lw	a4,184(sp)
   124dc:	00d787b3          	add	a5,a5,a3
   124e0:	fed8bc23          	sd	a3,-8(a7)
   124e4:	0017071b          	addiw	a4,a4,1
   124e8:	0cf13023          	sd	a5,192(sp)
   124ec:	0ae12c23          	sw	a4,184(sp)
   124f0:	00700693          	li	a3,7
   124f4:	1ce6c8e3          	blt	a3,a4,12ec4 <_vfprintf_r+0x174c>
   124f8:	07012703          	lw	a4,112(sp)
   124fc:	fff7041b          	addiw	s0,a4,-1
   12500:	b88056e3          	blez	s0,1208c <_vfprintf_r+0x914>
   12504:	01000713          	li	a4,16
   12508:	36875c63          	ble	s0,a4,12880 <_vfprintf_r+0x1108>
   1250c:	01000913          	li	s2,16
   12510:	0b812703          	lw	a4,184(sp)
   12514:	00913823          	sd	s1,16(sp)
   12518:	00700d13          	li	s10,7
   1251c:	00090693          	mv	a3,s2
   12520:	00c0006f          	j	1252c <_vfprintf_r+0xdb4>
   12524:	ff04041b          	addiw	s0,s0,-16
   12528:	3686d063          	ble	s0,a3,12888 <_vfprintf_r+0x1110>
   1252c:	01078793          	addi	a5,a5,16
   12530:	0017071b          	addiw	a4,a4,1
   12534:	0098b023          	sd	s1,0(a7)
   12538:	0128b423          	sd	s2,8(a7)
   1253c:	0cf13023          	sd	a5,192(sp)
   12540:	0ae12c23          	sw	a4,184(sp)
   12544:	01088893          	addi	a7,a7,16
   12548:	fced5ee3          	ble	a4,s10,12524 <_vfprintf_r+0xdac>
   1254c:	0b010613          	addi	a2,sp,176
   12550:	000a0593          	mv	a1,s4
   12554:	000b8513          	mv	a0,s7
   12558:	00d13023          	sd	a3,0(sp)
   1255c:	008060ef          	jal	18564 <__sprint_r>
   12560:	d2051463          	bnez	a0,11a88 <_vfprintf_r+0x310>
   12564:	0c013783          	ld	a5,192(sp)
   12568:	0b812703          	lw	a4,184(sp)
   1256c:	000b0893          	mv	a7,s6
   12570:	00013683          	ld	a3,0(sp)
   12574:	fb1ff06f          	j	12524 <_vfprintf_r+0xdac>
   12578:	01812703          	lw	a4,24(sp)
   1257c:	00812683          	lw	a3,8(sp)
   12580:	40d70cbb          	subw	s9,a4,a3
   12584:	a19056e3          	blez	s9,11f90 <_vfprintf_r+0x818>
   12588:	01000713          	li	a4,16
   1258c:	2f975ee3          	ble	s9,a4,13088 <_vfprintf_r+0x1910>
   12590:	01000813          	li	a6,16
   12594:	0b812703          	lw	a4,184(sp)
   12598:	00913823          	sd	s1,16(sp)
   1259c:	00700313          	li	t1,7
   125a0:	00080d93          	mv	s11,a6
   125a4:	00c0006f          	j	125b0 <_vfprintf_r+0xe38>
   125a8:	ff0c8c9b          	addiw	s9,s9,-16
   125ac:	059dde63          	ble	s9,s11,12608 <_vfprintf_r+0xe90>
   125b0:	01078793          	addi	a5,a5,16
   125b4:	0017071b          	addiw	a4,a4,1
   125b8:	0098b023          	sd	s1,0(a7)
   125bc:	0108b423          	sd	a6,8(a7)
   125c0:	0cf13023          	sd	a5,192(sp)
   125c4:	0ae12c23          	sw	a4,184(sp)
   125c8:	01088893          	addi	a7,a7,16
   125cc:	fce35ee3          	ble	a4,t1,125a8 <_vfprintf_r+0xe30>
   125d0:	0b010613          	addi	a2,sp,176
   125d4:	000a0593          	mv	a1,s4
   125d8:	000b8513          	mv	a0,s7
   125dc:	04613023          	sd	t1,64(sp)
   125e0:	01013023          	sd	a6,0(sp)
   125e4:	781050ef          	jal	18564 <__sprint_r>
   125e8:	ca051063          	bnez	a0,11a88 <_vfprintf_r+0x310>
   125ec:	ff0c8c9b          	addiw	s9,s9,-16
   125f0:	0c013783          	ld	a5,192(sp)
   125f4:	0b812703          	lw	a4,184(sp)
   125f8:	000b0893          	mv	a7,s6
   125fc:	04013303          	ld	t1,64(sp)
   12600:	00013803          	ld	a6,0(sp)
   12604:	fb9dc6e3          	blt	s11,s9,125b0 <_vfprintf_r+0xe38>
   12608:	01013603          	ld	a2,16(sp)
   1260c:	019787b3          	add	a5,a5,s9
   12610:	0017071b          	addiw	a4,a4,1
   12614:	00c8b023          	sd	a2,0(a7)
   12618:	0198b423          	sd	s9,8(a7)
   1261c:	0cf13023          	sd	a5,192(sp)
   12620:	0ae12c23          	sw	a4,184(sp)
   12624:	00700693          	li	a3,7
   12628:	01088893          	addi	a7,a7,16
   1262c:	96e6d2e3          	ble	a4,a3,11f90 <_vfprintf_r+0x818>
   12630:	0b010613          	addi	a2,sp,176
   12634:	000a0593          	mv	a1,s4
   12638:	000b8513          	mv	a0,s7
   1263c:	729050ef          	jal	18564 <__sprint_r>
   12640:	c4051463          	bnez	a0,11a88 <_vfprintf_r+0x310>
   12644:	0c013783          	ld	a5,192(sp)
   12648:	000b0893          	mv	a7,s6
   1264c:	945ff06f          	j	11f90 <_vfprintf_r+0x818>
   12650:	00913823          	sd	s1,16(sp)
   12654:	01013683          	ld	a3,16(sp)
   12658:	008787b3          	add	a5,a5,s0
   1265c:	0017071b          	addiw	a4,a4,1
   12660:	00d8b023          	sd	a3,0(a7)
   12664:	0088b423          	sd	s0,8(a7)
   12668:	0cf13023          	sd	a5,192(sp)
   1266c:	0ae12c23          	sw	a4,184(sp)
   12670:	00700693          	li	a3,7
   12674:	dae6d4e3          	ble	a4,a3,1241c <_vfprintf_r+0xca4>
   12678:	0b010613          	addi	a2,sp,176
   1267c:	000a0593          	mv	a1,s4
   12680:	000b8513          	mv	a0,s7
   12684:	6e1050ef          	jal	18564 <__sprint_r>
   12688:	c0051063          	bnez	a0,11a88 <_vfprintf_r+0x310>
   1268c:	0c013783          	ld	a5,192(sp)
   12690:	0b812703          	lw	a4,184(sp)
   12694:	000b0893          	mv	a7,s6
   12698:	d89ff06f          	j	12420 <_vfprintf_r+0xca8>
   1269c:	0b010613          	addi	a2,sp,176
   126a0:	000a0593          	mv	a1,s4
   126a4:	000b8513          	mv	a0,s7
   126a8:	6bd050ef          	jal	18564 <__sprint_r>
   126ac:	ac0502e3          	beqz	a0,12170 <_vfprintf_r+0x9f8>
   126b0:	bd8ff06f          	j	11a88 <_vfprintf_r+0x310>
   126b4:	0b010613          	addi	a2,sp,176
   126b8:	000a0593          	mv	a1,s4
   126bc:	000b8513          	mv	a0,s7
   126c0:	6a5050ef          	jal	18564 <__sprint_r>
   126c4:	bc051263          	bnez	a0,11a88 <_vfprintf_r+0x310>
   126c8:	0c013783          	ld	a5,192(sp)
   126cc:	000b0893          	mv	a7,s6
   126d0:	87dff06f          	j	11f4c <_vfprintf_r+0x7d4>
   126d4:	0b010613          	addi	a2,sp,176
   126d8:	000a0593          	mv	a1,s4
   126dc:	000b8513          	mv	a0,s7
   126e0:	685050ef          	jal	18564 <__sprint_r>
   126e4:	ba051263          	bnez	a0,11a88 <_vfprintf_r+0x310>
   126e8:	0c013783          	ld	a5,192(sp)
   126ec:	000b0893          	mv	a7,s6
   126f0:	895ff06f          	j	11f84 <_vfprintf_r+0x80c>
   126f4:	080107a3          	sb	zero,143(sp)
   126f8:	c4044ce3          	bltz	s0,12350 <_vfprintf_r+0xbd8>
   126fc:	f7fc7c13          	andi	s8,s8,-129
   12700:	ac078a63          	beqz	a5,119d4 <_vfprintf_r+0x25c>
   12704:	00000613          	li	a2,0
   12708:	ad8ff06f          	j	119e0 <_vfprintf_r+0x268>
   1270c:	09812403          	lw	s0,152(sp)
   12710:	5a805c63          	blez	s0,12cc8 <_vfprintf_r+0x1550>
   12714:	04c12703          	lw	a4,76(sp)
   12718:	07012683          	lw	a3,112(sp)
   1271c:	00070413          	mv	s0,a4
   12720:	00e6d463          	ble	a4,a3,12728 <_vfprintf_r+0xfb0>
   12724:	00068413          	mv	s0,a3
   12728:	02805663          	blez	s0,12754 <_vfprintf_r+0xfdc>
   1272c:	0b812703          	lw	a4,184(sp)
   12730:	008787b3          	add	a5,a5,s0
   12734:	0128b023          	sd	s2,0(a7)
   12738:	0017071b          	addiw	a4,a4,1
   1273c:	0088b423          	sd	s0,8(a7)
   12740:	0cf13023          	sd	a5,192(sp)
   12744:	0ae12c23          	sw	a4,184(sp)
   12748:	00700693          	li	a3,7
   1274c:	01088893          	addi	a7,a7,16
   12750:	6ae6ca63          	blt	a3,a4,12e04 <_vfprintf_r+0x168c>
   12754:	020448e3          	bltz	s0,12f84 <_vfprintf_r+0x180c>
   12758:	04c12703          	lw	a4,76(sp)
   1275c:	4087043b          	subw	s0,a4,s0
   12760:	1a805c63          	blez	s0,12918 <_vfprintf_r+0x11a0>
   12764:	01000713          	li	a4,16
   12768:	16875263          	ble	s0,a4,128cc <_vfprintf_r+0x1154>
   1276c:	01000d13          	li	s10,16
   12770:	0b812703          	lw	a4,184(sp)
   12774:	00913823          	sd	s1,16(sp)
   12778:	00700693          	li	a3,7
   1277c:	000d0813          	mv	a6,s10
   12780:	00c0006f          	j	1278c <_vfprintf_r+0x1014>
   12784:	ff04041b          	addiw	s0,s0,-16
   12788:	14885663          	ble	s0,a6,128d4 <_vfprintf_r+0x115c>
   1278c:	01078793          	addi	a5,a5,16
   12790:	0017071b          	addiw	a4,a4,1
   12794:	0098b023          	sd	s1,0(a7)
   12798:	01a8b423          	sd	s10,8(a7)
   1279c:	0cf13023          	sd	a5,192(sp)
   127a0:	0ae12c23          	sw	a4,184(sp)
   127a4:	01088893          	addi	a7,a7,16
   127a8:	fce6dee3          	ble	a4,a3,12784 <_vfprintf_r+0x100c>
   127ac:	0b010613          	addi	a2,sp,176
   127b0:	000a0593          	mv	a1,s4
   127b4:	000b8513          	mv	a0,s7
   127b8:	03013023          	sd	a6,32(sp)
   127bc:	00d13023          	sd	a3,0(sp)
   127c0:	5a5050ef          	jal	18564 <__sprint_r>
   127c4:	ac051263          	bnez	a0,11a88 <_vfprintf_r+0x310>
   127c8:	0c013783          	ld	a5,192(sp)
   127cc:	0b812703          	lw	a4,184(sp)
   127d0:	000b0893          	mv	a7,s6
   127d4:	02013803          	ld	a6,32(sp)
   127d8:	00013683          	ld	a3,0(sp)
   127dc:	fa9ff06f          	j	12784 <_vfprintf_r+0x100c>
   127e0:	0b010613          	addi	a2,sp,176
   127e4:	000a0593          	mv	a1,s4
   127e8:	000b8513          	mv	a0,s7
   127ec:	579050ef          	jal	18564 <__sprint_r>
   127f0:	a8051c63          	bnez	a0,11a88 <_vfprintf_r+0x310>
   127f4:	08f14603          	lbu	a2,143(sp)
   127f8:	0c013783          	ld	a5,192(sp)
   127fc:	000b0893          	mv	a7,s6
   12800:	f18ff06f          	j	11f18 <_vfprintf_r+0x7a0>
   12804:	07012683          	lw	a3,112(sp)
   12808:	fff6841b          	addiw	s0,a3,-1
   1280c:	c0805ae3          	blez	s0,12420 <_vfprintf_r+0xca8>
   12810:	01000693          	li	a3,16
   12814:	e286dee3          	ble	s0,a3,12650 <_vfprintf_r+0xed8>
   12818:	01000913          	li	s2,16
   1281c:	00913823          	sd	s1,16(sp)
   12820:	00700d13          	li	s10,7
   12824:	00090693          	mv	a3,s2
   12828:	00c0006f          	j	12834 <_vfprintf_r+0x10bc>
   1282c:	ff04041b          	addiw	s0,s0,-16
   12830:	e286d2e3          	ble	s0,a3,12654 <_vfprintf_r+0xedc>
   12834:	01078793          	addi	a5,a5,16
   12838:	0017071b          	addiw	a4,a4,1
   1283c:	0098b023          	sd	s1,0(a7)
   12840:	0128b423          	sd	s2,8(a7)
   12844:	0cf13023          	sd	a5,192(sp)
   12848:	0ae12c23          	sw	a4,184(sp)
   1284c:	01088893          	addi	a7,a7,16
   12850:	fced5ee3          	ble	a4,s10,1282c <_vfprintf_r+0x10b4>
   12854:	0b010613          	addi	a2,sp,176
   12858:	000a0593          	mv	a1,s4
   1285c:	000b8513          	mv	a0,s7
   12860:	00d13023          	sd	a3,0(sp)
   12864:	501050ef          	jal	18564 <__sprint_r>
   12868:	a2051063          	bnez	a0,11a88 <_vfprintf_r+0x310>
   1286c:	0c013783          	ld	a5,192(sp)
   12870:	0b812703          	lw	a4,184(sp)
   12874:	000b0893          	mv	a7,s6
   12878:	00013683          	ld	a3,0(sp)
   1287c:	fb1ff06f          	j	1282c <_vfprintf_r+0x10b4>
   12880:	0b812703          	lw	a4,184(sp)
   12884:	00913823          	sd	s1,16(sp)
   12888:	01013683          	ld	a3,16(sp)
   1288c:	008787b3          	add	a5,a5,s0
   12890:	0088b423          	sd	s0,8(a7)
   12894:	00d8b023          	sd	a3,0(a7)
   12898:	0017071b          	addiw	a4,a4,1
   1289c:	0cf13023          	sd	a5,192(sp)
   128a0:	0ae12c23          	sw	a4,184(sp)
   128a4:	00700693          	li	a3,7
   128a8:	fee6d063          	ble	a4,a3,12088 <_vfprintf_r+0x910>
   128ac:	b9dff06f          	j	12448 <_vfprintf_r+0xcd0>
   128b0:	00000793          	li	a5,0
   128b4:	0307879b          	addiw	a5,a5,48
   128b8:	0ef107a3          	sb	a5,239(sp)
   128bc:	07813783          	ld	a5,120(sp)
   128c0:	0ef10913          	addi	s2,sp,239
   128c4:	02f12023          	sw	a5,32(sp)
   128c8:	aacff06f          	j	11b74 <_vfprintf_r+0x3fc>
   128cc:	0b812703          	lw	a4,184(sp)
   128d0:	00913823          	sd	s1,16(sp)
   128d4:	01013683          	ld	a3,16(sp)
   128d8:	008787b3          	add	a5,a5,s0
   128dc:	0017071b          	addiw	a4,a4,1
   128e0:	00d8b023          	sd	a3,0(a7)
   128e4:	0088b423          	sd	s0,8(a7)
   128e8:	0cf13023          	sd	a5,192(sp)
   128ec:	0ae12c23          	sw	a4,184(sp)
   128f0:	00700693          	li	a3,7
   128f4:	01088893          	addi	a7,a7,16
   128f8:	02e6d063          	ble	a4,a3,12918 <_vfprintf_r+0x11a0>
   128fc:	0b010613          	addi	a2,sp,176
   12900:	000a0593          	mv	a1,s4
   12904:	000b8513          	mv	a0,s7
   12908:	45d050ef          	jal	18564 <__sprint_r>
   1290c:	96051e63          	bnez	a0,11a88 <_vfprintf_r+0x310>
   12910:	0c013783          	ld	a5,192(sp)
   12914:	000b0893          	mv	a7,s6
   12918:	04c12d03          	lw	s10,76(sp)
   1291c:	09812703          	lw	a4,152(sp)
   12920:	07012683          	lw	a3,112(sp)
   12924:	01a90d33          	add	s10,s2,s10
   12928:	0cd74a63          	blt	a4,a3,129fc <_vfprintf_r+0x1284>
   1292c:	001c7693          	andi	a3,s8,1
   12930:	0c069663          	bnez	a3,129fc <_vfprintf_r+0x1284>
   12934:	07012683          	lw	a3,112(sp)
   12938:	00d90433          	add	s0,s2,a3
   1293c:	41a40433          	sub	s0,s0,s10
   12940:	40e6873b          	subw	a4,a3,a4
   12944:	0004041b          	sext.w	s0,s0
   12948:	00875463          	ble	s0,a4,12950 <_vfprintf_r+0x11d8>
   1294c:	00070413          	mv	s0,a4
   12950:	02805663          	blez	s0,1297c <_vfprintf_r+0x1204>
   12954:	0b812683          	lw	a3,184(sp)
   12958:	008787b3          	add	a5,a5,s0
   1295c:	01a8b023          	sd	s10,0(a7)
   12960:	0016869b          	addiw	a3,a3,1
   12964:	0088b423          	sd	s0,8(a7)
   12968:	0cf13023          	sd	a5,192(sp)
   1296c:	0ad12c23          	sw	a3,184(sp)
   12970:	00700613          	li	a2,7
   12974:	01088893          	addi	a7,a7,16
   12978:	4cd64263          	blt	a2,a3,12e3c <_vfprintf_r+0x16c4>
   1297c:	60044863          	bltz	s0,12f8c <_vfprintf_r+0x1814>
   12980:	4087043b          	subw	s0,a4,s0
   12984:	f0805463          	blez	s0,1208c <_vfprintf_r+0x914>
   12988:	01000713          	li	a4,16
   1298c:	ee875ae3          	ble	s0,a4,12880 <_vfprintf_r+0x1108>
   12990:	01000913          	li	s2,16
   12994:	0b812703          	lw	a4,184(sp)
   12998:	00913823          	sd	s1,16(sp)
   1299c:	00700d13          	li	s10,7
   129a0:	00090693          	mv	a3,s2
   129a4:	00c0006f          	j	129b0 <_vfprintf_r+0x1238>
   129a8:	ff04041b          	addiw	s0,s0,-16
   129ac:	ec86dee3          	ble	s0,a3,12888 <_vfprintf_r+0x1110>
   129b0:	01078793          	addi	a5,a5,16
   129b4:	0017071b          	addiw	a4,a4,1
   129b8:	0098b023          	sd	s1,0(a7)
   129bc:	0128b423          	sd	s2,8(a7)
   129c0:	0cf13023          	sd	a5,192(sp)
   129c4:	0ae12c23          	sw	a4,184(sp)
   129c8:	01088893          	addi	a7,a7,16
   129cc:	fced5ee3          	ble	a4,s10,129a8 <_vfprintf_r+0x1230>
   129d0:	0b010613          	addi	a2,sp,176
   129d4:	000a0593          	mv	a1,s4
   129d8:	000b8513          	mv	a0,s7
   129dc:	00d13023          	sd	a3,0(sp)
   129e0:	385050ef          	jal	18564 <__sprint_r>
   129e4:	8a051263          	bnez	a0,11a88 <_vfprintf_r+0x310>
   129e8:	0c013783          	ld	a5,192(sp)
   129ec:	0b812703          	lw	a4,184(sp)
   129f0:	000b0893          	mv	a7,s6
   129f4:	00013683          	ld	a3,0(sp)
   129f8:	fb1ff06f          	j	129a8 <_vfprintf_r+0x1230>
   129fc:	06013683          	ld	a3,96(sp)
   12a00:	06813603          	ld	a2,104(sp)
   12a04:	01088893          	addi	a7,a7,16
   12a08:	fed8b823          	sd	a3,-16(a7)
   12a0c:	0b812683          	lw	a3,184(sp)
   12a10:	00c787b3          	add	a5,a5,a2
   12a14:	fec8bc23          	sd	a2,-8(a7)
   12a18:	0016869b          	addiw	a3,a3,1
   12a1c:	0cf13023          	sd	a5,192(sp)
   12a20:	0ad12c23          	sw	a3,184(sp)
   12a24:	00700613          	li	a2,7
   12a28:	f0d656e3          	ble	a3,a2,12934 <_vfprintf_r+0x11bc>
   12a2c:	0b010613          	addi	a2,sp,176
   12a30:	000a0593          	mv	a1,s4
   12a34:	000b8513          	mv	a0,s7
   12a38:	32d050ef          	jal	18564 <__sprint_r>
   12a3c:	00050463          	beqz	a0,12a44 <_vfprintf_r+0x12cc>
   12a40:	848ff06f          	j	11a88 <_vfprintf_r+0x310>
   12a44:	09812703          	lw	a4,152(sp)
   12a48:	0c013783          	ld	a5,192(sp)
   12a4c:	000b0893          	mv	a7,s6
   12a50:	ee5ff06f          	j	12934 <_vfprintf_r+0x11bc>
   12a54:	00ec7733          	and	a4,s8,a4
   12a58:	92071ae3          	bnez	a4,1238c <_vfprintf_r+0xc14>
   12a5c:	0b812703          	lw	a4,184(sp)
   12a60:	0128b023          	sd	s2,0(a7)
   12a64:	00100693          	li	a3,1
   12a68:	0017071b          	addiw	a4,a4,1
   12a6c:	99dff06f          	j	12408 <_vfprintf_r+0xc90>
   12a70:	02813783          	ld	a5,40(sp)
   12a74:	00878713          	addi	a4,a5,8
   12a78:	0007e783          	lwu	a5,0(a5)
   12a7c:	a0045e63          	bgez	s0,11c98 <_vfprintf_r+0x520>
   12a80:	b04ff06f          	j	11d84 <_vfprintf_r+0x60c>
   12a84:	0b010613          	addi	a2,sp,176
   12a88:	000a0593          	mv	a1,s4
   12a8c:	000b8513          	mv	a0,s7
   12a90:	2d5050ef          	jal	18564 <__sprint_r>
   12a94:	00050463          	beqz	a0,12a9c <_vfprintf_r+0x1324>
   12a98:	ff1fe06f          	j	11a88 <_vfprintf_r+0x310>
   12a9c:	0c013783          	ld	a5,192(sp)
   12aa0:	0b812703          	lw	a4,184(sp)
   12aa4:	000b0893          	mv	a7,s6
   12aa8:	90dff06f          	j	123b4 <_vfprintf_r+0xc3c>
   12aac:	02813783          	ld	a5,40(sp)
   12ab0:	00878713          	addi	a4,a5,8
   12ab4:	0007e783          	lwu	a5,0(a5)
   12ab8:	86045063          	bgez	s0,11b18 <_vfprintf_r+0x3a0>
   12abc:	a84ff06f          	j	11d40 <_vfprintf_r+0x5c8>
   12ac0:	0b010613          	addi	a2,sp,176
   12ac4:	000a0593          	mv	a1,s4
   12ac8:	000b8513          	mv	a0,s7
   12acc:	299050ef          	jal	18564 <__sprint_r>
   12ad0:	00050463          	beqz	a0,12ad8 <_vfprintf_r+0x1360>
   12ad4:	fb5fe06f          	j	11a88 <_vfprintf_r+0x310>
   12ad8:	0c013783          	ld	a5,192(sp)
   12adc:	0b812703          	lw	a4,184(sp)
   12ae0:	000b0893          	mv	a7,s6
   12ae4:	8fdff06f          	j	123e0 <_vfprintf_r+0xc68>
   12ae8:	02d00713          	li	a4,45
   12aec:	08e107a3          	sb	a4,143(sp)
   12af0:	40f007b3          	neg	a5,a5
   12af4:	4a044063          	bltz	s0,12f94 <_vfprintf_r+0x181c>
   12af8:	f7fc7c13          	andi	s8,s8,-129
   12afc:	02d00613          	li	a2,45
   12b00:	9a8ff06f          	j	11ca8 <_vfprintf_r+0x530>
   12b04:	05813507          	fld	fa0,88(sp)
   12b08:	01113023          	sd	a7,0(sp)
   12b0c:	4d0050ef          	jal	17fdc <__fpclassifyd>
   12b10:	00013883          	ld	a7,0(sp)
   12b14:	2a050463          	beqz	a0,12dbc <_vfprintf_r+0x1644>
   12b18:	fff00793          	li	a5,-1
   12b1c:	fdfd7d93          	andi	s11,s10,-33
   12b20:	62f40c63          	beq	s0,a5,13158 <_vfprintf_r+0x19e0>
   12b24:	04700793          	li	a5,71
   12b28:	62fd8263          	beq	s11,a5,1314c <_vfprintf_r+0x19d4>
   12b2c:	05813703          	ld	a4,88(sp)
   12b30:	100c6693          	ori	a3,s8,256
   12b34:	00d12023          	sw	a3,0(sp)
   12b38:	42075793          	srai	a5,a4,0x20
   12b3c:	f2070453          	fmv.d.x	fs0,a4
   12b40:	00000c93          	li	s9,0
   12b44:	6607c663          	bltz	a5,131b0 <_vfprintf_r+0x1a38>
   12b48:	06600793          	li	a5,102
   12b4c:	60fd0a63          	beq	s10,a5,13160 <_vfprintf_r+0x19e8>
   12b50:	04600793          	li	a5,70
   12b54:	72fd0863          	beq	s10,a5,13284 <_vfprintf_r+0x1b0c>
   12b58:	fbbd859b          	addiw	a1,s11,-69
   12b5c:	0015b593          	seqz	a1,a1
   12b60:	228405d3          	fmv.d	fa1,fs0
   12b64:	00b405bb          	addw	a1,s0,a1
   12b68:	09c10793          	addi	a5,sp,156
   12b6c:	00058693          	mv	a3,a1
   12b70:	0a810813          	addi	a6,sp,168
   12b74:	09810713          	addi	a4,sp,152
   12b78:	00200613          	li	a2,2
   12b7c:	000b8513          	mv	a0,s7
   12b80:	01113823          	sd	a7,16(sp)
   12b84:	00b13423          	sd	a1,8(sp)
   12b88:	745000ef          	jal	13acc <_dtoa_r>
   12b8c:	06700793          	li	a5,103
   12b90:	00050913          	mv	s2,a0
   12b94:	00813583          	ld	a1,8(sp)
   12b98:	01013883          	ld	a7,16(sp)
   12b9c:	46fd0863          	beq	s10,a5,1300c <_vfprintf_r+0x1894>
   12ba0:	04700793          	li	a5,71
   12ba4:	00b50733          	add	a4,a0,a1
   12ba8:	48fd0a63          	beq	s10,a5,1303c <_vfprintf_r+0x18c4>
   12bac:	f20007d3          	fmv.d.x	fa5,zero
   12bb0:	00070793          	mv	a5,a4
   12bb4:	a2f426d3          	feq.d	a3,fs0,fa5
   12bb8:	02069263          	bnez	a3,12bdc <_vfprintf_r+0x1464>
   12bbc:	0a813783          	ld	a5,168(sp)
   12bc0:	00e7fe63          	bleu	a4,a5,12bdc <_vfprintf_r+0x1464>
   12bc4:	03000613          	li	a2,48
   12bc8:	00178693          	addi	a3,a5,1
   12bcc:	0ad13423          	sd	a3,168(sp)
   12bd0:	00c78023          	sb	a2,0(a5)
   12bd4:	0a813783          	ld	a5,168(sp)
   12bd8:	fee7e8e3          	bltu	a5,a4,12bc8 <_vfprintf_r+0x1450>
   12bdc:	412787b3          	sub	a5,a5,s2
   12be0:	06f12823          	sw	a5,112(sp)
   12be4:	04700793          	li	a5,71
   12be8:	46fd8663          	beq	s11,a5,13054 <_vfprintf_r+0x18dc>
   12bec:	06500793          	li	a5,101
   12bf0:	7ba7dc63          	ble	s10,a5,133a8 <_vfprintf_r+0x1c30>
   12bf4:	06600793          	li	a5,102
   12bf8:	60fd0263          	beq	s10,a5,131fc <_vfprintf_r+0x1a84>
   12bfc:	09812783          	lw	a5,152(sp)
   12c00:	04f12623          	sw	a5,76(sp)
   12c04:	04c12703          	lw	a4,76(sp)
   12c08:	07012683          	lw	a3,112(sp)
   12c0c:	00070793          	mv	a5,a4
   12c10:	5ad74663          	blt	a4,a3,131bc <_vfprintf_r+0x1a44>
   12c14:	001c7c13          	andi	s8,s8,1
   12c18:	5c0c1463          	bnez	s8,131e0 <_vfprintf_r+0x1a68>
   12c1c:	76074863          	bltz	a4,1338c <_vfprintf_r+0x1c14>
   12c20:	04c12703          	lw	a4,76(sp)
   12c24:	06700d13          	li	s10,103
   12c28:	02e12023          	sw	a4,32(sp)
   12c2c:	440c9063          	bnez	s9,1306c <_vfprintf_r+0x18f4>
   12c30:	08f14603          	lbu	a2,143(sp)
   12c34:	00f12423          	sw	a5,8(sp)
   12c38:	00012c03          	lw	s8,0(sp)
   12c3c:	00000413          	li	s0,0
   12c40:	f4dfe06f          	j	11b8c <_vfprintf_r+0x414>
   12c44:	00076783          	lwu	a5,0(a4)
   12c48:	00870713          	addi	a4,a4,8
   12c4c:	02e13423          	sd	a4,40(sp)
   12c50:	974ff06f          	j	11dc4 <_vfprintf_r+0x64c>
   12c54:	02813703          	ld	a4,40(sp)
   12c58:	040c7c13          	andi	s8,s8,64
   12c5c:	00073783          	ld	a5,0(a4)
   12c60:	00870713          	addi	a4,a4,8
   12c64:	02e13423          	sd	a4,40(sp)
   12c68:	180c0263          	beqz	s8,12dec <_vfprintf_r+0x1674>
   12c6c:	01c15703          	lhu	a4,28(sp)
   12c70:	00e79023          	sh	a4,0(a5)
   12c74:	c25fe06f          	j	11898 <_vfprintf_r+0x120>
   12c78:	00072783          	lw	a5,0(a4)
   12c7c:	00870713          	addi	a4,a4,8
   12c80:	02e13423          	sd	a4,40(sp)
   12c84:	d24ff06f          	j	121a8 <_vfprintf_r+0xa30>
   12c88:	080107a3          	sb	zero,143(sp)
   12c8c:	ec044463          	bltz	s0,12354 <_vfprintf_r+0xbdc>
   12c90:	f7fc7c13          	andi	s8,s8,-129
   12c94:	d41fe06f          	j	119d4 <_vfprintf_r+0x25c>
   12c98:	0b812703          	lw	a4,184(sp)
   12c9c:	00913823          	sd	s1,16(sp)
   12ca0:	b74ff06f          	j	12014 <_vfprintf_r+0x89c>
   12ca4:	0b010613          	addi	a2,sp,176
   12ca8:	000a0593          	mv	a1,s4
   12cac:	000b8513          	mv	a0,s7
   12cb0:	0b5050ef          	jal	18564 <__sprint_r>
   12cb4:	00050463          	beqz	a0,12cbc <_vfprintf_r+0x1544>
   12cb8:	dd1fe06f          	j	11a88 <_vfprintf_r+0x310>
   12cbc:	0c013783          	ld	a5,192(sp)
   12cc0:	000b0893          	mv	a7,s6
   12cc4:	ff0ff06f          	j	124b4 <_vfprintf_r+0xd3c>
   12cc8:	0b812703          	lw	a4,184(sp)
   12ccc:	0001b6b7          	lui	a3,0x1b
   12cd0:	4f068693          	addi	a3,a3,1264 # 1b4f0 <zeroes.4137+0x88>
   12cd4:	00d8b023          	sd	a3,0(a7)
   12cd8:	00178793          	addi	a5,a5,1
   12cdc:	00100693          	li	a3,1
   12ce0:	0017071b          	addiw	a4,a4,1
   12ce4:	00d8b423          	sd	a3,8(a7)
   12ce8:	0cf13023          	sd	a5,192(sp)
   12cec:	0ae12c23          	sw	a4,184(sp)
   12cf0:	00700693          	li	a3,7
   12cf4:	01088893          	addi	a7,a7,16
   12cf8:	16e6ca63          	blt	a3,a4,12e6c <_vfprintf_r+0x16f4>
   12cfc:	12040663          	beqz	s0,12e28 <_vfprintf_r+0x16b0>
   12d00:	06013703          	ld	a4,96(sp)
   12d04:	06813683          	ld	a3,104(sp)
   12d08:	01088893          	addi	a7,a7,16
   12d0c:	fee8b823          	sd	a4,-16(a7)
   12d10:	0b812703          	lw	a4,184(sp)
   12d14:	00f687b3          	add	a5,a3,a5
   12d18:	fed8bc23          	sd	a3,-8(a7)
   12d1c:	0017071b          	addiw	a4,a4,1
   12d20:	0cf13023          	sd	a5,192(sp)
   12d24:	0ae12c23          	sw	a4,184(sp)
   12d28:	00700693          	li	a3,7
   12d2c:	3ee6ca63          	blt	a3,a4,13120 <_vfprintf_r+0x19a8>
   12d30:	4080043b          	negw	s0,s0
   12d34:	20805263          	blez	s0,12f38 <_vfprintf_r+0x17c0>
   12d38:	01000693          	li	a3,16
   12d3c:	1a86d663          	ble	s0,a3,12ee8 <_vfprintf_r+0x1770>
   12d40:	01000d13          	li	s10,16
   12d44:	00913823          	sd	s1,16(sp)
   12d48:	00700813          	li	a6,7
   12d4c:	000d0693          	mv	a3,s10
   12d50:	00c0006f          	j	12d5c <_vfprintf_r+0x15e4>
   12d54:	ff04041b          	addiw	s0,s0,-16
   12d58:	1886da63          	ble	s0,a3,12eec <_vfprintf_r+0x1774>
   12d5c:	01078793          	addi	a5,a5,16
   12d60:	0017071b          	addiw	a4,a4,1
   12d64:	0098b023          	sd	s1,0(a7)
   12d68:	01a8b423          	sd	s10,8(a7)
   12d6c:	0cf13023          	sd	a5,192(sp)
   12d70:	0ae12c23          	sw	a4,184(sp)
   12d74:	01088893          	addi	a7,a7,16
   12d78:	fce85ee3          	ble	a4,a6,12d54 <_vfprintf_r+0x15dc>
   12d7c:	0b010613          	addi	a2,sp,176
   12d80:	000a0593          	mv	a1,s4
   12d84:	000b8513          	mv	a0,s7
   12d88:	02d13023          	sd	a3,32(sp)
   12d8c:	01013023          	sd	a6,0(sp)
   12d90:	7d4050ef          	jal	18564 <__sprint_r>
   12d94:	00050463          	beqz	a0,12d9c <_vfprintf_r+0x1624>
   12d98:	cf1fe06f          	j	11a88 <_vfprintf_r+0x310>
   12d9c:	0c013783          	ld	a5,192(sp)
   12da0:	0b812703          	lw	a4,184(sp)
   12da4:	000b0893          	mv	a7,s6
   12da8:	02013683          	ld	a3,32(sp)
   12dac:	00013803          	ld	a6,0(sp)
   12db0:	fa5ff06f          	j	12d54 <_vfprintf_r+0x15dc>
   12db4:	fff00513          	li	a0,-1
   12db8:	ce5fe06f          	j	11a9c <_vfprintf_r+0x324>
   12dbc:	04700793          	li	a5,71
   12dc0:	27a7c863          	blt	a5,s10,13030 <_vfprintf_r+0x18b8>
   12dc4:	0001b937          	lui	s2,0x1b
   12dc8:	4a890913          	addi	s2,s2,1192 # 1b4a8 <zeroes.4137+0x40>
   12dcc:	00300793          	li	a5,3
   12dd0:	00f12423          	sw	a5,8(sp)
   12dd4:	f7fc7c13          	andi	s8,s8,-129
   12dd8:	08f14603          	lbu	a2,143(sp)
   12ddc:	02f12023          	sw	a5,32(sp)
   12de0:	00000413          	li	s0,0
   12de4:	04012623          	sw	zero,76(sp)
   12de8:	da5fe06f          	j	11b8c <_vfprintf_r+0x414>
   12dec:	01c12703          	lw	a4,28(sp)
   12df0:	00e7a023          	sw	a4,0(a5)
   12df4:	aa5fe06f          	j	11898 <_vfprintf_r+0x120>
   12df8:	0001b937          	lui	s2,0x1b
   12dfc:	49890913          	addi	s2,s2,1176 # 1b498 <zeroes.4137+0x30>
   12e00:	c34ff06f          	j	12234 <_vfprintf_r+0xabc>
   12e04:	0b010613          	addi	a2,sp,176
   12e08:	000a0593          	mv	a1,s4
   12e0c:	000b8513          	mv	a0,s7
   12e10:	754050ef          	jal	18564 <__sprint_r>
   12e14:	00050463          	beqz	a0,12e1c <_vfprintf_r+0x16a4>
   12e18:	c71fe06f          	j	11a88 <_vfprintf_r+0x310>
   12e1c:	0c013783          	ld	a5,192(sp)
   12e20:	000b0893          	mv	a7,s6
   12e24:	931ff06f          	j	12754 <_vfprintf_r+0xfdc>
   12e28:	07012703          	lw	a4,112(sp)
   12e2c:	ec071ae3          	bnez	a4,12d00 <_vfprintf_r+0x1588>
   12e30:	001c7713          	andi	a4,s8,1
   12e34:	a4070c63          	beqz	a4,1208c <_vfprintf_r+0x914>
   12e38:	ec9ff06f          	j	12d00 <_vfprintf_r+0x1588>
   12e3c:	0b010613          	addi	a2,sp,176
   12e40:	000a0593          	mv	a1,s4
   12e44:	000b8513          	mv	a0,s7
   12e48:	71c050ef          	jal	18564 <__sprint_r>
   12e4c:	00050463          	beqz	a0,12e54 <_vfprintf_r+0x16dc>
   12e50:	c39fe06f          	j	11a88 <_vfprintf_r+0x310>
   12e54:	09812703          	lw	a4,152(sp)
   12e58:	07012683          	lw	a3,112(sp)
   12e5c:	0c013783          	ld	a5,192(sp)
   12e60:	000b0893          	mv	a7,s6
   12e64:	40e6873b          	subw	a4,a3,a4
   12e68:	b15ff06f          	j	1297c <_vfprintf_r+0x1204>
   12e6c:	0b010613          	addi	a2,sp,176
   12e70:	000a0593          	mv	a1,s4
   12e74:	000b8513          	mv	a0,s7
   12e78:	6ec050ef          	jal	18564 <__sprint_r>
   12e7c:	00050463          	beqz	a0,12e84 <_vfprintf_r+0x170c>
   12e80:	c09fe06f          	j	11a88 <_vfprintf_r+0x310>
   12e84:	09812403          	lw	s0,152(sp)
   12e88:	0c013783          	ld	a5,192(sp)
   12e8c:	000b0893          	mv	a7,s6
   12e90:	e60418e3          	bnez	s0,12d00 <_vfprintf_r+0x1588>
   12e94:	f95ff06f          	j	12e28 <_vfprintf_r+0x16b0>
   12e98:	001c7793          	andi	a5,s8,1
   12e9c:	00078e63          	beqz	a5,12eb8 <_vfprintf_r+0x1740>
   12ea0:	03000793          	li	a5,48
   12ea4:	0ef107a3          	sb	a5,239(sp)
   12ea8:	07813783          	ld	a5,120(sp)
   12eac:	0ef10913          	addi	s2,sp,239
   12eb0:	02f12023          	sw	a5,32(sp)
   12eb4:	cc1fe06f          	j	11b74 <_vfprintf_r+0x3fc>
   12eb8:	02012023          	sw	zero,32(sp)
   12ebc:	000b0913          	mv	s2,s6
   12ec0:	cb5fe06f          	j	11b74 <_vfprintf_r+0x3fc>
   12ec4:	0b010613          	addi	a2,sp,176
   12ec8:	000a0593          	mv	a1,s4
   12ecc:	000b8513          	mv	a0,s7
   12ed0:	694050ef          	jal	18564 <__sprint_r>
   12ed4:	00050463          	beqz	a0,12edc <_vfprintf_r+0x1764>
   12ed8:	bb1fe06f          	j	11a88 <_vfprintf_r+0x310>
   12edc:	0c013783          	ld	a5,192(sp)
   12ee0:	000b0893          	mv	a7,s6
   12ee4:	e14ff06f          	j	124f8 <_vfprintf_r+0xd80>
   12ee8:	00913823          	sd	s1,16(sp)
   12eec:	01013683          	ld	a3,16(sp)
   12ef0:	008787b3          	add	a5,a5,s0
   12ef4:	0017071b          	addiw	a4,a4,1
   12ef8:	00d8b023          	sd	a3,0(a7)
   12efc:	0088b423          	sd	s0,8(a7)
   12f00:	0cf13023          	sd	a5,192(sp)
   12f04:	0ae12c23          	sw	a4,184(sp)
   12f08:	00700693          	li	a3,7
   12f0c:	01088893          	addi	a7,a7,16
   12f10:	02e6d463          	ble	a4,a3,12f38 <_vfprintf_r+0x17c0>
   12f14:	0b010613          	addi	a2,sp,176
   12f18:	000a0593          	mv	a1,s4
   12f1c:	000b8513          	mv	a0,s7
   12f20:	644050ef          	jal	18564 <__sprint_r>
   12f24:	00050463          	beqz	a0,12f2c <_vfprintf_r+0x17b4>
   12f28:	b61fe06f          	j	11a88 <_vfprintf_r+0x310>
   12f2c:	0c013783          	ld	a5,192(sp)
   12f30:	0b812703          	lw	a4,184(sp)
   12f34:	000b0893          	mv	a7,s6
   12f38:	07012683          	lw	a3,112(sp)
   12f3c:	0017071b          	addiw	a4,a4,1
   12f40:	0128b023          	sd	s2,0(a7)
   12f44:	00f687b3          	add	a5,a3,a5
   12f48:	cecff06f          	j	12434 <_vfprintf_r+0xcbc>
   12f4c:	00090513          	mv	a0,s2
   12f50:	380050ef          	jal	182d0 <strlen>
   12f54:	0005079b          	sext.w	a5,a0
   12f58:	02f12023          	sw	a5,32(sp)
   12f5c:	00078d93          	mv	s11,a5
   12f60:	00013883          	ld	a7,0(sp)
   12f64:	0007c463          	bltz	a5,12f6c <_vfprintf_r+0x17f4>
   12f68:	cf5fe06f          	j	11c5c <_vfprintf_r+0x4e4>
   12f6c:	00000d93          	li	s11,0
   12f70:	cedfe06f          	j	11c5c <_vfprintf_r+0x4e4>
   12f74:	0c013783          	ld	a5,192(sp)
   12f78:	0b812703          	lw	a4,184(sp)
   12f7c:	05513823          	sd	s5,80(sp)
   12f80:	f6dfe06f          	j	11eec <_vfprintf_r+0x774>
   12f84:	00000413          	li	s0,0
   12f88:	fd0ff06f          	j	12758 <_vfprintf_r+0xfe0>
   12f8c:	00000413          	li	s0,0
   12f90:	9f1ff06f          	j	12980 <_vfprintf_r+0x1208>
   12f94:	02d00613          	li	a2,45
   12f98:	00100713          	li	a4,1
   12f9c:	00100693          	li	a3,1
   12fa0:	00d71463          	bne	a4,a3,12fa8 <_vfprintf_r+0x1830>
   12fa4:	d05fe06f          	j	11ca8 <_vfprintf_r+0x530>
   12fa8:	00200693          	li	a3,2
   12fac:	00d71463          	bne	a4,a3,12fb4 <_vfprintf_r+0x183c>
   12fb0:	a31fe06f          	j	119e0 <_vfprintf_r+0x268>
   12fb4:	b81fe06f          	j	11b34 <_vfprintf_r+0x3bc>
   12fb8:	00600713          	li	a4,6
   12fbc:	00877463          	bleu	s0,a4,12fc4 <_vfprintf_r+0x184c>
   12fc0:	00070413          	mv	s0,a4
   12fc4:	02812023          	sw	s0,32(sp)
   12fc8:	00040d93          	mv	s11,s0
   12fcc:	32044a63          	bltz	s0,13300 <_vfprintf_r+0x1b88>
   12fd0:	0001b937          	lui	s2,0x1b
   12fd4:	01b12423          	sw	s11,8(sp)
   12fd8:	03913423          	sd	s9,40(sp)
   12fdc:	00000613          	li	a2,0
   12fe0:	00000413          	li	s0,0
   12fe4:	04012623          	sw	zero,76(sp)
   12fe8:	4e890913          	addi	s2,s2,1256 # 1b4e8 <zeroes.4137+0x80>
   12fec:	e45fe06f          	j	11e30 <_vfprintf_r+0x6b8>
   12ff0:	0b812703          	lw	a4,184(sp)
   12ff4:	05513823          	sd	s5,80(sp)
   12ff8:	91cff06f          	j	12114 <_vfprintf_r+0x99c>
   12ffc:	00070c13          	mv	s8,a4
   13000:	00000613          	li	a2,0
   13004:	00200713          	li	a4,2
   13008:	f95ff06f          	j	12f9c <_vfprintf_r+0x1824>
   1300c:	001c7793          	andi	a5,s8,1
   13010:	00b50733          	add	a4,a0,a1
   13014:	b8079ce3          	bnez	a5,12bac <_vfprintf_r+0x1434>
   13018:	0a813783          	ld	a5,168(sp)
   1301c:	bc1ff06f          	j	12bdc <_vfprintf_r+0x1464>
   13020:	02d00793          	li	a5,45
   13024:	08f107a3          	sb	a5,143(sp)
   13028:	02d00613          	li	a2,45
   1302c:	9f8ff06f          	j	12224 <_vfprintf_r+0xaac>
   13030:	0001b937          	lui	s2,0x1b
   13034:	4b090913          	addi	s2,s2,1200 # 1b4b0 <zeroes.4137+0x48>
   13038:	d95ff06f          	j	12dcc <_vfprintf_r+0x1654>
   1303c:	001c7793          	andi	a5,s8,1
   13040:	26079a63          	bnez	a5,132b4 <_vfprintf_r+0x1b3c>
   13044:	0a813783          	ld	a5,168(sp)
   13048:	412787b3          	sub	a5,a5,s2
   1304c:	06f12823          	sw	a5,112(sp)
   13050:	35ad9c63          	bne	s11,s10,133a8 <_vfprintf_r+0x1c30>
   13054:	09812783          	lw	a5,152(sp)
   13058:	ffd00713          	li	a4,-3
   1305c:	02e7cc63          	blt	a5,a4,13094 <_vfprintf_r+0x191c>
   13060:	02f44a63          	blt	s0,a5,13094 <_vfprintf_r+0x191c>
   13064:	04f12623          	sw	a5,76(sp)
   13068:	b9dff06f          	j	12c04 <_vfprintf_r+0x148c>
   1306c:	02d00713          	li	a4,45
   13070:	08e107a3          	sb	a4,143(sp)
   13074:	00f12423          	sw	a5,8(sp)
   13078:	00012c03          	lw	s8,0(sp)
   1307c:	02d00613          	li	a2,45
   13080:	00000413          	li	s0,0
   13084:	b0dfe06f          	j	11b90 <_vfprintf_r+0x418>
   13088:	0b812703          	lw	a4,184(sp)
   1308c:	00913823          	sd	s1,16(sp)
   13090:	d78ff06f          	j	12608 <_vfprintf_r+0xe90>
   13094:	ffed0d1b          	addiw	s10,s10,-2
   13098:	fff7879b          	addiw	a5,a5,-1
   1309c:	08f12c23          	sw	a5,152(sp)
   130a0:	0ba10023          	sb	s10,160(sp)
   130a4:	2c07c863          	bltz	a5,13374 <_vfprintf_r+0x1bfc>
   130a8:	02b00713          	li	a4,43
   130ac:	0ae100a3          	sb	a4,161(sp)
   130b0:	00900613          	li	a2,9
   130b4:	16f64463          	blt	a2,a5,1321c <_vfprintf_r+0x1aa4>
   130b8:	0307879b          	addiw	a5,a5,48
   130bc:	03000713          	li	a4,48
   130c0:	0af101a3          	sb	a5,163(sp)
   130c4:	0ae10123          	sb	a4,162(sp)
   130c8:	0a410793          	addi	a5,sp,164
   130cc:	0a010713          	addi	a4,sp,160
   130d0:	40e787bb          	subw	a5,a5,a4
   130d4:	07012703          	lw	a4,112(sp)
   130d8:	06f12a23          	sw	a5,116(sp)
   130dc:	00e787bb          	addw	a5,a5,a4
   130e0:	02f12023          	sw	a5,32(sp)
   130e4:	00100793          	li	a5,1
   130e8:	26e7d263          	ble	a4,a5,1334c <_vfprintf_r+0x1bd4>
   130ec:	02012783          	lw	a5,32(sp)
   130f0:	0017879b          	addiw	a5,a5,1
   130f4:	02f12023          	sw	a5,32(sp)
   130f8:	2607c463          	bltz	a5,13360 <_vfprintf_r+0x1be8>
   130fc:	04012623          	sw	zero,76(sp)
   13100:	b2dff06f          	j	12c2c <_vfprintf_r+0x14b4>
   13104:	00812423          	sw	s0,8(sp)
   13108:	02812023          	sw	s0,32(sp)
   1310c:	08f14603          	lbu	a2,143(sp)
   13110:	03913423          	sd	s9,40(sp)
   13114:	00000413          	li	s0,0
   13118:	04012623          	sw	zero,76(sp)
   1311c:	a71fe06f          	j	11b8c <_vfprintf_r+0x414>
   13120:	0b010613          	addi	a2,sp,176
   13124:	000a0593          	mv	a1,s4
   13128:	000b8513          	mv	a0,s7
   1312c:	438050ef          	jal	18564 <__sprint_r>
   13130:	00050463          	beqz	a0,13138 <_vfprintf_r+0x19c0>
   13134:	955fe06f          	j	11a88 <_vfprintf_r+0x310>
   13138:	09812403          	lw	s0,152(sp)
   1313c:	0c013783          	ld	a5,192(sp)
   13140:	0b812703          	lw	a4,184(sp)
   13144:	000b0893          	mv	a7,s6
   13148:	be9ff06f          	j	12d30 <_vfprintf_r+0x15b8>
   1314c:	9e0410e3          	bnez	s0,12b2c <_vfprintf_r+0x13b4>
   13150:	00090413          	mv	s0,s2
   13154:	9d9ff06f          	j	12b2c <_vfprintf_r+0x13b4>
   13158:	00600413          	li	s0,6
   1315c:	9d1ff06f          	j	12b2c <_vfprintf_r+0x13b4>
   13160:	228405d3          	fmv.d	fa1,fs0
   13164:	09810713          	addi	a4,sp,152
   13168:	0a810813          	addi	a6,sp,168
   1316c:	09c10793          	addi	a5,sp,156
   13170:	00040693          	mv	a3,s0
   13174:	00300613          	li	a2,3
   13178:	000b8513          	mv	a0,s7
   1317c:	01113423          	sd	a7,8(sp)
   13180:	14d000ef          	jal	13acc <_dtoa_r>
   13184:	00813883          	ld	a7,8(sp)
   13188:	00040713          	mv	a4,s0
   1318c:	00050913          	mv	s2,a0
   13190:	00e50733          	add	a4,a0,a4
   13194:	00040593          	mv	a1,s0
   13198:	00094683          	lbu	a3,0(s2)
   1319c:	03000793          	li	a5,48
   131a0:	14f68063          	beq	a3,a5,132e0 <_vfprintf_r+0x1b68>
   131a4:	09812583          	lw	a1,152(sp)
   131a8:	00b70733          	add	a4,a4,a1
   131ac:	a01ff06f          	j	12bac <_vfprintf_r+0x1434>
   131b0:	22841453          	fneg.d	fs0,fs0
   131b4:	02d00c93          	li	s9,45
   131b8:	991ff06f          	j	12b48 <_vfprintf_r+0x13d0>
   131bc:	04c12703          	lw	a4,76(sp)
   131c0:	00100793          	li	a5,1
   131c4:	1ae05263          	blez	a4,13368 <_vfprintf_r+0x1bf0>
   131c8:	07012703          	lw	a4,112(sp)
   131cc:	00e787bb          	addw	a5,a5,a4
   131d0:	02f12023          	sw	a5,32(sp)
   131d4:	0007ce63          	bltz	a5,131f0 <_vfprintf_r+0x1a78>
   131d8:	06700d13          	li	s10,103
   131dc:	a51ff06f          	j	12c2c <_vfprintf_r+0x14b4>
   131e0:	04c12783          	lw	a5,76(sp)
   131e4:	0017879b          	addiw	a5,a5,1
   131e8:	02f12023          	sw	a5,32(sp)
   131ec:	fe07d6e3          	bgez	a5,131d8 <_vfprintf_r+0x1a60>
   131f0:	00000793          	li	a5,0
   131f4:	06700d13          	li	s10,103
   131f8:	a35ff06f          	j	12c2c <_vfprintf_r+0x14b4>
   131fc:	09812783          	lw	a5,152(sp)
   13200:	04f12623          	sw	a5,76(sp)
   13204:	12f05263          	blez	a5,13328 <_vfprintf_r+0x1bb0>
   13208:	0a041e63          	bnez	s0,132c4 <_vfprintf_r+0x1b4c>
   1320c:	001c7c13          	andi	s8,s8,1
   13210:	0a0c1a63          	bnez	s8,132c4 <_vfprintf_r+0x1b4c>
   13214:	02f12023          	sw	a5,32(sp)
   13218:	a15ff06f          	j	12c2c <_vfprintf_r+0x14b4>
   1321c:	0af10593          	addi	a1,sp,175
   13220:	00058713          	mv	a4,a1
   13224:	00a00513          	li	a0,10
   13228:	02a7e6bb          	remw	a3,a5,a0
   1322c:	fff70713          	addi	a4,a4,-1
   13230:	02a7c7bb          	divw	a5,a5,a0
   13234:	0306869b          	addiw	a3,a3,48
   13238:	00d70023          	sb	a3,0(a4)
   1323c:	fef646e3          	blt	a2,a5,13228 <_vfprintf_r+0x1ab0>
   13240:	0307879b          	addiw	a5,a5,48
   13244:	0ff7f793          	andi	a5,a5,255
   13248:	fff70693          	addi	a3,a4,-1
   1324c:	fef70fa3          	sb	a5,-1(a4)
   13250:	16b6f863          	bleu	a1,a3,133c0 <_vfprintf_r+0x1c48>
   13254:	0a210613          	addi	a2,sp,162
   13258:	0080006f          	j	13260 <_vfprintf_r+0x1ae8>
   1325c:	0006c783          	lbu	a5,0(a3)
   13260:	00160613          	addi	a2,a2,1 # 6a00001 <_gp+0x69e2121>
   13264:	00168693          	addi	a3,a3,1
   13268:	fef60fa3          	sb	a5,-1(a2)
   1326c:	feb698e3          	bne	a3,a1,1325c <_vfprintf_r+0x1ae4>
   13270:	0b010793          	addi	a5,sp,176
   13274:	40e787b3          	sub	a5,a5,a4
   13278:	0a210713          	addi	a4,sp,162
   1327c:	00f707b3          	add	a5,a4,a5
   13280:	e4dff06f          	j	130cc <_vfprintf_r+0x1954>
   13284:	228405d3          	fmv.d	fa1,fs0
   13288:	0a810813          	addi	a6,sp,168
   1328c:	09c10793          	addi	a5,sp,156
   13290:	09810713          	addi	a4,sp,152
   13294:	00040693          	mv	a3,s0
   13298:	00300613          	li	a2,3
   1329c:	000b8513          	mv	a0,s7
   132a0:	01113423          	sd	a7,8(sp)
   132a4:	029000ef          	jal	13acc <_dtoa_r>
   132a8:	00813883          	ld	a7,8(sp)
   132ac:	00050913          	mv	s2,a0
   132b0:	00040593          	mv	a1,s0
   132b4:	04600793          	li	a5,70
   132b8:	00b90733          	add	a4,s2,a1
   132bc:	ecfd0ee3          	beq	s10,a5,13198 <_vfprintf_r+0x1a20>
   132c0:	8edff06f          	j	12bac <_vfprintf_r+0x1434>
   132c4:	04c12783          	lw	a5,76(sp)
   132c8:	0014041b          	addiw	s0,s0,1
   132cc:	008787bb          	addw	a5,a5,s0
   132d0:	02f12023          	sw	a5,32(sp)
   132d4:	9407dce3          	bgez	a5,12c2c <_vfprintf_r+0x14b4>
   132d8:	00000793          	li	a5,0
   132dc:	951ff06f          	j	12c2c <_vfprintf_r+0x14b4>
   132e0:	f20007d3          	fmv.d.x	fa5,zero
   132e4:	a2f427d3          	feq.d	a5,fs0,fa5
   132e8:	ea079ee3          	bnez	a5,131a4 <_vfprintf_r+0x1a2c>
   132ec:	00100793          	li	a5,1
   132f0:	40b785bb          	subw	a1,a5,a1
   132f4:	08b12c23          	sw	a1,152(sp)
   132f8:	00b70733          	add	a4,a4,a1
   132fc:	8b1ff06f          	j	12bac <_vfprintf_r+0x1434>
   13300:	00000d93          	li	s11,0
   13304:	ccdff06f          	j	12fd0 <_vfprintf_r+0x1858>
   13308:	02813783          	ld	a5,40(sp)
   1330c:	0007a403          	lw	s0,0(a5)
   13310:	00878793          	addi	a5,a5,8
   13314:	02f13423          	sd	a5,40(sp)
   13318:	00044463          	bltz	s0,13320 <_vfprintf_r+0x1ba8>
   1331c:	e18fe06f          	j	11934 <_vfprintf_r+0x1bc>
   13320:	fff00413          	li	s0,-1
   13324:	e10fe06f          	j	11934 <_vfprintf_r+0x1bc>
   13328:	00041a63          	bnez	s0,1333c <_vfprintf_r+0x1bc4>
   1332c:	00100793          	li	a5,1
   13330:	00fc7c33          	and	s8,s8,a5
   13334:	02f12023          	sw	a5,32(sp)
   13338:	8e0c0ae3          	beqz	s8,12c2c <_vfprintf_r+0x14b4>
   1333c:	0024079b          	addiw	a5,s0,2
   13340:	02f12023          	sw	a5,32(sp)
   13344:	8e07d4e3          	bgez	a5,12c2c <_vfprintf_r+0x14b4>
   13348:	f91ff06f          	j	132d8 <_vfprintf_r+0x1b60>
   1334c:	00fc7c33          	and	s8,s8,a5
   13350:	d80c1ee3          	bnez	s8,130ec <_vfprintf_r+0x1974>
   13354:	02012703          	lw	a4,32(sp)
   13358:	00070793          	mv	a5,a4
   1335c:	da0750e3          	bgez	a4,130fc <_vfprintf_r+0x1984>
   13360:	00000793          	li	a5,0
   13364:	d99ff06f          	j	130fc <_vfprintf_r+0x1984>
   13368:	00200793          	li	a5,2
   1336c:	40e787bb          	subw	a5,a5,a4
   13370:	e59ff06f          	j	131c8 <_vfprintf_r+0x1a50>
   13374:	02d00713          	li	a4,45
   13378:	40f007bb          	negw	a5,a5
   1337c:	0ae100a3          	sb	a4,161(sp)
   13380:	d31ff06f          	j	130b0 <_vfprintf_r+0x1938>
   13384:	08b107a3          	sb	a1,143(sp)
   13388:	ed9fe06f          	j	12260 <_vfprintf_r+0xae8>
   1338c:	00000793          	li	a5,0
   13390:	891ff06f          	j	12c20 <_vfprintf_r+0x14a8>
   13394:	08b107a3          	sb	a1,143(sp)
   13398:	010c6c13          	ori	s8,s8,16
   1339c:	f2dfe06f          	j	122c8 <_vfprintf_r+0xb50>
   133a0:	08b107a3          	sb	a1,143(sp)
   133a4:	ef5fe06f          	j	12298 <_vfprintf_r+0xb20>
   133a8:	09812783          	lw	a5,152(sp)
   133ac:	cedff06f          	j	13098 <_vfprintf_r+0x1920>
   133b0:	08b107a3          	sb	a1,143(sp)
   133b4:	e2dfe06f          	j	121e0 <_vfprintf_r+0xa68>
   133b8:	08b107a3          	sb	a1,143(sp)
   133bc:	dd5fe06f          	j	12190 <_vfprintf_r+0xa18>
   133c0:	0a210793          	addi	a5,sp,162
   133c4:	d09ff06f          	j	130cc <_vfprintf_r+0x1954>
   133c8:	08b107a3          	sb	a1,143(sp)
   133cc:	f41fe06f          	j	1230c <_vfprintf_r+0xb94>
   133d0:	08b107a3          	sb	a1,143(sp)
   133d4:	f28fe06f          	j	11afc <_vfprintf_r+0x384>
   133d8:	08b107a3          	sb	a1,143(sp)
   133dc:	9c5fe06f          	j	11da0 <_vfprintf_r+0x628>
   133e0:	08b107a3          	sb	a1,143(sp)
   133e4:	010c6c13          	ori	s8,s8,16
   133e8:	979fe06f          	j	11d60 <_vfprintf_r+0x5e8>
   133ec:	08b107a3          	sb	a1,143(sp)
   133f0:	010c6c13          	ori	s8,s8,16
   133f4:	929fe06f          	j	11d1c <_vfprintf_r+0x5a4>
   133f8:	08b107a3          	sb	a1,143(sp)
   133fc:	881fe06f          	j	11c7c <_vfprintf_r+0x504>

0000000000013400 <vfprintf>:
   13400:	00060693          	mv	a3,a2
   13404:	00058613          	mv	a2,a1
   13408:	00050593          	mv	a1,a0
   1340c:	8101b503          	ld	a0,-2032(gp) # 1d6f0 <_impure_ptr>
   13410:	b68fe06f          	j	11778 <_vfprintf_r>

0000000000013414 <__sbprintf>:
   13414:	0105d783          	lhu	a5,16(a1)
   13418:	0ac5ae03          	lw	t3,172(a1)
   1341c:	0125d303          	lhu	t1,18(a1)
   13420:	0305b883          	ld	a7,48(a1)
   13424:	0405b803          	ld	a6,64(a1)
   13428:	b3010113          	addi	sp,sp,-1232
   1342c:	ffd7f793          	andi	a5,a5,-3
   13430:	40000713          	li	a4,1024
   13434:	4c813023          	sd	s0,1216(sp)
   13438:	00f11823          	sh	a5,16(sp)
   1343c:	00058413          	mv	s0,a1
   13440:	0b010793          	addi	a5,sp,176
   13444:	00010593          	mv	a1,sp
   13448:	4a913c23          	sd	s1,1208(sp)
   1344c:	4b213823          	sd	s2,1200(sp)
   13450:	4c113423          	sd	ra,1224(sp)
   13454:	00050913          	mv	s2,a0
   13458:	0bc12623          	sw	t3,172(sp)
   1345c:	00611923          	sh	t1,18(sp)
   13460:	03113823          	sd	a7,48(sp)
   13464:	05013023          	sd	a6,64(sp)
   13468:	00f13023          	sd	a5,0(sp)
   1346c:	00f13c23          	sd	a5,24(sp)
   13470:	00e12623          	sw	a4,12(sp)
   13474:	02e12023          	sw	a4,32(sp)
   13478:	02012423          	sw	zero,40(sp)
   1347c:	afcfe0ef          	jal	11778 <_vfprintf_r>
   13480:	00050493          	mv	s1,a0
   13484:	00054a63          	bltz	a0,13498 <__sbprintf+0x84>
   13488:	00010593          	mv	a1,sp
   1348c:	00090513          	mv	a0,s2
   13490:	1a5010ef          	jal	14e34 <_fflush_r>
   13494:	02051c63          	bnez	a0,134cc <__sbprintf+0xb8>
   13498:	01015783          	lhu	a5,16(sp)
   1349c:	0407f793          	andi	a5,a5,64
   134a0:	00078863          	beqz	a5,134b0 <__sbprintf+0x9c>
   134a4:	01045783          	lhu	a5,16(s0)
   134a8:	0407e793          	ori	a5,a5,64
   134ac:	00f41823          	sh	a5,16(s0)
   134b0:	4c813083          	ld	ra,1224(sp)
   134b4:	00048513          	mv	a0,s1
   134b8:	4c013403          	ld	s0,1216(sp)
   134bc:	4b813483          	ld	s1,1208(sp)
   134c0:	4b013903          	ld	s2,1200(sp)
   134c4:	4d010113          	addi	sp,sp,1232
   134c8:	00008067          	ret
   134cc:	fff00493          	li	s1,-1
   134d0:	fc9ff06f          	j	13498 <__sbprintf+0x84>

00000000000134d4 <__swsetup_r>:
   134d4:	8101b783          	ld	a5,-2032(gp) # 1d6f0 <_impure_ptr>
   134d8:	fe010113          	addi	sp,sp,-32
   134dc:	00813823          	sd	s0,16(sp)
   134e0:	00913423          	sd	s1,8(sp)
   134e4:	00113c23          	sd	ra,24(sp)
   134e8:	00050493          	mv	s1,a0
   134ec:	00058413          	mv	s0,a1
   134f0:	00078663          	beqz	a5,134fc <__swsetup_r+0x28>
   134f4:	0507a703          	lw	a4,80(a5)
   134f8:	0e070063          	beqz	a4,135d8 <__swsetup_r+0x104>
   134fc:	01041703          	lh	a4,16(s0)
   13500:	03071793          	slli	a5,a4,0x30
   13504:	0307d793          	srli	a5,a5,0x30
   13508:	0087f693          	andi	a3,a5,8
   1350c:	04068263          	beqz	a3,13550 <__swsetup_r+0x7c>
   13510:	01843683          	ld	a3,24(s0)
   13514:	06068663          	beqz	a3,13580 <__swsetup_r+0xac>
   13518:	0017f713          	andi	a4,a5,1
   1351c:	08071463          	bnez	a4,135a4 <__swsetup_r+0xd0>
   13520:	0027f793          	andi	a5,a5,2
   13524:	00000713          	li	a4,0
   13528:	00079463          	bnez	a5,13530 <__swsetup_r+0x5c>
   1352c:	02042703          	lw	a4,32(s0)
   13530:	00e42623          	sw	a4,12(s0)
   13534:	00000513          	li	a0,0
   13538:	08068263          	beqz	a3,135bc <__swsetup_r+0xe8>
   1353c:	01813083          	ld	ra,24(sp)
   13540:	01013403          	ld	s0,16(sp)
   13544:	00813483          	ld	s1,8(sp)
   13548:	02010113          	addi	sp,sp,32
   1354c:	00008067          	ret
   13550:	0107f693          	andi	a3,a5,16
   13554:	0c068663          	beqz	a3,13620 <__swsetup_r+0x14c>
   13558:	0047f793          	andi	a5,a5,4
   1355c:	08079463          	bnez	a5,135e4 <__swsetup_r+0x110>
   13560:	01843683          	ld	a3,24(s0)
   13564:	00876793          	ori	a5,a4,8
   13568:	0107979b          	slliw	a5,a5,0x10
   1356c:	4107d79b          	sraiw	a5,a5,0x10
   13570:	00f41823          	sh	a5,16(s0)
   13574:	03079793          	slli	a5,a5,0x30
   13578:	0307d793          	srli	a5,a5,0x30
   1357c:	f8069ee3          	bnez	a3,13518 <__swsetup_r+0x44>
   13580:	2807f713          	andi	a4,a5,640
   13584:	20000613          	li	a2,512
   13588:	f8c708e3          	beq	a4,a2,13518 <__swsetup_r+0x44>
   1358c:	00040593          	mv	a1,s0
   13590:	00048513          	mv	a0,s1
   13594:	5d1020ef          	jal	16364 <__smakebuf_r>
   13598:	01045783          	lhu	a5,16(s0)
   1359c:	01843683          	ld	a3,24(s0)
   135a0:	f79ff06f          	j	13518 <__swsetup_r+0x44>
   135a4:	02042783          	lw	a5,32(s0)
   135a8:	00042623          	sw	zero,12(s0)
   135ac:	00000513          	li	a0,0
   135b0:	40f007bb          	negw	a5,a5
   135b4:	02f42423          	sw	a5,40(s0)
   135b8:	f80692e3          	bnez	a3,1353c <__swsetup_r+0x68>
   135bc:	01041783          	lh	a5,16(s0)
   135c0:	0807f713          	andi	a4,a5,128
   135c4:	f6070ce3          	beqz	a4,1353c <__swsetup_r+0x68>
   135c8:	0407e793          	ori	a5,a5,64
   135cc:	00f41823          	sh	a5,16(s0)
   135d0:	fff00513          	li	a0,-1
   135d4:	f69ff06f          	j	1353c <__swsetup_r+0x68>
   135d8:	00078513          	mv	a0,a5
   135dc:	405010ef          	jal	151e0 <__sinit>
   135e0:	f1dff06f          	j	134fc <__swsetup_r+0x28>
   135e4:	05843583          	ld	a1,88(s0)
   135e8:	00058e63          	beqz	a1,13604 <__swsetup_r+0x130>
   135ec:	07440793          	addi	a5,s0,116
   135f0:	00f58863          	beq	a1,a5,13600 <__swsetup_r+0x12c>
   135f4:	00048513          	mv	a0,s1
   135f8:	541010ef          	jal	15338 <_free_r>
   135fc:	01041703          	lh	a4,16(s0)
   13600:	04043c23          	sd	zero,88(s0)
   13604:	01843683          	ld	a3,24(s0)
   13608:	fdb77713          	andi	a4,a4,-37
   1360c:	0107171b          	slliw	a4,a4,0x10
   13610:	4107571b          	sraiw	a4,a4,0x10
   13614:	00042423          	sw	zero,8(s0)
   13618:	00d43023          	sd	a3,0(s0)
   1361c:	f49ff06f          	j	13564 <__swsetup_r+0x90>
   13620:	00900793          	li	a5,9
   13624:	00f4a023          	sw	a5,0(s1)
   13628:	04076713          	ori	a4,a4,64
   1362c:	00e41823          	sh	a4,16(s0)
   13630:	fff00513          	li	a0,-1
   13634:	f09ff06f          	j	1353c <__swsetup_r+0x68>

0000000000013638 <__register_exitproc>:
   13638:	fd010113          	addi	sp,sp,-48
   1363c:	02813023          	sd	s0,32(sp)
   13640:	8081b403          	ld	s0,-2040(gp) # 1d6e8 <_global_impure_ptr>
   13644:	00913c23          	sd	s1,24(sp)
   13648:	00050493          	mv	s1,a0
   1364c:	1f843503          	ld	a0,504(s0)
   13650:	01213823          	sd	s2,16(sp)
   13654:	01313423          	sd	s3,8(sp)
   13658:	01413023          	sd	s4,0(sp)
   1365c:	02113423          	sd	ra,40(sp)
   13660:	00058913          	mv	s2,a1
   13664:	00060a13          	mv	s4,a2
   13668:	00068993          	mv	s3,a3
   1366c:	0c050663          	beqz	a0,13738 <__register_exitproc+0x100>
   13670:	00852703          	lw	a4,8(a0)
   13674:	01f00793          	li	a5,31
   13678:	0017059b          	addiw	a1,a4,1
   1367c:	04e7d063          	ble	a4,a5,136bc <__register_exitproc+0x84>
   13680:	000007b7          	lui	a5,0x0
   13684:	00078793          	mv	a5,a5
   13688:	0a078e63          	beqz	a5,13744 <__register_exitproc+0x10c>
   1368c:	31800513          	li	a0,792
   13690:	fffed317          	auipc	t1,0xfffed
   13694:	970300e7          	jalr	t1,-1680 # 0 <_ftext-0x10000>
   13698:	0a050663          	beqz	a0,13744 <__register_exitproc+0x10c>
   1369c:	1f843783          	ld	a5,504(s0)
   136a0:	00052423          	sw	zero,8(a0)
   136a4:	00100593          	li	a1,1
   136a8:	00f53023          	sd	a5,0(a0)
   136ac:	1ea43c23          	sd	a0,504(s0)
   136b0:	30052823          	sw	zero,784(a0)
   136b4:	30052a23          	sw	zero,788(a0)
   136b8:	00000713          	li	a4,0
   136bc:	00070793          	mv	a5,a4
   136c0:	02049e63          	bnez	s1,136fc <__register_exitproc+0xc4>
   136c4:	00278793          	addi	a5,a5,2 # 2 <_ftext-0xfffe>
   136c8:	00379793          	slli	a5,a5,0x3
   136cc:	00b52423          	sw	a1,8(a0)
   136d0:	00f50533          	add	a0,a0,a5
   136d4:	01253023          	sd	s2,0(a0)
   136d8:	00000513          	li	a0,0
   136dc:	02813083          	ld	ra,40(sp)
   136e0:	02013403          	ld	s0,32(sp)
   136e4:	01813483          	ld	s1,24(sp)
   136e8:	01013903          	ld	s2,16(sp)
   136ec:	00813983          	ld	s3,8(sp)
   136f0:	00013a03          	ld	s4,0(sp)
   136f4:	03010113          	addi	sp,sp,48
   136f8:	00008067          	ret
   136fc:	00371813          	slli	a6,a4,0x3
   13700:	01050833          	add	a6,a0,a6
   13704:	11483823          	sd	s4,272(a6)
   13708:	31052883          	lw	a7,784(a0)
   1370c:	00100613          	li	a2,1
   13710:	00e6173b          	sllw	a4,a2,a4
   13714:	00e8e633          	or	a2,a7,a4
   13718:	30c52823          	sw	a2,784(a0)
   1371c:	21383823          	sd	s3,528(a6)
   13720:	00200693          	li	a3,2
   13724:	fad490e3          	bne	s1,a3,136c4 <__register_exitproc+0x8c>
   13728:	31452683          	lw	a3,788(a0)
   1372c:	00e6e733          	or	a4,a3,a4
   13730:	30e52a23          	sw	a4,788(a0)
   13734:	f91ff06f          	j	136c4 <__register_exitproc+0x8c>
   13738:	20040513          	addi	a0,s0,512
   1373c:	1ea43c23          	sd	a0,504(s0)
   13740:	f31ff06f          	j	13670 <__register_exitproc+0x38>
   13744:	fff00513          	li	a0,-1
   13748:	f95ff06f          	j	136dc <__register_exitproc+0xa4>

000000000001374c <__call_exitprocs>:
   1374c:	fa010113          	addi	sp,sp,-96
   13750:	03413823          	sd	s4,48(sp)
   13754:	8081ba03          	ld	s4,-2040(gp) # 1d6e8 <_global_impure_ptr>
   13758:	03313c23          	sd	s3,56(sp)
   1375c:	000009b7          	lui	s3,0x0
   13760:	04913423          	sd	s1,72(sp)
   13764:	05213023          	sd	s2,64(sp)
   13768:	03513423          	sd	s5,40(sp)
   1376c:	01713c23          	sd	s7,24(sp)
   13770:	01813823          	sd	s8,16(sp)
   13774:	04113c23          	sd	ra,88(sp)
   13778:	04813823          	sd	s0,80(sp)
   1377c:	03613023          	sd	s6,32(sp)
   13780:	01913423          	sd	s9,8(sp)
   13784:	01a13023          	sd	s10,0(sp)
   13788:	00050913          	mv	s2,a0
   1378c:	00058b93          	mv	s7,a1
   13790:	1f8a0a93          	addi	s5,s4,504
   13794:	00100493          	li	s1,1
   13798:	fff00c13          	li	s8,-1
   1379c:	00098993          	mv	s3,s3
   137a0:	1f8a3b03          	ld	s6,504(s4)
   137a4:	0c0b0663          	beqz	s6,13870 <__call_exitprocs+0x124>
   137a8:	000a8d13          	mv	s10,s5
   137ac:	008b2403          	lw	s0,8(s6)
   137b0:	fff4041b          	addiw	s0,s0,-1
   137b4:	02045263          	bgez	s0,137d8 <__call_exitprocs+0x8c>
   137b8:	08c0006f          	j	13844 <__call_exitprocs+0xf8>
   137bc:	02040793          	addi	a5,s0,32
   137c0:	00379793          	slli	a5,a5,0x3
   137c4:	00fb07b3          	add	a5,s6,a5
   137c8:	1107b783          	ld	a5,272(a5)
   137cc:	00fb8a63          	beq	s7,a5,137e0 <__call_exitprocs+0x94>
   137d0:	fff4041b          	addiw	s0,s0,-1
   137d4:	07840863          	beq	s0,s8,13844 <__call_exitprocs+0xf8>
   137d8:	00040713          	mv	a4,s0
   137dc:	fe0b90e3          	bnez	s7,137bc <__call_exitprocs+0x70>
   137e0:	008b2783          	lw	a5,8(s6)
   137e4:	00371713          	slli	a4,a4,0x3
   137e8:	00eb0733          	add	a4,s6,a4
   137ec:	fff7879b          	addiw	a5,a5,-1
   137f0:	01073683          	ld	a3,16(a4)
   137f4:	0a878e63          	beq	a5,s0,138b0 <__call_exitprocs+0x164>
   137f8:	00073823          	sd	zero,16(a4)
   137fc:	fc068ae3          	beqz	a3,137d0 <__call_exitprocs+0x84>
   13800:	310b2783          	lw	a5,784(s6)
   13804:	0084963b          	sllw	a2,s1,s0
   13808:	008b2c83          	lw	s9,8(s6)
   1380c:	00f677b3          	and	a5,a2,a5
   13810:	08078c63          	beqz	a5,138a8 <__call_exitprocs+0x15c>
   13814:	314b2783          	lw	a5,788(s6)
   13818:	00f67633          	and	a2,a2,a5
   1381c:	08061e63          	bnez	a2,138b8 <__call_exitprocs+0x16c>
   13820:	11073583          	ld	a1,272(a4)
   13824:	00090513          	mv	a0,s2
   13828:	000680e7          	jalr	a3
   1382c:	008b2783          	lw	a5,8(s6)
   13830:	f79798e3          	bne	a5,s9,137a0 <__call_exitprocs+0x54>
   13834:	000d3783          	ld	a5,0(s10)
   13838:	f76794e3          	bne	a5,s6,137a0 <__call_exitprocs+0x54>
   1383c:	fff4041b          	addiw	s0,s0,-1
   13840:	f9841ce3          	bne	s0,s8,137d8 <__call_exitprocs+0x8c>
   13844:	02098663          	beqz	s3,13870 <__call_exitprocs+0x124>
   13848:	008b2783          	lw	a5,8(s6)
   1384c:	06079c63          	bnez	a5,138c4 <__call_exitprocs+0x178>
   13850:	000b3783          	ld	a5,0(s6)
   13854:	08078263          	beqz	a5,138d8 <__call_exitprocs+0x18c>
   13858:	000b0513          	mv	a0,s6
   1385c:	00fd3023          	sd	a5,0(s10)
   13860:	fffec317          	auipc	t1,0xfffec
   13864:	7a0300e7          	jalr	t1,1952 # 0 <_ftext-0x10000>
   13868:	000d3b03          	ld	s6,0(s10)
   1386c:	f40b10e3          	bnez	s6,137ac <__call_exitprocs+0x60>
   13870:	05813083          	ld	ra,88(sp)
   13874:	05013403          	ld	s0,80(sp)
   13878:	04813483          	ld	s1,72(sp)
   1387c:	04013903          	ld	s2,64(sp)
   13880:	03813983          	ld	s3,56(sp)
   13884:	03013a03          	ld	s4,48(sp)
   13888:	02813a83          	ld	s5,40(sp)
   1388c:	02013b03          	ld	s6,32(sp)
   13890:	01813b83          	ld	s7,24(sp)
   13894:	01013c03          	ld	s8,16(sp)
   13898:	00813c83          	ld	s9,8(sp)
   1389c:	00013d03          	ld	s10,0(sp)
   138a0:	06010113          	addi	sp,sp,96
   138a4:	00008067          	ret
   138a8:	000680e7          	jalr	a3
   138ac:	f81ff06f          	j	1382c <__call_exitprocs+0xe0>
   138b0:	008b2423          	sw	s0,8(s6)
   138b4:	f49ff06f          	j	137fc <__call_exitprocs+0xb0>
   138b8:	11073503          	ld	a0,272(a4)
   138bc:	000680e7          	jalr	a3
   138c0:	f6dff06f          	j	1382c <__call_exitprocs+0xe0>
   138c4:	000b3783          	ld	a5,0(s6)
   138c8:	000b0d13          	mv	s10,s6
   138cc:	00078b13          	mv	s6,a5
   138d0:	ec0b1ee3          	bnez	s6,137ac <__call_exitprocs+0x60>
   138d4:	f9dff06f          	j	13870 <__call_exitprocs+0x124>
   138d8:	00000793          	li	a5,0
   138dc:	fedff06f          	j	138c8 <__call_exitprocs+0x17c>

00000000000138e0 <quorem>:
   138e0:	fc010113          	addi	sp,sp,-64
   138e4:	03213023          	sd	s2,32(sp)
   138e8:	01452783          	lw	a5,20(a0)
   138ec:	0145a903          	lw	s2,20(a1)
   138f0:	02113c23          	sd	ra,56(sp)
   138f4:	02813823          	sd	s0,48(sp)
   138f8:	02913423          	sd	s1,40(sp)
   138fc:	01313c23          	sd	s3,24(sp)
   13900:	01413823          	sd	s4,16(sp)
   13904:	01513423          	sd	s5,8(sp)
   13908:	1b27ce63          	blt	a5,s2,13ac4 <quorem+0x1e4>
   1390c:	fff9091b          	addiw	s2,s2,-1
   13910:	00090f13          	mv	t5,s2
   13914:	002f1f13          	slli	t5,t5,0x2
   13918:	01858413          	addi	s0,a1,24
   1391c:	01e409b3          	add	s3,s0,t5
   13920:	01850a13          	addi	s4,a0,24
   13924:	01ea0f33          	add	t5,s4,t5
   13928:	0009a783          	lw	a5,0(s3) # 0 <_ftext-0x10000>
   1392c:	000f2483          	lw	s1,0(t5)
   13930:	0017879b          	addiw	a5,a5,1
   13934:	02f4d4bb          	divuw	s1,s1,a5
   13938:	0a048e63          	beqz	s1,139f4 <quorem+0x114>
   1393c:	00010337          	lui	t1,0x10
   13940:	00040e93          	mv	t4,s0
   13944:	000a0e13          	mv	t3,s4
   13948:	00000613          	li	a2,0
   1394c:	00000713          	li	a4,0
   13950:	fff3031b          	addiw	t1,t1,-1
   13954:	004e8e93          	addi	t4,t4,4
   13958:	ffcea803          	lw	a6,-4(t4)
   1395c:	000e2683          	lw	a3,0(t3)
   13960:	004e0e13          	addi	t3,t3,4
   13964:	006878b3          	and	a7,a6,t1
   13968:	029888bb          	mulw	a7,a7,s1
   1396c:	0108581b          	srliw	a6,a6,0x10
   13970:	0066f7b3          	and	a5,a3,t1
   13974:	0106d69b          	srliw	a3,a3,0x10
   13978:	0298083b          	mulw	a6,a6,s1
   1397c:	00c888bb          	addw	a7,a7,a2
   13980:	0108d61b          	srliw	a2,a7,0x10
   13984:	0068f8b3          	and	a7,a7,t1
   13988:	4117073b          	subw	a4,a4,a7
   1398c:	00f707bb          	addw	a5,a4,a5
   13990:	4107d71b          	sraiw	a4,a5,0x10
   13994:	0067f7b3          	and	a5,a5,t1
   13998:	00c8063b          	addw	a2,a6,a2
   1399c:	00667833          	and	a6,a2,t1
   139a0:	410686bb          	subw	a3,a3,a6
   139a4:	00e6873b          	addw	a4,a3,a4
   139a8:	0107169b          	slliw	a3,a4,0x10
   139ac:	00f6e6b3          	or	a3,a3,a5
   139b0:	fede2e23          	sw	a3,-4(t3)
   139b4:	0106561b          	srliw	a2,a2,0x10
   139b8:	4107571b          	sraiw	a4,a4,0x10
   139bc:	f9d9fce3          	bleu	t4,s3,13954 <quorem+0x74>
   139c0:	000f2783          	lw	a5,0(t5)
   139c4:	02079863          	bnez	a5,139f4 <quorem+0x114>
   139c8:	ffcf0793          	addi	a5,t5,-4
   139cc:	02fa7263          	bleu	a5,s4,139f0 <quorem+0x110>
   139d0:	ffcf2703          	lw	a4,-4(t5)
   139d4:	00070863          	beqz	a4,139e4 <quorem+0x104>
   139d8:	0180006f          	j	139f0 <quorem+0x110>
   139dc:	0007a703          	lw	a4,0(a5)
   139e0:	00071863          	bnez	a4,139f0 <quorem+0x110>
   139e4:	ffc78793          	addi	a5,a5,-4
   139e8:	fff9091b          	addiw	s2,s2,-1
   139ec:	fefa68e3          	bltu	s4,a5,139dc <quorem+0xfc>
   139f0:	01252a23          	sw	s2,20(a0)
   139f4:	00050a93          	mv	s5,a0
   139f8:	66d030ef          	jal	17864 <__mcmp>
   139fc:	0a054063          	bltz	a0,13a9c <quorem+0x1bc>
   13a00:	000105b7          	lui	a1,0x10
   13a04:	0014849b          	addiw	s1,s1,1
   13a08:	000a0613          	mv	a2,s4
   13a0c:	00000793          	li	a5,0
   13a10:	fff5859b          	addiw	a1,a1,-1
   13a14:	00440413          	addi	s0,s0,4
   13a18:	ffc42683          	lw	a3,-4(s0)
   13a1c:	00062703          	lw	a4,0(a2)
   13a20:	00460613          	addi	a2,a2,4
   13a24:	00b6f833          	and	a6,a3,a1
   13a28:	410787bb          	subw	a5,a5,a6
   13a2c:	00b77833          	and	a6,a4,a1
   13a30:	010787bb          	addw	a5,a5,a6
   13a34:	0106d69b          	srliw	a3,a3,0x10
   13a38:	0107571b          	srliw	a4,a4,0x10
   13a3c:	40d7073b          	subw	a4,a4,a3
   13a40:	4107d69b          	sraiw	a3,a5,0x10
   13a44:	00d706bb          	addw	a3,a4,a3
   13a48:	0106981b          	slliw	a6,a3,0x10
   13a4c:	00b7f733          	and	a4,a5,a1
   13a50:	00e86733          	or	a4,a6,a4
   13a54:	fee62e23          	sw	a4,-4(a2)
   13a58:	4106d79b          	sraiw	a5,a3,0x10
   13a5c:	fa89fce3          	bleu	s0,s3,13a14 <quorem+0x134>
   13a60:	00291713          	slli	a4,s2,0x2
   13a64:	00ea0733          	add	a4,s4,a4
   13a68:	00072783          	lw	a5,0(a4)
   13a6c:	02079863          	bnez	a5,13a9c <quorem+0x1bc>
   13a70:	ffc70793          	addi	a5,a4,-4
   13a74:	02fa7263          	bleu	a5,s4,13a98 <quorem+0x1b8>
   13a78:	ffc72703          	lw	a4,-4(a4)
   13a7c:	00070863          	beqz	a4,13a8c <quorem+0x1ac>
   13a80:	0180006f          	j	13a98 <quorem+0x1b8>
   13a84:	0007a703          	lw	a4,0(a5)
   13a88:	00071863          	bnez	a4,13a98 <quorem+0x1b8>
   13a8c:	ffc78793          	addi	a5,a5,-4
   13a90:	fff9091b          	addiw	s2,s2,-1
   13a94:	fefa68e3          	bltu	s4,a5,13a84 <quorem+0x1a4>
   13a98:	012aaa23          	sw	s2,20(s5)
   13a9c:	00048513          	mv	a0,s1
   13aa0:	03813083          	ld	ra,56(sp)
   13aa4:	03013403          	ld	s0,48(sp)
   13aa8:	02813483          	ld	s1,40(sp)
   13aac:	02013903          	ld	s2,32(sp)
   13ab0:	01813983          	ld	s3,24(sp)
   13ab4:	01013a03          	ld	s4,16(sp)
   13ab8:	00813a83          	ld	s5,8(sp)
   13abc:	04010113          	addi	sp,sp,64
   13ac0:	00008067          	ret
   13ac4:	00000513          	li	a0,0
   13ac8:	fd9ff06f          	j	13aa0 <quorem+0x1c0>

0000000000013acc <_dtoa_r>:
   13acc:	e20585d3          	fmv.x.d	a1,fa1
   13ad0:	06053883          	ld	a7,96(a0)
   13ad4:	f3010113          	addi	sp,sp,-208
   13ad8:	0c813023          	sd	s0,192(sp)
   13adc:	0a913c23          	sd	s1,184(sp)
   13ae0:	0b313423          	sd	s3,168(sp)
   13ae4:	09613823          	sd	s6,144(sp)
   13ae8:	07913c23          	sd	s9,120(sp)
   13aec:	07a13823          	sd	s10,112(sp)
   13af0:	0c113423          	sd	ra,200(sp)
   13af4:	0b213823          	sd	s2,176(sp)
   13af8:	0b413023          	sd	s4,160(sp)
   13afc:	09513c23          	sd	s5,152(sp)
   13b00:	09713423          	sd	s7,136(sp)
   13b04:	09813023          	sd	s8,128(sp)
   13b08:	07b13423          	sd	s11,104(sp)
   13b0c:	00e13023          	sd	a4,0(sp)
   13b10:	00050413          	mv	s0,a0
   13b14:	00060993          	mv	s3,a2
   13b18:	00068c93          	mv	s9,a3
   13b1c:	00078493          	mv	s1,a5
   13b20:	00080b13          	mv	s6,a6
   13b24:	00058d13          	mv	s10,a1
   13b28:	02088263          	beqz	a7,13b4c <_dtoa_r+0x80>
   13b2c:	06852603          	lw	a2,104(a0)
   13b30:	00100693          	li	a3,1
   13b34:	00088593          	mv	a1,a7
   13b38:	00c696bb          	sllw	a3,a3,a2
   13b3c:	00c8a423          	sw	a2,8(a7)
   13b40:	00d8a623          	sw	a3,12(a7)
   13b44:	4d4030ef          	jal	17018 <_Bfree>
   13b48:	06043023          	sd	zero,96(s0)
   13b4c:	420d5913          	srai	s2,s10,0x20
   13b50:	0c094063          	bltz	s2,13c10 <_dtoa_r+0x144>
   13b54:	0004a023          	sw	zero,0(s1)
   13b58:	7ff007b7          	lui	a5,0x7ff00
   13b5c:	00f976b3          	and	a3,s2,a5
   13b60:	06f68a63          	beq	a3,a5,13bd4 <_dtoa_r+0x108>
   13b64:	f20007d3          	fmv.d.x	fa5,zero
   13b68:	f20d0753          	fmv.d.x	fa4,s10
   13b6c:	a2f727d3          	feq.d	a5,fa4,fa5
   13b70:	0c078463          	beqz	a5,13c38 <_dtoa_r+0x16c>
   13b74:	00013703          	ld	a4,0(sp)
   13b78:	00100793          	li	a5,1
   13b7c:	00f72023          	sw	a5,0(a4)
   13b80:	480b0a63          	beqz	s6,14014 <_dtoa_r+0x548>
   13b84:	0001b7b7          	lui	a5,0x1b
   13b88:	4f178793          	addi	a5,a5,1265 # 1b4f1 <zeroes.4137+0x89>
   13b8c:	0001b537          	lui	a0,0x1b
   13b90:	00fb3023          	sd	a5,0(s6)
   13b94:	4f050513          	addi	a0,a0,1264 # 1b4f0 <zeroes.4137+0x88>
   13b98:	0c813083          	ld	ra,200(sp)
   13b9c:	0c013403          	ld	s0,192(sp)
   13ba0:	0b813483          	ld	s1,184(sp)
   13ba4:	0b013903          	ld	s2,176(sp)
   13ba8:	0a813983          	ld	s3,168(sp)
   13bac:	0a013a03          	ld	s4,160(sp)
   13bb0:	09813a83          	ld	s5,152(sp)
   13bb4:	09013b03          	ld	s6,144(sp)
   13bb8:	08813b83          	ld	s7,136(sp)
   13bbc:	08013c03          	ld	s8,128(sp)
   13bc0:	07813c83          	ld	s9,120(sp)
   13bc4:	07013d03          	ld	s10,112(sp)
   13bc8:	06813d83          	ld	s11,104(sp)
   13bcc:	0d010113          	addi	sp,sp,208
   13bd0:	00008067          	ret
   13bd4:	00013703          	ld	a4,0(sp)
   13bd8:	000027b7          	lui	a5,0x2
   13bdc:	70f7879b          	addiw	a5,a5,1807
   13be0:	00f72023          	sw	a5,0(a4)
   13be4:	00cd1793          	slli	a5,s10,0xc
   13be8:	3e079863          	bnez	a5,13fd8 <_dtoa_r+0x50c>
   13bec:	0001b537          	lui	a0,0x1b
   13bf0:	4f850513          	addi	a0,a0,1272 # 1b4f8 <zeroes.4137+0x90>
   13bf4:	fa0b02e3          	beqz	s6,13b98 <_dtoa_r+0xcc>
   13bf8:	00354703          	lbu	a4,3(a0)
   13bfc:	00350793          	addi	a5,a0,3
   13c00:	00070463          	beqz	a4,13c08 <_dtoa_r+0x13c>
   13c04:	00850793          	addi	a5,a0,8
   13c08:	00fb3023          	sd	a5,0(s6)
   13c0c:	f8dff06f          	j	13b98 <_dtoa_r+0xcc>
   13c10:	800007b7          	lui	a5,0x80000
   13c14:	fff7c793          	not	a5,a5
   13c18:	020d1713          	slli	a4,s10,0x20
   13c1c:	00f97933          	and	s2,s2,a5
   13c20:	02091793          	slli	a5,s2,0x20
   13c24:	02075713          	srli	a4,a4,0x20
   13c28:	00100693          	li	a3,1
   13c2c:	00d4a023          	sw	a3,0(s1)
   13c30:	00f76d33          	or	s10,a4,a5
   13c34:	f25ff06f          	j	13b58 <_dtoa_r+0x8c>
   13c38:	f20d05d3          	fmv.d.x	fa1,s10
   13c3c:	05810693          	addi	a3,sp,88
   13c40:	05c10613          	addi	a2,sp,92
   13c44:	00040513          	mv	a0,s0
   13c48:	05c040ef          	jal	17ca4 <__d2b>
   13c4c:	02a13023          	sd	a0,32(sp)
   13c50:	0149581b          	srliw	a6,s2,0x14
   13c54:	38081863          	bnez	a6,13fe4 <_dtoa_r+0x518>
   13c58:	05812603          	lw	a2,88(sp)
   13c5c:	05c12803          	lw	a6,92(sp)
   13c60:	02000793          	li	a5,32
   13c64:	0106083b          	addw	a6,a2,a6
   13c68:	4328069b          	addiw	a3,a6,1074
   13c6c:	6ad7de63          	ble	a3,a5,14328 <_dtoa_r+0x85c>
   13c70:	04000593          	li	a1,64
   13c74:	4128049b          	addiw	s1,a6,1042
   13c78:	000d079b          	sext.w	a5,s10
   13c7c:	40d585bb          	subw	a1,a1,a3
   13c80:	0097d7bb          	srlw	a5,a5,s1
   13c84:	00b914bb          	sllw	s1,s2,a1
   13c88:	0097e4b3          	or	s1,a5,s1
   13c8c:	d21487d3          	fcvt.d.wu	fa5,s1
   13c90:	fe1006b7          	lui	a3,0xfe100
   13c94:	fff8081b          	addiw	a6,a6,-1
   13c98:	e20784d3          	fmv.x.d	s1,fa5
   13c9c:	00100913          	li	s2,1
   13ca0:	4204d793          	srai	a5,s1,0x20
   13ca4:	00d787bb          	addw	a5,a5,a3
   13ca8:	02049493          	slli	s1,s1,0x20
   13cac:	02079793          	slli	a5,a5,0x20
   13cb0:	0204d493          	srli	s1,s1,0x20
   13cb4:	00f4e4b3          	or	s1,s1,a5
   13cb8:	0001d7b7          	lui	a5,0x1d
   13cbc:	7587b787          	fld	fa5,1880(a5) # 1d758 <__wctomb+0x48>
   13cc0:	f2048753          	fmv.d.x	fa4,s1
   13cc4:	0001d7b7          	lui	a5,0x1d
   13cc8:	0af77653          	fsub.d	fa2,fa4,fa5
   13ccc:	7687b787          	fld	fa5,1896(a5) # 1d768 <__wctomb+0x58>
   13cd0:	0001d7b7          	lui	a5,0x1d
   13cd4:	7607b687          	fld	fa3,1888(a5) # 1d760 <__wctomb+0x50>
   13cd8:	0001d7b7          	lui	a5,0x1d
   13cdc:	d2080753          	fcvt.d.w	fa4,a6
   13ce0:	7ad677c3          	fmadd.d	fa5,fa2,fa3,fa5
   13ce4:	7707b687          	fld	fa3,1904(a5) # 1d770 <__wctomb+0x60>
   13ce8:	7ad777c3          	fmadd.d	fa5,fa4,fa3,fa5
   13cec:	f2000753          	fmv.d.x	fa4,zero
   13cf0:	a2e797d3          	flt.d	a5,fa5,fa4
   13cf4:	c2079bd3          	fcvt.w.d	s7,fa5,rtz
   13cf8:	5e079e63          	bnez	a5,142f4 <_dtoa_r+0x828>
   13cfc:	00100793          	li	a5,1
   13d00:	02f12823          	sw	a5,48(sp)
   13d04:	01600793          	li	a5,22
   13d08:	0377e663          	bltu	a5,s7,13d34 <_dtoa_r+0x268>
   13d0c:	0001b7b7          	lui	a5,0x1b
   13d10:	003b9693          	slli	a3,s7,0x3
   13d14:	1d878793          	addi	a5,a5,472 # 1b1d8 <__mprec_tens>
   13d18:	00f687b3          	add	a5,a3,a5
   13d1c:	0007b787          	fld	fa5,0(a5)
   13d20:	f20d0753          	fmv.d.x	fa4,s10
   13d24:	a2f717d3          	flt.d	a5,fa4,fa5
   13d28:	60078863          	beqz	a5,14338 <_dtoa_r+0x86c>
   13d2c:	fffb8b9b          	addiw	s7,s7,-1
   13d30:	02012823          	sw	zero,48(sp)
   13d34:	4106083b          	subw	a6,a2,a6
   13d38:	fff80d9b          	addiw	s11,a6,-1
   13d3c:	00000813          	li	a6,0
   13d40:	2e0dc063          	bltz	s11,14020 <_dtoa_r+0x554>
   13d44:	5c0bc263          	bltz	s7,14308 <_dtoa_r+0x83c>
   13d48:	017d8dbb          	addw	s11,s11,s7
   13d4c:	03712423          	sw	s7,40(sp)
   13d50:	00000c13          	li	s8,0
   13d54:	00900793          	li	a5,9
   13d58:	2d37ea63          	bltu	a5,s3,1402c <_dtoa_r+0x560>
   13d5c:	00500793          	li	a5,5
   13d60:	00100a13          	li	s4,1
   13d64:	0137d663          	ble	s3,a5,13d70 <_dtoa_r+0x2a4>
   13d68:	ffc9899b          	addiw	s3,s3,-4
   13d6c:	00000a13          	li	s4,0
   13d70:	00300793          	li	a5,3
   13d74:	2af982e3          	beq	s3,a5,14818 <_dtoa_r+0xd4c>
   13d78:	1f37dce3          	ble	s3,a5,14770 <_dtoa_r+0xca4>
   13d7c:	00400793          	li	a5,4
   13d80:	0cf98ae3          	beq	s3,a5,14654 <_dtoa_r+0xb88>
   13d84:	00100793          	li	a5,1
   13d88:	00f12823          	sw	a5,16(sp)
   13d8c:	00500793          	li	a5,5
   13d90:	1ef996e3          	bne	s3,a5,1477c <_dtoa_r+0xcb0>
   13d94:	019b87bb          	addw	a5,s7,s9
   13d98:	00178a9b          	addiw	s5,a5,1
   13d9c:	02f12a23          	sw	a5,52(sp)
   13da0:	000a8513          	mv	a0,s5
   13da4:	000a8493          	mv	s1,s5
   13da8:	1b505ee3          	blez	s5,14764 <_dtoa_r+0xc98>
   13dac:	06042423          	sw	zero,104(s0)
   13db0:	01f00793          	li	a5,31
   13db4:	00000593          	li	a1,0
   13db8:	02a7f463          	bleu	a0,a5,13de0 <_dtoa_r+0x314>
   13dbc:	00100613          	li	a2,1
   13dc0:	00400693          	li	a3,4
   13dc4:	0016969b          	slliw	a3,a3,0x1
   13dc8:	00068793          	mv	a5,a3
   13dcc:	01c78793          	addi	a5,a5,28
   13dd0:	00060593          	mv	a1,a2
   13dd4:	0016061b          	addiw	a2,a2,1
   13dd8:	fef576e3          	bleu	a5,a0,13dc4 <_dtoa_r+0x2f8>
   13ddc:	06b42423          	sw	a1,104(s0)
   13de0:	00040513          	mv	a0,s0
   13de4:	03013c23          	sd	a6,56(sp)
   13de8:	184030ef          	jal	16f6c <_Balloc>
   13dec:	00a13423          	sd	a0,8(sp)
   13df0:	06a43023          	sd	a0,96(s0)
   13df4:	00e00793          	li	a5,14
   13df8:	03813803          	ld	a6,56(sp)
   13dfc:	2697e463          	bltu	a5,s1,14064 <_dtoa_r+0x598>
   13e00:	260a0263          	beqz	s4,14064 <_dtoa_r+0x598>
   13e04:	03a13c23          	sd	s10,56(sp)
   13e08:	317054e3          	blez	s7,14910 <_dtoa_r+0xe44>
   13e0c:	00fbf713          	andi	a4,s7,15
   13e10:	00371693          	slli	a3,a4,0x3
   13e14:	0001b737          	lui	a4,0x1b
   13e18:	404bd79b          	sraiw	a5,s7,0x4
   13e1c:	1d870713          	addi	a4,a4,472 # 1b1d8 <__mprec_tens>
   13e20:	00e68733          	add	a4,a3,a4
   13e24:	0107f693          	andi	a3,a5,16
   13e28:	00073687          	fld	fa3,0(a4)
   13e2c:	f20d07d3          	fmv.d.x	fa5,s10
   13e30:	00200713          	li	a4,2
   13e34:	00068c63          	beqz	a3,13e4c <_dtoa_r+0x380>
   13e38:	0001b737          	lui	a4,0x1b
   13e3c:	2e873707          	fld	fa4,744(a4) # 1b2e8 <__mprec_bigtens+0x20>
   13e40:	00f7f793          	andi	a5,a5,15
   13e44:	00300713          	li	a4,3
   13e48:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   13e4c:	02078663          	beqz	a5,13e78 <_dtoa_r+0x3ac>
   13e50:	0001b6b7          	lui	a3,0x1b
   13e54:	2c868693          	addi	a3,a3,712 # 1b2c8 <__mprec_bigtens>
   13e58:	0017f613          	andi	a2,a5,1
   13e5c:	4017d79b          	sraiw	a5,a5,0x1
   13e60:	00060863          	beqz	a2,13e70 <_dtoa_r+0x3a4>
   13e64:	0006b707          	fld	fa4,0(a3)
   13e68:	0017071b          	addiw	a4,a4,1
   13e6c:	12e6f6d3          	fmul.d	fa3,fa3,fa4
   13e70:	00868693          	addi	a3,a3,8
   13e74:	fe0792e3          	bnez	a5,13e58 <_dtoa_r+0x38c>
   13e78:	1ad7f7d3          	fdiv.d	fa5,fa5,fa3
   13e7c:	03012783          	lw	a5,48(sp)
   13e80:	00078a63          	beqz	a5,13e94 <_dtoa_r+0x3c8>
   13e84:	0001d7b7          	lui	a5,0x1d
   13e88:	7287b707          	fld	fa4,1832(a5) # 1d728 <__wctomb+0x18>
   13e8c:	a2e797d3          	flt.d	a5,fa5,fa4
   13e90:	440790e3          	bnez	a5,14ad0 <_dtoa_r+0x1004>
   13e94:	0001d7b7          	lui	a5,0x1d
   13e98:	d20706d3          	fcvt.d.w	fa3,a4
   13e9c:	7807b707          	fld	fa4,1920(a5) # 1d780 <__wctomb+0x70>
   13ea0:	fcc006b7          	lui	a3,0xfcc00
   13ea4:	72f6f743          	fmadd.d	fa4,fa3,fa5,fa4
   13ea8:	e2070753          	fmv.x.d	a4,fa4
   13eac:	42075793          	srai	a5,a4,0x20
   13eb0:	00d787bb          	addw	a5,a5,a3
   13eb4:	02071713          	slli	a4,a4,0x20
   13eb8:	02079793          	slli	a5,a5,0x20
   13ebc:	02075713          	srli	a4,a4,0x20
   13ec0:	00f76733          	or	a4,a4,a5
   13ec4:	180a86e3          	beqz	s5,14850 <_dtoa_r+0xd84>
   13ec8:	000b8693          	mv	a3,s7
   13ecc:	000a8613          	mv	a2,s5
   13ed0:	01012783          	lw	a5,16(sp)
   13ed4:	300782e3          	beqz	a5,149d8 <_dtoa_r+0xf0c>
   13ed8:	fff6079b          	addiw	a5,a2,-1
   13edc:	0001b5b7          	lui	a1,0x1b
   13ee0:	1d858593          	addi	a1,a1,472 # 1b1d8 <__mprec_tens>
   13ee4:	00379793          	slli	a5,a5,0x3
   13ee8:	00b787b3          	add	a5,a5,a1
   13eec:	0001d5b7          	lui	a1,0x1d
   13ef0:	0007b687          	fld	fa3,0(a5)
   13ef4:	7205b707          	fld	fa4,1824(a1) # 1d720 <__wctomb+0x10>
   13ef8:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   13efc:	00813503          	ld	a0,8(sp)
   13f00:	1ad77753          	fdiv.d	fa4,fa4,fa3
   13f04:	d20786d3          	fcvt.d.w	fa3,a5
   13f08:	0307879b          	addiw	a5,a5,48
   13f0c:	0ff7f793          	andi	a5,a5,255
   13f10:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   13f14:	f20706d3          	fmv.d.x	fa3,a4
   13f18:	00f50023          	sb	a5,0(a0)
   13f1c:	00150493          	addi	s1,a0,1
   13f20:	0ad77753          	fsub.d	fa4,fa4,fa3
   13f24:	a2e79753          	flt.d	a4,fa5,fa4
   13f28:	08071063          	bnez	a4,13fa8 <_dtoa_r+0x4dc>
   13f2c:	0001d737          	lui	a4,0x1d
   13f30:	72873587          	fld	fa1,1832(a4) # 1d728 <__wctomb+0x18>
   13f34:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   13f38:	a2e69753          	flt.d	a4,fa3,fa4
   13f3c:	40071ae3          	bnez	a4,14b50 <_dtoa_r+0x1084>
   13f40:	00100793          	li	a5,1
   13f44:	1ac7d4e3          	ble	a2,a5,148ec <_dtoa_r+0xe20>
   13f48:	0001d7b7          	lui	a5,0x1d
   13f4c:	ffe6061b          	addiw	a2,a2,-2
   13f50:	02061613          	slli	a2,a2,0x20
   13f54:	7787b607          	fld	fa2,1912(a5) # 1d778 <__wctomb+0x68>
   13f58:	00813783          	ld	a5,8(sp)
   13f5c:	02065613          	srli	a2,a2,0x20
   13f60:	00260613          	addi	a2,a2,2
   13f64:	00c78633          	add	a2,a5,a2
   13f68:	0140006f          	j	13f7c <_dtoa_r+0x4b0>
   13f6c:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   13f70:	a2e69753          	flt.d	a4,fa3,fa4
   13f74:	3c071ee3          	bnez	a4,14b50 <_dtoa_r+0x1084>
   13f78:	16960ae3          	beq	a2,s1,148ec <_dtoa_r+0xe20>
   13f7c:	12c7f7d3          	fmul.d	fa5,fa5,fa2
   13f80:	12c77753          	fmul.d	fa4,fa4,fa2
   13f84:	00148493          	addi	s1,s1,1
   13f88:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   13f8c:	d20786d3          	fcvt.d.w	fa3,a5
   13f90:	0307879b          	addiw	a5,a5,48
   13f94:	0ff7f793          	andi	a5,a5,255
   13f98:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   13f9c:	fef48fa3          	sb	a5,-1(s1)
   13fa0:	a2e79753          	flt.d	a4,fa5,fa4
   13fa4:	fc0704e3          	beqz	a4,13f6c <_dtoa_r+0x4a0>
   13fa8:	00068b93          	mv	s7,a3
   13fac:	02013583          	ld	a1,32(sp)
   13fb0:	00040513          	mv	a0,s0
   13fb4:	001b8b9b          	addiw	s7,s7,1
   13fb8:	060030ef          	jal	17018 <_Bfree>
   13fbc:	00013783          	ld	a5,0(sp)
   13fc0:	00048023          	sb	zero,0(s1)
   13fc4:	0177a023          	sw	s7,0(a5)
   13fc8:	0c0b0ce3          	beqz	s6,148a0 <_dtoa_r+0xdd4>
   13fcc:	009b3023          	sd	s1,0(s6)
   13fd0:	00813503          	ld	a0,8(sp)
   13fd4:	bc5ff06f          	j	13b98 <_dtoa_r+0xcc>
   13fd8:	0001b537          	lui	a0,0x1b
   13fdc:	50850513          	addi	a0,a0,1288 # 1b508 <zeroes.4137+0xa0>
   13fe0:	c15ff06f          	j	13bf4 <_dtoa_r+0x128>
   13fe4:	00cd1793          	slli	a5,s10,0xc
   13fe8:	02c7d693          	srli	a3,a5,0x2c
   13fec:	3ff007b7          	lui	a5,0x3ff00
   13ff0:	00f6e7b3          	or	a5,a3,a5
   13ff4:	020d1493          	slli	s1,s10,0x20
   13ff8:	02079793          	slli	a5,a5,0x20
   13ffc:	0204d493          	srli	s1,s1,0x20
   14000:	00f4e4b3          	or	s1,s1,a5
   14004:	c018081b          	addiw	a6,a6,-1023
   14008:	05812603          	lw	a2,88(sp)
   1400c:	00000913          	li	s2,0
   14010:	ca9ff06f          	j	13cb8 <_dtoa_r+0x1ec>
   14014:	0001b537          	lui	a0,0x1b
   14018:	4f050513          	addi	a0,a0,1264 # 1b4f0 <zeroes.4137+0x88>
   1401c:	b7dff06f          	j	13b98 <_dtoa_r+0xcc>
   14020:	41b0083b          	negw	a6,s11
   14024:	00000d93          	li	s11,0
   14028:	d1dff06f          	j	13d44 <_dtoa_r+0x278>
   1402c:	06042423          	sw	zero,104(s0)
   14030:	00000593          	li	a1,0
   14034:	00040513          	mv	a0,s0
   14038:	03013c23          	sd	a6,56(sp)
   1403c:	731020ef          	jal	16f6c <_Balloc>
   14040:	03813803          	ld	a6,56(sp)
   14044:	fff00a93          	li	s5,-1
   14048:	00100793          	li	a5,1
   1404c:	00a13423          	sd	a0,8(sp)
   14050:	06a43023          	sd	a0,96(s0)
   14054:	03512a23          	sw	s5,52(sp)
   14058:	00000993          	li	s3,0
   1405c:	00000c93          	li	s9,0
   14060:	00f12823          	sw	a5,16(sp)
   14064:	05c12783          	lw	a5,92(sp)
   14068:	0e07ca63          	bltz	a5,1415c <_dtoa_r+0x690>
   1406c:	00e00693          	li	a3,14
   14070:	0f76c663          	blt	a3,s7,1415c <_dtoa_r+0x690>
   14074:	0001b7b7          	lui	a5,0x1b
   14078:	003b9693          	slli	a3,s7,0x3
   1407c:	1d878793          	addi	a5,a5,472 # 1b1d8 <__mprec_tens>
   14080:	00f687b3          	add	a5,a3,a5
   14084:	0007b687          	fld	fa3,0(a5)
   14088:	5e0cc663          	bltz	s9,14674 <_dtoa_r+0xba8>
   1408c:	f20d0653          	fmv.d.x	fa2,s10
   14090:	00813703          	ld	a4,8(sp)
   14094:	22d69553          	fneg.d	fa0,fa3
   14098:	1ad67753          	fdiv.d	fa4,fa2,fa3
   1409c:	00170493          	addi	s1,a4,1
   140a0:	c20717d3          	fcvt.w.d	a5,fa4,rtz
   140a4:	d20787d3          	fcvt.d.w	fa5,a5
   140a8:	0307869b          	addiw	a3,a5,48
   140ac:	00d70023          	sb	a3,0(a4)
   140b0:	00100713          	li	a4,1
   140b4:	62f577c3          	fmadd.d	fa5,fa0,fa5,fa2
   140b8:	2aea88e3          	beq	s5,a4,14b68 <_dtoa_r+0x109c>
   140bc:	0001d7b7          	lui	a5,0x1d
   140c0:	7787b587          	fld	fa1,1912(a5) # 1d778 <__wctomb+0x68>
   140c4:	f2000653          	fmv.d.x	fa2,zero
   140c8:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   140cc:	a2c7a7d3          	feq.d	a5,fa5,fa2
   140d0:	ec079ee3          	bnez	a5,13fac <_dtoa_r+0x4e0>
   140d4:	ffea869b          	addiw	a3,s5,-2
   140d8:	02069693          	slli	a3,a3,0x20
   140dc:	00813783          	ld	a5,8(sp)
   140e0:	0206d693          	srli	a3,a3,0x20
   140e4:	00268693          	addi	a3,a3,2 # fffffffffcc00002 <_gp+0xfffffffffcbe2122>
   140e8:	00d786b3          	add	a3,a5,a3
   140ec:	0100006f          	j	140fc <_dtoa_r+0x630>
   140f0:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   140f4:	a2c7a7d3          	feq.d	a5,fa5,fa2
   140f8:	ea079ae3          	bnez	a5,13fac <_dtoa_r+0x4e0>
   140fc:	1ad7f753          	fdiv.d	fa4,fa5,fa3
   14100:	00148493          	addi	s1,s1,1
   14104:	c20717d3          	fcvt.w.d	a5,fa4,rtz
   14108:	d2078753          	fcvt.d.w	fa4,a5
   1410c:	0307871b          	addiw	a4,a5,48
   14110:	fee48fa3          	sb	a4,-1(s1)
   14114:	7ae577c3          	fmadd.d	fa5,fa0,fa4,fa5
   14118:	fcd49ce3          	bne	s1,a3,140f0 <_dtoa_r+0x624>
   1411c:	02f7f7d3          	fadd.d	fa5,fa5,fa5
   14120:	a2f69753          	flt.d	a4,fa3,fa5
   14124:	7c070863          	beqz	a4,148f4 <_dtoa_r+0xe28>
   14128:	fff6c783          	lbu	a5,-1(a3)
   1412c:	00068493          	mv	s1,a3
   14130:	03900693          	li	a3,57
   14134:	0140006f          	j	14148 <_dtoa_r+0x67c>
   14138:	00813783          	ld	a5,8(sp)
   1413c:	02f70ce3          	beq	a4,a5,14974 <_dtoa_r+0xea8>
   14140:	fff74783          	lbu	a5,-1(a4)
   14144:	00070493          	mv	s1,a4
   14148:	fff48713          	addi	a4,s1,-1
   1414c:	fed786e3          	beq	a5,a3,14138 <_dtoa_r+0x66c>
   14150:	0017879b          	addiw	a5,a5,1
   14154:	00f70023          	sb	a5,0(a4)
   14158:	e55ff06f          	j	13fac <_dtoa_r+0x4e0>
   1415c:	01012703          	lw	a4,16(sp)
   14160:	1a070c63          	beqz	a4,14318 <_dtoa_r+0x84c>
   14164:	00100693          	li	a3,1
   14168:	5536d863          	ble	s3,a3,146b8 <_dtoa_r+0xbec>
   1416c:	fffa869b          	addiw	a3,s5,-1
   14170:	72dc4c63          	blt	s8,a3,148a8 <_dtoa_r+0xddc>
   14174:	40dc06bb          	subw	a3,s8,a3
   14178:	00080493          	mv	s1,a6
   1417c:	000a8793          	mv	a5,s5
   14180:	120ac2e3          	bltz	s5,14aa4 <_dtoa_r+0xfd8>
   14184:	00f8083b          	addw	a6,a6,a5
   14188:	00100593          	li	a1,1
   1418c:	00040513          	mv	a0,s0
   14190:	04d13423          	sd	a3,72(sp)
   14194:	05013023          	sd	a6,64(sp)
   14198:	03013c23          	sd	a6,56(sp)
   1419c:	00fd8dbb          	addw	s11,s11,a5
   141a0:	204030ef          	jal	173a4 <__i2b>
   141a4:	04013803          	ld	a6,64(sp)
   141a8:	04813683          	ld	a3,72(sp)
   141ac:	00050a13          	mv	s4,a0
   141b0:	00048e63          	beqz	s1,141cc <_dtoa_r+0x700>
   141b4:	01b05c63          	blez	s11,141cc <_dtoa_r+0x700>
   141b8:	00048793          	mv	a5,s1
   141bc:	489dc463          	blt	s11,s1,14644 <_dtoa_r+0xb78>
   141c0:	40f8083b          	subw	a6,a6,a5
   141c4:	40f484bb          	subw	s1,s1,a5
   141c8:	40fd8dbb          	subw	s11,s11,a5
   141cc:	02013903          	ld	s2,32(sp)
   141d0:	07805e63          	blez	s8,1424c <_dtoa_r+0x780>
   141d4:	01012783          	lw	a5,16(sp)
   141d8:	6a078463          	beqz	a5,14880 <_dtoa_r+0xdb4>
   141dc:	04068a63          	beqz	a3,14230 <_dtoa_r+0x764>
   141e0:	00068613          	mv	a2,a3
   141e4:	000a0593          	mv	a1,s4
   141e8:	00040513          	mv	a0,s0
   141ec:	05013023          	sd	a6,64(sp)
   141f0:	02d13c23          	sd	a3,56(sp)
   141f4:	3d8030ef          	jal	175cc <__pow5mult>
   141f8:	02013603          	ld	a2,32(sp)
   141fc:	00050593          	mv	a1,a0
   14200:	00050a13          	mv	s4,a0
   14204:	00040513          	mv	a0,s0
   14208:	1d0030ef          	jal	173d8 <__multiply>
   1420c:	03813683          	ld	a3,56(sp)
   14210:	02013583          	ld	a1,32(sp)
   14214:	00050913          	mv	s2,a0
   14218:	00040513          	mv	a0,s0
   1421c:	40dc0c3b          	subw	s8,s8,a3
   14220:	5f9020ef          	jal	17018 <_Bfree>
   14224:	04013803          	ld	a6,64(sp)
   14228:	020c0263          	beqz	s8,1424c <_dtoa_r+0x780>
   1422c:	03213023          	sd	s2,32(sp)
   14230:	02013583          	ld	a1,32(sp)
   14234:	000c0613          	mv	a2,s8
   14238:	00040513          	mv	a0,s0
   1423c:	03013c23          	sd	a6,56(sp)
   14240:	38c030ef          	jal	175cc <__pow5mult>
   14244:	03813803          	ld	a6,56(sp)
   14248:	00050913          	mv	s2,a0
   1424c:	00100593          	li	a1,1
   14250:	00040513          	mv	a0,s0
   14254:	03013023          	sd	a6,32(sp)
   14258:	14c030ef          	jal	173a4 <__i2b>
   1425c:	02812783          	lw	a5,40(sp)
   14260:	00050c13          	mv	s8,a0
   14264:	02013803          	ld	a6,32(sp)
   14268:	0c078c63          	beqz	a5,14340 <_dtoa_r+0x874>
   1426c:	00078613          	mv	a2,a5
   14270:	00050593          	mv	a1,a0
   14274:	00040513          	mv	a0,s0
   14278:	354030ef          	jal	175cc <__pow5mult>
   1427c:	00100793          	li	a5,1
   14280:	00050c13          	mv	s8,a0
   14284:	02013803          	ld	a6,32(sp)
   14288:	3d37c263          	blt	a5,s3,1464c <_dtoa_r+0xb80>
   1428c:	00cd1793          	slli	a5,s10,0xc
   14290:	3a079e63          	bnez	a5,1464c <_dtoa_r+0xb80>
   14294:	420d5693          	srai	a3,s10,0x20
   14298:	7ff007b7          	lui	a5,0x7ff00
   1429c:	00f6f7b3          	and	a5,a3,a5
   142a0:	02012023          	sw	zero,32(sp)
   142a4:	00078a63          	beqz	a5,142b8 <_dtoa_r+0x7ec>
   142a8:	00100793          	li	a5,1
   142ac:	0018081b          	addiw	a6,a6,1
   142b0:	001d8d9b          	addiw	s11,s11,1
   142b4:	02f12023          	sw	a5,32(sp)
   142b8:	02812783          	lw	a5,40(sp)
   142bc:	00100513          	li	a0,1
   142c0:	08078863          	beqz	a5,14350 <_dtoa_r+0x884>
   142c4:	014c2783          	lw	a5,20(s8)
   142c8:	03013423          	sd	a6,40(sp)
   142cc:	fff7879b          	addiw	a5,a5,-1
   142d0:	00478793          	addi	a5,a5,4 # 7ff00004 <_gp+0x7fee2124>
   142d4:	00279793          	slli	a5,a5,0x2
   142d8:	00fc07b3          	add	a5,s8,a5
   142dc:	0087a503          	lw	a0,8(a5)
   142e0:	799020ef          	jal	17278 <__hi0bits>
   142e4:	02000793          	li	a5,32
   142e8:	40a7853b          	subw	a0,a5,a0
   142ec:	02813803          	ld	a6,40(sp)
   142f0:	0600006f          	j	14350 <_dtoa_r+0x884>
   142f4:	d20b8753          	fcvt.d.w	fa4,s7
   142f8:	a2e7a7d3          	feq.d	a5,fa5,fa4
   142fc:	0017b793          	seqz	a5,a5
   14300:	40fb8bbb          	subw	s7,s7,a5
   14304:	9f9ff06f          	j	13cfc <_dtoa_r+0x230>
   14308:	4178083b          	subw	a6,a6,s7
   1430c:	41700c3b          	negw	s8,s7
   14310:	02012423          	sw	zero,40(sp)
   14314:	a41ff06f          	j	13d54 <_dtoa_r+0x288>
   14318:	000c0693          	mv	a3,s8
   1431c:	00080493          	mv	s1,a6
   14320:	00000a13          	li	s4,0
   14324:	e8dff06f          	j	141b0 <_dtoa_r+0x6e4>
   14328:	000d049b          	sext.w	s1,s10
   1432c:	40d787bb          	subw	a5,a5,a3
   14330:	00f494bb          	sllw	s1,s1,a5
   14334:	959ff06f          	j	13c8c <_dtoa_r+0x1c0>
   14338:	02012823          	sw	zero,48(sp)
   1433c:	9f9ff06f          	j	13d34 <_dtoa_r+0x268>
   14340:	00100793          	li	a5,1
   14344:	0737d4e3          	ble	s3,a5,14bac <_dtoa_r+0x10e0>
   14348:	02012023          	sw	zero,32(sp)
   1434c:	00078513          	mv	a0,a5
   14350:	01b507bb          	addw	a5,a0,s11
   14354:	01f7f793          	andi	a5,a5,31
   14358:	1a078663          	beqz	a5,14504 <_dtoa_r+0xa38>
   1435c:	02000693          	li	a3,32
   14360:	40f686bb          	subw	a3,a3,a5
   14364:	00400613          	li	a2,4
   14368:	04d658e3          	ble	a3,a2,14bb8 <_dtoa_r+0x10ec>
   1436c:	01c00693          	li	a3,28
   14370:	40f687bb          	subw	a5,a3,a5
   14374:	00f8083b          	addw	a6,a6,a5
   14378:	00f484bb          	addw	s1,s1,a5
   1437c:	00fd8dbb          	addw	s11,s11,a5
   14380:	01005c63          	blez	a6,14398 <_dtoa_r+0x8cc>
   14384:	00090593          	mv	a1,s2
   14388:	00080613          	mv	a2,a6
   1438c:	00040513          	mv	a0,s0
   14390:	374030ef          	jal	17704 <__lshift>
   14394:	00050913          	mv	s2,a0
   14398:	01b05c63          	blez	s11,143b0 <_dtoa_r+0x8e4>
   1439c:	000c0593          	mv	a1,s8
   143a0:	000d8613          	mv	a2,s11
   143a4:	00040513          	mv	a0,s0
   143a8:	35c030ef          	jal	17704 <__lshift>
   143ac:	00050c13          	mv	s8,a0
   143b0:	03012783          	lw	a5,48(sp)
   143b4:	22079663          	bnez	a5,145e0 <_dtoa_r+0xb14>
   143b8:	3f505e63          	blez	s5,147b4 <_dtoa_r+0xce8>
   143bc:	01012783          	lw	a5,16(sp)
   143c0:	14078c63          	beqz	a5,14518 <_dtoa_r+0xa4c>
   143c4:	00905c63          	blez	s1,143dc <_dtoa_r+0x910>
   143c8:	000a0593          	mv	a1,s4
   143cc:	00048613          	mv	a2,s1
   143d0:	00040513          	mv	a0,s0
   143d4:	330030ef          	jal	17704 <__lshift>
   143d8:	00050a13          	mv	s4,a0
   143dc:	02012783          	lw	a5,32(sp)
   143e0:	000a0d93          	mv	s11,s4
   143e4:	5a079463          	bnez	a5,1498c <_dtoa_r+0xec0>
   143e8:	fffa849b          	addiw	s1,s5,-1
   143ec:	00813783          	ld	a5,8(sp)
   143f0:	02049493          	slli	s1,s1,0x20
   143f4:	0204d493          	srli	s1,s1,0x20
   143f8:	00148493          	addi	s1,s1,1
   143fc:	009784b3          	add	s1,a5,s1
   14400:	00078c93          	mv	s9,a5
   14404:	001d7793          	andi	a5,s10,1
   14408:	00f13823          	sd	a5,16(sp)
   1440c:	000c0593          	mv	a1,s8
   14410:	00090513          	mv	a0,s2
   14414:	cccff0ef          	jal	138e0 <quorem>
   14418:	00050d13          	mv	s10,a0
   1441c:	02a12823          	sw	a0,48(sp)
   14420:	000a0593          	mv	a1,s4
   14424:	00090513          	mv	a0,s2
   14428:	43c030ef          	jal	17864 <__mcmp>
   1442c:	00050a93          	mv	s5,a0
   14430:	000d8613          	mv	a2,s11
   14434:	000c0593          	mv	a1,s8
   14438:	00040513          	mv	a0,s0
   1443c:	488030ef          	jal	178c4 <__mdiff>
   14440:	01052683          	lw	a3,16(a0)
   14444:	00050793          	mv	a5,a0
   14448:	030d0d1b          	addiw	s10,s10,48
   1444c:	00100713          	li	a4,1
   14450:	00069e63          	bnez	a3,1446c <_dtoa_r+0x9a0>
   14454:	00050593          	mv	a1,a0
   14458:	02a13023          	sd	a0,32(sp)
   1445c:	00090513          	mv	a0,s2
   14460:	404030ef          	jal	17864 <__mcmp>
   14464:	02013783          	ld	a5,32(sp)
   14468:	00050713          	mv	a4,a0
   1446c:	00078593          	mv	a1,a5
   14470:	00040513          	mv	a0,s0
   14474:	02e13023          	sd	a4,32(sp)
   14478:	3a1020ef          	jal	17018 <_Bfree>
   1447c:	02013703          	ld	a4,32(sp)
   14480:	013767b3          	or	a5,a4,s3
   14484:	00079663          	bnez	a5,14490 <_dtoa_r+0x9c4>
   14488:	01012783          	lw	a5,16(sp)
   1448c:	24078063          	beqz	a5,146cc <_dtoa_r+0xc00>
   14490:	260ac463          	bltz	s5,146f8 <_dtoa_r+0xc2c>
   14494:	013aeab3          	or	s5,s5,s3
   14498:	000a9663          	bnez	s5,144a4 <_dtoa_r+0x9d8>
   1449c:	01012783          	lw	a5,16(sp)
   144a0:	24078c63          	beqz	a5,146f8 <_dtoa_r+0xc2c>
   144a4:	5ee04263          	bgtz	a4,14a88 <_dtoa_r+0xfbc>
   144a8:	001c8c93          	addi	s9,s9,1
   144ac:	ffac8fa3          	sb	s10,-1(s9)
   144b0:	5f948463          	beq	s1,s9,14a98 <_dtoa_r+0xfcc>
   144b4:	00090593          	mv	a1,s2
   144b8:	00000693          	li	a3,0
   144bc:	00a00613          	li	a2,10
   144c0:	00040513          	mv	a0,s0
   144c4:	379020ef          	jal	1703c <__multadd>
   144c8:	00050913          	mv	s2,a0
   144cc:	00000693          	li	a3,0
   144d0:	00a00613          	li	a2,10
   144d4:	000a0593          	mv	a1,s4
   144d8:	00040513          	mv	a0,s0
   144dc:	27ba0463          	beq	s4,s11,14744 <_dtoa_r+0xc78>
   144e0:	35d020ef          	jal	1703c <__multadd>
   144e4:	000d8593          	mv	a1,s11
   144e8:	00050a13          	mv	s4,a0
   144ec:	00000693          	li	a3,0
   144f0:	00a00613          	li	a2,10
   144f4:	00040513          	mv	a0,s0
   144f8:	345020ef          	jal	1703c <__multadd>
   144fc:	00050d93          	mv	s11,a0
   14500:	f0dff06f          	j	1440c <_dtoa_r+0x940>
   14504:	01c00793          	li	a5,28
   14508:	00f8083b          	addw	a6,a6,a5
   1450c:	00f484bb          	addw	s1,s1,a5
   14510:	00fd8dbb          	addw	s11,s11,a5
   14514:	e6dff06f          	j	14380 <_dtoa_r+0x8b4>
   14518:	00813483          	ld	s1,8(sp)
   1451c:	00100993          	li	s3,1
   14520:	0100006f          	j	14530 <_dtoa_r+0xa64>
   14524:	319020ef          	jal	1703c <__multadd>
   14528:	00050913          	mv	s2,a0
   1452c:	0019899b          	addiw	s3,s3,1
   14530:	000c0593          	mv	a1,s8
   14534:	00090513          	mv	a0,s2
   14538:	ba8ff0ef          	jal	138e0 <quorem>
   1453c:	03050d1b          	addiw	s10,a0,48
   14540:	00148493          	addi	s1,s1,1
   14544:	ffa48fa3          	sb	s10,-1(s1)
   14548:	00000693          	li	a3,0
   1454c:	00a00613          	li	a2,10
   14550:	00090593          	mv	a1,s2
   14554:	00040513          	mv	a0,s0
   14558:	fd59c6e3          	blt	s3,s5,14524 <_dtoa_r+0xa58>
   1455c:	00000993          	li	s3,0
   14560:	00090593          	mv	a1,s2
   14564:	00100613          	li	a2,1
   14568:	00040513          	mv	a0,s0
   1456c:	198030ef          	jal	17704 <__lshift>
   14570:	000c0593          	mv	a1,s8
   14574:	02a13023          	sd	a0,32(sp)
   14578:	2ec030ef          	jal	17864 <__mcmp>
   1457c:	34a05463          	blez	a0,148c4 <_dtoa_r+0xdf8>
   14580:	fff4c703          	lbu	a4,-1(s1)
   14584:	03900693          	li	a3,57
   14588:	0140006f          	j	1459c <_dtoa_r+0xad0>
   1458c:	00813703          	ld	a4,8(sp)
   14590:	26e78a63          	beq	a5,a4,14804 <_dtoa_r+0xd38>
   14594:	fff7c703          	lbu	a4,-1(a5)
   14598:	00078493          	mv	s1,a5
   1459c:	fff48793          	addi	a5,s1,-1
   145a0:	fed706e3          	beq	a4,a3,1458c <_dtoa_r+0xac0>
   145a4:	0017071b          	addiw	a4,a4,1
   145a8:	00e78023          	sb	a4,0(a5)
   145ac:	000c0593          	mv	a1,s8
   145b0:	00040513          	mv	a0,s0
   145b4:	265020ef          	jal	17018 <_Bfree>
   145b8:	9e0a0ae3          	beqz	s4,13fac <_dtoa_r+0x4e0>
   145bc:	00098a63          	beqz	s3,145d0 <_dtoa_r+0xb04>
   145c0:	01498863          	beq	s3,s4,145d0 <_dtoa_r+0xb04>
   145c4:	00098593          	mv	a1,s3
   145c8:	00040513          	mv	a0,s0
   145cc:	24d020ef          	jal	17018 <_Bfree>
   145d0:	000a0593          	mv	a1,s4
   145d4:	00040513          	mv	a0,s0
   145d8:	241020ef          	jal	17018 <_Bfree>
   145dc:	9d1ff06f          	j	13fac <_dtoa_r+0x4e0>
   145e0:	000c0593          	mv	a1,s8
   145e4:	00090513          	mv	a0,s2
   145e8:	27c030ef          	jal	17864 <__mcmp>
   145ec:	dc0556e3          	bgez	a0,143b8 <_dtoa_r+0x8ec>
   145f0:	00090593          	mv	a1,s2
   145f4:	00000693          	li	a3,0
   145f8:	00a00613          	li	a2,10
   145fc:	00040513          	mv	a0,s0
   14600:	23d020ef          	jal	1703c <__multadd>
   14604:	01012783          	lw	a5,16(sp)
   14608:	00050913          	mv	s2,a0
   1460c:	fffb8b9b          	addiw	s7,s7,-1
   14610:	56079063          	bnez	a5,14b70 <_dtoa_r+0x10a4>
   14614:	03412783          	lw	a5,52(sp)
   14618:	00078a93          	mv	s5,a5
   1461c:	eef04ee3          	bgtz	a5,14518 <_dtoa_r+0xa4c>
   14620:	00200793          	li	a5,2
   14624:	5937c063          	blt	a5,s3,14ba4 <_dtoa_r+0x10d8>
   14628:	000c0593          	mv	a1,s8
   1462c:	ab4ff0ef          	jal	138e0 <quorem>
   14630:	00813783          	ld	a5,8(sp)
   14634:	03050d1b          	addiw	s10,a0,48
   14638:	00178493          	addi	s1,a5,1
   1463c:	ffa48fa3          	sb	s10,-1(s1)
   14640:	f1dff06f          	j	1455c <_dtoa_r+0xa90>
   14644:	000d8793          	mv	a5,s11
   14648:	b79ff06f          	j	141c0 <_dtoa_r+0x6f4>
   1464c:	02012023          	sw	zero,32(sp)
   14650:	c75ff06f          	j	142c4 <_dtoa_r+0x7f8>
   14654:	00100793          	li	a5,1
   14658:	00f12823          	sw	a5,16(sp)
   1465c:	0f905c63          	blez	s9,14754 <_dtoa_r+0xc88>
   14660:	000c8513          	mv	a0,s9
   14664:	000c8493          	mv	s1,s9
   14668:	03912a23          	sw	s9,52(sp)
   1466c:	000c8a93          	mv	s5,s9
   14670:	f3cff06f          	j	13dac <_dtoa_r+0x2e0>
   14674:	a1504ce3          	bgtz	s5,1408c <_dtoa_r+0x5c0>
   14678:	1e0a9e63          	bnez	s5,14874 <_dtoa_r+0xda8>
   1467c:	0001d7b7          	lui	a5,0x1d
   14680:	7887b787          	fld	fa5,1928(a5) # 1d788 <__wctomb+0x78>
   14684:	00000c13          	li	s8,0
   14688:	00000a13          	li	s4,0
   1468c:	12f6f6d3          	fmul.d	fa3,fa3,fa5
   14690:	f20d07d3          	fmv.d.x	fa5,s10
   14694:	a2d78753          	fle.d	a4,fa5,fa3
   14698:	14070a63          	beqz	a4,147ec <_dtoa_r+0xd20>
   1469c:	00813483          	ld	s1,8(sp)
   146a0:	fffccb93          	not	s7,s9
   146a4:	000c0593          	mv	a1,s8
   146a8:	00040513          	mv	a0,s0
   146ac:	16d020ef          	jal	17018 <_Bfree>
   146b0:	8e0a0ee3          	beqz	s4,13fac <_dtoa_r+0x4e0>
   146b4:	f1dff06f          	j	145d0 <_dtoa_r+0xb04>
   146b8:	3e090c63          	beqz	s2,14ab0 <_dtoa_r+0xfe4>
   146bc:	4337879b          	addiw	a5,a5,1075
   146c0:	000c0693          	mv	a3,s8
   146c4:	00080493          	mv	s1,a6
   146c8:	abdff06f          	j	14184 <_dtoa_r+0x6b8>
   146cc:	03900793          	li	a5,57
   146d0:	04fd0a63          	beq	s10,a5,14724 <_dtoa_r+0xc58>
   146d4:	01505663          	blez	s5,146e0 <_dtoa_r+0xc14>
   146d8:	03012783          	lw	a5,48(sp)
   146dc:	03178d1b          	addiw	s10,a5,49
   146e0:	000a0993          	mv	s3,s4
   146e4:	001c8493          	addi	s1,s9,1
   146e8:	01ac8023          	sb	s10,0(s9)
   146ec:	000d8a13          	mv	s4,s11
   146f0:	03213023          	sd	s2,32(sp)
   146f4:	eb9ff06f          	j	145ac <_dtoa_r+0xae0>
   146f8:	fee054e3          	blez	a4,146e0 <_dtoa_r+0xc14>
   146fc:	00090593          	mv	a1,s2
   14700:	00100613          	li	a2,1
   14704:	00040513          	mv	a0,s0
   14708:	7fd020ef          	jal	17704 <__lshift>
   1470c:	000c0593          	mv	a1,s8
   14710:	00050913          	mv	s2,a0
   14714:	150030ef          	jal	17864 <__mcmp>
   14718:	44a05063          	blez	a0,14b58 <_dtoa_r+0x108c>
   1471c:	03900793          	li	a5,57
   14720:	fafd1ce3          	bne	s10,a5,146d8 <_dtoa_r+0xc0c>
   14724:	03900793          	li	a5,57
   14728:	000a0993          	mv	s3,s4
   1472c:	001c8493          	addi	s1,s9,1
   14730:	00fc8023          	sb	a5,0(s9)
   14734:	000d8a13          	mv	s4,s11
   14738:	03213023          	sd	s2,32(sp)
   1473c:	03900713          	li	a4,57
   14740:	e45ff06f          	j	14584 <_dtoa_r+0xab8>
   14744:	0f9020ef          	jal	1703c <__multadd>
   14748:	00050a13          	mv	s4,a0
   1474c:	00050d93          	mv	s11,a0
   14750:	cbdff06f          	j	1440c <_dtoa_r+0x940>
   14754:	00100493          	li	s1,1
   14758:	02912a23          	sw	s1,52(sp)
   1475c:	00048a93          	mv	s5,s1
   14760:	00048c93          	mv	s9,s1
   14764:	06042423          	sw	zero,104(s0)
   14768:	00000593          	li	a1,0
   1476c:	e74ff06f          	j	13de0 <_dtoa_r+0x314>
   14770:	00012823          	sw	zero,16(sp)
   14774:	00200793          	li	a5,2
   14778:	eef982e3          	beq	s3,a5,1465c <_dtoa_r+0xb90>
   1477c:	06042423          	sw	zero,104(s0)
   14780:	00000593          	li	a1,0
   14784:	00040513          	mv	a0,s0
   14788:	03013c23          	sd	a6,56(sp)
   1478c:	7e0020ef          	jal	16f6c <_Balloc>
   14790:	fff00a93          	li	s5,-1
   14794:	00100793          	li	a5,1
   14798:	00a13423          	sd	a0,8(sp)
   1479c:	06a43023          	sd	a0,96(s0)
   147a0:	03512a23          	sw	s5,52(sp)
   147a4:	00000c93          	li	s9,0
   147a8:	00f12823          	sw	a5,16(sp)
   147ac:	03813803          	ld	a6,56(sp)
   147b0:	8b5ff06f          	j	14064 <_dtoa_r+0x598>
   147b4:	00200793          	li	a5,2
   147b8:	c137d2e3          	ble	s3,a5,143bc <_dtoa_r+0x8f0>
   147bc:	300a9663          	bnez	s5,14ac8 <_dtoa_r+0xffc>
   147c0:	000c0593          	mv	a1,s8
   147c4:	00000693          	li	a3,0
   147c8:	00500613          	li	a2,5
   147cc:	00040513          	mv	a0,s0
   147d0:	06d020ef          	jal	1703c <__multadd>
   147d4:	00050593          	mv	a1,a0
   147d8:	00050c13          	mv	s8,a0
   147dc:	00090513          	mv	a0,s2
   147e0:	084030ef          	jal	17864 <__mcmp>
   147e4:	03213023          	sd	s2,32(sp)
   147e8:	eaa05ae3          	blez	a0,1469c <_dtoa_r+0xbd0>
   147ec:	00813703          	ld	a4,8(sp)
   147f0:	03100793          	li	a5,49
   147f4:	001b8b9b          	addiw	s7,s7,1
   147f8:	00170493          	addi	s1,a4,1
   147fc:	00f70023          	sb	a5,0(a4)
   14800:	ea5ff06f          	j	146a4 <_dtoa_r+0xbd8>
   14804:	00813703          	ld	a4,8(sp)
   14808:	03100793          	li	a5,49
   1480c:	001b8b9b          	addiw	s7,s7,1
   14810:	00f70023          	sb	a5,0(a4)
   14814:	d99ff06f          	j	145ac <_dtoa_r+0xae0>
   14818:	00012823          	sw	zero,16(sp)
   1481c:	d78ff06f          	j	13d94 <_dtoa_r+0x2c8>
   14820:	0001d7b7          	lui	a5,0x1d
   14824:	d20706d3          	fcvt.d.w	fa3,a4
   14828:	7807b707          	fld	fa4,1920(a5) # 1d780 <__wctomb+0x70>
   1482c:	fcc006b7          	lui	a3,0xfcc00
   14830:	72d7f743          	fmadd.d	fa4,fa5,fa3,fa4
   14834:	e2070753          	fmv.x.d	a4,fa4
   14838:	42075793          	srai	a5,a4,0x20
   1483c:	00d787bb          	addw	a5,a5,a3
   14840:	02071713          	slli	a4,a4,0x20
   14844:	02079793          	slli	a5,a5,0x20
   14848:	02075713          	srli	a4,a4,0x20
   1484c:	00f76733          	or	a4,a4,a5
   14850:	0001d7b7          	lui	a5,0x1d
   14854:	7887b707          	fld	fa4,1928(a5) # 1d788 <__wctomb+0x78>
   14858:	f20706d3          	fmv.d.x	fa3,a4
   1485c:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
   14860:	a2f697d3          	flt.d	a5,fa3,fa5
   14864:	16079463          	bnez	a5,149cc <_dtoa_r+0xf00>
   14868:	22d69753          	fneg.d	fa4,fa3
   1486c:	a2e797d3          	flt.d	a5,fa5,fa4
   14870:	06078e63          	beqz	a5,148ec <_dtoa_r+0xe20>
   14874:	00000c13          	li	s8,0
   14878:	00000a13          	li	s4,0
   1487c:	e21ff06f          	j	1469c <_dtoa_r+0xbd0>
   14880:	00090593          	mv	a1,s2
   14884:	000c0613          	mv	a2,s8
   14888:	00040513          	mv	a0,s0
   1488c:	03013023          	sd	a6,32(sp)
   14890:	53d020ef          	jal	175cc <__pow5mult>
   14894:	00050913          	mv	s2,a0
   14898:	02013803          	ld	a6,32(sp)
   1489c:	9b1ff06f          	j	1424c <_dtoa_r+0x780>
   148a0:	00813503          	ld	a0,8(sp)
   148a4:	af4ff06f          	j	13b98 <_dtoa_r+0xcc>
   148a8:	02812783          	lw	a5,40(sp)
   148ac:	41868c3b          	subw	s8,a3,s8
   148b0:	018787bb          	addw	a5,a5,s8
   148b4:	02f12423          	sw	a5,40(sp)
   148b8:	00068c13          	mv	s8,a3
   148bc:	00000693          	li	a3,0
   148c0:	8b9ff06f          	j	14178 <_dtoa_r+0x6ac>
   148c4:	00051663          	bnez	a0,148d0 <_dtoa_r+0xe04>
   148c8:	001d7d13          	andi	s10,s10,1
   148cc:	ca0d1ae3          	bnez	s10,14580 <_dtoa_r+0xab4>
   148d0:	03000693          	li	a3,48
   148d4:	0080006f          	j	148dc <_dtoa_r+0xe10>
   148d8:	00070493          	mv	s1,a4
   148dc:	fff4c783          	lbu	a5,-1(s1)
   148e0:	fff48713          	addi	a4,s1,-1
   148e4:	fed78ae3          	beq	a5,a3,148d8 <_dtoa_r+0xe0c>
   148e8:	cc5ff06f          	j	145ac <_dtoa_r+0xae0>
   148ec:	03813d03          	ld	s10,56(sp)
   148f0:	f74ff06f          	j	14064 <_dtoa_r+0x598>
   148f4:	a2f6a753          	feq.d	a4,fa3,fa5
   148f8:	00068493          	mv	s1,a3
   148fc:	ea070863          	beqz	a4,13fac <_dtoa_r+0x4e0>
   14900:	0017f793          	andi	a5,a5,1
   14904:	ea078463          	beqz	a5,13fac <_dtoa_r+0x4e0>
   14908:	fff6c783          	lbu	a5,-1(a3) # fffffffffcbfffff <_gp+0xfffffffffcbe211f>
   1490c:	825ff06f          	j	14130 <_dtoa_r+0x664>
   14910:	417007bb          	negw	a5,s7
   14914:	03813787          	fld	fa5,56(sp)
   14918:	00200713          	li	a4,2
   1491c:	d6078063          	beqz	a5,13e7c <_dtoa_r+0x3b0>
   14920:	00f7f693          	andi	a3,a5,15
   14924:	0001b637          	lui	a2,0x1b
   14928:	00369693          	slli	a3,a3,0x3
   1492c:	1d860613          	addi	a2,a2,472 # 1b1d8 <__mprec_tens>
   14930:	00c686b3          	add	a3,a3,a2
   14934:	0006b787          	fld	fa5,0(a3)
   14938:	03813707          	fld	fa4,56(sp)
   1493c:	4047d79b          	sraiw	a5,a5,0x4
   14940:	12f777d3          	fmul.d	fa5,fa4,fa5
   14944:	d2078c63          	beqz	a5,13e7c <_dtoa_r+0x3b0>
   14948:	0001b6b7          	lui	a3,0x1b
   1494c:	2c868693          	addi	a3,a3,712 # 1b2c8 <__mprec_bigtens>
   14950:	0017f613          	andi	a2,a5,1
   14954:	4017d79b          	sraiw	a5,a5,0x1
   14958:	00060863          	beqz	a2,14968 <_dtoa_r+0xe9c>
   1495c:	0006b707          	fld	fa4,0(a3)
   14960:	0017071b          	addiw	a4,a4,1
   14964:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   14968:	00868693          	addi	a3,a3,8
   1496c:	fe0792e3          	bnez	a5,14950 <_dtoa_r+0xe84>
   14970:	d0cff06f          	j	13e7c <_dtoa_r+0x3b0>
   14974:	00813683          	ld	a3,8(sp)
   14978:	03000793          	li	a5,48
   1497c:	001b8b9b          	addiw	s7,s7,1
   14980:	00f68023          	sb	a5,0(a3)
   14984:	fff4c783          	lbu	a5,-1(s1)
   14988:	fc8ff06f          	j	14150 <_dtoa_r+0x684>
   1498c:	008a2583          	lw	a1,8(s4)
   14990:	00040513          	mv	a0,s0
   14994:	5d8020ef          	jal	16f6c <_Balloc>
   14998:	014a2603          	lw	a2,20(s4)
   1499c:	00050493          	mv	s1,a0
   149a0:	010a0593          	addi	a1,s4,16
   149a4:	00260613          	addi	a2,a2,2
   149a8:	00261613          	slli	a2,a2,0x2
   149ac:	01050513          	addi	a0,a0,16
   149b0:	3b8020ef          	jal	16d68 <memcpy>
   149b4:	00100613          	li	a2,1
   149b8:	00048593          	mv	a1,s1
   149bc:	00040513          	mv	a0,s0
   149c0:	545020ef          	jal	17704 <__lshift>
   149c4:	00050d93          	mv	s11,a0
   149c8:	a21ff06f          	j	143e8 <_dtoa_r+0x91c>
   149cc:	00000c13          	li	s8,0
   149d0:	00000a13          	li	s4,0
   149d4:	e19ff06f          	j	147ec <_dtoa_r+0xd20>
   149d8:	fff6079b          	addiw	a5,a2,-1
   149dc:	0001b537          	lui	a0,0x1b
   149e0:	c20795d3          	fcvt.w.d	a1,fa5,rtz
   149e4:	00379793          	slli	a5,a5,0x3
   149e8:	1d850513          	addi	a0,a0,472 # 1b1d8 <__mprec_tens>
   149ec:	00a787b3          	add	a5,a5,a0
   149f0:	0007b707          	fld	fa4,0(a5)
   149f4:	00813783          	ld	a5,8(sp)
   149f8:	d20586d3          	fcvt.d.w	fa3,a1
   149fc:	f2070653          	fmv.d.x	fa2,a4
   14a00:	0305859b          	addiw	a1,a1,48
   14a04:	00b78023          	sb	a1,0(a5)
   14a08:	00178493          	addi	s1,a5,1
   14a0c:	00100793          	li	a5,1
   14a10:	12c77653          	fmul.d	fa2,fa4,fa2
   14a14:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   14a18:	04f60863          	beq	a2,a5,14a68 <_dtoa_r+0xf9c>
   14a1c:	ffe6061b          	addiw	a2,a2,-2
   14a20:	0001d7b7          	lui	a5,0x1d
   14a24:	02061593          	slli	a1,a2,0x20
   14a28:	7787b687          	fld	fa3,1912(a5) # 1d778 <__wctomb+0x68>
   14a2c:	00813783          	ld	a5,8(sp)
   14a30:	0205d593          	srli	a1,a1,0x20
   14a34:	00258513          	addi	a0,a1,2
   14a38:	00a78533          	add	a0,a5,a0
   14a3c:	00048613          	mv	a2,s1
   14a40:	12d7f7d3          	fmul.d	fa5,fa5,fa3
   14a44:	00160613          	addi	a2,a2,1
   14a48:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   14a4c:	d2078753          	fcvt.d.w	fa4,a5
   14a50:	0307879b          	addiw	a5,a5,48
   14a54:	fef60fa3          	sb	a5,-1(a2)
   14a58:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
   14a5c:	fea612e3          	bne	a2,a0,14a40 <_dtoa_r+0xf74>
   14a60:	00158593          	addi	a1,a1,1
   14a64:	00b484b3          	add	s1,s1,a1
   14a68:	0001d7b7          	lui	a5,0x1d
   14a6c:	7207b707          	fld	fa4,1824(a5) # 1d720 <__wctomb+0x10>
   14a70:	02e676d3          	fadd.d	fa3,fa2,fa4
   14a74:	a2f697d3          	flt.d	a5,fa3,fa5
   14a78:	0a078663          	beqz	a5,14b24 <_dtoa_r+0x1058>
   14a7c:	fff4c783          	lbu	a5,-1(s1)
   14a80:	00068b93          	mv	s7,a3
   14a84:	eacff06f          	j	14130 <_dtoa_r+0x664>
   14a88:	03900793          	li	a5,57
   14a8c:	c8fd0ce3          	beq	s10,a5,14724 <_dtoa_r+0xc58>
   14a90:	001d0d1b          	addiw	s10,s10,1
   14a94:	c4dff06f          	j	146e0 <_dtoa_r+0xc14>
   14a98:	000a0993          	mv	s3,s4
   14a9c:	000d8a13          	mv	s4,s11
   14aa0:	ac1ff06f          	j	14560 <_dtoa_r+0xa94>
   14aa4:	415804bb          	subw	s1,a6,s5
   14aa8:	00000793          	li	a5,0
   14aac:	ed8ff06f          	j	14184 <_dtoa_r+0x6b8>
   14ab0:	05812603          	lw	a2,88(sp)
   14ab4:	03600793          	li	a5,54
   14ab8:	000c0693          	mv	a3,s8
   14abc:	40c787bb          	subw	a5,a5,a2
   14ac0:	00080493          	mv	s1,a6
   14ac4:	ec0ff06f          	j	14184 <_dtoa_r+0x6b8>
   14ac8:	03213023          	sd	s2,32(sp)
   14acc:	bd1ff06f          	j	1469c <_dtoa_r+0xbd0>
   14ad0:	d40a88e3          	beqz	s5,14820 <_dtoa_r+0xd54>
   14ad4:	03412603          	lw	a2,52(sp)
   14ad8:	e0c05ae3          	blez	a2,148ec <_dtoa_r+0xe20>
   14adc:	0001d7b7          	lui	a5,0x1d
   14ae0:	7787b707          	fld	fa4,1912(a5) # 1d778 <__wctomb+0x68>
   14ae4:	0017071b          	addiw	a4,a4,1
   14ae8:	0001d7b7          	lui	a5,0x1d
   14aec:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   14af0:	d20706d3          	fcvt.d.w	fa3,a4
   14af4:	7807b707          	fld	fa4,1920(a5) # 1d780 <__wctomb+0x70>
   14af8:	fcc005b7          	lui	a1,0xfcc00
   14afc:	fffb869b          	addiw	a3,s7,-1
   14b00:	72d7f743          	fmadd.d	fa4,fa5,fa3,fa4
   14b04:	e2070753          	fmv.x.d	a4,fa4
   14b08:	42075793          	srai	a5,a4,0x20
   14b0c:	00b787bb          	addw	a5,a5,a1
   14b10:	02071713          	slli	a4,a4,0x20
   14b14:	02079793          	slli	a5,a5,0x20
   14b18:	02075713          	srli	a4,a4,0x20
   14b1c:	00f76733          	or	a4,a4,a5
   14b20:	bb0ff06f          	j	13ed0 <_dtoa_r+0x404>
   14b24:	0ac77753          	fsub.d	fa4,fa4,fa2
   14b28:	03000613          	li	a2,48
   14b2c:	a2e797d3          	flt.d	a5,fa5,fa4
   14b30:	00079663          	bnez	a5,14b3c <_dtoa_r+0x1070>
   14b34:	db9ff06f          	j	148ec <_dtoa_r+0xe20>
   14b38:	00070493          	mv	s1,a4
   14b3c:	fff4c783          	lbu	a5,-1(s1)
   14b40:	fff48713          	addi	a4,s1,-1
   14b44:	fec78ae3          	beq	a5,a2,14b38 <_dtoa_r+0x106c>
   14b48:	00068b93          	mv	s7,a3
   14b4c:	c60ff06f          	j	13fac <_dtoa_r+0x4e0>
   14b50:	00068b93          	mv	s7,a3
   14b54:	ddcff06f          	j	14130 <_dtoa_r+0x664>
   14b58:	b80514e3          	bnez	a0,146e0 <_dtoa_r+0xc14>
   14b5c:	001d7793          	andi	a5,s10,1
   14b60:	b80780e3          	beqz	a5,146e0 <_dtoa_r+0xc14>
   14b64:	bb9ff06f          	j	1471c <_dtoa_r+0xc50>
   14b68:	00048693          	mv	a3,s1
   14b6c:	db0ff06f          	j	1411c <_dtoa_r+0x650>
   14b70:	000a0593          	mv	a1,s4
   14b74:	00000693          	li	a3,0
   14b78:	00a00613          	li	a2,10
   14b7c:	00040513          	mv	a0,s0
   14b80:	4bc020ef          	jal	1703c <__multadd>
   14b84:	03412783          	lw	a5,52(sp)
   14b88:	00050a13          	mv	s4,a0
   14b8c:	00078a93          	mv	s5,a5
   14b90:	82f04ae3          	bgtz	a5,143c4 <_dtoa_r+0x8f8>
   14b94:	00200793          	li	a5,2
   14b98:	0137c663          	blt	a5,s3,14ba4 <_dtoa_r+0x10d8>
   14b9c:	03412a83          	lw	s5,52(sp)
   14ba0:	825ff06f          	j	143c4 <_dtoa_r+0x8f8>
   14ba4:	03412a83          	lw	s5,52(sp)
   14ba8:	c15ff06f          	j	147bc <_dtoa_r+0xcf0>
   14bac:	00cd1713          	slli	a4,s10,0xc
   14bb0:	ee070263          	beqz	a4,14294 <_dtoa_r+0x7c8>
   14bb4:	f94ff06f          	j	14348 <_dtoa_r+0x87c>
   14bb8:	fcc68463          	beq	a3,a2,14380 <_dtoa_r+0x8b4>
   14bbc:	03c00693          	li	a3,60
   14bc0:	40f687bb          	subw	a5,a3,a5
   14bc4:	945ff06f          	j	14508 <_dtoa_r+0xa3c>

0000000000014bc8 <__sflush_r>:
   14bc8:	01059683          	lh	a3,16(a1) # fffffffffcc00010 <_gp+0xfffffffffcbe2130>
   14bcc:	fd010113          	addi	sp,sp,-48
   14bd0:	00913c23          	sd	s1,24(sp)
   14bd4:	03069713          	slli	a4,a3,0x30
   14bd8:	03075713          	srli	a4,a4,0x30
   14bdc:	01313423          	sd	s3,8(sp)
   14be0:	02113423          	sd	ra,40(sp)
   14be4:	02813023          	sd	s0,32(sp)
   14be8:	01213823          	sd	s2,16(sp)
   14bec:	00877793          	andi	a5,a4,8
   14bf0:	00058493          	mv	s1,a1
   14bf4:	00050993          	mv	s3,a0
   14bf8:	0e079863          	bnez	a5,14ce8 <__sflush_r+0x120>
   14bfc:	000017b7          	lui	a5,0x1
   14c00:	8007879b          	addiw	a5,a5,-2048
   14c04:	00f6e7b3          	or	a5,a3,a5
   14c08:	0107979b          	slliw	a5,a5,0x10
   14c0c:	0085a703          	lw	a4,8(a1)
   14c10:	4107d79b          	sraiw	a5,a5,0x10
   14c14:	00f59823          	sh	a5,16(a1)
   14c18:	1ae05863          	blez	a4,14dc8 <__sflush_r+0x200>
   14c1c:	0484b703          	ld	a4,72(s1)
   14c20:	0a070463          	beqz	a4,14cc8 <__sflush_r+0x100>
   14c24:	03079793          	slli	a5,a5,0x30
   14c28:	0307d793          	srli	a5,a5,0x30
   14c2c:	0009a403          	lw	s0,0(s3)
   14c30:	03379693          	slli	a3,a5,0x33
   14c34:	0009a023          	sw	zero,0(s3)
   14c38:	1806de63          	bgez	a3,14dd4 <__sflush_r+0x20c>
   14c3c:	0904b603          	ld	a2,144(s1)
   14c40:	0047f793          	andi	a5,a5,4
   14c44:	00078e63          	beqz	a5,14c60 <__sflush_r+0x98>
   14c48:	0084a683          	lw	a3,8(s1)
   14c4c:	0584b783          	ld	a5,88(s1)
   14c50:	40d60633          	sub	a2,a2,a3
   14c54:	00078663          	beqz	a5,14c60 <__sflush_r+0x98>
   14c58:	0704a783          	lw	a5,112(s1)
   14c5c:	40f60633          	sub	a2,a2,a5
   14c60:	0304b583          	ld	a1,48(s1)
   14c64:	00000693          	li	a3,0
   14c68:	00098513          	mv	a0,s3
   14c6c:	000700e7          	jalr	a4
   14c70:	fff00793          	li	a5,-1
   14c74:	0ef50c63          	beq	a0,a5,14d6c <__sflush_r+0x1a4>
   14c78:	0104d683          	lhu	a3,16(s1)
   14c7c:	fffff7b7          	lui	a5,0xfffff
   14c80:	7ff7879b          	addiw	a5,a5,2047
   14c84:	0184b703          	ld	a4,24(s1)
   14c88:	00f6f7b3          	and	a5,a3,a5
   14c8c:	0107979b          	slliw	a5,a5,0x10
   14c90:	4107d79b          	sraiw	a5,a5,0x10
   14c94:	00e4b023          	sd	a4,0(s1)
   14c98:	00f49823          	sh	a5,16(s1)
   14c9c:	0004a423          	sw	zero,8(s1)
   14ca0:	03379713          	slli	a4,a5,0x33
   14ca4:	10074e63          	bltz	a4,14dc0 <__sflush_r+0x1f8>
   14ca8:	0584b583          	ld	a1,88(s1)
   14cac:	0089a023          	sw	s0,0(s3)
   14cb0:	00058c63          	beqz	a1,14cc8 <__sflush_r+0x100>
   14cb4:	07448793          	addi	a5,s1,116
   14cb8:	00f58663          	beq	a1,a5,14cc4 <__sflush_r+0xfc>
   14cbc:	00098513          	mv	a0,s3
   14cc0:	678000ef          	jal	15338 <_free_r>
   14cc4:	0404bc23          	sd	zero,88(s1)
   14cc8:	00000513          	li	a0,0
   14ccc:	02813083          	ld	ra,40(sp)
   14cd0:	02013403          	ld	s0,32(sp)
   14cd4:	01813483          	ld	s1,24(sp)
   14cd8:	01013903          	ld	s2,16(sp)
   14cdc:	00813983          	ld	s3,8(sp)
   14ce0:	03010113          	addi	sp,sp,48
   14ce4:	00008067          	ret
   14ce8:	0185b903          	ld	s2,24(a1)
   14cec:	fc090ee3          	beqz	s2,14cc8 <__sflush_r+0x100>
   14cf0:	0005b403          	ld	s0,0(a1)
   14cf4:	00377713          	andi	a4,a4,3
   14cf8:	0125b023          	sd	s2,0(a1)
   14cfc:	4124043b          	subw	s0,s0,s2
   14d00:	00000793          	li	a5,0
   14d04:	00071463          	bnez	a4,14d0c <__sflush_r+0x144>
   14d08:	0205a783          	lw	a5,32(a1)
   14d0c:	00f4a623          	sw	a5,12(s1)
   14d10:	00804863          	bgtz	s0,14d20 <__sflush_r+0x158>
   14d14:	fb5ff06f          	j	14cc8 <__sflush_r+0x100>
   14d18:	00a90933          	add	s2,s2,a0
   14d1c:	fa8056e3          	blez	s0,14cc8 <__sflush_r+0x100>
   14d20:	0404b783          	ld	a5,64(s1)
   14d24:	0304b583          	ld	a1,48(s1)
   14d28:	00040693          	mv	a3,s0
   14d2c:	00090613          	mv	a2,s2
   14d30:	00098513          	mv	a0,s3
   14d34:	000780e7          	jalr	a5
   14d38:	40a4043b          	subw	s0,s0,a0
   14d3c:	fca04ee3          	bgtz	a0,14d18 <__sflush_r+0x150>
   14d40:	0104d783          	lhu	a5,16(s1)
   14d44:	02813083          	ld	ra,40(sp)
   14d48:	fff00513          	li	a0,-1
   14d4c:	0407e793          	ori	a5,a5,64
   14d50:	00f49823          	sh	a5,16(s1)
   14d54:	02013403          	ld	s0,32(sp)
   14d58:	01813483          	ld	s1,24(sp)
   14d5c:	01013903          	ld	s2,16(sp)
   14d60:	00813983          	ld	s3,8(sp)
   14d64:	03010113          	addi	sp,sp,48
   14d68:	00008067          	ret
   14d6c:	0009a703          	lw	a4,0(s3)
   14d70:	01d00793          	li	a5,29
   14d74:	fce7e6e3          	bltu	a5,a4,14d40 <__sflush_r+0x178>
   14d78:	204007b7          	lui	a5,0x20400
   14d7c:	00178793          	addi	a5,a5,1 # 20400001 <_gp+0x203e2121>
   14d80:	00e7d7b3          	srl	a5,a5,a4
   14d84:	0017f793          	andi	a5,a5,1
   14d88:	fa078ce3          	beqz	a5,14d40 <__sflush_r+0x178>
   14d8c:	0104d603          	lhu	a2,16(s1)
   14d90:	fffff7b7          	lui	a5,0xfffff
   14d94:	7ff7879b          	addiw	a5,a5,2047
   14d98:	0184b683          	ld	a3,24(s1)
   14d9c:	00f677b3          	and	a5,a2,a5
   14da0:	0107979b          	slliw	a5,a5,0x10
   14da4:	4107d79b          	sraiw	a5,a5,0x10
   14da8:	00d4b023          	sd	a3,0(s1)
   14dac:	00f49823          	sh	a5,16(s1)
   14db0:	0004a423          	sw	zero,8(s1)
   14db4:	03379693          	slli	a3,a5,0x33
   14db8:	ee06d8e3          	bgez	a3,14ca8 <__sflush_r+0xe0>
   14dbc:	ee0716e3          	bnez	a4,14ca8 <__sflush_r+0xe0>
   14dc0:	08a4b823          	sd	a0,144(s1)
   14dc4:	ee5ff06f          	j	14ca8 <__sflush_r+0xe0>
   14dc8:	0705a703          	lw	a4,112(a1)
   14dcc:	e4e048e3          	bgtz	a4,14c1c <__sflush_r+0x54>
   14dd0:	ef9ff06f          	j	14cc8 <__sflush_r+0x100>
   14dd4:	0304b583          	ld	a1,48(s1)
   14dd8:	00000613          	li	a2,0
   14ddc:	00100693          	li	a3,1
   14de0:	00098513          	mv	a0,s3
   14de4:	000700e7          	jalr	a4
   14de8:	fff00793          	li	a5,-1
   14dec:	00050613          	mv	a2,a0
   14df0:	00f50863          	beq	a0,a5,14e00 <__sflush_r+0x238>
   14df4:	0104d783          	lhu	a5,16(s1)
   14df8:	0484b703          	ld	a4,72(s1)
   14dfc:	e45ff06f          	j	14c40 <__sflush_r+0x78>
   14e00:	0009a783          	lw	a5,0(s3)
   14e04:	fe0788e3          	beqz	a5,14df4 <__sflush_r+0x22c>
   14e08:	01d00713          	li	a4,29
   14e0c:	00e78663          	beq	a5,a4,14e18 <__sflush_r+0x250>
   14e10:	01600713          	li	a4,22
   14e14:	00e79863          	bne	a5,a4,14e24 <__sflush_r+0x25c>
   14e18:	0089a023          	sw	s0,0(s3)
   14e1c:	00000513          	li	a0,0
   14e20:	eadff06f          	j	14ccc <__sflush_r+0x104>
   14e24:	0104d783          	lhu	a5,16(s1)
   14e28:	0407e793          	ori	a5,a5,64
   14e2c:	00f49823          	sh	a5,16(s1)
   14e30:	e9dff06f          	j	14ccc <__sflush_r+0x104>

0000000000014e34 <_fflush_r>:
   14e34:	fe010113          	addi	sp,sp,-32
   14e38:	00813823          	sd	s0,16(sp)
   14e3c:	00113c23          	sd	ra,24(sp)
   14e40:	00050413          	mv	s0,a0
   14e44:	00050663          	beqz	a0,14e50 <_fflush_r+0x1c>
   14e48:	05052783          	lw	a5,80(a0)
   14e4c:	02078a63          	beqz	a5,14e80 <_fflush_r+0x4c>
   14e50:	01059783          	lh	a5,16(a1)
   14e54:	00079c63          	bnez	a5,14e6c <_fflush_r+0x38>
   14e58:	01813083          	ld	ra,24(sp)
   14e5c:	00000513          	li	a0,0
   14e60:	01013403          	ld	s0,16(sp)
   14e64:	02010113          	addi	sp,sp,32
   14e68:	00008067          	ret
   14e6c:	00040513          	mv	a0,s0
   14e70:	01813083          	ld	ra,24(sp)
   14e74:	01013403          	ld	s0,16(sp)
   14e78:	02010113          	addi	sp,sp,32
   14e7c:	d4dff06f          	j	14bc8 <__sflush_r>
   14e80:	00b13423          	sd	a1,8(sp)
   14e84:	35c000ef          	jal	151e0 <__sinit>
   14e88:	00813583          	ld	a1,8(sp)
   14e8c:	fc5ff06f          	j	14e50 <_fflush_r+0x1c>

0000000000014e90 <fflush>:
   14e90:	00050593          	mv	a1,a0
   14e94:	00050663          	beqz	a0,14ea0 <fflush+0x10>
   14e98:	8101b503          	ld	a0,-2032(gp) # 1d6f0 <_impure_ptr>
   14e9c:	f99ff06f          	j	14e34 <_fflush_r>
   14ea0:	8081b503          	ld	a0,-2040(gp) # 1d6e8 <_global_impure_ptr>
   14ea4:	000155b7          	lui	a1,0x15
   14ea8:	e3458593          	addi	a1,a1,-460 # 14e34 <_fflush_r>
   14eac:	04d0006f          	j	156f8 <_fwalk_reent>

0000000000014eb0 <__fp_unlock>:
   14eb0:	00000513          	li	a0,0
   14eb4:	00008067          	ret

0000000000014eb8 <_cleanup_r>:
   14eb8:	000195b7          	lui	a1,0x19
   14ebc:	7a058593          	addi	a1,a1,1952 # 197a0 <_fclose_r>
   14ec0:	0390006f          	j	156f8 <_fwalk_reent>

0000000000014ec4 <__sinit.part.1>:
   14ec4:	fc010113          	addi	sp,sp,-64
   14ec8:	000157b7          	lui	a5,0x15
   14ecc:	02113c23          	sd	ra,56(sp)
   14ed0:	02813823          	sd	s0,48(sp)
   14ed4:	02913423          	sd	s1,40(sp)
   14ed8:	00853403          	ld	s0,8(a0)
   14edc:	03213023          	sd	s2,32(sp)
   14ee0:	01313c23          	sd	s3,24(sp)
   14ee4:	01413823          	sd	s4,16(sp)
   14ee8:	01513423          	sd	s5,8(sp)
   14eec:	01613023          	sd	s6,0(sp)
   14ef0:	eb878793          	addi	a5,a5,-328 # 14eb8 <_cleanup_r>
   14ef4:	04f53c23          	sd	a5,88(a0)
   14ef8:	53850713          	addi	a4,a0,1336
   14efc:	00300793          	li	a5,3
   14f00:	52e53823          	sd	a4,1328(a0)
   14f04:	52f52423          	sw	a5,1320(a0)
   14f08:	52053023          	sd	zero,1312(a0)
   14f0c:	00400793          	li	a5,4
   14f10:	00050913          	mv	s2,a0
   14f14:	00f41823          	sh	a5,16(s0)
   14f18:	00800613          	li	a2,8
   14f1c:	00000593          	li	a1,0
   14f20:	00043023          	sd	zero,0(s0)
   14f24:	00042423          	sw	zero,8(s0)
   14f28:	00042623          	sw	zero,12(s0)
   14f2c:	0a042623          	sw	zero,172(s0)
   14f30:	00041923          	sh	zero,18(s0)
   14f34:	00043c23          	sd	zero,24(s0)
   14f38:	02042023          	sw	zero,32(s0)
   14f3c:	02042423          	sw	zero,40(s0)
   14f40:	0a440513          	addi	a0,s0,164
   14f44:	745010ef          	jal	16e88 <memset>
   14f48:	00018b37          	lui	s6,0x18
   14f4c:	01093483          	ld	s1,16(s2)
   14f50:	00018ab7          	lui	s5,0x18
   14f54:	00018a37          	lui	s4,0x18
   14f58:	000189b7          	lui	s3,0x18
   14f5c:	054b0b13          	addi	s6,s6,84 # 18054 <__sread>
   14f60:	0c0a8a93          	addi	s5,s5,192 # 180c0 <__swrite>
   14f64:	130a0a13          	addi	s4,s4,304 # 18130 <__sseek>
   14f68:	19c98993          	addi	s3,s3,412 # 1819c <__sclose>
   14f6c:	03643c23          	sd	s6,56(s0)
   14f70:	05543023          	sd	s5,64(s0)
   14f74:	05443423          	sd	s4,72(s0)
   14f78:	05343823          	sd	s3,80(s0)
   14f7c:	02843823          	sd	s0,48(s0)
   14f80:	00900793          	li	a5,9
   14f84:	00f49823          	sh	a5,16(s1)
   14f88:	00100793          	li	a5,1
   14f8c:	00f49923          	sh	a5,18(s1)
   14f90:	00800613          	li	a2,8
   14f94:	00000593          	li	a1,0
   14f98:	0004b023          	sd	zero,0(s1)
   14f9c:	0004a423          	sw	zero,8(s1)
   14fa0:	0004a623          	sw	zero,12(s1)
   14fa4:	0a04a623          	sw	zero,172(s1)
   14fa8:	0004bc23          	sd	zero,24(s1)
   14fac:	0204a023          	sw	zero,32(s1)
   14fb0:	0204a423          	sw	zero,40(s1)
   14fb4:	0a448513          	addi	a0,s1,164
   14fb8:	6d1010ef          	jal	16e88 <memset>
   14fbc:	01893403          	ld	s0,24(s2)
   14fc0:	01200793          	li	a5,18
   14fc4:	0364bc23          	sd	s6,56(s1)
   14fc8:	0554b023          	sd	s5,64(s1)
   14fcc:	0544b423          	sd	s4,72(s1)
   14fd0:	0534b823          	sd	s3,80(s1)
   14fd4:	0294b823          	sd	s1,48(s1)
   14fd8:	00f41823          	sh	a5,16(s0)
   14fdc:	00200793          	li	a5,2
   14fe0:	00f41923          	sh	a5,18(s0)
   14fe4:	00043023          	sd	zero,0(s0)
   14fe8:	00042423          	sw	zero,8(s0)
   14fec:	00042623          	sw	zero,12(s0)
   14ff0:	0a042623          	sw	zero,172(s0)
   14ff4:	00043c23          	sd	zero,24(s0)
   14ff8:	02042023          	sw	zero,32(s0)
   14ffc:	02042423          	sw	zero,40(s0)
   15000:	0a440513          	addi	a0,s0,164
   15004:	00800613          	li	a2,8
   15008:	00000593          	li	a1,0
   1500c:	67d010ef          	jal	16e88 <memset>
   15010:	03813083          	ld	ra,56(sp)
   15014:	03643c23          	sd	s6,56(s0)
   15018:	05543023          	sd	s5,64(s0)
   1501c:	05443423          	sd	s4,72(s0)
   15020:	05343823          	sd	s3,80(s0)
   15024:	02843823          	sd	s0,48(s0)
   15028:	00100793          	li	a5,1
   1502c:	04f92823          	sw	a5,80(s2)
   15030:	03013403          	ld	s0,48(sp)
   15034:	02813483          	ld	s1,40(sp)
   15038:	02013903          	ld	s2,32(sp)
   1503c:	01813983          	ld	s3,24(sp)
   15040:	01013a03          	ld	s4,16(sp)
   15044:	00813a83          	ld	s5,8(sp)
   15048:	00013b03          	ld	s6,0(sp)
   1504c:	04010113          	addi	sp,sp,64
   15050:	00008067          	ret

0000000000015054 <__fp_lock>:
   15054:	00000513          	li	a0,0
   15058:	00008067          	ret

000000000001505c <__sfmoreglue>:
   1505c:	fe010113          	addi	sp,sp,-32
   15060:	fff5879b          	addiw	a5,a1,-1
   15064:	00913423          	sd	s1,8(sp)
   15068:	0b000493          	li	s1,176
   1506c:	029784b3          	mul	s1,a5,s1
   15070:	01213023          	sd	s2,0(sp)
   15074:	00058913          	mv	s2,a1
   15078:	00813823          	sd	s0,16(sp)
   1507c:	00113c23          	sd	ra,24(sp)
   15080:	0c848593          	addi	a1,s1,200
   15084:	48c010ef          	jal	16510 <_malloc_r>
   15088:	00050413          	mv	s0,a0
   1508c:	02050063          	beqz	a0,150ac <__sfmoreglue+0x50>
   15090:	01850513          	addi	a0,a0,24
   15094:	00043023          	sd	zero,0(s0)
   15098:	01242423          	sw	s2,8(s0)
   1509c:	00a43823          	sd	a0,16(s0)
   150a0:	0b048613          	addi	a2,s1,176
   150a4:	00000593          	li	a1,0
   150a8:	5e1010ef          	jal	16e88 <memset>
   150ac:	01813083          	ld	ra,24(sp)
   150b0:	00040513          	mv	a0,s0
   150b4:	00813483          	ld	s1,8(sp)
   150b8:	01013403          	ld	s0,16(sp)
   150bc:	00013903          	ld	s2,0(sp)
   150c0:	02010113          	addi	sp,sp,32
   150c4:	00008067          	ret

00000000000150c8 <__sfp>:
   150c8:	fd010113          	addi	sp,sp,-48
   150cc:	01213823          	sd	s2,16(sp)
   150d0:	8081b903          	ld	s2,-2040(gp) # 1d6e8 <_global_impure_ptr>
   150d4:	01313423          	sd	s3,8(sp)
   150d8:	02113423          	sd	ra,40(sp)
   150dc:	05092783          	lw	a5,80(s2)
   150e0:	02813023          	sd	s0,32(sp)
   150e4:	00913c23          	sd	s1,24(sp)
   150e8:	00050993          	mv	s3,a0
   150ec:	00079663          	bnez	a5,150f8 <__sfp+0x30>
   150f0:	00090513          	mv	a0,s2
   150f4:	dd1ff0ef          	jal	14ec4 <__sinit.part.1>
   150f8:	52090913          	addi	s2,s2,1312
   150fc:	fff00493          	li	s1,-1
   15100:	00892783          	lw	a5,8(s2)
   15104:	01093403          	ld	s0,16(s2)
   15108:	fff7879b          	addiw	a5,a5,-1
   1510c:	0007da63          	bgez	a5,15120 <__sfp+0x58>
   15110:	0840006f          	j	15194 <__sfp+0xcc>
   15114:	fff7879b          	addiw	a5,a5,-1
   15118:	0b040413          	addi	s0,s0,176
   1511c:	06978c63          	beq	a5,s1,15194 <__sfp+0xcc>
   15120:	01041703          	lh	a4,16(s0)
   15124:	fe0718e3          	bnez	a4,15114 <__sfp+0x4c>
   15128:	fff00793          	li	a5,-1
   1512c:	00f41923          	sh	a5,18(s0)
   15130:	00100793          	li	a5,1
   15134:	00f41823          	sh	a5,16(s0)
   15138:	0a042623          	sw	zero,172(s0)
   1513c:	00043023          	sd	zero,0(s0)
   15140:	00042623          	sw	zero,12(s0)
   15144:	00042423          	sw	zero,8(s0)
   15148:	00043c23          	sd	zero,24(s0)
   1514c:	02042023          	sw	zero,32(s0)
   15150:	02042423          	sw	zero,40(s0)
   15154:	00800613          	li	a2,8
   15158:	00000593          	li	a1,0
   1515c:	0a440513          	addi	a0,s0,164
   15160:	529010ef          	jal	16e88 <memset>
   15164:	00040513          	mv	a0,s0
   15168:	04043c23          	sd	zero,88(s0)
   1516c:	06042023          	sw	zero,96(s0)
   15170:	06043c23          	sd	zero,120(s0)
   15174:	08042023          	sw	zero,128(s0)
   15178:	02813083          	ld	ra,40(sp)
   1517c:	02013403          	ld	s0,32(sp)
   15180:	01813483          	ld	s1,24(sp)
   15184:	01013903          	ld	s2,16(sp)
   15188:	00813983          	ld	s3,8(sp)
   1518c:	03010113          	addi	sp,sp,48
   15190:	00008067          	ret
   15194:	00093783          	ld	a5,0(s2)
   15198:	00078663          	beqz	a5,151a4 <__sfp+0xdc>
   1519c:	00078913          	mv	s2,a5
   151a0:	f61ff06f          	j	15100 <__sfp+0x38>
   151a4:	00400593          	li	a1,4
   151a8:	00098513          	mv	a0,s3
   151ac:	eb1ff0ef          	jal	1505c <__sfmoreglue>
   151b0:	00a93023          	sd	a0,0(s2)
   151b4:	00050663          	beqz	a0,151c0 <__sfp+0xf8>
   151b8:	00050913          	mv	s2,a0
   151bc:	f45ff06f          	j	15100 <__sfp+0x38>
   151c0:	00c00793          	li	a5,12
   151c4:	00f9a023          	sw	a5,0(s3)
   151c8:	00000513          	li	a0,0
   151cc:	fadff06f          	j	15178 <__sfp+0xb0>

00000000000151d0 <_cleanup>:
   151d0:	8081b503          	ld	a0,-2040(gp) # 1d6e8 <_global_impure_ptr>
   151d4:	000195b7          	lui	a1,0x19
   151d8:	7a058593          	addi	a1,a1,1952 # 197a0 <_fclose_r>
   151dc:	51c0006f          	j	156f8 <_fwalk_reent>

00000000000151e0 <__sinit>:
   151e0:	05052783          	lw	a5,80(a0)
   151e4:	00078463          	beqz	a5,151ec <__sinit+0xc>
   151e8:	00008067          	ret
   151ec:	cd9ff06f          	j	14ec4 <__sinit.part.1>

00000000000151f0 <__sfp_lock_acquire>:
   151f0:	00008067          	ret

00000000000151f4 <__sfp_lock_release>:
   151f4:	00008067          	ret

00000000000151f8 <__sinit_lock_acquire>:
   151f8:	00008067          	ret

00000000000151fc <__sinit_lock_release>:
   151fc:	00008067          	ret

0000000000015200 <__fp_lock_all>:
   15200:	8101b503          	ld	a0,-2032(gp) # 1d6f0 <_impure_ptr>
   15204:	000155b7          	lui	a1,0x15
   15208:	05458593          	addi	a1,a1,84 # 15054 <__fp_lock>
   1520c:	43c0006f          	j	15648 <_fwalk>

0000000000015210 <__fp_unlock_all>:
   15210:	8101b503          	ld	a0,-2032(gp) # 1d6f0 <_impure_ptr>
   15214:	000155b7          	lui	a1,0x15
   15218:	eb058593          	addi	a1,a1,-336 # 14eb0 <__fp_unlock>
   1521c:	42c0006f          	j	15648 <_fwalk>

0000000000015220 <_malloc_trim_r>:
   15220:	fd010113          	addi	sp,sp,-48
   15224:	01213823          	sd	s2,16(sp)
   15228:	0001d937          	lui	s2,0x1d
   1522c:	02813023          	sd	s0,32(sp)
   15230:	00913c23          	sd	s1,24(sp)
   15234:	00058413          	mv	s0,a1
   15238:	01313423          	sd	s3,8(sp)
   1523c:	02113423          	sd	ra,40(sp)
   15240:	00050993          	mv	s3,a0
   15244:	ec890913          	addi	s2,s2,-312 # 1cec8 <__malloc_av_>
   15248:	51d010ef          	jal	16f64 <__malloc_lock>
   1524c:	01093703          	ld	a4,16(s2)
   15250:	000017b7          	lui	a5,0x1
   15254:	fdf78593          	addi	a1,a5,-33 # fdf <_ftext-0xf021>
   15258:	00873483          	ld	s1,8(a4)
   1525c:	ffc4f493          	andi	s1,s1,-4
   15260:	40848433          	sub	s0,s1,s0
   15264:	00b40433          	add	s0,s0,a1
   15268:	00c45413          	srli	s0,s0,0xc
   1526c:	fff40413          	addi	s0,s0,-1
   15270:	00c41413          	slli	s0,s0,0xc
   15274:	00f44c63          	blt	s0,a5,1528c <_malloc_trim_r+0x6c>
   15278:	00000513          	li	a0,0
   1527c:	28d050ef          	jal	1ad08 <sbrk>
   15280:	01093783          	ld	a5,16(s2)
   15284:	009787b3          	add	a5,a5,s1
   15288:	02f50663          	beq	a0,a5,152b4 <_malloc_trim_r+0x94>
   1528c:	00098513          	mv	a0,s3
   15290:	4d9010ef          	jal	16f68 <__malloc_unlock>
   15294:	02813083          	ld	ra,40(sp)
   15298:	00000513          	li	a0,0
   1529c:	02013403          	ld	s0,32(sp)
   152a0:	01813483          	ld	s1,24(sp)
   152a4:	01013903          	ld	s2,16(sp)
   152a8:	00813983          	ld	s3,8(sp)
   152ac:	03010113          	addi	sp,sp,48
   152b0:	00008067          	ret
   152b4:	40800533          	neg	a0,s0
   152b8:	251050ef          	jal	1ad08 <sbrk>
   152bc:	fff00793          	li	a5,-1
   152c0:	04f50463          	beq	a0,a5,15308 <_malloc_trim_r+0xe8>
   152c4:	9381a783          	lw	a5,-1736(gp) # 1d818 <__malloc_current_mallinfo>
   152c8:	01093683          	ld	a3,16(s2)
   152cc:	408484b3          	sub	s1,s1,s0
   152d0:	0014e493          	ori	s1,s1,1
   152d4:	4087843b          	subw	s0,a5,s0
   152d8:	00098513          	mv	a0,s3
   152dc:	0096b423          	sd	s1,8(a3)
   152e0:	9281ac23          	sw	s0,-1736(gp) # 1d818 <__malloc_current_mallinfo>
   152e4:	485010ef          	jal	16f68 <__malloc_unlock>
   152e8:	02813083          	ld	ra,40(sp)
   152ec:	00100513          	li	a0,1
   152f0:	02013403          	ld	s0,32(sp)
   152f4:	01813483          	ld	s1,24(sp)
   152f8:	01013903          	ld	s2,16(sp)
   152fc:	00813983          	ld	s3,8(sp)
   15300:	03010113          	addi	sp,sp,48
   15304:	00008067          	ret
   15308:	00000513          	li	a0,0
   1530c:	1fd050ef          	jal	1ad08 <sbrk>
   15310:	01093703          	ld	a4,16(s2)
   15314:	01f00693          	li	a3,31
   15318:	40e507b3          	sub	a5,a0,a4
   1531c:	f6f6d8e3          	ble	a5,a3,1528c <_malloc_trim_r+0x6c>
   15320:	8201b683          	ld	a3,-2016(gp) # 1d700 <__malloc_sbrk_base>
   15324:	0017e793          	ori	a5,a5,1
   15328:	00f73423          	sd	a5,8(a4)
   1532c:	40d50533          	sub	a0,a0,a3
   15330:	92a1ac23          	sw	a0,-1736(gp) # 1d818 <__malloc_current_mallinfo>
   15334:	f59ff06f          	j	1528c <_malloc_trim_r+0x6c>

0000000000015338 <_free_r>:
   15338:	10058263          	beqz	a1,1543c <_free_r+0x104>
   1533c:	fe010113          	addi	sp,sp,-32
   15340:	00813823          	sd	s0,16(sp)
   15344:	00913423          	sd	s1,8(sp)
   15348:	00058413          	mv	s0,a1
   1534c:	00050493          	mv	s1,a0
   15350:	00113c23          	sd	ra,24(sp)
   15354:	411010ef          	jal	16f64 <__malloc_lock>
   15358:	ff843503          	ld	a0,-8(s0)
   1535c:	ff040693          	addi	a3,s0,-16
   15360:	0001d5b7          	lui	a1,0x1d
   15364:	ffe57793          	andi	a5,a0,-2
   15368:	00f68633          	add	a2,a3,a5
   1536c:	ec858593          	addi	a1,a1,-312 # 1cec8 <__malloc_av_>
   15370:	00863703          	ld	a4,8(a2)
   15374:	0105b803          	ld	a6,16(a1)
   15378:	ffc77713          	andi	a4,a4,-4
   1537c:	17060663          	beq	a2,a6,154e8 <_free_r+0x1b0>
   15380:	00e63423          	sd	a4,8(a2)
   15384:	00157513          	andi	a0,a0,1
   15388:	02051663          	bnez	a0,153b4 <_free_r+0x7c>
   1538c:	ff043503          	ld	a0,-16(s0)
   15390:	40a686b3          	sub	a3,a3,a0
   15394:	0106b803          	ld	a6,16(a3)
   15398:	00a787b3          	add	a5,a5,a0
   1539c:	0001d537          	lui	a0,0x1d
   153a0:	ed850513          	addi	a0,a0,-296 # 1ced8 <__malloc_av_+0x10>
   153a4:	18a80863          	beq	a6,a0,15534 <_free_r+0x1fc>
   153a8:	0186b503          	ld	a0,24(a3)
   153ac:	00a83c23          	sd	a0,24(a6)
   153b0:	01053823          	sd	a6,16(a0)
   153b4:	00e60533          	add	a0,a2,a4
   153b8:	00853503          	ld	a0,8(a0)
   153bc:	00157513          	andi	a0,a0,1
   153c0:	0e050a63          	beqz	a0,154b4 <_free_r+0x17c>
   153c4:	0017e713          	ori	a4,a5,1
   153c8:	00e6b423          	sd	a4,8(a3)
   153cc:	00f68733          	add	a4,a3,a5
   153d0:	00f73023          	sd	a5,0(a4)
   153d4:	1ff00713          	li	a4,511
   153d8:	06f76463          	bltu	a4,a5,15440 <_free_r+0x108>
   153dc:	0037d793          	srli	a5,a5,0x3
   153e0:	0007879b          	sext.w	a5,a5
   153e4:	0017871b          	addiw	a4,a5,1
   153e8:	0017171b          	slliw	a4,a4,0x1
   153ec:	00371713          	slli	a4,a4,0x3
   153f0:	0085b603          	ld	a2,8(a1)
   153f4:	00e58733          	add	a4,a1,a4
   153f8:	00073803          	ld	a6,0(a4)
   153fc:	4027d79b          	sraiw	a5,a5,0x2
   15400:	00100513          	li	a0,1
   15404:	00f517b3          	sll	a5,a0,a5
   15408:	00c7e7b3          	or	a5,a5,a2
   1540c:	ff070613          	addi	a2,a4,-16
   15410:	00c6bc23          	sd	a2,24(a3)
   15414:	0106b823          	sd	a6,16(a3)
   15418:	00f5b423          	sd	a5,8(a1)
   1541c:	00d73023          	sd	a3,0(a4)
   15420:	00d83c23          	sd	a3,24(a6)
   15424:	00048513          	mv	a0,s1
   15428:	01813083          	ld	ra,24(sp)
   1542c:	01013403          	ld	s0,16(sp)
   15430:	00813483          	ld	s1,8(sp)
   15434:	02010113          	addi	sp,sp,32
   15438:	3310106f          	j	16f68 <__malloc_unlock>
   1543c:	00008067          	ret
   15440:	0097d713          	srli	a4,a5,0x9
   15444:	00400613          	li	a2,4
   15448:	12e66263          	bltu	a2,a4,1556c <_free_r+0x234>
   1544c:	0067d713          	srli	a4,a5,0x6
   15450:	0007071b          	sext.w	a4,a4
   15454:	0397051b          	addiw	a0,a4,57
   15458:	0387061b          	addiw	a2,a4,56
   1545c:	0015151b          	slliw	a0,a0,0x1
   15460:	00351513          	slli	a0,a0,0x3
   15464:	00a58533          	add	a0,a1,a0
   15468:	00053703          	ld	a4,0(a0)
   1546c:	ff050513          	addi	a0,a0,-16
   15470:	10e50c63          	beq	a0,a4,15588 <_free_r+0x250>
   15474:	00873603          	ld	a2,8(a4)
   15478:	ffc67613          	andi	a2,a2,-4
   1547c:	00c7f663          	bleu	a2,a5,15488 <_free_r+0x150>
   15480:	01073703          	ld	a4,16(a4)
   15484:	fee518e3          	bne	a0,a4,15474 <_free_r+0x13c>
   15488:	01873503          	ld	a0,24(a4)
   1548c:	00a6bc23          	sd	a0,24(a3)
   15490:	00e6b823          	sd	a4,16(a3)
   15494:	00d53823          	sd	a3,16(a0)
   15498:	01813083          	ld	ra,24(sp)
   1549c:	00048513          	mv	a0,s1
   154a0:	01013403          	ld	s0,16(sp)
   154a4:	00813483          	ld	s1,8(sp)
   154a8:	00d73c23          	sd	a3,24(a4)
   154ac:	02010113          	addi	sp,sp,32
   154b0:	2b90106f          	j	16f68 <__malloc_unlock>
   154b4:	01063503          	ld	a0,16(a2)
   154b8:	00e787b3          	add	a5,a5,a4
   154bc:	0001d737          	lui	a4,0x1d
   154c0:	ed870713          	addi	a4,a4,-296 # 1ced8 <__malloc_av_+0x10>
   154c4:	0ee50263          	beq	a0,a4,155a8 <_free_r+0x270>
   154c8:	01863803          	ld	a6,24(a2)
   154cc:	0017e613          	ori	a2,a5,1
   154d0:	00f68733          	add	a4,a3,a5
   154d4:	01053c23          	sd	a6,24(a0)
   154d8:	00a83823          	sd	a0,16(a6)
   154dc:	00c6b423          	sd	a2,8(a3)
   154e0:	00f73023          	sd	a5,0(a4)
   154e4:	ef1ff06f          	j	153d4 <_free_r+0x9c>
   154e8:	00157513          	andi	a0,a0,1
   154ec:	00e787b3          	add	a5,a5,a4
   154f0:	02051063          	bnez	a0,15510 <_free_r+0x1d8>
   154f4:	ff043503          	ld	a0,-16(s0)
   154f8:	40a686b3          	sub	a3,a3,a0
   154fc:	0186b703          	ld	a4,24(a3)
   15500:	0106b603          	ld	a2,16(a3)
   15504:	00a787b3          	add	a5,a5,a0
   15508:	00e63c23          	sd	a4,24(a2)
   1550c:	00c73823          	sd	a2,16(a4)
   15510:	0017e613          	ori	a2,a5,1
   15514:	8281b703          	ld	a4,-2008(gp) # 1d708 <__malloc_trim_threshold>
   15518:	00c6b423          	sd	a2,8(a3)
   1551c:	00d5b823          	sd	a3,16(a1)
   15520:	f0e7e2e3          	bltu	a5,a4,15424 <_free_r+0xec>
   15524:	8f01b583          	ld	a1,-1808(gp) # 1d7d0 <__malloc_top_pad>
   15528:	00048513          	mv	a0,s1
   1552c:	cf5ff0ef          	jal	15220 <_malloc_trim_r>
   15530:	ef5ff06f          	j	15424 <_free_r+0xec>
   15534:	00e605b3          	add	a1,a2,a4
   15538:	0085b583          	ld	a1,8(a1)
   1553c:	0015f593          	andi	a1,a1,1
   15540:	0e059a63          	bnez	a1,15634 <_free_r+0x2fc>
   15544:	01063583          	ld	a1,16(a2)
   15548:	01863603          	ld	a2,24(a2)
   1554c:	00f707b3          	add	a5,a4,a5
   15550:	0017e713          	ori	a4,a5,1
   15554:	00c5bc23          	sd	a2,24(a1)
   15558:	00b63823          	sd	a1,16(a2)
   1555c:	00e6b423          	sd	a4,8(a3)
   15560:	00f686b3          	add	a3,a3,a5
   15564:	00f6b023          	sd	a5,0(a3)
   15568:	ebdff06f          	j	15424 <_free_r+0xec>
   1556c:	01400613          	li	a2,20
   15570:	04e66e63          	bltu	a2,a4,155cc <_free_r+0x294>
   15574:	0007071b          	sext.w	a4,a4
   15578:	05c7051b          	addiw	a0,a4,92
   1557c:	05b7061b          	addiw	a2,a4,91
   15580:	0015151b          	slliw	a0,a0,0x1
   15584:	eddff06f          	j	15460 <_free_r+0x128>
   15588:	0085b783          	ld	a5,8(a1)
   1558c:	4026571b          	sraiw	a4,a2,0x2
   15590:	00100613          	li	a2,1
   15594:	00e61733          	sll	a4,a2,a4
   15598:	00f767b3          	or	a5,a4,a5
   1559c:	00f5b423          	sd	a5,8(a1)
   155a0:	00050713          	mv	a4,a0
   155a4:	ee9ff06f          	j	1548c <_free_r+0x154>
   155a8:	02d5b423          	sd	a3,40(a1)
   155ac:	02d5b023          	sd	a3,32(a1)
   155b0:	0017e713          	ori	a4,a5,1
   155b4:	00a6bc23          	sd	a0,24(a3)
   155b8:	00a6b823          	sd	a0,16(a3)
   155bc:	00e6b423          	sd	a4,8(a3)
   155c0:	00f686b3          	add	a3,a3,a5
   155c4:	00f6b023          	sd	a5,0(a3)
   155c8:	e5dff06f          	j	15424 <_free_r+0xec>
   155cc:	05400613          	li	a2,84
   155d0:	00e66e63          	bltu	a2,a4,155ec <_free_r+0x2b4>
   155d4:	00c7d713          	srli	a4,a5,0xc
   155d8:	0007071b          	sext.w	a4,a4
   155dc:	06f7051b          	addiw	a0,a4,111
   155e0:	06e7061b          	addiw	a2,a4,110
   155e4:	0015151b          	slliw	a0,a0,0x1
   155e8:	e79ff06f          	j	15460 <_free_r+0x128>
   155ec:	15400613          	li	a2,340
   155f0:	00e66e63          	bltu	a2,a4,1560c <_free_r+0x2d4>
   155f4:	00f7d713          	srli	a4,a5,0xf
   155f8:	0007071b          	sext.w	a4,a4
   155fc:	0787051b          	addiw	a0,a4,120
   15600:	0777061b          	addiw	a2,a4,119
   15604:	0015151b          	slliw	a0,a0,0x1
   15608:	e59ff06f          	j	15460 <_free_r+0x128>
   1560c:	55400813          	li	a6,1364
   15610:	0fe00513          	li	a0,254
   15614:	07e00613          	li	a2,126
   15618:	e4e864e3          	bltu	a6,a4,15460 <_free_r+0x128>
   1561c:	0127d713          	srli	a4,a5,0x12
   15620:	0007071b          	sext.w	a4,a4
   15624:	07d7051b          	addiw	a0,a4,125
   15628:	07c7061b          	addiw	a2,a4,124
   1562c:	0015151b          	slliw	a0,a0,0x1
   15630:	e31ff06f          	j	15460 <_free_r+0x128>
   15634:	0017e713          	ori	a4,a5,1
   15638:	00e6b423          	sd	a4,8(a3)
   1563c:	00f686b3          	add	a3,a3,a5
   15640:	00f6b023          	sd	a5,0(a3)
   15644:	de1ff06f          	j	15424 <_free_r+0xec>

0000000000015648 <_fwalk>:
   15648:	fc010113          	addi	sp,sp,-64
   1564c:	01513423          	sd	s5,8(sp)
   15650:	02113c23          	sd	ra,56(sp)
   15654:	02813823          	sd	s0,48(sp)
   15658:	02913423          	sd	s1,40(sp)
   1565c:	03213023          	sd	s2,32(sp)
   15660:	01313c23          	sd	s3,24(sp)
   15664:	01413823          	sd	s4,16(sp)
   15668:	01613023          	sd	s6,0(sp)
   1566c:	52050a93          	addi	s5,a0,1312
   15670:	080a8063          	beqz	s5,156f0 <_fwalk+0xa8>
   15674:	00058b13          	mv	s6,a1
   15678:	00000a13          	li	s4,0
   1567c:	00100993          	li	s3,1
   15680:	fff00913          	li	s2,-1
   15684:	008aa483          	lw	s1,8(s5)
   15688:	010ab403          	ld	s0,16(s5)
   1568c:	fff4849b          	addiw	s1,s1,-1
   15690:	0204c663          	bltz	s1,156bc <_fwalk+0x74>
   15694:	01045783          	lhu	a5,16(s0)
   15698:	fff4849b          	addiw	s1,s1,-1
   1569c:	00f9fc63          	bleu	a5,s3,156b4 <_fwalk+0x6c>
   156a0:	01241783          	lh	a5,18(s0)
   156a4:	00040513          	mv	a0,s0
   156a8:	01278663          	beq	a5,s2,156b4 <_fwalk+0x6c>
   156ac:	000b00e7          	jalr	s6
   156b0:	00aa6a33          	or	s4,s4,a0
   156b4:	0b040413          	addi	s0,s0,176
   156b8:	fd249ee3          	bne	s1,s2,15694 <_fwalk+0x4c>
   156bc:	000aba83          	ld	s5,0(s5)
   156c0:	fc0a92e3          	bnez	s5,15684 <_fwalk+0x3c>
   156c4:	03813083          	ld	ra,56(sp)
   156c8:	000a0513          	mv	a0,s4
   156cc:	03013403          	ld	s0,48(sp)
   156d0:	02813483          	ld	s1,40(sp)
   156d4:	02013903          	ld	s2,32(sp)
   156d8:	01813983          	ld	s3,24(sp)
   156dc:	01013a03          	ld	s4,16(sp)
   156e0:	00813a83          	ld	s5,8(sp)
   156e4:	00013b03          	ld	s6,0(sp)
   156e8:	04010113          	addi	sp,sp,64
   156ec:	00008067          	ret
   156f0:	00000a13          	li	s4,0
   156f4:	fd1ff06f          	j	156c4 <_fwalk+0x7c>

00000000000156f8 <_fwalk_reent>:
   156f8:	fb010113          	addi	sp,sp,-80
   156fc:	01613823          	sd	s6,16(sp)
   15700:	04113423          	sd	ra,72(sp)
   15704:	04813023          	sd	s0,64(sp)
   15708:	02913c23          	sd	s1,56(sp)
   1570c:	03213823          	sd	s2,48(sp)
   15710:	03313423          	sd	s3,40(sp)
   15714:	03413023          	sd	s4,32(sp)
   15718:	01513c23          	sd	s5,24(sp)
   1571c:	01713423          	sd	s7,8(sp)
   15720:	52050b13          	addi	s6,a0,1312
   15724:	080b0663          	beqz	s6,157b0 <_fwalk_reent+0xb8>
   15728:	00058b93          	mv	s7,a1
   1572c:	00050a93          	mv	s5,a0
   15730:	00000a13          	li	s4,0
   15734:	00100993          	li	s3,1
   15738:	fff00913          	li	s2,-1
   1573c:	008b2483          	lw	s1,8(s6)
   15740:	010b3403          	ld	s0,16(s6)
   15744:	fff4849b          	addiw	s1,s1,-1
   15748:	0204c863          	bltz	s1,15778 <_fwalk_reent+0x80>
   1574c:	01045783          	lhu	a5,16(s0)
   15750:	fff4849b          	addiw	s1,s1,-1
   15754:	00f9fe63          	bleu	a5,s3,15770 <_fwalk_reent+0x78>
   15758:	01241783          	lh	a5,18(s0)
   1575c:	00040593          	mv	a1,s0
   15760:	000a8513          	mv	a0,s5
   15764:	01278663          	beq	a5,s2,15770 <_fwalk_reent+0x78>
   15768:	000b80e7          	jalr	s7
   1576c:	00aa6a33          	or	s4,s4,a0
   15770:	0b040413          	addi	s0,s0,176
   15774:	fd249ce3          	bne	s1,s2,1574c <_fwalk_reent+0x54>
   15778:	000b3b03          	ld	s6,0(s6)
   1577c:	fc0b10e3          	bnez	s6,1573c <_fwalk_reent+0x44>
   15780:	04813083          	ld	ra,72(sp)
   15784:	000a0513          	mv	a0,s4
   15788:	04013403          	ld	s0,64(sp)
   1578c:	03813483          	ld	s1,56(sp)
   15790:	03013903          	ld	s2,48(sp)
   15794:	02813983          	ld	s3,40(sp)
   15798:	02013a03          	ld	s4,32(sp)
   1579c:	01813a83          	ld	s5,24(sp)
   157a0:	01013b03          	ld	s6,16(sp)
   157a4:	00813b83          	ld	s7,8(sp)
   157a8:	05010113          	addi	sp,sp,80
   157ac:	00008067          	ret
   157b0:	00000a13          	li	s4,0
   157b4:	fcdff06f          	j	15780 <_fwalk_reent+0x88>

00000000000157b8 <rshift>:
   157b8:	01452703          	lw	a4,20(a0)
   157bc:	4055d69b          	sraiw	a3,a1,0x5
   157c0:	01850893          	addi	a7,a0,24
   157c4:	08e6d863          	ble	a4,a3,15854 <rshift+0x9c>
   157c8:	00068613          	mv	a2,a3
   157cc:	00271713          	slli	a4,a4,0x2
   157d0:	00261613          	slli	a2,a2,0x2
   157d4:	01f5f593          	andi	a1,a1,31
   157d8:	00e88733          	add	a4,a7,a4
   157dc:	00c88633          	add	a2,a7,a2
   157e0:	08058063          	beqz	a1,15860 <rshift+0xa8>
   157e4:	00062783          	lw	a5,0(a2)
   157e8:	02000e13          	li	t3,32
   157ec:	00460693          	addi	a3,a2,4
   157f0:	40be0e3b          	subw	t3,t3,a1
   157f4:	00b7d7bb          	srlw	a5,a5,a1
   157f8:	0ae6f663          	bleu	a4,a3,158a4 <rshift+0xec>
   157fc:	00088313          	mv	t1,a7
   15800:	0006a803          	lw	a6,0(a3)
   15804:	00430313          	addi	t1,t1,4 # 10004 <_ftext+0x4>
   15808:	00468693          	addi	a3,a3,4
   1580c:	01c8183b          	sllw	a6,a6,t3
   15810:	00f867b3          	or	a5,a6,a5
   15814:	fef32e23          	sw	a5,-4(t1)
   15818:	ffc6a783          	lw	a5,-4(a3)
   1581c:	00b7d7bb          	srlw	a5,a5,a1
   15820:	fee6e0e3          	bltu	a3,a4,15800 <rshift+0x48>
   15824:	40c70733          	sub	a4,a4,a2
   15828:	ffb70713          	addi	a4,a4,-5
   1582c:	ffc77713          	andi	a4,a4,-4
   15830:	00470713          	addi	a4,a4,4
   15834:	00e88733          	add	a4,a7,a4
   15838:	00f72023          	sw	a5,0(a4)
   1583c:	00078463          	beqz	a5,15844 <rshift+0x8c>
   15840:	00470713          	addi	a4,a4,4
   15844:	411707b3          	sub	a5,a4,a7
   15848:	4027d793          	srai	a5,a5,0x2
   1584c:	0007879b          	sext.w	a5,a5
   15850:	0480006f          	j	15898 <rshift+0xe0>
   15854:	00052a23          	sw	zero,20(a0)
   15858:	00052c23          	sw	zero,24(a0)
   1585c:	00008067          	ret
   15860:	00088793          	mv	a5,a7
   15864:	00060693          	mv	a3,a2
   15868:	fee676e3          	bleu	a4,a2,15854 <rshift+0x9c>
   1586c:	00468693          	addi	a3,a3,4
   15870:	ffc6a583          	lw	a1,-4(a3)
   15874:	00478793          	addi	a5,a5,4
   15878:	feb7ae23          	sw	a1,-4(a5)
   1587c:	fee6e8e3          	bltu	a3,a4,1586c <rshift+0xb4>
   15880:	fff64793          	not	a5,a2
   15884:	00e787b3          	add	a5,a5,a4
   15888:	ffc7f793          	andi	a5,a5,-4
   1588c:	00478793          	addi	a5,a5,4
   15890:	4027d793          	srai	a5,a5,0x2
   15894:	0007879b          	sext.w	a5,a5
   15898:	00f52a23          	sw	a5,20(a0)
   1589c:	fa078ee3          	beqz	a5,15858 <rshift+0xa0>
   158a0:	00008067          	ret
   158a4:	00088713          	mv	a4,a7
   158a8:	f91ff06f          	j	15838 <rshift+0x80>

00000000000158ac <__gethex>:
   158ac:	f4010113          	addi	sp,sp,-192
   158b0:	00d13c23          	sd	a3,24(sp)
   158b4:	00e13423          	sd	a4,8(sp)
   158b8:	02f12223          	sw	a5,36(sp)
   158bc:	0a113c23          	sd	ra,184(sp)
   158c0:	0a913423          	sd	s1,168(sp)
   158c4:	0b213023          	sd	s2,160(sp)
   158c8:	09313c23          	sd	s3,152(sp)
   158cc:	00058913          	mv	s2,a1
   158d0:	09413823          	sd	s4,144(sp)
   158d4:	07713c23          	sd	s7,120(sp)
   158d8:	00060993          	mv	s3,a2
   158dc:	0a813823          	sd	s0,176(sp)
   158e0:	09513423          	sd	s5,136(sp)
   158e4:	09613023          	sd	s6,128(sp)
   158e8:	07813823          	sd	s8,112(sp)
   158ec:	07913423          	sd	s9,104(sp)
   158f0:	07a13023          	sd	s10,96(sp)
   158f4:	05b13c23          	sd	s11,88(sp)
   158f8:	00050a13          	mv	s4,a0
   158fc:	241000ef          	jal	1633c <_localeconv_r>
   15900:	00053483          	ld	s1,0(a0)
   15904:	00048513          	mv	a0,s1
   15908:	1c9020ef          	jal	182d0 <strlen>
   1590c:	00093783          	ld	a5,0(s2)
   15910:	00a486b3          	add	a3,s1,a0
   15914:	fff6c683          	lbu	a3,-1(a3)
   15918:	0027c703          	lbu	a4,2(a5)
   1591c:	00050b93          	mv	s7,a0
   15920:	00d13823          	sd	a3,16(sp)
   15924:	03000693          	li	a3,48
   15928:	5cd71063          	bne	a4,a3,15ee8 <__gethex+0x63c>
   1592c:	00378793          	addi	a5,a5,3
   15930:	00000b13          	li	s6,0
   15934:	00070613          	mv	a2,a4
   15938:	00078d93          	mv	s11,a5
   1593c:	00178793          	addi	a5,a5,1
   15940:	fff7c703          	lbu	a4,-1(a5)
   15944:	001b0b1b          	addiw	s6,s6,1
   15948:	fec708e3          	beq	a4,a2,15938 <__gethex+0x8c>
   1594c:	0001b8b7          	lui	a7,0x1b
   15950:	0c888a93          	addi	s5,a7,200 # 1b0c8 <__hexdig>
   15954:	00ea8733          	add	a4,s5,a4
   15958:	00074783          	lbu	a5,0(a4)
   1595c:	1e078e63          	beqz	a5,15b58 <__gethex+0x2ac>
   15960:	000dc783          	lbu	a5,0(s11)
   15964:	00000413          	li	s0,0
   15968:	00000c93          	li	s9,0
   1596c:	00fa87b3          	add	a5,s5,a5
   15970:	0007c783          	lbu	a5,0(a5)
   15974:	000d8c13          	mv	s8,s11
   15978:	00078c63          	beqz	a5,15990 <__gethex+0xe4>
   1597c:	001c0c13          	addi	s8,s8,1
   15980:	000c4783          	lbu	a5,0(s8)
   15984:	00fa87b3          	add	a5,s5,a5
   15988:	0007c783          	lbu	a5,0(a5)
   1598c:	fe0798e3          	bnez	a5,1597c <__gethex+0xd0>
   15990:	000b8613          	mv	a2,s7
   15994:	00048593          	mv	a1,s1
   15998:	000c0513          	mv	a0,s8
   1599c:	205020ef          	jal	183a0 <strncmp>
   159a0:	1a050663          	beqz	a0,15b4c <__gethex+0x2a0>
   159a4:	000c4783          	lbu	a5,0(s8)
   159a8:	500c8a63          	beqz	s9,15ebc <__gethex+0x610>
   159ac:	419c0cbb          	subw	s9,s8,s9
   159b0:	002c9c9b          	slliw	s9,s9,0x2
   159b4:	41900cbb          	negw	s9,s9
   159b8:	05000713          	li	a4,80
   159bc:	20e78e63          	beq	a5,a4,15bd8 <__gethex+0x32c>
   159c0:	07000713          	li	a4,112
   159c4:	000c0d13          	mv	s10,s8
   159c8:	20e78863          	beq	a5,a4,15bd8 <__gethex+0x32c>
   159cc:	01893023          	sd	s8,0(s2)
   159d0:	1a041c63          	bnez	s0,15b88 <__gethex+0x2dc>
   159d4:	41bd07b3          	sub	a5,s10,s11
   159d8:	fff7879b          	addiw	a5,a5,-1
   159dc:	00700713          	li	a4,7
   159e0:	00000593          	li	a1,0
   159e4:	00f75863          	ble	a5,a4,159f4 <__gethex+0x148>
   159e8:	4017d79b          	sraiw	a5,a5,0x1
   159ec:	0015859b          	addiw	a1,a1,1
   159f0:	fef74ce3          	blt	a4,a5,159e8 <__gethex+0x13c>
   159f4:	000a0513          	mv	a0,s4
   159f8:	574010ef          	jal	16f6c <_Balloc>
   159fc:	01850913          	addi	s2,a0,24
   15a00:	00050b13          	mv	s6,a0
   15a04:	00090313          	mv	t1,s2
   15a08:	00000793          	li	a5,0
   15a0c:	05adf863          	bleu	s10,s11,15a5c <__gethex+0x1b0>
   15a10:	01012403          	lw	s0,16(sp)
   15a14:	00100f13          	li	t5,1
   15a18:	00000c13          	li	s8,0
   15a1c:	417f0f33          	sub	t5,t5,s7
   15a20:	02000e13          	li	t3,32
   15a24:	fffd4703          	lbu	a4,-1(s10)
   15a28:	fffd0f93          	addi	t6,s10,-1
   15a2c:	0a870c63          	beq	a4,s0,15ae4 <__gethex+0x238>
   15a30:	11cc0263          	beq	s8,t3,15b34 <__gethex+0x288>
   15a34:	000c0613          	mv	a2,s8
   15a38:	004c0c1b          	addiw	s8,s8,4
   15a3c:	fffd4683          	lbu	a3,-1(s10)
   15a40:	000f8d13          	mv	s10,t6
   15a44:	00da86b3          	add	a3,s5,a3
   15a48:	0006c703          	lbu	a4,0(a3)
   15a4c:	00f77713          	andi	a4,a4,15
   15a50:	00c7173b          	sllw	a4,a4,a2
   15a54:	00e7e7b3          	or	a5,a5,a4
   15a58:	fdade6e3          	bltu	s11,s10,15a24 <__gethex+0x178>
   15a5c:	00430713          	addi	a4,t1,4
   15a60:	41270733          	sub	a4,a4,s2
   15a64:	40275713          	srai	a4,a4,0x2
   15a68:	0007071b          	sext.w	a4,a4
   15a6c:	00f32023          	sw	a5,0(t1)
   15a70:	00eb2a23          	sw	a4,20(s6)
   15a74:	00078513          	mv	a0,a5
   15a78:	0057141b          	slliw	s0,a4,0x5
   15a7c:	7fc010ef          	jal	17278 <__hi0bits>
   15a80:	0009a483          	lw	s1,0(s3)
   15a84:	40a4053b          	subw	a0,s0,a0
   15a88:	3ca4c663          	blt	s1,a0,15e54 <__gethex+0x5a8>
   15a8c:	00000c13          	li	s8,0
   15a90:	42954a63          	blt	a0,s1,15ec4 <__gethex+0x618>
   15a94:	0089a783          	lw	a5,8(s3)
   15a98:	2f97ce63          	blt	a5,s9,15d94 <__gethex+0x4e8>
   15a9c:	0049a783          	lw	a5,4(s3)
   15aa0:	36fcd863          	ble	a5,s9,15e10 <__gethex+0x564>
   15aa4:	41978cbb          	subw	s9,a5,s9
   15aa8:	1c9ccc63          	blt	s9,s1,15c80 <__gethex+0x3d4>
   15aac:	00c9a703          	lw	a4,12(s3)
   15ab0:	00200693          	li	a3,2
   15ab4:	4ad70a63          	beq	a4,a3,15f68 <__gethex+0x6bc>
   15ab8:	00300693          	li	a3,3
   15abc:	46d70c63          	beq	a4,a3,15f34 <__gethex+0x688>
   15ac0:	00100693          	li	a3,1
   15ac4:	4ad70863          	beq	a4,a3,15f74 <__gethex+0x6c8>
   15ac8:	000a0513          	mv	a0,s4
   15acc:	000b0593          	mv	a1,s6
   15ad0:	548010ef          	jal	17018 <_Bfree>
   15ad4:	00813783          	ld	a5,8(sp)
   15ad8:	05000513          	li	a0,80
   15adc:	0007b023          	sd	zero,0(a5)
   15ae0:	0b40006f          	j	15b94 <__gethex+0x2e8>
   15ae4:	01ef8733          	add	a4,t6,t5
   15ae8:	f5b764e3          	bltu	a4,s11,15a30 <__gethex+0x184>
   15aec:	00070513          	mv	a0,a4
   15af0:	000b8613          	mv	a2,s7
   15af4:	00048593          	mv	a1,s1
   15af8:	05c13023          	sd	t3,64(sp)
   15afc:	03e13c23          	sd	t5,56(sp)
   15b00:	02f13823          	sd	a5,48(sp)
   15b04:	02613423          	sd	t1,40(sp)
   15b08:	00e13823          	sd	a4,16(sp)
   15b0c:	05f13423          	sd	t6,72(sp)
   15b10:	091020ef          	jal	183a0 <strncmp>
   15b14:	01013703          	ld	a4,16(sp)
   15b18:	02813303          	ld	t1,40(sp)
   15b1c:	03013783          	ld	a5,48(sp)
   15b20:	03813f03          	ld	t5,56(sp)
   15b24:	04013e03          	ld	t3,64(sp)
   15b28:	28050463          	beqz	a0,15db0 <__gethex+0x504>
   15b2c:	04813f83          	ld	t6,72(sp)
   15b30:	f1cc12e3          	bne	s8,t3,15a34 <__gethex+0x188>
   15b34:	00f32023          	sw	a5,0(t1)
   15b38:	00400c13          	li	s8,4
   15b3c:	00430313          	addi	t1,t1,4
   15b40:	00000793          	li	a5,0
   15b44:	00000613          	li	a2,0
   15b48:	ef5ff06f          	j	15a3c <__gethex+0x190>
   15b4c:	3a0c8863          	beqz	s9,15efc <__gethex+0x650>
   15b50:	000c4783          	lbu	a5,0(s8)
   15b54:	e59ff06f          	j	159ac <__gethex+0x100>
   15b58:	000b8613          	mv	a2,s7
   15b5c:	00048593          	mv	a1,s1
   15b60:	000d8513          	mv	a0,s11
   15b64:	03d020ef          	jal	183a0 <strncmp>
   15b68:	26050063          	beqz	a0,15dc8 <__gethex+0x51c>
   15b6c:	000dc783          	lbu	a5,0(s11)
   15b70:	000d8c13          	mv	s8,s11
   15b74:	05000713          	li	a4,80
   15b78:	04e78c63          	beq	a5,a4,15bd0 <__gethex+0x324>
   15b7c:	07000713          	li	a4,112
   15b80:	04e78863          	beq	a5,a4,15bd0 <__gethex+0x324>
   15b84:	01893023          	sd	s8,0(s2)
   15b88:	001b3513          	seqz	a0,s6
   15b8c:	40a0053b          	negw	a0,a0
   15b90:	00657513          	andi	a0,a0,6
   15b94:	0b813083          	ld	ra,184(sp)
   15b98:	0b013403          	ld	s0,176(sp)
   15b9c:	0a813483          	ld	s1,168(sp)
   15ba0:	0a013903          	ld	s2,160(sp)
   15ba4:	09813983          	ld	s3,152(sp)
   15ba8:	09013a03          	ld	s4,144(sp)
   15bac:	08813a83          	ld	s5,136(sp)
   15bb0:	08013b03          	ld	s6,128(sp)
   15bb4:	07813b83          	ld	s7,120(sp)
   15bb8:	07013c03          	ld	s8,112(sp)
   15bbc:	06813c83          	ld	s9,104(sp)
   15bc0:	06013d03          	ld	s10,96(sp)
   15bc4:	05813d83          	ld	s11,88(sp)
   15bc8:	0c010113          	addi	sp,sp,192
   15bcc:	00008067          	ret
   15bd0:	00000c93          	li	s9,0
   15bd4:	00100413          	li	s0,1
   15bd8:	001c4783          	lbu	a5,1(s8)
   15bdc:	02b00713          	li	a4,43
   15be0:	26e78663          	beq	a5,a4,15e4c <__gethex+0x5a0>
   15be4:	02d00713          	li	a4,45
   15be8:	00100593          	li	a1,1
   15bec:	1ce79863          	bne	a5,a4,15dbc <__gethex+0x510>
   15bf0:	002c4783          	lbu	a5,2(s8)
   15bf4:	002c0513          	addi	a0,s8,2
   15bf8:	00fa87b3          	add	a5,s5,a5
   15bfc:	0007c783          	lbu	a5,0(a5)
   15c00:	01800e13          	li	t3,24
   15c04:	000c0d13          	mv	s10,s8
   15c08:	fff7871b          	addiw	a4,a5,-1
   15c0c:	0ff77713          	andi	a4,a4,255
   15c10:	daee6ee3          	bltu	t3,a4,159cc <__gethex+0x120>
   15c14:	00154703          	lbu	a4,1(a0)
   15c18:	ff07879b          	addiw	a5,a5,-16
   15c1c:	00150513          	addi	a0,a0,1
   15c20:	00ea8733          	add	a4,s5,a4
   15c24:	00074e83          	lbu	t4,0(a4)
   15c28:	fffe871b          	addiw	a4,t4,-1
   15c2c:	0ff77713          	andi	a4,a4,255
   15c30:	02ee6c63          	bltu	t3,a4,15c68 <__gethex+0x3bc>
   15c34:	00150513          	addi	a0,a0,1
   15c38:	00054603          	lbu	a2,0(a0)
   15c3c:	0017971b          	slliw	a4,a5,0x1
   15c40:	0037979b          	slliw	a5,a5,0x3
   15c44:	00ca8633          	add	a2,s5,a2
   15c48:	00064603          	lbu	a2,0(a2)
   15c4c:	00f707bb          	addw	a5,a4,a5
   15c50:	01d787bb          	addw	a5,a5,t4
   15c54:	fff6071b          	addiw	a4,a2,-1
   15c58:	0ff77713          	andi	a4,a4,255
   15c5c:	ff07879b          	addiw	a5,a5,-16
   15c60:	00060e93          	mv	t4,a2
   15c64:	fcee78e3          	bleu	a4,t3,15c34 <__gethex+0x388>
   15c68:	00058463          	beqz	a1,15c70 <__gethex+0x3c4>
   15c6c:	40f007bb          	negw	a5,a5
   15c70:	000c0d13          	mv	s10,s8
   15c74:	00fc8cbb          	addw	s9,s9,a5
   15c78:	00050c13          	mv	s8,a0
   15c7c:	d51ff06f          	j	159cc <__gethex+0x120>
   15c80:	fffc841b          	addiw	s0,s9,-1
   15c84:	2a0c1463          	bnez	s8,15f2c <__gethex+0x680>
   15c88:	00040a63          	beqz	s0,15c9c <__gethex+0x3f0>
   15c8c:	00040593          	mv	a1,s0
   15c90:	000b0513          	mv	a0,s6
   15c94:	2b8020ef          	jal	17f4c <__any_on>
   15c98:	00050c13          	mv	s8,a0
   15c9c:	4054579b          	sraiw	a5,s0,0x5
   15ca0:	00279793          	slli	a5,a5,0x2
   15ca4:	00f907b3          	add	a5,s2,a5
   15ca8:	0007a783          	lw	a5,0(a5)
   15cac:	00100713          	li	a4,1
   15cb0:	0087173b          	sllw	a4,a4,s0
   15cb4:	00f777b3          	and	a5,a4,a5
   15cb8:	00078463          	beqz	a5,15cc0 <__gethex+0x414>
   15cbc:	002c6c13          	ori	s8,s8,2
   15cc0:	000c8593          	mv	a1,s9
   15cc4:	000b0513          	mv	a0,s6
   15cc8:	af1ff0ef          	jal	157b8 <rshift>
   15ccc:	419484bb          	subw	s1,s1,s9
   15cd0:	0049ac83          	lw	s9,4(s3)
   15cd4:	00200413          	li	s0,2
   15cd8:	140c0e63          	beqz	s8,15e34 <__gethex+0x588>
   15cdc:	00c9a783          	lw	a5,12(s3)
   15ce0:	00200713          	li	a4,2
   15ce4:	12e78a63          	beq	a5,a4,15e18 <__gethex+0x56c>
   15ce8:	00300713          	li	a4,3
   15cec:	12e78e63          	beq	a5,a4,15e28 <__gethex+0x57c>
   15cf0:	00100713          	li	a4,1
   15cf4:	12e79e63          	bne	a5,a4,15e30 <__gethex+0x584>
   15cf8:	002c7793          	andi	a5,s8,2
   15cfc:	12078a63          	beqz	a5,15e30 <__gethex+0x584>
   15d00:	00092783          	lw	a5,0(s2)
   15d04:	00fc67b3          	or	a5,s8,a5
   15d08:	00e7f7b3          	and	a5,a5,a4
   15d0c:	12078263          	beqz	a5,15e30 <__gethex+0x584>
   15d10:	014b2c03          	lw	s8,20(s6)
   15d14:	00090793          	mv	a5,s2
   15d18:	fff00693          	li	a3,-1
   15d1c:	002c1b93          	slli	s7,s8,0x2
   15d20:	01790633          	add	a2,s2,s7
   15d24:	0100006f          	j	15d34 <__gethex+0x488>
   15d28:	00478793          	addi	a5,a5,4
   15d2c:	fe07ae23          	sw	zero,-4(a5)
   15d30:	26c7f263          	bleu	a2,a5,15f94 <__gethex+0x6e8>
   15d34:	0007a703          	lw	a4,0(a5)
   15d38:	fed708e3          	beq	a4,a3,15d28 <__gethex+0x47c>
   15d3c:	0017071b          	addiw	a4,a4,1
   15d40:	00e7a023          	sw	a4,0(a5)
   15d44:	00200793          	li	a5,2
   15d48:	26f40c63          	beq	s0,a5,15fc0 <__gethex+0x714>
   15d4c:	014b2783          	lw	a5,20(s6)
   15d50:	02fc4463          	blt	s8,a5,15d78 <__gethex+0x4cc>
   15d54:	01f4f493          	andi	s1,s1,31
   15d58:	02100413          	li	s0,33
   15d5c:	0c048c63          	beqz	s1,15e34 <__gethex+0x588>
   15d60:	01790933          	add	s2,s2,s7
   15d64:	ffc92503          	lw	a0,-4(s2)
   15d68:	510010ef          	jal	17278 <__hi0bits>
   15d6c:	02000793          	li	a5,32
   15d70:	409784bb          	subw	s1,a5,s1
   15d74:	0c955063          	ble	s1,a0,15e34 <__gethex+0x588>
   15d78:	00100593          	li	a1,1
   15d7c:	000b0513          	mv	a0,s6
   15d80:	a39ff0ef          	jal	157b8 <rshift>
   15d84:	0089a783          	lw	a5,8(s3)
   15d88:	001c8c9b          	addiw	s9,s9,1
   15d8c:	02100413          	li	s0,33
   15d90:	0b97d263          	ble	s9,a5,15e34 <__gethex+0x588>
   15d94:	000a0513          	mv	a0,s4
   15d98:	000b0593          	mv	a1,s6
   15d9c:	27c010ef          	jal	17018 <_Bfree>
   15da0:	00813783          	ld	a5,8(sp)
   15da4:	0a300513          	li	a0,163
   15da8:	0007b023          	sd	zero,0(a5)
   15dac:	de9ff06f          	j	15b94 <__gethex+0x2e8>
   15db0:	00070d13          	mv	s10,a4
   15db4:	c7ade8e3          	bltu	s11,s10,15a24 <__gethex+0x178>
   15db8:	ca5ff06f          	j	15a5c <__gethex+0x1b0>
   15dbc:	001c0513          	addi	a0,s8,1
   15dc0:	00000593          	li	a1,0
   15dc4:	e35ff06f          	j	15bf8 <__gethex+0x34c>
   15dc8:	017d8c33          	add	s8,s11,s7
   15dcc:	000c4703          	lbu	a4,0(s8)
   15dd0:	00ea87b3          	add	a5,s5,a4
   15dd4:	0007c783          	lbu	a5,0(a5)
   15dd8:	10078e63          	beqz	a5,15ef4 <__gethex+0x648>
   15ddc:	03000693          	li	a3,48
   15de0:	000c0d93          	mv	s11,s8
   15de4:	00d71e63          	bne	a4,a3,15e00 <__gethex+0x554>
   15de8:	00070793          	mv	a5,a4
   15dec:	001d8d93          	addi	s11,s11,1
   15df0:	000dc703          	lbu	a4,0(s11)
   15df4:	fef70ce3          	beq	a4,a5,15dec <__gethex+0x540>
   15df8:	00ea87b3          	add	a5,s5,a4
   15dfc:	0007c783          	lbu	a5,0(a5)
   15e00:	0017b413          	seqz	s0,a5
   15e04:	000c0c93          	mv	s9,s8
   15e08:	00100b13          	li	s6,1
   15e0c:	b69ff06f          	j	15974 <__gethex+0xc8>
   15e10:	00100413          	li	s0,1
   15e14:	ec5ff06f          	j	15cd8 <__gethex+0x42c>
   15e18:	02412703          	lw	a4,36(sp)
   15e1c:	00100793          	li	a5,1
   15e20:	40e787bb          	subw	a5,a5,a4
   15e24:	02f12223          	sw	a5,36(sp)
   15e28:	02412783          	lw	a5,36(sp)
   15e2c:	ee0792e3          	bnez	a5,15d10 <__gethex+0x464>
   15e30:	01046413          	ori	s0,s0,16
   15e34:	00813783          	ld	a5,8(sp)
   15e38:	00040513          	mv	a0,s0
   15e3c:	0167b023          	sd	s6,0(a5)
   15e40:	01813783          	ld	a5,24(sp)
   15e44:	0197a023          	sw	s9,0(a5)
   15e48:	d4dff06f          	j	15b94 <__gethex+0x2e8>
   15e4c:	00000593          	li	a1,0
   15e50:	da1ff06f          	j	15bf0 <__gethex+0x344>
   15e54:	4095043b          	subw	s0,a0,s1
   15e58:	00040593          	mv	a1,s0
   15e5c:	000b0513          	mv	a0,s6
   15e60:	0ec020ef          	jal	17f4c <__any_on>
   15e64:	00000c13          	li	s8,0
   15e68:	04050063          	beqz	a0,15ea8 <__gethex+0x5fc>
   15e6c:	fff4071b          	addiw	a4,s0,-1
   15e70:	4057579b          	sraiw	a5,a4,0x5
   15e74:	00279793          	slli	a5,a5,0x2
   15e78:	00f907b3          	add	a5,s2,a5
   15e7c:	0007a783          	lw	a5,0(a5)
   15e80:	00100c13          	li	s8,1
   15e84:	00ec16bb          	sllw	a3,s8,a4
   15e88:	00f6f7b3          	and	a5,a3,a5
   15e8c:	00078e63          	beqz	a5,15ea8 <__gethex+0x5fc>
   15e90:	0cec5863          	ble	a4,s8,15f60 <__gethex+0x6b4>
   15e94:	ffe4059b          	addiw	a1,s0,-2
   15e98:	000b0513          	mv	a0,s6
   15e9c:	0b0020ef          	jal	17f4c <__any_on>
   15ea0:	0c050063          	beqz	a0,15f60 <__gethex+0x6b4>
   15ea4:	00300c13          	li	s8,3
   15ea8:	00040593          	mv	a1,s0
   15eac:	000b0513          	mv	a0,s6
   15eb0:	909ff0ef          	jal	157b8 <rshift>
   15eb4:	008c8cbb          	addw	s9,s9,s0
   15eb8:	bddff06f          	j	15a94 <__gethex+0x1e8>
   15ebc:	00000c93          	li	s9,0
   15ec0:	af9ff06f          	j	159b8 <__gethex+0x10c>
   15ec4:	40a4843b          	subw	s0,s1,a0
   15ec8:	000b0593          	mv	a1,s6
   15ecc:	00040613          	mv	a2,s0
   15ed0:	000a0513          	mv	a0,s4
   15ed4:	031010ef          	jal	17704 <__lshift>
   15ed8:	00050b13          	mv	s6,a0
   15edc:	408c8cbb          	subw	s9,s9,s0
   15ee0:	01850913          	addi	s2,a0,24
   15ee4:	bb1ff06f          	j	15a94 <__gethex+0x1e8>
   15ee8:	00278d93          	addi	s11,a5,2
   15eec:	00000b13          	li	s6,0
   15ef0:	a5dff06f          	j	1594c <__gethex+0xa0>
   15ef4:	00070793          	mv	a5,a4
   15ef8:	c7dff06f          	j	15b74 <__gethex+0x2c8>
   15efc:	017c0cb3          	add	s9,s8,s7
   15f00:	000cc783          	lbu	a5,0(s9)
   15f04:	000c8c13          	mv	s8,s9
   15f08:	00fa8733          	add	a4,s5,a5
   15f0c:	00074703          	lbu	a4,0(a4)
   15f10:	a8070ee3          	beqz	a4,159ac <__gethex+0x100>
   15f14:	001c0c13          	addi	s8,s8,1
   15f18:	000c4783          	lbu	a5,0(s8)
   15f1c:	00fa8733          	add	a4,s5,a5
   15f20:	00074703          	lbu	a4,0(a4)
   15f24:	fe0718e3          	bnez	a4,15f14 <__gethex+0x668>
   15f28:	a85ff06f          	j	159ac <__gethex+0x100>
   15f2c:	00100c13          	li	s8,1
   15f30:	d6dff06f          	j	15c9c <__gethex+0x3f0>
   15f34:	02412703          	lw	a4,36(sp)
   15f38:	b80708e3          	beqz	a4,15ac8 <__gethex+0x21c>
   15f3c:	01813703          	ld	a4,24(sp)
   15f40:	06200513          	li	a0,98
   15f44:	00f72023          	sw	a5,0(a4)
   15f48:	00100793          	li	a5,1
   15f4c:	00fb2a23          	sw	a5,20(s6)
   15f50:	00f92023          	sw	a5,0(s2)
   15f54:	00813783          	ld	a5,8(sp)
   15f58:	0167b023          	sd	s6,0(a5)
   15f5c:	c39ff06f          	j	15b94 <__gethex+0x2e8>
   15f60:	00200c13          	li	s8,2
   15f64:	f45ff06f          	j	15ea8 <__gethex+0x5fc>
   15f68:	02412703          	lw	a4,36(sp)
   15f6c:	fc0708e3          	beqz	a4,15f3c <__gethex+0x690>
   15f70:	b59ff06f          	j	15ac8 <__gethex+0x21c>
   15f74:	b5949ae3          	bne	s1,s9,15ac8 <__gethex+0x21c>
   15f78:	fc9752e3          	ble	s1,a4,15f3c <__gethex+0x690>
   15f7c:	fff4859b          	addiw	a1,s1,-1
   15f80:	000b0513          	mv	a0,s6
   15f84:	7c9010ef          	jal	17f4c <__any_on>
   15f88:	b40500e3          	beqz	a0,15ac8 <__gethex+0x21c>
   15f8c:	0049a783          	lw	a5,4(s3)
   15f90:	fadff06f          	j	15f3c <__gethex+0x690>
   15f94:	014b2703          	lw	a4,20(s6)
   15f98:	00cb2783          	lw	a5,12(s6)
   15f9c:	04f75c63          	ble	a5,a4,15ff4 <__gethex+0x748>
   15fa0:	00470793          	addi	a5,a4,4
   15fa4:	00279793          	slli	a5,a5,0x2
   15fa8:	0017071b          	addiw	a4,a4,1
   15fac:	00eb2a23          	sw	a4,20(s6)
   15fb0:	00fb07b3          	add	a5,s6,a5
   15fb4:	00100713          	li	a4,1
   15fb8:	00e7a423          	sw	a4,8(a5)
   15fbc:	d89ff06f          	j	15d44 <__gethex+0x498>
   15fc0:	0009a783          	lw	a5,0(s3)
   15fc4:	02200413          	li	s0,34
   15fc8:	fff7879b          	addiw	a5,a5,-1
   15fcc:	e6f494e3          	bne	s1,a5,15e34 <__gethex+0x588>
   15fd0:	4054d79b          	sraiw	a5,s1,0x5
   15fd4:	00279793          	slli	a5,a5,0x2
   15fd8:	00f90933          	add	s2,s2,a5
   15fdc:	00092503          	lw	a0,0(s2)
   15fe0:	02200793          	li	a5,34
   15fe4:	0095553b          	srlw	a0,a0,s1
   15fe8:	00157413          	andi	s0,a0,1
   15fec:	4087843b          	subw	s0,a5,s0
   15ff0:	e45ff06f          	j	15e34 <__gethex+0x588>
   15ff4:	008b2583          	lw	a1,8(s6)
   15ff8:	000a0513          	mv	a0,s4
   15ffc:	0015859b          	addiw	a1,a1,1
   16000:	76d000ef          	jal	16f6c <_Balloc>
   16004:	014b2603          	lw	a2,20(s6)
   16008:	00050d13          	mv	s10,a0
   1600c:	010b0593          	addi	a1,s6,16
   16010:	00260613          	addi	a2,a2,2
   16014:	00261613          	slli	a2,a2,0x2
   16018:	01050513          	addi	a0,a0,16
   1601c:	54d000ef          	jal	16d68 <memcpy>
   16020:	000b0593          	mv	a1,s6
   16024:	000a0513          	mv	a0,s4
   16028:	7f1000ef          	jal	17018 <_Bfree>
   1602c:	014d2703          	lw	a4,20(s10)
   16030:	018d0913          	addi	s2,s10,24
   16034:	000d0b13          	mv	s6,s10
   16038:	f69ff06f          	j	15fa0 <__gethex+0x6f4>

000000000001603c <__hexnan>:
   1603c:	fd010113          	addi	sp,sp,-48
   16040:	01213c23          	sd	s2,24(sp)
   16044:	0005a903          	lw	s2,0(a1)
   16048:	02913023          	sd	s1,32(sp)
   1604c:	02813423          	sd	s0,40(sp)
   16050:	4059549b          	sraiw	s1,s2,0x5
   16054:	00249493          	slli	s1,s1,0x2
   16058:	01313823          	sd	s3,16(sp)
   1605c:	01413423          	sd	s4,8(sp)
   16060:	01f97913          	andi	s2,s2,31
   16064:	009604b3          	add	s1,a2,s1
   16068:	00090463          	beqz	s2,16070 <__hexnan+0x34>
   1606c:	00448493          	addi	s1,s1,4
   16070:	00053683          	ld	a3,0(a0)
   16074:	ffc48313          	addi	t1,s1,-4
   16078:	0001bfb7          	lui	t6,0x1b
   1607c:	fe04ae23          	sw	zero,-4(s1)
   16080:	00030f13          	mv	t5,t1
   16084:	00030593          	mv	a1,t1
   16088:	00000813          	li	a6,0
   1608c:	00000293          	li	t0,0
   16090:	00000e93          	li	t4,0
   16094:	0c8f8f93          	addi	t6,t6,200 # 1b0c8 <__hexdig>
   16098:	00800413          	li	s0,8
   1609c:	02000393          	li	t2,32
   160a0:	00700993          	li	s3,7
   160a4:	00168693          	addi	a3,a3,1
   160a8:	0006c703          	lbu	a4,0(a3)
   160ac:	08070263          	beqz	a4,16130 <__hexnan+0xf4>
   160b0:	02071793          	slli	a5,a4,0x20
   160b4:	0207d793          	srli	a5,a5,0x20
   160b8:	01f787b3          	add	a5,a5,t6
   160bc:	0007c783          	lbu	a5,0(a5)
   160c0:	0e079263          	bnez	a5,161a4 <__hexnan+0x168>
   160c4:	10e3ea63          	bltu	t2,a4,161d8 <__hexnan+0x19c>
   160c8:	fdd2dee3          	ble	t4,t0,160a4 <__hexnan+0x68>
   160cc:	03e5fe63          	bleu	t5,a1,16108 <__hexnan+0xcc>
   160d0:	0309cc63          	blt	s3,a6,16108 <__hexnan+0xcc>
   160d4:	4104083b          	subw	a6,s0,a6
   160d8:	0005a883          	lw	a7,0(a1)
   160dc:	0028181b          	slliw	a6,a6,0x2
   160e0:	41038a3b          	subw	s4,t2,a6
   160e4:	00058793          	mv	a5,a1
   160e8:	0047ae03          	lw	t3,4(a5)
   160ec:	00478793          	addi	a5,a5,4
   160f0:	014e173b          	sllw	a4,t3,s4
   160f4:	01176733          	or	a4,a4,a7
   160f8:	010e58bb          	srlw	a7,t3,a6
   160fc:	fee7ae23          	sw	a4,-4(a5)
   16100:	0117a023          	sw	a7,0(a5)
   16104:	ffe7e2e3          	bltu	a5,t5,160e8 <__hexnan+0xac>
   16108:	00800813          	li	a6,8
   1610c:	f8b67ce3          	bleu	a1,a2,160a4 <__hexnan+0x68>
   16110:	fe05ae23          	sw	zero,-4(a1)
   16114:	00168693          	addi	a3,a3,1
   16118:	0006c703          	lbu	a4,0(a3)
   1611c:	ffc58f13          	addi	t5,a1,-4
   16120:	000e8293          	mv	t0,t4
   16124:	000f0593          	mv	a1,t5
   16128:	00000813          	li	a6,0
   1612c:	f80712e3          	bnez	a4,160b0 <__hexnan+0x74>
   16130:	0a0e8863          	beqz	t4,161e0 <__hexnan+0x1a4>
   16134:	01e5f663          	bleu	t5,a1,16140 <__hexnan+0x104>
   16138:	00700793          	li	a5,7
   1613c:	1307d063          	ble	a6,a5,1625c <__hexnan+0x220>
   16140:	0cb67063          	bleu	a1,a2,16200 <__hexnan+0x1c4>
   16144:	00060793          	mv	a5,a2
   16148:	00458593          	addi	a1,a1,4
   1614c:	ffc5a703          	lw	a4,-4(a1)
   16150:	00478793          	addi	a5,a5,4
   16154:	fee7ae23          	sw	a4,-4(a5)
   16158:	feb378e3          	bleu	a1,t1,16148 <__hexnan+0x10c>
   1615c:	00478793          	addi	a5,a5,4
   16160:	fe07ae23          	sw	zero,-4(a5)
   16164:	fef37ce3          	bleu	a5,t1,1615c <__hexnan+0x120>
   16168:	ffc4a783          	lw	a5,-4(s1)
   1616c:	00500513          	li	a0,5
   16170:	06079a63          	bnez	a5,161e4 <__hexnan+0x1a8>
   16174:	0a660863          	beq	a2,t1,16224 <__hexnan+0x1e8>
   16178:	ffc30313          	addi	t1,t1,-4
   1617c:	00032783          	lw	a5,0(t1)
   16180:	fe078ae3          	beqz	a5,16174 <__hexnan+0x138>
   16184:	00500513          	li	a0,5
   16188:	02813403          	ld	s0,40(sp)
   1618c:	02013483          	ld	s1,32(sp)
   16190:	01813903          	ld	s2,24(sp)
   16194:	01013983          	ld	s3,16(sp)
   16198:	00813a03          	ld	s4,8(sp)
   1619c:	03010113          	addi	sp,sp,48
   161a0:	00008067          	ret
   161a4:	0018081b          	addiw	a6,a6,1
   161a8:	001e8e9b          	addiw	t4,t4,1
   161ac:	01045a63          	ble	a6,s0,161c0 <__hexnan+0x184>
   161b0:	eeb67ae3          	bleu	a1,a2,160a4 <__hexnan+0x68>
   161b4:	fe05ae23          	sw	zero,-4(a1)
   161b8:	00100813          	li	a6,1
   161bc:	ffc58593          	addi	a1,a1,-4
   161c0:	0005a703          	lw	a4,0(a1)
   161c4:	00f7f793          	andi	a5,a5,15
   161c8:	0047171b          	slliw	a4,a4,0x4
   161cc:	00f767b3          	or	a5,a4,a5
   161d0:	00f5a023          	sw	a5,0(a1)
   161d4:	ed1ff06f          	j	160a4 <__hexnan+0x68>
   161d8:	02900793          	li	a5,41
   161dc:	06f70863          	beq	a4,a5,1624c <__hexnan+0x210>
   161e0:	00400513          	li	a0,4
   161e4:	02813403          	ld	s0,40(sp)
   161e8:	02013483          	ld	s1,32(sp)
   161ec:	01813903          	ld	s2,24(sp)
   161f0:	01013983          	ld	s3,16(sp)
   161f4:	00813a03          	ld	s4,8(sp)
   161f8:	03010113          	addi	sp,sp,48
   161fc:	00008067          	ret
   16200:	ffc4a783          	lw	a5,-4(s1)
   16204:	f60904e3          	beqz	s2,1616c <__hexnan+0x130>
   16208:	02000713          	li	a4,32
   1620c:	4127093b          	subw	s2,a4,s2
   16210:	fff00713          	li	a4,-1
   16214:	0127573b          	srlw	a4,a4,s2
   16218:	00f777b3          	and	a5,a4,a5
   1621c:	fef4ae23          	sw	a5,-4(s1)
   16220:	f4dff06f          	j	1616c <__hexnan+0x130>
   16224:	00100793          	li	a5,1
   16228:	00500513          	li	a0,5
   1622c:	02813403          	ld	s0,40(sp)
   16230:	02013483          	ld	s1,32(sp)
   16234:	01813903          	ld	s2,24(sp)
   16238:	01013983          	ld	s3,16(sp)
   1623c:	00813a03          	ld	s4,8(sp)
   16240:	00f32023          	sw	a5,0(t1)
   16244:	03010113          	addi	sp,sp,48
   16248:	00008067          	ret
   1624c:	00168693          	addi	a3,a3,1
   16250:	00d53023          	sd	a3,0(a0)
   16254:	ee0e90e3          	bnez	t4,16134 <__hexnan+0xf8>
   16258:	f89ff06f          	j	161e0 <__hexnan+0x1a4>
   1625c:	00800793          	li	a5,8
   16260:	4107883b          	subw	a6,a5,a6
   16264:	0005a683          	lw	a3,0(a1)
   16268:	0028181b          	slliw	a6,a6,0x2
   1626c:	02000893          	li	a7,32
   16270:	410888bb          	subw	a7,a7,a6
   16274:	00058793          	mv	a5,a1
   16278:	0047a503          	lw	a0,4(a5)
   1627c:	00478793          	addi	a5,a5,4
   16280:	0115173b          	sllw	a4,a0,a7
   16284:	00d76733          	or	a4,a4,a3
   16288:	010556bb          	srlw	a3,a0,a6
   1628c:	fee7ae23          	sw	a4,-4(a5)
   16290:	00d7a023          	sw	a3,0(a5)
   16294:	ffe7e2e3          	bltu	a5,t5,16278 <__hexnan+0x23c>
   16298:	ea9ff06f          	j	16140 <__hexnan+0x104>

000000000001629c <_setlocale_r>:
   1629c:	fe010113          	addi	sp,sp,-32
   162a0:	00913423          	sd	s1,8(sp)
   162a4:	00113c23          	sd	ra,24(sp)
   162a8:	00813823          	sd	s0,16(sp)
   162ac:	0001b4b7          	lui	s1,0x1b
   162b0:	02060063          	beqz	a2,162d0 <_setlocale_r+0x34>
   162b4:	0001b5b7          	lui	a1,0x1b
   162b8:	51058593          	addi	a1,a1,1296 # 1b510 <zeroes.4137+0xa8>
   162bc:	00060513          	mv	a0,a2
   162c0:	00060413          	mv	s0,a2
   162c4:	6e1010ef          	jal	181a4 <strcmp>
   162c8:	0001b4b7          	lui	s1,0x1b
   162cc:	00051e63          	bnez	a0,162e8 <_setlocale_r+0x4c>
   162d0:	47848513          	addi	a0,s1,1144 # 1b478 <zeroes.4137+0x10>
   162d4:	01813083          	ld	ra,24(sp)
   162d8:	01013403          	ld	s0,16(sp)
   162dc:	00813483          	ld	s1,8(sp)
   162e0:	02010113          	addi	sp,sp,32
   162e4:	00008067          	ret
   162e8:	47848593          	addi	a1,s1,1144
   162ec:	00040513          	mv	a0,s0
   162f0:	6b5010ef          	jal	181a4 <strcmp>
   162f4:	fc050ee3          	beqz	a0,162d0 <_setlocale_r+0x34>
   162f8:	0001b5b7          	lui	a1,0x1b
   162fc:	4c858593          	addi	a1,a1,1224 # 1b4c8 <zeroes.4137+0x60>
   16300:	00040513          	mv	a0,s0
   16304:	6a1010ef          	jal	181a4 <strcmp>
   16308:	fc0504e3          	beqz	a0,162d0 <_setlocale_r+0x34>
   1630c:	00000513          	li	a0,0
   16310:	fc5ff06f          	j	162d4 <_setlocale_r+0x38>

0000000000016314 <__locale_charset>:
   16314:	0001d537          	lui	a0,0x1d
   16318:	e2850513          	addi	a0,a0,-472 # 1ce28 <lc_ctype_charset>
   1631c:	00008067          	ret

0000000000016320 <__locale_mb_cur_max>:
   16320:	8181a503          	lw	a0,-2024(gp) # 1d6f8 <__mb_cur_max>
   16324:	00008067          	ret

0000000000016328 <__locale_msgcharset>:
   16328:	0001d537          	lui	a0,0x1d
   1632c:	e4850513          	addi	a0,a0,-440 # 1ce48 <lc_message_charset>
   16330:	00008067          	ret

0000000000016334 <__locale_cjk_lang>:
   16334:	00000513          	li	a0,0
   16338:	00008067          	ret

000000000001633c <_localeconv_r>:
   1633c:	0001d537          	lui	a0,0x1d
   16340:	e6850513          	addi	a0,a0,-408 # 1ce68 <lconv>
   16344:	00008067          	ret

0000000000016348 <setlocale>:
   16348:	00058613          	mv	a2,a1
   1634c:	00050593          	mv	a1,a0
   16350:	8101b503          	ld	a0,-2032(gp) # 1d6f0 <_impure_ptr>
   16354:	f49ff06f          	j	1629c <_setlocale_r>

0000000000016358 <localeconv>:
   16358:	0001d537          	lui	a0,0x1d
   1635c:	e6850513          	addi	a0,a0,-408 # 1ce68 <lconv>
   16360:	00008067          	ret

0000000000016364 <__smakebuf_r>:
   16364:	01059783          	lh	a5,16(a1)
   16368:	f5010113          	addi	sp,sp,-176
   1636c:	08913c23          	sd	s1,152(sp)
   16370:	03079493          	slli	s1,a5,0x30
   16374:	0304d493          	srli	s1,s1,0x30
   16378:	0a113423          	sd	ra,168(sp)
   1637c:	0a813023          	sd	s0,160(sp)
   16380:	09213823          	sd	s2,144(sp)
   16384:	09313423          	sd	s3,136(sp)
   16388:	0024f713          	andi	a4,s1,2
   1638c:	0e071063          	bnez	a4,1646c <__smakebuf_r+0x108>
   16390:	00050913          	mv	s2,a0
   16394:	01259503          	lh	a0,18(a1)
   16398:	00058413          	mv	s0,a1
   1639c:	04054c63          	bltz	a0,163f4 <__smakebuf_r+0x90>
   163a0:	00010593          	mv	a1,sp
   163a4:	698040ef          	jal	1aa3c <fstat>
   163a8:	04054063          	bltz	a0,163e8 <__smakebuf_r+0x84>
   163ac:	01012703          	lw	a4,16(sp)
   163b0:	0000f7b7          	lui	a5,0xf
   163b4:	ffffe9b7          	lui	s3,0xffffe
   163b8:	00f777b3          	and	a5,a4,a5
   163bc:	013789bb          	addw	s3,a5,s3
   163c0:	00008737          	lui	a4,0x8
   163c4:	0019b993          	seqz	s3,s3
   163c8:	0ce78a63          	beq	a5,a4,1649c <__smakebuf_r+0x138>
   163cc:	01045703          	lhu	a4,16(s0)
   163d0:	000017b7          	lui	a5,0x1
   163d4:	8007879b          	addiw	a5,a5,-2048
   163d8:	00f767b3          	or	a5,a4,a5
   163dc:	00f41823          	sh	a5,16(s0)
   163e0:	40000493          	li	s1,1024
   163e4:	0340006f          	j	16418 <__smakebuf_r+0xb4>
   163e8:	01041783          	lh	a5,16(s0)
   163ec:	03079493          	slli	s1,a5,0x30
   163f0:	0304d493          	srli	s1,s1,0x30
   163f4:	03849493          	slli	s1,s1,0x38
   163f8:	00001737          	lui	a4,0x1
   163fc:	43f4d493          	srai	s1,s1,0x3f
   16400:	8007071b          	addiw	a4,a4,-2048
   16404:	c404f493          	andi	s1,s1,-960
   16408:	00e7e7b3          	or	a5,a5,a4
   1640c:	40048493          	addi	s1,s1,1024
   16410:	00f41823          	sh	a5,16(s0)
   16414:	00000993          	li	s3,0
   16418:	00048593          	mv	a1,s1
   1641c:	00090513          	mv	a0,s2
   16420:	0f0000ef          	jal	16510 <_malloc_r>
   16424:	0c050063          	beqz	a0,164e4 <__smakebuf_r+0x180>
   16428:	01045783          	lhu	a5,16(s0)
   1642c:	00015737          	lui	a4,0x15
   16430:	eb870713          	addi	a4,a4,-328 # 14eb8 <_cleanup_r>
   16434:	04e93c23          	sd	a4,88(s2)
   16438:	0807e793          	ori	a5,a5,128
   1643c:	00f41823          	sh	a5,16(s0)
   16440:	00a43023          	sd	a0,0(s0)
   16444:	00a43c23          	sd	a0,24(s0)
   16448:	02942023          	sw	s1,32(s0)
   1644c:	06099e63          	bnez	s3,164c8 <__smakebuf_r+0x164>
   16450:	0a813083          	ld	ra,168(sp)
   16454:	0a013403          	ld	s0,160(sp)
   16458:	09813483          	ld	s1,152(sp)
   1645c:	09013903          	ld	s2,144(sp)
   16460:	08813983          	ld	s3,136(sp)
   16464:	0b010113          	addi	sp,sp,176
   16468:	00008067          	ret
   1646c:	0a813083          	ld	ra,168(sp)
   16470:	07758793          	addi	a5,a1,119
   16474:	00f5b023          	sd	a5,0(a1)
   16478:	00f5bc23          	sd	a5,24(a1)
   1647c:	00100793          	li	a5,1
   16480:	0a013403          	ld	s0,160(sp)
   16484:	09813483          	ld	s1,152(sp)
   16488:	09013903          	ld	s2,144(sp)
   1648c:	08813983          	ld	s3,136(sp)
   16490:	02f5a023          	sw	a5,32(a1)
   16494:	0b010113          	addi	sp,sp,176
   16498:	00008067          	ret
   1649c:	04843703          	ld	a4,72(s0)
   164a0:	000187b7          	lui	a5,0x18
   164a4:	13078793          	addi	a5,a5,304 # 18130 <__sseek>
   164a8:	f2f712e3          	bne	a4,a5,163cc <__smakebuf_r+0x68>
   164ac:	01045783          	lhu	a5,16(s0)
   164b0:	40000713          	li	a4,1024
   164b4:	08e42423          	sw	a4,136(s0)
   164b8:	00e7e7b3          	or	a5,a5,a4
   164bc:	00f41823          	sh	a5,16(s0)
   164c0:	40000493          	li	s1,1024
   164c4:	f55ff06f          	j	16418 <__smakebuf_r+0xb4>
   164c8:	01241503          	lh	a0,18(s0)
   164cc:	6fc040ef          	jal	1abc8 <isatty>
   164d0:	f80500e3          	beqz	a0,16450 <__smakebuf_r+0xec>
   164d4:	01045783          	lhu	a5,16(s0)
   164d8:	0017e793          	ori	a5,a5,1
   164dc:	00f41823          	sh	a5,16(s0)
   164e0:	f71ff06f          	j	16450 <__smakebuf_r+0xec>
   164e4:	01041783          	lh	a5,16(s0)
   164e8:	2007f713          	andi	a4,a5,512
   164ec:	f60712e3          	bnez	a4,16450 <__smakebuf_r+0xec>
   164f0:	0027e793          	ori	a5,a5,2
   164f4:	07740713          	addi	a4,s0,119
   164f8:	00f41823          	sh	a5,16(s0)
   164fc:	00100793          	li	a5,1
   16500:	00e43023          	sd	a4,0(s0)
   16504:	00e43c23          	sd	a4,24(s0)
   16508:	02f42023          	sw	a5,32(s0)
   1650c:	f45ff06f          	j	16450 <__smakebuf_r+0xec>

0000000000016510 <_malloc_r>:
   16510:	fa010113          	addi	sp,sp,-96
   16514:	04913423          	sd	s1,72(sp)
   16518:	03313c23          	sd	s3,56(sp)
   1651c:	04113c23          	sd	ra,88(sp)
   16520:	04813823          	sd	s0,80(sp)
   16524:	05213023          	sd	s2,64(sp)
   16528:	03413823          	sd	s4,48(sp)
   1652c:	03513423          	sd	s5,40(sp)
   16530:	03613023          	sd	s6,32(sp)
   16534:	01713c23          	sd	s7,24(sp)
   16538:	01813823          	sd	s8,16(sp)
   1653c:	01913423          	sd	s9,8(sp)
   16540:	01758493          	addi	s1,a1,23
   16544:	02e00793          	li	a5,46
   16548:	00050993          	mv	s3,a0
   1654c:	1c97fa63          	bleu	s1,a5,16720 <_malloc_r+0x210>
   16550:	800007b7          	lui	a5,0x80000
   16554:	ff04f493          	andi	s1,s1,-16
   16558:	fff7c793          	not	a5,a5
   1655c:	2497ee63          	bltu	a5,s1,167b8 <_malloc_r+0x2a8>
   16560:	24b4ec63          	bltu	s1,a1,167b8 <_malloc_r+0x2a8>
   16564:	201000ef          	jal	16f64 <__malloc_lock>
   16568:	1f700793          	li	a5,503
   1656c:	7097f063          	bleu	s1,a5,16c6c <_malloc_r+0x75c>
   16570:	0094d793          	srli	a5,s1,0x9
   16574:	08000693          	li	a3,128
   16578:	04000513          	li	a0,64
   1657c:	03f00593          	li	a1,63
   16580:	24079463          	bnez	a5,167c8 <_malloc_r+0x2b8>
   16584:	0001d937          	lui	s2,0x1d
   16588:	ec890913          	addi	s2,s2,-312 # 1cec8 <__malloc_av_>
   1658c:	00369693          	slli	a3,a3,0x3
   16590:	00d906b3          	add	a3,s2,a3
   16594:	0086b403          	ld	s0,8(a3)
   16598:	ff068693          	addi	a3,a3,-16
   1659c:	24868663          	beq	a3,s0,167e8 <_malloc_r+0x2d8>
   165a0:	00843783          	ld	a5,8(s0)
   165a4:	01f00613          	li	a2,31
   165a8:	ffc7f793          	andi	a5,a5,-4
   165ac:	40978733          	sub	a4,a5,s1
   165b0:	02e64063          	blt	a2,a4,165d0 <_malloc_r+0xc0>
   165b4:	22075e63          	bgez	a4,167f0 <_malloc_r+0x2e0>
   165b8:	01843403          	ld	s0,24(s0)
   165bc:	22868663          	beq	a3,s0,167e8 <_malloc_r+0x2d8>
   165c0:	00843783          	ld	a5,8(s0)
   165c4:	ffc7f793          	andi	a5,a5,-4
   165c8:	40978733          	sub	a4,a5,s1
   165cc:	fee654e3          	ble	a4,a2,165b4 <_malloc_r+0xa4>
   165d0:	00058693          	mv	a3,a1
   165d4:	02093403          	ld	s0,32(s2)
   165d8:	01090813          	addi	a6,s2,16
   165dc:	47040a63          	beq	s0,a6,16a50 <_malloc_r+0x540>
   165e0:	00843783          	ld	a5,8(s0)
   165e4:	01f00613          	li	a2,31
   165e8:	ffc7f793          	andi	a5,a5,-4
   165ec:	40978733          	sub	a4,a5,s1
   165f0:	44e64a63          	blt	a2,a4,16a44 <_malloc_r+0x534>
   165f4:	03093423          	sd	a6,40(s2)
   165f8:	03093023          	sd	a6,32(s2)
   165fc:	20075063          	bgez	a4,167fc <_malloc_r+0x2ec>
   16600:	1ff00713          	li	a4,511
   16604:	3cf76c63          	bltu	a4,a5,169dc <_malloc_r+0x4cc>
   16608:	0037d793          	srli	a5,a5,0x3
   1660c:	0007879b          	sext.w	a5,a5
   16610:	0017861b          	addiw	a2,a5,1
   16614:	0016161b          	slliw	a2,a2,0x1
   16618:	00361613          	slli	a2,a2,0x3
   1661c:	00893703          	ld	a4,8(s2)
   16620:	00c90633          	add	a2,s2,a2
   16624:	00063503          	ld	a0,0(a2)
   16628:	4027d79b          	sraiw	a5,a5,0x2
   1662c:	00100593          	li	a1,1
   16630:	00f597b3          	sll	a5,a1,a5
   16634:	00e7e7b3          	or	a5,a5,a4
   16638:	ff060713          	addi	a4,a2,-16
   1663c:	00e43c23          	sd	a4,24(s0)
   16640:	00a43823          	sd	a0,16(s0)
   16644:	00f93423          	sd	a5,8(s2)
   16648:	00863023          	sd	s0,0(a2)
   1664c:	00853c23          	sd	s0,24(a0)
   16650:	4026d61b          	sraiw	a2,a3,0x2
   16654:	00100713          	li	a4,1
   16658:	00c71633          	sll	a2,a4,a2
   1665c:	1cc7e063          	bltu	a5,a2,1681c <_malloc_r+0x30c>
   16660:	00f67733          	and	a4,a2,a5
   16664:	02071463          	bnez	a4,1668c <_malloc_r+0x17c>
   16668:	00161613          	slli	a2,a2,0x1
   1666c:	ffc6f693          	andi	a3,a3,-4
   16670:	00f67733          	and	a4,a2,a5
   16674:	0046869b          	addiw	a3,a3,4
   16678:	00071a63          	bnez	a4,1668c <_malloc_r+0x17c>
   1667c:	00161613          	slli	a2,a2,0x1
   16680:	00f67733          	and	a4,a2,a5
   16684:	0046869b          	addiw	a3,a3,4
   16688:	fe070ae3          	beqz	a4,1667c <_malloc_r+0x16c>
   1668c:	01f00513          	li	a0,31
   16690:	0016889b          	addiw	a7,a3,1
   16694:	0018989b          	slliw	a7,a7,0x1
   16698:	00389893          	slli	a7,a7,0x3
   1669c:	011908b3          	add	a7,s2,a7
   166a0:	ff088893          	addi	a7,a7,-16
   166a4:	00088593          	mv	a1,a7
   166a8:	00068313          	mv	t1,a3
   166ac:	0185b403          	ld	s0,24(a1)
   166b0:	00859a63          	bne	a1,s0,166c4 <_malloc_r+0x1b4>
   166b4:	3a40006f          	j	16a58 <_malloc_r+0x548>
   166b8:	3c075263          	bgez	a4,16a7c <_malloc_r+0x56c>
   166bc:	01843403          	ld	s0,24(s0)
   166c0:	38858c63          	beq	a1,s0,16a58 <_malloc_r+0x548>
   166c4:	00843783          	ld	a5,8(s0)
   166c8:	ffc7f793          	andi	a5,a5,-4
   166cc:	40978733          	sub	a4,a5,s1
   166d0:	fee554e3          	ble	a4,a0,166b8 <_malloc_r+0x1a8>
   166d4:	01843783          	ld	a5,24(s0)
   166d8:	01043683          	ld	a3,16(s0)
   166dc:	0014e613          	ori	a2,s1,1
   166e0:	00c43423          	sd	a2,8(s0)
   166e4:	00f6bc23          	sd	a5,24(a3)
   166e8:	00d7b823          	sd	a3,16(a5) # ffffffff80000010 <_gp+0xffffffff7ffe2130>
   166ec:	009404b3          	add	s1,s0,s1
   166f0:	02993423          	sd	s1,40(s2)
   166f4:	02993023          	sd	s1,32(s2)
   166f8:	00176793          	ori	a5,a4,1
   166fc:	0104bc23          	sd	a6,24(s1)
   16700:	0104b823          	sd	a6,16(s1)
   16704:	00f4b423          	sd	a5,8(s1)
   16708:	00e484b3          	add	s1,s1,a4
   1670c:	00098513          	mv	a0,s3
   16710:	00e4b023          	sd	a4,0(s1)
   16714:	055000ef          	jal	16f68 <__malloc_unlock>
   16718:	01040513          	addi	a0,s0,16
   1671c:	0680006f          	j	16784 <_malloc_r+0x274>
   16720:	02000493          	li	s1,32
   16724:	08b4ea63          	bltu	s1,a1,167b8 <_malloc_r+0x2a8>
   16728:	03d000ef          	jal	16f64 <__malloc_lock>
   1672c:	00a00793          	li	a5,10
   16730:	00400693          	li	a3,4
   16734:	0001d937          	lui	s2,0x1d
   16738:	ec890913          	addi	s2,s2,-312 # 1cec8 <__malloc_av_>
   1673c:	00379793          	slli	a5,a5,0x3
   16740:	00f907b3          	add	a5,s2,a5
   16744:	0087b403          	ld	s0,8(a5)
   16748:	ff078713          	addi	a4,a5,-16
   1674c:	32e40063          	beq	s0,a4,16a6c <_malloc_r+0x55c>
   16750:	00843783          	ld	a5,8(s0)
   16754:	01843683          	ld	a3,24(s0)
   16758:	01043603          	ld	a2,16(s0)
   1675c:	ffc7f793          	andi	a5,a5,-4
   16760:	00f407b3          	add	a5,s0,a5
   16764:	0087b703          	ld	a4,8(a5)
   16768:	00d63c23          	sd	a3,24(a2)
   1676c:	00c6b823          	sd	a2,16(a3)
   16770:	00176713          	ori	a4,a4,1
   16774:	00098513          	mv	a0,s3
   16778:	00e7b423          	sd	a4,8(a5)
   1677c:	7ec000ef          	jal	16f68 <__malloc_unlock>
   16780:	01040513          	addi	a0,s0,16
   16784:	05813083          	ld	ra,88(sp)
   16788:	05013403          	ld	s0,80(sp)
   1678c:	04813483          	ld	s1,72(sp)
   16790:	04013903          	ld	s2,64(sp)
   16794:	03813983          	ld	s3,56(sp)
   16798:	03013a03          	ld	s4,48(sp)
   1679c:	02813a83          	ld	s5,40(sp)
   167a0:	02013b03          	ld	s6,32(sp)
   167a4:	01813b83          	ld	s7,24(sp)
   167a8:	01013c03          	ld	s8,16(sp)
   167ac:	00813c83          	ld	s9,8(sp)
   167b0:	06010113          	addi	sp,sp,96
   167b4:	00008067          	ret
   167b8:	00c00793          	li	a5,12
   167bc:	00f9a023          	sw	a5,0(s3) # ffffffffffffe000 <_gp+0xfffffffffffe0120>
   167c0:	00000513          	li	a0,0
   167c4:	fc1ff06f          	j	16784 <_malloc_r+0x274>
   167c8:	00400713          	li	a4,4
   167cc:	1ef76463          	bltu	a4,a5,169b4 <_malloc_r+0x4a4>
   167d0:	0064d593          	srli	a1,s1,0x6
   167d4:	0005859b          	sext.w	a1,a1
   167d8:	0395851b          	addiw	a0,a1,57
   167dc:	0015169b          	slliw	a3,a0,0x1
   167e0:	0385859b          	addiw	a1,a1,56
   167e4:	da1ff06f          	j	16584 <_malloc_r+0x74>
   167e8:	00050693          	mv	a3,a0
   167ec:	de9ff06f          	j	165d4 <_malloc_r+0xc4>
   167f0:	01843683          	ld	a3,24(s0)
   167f4:	01043603          	ld	a2,16(s0)
   167f8:	f69ff06f          	j	16760 <_malloc_r+0x250>
   167fc:	00f407b3          	add	a5,s0,a5
   16800:	0087b703          	ld	a4,8(a5)
   16804:	00098513          	mv	a0,s3
   16808:	00176713          	ori	a4,a4,1
   1680c:	00e7b423          	sd	a4,8(a5)
   16810:	758000ef          	jal	16f68 <__malloc_unlock>
   16814:	01040513          	addi	a0,s0,16
   16818:	f6dff06f          	j	16784 <_malloc_r+0x274>
   1681c:	01093403          	ld	s0,16(s2)
   16820:	00843703          	ld	a4,8(s0)
   16824:	ffc77b93          	andi	s7,a4,-4
   16828:	009be863          	bltu	s7,s1,16838 <_malloc_r+0x328>
   1682c:	409b87b3          	sub	a5,s7,s1
   16830:	01f00713          	li	a4,31
   16834:	14f74c63          	blt	a4,a5,1698c <_malloc_r+0x47c>
   16838:	8f01b783          	ld	a5,-1808(gp) # 1d7d0 <__malloc_top_pad>
   1683c:	8201b683          	ld	a3,-2016(gp) # 1d700 <__malloc_sbrk_base>
   16840:	fff00713          	li	a4,-1
   16844:	00f487b3          	add	a5,s1,a5
   16848:	01740a33          	add	s4,s0,s7
   1684c:	02078b13          	addi	s6,a5,32
   16850:	00e68c63          	beq	a3,a4,16868 <_malloc_r+0x358>
   16854:	00001b37          	lui	s6,0x1
   16858:	01fb0b13          	addi	s6,s6,31 # 101f <_ftext-0xefe1>
   1685c:	01678b33          	add	s6,a5,s6
   16860:	fffff7b7          	lui	a5,0xfffff
   16864:	00fb7b33          	and	s6,s6,a5
   16868:	000b0513          	mv	a0,s6
   1686c:	49c040ef          	jal	1ad08 <sbrk>
   16870:	fff00793          	li	a5,-1
   16874:	00050a93          	mv	s5,a0
   16878:	26f50263          	beq	a0,a5,16adc <_malloc_r+0x5cc>
   1687c:	25456e63          	bltu	a0,s4,16ad8 <_malloc_r+0x5c8>
   16880:	93818c13          	addi	s8,gp,-1736 # 1d818 <__malloc_current_mallinfo>
   16884:	000c2783          	lw	a5,0(s8)
   16888:	00fb07bb          	addw	a5,s6,a5
   1688c:	00fc2023          	sw	a5,0(s8)
   16890:	355a0463          	beq	s4,s5,16bd8 <_malloc_r+0x6c8>
   16894:	8201b683          	ld	a3,-2016(gp) # 1d700 <__malloc_sbrk_base>
   16898:	fff00713          	li	a4,-1
   1689c:	36e68263          	beq	a3,a4,16c00 <_malloc_r+0x6f0>
   168a0:	414a8a33          	sub	s4,s5,s4
   168a4:	00fa07bb          	addw	a5,s4,a5
   168a8:	00fc2023          	sw	a5,0(s8)
   168ac:	00faf713          	andi	a4,s5,15
   168b0:	000017b7          	lui	a5,0x1
   168b4:	00070a63          	beqz	a4,168c8 <_malloc_r+0x3b8>
   168b8:	40ea8ab3          	sub	s5,s5,a4
   168bc:	01078a13          	addi	s4,a5,16 # 1010 <_ftext-0xeff0>
   168c0:	010a8a93          	addi	s5,s5,16
   168c4:	40ea07b3          	sub	a5,s4,a4
   168c8:	00001a37          	lui	s4,0x1
   168cc:	fffa0a13          	addi	s4,s4,-1 # fff <_ftext-0xf001>
   168d0:	016a8b33          	add	s6,s5,s6
   168d4:	014b7b33          	and	s6,s6,s4
   168d8:	41678a33          	sub	s4,a5,s6
   168dc:	000a0513          	mv	a0,s4
   168e0:	428040ef          	jal	1ad08 <sbrk>
   168e4:	fff00793          	li	a5,-1
   168e8:	30f50663          	beq	a0,a5,16bf4 <_malloc_r+0x6e4>
   168ec:	41550733          	sub	a4,a0,s5
   168f0:	01470733          	add	a4,a4,s4
   168f4:	00176713          	ori	a4,a4,1
   168f8:	000a0a1b          	sext.w	s4,s4
   168fc:	000c2783          	lw	a5,0(s8)
   16900:	01593823          	sd	s5,16(s2)
   16904:	00eab423          	sd	a4,8(s5)
   16908:	00fa07bb          	addw	a5,s4,a5
   1690c:	00fc2023          	sw	a5,0(s8)
   16910:	03240c63          	beq	s0,s2,16948 <_malloc_r+0x438>
   16914:	01f00613          	li	a2,31
   16918:	27767463          	bleu	s7,a2,16b80 <_malloc_r+0x670>
   1691c:	00843683          	ld	a3,8(s0)
   16920:	fe8b8713          	addi	a4,s7,-24
   16924:	ff077713          	andi	a4,a4,-16
   16928:	0016f693          	andi	a3,a3,1
   1692c:	00e6e6b3          	or	a3,a3,a4
   16930:	00d43423          	sd	a3,8(s0)
   16934:	00900593          	li	a1,9
   16938:	00e406b3          	add	a3,s0,a4
   1693c:	00b6b423          	sd	a1,8(a3)
   16940:	00b6b823          	sd	a1,16(a3)
   16944:	2ce66263          	bltu	a2,a4,16c08 <_malloc_r+0x6f8>
   16948:	8e81b683          	ld	a3,-1816(gp) # 1d7c8 <__malloc_max_sbrked_mem>
   1694c:	00f6f463          	bleu	a5,a3,16954 <_malloc_r+0x444>
   16950:	8ef1b423          	sd	a5,-1816(gp) # 1d7c8 <__malloc_max_sbrked_mem>
   16954:	8e01b683          	ld	a3,-1824(gp) # 1d7c0 <__malloc_max_total_mem>
   16958:	01093403          	ld	s0,16(s2)
   1695c:	00f6f463          	bleu	a5,a3,16964 <_malloc_r+0x454>
   16960:	8ef1b023          	sd	a5,-1824(gp) # 1d7c0 <__malloc_max_total_mem>
   16964:	00843703          	ld	a4,8(s0)
   16968:	ffc77713          	andi	a4,a4,-4
   1696c:	409707b3          	sub	a5,a4,s1
   16970:	00976663          	bltu	a4,s1,1697c <_malloc_r+0x46c>
   16974:	01f00713          	li	a4,31
   16978:	00f74a63          	blt	a4,a5,1698c <_malloc_r+0x47c>
   1697c:	00098513          	mv	a0,s3
   16980:	5e8000ef          	jal	16f68 <__malloc_unlock>
   16984:	00000513          	li	a0,0
   16988:	dfdff06f          	j	16784 <_malloc_r+0x274>
   1698c:	0014e713          	ori	a4,s1,1
   16990:	00e43423          	sd	a4,8(s0)
   16994:	009404b3          	add	s1,s0,s1
   16998:	00993823          	sd	s1,16(s2)
   1699c:	0017e793          	ori	a5,a5,1
   169a0:	00098513          	mv	a0,s3
   169a4:	00f4b423          	sd	a5,8(s1)
   169a8:	5c0000ef          	jal	16f68 <__malloc_unlock>
   169ac:	01040513          	addi	a0,s0,16
   169b0:	dd5ff06f          	j	16784 <_malloc_r+0x274>
   169b4:	01400713          	li	a4,20
   169b8:	0ef77a63          	bleu	a5,a4,16aac <_malloc_r+0x59c>
   169bc:	05400713          	li	a4,84
   169c0:	18f76063          	bltu	a4,a5,16b40 <_malloc_r+0x630>
   169c4:	00c4d593          	srli	a1,s1,0xc
   169c8:	0005859b          	sext.w	a1,a1
   169cc:	06f5851b          	addiw	a0,a1,111
   169d0:	0015169b          	slliw	a3,a0,0x1
   169d4:	06e5859b          	addiw	a1,a1,110
   169d8:	badff06f          	j	16584 <_malloc_r+0x74>
   169dc:	0097d713          	srli	a4,a5,0x9
   169e0:	00400613          	li	a2,4
   169e4:	0ce67e63          	bleu	a4,a2,16ac0 <_malloc_r+0x5b0>
   169e8:	01400613          	li	a2,20
   169ec:	1ce66663          	bltu	a2,a4,16bb8 <_malloc_r+0x6a8>
   169f0:	0007071b          	sext.w	a4,a4
   169f4:	05c7059b          	addiw	a1,a4,92
   169f8:	05b7061b          	addiw	a2,a4,91
   169fc:	0015959b          	slliw	a1,a1,0x1
   16a00:	00359593          	slli	a1,a1,0x3
   16a04:	00b905b3          	add	a1,s2,a1
   16a08:	0005b703          	ld	a4,0(a1)
   16a0c:	ff058593          	addi	a1,a1,-16
   16a10:	14e58863          	beq	a1,a4,16b60 <_malloc_r+0x650>
   16a14:	00873603          	ld	a2,8(a4)
   16a18:	ffc67613          	andi	a2,a2,-4
   16a1c:	00c7f663          	bleu	a2,a5,16a28 <_malloc_r+0x518>
   16a20:	01073703          	ld	a4,16(a4)
   16a24:	fee598e3          	bne	a1,a4,16a14 <_malloc_r+0x504>
   16a28:	01873583          	ld	a1,24(a4)
   16a2c:	00893783          	ld	a5,8(s2)
   16a30:	00b43c23          	sd	a1,24(s0)
   16a34:	00e43823          	sd	a4,16(s0)
   16a38:	0085b823          	sd	s0,16(a1)
   16a3c:	00873c23          	sd	s0,24(a4)
   16a40:	c11ff06f          	j	16650 <_malloc_r+0x140>
   16a44:	0014e793          	ori	a5,s1,1
   16a48:	00f43423          	sd	a5,8(s0)
   16a4c:	ca1ff06f          	j	166ec <_malloc_r+0x1dc>
   16a50:	00893783          	ld	a5,8(s2)
   16a54:	bfdff06f          	j	16650 <_malloc_r+0x140>
   16a58:	0013031b          	addiw	t1,t1,1
   16a5c:	00337793          	andi	a5,t1,3
   16a60:	01058593          	addi	a1,a1,16
   16a64:	c40794e3          	bnez	a5,166ac <_malloc_r+0x19c>
   16a68:	0900006f          	j	16af8 <_malloc_r+0x5e8>
   16a6c:	0187b403          	ld	s0,24(a5)
   16a70:	0026869b          	addiw	a3,a3,2
   16a74:	b68780e3          	beq	a5,s0,165d4 <_malloc_r+0xc4>
   16a78:	cd9ff06f          	j	16750 <_malloc_r+0x240>
   16a7c:	00f407b3          	add	a5,s0,a5
   16a80:	0087b703          	ld	a4,8(a5)
   16a84:	01843683          	ld	a3,24(s0)
   16a88:	01043603          	ld	a2,16(s0)
   16a8c:	00176713          	ori	a4,a4,1
   16a90:	00e7b423          	sd	a4,8(a5)
   16a94:	00d63c23          	sd	a3,24(a2)
   16a98:	00098513          	mv	a0,s3
   16a9c:	00c6b823          	sd	a2,16(a3)
   16aa0:	4c8000ef          	jal	16f68 <__malloc_unlock>
   16aa4:	01040513          	addi	a0,s0,16
   16aa8:	cddff06f          	j	16784 <_malloc_r+0x274>
   16aac:	0007879b          	sext.w	a5,a5
   16ab0:	05c7851b          	addiw	a0,a5,92
   16ab4:	05b7859b          	addiw	a1,a5,91
   16ab8:	0015169b          	slliw	a3,a0,0x1
   16abc:	ac9ff06f          	j	16584 <_malloc_r+0x74>
   16ac0:	0067d713          	srli	a4,a5,0x6
   16ac4:	0007071b          	sext.w	a4,a4
   16ac8:	0397059b          	addiw	a1,a4,57
   16acc:	0387061b          	addiw	a2,a4,56
   16ad0:	0015959b          	slliw	a1,a1,0x1
   16ad4:	f2dff06f          	j	16a00 <_malloc_r+0x4f0>
   16ad8:	db2404e3          	beq	s0,s2,16880 <_malloc_r+0x370>
   16adc:	01093403          	ld	s0,16(s2)
   16ae0:	00843703          	ld	a4,8(s0)
   16ae4:	ffc77713          	andi	a4,a4,-4
   16ae8:	e85ff06f          	j	1696c <_malloc_r+0x45c>
   16aec:	0108b783          	ld	a5,16(a7)
   16af0:	fff6869b          	addiw	a3,a3,-1
   16af4:	16f89863          	bne	a7,a5,16c64 <_malloc_r+0x754>
   16af8:	0036f793          	andi	a5,a3,3
   16afc:	ff088893          	addi	a7,a7,-16
   16b00:	fe0796e3          	bnez	a5,16aec <_malloc_r+0x5dc>
   16b04:	00893783          	ld	a5,8(s2)
   16b08:	fff64713          	not	a4,a2
   16b0c:	00f777b3          	and	a5,a4,a5
   16b10:	00f93423          	sd	a5,8(s2)
   16b14:	00161613          	slli	a2,a2,0x1
   16b18:	d0c7e2e3          	bltu	a5,a2,1681c <_malloc_r+0x30c>
   16b1c:	d00600e3          	beqz	a2,1681c <_malloc_r+0x30c>
   16b20:	00f67733          	and	a4,a2,a5
   16b24:	00030693          	mv	a3,t1
   16b28:	b60714e3          	bnez	a4,16690 <_malloc_r+0x180>
   16b2c:	00161613          	slli	a2,a2,0x1
   16b30:	00f67733          	and	a4,a2,a5
   16b34:	0046869b          	addiw	a3,a3,4
   16b38:	fe070ae3          	beqz	a4,16b2c <_malloc_r+0x61c>
   16b3c:	b55ff06f          	j	16690 <_malloc_r+0x180>
   16b40:	15400713          	li	a4,340
   16b44:	04f76463          	bltu	a4,a5,16b8c <_malloc_r+0x67c>
   16b48:	00f4d593          	srli	a1,s1,0xf
   16b4c:	0005859b          	sext.w	a1,a1
   16b50:	0785851b          	addiw	a0,a1,120
   16b54:	0015169b          	slliw	a3,a0,0x1
   16b58:	0775859b          	addiw	a1,a1,119
   16b5c:	a29ff06f          	j	16584 <_malloc_r+0x74>
   16b60:	00893783          	ld	a5,8(s2)
   16b64:	4026571b          	sraiw	a4,a2,0x2
   16b68:	00100613          	li	a2,1
   16b6c:	00e61733          	sll	a4,a2,a4
   16b70:	00f767b3          	or	a5,a4,a5
   16b74:	00f93423          	sd	a5,8(s2)
   16b78:	00058713          	mv	a4,a1
   16b7c:	eb5ff06f          	j	16a30 <_malloc_r+0x520>
   16b80:	00100793          	li	a5,1
   16b84:	00fab423          	sd	a5,8(s5)
   16b88:	df5ff06f          	j	1697c <_malloc_r+0x46c>
   16b8c:	55400713          	li	a4,1364
   16b90:	0fe00693          	li	a3,254
   16b94:	07f00513          	li	a0,127
   16b98:	07e00593          	li	a1,126
   16b9c:	9ef764e3          	bltu	a4,a5,16584 <_malloc_r+0x74>
   16ba0:	0124d593          	srli	a1,s1,0x12
   16ba4:	0005859b          	sext.w	a1,a1
   16ba8:	07d5851b          	addiw	a0,a1,125
   16bac:	0015169b          	slliw	a3,a0,0x1
   16bb0:	07c5859b          	addiw	a1,a1,124
   16bb4:	9d1ff06f          	j	16584 <_malloc_r+0x74>
   16bb8:	05400613          	li	a2,84
   16bbc:	06e66063          	bltu	a2,a4,16c1c <_malloc_r+0x70c>
   16bc0:	00c7d713          	srli	a4,a5,0xc
   16bc4:	0007071b          	sext.w	a4,a4
   16bc8:	06f7059b          	addiw	a1,a4,111
   16bcc:	06e7061b          	addiw	a2,a4,110
   16bd0:	0015959b          	slliw	a1,a1,0x1
   16bd4:	e2dff06f          	j	16a00 <_malloc_r+0x4f0>
   16bd8:	034a1713          	slli	a4,s4,0x34
   16bdc:	ca071ce3          	bnez	a4,16894 <_malloc_r+0x384>
   16be0:	01093683          	ld	a3,16(s2)
   16be4:	016b8733          	add	a4,s7,s6
   16be8:	00176713          	ori	a4,a4,1
   16bec:	00e6b423          	sd	a4,8(a3)
   16bf0:	d59ff06f          	j	16948 <_malloc_r+0x438>
   16bf4:	00100713          	li	a4,1
   16bf8:	00000a13          	li	s4,0
   16bfc:	d01ff06f          	j	168fc <_malloc_r+0x3ec>
   16c00:	8351b023          	sd	s5,-2016(gp) # 1d700 <__malloc_sbrk_base>
   16c04:	ca9ff06f          	j	168ac <_malloc_r+0x39c>
   16c08:	01040593          	addi	a1,s0,16
   16c0c:	00098513          	mv	a0,s3
   16c10:	f28fe0ef          	jal	15338 <_free_r>
   16c14:	000c2783          	lw	a5,0(s8)
   16c18:	d31ff06f          	j	16948 <_malloc_r+0x438>
   16c1c:	15400613          	li	a2,340
   16c20:	00e66e63          	bltu	a2,a4,16c3c <_malloc_r+0x72c>
   16c24:	00f7d713          	srli	a4,a5,0xf
   16c28:	0007071b          	sext.w	a4,a4
   16c2c:	0787059b          	addiw	a1,a4,120
   16c30:	0777061b          	addiw	a2,a4,119
   16c34:	0015959b          	slliw	a1,a1,0x1
   16c38:	dc9ff06f          	j	16a00 <_malloc_r+0x4f0>
   16c3c:	55400513          	li	a0,1364
   16c40:	0fe00593          	li	a1,254
   16c44:	07e00613          	li	a2,126
   16c48:	dae56ce3          	bltu	a0,a4,16a00 <_malloc_r+0x4f0>
   16c4c:	0127d713          	srli	a4,a5,0x12
   16c50:	0007071b          	sext.w	a4,a4
   16c54:	07d7059b          	addiw	a1,a4,125
   16c58:	07c7061b          	addiw	a2,a4,124
   16c5c:	0015959b          	slliw	a1,a1,0x1
   16c60:	da1ff06f          	j	16a00 <_malloc_r+0x4f0>
   16c64:	00893783          	ld	a5,8(s2)
   16c68:	eadff06f          	j	16b14 <_malloc_r+0x604>
   16c6c:	0034d693          	srli	a3,s1,0x3
   16c70:	0006869b          	sext.w	a3,a3
   16c74:	0016879b          	addiw	a5,a3,1
   16c78:	0017979b          	slliw	a5,a5,0x1
   16c7c:	ab9ff06f          	j	16734 <_malloc_r+0x224>

0000000000016c80 <memchr>:
   16c80:	00757793          	andi	a5,a0,7
   16c84:	0ff5f813          	andi	a6,a1,255
   16c88:	0c078c63          	beqz	a5,16d60 <memchr+0xe0>
   16c8c:	fff60793          	addi	a5,a2,-1
   16c90:	06060463          	beqz	a2,16cf8 <memchr+0x78>
   16c94:	00054703          	lbu	a4,0(a0)
   16c98:	07070263          	beq	a4,a6,16cfc <memchr+0x7c>
   16c9c:	00080693          	mv	a3,a6
   16ca0:	0140006f          	j	16cb4 <memchr+0x34>
   16ca4:	04078a63          	beqz	a5,16cf8 <memchr+0x78>
   16ca8:	00054703          	lbu	a4,0(a0)
   16cac:	fff78793          	addi	a5,a5,-1
   16cb0:	04d70663          	beq	a4,a3,16cfc <memchr+0x7c>
   16cb4:	00150513          	addi	a0,a0,1
   16cb8:	00757713          	andi	a4,a0,7
   16cbc:	fe0714e3          	bnez	a4,16ca4 <memchr+0x24>
   16cc0:	00700693          	li	a3,7
   16cc4:	02f6ee63          	bltu	a3,a5,16d00 <memchr+0x80>
   16cc8:	02078863          	beqz	a5,16cf8 <memchr+0x78>
   16ccc:	00054703          	lbu	a4,0(a0)
   16cd0:	03070663          	beq	a4,a6,16cfc <memchr+0x7c>
   16cd4:	00150713          	addi	a4,a0,1
   16cd8:	00f507b3          	add	a5,a0,a5
   16cdc:	00080613          	mv	a2,a6
   16ce0:	0100006f          	j	16cf0 <memchr+0x70>
   16ce4:	00170713          	addi	a4,a4,1
   16ce8:	fff74683          	lbu	a3,-1(a4)
   16cec:	00c68863          	beq	a3,a2,16cfc <memchr+0x7c>
   16cf0:	00070513          	mv	a0,a4
   16cf4:	fee798e3          	bne	a5,a4,16ce4 <memchr+0x64>
   16cf8:	00000513          	li	a0,0
   16cfc:	00008067          	ret
   16d00:	0ff5f593          	andi	a1,a1,255
   16d04:	0085971b          	slliw	a4,a1,0x8
   16d08:	00b765b3          	or	a1,a4,a1
   16d0c:	00058713          	mv	a4,a1
   16d10:	01071613          	slli	a2,a4,0x10
   16d14:	00c76733          	or	a4,a4,a2
   16d18:	0001d637          	lui	a2,0x1d
   16d1c:	79063303          	ld	t1,1936(a2) # 1d790 <__wctomb+0x80>
   16d20:	0001d637          	lui	a2,0x1d
   16d24:	79863883          	ld	a7,1944(a2) # 1d798 <__wctomb+0x88>
   16d28:	02071613          	slli	a2,a4,0x20
   16d2c:	00e66633          	or	a2,a2,a4
   16d30:	00068593          	mv	a1,a3
   16d34:	00053703          	ld	a4,0(a0)
   16d38:	00e64733          	xor	a4,a2,a4
   16d3c:	006706b3          	add	a3,a4,t1
   16d40:	fff74713          	not	a4,a4
   16d44:	00e6f733          	and	a4,a3,a4
   16d48:	01177733          	and	a4,a4,a7
   16d4c:	f80710e3          	bnez	a4,16ccc <memchr+0x4c>
   16d50:	ff878793          	addi	a5,a5,-8
   16d54:	00850513          	addi	a0,a0,8
   16d58:	fcf5eee3          	bltu	a1,a5,16d34 <memchr+0xb4>
   16d5c:	f6dff06f          	j	16cc8 <memchr+0x48>
   16d60:	00060793          	mv	a5,a2
   16d64:	f5dff06f          	j	16cc0 <memchr+0x40>

0000000000016d68 <memcpy>:
   16d68:	00a5c7b3          	xor	a5,a1,a0
   16d6c:	0077f793          	andi	a5,a5,7
   16d70:	00c508b3          	add	a7,a0,a2
   16d74:	0e079263          	bnez	a5,16e58 <memcpy+0xf0>
   16d78:	00700793          	li	a5,7
   16d7c:	0ec7fe63          	bleu	a2,a5,16e78 <memcpy+0x110>
   16d80:	00757793          	andi	a5,a0,7
   16d84:	04079a63          	bnez	a5,16dd8 <memcpy+0x70>
   16d88:	ff88f813          	andi	a6,a7,-8
   16d8c:	fc080793          	addi	a5,a6,-64
   16d90:	00050713          	mv	a4,a0
   16d94:	06f56663          	bltu	a0,a5,16e00 <memcpy+0x98>
   16d98:	00058693          	mv	a3,a1
   16d9c:	00070793          	mv	a5,a4
   16da0:	03077863          	bleu	a6,a4,16dd0 <memcpy+0x68>
   16da4:	0006b603          	ld	a2,0(a3)
   16da8:	00878793          	addi	a5,a5,8
   16dac:	00868693          	addi	a3,a3,8
   16db0:	fec7bc23          	sd	a2,-8(a5)
   16db4:	ff07e8e3          	bltu	a5,a6,16da4 <memcpy+0x3c>
   16db8:	fff74793          	not	a5,a4
   16dbc:	01078833          	add	a6,a5,a6
   16dc0:	ff887813          	andi	a6,a6,-8
   16dc4:	00880813          	addi	a6,a6,8
   16dc8:	01070733          	add	a4,a4,a6
   16dcc:	010585b3          	add	a1,a1,a6
   16dd0:	09176863          	bltu	a4,a7,16e60 <memcpy+0xf8>
   16dd4:	00008067          	ret
   16dd8:	00050713          	mv	a4,a0
   16ddc:	0005c683          	lbu	a3,0(a1)
   16de0:	00170713          	addi	a4,a4,1
   16de4:	00777793          	andi	a5,a4,7
   16de8:	fed70fa3          	sb	a3,-1(a4)
   16dec:	00158593          	addi	a1,a1,1
   16df0:	fe0796e3          	bnez	a5,16ddc <memcpy+0x74>
   16df4:	ff88f813          	andi	a6,a7,-8
   16df8:	fc080793          	addi	a5,a6,-64
   16dfc:	f8f77ee3          	bleu	a5,a4,16d98 <memcpy+0x30>
   16e00:	0005b383          	ld	t2,0(a1)
   16e04:	0085b283          	ld	t0,8(a1)
   16e08:	0105bf83          	ld	t6,16(a1)
   16e0c:	0185bf03          	ld	t5,24(a1)
   16e10:	0205be83          	ld	t4,32(a1)
   16e14:	0285be03          	ld	t3,40(a1)
   16e18:	0305b303          	ld	t1,48(a1)
   16e1c:	0385b603          	ld	a2,56(a1)
   16e20:	04858593          	addi	a1,a1,72
   16e24:	04870713          	addi	a4,a4,72
   16e28:	ff85b683          	ld	a3,-8(a1)
   16e2c:	fa773c23          	sd	t2,-72(a4)
   16e30:	fc573023          	sd	t0,-64(a4)
   16e34:	fdf73423          	sd	t6,-56(a4)
   16e38:	fde73823          	sd	t5,-48(a4)
   16e3c:	fdd73c23          	sd	t4,-40(a4)
   16e40:	ffc73023          	sd	t3,-32(a4)
   16e44:	fe673423          	sd	t1,-24(a4)
   16e48:	fec73823          	sd	a2,-16(a4)
   16e4c:	fed73c23          	sd	a3,-8(a4)
   16e50:	faf768e3          	bltu	a4,a5,16e00 <memcpy+0x98>
   16e54:	f45ff06f          	j	16d98 <memcpy+0x30>
   16e58:	00050713          	mv	a4,a0
   16e5c:	03157463          	bleu	a7,a0,16e84 <memcpy+0x11c>
   16e60:	0005c783          	lbu	a5,0(a1)
   16e64:	00170713          	addi	a4,a4,1
   16e68:	00158593          	addi	a1,a1,1
   16e6c:	fef70fa3          	sb	a5,-1(a4)
   16e70:	ff1768e3          	bltu	a4,a7,16e60 <memcpy+0xf8>
   16e74:	00008067          	ret
   16e78:	00050713          	mv	a4,a0
   16e7c:	ff1562e3          	bltu	a0,a7,16e60 <memcpy+0xf8>
   16e80:	f55ff06f          	j	16dd4 <memcpy+0x6c>
   16e84:	00008067          	ret

0000000000016e88 <memset>:
   16e88:	00f00813          	li	a6,15
   16e8c:	00050713          	mv	a4,a0
   16e90:	02c87a63          	bleu	a2,a6,16ec4 <memset+0x3c>
   16e94:	00f77793          	andi	a5,a4,15
   16e98:	0a079063          	bnez	a5,16f38 <memset+0xb0>
   16e9c:	06059e63          	bnez	a1,16f18 <memset+0x90>
   16ea0:	ff067693          	andi	a3,a2,-16
   16ea4:	00f67613          	andi	a2,a2,15
   16ea8:	00e686b3          	add	a3,a3,a4
   16eac:	00b73023          	sd	a1,0(a4)
   16eb0:	00b73423          	sd	a1,8(a4)
   16eb4:	01070713          	addi	a4,a4,16
   16eb8:	fed76ae3          	bltu	a4,a3,16eac <memset+0x24>
   16ebc:	00061463          	bnez	a2,16ec4 <memset+0x3c>
   16ec0:	00008067          	ret
   16ec4:	40c806b3          	sub	a3,a6,a2
   16ec8:	00269693          	slli	a3,a3,0x2
   16ecc:	00000297          	auipc	t0,0x0
   16ed0:	005686b3          	add	a3,a3,t0
   16ed4:	00c68067          	jr	a3,12
   16ed8:	00b70723          	sb	a1,14(a4)
   16edc:	00b706a3          	sb	a1,13(a4)
   16ee0:	00b70623          	sb	a1,12(a4)
   16ee4:	00b705a3          	sb	a1,11(a4)
   16ee8:	00b70523          	sb	a1,10(a4)
   16eec:	00b704a3          	sb	a1,9(a4)
   16ef0:	00b70423          	sb	a1,8(a4)
   16ef4:	00b703a3          	sb	a1,7(a4)
   16ef8:	00b70323          	sb	a1,6(a4)
   16efc:	00b702a3          	sb	a1,5(a4)
   16f00:	00b70223          	sb	a1,4(a4)
   16f04:	00b701a3          	sb	a1,3(a4)
   16f08:	00b70123          	sb	a1,2(a4)
   16f0c:	00b700a3          	sb	a1,1(a4)
   16f10:	00b70023          	sb	a1,0(a4)
   16f14:	00008067          	ret
   16f18:	0ff5f593          	andi	a1,a1,255
   16f1c:	00859693          	slli	a3,a1,0x8
   16f20:	00d5e5b3          	or	a1,a1,a3
   16f24:	01059693          	slli	a3,a1,0x10
   16f28:	00d5e5b3          	or	a1,a1,a3
   16f2c:	02059693          	slli	a3,a1,0x20
   16f30:	00d5e5b3          	or	a1,a1,a3
   16f34:	f6dff06f          	j	16ea0 <memset+0x18>
   16f38:	00279693          	slli	a3,a5,0x2
   16f3c:	00000297          	auipc	t0,0x0
   16f40:	005686b3          	add	a3,a3,t0
   16f44:	00008293          	mv	t0,ra
   16f48:	f98680e7          	jalr	a3,-104
   16f4c:	00028093          	mv	ra,t0
   16f50:	ff078793          	addi	a5,a5,-16
   16f54:	40f70733          	sub	a4,a4,a5
   16f58:	00f60633          	add	a2,a2,a5
   16f5c:	f6c874e3          	bleu	a2,a6,16ec4 <memset+0x3c>
   16f60:	f3dff06f          	j	16e9c <memset+0x14>

0000000000016f64 <__malloc_lock>:
   16f64:	00008067          	ret

0000000000016f68 <__malloc_unlock>:
   16f68:	00008067          	ret

0000000000016f6c <_Balloc>:
   16f6c:	07853783          	ld	a5,120(a0)
   16f70:	fe010113          	addi	sp,sp,-32
   16f74:	00813823          	sd	s0,16(sp)
   16f78:	00913423          	sd	s1,8(sp)
   16f7c:	00113c23          	sd	ra,24(sp)
   16f80:	01213023          	sd	s2,0(sp)
   16f84:	00050413          	mv	s0,a0
   16f88:	00058493          	mv	s1,a1
   16f8c:	02078e63          	beqz	a5,16fc8 <_Balloc+0x5c>
   16f90:	00349513          	slli	a0,s1,0x3
   16f94:	00a787b3          	add	a5,a5,a0
   16f98:	0007b503          	ld	a0,0(a5)
   16f9c:	04050663          	beqz	a0,16fe8 <_Balloc+0x7c>
   16fa0:	00053703          	ld	a4,0(a0)
   16fa4:	00e7b023          	sd	a4,0(a5)
   16fa8:	00052a23          	sw	zero,20(a0)
   16fac:	00052823          	sw	zero,16(a0)
   16fb0:	01813083          	ld	ra,24(sp)
   16fb4:	01013403          	ld	s0,16(sp)
   16fb8:	00813483          	ld	s1,8(sp)
   16fbc:	00013903          	ld	s2,0(sp)
   16fc0:	02010113          	addi	sp,sp,32
   16fc4:	00008067          	ret
   16fc8:	04100613          	li	a2,65
   16fcc:	00800593          	li	a1,8
   16fd0:	71c020ef          	jal	196ec <_calloc_r>
   16fd4:	06a43c23          	sd	a0,120(s0)
   16fd8:	00050793          	mv	a5,a0
   16fdc:	fa051ae3          	bnez	a0,16f90 <_Balloc+0x24>
   16fe0:	00000513          	li	a0,0
   16fe4:	fcdff06f          	j	16fb0 <_Balloc+0x44>
   16fe8:	00100913          	li	s2,1
   16fec:	0099193b          	sllw	s2,s2,s1
   16ff0:	fff9061b          	addiw	a2,s2,-1
   16ff4:	00860613          	addi	a2,a2,8
   16ff8:	00261613          	slli	a2,a2,0x2
   16ffc:	00100593          	li	a1,1
   17000:	00040513          	mv	a0,s0
   17004:	6e8020ef          	jal	196ec <_calloc_r>
   17008:	fc050ce3          	beqz	a0,16fe0 <_Balloc+0x74>
   1700c:	00952423          	sw	s1,8(a0)
   17010:	01252623          	sw	s2,12(a0)
   17014:	f95ff06f          	j	16fa8 <_Balloc+0x3c>

0000000000017018 <_Bfree>:
   17018:	02058063          	beqz	a1,17038 <_Bfree+0x20>
   1701c:	0085a783          	lw	a5,8(a1)
   17020:	07853703          	ld	a4,120(a0)
   17024:	00379793          	slli	a5,a5,0x3
   17028:	00f707b3          	add	a5,a4,a5
   1702c:	0007b703          	ld	a4,0(a5)
   17030:	00e5b023          	sd	a4,0(a1)
   17034:	00b7b023          	sd	a1,0(a5)
   17038:	00008067          	ret

000000000001703c <__multadd>:
   1703c:	fc010113          	addi	sp,sp,-64
   17040:	00010837          	lui	a6,0x10
   17044:	02813823          	sd	s0,48(sp)
   17048:	02913423          	sd	s1,40(sp)
   1704c:	03213023          	sd	s2,32(sp)
   17050:	00058493          	mv	s1,a1
   17054:	0145a403          	lw	s0,20(a1)
   17058:	00050913          	mv	s2,a0
   1705c:	02113c23          	sd	ra,56(sp)
   17060:	01313c23          	sd	s3,24(sp)
   17064:	01858593          	addi	a1,a1,24
   17068:	00000513          	li	a0,0
   1706c:	fff8081b          	addiw	a6,a6,-1
   17070:	0005a783          	lw	a5,0(a1)
   17074:	00458593          	addi	a1,a1,4
   17078:	0015051b          	addiw	a0,a0,1
   1707c:	0107f733          	and	a4,a5,a6
   17080:	02c7073b          	mulw	a4,a4,a2
   17084:	0107d79b          	srliw	a5,a5,0x10
   17088:	02c787bb          	mulw	a5,a5,a2
   1708c:	00d7073b          	addw	a4,a4,a3
   17090:	0107569b          	srliw	a3,a4,0x10
   17094:	01077733          	and	a4,a4,a6
   17098:	00d786bb          	addw	a3,a5,a3
   1709c:	0106979b          	slliw	a5,a3,0x10
   170a0:	00e7873b          	addw	a4,a5,a4
   170a4:	fee5ae23          	sw	a4,-4(a1)
   170a8:	0106d69b          	srliw	a3,a3,0x10
   170ac:	fc8542e3          	blt	a0,s0,17070 <__multadd+0x34>
   170b0:	02068263          	beqz	a3,170d4 <__multadd+0x98>
   170b4:	00c4a783          	lw	a5,12(s1)
   170b8:	02f45e63          	ble	a5,s0,170f4 <__multadd+0xb8>
   170bc:	00440793          	addi	a5,s0,4
   170c0:	00279793          	slli	a5,a5,0x2
   170c4:	00f487b3          	add	a5,s1,a5
   170c8:	00d7a423          	sw	a3,8(a5)
   170cc:	0014041b          	addiw	s0,s0,1
   170d0:	0084aa23          	sw	s0,20(s1)
   170d4:	03813083          	ld	ra,56(sp)
   170d8:	00048513          	mv	a0,s1
   170dc:	03013403          	ld	s0,48(sp)
   170e0:	02813483          	ld	s1,40(sp)
   170e4:	02013903          	ld	s2,32(sp)
   170e8:	01813983          	ld	s3,24(sp)
   170ec:	04010113          	addi	sp,sp,64
   170f0:	00008067          	ret
   170f4:	0084a583          	lw	a1,8(s1)
   170f8:	00090513          	mv	a0,s2
   170fc:	00d13423          	sd	a3,8(sp)
   17100:	0015859b          	addiw	a1,a1,1
   17104:	e69ff0ef          	jal	16f6c <_Balloc>
   17108:	0144a603          	lw	a2,20(s1)
   1710c:	00050993          	mv	s3,a0
   17110:	01048593          	addi	a1,s1,16
   17114:	00260613          	addi	a2,a2,2
   17118:	01050513          	addi	a0,a0,16
   1711c:	00261613          	slli	a2,a2,0x2
   17120:	c49ff0ef          	jal	16d68 <memcpy>
   17124:	0084a703          	lw	a4,8(s1)
   17128:	07893783          	ld	a5,120(s2)
   1712c:	00813683          	ld	a3,8(sp)
   17130:	00371713          	slli	a4,a4,0x3
   17134:	00e787b3          	add	a5,a5,a4
   17138:	0007b703          	ld	a4,0(a5)
   1713c:	00e4b023          	sd	a4,0(s1)
   17140:	0097b023          	sd	s1,0(a5)
   17144:	00098493          	mv	s1,s3
   17148:	f75ff06f          	j	170bc <__multadd+0x80>

000000000001714c <__s2b>:
   1714c:	fc010113          	addi	sp,sp,-64
   17150:	0086879b          	addiw	a5,a3,8
   17154:	03213023          	sd	s2,32(sp)
   17158:	00068913          	mv	s2,a3
   1715c:	00900693          	li	a3,9
   17160:	02d7c6bb          	divw	a3,a5,a3
   17164:	02813823          	sd	s0,48(sp)
   17168:	02913423          	sd	s1,40(sp)
   1716c:	01313c23          	sd	s3,24(sp)
   17170:	01413823          	sd	s4,16(sp)
   17174:	02113c23          	sd	ra,56(sp)
   17178:	01513423          	sd	s5,8(sp)
   1717c:	01613023          	sd	s6,0(sp)
   17180:	00100793          	li	a5,1
   17184:	00058413          	mv	s0,a1
   17188:	00050993          	mv	s3,a0
   1718c:	00060a13          	mv	s4,a2
   17190:	00070493          	mv	s1,a4
   17194:	00000593          	li	a1,0
   17198:	00d7d863          	ble	a3,a5,171a8 <__s2b+0x5c>
   1719c:	0017979b          	slliw	a5,a5,0x1
   171a0:	0015859b          	addiw	a1,a1,1
   171a4:	fed7cce3          	blt	a5,a3,1719c <__s2b+0x50>
   171a8:	00098513          	mv	a0,s3
   171ac:	dc1ff0ef          	jal	16f6c <_Balloc>
   171b0:	00100793          	li	a5,1
   171b4:	00f52a23          	sw	a5,20(a0)
   171b8:	00952c23          	sw	s1,24(a0)
   171bc:	00900793          	li	a5,9
   171c0:	0b47d663          	ble	s4,a5,1726c <__s2b+0x120>
   171c4:	ff6a0b1b          	addiw	s6,s4,-10
   171c8:	020b1b13          	slli	s6,s6,0x20
   171cc:	020b5b13          	srli	s6,s6,0x20
   171d0:	00940a93          	addi	s5,s0,9
   171d4:	00ab0793          	addi	a5,s6,10
   171d8:	00f40433          	add	s0,s0,a5
   171dc:	000a8493          	mv	s1,s5
   171e0:	00148493          	addi	s1,s1,1
   171e4:	fff4c683          	lbu	a3,-1(s1)
   171e8:	00050593          	mv	a1,a0
   171ec:	00a00613          	li	a2,10
   171f0:	fd06869b          	addiw	a3,a3,-48
   171f4:	00098513          	mv	a0,s3
   171f8:	e45ff0ef          	jal	1703c <__multadd>
   171fc:	fe8492e3          	bne	s1,s0,171e0 <__s2b+0x94>
   17200:	016a8433          	add	s0,s5,s6
   17204:	00240413          	addi	s0,s0,2
   17208:	032a5e63          	ble	s2,s4,17244 <__s2b+0xf8>
   1720c:	fff9091b          	addiw	s2,s2,-1
   17210:	414904bb          	subw	s1,s2,s4
   17214:	02049493          	slli	s1,s1,0x20
   17218:	0204d493          	srli	s1,s1,0x20
   1721c:	00148493          	addi	s1,s1,1
   17220:	009404b3          	add	s1,s0,s1
   17224:	00140413          	addi	s0,s0,1
   17228:	fff44683          	lbu	a3,-1(s0)
   1722c:	00050593          	mv	a1,a0
   17230:	00a00613          	li	a2,10
   17234:	fd06869b          	addiw	a3,a3,-48
   17238:	00098513          	mv	a0,s3
   1723c:	e01ff0ef          	jal	1703c <__multadd>
   17240:	fe9412e3          	bne	s0,s1,17224 <__s2b+0xd8>
   17244:	03813083          	ld	ra,56(sp)
   17248:	03013403          	ld	s0,48(sp)
   1724c:	02813483          	ld	s1,40(sp)
   17250:	02013903          	ld	s2,32(sp)
   17254:	01813983          	ld	s3,24(sp)
   17258:	01013a03          	ld	s4,16(sp)
   1725c:	00813a83          	ld	s5,8(sp)
   17260:	00013b03          	ld	s6,0(sp)
   17264:	04010113          	addi	sp,sp,64
   17268:	00008067          	ret
   1726c:	00a40413          	addi	s0,s0,10
   17270:	00078a13          	mv	s4,a5
   17274:	f95ff06f          	j	17208 <__s2b+0xbc>

0000000000017278 <__hi0bits>:
   17278:	ffff06b7          	lui	a3,0xffff0
   1727c:	00d576b3          	and	a3,a0,a3
   17280:	00050793          	mv	a5,a0
   17284:	00000713          	li	a4,0
   17288:	00069663          	bnez	a3,17294 <__hi0bits+0x1c>
   1728c:	0105179b          	slliw	a5,a0,0x10
   17290:	01000713          	li	a4,16
   17294:	ff0006b7          	lui	a3,0xff000
   17298:	00d7f6b3          	and	a3,a5,a3
   1729c:	00069663          	bnez	a3,172a8 <__hi0bits+0x30>
   172a0:	0087071b          	addiw	a4,a4,8
   172a4:	0087979b          	slliw	a5,a5,0x8
   172a8:	f00006b7          	lui	a3,0xf0000
   172ac:	00d7f6b3          	and	a3,a5,a3
   172b0:	00069663          	bnez	a3,172bc <__hi0bits+0x44>
   172b4:	0047071b          	addiw	a4,a4,4
   172b8:	0047979b          	slliw	a5,a5,0x4
   172bc:	c00006b7          	lui	a3,0xc0000
   172c0:	00d7f6b3          	and	a3,a5,a3
   172c4:	00069663          	bnez	a3,172d0 <__hi0bits+0x58>
   172c8:	0027071b          	addiw	a4,a4,2
   172cc:	0027979b          	slliw	a5,a5,0x2
   172d0:	0007ce63          	bltz	a5,172ec <__hi0bits+0x74>
   172d4:	02179693          	slli	a3,a5,0x21
   172d8:	02000513          	li	a0,32
   172dc:	0006c463          	bltz	a3,172e4 <__hi0bits+0x6c>
   172e0:	00008067          	ret
   172e4:	0017051b          	addiw	a0,a4,1
   172e8:	00008067          	ret
   172ec:	00070513          	mv	a0,a4
   172f0:	00008067          	ret

00000000000172f4 <__lo0bits>:
   172f4:	00052783          	lw	a5,0(a0)
   172f8:	00050693          	mv	a3,a0
   172fc:	0077f713          	andi	a4,a5,7
   17300:	02070463          	beqz	a4,17328 <__lo0bits+0x34>
   17304:	0017f713          	andi	a4,a5,1
   17308:	00000513          	li	a0,0
   1730c:	08071263          	bnez	a4,17390 <__lo0bits+0x9c>
   17310:	0027f713          	andi	a4,a5,2
   17314:	08071063          	bnez	a4,17394 <__lo0bits+0xa0>
   17318:	0027d79b          	srliw	a5,a5,0x2
   1731c:	00f6a023          	sw	a5,0(a3) # ffffffffc0000000 <_gp+0xffffffffbffe2120>
   17320:	00200513          	li	a0,2
   17324:	00008067          	ret
   17328:	0107961b          	slliw	a2,a5,0x10
   1732c:	0106561b          	srliw	a2,a2,0x10
   17330:	00000713          	li	a4,0
   17334:	00061663          	bnez	a2,17340 <__lo0bits+0x4c>
   17338:	0107d79b          	srliw	a5,a5,0x10
   1733c:	01000713          	li	a4,16
   17340:	0ff7f613          	andi	a2,a5,255
   17344:	00061663          	bnez	a2,17350 <__lo0bits+0x5c>
   17348:	0087071b          	addiw	a4,a4,8
   1734c:	0087d79b          	srliw	a5,a5,0x8
   17350:	00f7f613          	andi	a2,a5,15
   17354:	00061663          	bnez	a2,17360 <__lo0bits+0x6c>
   17358:	0047071b          	addiw	a4,a4,4
   1735c:	0047d79b          	srliw	a5,a5,0x4
   17360:	0037f613          	andi	a2,a5,3
   17364:	00061663          	bnez	a2,17370 <__lo0bits+0x7c>
   17368:	0027071b          	addiw	a4,a4,2
   1736c:	0027d79b          	srliw	a5,a5,0x2
   17370:	0017f613          	andi	a2,a5,1
   17374:	00061a63          	bnez	a2,17388 <__lo0bits+0x94>
   17378:	0017d79b          	srliw	a5,a5,0x1
   1737c:	02000513          	li	a0,32
   17380:	00078863          	beqz	a5,17390 <__lo0bits+0x9c>
   17384:	0017071b          	addiw	a4,a4,1
   17388:	00f6a023          	sw	a5,0(a3)
   1738c:	00070513          	mv	a0,a4
   17390:	00008067          	ret
   17394:	0017d79b          	srliw	a5,a5,0x1
   17398:	00f6a023          	sw	a5,0(a3)
   1739c:	00100513          	li	a0,1
   173a0:	00008067          	ret

00000000000173a4 <__i2b>:
   173a4:	ff010113          	addi	sp,sp,-16
   173a8:	00813023          	sd	s0,0(sp)
   173ac:	00058413          	mv	s0,a1
   173b0:	00100593          	li	a1,1
   173b4:	00113423          	sd	ra,8(sp)
   173b8:	bb5ff0ef          	jal	16f6c <_Balloc>
   173bc:	00813083          	ld	ra,8(sp)
   173c0:	00100713          	li	a4,1
   173c4:	00852c23          	sw	s0,24(a0)
   173c8:	00e52a23          	sw	a4,20(a0)
   173cc:	00013403          	ld	s0,0(sp)
   173d0:	01010113          	addi	sp,sp,16
   173d4:	00008067          	ret

00000000000173d8 <__multiply>:
   173d8:	fd010113          	addi	sp,sp,-48
   173dc:	01313423          	sd	s3,8(sp)
   173e0:	01413023          	sd	s4,0(sp)
   173e4:	0145a983          	lw	s3,20(a1)
   173e8:	01462a03          	lw	s4,20(a2)
   173ec:	00913c23          	sd	s1,24(sp)
   173f0:	01213823          	sd	s2,16(sp)
   173f4:	02113423          	sd	ra,40(sp)
   173f8:	02813023          	sd	s0,32(sp)
   173fc:	00058913          	mv	s2,a1
   17400:	00060493          	mv	s1,a2
   17404:	0149dc63          	ble	s4,s3,1741c <__multiply+0x44>
   17408:	00098713          	mv	a4,s3
   1740c:	00060913          	mv	s2,a2
   17410:	000a0993          	mv	s3,s4
   17414:	00058493          	mv	s1,a1
   17418:	00070a13          	mv	s4,a4
   1741c:	00c92783          	lw	a5,12(s2)
   17420:	00892583          	lw	a1,8(s2)
   17424:	0149843b          	addw	s0,s3,s4
   17428:	0087a7b3          	slt	a5,a5,s0
   1742c:	00f585bb          	addw	a1,a1,a5
   17430:	b3dff0ef          	jal	16f6c <_Balloc>
   17434:	00040893          	mv	a7,s0
   17438:	01850313          	addi	t1,a0,24
   1743c:	00289893          	slli	a7,a7,0x2
   17440:	011308b3          	add	a7,t1,a7
   17444:	00030793          	mv	a5,t1
   17448:	01137863          	bleu	a7,t1,17458 <__multiply+0x80>
   1744c:	0007a023          	sw	zero,0(a5)
   17450:	00478793          	addi	a5,a5,4
   17454:	ff17ece3          	bltu	a5,a7,1744c <__multiply+0x74>
   17458:	01848613          	addi	a2,s1,24
   1745c:	002a1e13          	slli	t3,s4,0x2
   17460:	01890e93          	addi	t4,s2,24
   17464:	00299813          	slli	a6,s3,0x2
   17468:	000105b7          	lui	a1,0x10
   1746c:	01c60e33          	add	t3,a2,t3
   17470:	010e8833          	add	a6,t4,a6
   17474:	fff5859b          	addiw	a1,a1,-1
   17478:	11c67463          	bleu	t3,a2,17580 <__multiply+0x1a8>
   1747c:	00062383          	lw	t2,0(a2)
   17480:	00b3f4b3          	and	s1,t2,a1
   17484:	06048a63          	beqz	s1,174f8 <__multiply+0x120>
   17488:	00030293          	mv	t0,t1
   1748c:	000e8f93          	mv	t6,t4
   17490:	00000793          	li	a5,0
   17494:	0080006f          	j	1749c <__multiply+0xc4>
   17498:	00038293          	mv	t0,t2
   1749c:	000fa683          	lw	a3,0(t6)
   174a0:	0002af03          	lw	t5,0(t0) # 16f3c <memset+0xb4>
   174a4:	00428393          	addi	t2,t0,4
   174a8:	00b6f733          	and	a4,a3,a1
   174ac:	0297073b          	mulw	a4,a4,s1
   174b0:	0106d69b          	srliw	a3,a3,0x10
   174b4:	00bf7933          	and	s2,t5,a1
   174b8:	010f5f1b          	srliw	t5,t5,0x10
   174bc:	004f8f93          	addi	t6,t6,4
   174c0:	029686bb          	mulw	a3,a3,s1
   174c4:	0127073b          	addw	a4,a4,s2
   174c8:	00f707bb          	addw	a5,a4,a5
   174cc:	0107d71b          	srliw	a4,a5,0x10
   174d0:	00b7f7b3          	and	a5,a5,a1
   174d4:	01e686bb          	addw	a3,a3,t5
   174d8:	00e6873b          	addw	a4,a3,a4
   174dc:	0107169b          	slliw	a3,a4,0x10
   174e0:	00f6e7b3          	or	a5,a3,a5
   174e4:	fef3ae23          	sw	a5,-4(t2)
   174e8:	0107579b          	srliw	a5,a4,0x10
   174ec:	fb0fe6e3          	bltu	t6,a6,17498 <__multiply+0xc0>
   174f0:	00f2a223          	sw	a5,4(t0)
   174f4:	00062383          	lw	t2,0(a2)
   174f8:	0103d39b          	srliw	t2,t2,0x10
   174fc:	06038c63          	beqz	t2,17574 <__multiply+0x19c>
   17500:	00032783          	lw	a5,0(t1)
   17504:	00030293          	mv	t0,t1
   17508:	000e8f93          	mv	t6,t4
   1750c:	00078f13          	mv	t5,a5
   17510:	00000693          	li	a3,0
   17514:	0080006f          	j	1751c <__multiply+0x144>
   17518:	00048293          	mv	t0,s1
   1751c:	000fa703          	lw	a4,0(t6)
   17520:	010f5f1b          	srliw	t5,t5,0x10
   17524:	00b7f7b3          	and	a5,a5,a1
   17528:	00b77733          	and	a4,a4,a1
   1752c:	0277073b          	mulw	a4,a4,t2
   17530:	00428493          	addi	s1,t0,4
   17534:	004f8f93          	addi	t6,t6,4
   17538:	01e7073b          	addw	a4,a4,t5
   1753c:	00d706bb          	addw	a3,a4,a3
   17540:	0106971b          	slliw	a4,a3,0x10
   17544:	00f767b3          	or	a5,a4,a5
   17548:	fef4ae23          	sw	a5,-4(s1)
   1754c:	ffefd703          	lhu	a4,-2(t6)
   17550:	0042af03          	lw	t5,4(t0)
   17554:	0106d69b          	srliw	a3,a3,0x10
   17558:	0277073b          	mulw	a4,a4,t2
   1755c:	00bf77b3          	and	a5,t5,a1
   17560:	00f707bb          	addw	a5,a4,a5
   17564:	00d787bb          	addw	a5,a5,a3
   17568:	0107d69b          	srliw	a3,a5,0x10
   1756c:	fb0fe6e3          	bltu	t6,a6,17518 <__multiply+0x140>
   17570:	00f2a223          	sw	a5,4(t0)
   17574:	00460613          	addi	a2,a2,4
   17578:	00430313          	addi	t1,t1,4
   1757c:	f1c660e3          	bltu	a2,t3,1747c <__multiply+0xa4>
   17580:	02805463          	blez	s0,175a8 <__multiply+0x1d0>
   17584:	ffc8a783          	lw	a5,-4(a7)
   17588:	ffc88893          	addi	a7,a7,-4
   1758c:	00078863          	beqz	a5,1759c <__multiply+0x1c4>
   17590:	0180006f          	j	175a8 <__multiply+0x1d0>
   17594:	0008a783          	lw	a5,0(a7)
   17598:	00079863          	bnez	a5,175a8 <__multiply+0x1d0>
   1759c:	fff4041b          	addiw	s0,s0,-1
   175a0:	ffc88893          	addi	a7,a7,-4
   175a4:	fe0418e3          	bnez	s0,17594 <__multiply+0x1bc>
   175a8:	02813083          	ld	ra,40(sp)
   175ac:	00852a23          	sw	s0,20(a0)
   175b0:	01813483          	ld	s1,24(sp)
   175b4:	02013403          	ld	s0,32(sp)
   175b8:	01013903          	ld	s2,16(sp)
   175bc:	00813983          	ld	s3,8(sp)
   175c0:	00013a03          	ld	s4,0(sp)
   175c4:	03010113          	addi	sp,sp,48
   175c8:	00008067          	ret

00000000000175cc <__pow5mult>:
   175cc:	fd010113          	addi	sp,sp,-48
   175d0:	02813023          	sd	s0,32(sp)
   175d4:	01213823          	sd	s2,16(sp)
   175d8:	01313423          	sd	s3,8(sp)
   175dc:	02113423          	sd	ra,40(sp)
   175e0:	00913c23          	sd	s1,24(sp)
   175e4:	00367793          	andi	a5,a2,3
   175e8:	00060413          	mv	s0,a2
   175ec:	00050993          	mv	s3,a0
   175f0:	00058913          	mv	s2,a1
   175f4:	0a079e63          	bnez	a5,176b0 <__pow5mult+0xe4>
   175f8:	4024541b          	sraiw	s0,s0,0x2
   175fc:	06040663          	beqz	s0,17668 <__pow5mult+0x9c>
   17600:	0709b483          	ld	s1,112(s3)
   17604:	0c048a63          	beqz	s1,176d8 <__pow5mult+0x10c>
   17608:	00147793          	andi	a5,s0,1
   1760c:	02079063          	bnez	a5,1762c <__pow5mult+0x60>
   17610:	4014541b          	sraiw	s0,s0,0x1
   17614:	04040a63          	beqz	s0,17668 <__pow5mult+0x9c>
   17618:	0004b503          	ld	a0,0(s1)
   1761c:	06050663          	beqz	a0,17688 <__pow5mult+0xbc>
   17620:	00050493          	mv	s1,a0
   17624:	00147793          	andi	a5,s0,1
   17628:	fe0784e3          	beqz	a5,17610 <__pow5mult+0x44>
   1762c:	00048613          	mv	a2,s1
   17630:	00090593          	mv	a1,s2
   17634:	00098513          	mv	a0,s3
   17638:	da1ff0ef          	jal	173d8 <__multiply>
   1763c:	06090663          	beqz	s2,176a8 <__pow5mult+0xdc>
   17640:	00892783          	lw	a5,8(s2)
   17644:	0789b703          	ld	a4,120(s3)
   17648:	4014541b          	sraiw	s0,s0,0x1
   1764c:	00379793          	slli	a5,a5,0x3
   17650:	00f707b3          	add	a5,a4,a5
   17654:	0007b703          	ld	a4,0(a5)
   17658:	00e93023          	sd	a4,0(s2)
   1765c:	0127b023          	sd	s2,0(a5)
   17660:	00050913          	mv	s2,a0
   17664:	fa041ae3          	bnez	s0,17618 <__pow5mult+0x4c>
   17668:	02813083          	ld	ra,40(sp)
   1766c:	00090513          	mv	a0,s2
   17670:	02013403          	ld	s0,32(sp)
   17674:	01813483          	ld	s1,24(sp)
   17678:	01013903          	ld	s2,16(sp)
   1767c:	00813983          	ld	s3,8(sp)
   17680:	03010113          	addi	sp,sp,48
   17684:	00008067          	ret
   17688:	00048613          	mv	a2,s1
   1768c:	00048593          	mv	a1,s1
   17690:	00098513          	mv	a0,s3
   17694:	d45ff0ef          	jal	173d8 <__multiply>
   17698:	00a4b023          	sd	a0,0(s1)
   1769c:	00053023          	sd	zero,0(a0)
   176a0:	00050493          	mv	s1,a0
   176a4:	f81ff06f          	j	17624 <__pow5mult+0x58>
   176a8:	00050913          	mv	s2,a0
   176ac:	f65ff06f          	j	17610 <__pow5mult+0x44>
   176b0:	fff7879b          	addiw	a5,a5,-1
   176b4:	0001b737          	lui	a4,0x1b
   176b8:	1c870713          	addi	a4,a4,456 # 1b1c8 <p05.2568>
   176bc:	00279793          	slli	a5,a5,0x2
   176c0:	00f707b3          	add	a5,a4,a5
   176c4:	0007a603          	lw	a2,0(a5)
   176c8:	00000693          	li	a3,0
   176cc:	971ff0ef          	jal	1703c <__multadd>
   176d0:	00050913          	mv	s2,a0
   176d4:	f25ff06f          	j	175f8 <__pow5mult+0x2c>
   176d8:	00100593          	li	a1,1
   176dc:	00098513          	mv	a0,s3
   176e0:	88dff0ef          	jal	16f6c <_Balloc>
   176e4:	27100793          	li	a5,625
   176e8:	00f52c23          	sw	a5,24(a0)
   176ec:	00100793          	li	a5,1
   176f0:	00f52a23          	sw	a5,20(a0)
   176f4:	06a9b823          	sd	a0,112(s3)
   176f8:	00050493          	mv	s1,a0
   176fc:	00053023          	sd	zero,0(a0)
   17700:	f09ff06f          	j	17608 <__pow5mult+0x3c>

0000000000017704 <__lshift>:
   17704:	fc010113          	addi	sp,sp,-64
   17708:	01513423          	sd	s5,8(sp)
   1770c:	0145aa83          	lw	s5,20(a1) # 10014 <_ftext+0x14>
   17710:	02813823          	sd	s0,48(sp)
   17714:	00c5a783          	lw	a5,12(a1)
   17718:	4056541b          	sraiw	s0,a2,0x5
   1771c:	01540abb          	addw	s5,s0,s5
   17720:	02913423          	sd	s1,40(sp)
   17724:	03213023          	sd	s2,32(sp)
   17728:	01313c23          	sd	s3,24(sp)
   1772c:	01413823          	sd	s4,16(sp)
   17730:	02113c23          	sd	ra,56(sp)
   17734:	001a849b          	addiw	s1,s5,1
   17738:	00058913          	mv	s2,a1
   1773c:	00060993          	mv	s3,a2
   17740:	00050a13          	mv	s4,a0
   17744:	0085a583          	lw	a1,8(a1)
   17748:	0097d863          	ble	s1,a5,17758 <__lshift+0x54>
   1774c:	0017979b          	slliw	a5,a5,0x1
   17750:	0015859b          	addiw	a1,a1,1
   17754:	fe97cce3          	blt	a5,s1,1774c <__lshift+0x48>
   17758:	000a0513          	mv	a0,s4
   1775c:	811ff0ef          	jal	16f6c <_Balloc>
   17760:	01850793          	addi	a5,a0,24
   17764:	0e805c63          	blez	s0,1785c <__lshift+0x158>
   17768:	fff4071b          	addiw	a4,s0,-1
   1776c:	02071713          	slli	a4,a4,0x20
   17770:	02075713          	srli	a4,a4,0x20
   17774:	00170713          	addi	a4,a4,1
   17778:	00271713          	slli	a4,a4,0x2
   1777c:	00e78733          	add	a4,a5,a4
   17780:	00478793          	addi	a5,a5,4
   17784:	fe07ae23          	sw	zero,-4(a5)
   17788:	fee79ce3          	bne	a5,a4,17780 <__lshift+0x7c>
   1778c:	01492883          	lw	a7,20(s2)
   17790:	01890793          	addi	a5,s2,24
   17794:	01f9f613          	andi	a2,s3,31
   17798:	00289893          	slli	a7,a7,0x2
   1779c:	011788b3          	add	a7,a5,a7
   177a0:	08060863          	beqz	a2,17830 <__lshift+0x12c>
   177a4:	02000313          	li	t1,32
   177a8:	40c3033b          	subw	t1,t1,a2
   177ac:	00000693          	li	a3,0
   177b0:	0080006f          	j	177b8 <__lshift+0xb4>
   177b4:	00080713          	mv	a4,a6
   177b8:	0007a583          	lw	a1,0(a5)
   177bc:	00470813          	addi	a6,a4,4
   177c0:	00478793          	addi	a5,a5,4
   177c4:	00c595bb          	sllw	a1,a1,a2
   177c8:	00d5e6b3          	or	a3,a1,a3
   177cc:	fed82e23          	sw	a3,-4(a6) # fffc <_ftext-0x4>
   177d0:	ffc7a683          	lw	a3,-4(a5)
   177d4:	0066d6bb          	srlw	a3,a3,t1
   177d8:	fd17eee3          	bltu	a5,a7,177b4 <__lshift+0xb0>
   177dc:	00d72223          	sw	a3,4(a4)
   177e0:	00068463          	beqz	a3,177e8 <__lshift+0xe4>
   177e4:	002a849b          	addiw	s1,s5,2
   177e8:	00892783          	lw	a5,8(s2)
   177ec:	078a3703          	ld	a4,120(s4)
   177f0:	fff4849b          	addiw	s1,s1,-1
   177f4:	00379793          	slli	a5,a5,0x3
   177f8:	00f707b3          	add	a5,a4,a5
   177fc:	0007b703          	ld	a4,0(a5)
   17800:	03813083          	ld	ra,56(sp)
   17804:	00952a23          	sw	s1,20(a0)
   17808:	00e93023          	sd	a4,0(s2)
   1780c:	0127b023          	sd	s2,0(a5)
   17810:	03013403          	ld	s0,48(sp)
   17814:	02813483          	ld	s1,40(sp)
   17818:	02013903          	ld	s2,32(sp)
   1781c:	01813983          	ld	s3,24(sp)
   17820:	01013a03          	ld	s4,16(sp)
   17824:	00813a83          	ld	s5,8(sp)
   17828:	04010113          	addi	sp,sp,64
   1782c:	00008067          	ret
   17830:	00478793          	addi	a5,a5,4
   17834:	ffc7a683          	lw	a3,-4(a5)
   17838:	00470713          	addi	a4,a4,4
   1783c:	fed72e23          	sw	a3,-4(a4)
   17840:	fb17f4e3          	bleu	a7,a5,177e8 <__lshift+0xe4>
   17844:	00478793          	addi	a5,a5,4
   17848:	ffc7a683          	lw	a3,-4(a5)
   1784c:	00470713          	addi	a4,a4,4
   17850:	fed72e23          	sw	a3,-4(a4)
   17854:	fd17eee3          	bltu	a5,a7,17830 <__lshift+0x12c>
   17858:	f91ff06f          	j	177e8 <__lshift+0xe4>
   1785c:	00078713          	mv	a4,a5
   17860:	f2dff06f          	j	1778c <__lshift+0x88>

0000000000017864 <__mcmp>:
   17864:	01452783          	lw	a5,20(a0)
   17868:	0145a703          	lw	a4,20(a1)
   1786c:	40e787bb          	subw	a5,a5,a4
   17870:	04079263          	bnez	a5,178b4 <__mcmp+0x50>
   17874:	00271713          	slli	a4,a4,0x2
   17878:	01850513          	addi	a0,a0,24
   1787c:	01858593          	addi	a1,a1,24
   17880:	00e507b3          	add	a5,a0,a4
   17884:	00e585b3          	add	a1,a1,a4
   17888:	0080006f          	j	17890 <__mcmp+0x2c>
   1788c:	02f57863          	bleu	a5,a0,178bc <__mcmp+0x58>
   17890:	ffc78793          	addi	a5,a5,-4
   17894:	ffc58593          	addi	a1,a1,-4
   17898:	0007a703          	lw	a4,0(a5)
   1789c:	0005a683          	lw	a3,0(a1)
   178a0:	fed706e3          	beq	a4,a3,1788c <__mcmp+0x28>
   178a4:	00d737b3          	sltu	a5,a4,a3
   178a8:	40f007bb          	negw	a5,a5
   178ac:	0017e513          	ori	a0,a5,1
   178b0:	00008067          	ret
   178b4:	00078513          	mv	a0,a5
   178b8:	00008067          	ret
   178bc:	00000513          	li	a0,0
   178c0:	00008067          	ret

00000000000178c4 <__mdiff>:
   178c4:	0145a703          	lw	a4,20(a1)
   178c8:	01462783          	lw	a5,20(a2)
   178cc:	fd010113          	addi	sp,sp,-48
   178d0:	01213823          	sd	s2,16(sp)
   178d4:	01313423          	sd	s3,8(sp)
   178d8:	02113423          	sd	ra,40(sp)
   178dc:	02813023          	sd	s0,32(sp)
   178e0:	00913c23          	sd	s1,24(sp)
   178e4:	01413023          	sd	s4,0(sp)
   178e8:	40f7073b          	subw	a4,a4,a5
   178ec:	00058913          	mv	s2,a1
   178f0:	00060993          	mv	s3,a2
   178f4:	04071863          	bnez	a4,17944 <__mdiff+0x80>
   178f8:	00279713          	slli	a4,a5,0x2
   178fc:	01858813          	addi	a6,a1,24
   17900:	01860413          	addi	s0,a2,24
   17904:	00e807b3          	add	a5,a6,a4
   17908:	00e40733          	add	a4,s0,a4
   1790c:	0080006f          	j	17914 <__mdiff+0x50>
   17910:	16f87263          	bleu	a5,a6,17a74 <__mdiff+0x1b0>
   17914:	ffc78793          	addi	a5,a5,-4
   17918:	ffc70713          	addi	a4,a4,-4
   1791c:	0007a583          	lw	a1,0(a5)
   17920:	00072683          	lw	a3,0(a4)
   17924:	fed586e3          	beq	a1,a3,17910 <__mdiff+0x4c>
   17928:	18d5f063          	bleu	a3,a1,17aa8 <__mdiff+0x1e4>
   1792c:	00090793          	mv	a5,s2
   17930:	00080493          	mv	s1,a6
   17934:	00098913          	mv	s2,s3
   17938:	00100a13          	li	s4,1
   1793c:	00078993          	mv	s3,a5
   17940:	0140006f          	j	17954 <__mdiff+0x90>
   17944:	16074a63          	bltz	a4,17ab8 <__mdiff+0x1f4>
   17948:	01860493          	addi	s1,a2,24
   1794c:	01858413          	addi	s0,a1,24
   17950:	00000a13          	li	s4,0
   17954:	00892583          	lw	a1,8(s2)
   17958:	e14ff0ef          	jal	16f6c <_Balloc>
   1795c:	01492e03          	lw	t3,20(s2)
   17960:	0149af03          	lw	t5,20(s3)
   17964:	00010337          	lui	t1,0x10
   17968:	002e1e93          	slli	t4,t3,0x2
   1796c:	002f1f13          	slli	t5,t5,0x2
   17970:	01452823          	sw	s4,16(a0)
   17974:	01d40eb3          	add	t4,s0,t4
   17978:	01e48f33          	add	t5,s1,t5
   1797c:	01850813          	addi	a6,a0,24
   17980:	00000693          	li	a3,0
   17984:	fff3031b          	addiw	t1,t1,-1
   17988:	00042583          	lw	a1,0(s0)
   1798c:	0004a883          	lw	a7,0(s1)
   17990:	00480813          	addi	a6,a6,4
   17994:	0065f633          	and	a2,a1,t1
   17998:	00d606bb          	addw	a3,a2,a3
   1799c:	0068f733          	and	a4,a7,t1
   179a0:	40e6873b          	subw	a4,a3,a4
   179a4:	0105d59b          	srliw	a1,a1,0x10
   179a8:	0108d69b          	srliw	a3,a7,0x10
   179ac:	40d585bb          	subw	a1,a1,a3
   179b0:	4107569b          	sraiw	a3,a4,0x10
   179b4:	00d586bb          	addw	a3,a1,a3
   179b8:	0106979b          	slliw	a5,a3,0x10
   179bc:	00677733          	and	a4,a4,t1
   179c0:	00e7e7b3          	or	a5,a5,a4
   179c4:	00448493          	addi	s1,s1,4
   179c8:	fef82e23          	sw	a5,-4(a6)
   179cc:	00440413          	addi	s0,s0,4
   179d0:	4106d69b          	sraiw	a3,a3,0x10
   179d4:	fbe4eae3          	bltu	s1,t5,17988 <__mdiff+0xc4>
   179d8:	07d47063          	bleu	t4,s0,17a38 <__mdiff+0x174>
   179dc:	00010f37          	lui	t5,0x10
   179e0:	00080313          	mv	t1,a6
   179e4:	00040893          	mv	a7,s0
   179e8:	ffff0f1b          	addiw	t5,t5,-1
   179ec:	0008a583          	lw	a1,0(a7)
   179f0:	00430313          	addi	t1,t1,4 # 10004 <_ftext+0x4>
   179f4:	00488893          	addi	a7,a7,4
   179f8:	01e5f633          	and	a2,a1,t5
   179fc:	00d606bb          	addw	a3,a2,a3
   17a00:	4106d71b          	sraiw	a4,a3,0x10
   17a04:	0105d59b          	srliw	a1,a1,0x10
   17a08:	00e5873b          	addw	a4,a1,a4
   17a0c:	01e6f6b3          	and	a3,a3,t5
   17a10:	0107179b          	slliw	a5,a4,0x10
   17a14:	00d7e7b3          	or	a5,a5,a3
   17a18:	fef32e23          	sw	a5,-4(t1)
   17a1c:	4107569b          	sraiw	a3,a4,0x10
   17a20:	fdd8e6e3          	bltu	a7,t4,179ec <__mdiff+0x128>
   17a24:	fff44413          	not	s0,s0
   17a28:	01d40eb3          	add	t4,s0,t4
   17a2c:	ffcefe93          	andi	t4,t4,-4
   17a30:	004e8e93          	addi	t4,t4,4
   17a34:	01d80833          	add	a6,a6,t4
   17a38:	ffc80813          	addi	a6,a6,-4
   17a3c:	00079a63          	bnez	a5,17a50 <__mdiff+0x18c>
   17a40:	ffc80813          	addi	a6,a6,-4
   17a44:	00082783          	lw	a5,0(a6)
   17a48:	fffe0e1b          	addiw	t3,t3,-1
   17a4c:	fe078ae3          	beqz	a5,17a40 <__mdiff+0x17c>
   17a50:	02813083          	ld	ra,40(sp)
   17a54:	02013403          	ld	s0,32(sp)
   17a58:	01813483          	ld	s1,24(sp)
   17a5c:	01013903          	ld	s2,16(sp)
   17a60:	00813983          	ld	s3,8(sp)
   17a64:	00013a03          	ld	s4,0(sp)
   17a68:	01c52a23          	sw	t3,20(a0)
   17a6c:	03010113          	addi	sp,sp,48
   17a70:	00008067          	ret
   17a74:	00000593          	li	a1,0
   17a78:	cf4ff0ef          	jal	16f6c <_Balloc>
   17a7c:	02813083          	ld	ra,40(sp)
   17a80:	00100793          	li	a5,1
   17a84:	02013403          	ld	s0,32(sp)
   17a88:	01813483          	ld	s1,24(sp)
   17a8c:	01013903          	ld	s2,16(sp)
   17a90:	00813983          	ld	s3,8(sp)
   17a94:	00013a03          	ld	s4,0(sp)
   17a98:	00f52a23          	sw	a5,20(a0)
   17a9c:	00052c23          	sw	zero,24(a0)
   17aa0:	03010113          	addi	sp,sp,48
   17aa4:	00008067          	ret
   17aa8:	00040493          	mv	s1,s0
   17aac:	00000a13          	li	s4,0
   17ab0:	00080413          	mv	s0,a6
   17ab4:	ea1ff06f          	j	17954 <__mdiff+0x90>
   17ab8:	00090793          	mv	a5,s2
   17abc:	01890493          	addi	s1,s2,24
   17ac0:	01898413          	addi	s0,s3,24
   17ac4:	00098913          	mv	s2,s3
   17ac8:	00100a13          	li	s4,1
   17acc:	00078993          	mv	s3,a5
   17ad0:	e85ff06f          	j	17954 <__mdiff+0x90>

0000000000017ad4 <__ulp>:
   17ad4:	e20507d3          	fmv.x.d	a5,fa0
   17ad8:	7ff00737          	lui	a4,0x7ff00
   17adc:	4207d793          	srai	a5,a5,0x20
   17ae0:	00e7f7b3          	and	a5,a5,a4
   17ae4:	fcc00737          	lui	a4,0xfcc00
   17ae8:	00e787bb          	addw	a5,a5,a4
   17aec:	00f05863          	blez	a5,17afc <__ulp+0x28>
   17af0:	02079793          	slli	a5,a5,0x20
   17af4:	f2078553          	fmv.d.x	fa0,a5
   17af8:	00008067          	ret
   17afc:	40f007bb          	negw	a5,a5
   17b00:	4147d79b          	sraiw	a5,a5,0x14
   17b04:	01300713          	li	a4,19
   17b08:	04f75063          	ble	a5,a4,17b48 <__ulp+0x74>
   17b0c:	fec7869b          	addiw	a3,a5,-20
   17b10:	01e00613          	li	a2,30
   17b14:	00000793          	li	a5,0
   17b18:	00100713          	li	a4,1
   17b1c:	00d64663          	blt	a2,a3,17b28 <__ulp+0x54>
   17b20:	fff6c693          	not	a3,a3
   17b24:	00d7173b          	sllw	a4,a4,a3
   17b28:	fff00693          	li	a3,-1
   17b2c:	02069693          	slli	a3,a3,0x20
   17b30:	02071713          	slli	a4,a4,0x20
   17b34:	02075713          	srli	a4,a4,0x20
   17b38:	00d7f7b3          	and	a5,a5,a3
   17b3c:	00e7e7b3          	or	a5,a5,a4
   17b40:	f2078553          	fmv.d.x	fa0,a5
   17b44:	00008067          	ret
   17b48:	00080737          	lui	a4,0x80
   17b4c:	40f757bb          	sraw	a5,a4,a5
   17b50:	fa1ff06f          	j	17af0 <__ulp+0x1c>

0000000000017b54 <__b2d>:
   17b54:	fd010113          	addi	sp,sp,-48
   17b58:	02813023          	sd	s0,32(sp)
   17b5c:	01452403          	lw	s0,20(a0)
   17b60:	00913c23          	sd	s1,24(sp)
   17b64:	01850493          	addi	s1,a0,24
   17b68:	00241413          	slli	s0,s0,0x2
   17b6c:	00848433          	add	s0,s1,s0
   17b70:	01213823          	sd	s2,16(sp)
   17b74:	ffc42903          	lw	s2,-4(s0)
   17b78:	01313423          	sd	s3,8(sp)
   17b7c:	01413023          	sd	s4,0(sp)
   17b80:	00090513          	mv	a0,s2
   17b84:	00058a13          	mv	s4,a1
   17b88:	02113423          	sd	ra,40(sp)
   17b8c:	eecff0ef          	jal	17278 <__hi0bits>
   17b90:	02000793          	li	a5,32
   17b94:	40a7873b          	subw	a4,a5,a0
   17b98:	00ea2023          	sw	a4,0(s4)
   17b9c:	00a00713          	li	a4,10
   17ba0:	ffc40993          	addi	s3,s0,-4
   17ba4:	06a74a63          	blt	a4,a0,17c18 <__b2d+0xc4>
   17ba8:	00b00693          	li	a3,11
   17bac:	40a686bb          	subw	a3,a3,a0
   17bb0:	3ff00737          	lui	a4,0x3ff00
   17bb4:	00d957bb          	srlw	a5,s2,a3
   17bb8:	00e7e7b3          	or	a5,a5,a4
   17bbc:	02079793          	slli	a5,a5,0x20
   17bc0:	00000713          	li	a4,0
   17bc4:	0134f663          	bleu	s3,s1,17bd0 <__b2d+0x7c>
   17bc8:	ff842703          	lw	a4,-8(s0)
   17bcc:	00d7573b          	srlw	a4,a4,a3
   17bd0:	0155051b          	addiw	a0,a0,21
   17bd4:	00a9153b          	sllw	a0,s2,a0
   17bd8:	00e56533          	or	a0,a0,a4
   17bdc:	fff00713          	li	a4,-1
   17be0:	02051513          	slli	a0,a0,0x20
   17be4:	02071713          	slli	a4,a4,0x20
   17be8:	02055513          	srli	a0,a0,0x20
   17bec:	00e7f7b3          	and	a5,a5,a4
   17bf0:	00a7e7b3          	or	a5,a5,a0
   17bf4:	02813083          	ld	ra,40(sp)
   17bf8:	f2078553          	fmv.d.x	fa0,a5
   17bfc:	02013403          	ld	s0,32(sp)
   17c00:	01813483          	ld	s1,24(sp)
   17c04:	01013903          	ld	s2,16(sp)
   17c08:	00813983          	ld	s3,8(sp)
   17c0c:	00013a03          	ld	s4,0(sp)
   17c10:	03010113          	addi	sp,sp,48
   17c14:	00008067          	ret
   17c18:	ff55051b          	addiw	a0,a0,-11
   17c1c:	0534f263          	bleu	s3,s1,17c60 <__b2d+0x10c>
   17c20:	ff842683          	lw	a3,-8(s0)
   17c24:	04050263          	beqz	a0,17c68 <__b2d+0x114>
   17c28:	40a7863b          	subw	a2,a5,a0
   17c2c:	00a917bb          	sllw	a5,s2,a0
   17c30:	3ff00937          	lui	s2,0x3ff00
   17c34:	00c6d73b          	srlw	a4,a3,a2
   17c38:	0127e7b3          	or	a5,a5,s2
   17c3c:	00e7e7b3          	or	a5,a5,a4
   17c40:	ff840713          	addi	a4,s0,-8
   17c44:	02079793          	slli	a5,a5,0x20
   17c48:	04e4fa63          	bleu	a4,s1,17c9c <__b2d+0x148>
   17c4c:	ff442703          	lw	a4,-12(s0)
   17c50:	00a6953b          	sllw	a0,a3,a0
   17c54:	00c756bb          	srlw	a3,a4,a2
   17c58:	00a6e533          	or	a0,a3,a0
   17c5c:	f81ff06f          	j	17bdc <__b2d+0x88>
   17c60:	00000693          	li	a3,0
   17c64:	02051063          	bnez	a0,17c84 <__b2d+0x130>
   17c68:	3ff00737          	lui	a4,0x3ff00
   17c6c:	00e967b3          	or	a5,s2,a4
   17c70:	02069693          	slli	a3,a3,0x20
   17c74:	0206d693          	srli	a3,a3,0x20
   17c78:	02079793          	slli	a5,a5,0x20
   17c7c:	00d7e7b3          	or	a5,a5,a3
   17c80:	f75ff06f          	j	17bf4 <__b2d+0xa0>
   17c84:	00a917bb          	sllw	a5,s2,a0
   17c88:	3ff00737          	lui	a4,0x3ff00
   17c8c:	00e7e7b3          	or	a5,a5,a4
   17c90:	02079793          	slli	a5,a5,0x20
   17c94:	00000513          	li	a0,0
   17c98:	f45ff06f          	j	17bdc <__b2d+0x88>
   17c9c:	00a6953b          	sllw	a0,a3,a0
   17ca0:	f3dff06f          	j	17bdc <__b2d+0x88>

0000000000017ca4 <__d2b>:
   17ca4:	fc010113          	addi	sp,sp,-64
   17ca8:	02813823          	sd	s0,48(sp)
   17cac:	e2058453          	fmv.x.d	s0,fa1
   17cb0:	00100593          	li	a1,1
   17cb4:	02913423          	sd	s1,40(sp)
   17cb8:	03213023          	sd	s2,32(sp)
   17cbc:	01313c23          	sd	s3,24(sp)
   17cc0:	01413823          	sd	s4,16(sp)
   17cc4:	00068993          	mv	s3,a3
   17cc8:	02113c23          	sd	ra,56(sp)
   17ccc:	00060a13          	mv	s4,a2
   17cd0:	a9cff0ef          	jal	16f6c <_Balloc>
   17cd4:	42045793          	srai	a5,s0,0x20
   17cd8:	02179493          	slli	s1,a5,0x21
   17cdc:	001006b7          	lui	a3,0x100
   17ce0:	fff6871b          	addiw	a4,a3,-1
   17ce4:	0354d493          	srli	s1,s1,0x35
   17ce8:	00050913          	mv	s2,a0
   17cec:	00e7f7b3          	and	a5,a5,a4
   17cf0:	00048463          	beqz	s1,17cf8 <__d2b+0x54>
   17cf4:	00d7e7b3          	or	a5,a5,a3
   17cf8:	00f12623          	sw	a5,12(sp)
   17cfc:	0004041b          	sext.w	s0,s0
   17d00:	08040063          	beqz	s0,17d80 <__d2b+0xdc>
   17d04:	00810513          	addi	a0,sp,8
   17d08:	00812423          	sw	s0,8(sp)
   17d0c:	de8ff0ef          	jal	172f4 <__lo0bits>
   17d10:	00c12783          	lw	a5,12(sp)
   17d14:	0a051463          	bnez	a0,17dbc <__d2b+0x118>
   17d18:	00812703          	lw	a4,8(sp)
   17d1c:	00e92c23          	sw	a4,24(s2) # 3ff00018 <_gp+0x3fee2138>
   17d20:	0017b413          	seqz	s0,a5
   17d24:	00200713          	li	a4,2
   17d28:	4087043b          	subw	s0,a4,s0
   17d2c:	00f92e23          	sw	a5,28(s2)
   17d30:	00892a23          	sw	s0,20(s2)
   17d34:	06049663          	bnez	s1,17da0 <__d2b+0xfc>
   17d38:	bce5051b          	addiw	a0,a0,-1074
   17d3c:	00241793          	slli	a5,s0,0x2
   17d40:	00aa2023          	sw	a0,0(s4)
   17d44:	00f907b3          	add	a5,s2,a5
   17d48:	0147a503          	lw	a0,20(a5)
   17d4c:	0054141b          	slliw	s0,s0,0x5
   17d50:	d28ff0ef          	jal	17278 <__hi0bits>
   17d54:	40a4053b          	subw	a0,s0,a0
   17d58:	00a9a023          	sw	a0,0(s3)
   17d5c:	03813083          	ld	ra,56(sp)
   17d60:	00090513          	mv	a0,s2
   17d64:	03013403          	ld	s0,48(sp)
   17d68:	02813483          	ld	s1,40(sp)
   17d6c:	02013903          	ld	s2,32(sp)
   17d70:	01813983          	ld	s3,24(sp)
   17d74:	01013a03          	ld	s4,16(sp)
   17d78:	04010113          	addi	sp,sp,64
   17d7c:	00008067          	ret
   17d80:	00c10513          	addi	a0,sp,12
   17d84:	d70ff0ef          	jal	172f4 <__lo0bits>
   17d88:	00c12783          	lw	a5,12(sp)
   17d8c:	00100413          	li	s0,1
   17d90:	00892a23          	sw	s0,20(s2)
   17d94:	00f92c23          	sw	a5,24(s2)
   17d98:	0205051b          	addiw	a0,a0,32
   17d9c:	f8048ee3          	beqz	s1,17d38 <__d2b+0x94>
   17da0:	bcd4849b          	addiw	s1,s1,-1075
   17da4:	00a484bb          	addw	s1,s1,a0
   17da8:	03500793          	li	a5,53
   17dac:	009a2023          	sw	s1,0(s4)
   17db0:	40a7853b          	subw	a0,a5,a0
   17db4:	00a9a023          	sw	a0,0(s3)
   17db8:	fa5ff06f          	j	17d5c <__d2b+0xb8>
   17dbc:	02000713          	li	a4,32
   17dc0:	00812683          	lw	a3,8(sp)
   17dc4:	40a7073b          	subw	a4,a4,a0
   17dc8:	00e7973b          	sllw	a4,a5,a4
   17dcc:	00d76733          	or	a4,a4,a3
   17dd0:	00a7d7bb          	srlw	a5,a5,a0
   17dd4:	00e92c23          	sw	a4,24(s2)
   17dd8:	00f12623          	sw	a5,12(sp)
   17ddc:	f45ff06f          	j	17d20 <__d2b+0x7c>

0000000000017de0 <__ratio>:
   17de0:	fd010113          	addi	sp,sp,-48
   17de4:	00913c23          	sd	s1,24(sp)
   17de8:	00058493          	mv	s1,a1
   17dec:	00810593          	addi	a1,sp,8
   17df0:	02113423          	sd	ra,40(sp)
   17df4:	02813023          	sd	s0,32(sp)
   17df8:	01213823          	sd	s2,16(sp)
   17dfc:	00050913          	mv	s2,a0
   17e00:	d55ff0ef          	jal	17b54 <__b2d>
   17e04:	00c10593          	addi	a1,sp,12
   17e08:	00048513          	mv	a0,s1
   17e0c:	e2050453          	fmv.x.d	s0,fa0
   17e10:	d45ff0ef          	jal	17b54 <__b2d>
   17e14:	01492703          	lw	a4,20(s2)
   17e18:	0144a783          	lw	a5,20(s1)
   17e1c:	00c12603          	lw	a2,12(sp)
   17e20:	e20506d3          	fmv.x.d	a3,fa0
   17e24:	40f707bb          	subw	a5,a4,a5
   17e28:	0057971b          	slliw	a4,a5,0x5
   17e2c:	00812783          	lw	a5,8(sp)
   17e30:	40c787bb          	subw	a5,a5,a2
   17e34:	00f707bb          	addw	a5,a4,a5
   17e38:	04f05463          	blez	a5,17e80 <__ratio+0xa0>
   17e3c:	00040713          	mv	a4,s0
   17e40:	0147979b          	slliw	a5,a5,0x14
   17e44:	42045413          	srai	s0,s0,0x20
   17e48:	00f407bb          	addw	a5,s0,a5
   17e4c:	02071413          	slli	s0,a4,0x20
   17e50:	02079793          	slli	a5,a5,0x20
   17e54:	02045413          	srli	s0,s0,0x20
   17e58:	00f46433          	or	s0,s0,a5
   17e5c:	f20407d3          	fmv.d.x	fa5,s0
   17e60:	f2068753          	fmv.d.x	fa4,a3
   17e64:	02813083          	ld	ra,40(sp)
   17e68:	02013403          	ld	s0,32(sp)
   17e6c:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   17e70:	01813483          	ld	s1,24(sp)
   17e74:	01013903          	ld	s2,16(sp)
   17e78:	03010113          	addi	sp,sp,48
   17e7c:	00008067          	ret
   17e80:	00068613          	mv	a2,a3
   17e84:	0147979b          	slliw	a5,a5,0x14
   17e88:	4206d693          	srai	a3,a3,0x20
   17e8c:	40f687bb          	subw	a5,a3,a5
   17e90:	02061693          	slli	a3,a2,0x20
   17e94:	02079793          	slli	a5,a5,0x20
   17e98:	0206d693          	srli	a3,a3,0x20
   17e9c:	00f6e6b3          	or	a3,a3,a5
   17ea0:	fbdff06f          	j	17e5c <__ratio+0x7c>

0000000000017ea4 <_mprec_log10>:
   17ea4:	01700793          	li	a5,23
   17ea8:	02a7d263          	ble	a0,a5,17ecc <_mprec_log10+0x28>
   17eac:	0001d7b7          	lui	a5,0x1d
   17eb0:	7287b507          	fld	fa0,1832(a5) # 1d728 <__wctomb+0x18>
   17eb4:	0001d7b7          	lui	a5,0x1d
   17eb8:	7787b787          	fld	fa5,1912(a5) # 1d778 <__wctomb+0x68>
   17ebc:	fff5051b          	addiw	a0,a0,-1
   17ec0:	12f57553          	fmul.d	fa0,fa0,fa5
   17ec4:	fe051ce3          	bnez	a0,17ebc <_mprec_log10+0x18>
   17ec8:	00008067          	ret
   17ecc:	0001b7b7          	lui	a5,0x1b
   17ed0:	1c878793          	addi	a5,a5,456 # 1b1c8 <p05.2568>
   17ed4:	00351513          	slli	a0,a0,0x3
   17ed8:	00a78533          	add	a0,a5,a0
   17edc:	01053507          	fld	fa0,16(a0)
   17ee0:	00008067          	ret

0000000000017ee4 <__copybits>:
   17ee4:	01462703          	lw	a4,20(a2)
   17ee8:	fff5859b          	addiw	a1,a1,-1
   17eec:	4055d81b          	sraiw	a6,a1,0x5
   17ef0:	00180813          	addi	a6,a6,1
   17ef4:	01860793          	addi	a5,a2,24
   17ef8:	00271713          	slli	a4,a4,0x2
   17efc:	00281813          	slli	a6,a6,0x2
   17f00:	00e786b3          	add	a3,a5,a4
   17f04:	01050833          	add	a6,a0,a6
   17f08:	02d7f863          	bleu	a3,a5,17f38 <__copybits+0x54>
   17f0c:	00050713          	mv	a4,a0
   17f10:	00478793          	addi	a5,a5,4
   17f14:	ffc7a583          	lw	a1,-4(a5)
   17f18:	00470713          	addi	a4,a4,4 # 3ff00004 <_gp+0x3fee2124>
   17f1c:	feb72e23          	sw	a1,-4(a4)
   17f20:	fed7e8e3          	bltu	a5,a3,17f10 <__copybits+0x2c>
   17f24:	40c687b3          	sub	a5,a3,a2
   17f28:	fe778793          	addi	a5,a5,-25
   17f2c:	ffc7f793          	andi	a5,a5,-4
   17f30:	00478793          	addi	a5,a5,4
   17f34:	00f50533          	add	a0,a0,a5
   17f38:	01057863          	bleu	a6,a0,17f48 <__copybits+0x64>
   17f3c:	00450513          	addi	a0,a0,4
   17f40:	fe052e23          	sw	zero,-4(a0)
   17f44:	ff056ce3          	bltu	a0,a6,17f3c <__copybits+0x58>
   17f48:	00008067          	ret

0000000000017f4c <__any_on>:
   17f4c:	01452783          	lw	a5,20(a0)
   17f50:	4055d71b          	sraiw	a4,a1,0x5
   17f54:	01850693          	addi	a3,a0,24
   17f58:	04e7c463          	blt	a5,a4,17fa0 <__any_on+0x54>
   17f5c:	04f75063          	ble	a5,a4,17f9c <__any_on+0x50>
   17f60:	00070793          	mv	a5,a4
   17f64:	00279793          	slli	a5,a5,0x2
   17f68:	01f5f593          	andi	a1,a1,31
   17f6c:	00f687b3          	add	a5,a3,a5
   17f70:	04059063          	bnez	a1,17fb0 <__any_on+0x64>
   17f74:	04f6fa63          	bleu	a5,a3,17fc8 <__any_on+0x7c>
   17f78:	ffc7a503          	lw	a0,-4(a5)
   17f7c:	ffc78793          	addi	a5,a5,-4
   17f80:	00051a63          	bnez	a0,17f94 <__any_on+0x48>
   17f84:	02f6f463          	bleu	a5,a3,17fac <__any_on+0x60>
   17f88:	ffc78793          	addi	a5,a5,-4
   17f8c:	0007a703          	lw	a4,0(a5)
   17f90:	fe070ae3          	beqz	a4,17f84 <__any_on+0x38>
   17f94:	00100513          	li	a0,1
   17f98:	00008067          	ret
   17f9c:	00070793          	mv	a5,a4
   17fa0:	00279793          	slli	a5,a5,0x2
   17fa4:	00f687b3          	add	a5,a3,a5
   17fa8:	fcdff06f          	j	17f74 <__any_on+0x28>
   17fac:	00008067          	ret
   17fb0:	0007a603          	lw	a2,0(a5)
   17fb4:	00100513          	li	a0,1
   17fb8:	00b6573b          	srlw	a4,a2,a1
   17fbc:	00b715bb          	sllw	a1,a4,a1
   17fc0:	fab60ae3          	beq	a2,a1,17f74 <__any_on+0x28>
   17fc4:	00008067          	ret
   17fc8:	00000513          	li	a0,0
   17fcc:	00008067          	ret

0000000000017fd0 <nanf>:
   17fd0:	0001d7b7          	lui	a5,0x1d
   17fd4:	7a07a507          	flw	fa0,1952(a5) # 1d7a0 <__wctomb+0x90>
   17fd8:	00008067          	ret

0000000000017fdc <__fpclassifyd>:
   17fdc:	e20507d3          	fmv.x.d	a5,fa0
   17fe0:	00200513          	li	a0,2
   17fe4:	4207d713          	srai	a4,a5,0x20
   17fe8:	0007879b          	sext.w	a5,a5
   17fec:	00f766b3          	or	a3,a4,a5
   17ff0:	00069463          	bnez	a3,17ff8 <__fpclassifyd+0x1c>
   17ff4:	00008067          	ret
   17ff8:	800006b7          	lui	a3,0x80000
   17ffc:	04d70863          	beq	a4,a3,1804c <__fpclassifyd+0x70>
   18000:	fff006b7          	lui	a3,0xfff00
   18004:	00d706bb          	addw	a3,a4,a3
   18008:	7fe00637          	lui	a2,0x7fe00
   1800c:	00400513          	li	a0,4
   18010:	fec6e2e3          	bltu	a3,a2,17ff4 <__fpclassifyd+0x18>
   18014:	7ff006b7          	lui	a3,0x7ff00
   18018:	00d706bb          	addw	a3,a4,a3
   1801c:	fcc6ece3          	bltu	a3,a2,17ff4 <__fpclassifyd+0x18>
   18020:	800006b7          	lui	a3,0x80000
   18024:	fff6c693          	not	a3,a3
   18028:	00d77733          	and	a4,a4,a3
   1802c:	001006b7          	lui	a3,0x100
   18030:	00300513          	li	a0,3
   18034:	fcd760e3          	bltu	a4,a3,17ff4 <__fpclassifyd+0x18>
   18038:	7ff006b7          	lui	a3,0x7ff00
   1803c:	00000513          	li	a0,0
   18040:	fad71ae3          	bne	a4,a3,17ff4 <__fpclassifyd+0x18>
   18044:	0017b513          	seqz	a0,a5
   18048:	00008067          	ret
   1804c:	fc079ae3          	bnez	a5,18020 <__fpclassifyd+0x44>
   18050:	00008067          	ret

0000000000018054 <__sread>:
   18054:	01259503          	lh	a0,18(a1)
   18058:	ff010113          	addi	sp,sp,-16
   1805c:	00813023          	sd	s0,0(sp)
   18060:	00058413          	mv	s0,a1
   18064:	00060593          	mv	a1,a2
   18068:	00068613          	mv	a2,a3
   1806c:	00113423          	sd	ra,8(sp)
   18070:	1a5020ef          	jal	1aa14 <read>
   18074:	02054063          	bltz	a0,18094 <__sread+0x40>
   18078:	09043783          	ld	a5,144(s0)
   1807c:	00813083          	ld	ra,8(sp)
   18080:	00a787b3          	add	a5,a5,a0
   18084:	08f43823          	sd	a5,144(s0)
   18088:	00013403          	ld	s0,0(sp)
   1808c:	01010113          	addi	sp,sp,16
   18090:	00008067          	ret
   18094:	01045703          	lhu	a4,16(s0)
   18098:	fffff7b7          	lui	a5,0xfffff
   1809c:	00813083          	ld	ra,8(sp)
   180a0:	fff7879b          	addiw	a5,a5,-1
   180a4:	00f777b3          	and	a5,a4,a5
   180a8:	00f41823          	sh	a5,16(s0)
   180ac:	00013403          	ld	s0,0(sp)
   180b0:	01010113          	addi	sp,sp,16
   180b4:	00008067          	ret

00000000000180b8 <__seofread>:
   180b8:	00000513          	li	a0,0
   180bc:	00008067          	ret

00000000000180c0 <__swrite>:
   180c0:	01059703          	lh	a4,16(a1)
   180c4:	fd010113          	addi	sp,sp,-48
   180c8:	02813023          	sd	s0,32(sp)
   180cc:	00913c23          	sd	s1,24(sp)
   180d0:	02113423          	sd	ra,40(sp)
   180d4:	10077793          	andi	a5,a4,256
   180d8:	00058413          	mv	s0,a1
   180dc:	00060493          	mv	s1,a2
   180e0:	02078063          	beqz	a5,18100 <__swrite+0x40>
   180e4:	01259503          	lh	a0,18(a1)
   180e8:	00200613          	li	a2,2
   180ec:	00000593          	li	a1,0
   180f0:	00d13423          	sd	a3,8(sp)
   180f4:	10d020ef          	jal	1aa00 <lseek>
   180f8:	01041703          	lh	a4,16(s0)
   180fc:	00813683          	ld	a3,8(sp)
   18100:	fffff7b7          	lui	a5,0xfffff
   18104:	fff7879b          	addiw	a5,a5,-1
   18108:	00f777b3          	and	a5,a4,a5
   1810c:	01241503          	lh	a0,18(s0)
   18110:	00f41823          	sh	a5,16(s0)
   18114:	00048593          	mv	a1,s1
   18118:	02813083          	ld	ra,40(sp)
   1811c:	02013403          	ld	s0,32(sp)
   18120:	01813483          	ld	s1,24(sp)
   18124:	00068613          	mv	a2,a3
   18128:	03010113          	addi	sp,sp,48
   1812c:	0fd0206f          	j	1aa28 <write>

0000000000018130 <__sseek>:
   18130:	01259503          	lh	a0,18(a1)
   18134:	ff010113          	addi	sp,sp,-16
   18138:	00813023          	sd	s0,0(sp)
   1813c:	00058413          	mv	s0,a1
   18140:	00060593          	mv	a1,a2
   18144:	00068613          	mv	a2,a3
   18148:	00113423          	sd	ra,8(sp)
   1814c:	0b5020ef          	jal	1aa00 <lseek>
   18150:	fff00793          	li	a5,-1
   18154:	01045703          	lhu	a4,16(s0)
   18158:	02f50263          	beq	a0,a5,1817c <__sseek+0x4c>
   1815c:	00813083          	ld	ra,8(sp)
   18160:	000017b7          	lui	a5,0x1
   18164:	00f767b3          	or	a5,a4,a5
   18168:	08a43823          	sd	a0,144(s0)
   1816c:	00f41823          	sh	a5,16(s0)
   18170:	00013403          	ld	s0,0(sp)
   18174:	01010113          	addi	sp,sp,16
   18178:	00008067          	ret
   1817c:	fffff7b7          	lui	a5,0xfffff
   18180:	00813083          	ld	ra,8(sp)
   18184:	fff7879b          	addiw	a5,a5,-1
   18188:	00f777b3          	and	a5,a4,a5
   1818c:	00f41823          	sh	a5,16(s0)
   18190:	00013403          	ld	s0,0(sp)
   18194:	01010113          	addi	sp,sp,16
   18198:	00008067          	ret

000000000001819c <__sclose>:
   1819c:	01259503          	lh	a0,18(a1)
   181a0:	1350206f          	j	1aad4 <close>

00000000000181a4 <strcmp>:
   181a4:	00b56733          	or	a4,a0,a1
   181a8:	fff00393          	li	t2,-1
   181ac:	00777713          	andi	a4,a4,7
   181b0:	0c071c63          	bnez	a4,18288 <strcmp+0xe4>
   181b4:	00005e17          	auipc	t3,0x5
   181b8:	5f4e3e03          	ld	t3,1524(t3) # 1d7a8 <mask>
   181bc:	00053603          	ld	a2,0(a0)
   181c0:	0005b683          	ld	a3,0(a1)
   181c4:	01c672b3          	and	t0,a2,t3
   181c8:	01c66333          	or	t1,a2,t3
   181cc:	01c282b3          	add	t0,t0,t3
   181d0:	0062e2b3          	or	t0,t0,t1
   181d4:	0c729e63          	bne	t0,t2,182b0 <strcmp+0x10c>
   181d8:	04d61663          	bne	a2,a3,18224 <strcmp+0x80>
   181dc:	00853603          	ld	a2,8(a0)
   181e0:	0085b683          	ld	a3,8(a1)
   181e4:	01c672b3          	and	t0,a2,t3
   181e8:	01c66333          	or	t1,a2,t3
   181ec:	01c282b3          	add	t0,t0,t3
   181f0:	0062e2b3          	or	t0,t0,t1
   181f4:	0a729a63          	bne	t0,t2,182a8 <strcmp+0x104>
   181f8:	02d61663          	bne	a2,a3,18224 <strcmp+0x80>
   181fc:	01053603          	ld	a2,16(a0)
   18200:	0105b683          	ld	a3,16(a1)
   18204:	01c672b3          	and	t0,a2,t3
   18208:	01c66333          	or	t1,a2,t3
   1820c:	01c282b3          	add	t0,t0,t3
   18210:	0062e2b3          	or	t0,t0,t1
   18214:	0a729463          	bne	t0,t2,182bc <strcmp+0x118>
   18218:	01850513          	addi	a0,a0,24
   1821c:	01858593          	addi	a1,a1,24
   18220:	f8d60ee3          	beq	a2,a3,181bc <strcmp+0x18>
   18224:	03061713          	slli	a4,a2,0x30
   18228:	03069793          	slli	a5,a3,0x30
   1822c:	02f71a63          	bne	a4,a5,18260 <strcmp+0xbc>
   18230:	02061713          	slli	a4,a2,0x20
   18234:	02069793          	slli	a5,a3,0x20
   18238:	02f71463          	bne	a4,a5,18260 <strcmp+0xbc>
   1823c:	01061713          	slli	a4,a2,0x10
   18240:	01069793          	slli	a5,a3,0x10
   18244:	00f71e63          	bne	a4,a5,18260 <strcmp+0xbc>
   18248:	03065713          	srli	a4,a2,0x30
   1824c:	0306d793          	srli	a5,a3,0x30
   18250:	40f70533          	sub	a0,a4,a5
   18254:	0ff57593          	andi	a1,a0,255
   18258:	02059063          	bnez	a1,18278 <strcmp+0xd4>
   1825c:	00008067          	ret
   18260:	03075713          	srli	a4,a4,0x30
   18264:	0307d793          	srli	a5,a5,0x30
   18268:	40f70533          	sub	a0,a4,a5
   1826c:	0ff57593          	andi	a1,a0,255
   18270:	00059463          	bnez	a1,18278 <strcmp+0xd4>
   18274:	00008067          	ret
   18278:	0ff77713          	andi	a4,a4,255
   1827c:	0ff7f793          	andi	a5,a5,255
   18280:	40f70533          	sub	a0,a4,a5
   18284:	00008067          	ret
   18288:	00054603          	lbu	a2,0(a0)
   1828c:	0005c683          	lbu	a3,0(a1)
   18290:	00150513          	addi	a0,a0,1
   18294:	00158593          	addi	a1,a1,1
   18298:	00d61463          	bne	a2,a3,182a0 <strcmp+0xfc>
   1829c:	fe0616e3          	bnez	a2,18288 <strcmp+0xe4>
   182a0:	40d60533          	sub	a0,a2,a3
   182a4:	00008067          	ret
   182a8:	00850513          	addi	a0,a0,8
   182ac:	00858593          	addi	a1,a1,8
   182b0:	fcd61ce3          	bne	a2,a3,18288 <strcmp+0xe4>
   182b4:	00000513          	li	a0,0
   182b8:	00008067          	ret
   182bc:	01050513          	addi	a0,a0,16
   182c0:	01058593          	addi	a1,a1,16
   182c4:	fcd612e3          	bne	a2,a3,18288 <strcmp+0xe4>
   182c8:	00000513          	li	a0,0
   182cc:	00008067          	ret

00000000000182d0 <strlen>:
   182d0:	00757793          	andi	a5,a0,7
   182d4:	00050593          	mv	a1,a0
   182d8:	06079a63          	bnez	a5,1834c <strlen+0x7c>
   182dc:	0001d7b7          	lui	a5,0x1d
   182e0:	7a87b683          	ld	a3,1960(a5) # 1d7a8 <mask>
   182e4:	fff00613          	li	a2,-1
   182e8:	00850513          	addi	a0,a0,8
   182ec:	ff853783          	ld	a5,-8(a0)
   182f0:	00d7f733          	and	a4,a5,a3
   182f4:	00d70733          	add	a4,a4,a3
   182f8:	00d7e7b3          	or	a5,a5,a3
   182fc:	00f767b3          	or	a5,a4,a5
   18300:	fec784e3          	beq	a5,a2,182e8 <strlen+0x18>
   18304:	ff854783          	lbu	a5,-8(a0)
   18308:	40b505b3          	sub	a1,a0,a1
   1830c:	06078263          	beqz	a5,18370 <strlen+0xa0>
   18310:	ff954783          	lbu	a5,-7(a0)
   18314:	04078a63          	beqz	a5,18368 <strlen+0x98>
   18318:	ffa54783          	lbu	a5,-6(a0)
   1831c:	06078263          	beqz	a5,18380 <strlen+0xb0>
   18320:	ffb54783          	lbu	a5,-5(a0)
   18324:	04078a63          	beqz	a5,18378 <strlen+0xa8>
   18328:	ffc54783          	lbu	a5,-4(a0)
   1832c:	ffd54703          	lbu	a4,-3(a0)
   18330:	ffe54683          	lbu	a3,-2(a0)
   18334:	04078a63          	beqz	a5,18388 <strlen+0xb8>
   18338:	04070c63          	beqz	a4,18390 <strlen+0xc0>
   1833c:	fff58513          	addi	a0,a1,-1
   18340:	04068c63          	beqz	a3,18398 <strlen+0xc8>
   18344:	00008067          	ret
   18348:	f8070ae3          	beqz	a4,182dc <strlen+0xc>
   1834c:	00054783          	lbu	a5,0(a0)
   18350:	00150513          	addi	a0,a0,1
   18354:	00757713          	andi	a4,a0,7
   18358:	fe0798e3          	bnez	a5,18348 <strlen+0x78>
   1835c:	40b50533          	sub	a0,a0,a1
   18360:	fff50513          	addi	a0,a0,-1
   18364:	00008067          	ret
   18368:	ff958513          	addi	a0,a1,-7
   1836c:	00008067          	ret
   18370:	ff858513          	addi	a0,a1,-8
   18374:	00008067          	ret
   18378:	ffb58513          	addi	a0,a1,-5
   1837c:	00008067          	ret
   18380:	ffa58513          	addi	a0,a1,-6
   18384:	00008067          	ret
   18388:	ffc58513          	addi	a0,a1,-4
   1838c:	00008067          	ret
   18390:	ffd58513          	addi	a0,a1,-3
   18394:	00008067          	ret
   18398:	ffe58513          	addi	a0,a1,-2
   1839c:	00008067          	ret

00000000000183a0 <strncmp>:
   183a0:	0c060263          	beqz	a2,18464 <strncmp+0xc4>
   183a4:	00b567b3          	or	a5,a0,a1
   183a8:	0077f793          	andi	a5,a5,7
   183ac:	06079e63          	bnez	a5,18428 <strncmp+0x88>
   183b0:	00700893          	li	a7,7
   183b4:	06c8fa63          	bleu	a2,a7,18428 <strncmp+0x88>
   183b8:	00053783          	ld	a5,0(a0)
   183bc:	0005b703          	ld	a4,0(a1)
   183c0:	06e79463          	bne	a5,a4,18428 <strncmp+0x88>
   183c4:	ff860613          	addi	a2,a2,-8 # 7fdffff8 <_gp+0x7fde2118>
   183c8:	08060e63          	beqz	a2,18464 <strncmp+0xc4>
   183cc:	0001d737          	lui	a4,0x1d
   183d0:	79073e03          	ld	t3,1936(a4) # 1d790 <__wctomb+0x80>
   183d4:	0001d737          	lui	a4,0x1d
   183d8:	79873303          	ld	t1,1944(a4) # 1d798 <__wctomb+0x88>
   183dc:	fff7c713          	not	a4,a5
   183e0:	01c787b3          	add	a5,a5,t3
   183e4:	00f777b3          	and	a5,a4,a5
   183e8:	0067f7b3          	and	a5,a5,t1
   183ec:	02078863          	beqz	a5,1841c <strncmp+0x7c>
   183f0:	0740006f          	j	18464 <strncmp+0xc4>
   183f4:	00053703          	ld	a4,0(a0)
   183f8:	0005b683          	ld	a3,0(a1)
   183fc:	01c70833          	add	a6,a4,t3
   18400:	fff74793          	not	a5,a4
   18404:	00f877b3          	and	a5,a6,a5
   18408:	0067f7b3          	and	a5,a5,t1
   1840c:	00d71e63          	bne	a4,a3,18428 <strncmp+0x88>
   18410:	ff860613          	addi	a2,a2,-8
   18414:	04060863          	beqz	a2,18464 <strncmp+0xc4>
   18418:	04079663          	bnez	a5,18464 <strncmp+0xc4>
   1841c:	00850513          	addi	a0,a0,8
   18420:	00858593          	addi	a1,a1,8
   18424:	fcc8e8e3          	bltu	a7,a2,183f4 <strncmp+0x54>
   18428:	00054703          	lbu	a4,0(a0)
   1842c:	0005c783          	lbu	a5,0(a1)
   18430:	fff60613          	addi	a2,a2,-1
   18434:	02e79c63          	bne	a5,a4,1846c <strncmp+0xcc>
   18438:	02060663          	beqz	a2,18464 <strncmp+0xc4>
   1843c:	02078463          	beqz	a5,18464 <strncmp+0xc4>
   18440:	00150513          	addi	a0,a0,1
   18444:	00158593          	addi	a1,a1,1
   18448:	00054783          	lbu	a5,0(a0)
   1844c:	0005c703          	lbu	a4,0(a1)
   18450:	fff60613          	addi	a2,a2,-1
   18454:	fee782e3          	beq	a5,a4,18438 <strncmp+0x98>
   18458:	00070513          	mv	a0,a4
   1845c:	40a7853b          	subw	a0,a5,a0
   18460:	00008067          	ret
   18464:	00000513          	li	a0,0
   18468:	00008067          	ret
   1846c:	00078513          	mv	a0,a5
   18470:	00070793          	mv	a5,a4
   18474:	fe9ff06f          	j	1845c <strncmp+0xbc>

0000000000018478 <__sprint_r.part.0>:
   18478:	0ac5a783          	lw	a5,172(a1)
   1847c:	fb010113          	addi	sp,sp,-80
   18480:	01613823          	sd	s6,16(sp)
   18484:	04113423          	sd	ra,72(sp)
   18488:	04813023          	sd	s0,64(sp)
   1848c:	02913c23          	sd	s1,56(sp)
   18490:	03213823          	sd	s2,48(sp)
   18494:	03313423          	sd	s3,40(sp)
   18498:	03413023          	sd	s4,32(sp)
   1849c:	01513c23          	sd	s5,24(sp)
   184a0:	01713423          	sd	s7,8(sp)
   184a4:	03279713          	slli	a4,a5,0x32
   184a8:	00060b13          	mv	s6,a2
   184ac:	0a075863          	bgez	a4,1855c <__sprint_r.part.0+0xe4>
   184b0:	01063783          	ld	a5,16(a2)
   184b4:	00058a13          	mv	s4,a1
   184b8:	00050a93          	mv	s5,a0
   184bc:	00063b83          	ld	s7,0(a2)
   184c0:	fff00993          	li	s3,-1
   184c4:	08078863          	beqz	a5,18554 <__sprint_r.part.0+0xdc>
   184c8:	008bb903          	ld	s2,8(s7)
   184cc:	000bb483          	ld	s1,0(s7)
   184d0:	00000413          	li	s0,0
   184d4:	00295913          	srli	s2,s2,0x2
   184d8:	0009091b          	sext.w	s2,s2
   184dc:	01204863          	bgtz	s2,184ec <__sprint_r.part.0+0x74>
   184e0:	0600006f          	j	18540 <__sprint_r.part.0+0xc8>
   184e4:	00448493          	addi	s1,s1,4
   184e8:	04890a63          	beq	s2,s0,1853c <__sprint_r.part.0+0xc4>
   184ec:	0004a583          	lw	a1,0(s1)
   184f0:	000a0613          	mv	a2,s4
   184f4:	000a8513          	mv	a0,s5
   184f8:	524010ef          	jal	19a1c <_fputwc_r>
   184fc:	0014041b          	addiw	s0,s0,1
   18500:	ff3512e3          	bne	a0,s3,184e4 <__sprint_r.part.0+0x6c>
   18504:	00098513          	mv	a0,s3
   18508:	04813083          	ld	ra,72(sp)
   1850c:	000b3823          	sd	zero,16(s6)
   18510:	000b2423          	sw	zero,8(s6)
   18514:	04013403          	ld	s0,64(sp)
   18518:	03813483          	ld	s1,56(sp)
   1851c:	03013903          	ld	s2,48(sp)
   18520:	02813983          	ld	s3,40(sp)
   18524:	02013a03          	ld	s4,32(sp)
   18528:	01813a83          	ld	s5,24(sp)
   1852c:	01013b03          	ld	s6,16(sp)
   18530:	00813b83          	ld	s7,8(sp)
   18534:	05010113          	addi	sp,sp,80
   18538:	00008067          	ret
   1853c:	010b3783          	ld	a5,16(s6)
   18540:	00291913          	slli	s2,s2,0x2
   18544:	412787b3          	sub	a5,a5,s2
   18548:	00fb3823          	sd	a5,16(s6)
   1854c:	010b8b93          	addi	s7,s7,16
   18550:	f6079ce3          	bnez	a5,184c8 <__sprint_r.part.0+0x50>
   18554:	00000513          	li	a0,0
   18558:	fb1ff06f          	j	18508 <__sprint_r.part.0+0x90>
   1855c:	564010ef          	jal	19ac0 <__sfvwrite_r>
   18560:	fa9ff06f          	j	18508 <__sprint_r.part.0+0x90>

0000000000018564 <__sprint_r>:
   18564:	01063703          	ld	a4,16(a2)
   18568:	00070463          	beqz	a4,18570 <__sprint_r+0xc>
   1856c:	f0dff06f          	j	18478 <__sprint_r.part.0>
   18570:	00062423          	sw	zero,8(a2)
   18574:	00000513          	li	a0,0
   18578:	00008067          	ret

000000000001857c <_vfiprintf_r>:
   1857c:	e6010113          	addi	sp,sp,-416
   18580:	17513423          	sd	s5,360(sp)
   18584:	17613023          	sd	s6,352(sp)
   18588:	15a13023          	sd	s10,320(sp)
   1858c:	18113c23          	sd	ra,408(sp)
   18590:	18813823          	sd	s0,400(sp)
   18594:	18913423          	sd	s1,392(sp)
   18598:	19213023          	sd	s2,384(sp)
   1859c:	17313c23          	sd	s3,376(sp)
   185a0:	17413823          	sd	s4,368(sp)
   185a4:	15713c23          	sd	s7,344(sp)
   185a8:	15813823          	sd	s8,336(sp)
   185ac:	15913423          	sd	s9,328(sp)
   185b0:	13b13c23          	sd	s11,312(sp)
   185b4:	00d13423          	sd	a3,8(sp)
   185b8:	00050a93          	mv	s5,a0
   185bc:	00058d13          	mv	s10,a1
   185c0:	00060b13          	mv	s6,a2
   185c4:	00050663          	beqz	a0,185d0 <_vfiprintf_r+0x54>
   185c8:	05052783          	lw	a5,80(a0)
   185cc:	1e078c63          	beqz	a5,187c4 <_vfiprintf_r+0x248>
   185d0:	010d1683          	lh	a3,16(s10)
   185d4:	03069793          	slli	a5,a3,0x30
   185d8:	0307d793          	srli	a5,a5,0x30
   185dc:	03279713          	slli	a4,a5,0x32
   185e0:	02074a63          	bltz	a4,18614 <_vfiprintf_r+0x98>
   185e4:	000027b7          	lui	a5,0x2
   185e8:	0acd2603          	lw	a2,172(s10)
   185ec:	00f6e7b3          	or	a5,a3,a5
   185f0:	0107979b          	slliw	a5,a5,0x10
   185f4:	ffffe737          	lui	a4,0xffffe
   185f8:	4107d79b          	sraiw	a5,a5,0x10
   185fc:	fff7071b          	addiw	a4,a4,-1
   18600:	00e67733          	and	a4,a2,a4
   18604:	00fd1823          	sh	a5,16(s10)
   18608:	03079793          	slli	a5,a5,0x30
   1860c:	0aed2623          	sw	a4,172(s10)
   18610:	0307d793          	srli	a5,a5,0x30
   18614:	0087f713          	andi	a4,a5,8
   18618:	12070a63          	beqz	a4,1874c <_vfiprintf_r+0x1d0>
   1861c:	018d3703          	ld	a4,24(s10)
   18620:	12070663          	beqz	a4,1874c <_vfiprintf_r+0x1d0>
   18624:	01a7f793          	andi	a5,a5,26
   18628:	00a00713          	li	a4,10
   1862c:	14e78063          	beq	a5,a4,1876c <_vfiprintf_r+0x1f0>
   18630:	0b010c93          	addi	s9,sp,176
   18634:	0001bc37          	lui	s8,0x1b
   18638:	0af10793          	addi	a5,sp,175
   1863c:	2f0c0713          	addi	a4,s8,752 # 1b2f0 <__mprec_bigtens+0x28>
   18640:	40fc87b3          	sub	a5,s9,a5
   18644:	0001b8b7          	lui	a7,0x1b
   18648:	07913823          	sd	s9,112(sp)
   1864c:	08013023          	sd	zero,128(sp)
   18650:	06012c23          	sw	zero,120(sp)
   18654:	000c8413          	mv	s0,s9
   18658:	00013c23          	sd	zero,24(sp)
   1865c:	04012c23          	sw	zero,88(sp)
   18660:	00e13823          	sd	a4,16(sp)
   18664:	45888c13          	addi	s8,a7,1112 # 1b458 <blanks.4136>
   18668:	04f12e23          	sw	a5,92(sp)
   1866c:	000b4783          	lbu	a5,0(s6)
   18670:	4e078ee3          	beqz	a5,1936c <_vfiprintf_r+0xdf0>
   18674:	02500713          	li	a4,37
   18678:	000b0493          	mv	s1,s6
   1867c:	00e79663          	bne	a5,a4,18688 <_vfiprintf_r+0x10c>
   18680:	0580006f          	j	186d8 <_vfiprintf_r+0x15c>
   18684:	00e78863          	beq	a5,a4,18694 <_vfiprintf_r+0x118>
   18688:	00148493          	addi	s1,s1,1
   1868c:	0004c783          	lbu	a5,0(s1)
   18690:	fe079ae3          	bnez	a5,18684 <_vfiprintf_r+0x108>
   18694:	4164893b          	subw	s2,s1,s6
   18698:	04090063          	beqz	s2,186d8 <_vfiprintf_r+0x15c>
   1869c:	08013703          	ld	a4,128(sp)
   186a0:	07812783          	lw	a5,120(sp)
   186a4:	00090613          	mv	a2,s2
   186a8:	00e60733          	add	a4,a2,a4
   186ac:	0017879b          	addiw	a5,a5,1
   186b0:	00c43423          	sd	a2,8(s0)
   186b4:	01643023          	sd	s6,0(s0)
   186b8:	08e13023          	sd	a4,128(sp)
   186bc:	06f12c23          	sw	a5,120(sp)
   186c0:	00700613          	li	a2,7
   186c4:	01040413          	addi	s0,s0,16
   186c8:	06f64463          	blt	a2,a5,18730 <_vfiprintf_r+0x1b4>
   186cc:	05812783          	lw	a5,88(sp)
   186d0:	012787bb          	addw	a5,a5,s2
   186d4:	04f12c23          	sw	a5,88(sp)
   186d8:	0004c783          	lbu	a5,0(s1)
   186dc:	580786e3          	beqz	a5,19468 <_vfiprintf_r+0xeec>
   186e0:	00148813          	addi	a6,s1,1
   186e4:	060103a3          	sb	zero,103(sp)
   186e8:	00000513          	li	a0,0
   186ec:	00000e93          	li	t4,0
   186f0:	fff00493          	li	s1,-1
   186f4:	00000913          	li	s2,0
   186f8:	00000313          	li	t1,0
   186fc:	05800613          	li	a2,88
   18700:	00900593          	li	a1,9
   18704:	02a00f13          	li	t5,42
   18708:	00084703          	lbu	a4,0(a6)
   1870c:	00180b13          	addi	s6,a6,1
   18710:	fe07079b          	addiw	a5,a4,-32
   18714:	66f66263          	bltu	a2,a5,18d78 <_vfiprintf_r+0x7fc>
   18718:	01013683          	ld	a3,16(sp)
   1871c:	02079793          	slli	a5,a5,0x20
   18720:	01e7d793          	srli	a5,a5,0x1e
   18724:	00d787b3          	add	a5,a5,a3
   18728:	0007a783          	lw	a5,0(a5) # 2000 <_ftext-0xe000>
   1872c:	00078067          	jr	a5
   18730:	2e071ee3          	bnez	a4,1922c <_vfiprintf_r+0xcb0>
   18734:	06012c23          	sw	zero,120(sp)
   18738:	000c8413          	mv	s0,s9
   1873c:	f91ff06f          	j	186cc <_vfiprintf_r+0x150>
   18740:	01036313          	ori	t1,t1,16
   18744:	000b0813          	mv	a6,s6
   18748:	fc1ff06f          	j	18708 <_vfiprintf_r+0x18c>
   1874c:	000d0593          	mv	a1,s10
   18750:	000a8513          	mv	a0,s5
   18754:	d81fa0ef          	jal	134d4 <__swsetup_r>
   18758:	4e0512e3          	bnez	a0,1943c <_vfiprintf_r+0xec0>
   1875c:	010d5783          	lhu	a5,16(s10)
   18760:	00a00713          	li	a4,10
   18764:	01a7f793          	andi	a5,a5,26
   18768:	ece794e3          	bne	a5,a4,18630 <_vfiprintf_r+0xb4>
   1876c:	012d1783          	lh	a5,18(s10)
   18770:	ec07c0e3          	bltz	a5,18630 <_vfiprintf_r+0xb4>
   18774:	00813683          	ld	a3,8(sp)
   18778:	000b0613          	mv	a2,s6
   1877c:	000d0593          	mv	a1,s10
   18780:	000a8513          	mv	a0,s5
   18784:	6a9000ef          	jal	1962c <__sbprintf>
   18788:	19813083          	ld	ra,408(sp)
   1878c:	19013403          	ld	s0,400(sp)
   18790:	18813483          	ld	s1,392(sp)
   18794:	18013903          	ld	s2,384(sp)
   18798:	17813983          	ld	s3,376(sp)
   1879c:	17013a03          	ld	s4,368(sp)
   187a0:	16813a83          	ld	s5,360(sp)
   187a4:	16013b03          	ld	s6,352(sp)
   187a8:	15813b83          	ld	s7,344(sp)
   187ac:	15013c03          	ld	s8,336(sp)
   187b0:	14813c83          	ld	s9,328(sp)
   187b4:	14013d03          	ld	s10,320(sp)
   187b8:	13813d83          	ld	s11,312(sp)
   187bc:	1a010113          	addi	sp,sp,416
   187c0:	00008067          	ret
   187c4:	a1dfc0ef          	jal	151e0 <__sinit>
   187c8:	e09ff06f          	j	185d0 <_vfiprintf_r+0x54>
   187cc:	00813783          	ld	a5,8(sp)
   187d0:	0007a903          	lw	s2,0(a5)
   187d4:	00878793          	addi	a5,a5,8
   187d8:	00f13423          	sd	a5,8(sp)
   187dc:	f60954e3          	bgez	s2,18744 <_vfiprintf_r+0x1c8>
   187e0:	4120093b          	negw	s2,s2
   187e4:	00436313          	ori	t1,t1,4
   187e8:	000b0813          	mv	a6,s6
   187ec:	f1dff06f          	j	18708 <_vfiprintf_r+0x18c>
   187f0:	03000793          	li	a5,48
   187f4:	06f10423          	sb	a5,104(sp)
   187f8:	07800793          	li	a5,120
   187fc:	06f104a3          	sb	a5,105(sp)
   18800:	00813783          	ld	a5,8(sp)
   18804:	060103a3          	sb	zero,103(sp)
   18808:	00236613          	ori	a2,t1,2
   1880c:	00878713          	addi	a4,a5,8
   18810:	0007b783          	ld	a5,0(a5)
   18814:	2e04cce3          	bltz	s1,1930c <_vfiprintf_r+0xd90>
   18818:	f7f37313          	andi	t1,t1,-129
   1881c:	00e13423          	sd	a4,8(sp)
   18820:	00236313          	ori	t1,t1,2
   18824:	32079ae3          	bnez	a5,19358 <_vfiprintf_r+0xddc>
   18828:	0001b7b7          	lui	a5,0x1b
   1882c:	4d078793          	addi	a5,a5,1232 # 1b4d0 <zeroes.4137+0x68>
   18830:	00f13c23          	sd	a5,24(sp)
   18834:	00000593          	li	a1,0
   18838:	200498e3          	bnez	s1,19248 <_vfiprintf_r+0xccc>
   1883c:	00000493          	li	s1,0
   18840:	00000a13          	li	s4,0
   18844:	000c8b93          	mv	s7,s9
   18848:	00048993          	mv	s3,s1
   1884c:	0144d463          	ble	s4,s1,18854 <_vfiprintf_r+0x2d8>
   18850:	000a0993          	mv	s3,s4
   18854:	00b035b3          	snez	a1,a1
   18858:	00b989bb          	addw	s3,s3,a1
   1885c:	00237393          	andi	t2,t1,2
   18860:	00038463          	beqz	t2,18868 <_vfiprintf_r+0x2ec>
   18864:	0029899b          	addiw	s3,s3,2
   18868:	08437293          	andi	t0,t1,132
   1886c:	58029463          	bnez	t0,18df4 <_vfiprintf_r+0x878>
   18870:	41390dbb          	subw	s11,s2,s3
   18874:	59b05063          	blez	s11,18df4 <_vfiprintf_r+0x878>
   18878:	01000793          	li	a5,16
   1887c:	45b7dee3          	ble	s11,a5,194d8 <_vfiprintf_r+0xf5c>
   18880:	01000e93          	li	t4,16
   18884:	08013783          	ld	a5,128(sp)
   18888:	07812503          	lw	a0,120(sp)
   1888c:	05813823          	sd	s8,80(sp)
   18890:	00700f13          	li	t5,7
   18894:	000e8f93          	mv	t6,t4
   18898:	0180006f          	j	188b0 <_vfiprintf_r+0x334>
   1889c:	0025061b          	addiw	a2,a0,2
   188a0:	01040413          	addi	s0,s0,16
   188a4:	00058513          	mv	a0,a1
   188a8:	ff0d8d9b          	addiw	s11,s11,-16
   188ac:	03bfdc63          	ble	s11,t6,188e4 <_vfiprintf_r+0x368>
   188b0:	01078793          	addi	a5,a5,16
   188b4:	0015059b          	addiw	a1,a0,1
   188b8:	01843023          	sd	s8,0(s0)
   188bc:	01d43423          	sd	t4,8(s0)
   188c0:	08f13023          	sd	a5,128(sp)
   188c4:	06b12c23          	sw	a1,120(sp)
   188c8:	fcbf5ae3          	ble	a1,t5,1889c <_vfiprintf_r+0x320>
   188cc:	4c079863          	bnez	a5,18d9c <_vfiprintf_r+0x820>
   188d0:	ff0d8d9b          	addiw	s11,s11,-16
   188d4:	00000513          	li	a0,0
   188d8:	00100613          	li	a2,1
   188dc:	000c8413          	mv	s0,s9
   188e0:	fdbfc8e3          	blt	t6,s11,188b0 <_vfiprintf_r+0x334>
   188e4:	05013703          	ld	a4,80(sp)
   188e8:	00fd87b3          	add	a5,s11,a5
   188ec:	01b43423          	sd	s11,8(s0)
   188f0:	00e43023          	sd	a4,0(s0)
   188f4:	08f13023          	sd	a5,128(sp)
   188f8:	06c12c23          	sw	a2,120(sp)
   188fc:	00700593          	li	a1,7
   18900:	7ac5cc63          	blt	a1,a2,190b8 <_vfiprintf_r+0xb3c>
   18904:	06714503          	lbu	a0,103(sp)
   18908:	01040413          	addi	s0,s0,16
   1890c:	0016059b          	addiw	a1,a2,1
   18910:	4e051c63          	bnez	a0,18e08 <_vfiprintf_r+0x88c>
   18914:	52038663          	beqz	t2,18e40 <_vfiprintf_r+0x8c4>
   18918:	06810613          	addi	a2,sp,104
   1891c:	00278793          	addi	a5,a5,2
   18920:	00c43023          	sd	a2,0(s0)
   18924:	00200613          	li	a2,2
   18928:	00c43423          	sd	a2,8(s0)
   1892c:	08f13023          	sd	a5,128(sp)
   18930:	06b12c23          	sw	a1,120(sp)
   18934:	00700613          	li	a2,7
   18938:	7cb65863          	ble	a1,a2,19108 <_vfiprintf_r+0xb8c>
   1893c:	10079ae3          	bnez	a5,19250 <_vfiprintf_r+0xcd4>
   18940:	08000513          	li	a0,128
   18944:	00100593          	li	a1,1
   18948:	00000613          	li	a2,0
   1894c:	000c8413          	mv	s0,s9
   18950:	4ea29c63          	bne	t0,a0,18e48 <_vfiprintf_r+0x8cc>
   18954:	41390ebb          	subw	t4,s2,s3
   18958:	4fd05863          	blez	t4,18e48 <_vfiprintf_r+0x8cc>
   1895c:	01000513          	li	a0,16
   18960:	3fd55ce3          	ble	t4,a0,19558 <_vfiprintf_r+0xfdc>
   18964:	01000f13          	li	t5,16
   18968:	0001b737          	lui	a4,0x1b
   1896c:	46870d93          	addi	s11,a4,1128 # 1b468 <zeroes.4137>
   18970:	00700f93          	li	t6,7
   18974:	000f0293          	mv	t0,t5
   18978:	0180006f          	j	18990 <_vfiprintf_r+0x414>
   1897c:	0026051b          	addiw	a0,a2,2
   18980:	01040413          	addi	s0,s0,16
   18984:	00058613          	mv	a2,a1
   18988:	ff0e8e9b          	addiw	t4,t4,-16
   1898c:	03d2dc63          	ble	t4,t0,189c4 <_vfiprintf_r+0x448>
   18990:	01078793          	addi	a5,a5,16
   18994:	0016059b          	addiw	a1,a2,1
   18998:	01b43023          	sd	s11,0(s0)
   1899c:	01e43423          	sd	t5,8(s0)
   189a0:	08f13023          	sd	a5,128(sp)
   189a4:	06b12c23          	sw	a1,120(sp)
   189a8:	fcbfdae3          	ble	a1,t6,1897c <_vfiprintf_r+0x400>
   189ac:	6a079e63          	bnez	a5,19068 <_vfiprintf_r+0xaec>
   189b0:	ff0e8e9b          	addiw	t4,t4,-16
   189b4:	00100513          	li	a0,1
   189b8:	00000613          	li	a2,0
   189bc:	000c8413          	mv	s0,s9
   189c0:	fdd2c8e3          	blt	t0,t4,18990 <_vfiprintf_r+0x414>
   189c4:	01d787b3          	add	a5,a5,t4
   189c8:	01b43023          	sd	s11,0(s0)
   189cc:	01d43423          	sd	t4,8(s0)
   189d0:	08f13023          	sd	a5,128(sp)
   189d4:	06a12c23          	sw	a0,120(sp)
   189d8:	00700613          	li	a2,7
   189dc:	0ea646e3          	blt	a2,a0,192c8 <_vfiprintf_r+0xd4c>
   189e0:	414484bb          	subw	s1,s1,s4
   189e4:	01040413          	addi	s0,s0,16
   189e8:	0015059b          	addiw	a1,a0,1
   189ec:	00050613          	mv	a2,a0
   189f0:	46904063          	bgtz	s1,18e50 <_vfiprintf_r+0x8d4>
   189f4:	00fa07b3          	add	a5,s4,a5
   189f8:	01743023          	sd	s7,0(s0)
   189fc:	01443423          	sd	s4,8(s0)
   18a00:	08f13023          	sd	a5,128(sp)
   18a04:	06b12c23          	sw	a1,120(sp)
   18a08:	00700713          	li	a4,7
   18a0c:	4eb75a63          	ble	a1,a4,18f00 <_vfiprintf_r+0x984>
   18a10:	7a079463          	bnez	a5,191b8 <_vfiprintf_r+0xc3c>
   18a14:	06012c23          	sw	zero,120(sp)
   18a18:	00437313          	andi	t1,t1,4
   18a1c:	00030663          	beqz	t1,18a28 <_vfiprintf_r+0x4ac>
   18a20:	413904bb          	subw	s1,s2,s3
   18a24:	229040e3          	bgtz	s1,19444 <_vfiprintf_r+0xec8>
   18a28:	01395463          	ble	s3,s2,18a30 <_vfiprintf_r+0x4b4>
   18a2c:	00098913          	mv	s2,s3
   18a30:	05812783          	lw	a5,88(sp)
   18a34:	012787bb          	addw	a5,a5,s2
   18a38:	04f12c23          	sw	a5,88(sp)
   18a3c:	06012c23          	sw	zero,120(sp)
   18a40:	000c8413          	mv	s0,s9
   18a44:	c29ff06f          	j	1866c <_vfiprintf_r+0xf0>
   18a48:	00100513          	li	a0,1
   18a4c:	02b00e93          	li	t4,43
   18a50:	000b0813          	mv	a6,s6
   18a54:	cb5ff06f          	j	18708 <_vfiprintf_r+0x18c>
   18a58:	08036313          	ori	t1,t1,128
   18a5c:	000b0813          	mv	a6,s6
   18a60:	ca9ff06f          	j	18708 <_vfiprintf_r+0x18c>
   18a64:	00000913          	li	s2,0
   18a68:	fd07079b          	addiw	a5,a4,-48
   18a6c:	001b0b13          	addi	s6,s6,1
   18a70:	fffb4703          	lbu	a4,-1(s6)
   18a74:	00191f9b          	slliw	t6,s2,0x1
   18a78:	0039191b          	slliw	s2,s2,0x3
   18a7c:	012f893b          	addw	s2,t6,s2
   18a80:	0127893b          	addw	s2,a5,s2
   18a84:	fd07079b          	addiw	a5,a4,-48
   18a88:	fef5f2e3          	bleu	a5,a1,18a6c <_vfiprintf_r+0x4f0>
   18a8c:	c85ff06f          	j	18710 <_vfiprintf_r+0x194>
   18a90:	360518e3          	bnez	a0,19600 <_vfiprintf_r+0x1084>
   18a94:	01036313          	ori	t1,t1,16
   18a98:	01037793          	andi	a5,t1,16
   18a9c:	74078263          	beqz	a5,191e0 <_vfiprintf_r+0xc64>
   18aa0:	00813703          	ld	a4,8(sp)
   18aa4:	00073783          	ld	a5,0(a4)
   18aa8:	00870713          	addi	a4,a4,8
   18aac:	00e13423          	sd	a4,8(sp)
   18ab0:	0e07c6e3          	bltz	a5,1939c <_vfiprintf_r+0xe20>
   18ab4:	06714583          	lbu	a1,103(sp)
   18ab8:	6e04c063          	bltz	s1,19198 <_vfiprintf_r+0xc1c>
   18abc:	f7f37313          	andi	t1,t1,-129
   18ac0:	10078c63          	beqz	a5,18bd8 <_vfiprintf_r+0x65c>
   18ac4:	00900613          	li	a2,9
   18ac8:	000c8b93          	mv	s7,s9
   18acc:	00a00513          	li	a0,10
   18ad0:	10f67863          	bleu	a5,a2,18be0 <_vfiprintf_r+0x664>
   18ad4:	02a7f633          	remu	a2,a5,a0
   18ad8:	fffb8b93          	addi	s7,s7,-1
   18adc:	02a7d7b3          	divu	a5,a5,a0
   18ae0:	0306061b          	addiw	a2,a2,48
   18ae4:	00cb8023          	sb	a2,0(s7)
   18ae8:	fe0796e3          	bnez	a5,18ad4 <_vfiprintf_r+0x558>
   18aec:	417c8a3b          	subw	s4,s9,s7
   18af0:	d59ff06f          	j	18848 <_vfiprintf_r+0x2cc>
   18af4:	300512e3          	bnez	a0,195f8 <_vfiprintf_r+0x107c>
   18af8:	01036313          	ori	t1,t1,16
   18afc:	01037793          	andi	a5,t1,16
   18b00:	6e078e63          	beqz	a5,191fc <_vfiprintf_r+0xc80>
   18b04:	00813783          	ld	a5,8(sp)
   18b08:	060103a3          	sb	zero,103(sp)
   18b0c:	00878713          	addi	a4,a5,8
   18b10:	0007b783          	ld	a5,0(a5)
   18b14:	7004c263          	bltz	s1,19218 <_vfiprintf_r+0xc9c>
   18b18:	00e13423          	sd	a4,8(sp)
   18b1c:	f7f37313          	andi	t1,t1,-129
   18b20:	70079263          	bnez	a5,19224 <_vfiprintf_r+0xca8>
   18b24:	00000593          	li	a1,0
   18b28:	00000793          	li	a5,0
   18b2c:	2a0482e3          	beqz	s1,195d0 <_vfiprintf_r+0x1054>
   18b30:	000c8b93          	mv	s7,s9
   18b34:	0077f613          	andi	a2,a5,7
   18b38:	fffb8b93          	addi	s7,s7,-1
   18b3c:	0306061b          	addiw	a2,a2,48
   18b40:	00cb8023          	sb	a2,0(s7)
   18b44:	0037d793          	srli	a5,a5,0x3
   18b48:	fe0796e3          	bnez	a5,18b34 <_vfiprintf_r+0x5b8>
   18b4c:	00137793          	andi	a5,t1,1
   18b50:	f8078ee3          	beqz	a5,18aec <_vfiprintf_r+0x570>
   18b54:	03000793          	li	a5,48
   18b58:	f8f60ae3          	beq	a2,a5,18aec <_vfiprintf_r+0x570>
   18b5c:	fffb8613          	addi	a2,s7,-1
   18b60:	40cc8a33          	sub	s4,s9,a2
   18b64:	fefb8fa3          	sb	a5,-1(s7)
   18b68:	000a0a1b          	sext.w	s4,s4
   18b6c:	00060b93          	mv	s7,a2
   18b70:	cd9ff06f          	j	18848 <_vfiprintf_r+0x2cc>
   18b74:	28051ee3          	bnez	a0,19610 <_vfiprintf_r+0x1094>
   18b78:	01037793          	andi	a5,t1,16
   18b7c:	040786e3          	beqz	a5,193c8 <_vfiprintf_r+0xe4c>
   18b80:	00813683          	ld	a3,8(sp)
   18b84:	05812703          	lw	a4,88(sp)
   18b88:	0006b783          	ld	a5,0(a3) # 7ff00000 <_gp+0x7fee2120>
   18b8c:	00868693          	addi	a3,a3,8
   18b90:	00d13423          	sd	a3,8(sp)
   18b94:	00e7b023          	sd	a4,0(a5)
   18b98:	ad5ff06f          	j	1866c <_vfiprintf_r+0xf0>
   18b9c:	260516e3          	bnez	a0,19608 <_vfiprintf_r+0x108c>
   18ba0:	01036313          	ori	t1,t1,16
   18ba4:	01037793          	andi	a5,t1,16
   18ba8:	5c079a63          	bnez	a5,1917c <_vfiprintf_r+0xc00>
   18bac:	04037793          	andi	a5,t1,64
   18bb0:	060103a3          	sb	zero,103(sp)
   18bb4:	7c078063          	beqz	a5,19374 <_vfiprintf_r+0xdf8>
   18bb8:	00813783          	ld	a5,8(sp)
   18bbc:	00878713          	addi	a4,a5,8
   18bc0:	0007d783          	lhu	a5,0(a5)
   18bc4:	5c04c663          	bltz	s1,19190 <_vfiprintf_r+0xc14>
   18bc8:	00e13423          	sd	a4,8(sp)
   18bcc:	f7f37313          	andi	t1,t1,-129
   18bd0:	00000593          	li	a1,0
   18bd4:	ee0798e3          	bnez	a5,18ac4 <_vfiprintf_r+0x548>
   18bd8:	c60482e3          	beqz	s1,1883c <_vfiprintf_r+0x2c0>
   18bdc:	00000793          	li	a5,0
   18be0:	0307879b          	addiw	a5,a5,48
   18be4:	0af107a3          	sb	a5,175(sp)
   18be8:	05c12a03          	lw	s4,92(sp)
   18bec:	0af10b93          	addi	s7,sp,175
   18bf0:	c59ff06f          	j	18848 <_vfiprintf_r+0x2cc>
   18bf4:	b40e98e3          	bnez	t4,18744 <_vfiprintf_r+0x1c8>
   18bf8:	00100513          	li	a0,1
   18bfc:	02000e93          	li	t4,32
   18c00:	000b0813          	mv	a6,s6
   18c04:	b05ff06f          	j	18708 <_vfiprintf_r+0x18c>
   18c08:	00136313          	ori	t1,t1,1
   18c0c:	000b0813          	mv	a6,s6
   18c10:	af9ff06f          	j	18708 <_vfiprintf_r+0x18c>
   18c14:	00813783          	ld	a5,8(sp)
   18c18:	060103a3          	sb	zero,103(sp)
   18c1c:	0007bb83          	ld	s7,0(a5)
   18c20:	00878d93          	addi	s11,a5,8
   18c24:	0e0b84e3          	beqz	s7,1950c <_vfiprintf_r+0xf90>
   18c28:	0404cee3          	bltz	s1,19484 <_vfiprintf_r+0xf08>
   18c2c:	00048613          	mv	a2,s1
   18c30:	00000593          	li	a1,0
   18c34:	000b8513          	mv	a0,s7
   18c38:	00613423          	sd	t1,8(sp)
   18c3c:	844fe0ef          	jal	16c80 <memchr>
   18c40:	00813303          	ld	t1,8(sp)
   18c44:	120502e3          	beqz	a0,19568 <_vfiprintf_r+0xfec>
   18c48:	41750a3b          	subw	s4,a0,s7
   18c4c:	06714583          	lbu	a1,103(sp)
   18c50:	01b13423          	sd	s11,8(sp)
   18c54:	00000493          	li	s1,0
   18c58:	bf1ff06f          	j	18848 <_vfiprintf_r+0x2cc>
   18c5c:	f40504e3          	beqz	a0,18ba4 <_vfiprintf_r+0x628>
   18c60:	07d103a3          	sb	t4,103(sp)
   18c64:	f41ff06f          	j	18ba4 <_vfiprintf_r+0x628>
   18c68:	00813703          	ld	a4,8(sp)
   18c6c:	00100993          	li	s3,1
   18c70:	060103a3          	sb	zero,103(sp)
   18c74:	00072783          	lw	a5,0(a4)
   18c78:	00098a13          	mv	s4,s3
   18c7c:	08810b93          	addi	s7,sp,136
   18c80:	08f10423          	sb	a5,136(sp)
   18c84:	00870793          	addi	a5,a4,8
   18c88:	00f13423          	sd	a5,8(sp)
   18c8c:	00000493          	li	s1,0
   18c90:	bcdff06f          	j	1885c <_vfiprintf_r+0x2e0>
   18c94:	e00502e3          	beqz	a0,18a98 <_vfiprintf_r+0x51c>
   18c98:	07d103a3          	sb	t4,103(sp)
   18c9c:	dfdff06f          	j	18a98 <_vfiprintf_r+0x51c>
   18ca0:	120510e3          	bnez	a0,195c0 <_vfiprintf_r+0x1044>
   18ca4:	0001b7b7          	lui	a5,0x1b
   18ca8:	4b878793          	addi	a5,a5,1208 # 1b4b8 <zeroes.4137+0x50>
   18cac:	00f13c23          	sd	a5,24(sp)
   18cb0:	01037793          	andi	a5,t1,16
   18cb4:	06078063          	beqz	a5,18d14 <_vfiprintf_r+0x798>
   18cb8:	00813683          	ld	a3,8(sp)
   18cbc:	0006b783          	ld	a5,0(a3)
   18cc0:	00868693          	addi	a3,a3,8
   18cc4:	00d13423          	sd	a3,8(sp)
   18cc8:	00137613          	andi	a2,t1,1
   18ccc:	46060863          	beqz	a2,1913c <_vfiprintf_r+0xbc0>
   18cd0:	66079063          	bnez	a5,19330 <_vfiprintf_r+0xdb4>
   18cd4:	060103a3          	sb	zero,103(sp)
   18cd8:	6404c663          	bltz	s1,19324 <_vfiprintf_r+0xda8>
   18cdc:	f7f37313          	andi	t1,t1,-129
   18ce0:	b55ff06f          	j	18834 <_vfiprintf_r+0x2b8>
   18ce4:	e0050ce3          	beqz	a0,18afc <_vfiprintf_r+0x580>
   18ce8:	07d103a3          	sb	t4,103(sp)
   18cec:	e11ff06f          	j	18afc <_vfiprintf_r+0x580>
   18cf0:	04036313          	ori	t1,t1,64
   18cf4:	000b0813          	mv	a6,s6
   18cf8:	a11ff06f          	j	18708 <_vfiprintf_r+0x18c>
   18cfc:	0a051ee3          	bnez	a0,195b8 <_vfiprintf_r+0x103c>
   18d00:	0001b7b7          	lui	a5,0x1b
   18d04:	4d078793          	addi	a5,a5,1232 # 1b4d0 <zeroes.4137+0x68>
   18d08:	00f13c23          	sd	a5,24(sp)
   18d0c:	01037793          	andi	a5,t1,16
   18d10:	fa0794e3          	bnez	a5,18cb8 <_vfiprintf_r+0x73c>
   18d14:	04037793          	andi	a5,t1,64
   18d18:	00813683          	ld	a3,8(sp)
   18d1c:	68078e63          	beqz	a5,193b8 <_vfiprintf_r+0xe3c>
   18d20:	0006d783          	lhu	a5,0(a3)
   18d24:	00868693          	addi	a3,a3,8
   18d28:	00d13423          	sd	a3,8(sp)
   18d2c:	f9dff06f          	j	18cc8 <_vfiprintf_r+0x74c>
   18d30:	000b4703          	lbu	a4,0(s6)
   18d34:	001b0813          	addi	a6,s6,1
   18d38:	05e70ee3          	beq	a4,t5,19594 <_vfiprintf_r+0x1018>
   18d3c:	fd07079b          	addiw	a5,a4,-48
   18d40:	00000493          	li	s1,0
   18d44:	00080b13          	mv	s6,a6
   18d48:	9cf5e4e3          	bltu	a1,a5,18710 <_vfiprintf_r+0x194>
   18d4c:	001b0b13          	addi	s6,s6,1
   18d50:	fffb4703          	lbu	a4,-1(s6)
   18d54:	00149f9b          	slliw	t6,s1,0x1
   18d58:	0034949b          	slliw	s1,s1,0x3
   18d5c:	009f84bb          	addw	s1,t6,s1
   18d60:	00f484bb          	addw	s1,s1,a5
   18d64:	fd07079b          	addiw	a5,a4,-48
   18d68:	fef5f2e3          	bleu	a5,a1,18d4c <_vfiprintf_r+0x7d0>
   18d6c:	9a04d2e3          	bgez	s1,18710 <_vfiprintf_r+0x194>
   18d70:	fff00493          	li	s1,-1
   18d74:	99dff06f          	j	18710 <_vfiprintf_r+0x194>
   18d78:	040518e3          	bnez	a0,195c8 <_vfiprintf_r+0x104c>
   18d7c:	6e070663          	beqz	a4,19468 <_vfiprintf_r+0xeec>
   18d80:	00100993          	li	s3,1
   18d84:	08e10423          	sb	a4,136(sp)
   18d88:	060103a3          	sb	zero,103(sp)
   18d8c:	00098a13          	mv	s4,s3
   18d90:	08810b93          	addi	s7,sp,136
   18d94:	00000493          	li	s1,0
   18d98:	ac5ff06f          	j	1885c <_vfiprintf_r+0x2e0>
   18d9c:	07010613          	addi	a2,sp,112
   18da0:	000d0593          	mv	a1,s10
   18da4:	000a8513          	mv	a0,s5
   18da8:	05f13423          	sd	t6,72(sp)
   18dac:	05e13023          	sd	t5,64(sp)
   18db0:	03d13c23          	sd	t4,56(sp)
   18db4:	02513823          	sd	t0,48(sp)
   18db8:	02713423          	sd	t2,40(sp)
   18dbc:	02613023          	sd	t1,32(sp)
   18dc0:	eb8ff0ef          	jal	18478 <__sprint_r.part.0>
   18dc4:	22051063          	bnez	a0,18fe4 <_vfiprintf_r+0xa68>
   18dc8:	07812503          	lw	a0,120(sp)
   18dcc:	08013783          	ld	a5,128(sp)
   18dd0:	000c8413          	mv	s0,s9
   18dd4:	0015061b          	addiw	a2,a0,1
   18dd8:	04813f83          	ld	t6,72(sp)
   18ddc:	04013f03          	ld	t5,64(sp)
   18de0:	03813e83          	ld	t4,56(sp)
   18de4:	03013283          	ld	t0,48(sp)
   18de8:	02813383          	ld	t2,40(sp)
   18dec:	02013303          	ld	t1,32(sp)
   18df0:	ab9ff06f          	j	188a8 <_vfiprintf_r+0x32c>
   18df4:	07812603          	lw	a2,120(sp)
   18df8:	08013783          	ld	a5,128(sp)
   18dfc:	0016059b          	addiw	a1,a2,1
   18e00:	06714503          	lbu	a0,103(sp)
   18e04:	b00508e3          	beqz	a0,18914 <_vfiprintf_r+0x398>
   18e08:	00100513          	li	a0,1
   18e0c:	06710613          	addi	a2,sp,103
   18e10:	00a787b3          	add	a5,a5,a0
   18e14:	00c43023          	sd	a2,0(s0)
   18e18:	00a43423          	sd	a0,8(s0)
   18e1c:	08f13023          	sd	a5,128(sp)
   18e20:	06b12c23          	sw	a1,120(sp)
   18e24:	00700613          	li	a2,7
   18e28:	2ab65a63          	ble	a1,a2,190dc <_vfiprintf_r+0xb60>
   18e2c:	44079e63          	bnez	a5,19288 <_vfiprintf_r+0xd0c>
   18e30:	2c039063          	bnez	t2,190f0 <_vfiprintf_r+0xb74>
   18e34:	00000613          	li	a2,0
   18e38:	00050593          	mv	a1,a0
   18e3c:	000c8413          	mv	s0,s9
   18e40:	08000513          	li	a0,128
   18e44:	b0a288e3          	beq	t0,a0,18954 <_vfiprintf_r+0x3d8>
   18e48:	414484bb          	subw	s1,s1,s4
   18e4c:	ba9054e3          	blez	s1,189f4 <_vfiprintf_r+0x478>
   18e50:	0001b737          	lui	a4,0x1b
   18e54:	01000513          	li	a0,16
   18e58:	46870d93          	addi	s11,a4,1128 # 1b468 <zeroes.4137>
   18e5c:	06955263          	ble	s1,a0,18ec0 <_vfiprintf_r+0x944>
   18e60:	01000e93          	li	t4,16
   18e64:	0001b737          	lui	a4,0x1b
   18e68:	46870d93          	addi	s11,a4,1128 # 1b468 <zeroes.4137>
   18e6c:	00700f13          	li	t5,7
   18e70:	000e8f93          	mv	t6,t4
   18e74:	0180006f          	j	18e8c <_vfiprintf_r+0x910>
   18e78:	0026059b          	addiw	a1,a2,2
   18e7c:	01040413          	addi	s0,s0,16
   18e80:	00050613          	mv	a2,a0
   18e84:	ff04849b          	addiw	s1,s1,-16
   18e88:	029fdc63          	ble	s1,t6,18ec0 <_vfiprintf_r+0x944>
   18e8c:	01078793          	addi	a5,a5,16
   18e90:	0016051b          	addiw	a0,a2,1
   18e94:	01b43023          	sd	s11,0(s0)
   18e98:	01d43423          	sd	t4,8(s0)
   18e9c:	08f13023          	sd	a5,128(sp)
   18ea0:	06a12c23          	sw	a0,120(sp)
   18ea4:	fcaf5ae3          	ble	a0,t5,18e78 <_vfiprintf_r+0x8fc>
   18ea8:	14079863          	bnez	a5,18ff8 <_vfiprintf_r+0xa7c>
   18eac:	ff04849b          	addiw	s1,s1,-16
   18eb0:	00100593          	li	a1,1
   18eb4:	00000613          	li	a2,0
   18eb8:	000c8413          	mv	s0,s9
   18ebc:	fc9fc8e3          	blt	t6,s1,18e8c <_vfiprintf_r+0x910>
   18ec0:	009787b3          	add	a5,a5,s1
   18ec4:	01b43023          	sd	s11,0(s0)
   18ec8:	00943423          	sd	s1,8(s0)
   18ecc:	08f13023          	sd	a5,128(sp)
   18ed0:	06b12c23          	sw	a1,120(sp)
   18ed4:	00700613          	li	a2,7
   18ed8:	24b64063          	blt	a2,a1,19118 <_vfiprintf_r+0xb9c>
   18edc:	01040413          	addi	s0,s0,16
   18ee0:	0015859b          	addiw	a1,a1,1
   18ee4:	00fa07b3          	add	a5,s4,a5
   18ee8:	01743023          	sd	s7,0(s0)
   18eec:	01443423          	sd	s4,8(s0)
   18ef0:	08f13023          	sd	a5,128(sp)
   18ef4:	06b12c23          	sw	a1,120(sp)
   18ef8:	00700713          	li	a4,7
   18efc:	b0b74ae3          	blt	a4,a1,18a10 <_vfiprintf_r+0x494>
   18f00:	01040413          	addi	s0,s0,16
   18f04:	00437313          	andi	t1,t1,4
   18f08:	0a030863          	beqz	t1,18fb8 <_vfiprintf_r+0xa3c>
   18f0c:	413904bb          	subw	s1,s2,s3
   18f10:	0a905463          	blez	s1,18fb8 <_vfiprintf_r+0xa3c>
   18f14:	01000713          	li	a4,16
   18f18:	62975863          	ble	s1,a4,19548 <_vfiprintf_r+0xfcc>
   18f1c:	01000a13          	li	s4,16
   18f20:	07812603          	lw	a2,120(sp)
   18f24:	05813823          	sd	s8,80(sp)
   18f28:	00700d93          	li	s11,7
   18f2c:	000a0b93          	mv	s7,s4
   18f30:	0180006f          	j	18f48 <_vfiprintf_r+0x9cc>
   18f34:	0026059b          	addiw	a1,a2,2
   18f38:	01040413          	addi	s0,s0,16
   18f3c:	00070613          	mv	a2,a4
   18f40:	ff04849b          	addiw	s1,s1,-16
   18f44:	029bdc63          	ble	s1,s7,18f7c <_vfiprintf_r+0xa00>
   18f48:	01078793          	addi	a5,a5,16
   18f4c:	0016071b          	addiw	a4,a2,1
   18f50:	01843023          	sd	s8,0(s0)
   18f54:	01443423          	sd	s4,8(s0)
   18f58:	08f13023          	sd	a5,128(sp)
   18f5c:	06e12c23          	sw	a4,120(sp)
   18f60:	fceddae3          	ble	a4,s11,18f34 <_vfiprintf_r+0x9b8>
   18f64:	0c079e63          	bnez	a5,19040 <_vfiprintf_r+0xac4>
   18f68:	ff04849b          	addiw	s1,s1,-16
   18f6c:	00100593          	li	a1,1
   18f70:	00000613          	li	a2,0
   18f74:	000c8413          	mv	s0,s9
   18f78:	fc9bc8e3          	blt	s7,s1,18f48 <_vfiprintf_r+0x9cc>
   18f7c:	05013703          	ld	a4,80(sp)
   18f80:	009787b3          	add	a5,a5,s1
   18f84:	00943423          	sd	s1,8(s0)
   18f88:	00e43023          	sd	a4,0(s0)
   18f8c:	08f13023          	sd	a5,128(sp)
   18f90:	06b12c23          	sw	a1,120(sp)
   18f94:	00700713          	li	a4,7
   18f98:	02b75063          	ble	a1,a4,18fb8 <_vfiprintf_r+0xa3c>
   18f9c:	a80786e3          	beqz	a5,18a28 <_vfiprintf_r+0x4ac>
   18fa0:	07010613          	addi	a2,sp,112
   18fa4:	000d0593          	mv	a1,s10
   18fa8:	000a8513          	mv	a0,s5
   18fac:	cccff0ef          	jal	18478 <__sprint_r.part.0>
   18fb0:	02051a63          	bnez	a0,18fe4 <_vfiprintf_r+0xa68>
   18fb4:	08013783          	ld	a5,128(sp)
   18fb8:	01395463          	ble	s3,s2,18fc0 <_vfiprintf_r+0xa44>
   18fbc:	00098913          	mv	s2,s3
   18fc0:	05812703          	lw	a4,88(sp)
   18fc4:	0127073b          	addw	a4,a4,s2
   18fc8:	04e12c23          	sw	a4,88(sp)
   18fcc:	a60788e3          	beqz	a5,18a3c <_vfiprintf_r+0x4c0>
   18fd0:	07010613          	addi	a2,sp,112
   18fd4:	000d0593          	mv	a1,s10
   18fd8:	000a8513          	mv	a0,s5
   18fdc:	c9cff0ef          	jal	18478 <__sprint_r.part.0>
   18fe0:	a4050ee3          	beqz	a0,18a3c <_vfiprintf_r+0x4c0>
   18fe4:	010d5783          	lhu	a5,16(s10)
   18fe8:	0407f793          	andi	a5,a5,64
   18fec:	44079863          	bnez	a5,1943c <_vfiprintf_r+0xec0>
   18ff0:	05812503          	lw	a0,88(sp)
   18ff4:	f94ff06f          	j	18788 <_vfiprintf_r+0x20c>
   18ff8:	07010613          	addi	a2,sp,112
   18ffc:	000d0593          	mv	a1,s10
   19000:	000a8513          	mv	a0,s5
   19004:	03f13c23          	sd	t6,56(sp)
   19008:	03e13823          	sd	t5,48(sp)
   1900c:	03d13423          	sd	t4,40(sp)
   19010:	02613023          	sd	t1,32(sp)
   19014:	c64ff0ef          	jal	18478 <__sprint_r.part.0>
   19018:	fc0516e3          	bnez	a0,18fe4 <_vfiprintf_r+0xa68>
   1901c:	07812603          	lw	a2,120(sp)
   19020:	08013783          	ld	a5,128(sp)
   19024:	000c8413          	mv	s0,s9
   19028:	0016059b          	addiw	a1,a2,1
   1902c:	03813f83          	ld	t6,56(sp)
   19030:	03013f03          	ld	t5,48(sp)
   19034:	02813e83          	ld	t4,40(sp)
   19038:	02013303          	ld	t1,32(sp)
   1903c:	e49ff06f          	j	18e84 <_vfiprintf_r+0x908>
   19040:	07010613          	addi	a2,sp,112
   19044:	000d0593          	mv	a1,s10
   19048:	000a8513          	mv	a0,s5
   1904c:	c2cff0ef          	jal	18478 <__sprint_r.part.0>
   19050:	f8051ae3          	bnez	a0,18fe4 <_vfiprintf_r+0xa68>
   19054:	07812603          	lw	a2,120(sp)
   19058:	08013783          	ld	a5,128(sp)
   1905c:	000c8413          	mv	s0,s9
   19060:	0016059b          	addiw	a1,a2,1
   19064:	eddff06f          	j	18f40 <_vfiprintf_r+0x9c4>
   19068:	07010613          	addi	a2,sp,112
   1906c:	000d0593          	mv	a1,s10
   19070:	000a8513          	mv	a0,s5
   19074:	04513023          	sd	t0,64(sp)
   19078:	03f13c23          	sd	t6,56(sp)
   1907c:	03e13823          	sd	t5,48(sp)
   19080:	03d13423          	sd	t4,40(sp)
   19084:	02613023          	sd	t1,32(sp)
   19088:	bf0ff0ef          	jal	18478 <__sprint_r.part.0>
   1908c:	f4051ce3          	bnez	a0,18fe4 <_vfiprintf_r+0xa68>
   19090:	07812603          	lw	a2,120(sp)
   19094:	08013783          	ld	a5,128(sp)
   19098:	000c8413          	mv	s0,s9
   1909c:	0016051b          	addiw	a0,a2,1
   190a0:	04013283          	ld	t0,64(sp)
   190a4:	03813f83          	ld	t6,56(sp)
   190a8:	03013f03          	ld	t5,48(sp)
   190ac:	02813e83          	ld	t4,40(sp)
   190b0:	02013303          	ld	t1,32(sp)
   190b4:	8d5ff06f          	j	18988 <_vfiprintf_r+0x40c>
   190b8:	34079263          	bnez	a5,193fc <_vfiprintf_r+0xe80>
   190bc:	06714603          	lbu	a2,103(sp)
   190c0:	02060663          	beqz	a2,190ec <_vfiprintf_r+0xb70>
   190c4:	00100793          	li	a5,1
   190c8:	06710613          	addi	a2,sp,103
   190cc:	0ac13823          	sd	a2,176(sp)
   190d0:	0af13c23          	sd	a5,184(sp)
   190d4:	00078593          	mv	a1,a5
   190d8:	000c8413          	mv	s0,s9
   190dc:	00058613          	mv	a2,a1
   190e0:	01040413          	addi	s0,s0,16
   190e4:	0015859b          	addiw	a1,a1,1
   190e8:	82dff06f          	j	18914 <_vfiprintf_r+0x398>
   190ec:	36038063          	beqz	t2,1944c <_vfiprintf_r+0xed0>
   190f0:	00200793          	li	a5,2
   190f4:	06810613          	addi	a2,sp,104
   190f8:	0ac13823          	sd	a2,176(sp)
   190fc:	0af13c23          	sd	a5,184(sp)
   19100:	00100593          	li	a1,1
   19104:	000c8413          	mv	s0,s9
   19108:	00058613          	mv	a2,a1
   1910c:	01040413          	addi	s0,s0,16
   19110:	0015859b          	addiw	a1,a1,1
   19114:	d2dff06f          	j	18e40 <_vfiprintf_r+0x8c4>
   19118:	1c079263          	bnez	a5,192dc <_vfiprintf_r+0xd60>
   1911c:	00100713          	li	a4,1
   19120:	000a0793          	mv	a5,s4
   19124:	0b713823          	sd	s7,176(sp)
   19128:	0b413c23          	sd	s4,184(sp)
   1912c:	09413023          	sd	s4,128(sp)
   19130:	06e12c23          	sw	a4,120(sp)
   19134:	000c8413          	mv	s0,s9
   19138:	dc9ff06f          	j	18f00 <_vfiprintf_r+0x984>
   1913c:	060103a3          	sb	zero,103(sp)
   19140:	1e04c063          	bltz	s1,19320 <_vfiprintf_r+0xda4>
   19144:	f7f37313          	andi	t1,t1,-129
   19148:	ee078663          	beqz	a5,18834 <_vfiprintf_r+0x2b8>
   1914c:	00000593          	li	a1,0
   19150:	000c8b93          	mv	s7,s9
   19154:	01813703          	ld	a4,24(sp)
   19158:	00f7f613          	andi	a2,a5,15
   1915c:	fffb8b93          	addi	s7,s7,-1
   19160:	00c70633          	add	a2,a4,a2
   19164:	00064603          	lbu	a2,0(a2)
   19168:	0047d793          	srli	a5,a5,0x4
   1916c:	00cb8023          	sb	a2,0(s7)
   19170:	fe0792e3          	bnez	a5,19154 <_vfiprintf_r+0xbd8>
   19174:	417c8a3b          	subw	s4,s9,s7
   19178:	ed0ff06f          	j	18848 <_vfiprintf_r+0x2cc>
   1917c:	00813783          	ld	a5,8(sp)
   19180:	060103a3          	sb	zero,103(sp)
   19184:	00878713          	addi	a4,a5,8
   19188:	0007b783          	ld	a5,0(a5)
   1918c:	a204dee3          	bgez	s1,18bc8 <_vfiprintf_r+0x64c>
   19190:	00e13423          	sd	a4,8(sp)
   19194:	00000593          	li	a1,0
   19198:	920796e3          	bnez	a5,18ac4 <_vfiprintf_r+0x548>
   1919c:	00100793          	li	a5,1
   191a0:	00100713          	li	a4,1
   191a4:	a2e78ce3          	beq	a5,a4,18bdc <_vfiprintf_r+0x660>
   191a8:	00200713          	li	a4,2
   191ac:	08e78e63          	beq	a5,a4,19248 <_vfiprintf_r+0xccc>
   191b0:	00000793          	li	a5,0
   191b4:	97dff06f          	j	18b30 <_vfiprintf_r+0x5b4>
   191b8:	07010613          	addi	a2,sp,112
   191bc:	000d0593          	mv	a1,s10
   191c0:	000a8513          	mv	a0,s5
   191c4:	02613023          	sd	t1,32(sp)
   191c8:	ab0ff0ef          	jal	18478 <__sprint_r.part.0>
   191cc:	e0051ce3          	bnez	a0,18fe4 <_vfiprintf_r+0xa68>
   191d0:	08013783          	ld	a5,128(sp)
   191d4:	000c8413          	mv	s0,s9
   191d8:	02013303          	ld	t1,32(sp)
   191dc:	d29ff06f          	j	18f04 <_vfiprintf_r+0x988>
   191e0:	04037793          	andi	a5,t1,64
   191e4:	00813703          	ld	a4,8(sp)
   191e8:	20078263          	beqz	a5,193ec <_vfiprintf_r+0xe70>
   191ec:	00071783          	lh	a5,0(a4)
   191f0:	00870713          	addi	a4,a4,8
   191f4:	00e13423          	sd	a4,8(sp)
   191f8:	8b9ff06f          	j	18ab0 <_vfiprintf_r+0x534>
   191fc:	04037793          	andi	a5,t1,64
   19200:	060103a3          	sb	zero,103(sp)
   19204:	18078263          	beqz	a5,19388 <_vfiprintf_r+0xe0c>
   19208:	00813783          	ld	a5,8(sp)
   1920c:	00878713          	addi	a4,a5,8
   19210:	0007d783          	lhu	a5,0(a5)
   19214:	9004d2e3          	bgez	s1,18b18 <_vfiprintf_r+0x59c>
   19218:	00e13423          	sd	a4,8(sp)
   1921c:	00000593          	li	a1,0
   19220:	f80780e3          	beqz	a5,191a0 <_vfiprintf_r+0xc24>
   19224:	00000593          	li	a1,0
   19228:	909ff06f          	j	18b30 <_vfiprintf_r+0x5b4>
   1922c:	07010613          	addi	a2,sp,112
   19230:	000d0593          	mv	a1,s10
   19234:	000a8513          	mv	a0,s5
   19238:	a40ff0ef          	jal	18478 <__sprint_r.part.0>
   1923c:	da0514e3          	bnez	a0,18fe4 <_vfiprintf_r+0xa68>
   19240:	000c8413          	mv	s0,s9
   19244:	c88ff06f          	j	186cc <_vfiprintf_r+0x150>
   19248:	00000793          	li	a5,0
   1924c:	f05ff06f          	j	19150 <_vfiprintf_r+0xbd4>
   19250:	07010613          	addi	a2,sp,112
   19254:	000d0593          	mv	a1,s10
   19258:	000a8513          	mv	a0,s5
   1925c:	02513423          	sd	t0,40(sp)
   19260:	02613023          	sd	t1,32(sp)
   19264:	a14ff0ef          	jal	18478 <__sprint_r.part.0>
   19268:	d6051ee3          	bnez	a0,18fe4 <_vfiprintf_r+0xa68>
   1926c:	07812603          	lw	a2,120(sp)
   19270:	08013783          	ld	a5,128(sp)
   19274:	000c8413          	mv	s0,s9
   19278:	0016059b          	addiw	a1,a2,1
   1927c:	02813283          	ld	t0,40(sp)
   19280:	02013303          	ld	t1,32(sp)
   19284:	bbdff06f          	j	18e40 <_vfiprintf_r+0x8c4>
   19288:	07010613          	addi	a2,sp,112
   1928c:	000d0593          	mv	a1,s10
   19290:	000a8513          	mv	a0,s5
   19294:	02513823          	sd	t0,48(sp)
   19298:	02713423          	sd	t2,40(sp)
   1929c:	02613023          	sd	t1,32(sp)
   192a0:	9d8ff0ef          	jal	18478 <__sprint_r.part.0>
   192a4:	d40510e3          	bnez	a0,18fe4 <_vfiprintf_r+0xa68>
   192a8:	07812603          	lw	a2,120(sp)
   192ac:	08013783          	ld	a5,128(sp)
   192b0:	000c8413          	mv	s0,s9
   192b4:	0016059b          	addiw	a1,a2,1
   192b8:	03013283          	ld	t0,48(sp)
   192bc:	02813383          	ld	t2,40(sp)
   192c0:	02013303          	ld	t1,32(sp)
   192c4:	e50ff06f          	j	18914 <_vfiprintf_r+0x398>
   192c8:	1e079063          	bnez	a5,194a8 <_vfiprintf_r+0xf2c>
   192cc:	00100593          	li	a1,1
   192d0:	00000613          	li	a2,0
   192d4:	000c8413          	mv	s0,s9
   192d8:	b71ff06f          	j	18e48 <_vfiprintf_r+0x8cc>
   192dc:	07010613          	addi	a2,sp,112
   192e0:	000d0593          	mv	a1,s10
   192e4:	000a8513          	mv	a0,s5
   192e8:	02613023          	sd	t1,32(sp)
   192ec:	98cff0ef          	jal	18478 <__sprint_r.part.0>
   192f0:	ce051ae3          	bnez	a0,18fe4 <_vfiprintf_r+0xa68>
   192f4:	07812583          	lw	a1,120(sp)
   192f8:	08013783          	ld	a5,128(sp)
   192fc:	000c8413          	mv	s0,s9
   19300:	0015859b          	addiw	a1,a1,1
   19304:	02013303          	ld	t1,32(sp)
   19308:	eecff06f          	j	189f4 <_vfiprintf_r+0x478>
   1930c:	00e13423          	sd	a4,8(sp)
   19310:	0001b737          	lui	a4,0x1b
   19314:	4d070713          	addi	a4,a4,1232 # 1b4d0 <zeroes.4137+0x68>
   19318:	00060313          	mv	t1,a2
   1931c:	00e13c23          	sd	a4,24(sp)
   19320:	e20796e3          	bnez	a5,1914c <_vfiprintf_r+0xbd0>
   19324:	00000593          	li	a1,0
   19328:	00200793          	li	a5,2
   1932c:	e75ff06f          	j	191a0 <_vfiprintf_r+0xc24>
   19330:	03000613          	li	a2,48
   19334:	06e104a3          	sb	a4,105(sp)
   19338:	06c10423          	sb	a2,104(sp)
   1933c:	060103a3          	sb	zero,103(sp)
   19340:	00236713          	ori	a4,t1,2
   19344:	1a04c463          	bltz	s1,194ec <_vfiprintf_r+0xf70>
   19348:	f7f37313          	andi	t1,t1,-129
   1934c:	00236313          	ori	t1,t1,2
   19350:	00000593          	li	a1,0
   19354:	dfdff06f          	j	19150 <_vfiprintf_r+0xbd4>
   19358:	0001b737          	lui	a4,0x1b
   1935c:	4d070713          	addi	a4,a4,1232 # 1b4d0 <zeroes.4137+0x68>
   19360:	00000593          	li	a1,0
   19364:	00e13c23          	sd	a4,24(sp)
   19368:	de9ff06f          	j	19150 <_vfiprintf_r+0xbd4>
   1936c:	000b0493          	mv	s1,s6
   19370:	b68ff06f          	j	186d8 <_vfiprintf_r+0x15c>
   19374:	00813783          	ld	a5,8(sp)
   19378:	00878713          	addi	a4,a5,8
   1937c:	0007e783          	lwu	a5,0(a5)
   19380:	8404d4e3          	bgez	s1,18bc8 <_vfiprintf_r+0x64c>
   19384:	e0dff06f          	j	19190 <_vfiprintf_r+0xc14>
   19388:	00813783          	ld	a5,8(sp)
   1938c:	00878713          	addi	a4,a5,8
   19390:	0007e783          	lwu	a5,0(a5)
   19394:	f804d263          	bgez	s1,18b18 <_vfiprintf_r+0x59c>
   19398:	e81ff06f          	j	19218 <_vfiprintf_r+0xc9c>
   1939c:	02d00713          	li	a4,45
   193a0:	06e103a3          	sb	a4,103(sp)
   193a4:	40f007b3          	neg	a5,a5
   193a8:	1804c863          	bltz	s1,19538 <_vfiprintf_r+0xfbc>
   193ac:	f7f37313          	andi	t1,t1,-129
   193b0:	02d00593          	li	a1,45
   193b4:	f10ff06f          	j	18ac4 <_vfiprintf_r+0x548>
   193b8:	0006e783          	lwu	a5,0(a3)
   193bc:	00868693          	addi	a3,a3,8
   193c0:	00d13423          	sd	a3,8(sp)
   193c4:	905ff06f          	j	18cc8 <_vfiprintf_r+0x74c>
   193c8:	00813703          	ld	a4,8(sp)
   193cc:	04037313          	andi	t1,t1,64
   193d0:	00073783          	ld	a5,0(a4)
   193d4:	00870713          	addi	a4,a4,8
   193d8:	00e13423          	sd	a4,8(sp)
   193dc:	08030063          	beqz	t1,1945c <_vfiprintf_r+0xee0>
   193e0:	05815703          	lhu	a4,88(sp)
   193e4:	00e79023          	sh	a4,0(a5)
   193e8:	a84ff06f          	j	1866c <_vfiprintf_r+0xf0>
   193ec:	00072783          	lw	a5,0(a4)
   193f0:	00870713          	addi	a4,a4,8
   193f4:	00e13423          	sd	a4,8(sp)
   193f8:	eb8ff06f          	j	18ab0 <_vfiprintf_r+0x534>
   193fc:	07010613          	addi	a2,sp,112
   19400:	000d0593          	mv	a1,s10
   19404:	000a8513          	mv	a0,s5
   19408:	02513823          	sd	t0,48(sp)
   1940c:	02713423          	sd	t2,40(sp)
   19410:	02613023          	sd	t1,32(sp)
   19414:	864ff0ef          	jal	18478 <__sprint_r.part.0>
   19418:	bc0516e3          	bnez	a0,18fe4 <_vfiprintf_r+0xa68>
   1941c:	07812603          	lw	a2,120(sp)
   19420:	08013783          	ld	a5,128(sp)
   19424:	000c8413          	mv	s0,s9
   19428:	0016059b          	addiw	a1,a2,1
   1942c:	03013283          	ld	t0,48(sp)
   19430:	02813383          	ld	t2,40(sp)
   19434:	02013303          	ld	t1,32(sp)
   19438:	9c9ff06f          	j	18e00 <_vfiprintf_r+0x884>
   1943c:	fff00513          	li	a0,-1
   19440:	b48ff06f          	j	18788 <_vfiprintf_r+0x20c>
   19444:	000c8413          	mv	s0,s9
   19448:	acdff06f          	j	18f14 <_vfiprintf_r+0x998>
   1944c:	00000613          	li	a2,0
   19450:	00100593          	li	a1,1
   19454:	000c8413          	mv	s0,s9
   19458:	9e9ff06f          	j	18e40 <_vfiprintf_r+0x8c4>
   1945c:	05812703          	lw	a4,88(sp)
   19460:	00e7a023          	sw	a4,0(a5)
   19464:	a08ff06f          	j	1866c <_vfiprintf_r+0xf0>
   19468:	08013783          	ld	a5,128(sp)
   1946c:	b6078ce3          	beqz	a5,18fe4 <_vfiprintf_r+0xa68>
   19470:	07010613          	addi	a2,sp,112
   19474:	000d0593          	mv	a1,s10
   19478:	000a8513          	mv	a0,s5
   1947c:	ffdfe0ef          	jal	18478 <__sprint_r.part.0>
   19480:	b65ff06f          	j	18fe4 <_vfiprintf_r+0xa68>
   19484:	000b8513          	mv	a0,s7
   19488:	02613023          	sd	t1,32(sp)
   1948c:	e45fe0ef          	jal	182d0 <strlen>
   19490:	00050a1b          	sext.w	s4,a0
   19494:	06714583          	lbu	a1,103(sp)
   19498:	01b13423          	sd	s11,8(sp)
   1949c:	00000493          	li	s1,0
   194a0:	02013303          	ld	t1,32(sp)
   194a4:	ba4ff06f          	j	18848 <_vfiprintf_r+0x2cc>
   194a8:	07010613          	addi	a2,sp,112
   194ac:	000d0593          	mv	a1,s10
   194b0:	000a8513          	mv	a0,s5
   194b4:	02613023          	sd	t1,32(sp)
   194b8:	fc1fe0ef          	jal	18478 <__sprint_r.part.0>
   194bc:	b20514e3          	bnez	a0,18fe4 <_vfiprintf_r+0xa68>
   194c0:	07812603          	lw	a2,120(sp)
   194c4:	08013783          	ld	a5,128(sp)
   194c8:	000c8413          	mv	s0,s9
   194cc:	0016059b          	addiw	a1,a2,1
   194d0:	02013303          	ld	t1,32(sp)
   194d4:	975ff06f          	j	18e48 <_vfiprintf_r+0x8cc>
   194d8:	07812603          	lw	a2,120(sp)
   194dc:	08013783          	ld	a5,128(sp)
   194e0:	05813823          	sd	s8,80(sp)
   194e4:	0016061b          	addiw	a2,a2,1
   194e8:	bfcff06f          	j	188e4 <_vfiprintf_r+0x368>
   194ec:	00000593          	li	a1,0
   194f0:	00200613          	li	a2,2
   194f4:	00100513          	li	a0,1
   194f8:	08a60263          	beq	a2,a0,1957c <_vfiprintf_r+0x1000>
   194fc:	00200513          	li	a0,2
   19500:	08a61263          	bne	a2,a0,19584 <_vfiprintf_r+0x1008>
   19504:	00070313          	mv	t1,a4
   19508:	c49ff06f          	j	19150 <_vfiprintf_r+0xbd4>
   1950c:	00600793          	li	a5,6
   19510:	0097f463          	bleu	s1,a5,19518 <_vfiprintf_r+0xf9c>
   19514:	00078493          	mv	s1,a5
   19518:	00048a13          	mv	s4,s1
   1951c:	00048993          	mv	s3,s1
   19520:	0604c663          	bltz	s1,1958c <_vfiprintf_r+0x1010>
   19524:	0001b737          	lui	a4,0x1b
   19528:	01b13423          	sd	s11,8(sp)
   1952c:	4e870b93          	addi	s7,a4,1256 # 1b4e8 <zeroes.4137+0x80>
   19530:	00000493          	li	s1,0
   19534:	b28ff06f          	j	1885c <_vfiprintf_r+0x2e0>
   19538:	00030713          	mv	a4,t1
   1953c:	02d00593          	li	a1,45
   19540:	00100613          	li	a2,1
   19544:	fb1ff06f          	j	194f4 <_vfiprintf_r+0xf78>
   19548:	07812583          	lw	a1,120(sp)
   1954c:	05813823          	sd	s8,80(sp)
   19550:	0015859b          	addiw	a1,a1,1
   19554:	a29ff06f          	j	18f7c <_vfiprintf_r+0xa00>
   19558:	0001b737          	lui	a4,0x1b
   1955c:	00058513          	mv	a0,a1
   19560:	46870d93          	addi	s11,a4,1128 # 1b468 <zeroes.4137>
   19564:	c60ff06f          	j	189c4 <_vfiprintf_r+0x448>
   19568:	00048a13          	mv	s4,s1
   1956c:	06714583          	lbu	a1,103(sp)
   19570:	01b13423          	sd	s11,8(sp)
   19574:	00000493          	li	s1,0
   19578:	ad0ff06f          	j	18848 <_vfiprintf_r+0x2cc>
   1957c:	00070313          	mv	t1,a4
   19580:	d44ff06f          	j	18ac4 <_vfiprintf_r+0x548>
   19584:	00070313          	mv	t1,a4
   19588:	da8ff06f          	j	18b30 <_vfiprintf_r+0x5b4>
   1958c:	00000993          	li	s3,0
   19590:	f95ff06f          	j	19524 <_vfiprintf_r+0xfa8>
   19594:	00813783          	ld	a5,8(sp)
   19598:	00080b13          	mv	s6,a6
   1959c:	0007a483          	lw	s1,0(a5)
   195a0:	00878b93          	addi	s7,a5,8
   195a4:	01713423          	sd	s7,8(sp)
   195a8:	9804de63          	bgez	s1,18744 <_vfiprintf_r+0x1c8>
   195ac:	fff00493          	li	s1,-1
   195b0:	000b0813          	mv	a6,s6
   195b4:	954ff06f          	j	18708 <_vfiprintf_r+0x18c>
   195b8:	07d103a3          	sb	t4,103(sp)
   195bc:	f44ff06f          	j	18d00 <_vfiprintf_r+0x784>
   195c0:	07d103a3          	sb	t4,103(sp)
   195c4:	ee0ff06f          	j	18ca4 <_vfiprintf_r+0x728>
   195c8:	07d103a3          	sb	t4,103(sp)
   195cc:	fb0ff06f          	j	18d7c <_vfiprintf_r+0x800>
   195d0:	00137793          	andi	a5,t1,1
   195d4:	00078c63          	beqz	a5,195ec <_vfiprintf_r+0x1070>
   195d8:	03000793          	li	a5,48
   195dc:	0af107a3          	sb	a5,175(sp)
   195e0:	05c12a03          	lw	s4,92(sp)
   195e4:	0af10b93          	addi	s7,sp,175
   195e8:	a60ff06f          	j	18848 <_vfiprintf_r+0x2cc>
   195ec:	00000a13          	li	s4,0
   195f0:	000c8b93          	mv	s7,s9
   195f4:	a54ff06f          	j	18848 <_vfiprintf_r+0x2cc>
   195f8:	07d103a3          	sb	t4,103(sp)
   195fc:	cfcff06f          	j	18af8 <_vfiprintf_r+0x57c>
   19600:	07d103a3          	sb	t4,103(sp)
   19604:	c90ff06f          	j	18a94 <_vfiprintf_r+0x518>
   19608:	07d103a3          	sb	t4,103(sp)
   1960c:	d94ff06f          	j	18ba0 <_vfiprintf_r+0x624>
   19610:	07d103a3          	sb	t4,103(sp)
   19614:	d64ff06f          	j	18b78 <_vfiprintf_r+0x5fc>

0000000000019618 <vfiprintf>:
   19618:	00060693          	mv	a3,a2
   1961c:	00058613          	mv	a2,a1
   19620:	00050593          	mv	a1,a0
   19624:	8101b503          	ld	a0,-2032(gp) # 1d6f0 <_impure_ptr>
   19628:	f55fe06f          	j	1857c <_vfiprintf_r>

000000000001962c <__sbprintf>:
   1962c:	0105d783          	lhu	a5,16(a1)
   19630:	0ac5ae03          	lw	t3,172(a1)
   19634:	0125d303          	lhu	t1,18(a1)
   19638:	0305b883          	ld	a7,48(a1)
   1963c:	0405b803          	ld	a6,64(a1)
   19640:	b3010113          	addi	sp,sp,-1232
   19644:	ffd7f793          	andi	a5,a5,-3
   19648:	40000713          	li	a4,1024
   1964c:	4c813023          	sd	s0,1216(sp)
   19650:	00f11823          	sh	a5,16(sp)
   19654:	00058413          	mv	s0,a1
   19658:	0b010793          	addi	a5,sp,176
   1965c:	00010593          	mv	a1,sp
   19660:	4a913c23          	sd	s1,1208(sp)
   19664:	4b213823          	sd	s2,1200(sp)
   19668:	4c113423          	sd	ra,1224(sp)
   1966c:	00050913          	mv	s2,a0
   19670:	0bc12623          	sw	t3,172(sp)
   19674:	00611923          	sh	t1,18(sp)
   19678:	03113823          	sd	a7,48(sp)
   1967c:	05013023          	sd	a6,64(sp)
   19680:	00f13023          	sd	a5,0(sp)
   19684:	00f13c23          	sd	a5,24(sp)
   19688:	00e12623          	sw	a4,12(sp)
   1968c:	02e12023          	sw	a4,32(sp)
   19690:	02012423          	sw	zero,40(sp)
   19694:	ee9fe0ef          	jal	1857c <_vfiprintf_r>
   19698:	00050493          	mv	s1,a0
   1969c:	00054a63          	bltz	a0,196b0 <__sbprintf+0x84>
   196a0:	00010593          	mv	a1,sp
   196a4:	00090513          	mv	a0,s2
   196a8:	f8cfb0ef          	jal	14e34 <_fflush_r>
   196ac:	02051c63          	bnez	a0,196e4 <__sbprintf+0xb8>
   196b0:	01015783          	lhu	a5,16(sp)
   196b4:	0407f793          	andi	a5,a5,64
   196b8:	00078863          	beqz	a5,196c8 <__sbprintf+0x9c>
   196bc:	01045783          	lhu	a5,16(s0)
   196c0:	0407e793          	ori	a5,a5,64
   196c4:	00f41823          	sh	a5,16(s0)
   196c8:	4c813083          	ld	ra,1224(sp)
   196cc:	00048513          	mv	a0,s1
   196d0:	4c013403          	ld	s0,1216(sp)
   196d4:	4b813483          	ld	s1,1208(sp)
   196d8:	4b013903          	ld	s2,1200(sp)
   196dc:	4d010113          	addi	sp,sp,1232
   196e0:	00008067          	ret
   196e4:	fff00493          	li	s1,-1
   196e8:	fc9ff06f          	j	196b0 <__sbprintf+0x84>

00000000000196ec <_calloc_r>:
   196ec:	02c585b3          	mul	a1,a1,a2
   196f0:	ff010113          	addi	sp,sp,-16
   196f4:	00113423          	sd	ra,8(sp)
   196f8:	00813023          	sd	s0,0(sp)
   196fc:	e15fc0ef          	jal	16510 <_malloc_r>
   19700:	08050c63          	beqz	a0,19798 <_calloc_r+0xac>
   19704:	ff853603          	ld	a2,-8(a0)
   19708:	04800713          	li	a4,72
   1970c:	00050413          	mv	s0,a0
   19710:	ffc67613          	andi	a2,a2,-4
   19714:	ff860613          	addi	a2,a2,-8
   19718:	04c76e63          	bltu	a4,a2,19774 <_calloc_r+0x88>
   1971c:	02700693          	li	a3,39
   19720:	00050793          	mv	a5,a0
   19724:	02c6f863          	bleu	a2,a3,19754 <_calloc_r+0x68>
   19728:	00053023          	sd	zero,0(a0)
   1972c:	00053423          	sd	zero,8(a0)
   19730:	03700793          	li	a5,55
   19734:	04c7fe63          	bleu	a2,a5,19790 <_calloc_r+0xa4>
   19738:	00053823          	sd	zero,16(a0)
   1973c:	00053c23          	sd	zero,24(a0)
   19740:	02050793          	addi	a5,a0,32
   19744:	00e61863          	bne	a2,a4,19754 <_calloc_r+0x68>
   19748:	02053023          	sd	zero,32(a0)
   1974c:	03050793          	addi	a5,a0,48
   19750:	02053423          	sd	zero,40(a0)
   19754:	0007b023          	sd	zero,0(a5)
   19758:	0007b423          	sd	zero,8(a5)
   1975c:	0007b823          	sd	zero,16(a5)
   19760:	00040513          	mv	a0,s0
   19764:	00813083          	ld	ra,8(sp)
   19768:	00013403          	ld	s0,0(sp)
   1976c:	01010113          	addi	sp,sp,16
   19770:	00008067          	ret
   19774:	00000593          	li	a1,0
   19778:	f10fd0ef          	jal	16e88 <memset>
   1977c:	00813083          	ld	ra,8(sp)
   19780:	00040513          	mv	a0,s0
   19784:	00013403          	ld	s0,0(sp)
   19788:	01010113          	addi	sp,sp,16
   1978c:	00008067          	ret
   19790:	01050793          	addi	a5,a0,16
   19794:	fc1ff06f          	j	19754 <_calloc_r+0x68>
   19798:	00000513          	li	a0,0
   1979c:	fc9ff06f          	j	19764 <_calloc_r+0x78>

00000000000197a0 <_fclose_r>:
   197a0:	0e058e63          	beqz	a1,1989c <_fclose_r+0xfc>
   197a4:	fe010113          	addi	sp,sp,-32
   197a8:	00813823          	sd	s0,16(sp)
   197ac:	00913423          	sd	s1,8(sp)
   197b0:	00113c23          	sd	ra,24(sp)
   197b4:	01213023          	sd	s2,0(sp)
   197b8:	00050493          	mv	s1,a0
   197bc:	00058413          	mv	s0,a1
   197c0:	00050663          	beqz	a0,197cc <_fclose_r+0x2c>
   197c4:	05052783          	lw	a5,80(a0)
   197c8:	0a078a63          	beqz	a5,1987c <_fclose_r+0xdc>
   197cc:	01041783          	lh	a5,16(s0)
   197d0:	00000513          	li	a0,0
   197d4:	00079e63          	bnez	a5,197f0 <_fclose_r+0x50>
   197d8:	01813083          	ld	ra,24(sp)
   197dc:	01013403          	ld	s0,16(sp)
   197e0:	00813483          	ld	s1,8(sp)
   197e4:	00013903          	ld	s2,0(sp)
   197e8:	02010113          	addi	sp,sp,32
   197ec:	00008067          	ret
   197f0:	00040593          	mv	a1,s0
   197f4:	00048513          	mv	a0,s1
   197f8:	bd0fb0ef          	jal	14bc8 <__sflush_r>
   197fc:	05043783          	ld	a5,80(s0)
   19800:	00050913          	mv	s2,a0
   19804:	00078a63          	beqz	a5,19818 <_fclose_r+0x78>
   19808:	03043583          	ld	a1,48(s0)
   1980c:	00048513          	mv	a0,s1
   19810:	000780e7          	jalr	a5
   19814:	06054863          	bltz	a0,19884 <_fclose_r+0xe4>
   19818:	01045783          	lhu	a5,16(s0)
   1981c:	0807f793          	andi	a5,a5,128
   19820:	06079663          	bnez	a5,1988c <_fclose_r+0xec>
   19824:	05843583          	ld	a1,88(s0)
   19828:	00058c63          	beqz	a1,19840 <_fclose_r+0xa0>
   1982c:	07440793          	addi	a5,s0,116
   19830:	00f58663          	beq	a1,a5,1983c <_fclose_r+0x9c>
   19834:	00048513          	mv	a0,s1
   19838:	b01fb0ef          	jal	15338 <_free_r>
   1983c:	04043c23          	sd	zero,88(s0)
   19840:	07843583          	ld	a1,120(s0)
   19844:	00058863          	beqz	a1,19854 <_fclose_r+0xb4>
   19848:	00048513          	mv	a0,s1
   1984c:	aedfb0ef          	jal	15338 <_free_r>
   19850:	06043c23          	sd	zero,120(s0)
   19854:	99dfb0ef          	jal	151f0 <__sfp_lock_acquire>
   19858:	00041823          	sh	zero,16(s0)
   1985c:	999fb0ef          	jal	151f4 <__sfp_lock_release>
   19860:	01813083          	ld	ra,24(sp)
   19864:	00090513          	mv	a0,s2
   19868:	01013403          	ld	s0,16(sp)
   1986c:	00813483          	ld	s1,8(sp)
   19870:	00013903          	ld	s2,0(sp)
   19874:	02010113          	addi	sp,sp,32
   19878:	00008067          	ret
   1987c:	965fb0ef          	jal	151e0 <__sinit>
   19880:	f4dff06f          	j	197cc <_fclose_r+0x2c>
   19884:	fff00913          	li	s2,-1
   19888:	f91ff06f          	j	19818 <_fclose_r+0x78>
   1988c:	01843583          	ld	a1,24(s0)
   19890:	00048513          	mv	a0,s1
   19894:	aa5fb0ef          	jal	15338 <_free_r>
   19898:	f8dff06f          	j	19824 <_fclose_r+0x84>
   1989c:	00000513          	li	a0,0
   198a0:	00008067          	ret

00000000000198a4 <fclose>:
   198a4:	00050593          	mv	a1,a0
   198a8:	8101b503          	ld	a0,-2032(gp) # 1d6f0 <_impure_ptr>
   198ac:	ef5ff06f          	j	197a0 <_fclose_r>

00000000000198b0 <__fputwc>:
   198b0:	fb010113          	addi	sp,sp,-80
   198b4:	04813023          	sd	s0,64(sp)
   198b8:	03413023          	sd	s4,32(sp)
   198bc:	01513c23          	sd	s5,24(sp)
   198c0:	04113423          	sd	ra,72(sp)
   198c4:	02913c23          	sd	s1,56(sp)
   198c8:	03213823          	sd	s2,48(sp)
   198cc:	03313423          	sd	s3,40(sp)
   198d0:	01613823          	sd	s6,16(sp)
   198d4:	00050a93          	mv	s5,a0
   198d8:	00058a13          	mv	s4,a1
   198dc:	00060413          	mv	s0,a2
   198e0:	a41fc0ef          	jal	16320 <__locale_mb_cur_max>
   198e4:	00100793          	li	a5,1
   198e8:	10f50663          	beq	a0,a5,199f4 <__fputwc+0x144>
   198ec:	00810493          	addi	s1,sp,8
   198f0:	0a440693          	addi	a3,s0,164
   198f4:	000a0613          	mv	a2,s4
   198f8:	00048593          	mv	a1,s1
   198fc:	000a8513          	mv	a0,s5
   19900:	699000ef          	jal	1a798 <_wcrtomb_r>
   19904:	fff00793          	li	a5,-1
   19908:	00050993          	mv	s3,a0
   1990c:	08f50e63          	beq	a0,a5,199a8 <__fputwc+0xf8>
   19910:	10050263          	beqz	a0,19a14 <__fputwc+0x164>
   19914:	00814583          	lbu	a1,8(sp)
   19918:	00c42783          	lw	a5,12(s0)
   1991c:	00000913          	li	s2,0
   19920:	00a00b13          	li	s6,10
   19924:	fff7879b          	addiw	a5,a5,-1
   19928:	00f42623          	sw	a5,12(s0)
   1992c:	0207cc63          	bltz	a5,19964 <__fputwc+0xb4>
   19930:	00043783          	ld	a5,0(s0)
   19934:	00b78023          	sb	a1,0(a5)
   19938:	00043783          	ld	a5,0(s0)
   1993c:	00178793          	addi	a5,a5,1
   19940:	00f43023          	sd	a5,0(s0)
   19944:	00190913          	addi	s2,s2,1
   19948:	00148493          	addi	s1,s1,1
   1994c:	0d397463          	bleu	s3,s2,19a14 <__fputwc+0x164>
   19950:	00c42783          	lw	a5,12(s0)
   19954:	0004c583          	lbu	a1,0(s1)
   19958:	fff7879b          	addiw	a5,a5,-1
   1995c:	00f42623          	sw	a5,12(s0)
   19960:	fc07d8e3          	bgez	a5,19930 <__fputwc+0x80>
   19964:	02842703          	lw	a4,40(s0)
   19968:	06e7ca63          	blt	a5,a4,199dc <__fputwc+0x12c>
   1996c:	00043783          	ld	a5,0(s0)
   19970:	00b78023          	sb	a1,0(a5)
   19974:	00043783          	ld	a5,0(s0)
   19978:	0007c703          	lbu	a4,0(a5)
   1997c:	00178793          	addi	a5,a5,1
   19980:	fd6710e3          	bne	a4,s6,19940 <__fputwc+0x90>
   19984:	00040613          	mv	a2,s0
   19988:	000b0593          	mv	a1,s6
   1998c:	000a8513          	mv	a0,s5
   19990:	481000ef          	jal	1a610 <__swbuf_r>
   19994:	0015051b          	addiw	a0,a0,1
   19998:	00153513          	seqz	a0,a0
   1999c:	fa0504e3          	beqz	a0,19944 <__fputwc+0x94>
   199a0:	fff00513          	li	a0,-1
   199a4:	0100006f          	j	199b4 <__fputwc+0x104>
   199a8:	01045783          	lhu	a5,16(s0)
   199ac:	0407e793          	ori	a5,a5,64
   199b0:	00f41823          	sh	a5,16(s0)
   199b4:	04813083          	ld	ra,72(sp)
   199b8:	04013403          	ld	s0,64(sp)
   199bc:	03813483          	ld	s1,56(sp)
   199c0:	03013903          	ld	s2,48(sp)
   199c4:	02813983          	ld	s3,40(sp)
   199c8:	02013a03          	ld	s4,32(sp)
   199cc:	01813a83          	ld	s5,24(sp)
   199d0:	01013b03          	ld	s6,16(sp)
   199d4:	05010113          	addi	sp,sp,80
   199d8:	00008067          	ret
   199dc:	00040613          	mv	a2,s0
   199e0:	000a8513          	mv	a0,s5
   199e4:	42d000ef          	jal	1a610 <__swbuf_r>
   199e8:	0015051b          	addiw	a0,a0,1
   199ec:	00153513          	seqz	a0,a0
   199f0:	fadff06f          	j	1999c <__fputwc+0xec>
   199f4:	fffa079b          	addiw	a5,s4,-1
   199f8:	0fe00713          	li	a4,254
   199fc:	eef768e3          	bltu	a4,a5,198ec <__fputwc+0x3c>
   19a00:	0ffa7593          	andi	a1,s4,255
   19a04:	00b10423          	sb	a1,8(sp)
   19a08:	00100993          	li	s3,1
   19a0c:	00810493          	addi	s1,sp,8
   19a10:	f09ff06f          	j	19918 <__fputwc+0x68>
   19a14:	000a0513          	mv	a0,s4
   19a18:	f9dff06f          	j	199b4 <__fputwc+0x104>

0000000000019a1c <_fputwc_r>:
   19a1c:	01061783          	lh	a5,16(a2)
   19a20:	00002737          	lui	a4,0x2
   19a24:	03279693          	slli	a3,a5,0x32
   19a28:	0006cc63          	bltz	a3,19a40 <_fputwc_r+0x24>
   19a2c:	0ac62683          	lw	a3,172(a2)
   19a30:	00e7e7b3          	or	a5,a5,a4
   19a34:	00f61823          	sh	a5,16(a2)
   19a38:	00e6e733          	or	a4,a3,a4
   19a3c:	0ae62623          	sw	a4,172(a2)
   19a40:	e71ff06f          	j	198b0 <__fputwc>

0000000000019a44 <fputwc>:
   19a44:	fd010113          	addi	sp,sp,-48
   19a48:	02813023          	sd	s0,32(sp)
   19a4c:	8101b403          	ld	s0,-2032(gp) # 1d6f0 <_impure_ptr>
   19a50:	00913c23          	sd	s1,24(sp)
   19a54:	02113423          	sd	ra,40(sp)
   19a58:	00050493          	mv	s1,a0
   19a5c:	00058613          	mv	a2,a1
   19a60:	00040663          	beqz	s0,19a6c <fputwc+0x28>
   19a64:	05042783          	lw	a5,80(s0)
   19a68:	04078263          	beqz	a5,19aac <fputwc+0x68>
   19a6c:	01061783          	lh	a5,16(a2)
   19a70:	00002737          	lui	a4,0x2
   19a74:	03279693          	slli	a3,a5,0x32
   19a78:	0006cc63          	bltz	a3,19a90 <fputwc+0x4c>
   19a7c:	0ac62683          	lw	a3,172(a2)
   19a80:	00e7e7b3          	or	a5,a5,a4
   19a84:	00f61823          	sh	a5,16(a2)
   19a88:	00e6e733          	or	a4,a3,a4
   19a8c:	0ae62623          	sw	a4,172(a2)
   19a90:	00048593          	mv	a1,s1
   19a94:	00040513          	mv	a0,s0
   19a98:	02813083          	ld	ra,40(sp)
   19a9c:	02013403          	ld	s0,32(sp)
   19aa0:	01813483          	ld	s1,24(sp)
   19aa4:	03010113          	addi	sp,sp,48
   19aa8:	e09ff06f          	j	198b0 <__fputwc>
   19aac:	00040513          	mv	a0,s0
   19ab0:	00b13423          	sd	a1,8(sp)
   19ab4:	f2cfb0ef          	jal	151e0 <__sinit>
   19ab8:	00813603          	ld	a2,8(sp)
   19abc:	fb1ff06f          	j	19a6c <fputwc+0x28>

0000000000019ac0 <__sfvwrite_r>:
   19ac0:	01063783          	ld	a5,16(a2)
   19ac4:	26078a63          	beqz	a5,19d38 <__sfvwrite_r+0x278>
   19ac8:	0105d703          	lhu	a4,16(a1)
   19acc:	f9010113          	addi	sp,sp,-112
   19ad0:	06813023          	sd	s0,96(sp)
   19ad4:	03513c23          	sd	s5,56(sp)
   19ad8:	03613823          	sd	s6,48(sp)
   19adc:	06113423          	sd	ra,104(sp)
   19ae0:	04913c23          	sd	s1,88(sp)
   19ae4:	05213823          	sd	s2,80(sp)
   19ae8:	05313423          	sd	s3,72(sp)
   19aec:	05413023          	sd	s4,64(sp)
   19af0:	03713423          	sd	s7,40(sp)
   19af4:	03813023          	sd	s8,32(sp)
   19af8:	01913c23          	sd	s9,24(sp)
   19afc:	01a13823          	sd	s10,16(sp)
   19b00:	01b13423          	sd	s11,8(sp)
   19b04:	00877793          	andi	a5,a4,8
   19b08:	00058413          	mv	s0,a1
   19b0c:	00050b13          	mv	s6,a0
   19b10:	00060a93          	mv	s5,a2
   19b14:	0a078863          	beqz	a5,19bc4 <__sfvwrite_r+0x104>
   19b18:	0185b783          	ld	a5,24(a1)
   19b1c:	0a078463          	beqz	a5,19bc4 <__sfvwrite_r+0x104>
   19b20:	00277793          	andi	a5,a4,2
   19b24:	000ab483          	ld	s1,0(s5)
   19b28:	0c078063          	beqz	a5,19be8 <__sfvwrite_r+0x128>
   19b2c:	80000a37          	lui	s4,0x80000
   19b30:	00000993          	li	s3,0
   19b34:	00000913          	li	s2,0
   19b38:	c00a4a13          	xori	s4,s4,-1024
   19b3c:	00098613          	mv	a2,s3
   19b40:	000b0513          	mv	a0,s6
   19b44:	1e090263          	beqz	s2,19d28 <__sfvwrite_r+0x268>
   19b48:	00090693          	mv	a3,s2
   19b4c:	012a7463          	bleu	s2,s4,19b54 <__sfvwrite_r+0x94>
   19b50:	000a0693          	mv	a3,s4
   19b54:	04043783          	ld	a5,64(s0)
   19b58:	03043583          	ld	a1,48(s0)
   19b5c:	0006869b          	sext.w	a3,a3
   19b60:	000780e7          	jalr	a5
   19b64:	22a05063          	blez	a0,19d84 <__sfvwrite_r+0x2c4>
   19b68:	010ab783          	ld	a5,16(s5)
   19b6c:	00a989b3          	add	s3,s3,a0
   19b70:	40a90933          	sub	s2,s2,a0
   19b74:	40a78533          	sub	a0,a5,a0
   19b78:	00aab823          	sd	a0,16(s5)
   19b7c:	fc0510e3          	bnez	a0,19b3c <__sfvwrite_r+0x7c>
   19b80:	00000793          	li	a5,0
   19b84:	06813083          	ld	ra,104(sp)
   19b88:	00078513          	mv	a0,a5
   19b8c:	06013403          	ld	s0,96(sp)
   19b90:	05813483          	ld	s1,88(sp)
   19b94:	05013903          	ld	s2,80(sp)
   19b98:	04813983          	ld	s3,72(sp)
   19b9c:	04013a03          	ld	s4,64(sp)
   19ba0:	03813a83          	ld	s5,56(sp)
   19ba4:	03013b03          	ld	s6,48(sp)
   19ba8:	02813b83          	ld	s7,40(sp)
   19bac:	02013c03          	ld	s8,32(sp)
   19bb0:	01813c83          	ld	s9,24(sp)
   19bb4:	01013d03          	ld	s10,16(sp)
   19bb8:	00813d83          	ld	s11,8(sp)
   19bbc:	07010113          	addi	sp,sp,112
   19bc0:	00008067          	ret
   19bc4:	00040593          	mv	a1,s0
   19bc8:	000b0513          	mv	a0,s6
   19bcc:	909f90ef          	jal	134d4 <__swsetup_r>
   19bd0:	fff00793          	li	a5,-1
   19bd4:	fa0518e3          	bnez	a0,19b84 <__sfvwrite_r+0xc4>
   19bd8:	01045703          	lhu	a4,16(s0)
   19bdc:	000ab483          	ld	s1,0(s5)
   19be0:	00277793          	andi	a5,a4,2
   19be4:	f40794e3          	bnez	a5,19b2c <__sfvwrite_r+0x6c>
   19be8:	00177793          	andi	a5,a4,1
   19bec:	1a079663          	bnez	a5,19d98 <__sfvwrite_r+0x2d8>
   19bf0:	80000bb7          	lui	s7,0x80000
   19bf4:	ffebcc13          	xori	s8,s7,-2
   19bf8:	00000c93          	li	s9,0
   19bfc:	00000913          	li	s2,0
   19c00:	fffbcb93          	not	s7,s7
   19c04:	10090a63          	beqz	s2,19d18 <__sfvwrite_r+0x258>
   19c08:	00c42983          	lw	s3,12(s0)
   19c0c:	20077793          	andi	a5,a4,512
   19c10:	00098a13          	mv	s4,s3
   19c14:	26078863          	beqz	a5,19e84 <__sfvwrite_r+0x3c4>
   19c18:	2b396a63          	bltu	s2,s3,19ecc <__sfvwrite_r+0x40c>
   19c1c:	48077793          	andi	a5,a4,1152
   19c20:	2a078663          	beqz	a5,19ecc <__sfvwrite_r+0x40c>
   19c24:	02042a03          	lw	s4,32(s0)
   19c28:	01843583          	ld	a1,24(s0)
   19c2c:	00043d03          	ld	s10,0(s0)
   19c30:	001a179b          	slliw	a5,s4,0x1
   19c34:	01478a3b          	addw	s4,a5,s4
   19c38:	01fa579b          	srliw	a5,s4,0x1f
   19c3c:	40bd0d3b          	subw	s10,s10,a1
   19c40:	01478a3b          	addw	s4,a5,s4
   19c44:	000d0993          	mv	s3,s10
   19c48:	401a5a1b          	sraiw	s4,s4,0x1
   19c4c:	00198793          	addi	a5,s3,1
   19c50:	000a0613          	mv	a2,s4
   19c54:	012787b3          	add	a5,a5,s2
   19c58:	00f67863          	bleu	a5,a2,19c68 <__sfvwrite_r+0x1a8>
   19c5c:	001d0a1b          	addiw	s4,s10,1
   19c60:	01490a3b          	addw	s4,s2,s4
   19c64:	000a0613          	mv	a2,s4
   19c68:	40077713          	andi	a4,a4,1024
   19c6c:	2a070a63          	beqz	a4,19f20 <__sfvwrite_r+0x460>
   19c70:	00060593          	mv	a1,a2
   19c74:	000b0513          	mv	a0,s6
   19c78:	899fc0ef          	jal	16510 <_malloc_r>
   19c7c:	00050d93          	mv	s11,a0
   19c80:	2e050263          	beqz	a0,19f64 <__sfvwrite_r+0x4a4>
   19c84:	01843583          	ld	a1,24(s0)
   19c88:	00098613          	mv	a2,s3
   19c8c:	8dcfd0ef          	jal	16d68 <memcpy>
   19c90:	01045783          	lhu	a5,16(s0)
   19c94:	b7f7f793          	andi	a5,a5,-1153
   19c98:	0807e793          	ori	a5,a5,128
   19c9c:	00f41823          	sh	a5,16(s0)
   19ca0:	41aa0d3b          	subw	s10,s4,s10
   19ca4:	013d8533          	add	a0,s11,s3
   19ca8:	03442023          	sw	s4,32(s0)
   19cac:	01b43c23          	sd	s11,24(s0)
   19cb0:	00a43023          	sd	a0,0(s0)
   19cb4:	00090a13          	mv	s4,s2
   19cb8:	01a42623          	sw	s10,12(s0)
   19cbc:	000a0d13          	mv	s10,s4
   19cc0:	00090993          	mv	s3,s2
   19cc4:	01497863          	bleu	s4,s2,19cd4 <__sfvwrite_r+0x214>
   19cc8:	00090d13          	mv	s10,s2
   19ccc:	00090993          	mv	s3,s2
   19cd0:	00090a13          	mv	s4,s2
   19cd4:	000d0613          	mv	a2,s10
   19cd8:	000c8593          	mv	a1,s9
   19cdc:	298000ef          	jal	19f74 <memmove>
   19ce0:	00c42783          	lw	a5,12(s0)
   19ce4:	00043603          	ld	a2,0(s0)
   19ce8:	41478a3b          	subw	s4,a5,s4
   19cec:	01a60633          	add	a2,a2,s10
   19cf0:	01442623          	sw	s4,12(s0)
   19cf4:	00c43023          	sd	a2,0(s0)
   19cf8:	010ab503          	ld	a0,16(s5)
   19cfc:	013c8cb3          	add	s9,s9,s3
   19d00:	41390933          	sub	s2,s2,s3
   19d04:	413509b3          	sub	s3,a0,s3
   19d08:	013ab823          	sd	s3,16(s5)
   19d0c:	e6098ae3          	beqz	s3,19b80 <__sfvwrite_r+0xc0>
   19d10:	01045703          	lhu	a4,16(s0)
   19d14:	ee091ae3          	bnez	s2,19c08 <__sfvwrite_r+0x148>
   19d18:	0004bc83          	ld	s9,0(s1)
   19d1c:	0084b903          	ld	s2,8(s1)
   19d20:	01048493          	addi	s1,s1,16
   19d24:	ee1ff06f          	j	19c04 <__sfvwrite_r+0x144>
   19d28:	0004b983          	ld	s3,0(s1)
   19d2c:	0084b903          	ld	s2,8(s1)
   19d30:	01048493          	addi	s1,s1,16
   19d34:	e09ff06f          	j	19b3c <__sfvwrite_r+0x7c>
   19d38:	00000793          	li	a5,0
   19d3c:	00078513          	mv	a0,a5
   19d40:	00008067          	ret
   19d44:	01397463          	bleu	s3,s2,19d4c <__sfvwrite_r+0x28c>
   19d48:	00090993          	mv	s3,s2
   19d4c:	00098613          	mv	a2,s3
   19d50:	000c8593          	mv	a1,s9
   19d54:	220000ef          	jal	19f74 <memmove>
   19d58:	00c42783          	lw	a5,12(s0)
   19d5c:	00043703          	ld	a4,0(s0)
   19d60:	413787bb          	subw	a5,a5,s3
   19d64:	01370733          	add	a4,a4,s3
   19d68:	00f42623          	sw	a5,12(s0)
   19d6c:	00e43023          	sd	a4,0(s0)
   19d70:	f80794e3          	bnez	a5,19cf8 <__sfvwrite_r+0x238>
   19d74:	00040593          	mv	a1,s0
   19d78:	000b0513          	mv	a0,s6
   19d7c:	8b8fb0ef          	jal	14e34 <_fflush_r>
   19d80:	f6050ce3          	beqz	a0,19cf8 <__sfvwrite_r+0x238>
   19d84:	01041783          	lh	a5,16(s0)
   19d88:	0407e793          	ori	a5,a5,64
   19d8c:	00f41823          	sh	a5,16(s0)
   19d90:	fff00793          	li	a5,-1
   19d94:	df1ff06f          	j	19b84 <__sfvwrite_r+0xc4>
   19d98:	00000a13          	li	s4,0
   19d9c:	00000c13          	li	s8,0
   19da0:	00000d13          	li	s10,0
   19da4:	00000913          	li	s2,0
   19da8:	06090e63          	beqz	s2,19e24 <__sfvwrite_r+0x364>
   19dac:	140c0863          	beqz	s8,19efc <__sfvwrite_r+0x43c>
   19db0:	000a0993          	mv	s3,s4
   19db4:	01497463          	bleu	s4,s2,19dbc <__sfvwrite_r+0x2fc>
   19db8:	00090993          	mv	s3,s2
   19dbc:	00043503          	ld	a0,0(s0)
   19dc0:	01843783          	ld	a5,24(s0)
   19dc4:	00098b93          	mv	s7,s3
   19dc8:	02042683          	lw	a3,32(s0)
   19dcc:	00a7fa63          	bleu	a0,a5,19de0 <__sfvwrite_r+0x320>
   19dd0:	00c42c83          	lw	s9,12(s0)
   19dd4:	01968cbb          	addw	s9,a3,s9
   19dd8:	000c8d93          	mv	s11,s9
   19ddc:	053dce63          	blt	s11,s3,19e38 <__sfvwrite_r+0x378>
   19de0:	0ed9ca63          	blt	s3,a3,19ed4 <__sfvwrite_r+0x414>
   19de4:	04043783          	ld	a5,64(s0)
   19de8:	03043583          	ld	a1,48(s0)
   19dec:	000d0613          	mv	a2,s10
   19df0:	000b0513          	mv	a0,s6
   19df4:	000780e7          	jalr	a5
   19df8:	00050b93          	mv	s7,a0
   19dfc:	f8a054e3          	blez	a0,19d84 <__sfvwrite_r+0x2c4>
   19e00:	417a0a3b          	subw	s4,s4,s7
   19e04:	060a0463          	beqz	s4,19e6c <__sfvwrite_r+0x3ac>
   19e08:	010ab783          	ld	a5,16(s5)
   19e0c:	017d0d33          	add	s10,s10,s7
   19e10:	41790933          	sub	s2,s2,s7
   19e14:	41778bb3          	sub	s7,a5,s7
   19e18:	017ab823          	sd	s7,16(s5)
   19e1c:	d60b82e3          	beqz	s7,19b80 <__sfvwrite_r+0xc0>
   19e20:	f80916e3          	bnez	s2,19dac <__sfvwrite_r+0x2ec>
   19e24:	0004bd03          	ld	s10,0(s1)
   19e28:	0084b903          	ld	s2,8(s1)
   19e2c:	00000c13          	li	s8,0
   19e30:	01048493          	addi	s1,s1,16
   19e34:	f75ff06f          	j	19da8 <__sfvwrite_r+0x2e8>
   19e38:	000d0593          	mv	a1,s10
   19e3c:	000c8613          	mv	a2,s9
   19e40:	134000ef          	jal	19f74 <memmove>
   19e44:	00043783          	ld	a5,0(s0)
   19e48:	00040593          	mv	a1,s0
   19e4c:	000b0513          	mv	a0,s6
   19e50:	01b78db3          	add	s11,a5,s11
   19e54:	01b43023          	sd	s11,0(s0)
   19e58:	fddfa0ef          	jal	14e34 <_fflush_r>
   19e5c:	f20514e3          	bnez	a0,19d84 <__sfvwrite_r+0x2c4>
   19e60:	000c8b93          	mv	s7,s9
   19e64:	417a0a3b          	subw	s4,s4,s7
   19e68:	fa0a10e3          	bnez	s4,19e08 <__sfvwrite_r+0x348>
   19e6c:	00040593          	mv	a1,s0
   19e70:	000b0513          	mv	a0,s6
   19e74:	fc1fa0ef          	jal	14e34 <_fflush_r>
   19e78:	f00516e3          	bnez	a0,19d84 <__sfvwrite_r+0x2c4>
   19e7c:	00000c13          	li	s8,0
   19e80:	f89ff06f          	j	19e08 <__sfvwrite_r+0x348>
   19e84:	00043503          	ld	a0,0(s0)
   19e88:	01843783          	ld	a5,24(s0)
   19e8c:	eaa7ece3          	bltu	a5,a0,19d44 <__sfvwrite_r+0x284>
   19e90:	02042783          	lw	a5,32(s0)
   19e94:	eaf968e3          	bltu	s2,a5,19d44 <__sfvwrite_r+0x284>
   19e98:	000b8693          	mv	a3,s7
   19e9c:	012c6463          	bltu	s8,s2,19ea4 <__sfvwrite_r+0x3e4>
   19ea0:	0009069b          	sext.w	a3,s2
   19ea4:	02f6c6bb          	divw	a3,a3,a5
   19ea8:	04043703          	ld	a4,64(s0)
   19eac:	03043583          	ld	a1,48(s0)
   19eb0:	000c8613          	mv	a2,s9
   19eb4:	000b0513          	mv	a0,s6
   19eb8:	02f686bb          	mulw	a3,a3,a5
   19ebc:	000700e7          	jalr	a4
   19ec0:	eca052e3          	blez	a0,19d84 <__sfvwrite_r+0x2c4>
   19ec4:	00050993          	mv	s3,a0
   19ec8:	e31ff06f          	j	19cf8 <__sfvwrite_r+0x238>
   19ecc:	00043503          	ld	a0,0(s0)
   19ed0:	dedff06f          	j	19cbc <__sfvwrite_r+0x1fc>
   19ed4:	00098613          	mv	a2,s3
   19ed8:	000d0593          	mv	a1,s10
   19edc:	098000ef          	jal	19f74 <memmove>
   19ee0:	00c42703          	lw	a4,12(s0)
   19ee4:	00043783          	ld	a5,0(s0)
   19ee8:	4137073b          	subw	a4,a4,s3
   19eec:	013789b3          	add	s3,a5,s3
   19ef0:	00e42623          	sw	a4,12(s0)
   19ef4:	01343023          	sd	s3,0(s0)
   19ef8:	f09ff06f          	j	19e00 <__sfvwrite_r+0x340>
   19efc:	00090613          	mv	a2,s2
   19f00:	00a00593          	li	a1,10
   19f04:	000d0513          	mv	a0,s10
   19f08:	d79fc0ef          	jal	16c80 <memchr>
   19f0c:	04050663          	beqz	a0,19f58 <__sfvwrite_r+0x498>
   19f10:	00150a13          	addi	s4,a0,1
   19f14:	41aa0a3b          	subw	s4,s4,s10
   19f18:	00100c13          	li	s8,1
   19f1c:	e95ff06f          	j	19db0 <__sfvwrite_r+0x2f0>
   19f20:	000b0513          	mv	a0,s6
   19f24:	170000ef          	jal	1a094 <_realloc_r>
   19f28:	00050d93          	mv	s11,a0
   19f2c:	d6051ae3          	bnez	a0,19ca0 <__sfvwrite_r+0x1e0>
   19f30:	01843583          	ld	a1,24(s0)
   19f34:	000b0513          	mv	a0,s6
   19f38:	c00fb0ef          	jal	15338 <_free_r>
   19f3c:	01045783          	lhu	a5,16(s0)
   19f40:	00c00713          	li	a4,12
   19f44:	00eb2023          	sw	a4,0(s6)
   19f48:	f7f7f793          	andi	a5,a5,-129
   19f4c:	0107979b          	slliw	a5,a5,0x10
   19f50:	4107d79b          	sraiw	a5,a5,0x10
   19f54:	e35ff06f          	j	19d88 <__sfvwrite_r+0x2c8>
   19f58:	00190a1b          	addiw	s4,s2,1
   19f5c:	00100c13          	li	s8,1
   19f60:	e51ff06f          	j	19db0 <__sfvwrite_r+0x2f0>
   19f64:	00c00793          	li	a5,12
   19f68:	00fb2023          	sw	a5,0(s6)
   19f6c:	01041783          	lh	a5,16(s0)
   19f70:	e19ff06f          	j	19d88 <__sfvwrite_r+0x2c8>

0000000000019f74 <memmove>:
   19f74:	02a5f863          	bleu	a0,a1,19fa4 <memmove+0x30>
   19f78:	00c58733          	add	a4,a1,a2
   19f7c:	02e57463          	bleu	a4,a0,19fa4 <memmove+0x30>
   19f80:	00c507b3          	add	a5,a0,a2
   19f84:	40c785b3          	sub	a1,a5,a2
   19f88:	0e060263          	beqz	a2,1a06c <memmove+0xf8>
   19f8c:	fff70713          	addi	a4,a4,-1 # 1fff <_ftext-0xe001>
   19f90:	00074683          	lbu	a3,0(a4)
   19f94:	fff78793          	addi	a5,a5,-1
   19f98:	00d78023          	sb	a3,0(a5)
   19f9c:	fef598e3          	bne	a1,a5,19f8c <memmove+0x18>
   19fa0:	00008067          	ret
   19fa4:	01f00893          	li	a7,31
   19fa8:	0cc8f463          	bleu	a2,a7,1a070 <memmove+0xfc>
   19fac:	00a5e7b3          	or	a5,a1,a0
   19fb0:	0077f793          	andi	a5,a5,7
   19fb4:	0c079463          	bnez	a5,1a07c <memmove+0x108>
   19fb8:	00058713          	mv	a4,a1
   19fbc:	00050793          	mv	a5,a0
   19fc0:	00060693          	mv	a3,a2
   19fc4:	00073803          	ld	a6,0(a4)
   19fc8:	02078793          	addi	a5,a5,32
   19fcc:	02070713          	addi	a4,a4,32
   19fd0:	ff07b023          	sd	a6,-32(a5)
   19fd4:	fe873803          	ld	a6,-24(a4)
   19fd8:	fe068693          	addi	a3,a3,-32
   19fdc:	ff07b423          	sd	a6,-24(a5)
   19fe0:	ff073803          	ld	a6,-16(a4)
   19fe4:	ff07b823          	sd	a6,-16(a5)
   19fe8:	ff873803          	ld	a6,-8(a4)
   19fec:	ff07bc23          	sd	a6,-8(a5)
   19ff0:	fcd8eae3          	bltu	a7,a3,19fc4 <memmove+0x50>
   19ff4:	fe060713          	addi	a4,a2,-32
   19ff8:	fe077713          	andi	a4,a4,-32
   19ffc:	02070713          	addi	a4,a4,32
   1a000:	01f67e13          	andi	t3,a2,31
   1a004:	00700313          	li	t1,7
   1a008:	00e507b3          	add	a5,a0,a4
   1a00c:	00e585b3          	add	a1,a1,a4
   1a010:	07c37c63          	bleu	t3,t1,1a088 <memmove+0x114>
   1a014:	00058813          	mv	a6,a1
   1a018:	00078693          	mv	a3,a5
   1a01c:	000e0713          	mv	a4,t3
   1a020:	00880813          	addi	a6,a6,8
   1a024:	ff883883          	ld	a7,-8(a6)
   1a028:	00868693          	addi	a3,a3,8
   1a02c:	ff870713          	addi	a4,a4,-8
   1a030:	ff16bc23          	sd	a7,-8(a3)
   1a034:	fee366e3          	bltu	t1,a4,1a020 <memmove+0xac>
   1a038:	ff8e0713          	addi	a4,t3,-8
   1a03c:	ff877713          	andi	a4,a4,-8
   1a040:	00870713          	addi	a4,a4,8
   1a044:	00767613          	andi	a2,a2,7
   1a048:	00e787b3          	add	a5,a5,a4
   1a04c:	00e585b3          	add	a1,a1,a4
   1a050:	02060a63          	beqz	a2,1a084 <memmove+0x110>
   1a054:	00c78633          	add	a2,a5,a2
   1a058:	00158593          	addi	a1,a1,1
   1a05c:	fff5c703          	lbu	a4,-1(a1)
   1a060:	00178793          	addi	a5,a5,1
   1a064:	fee78fa3          	sb	a4,-1(a5)
   1a068:	fec798e3          	bne	a5,a2,1a058 <memmove+0xe4>
   1a06c:	00008067          	ret
   1a070:	00050793          	mv	a5,a0
   1a074:	fe0610e3          	bnez	a2,1a054 <memmove+0xe0>
   1a078:	00c0006f          	j	1a084 <memmove+0x110>
   1a07c:	00050793          	mv	a5,a0
   1a080:	fd5ff06f          	j	1a054 <memmove+0xe0>
   1a084:	00008067          	ret
   1a088:	000e0613          	mv	a2,t3
   1a08c:	fc0614e3          	bnez	a2,1a054 <memmove+0xe0>
   1a090:	ff5ff06f          	j	1a084 <memmove+0x110>

000000000001a094 <_realloc_r>:
   1a094:	fb010113          	addi	sp,sp,-80
   1a098:	02913c23          	sd	s1,56(sp)
   1a09c:	04113423          	sd	ra,72(sp)
   1a0a0:	04813023          	sd	s0,64(sp)
   1a0a4:	03213823          	sd	s2,48(sp)
   1a0a8:	03313423          	sd	s3,40(sp)
   1a0ac:	03413023          	sd	s4,32(sp)
   1a0b0:	01513c23          	sd	s5,24(sp)
   1a0b4:	01613823          	sd	s6,16(sp)
   1a0b8:	01713423          	sd	s7,8(sp)
   1a0bc:	01813023          	sd	s8,0(sp)
   1a0c0:	00060493          	mv	s1,a2
   1a0c4:	1c058a63          	beqz	a1,1a298 <_realloc_r+0x204>
   1a0c8:	00058993          	mv	s3,a1
   1a0cc:	00050913          	mv	s2,a0
   1a0d0:	e95fc0ef          	jal	16f64 <__malloc_lock>
   1a0d4:	ff89b783          	ld	a5,-8(s3)
   1a0d8:	01748413          	addi	s0,s1,23
   1a0dc:	02e00713          	li	a4,46
   1a0e0:	ff098a93          	addi	s5,s3,-16
   1a0e4:	ffc7fa13          	andi	s4,a5,-4
   1a0e8:	0c877463          	bleu	s0,a4,1a1b0 <_realloc_r+0x11c>
   1a0ec:	80000737          	lui	a4,0x80000
   1a0f0:	ff047413          	andi	s0,s0,-16
   1a0f4:	fff74713          	not	a4,a4
   1a0f8:	14876a63          	bltu	a4,s0,1a24c <_realloc_r+0x1b8>
   1a0fc:	14946863          	bltu	s0,s1,1a24c <_realloc_r+0x1b8>
   1a100:	0a8a5c63          	ble	s0,s4,1a1b8 <_realloc_r+0x124>
   1a104:	0001db37          	lui	s6,0x1d
   1a108:	ec8b0b13          	addi	s6,s6,-312 # 1cec8 <__malloc_av_>
   1a10c:	010b3703          	ld	a4,16(s6)
   1a110:	014a86b3          	add	a3,s5,s4
   1a114:	2ee68e63          	beq	a3,a4,1a410 <_realloc_r+0x37c>
   1a118:	0086b703          	ld	a4,8(a3)
   1a11c:	ffe77613          	andi	a2,a4,-2
   1a120:	00c68633          	add	a2,a3,a2
   1a124:	00863603          	ld	a2,8(a2)
   1a128:	00167613          	andi	a2,a2,1
   1a12c:	0e060c63          	beqz	a2,1a224 <_realloc_r+0x190>
   1a130:	0017f793          	andi	a5,a5,1
   1a134:	26078063          	beqz	a5,1a394 <_realloc_r+0x300>
   1a138:	00048593          	mv	a1,s1
   1a13c:	00090513          	mv	a0,s2
   1a140:	bd0fc0ef          	jal	16510 <_malloc_r>
   1a144:	00050493          	mv	s1,a0
   1a148:	48050e63          	beqz	a0,1a5e4 <_realloc_r+0x550>
   1a14c:	ff89b783          	ld	a5,-8(s3)
   1a150:	ff050713          	addi	a4,a0,-16
   1a154:	ffe7f793          	andi	a5,a5,-2
   1a158:	00fa87b3          	add	a5,s5,a5
   1a15c:	40f70e63          	beq	a4,a5,1a578 <_realloc_r+0x4e4>
   1a160:	ff8a0613          	addi	a2,s4,-8 # ffffffff7ffffff8 <_gp+0xffffffff7ffe2118>
   1a164:	04800793          	li	a5,72
   1a168:	3ec7e263          	bltu	a5,a2,1a54c <_realloc_r+0x4b8>
   1a16c:	02700713          	li	a4,39
   1a170:	36c76663          	bltu	a4,a2,1a4dc <_realloc_r+0x448>
   1a174:	00050793          	mv	a5,a0
   1a178:	00098713          	mv	a4,s3
   1a17c:	00073683          	ld	a3,0(a4) # ffffffff80000000 <_gp+0xffffffff7ffe2120>
   1a180:	00d7b023          	sd	a3,0(a5)
   1a184:	00873683          	ld	a3,8(a4)
   1a188:	00d7b423          	sd	a3,8(a5)
   1a18c:	01073703          	ld	a4,16(a4)
   1a190:	00e7b823          	sd	a4,16(a5)
   1a194:	00098593          	mv	a1,s3
   1a198:	00090513          	mv	a0,s2
   1a19c:	99cfb0ef          	jal	15338 <_free_r>
   1a1a0:	00090513          	mv	a0,s2
   1a1a4:	dc5fc0ef          	jal	16f68 <__malloc_unlock>
   1a1a8:	00048513          	mv	a0,s1
   1a1ac:	0480006f          	j	1a1f4 <_realloc_r+0x160>
   1a1b0:	02000413          	li	s0,32
   1a1b4:	f49ff06f          	j	1a0fc <_realloc_r+0x68>
   1a1b8:	00098493          	mv	s1,s3
   1a1bc:	408a07b3          	sub	a5,s4,s0
   1a1c0:	01f00713          	li	a4,31
   1a1c4:	08f76c63          	bltu	a4,a5,1a25c <_realloc_r+0x1c8>
   1a1c8:	008ab783          	ld	a5,8(s5)
   1a1cc:	014a8733          	add	a4,s5,s4
   1a1d0:	0017f793          	andi	a5,a5,1
   1a1d4:	0147e633          	or	a2,a5,s4
   1a1d8:	00cab423          	sd	a2,8(s5)
   1a1dc:	00873783          	ld	a5,8(a4)
   1a1e0:	0017e793          	ori	a5,a5,1
   1a1e4:	00f73423          	sd	a5,8(a4)
   1a1e8:	00090513          	mv	a0,s2
   1a1ec:	d7dfc0ef          	jal	16f68 <__malloc_unlock>
   1a1f0:	00048513          	mv	a0,s1
   1a1f4:	04813083          	ld	ra,72(sp)
   1a1f8:	04013403          	ld	s0,64(sp)
   1a1fc:	03813483          	ld	s1,56(sp)
   1a200:	03013903          	ld	s2,48(sp)
   1a204:	02813983          	ld	s3,40(sp)
   1a208:	02013a03          	ld	s4,32(sp)
   1a20c:	01813a83          	ld	s5,24(sp)
   1a210:	01013b03          	ld	s6,16(sp)
   1a214:	00813b83          	ld	s7,8(sp)
   1a218:	00013c03          	ld	s8,0(sp)
   1a21c:	05010113          	addi	sp,sp,80
   1a220:	00008067          	ret
   1a224:	ffc77713          	andi	a4,a4,-4
   1a228:	01470733          	add	a4,a4,s4
   1a22c:	0a874063          	blt	a4,s0,1a2cc <_realloc_r+0x238>
   1a230:	0186b783          	ld	a5,24(a3)
   1a234:	0106b683          	ld	a3,16(a3)
   1a238:	00098493          	mv	s1,s3
   1a23c:	00070a13          	mv	s4,a4
   1a240:	00f6bc23          	sd	a5,24(a3)
   1a244:	00d7b823          	sd	a3,16(a5)
   1a248:	f75ff06f          	j	1a1bc <_realloc_r+0x128>
   1a24c:	00c00793          	li	a5,12
   1a250:	00f92023          	sw	a5,0(s2)
   1a254:	00000513          	li	a0,0
   1a258:	f9dff06f          	j	1a1f4 <_realloc_r+0x160>
   1a25c:	008ab703          	ld	a4,8(s5)
   1a260:	008a85b3          	add	a1,s5,s0
   1a264:	0017e693          	ori	a3,a5,1
   1a268:	00177713          	andi	a4,a4,1
   1a26c:	00876433          	or	s0,a4,s0
   1a270:	008ab423          	sd	s0,8(s5)
   1a274:	00d5b423          	sd	a3,8(a1)
   1a278:	00f587b3          	add	a5,a1,a5
   1a27c:	0087b703          	ld	a4,8(a5)
   1a280:	01058593          	addi	a1,a1,16
   1a284:	00090513          	mv	a0,s2
   1a288:	00176713          	ori	a4,a4,1
   1a28c:	00e7b423          	sd	a4,8(a5)
   1a290:	8a8fb0ef          	jal	15338 <_free_r>
   1a294:	f55ff06f          	j	1a1e8 <_realloc_r+0x154>
   1a298:	04813083          	ld	ra,72(sp)
   1a29c:	04013403          	ld	s0,64(sp)
   1a2a0:	03813483          	ld	s1,56(sp)
   1a2a4:	03013903          	ld	s2,48(sp)
   1a2a8:	02813983          	ld	s3,40(sp)
   1a2ac:	02013a03          	ld	s4,32(sp)
   1a2b0:	01813a83          	ld	s5,24(sp)
   1a2b4:	01013b03          	ld	s6,16(sp)
   1a2b8:	00813b83          	ld	s7,8(sp)
   1a2bc:	00013c03          	ld	s8,0(sp)
   1a2c0:	00060593          	mv	a1,a2
   1a2c4:	05010113          	addi	sp,sp,80
   1a2c8:	a48fc06f          	j	16510 <_malloc_r>
   1a2cc:	0017f793          	andi	a5,a5,1
   1a2d0:	e60794e3          	bnez	a5,1a138 <_realloc_r+0xa4>
   1a2d4:	ff09bb83          	ld	s7,-16(s3)
   1a2d8:	417a8bb3          	sub	s7,s5,s7
   1a2dc:	008bb783          	ld	a5,8(s7) # ffffffff80000008 <_gp+0xffffffff7ffe2128>
   1a2e0:	ffc7f793          	andi	a5,a5,-4
   1a2e4:	00f70b33          	add	s6,a4,a5
   1a2e8:	0a8b4e63          	blt	s6,s0,1a3a4 <_realloc_r+0x310>
   1a2ec:	0186b783          	ld	a5,24(a3)
   1a2f0:	0106b703          	ld	a4,16(a3)
   1a2f4:	ff8a0613          	addi	a2,s4,-8
   1a2f8:	010b8493          	addi	s1,s7,16
   1a2fc:	00f73c23          	sd	a5,24(a4)
   1a300:	00e7b823          	sd	a4,16(a5)
   1a304:	010bb703          	ld	a4,16(s7)
   1a308:	018bb783          	ld	a5,24(s7)
   1a30c:	00f73c23          	sd	a5,24(a4)
   1a310:	00e7b823          	sd	a4,16(a5)
   1a314:	04800793          	li	a5,72
   1a318:	1ec7e463          	bltu	a5,a2,1a500 <_realloc_r+0x46c>
   1a31c:	02700713          	li	a4,39
   1a320:	00048793          	mv	a5,s1
   1a324:	04c77663          	bleu	a2,a4,1a370 <_realloc_r+0x2dc>
   1a328:	0009b783          	ld	a5,0(s3)
   1a32c:	00fbb823          	sd	a5,16(s7)
   1a330:	0089b783          	ld	a5,8(s3)
   1a334:	00fbbc23          	sd	a5,24(s7)
   1a338:	03700793          	li	a5,55
   1a33c:	24c7f863          	bleu	a2,a5,1a58c <_realloc_r+0x4f8>
   1a340:	0109b783          	ld	a5,16(s3)
   1a344:	02fbb023          	sd	a5,32(s7)
   1a348:	0189b783          	ld	a5,24(s3)
   1a34c:	02fbb423          	sd	a5,40(s7)
   1a350:	04800793          	li	a5,72
   1a354:	0af61863          	bne	a2,a5,1a404 <_realloc_r+0x370>
   1a358:	0209b703          	ld	a4,32(s3)
   1a35c:	040b8793          	addi	a5,s7,64
   1a360:	03098993          	addi	s3,s3,48
   1a364:	02ebb823          	sd	a4,48(s7)
   1a368:	ff89b703          	ld	a4,-8(s3)
   1a36c:	02ebbc23          	sd	a4,56(s7)
   1a370:	0009b703          	ld	a4,0(s3)
   1a374:	000b0a13          	mv	s4,s6
   1a378:	000b8a93          	mv	s5,s7
   1a37c:	00e7b023          	sd	a4,0(a5)
   1a380:	0089b703          	ld	a4,8(s3)
   1a384:	00e7b423          	sd	a4,8(a5)
   1a388:	0109b703          	ld	a4,16(s3)
   1a38c:	00e7b823          	sd	a4,16(a5)
   1a390:	e2dff06f          	j	1a1bc <_realloc_r+0x128>
   1a394:	ff09bb83          	ld	s7,-16(s3)
   1a398:	417a8bb3          	sub	s7,s5,s7
   1a39c:	008bb783          	ld	a5,8(s7)
   1a3a0:	ffc7f793          	andi	a5,a5,-4
   1a3a4:	00fa0b33          	add	s6,s4,a5
   1a3a8:	d88b48e3          	blt	s6,s0,1a138 <_realloc_r+0xa4>
   1a3ac:	018bb783          	ld	a5,24(s7)
   1a3b0:	010bb703          	ld	a4,16(s7)
   1a3b4:	ff8a0613          	addi	a2,s4,-8
   1a3b8:	04800693          	li	a3,72
   1a3bc:	00f73c23          	sd	a5,24(a4)
   1a3c0:	00e7b823          	sd	a4,16(a5)
   1a3c4:	010b8493          	addi	s1,s7,16
   1a3c8:	12c6ec63          	bltu	a3,a2,1a500 <_realloc_r+0x46c>
   1a3cc:	02700713          	li	a4,39
   1a3d0:	00048793          	mv	a5,s1
   1a3d4:	f8c77ee3          	bleu	a2,a4,1a370 <_realloc_r+0x2dc>
   1a3d8:	0009b783          	ld	a5,0(s3)
   1a3dc:	00fbb823          	sd	a5,16(s7)
   1a3e0:	0089b783          	ld	a5,8(s3)
   1a3e4:	00fbbc23          	sd	a5,24(s7)
   1a3e8:	03700793          	li	a5,55
   1a3ec:	1ac7f063          	bleu	a2,a5,1a58c <_realloc_r+0x4f8>
   1a3f0:	0109b783          	ld	a5,16(s3)
   1a3f4:	02fbb023          	sd	a5,32(s7)
   1a3f8:	0189b783          	ld	a5,24(s3)
   1a3fc:	02fbb423          	sd	a5,40(s7)
   1a400:	f4d60ce3          	beq	a2,a3,1a358 <_realloc_r+0x2c4>
   1a404:	030b8793          	addi	a5,s7,48
   1a408:	02098993          	addi	s3,s3,32
   1a40c:	f65ff06f          	j	1a370 <_realloc_r+0x2dc>
   1a410:	0086b703          	ld	a4,8(a3)
   1a414:	02040693          	addi	a3,s0,32
   1a418:	ffc77713          	andi	a4,a4,-4
   1a41c:	01470733          	add	a4,a4,s4
   1a420:	0ed75c63          	ble	a3,a4,1a518 <_realloc_r+0x484>
   1a424:	0017f793          	andi	a5,a5,1
   1a428:	d00798e3          	bnez	a5,1a138 <_realloc_r+0xa4>
   1a42c:	ff09bb83          	ld	s7,-16(s3)
   1a430:	417a8bb3          	sub	s7,s5,s7
   1a434:	008bb783          	ld	a5,8(s7)
   1a438:	ffc7f793          	andi	a5,a5,-4
   1a43c:	00e78c33          	add	s8,a5,a4
   1a440:	f6dc42e3          	blt	s8,a3,1a3a4 <_realloc_r+0x310>
   1a444:	018bb783          	ld	a5,24(s7)
   1a448:	010bb703          	ld	a4,16(s7)
   1a44c:	ff8a0613          	addi	a2,s4,-8
   1a450:	04800693          	li	a3,72
   1a454:	00f73c23          	sd	a5,24(a4)
   1a458:	00e7b823          	sd	a4,16(a5)
   1a45c:	010b8493          	addi	s1,s7,16
   1a460:	14c6ea63          	bltu	a3,a2,1a5b4 <_realloc_r+0x520>
   1a464:	02700713          	li	a4,39
   1a468:	00048793          	mv	a5,s1
   1a46c:	02c77263          	bleu	a2,a4,1a490 <_realloc_r+0x3fc>
   1a470:	0009b783          	ld	a5,0(s3)
   1a474:	00fbb823          	sd	a5,16(s7)
   1a478:	0089b783          	ld	a5,8(s3)
   1a47c:	00fbbc23          	sd	a5,24(s7)
   1a480:	03700793          	li	a5,55
   1a484:	14c7e063          	bltu	a5,a2,1a5c4 <_realloc_r+0x530>
   1a488:	020b8793          	addi	a5,s7,32
   1a48c:	01098993          	addi	s3,s3,16
   1a490:	0009b703          	ld	a4,0(s3)
   1a494:	00e7b023          	sd	a4,0(a5)
   1a498:	0089b703          	ld	a4,8(s3)
   1a49c:	00e7b423          	sd	a4,8(a5)
   1a4a0:	0109b703          	ld	a4,16(s3)
   1a4a4:	00e7b823          	sd	a4,16(a5)
   1a4a8:	008b8733          	add	a4,s7,s0
   1a4ac:	408c07b3          	sub	a5,s8,s0
   1a4b0:	00eb3823          	sd	a4,16(s6)
   1a4b4:	0017e793          	ori	a5,a5,1
   1a4b8:	00f73423          	sd	a5,8(a4)
   1a4bc:	008bb783          	ld	a5,8(s7)
   1a4c0:	00090513          	mv	a0,s2
   1a4c4:	0017f793          	andi	a5,a5,1
   1a4c8:	0087e433          	or	s0,a5,s0
   1a4cc:	008bb423          	sd	s0,8(s7)
   1a4d0:	a99fc0ef          	jal	16f68 <__malloc_unlock>
   1a4d4:	00048513          	mv	a0,s1
   1a4d8:	d1dff06f          	j	1a1f4 <_realloc_r+0x160>
   1a4dc:	0009b703          	ld	a4,0(s3)
   1a4e0:	00e53023          	sd	a4,0(a0)
   1a4e4:	0089b703          	ld	a4,8(s3)
   1a4e8:	00e53423          	sd	a4,8(a0)
   1a4ec:	03700713          	li	a4,55
   1a4f0:	06c76463          	bltu	a4,a2,1a558 <_realloc_r+0x4c4>
   1a4f4:	01050793          	addi	a5,a0,16
   1a4f8:	01098713          	addi	a4,s3,16
   1a4fc:	c81ff06f          	j	1a17c <_realloc_r+0xe8>
   1a500:	00098593          	mv	a1,s3
   1a504:	00048513          	mv	a0,s1
   1a508:	a6dff0ef          	jal	19f74 <memmove>
   1a50c:	000b0a13          	mv	s4,s6
   1a510:	000b8a93          	mv	s5,s7
   1a514:	ca9ff06f          	j	1a1bc <_realloc_r+0x128>
   1a518:	008a8ab3          	add	s5,s5,s0
   1a51c:	408707b3          	sub	a5,a4,s0
   1a520:	015b3823          	sd	s5,16(s6)
   1a524:	0017e793          	ori	a5,a5,1
   1a528:	00fab423          	sd	a5,8(s5)
   1a52c:	ff89b783          	ld	a5,-8(s3)
   1a530:	00090513          	mv	a0,s2
   1a534:	0017f793          	andi	a5,a5,1
   1a538:	0087e433          	or	s0,a5,s0
   1a53c:	fe89bc23          	sd	s0,-8(s3)
   1a540:	a29fc0ef          	jal	16f68 <__malloc_unlock>
   1a544:	00098513          	mv	a0,s3
   1a548:	cadff06f          	j	1a1f4 <_realloc_r+0x160>
   1a54c:	00098593          	mv	a1,s3
   1a550:	a25ff0ef          	jal	19f74 <memmove>
   1a554:	c41ff06f          	j	1a194 <_realloc_r+0x100>
   1a558:	0109b703          	ld	a4,16(s3)
   1a55c:	00e53823          	sd	a4,16(a0)
   1a560:	0189b703          	ld	a4,24(s3)
   1a564:	00e53c23          	sd	a4,24(a0)
   1a568:	02f60863          	beq	a2,a5,1a598 <_realloc_r+0x504>
   1a56c:	02050793          	addi	a5,a0,32
   1a570:	02098713          	addi	a4,s3,32
   1a574:	c09ff06f          	j	1a17c <_realloc_r+0xe8>
   1a578:	ff853783          	ld	a5,-8(a0)
   1a57c:	00098493          	mv	s1,s3
   1a580:	ffc7f793          	andi	a5,a5,-4
   1a584:	00fa0a33          	add	s4,s4,a5
   1a588:	c35ff06f          	j	1a1bc <_realloc_r+0x128>
   1a58c:	020b8793          	addi	a5,s7,32
   1a590:	01098993          	addi	s3,s3,16
   1a594:	dddff06f          	j	1a370 <_realloc_r+0x2dc>
   1a598:	0209b683          	ld	a3,32(s3)
   1a59c:	03050793          	addi	a5,a0,48
   1a5a0:	03098713          	addi	a4,s3,48
   1a5a4:	02d53023          	sd	a3,32(a0)
   1a5a8:	0289b683          	ld	a3,40(s3)
   1a5ac:	02d53423          	sd	a3,40(a0)
   1a5b0:	bcdff06f          	j	1a17c <_realloc_r+0xe8>
   1a5b4:	00098593          	mv	a1,s3
   1a5b8:	00048513          	mv	a0,s1
   1a5bc:	9b9ff0ef          	jal	19f74 <memmove>
   1a5c0:	ee9ff06f          	j	1a4a8 <_realloc_r+0x414>
   1a5c4:	0109b783          	ld	a5,16(s3)
   1a5c8:	02fbb023          	sd	a5,32(s7)
   1a5cc:	0189b783          	ld	a5,24(s3)
   1a5d0:	02fbb423          	sd	a5,40(s7)
   1a5d4:	02d60063          	beq	a2,a3,1a5f4 <_realloc_r+0x560>
   1a5d8:	030b8793          	addi	a5,s7,48
   1a5dc:	02098993          	addi	s3,s3,32
   1a5e0:	eb1ff06f          	j	1a490 <_realloc_r+0x3fc>
   1a5e4:	00090513          	mv	a0,s2
   1a5e8:	981fc0ef          	jal	16f68 <__malloc_unlock>
   1a5ec:	00000513          	li	a0,0
   1a5f0:	c05ff06f          	j	1a1f4 <_realloc_r+0x160>
   1a5f4:	0209b703          	ld	a4,32(s3)
   1a5f8:	040b8793          	addi	a5,s7,64
   1a5fc:	03098993          	addi	s3,s3,48
   1a600:	02ebb823          	sd	a4,48(s7)
   1a604:	ff89b703          	ld	a4,-8(s3)
   1a608:	02ebbc23          	sd	a4,56(s7)
   1a60c:	e85ff06f          	j	1a490 <_realloc_r+0x3fc>

000000000001a610 <__swbuf_r>:
   1a610:	fd010113          	addi	sp,sp,-48
   1a614:	02813023          	sd	s0,32(sp)
   1a618:	00913c23          	sd	s1,24(sp)
   1a61c:	01313423          	sd	s3,8(sp)
   1a620:	02113423          	sd	ra,40(sp)
   1a624:	01213823          	sd	s2,16(sp)
   1a628:	00050493          	mv	s1,a0
   1a62c:	00058993          	mv	s3,a1
   1a630:	00060413          	mv	s0,a2
   1a634:	00050663          	beqz	a0,1a640 <__swbuf_r+0x30>
   1a638:	05052783          	lw	a5,80(a0)
   1a63c:	12078e63          	beqz	a5,1a778 <__swbuf_r+0x168>
   1a640:	01041683          	lh	a3,16(s0)
   1a644:	02842783          	lw	a5,40(s0)
   1a648:	03069713          	slli	a4,a3,0x30
   1a64c:	03075713          	srli	a4,a4,0x30
   1a650:	00f42623          	sw	a5,12(s0)
   1a654:	00877793          	andi	a5,a4,8
   1a658:	0e078e63          	beqz	a5,1a754 <__swbuf_r+0x144>
   1a65c:	01843783          	ld	a5,24(s0)
   1a660:	0e078a63          	beqz	a5,1a754 <__swbuf_r+0x144>
   1a664:	03271613          	slli	a2,a4,0x32
   1a668:	0ff9f913          	andi	s2,s3,255
   1a66c:	06065663          	bgez	a2,1a6d8 <__swbuf_r+0xc8>
   1a670:	00043703          	ld	a4,0(s0)
   1a674:	02042683          	lw	a3,32(s0)
   1a678:	40f707bb          	subw	a5,a4,a5
   1a67c:	08d7d663          	ble	a3,a5,1a708 <__swbuf_r+0xf8>
   1a680:	0017879b          	addiw	a5,a5,1
   1a684:	00c42683          	lw	a3,12(s0)
   1a688:	00170613          	addi	a2,a4,1
   1a68c:	00c43023          	sd	a2,0(s0)
   1a690:	fff6869b          	addiw	a3,a3,-1
   1a694:	00d42623          	sw	a3,12(s0)
   1a698:	01370023          	sb	s3,0(a4)
   1a69c:	02042703          	lw	a4,32(s0)
   1a6a0:	08f70263          	beq	a4,a5,1a724 <__swbuf_r+0x114>
   1a6a4:	01045783          	lhu	a5,16(s0)
   1a6a8:	00090513          	mv	a0,s2
   1a6ac:	0017f793          	andi	a5,a5,1
   1a6b0:	00078663          	beqz	a5,1a6bc <__swbuf_r+0xac>
   1a6b4:	00a00793          	li	a5,10
   1a6b8:	06f90663          	beq	s2,a5,1a724 <__swbuf_r+0x114>
   1a6bc:	02813083          	ld	ra,40(sp)
   1a6c0:	02013403          	ld	s0,32(sp)
   1a6c4:	01813483          	ld	s1,24(sp)
   1a6c8:	01013903          	ld	s2,16(sp)
   1a6cc:	00813983          	ld	s3,8(sp)
   1a6d0:	03010113          	addi	sp,sp,48
   1a6d4:	00008067          	ret
   1a6d8:	0ac42583          	lw	a1,172(s0)
   1a6dc:	ffffe737          	lui	a4,0xffffe
   1a6e0:	fff7071b          	addiw	a4,a4,-1
   1a6e4:	00e5f733          	and	a4,a1,a4
   1a6e8:	00002637          	lui	a2,0x2
   1a6ec:	00c6e6b3          	or	a3,a3,a2
   1a6f0:	0ae42623          	sw	a4,172(s0)
   1a6f4:	00043703          	ld	a4,0(s0)
   1a6f8:	00d41823          	sh	a3,16(s0)
   1a6fc:	02042683          	lw	a3,32(s0)
   1a700:	40f707bb          	subw	a5,a4,a5
   1a704:	f6d7cee3          	blt	a5,a3,1a680 <__swbuf_r+0x70>
   1a708:	00040593          	mv	a1,s0
   1a70c:	00048513          	mv	a0,s1
   1a710:	f24fa0ef          	jal	14e34 <_fflush_r>
   1a714:	06051663          	bnez	a0,1a780 <__swbuf_r+0x170>
   1a718:	00043703          	ld	a4,0(s0)
   1a71c:	00100793          	li	a5,1
   1a720:	f65ff06f          	j	1a684 <__swbuf_r+0x74>
   1a724:	00040593          	mv	a1,s0
   1a728:	00048513          	mv	a0,s1
   1a72c:	f08fa0ef          	jal	14e34 <_fflush_r>
   1a730:	04051863          	bnez	a0,1a780 <__swbuf_r+0x170>
   1a734:	02813083          	ld	ra,40(sp)
   1a738:	00090513          	mv	a0,s2
   1a73c:	02013403          	ld	s0,32(sp)
   1a740:	01813483          	ld	s1,24(sp)
   1a744:	01013903          	ld	s2,16(sp)
   1a748:	00813983          	ld	s3,8(sp)
   1a74c:	03010113          	addi	sp,sp,48
   1a750:	00008067          	ret
   1a754:	00040593          	mv	a1,s0
   1a758:	00048513          	mv	a0,s1
   1a75c:	d79f80ef          	jal	134d4 <__swsetup_r>
   1a760:	02051063          	bnez	a0,1a780 <__swbuf_r+0x170>
   1a764:	01041683          	lh	a3,16(s0)
   1a768:	01843783          	ld	a5,24(s0)
   1a76c:	03069713          	slli	a4,a3,0x30
   1a770:	03075713          	srli	a4,a4,0x30
   1a774:	ef1ff06f          	j	1a664 <__swbuf_r+0x54>
   1a778:	a69fa0ef          	jal	151e0 <__sinit>
   1a77c:	ec5ff06f          	j	1a640 <__swbuf_r+0x30>
   1a780:	fff00513          	li	a0,-1
   1a784:	f39ff06f          	j	1a6bc <__swbuf_r+0xac>

000000000001a788 <__swbuf>:
   1a788:	00058613          	mv	a2,a1
   1a78c:	00050593          	mv	a1,a0
   1a790:	8101b503          	ld	a0,-2032(gp) # 1d6f0 <_impure_ptr>
   1a794:	e7dff06f          	j	1a610 <__swbuf_r>

000000000001a798 <_wcrtomb_r>:
   1a798:	fc010113          	addi	sp,sp,-64
   1a79c:	02913423          	sd	s1,40(sp)
   1a7a0:	03213023          	sd	s2,32(sp)
   1a7a4:	02113c23          	sd	ra,56(sp)
   1a7a8:	02813823          	sd	s0,48(sp)
   1a7ac:	01313c23          	sd	s3,24(sp)
   1a7b0:	01413823          	sd	s4,16(sp)
   1a7b4:	00050493          	mv	s1,a0
   1a7b8:	00068913          	mv	s2,a3
   1a7bc:	06058663          	beqz	a1,1a828 <_wcrtomb_r+0x90>
   1a7c0:	8301ba03          	ld	s4,-2000(gp) # 1d710 <__wctomb>
   1a7c4:	00058413          	mv	s0,a1
   1a7c8:	00060993          	mv	s3,a2
   1a7cc:	b49fb0ef          	jal	16314 <__locale_charset>
   1a7d0:	00050693          	mv	a3,a0
   1a7d4:	00090713          	mv	a4,s2
   1a7d8:	00098613          	mv	a2,s3
   1a7dc:	00040593          	mv	a1,s0
   1a7e0:	00048513          	mv	a0,s1
   1a7e4:	000a00e7          	jalr	s4
   1a7e8:	00050793          	mv	a5,a0
   1a7ec:	fff00713          	li	a4,-1
   1a7f0:	00078513          	mv	a0,a5
   1a7f4:	00e79a63          	bne	a5,a4,1a808 <_wcrtomb_r+0x70>
   1a7f8:	00092023          	sw	zero,0(s2)
   1a7fc:	08a00793          	li	a5,138
   1a800:	00f4a023          	sw	a5,0(s1)
   1a804:	fff00513          	li	a0,-1
   1a808:	03813083          	ld	ra,56(sp)
   1a80c:	03013403          	ld	s0,48(sp)
   1a810:	02813483          	ld	s1,40(sp)
   1a814:	02013903          	ld	s2,32(sp)
   1a818:	01813983          	ld	s3,24(sp)
   1a81c:	01013a03          	ld	s4,16(sp)
   1a820:	04010113          	addi	sp,sp,64
   1a824:	00008067          	ret
   1a828:	8301b403          	ld	s0,-2000(gp) # 1d710 <__wctomb>
   1a82c:	ae9fb0ef          	jal	16314 <__locale_charset>
   1a830:	00050693          	mv	a3,a0
   1a834:	00090713          	mv	a4,s2
   1a838:	00000613          	li	a2,0
   1a83c:	00010593          	mv	a1,sp
   1a840:	00048513          	mv	a0,s1
   1a844:	000400e7          	jalr	s0
   1a848:	00050793          	mv	a5,a0
   1a84c:	fa1ff06f          	j	1a7ec <_wcrtomb_r+0x54>

000000000001a850 <wcrtomb>:
   1a850:	fc010113          	addi	sp,sp,-64
   1a854:	02913423          	sd	s1,40(sp)
   1a858:	03213023          	sd	s2,32(sp)
   1a85c:	02113c23          	sd	ra,56(sp)
   1a860:	02813823          	sd	s0,48(sp)
   1a864:	01313c23          	sd	s3,24(sp)
   1a868:	01413823          	sd	s4,16(sp)
   1a86c:	00060913          	mv	s2,a2
   1a870:	8101b483          	ld	s1,-2032(gp) # 1d6f0 <_impure_ptr>
   1a874:	06050663          	beqz	a0,1a8e0 <wcrtomb+0x90>
   1a878:	8301ba03          	ld	s4,-2000(gp) # 1d710 <__wctomb>
   1a87c:	00058993          	mv	s3,a1
   1a880:	00050413          	mv	s0,a0
   1a884:	a91fb0ef          	jal	16314 <__locale_charset>
   1a888:	00050693          	mv	a3,a0
   1a88c:	00090713          	mv	a4,s2
   1a890:	00098613          	mv	a2,s3
   1a894:	00040593          	mv	a1,s0
   1a898:	00048513          	mv	a0,s1
   1a89c:	000a00e7          	jalr	s4
   1a8a0:	00050793          	mv	a5,a0
   1a8a4:	fff00713          	li	a4,-1
   1a8a8:	00078513          	mv	a0,a5
   1a8ac:	00e79a63          	bne	a5,a4,1a8c0 <wcrtomb+0x70>
   1a8b0:	00092023          	sw	zero,0(s2)
   1a8b4:	08a00793          	li	a5,138
   1a8b8:	00f4a023          	sw	a5,0(s1)
   1a8bc:	fff00513          	li	a0,-1
   1a8c0:	03813083          	ld	ra,56(sp)
   1a8c4:	03013403          	ld	s0,48(sp)
   1a8c8:	02813483          	ld	s1,40(sp)
   1a8cc:	02013903          	ld	s2,32(sp)
   1a8d0:	01813983          	ld	s3,24(sp)
   1a8d4:	01013a03          	ld	s4,16(sp)
   1a8d8:	04010113          	addi	sp,sp,64
   1a8dc:	00008067          	ret
   1a8e0:	8301b403          	ld	s0,-2000(gp) # 1d710 <__wctomb>
   1a8e4:	a31fb0ef          	jal	16314 <__locale_charset>
   1a8e8:	00050693          	mv	a3,a0
   1a8ec:	00090713          	mv	a4,s2
   1a8f0:	00000613          	li	a2,0
   1a8f4:	00010593          	mv	a1,sp
   1a8f8:	00048513          	mv	a0,s1
   1a8fc:	000400e7          	jalr	s0
   1a900:	00050793          	mv	a5,a0
   1a904:	fa1ff06f          	j	1a8a4 <wcrtomb+0x54>

000000000001a908 <__ascii_wctomb>:
   1a908:	00058c63          	beqz	a1,1a920 <__ascii_wctomb+0x18>
   1a90c:	0ff00793          	li	a5,255
   1a910:	00c7ec63          	bltu	a5,a2,1a928 <__ascii_wctomb+0x20>
   1a914:	00c58023          	sb	a2,0(a1)
   1a918:	00100513          	li	a0,1
   1a91c:	00008067          	ret
   1a920:	00000513          	li	a0,0
   1a924:	00008067          	ret
   1a928:	08a00793          	li	a5,138
   1a92c:	00f52023          	sw	a5,0(a0)
   1a930:	fff00513          	li	a0,-1
   1a934:	00008067          	ret

000000000001a938 <_wctomb_r>:
   1a938:	fd010113          	addi	sp,sp,-48
   1a93c:	02813023          	sd	s0,32(sp)
   1a940:	8301b403          	ld	s0,-2000(gp) # 1d710 <__wctomb>
   1a944:	02113423          	sd	ra,40(sp)
   1a948:	00913c23          	sd	s1,24(sp)
   1a94c:	01213823          	sd	s2,16(sp)
   1a950:	01313423          	sd	s3,8(sp)
   1a954:	01413023          	sd	s4,0(sp)
   1a958:	00050493          	mv	s1,a0
   1a95c:	00068a13          	mv	s4,a3
   1a960:	00058913          	mv	s2,a1
   1a964:	00060993          	mv	s3,a2
   1a968:	9adfb0ef          	jal	16314 <__locale_charset>
   1a96c:	000a0713          	mv	a4,s4
   1a970:	00050693          	mv	a3,a0
   1a974:	00098613          	mv	a2,s3
   1a978:	00090593          	mv	a1,s2
   1a97c:	00048513          	mv	a0,s1
   1a980:	00040313          	mv	t1,s0
   1a984:	02813083          	ld	ra,40(sp)
   1a988:	02013403          	ld	s0,32(sp)
   1a98c:	01813483          	ld	s1,24(sp)
   1a990:	01013903          	ld	s2,16(sp)
   1a994:	00813983          	ld	s3,8(sp)
   1a998:	00013a03          	ld	s4,0(sp)
   1a99c:	03010113          	addi	sp,sp,48
   1a9a0:	00030067          	jr	t1

000000000001a9a4 <__syscall_error>:
   1a9a4:	ff010113          	addi	sp,sp,-16
   1a9a8:	00113423          	sd	ra,8(sp)
   1a9ac:	00813023          	sd	s0,0(sp)
   1a9b0:	00050413          	mv	s0,a0
   1a9b4:	3c0000ef          	jal	1ad74 <__errno>
   1a9b8:	00813083          	ld	ra,8(sp)
   1a9bc:	408007bb          	negw	a5,s0
   1a9c0:	00f52023          	sw	a5,0(a0)
   1a9c4:	00013403          	ld	s0,0(sp)
   1a9c8:	fff00513          	li	a0,-1
   1a9cc:	01010113          	addi	sp,sp,16
   1a9d0:	00008067          	ret

000000000001a9d4 <open>:
   1a9d4:	00000693          	li	a3,0
   1a9d8:	40000893          	li	a7,1024
   1a9dc:	00000073          	ecall
   1a9e0:	fc0542e3          	bltz	a0,1a9a4 <__syscall_error>
   1a9e4:	0005051b          	sext.w	a0,a0
   1a9e8:	00008067          	ret

000000000001a9ec <openat>:
   1a9ec:	03800893          	li	a7,56
   1a9f0:	00000073          	ecall
   1a9f4:	fa0548e3          	bltz	a0,1a9a4 <__syscall_error>
   1a9f8:	0005051b          	sext.w	a0,a0
   1a9fc:	00008067          	ret

000000000001aa00 <lseek>:
   1aa00:	00000693          	li	a3,0
   1aa04:	03e00893          	li	a7,62
   1aa08:	00000073          	ecall
   1aa0c:	f8054ce3          	bltz	a0,1a9a4 <__syscall_error>
   1aa10:	00008067          	ret

000000000001aa14 <read>:
   1aa14:	00000693          	li	a3,0
   1aa18:	03f00893          	li	a7,63
   1aa1c:	00000073          	ecall
   1aa20:	f80542e3          	bltz	a0,1a9a4 <__syscall_error>
   1aa24:	00008067          	ret

000000000001aa28 <write>:
   1aa28:	00000693          	li	a3,0
   1aa2c:	04000893          	li	a7,64
   1aa30:	00000073          	ecall
   1aa34:	f60548e3          	bltz	a0,1a9a4 <__syscall_error>
   1aa38:	00008067          	ret

000000000001aa3c <fstat>:
   1aa3c:	00000613          	li	a2,0
   1aa40:	00000693          	li	a3,0
   1aa44:	05000893          	li	a7,80
   1aa48:	00000073          	ecall
   1aa4c:	f4054ce3          	bltz	a0,1a9a4 <__syscall_error>
   1aa50:	0005051b          	sext.w	a0,a0
   1aa54:	00008067          	ret

000000000001aa58 <stat>:
   1aa58:	00000613          	li	a2,0
   1aa5c:	00000693          	li	a3,0
   1aa60:	40e00893          	li	a7,1038
   1aa64:	00000073          	ecall
   1aa68:	f2054ee3          	bltz	a0,1a9a4 <__syscall_error>
   1aa6c:	0005051b          	sext.w	a0,a0
   1aa70:	00008067          	ret

000000000001aa74 <lstat>:
   1aa74:	00000613          	li	a2,0
   1aa78:	00000693          	li	a3,0
   1aa7c:	40f00893          	li	a7,1039
   1aa80:	00000073          	ecall
   1aa84:	f20540e3          	bltz	a0,1a9a4 <__syscall_error>
   1aa88:	0005051b          	sext.w	a0,a0
   1aa8c:	00008067          	ret

000000000001aa90 <fstatat>:
   1aa90:	04f00893          	li	a7,79
   1aa94:	00000073          	ecall
   1aa98:	f00546e3          	bltz	a0,1a9a4 <__syscall_error>
   1aa9c:	0005051b          	sext.w	a0,a0
   1aaa0:	00008067          	ret

000000000001aaa4 <access>:
   1aaa4:	00000613          	li	a2,0
   1aaa8:	00000693          	li	a3,0
   1aaac:	40900893          	li	a7,1033
   1aab0:	00000073          	ecall
   1aab4:	ee0548e3          	bltz	a0,1a9a4 <__syscall_error>
   1aab8:	0005051b          	sext.w	a0,a0
   1aabc:	00008067          	ret

000000000001aac0 <faccessat>:
   1aac0:	03000893          	li	a7,48
   1aac4:	00000073          	ecall
   1aac8:	ec054ee3          	bltz	a0,1a9a4 <__syscall_error>
   1aacc:	0005051b          	sext.w	a0,a0
   1aad0:	00008067          	ret

000000000001aad4 <close>:
   1aad4:	00000593          	li	a1,0
   1aad8:	00000613          	li	a2,0
   1aadc:	00000693          	li	a3,0
   1aae0:	03900893          	li	a7,57
   1aae4:	00000073          	ecall
   1aae8:	ea054ee3          	bltz	a0,1a9a4 <__syscall_error>
   1aaec:	0005051b          	sext.w	a0,a0
   1aaf0:	00008067          	ret

000000000001aaf4 <link>:
   1aaf4:	00000613          	li	a2,0
   1aaf8:	00000693          	li	a3,0
   1aafc:	40100893          	li	a7,1025
   1ab00:	00000073          	ecall
   1ab04:	ea0540e3          	bltz	a0,1a9a4 <__syscall_error>
   1ab08:	0005051b          	sext.w	a0,a0
   1ab0c:	00008067          	ret

000000000001ab10 <unlink>:
   1ab10:	00000593          	li	a1,0
   1ab14:	00000613          	li	a2,0
   1ab18:	00000693          	li	a3,0
   1ab1c:	40200893          	li	a7,1026
   1ab20:	00000073          	ecall
   1ab24:	e80540e3          	bltz	a0,1a9a4 <__syscall_error>
   1ab28:	0005051b          	sext.w	a0,a0
   1ab2c:	00008067          	ret

000000000001ab30 <execve>:
   1ab30:	ff010113          	addi	sp,sp,-16
   1ab34:	00113423          	sd	ra,8(sp)
   1ab38:	23c000ef          	jal	1ad74 <__errno>
   1ab3c:	00813083          	ld	ra,8(sp)
   1ab40:	00c00793          	li	a5,12
   1ab44:	00f52023          	sw	a5,0(a0)
   1ab48:	01010113          	addi	sp,sp,16
   1ab4c:	fff00513          	li	a0,-1
   1ab50:	00008067          	ret

000000000001ab54 <fork>:
   1ab54:	ff010113          	addi	sp,sp,-16
   1ab58:	00113423          	sd	ra,8(sp)
   1ab5c:	218000ef          	jal	1ad74 <__errno>
   1ab60:	00813083          	ld	ra,8(sp)
   1ab64:	00b00793          	li	a5,11
   1ab68:	00f52023          	sw	a5,0(a0)
   1ab6c:	01010113          	addi	sp,sp,16
   1ab70:	fff00513          	li	a0,-1
   1ab74:	00008067          	ret

000000000001ab78 <getpid>:
   1ab78:	00100513          	li	a0,1
   1ab7c:	00008067          	ret

000000000001ab80 <kill>:
   1ab80:	ff010113          	addi	sp,sp,-16
   1ab84:	00113423          	sd	ra,8(sp)
   1ab88:	1ec000ef          	jal	1ad74 <__errno>
   1ab8c:	00813083          	ld	ra,8(sp)
   1ab90:	01600793          	li	a5,22
   1ab94:	00f52023          	sw	a5,0(a0)
   1ab98:	01010113          	addi	sp,sp,16
   1ab9c:	fff00513          	li	a0,-1
   1aba0:	00008067          	ret

000000000001aba4 <wait>:
   1aba4:	ff010113          	addi	sp,sp,-16
   1aba8:	00113423          	sd	ra,8(sp)
   1abac:	1c8000ef          	jal	1ad74 <__errno>
   1abb0:	00813083          	ld	ra,8(sp)
   1abb4:	00a00793          	li	a5,10
   1abb8:	00f52023          	sw	a5,0(a0)
   1abbc:	01010113          	addi	sp,sp,16
   1abc0:	fff00513          	li	a0,-1
   1abc4:	00008067          	ret

000000000001abc8 <isatty>:
   1abc8:	f8010113          	addi	sp,sp,-128
   1abcc:	00010593          	mv	a1,sp
   1abd0:	00000613          	li	a2,0
   1abd4:	00000693          	li	a3,0
   1abd8:	05000893          	li	a7,80
   1abdc:	00000073          	ecall
   1abe0:	dc0542e3          	bltz	a0,1a9a4 <__syscall_error>
   1abe4:	fff00793          	li	a5,-1
   1abe8:	0005051b          	sext.w	a0,a0
   1abec:	00f50863          	beq	a0,a5,1abfc <isatty+0x34>
   1abf0:	01012503          	lw	a0,16(sp)
   1abf4:	40d5551b          	sraiw	a0,a0,0xd
   1abf8:	00157513          	andi	a0,a0,1
   1abfc:	08010113          	addi	sp,sp,128
   1ac00:	00008067          	ret

000000000001ac04 <times>:
   1ac04:	96018313          	addi	t1,gp,-1696 # 1d840 <t0.2343>
   1ac08:	00033703          	ld	a4,0(t1)
   1ac0c:	ff010113          	addi	sp,sp,-16
   1ac10:	00050813          	mv	a6,a0
   1ac14:	02071063          	bnez	a4,1ac34 <times+0x30>
   1ac18:	96018513          	addi	a0,gp,-1696 # 1d840 <t0.2343>
   1ac1c:	00000593          	li	a1,0
   1ac20:	00000613          	li	a2,0
   1ac24:	00000693          	li	a3,0
   1ac28:	0a900893          	li	a7,169
   1ac2c:	00000073          	ecall
   1ac30:	d6054ae3          	bltz	a0,1a9a4 <__syscall_error>
   1ac34:	00010513          	mv	a0,sp
   1ac38:	00000593          	li	a1,0
   1ac3c:	00000613          	li	a2,0
   1ac40:	00000693          	li	a3,0
   1ac44:	0a900893          	li	a7,169
   1ac48:	00000073          	ecall
   1ac4c:	d4054ce3          	bltz	a0,1a9a4 <__syscall_error>
   1ac50:	00033703          	ld	a4,0(t1)
   1ac54:	00013783          	ld	a5,0(sp)
   1ac58:	fff00513          	li	a0,-1
   1ac5c:	00083823          	sd	zero,16(a6)
   1ac60:	40e786b3          	sub	a3,a5,a4
   1ac64:	000f47b7          	lui	a5,0xf4
   1ac68:	24078793          	addi	a5,a5,576 # f4240 <_gp+0xd6360>
   1ac6c:	02f68733          	mul	a4,a3,a5
   1ac70:	00833683          	ld	a3,8(t1)
   1ac74:	00813783          	ld	a5,8(sp)
   1ac78:	00083c23          	sd	zero,24(a6)
   1ac7c:	00083423          	sd	zero,8(a6)
   1ac80:	40d787b3          	sub	a5,a5,a3
   1ac84:	01010113          	addi	sp,sp,16
   1ac88:	00f707b3          	add	a5,a4,a5
   1ac8c:	00f83023          	sd	a5,0(a6)
   1ac90:	00008067          	ret

000000000001ac94 <gettimeofday>:
   1ac94:	00000593          	li	a1,0
   1ac98:	00000613          	li	a2,0
   1ac9c:	00000693          	li	a3,0
   1aca0:	0a900893          	li	a7,169
   1aca4:	00000073          	ecall
   1aca8:	ce054ee3          	bltz	a0,1a9a4 <__syscall_error>
   1acac:	0005051b          	sext.w	a0,a0
   1acb0:	00008067          	ret

000000000001acb4 <ftime>:
   1acb4:	00051423          	sh	zero,8(a0)
   1acb8:	00053023          	sd	zero,0(a0)
   1acbc:	00000513          	li	a0,0
   1acc0:	00008067          	ret

000000000001acc4 <utime>:
   1acc4:	fff00513          	li	a0,-1
   1acc8:	00008067          	ret

000000000001accc <chown>:
   1accc:	fff00513          	li	a0,-1
   1acd0:	00008067          	ret

000000000001acd4 <chmod>:
   1acd4:	fff00513          	li	a0,-1
   1acd8:	00008067          	ret

000000000001acdc <chdir>:
   1acdc:	fff00513          	li	a0,-1
   1ace0:	00008067          	ret

000000000001ace4 <getcwd>:
   1ace4:	00000513          	li	a0,0
   1ace8:	00008067          	ret

000000000001acec <sysconf>:
   1acec:	00200793          	li	a5,2
   1acf0:	00f51863          	bne	a0,a5,1ad00 <sysconf+0x14>
   1acf4:	000f4537          	lui	a0,0xf4
   1acf8:	24050513          	addi	a0,a0,576 # f4240 <_gp+0xd6360>
   1acfc:	00008067          	ret
   1ad00:	fff00513          	li	a0,-1
   1ad04:	00008067          	ret

000000000001ad08 <sbrk>:
   1ad08:	8f81b703          	ld	a4,-1800(gp) # 1d7d8 <heap_end.2381>
   1ad0c:	00050793          	mv	a5,a0
   1ad10:	00071663          	bnez	a4,1ad1c <sbrk+0x14>
   1ad14:	97018713          	addi	a4,gp,-1680 # 1d850 <_end>
   1ad18:	8ee1bc23          	sd	a4,-1800(gp) # 1d7d8 <heap_end.2381>
   1ad1c:	00e78533          	add	a0,a5,a4
   1ad20:	00000593          	li	a1,0
   1ad24:	00000613          	li	a2,0
   1ad28:	00000693          	li	a3,0
   1ad2c:	0d600893          	li	a7,214
   1ad30:	00000073          	ecall
   1ad34:	c60548e3          	bltz	a0,1a9a4 <__syscall_error>
   1ad38:	8f81b683          	ld	a3,-1800(gp) # 1d7d8 <heap_end.2381>
   1ad3c:	fff00713          	li	a4,-1
   1ad40:	00d787b3          	add	a5,a5,a3
   1ad44:	00f51663          	bne	a0,a5,1ad50 <sbrk+0x48>
   1ad48:	8ea1bc23          	sd	a0,-1800(gp) # 1d7d8 <heap_end.2381>
   1ad4c:	00068713          	mv	a4,a3
   1ad50:	00070513          	mv	a0,a4
   1ad54:	00008067          	ret

000000000001ad58 <_exit>:
   1ad58:	00000593          	li	a1,0
   1ad5c:	00000613          	li	a2,0
   1ad60:	00000693          	li	a3,0
   1ad64:	05d00893          	li	a7,93
   1ad68:	00000073          	ecall
   1ad6c:	c2054ce3          	bltz	a0,1a9a4 <__syscall_error>
   1ad70:	0000006f          	j	1ad70 <_exit+0x18>

000000000001ad74 <__errno>:
   1ad74:	8101b503          	ld	a0,-2032(gp) # 1d6f0 <_impure_ptr>
   1ad78:	00008067          	ret

000000000001ad7c <sulp>:
   1ad7c:	f2050553          	fmv.d.x	fa0,a0
   1ad80:	fe010113          	addi	sp,sp,-32
   1ad84:	00913423          	sd	s1,8(sp)
   1ad88:	00058493          	mv	s1,a1
   1ad8c:	00813823          	sd	s0,16(sp)
   1ad90:	00113c23          	sd	ra,24(sp)
   1ad94:	00050413          	mv	s0,a0
   1ad98:	d3dfc0ef          	jal	17ad4 <__ulp>
   1ad9c:	02048a63          	beqz	s1,1add0 <sulp+0x54>
   1ada0:	42045413          	srai	s0,s0,0x20
   1ada4:	02141413          	slli	s0,s0,0x21
   1ada8:	03545413          	srli	s0,s0,0x35
   1adac:	06b00793          	li	a5,107
   1adb0:	408787bb          	subw	a5,a5,s0
   1adb4:	00f05e63          	blez	a5,1add0 <sulp+0x54>
   1adb8:	0147979b          	slliw	a5,a5,0x14
   1adbc:	3ff00737          	lui	a4,0x3ff00
   1adc0:	00e787bb          	addw	a5,a5,a4
   1adc4:	02079793          	slli	a5,a5,0x20
   1adc8:	f20787d3          	fmv.d.x	fa5,a5
   1adcc:	12f57553          	fmul.d	fa0,fa0,fa5
   1add0:	01813083          	ld	ra,24(sp)
   1add4:	01013403          	ld	s0,16(sp)
   1add8:	00813483          	ld	s1,8(sp)
   1addc:	02010113          	addi	sp,sp,32
   1ade0:	00008067          	ret
