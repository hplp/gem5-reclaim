
fstat:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010000 <_ftext>:
   10000:	0000d197          	auipc	gp,0xd
   10004:	dc018193          	addi	gp,gp,-576 # 1cdc0 <_gp>
   10008:	0000c297          	auipc	t0,0xc
   1000c:	65028293          	addi	t0,t0,1616 # 1c658 <_PathLocale>
   10010:	0000c317          	auipc	t1,0xc
   10014:	6e830313          	addi	t1,t1,1768 # 1c6f8 <_end>
   10018:	0002b023          	sd	zero,0(t0)
   1001c:	00828293          	addi	t0,t0,8
   10020:	fe62ece3          	bltu	t0,t1,10018 <_ftext+0x18>
   10024:	00000517          	auipc	a0,0x0
   10028:	21850513          	addi	a0,a0,536 # 1023c <__libc_fini_array>
   1002c:	1cc000ef          	jal	101f8 <atexit>
   10030:	268000ef          	jal	10298 <__libc_init_array>
   10034:	00012503          	lw	a0,0(sp)
   10038:	00810593          	addi	a1,sp,8
   1003c:	00000613          	li	a2,0
   10040:	124000ef          	jal	10164 <main>
   10044:	1c80006f          	j	1020c <exit>

0000000000010048 <_fini>:
   10048:	00008067          	ret

000000000001004c <deregister_tm_clones>:
   1004c:	0001c537          	lui	a0,0x1c
   10050:	0001c7b7          	lui	a5,0x1c
   10054:	5b850713          	addi	a4,a0,1464 # 1c5b8 <__TMC_END__>
   10058:	5bf78793          	addi	a5,a5,1471 # 1c5bf <__TMC_END__+0x7>
   1005c:	40e787b3          	sub	a5,a5,a4
   10060:	00e00713          	li	a4,14
   10064:	00f77c63          	bleu	a5,a4,1007c <deregister_tm_clones+0x30>
   10068:	00000337          	lui	t1,0x0
   1006c:	00030313          	mv	t1,t1
   10070:	00030663          	beqz	t1,1007c <deregister_tm_clones+0x30>
   10074:	5b850513          	addi	a0,a0,1464
   10078:	00030067          	jr	t1
   1007c:	00008067          	ret

0000000000010080 <register_tm_clones>:
   10080:	0001c537          	lui	a0,0x1c
   10084:	0001c7b7          	lui	a5,0x1c
   10088:	5b850593          	addi	a1,a0,1464 # 1c5b8 <__TMC_END__>
   1008c:	5b878793          	addi	a5,a5,1464 # 1c5b8 <__TMC_END__>
   10090:	40b787b3          	sub	a5,a5,a1
   10094:	4037d793          	srai	a5,a5,0x3
   10098:	03f7d593          	srli	a1,a5,0x3f
   1009c:	00f585b3          	add	a1,a1,a5
   100a0:	4015d593          	srai	a1,a1,0x1
   100a4:	00058c63          	beqz	a1,100bc <register_tm_clones+0x3c>
   100a8:	00000337          	lui	t1,0x0
   100ac:	00030313          	mv	t1,t1
   100b0:	00030663          	beqz	t1,100bc <register_tm_clones+0x3c>
   100b4:	5b850513          	addi	a0,a0,1464
   100b8:	00030067          	jr	t1
   100bc:	00008067          	ret

00000000000100c0 <__do_global_dtors_aux>:
   100c0:	ff010113          	addi	sp,sp,-16
   100c4:	00813023          	sd	s0,0(sp)
   100c8:	8c81c783          	lbu	a5,-1848(gp) # 1c688 <_bss_start>
   100cc:	00113423          	sd	ra,8(sp)
   100d0:	02079663          	bnez	a5,100fc <__do_global_dtors_aux+0x3c>
   100d4:	f79ff0ef          	jal	1004c <deregister_tm_clones>
   100d8:	000007b7          	lui	a5,0x0
   100dc:	00078793          	mv	a5,a5
   100e0:	00078a63          	beqz	a5,100f4 <__do_global_dtors_aux+0x34>
   100e4:	0001a537          	lui	a0,0x1a
   100e8:	45050513          	addi	a0,a0,1104 # 1a450 <__fini_array_end>
   100ec:	ffff0317          	auipc	t1,0xffff0
   100f0:	f14300e7          	jalr	t1,-236 # 0 <_ftext-0x10000>
   100f4:	00100793          	li	a5,1
   100f8:	8cf18423          	sb	a5,-1848(gp) # 1c688 <_bss_start>
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
   10120:	0001a537          	lui	a0,0x1a
   10124:	8d018593          	addi	a1,gp,-1840 # 1c690 <object.3092>
   10128:	45050513          	addi	a0,a0,1104 # 1a450 <__fini_array_end>
   1012c:	ffff0317          	auipc	t1,0xffff0
   10130:	ed4300e7          	jalr	t1,-300 # 0 <_ftext-0x10000>
   10134:	0001b7b7          	lui	a5,0x1b
   10138:	5b078513          	addi	a0,a5,1456 # 1b5b0 <__JCR_END__>
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
   10164:	e6010113          	addi	sp,sp,-416
   10168:	18113c23          	sd	ra,408(sp)
   1016c:	18813823          	sd	s0,400(sp)
   10170:	1a010413          	addi	s0,sp,416
   10174:	fe042623          	sw	zero,-20(s0)
   10178:	05c0006f          	j	101d4 <main+0x70>
   1017c:	e6840713          	addi	a4,s0,-408
   10180:	fec42783          	lw	a5,-20(s0)
   10184:	00779793          	slli	a5,a5,0x7
   10188:	00f707b3          	add	a5,a4,a5
   1018c:	00078593          	mv	a1,a5
   10190:	fec42503          	lw	a0,-20(s0)
   10194:	0a8090ef          	jal	1923c <fstat>
   10198:	fea42423          	sw	a0,-24(s0)
   1019c:	fe842783          	lw	a5,-24(s0)
   101a0:	0007dc63          	bgez	a5,101b8 <main+0x54>
   101a4:	000197b7          	lui	a5,0x19
   101a8:	58078513          	addi	a0,a5,1408 # 19580 <__errno+0xc>
   101ac:	208000ef          	jal	103b4 <perror>
   101b0:	00100513          	li	a0,1
   101b4:	058000ef          	jal	1020c <exit>
   101b8:	fec42583          	lw	a1,-20(s0)
   101bc:	000197b7          	lui	a5,0x19
   101c0:	58878513          	addi	a0,a5,1416 # 19588 <__errno+0x14>
   101c4:	240000ef          	jal	10404 <printf>
   101c8:	fec42783          	lw	a5,-20(s0)
   101cc:	0017879b          	addiw	a5,a5,1
   101d0:	fef42623          	sw	a5,-20(s0)
   101d4:	fec42703          	lw	a4,-20(s0)
   101d8:	00200793          	li	a5,2
   101dc:	fae7d0e3          	ble	a4,a5,1017c <main+0x18>
   101e0:	00000793          	li	a5,0
   101e4:	00078513          	mv	a0,a5
   101e8:	19813083          	ld	ra,408(sp)
   101ec:	19013403          	ld	s0,400(sp)
   101f0:	1a010113          	addi	sp,sp,416
   101f4:	00008067          	ret

00000000000101f8 <atexit>:
   101f8:	00050593          	mv	a1,a0
   101fc:	00000693          	li	a3,0
   10200:	00000613          	li	a2,0
   10204:	00000513          	li	a0,0
   10208:	54c0206f          	j	12754 <__register_exitproc>

000000000001020c <exit>:
   1020c:	ff010113          	addi	sp,sp,-16
   10210:	00000593          	li	a1,0
   10214:	00813023          	sd	s0,0(sp)
   10218:	00113423          	sd	ra,8(sp)
   1021c:	00050413          	mv	s0,a0
   10220:	648020ef          	jal	12868 <__call_exitprocs>
   10224:	8081b503          	ld	a0,-2040(gp) # 1c5c8 <_global_impure_ptr>
   10228:	05853783          	ld	a5,88(a0)
   1022c:	00078463          	beqz	a5,10234 <exit+0x28>
   10230:	000780e7          	jalr	a5
   10234:	00040513          	mv	a0,s0
   10238:	320090ef          	jal	19558 <_exit>

000000000001023c <__libc_fini_array>:
   1023c:	fe010113          	addi	sp,sp,-32
   10240:	00813823          	sd	s0,16(sp)
   10244:	00913423          	sd	s1,8(sp)
   10248:	0001a437          	lui	s0,0x1a
   1024c:	0001a4b7          	lui	s1,0x1a
   10250:	44848493          	addi	s1,s1,1096 # 1a448 <__init_array_end>
   10254:	45040413          	addi	s0,s0,1104 # 1a450 <__fini_array_end>
   10258:	40940433          	sub	s0,s0,s1
   1025c:	ff840793          	addi	a5,s0,-8
   10260:	00113c23          	sd	ra,24(sp)
   10264:	40345413          	srai	s0,s0,0x3
   10268:	009784b3          	add	s1,a5,s1
   1026c:	00040c63          	beqz	s0,10284 <__libc_fini_array+0x48>
   10270:	0004b783          	ld	a5,0(s1)
   10274:	fff40413          	addi	s0,s0,-1
   10278:	ff848493          	addi	s1,s1,-8
   1027c:	000780e7          	jalr	a5
   10280:	fe0418e3          	bnez	s0,10270 <__libc_fini_array+0x34>
   10284:	01813083          	ld	ra,24(sp)
   10288:	01013403          	ld	s0,16(sp)
   1028c:	00813483          	ld	s1,8(sp)
   10290:	02010113          	addi	sp,sp,32
   10294:	db5ff06f          	j	10048 <_fini>

0000000000010298 <__libc_init_array>:
   10298:	fe010113          	addi	sp,sp,-32
   1029c:	00813823          	sd	s0,16(sp)
   102a0:	0001a7b7          	lui	a5,0x1a
   102a4:	0001a437          	lui	s0,0x1a
   102a8:	01213023          	sd	s2,0(sp)
   102ac:	44078793          	addi	a5,a5,1088 # 1a440 <_etext>
   102b0:	44040913          	addi	s2,s0,1088 # 1a440 <_etext>
   102b4:	41278933          	sub	s2,a5,s2
   102b8:	00913423          	sd	s1,8(sp)
   102bc:	00113c23          	sd	ra,24(sp)
   102c0:	40395913          	srai	s2,s2,0x3
   102c4:	44040413          	addi	s0,s0,1088
   102c8:	00000493          	li	s1,0
   102cc:	00090c63          	beqz	s2,102e4 <__libc_init_array+0x4c>
   102d0:	00043783          	ld	a5,0(s0)
   102d4:	00148493          	addi	s1,s1,1
   102d8:	00840413          	addi	s0,s0,8
   102dc:	000780e7          	jalr	a5
   102e0:	fe9918e3          	bne	s2,s1,102d0 <__libc_init_array+0x38>
   102e4:	d65ff0ef          	jal	10048 <_fini>
   102e8:	0001a437          	lui	s0,0x1a
   102ec:	0001a7b7          	lui	a5,0x1a
   102f0:	44040913          	addi	s2,s0,1088 # 1a440 <_etext>
   102f4:	44878793          	addi	a5,a5,1096 # 1a448 <__init_array_end>
   102f8:	41278933          	sub	s2,a5,s2
   102fc:	40395913          	srai	s2,s2,0x3
   10300:	44040413          	addi	s0,s0,1088
   10304:	00000493          	li	s1,0
   10308:	00090c63          	beqz	s2,10320 <__libc_init_array+0x88>
   1030c:	00043783          	ld	a5,0(s0)
   10310:	00148493          	addi	s1,s1,1
   10314:	00840413          	addi	s0,s0,8
   10318:	000780e7          	jalr	a5
   1031c:	fe9918e3          	bne	s2,s1,1030c <__libc_init_array+0x74>
   10320:	01813083          	ld	ra,24(sp)
   10324:	01013403          	ld	s0,16(sp)
   10328:	00813483          	ld	s1,8(sp)
   1032c:	00013903          	ld	s2,0(sp)
   10330:	02010113          	addi	sp,sp,32
   10334:	00008067          	ret

0000000000010338 <_perror_r>:
   10338:	fe010113          	addi	sp,sp,-32
   1033c:	00813823          	sd	s0,16(sp)
   10340:	00113c23          	sd	ra,24(sp)
   10344:	00050413          	mv	s0,a0
   10348:	00058863          	beqz	a1,10358 <_perror_r+0x20>
   1034c:	0005c703          	lbu	a4,0(a1)
   10350:	00058793          	mv	a5,a1
   10354:	04071063          	bnez	a4,10394 <_perror_r+0x5c>
   10358:	00042583          	lw	a1,0(s0)
   1035c:	00c10693          	addi	a3,sp,12
   10360:	00100613          	li	a2,1
   10364:	00040513          	mv	a0,s0
   10368:	0ec000ef          	jal	10454 <_strerror_r>
   1036c:	00050663          	beqz	a0,10378 <_perror_r+0x40>
   10370:	01843583          	ld	a1,24(s0)
   10374:	104040ef          	jal	14478 <fputs>
   10378:	01843583          	ld	a1,24(s0)
   1037c:	00a00513          	li	a0,10
   10380:	000040ef          	jal	14380 <fputc>
   10384:	01813083          	ld	ra,24(sp)
   10388:	01013403          	ld	s0,16(sp)
   1038c:	02010113          	addi	sp,sp,32
   10390:	00008067          	ret
   10394:	01853583          	ld	a1,24(a0)
   10398:	00078513          	mv	a0,a5
   1039c:	0dc040ef          	jal	14478 <fputs>
   103a0:	01843583          	ld	a1,24(s0)
   103a4:	0001a537          	lui	a0,0x1a
   103a8:	c1850513          	addi	a0,a0,-1000 # 19c18 <zeroes.4137+0x18>
   103ac:	0cc040ef          	jal	14478 <fputs>
   103b0:	fa9ff06f          	j	10358 <_perror_r+0x20>

00000000000103b4 <perror>:
   103b4:	00050593          	mv	a1,a0
   103b8:	8101b503          	ld	a0,-2032(gp) # 1c5d0 <_impure_ptr>
   103bc:	f7dff06f          	j	10338 <_perror_r>

00000000000103c0 <_printf_r>:
   103c0:	fb010113          	addi	sp,sp,-80
   103c4:	02c13023          	sd	a2,32(sp)
   103c8:	02d13423          	sd	a3,40(sp)
   103cc:	02f13c23          	sd	a5,56(sp)
   103d0:	02e13823          	sd	a4,48(sp)
   103d4:	05013023          	sd	a6,64(sp)
   103d8:	05113423          	sd	a7,72(sp)
   103dc:	00058613          	mv	a2,a1
   103e0:	01053583          	ld	a1,16(a0)
   103e4:	02010793          	addi	a5,sp,32
   103e8:	00078693          	mv	a3,a5
   103ec:	00113c23          	sd	ra,24(sp)
   103f0:	00f13423          	sd	a5,8(sp)
   103f4:	4a0000ef          	jal	10894 <_vfprintf_r>
   103f8:	01813083          	ld	ra,24(sp)
   103fc:	05010113          	addi	sp,sp,80
   10400:	00008067          	ret

0000000000010404 <printf>:
   10404:	8101b303          	ld	t1,-2032(gp) # 1c5d0 <_impure_ptr>
   10408:	fa010113          	addi	sp,sp,-96
   1040c:	02c13823          	sd	a2,48(sp)
   10410:	02d13c23          	sd	a3,56(sp)
   10414:	04f13423          	sd	a5,72(sp)
   10418:	02b13423          	sd	a1,40(sp)
   1041c:	04e13023          	sd	a4,64(sp)
   10420:	05013823          	sd	a6,80(sp)
   10424:	05113c23          	sd	a7,88(sp)
   10428:	01033583          	ld	a1,16(t1)
   1042c:	02810793          	addi	a5,sp,40
   10430:	00050613          	mv	a2,a0
   10434:	00078693          	mv	a3,a5
   10438:	00030513          	mv	a0,t1
   1043c:	00113c23          	sd	ra,24(sp)
   10440:	00f13423          	sd	a5,8(sp)
   10444:	450000ef          	jal	10894 <_vfprintf_r>
   10448:	01813083          	ld	ra,24(sp)
   1044c:	06010113          	addi	sp,sp,96
   10450:	00008067          	ret

0000000000010454 <_strerror_r>:
   10454:	ff010113          	addi	sp,sp,-16
   10458:	00058813          	mv	a6,a1
   1045c:	00113423          	sd	ra,8(sp)
   10460:	08e00793          	li	a5,142
   10464:	00060593          	mv	a1,a2
   10468:	3f07e463          	bltu	a5,a6,10850 <_strerror_r+0x3fc>
   1046c:	02081793          	slli	a5,a6,0x20
   10470:	01e7d713          	srli	a4,a5,0x1e
   10474:	000197b7          	lui	a5,0x19
   10478:	59c78793          	addi	a5,a5,1436 # 1959c <__errno+0x28>
   1047c:	00f707b3          	add	a5,a4,a5
   10480:	0007a783          	lw	a5,0(a5)
   10484:	00078067          	jr	a5
   10488:	0001a537          	lui	a0,0x1a
   1048c:	c2050513          	addi	a0,a0,-992 # 19c20 <zeroes.4137+0x20>
   10490:	00813083          	ld	ra,8(sp)
   10494:	01010113          	addi	sp,sp,16
   10498:	00008067          	ret
   1049c:	0001a537          	lui	a0,0x1a
   104a0:	32050513          	addi	a0,a0,800 # 1a320 <zeroes.4137+0x720>
   104a4:	fedff06f          	j	10490 <_strerror_r+0x3c>
   104a8:	0001a537          	lui	a0,0x1a
   104ac:	30850513          	addi	a0,a0,776 # 1a308 <zeroes.4137+0x708>
   104b0:	fe1ff06f          	j	10490 <_strerror_r+0x3c>
   104b4:	0001a537          	lui	a0,0x1a
   104b8:	2f050513          	addi	a0,a0,752 # 1a2f0 <zeroes.4137+0x6f0>
   104bc:	fd5ff06f          	j	10490 <_strerror_r+0x3c>
   104c0:	0001a537          	lui	a0,0x1a
   104c4:	36050513          	addi	a0,a0,864 # 1a360 <zeroes.4137+0x760>
   104c8:	fc9ff06f          	j	10490 <_strerror_r+0x3c>
   104cc:	0001a537          	lui	a0,0x1a
   104d0:	01850513          	addi	a0,a0,24 # 1a018 <zeroes.4137+0x418>
   104d4:	fbdff06f          	j	10490 <_strerror_r+0x3c>
   104d8:	0001a537          	lui	a0,0x1a
   104dc:	f4050513          	addi	a0,a0,-192 # 19f40 <zeroes.4137+0x340>
   104e0:	fb1ff06f          	j	10490 <_strerror_r+0x3c>
   104e4:	0001a537          	lui	a0,0x1a
   104e8:	2b850513          	addi	a0,a0,696 # 1a2b8 <zeroes.4137+0x6b8>
   104ec:	fa5ff06f          	j	10490 <_strerror_r+0x3c>
   104f0:	0001a537          	lui	a0,0x1a
   104f4:	2d050513          	addi	a0,a0,720 # 1a2d0 <zeroes.4137+0x6d0>
   104f8:	f99ff06f          	j	10490 <_strerror_r+0x3c>
   104fc:	0001a537          	lui	a0,0x1a
   10500:	e7850513          	addi	a0,a0,-392 # 19e78 <zeroes.4137+0x278>
   10504:	f8dff06f          	j	10490 <_strerror_r+0x3c>
   10508:	0001a537          	lui	a0,0x1a
   1050c:	27850513          	addi	a0,a0,632 # 1a278 <zeroes.4137+0x678>
   10510:	f81ff06f          	j	10490 <_strerror_r+0x3c>
   10514:	0001a537          	lui	a0,0x1a
   10518:	0c850513          	addi	a0,a0,200 # 1a0c8 <zeroes.4137+0x4c8>
   1051c:	f75ff06f          	j	10490 <_strerror_r+0x3c>
   10520:	0001a537          	lui	a0,0x1a
   10524:	38850513          	addi	a0,a0,904 # 1a388 <zeroes.4137+0x788>
   10528:	f69ff06f          	j	10490 <_strerror_r+0x3c>
   1052c:	0001a537          	lui	a0,0x1a
   10530:	d2050513          	addi	a0,a0,-736 # 19d20 <zeroes.4137+0x120>
   10534:	f5dff06f          	j	10490 <_strerror_r+0x3c>
   10538:	0001a537          	lui	a0,0x1a
   1053c:	ce050513          	addi	a0,a0,-800 # 19ce0 <zeroes.4137+0xe0>
   10540:	f51ff06f          	j	10490 <_strerror_r+0x3c>
   10544:	0001a537          	lui	a0,0x1a
   10548:	e0850513          	addi	a0,a0,-504 # 19e08 <zeroes.4137+0x208>
   1054c:	f45ff06f          	j	10490 <_strerror_r+0x3c>
   10550:	0001a537          	lui	a0,0x1a
   10554:	f1050513          	addi	a0,a0,-240 # 19f10 <zeroes.4137+0x310>
   10558:	f39ff06f          	j	10490 <_strerror_r+0x3c>
   1055c:	0001a537          	lui	a0,0x1a
   10560:	df850513          	addi	a0,a0,-520 # 19df8 <zeroes.4137+0x1f8>
   10564:	f2dff06f          	j	10490 <_strerror_r+0x3c>
   10568:	0001a537          	lui	a0,0x1a
   1056c:	3a050513          	addi	a0,a0,928 # 1a3a0 <zeroes.4137+0x7a0>
   10570:	f21ff06f          	j	10490 <_strerror_r+0x3c>
   10574:	0001a537          	lui	a0,0x1a
   10578:	e5050513          	addi	a0,a0,-432 # 19e50 <zeroes.4137+0x250>
   1057c:	f15ff06f          	j	10490 <_strerror_r+0x3c>
   10580:	0001a537          	lui	a0,0x1a
   10584:	04050513          	addi	a0,a0,64 # 1a040 <zeroes.4137+0x440>
   10588:	f09ff06f          	j	10490 <_strerror_r+0x3c>
   1058c:	0001a537          	lui	a0,0x1a
   10590:	29050513          	addi	a0,a0,656 # 1a290 <zeroes.4137+0x690>
   10594:	efdff06f          	j	10490 <_strerror_r+0x3c>
   10598:	0001a537          	lui	a0,0x1a
   1059c:	26050513          	addi	a0,a0,608 # 1a260 <zeroes.4137+0x660>
   105a0:	ef1ff06f          	j	10490 <_strerror_r+0x3c>
   105a4:	0001a537          	lui	a0,0x1a
   105a8:	22850513          	addi	a0,a0,552 # 1a228 <zeroes.4137+0x628>
   105ac:	ee5ff06f          	j	10490 <_strerror_r+0x3c>
   105b0:	0001a537          	lui	a0,0x1a
   105b4:	21050513          	addi	a0,a0,528 # 1a210 <zeroes.4137+0x610>
   105b8:	ed9ff06f          	j	10490 <_strerror_r+0x3c>
   105bc:	0001a537          	lui	a0,0x1a
   105c0:	1f050513          	addi	a0,a0,496 # 1a1f0 <zeroes.4137+0x5f0>
   105c4:	ecdff06f          	j	10490 <_strerror_r+0x3c>
   105c8:	0001a537          	lui	a0,0x1a
   105cc:	1d050513          	addi	a0,a0,464 # 1a1d0 <zeroes.4137+0x5d0>
   105d0:	ec1ff06f          	j	10490 <_strerror_r+0x3c>
   105d4:	0001a537          	lui	a0,0x1a
   105d8:	1a050513          	addi	a0,a0,416 # 1a1a0 <zeroes.4137+0x5a0>
   105dc:	eb5ff06f          	j	10490 <_strerror_r+0x3c>
   105e0:	0001a537          	lui	a0,0x1a
   105e4:	17850513          	addi	a0,a0,376 # 1a178 <zeroes.4137+0x578>
   105e8:	ea9ff06f          	j	10490 <_strerror_r+0x3c>
   105ec:	0001a537          	lui	a0,0x1a
   105f0:	24050513          	addi	a0,a0,576 # 1a240 <zeroes.4137+0x640>
   105f4:	e9dff06f          	j	10490 <_strerror_r+0x3c>
   105f8:	0001a537          	lui	a0,0x1a
   105fc:	33850513          	addi	a0,a0,824 # 1a338 <zeroes.4137+0x738>
   10600:	e91ff06f          	j	10490 <_strerror_r+0x3c>
   10604:	0001a537          	lui	a0,0x1a
   10608:	16050513          	addi	a0,a0,352 # 1a160 <zeroes.4137+0x560>
   1060c:	e85ff06f          	j	10490 <_strerror_r+0x3c>
   10610:	0001a537          	lui	a0,0x1a
   10614:	14050513          	addi	a0,a0,320 # 1a140 <zeroes.4137+0x540>
   10618:	e79ff06f          	j	10490 <_strerror_r+0x3c>
   1061c:	0001a537          	lui	a0,0x1a
   10620:	12850513          	addi	a0,a0,296 # 1a128 <zeroes.4137+0x528>
   10624:	e6dff06f          	j	10490 <_strerror_r+0x3c>
   10628:	0001a537          	lui	a0,0x1a
   1062c:	10850513          	addi	a0,a0,264 # 1a108 <zeroes.4137+0x508>
   10630:	e61ff06f          	j	10490 <_strerror_r+0x3c>
   10634:	0001a537          	lui	a0,0x1a
   10638:	0f850513          	addi	a0,a0,248 # 1a0f8 <zeroes.4137+0x4f8>
   1063c:	e55ff06f          	j	10490 <_strerror_r+0x3c>
   10640:	0001a537          	lui	a0,0x1a
   10644:	0e050513          	addi	a0,a0,224 # 1a0e0 <zeroes.4137+0x4e0>
   10648:	e49ff06f          	j	10490 <_strerror_r+0x3c>
   1064c:	0001a537          	lui	a0,0x1a
   10650:	0b850513          	addi	a0,a0,184 # 1a0b8 <zeroes.4137+0x4b8>
   10654:	e3dff06f          	j	10490 <_strerror_r+0x3c>
   10658:	0001a537          	lui	a0,0x1a
   1065c:	0a050513          	addi	a0,a0,160 # 1a0a0 <zeroes.4137+0x4a0>
   10660:	e31ff06f          	j	10490 <_strerror_r+0x3c>
   10664:	0001a537          	lui	a0,0x1a
   10668:	08850513          	addi	a0,a0,136 # 1a088 <zeroes.4137+0x488>
   1066c:	e25ff06f          	j	10490 <_strerror_r+0x3c>
   10670:	0001a537          	lui	a0,0x1a
   10674:	07050513          	addi	a0,a0,112 # 1a070 <zeroes.4137+0x470>
   10678:	e19ff06f          	j	10490 <_strerror_r+0x3c>
   1067c:	0001a537          	lui	a0,0x1a
   10680:	19850513          	addi	a0,a0,408 # 1a198 <zeroes.4137+0x598>
   10684:	e0dff06f          	j	10490 <_strerror_r+0x3c>
   10688:	0001a537          	lui	a0,0x1a
   1068c:	06050513          	addi	a0,a0,96 # 1a060 <zeroes.4137+0x460>
   10690:	e01ff06f          	j	10490 <_strerror_r+0x3c>
   10694:	0001a537          	lui	a0,0x1a
   10698:	05850513          	addi	a0,a0,88 # 1a058 <zeroes.4137+0x458>
   1069c:	df5ff06f          	j	10490 <_strerror_r+0x3c>
   106a0:	0001a537          	lui	a0,0x1a
   106a4:	03050513          	addi	a0,a0,48 # 1a030 <zeroes.4137+0x430>
   106a8:	de9ff06f          	j	10490 <_strerror_r+0x3c>
   106ac:	0001a537          	lui	a0,0x1a
   106b0:	00050513          	mv	a0,a0
   106b4:	dddff06f          	j	10490 <_strerror_r+0x3c>
   106b8:	0001a537          	lui	a0,0x1a
   106bc:	fe050513          	addi	a0,a0,-32 # 19fe0 <zeroes.4137+0x3e0>
   106c0:	dd1ff06f          	j	10490 <_strerror_r+0x3c>
   106c4:	0001a537          	lui	a0,0x1a
   106c8:	fc850513          	addi	a0,a0,-56 # 19fc8 <zeroes.4137+0x3c8>
   106cc:	dc5ff06f          	j	10490 <_strerror_r+0x3c>
   106d0:	0001a537          	lui	a0,0x1a
   106d4:	f9850513          	addi	a0,a0,-104 # 19f98 <zeroes.4137+0x398>
   106d8:	db9ff06f          	j	10490 <_strerror_r+0x3c>
   106dc:	0001a537          	lui	a0,0x1a
   106e0:	f8850513          	addi	a0,a0,-120 # 19f88 <zeroes.4137+0x388>
   106e4:	dadff06f          	j	10490 <_strerror_r+0x3c>
   106e8:	0001a537          	lui	a0,0x1a
   106ec:	f7850513          	addi	a0,a0,-136 # 19f78 <zeroes.4137+0x378>
   106f0:	da1ff06f          	j	10490 <_strerror_r+0x3c>
   106f4:	0001a537          	lui	a0,0x1a
   106f8:	f6050513          	addi	a0,a0,-160 # 19f60 <zeroes.4137+0x360>
   106fc:	d95ff06f          	j	10490 <_strerror_r+0x3c>
   10700:	0001a537          	lui	a0,0x1a
   10704:	f5050513          	addi	a0,a0,-176 # 19f50 <zeroes.4137+0x350>
   10708:	d89ff06f          	j	10490 <_strerror_r+0x3c>
   1070c:	0001a537          	lui	a0,0x1a
   10710:	f2850513          	addi	a0,a0,-216 # 19f28 <zeroes.4137+0x328>
   10714:	d7dff06f          	j	10490 <_strerror_r+0x3c>
   10718:	0001a537          	lui	a0,0x1a
   1071c:	f0050513          	addi	a0,a0,-256 # 19f00 <zeroes.4137+0x300>
   10720:	d71ff06f          	j	10490 <_strerror_r+0x3c>
   10724:	0001a537          	lui	a0,0x1a
   10728:	ef050513          	addi	a0,a0,-272 # 19ef0 <zeroes.4137+0x2f0>
   1072c:	d65ff06f          	j	10490 <_strerror_r+0x3c>
   10730:	0001a537          	lui	a0,0x1a
   10734:	ed850513          	addi	a0,a0,-296 # 19ed8 <zeroes.4137+0x2d8>
   10738:	d59ff06f          	j	10490 <_strerror_r+0x3c>
   1073c:	0001a537          	lui	a0,0x1a
   10740:	eb850513          	addi	a0,a0,-328 # 19eb8 <zeroes.4137+0x2b8>
   10744:	d4dff06f          	j	10490 <_strerror_r+0x3c>
   10748:	0001a537          	lui	a0,0x1a
   1074c:	e9850513          	addi	a0,a0,-360 # 19e98 <zeroes.4137+0x298>
   10750:	d41ff06f          	j	10490 <_strerror_r+0x3c>
   10754:	0001a537          	lui	a0,0x1a
   10758:	e3850513          	addi	a0,a0,-456 # 19e38 <zeroes.4137+0x238>
   1075c:	d35ff06f          	j	10490 <_strerror_r+0x3c>
   10760:	0001a537          	lui	a0,0x1a
   10764:	e2850513          	addi	a0,a0,-472 # 19e28 <zeroes.4137+0x228>
   10768:	d29ff06f          	j	10490 <_strerror_r+0x3c>
   1076c:	0001a537          	lui	a0,0x1a
   10770:	de850513          	addi	a0,a0,-536 # 19de8 <zeroes.4137+0x1e8>
   10774:	d1dff06f          	j	10490 <_strerror_r+0x3c>
   10778:	0001a537          	lui	a0,0x1a
   1077c:	dd850513          	addi	a0,a0,-552 # 19dd8 <zeroes.4137+0x1d8>
   10780:	d11ff06f          	j	10490 <_strerror_r+0x3c>
   10784:	0001a537          	lui	a0,0x1a
   10788:	dc050513          	addi	a0,a0,-576 # 19dc0 <zeroes.4137+0x1c0>
   1078c:	d05ff06f          	j	10490 <_strerror_r+0x3c>
   10790:	0001a537          	lui	a0,0x1a
   10794:	db050513          	addi	a0,a0,-592 # 19db0 <zeroes.4137+0x1b0>
   10798:	cf9ff06f          	j	10490 <_strerror_r+0x3c>
   1079c:	0001a537          	lui	a0,0x1a
   107a0:	d9850513          	addi	a0,a0,-616 # 19d98 <zeroes.4137+0x198>
   107a4:	cedff06f          	j	10490 <_strerror_r+0x3c>
   107a8:	0001a537          	lui	a0,0x1a
   107ac:	d8850513          	addi	a0,a0,-632 # 19d88 <zeroes.4137+0x188>
   107b0:	ce1ff06f          	j	10490 <_strerror_r+0x3c>
   107b4:	0001a537          	lui	a0,0x1a
   107b8:	d7050513          	addi	a0,a0,-656 # 19d70 <zeroes.4137+0x170>
   107bc:	cd5ff06f          	j	10490 <_strerror_r+0x3c>
   107c0:	0001a537          	lui	a0,0x1a
   107c4:	d5850513          	addi	a0,a0,-680 # 19d58 <zeroes.4137+0x158>
   107c8:	cc9ff06f          	j	10490 <_strerror_r+0x3c>
   107cc:	0001a537          	lui	a0,0x1a
   107d0:	d4050513          	addi	a0,a0,-704 # 19d40 <zeroes.4137+0x140>
   107d4:	cbdff06f          	j	10490 <_strerror_r+0x3c>
   107d8:	0001a537          	lui	a0,0x1a
   107dc:	d1050513          	addi	a0,a0,-752 # 19d10 <zeroes.4137+0x110>
   107e0:	cb1ff06f          	j	10490 <_strerror_r+0x3c>
   107e4:	0001a537          	lui	a0,0x1a
   107e8:	d0050513          	addi	a0,a0,-768 # 19d00 <zeroes.4137+0x100>
   107ec:	ca5ff06f          	j	10490 <_strerror_r+0x3c>
   107f0:	0001a537          	lui	a0,0x1a
   107f4:	cc850513          	addi	a0,a0,-824 # 19cc8 <zeroes.4137+0xc8>
   107f8:	c99ff06f          	j	10490 <_strerror_r+0x3c>
   107fc:	0001a537          	lui	a0,0x1a
   10800:	cb050513          	addi	a0,a0,-848 # 19cb0 <zeroes.4137+0xb0>
   10804:	c8dff06f          	j	10490 <_strerror_r+0x3c>
   10808:	0001a537          	lui	a0,0x1a
   1080c:	c9050513          	addi	a0,a0,-880 # 19c90 <zeroes.4137+0x90>
   10810:	c81ff06f          	j	10490 <_strerror_r+0x3c>
   10814:	0001a537          	lui	a0,0x1a
   10818:	c8050513          	addi	a0,a0,-896 # 19c80 <zeroes.4137+0x80>
   1081c:	c75ff06f          	j	10490 <_strerror_r+0x3c>
   10820:	0001a537          	lui	a0,0x1a
   10824:	c6850513          	addi	a0,a0,-920 # 19c68 <zeroes.4137+0x68>
   10828:	c69ff06f          	j	10490 <_strerror_r+0x3c>
   1082c:	0001a537          	lui	a0,0x1a
   10830:	c5850513          	addi	a0,a0,-936 # 19c58 <zeroes.4137+0x58>
   10834:	c5dff06f          	j	10490 <_strerror_r+0x3c>
   10838:	0001a537          	lui	a0,0x1a
   1083c:	c3850513          	addi	a0,a0,-968 # 19c38 <zeroes.4137+0x38>
   10840:	c51ff06f          	j	10490 <_strerror_r+0x3c>
   10844:	0001a537          	lui	a0,0x1a
   10848:	c2850513          	addi	a0,a0,-984 # 19c28 <zeroes.4137+0x28>
   1084c:	c45ff06f          	j	10490 <_strerror_r+0x3c>
   10850:	02068063          	beqz	a3,10870 <_strerror_r+0x41c>
   10854:	00068613          	mv	a2,a3
   10858:	00080513          	mv	a0,a6
   1085c:	030000ef          	jal	1088c <_user_strerror>
   10860:	c20518e3          	bnez	a0,10490 <_strerror_r+0x3c>
   10864:	0001a537          	lui	a0,0x1a
   10868:	3e850513          	addi	a0,a0,1000 # 1a3e8 <zeroes.4137+0x7e8>
   1086c:	c25ff06f          	j	10490 <_strerror_r+0x3c>
   10870:	00050693          	mv	a3,a0
   10874:	fe1ff06f          	j	10854 <_strerror_r+0x400>

0000000000010878 <strerror>:
   10878:	00050593          	mv	a1,a0
   1087c:	8101b503          	ld	a0,-2032(gp) # 1c5d0 <_impure_ptr>
   10880:	00000693          	li	a3,0
   10884:	00000613          	li	a2,0
   10888:	bcdff06f          	j	10454 <_strerror_r>

000000000001088c <_user_strerror>:
   1088c:	00000513          	li	a0,0
   10890:	00008067          	ret

0000000000010894 <_vfprintf_r>:
   10894:	e1010113          	addi	sp,sp,-496
   10898:	1e113423          	sd	ra,488(sp)
   1089c:	1d313423          	sd	s3,456(sp)
   108a0:	1d413023          	sd	s4,448(sp)
   108a4:	1b713423          	sd	s7,424(sp)
   108a8:	00058a13          	mv	s4,a1
   108ac:	00060993          	mv	s3,a2
   108b0:	02d13423          	sd	a3,40(sp)
   108b4:	1e813023          	sd	s0,480(sp)
   108b8:	1c913c23          	sd	s1,472(sp)
   108bc:	1d213823          	sd	s2,464(sp)
   108c0:	1b513c23          	sd	s5,440(sp)
   108c4:	1b613823          	sd	s6,432(sp)
   108c8:	1b813023          	sd	s8,416(sp)
   108cc:	19913c23          	sd	s9,408(sp)
   108d0:	19a13823          	sd	s10,400(sp)
   108d4:	19b13423          	sd	s11,392(sp)
   108d8:	16813c27          	fsd	fs0,376(sp)
   108dc:	00050b93          	mv	s7,a0
   108e0:	694040ef          	jal	14f74 <_localeconv_r>
   108e4:	00053783          	ld	a5,0(a0)
   108e8:	00078513          	mv	a0,a5
   108ec:	06f13023          	sd	a5,96(sp)
   108f0:	609060ef          	jal	176f8 <strlen>
   108f4:	06a13423          	sd	a0,104(sp)
   108f8:	000b8663          	beqz	s7,10904 <_vfprintf_r+0x70>
   108fc:	050ba783          	lw	a5,80(s7)
   10900:	2e078c63          	beqz	a5,10bf8 <_vfprintf_r+0x364>
   10904:	010a1683          	lh	a3,16(s4)
   10908:	03069793          	slli	a5,a3,0x30
   1090c:	0307d793          	srli	a5,a5,0x30
   10910:	03279713          	slli	a4,a5,0x32
   10914:	02074a63          	bltz	a4,10948 <_vfprintf_r+0xb4>
   10918:	000027b7          	lui	a5,0x2
   1091c:	0aca2603          	lw	a2,172(s4)
   10920:	00f6e7b3          	or	a5,a3,a5
   10924:	0107979b          	slliw	a5,a5,0x10
   10928:	ffffe737          	lui	a4,0xffffe
   1092c:	4107d79b          	sraiw	a5,a5,0x10
   10930:	fff7071b          	addiw	a4,a4,-1
   10934:	00e67733          	and	a4,a2,a4
   10938:	00fa1823          	sh	a5,16(s4)
   1093c:	03079793          	slli	a5,a5,0x30
   10940:	0aea2623          	sw	a4,172(s4)
   10944:	0307d793          	srli	a5,a5,0x30
   10948:	0087f713          	andi	a4,a5,8
   1094c:	1e070063          	beqz	a4,10b2c <_vfprintf_r+0x298>
   10950:	018a3703          	ld	a4,24(s4)
   10954:	1c070c63          	beqz	a4,10b2c <_vfprintf_r+0x298>
   10958:	01a7f793          	andi	a5,a5,26
   1095c:	00a00713          	li	a4,10
   10960:	1ee78863          	beq	a5,a4,10b50 <_vfprintf_r+0x2bc>
   10964:	000197b7          	lui	a5,0x19
   10968:	7d878793          	addi	a5,a5,2008 # 197d8 <__errno+0x264>
   1096c:	0f010b13          	addi	s6,sp,240
   10970:	02f13823          	sd	a5,48(sp)
   10974:	0ef10793          	addi	a5,sp,239
   10978:	0001aab7          	lui	s5,0x1a
   1097c:	0001a4b7          	lui	s1,0x1a
   10980:	40fb07b3          	sub	a5,s6,a5
   10984:	04013c23          	sd	zero,88(sp)
   10988:	0b613823          	sd	s6,176(sp)
   1098c:	0c013023          	sd	zero,192(sp)
   10990:	0a012c23          	sw	zero,184(sp)
   10994:	06012823          	sw	zero,112(sp)
   10998:	000b0893          	mv	a7,s6
   1099c:	02013c23          	sd	zero,56(sp)
   109a0:	06012a23          	sw	zero,116(sp)
   109a4:	00012e23          	sw	zero,28(sp)
   109a8:	940a8a93          	addi	s5,s5,-1728 # 19940 <blanks.4193>
   109ac:	95048493          	addi	s1,s1,-1712 # 19950 <zeroes.4194>
   109b0:	06f13c23          	sd	a5,120(sp)
   109b4:	0009c783          	lbu	a5,0(s3)
   109b8:	0e0782e3          	beqz	a5,1129c <_vfprintf_r+0xa08>
   109bc:	02500713          	li	a4,37
   109c0:	00098413          	mv	s0,s3
   109c4:	00e79663          	bne	a5,a4,109d0 <_vfprintf_r+0x13c>
   109c8:	0580006f          	j	10a20 <_vfprintf_r+0x18c>
   109cc:	00e78863          	beq	a5,a4,109dc <_vfprintf_r+0x148>
   109d0:	00140413          	addi	s0,s0,1
   109d4:	00044783          	lbu	a5,0(s0)
   109d8:	fe079ae3          	bnez	a5,109cc <_vfprintf_r+0x138>
   109dc:	4134093b          	subw	s2,s0,s3
   109e0:	04090063          	beqz	s2,10a20 <_vfprintf_r+0x18c>
   109e4:	0c013703          	ld	a4,192(sp)
   109e8:	0b812783          	lw	a5,184(sp)
   109ec:	00090693          	mv	a3,s2
   109f0:	00d70733          	add	a4,a4,a3
   109f4:	0017879b          	addiw	a5,a5,1
   109f8:	0138b023          	sd	s3,0(a7)
   109fc:	00d8b423          	sd	a3,8(a7)
   10a00:	0ce13023          	sd	a4,192(sp)
   10a04:	0af12c23          	sw	a5,184(sp)
   10a08:	00700713          	li	a4,7
   10a0c:	01088893          	addi	a7,a7,16
   10a10:	16f74063          	blt	a4,a5,10b70 <_vfprintf_r+0x2dc>
   10a14:	01c12783          	lw	a5,28(sp)
   10a18:	012787bb          	addw	a5,a5,s2
   10a1c:	00f12e23          	sw	a5,28(sp)
   10a20:	00044783          	lbu	a5,0(s0)
   10a24:	16078463          	beqz	a5,10b8c <_vfprintf_r+0x2f8>
   10a28:	00140993          	addi	s3,s0,1
   10a2c:	080107a3          	sb	zero,143(sp)
   10a30:	00000613          	li	a2,0
   10a34:	00000593          	li	a1,0
   10a38:	fff00413          	li	s0,-1
   10a3c:	00012c23          	sw	zero,24(sp)
   10a40:	00000c13          	li	s8,0
   10a44:	05800713          	li	a4,88
   10a48:	00900693          	li	a3,9
   10a4c:	02a00513          	li	a0,42
   10a50:	0009cd03          	lbu	s10,0(s3)
   10a54:	00198993          	addi	s3,s3,1
   10a58:	fe0d079b          	addiw	a5,s10,-32
   10a5c:	1cf762e3          	bltu	a4,a5,11420 <_vfprintf_r+0xb8c>
   10a60:	03013803          	ld	a6,48(sp)
   10a64:	02079793          	slli	a5,a5,0x20
   10a68:	01e7d793          	srli	a5,a5,0x1e
   10a6c:	010787b3          	add	a5,a5,a6
   10a70:	0007a783          	lw	a5,0(a5)
   10a74:	00078067          	jr	a5
   10a78:	010c6c13          	ori	s8,s8,16
   10a7c:	fd5ff06f          	j	10a50 <_vfprintf_r+0x1bc>
   10a80:	02813783          	ld	a5,40(sp)
   10a84:	0007a803          	lw	a6,0(a5)
   10a88:	00878793          	addi	a5,a5,8
   10a8c:	02f13423          	sd	a5,40(sp)
   10a90:	01012c23          	sw	a6,24(sp)
   10a94:	fa085ee3          	bgez	a6,10a50 <_vfprintf_r+0x1bc>
   10a98:	410007bb          	negw	a5,a6
   10a9c:	00f12c23          	sw	a5,24(sp)
   10aa0:	004c6c13          	ori	s8,s8,4
   10aa4:	fadff06f          	j	10a50 <_vfprintf_r+0x1bc>
   10aa8:	03000793          	li	a5,48
   10aac:	08f10823          	sb	a5,144(sp)
   10ab0:	07800793          	li	a5,120
   10ab4:	08f108a3          	sb	a5,145(sp)
   10ab8:	02813783          	ld	a5,40(sp)
   10abc:	080107a3          	sb	zero,143(sp)
   10ac0:	002c6693          	ori	a3,s8,2
   10ac4:	00878713          	addi	a4,a5,8
   10ac8:	0007b783          	ld	a5,0(a5)
   10acc:	180444e3          	bltz	s0,11454 <_vfprintf_r+0xbc0>
   10ad0:	f7fc7c13          	andi	s8,s8,-129
   10ad4:	02e13423          	sd	a4,40(sp)
   10ad8:	002c6c13          	ori	s8,s8,2
   10adc:	120796e3          	bnez	a5,11408 <_vfprintf_r+0xb74>
   10ae0:	0001a7b7          	lui	a5,0x1a
   10ae4:	3f078793          	addi	a5,a5,1008 # 1a3f0 <zeroes.4137+0x7f0>
   10ae8:	02f13c23          	sd	a5,56(sp)
   10aec:	07800d13          	li	s10,120
   10af0:	00000613          	li	a2,0
   10af4:	7e040463          	beqz	s0,112dc <_vfprintf_r+0xa48>
   10af8:	00000793          	li	a5,0
   10afc:	000b0913          	mv	s2,s6
   10b00:	03813683          	ld	a3,56(sp)
   10b04:	00f7f713          	andi	a4,a5,15
   10b08:	fff90913          	addi	s2,s2,-1
   10b0c:	00e68733          	add	a4,a3,a4
   10b10:	00074703          	lbu	a4,0(a4) # ffffffffffffe000 <_gp+0xfffffffffffe1240>
   10b14:	0047d793          	srli	a5,a5,0x4
   10b18:	00e90023          	sb	a4,0(s2)
   10b1c:	fe0792e3          	bnez	a5,10b00 <_vfprintf_r+0x26c>
   10b20:	412b07b3          	sub	a5,s6,s2
   10b24:	02f12023          	sw	a5,32(sp)
   10b28:	1680006f          	j	10c90 <_vfprintf_r+0x3fc>
   10b2c:	000a0593          	mv	a1,s4
   10b30:	000b8513          	mv	a0,s7
   10b34:	2bd010ef          	jal	125f0 <__swsetup_r>
   10b38:	00050463          	beqz	a0,10b40 <_vfprintf_r+0x2ac>
   10b3c:	3940106f          	j	11ed0 <_vfprintf_r+0x163c>
   10b40:	010a5783          	lhu	a5,16(s4)
   10b44:	00a00713          	li	a4,10
   10b48:	01a7f793          	andi	a5,a5,26
   10b4c:	e0e79ce3          	bne	a5,a4,10964 <_vfprintf_r+0xd0>
   10b50:	012a1783          	lh	a5,18(s4)
   10b54:	e007c8e3          	bltz	a5,10964 <_vfprintf_r+0xd0>
   10b58:	02813683          	ld	a3,40(sp)
   10b5c:	00098613          	mv	a2,s3
   10b60:	000a0593          	mv	a1,s4
   10b64:	000b8513          	mv	a0,s7
   10b68:	1c9010ef          	jal	12530 <__sbprintf>
   10b6c:	04c0006f          	j	10bb8 <_vfprintf_r+0x324>
   10b70:	0b010613          	addi	a2,sp,176
   10b74:	000a0593          	mv	a1,s4
   10b78:	000b8513          	mv	a0,s7
   10b7c:	539060ef          	jal	178b4 <__sprint_r>
   10b80:	02051263          	bnez	a0,10ba4 <_vfprintf_r+0x310>
   10b84:	000b0893          	mv	a7,s6
   10b88:	e8dff06f          	j	10a14 <_vfprintf_r+0x180>
   10b8c:	0c013783          	ld	a5,192(sp)
   10b90:	00078a63          	beqz	a5,10ba4 <_vfprintf_r+0x310>
   10b94:	0b010613          	addi	a2,sp,176
   10b98:	000a0593          	mv	a1,s4
   10b9c:	000b8513          	mv	a0,s7
   10ba0:	515060ef          	jal	178b4 <__sprint_r>
   10ba4:	010a5783          	lhu	a5,16(s4)
   10ba8:	0407f793          	andi	a5,a5,64
   10bac:	00078463          	beqz	a5,10bb4 <_vfprintf_r+0x320>
   10bb0:	3200106f          	j	11ed0 <_vfprintf_r+0x163c>
   10bb4:	01c12503          	lw	a0,28(sp)
   10bb8:	1e813083          	ld	ra,488(sp)
   10bbc:	1e013403          	ld	s0,480(sp)
   10bc0:	1d813483          	ld	s1,472(sp)
   10bc4:	1d013903          	ld	s2,464(sp)
   10bc8:	1c813983          	ld	s3,456(sp)
   10bcc:	1c013a03          	ld	s4,448(sp)
   10bd0:	1b813a83          	ld	s5,440(sp)
   10bd4:	1b013b03          	ld	s6,432(sp)
   10bd8:	1a813b83          	ld	s7,424(sp)
   10bdc:	1a013c03          	ld	s8,416(sp)
   10be0:	19813c83          	ld	s9,408(sp)
   10be4:	19013d03          	ld	s10,400(sp)
   10be8:	18813d83          	ld	s11,392(sp)
   10bec:	17813407          	fld	fs0,376(sp)
   10bf0:	1f010113          	addi	sp,sp,496
   10bf4:	00008067          	ret
   10bf8:	000b8513          	mv	a0,s7
   10bfc:	700030ef          	jal	142fc <__sinit>
   10c00:	d05ff06f          	j	10904 <_vfprintf_r+0x70>
   10c04:	00100613          	li	a2,1
   10c08:	02b00593          	li	a1,43
   10c0c:	e45ff06f          	j	10a50 <_vfprintf_r+0x1bc>
   10c10:	00060463          	beqz	a2,10c18 <_vfprintf_r+0x384>
   10c14:	0d90106f          	j	124ec <_vfprintf_r+0x1c58>
   10c18:	010c7793          	andi	a5,s8,16
   10c1c:	22078263          	beqz	a5,10e40 <_vfprintf_r+0x5ac>
   10c20:	02813783          	ld	a5,40(sp)
   10c24:	080107a3          	sb	zero,143(sp)
   10c28:	00878713          	addi	a4,a5,8
   10c2c:	0007b783          	ld	a5,0(a5)
   10c30:	22044663          	bltz	s0,10e5c <_vfprintf_r+0x5c8>
   10c34:	02e13423          	sd	a4,40(sp)
   10c38:	f7fc7c13          	andi	s8,s8,-129
   10c3c:	22079663          	bnez	a5,10e68 <_vfprintf_r+0x5d4>
   10c40:	00000613          	li	a2,0
   10c44:	00000793          	li	a5,0
   10c48:	00041463          	bnez	s0,10c50 <_vfprintf_r+0x3bc>
   10c4c:	3680106f          	j	11fb4 <_vfprintf_r+0x1720>
   10c50:	000b0913          	mv	s2,s6
   10c54:	0077f713          	andi	a4,a5,7
   10c58:	fff90913          	addi	s2,s2,-1
   10c5c:	0307071b          	addiw	a4,a4,48
   10c60:	00e90023          	sb	a4,0(s2)
   10c64:	0037d793          	srli	a5,a5,0x3
   10c68:	fe0796e3          	bnez	a5,10c54 <_vfprintf_r+0x3c0>
   10c6c:	001c7793          	andi	a5,s8,1
   10c70:	ea0788e3          	beqz	a5,10b20 <_vfprintf_r+0x28c>
   10c74:	03000793          	li	a5,48
   10c78:	eaf704e3          	beq	a4,a5,10b20 <_vfprintf_r+0x28c>
   10c7c:	fff90713          	addi	a4,s2,-1
   10c80:	40eb06b3          	sub	a3,s6,a4
   10c84:	fef90fa3          	sb	a5,-1(s2)
   10c88:	02d12023          	sw	a3,32(sp)
   10c8c:	00070913          	mv	s2,a4
   10c90:	02012783          	lw	a5,32(sp)
   10c94:	00078d93          	mv	s11,a5
   10c98:	0087d463          	ble	s0,a5,10ca0 <_vfprintf_r+0x40c>
   10c9c:	00040d93          	mv	s11,s0
   10ca0:	01b12423          	sw	s11,8(sp)
   10ca4:	04012623          	sw	zero,76(sp)
   10ca8:	2a060263          	beqz	a2,10f4c <_vfprintf_r+0x6b8>
   10cac:	00812783          	lw	a5,8(sp)
   10cb0:	0017879b          	addiw	a5,a5,1
   10cb4:	00f12423          	sw	a5,8(sp)
   10cb8:	2940006f          	j	10f4c <_vfprintf_r+0x6b8>
   10cbc:	0009cd03          	lbu	s10,0(s3)
   10cc0:	00198993          	addi	s3,s3,1
   10cc4:	00ad1463          	bne	s10,a0,10ccc <_vfprintf_r+0x438>
   10cc8:	75c0106f          	j	12424 <_vfprintf_r+0x1b90>
   10ccc:	fd0d079b          	addiw	a5,s10,-48
   10cd0:	00000413          	li	s0,0
   10cd4:	d8f6e2e3          	bltu	a3,a5,10a58 <_vfprintf_r+0x1c4>
   10cd8:	00198993          	addi	s3,s3,1
   10cdc:	fff9cd03          	lbu	s10,-1(s3)
   10ce0:	0014181b          	slliw	a6,s0,0x1
   10ce4:	0034141b          	slliw	s0,s0,0x3
   10ce8:	0088043b          	addw	s0,a6,s0
   10cec:	00f4043b          	addw	s0,s0,a5
   10cf0:	fd0d079b          	addiw	a5,s10,-48
   10cf4:	fef6f2e3          	bleu	a5,a3,10cd8 <_vfprintf_r+0x444>
   10cf8:	d60450e3          	bgez	s0,10a58 <_vfprintf_r+0x1c4>
   10cfc:	fff00413          	li	s0,-1
   10d00:	d59ff06f          	j	10a58 <_vfprintf_r+0x1c4>
   10d04:	080c6c13          	ori	s8,s8,128
   10d08:	d49ff06f          	j	10a50 <_vfprintf_r+0x1bc>
   10d0c:	d40592e3          	bnez	a1,10a50 <_vfprintf_r+0x1bc>
   10d10:	00100613          	li	a2,1
   10d14:	02000593          	li	a1,32
   10d18:	d39ff06f          	j	10a50 <_vfprintf_r+0x1bc>
   10d1c:	001c6c13          	ori	s8,s8,1
   10d20:	d31ff06f          	j	10a50 <_vfprintf_r+0x1bc>
   10d24:	02813783          	ld	a5,40(sp)
   10d28:	080107a3          	sb	zero,143(sp)
   10d2c:	0007b903          	ld	s2,0(a5)
   10d30:	00878c93          	addi	s9,a5,8
   10d34:	00091463          	bnez	s2,10d3c <_vfprintf_r+0x4a8>
   10d38:	39c0106f          	j	120d4 <_vfprintf_r+0x1840>
   10d3c:	01113023          	sd	a7,0(sp)
   10d40:	00045463          	bgez	s0,10d48 <_vfprintf_r+0x4b4>
   10d44:	3240106f          	j	12068 <_vfprintf_r+0x17d4>
   10d48:	00040613          	mv	a2,s0
   10d4c:	00000593          	li	a1,0
   10d50:	00090513          	mv	a0,s2
   10d54:	365040ef          	jal	158b8 <memchr>
   10d58:	00013883          	ld	a7,0(sp)
   10d5c:	00051463          	bnez	a0,10d64 <_vfprintf_r+0x4d0>
   10d60:	4c00106f          	j	12220 <_vfprintf_r+0x198c>
   10d64:	412507bb          	subw	a5,a0,s2
   10d68:	02f12023          	sw	a5,32(sp)
   10d6c:	00078d93          	mv	s11,a5
   10d70:	0007d463          	bgez	a5,10d78 <_vfprintf_r+0x4e4>
   10d74:	3140106f          	j	12088 <_vfprintf_r+0x17f4>
   10d78:	08f14603          	lbu	a2,143(sp)
   10d7c:	01b12423          	sw	s11,8(sp)
   10d80:	03913423          	sd	s9,40(sp)
   10d84:	00000413          	li	s0,0
   10d88:	04012623          	sw	zero,76(sp)
   10d8c:	f1dff06f          	j	10ca8 <_vfprintf_r+0x414>
   10d90:	00060463          	beqz	a2,10d98 <_vfprintf_r+0x504>
   10d94:	7800106f          	j	12514 <_vfprintf_r+0x1c80>
   10d98:	010c7793          	andi	a5,s8,16
   10d9c:	0e078463          	beqz	a5,10e84 <_vfprintf_r+0x5f0>
   10da0:	02813783          	ld	a5,40(sp)
   10da4:	080107a3          	sb	zero,143(sp)
   10da8:	00878713          	addi	a4,a5,8
   10dac:	0007b783          	ld	a5,0(a5)
   10db0:	0e044863          	bltz	s0,10ea0 <_vfprintf_r+0x60c>
   10db4:	02e13423          	sd	a4,40(sp)
   10db8:	f7fc7c13          	andi	s8,s8,-129
   10dbc:	00000613          	li	a2,0
   10dc0:	50078c63          	beqz	a5,112d8 <_vfprintf_r+0xa44>
   10dc4:	00900713          	li	a4,9
   10dc8:	000b0913          	mv	s2,s6
   10dcc:	00a00693          	li	a3,10
   10dd0:	40f770e3          	bleu	a5,a4,119d0 <_vfprintf_r+0x113c>
   10dd4:	02d7f733          	remu	a4,a5,a3
   10dd8:	fff90913          	addi	s2,s2,-1
   10ddc:	02d7d7b3          	divu	a5,a5,a3
   10de0:	0307071b          	addiw	a4,a4,48
   10de4:	00e90023          	sb	a4,0(s2)
   10de8:	fe0796e3          	bnez	a5,10dd4 <_vfprintf_r+0x540>
   10dec:	412b07b3          	sub	a5,s6,s2
   10df0:	02f12023          	sw	a5,32(sp)
   10df4:	e9dff06f          	j	10c90 <_vfprintf_r+0x3fc>
   10df8:	00012c23          	sw	zero,24(sp)
   10dfc:	fd0d079b          	addiw	a5,s10,-48
   10e00:	01812303          	lw	t1,24(sp)
   10e04:	00198993          	addi	s3,s3,1
   10e08:	fff9cd03          	lbu	s10,-1(s3)
   10e0c:	0013181b          	slliw	a6,t1,0x1
   10e10:	00331c9b          	slliw	s9,t1,0x3
   10e14:	01980cbb          	addw	s9,a6,s9
   10e18:	019787bb          	addw	a5,a5,s9
   10e1c:	00f12c23          	sw	a5,24(sp)
   10e20:	fd0d079b          	addiw	a5,s10,-48
   10e24:	fcf6fee3          	bleu	a5,a3,10e00 <_vfprintf_r+0x56c>
   10e28:	c31ff06f          	j	10a58 <_vfprintf_r+0x1c4>
   10e2c:	00060463          	beqz	a2,10e34 <_vfprintf_r+0x5a0>
   10e30:	6d80106f          	j	12508 <_vfprintf_r+0x1c74>
   10e34:	010c6c13          	ori	s8,s8,16
   10e38:	010c7793          	andi	a5,s8,16
   10e3c:	de0792e3          	bnez	a5,10c20 <_vfprintf_r+0x38c>
   10e40:	040c7793          	andi	a5,s8,64
   10e44:	080107a3          	sb	zero,143(sp)
   10e48:	580780e3          	beqz	a5,11bc8 <_vfprintf_r+0x1334>
   10e4c:	02813783          	ld	a5,40(sp)
   10e50:	00878713          	addi	a4,a5,8
   10e54:	0007d783          	lhu	a5,0(a5)
   10e58:	dc045ee3          	bgez	s0,10c34 <_vfprintf_r+0x3a0>
   10e5c:	02e13423          	sd	a4,40(sp)
   10e60:	00000613          	li	a2,0
   10e64:	60078a63          	beqz	a5,11478 <_vfprintf_r+0xbe4>
   10e68:	00000613          	li	a2,0
   10e6c:	de5ff06f          	j	10c50 <_vfprintf_r+0x3bc>
   10e70:	00060463          	beqz	a2,10e78 <_vfprintf_r+0x5e4>
   10e74:	6880106f          	j	124fc <_vfprintf_r+0x1c68>
   10e78:	010c6c13          	ori	s8,s8,16
   10e7c:	010c7793          	andi	a5,s8,16
   10e80:	f20790e3          	bnez	a5,10da0 <_vfprintf_r+0x50c>
   10e84:	040c7793          	andi	a5,s8,64
   10e88:	080107a3          	sb	zero,143(sp)
   10e8c:	500780e3          	beqz	a5,11b8c <_vfprintf_r+0x12f8>
   10e90:	02813783          	ld	a5,40(sp)
   10e94:	00878713          	addi	a4,a5,8
   10e98:	0007d783          	lhu	a5,0(a5)
   10e9c:	f0045ce3          	bgez	s0,10db4 <_vfprintf_r+0x520>
   10ea0:	02e13423          	sd	a4,40(sp)
   10ea4:	00000613          	li	a2,0
   10ea8:	f0079ee3          	bnez	a5,10dc4 <_vfprintf_r+0x530>
   10eac:	00100793          	li	a5,1
   10eb0:	5c80006f          	j	11478 <_vfprintf_r+0xbe4>
   10eb4:	00060463          	beqz	a2,10ebc <_vfprintf_r+0x628>
   10eb8:	63c0106f          	j	124f4 <_vfprintf_r+0x1c60>
   10ebc:	0001a7b7          	lui	a5,0x1a
   10ec0:	3d878793          	addi	a5,a5,984 # 1a3d8 <zeroes.4137+0x7d8>
   10ec4:	02f13c23          	sd	a5,56(sp)
   10ec8:	010c7793          	andi	a5,s8,16
   10ecc:	4c078263          	beqz	a5,11390 <_vfprintf_r+0xafc>
   10ed0:	02813703          	ld	a4,40(sp)
   10ed4:	00073783          	ld	a5,0(a4)
   10ed8:	00870713          	addi	a4,a4,8
   10edc:	02e13423          	sd	a4,40(sp)
   10ee0:	001c7713          	andi	a4,s8,1
   10ee4:	120706e3          	beqz	a4,11810 <_vfprintf_r+0xf7c>
   10ee8:	6a078ee3          	beqz	a5,11da4 <_vfprintf_r+0x1510>
   10eec:	03000713          	li	a4,48
   10ef0:	08e10823          	sb	a4,144(sp)
   10ef4:	09a108a3          	sb	s10,145(sp)
   10ef8:	080107a3          	sb	zero,143(sp)
   10efc:	002c6713          	ori	a4,s8,2
   10f00:	00045463          	bgez	s0,10f08 <_vfprintf_r+0x674>
   10f04:	2140106f          	j	12118 <_vfprintf_r+0x1884>
   10f08:	f7fc7c13          	andi	s8,s8,-129
   10f0c:	002c6c13          	ori	s8,s8,2
   10f10:	00000613          	li	a2,0
   10f14:	be9ff06f          	j	10afc <_vfprintf_r+0x268>
   10f18:	02813703          	ld	a4,40(sp)
   10f1c:	00100693          	li	a3,1
   10f20:	00d12423          	sw	a3,8(sp)
   10f24:	00072783          	lw	a5,0(a4)
   10f28:	080107a3          	sb	zero,143(sp)
   10f2c:	00000613          	li	a2,0
   10f30:	0cf10423          	sb	a5,200(sp)
   10f34:	00870793          	addi	a5,a4,8
   10f38:	02f13423          	sd	a5,40(sp)
   10f3c:	02d12023          	sw	a3,32(sp)
   10f40:	00000413          	li	s0,0
   10f44:	04012623          	sw	zero,76(sp)
   10f48:	0c810913          	addi	s2,sp,200
   10f4c:	002c7793          	andi	a5,s8,2
   10f50:	04f12023          	sw	a5,64(sp)
   10f54:	00078863          	beqz	a5,10f64 <_vfprintf_r+0x6d0>
   10f58:	00812783          	lw	a5,8(sp)
   10f5c:	0027879b          	addiw	a5,a5,2
   10f60:	00f12423          	sw	a5,8(sp)
   10f64:	084c7793          	andi	a5,s8,132
   10f68:	04f12423          	sw	a5,72(sp)
   10f6c:	52079263          	bnez	a5,11490 <_vfprintf_r+0xbfc>
   10f70:	01812783          	lw	a5,24(sp)
   10f74:	00812703          	lw	a4,8(sp)
   10f78:	40e78cbb          	subw	s9,a5,a4
   10f7c:	51905a63          	blez	s9,11490 <_vfprintf_r+0xbfc>
   10f80:	01000793          	li	a5,16
   10f84:	0197c463          	blt	a5,s9,10f8c <_vfprintf_r+0x6f8>
   10f88:	1080106f          	j	12090 <_vfprintf_r+0x17fc>
   10f8c:	01000813          	li	a6,16
   10f90:	0c013783          	ld	a5,192(sp)
   10f94:	0b812703          	lw	a4,184(sp)
   10f98:	05513823          	sd	s5,80(sp)
   10f9c:	00700313          	li	t1,7
   10fa0:	00080d93          	mv	s11,a6
   10fa4:	00c0006f          	j	10fb0 <_vfprintf_r+0x71c>
   10fa8:	ff0c8c9b          	addiw	s9,s9,-16
   10fac:	059dde63          	ble	s9,s11,11008 <_vfprintf_r+0x774>
   10fb0:	01078793          	addi	a5,a5,16
   10fb4:	0017071b          	addiw	a4,a4,1
   10fb8:	0158b023          	sd	s5,0(a7)
   10fbc:	0108b423          	sd	a6,8(a7)
   10fc0:	0cf13023          	sd	a5,192(sp)
   10fc4:	0ae12c23          	sw	a4,184(sp)
   10fc8:	01088893          	addi	a7,a7,16
   10fcc:	fce35ee3          	ble	a4,t1,10fa8 <_vfprintf_r+0x714>
   10fd0:	0b010613          	addi	a2,sp,176
   10fd4:	000a0593          	mv	a1,s4
   10fd8:	000b8513          	mv	a0,s7
   10fdc:	00613823          	sd	t1,16(sp)
   10fe0:	01013023          	sd	a6,0(sp)
   10fe4:	0d1060ef          	jal	178b4 <__sprint_r>
   10fe8:	ba051ee3          	bnez	a0,10ba4 <_vfprintf_r+0x310>
   10fec:	ff0c8c9b          	addiw	s9,s9,-16
   10ff0:	0c013783          	ld	a5,192(sp)
   10ff4:	0b812703          	lw	a4,184(sp)
   10ff8:	000b0893          	mv	a7,s6
   10ffc:	01013303          	ld	t1,16(sp)
   11000:	00013803          	ld	a6,0(sp)
   11004:	fb9dc6e3          	blt	s11,s9,10fb0 <_vfprintf_r+0x71c>
   11008:	05013603          	ld	a2,80(sp)
   1100c:	00fc87b3          	add	a5,s9,a5
   11010:	0017071b          	addiw	a4,a4,1
   11014:	00c8b023          	sd	a2,0(a7)
   11018:	0198b423          	sd	s9,8(a7)
   1101c:	0cf13023          	sd	a5,192(sp)
   11020:	0ae12c23          	sw	a4,184(sp)
   11024:	00700693          	li	a3,7
   11028:	0ce6cae3          	blt	a3,a4,118fc <_vfprintf_r+0x1068>
   1102c:	08f14603          	lbu	a2,143(sp)
   11030:	01088893          	addi	a7,a7,16
   11034:	02060a63          	beqz	a2,11068 <_vfprintf_r+0x7d4>
   11038:	0b812703          	lw	a4,184(sp)
   1103c:	08f10693          	addi	a3,sp,143
   11040:	00d8b023          	sd	a3,0(a7)
   11044:	00178793          	addi	a5,a5,1
   11048:	00100693          	li	a3,1
   1104c:	0017071b          	addiw	a4,a4,1
   11050:	00d8b423          	sd	a3,8(a7)
   11054:	0cf13023          	sd	a5,192(sp)
   11058:	0ae12c23          	sw	a4,184(sp)
   1105c:	00700693          	li	a3,7
   11060:	01088893          	addi	a7,a7,16
   11064:	76e6c663          	blt	a3,a4,117d0 <_vfprintf_r+0xf3c>
   11068:	04012703          	lw	a4,64(sp)
   1106c:	02070a63          	beqz	a4,110a0 <_vfprintf_r+0x80c>
   11070:	0b812703          	lw	a4,184(sp)
   11074:	09010693          	addi	a3,sp,144
   11078:	00d8b023          	sd	a3,0(a7)
   1107c:	00278793          	addi	a5,a5,2
   11080:	00200693          	li	a3,2
   11084:	0017071b          	addiw	a4,a4,1
   11088:	00d8b423          	sd	a3,8(a7)
   1108c:	0cf13023          	sd	a5,192(sp)
   11090:	0ae12c23          	sw	a4,184(sp)
   11094:	00700693          	li	a3,7
   11098:	01088893          	addi	a7,a7,16
   1109c:	74e6ca63          	blt	a3,a4,117f0 <_vfprintf_r+0xf5c>
   110a0:	04812683          	lw	a3,72(sp)
   110a4:	08000713          	li	a4,128
   110a8:	5ee68663          	beq	a3,a4,11694 <_vfprintf_r+0xe00>
   110ac:	02012703          	lw	a4,32(sp)
   110b0:	40e4043b          	subw	s0,s0,a4
   110b4:	0c805063          	blez	s0,11174 <_vfprintf_r+0x8e0>
   110b8:	01000713          	li	a4,16
   110bc:	4e875ce3          	ble	s0,a4,11db4 <_vfprintf_r+0x1520>
   110c0:	01000c93          	li	s9,16
   110c4:	0b812703          	lw	a4,184(sp)
   110c8:	00913823          	sd	s1,16(sp)
   110cc:	00700813          	li	a6,7
   110d0:	000c8d93          	mv	s11,s9
   110d4:	00c0006f          	j	110e0 <_vfprintf_r+0x84c>
   110d8:	ff04041b          	addiw	s0,s0,-16
   110dc:	048dda63          	ble	s0,s11,11130 <_vfprintf_r+0x89c>
   110e0:	01078793          	addi	a5,a5,16
   110e4:	0017071b          	addiw	a4,a4,1
   110e8:	0098b023          	sd	s1,0(a7)
   110ec:	0198b423          	sd	s9,8(a7)
   110f0:	0cf13023          	sd	a5,192(sp)
   110f4:	0ae12c23          	sw	a4,184(sp)
   110f8:	01088893          	addi	a7,a7,16
   110fc:	fce85ee3          	ble	a4,a6,110d8 <_vfprintf_r+0x844>
   11100:	0b010613          	addi	a2,sp,176
   11104:	000a0593          	mv	a1,s4
   11108:	000b8513          	mv	a0,s7
   1110c:	01013023          	sd	a6,0(sp)
   11110:	7a4060ef          	jal	178b4 <__sprint_r>
   11114:	a80518e3          	bnez	a0,10ba4 <_vfprintf_r+0x310>
   11118:	ff04041b          	addiw	s0,s0,-16
   1111c:	0c013783          	ld	a5,192(sp)
   11120:	0b812703          	lw	a4,184(sp)
   11124:	000b0893          	mv	a7,s6
   11128:	00013803          	ld	a6,0(sp)
   1112c:	fa8dcae3          	blt	s11,s0,110e0 <_vfprintf_r+0x84c>
   11130:	01013683          	ld	a3,16(sp)
   11134:	008787b3          	add	a5,a5,s0
   11138:	0017071b          	addiw	a4,a4,1
   1113c:	00d8b023          	sd	a3,0(a7)
   11140:	0088b423          	sd	s0,8(a7)
   11144:	0cf13023          	sd	a5,192(sp)
   11148:	0ae12c23          	sw	a4,184(sp)
   1114c:	00700693          	li	a3,7
   11150:	01088893          	addi	a7,a7,16
   11154:	02e6d063          	ble	a4,a3,11174 <_vfprintf_r+0x8e0>
   11158:	0b010613          	addi	a2,sp,176
   1115c:	000a0593          	mv	a1,s4
   11160:	000b8513          	mv	a0,s7
   11164:	750060ef          	jal	178b4 <__sprint_r>
   11168:	a2051ee3          	bnez	a0,10ba4 <_vfprintf_r+0x310>
   1116c:	0c013783          	ld	a5,192(sp)
   11170:	000b0893          	mv	a7,s6
   11174:	100c7713          	andi	a4,s8,256
   11178:	40071663          	bnez	a4,11584 <_vfprintf_r+0xcf0>
   1117c:	02012703          	lw	a4,32(sp)
   11180:	0b812683          	lw	a3,184(sp)
   11184:	0128b023          	sd	s2,0(a7)
   11188:	00e787b3          	add	a5,a5,a4
   1118c:	0016869b          	addiw	a3,a3,1
   11190:	00e8b423          	sd	a4,8(a7)
   11194:	0cf13023          	sd	a5,192(sp)
   11198:	0ad12c23          	sw	a3,184(sp)
   1119c:	00700713          	li	a4,7
   111a0:	3cd74263          	blt	a4,a3,11564 <_vfprintf_r+0xcd0>
   111a4:	01088893          	addi	a7,a7,16
   111a8:	004c7c13          	andi	s8,s8,4
   111ac:	0c0c0063          	beqz	s8,1126c <_vfprintf_r+0x9d8>
   111b0:	01812703          	lw	a4,24(sp)
   111b4:	00812683          	lw	a3,8(sp)
   111b8:	40d7043b          	subw	s0,a4,a3
   111bc:	0a805863          	blez	s0,1126c <_vfprintf_r+0x9d8>
   111c0:	01000713          	li	a4,16
   111c4:	748754e3          	ble	s0,a4,1210c <_vfprintf_r+0x1878>
   111c8:	01000913          	li	s2,16
   111cc:	0b812703          	lw	a4,184(sp)
   111d0:	05513823          	sd	s5,80(sp)
   111d4:	00700c13          	li	s8,7
   111d8:	00090d13          	mv	s10,s2
   111dc:	00c0006f          	j	111e8 <_vfprintf_r+0x954>
   111e0:	ff04041b          	addiw	s0,s0,-16
   111e4:	048d5663          	ble	s0,s10,11230 <_vfprintf_r+0x99c>
   111e8:	01078793          	addi	a5,a5,16
   111ec:	0017071b          	addiw	a4,a4,1
   111f0:	0158b023          	sd	s5,0(a7)
   111f4:	0128b423          	sd	s2,8(a7)
   111f8:	0cf13023          	sd	a5,192(sp)
   111fc:	0ae12c23          	sw	a4,184(sp)
   11200:	01088893          	addi	a7,a7,16
   11204:	fcec5ee3          	ble	a4,s8,111e0 <_vfprintf_r+0x94c>
   11208:	0b010613          	addi	a2,sp,176
   1120c:	000a0593          	mv	a1,s4
   11210:	000b8513          	mv	a0,s7
   11214:	6a0060ef          	jal	178b4 <__sprint_r>
   11218:	980516e3          	bnez	a0,10ba4 <_vfprintf_r+0x310>
   1121c:	ff04041b          	addiw	s0,s0,-16
   11220:	0c013783          	ld	a5,192(sp)
   11224:	0b812703          	lw	a4,184(sp)
   11228:	000b0893          	mv	a7,s6
   1122c:	fa8d4ee3          	blt	s10,s0,111e8 <_vfprintf_r+0x954>
   11230:	05013683          	ld	a3,80(sp)
   11234:	008787b3          	add	a5,a5,s0
   11238:	0017071b          	addiw	a4,a4,1
   1123c:	00d8b023          	sd	a3,0(a7)
   11240:	0088b423          	sd	s0,8(a7)
   11244:	0cf13023          	sd	a5,192(sp)
   11248:	0ae12c23          	sw	a4,184(sp)
   1124c:	00700693          	li	a3,7
   11250:	00e6de63          	ble	a4,a3,1126c <_vfprintf_r+0x9d8>
   11254:	0b010613          	addi	a2,sp,176
   11258:	000a0593          	mv	a1,s4
   1125c:	000b8513          	mv	a0,s7
   11260:	654060ef          	jal	178b4 <__sprint_r>
   11264:	940510e3          	bnez	a0,10ba4 <_vfprintf_r+0x310>
   11268:	0c013783          	ld	a5,192(sp)
   1126c:	01812c83          	lw	s9,24(sp)
   11270:	00812703          	lw	a4,8(sp)
   11274:	00ecd463          	ble	a4,s9,1127c <_vfprintf_r+0x9e8>
   11278:	00070c93          	mv	s9,a4
   1127c:	01c12703          	lw	a4,28(sp)
   11280:	0197073b          	addw	a4,a4,s9
   11284:	00e12e23          	sw	a4,28(sp)
   11288:	52079863          	bnez	a5,117b8 <_vfprintf_r+0xf24>
   1128c:	0009c783          	lbu	a5,0(s3)
   11290:	0a012c23          	sw	zero,184(sp)
   11294:	000b0893          	mv	a7,s6
   11298:	f2079263          	bnez	a5,109bc <_vfprintf_r+0x128>
   1129c:	00098413          	mv	s0,s3
   112a0:	f80ff06f          	j	10a20 <_vfprintf_r+0x18c>
   112a4:	00060463          	beqz	a2,112ac <_vfprintf_r+0xa18>
   112a8:	22c0106f          	j	124d4 <_vfprintf_r+0x1c40>
   112ac:	010c7793          	andi	a5,s8,16
   112b0:	12078e63          	beqz	a5,113ec <_vfprintf_r+0xb58>
   112b4:	02813703          	ld	a4,40(sp)
   112b8:	00073783          	ld	a5,0(a4)
   112bc:	00870713          	addi	a4,a4,8
   112c0:	02e13423          	sd	a4,40(sp)
   112c4:	1407c0e3          	bltz	a5,11c04 <_vfprintf_r+0x1370>
   112c8:	08f14603          	lbu	a2,143(sp)
   112cc:	bc044ee3          	bltz	s0,10ea8 <_vfprintf_r+0x614>
   112d0:	f7fc7c13          	andi	s8,s8,-129
   112d4:	ae0798e3          	bnez	a5,10dc4 <_vfprintf_r+0x530>
   112d8:	6e041a63          	bnez	s0,119cc <_vfprintf_r+0x1138>
   112dc:	00000413          	li	s0,0
   112e0:	02012023          	sw	zero,32(sp)
   112e4:	000b0913          	mv	s2,s6
   112e8:	9a9ff06f          	j	10c90 <_vfprintf_r+0x3fc>
   112ec:	040c6c13          	ori	s8,s8,64
   112f0:	f60ff06f          	j	10a50 <_vfprintf_r+0x1bc>
   112f4:	00060463          	beqz	a2,112fc <_vfprintf_r+0xa68>
   112f8:	1d40106f          	j	124cc <_vfprintf_r+0x1c38>
   112fc:	02813783          	ld	a5,40(sp)
   11300:	00100913          	li	s2,1
   11304:	0007b787          	fld	fa5,0(a5)
   11308:	00878793          	addi	a5,a5,8
   1130c:	01113023          	sd	a7,0(sp)
   11310:	04f13c27          	fsd	fa5,88(sp)
   11314:	05813c83          	ld	s9,88(sp)
   11318:	02f13423          	sd	a5,40(sp)
   1131c:	f20c8553          	fmv.d.x	fa0,s9
   11320:	0e4060ef          	jal	17404 <__fpclassifyd>
   11324:	00013883          	ld	a7,0(sp)
   11328:	0f251ce3          	bne	a0,s2,11c20 <_vfprintf_r+0x138c>
   1132c:	f20007d3          	fmv.d.x	fa5,zero
   11330:	f20c8753          	fmv.d.x	fa4,s9
   11334:	a2f717d3          	flt.d	a5,fa4,fa5
   11338:	600792e3          	bnez	a5,1213c <_vfprintf_r+0x18a8>
   1133c:	08f14603          	lbu	a2,143(sp)
   11340:	04700793          	li	a5,71
   11344:	3da7d8e3          	ble	s10,a5,11f14 <_vfprintf_r+0x1680>
   11348:	0001a937          	lui	s2,0x1a
   1134c:	3c090913          	addi	s2,s2,960 # 1a3c0 <zeroes.4137+0x7c0>
   11350:	00300793          	li	a5,3
   11354:	00f12423          	sw	a5,8(sp)
   11358:	f7fc7c13          	andi	s8,s8,-129
   1135c:	02f12023          	sw	a5,32(sp)
   11360:	00000413          	li	s0,0
   11364:	04012623          	sw	zero,76(sp)
   11368:	941ff06f          	j	10ca8 <_vfprintf_r+0x414>
   1136c:	008c6c13          	ori	s8,s8,8
   11370:	ee0ff06f          	j	10a50 <_vfprintf_r+0x1bc>
   11374:	00060463          	beqz	a2,1137c <_vfprintf_r+0xae8>
   11378:	1280106f          	j	124a0 <_vfprintf_r+0x1c0c>
   1137c:	0001a7b7          	lui	a5,0x1a
   11380:	3f078793          	addi	a5,a5,1008 # 1a3f0 <zeroes.4137+0x7f0>
   11384:	02f13c23          	sd	a5,56(sp)
   11388:	010c7793          	andi	a5,s8,16
   1138c:	b40792e3          	bnez	a5,10ed0 <_vfprintf_r+0x63c>
   11390:	040c7793          	andi	a5,s8,64
   11394:	02813703          	ld	a4,40(sp)
   11398:	1c0784e3          	beqz	a5,11d60 <_vfprintf_r+0x14cc>
   1139c:	00075783          	lhu	a5,0(a4)
   113a0:	00870713          	addi	a4,a4,8
   113a4:	02e13423          	sd	a4,40(sp)
   113a8:	b39ff06f          	j	10ee0 <_vfprintf_r+0x64c>
   113ac:	00060463          	beqz	a2,113b4 <_vfprintf_r+0xb20>
   113b0:	10c0106f          	j	124bc <_vfprintf_r+0x1c28>
   113b4:	010c7793          	andi	a5,s8,16
   113b8:	1a078ce3          	beqz	a5,11d70 <_vfprintf_r+0x14dc>
   113bc:	02813683          	ld	a3,40(sp)
   113c0:	01c12703          	lw	a4,28(sp)
   113c4:	0006b783          	ld	a5,0(a3)
   113c8:	00868693          	addi	a3,a3,8
   113cc:	02d13423          	sd	a3,40(sp)
   113d0:	00e7b023          	sd	a4,0(a5)
   113d4:	de0ff06f          	j	109b4 <_vfprintf_r+0x120>
   113d8:	00060463          	beqz	a2,113e0 <_vfprintf_r+0xb4c>
   113dc:	0d40106f          	j	124b0 <_vfprintf_r+0x1c1c>
   113e0:	010c6c13          	ori	s8,s8,16
   113e4:	010c7793          	andi	a5,s8,16
   113e8:	ec0796e3          	bnez	a5,112b4 <_vfprintf_r+0xa20>
   113ec:	040c7793          	andi	a5,s8,64
   113f0:	02813703          	ld	a4,40(sp)
   113f4:	1a0780e3          	beqz	a5,11d94 <_vfprintf_r+0x1500>
   113f8:	00071783          	lh	a5,0(a4)
   113fc:	00870713          	addi	a4,a4,8
   11400:	02e13423          	sd	a4,40(sp)
   11404:	ec1ff06f          	j	112c4 <_vfprintf_r+0xa30>
   11408:	0001a737          	lui	a4,0x1a
   1140c:	3f070713          	addi	a4,a4,1008 # 1a3f0 <zeroes.4137+0x7f0>
   11410:	00000613          	li	a2,0
   11414:	02e13c23          	sd	a4,56(sp)
   11418:	07800d13          	li	s10,120
   1141c:	ee0ff06f          	j	10afc <_vfprintf_r+0x268>
   11420:	00060463          	beqz	a2,11428 <_vfprintf_r+0xb94>
   11424:	0c00106f          	j	124e4 <_vfprintf_r+0x1c50>
   11428:	f60d0263          	beqz	s10,10b8c <_vfprintf_r+0x2f8>
   1142c:	00100793          	li	a5,1
   11430:	00f12423          	sw	a5,8(sp)
   11434:	0da10423          	sb	s10,200(sp)
   11438:	080107a3          	sb	zero,143(sp)
   1143c:	00000613          	li	a2,0
   11440:	02f12023          	sw	a5,32(sp)
   11444:	00000413          	li	s0,0
   11448:	04012623          	sw	zero,76(sp)
   1144c:	0c810913          	addi	s2,sp,200
   11450:	afdff06f          	j	10f4c <_vfprintf_r+0x6b8>
   11454:	02e13423          	sd	a4,40(sp)
   11458:	0001a737          	lui	a4,0x1a
   1145c:	3f070713          	addi	a4,a4,1008 # 1a3f0 <zeroes.4137+0x7f0>
   11460:	00068c13          	mv	s8,a3
   11464:	02e13c23          	sd	a4,56(sp)
   11468:	07800d13          	li	s10,120
   1146c:	3a079a63          	bnez	a5,11820 <_vfprintf_r+0xf8c>
   11470:	00000613          	li	a2,0
   11474:	00200793          	li	a5,2
   11478:	00100713          	li	a4,1
   1147c:	54e78863          	beq	a5,a4,119cc <_vfprintf_r+0x1138>
   11480:	00200713          	li	a4,2
   11484:	e6e78a63          	beq	a5,a4,10af8 <_vfprintf_r+0x264>
   11488:	00000793          	li	a5,0
   1148c:	fc4ff06f          	j	10c50 <_vfprintf_r+0x3bc>
   11490:	0c013783          	ld	a5,192(sp)
   11494:	ba1ff06f          	j	11034 <_vfprintf_r+0x7a0>
   11498:	07012683          	lw	a3,112(sp)
   1149c:	00100713          	li	a4,1
   114a0:	00178793          	addi	a5,a5,1
   114a4:	6cd75663          	ble	a3,a4,11b70 <_vfprintf_r+0x12dc>
   114a8:	0b812703          	lw	a4,184(sp)
   114ac:	00100693          	li	a3,1
   114b0:	00d8b423          	sd	a3,8(a7)
   114b4:	0017071b          	addiw	a4,a4,1
   114b8:	0128b023          	sd	s2,0(a7)
   114bc:	0cf13023          	sd	a5,192(sp)
   114c0:	0ae12c23          	sw	a4,184(sp)
   114c4:	00700693          	li	a3,7
   114c8:	01088893          	addi	a7,a7,16
   114cc:	6ce6ca63          	blt	a3,a4,11ba0 <_vfprintf_r+0x130c>
   114d0:	06813683          	ld	a3,104(sp)
   114d4:	06013603          	ld	a2,96(sp)
   114d8:	0017071b          	addiw	a4,a4,1
   114dc:	00f687b3          	add	a5,a3,a5
   114e0:	00d8b423          	sd	a3,8(a7)
   114e4:	00c8b023          	sd	a2,0(a7)
   114e8:	0cf13023          	sd	a5,192(sp)
   114ec:	0ae12c23          	sw	a4,184(sp)
   114f0:	00700693          	li	a3,7
   114f4:	01088893          	addi	a7,a7,16
   114f8:	6ee6c263          	blt	a3,a4,11bdc <_vfprintf_r+0x1348>
   114fc:	f20007d3          	fmv.d.x	fa5,zero
   11500:	05813707          	fld	fa4,88(sp)
   11504:	a2f726d3          	feq.d	a3,fa4,fa5
   11508:	40069c63          	bnez	a3,11920 <_vfprintf_r+0x108c>
   1150c:	07012683          	lw	a3,112(sp)
   11510:	00190913          	addi	s2,s2,1
   11514:	0017071b          	addiw	a4,a4,1
   11518:	fff6869b          	addiw	a3,a3,-1
   1151c:	00d787b3          	add	a5,a5,a3
   11520:	0128b023          	sd	s2,0(a7)
   11524:	00d8b423          	sd	a3,8(a7)
   11528:	0cf13023          	sd	a5,192(sp)
   1152c:	0ae12c23          	sw	a4,184(sp)
   11530:	00700693          	li	a3,7
   11534:	26e6c063          	blt	a3,a4,11794 <_vfprintf_r+0xf00>
   11538:	01088893          	addi	a7,a7,16
   1153c:	07412683          	lw	a3,116(sp)
   11540:	0a010613          	addi	a2,sp,160
   11544:	0017071b          	addiw	a4,a4,1
   11548:	00f687b3          	add	a5,a3,a5
   1154c:	00c8b023          	sd	a2,0(a7)
   11550:	00d8b423          	sd	a3,8(a7)
   11554:	0cf13023          	sd	a5,192(sp)
   11558:	0ae12c23          	sw	a4,184(sp)
   1155c:	00700693          	li	a3,7
   11560:	c4e6d2e3          	ble	a4,a3,111a4 <_vfprintf_r+0x910>
   11564:	0b010613          	addi	a2,sp,176
   11568:	000a0593          	mv	a1,s4
   1156c:	000b8513          	mv	a0,s7
   11570:	344060ef          	jal	178b4 <__sprint_r>
   11574:	e2051863          	bnez	a0,10ba4 <_vfprintf_r+0x310>
   11578:	0c013783          	ld	a5,192(sp)
   1157c:	000b0893          	mv	a7,s6
   11580:	c29ff06f          	j	111a8 <_vfprintf_r+0x914>
   11584:	06500713          	li	a4,101
   11588:	f1a758e3          	ble	s10,a4,11498 <_vfprintf_r+0xc04>
   1158c:	f20007d3          	fmv.d.x	fa5,zero
   11590:	05813707          	fld	fa4,88(sp)
   11594:	a2f72753          	feq.d	a4,fa4,fa5
   11598:	28070863          	beqz	a4,11828 <_vfprintf_r+0xf94>
   1159c:	0b812703          	lw	a4,184(sp)
   115a0:	0001a6b7          	lui	a3,0x1a
   115a4:	41068693          	addi	a3,a3,1040 # 1a410 <zeroes.4137+0x810>
   115a8:	00d8b023          	sd	a3,0(a7)
   115ac:	00178793          	addi	a5,a5,1
   115b0:	00100693          	li	a3,1
   115b4:	0017071b          	addiw	a4,a4,1
   115b8:	00d8b423          	sd	a3,8(a7)
   115bc:	0cf13023          	sd	a5,192(sp)
   115c0:	0ae12c23          	sw	a4,184(sp)
   115c4:	00700693          	li	a3,7
   115c8:	01088893          	addi	a7,a7,16
   115cc:	7ee6ca63          	blt	a3,a4,11dc0 <_vfprintf_r+0x152c>
   115d0:	09812703          	lw	a4,152(sp)
   115d4:	07012683          	lw	a3,112(sp)
   115d8:	00d74663          	blt	a4,a3,115e4 <_vfprintf_r+0xd50>
   115dc:	001c7713          	andi	a4,s8,1
   115e0:	bc0704e3          	beqz	a4,111a8 <_vfprintf_r+0x914>
   115e4:	06013703          	ld	a4,96(sp)
   115e8:	06813683          	ld	a3,104(sp)
   115ec:	01088893          	addi	a7,a7,16
   115f0:	fee8b823          	sd	a4,-16(a7)
   115f4:	0b812703          	lw	a4,184(sp)
   115f8:	00d787b3          	add	a5,a5,a3
   115fc:	fed8bc23          	sd	a3,-8(a7)
   11600:	0017071b          	addiw	a4,a4,1
   11604:	0cf13023          	sd	a5,192(sp)
   11608:	0ae12c23          	sw	a4,184(sp)
   1160c:	00700693          	li	a3,7
   11610:	1ce6c8e3          	blt	a3,a4,11fe0 <_vfprintf_r+0x174c>
   11614:	07012703          	lw	a4,112(sp)
   11618:	fff7041b          	addiw	s0,a4,-1
   1161c:	b88056e3          	blez	s0,111a8 <_vfprintf_r+0x914>
   11620:	01000713          	li	a4,16
   11624:	36875c63          	ble	s0,a4,1199c <_vfprintf_r+0x1108>
   11628:	01000913          	li	s2,16
   1162c:	0b812703          	lw	a4,184(sp)
   11630:	00913823          	sd	s1,16(sp)
   11634:	00700d13          	li	s10,7
   11638:	00090693          	mv	a3,s2
   1163c:	00c0006f          	j	11648 <_vfprintf_r+0xdb4>
   11640:	ff04041b          	addiw	s0,s0,-16
   11644:	3686d063          	ble	s0,a3,119a4 <_vfprintf_r+0x1110>
   11648:	01078793          	addi	a5,a5,16
   1164c:	0017071b          	addiw	a4,a4,1
   11650:	0098b023          	sd	s1,0(a7)
   11654:	0128b423          	sd	s2,8(a7)
   11658:	0cf13023          	sd	a5,192(sp)
   1165c:	0ae12c23          	sw	a4,184(sp)
   11660:	01088893          	addi	a7,a7,16
   11664:	fced5ee3          	ble	a4,s10,11640 <_vfprintf_r+0xdac>
   11668:	0b010613          	addi	a2,sp,176
   1166c:	000a0593          	mv	a1,s4
   11670:	000b8513          	mv	a0,s7
   11674:	00d13023          	sd	a3,0(sp)
   11678:	23c060ef          	jal	178b4 <__sprint_r>
   1167c:	d2051463          	bnez	a0,10ba4 <_vfprintf_r+0x310>
   11680:	0c013783          	ld	a5,192(sp)
   11684:	0b812703          	lw	a4,184(sp)
   11688:	000b0893          	mv	a7,s6
   1168c:	00013683          	ld	a3,0(sp)
   11690:	fb1ff06f          	j	11640 <_vfprintf_r+0xdac>
   11694:	01812703          	lw	a4,24(sp)
   11698:	00812683          	lw	a3,8(sp)
   1169c:	40d70cbb          	subw	s9,a4,a3
   116a0:	a19056e3          	blez	s9,110ac <_vfprintf_r+0x818>
   116a4:	01000713          	li	a4,16
   116a8:	2f975ee3          	ble	s9,a4,121a4 <_vfprintf_r+0x1910>
   116ac:	01000813          	li	a6,16
   116b0:	0b812703          	lw	a4,184(sp)
   116b4:	00913823          	sd	s1,16(sp)
   116b8:	00700313          	li	t1,7
   116bc:	00080d93          	mv	s11,a6
   116c0:	00c0006f          	j	116cc <_vfprintf_r+0xe38>
   116c4:	ff0c8c9b          	addiw	s9,s9,-16
   116c8:	059dde63          	ble	s9,s11,11724 <_vfprintf_r+0xe90>
   116cc:	01078793          	addi	a5,a5,16
   116d0:	0017071b          	addiw	a4,a4,1
   116d4:	0098b023          	sd	s1,0(a7)
   116d8:	0108b423          	sd	a6,8(a7)
   116dc:	0cf13023          	sd	a5,192(sp)
   116e0:	0ae12c23          	sw	a4,184(sp)
   116e4:	01088893          	addi	a7,a7,16
   116e8:	fce35ee3          	ble	a4,t1,116c4 <_vfprintf_r+0xe30>
   116ec:	0b010613          	addi	a2,sp,176
   116f0:	000a0593          	mv	a1,s4
   116f4:	000b8513          	mv	a0,s7
   116f8:	04613023          	sd	t1,64(sp)
   116fc:	01013023          	sd	a6,0(sp)
   11700:	1b4060ef          	jal	178b4 <__sprint_r>
   11704:	ca051063          	bnez	a0,10ba4 <_vfprintf_r+0x310>
   11708:	ff0c8c9b          	addiw	s9,s9,-16
   1170c:	0c013783          	ld	a5,192(sp)
   11710:	0b812703          	lw	a4,184(sp)
   11714:	000b0893          	mv	a7,s6
   11718:	04013303          	ld	t1,64(sp)
   1171c:	00013803          	ld	a6,0(sp)
   11720:	fb9dc6e3          	blt	s11,s9,116cc <_vfprintf_r+0xe38>
   11724:	01013603          	ld	a2,16(sp)
   11728:	019787b3          	add	a5,a5,s9
   1172c:	0017071b          	addiw	a4,a4,1
   11730:	00c8b023          	sd	a2,0(a7)
   11734:	0198b423          	sd	s9,8(a7)
   11738:	0cf13023          	sd	a5,192(sp)
   1173c:	0ae12c23          	sw	a4,184(sp)
   11740:	00700693          	li	a3,7
   11744:	01088893          	addi	a7,a7,16
   11748:	96e6d2e3          	ble	a4,a3,110ac <_vfprintf_r+0x818>
   1174c:	0b010613          	addi	a2,sp,176
   11750:	000a0593          	mv	a1,s4
   11754:	000b8513          	mv	a0,s7
   11758:	15c060ef          	jal	178b4 <__sprint_r>
   1175c:	c4051463          	bnez	a0,10ba4 <_vfprintf_r+0x310>
   11760:	0c013783          	ld	a5,192(sp)
   11764:	000b0893          	mv	a7,s6
   11768:	945ff06f          	j	110ac <_vfprintf_r+0x818>
   1176c:	00913823          	sd	s1,16(sp)
   11770:	01013683          	ld	a3,16(sp)
   11774:	008787b3          	add	a5,a5,s0
   11778:	0017071b          	addiw	a4,a4,1
   1177c:	00d8b023          	sd	a3,0(a7)
   11780:	0088b423          	sd	s0,8(a7)
   11784:	0cf13023          	sd	a5,192(sp)
   11788:	0ae12c23          	sw	a4,184(sp)
   1178c:	00700693          	li	a3,7
   11790:	dae6d4e3          	ble	a4,a3,11538 <_vfprintf_r+0xca4>
   11794:	0b010613          	addi	a2,sp,176
   11798:	000a0593          	mv	a1,s4
   1179c:	000b8513          	mv	a0,s7
   117a0:	114060ef          	jal	178b4 <__sprint_r>
   117a4:	c0051063          	bnez	a0,10ba4 <_vfprintf_r+0x310>
   117a8:	0c013783          	ld	a5,192(sp)
   117ac:	0b812703          	lw	a4,184(sp)
   117b0:	000b0893          	mv	a7,s6
   117b4:	d89ff06f          	j	1153c <_vfprintf_r+0xca8>
   117b8:	0b010613          	addi	a2,sp,176
   117bc:	000a0593          	mv	a1,s4
   117c0:	000b8513          	mv	a0,s7
   117c4:	0f0060ef          	jal	178b4 <__sprint_r>
   117c8:	ac0502e3          	beqz	a0,1128c <_vfprintf_r+0x9f8>
   117cc:	bd8ff06f          	j	10ba4 <_vfprintf_r+0x310>
   117d0:	0b010613          	addi	a2,sp,176
   117d4:	000a0593          	mv	a1,s4
   117d8:	000b8513          	mv	a0,s7
   117dc:	0d8060ef          	jal	178b4 <__sprint_r>
   117e0:	bc051263          	bnez	a0,10ba4 <_vfprintf_r+0x310>
   117e4:	0c013783          	ld	a5,192(sp)
   117e8:	000b0893          	mv	a7,s6
   117ec:	87dff06f          	j	11068 <_vfprintf_r+0x7d4>
   117f0:	0b010613          	addi	a2,sp,176
   117f4:	000a0593          	mv	a1,s4
   117f8:	000b8513          	mv	a0,s7
   117fc:	0b8060ef          	jal	178b4 <__sprint_r>
   11800:	ba051263          	bnez	a0,10ba4 <_vfprintf_r+0x310>
   11804:	0c013783          	ld	a5,192(sp)
   11808:	000b0893          	mv	a7,s6
   1180c:	895ff06f          	j	110a0 <_vfprintf_r+0x80c>
   11810:	080107a3          	sb	zero,143(sp)
   11814:	c4044ce3          	bltz	s0,1146c <_vfprintf_r+0xbd8>
   11818:	f7fc7c13          	andi	s8,s8,-129
   1181c:	ac078a63          	beqz	a5,10af0 <_vfprintf_r+0x25c>
   11820:	00000613          	li	a2,0
   11824:	ad8ff06f          	j	10afc <_vfprintf_r+0x268>
   11828:	09812403          	lw	s0,152(sp)
   1182c:	5a805c63          	blez	s0,11de4 <_vfprintf_r+0x1550>
   11830:	04c12703          	lw	a4,76(sp)
   11834:	07012683          	lw	a3,112(sp)
   11838:	00070413          	mv	s0,a4
   1183c:	00e6d463          	ble	a4,a3,11844 <_vfprintf_r+0xfb0>
   11840:	00068413          	mv	s0,a3
   11844:	02805663          	blez	s0,11870 <_vfprintf_r+0xfdc>
   11848:	0b812703          	lw	a4,184(sp)
   1184c:	008787b3          	add	a5,a5,s0
   11850:	0128b023          	sd	s2,0(a7)
   11854:	0017071b          	addiw	a4,a4,1
   11858:	0088b423          	sd	s0,8(a7)
   1185c:	0cf13023          	sd	a5,192(sp)
   11860:	0ae12c23          	sw	a4,184(sp)
   11864:	00700693          	li	a3,7
   11868:	01088893          	addi	a7,a7,16
   1186c:	6ae6ca63          	blt	a3,a4,11f20 <_vfprintf_r+0x168c>
   11870:	020448e3          	bltz	s0,120a0 <_vfprintf_r+0x180c>
   11874:	04c12703          	lw	a4,76(sp)
   11878:	4087043b          	subw	s0,a4,s0
   1187c:	1a805c63          	blez	s0,11a34 <_vfprintf_r+0x11a0>
   11880:	01000713          	li	a4,16
   11884:	16875263          	ble	s0,a4,119e8 <_vfprintf_r+0x1154>
   11888:	01000d13          	li	s10,16
   1188c:	0b812703          	lw	a4,184(sp)
   11890:	00913823          	sd	s1,16(sp)
   11894:	00700693          	li	a3,7
   11898:	000d0813          	mv	a6,s10
   1189c:	00c0006f          	j	118a8 <_vfprintf_r+0x1014>
   118a0:	ff04041b          	addiw	s0,s0,-16
   118a4:	14885663          	ble	s0,a6,119f0 <_vfprintf_r+0x115c>
   118a8:	01078793          	addi	a5,a5,16
   118ac:	0017071b          	addiw	a4,a4,1
   118b0:	0098b023          	sd	s1,0(a7)
   118b4:	01a8b423          	sd	s10,8(a7)
   118b8:	0cf13023          	sd	a5,192(sp)
   118bc:	0ae12c23          	sw	a4,184(sp)
   118c0:	01088893          	addi	a7,a7,16
   118c4:	fce6dee3          	ble	a4,a3,118a0 <_vfprintf_r+0x100c>
   118c8:	0b010613          	addi	a2,sp,176
   118cc:	000a0593          	mv	a1,s4
   118d0:	000b8513          	mv	a0,s7
   118d4:	03013023          	sd	a6,32(sp)
   118d8:	00d13023          	sd	a3,0(sp)
   118dc:	7d9050ef          	jal	178b4 <__sprint_r>
   118e0:	ac051263          	bnez	a0,10ba4 <_vfprintf_r+0x310>
   118e4:	0c013783          	ld	a5,192(sp)
   118e8:	0b812703          	lw	a4,184(sp)
   118ec:	000b0893          	mv	a7,s6
   118f0:	02013803          	ld	a6,32(sp)
   118f4:	00013683          	ld	a3,0(sp)
   118f8:	fa9ff06f          	j	118a0 <_vfprintf_r+0x100c>
   118fc:	0b010613          	addi	a2,sp,176
   11900:	000a0593          	mv	a1,s4
   11904:	000b8513          	mv	a0,s7
   11908:	7ad050ef          	jal	178b4 <__sprint_r>
   1190c:	a8051c63          	bnez	a0,10ba4 <_vfprintf_r+0x310>
   11910:	08f14603          	lbu	a2,143(sp)
   11914:	0c013783          	ld	a5,192(sp)
   11918:	000b0893          	mv	a7,s6
   1191c:	f18ff06f          	j	11034 <_vfprintf_r+0x7a0>
   11920:	07012683          	lw	a3,112(sp)
   11924:	fff6841b          	addiw	s0,a3,-1
   11928:	c0805ae3          	blez	s0,1153c <_vfprintf_r+0xca8>
   1192c:	01000693          	li	a3,16
   11930:	e286dee3          	ble	s0,a3,1176c <_vfprintf_r+0xed8>
   11934:	01000913          	li	s2,16
   11938:	00913823          	sd	s1,16(sp)
   1193c:	00700d13          	li	s10,7
   11940:	00090693          	mv	a3,s2
   11944:	00c0006f          	j	11950 <_vfprintf_r+0x10bc>
   11948:	ff04041b          	addiw	s0,s0,-16
   1194c:	e286d2e3          	ble	s0,a3,11770 <_vfprintf_r+0xedc>
   11950:	01078793          	addi	a5,a5,16
   11954:	0017071b          	addiw	a4,a4,1
   11958:	0098b023          	sd	s1,0(a7)
   1195c:	0128b423          	sd	s2,8(a7)
   11960:	0cf13023          	sd	a5,192(sp)
   11964:	0ae12c23          	sw	a4,184(sp)
   11968:	01088893          	addi	a7,a7,16
   1196c:	fced5ee3          	ble	a4,s10,11948 <_vfprintf_r+0x10b4>
   11970:	0b010613          	addi	a2,sp,176
   11974:	000a0593          	mv	a1,s4
   11978:	000b8513          	mv	a0,s7
   1197c:	00d13023          	sd	a3,0(sp)
   11980:	735050ef          	jal	178b4 <__sprint_r>
   11984:	a2051063          	bnez	a0,10ba4 <_vfprintf_r+0x310>
   11988:	0c013783          	ld	a5,192(sp)
   1198c:	0b812703          	lw	a4,184(sp)
   11990:	000b0893          	mv	a7,s6
   11994:	00013683          	ld	a3,0(sp)
   11998:	fb1ff06f          	j	11948 <_vfprintf_r+0x10b4>
   1199c:	0b812703          	lw	a4,184(sp)
   119a0:	00913823          	sd	s1,16(sp)
   119a4:	01013683          	ld	a3,16(sp)
   119a8:	008787b3          	add	a5,a5,s0
   119ac:	0088b423          	sd	s0,8(a7)
   119b0:	00d8b023          	sd	a3,0(a7)
   119b4:	0017071b          	addiw	a4,a4,1
   119b8:	0cf13023          	sd	a5,192(sp)
   119bc:	0ae12c23          	sw	a4,184(sp)
   119c0:	00700693          	li	a3,7
   119c4:	fee6d063          	ble	a4,a3,111a4 <_vfprintf_r+0x910>
   119c8:	b9dff06f          	j	11564 <_vfprintf_r+0xcd0>
   119cc:	00000793          	li	a5,0
   119d0:	0307879b          	addiw	a5,a5,48
   119d4:	0ef107a3          	sb	a5,239(sp)
   119d8:	07813783          	ld	a5,120(sp)
   119dc:	0ef10913          	addi	s2,sp,239
   119e0:	02f12023          	sw	a5,32(sp)
   119e4:	aacff06f          	j	10c90 <_vfprintf_r+0x3fc>
   119e8:	0b812703          	lw	a4,184(sp)
   119ec:	00913823          	sd	s1,16(sp)
   119f0:	01013683          	ld	a3,16(sp)
   119f4:	008787b3          	add	a5,a5,s0
   119f8:	0017071b          	addiw	a4,a4,1
   119fc:	00d8b023          	sd	a3,0(a7)
   11a00:	0088b423          	sd	s0,8(a7)
   11a04:	0cf13023          	sd	a5,192(sp)
   11a08:	0ae12c23          	sw	a4,184(sp)
   11a0c:	00700693          	li	a3,7
   11a10:	01088893          	addi	a7,a7,16
   11a14:	02e6d063          	ble	a4,a3,11a34 <_vfprintf_r+0x11a0>
   11a18:	0b010613          	addi	a2,sp,176
   11a1c:	000a0593          	mv	a1,s4
   11a20:	000b8513          	mv	a0,s7
   11a24:	691050ef          	jal	178b4 <__sprint_r>
   11a28:	96051e63          	bnez	a0,10ba4 <_vfprintf_r+0x310>
   11a2c:	0c013783          	ld	a5,192(sp)
   11a30:	000b0893          	mv	a7,s6
   11a34:	04c12d03          	lw	s10,76(sp)
   11a38:	09812703          	lw	a4,152(sp)
   11a3c:	07012683          	lw	a3,112(sp)
   11a40:	01a90d33          	add	s10,s2,s10
   11a44:	0cd74a63          	blt	a4,a3,11b18 <_vfprintf_r+0x1284>
   11a48:	001c7693          	andi	a3,s8,1
   11a4c:	0c069663          	bnez	a3,11b18 <_vfprintf_r+0x1284>
   11a50:	07012683          	lw	a3,112(sp)
   11a54:	00d90433          	add	s0,s2,a3
   11a58:	41a40433          	sub	s0,s0,s10
   11a5c:	40e6873b          	subw	a4,a3,a4
   11a60:	0004041b          	sext.w	s0,s0
   11a64:	00875463          	ble	s0,a4,11a6c <_vfprintf_r+0x11d8>
   11a68:	00070413          	mv	s0,a4
   11a6c:	02805663          	blez	s0,11a98 <_vfprintf_r+0x1204>
   11a70:	0b812683          	lw	a3,184(sp)
   11a74:	008787b3          	add	a5,a5,s0
   11a78:	01a8b023          	sd	s10,0(a7)
   11a7c:	0016869b          	addiw	a3,a3,1
   11a80:	0088b423          	sd	s0,8(a7)
   11a84:	0cf13023          	sd	a5,192(sp)
   11a88:	0ad12c23          	sw	a3,184(sp)
   11a8c:	00700613          	li	a2,7
   11a90:	01088893          	addi	a7,a7,16
   11a94:	4cd64263          	blt	a2,a3,11f58 <_vfprintf_r+0x16c4>
   11a98:	60044863          	bltz	s0,120a8 <_vfprintf_r+0x1814>
   11a9c:	4087043b          	subw	s0,a4,s0
   11aa0:	f0805463          	blez	s0,111a8 <_vfprintf_r+0x914>
   11aa4:	01000713          	li	a4,16
   11aa8:	ee875ae3          	ble	s0,a4,1199c <_vfprintf_r+0x1108>
   11aac:	01000913          	li	s2,16
   11ab0:	0b812703          	lw	a4,184(sp)
   11ab4:	00913823          	sd	s1,16(sp)
   11ab8:	00700d13          	li	s10,7
   11abc:	00090693          	mv	a3,s2
   11ac0:	00c0006f          	j	11acc <_vfprintf_r+0x1238>
   11ac4:	ff04041b          	addiw	s0,s0,-16
   11ac8:	ec86dee3          	ble	s0,a3,119a4 <_vfprintf_r+0x1110>
   11acc:	01078793          	addi	a5,a5,16
   11ad0:	0017071b          	addiw	a4,a4,1
   11ad4:	0098b023          	sd	s1,0(a7)
   11ad8:	0128b423          	sd	s2,8(a7)
   11adc:	0cf13023          	sd	a5,192(sp)
   11ae0:	0ae12c23          	sw	a4,184(sp)
   11ae4:	01088893          	addi	a7,a7,16
   11ae8:	fced5ee3          	ble	a4,s10,11ac4 <_vfprintf_r+0x1230>
   11aec:	0b010613          	addi	a2,sp,176
   11af0:	000a0593          	mv	a1,s4
   11af4:	000b8513          	mv	a0,s7
   11af8:	00d13023          	sd	a3,0(sp)
   11afc:	5b9050ef          	jal	178b4 <__sprint_r>
   11b00:	8a051263          	bnez	a0,10ba4 <_vfprintf_r+0x310>
   11b04:	0c013783          	ld	a5,192(sp)
   11b08:	0b812703          	lw	a4,184(sp)
   11b0c:	000b0893          	mv	a7,s6
   11b10:	00013683          	ld	a3,0(sp)
   11b14:	fb1ff06f          	j	11ac4 <_vfprintf_r+0x1230>
   11b18:	06013683          	ld	a3,96(sp)
   11b1c:	06813603          	ld	a2,104(sp)
   11b20:	01088893          	addi	a7,a7,16
   11b24:	fed8b823          	sd	a3,-16(a7)
   11b28:	0b812683          	lw	a3,184(sp)
   11b2c:	00c787b3          	add	a5,a5,a2
   11b30:	fec8bc23          	sd	a2,-8(a7)
   11b34:	0016869b          	addiw	a3,a3,1
   11b38:	0cf13023          	sd	a5,192(sp)
   11b3c:	0ad12c23          	sw	a3,184(sp)
   11b40:	00700613          	li	a2,7
   11b44:	f0d656e3          	ble	a3,a2,11a50 <_vfprintf_r+0x11bc>
   11b48:	0b010613          	addi	a2,sp,176
   11b4c:	000a0593          	mv	a1,s4
   11b50:	000b8513          	mv	a0,s7
   11b54:	561050ef          	jal	178b4 <__sprint_r>
   11b58:	00050463          	beqz	a0,11b60 <_vfprintf_r+0x12cc>
   11b5c:	848ff06f          	j	10ba4 <_vfprintf_r+0x310>
   11b60:	09812703          	lw	a4,152(sp)
   11b64:	0c013783          	ld	a5,192(sp)
   11b68:	000b0893          	mv	a7,s6
   11b6c:	ee5ff06f          	j	11a50 <_vfprintf_r+0x11bc>
   11b70:	00ec7733          	and	a4,s8,a4
   11b74:	92071ae3          	bnez	a4,114a8 <_vfprintf_r+0xc14>
   11b78:	0b812703          	lw	a4,184(sp)
   11b7c:	0128b023          	sd	s2,0(a7)
   11b80:	00100693          	li	a3,1
   11b84:	0017071b          	addiw	a4,a4,1
   11b88:	99dff06f          	j	11524 <_vfprintf_r+0xc90>
   11b8c:	02813783          	ld	a5,40(sp)
   11b90:	00878713          	addi	a4,a5,8
   11b94:	0007e783          	lwu	a5,0(a5)
   11b98:	a0045e63          	bgez	s0,10db4 <_vfprintf_r+0x520>
   11b9c:	b04ff06f          	j	10ea0 <_vfprintf_r+0x60c>
   11ba0:	0b010613          	addi	a2,sp,176
   11ba4:	000a0593          	mv	a1,s4
   11ba8:	000b8513          	mv	a0,s7
   11bac:	509050ef          	jal	178b4 <__sprint_r>
   11bb0:	00050463          	beqz	a0,11bb8 <_vfprintf_r+0x1324>
   11bb4:	ff1fe06f          	j	10ba4 <_vfprintf_r+0x310>
   11bb8:	0c013783          	ld	a5,192(sp)
   11bbc:	0b812703          	lw	a4,184(sp)
   11bc0:	000b0893          	mv	a7,s6
   11bc4:	90dff06f          	j	114d0 <_vfprintf_r+0xc3c>
   11bc8:	02813783          	ld	a5,40(sp)
   11bcc:	00878713          	addi	a4,a5,8
   11bd0:	0007e783          	lwu	a5,0(a5)
   11bd4:	86045063          	bgez	s0,10c34 <_vfprintf_r+0x3a0>
   11bd8:	a84ff06f          	j	10e5c <_vfprintf_r+0x5c8>
   11bdc:	0b010613          	addi	a2,sp,176
   11be0:	000a0593          	mv	a1,s4
   11be4:	000b8513          	mv	a0,s7
   11be8:	4cd050ef          	jal	178b4 <__sprint_r>
   11bec:	00050463          	beqz	a0,11bf4 <_vfprintf_r+0x1360>
   11bf0:	fb5fe06f          	j	10ba4 <_vfprintf_r+0x310>
   11bf4:	0c013783          	ld	a5,192(sp)
   11bf8:	0b812703          	lw	a4,184(sp)
   11bfc:	000b0893          	mv	a7,s6
   11c00:	8fdff06f          	j	114fc <_vfprintf_r+0xc68>
   11c04:	02d00713          	li	a4,45
   11c08:	08e107a3          	sb	a4,143(sp)
   11c0c:	40f007b3          	neg	a5,a5
   11c10:	4a044063          	bltz	s0,120b0 <_vfprintf_r+0x181c>
   11c14:	f7fc7c13          	andi	s8,s8,-129
   11c18:	02d00613          	li	a2,45
   11c1c:	9a8ff06f          	j	10dc4 <_vfprintf_r+0x530>
   11c20:	05813507          	fld	fa0,88(sp)
   11c24:	01113023          	sd	a7,0(sp)
   11c28:	7dc050ef          	jal	17404 <__fpclassifyd>
   11c2c:	00013883          	ld	a7,0(sp)
   11c30:	2a050463          	beqz	a0,11ed8 <_vfprintf_r+0x1644>
   11c34:	fff00793          	li	a5,-1
   11c38:	fdfd7d93          	andi	s11,s10,-33
   11c3c:	62f40c63          	beq	s0,a5,12274 <_vfprintf_r+0x19e0>
   11c40:	04700793          	li	a5,71
   11c44:	62fd8263          	beq	s11,a5,12268 <_vfprintf_r+0x19d4>
   11c48:	05813703          	ld	a4,88(sp)
   11c4c:	100c6693          	ori	a3,s8,256
   11c50:	00d12023          	sw	a3,0(sp)
   11c54:	42075793          	srai	a5,a4,0x20
   11c58:	f2070453          	fmv.d.x	fs0,a4
   11c5c:	00000c93          	li	s9,0
   11c60:	6607c663          	bltz	a5,122cc <_vfprintf_r+0x1a38>
   11c64:	06600793          	li	a5,102
   11c68:	60fd0a63          	beq	s10,a5,1227c <_vfprintf_r+0x19e8>
   11c6c:	04600793          	li	a5,70
   11c70:	72fd0863          	beq	s10,a5,123a0 <_vfprintf_r+0x1b0c>
   11c74:	fbbd859b          	addiw	a1,s11,-69
   11c78:	0015b593          	seqz	a1,a1
   11c7c:	228405d3          	fmv.d	fa1,fs0
   11c80:	00b405bb          	addw	a1,s0,a1
   11c84:	09c10793          	addi	a5,sp,156
   11c88:	00058693          	mv	a3,a1
   11c8c:	0a810813          	addi	a6,sp,168
   11c90:	09810713          	addi	a4,sp,152
   11c94:	00200613          	li	a2,2
   11c98:	000b8513          	mv	a0,s7
   11c9c:	01113823          	sd	a7,16(sp)
   11ca0:	00b13423          	sd	a1,8(sp)
   11ca4:	745000ef          	jal	12be8 <_dtoa_r>
   11ca8:	06700793          	li	a5,103
   11cac:	00050913          	mv	s2,a0
   11cb0:	00813583          	ld	a1,8(sp)
   11cb4:	01013883          	ld	a7,16(sp)
   11cb8:	46fd0863          	beq	s10,a5,12128 <_vfprintf_r+0x1894>
   11cbc:	04700793          	li	a5,71
   11cc0:	00b50733          	add	a4,a0,a1
   11cc4:	48fd0a63          	beq	s10,a5,12158 <_vfprintf_r+0x18c4>
   11cc8:	f20007d3          	fmv.d.x	fa5,zero
   11ccc:	00070793          	mv	a5,a4
   11cd0:	a2f426d3          	feq.d	a3,fs0,fa5
   11cd4:	02069263          	bnez	a3,11cf8 <_vfprintf_r+0x1464>
   11cd8:	0a813783          	ld	a5,168(sp)
   11cdc:	00e7fe63          	bleu	a4,a5,11cf8 <_vfprintf_r+0x1464>
   11ce0:	03000613          	li	a2,48
   11ce4:	00178693          	addi	a3,a5,1
   11ce8:	0ad13423          	sd	a3,168(sp)
   11cec:	00c78023          	sb	a2,0(a5)
   11cf0:	0a813783          	ld	a5,168(sp)
   11cf4:	fee7e8e3          	bltu	a5,a4,11ce4 <_vfprintf_r+0x1450>
   11cf8:	412787b3          	sub	a5,a5,s2
   11cfc:	06f12823          	sw	a5,112(sp)
   11d00:	04700793          	li	a5,71
   11d04:	46fd8663          	beq	s11,a5,12170 <_vfprintf_r+0x18dc>
   11d08:	06500793          	li	a5,101
   11d0c:	7ba7dc63          	ble	s10,a5,124c4 <_vfprintf_r+0x1c30>
   11d10:	06600793          	li	a5,102
   11d14:	60fd0263          	beq	s10,a5,12318 <_vfprintf_r+0x1a84>
   11d18:	09812783          	lw	a5,152(sp)
   11d1c:	04f12623          	sw	a5,76(sp)
   11d20:	04c12703          	lw	a4,76(sp)
   11d24:	07012683          	lw	a3,112(sp)
   11d28:	00070793          	mv	a5,a4
   11d2c:	5ad74663          	blt	a4,a3,122d8 <_vfprintf_r+0x1a44>
   11d30:	001c7c13          	andi	s8,s8,1
   11d34:	5c0c1463          	bnez	s8,122fc <_vfprintf_r+0x1a68>
   11d38:	76074863          	bltz	a4,124a8 <_vfprintf_r+0x1c14>
   11d3c:	04c12703          	lw	a4,76(sp)
   11d40:	06700d13          	li	s10,103
   11d44:	02e12023          	sw	a4,32(sp)
   11d48:	440c9063          	bnez	s9,12188 <_vfprintf_r+0x18f4>
   11d4c:	08f14603          	lbu	a2,143(sp)
   11d50:	00f12423          	sw	a5,8(sp)
   11d54:	00012c03          	lw	s8,0(sp)
   11d58:	00000413          	li	s0,0
   11d5c:	f4dfe06f          	j	10ca8 <_vfprintf_r+0x414>
   11d60:	00076783          	lwu	a5,0(a4)
   11d64:	00870713          	addi	a4,a4,8
   11d68:	02e13423          	sd	a4,40(sp)
   11d6c:	974ff06f          	j	10ee0 <_vfprintf_r+0x64c>
   11d70:	02813703          	ld	a4,40(sp)
   11d74:	040c7c13          	andi	s8,s8,64
   11d78:	00073783          	ld	a5,0(a4)
   11d7c:	00870713          	addi	a4,a4,8
   11d80:	02e13423          	sd	a4,40(sp)
   11d84:	180c0263          	beqz	s8,11f08 <_vfprintf_r+0x1674>
   11d88:	01c15703          	lhu	a4,28(sp)
   11d8c:	00e79023          	sh	a4,0(a5)
   11d90:	c25fe06f          	j	109b4 <_vfprintf_r+0x120>
   11d94:	00072783          	lw	a5,0(a4)
   11d98:	00870713          	addi	a4,a4,8
   11d9c:	02e13423          	sd	a4,40(sp)
   11da0:	d24ff06f          	j	112c4 <_vfprintf_r+0xa30>
   11da4:	080107a3          	sb	zero,143(sp)
   11da8:	ec044463          	bltz	s0,11470 <_vfprintf_r+0xbdc>
   11dac:	f7fc7c13          	andi	s8,s8,-129
   11db0:	d41fe06f          	j	10af0 <_vfprintf_r+0x25c>
   11db4:	0b812703          	lw	a4,184(sp)
   11db8:	00913823          	sd	s1,16(sp)
   11dbc:	b74ff06f          	j	11130 <_vfprintf_r+0x89c>
   11dc0:	0b010613          	addi	a2,sp,176
   11dc4:	000a0593          	mv	a1,s4
   11dc8:	000b8513          	mv	a0,s7
   11dcc:	2e9050ef          	jal	178b4 <__sprint_r>
   11dd0:	00050463          	beqz	a0,11dd8 <_vfprintf_r+0x1544>
   11dd4:	dd1fe06f          	j	10ba4 <_vfprintf_r+0x310>
   11dd8:	0c013783          	ld	a5,192(sp)
   11ddc:	000b0893          	mv	a7,s6
   11de0:	ff0ff06f          	j	115d0 <_vfprintf_r+0xd3c>
   11de4:	0b812703          	lw	a4,184(sp)
   11de8:	0001a6b7          	lui	a3,0x1a
   11dec:	41068693          	addi	a3,a3,1040 # 1a410 <zeroes.4137+0x810>
   11df0:	00d8b023          	sd	a3,0(a7)
   11df4:	00178793          	addi	a5,a5,1
   11df8:	00100693          	li	a3,1
   11dfc:	0017071b          	addiw	a4,a4,1
   11e00:	00d8b423          	sd	a3,8(a7)
   11e04:	0cf13023          	sd	a5,192(sp)
   11e08:	0ae12c23          	sw	a4,184(sp)
   11e0c:	00700693          	li	a3,7
   11e10:	01088893          	addi	a7,a7,16
   11e14:	16e6ca63          	blt	a3,a4,11f88 <_vfprintf_r+0x16f4>
   11e18:	12040663          	beqz	s0,11f44 <_vfprintf_r+0x16b0>
   11e1c:	06013703          	ld	a4,96(sp)
   11e20:	06813683          	ld	a3,104(sp)
   11e24:	01088893          	addi	a7,a7,16
   11e28:	fee8b823          	sd	a4,-16(a7)
   11e2c:	0b812703          	lw	a4,184(sp)
   11e30:	00f687b3          	add	a5,a3,a5
   11e34:	fed8bc23          	sd	a3,-8(a7)
   11e38:	0017071b          	addiw	a4,a4,1
   11e3c:	0cf13023          	sd	a5,192(sp)
   11e40:	0ae12c23          	sw	a4,184(sp)
   11e44:	00700693          	li	a3,7
   11e48:	3ee6ca63          	blt	a3,a4,1223c <_vfprintf_r+0x19a8>
   11e4c:	4080043b          	negw	s0,s0
   11e50:	20805263          	blez	s0,12054 <_vfprintf_r+0x17c0>
   11e54:	01000693          	li	a3,16
   11e58:	1a86d663          	ble	s0,a3,12004 <_vfprintf_r+0x1770>
   11e5c:	01000d13          	li	s10,16
   11e60:	00913823          	sd	s1,16(sp)
   11e64:	00700813          	li	a6,7
   11e68:	000d0693          	mv	a3,s10
   11e6c:	00c0006f          	j	11e78 <_vfprintf_r+0x15e4>
   11e70:	ff04041b          	addiw	s0,s0,-16
   11e74:	1886da63          	ble	s0,a3,12008 <_vfprintf_r+0x1774>
   11e78:	01078793          	addi	a5,a5,16
   11e7c:	0017071b          	addiw	a4,a4,1
   11e80:	0098b023          	sd	s1,0(a7)
   11e84:	01a8b423          	sd	s10,8(a7)
   11e88:	0cf13023          	sd	a5,192(sp)
   11e8c:	0ae12c23          	sw	a4,184(sp)
   11e90:	01088893          	addi	a7,a7,16
   11e94:	fce85ee3          	ble	a4,a6,11e70 <_vfprintf_r+0x15dc>
   11e98:	0b010613          	addi	a2,sp,176
   11e9c:	000a0593          	mv	a1,s4
   11ea0:	000b8513          	mv	a0,s7
   11ea4:	02d13023          	sd	a3,32(sp)
   11ea8:	01013023          	sd	a6,0(sp)
   11eac:	209050ef          	jal	178b4 <__sprint_r>
   11eb0:	00050463          	beqz	a0,11eb8 <_vfprintf_r+0x1624>
   11eb4:	cf1fe06f          	j	10ba4 <_vfprintf_r+0x310>
   11eb8:	0c013783          	ld	a5,192(sp)
   11ebc:	0b812703          	lw	a4,184(sp)
   11ec0:	000b0893          	mv	a7,s6
   11ec4:	02013683          	ld	a3,32(sp)
   11ec8:	00013803          	ld	a6,0(sp)
   11ecc:	fa5ff06f          	j	11e70 <_vfprintf_r+0x15dc>
   11ed0:	fff00513          	li	a0,-1
   11ed4:	ce5fe06f          	j	10bb8 <_vfprintf_r+0x324>
   11ed8:	04700793          	li	a5,71
   11edc:	27a7c863          	blt	a5,s10,1214c <_vfprintf_r+0x18b8>
   11ee0:	0001a937          	lui	s2,0x1a
   11ee4:	3c890913          	addi	s2,s2,968 # 1a3c8 <zeroes.4137+0x7c8>
   11ee8:	00300793          	li	a5,3
   11eec:	00f12423          	sw	a5,8(sp)
   11ef0:	f7fc7c13          	andi	s8,s8,-129
   11ef4:	08f14603          	lbu	a2,143(sp)
   11ef8:	02f12023          	sw	a5,32(sp)
   11efc:	00000413          	li	s0,0
   11f00:	04012623          	sw	zero,76(sp)
   11f04:	da5fe06f          	j	10ca8 <_vfprintf_r+0x414>
   11f08:	01c12703          	lw	a4,28(sp)
   11f0c:	00e7a023          	sw	a4,0(a5)
   11f10:	aa5fe06f          	j	109b4 <_vfprintf_r+0x120>
   11f14:	0001a937          	lui	s2,0x1a
   11f18:	3b890913          	addi	s2,s2,952 # 1a3b8 <zeroes.4137+0x7b8>
   11f1c:	c34ff06f          	j	11350 <_vfprintf_r+0xabc>
   11f20:	0b010613          	addi	a2,sp,176
   11f24:	000a0593          	mv	a1,s4
   11f28:	000b8513          	mv	a0,s7
   11f2c:	189050ef          	jal	178b4 <__sprint_r>
   11f30:	00050463          	beqz	a0,11f38 <_vfprintf_r+0x16a4>
   11f34:	c71fe06f          	j	10ba4 <_vfprintf_r+0x310>
   11f38:	0c013783          	ld	a5,192(sp)
   11f3c:	000b0893          	mv	a7,s6
   11f40:	931ff06f          	j	11870 <_vfprintf_r+0xfdc>
   11f44:	07012703          	lw	a4,112(sp)
   11f48:	ec071ae3          	bnez	a4,11e1c <_vfprintf_r+0x1588>
   11f4c:	001c7713          	andi	a4,s8,1
   11f50:	a4070c63          	beqz	a4,111a8 <_vfprintf_r+0x914>
   11f54:	ec9ff06f          	j	11e1c <_vfprintf_r+0x1588>
   11f58:	0b010613          	addi	a2,sp,176
   11f5c:	000a0593          	mv	a1,s4
   11f60:	000b8513          	mv	a0,s7
   11f64:	151050ef          	jal	178b4 <__sprint_r>
   11f68:	00050463          	beqz	a0,11f70 <_vfprintf_r+0x16dc>
   11f6c:	c39fe06f          	j	10ba4 <_vfprintf_r+0x310>
   11f70:	09812703          	lw	a4,152(sp)
   11f74:	07012683          	lw	a3,112(sp)
   11f78:	0c013783          	ld	a5,192(sp)
   11f7c:	000b0893          	mv	a7,s6
   11f80:	40e6873b          	subw	a4,a3,a4
   11f84:	b15ff06f          	j	11a98 <_vfprintf_r+0x1204>
   11f88:	0b010613          	addi	a2,sp,176
   11f8c:	000a0593          	mv	a1,s4
   11f90:	000b8513          	mv	a0,s7
   11f94:	121050ef          	jal	178b4 <__sprint_r>
   11f98:	00050463          	beqz	a0,11fa0 <_vfprintf_r+0x170c>
   11f9c:	c09fe06f          	j	10ba4 <_vfprintf_r+0x310>
   11fa0:	09812403          	lw	s0,152(sp)
   11fa4:	0c013783          	ld	a5,192(sp)
   11fa8:	000b0893          	mv	a7,s6
   11fac:	e60418e3          	bnez	s0,11e1c <_vfprintf_r+0x1588>
   11fb0:	f95ff06f          	j	11f44 <_vfprintf_r+0x16b0>
   11fb4:	001c7793          	andi	a5,s8,1
   11fb8:	00078e63          	beqz	a5,11fd4 <_vfprintf_r+0x1740>
   11fbc:	03000793          	li	a5,48
   11fc0:	0ef107a3          	sb	a5,239(sp)
   11fc4:	07813783          	ld	a5,120(sp)
   11fc8:	0ef10913          	addi	s2,sp,239
   11fcc:	02f12023          	sw	a5,32(sp)
   11fd0:	cc1fe06f          	j	10c90 <_vfprintf_r+0x3fc>
   11fd4:	02012023          	sw	zero,32(sp)
   11fd8:	000b0913          	mv	s2,s6
   11fdc:	cb5fe06f          	j	10c90 <_vfprintf_r+0x3fc>
   11fe0:	0b010613          	addi	a2,sp,176
   11fe4:	000a0593          	mv	a1,s4
   11fe8:	000b8513          	mv	a0,s7
   11fec:	0c9050ef          	jal	178b4 <__sprint_r>
   11ff0:	00050463          	beqz	a0,11ff8 <_vfprintf_r+0x1764>
   11ff4:	bb1fe06f          	j	10ba4 <_vfprintf_r+0x310>
   11ff8:	0c013783          	ld	a5,192(sp)
   11ffc:	000b0893          	mv	a7,s6
   12000:	e14ff06f          	j	11614 <_vfprintf_r+0xd80>
   12004:	00913823          	sd	s1,16(sp)
   12008:	01013683          	ld	a3,16(sp)
   1200c:	008787b3          	add	a5,a5,s0
   12010:	0017071b          	addiw	a4,a4,1
   12014:	00d8b023          	sd	a3,0(a7)
   12018:	0088b423          	sd	s0,8(a7)
   1201c:	0cf13023          	sd	a5,192(sp)
   12020:	0ae12c23          	sw	a4,184(sp)
   12024:	00700693          	li	a3,7
   12028:	01088893          	addi	a7,a7,16
   1202c:	02e6d463          	ble	a4,a3,12054 <_vfprintf_r+0x17c0>
   12030:	0b010613          	addi	a2,sp,176
   12034:	000a0593          	mv	a1,s4
   12038:	000b8513          	mv	a0,s7
   1203c:	079050ef          	jal	178b4 <__sprint_r>
   12040:	00050463          	beqz	a0,12048 <_vfprintf_r+0x17b4>
   12044:	b61fe06f          	j	10ba4 <_vfprintf_r+0x310>
   12048:	0c013783          	ld	a5,192(sp)
   1204c:	0b812703          	lw	a4,184(sp)
   12050:	000b0893          	mv	a7,s6
   12054:	07012683          	lw	a3,112(sp)
   12058:	0017071b          	addiw	a4,a4,1
   1205c:	0128b023          	sd	s2,0(a7)
   12060:	00f687b3          	add	a5,a3,a5
   12064:	cecff06f          	j	11550 <_vfprintf_r+0xcbc>
   12068:	00090513          	mv	a0,s2
   1206c:	68c050ef          	jal	176f8 <strlen>
   12070:	0005079b          	sext.w	a5,a0
   12074:	02f12023          	sw	a5,32(sp)
   12078:	00078d93          	mv	s11,a5
   1207c:	00013883          	ld	a7,0(sp)
   12080:	0007c463          	bltz	a5,12088 <_vfprintf_r+0x17f4>
   12084:	cf5fe06f          	j	10d78 <_vfprintf_r+0x4e4>
   12088:	00000d93          	li	s11,0
   1208c:	cedfe06f          	j	10d78 <_vfprintf_r+0x4e4>
   12090:	0c013783          	ld	a5,192(sp)
   12094:	0b812703          	lw	a4,184(sp)
   12098:	05513823          	sd	s5,80(sp)
   1209c:	f6dfe06f          	j	11008 <_vfprintf_r+0x774>
   120a0:	00000413          	li	s0,0
   120a4:	fd0ff06f          	j	11874 <_vfprintf_r+0xfe0>
   120a8:	00000413          	li	s0,0
   120ac:	9f1ff06f          	j	11a9c <_vfprintf_r+0x1208>
   120b0:	02d00613          	li	a2,45
   120b4:	00100713          	li	a4,1
   120b8:	00100693          	li	a3,1
   120bc:	00d71463          	bne	a4,a3,120c4 <_vfprintf_r+0x1830>
   120c0:	d05fe06f          	j	10dc4 <_vfprintf_r+0x530>
   120c4:	00200693          	li	a3,2
   120c8:	00d71463          	bne	a4,a3,120d0 <_vfprintf_r+0x183c>
   120cc:	a31fe06f          	j	10afc <_vfprintf_r+0x268>
   120d0:	b81fe06f          	j	10c50 <_vfprintf_r+0x3bc>
   120d4:	00600713          	li	a4,6
   120d8:	00877463          	bleu	s0,a4,120e0 <_vfprintf_r+0x184c>
   120dc:	00070413          	mv	s0,a4
   120e0:	02812023          	sw	s0,32(sp)
   120e4:	00040d93          	mv	s11,s0
   120e8:	32044a63          	bltz	s0,1241c <_vfprintf_r+0x1b88>
   120ec:	0001a937          	lui	s2,0x1a
   120f0:	01b12423          	sw	s11,8(sp)
   120f4:	03913423          	sd	s9,40(sp)
   120f8:	00000613          	li	a2,0
   120fc:	00000413          	li	s0,0
   12100:	04012623          	sw	zero,76(sp)
   12104:	40890913          	addi	s2,s2,1032 # 1a408 <zeroes.4137+0x808>
   12108:	e45fe06f          	j	10f4c <_vfprintf_r+0x6b8>
   1210c:	0b812703          	lw	a4,184(sp)
   12110:	05513823          	sd	s5,80(sp)
   12114:	91cff06f          	j	11230 <_vfprintf_r+0x99c>
   12118:	00070c13          	mv	s8,a4
   1211c:	00000613          	li	a2,0
   12120:	00200713          	li	a4,2
   12124:	f95ff06f          	j	120b8 <_vfprintf_r+0x1824>
   12128:	001c7793          	andi	a5,s8,1
   1212c:	00b50733          	add	a4,a0,a1
   12130:	b8079ce3          	bnez	a5,11cc8 <_vfprintf_r+0x1434>
   12134:	0a813783          	ld	a5,168(sp)
   12138:	bc1ff06f          	j	11cf8 <_vfprintf_r+0x1464>
   1213c:	02d00793          	li	a5,45
   12140:	08f107a3          	sb	a5,143(sp)
   12144:	02d00613          	li	a2,45
   12148:	9f8ff06f          	j	11340 <_vfprintf_r+0xaac>
   1214c:	0001a937          	lui	s2,0x1a
   12150:	3d090913          	addi	s2,s2,976 # 1a3d0 <zeroes.4137+0x7d0>
   12154:	d95ff06f          	j	11ee8 <_vfprintf_r+0x1654>
   12158:	001c7793          	andi	a5,s8,1
   1215c:	26079a63          	bnez	a5,123d0 <_vfprintf_r+0x1b3c>
   12160:	0a813783          	ld	a5,168(sp)
   12164:	412787b3          	sub	a5,a5,s2
   12168:	06f12823          	sw	a5,112(sp)
   1216c:	35ad9c63          	bne	s11,s10,124c4 <_vfprintf_r+0x1c30>
   12170:	09812783          	lw	a5,152(sp)
   12174:	ffd00713          	li	a4,-3
   12178:	02e7cc63          	blt	a5,a4,121b0 <_vfprintf_r+0x191c>
   1217c:	02f44a63          	blt	s0,a5,121b0 <_vfprintf_r+0x191c>
   12180:	04f12623          	sw	a5,76(sp)
   12184:	b9dff06f          	j	11d20 <_vfprintf_r+0x148c>
   12188:	02d00713          	li	a4,45
   1218c:	08e107a3          	sb	a4,143(sp)
   12190:	00f12423          	sw	a5,8(sp)
   12194:	00012c03          	lw	s8,0(sp)
   12198:	02d00613          	li	a2,45
   1219c:	00000413          	li	s0,0
   121a0:	b0dfe06f          	j	10cac <_vfprintf_r+0x418>
   121a4:	0b812703          	lw	a4,184(sp)
   121a8:	00913823          	sd	s1,16(sp)
   121ac:	d78ff06f          	j	11724 <_vfprintf_r+0xe90>
   121b0:	ffed0d1b          	addiw	s10,s10,-2
   121b4:	fff7879b          	addiw	a5,a5,-1
   121b8:	08f12c23          	sw	a5,152(sp)
   121bc:	0ba10023          	sb	s10,160(sp)
   121c0:	2c07c863          	bltz	a5,12490 <_vfprintf_r+0x1bfc>
   121c4:	02b00713          	li	a4,43
   121c8:	0ae100a3          	sb	a4,161(sp)
   121cc:	00900613          	li	a2,9
   121d0:	16f64463          	blt	a2,a5,12338 <_vfprintf_r+0x1aa4>
   121d4:	0307879b          	addiw	a5,a5,48
   121d8:	03000713          	li	a4,48
   121dc:	0af101a3          	sb	a5,163(sp)
   121e0:	0ae10123          	sb	a4,162(sp)
   121e4:	0a410793          	addi	a5,sp,164
   121e8:	0a010713          	addi	a4,sp,160
   121ec:	40e787bb          	subw	a5,a5,a4
   121f0:	07012703          	lw	a4,112(sp)
   121f4:	06f12a23          	sw	a5,116(sp)
   121f8:	00e787bb          	addw	a5,a5,a4
   121fc:	02f12023          	sw	a5,32(sp)
   12200:	00100793          	li	a5,1
   12204:	26e7d263          	ble	a4,a5,12468 <_vfprintf_r+0x1bd4>
   12208:	02012783          	lw	a5,32(sp)
   1220c:	0017879b          	addiw	a5,a5,1
   12210:	02f12023          	sw	a5,32(sp)
   12214:	2607c463          	bltz	a5,1247c <_vfprintf_r+0x1be8>
   12218:	04012623          	sw	zero,76(sp)
   1221c:	b2dff06f          	j	11d48 <_vfprintf_r+0x14b4>
   12220:	00812423          	sw	s0,8(sp)
   12224:	02812023          	sw	s0,32(sp)
   12228:	08f14603          	lbu	a2,143(sp)
   1222c:	03913423          	sd	s9,40(sp)
   12230:	00000413          	li	s0,0
   12234:	04012623          	sw	zero,76(sp)
   12238:	a71fe06f          	j	10ca8 <_vfprintf_r+0x414>
   1223c:	0b010613          	addi	a2,sp,176
   12240:	000a0593          	mv	a1,s4
   12244:	000b8513          	mv	a0,s7
   12248:	66c050ef          	jal	178b4 <__sprint_r>
   1224c:	00050463          	beqz	a0,12254 <_vfprintf_r+0x19c0>
   12250:	955fe06f          	j	10ba4 <_vfprintf_r+0x310>
   12254:	09812403          	lw	s0,152(sp)
   12258:	0c013783          	ld	a5,192(sp)
   1225c:	0b812703          	lw	a4,184(sp)
   12260:	000b0893          	mv	a7,s6
   12264:	be9ff06f          	j	11e4c <_vfprintf_r+0x15b8>
   12268:	9e0410e3          	bnez	s0,11c48 <_vfprintf_r+0x13b4>
   1226c:	00090413          	mv	s0,s2
   12270:	9d9ff06f          	j	11c48 <_vfprintf_r+0x13b4>
   12274:	00600413          	li	s0,6
   12278:	9d1ff06f          	j	11c48 <_vfprintf_r+0x13b4>
   1227c:	228405d3          	fmv.d	fa1,fs0
   12280:	09810713          	addi	a4,sp,152
   12284:	0a810813          	addi	a6,sp,168
   12288:	09c10793          	addi	a5,sp,156
   1228c:	00040693          	mv	a3,s0
   12290:	00300613          	li	a2,3
   12294:	000b8513          	mv	a0,s7
   12298:	01113423          	sd	a7,8(sp)
   1229c:	14d000ef          	jal	12be8 <_dtoa_r>
   122a0:	00813883          	ld	a7,8(sp)
   122a4:	00040713          	mv	a4,s0
   122a8:	00050913          	mv	s2,a0
   122ac:	00e50733          	add	a4,a0,a4
   122b0:	00040593          	mv	a1,s0
   122b4:	00094683          	lbu	a3,0(s2)
   122b8:	03000793          	li	a5,48
   122bc:	14f68063          	beq	a3,a5,123fc <_vfprintf_r+0x1b68>
   122c0:	09812583          	lw	a1,152(sp)
   122c4:	00b70733          	add	a4,a4,a1
   122c8:	a01ff06f          	j	11cc8 <_vfprintf_r+0x1434>
   122cc:	22841453          	fneg.d	fs0,fs0
   122d0:	02d00c93          	li	s9,45
   122d4:	991ff06f          	j	11c64 <_vfprintf_r+0x13d0>
   122d8:	04c12703          	lw	a4,76(sp)
   122dc:	00100793          	li	a5,1
   122e0:	1ae05263          	blez	a4,12484 <_vfprintf_r+0x1bf0>
   122e4:	07012703          	lw	a4,112(sp)
   122e8:	00e787bb          	addw	a5,a5,a4
   122ec:	02f12023          	sw	a5,32(sp)
   122f0:	0007ce63          	bltz	a5,1230c <_vfprintf_r+0x1a78>
   122f4:	06700d13          	li	s10,103
   122f8:	a51ff06f          	j	11d48 <_vfprintf_r+0x14b4>
   122fc:	04c12783          	lw	a5,76(sp)
   12300:	0017879b          	addiw	a5,a5,1
   12304:	02f12023          	sw	a5,32(sp)
   12308:	fe07d6e3          	bgez	a5,122f4 <_vfprintf_r+0x1a60>
   1230c:	00000793          	li	a5,0
   12310:	06700d13          	li	s10,103
   12314:	a35ff06f          	j	11d48 <_vfprintf_r+0x14b4>
   12318:	09812783          	lw	a5,152(sp)
   1231c:	04f12623          	sw	a5,76(sp)
   12320:	12f05263          	blez	a5,12444 <_vfprintf_r+0x1bb0>
   12324:	0a041e63          	bnez	s0,123e0 <_vfprintf_r+0x1b4c>
   12328:	001c7c13          	andi	s8,s8,1
   1232c:	0a0c1a63          	bnez	s8,123e0 <_vfprintf_r+0x1b4c>
   12330:	02f12023          	sw	a5,32(sp)
   12334:	a15ff06f          	j	11d48 <_vfprintf_r+0x14b4>
   12338:	0af10593          	addi	a1,sp,175
   1233c:	00058713          	mv	a4,a1
   12340:	00a00513          	li	a0,10
   12344:	02a7e6bb          	remw	a3,a5,a0
   12348:	fff70713          	addi	a4,a4,-1
   1234c:	02a7c7bb          	divw	a5,a5,a0
   12350:	0306869b          	addiw	a3,a3,48
   12354:	00d70023          	sb	a3,0(a4)
   12358:	fef646e3          	blt	a2,a5,12344 <_vfprintf_r+0x1ab0>
   1235c:	0307879b          	addiw	a5,a5,48
   12360:	0ff7f793          	andi	a5,a5,255
   12364:	fff70693          	addi	a3,a4,-1
   12368:	fef70fa3          	sb	a5,-1(a4)
   1236c:	16b6f863          	bleu	a1,a3,124dc <_vfprintf_r+0x1c48>
   12370:	0a210613          	addi	a2,sp,162
   12374:	0080006f          	j	1237c <_vfprintf_r+0x1ae8>
   12378:	0006c783          	lbu	a5,0(a3)
   1237c:	00160613          	addi	a2,a2,1
   12380:	00168693          	addi	a3,a3,1
   12384:	fef60fa3          	sb	a5,-1(a2)
   12388:	feb698e3          	bne	a3,a1,12378 <_vfprintf_r+0x1ae4>
   1238c:	0b010793          	addi	a5,sp,176
   12390:	40e787b3          	sub	a5,a5,a4
   12394:	0a210713          	addi	a4,sp,162
   12398:	00f707b3          	add	a5,a4,a5
   1239c:	e4dff06f          	j	121e8 <_vfprintf_r+0x1954>
   123a0:	228405d3          	fmv.d	fa1,fs0
   123a4:	0a810813          	addi	a6,sp,168
   123a8:	09c10793          	addi	a5,sp,156
   123ac:	09810713          	addi	a4,sp,152
   123b0:	00040693          	mv	a3,s0
   123b4:	00300613          	li	a2,3
   123b8:	000b8513          	mv	a0,s7
   123bc:	01113423          	sd	a7,8(sp)
   123c0:	029000ef          	jal	12be8 <_dtoa_r>
   123c4:	00813883          	ld	a7,8(sp)
   123c8:	00050913          	mv	s2,a0
   123cc:	00040593          	mv	a1,s0
   123d0:	04600793          	li	a5,70
   123d4:	00b90733          	add	a4,s2,a1
   123d8:	ecfd0ee3          	beq	s10,a5,122b4 <_vfprintf_r+0x1a20>
   123dc:	8edff06f          	j	11cc8 <_vfprintf_r+0x1434>
   123e0:	04c12783          	lw	a5,76(sp)
   123e4:	0014041b          	addiw	s0,s0,1
   123e8:	008787bb          	addw	a5,a5,s0
   123ec:	02f12023          	sw	a5,32(sp)
   123f0:	9407dce3          	bgez	a5,11d48 <_vfprintf_r+0x14b4>
   123f4:	00000793          	li	a5,0
   123f8:	951ff06f          	j	11d48 <_vfprintf_r+0x14b4>
   123fc:	f20007d3          	fmv.d.x	fa5,zero
   12400:	a2f427d3          	feq.d	a5,fs0,fa5
   12404:	ea079ee3          	bnez	a5,122c0 <_vfprintf_r+0x1a2c>
   12408:	00100793          	li	a5,1
   1240c:	40b785bb          	subw	a1,a5,a1
   12410:	08b12c23          	sw	a1,152(sp)
   12414:	00b70733          	add	a4,a4,a1
   12418:	8b1ff06f          	j	11cc8 <_vfprintf_r+0x1434>
   1241c:	00000d93          	li	s11,0
   12420:	ccdff06f          	j	120ec <_vfprintf_r+0x1858>
   12424:	02813783          	ld	a5,40(sp)
   12428:	0007a403          	lw	s0,0(a5)
   1242c:	00878793          	addi	a5,a5,8
   12430:	02f13423          	sd	a5,40(sp)
   12434:	00044463          	bltz	s0,1243c <_vfprintf_r+0x1ba8>
   12438:	e18fe06f          	j	10a50 <_vfprintf_r+0x1bc>
   1243c:	fff00413          	li	s0,-1
   12440:	e10fe06f          	j	10a50 <_vfprintf_r+0x1bc>
   12444:	00041a63          	bnez	s0,12458 <_vfprintf_r+0x1bc4>
   12448:	00100793          	li	a5,1
   1244c:	00fc7c33          	and	s8,s8,a5
   12450:	02f12023          	sw	a5,32(sp)
   12454:	8e0c0ae3          	beqz	s8,11d48 <_vfprintf_r+0x14b4>
   12458:	0024079b          	addiw	a5,s0,2
   1245c:	02f12023          	sw	a5,32(sp)
   12460:	8e07d4e3          	bgez	a5,11d48 <_vfprintf_r+0x14b4>
   12464:	f91ff06f          	j	123f4 <_vfprintf_r+0x1b60>
   12468:	00fc7c33          	and	s8,s8,a5
   1246c:	d80c1ee3          	bnez	s8,12208 <_vfprintf_r+0x1974>
   12470:	02012703          	lw	a4,32(sp)
   12474:	00070793          	mv	a5,a4
   12478:	da0750e3          	bgez	a4,12218 <_vfprintf_r+0x1984>
   1247c:	00000793          	li	a5,0
   12480:	d99ff06f          	j	12218 <_vfprintf_r+0x1984>
   12484:	00200793          	li	a5,2
   12488:	40e787bb          	subw	a5,a5,a4
   1248c:	e59ff06f          	j	122e4 <_vfprintf_r+0x1a50>
   12490:	02d00713          	li	a4,45
   12494:	40f007bb          	negw	a5,a5
   12498:	0ae100a3          	sb	a4,161(sp)
   1249c:	d31ff06f          	j	121cc <_vfprintf_r+0x1938>
   124a0:	08b107a3          	sb	a1,143(sp)
   124a4:	ed9fe06f          	j	1137c <_vfprintf_r+0xae8>
   124a8:	00000793          	li	a5,0
   124ac:	891ff06f          	j	11d3c <_vfprintf_r+0x14a8>
   124b0:	08b107a3          	sb	a1,143(sp)
   124b4:	010c6c13          	ori	s8,s8,16
   124b8:	f2dfe06f          	j	113e4 <_vfprintf_r+0xb50>
   124bc:	08b107a3          	sb	a1,143(sp)
   124c0:	ef5fe06f          	j	113b4 <_vfprintf_r+0xb20>
   124c4:	09812783          	lw	a5,152(sp)
   124c8:	cedff06f          	j	121b4 <_vfprintf_r+0x1920>
   124cc:	08b107a3          	sb	a1,143(sp)
   124d0:	e2dfe06f          	j	112fc <_vfprintf_r+0xa68>
   124d4:	08b107a3          	sb	a1,143(sp)
   124d8:	dd5fe06f          	j	112ac <_vfprintf_r+0xa18>
   124dc:	0a210793          	addi	a5,sp,162
   124e0:	d09ff06f          	j	121e8 <_vfprintf_r+0x1954>
   124e4:	08b107a3          	sb	a1,143(sp)
   124e8:	f41fe06f          	j	11428 <_vfprintf_r+0xb94>
   124ec:	08b107a3          	sb	a1,143(sp)
   124f0:	f28fe06f          	j	10c18 <_vfprintf_r+0x384>
   124f4:	08b107a3          	sb	a1,143(sp)
   124f8:	9c5fe06f          	j	10ebc <_vfprintf_r+0x628>
   124fc:	08b107a3          	sb	a1,143(sp)
   12500:	010c6c13          	ori	s8,s8,16
   12504:	979fe06f          	j	10e7c <_vfprintf_r+0x5e8>
   12508:	08b107a3          	sb	a1,143(sp)
   1250c:	010c6c13          	ori	s8,s8,16
   12510:	929fe06f          	j	10e38 <_vfprintf_r+0x5a4>
   12514:	08b107a3          	sb	a1,143(sp)
   12518:	881fe06f          	j	10d98 <_vfprintf_r+0x504>

000000000001251c <vfprintf>:
   1251c:	00060693          	mv	a3,a2
   12520:	00058613          	mv	a2,a1
   12524:	00050593          	mv	a1,a0
   12528:	8101b503          	ld	a0,-2032(gp) # 1c5d0 <_impure_ptr>
   1252c:	b68fe06f          	j	10894 <_vfprintf_r>

0000000000012530 <__sbprintf>:
   12530:	0105d783          	lhu	a5,16(a1)
   12534:	0ac5ae03          	lw	t3,172(a1)
   12538:	0125d303          	lhu	t1,18(a1)
   1253c:	0305b883          	ld	a7,48(a1)
   12540:	0405b803          	ld	a6,64(a1)
   12544:	b3010113          	addi	sp,sp,-1232
   12548:	ffd7f793          	andi	a5,a5,-3
   1254c:	40000713          	li	a4,1024
   12550:	4c813023          	sd	s0,1216(sp)
   12554:	00f11823          	sh	a5,16(sp)
   12558:	00058413          	mv	s0,a1
   1255c:	0b010793          	addi	a5,sp,176
   12560:	00010593          	mv	a1,sp
   12564:	4a913c23          	sd	s1,1208(sp)
   12568:	4b213823          	sd	s2,1200(sp)
   1256c:	4c113423          	sd	ra,1224(sp)
   12570:	00050913          	mv	s2,a0
   12574:	0bc12623          	sw	t3,172(sp)
   12578:	00611923          	sh	t1,18(sp)
   1257c:	03113823          	sd	a7,48(sp)
   12580:	05013023          	sd	a6,64(sp)
   12584:	00f13023          	sd	a5,0(sp)
   12588:	00f13c23          	sd	a5,24(sp)
   1258c:	00e12623          	sw	a4,12(sp)
   12590:	02e12023          	sw	a4,32(sp)
   12594:	02012423          	sw	zero,40(sp)
   12598:	afcfe0ef          	jal	10894 <_vfprintf_r>
   1259c:	00050493          	mv	s1,a0
   125a0:	00054a63          	bltz	a0,125b4 <__sbprintf+0x84>
   125a4:	00010593          	mv	a1,sp
   125a8:	00090513          	mv	a0,s2
   125ac:	1a5010ef          	jal	13f50 <_fflush_r>
   125b0:	02051c63          	bnez	a0,125e8 <__sbprintf+0xb8>
   125b4:	01015783          	lhu	a5,16(sp)
   125b8:	0407f793          	andi	a5,a5,64
   125bc:	00078863          	beqz	a5,125cc <__sbprintf+0x9c>
   125c0:	01045783          	lhu	a5,16(s0)
   125c4:	0407e793          	ori	a5,a5,64
   125c8:	00f41823          	sh	a5,16(s0)
   125cc:	4c813083          	ld	ra,1224(sp)
   125d0:	00048513          	mv	a0,s1
   125d4:	4c013403          	ld	s0,1216(sp)
   125d8:	4b813483          	ld	s1,1208(sp)
   125dc:	4b013903          	ld	s2,1200(sp)
   125e0:	4d010113          	addi	sp,sp,1232
   125e4:	00008067          	ret
   125e8:	fff00493          	li	s1,-1
   125ec:	fc9ff06f          	j	125b4 <__sbprintf+0x84>

00000000000125f0 <__swsetup_r>:
   125f0:	8101b783          	ld	a5,-2032(gp) # 1c5d0 <_impure_ptr>
   125f4:	fe010113          	addi	sp,sp,-32
   125f8:	00813823          	sd	s0,16(sp)
   125fc:	00913423          	sd	s1,8(sp)
   12600:	00113c23          	sd	ra,24(sp)
   12604:	00050493          	mv	s1,a0
   12608:	00058413          	mv	s0,a1
   1260c:	00078663          	beqz	a5,12618 <__swsetup_r+0x28>
   12610:	0507a703          	lw	a4,80(a5)
   12614:	0e070063          	beqz	a4,126f4 <__swsetup_r+0x104>
   12618:	01041703          	lh	a4,16(s0)
   1261c:	03071793          	slli	a5,a4,0x30
   12620:	0307d793          	srli	a5,a5,0x30
   12624:	0087f693          	andi	a3,a5,8
   12628:	04068263          	beqz	a3,1266c <__swsetup_r+0x7c>
   1262c:	01843683          	ld	a3,24(s0)
   12630:	06068663          	beqz	a3,1269c <__swsetup_r+0xac>
   12634:	0017f713          	andi	a4,a5,1
   12638:	08071463          	bnez	a4,126c0 <__swsetup_r+0xd0>
   1263c:	0027f793          	andi	a5,a5,2
   12640:	00000713          	li	a4,0
   12644:	00079463          	bnez	a5,1264c <__swsetup_r+0x5c>
   12648:	02042703          	lw	a4,32(s0)
   1264c:	00e42623          	sw	a4,12(s0)
   12650:	00000513          	li	a0,0
   12654:	08068263          	beqz	a3,126d8 <__swsetup_r+0xe8>
   12658:	01813083          	ld	ra,24(sp)
   1265c:	01013403          	ld	s0,16(sp)
   12660:	00813483          	ld	s1,8(sp)
   12664:	02010113          	addi	sp,sp,32
   12668:	00008067          	ret
   1266c:	0107f693          	andi	a3,a5,16
   12670:	0c068663          	beqz	a3,1273c <__swsetup_r+0x14c>
   12674:	0047f793          	andi	a5,a5,4
   12678:	08079463          	bnez	a5,12700 <__swsetup_r+0x110>
   1267c:	01843683          	ld	a3,24(s0)
   12680:	00876793          	ori	a5,a4,8
   12684:	0107979b          	slliw	a5,a5,0x10
   12688:	4107d79b          	sraiw	a5,a5,0x10
   1268c:	00f41823          	sh	a5,16(s0)
   12690:	03079793          	slli	a5,a5,0x30
   12694:	0307d793          	srli	a5,a5,0x30
   12698:	f8069ee3          	bnez	a3,12634 <__swsetup_r+0x44>
   1269c:	2807f713          	andi	a4,a5,640
   126a0:	20000613          	li	a2,512
   126a4:	f8c708e3          	beq	a4,a2,12634 <__swsetup_r+0x44>
   126a8:	00040593          	mv	a1,s0
   126ac:	00048513          	mv	a0,s1
   126b0:	0ed020ef          	jal	14f9c <__smakebuf_r>
   126b4:	01045783          	lhu	a5,16(s0)
   126b8:	01843683          	ld	a3,24(s0)
   126bc:	f79ff06f          	j	12634 <__swsetup_r+0x44>
   126c0:	02042783          	lw	a5,32(s0)
   126c4:	00042623          	sw	zero,12(s0)
   126c8:	00000513          	li	a0,0
   126cc:	40f007bb          	negw	a5,a5
   126d0:	02f42423          	sw	a5,40(s0)
   126d4:	f80692e3          	bnez	a3,12658 <__swsetup_r+0x68>
   126d8:	01041783          	lh	a5,16(s0)
   126dc:	0807f713          	andi	a4,a5,128
   126e0:	f6070ce3          	beqz	a4,12658 <__swsetup_r+0x68>
   126e4:	0407e793          	ori	a5,a5,64
   126e8:	00f41823          	sh	a5,16(s0)
   126ec:	fff00513          	li	a0,-1
   126f0:	f69ff06f          	j	12658 <__swsetup_r+0x68>
   126f4:	00078513          	mv	a0,a5
   126f8:	405010ef          	jal	142fc <__sinit>
   126fc:	f1dff06f          	j	12618 <__swsetup_r+0x28>
   12700:	05843583          	ld	a1,88(s0)
   12704:	00058e63          	beqz	a1,12720 <__swsetup_r+0x130>
   12708:	07440793          	addi	a5,s0,116
   1270c:	00f58863          	beq	a1,a5,1271c <__swsetup_r+0x12c>
   12710:	00048513          	mv	a0,s1
   12714:	68d010ef          	jal	145a0 <_free_r>
   12718:	01041703          	lh	a4,16(s0)
   1271c:	04043c23          	sd	zero,88(s0)
   12720:	01843683          	ld	a3,24(s0)
   12724:	fdb77713          	andi	a4,a4,-37
   12728:	0107171b          	slliw	a4,a4,0x10
   1272c:	4107571b          	sraiw	a4,a4,0x10
   12730:	00042423          	sw	zero,8(s0)
   12734:	00d43023          	sd	a3,0(s0)
   12738:	f49ff06f          	j	12680 <__swsetup_r+0x90>
   1273c:	00900793          	li	a5,9
   12740:	00f4a023          	sw	a5,0(s1)
   12744:	04076713          	ori	a4,a4,64
   12748:	00e41823          	sh	a4,16(s0)
   1274c:	fff00513          	li	a0,-1
   12750:	f09ff06f          	j	12658 <__swsetup_r+0x68>

0000000000012754 <__register_exitproc>:
   12754:	fd010113          	addi	sp,sp,-48
   12758:	02813023          	sd	s0,32(sp)
   1275c:	8081b403          	ld	s0,-2040(gp) # 1c5c8 <_global_impure_ptr>
   12760:	00913c23          	sd	s1,24(sp)
   12764:	00050493          	mv	s1,a0
   12768:	1f843503          	ld	a0,504(s0)
   1276c:	01213823          	sd	s2,16(sp)
   12770:	01313423          	sd	s3,8(sp)
   12774:	01413023          	sd	s4,0(sp)
   12778:	02113423          	sd	ra,40(sp)
   1277c:	00058913          	mv	s2,a1
   12780:	00060a13          	mv	s4,a2
   12784:	00068993          	mv	s3,a3
   12788:	0c050663          	beqz	a0,12854 <__register_exitproc+0x100>
   1278c:	00852703          	lw	a4,8(a0)
   12790:	01f00793          	li	a5,31
   12794:	0017059b          	addiw	a1,a4,1
   12798:	04e7d063          	ble	a4,a5,127d8 <__register_exitproc+0x84>
   1279c:	000007b7          	lui	a5,0x0
   127a0:	00078793          	mv	a5,a5
   127a4:	0a078e63          	beqz	a5,12860 <__register_exitproc+0x10c>
   127a8:	31800513          	li	a0,792
   127ac:	fffee317          	auipc	t1,0xfffee
   127b0:	854300e7          	jalr	t1,-1964 # 0 <_ftext-0x10000>
   127b4:	0a050663          	beqz	a0,12860 <__register_exitproc+0x10c>
   127b8:	1f843783          	ld	a5,504(s0)
   127bc:	00052423          	sw	zero,8(a0)
   127c0:	00100593          	li	a1,1
   127c4:	00f53023          	sd	a5,0(a0)
   127c8:	1ea43c23          	sd	a0,504(s0)
   127cc:	30052823          	sw	zero,784(a0)
   127d0:	30052a23          	sw	zero,788(a0)
   127d4:	00000713          	li	a4,0
   127d8:	00070793          	mv	a5,a4
   127dc:	02049e63          	bnez	s1,12818 <__register_exitproc+0xc4>
   127e0:	00278793          	addi	a5,a5,2 # 2 <_ftext-0xfffe>
   127e4:	00379793          	slli	a5,a5,0x3
   127e8:	00b52423          	sw	a1,8(a0)
   127ec:	00f50533          	add	a0,a0,a5
   127f0:	01253023          	sd	s2,0(a0)
   127f4:	00000513          	li	a0,0
   127f8:	02813083          	ld	ra,40(sp)
   127fc:	02013403          	ld	s0,32(sp)
   12800:	01813483          	ld	s1,24(sp)
   12804:	01013903          	ld	s2,16(sp)
   12808:	00813983          	ld	s3,8(sp)
   1280c:	00013a03          	ld	s4,0(sp)
   12810:	03010113          	addi	sp,sp,48
   12814:	00008067          	ret
   12818:	00371813          	slli	a6,a4,0x3
   1281c:	01050833          	add	a6,a0,a6
   12820:	11483823          	sd	s4,272(a6)
   12824:	31052883          	lw	a7,784(a0)
   12828:	00100613          	li	a2,1
   1282c:	00e6173b          	sllw	a4,a2,a4
   12830:	00e8e633          	or	a2,a7,a4
   12834:	30c52823          	sw	a2,784(a0)
   12838:	21383823          	sd	s3,528(a6)
   1283c:	00200693          	li	a3,2
   12840:	fad490e3          	bne	s1,a3,127e0 <__register_exitproc+0x8c>
   12844:	31452683          	lw	a3,788(a0)
   12848:	00e6e733          	or	a4,a3,a4
   1284c:	30e52a23          	sw	a4,788(a0)
   12850:	f91ff06f          	j	127e0 <__register_exitproc+0x8c>
   12854:	20040513          	addi	a0,s0,512
   12858:	1ea43c23          	sd	a0,504(s0)
   1285c:	f31ff06f          	j	1278c <__register_exitproc+0x38>
   12860:	fff00513          	li	a0,-1
   12864:	f95ff06f          	j	127f8 <__register_exitproc+0xa4>

0000000000012868 <__call_exitprocs>:
   12868:	fa010113          	addi	sp,sp,-96
   1286c:	03413823          	sd	s4,48(sp)
   12870:	8081ba03          	ld	s4,-2040(gp) # 1c5c8 <_global_impure_ptr>
   12874:	03313c23          	sd	s3,56(sp)
   12878:	000009b7          	lui	s3,0x0
   1287c:	04913423          	sd	s1,72(sp)
   12880:	05213023          	sd	s2,64(sp)
   12884:	03513423          	sd	s5,40(sp)
   12888:	01713c23          	sd	s7,24(sp)
   1288c:	01813823          	sd	s8,16(sp)
   12890:	04113c23          	sd	ra,88(sp)
   12894:	04813823          	sd	s0,80(sp)
   12898:	03613023          	sd	s6,32(sp)
   1289c:	01913423          	sd	s9,8(sp)
   128a0:	01a13023          	sd	s10,0(sp)
   128a4:	00050913          	mv	s2,a0
   128a8:	00058b93          	mv	s7,a1
   128ac:	1f8a0a93          	addi	s5,s4,504
   128b0:	00100493          	li	s1,1
   128b4:	fff00c13          	li	s8,-1
   128b8:	00098993          	mv	s3,s3
   128bc:	1f8a3b03          	ld	s6,504(s4)
   128c0:	0c0b0663          	beqz	s6,1298c <__call_exitprocs+0x124>
   128c4:	000a8d13          	mv	s10,s5
   128c8:	008b2403          	lw	s0,8(s6)
   128cc:	fff4041b          	addiw	s0,s0,-1
   128d0:	02045263          	bgez	s0,128f4 <__call_exitprocs+0x8c>
   128d4:	08c0006f          	j	12960 <__call_exitprocs+0xf8>
   128d8:	02040793          	addi	a5,s0,32
   128dc:	00379793          	slli	a5,a5,0x3
   128e0:	00fb07b3          	add	a5,s6,a5
   128e4:	1107b783          	ld	a5,272(a5)
   128e8:	00fb8a63          	beq	s7,a5,128fc <__call_exitprocs+0x94>
   128ec:	fff4041b          	addiw	s0,s0,-1
   128f0:	07840863          	beq	s0,s8,12960 <__call_exitprocs+0xf8>
   128f4:	00040713          	mv	a4,s0
   128f8:	fe0b90e3          	bnez	s7,128d8 <__call_exitprocs+0x70>
   128fc:	008b2783          	lw	a5,8(s6)
   12900:	00371713          	slli	a4,a4,0x3
   12904:	00eb0733          	add	a4,s6,a4
   12908:	fff7879b          	addiw	a5,a5,-1
   1290c:	01073683          	ld	a3,16(a4)
   12910:	0a878e63          	beq	a5,s0,129cc <__call_exitprocs+0x164>
   12914:	00073823          	sd	zero,16(a4)
   12918:	fc068ae3          	beqz	a3,128ec <__call_exitprocs+0x84>
   1291c:	310b2783          	lw	a5,784(s6)
   12920:	0084963b          	sllw	a2,s1,s0
   12924:	008b2c83          	lw	s9,8(s6)
   12928:	00f677b3          	and	a5,a2,a5
   1292c:	08078c63          	beqz	a5,129c4 <__call_exitprocs+0x15c>
   12930:	314b2783          	lw	a5,788(s6)
   12934:	00f67633          	and	a2,a2,a5
   12938:	08061e63          	bnez	a2,129d4 <__call_exitprocs+0x16c>
   1293c:	11073583          	ld	a1,272(a4)
   12940:	00090513          	mv	a0,s2
   12944:	000680e7          	jalr	a3
   12948:	008b2783          	lw	a5,8(s6)
   1294c:	f79798e3          	bne	a5,s9,128bc <__call_exitprocs+0x54>
   12950:	000d3783          	ld	a5,0(s10)
   12954:	f76794e3          	bne	a5,s6,128bc <__call_exitprocs+0x54>
   12958:	fff4041b          	addiw	s0,s0,-1
   1295c:	f9841ce3          	bne	s0,s8,128f4 <__call_exitprocs+0x8c>
   12960:	02098663          	beqz	s3,1298c <__call_exitprocs+0x124>
   12964:	008b2783          	lw	a5,8(s6)
   12968:	06079c63          	bnez	a5,129e0 <__call_exitprocs+0x178>
   1296c:	000b3783          	ld	a5,0(s6)
   12970:	08078263          	beqz	a5,129f4 <__call_exitprocs+0x18c>
   12974:	000b0513          	mv	a0,s6
   12978:	00fd3023          	sd	a5,0(s10)
   1297c:	fffed317          	auipc	t1,0xfffed
   12980:	684300e7          	jalr	t1,1668 # 0 <_ftext-0x10000>
   12984:	000d3b03          	ld	s6,0(s10)
   12988:	f40b10e3          	bnez	s6,128c8 <__call_exitprocs+0x60>
   1298c:	05813083          	ld	ra,88(sp)
   12990:	05013403          	ld	s0,80(sp)
   12994:	04813483          	ld	s1,72(sp)
   12998:	04013903          	ld	s2,64(sp)
   1299c:	03813983          	ld	s3,56(sp)
   129a0:	03013a03          	ld	s4,48(sp)
   129a4:	02813a83          	ld	s5,40(sp)
   129a8:	02013b03          	ld	s6,32(sp)
   129ac:	01813b83          	ld	s7,24(sp)
   129b0:	01013c03          	ld	s8,16(sp)
   129b4:	00813c83          	ld	s9,8(sp)
   129b8:	00013d03          	ld	s10,0(sp)
   129bc:	06010113          	addi	sp,sp,96
   129c0:	00008067          	ret
   129c4:	000680e7          	jalr	a3
   129c8:	f81ff06f          	j	12948 <__call_exitprocs+0xe0>
   129cc:	008b2423          	sw	s0,8(s6)
   129d0:	f49ff06f          	j	12918 <__call_exitprocs+0xb0>
   129d4:	11073503          	ld	a0,272(a4)
   129d8:	000680e7          	jalr	a3
   129dc:	f6dff06f          	j	12948 <__call_exitprocs+0xe0>
   129e0:	000b3783          	ld	a5,0(s6)
   129e4:	000b0d13          	mv	s10,s6
   129e8:	00078b13          	mv	s6,a5
   129ec:	ec0b1ee3          	bnez	s6,128c8 <__call_exitprocs+0x60>
   129f0:	f9dff06f          	j	1298c <__call_exitprocs+0x124>
   129f4:	00000793          	li	a5,0
   129f8:	fedff06f          	j	129e4 <__call_exitprocs+0x17c>

00000000000129fc <quorem>:
   129fc:	fc010113          	addi	sp,sp,-64
   12a00:	03213023          	sd	s2,32(sp)
   12a04:	01452783          	lw	a5,20(a0)
   12a08:	0145a903          	lw	s2,20(a1)
   12a0c:	02113c23          	sd	ra,56(sp)
   12a10:	02813823          	sd	s0,48(sp)
   12a14:	02913423          	sd	s1,40(sp)
   12a18:	01313c23          	sd	s3,24(sp)
   12a1c:	01413823          	sd	s4,16(sp)
   12a20:	01513423          	sd	s5,8(sp)
   12a24:	1b27ce63          	blt	a5,s2,12be0 <quorem+0x1e4>
   12a28:	fff9091b          	addiw	s2,s2,-1
   12a2c:	00090f13          	mv	t5,s2
   12a30:	002f1f13          	slli	t5,t5,0x2
   12a34:	01858413          	addi	s0,a1,24
   12a38:	01e409b3          	add	s3,s0,t5
   12a3c:	01850a13          	addi	s4,a0,24
   12a40:	01ea0f33          	add	t5,s4,t5
   12a44:	0009a783          	lw	a5,0(s3) # 0 <_ftext-0x10000>
   12a48:	000f2483          	lw	s1,0(t5)
   12a4c:	0017879b          	addiw	a5,a5,1
   12a50:	02f4d4bb          	divuw	s1,s1,a5
   12a54:	0a048e63          	beqz	s1,12b10 <quorem+0x114>
   12a58:	00010337          	lui	t1,0x10
   12a5c:	00040e93          	mv	t4,s0
   12a60:	000a0e13          	mv	t3,s4
   12a64:	00000613          	li	a2,0
   12a68:	00000713          	li	a4,0
   12a6c:	fff3031b          	addiw	t1,t1,-1
   12a70:	004e8e93          	addi	t4,t4,4
   12a74:	ffcea803          	lw	a6,-4(t4)
   12a78:	000e2683          	lw	a3,0(t3)
   12a7c:	004e0e13          	addi	t3,t3,4
   12a80:	006878b3          	and	a7,a6,t1
   12a84:	029888bb          	mulw	a7,a7,s1
   12a88:	0108581b          	srliw	a6,a6,0x10
   12a8c:	0066f7b3          	and	a5,a3,t1
   12a90:	0106d69b          	srliw	a3,a3,0x10
   12a94:	0298083b          	mulw	a6,a6,s1
   12a98:	00c888bb          	addw	a7,a7,a2
   12a9c:	0108d61b          	srliw	a2,a7,0x10
   12aa0:	0068f8b3          	and	a7,a7,t1
   12aa4:	4117073b          	subw	a4,a4,a7
   12aa8:	00f707bb          	addw	a5,a4,a5
   12aac:	4107d71b          	sraiw	a4,a5,0x10
   12ab0:	0067f7b3          	and	a5,a5,t1
   12ab4:	00c8063b          	addw	a2,a6,a2
   12ab8:	00667833          	and	a6,a2,t1
   12abc:	410686bb          	subw	a3,a3,a6
   12ac0:	00e6873b          	addw	a4,a3,a4
   12ac4:	0107169b          	slliw	a3,a4,0x10
   12ac8:	00f6e6b3          	or	a3,a3,a5
   12acc:	fede2e23          	sw	a3,-4(t3)
   12ad0:	0106561b          	srliw	a2,a2,0x10
   12ad4:	4107571b          	sraiw	a4,a4,0x10
   12ad8:	f9d9fce3          	bleu	t4,s3,12a70 <quorem+0x74>
   12adc:	000f2783          	lw	a5,0(t5)
   12ae0:	02079863          	bnez	a5,12b10 <quorem+0x114>
   12ae4:	ffcf0793          	addi	a5,t5,-4
   12ae8:	02fa7263          	bleu	a5,s4,12b0c <quorem+0x110>
   12aec:	ffcf2703          	lw	a4,-4(t5)
   12af0:	00070863          	beqz	a4,12b00 <quorem+0x104>
   12af4:	0180006f          	j	12b0c <quorem+0x110>
   12af8:	0007a703          	lw	a4,0(a5)
   12afc:	00071863          	bnez	a4,12b0c <quorem+0x110>
   12b00:	ffc78793          	addi	a5,a5,-4
   12b04:	fff9091b          	addiw	s2,s2,-1
   12b08:	fefa68e3          	bltu	s4,a5,12af8 <quorem+0xfc>
   12b0c:	01252a23          	sw	s2,20(a0)
   12b10:	00050a93          	mv	s5,a0
   12b14:	2a9030ef          	jal	165bc <__mcmp>
   12b18:	0a054063          	bltz	a0,12bb8 <quorem+0x1bc>
   12b1c:	000105b7          	lui	a1,0x10
   12b20:	0014849b          	addiw	s1,s1,1
   12b24:	000a0613          	mv	a2,s4
   12b28:	00000793          	li	a5,0
   12b2c:	fff5859b          	addiw	a1,a1,-1
   12b30:	00440413          	addi	s0,s0,4
   12b34:	ffc42683          	lw	a3,-4(s0)
   12b38:	00062703          	lw	a4,0(a2)
   12b3c:	00460613          	addi	a2,a2,4
   12b40:	00b6f833          	and	a6,a3,a1
   12b44:	410787bb          	subw	a5,a5,a6
   12b48:	00b77833          	and	a6,a4,a1
   12b4c:	010787bb          	addw	a5,a5,a6
   12b50:	0106d69b          	srliw	a3,a3,0x10
   12b54:	0107571b          	srliw	a4,a4,0x10
   12b58:	40d7073b          	subw	a4,a4,a3
   12b5c:	4107d69b          	sraiw	a3,a5,0x10
   12b60:	00d706bb          	addw	a3,a4,a3
   12b64:	0106981b          	slliw	a6,a3,0x10
   12b68:	00b7f733          	and	a4,a5,a1
   12b6c:	00e86733          	or	a4,a6,a4
   12b70:	fee62e23          	sw	a4,-4(a2)
   12b74:	4106d79b          	sraiw	a5,a3,0x10
   12b78:	fa89fce3          	bleu	s0,s3,12b30 <quorem+0x134>
   12b7c:	00291713          	slli	a4,s2,0x2
   12b80:	00ea0733          	add	a4,s4,a4
   12b84:	00072783          	lw	a5,0(a4)
   12b88:	02079863          	bnez	a5,12bb8 <quorem+0x1bc>
   12b8c:	ffc70793          	addi	a5,a4,-4
   12b90:	02fa7263          	bleu	a5,s4,12bb4 <quorem+0x1b8>
   12b94:	ffc72703          	lw	a4,-4(a4)
   12b98:	00070863          	beqz	a4,12ba8 <quorem+0x1ac>
   12b9c:	0180006f          	j	12bb4 <quorem+0x1b8>
   12ba0:	0007a703          	lw	a4,0(a5)
   12ba4:	00071863          	bnez	a4,12bb4 <quorem+0x1b8>
   12ba8:	ffc78793          	addi	a5,a5,-4
   12bac:	fff9091b          	addiw	s2,s2,-1
   12bb0:	fefa68e3          	bltu	s4,a5,12ba0 <quorem+0x1a4>
   12bb4:	012aaa23          	sw	s2,20(s5)
   12bb8:	00048513          	mv	a0,s1
   12bbc:	03813083          	ld	ra,56(sp)
   12bc0:	03013403          	ld	s0,48(sp)
   12bc4:	02813483          	ld	s1,40(sp)
   12bc8:	02013903          	ld	s2,32(sp)
   12bcc:	01813983          	ld	s3,24(sp)
   12bd0:	01013a03          	ld	s4,16(sp)
   12bd4:	00813a83          	ld	s5,8(sp)
   12bd8:	04010113          	addi	sp,sp,64
   12bdc:	00008067          	ret
   12be0:	00000513          	li	a0,0
   12be4:	fd9ff06f          	j	12bbc <quorem+0x1c0>

0000000000012be8 <_dtoa_r>:
   12be8:	e20585d3          	fmv.x.d	a1,fa1
   12bec:	06053883          	ld	a7,96(a0)
   12bf0:	f3010113          	addi	sp,sp,-208
   12bf4:	0c813023          	sd	s0,192(sp)
   12bf8:	0a913c23          	sd	s1,184(sp)
   12bfc:	0b313423          	sd	s3,168(sp)
   12c00:	09613823          	sd	s6,144(sp)
   12c04:	07913c23          	sd	s9,120(sp)
   12c08:	07a13823          	sd	s10,112(sp)
   12c0c:	0c113423          	sd	ra,200(sp)
   12c10:	0b213823          	sd	s2,176(sp)
   12c14:	0b413023          	sd	s4,160(sp)
   12c18:	09513c23          	sd	s5,152(sp)
   12c1c:	09713423          	sd	s7,136(sp)
   12c20:	09813023          	sd	s8,128(sp)
   12c24:	07b13423          	sd	s11,104(sp)
   12c28:	00e13023          	sd	a4,0(sp)
   12c2c:	00050413          	mv	s0,a0
   12c30:	00060993          	mv	s3,a2
   12c34:	00068c93          	mv	s9,a3
   12c38:	00078493          	mv	s1,a5
   12c3c:	00080b13          	mv	s6,a6
   12c40:	00058d13          	mv	s10,a1
   12c44:	02088263          	beqz	a7,12c68 <_dtoa_r+0x80>
   12c48:	06852603          	lw	a2,104(a0)
   12c4c:	00100693          	li	a3,1
   12c50:	00088593          	mv	a1,a7
   12c54:	00c696bb          	sllw	a3,a3,a2
   12c58:	00c8a423          	sw	a2,8(a7)
   12c5c:	00d8a623          	sw	a3,12(a7)
   12c60:	110030ef          	jal	15d70 <_Bfree>
   12c64:	06043023          	sd	zero,96(s0)
   12c68:	420d5913          	srai	s2,s10,0x20
   12c6c:	0c094063          	bltz	s2,12d2c <_dtoa_r+0x144>
   12c70:	0004a023          	sw	zero,0(s1)
   12c74:	7ff007b7          	lui	a5,0x7ff00
   12c78:	00f976b3          	and	a3,s2,a5
   12c7c:	06f68a63          	beq	a3,a5,12cf0 <_dtoa_r+0x108>
   12c80:	f20007d3          	fmv.d.x	fa5,zero
   12c84:	f20d0753          	fmv.d.x	fa4,s10
   12c88:	a2f727d3          	feq.d	a5,fa4,fa5
   12c8c:	0c078463          	beqz	a5,12d54 <_dtoa_r+0x16c>
   12c90:	00013703          	ld	a4,0(sp)
   12c94:	00100793          	li	a5,1
   12c98:	00f72023          	sw	a5,0(a4)
   12c9c:	480b0a63          	beqz	s6,13130 <_dtoa_r+0x548>
   12ca0:	0001a7b7          	lui	a5,0x1a
   12ca4:	41178793          	addi	a5,a5,1041 # 1a411 <zeroes.4137+0x811>
   12ca8:	0001a537          	lui	a0,0x1a
   12cac:	00fb3023          	sd	a5,0(s6)
   12cb0:	41050513          	addi	a0,a0,1040 # 1a410 <zeroes.4137+0x810>
   12cb4:	0c813083          	ld	ra,200(sp)
   12cb8:	0c013403          	ld	s0,192(sp)
   12cbc:	0b813483          	ld	s1,184(sp)
   12cc0:	0b013903          	ld	s2,176(sp)
   12cc4:	0a813983          	ld	s3,168(sp)
   12cc8:	0a013a03          	ld	s4,160(sp)
   12ccc:	09813a83          	ld	s5,152(sp)
   12cd0:	09013b03          	ld	s6,144(sp)
   12cd4:	08813b83          	ld	s7,136(sp)
   12cd8:	08013c03          	ld	s8,128(sp)
   12cdc:	07813c83          	ld	s9,120(sp)
   12ce0:	07013d03          	ld	s10,112(sp)
   12ce4:	06813d83          	ld	s11,104(sp)
   12ce8:	0d010113          	addi	sp,sp,208
   12cec:	00008067          	ret
   12cf0:	00013703          	ld	a4,0(sp)
   12cf4:	000027b7          	lui	a5,0x2
   12cf8:	70f7879b          	addiw	a5,a5,1807
   12cfc:	00f72023          	sw	a5,0(a4)
   12d00:	00cd1793          	slli	a5,s10,0xc
   12d04:	3e079863          	bnez	a5,130f4 <_dtoa_r+0x50c>
   12d08:	0001a537          	lui	a0,0x1a
   12d0c:	41850513          	addi	a0,a0,1048 # 1a418 <zeroes.4137+0x818>
   12d10:	fa0b02e3          	beqz	s6,12cb4 <_dtoa_r+0xcc>
   12d14:	00354703          	lbu	a4,3(a0)
   12d18:	00350793          	addi	a5,a0,3
   12d1c:	00070463          	beqz	a4,12d24 <_dtoa_r+0x13c>
   12d20:	00850793          	addi	a5,a0,8
   12d24:	00fb3023          	sd	a5,0(s6)
   12d28:	f8dff06f          	j	12cb4 <_dtoa_r+0xcc>
   12d2c:	800007b7          	lui	a5,0x80000
   12d30:	fff7c793          	not	a5,a5
   12d34:	020d1713          	slli	a4,s10,0x20
   12d38:	00f97933          	and	s2,s2,a5
   12d3c:	02091793          	slli	a5,s2,0x20
   12d40:	02075713          	srli	a4,a4,0x20
   12d44:	00100693          	li	a3,1
   12d48:	00d4a023          	sw	a3,0(s1)
   12d4c:	00f76d33          	or	s10,a4,a5
   12d50:	f25ff06f          	j	12c74 <_dtoa_r+0x8c>
   12d54:	f20d05d3          	fmv.d.x	fa1,s10
   12d58:	05810693          	addi	a3,sp,88
   12d5c:	05c10613          	addi	a2,sp,92
   12d60:	00040513          	mv	a0,s0
   12d64:	499030ef          	jal	169fc <__d2b>
   12d68:	02a13023          	sd	a0,32(sp)
   12d6c:	0149581b          	srliw	a6,s2,0x14
   12d70:	38081863          	bnez	a6,13100 <_dtoa_r+0x518>
   12d74:	05812603          	lw	a2,88(sp)
   12d78:	05c12803          	lw	a6,92(sp)
   12d7c:	02000793          	li	a5,32
   12d80:	0106083b          	addw	a6,a2,a6
   12d84:	4328069b          	addiw	a3,a6,1074
   12d88:	6ad7de63          	ble	a3,a5,13444 <_dtoa_r+0x85c>
   12d8c:	04000593          	li	a1,64
   12d90:	4128049b          	addiw	s1,a6,1042
   12d94:	000d079b          	sext.w	a5,s10
   12d98:	40d585bb          	subw	a1,a1,a3
   12d9c:	0097d7bb          	srlw	a5,a5,s1
   12da0:	00b914bb          	sllw	s1,s2,a1
   12da4:	0097e4b3          	or	s1,a5,s1
   12da8:	d21487d3          	fcvt.d.wu	fa5,s1
   12dac:	fe1006b7          	lui	a3,0xfe100
   12db0:	fff8081b          	addiw	a6,a6,-1
   12db4:	e20784d3          	fmv.x.d	s1,fa5
   12db8:	00100913          	li	s2,1
   12dbc:	4204d793          	srai	a5,s1,0x20
   12dc0:	00d787bb          	addw	a5,a5,a3
   12dc4:	02049493          	slli	s1,s1,0x20
   12dc8:	02079793          	slli	a5,a5,0x20
   12dcc:	0204d493          	srli	s1,s1,0x20
   12dd0:	00f4e4b3          	or	s1,s1,a5
   12dd4:	0001c7b7          	lui	a5,0x1c
   12dd8:	5f87b787          	fld	fa5,1528(a5) # 1c5f8 <__wctomb+0x8>
   12ddc:	f2048753          	fmv.d.x	fa4,s1
   12de0:	0001c7b7          	lui	a5,0x1c
   12de4:	0af77653          	fsub.d	fa2,fa4,fa5
   12de8:	6087b787          	fld	fa5,1544(a5) # 1c608 <__wctomb+0x18>
   12dec:	0001c7b7          	lui	a5,0x1c
   12df0:	6007b687          	fld	fa3,1536(a5) # 1c600 <__wctomb+0x10>
   12df4:	0001c7b7          	lui	a5,0x1c
   12df8:	d2080753          	fcvt.d.w	fa4,a6
   12dfc:	7ad677c3          	fmadd.d	fa5,fa2,fa3,fa5
   12e00:	6107b687          	fld	fa3,1552(a5) # 1c610 <__wctomb+0x20>
   12e04:	7ad777c3          	fmadd.d	fa5,fa4,fa3,fa5
   12e08:	f2000753          	fmv.d.x	fa4,zero
   12e0c:	a2e797d3          	flt.d	a5,fa5,fa4
   12e10:	c2079bd3          	fcvt.w.d	s7,fa5,rtz
   12e14:	5e079e63          	bnez	a5,13410 <_dtoa_r+0x828>
   12e18:	00100793          	li	a5,1
   12e1c:	02f12823          	sw	a5,48(sp)
   12e20:	01600793          	li	a5,22
   12e24:	0377e663          	bltu	a5,s7,12e50 <_dtoa_r+0x268>
   12e28:	0001a7b7          	lui	a5,0x1a
   12e2c:	003b9693          	slli	a3,s7,0x3
   12e30:	97078793          	addi	a5,a5,-1680 # 19970 <__mprec_tens>
   12e34:	00f687b3          	add	a5,a3,a5
   12e38:	0007b787          	fld	fa5,0(a5)
   12e3c:	f20d0753          	fmv.d.x	fa4,s10
   12e40:	a2f717d3          	flt.d	a5,fa4,fa5
   12e44:	60078863          	beqz	a5,13454 <_dtoa_r+0x86c>
   12e48:	fffb8b9b          	addiw	s7,s7,-1
   12e4c:	02012823          	sw	zero,48(sp)
   12e50:	4106083b          	subw	a6,a2,a6
   12e54:	fff80d9b          	addiw	s11,a6,-1
   12e58:	00000813          	li	a6,0
   12e5c:	2e0dc063          	bltz	s11,1313c <_dtoa_r+0x554>
   12e60:	5c0bc263          	bltz	s7,13424 <_dtoa_r+0x83c>
   12e64:	017d8dbb          	addw	s11,s11,s7
   12e68:	03712423          	sw	s7,40(sp)
   12e6c:	00000c13          	li	s8,0
   12e70:	00900793          	li	a5,9
   12e74:	2d37ea63          	bltu	a5,s3,13148 <_dtoa_r+0x560>
   12e78:	00500793          	li	a5,5
   12e7c:	00100a13          	li	s4,1
   12e80:	0137d663          	ble	s3,a5,12e8c <_dtoa_r+0x2a4>
   12e84:	ffc9899b          	addiw	s3,s3,-4
   12e88:	00000a13          	li	s4,0
   12e8c:	00300793          	li	a5,3
   12e90:	2af982e3          	beq	s3,a5,13934 <_dtoa_r+0xd4c>
   12e94:	1f37dce3          	ble	s3,a5,1388c <_dtoa_r+0xca4>
   12e98:	00400793          	li	a5,4
   12e9c:	0cf98ae3          	beq	s3,a5,13770 <_dtoa_r+0xb88>
   12ea0:	00100793          	li	a5,1
   12ea4:	00f12823          	sw	a5,16(sp)
   12ea8:	00500793          	li	a5,5
   12eac:	1ef996e3          	bne	s3,a5,13898 <_dtoa_r+0xcb0>
   12eb0:	019b87bb          	addw	a5,s7,s9
   12eb4:	00178a9b          	addiw	s5,a5,1
   12eb8:	02f12a23          	sw	a5,52(sp)
   12ebc:	000a8513          	mv	a0,s5
   12ec0:	000a8493          	mv	s1,s5
   12ec4:	1b505ee3          	blez	s5,13880 <_dtoa_r+0xc98>
   12ec8:	06042423          	sw	zero,104(s0)
   12ecc:	01f00793          	li	a5,31
   12ed0:	00000593          	li	a1,0
   12ed4:	02a7f463          	bleu	a0,a5,12efc <_dtoa_r+0x314>
   12ed8:	00100613          	li	a2,1
   12edc:	00400693          	li	a3,4
   12ee0:	0016969b          	slliw	a3,a3,0x1
   12ee4:	00068793          	mv	a5,a3
   12ee8:	01c78793          	addi	a5,a5,28
   12eec:	00060593          	mv	a1,a2
   12ef0:	0016061b          	addiw	a2,a2,1
   12ef4:	fef576e3          	bleu	a5,a0,12ee0 <_dtoa_r+0x2f8>
   12ef8:	06b42423          	sw	a1,104(s0)
   12efc:	00040513          	mv	a0,s0
   12f00:	03013c23          	sd	a6,56(sp)
   12f04:	5c1020ef          	jal	15cc4 <_Balloc>
   12f08:	00a13423          	sd	a0,8(sp)
   12f0c:	06a43023          	sd	a0,96(s0)
   12f10:	00e00793          	li	a5,14
   12f14:	03813803          	ld	a6,56(sp)
   12f18:	2697e463          	bltu	a5,s1,13180 <_dtoa_r+0x598>
   12f1c:	260a0263          	beqz	s4,13180 <_dtoa_r+0x598>
   12f20:	03a13c23          	sd	s10,56(sp)
   12f24:	317054e3          	blez	s7,13a2c <_dtoa_r+0xe44>
   12f28:	00fbf713          	andi	a4,s7,15
   12f2c:	00371693          	slli	a3,a4,0x3
   12f30:	0001a737          	lui	a4,0x1a
   12f34:	404bd79b          	sraiw	a5,s7,0x4
   12f38:	97070713          	addi	a4,a4,-1680 # 19970 <__mprec_tens>
   12f3c:	00e68733          	add	a4,a3,a4
   12f40:	0107f693          	andi	a3,a5,16
   12f44:	00073687          	fld	fa3,0(a4)
   12f48:	f20d07d3          	fmv.d.x	fa5,s10
   12f4c:	00200713          	li	a4,2
   12f50:	00068c63          	beqz	a3,12f68 <_dtoa_r+0x380>
   12f54:	0001a737          	lui	a4,0x1a
   12f58:	a8073707          	fld	fa4,-1408(a4) # 19a80 <__mprec_bigtens+0x20>
   12f5c:	00f7f793          	andi	a5,a5,15
   12f60:	00300713          	li	a4,3
   12f64:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   12f68:	02078663          	beqz	a5,12f94 <_dtoa_r+0x3ac>
   12f6c:	0001a6b7          	lui	a3,0x1a
   12f70:	a6068693          	addi	a3,a3,-1440 # 19a60 <__mprec_bigtens>
   12f74:	0017f613          	andi	a2,a5,1
   12f78:	4017d79b          	sraiw	a5,a5,0x1
   12f7c:	00060863          	beqz	a2,12f8c <_dtoa_r+0x3a4>
   12f80:	0006b707          	fld	fa4,0(a3)
   12f84:	0017071b          	addiw	a4,a4,1
   12f88:	12e6f6d3          	fmul.d	fa3,fa3,fa4
   12f8c:	00868693          	addi	a3,a3,8
   12f90:	fe0792e3          	bnez	a5,12f74 <_dtoa_r+0x38c>
   12f94:	1ad7f7d3          	fdiv.d	fa5,fa5,fa3
   12f98:	03012783          	lw	a5,48(sp)
   12f9c:	00078a63          	beqz	a5,12fb0 <_dtoa_r+0x3c8>
   12fa0:	0001c7b7          	lui	a5,0x1c
   12fa4:	6187b707          	fld	fa4,1560(a5) # 1c618 <__wctomb+0x28>
   12fa8:	a2e797d3          	flt.d	a5,fa5,fa4
   12fac:	440790e3          	bnez	a5,13bec <_dtoa_r+0x1004>
   12fb0:	0001c7b7          	lui	a5,0x1c
   12fb4:	d20706d3          	fcvt.d.w	fa3,a4
   12fb8:	6287b707          	fld	fa4,1576(a5) # 1c628 <__wctomb+0x38>
   12fbc:	fcc006b7          	lui	a3,0xfcc00
   12fc0:	72f6f743          	fmadd.d	fa4,fa3,fa5,fa4
   12fc4:	e2070753          	fmv.x.d	a4,fa4
   12fc8:	42075793          	srai	a5,a4,0x20
   12fcc:	00d787bb          	addw	a5,a5,a3
   12fd0:	02071713          	slli	a4,a4,0x20
   12fd4:	02079793          	slli	a5,a5,0x20
   12fd8:	02075713          	srli	a4,a4,0x20
   12fdc:	00f76733          	or	a4,a4,a5
   12fe0:	180a86e3          	beqz	s5,1396c <_dtoa_r+0xd84>
   12fe4:	000b8693          	mv	a3,s7
   12fe8:	000a8613          	mv	a2,s5
   12fec:	01012783          	lw	a5,16(sp)
   12ff0:	300782e3          	beqz	a5,13af4 <_dtoa_r+0xf0c>
   12ff4:	fff6079b          	addiw	a5,a2,-1
   12ff8:	0001a5b7          	lui	a1,0x1a
   12ffc:	97058593          	addi	a1,a1,-1680 # 19970 <__mprec_tens>
   13000:	00379793          	slli	a5,a5,0x3
   13004:	00b787b3          	add	a5,a5,a1
   13008:	0001c5b7          	lui	a1,0x1c
   1300c:	0007b687          	fld	fa3,0(a5)
   13010:	6385b707          	fld	fa4,1592(a1) # 1c638 <__wctomb+0x48>
   13014:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   13018:	00813503          	ld	a0,8(sp)
   1301c:	1ad77753          	fdiv.d	fa4,fa4,fa3
   13020:	d20786d3          	fcvt.d.w	fa3,a5
   13024:	0307879b          	addiw	a5,a5,48
   13028:	0ff7f793          	andi	a5,a5,255
   1302c:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   13030:	f20706d3          	fmv.d.x	fa3,a4
   13034:	00f50023          	sb	a5,0(a0)
   13038:	00150493          	addi	s1,a0,1
   1303c:	0ad77753          	fsub.d	fa4,fa4,fa3
   13040:	a2e79753          	flt.d	a4,fa5,fa4
   13044:	08071063          	bnez	a4,130c4 <_dtoa_r+0x4dc>
   13048:	0001c737          	lui	a4,0x1c
   1304c:	61873587          	fld	fa1,1560(a4) # 1c618 <__wctomb+0x28>
   13050:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   13054:	a2e69753          	flt.d	a4,fa3,fa4
   13058:	40071ae3          	bnez	a4,13c6c <_dtoa_r+0x1084>
   1305c:	00100793          	li	a5,1
   13060:	1ac7d4e3          	ble	a2,a5,13a08 <_dtoa_r+0xe20>
   13064:	0001c7b7          	lui	a5,0x1c
   13068:	ffe6061b          	addiw	a2,a2,-2
   1306c:	02061613          	slli	a2,a2,0x20
   13070:	6207b607          	fld	fa2,1568(a5) # 1c620 <__wctomb+0x30>
   13074:	00813783          	ld	a5,8(sp)
   13078:	02065613          	srli	a2,a2,0x20
   1307c:	00260613          	addi	a2,a2,2
   13080:	00c78633          	add	a2,a5,a2
   13084:	0140006f          	j	13098 <_dtoa_r+0x4b0>
   13088:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   1308c:	a2e69753          	flt.d	a4,fa3,fa4
   13090:	3c071ee3          	bnez	a4,13c6c <_dtoa_r+0x1084>
   13094:	16960ae3          	beq	a2,s1,13a08 <_dtoa_r+0xe20>
   13098:	12c7f7d3          	fmul.d	fa5,fa5,fa2
   1309c:	12c77753          	fmul.d	fa4,fa4,fa2
   130a0:	00148493          	addi	s1,s1,1
   130a4:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   130a8:	d20786d3          	fcvt.d.w	fa3,a5
   130ac:	0307879b          	addiw	a5,a5,48
   130b0:	0ff7f793          	andi	a5,a5,255
   130b4:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   130b8:	fef48fa3          	sb	a5,-1(s1)
   130bc:	a2e79753          	flt.d	a4,fa5,fa4
   130c0:	fc0704e3          	beqz	a4,13088 <_dtoa_r+0x4a0>
   130c4:	00068b93          	mv	s7,a3
   130c8:	02013583          	ld	a1,32(sp)
   130cc:	00040513          	mv	a0,s0
   130d0:	001b8b9b          	addiw	s7,s7,1
   130d4:	49d020ef          	jal	15d70 <_Bfree>
   130d8:	00013783          	ld	a5,0(sp)
   130dc:	00048023          	sb	zero,0(s1)
   130e0:	0177a023          	sw	s7,0(a5)
   130e4:	0c0b0ce3          	beqz	s6,139bc <_dtoa_r+0xdd4>
   130e8:	009b3023          	sd	s1,0(s6)
   130ec:	00813503          	ld	a0,8(sp)
   130f0:	bc5ff06f          	j	12cb4 <_dtoa_r+0xcc>
   130f4:	0001a537          	lui	a0,0x1a
   130f8:	42850513          	addi	a0,a0,1064 # 1a428 <zeroes.4137+0x828>
   130fc:	c15ff06f          	j	12d10 <_dtoa_r+0x128>
   13100:	00cd1793          	slli	a5,s10,0xc
   13104:	02c7d693          	srli	a3,a5,0x2c
   13108:	3ff007b7          	lui	a5,0x3ff00
   1310c:	00f6e7b3          	or	a5,a3,a5
   13110:	020d1493          	slli	s1,s10,0x20
   13114:	02079793          	slli	a5,a5,0x20
   13118:	0204d493          	srli	s1,s1,0x20
   1311c:	00f4e4b3          	or	s1,s1,a5
   13120:	c018081b          	addiw	a6,a6,-1023
   13124:	05812603          	lw	a2,88(sp)
   13128:	00000913          	li	s2,0
   1312c:	ca9ff06f          	j	12dd4 <_dtoa_r+0x1ec>
   13130:	0001a537          	lui	a0,0x1a
   13134:	41050513          	addi	a0,a0,1040 # 1a410 <zeroes.4137+0x810>
   13138:	b7dff06f          	j	12cb4 <_dtoa_r+0xcc>
   1313c:	41b0083b          	negw	a6,s11
   13140:	00000d93          	li	s11,0
   13144:	d1dff06f          	j	12e60 <_dtoa_r+0x278>
   13148:	06042423          	sw	zero,104(s0)
   1314c:	00000593          	li	a1,0
   13150:	00040513          	mv	a0,s0
   13154:	03013c23          	sd	a6,56(sp)
   13158:	36d020ef          	jal	15cc4 <_Balloc>
   1315c:	03813803          	ld	a6,56(sp)
   13160:	fff00a93          	li	s5,-1
   13164:	00100793          	li	a5,1
   13168:	00a13423          	sd	a0,8(sp)
   1316c:	06a43023          	sd	a0,96(s0)
   13170:	03512a23          	sw	s5,52(sp)
   13174:	00000993          	li	s3,0
   13178:	00000c93          	li	s9,0
   1317c:	00f12823          	sw	a5,16(sp)
   13180:	05c12783          	lw	a5,92(sp)
   13184:	0e07ca63          	bltz	a5,13278 <_dtoa_r+0x690>
   13188:	00e00693          	li	a3,14
   1318c:	0f76c663          	blt	a3,s7,13278 <_dtoa_r+0x690>
   13190:	0001a7b7          	lui	a5,0x1a
   13194:	003b9693          	slli	a3,s7,0x3
   13198:	97078793          	addi	a5,a5,-1680 # 19970 <__mprec_tens>
   1319c:	00f687b3          	add	a5,a3,a5
   131a0:	0007b687          	fld	fa3,0(a5)
   131a4:	5e0cc663          	bltz	s9,13790 <_dtoa_r+0xba8>
   131a8:	f20d0653          	fmv.d.x	fa2,s10
   131ac:	00813703          	ld	a4,8(sp)
   131b0:	22d69553          	fneg.d	fa0,fa3
   131b4:	1ad67753          	fdiv.d	fa4,fa2,fa3
   131b8:	00170493          	addi	s1,a4,1
   131bc:	c20717d3          	fcvt.w.d	a5,fa4,rtz
   131c0:	d20787d3          	fcvt.d.w	fa5,a5
   131c4:	0307869b          	addiw	a3,a5,48
   131c8:	00d70023          	sb	a3,0(a4)
   131cc:	00100713          	li	a4,1
   131d0:	62f577c3          	fmadd.d	fa5,fa0,fa5,fa2
   131d4:	2aea88e3          	beq	s5,a4,13c84 <_dtoa_r+0x109c>
   131d8:	0001c7b7          	lui	a5,0x1c
   131dc:	6207b587          	fld	fa1,1568(a5) # 1c620 <__wctomb+0x30>
   131e0:	f2000653          	fmv.d.x	fa2,zero
   131e4:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   131e8:	a2c7a7d3          	feq.d	a5,fa5,fa2
   131ec:	ec079ee3          	bnez	a5,130c8 <_dtoa_r+0x4e0>
   131f0:	ffea869b          	addiw	a3,s5,-2
   131f4:	02069693          	slli	a3,a3,0x20
   131f8:	00813783          	ld	a5,8(sp)
   131fc:	0206d693          	srli	a3,a3,0x20
   13200:	00268693          	addi	a3,a3,2 # fffffffffcc00002 <_gp+0xfffffffffcbe3242>
   13204:	00d786b3          	add	a3,a5,a3
   13208:	0100006f          	j	13218 <_dtoa_r+0x630>
   1320c:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   13210:	a2c7a7d3          	feq.d	a5,fa5,fa2
   13214:	ea079ae3          	bnez	a5,130c8 <_dtoa_r+0x4e0>
   13218:	1ad7f753          	fdiv.d	fa4,fa5,fa3
   1321c:	00148493          	addi	s1,s1,1
   13220:	c20717d3          	fcvt.w.d	a5,fa4,rtz
   13224:	d2078753          	fcvt.d.w	fa4,a5
   13228:	0307871b          	addiw	a4,a5,48
   1322c:	fee48fa3          	sb	a4,-1(s1)
   13230:	7ae577c3          	fmadd.d	fa5,fa0,fa4,fa5
   13234:	fcd49ce3          	bne	s1,a3,1320c <_dtoa_r+0x624>
   13238:	02f7f7d3          	fadd.d	fa5,fa5,fa5
   1323c:	a2f69753          	flt.d	a4,fa3,fa5
   13240:	7c070863          	beqz	a4,13a10 <_dtoa_r+0xe28>
   13244:	fff6c783          	lbu	a5,-1(a3)
   13248:	00068493          	mv	s1,a3
   1324c:	03900693          	li	a3,57
   13250:	0140006f          	j	13264 <_dtoa_r+0x67c>
   13254:	00813783          	ld	a5,8(sp)
   13258:	02f70ce3          	beq	a4,a5,13a90 <_dtoa_r+0xea8>
   1325c:	fff74783          	lbu	a5,-1(a4)
   13260:	00070493          	mv	s1,a4
   13264:	fff48713          	addi	a4,s1,-1
   13268:	fed786e3          	beq	a5,a3,13254 <_dtoa_r+0x66c>
   1326c:	0017879b          	addiw	a5,a5,1
   13270:	00f70023          	sb	a5,0(a4)
   13274:	e55ff06f          	j	130c8 <_dtoa_r+0x4e0>
   13278:	01012703          	lw	a4,16(sp)
   1327c:	1a070c63          	beqz	a4,13434 <_dtoa_r+0x84c>
   13280:	00100693          	li	a3,1
   13284:	5536d863          	ble	s3,a3,137d4 <_dtoa_r+0xbec>
   13288:	fffa869b          	addiw	a3,s5,-1
   1328c:	72dc4c63          	blt	s8,a3,139c4 <_dtoa_r+0xddc>
   13290:	40dc06bb          	subw	a3,s8,a3
   13294:	00080493          	mv	s1,a6
   13298:	000a8793          	mv	a5,s5
   1329c:	120ac2e3          	bltz	s5,13bc0 <_dtoa_r+0xfd8>
   132a0:	00f8083b          	addw	a6,a6,a5
   132a4:	00100593          	li	a1,1
   132a8:	00040513          	mv	a0,s0
   132ac:	04d13423          	sd	a3,72(sp)
   132b0:	05013023          	sd	a6,64(sp)
   132b4:	03013c23          	sd	a6,56(sp)
   132b8:	00fd8dbb          	addw	s11,s11,a5
   132bc:	641020ef          	jal	160fc <__i2b>
   132c0:	04013803          	ld	a6,64(sp)
   132c4:	04813683          	ld	a3,72(sp)
   132c8:	00050a13          	mv	s4,a0
   132cc:	00048e63          	beqz	s1,132e8 <_dtoa_r+0x700>
   132d0:	01b05c63          	blez	s11,132e8 <_dtoa_r+0x700>
   132d4:	00048793          	mv	a5,s1
   132d8:	489dc463          	blt	s11,s1,13760 <_dtoa_r+0xb78>
   132dc:	40f8083b          	subw	a6,a6,a5
   132e0:	40f484bb          	subw	s1,s1,a5
   132e4:	40fd8dbb          	subw	s11,s11,a5
   132e8:	02013903          	ld	s2,32(sp)
   132ec:	07805e63          	blez	s8,13368 <_dtoa_r+0x780>
   132f0:	01012783          	lw	a5,16(sp)
   132f4:	6a078463          	beqz	a5,1399c <_dtoa_r+0xdb4>
   132f8:	04068a63          	beqz	a3,1334c <_dtoa_r+0x764>
   132fc:	00068613          	mv	a2,a3
   13300:	000a0593          	mv	a1,s4
   13304:	00040513          	mv	a0,s0
   13308:	05013023          	sd	a6,64(sp)
   1330c:	02d13c23          	sd	a3,56(sp)
   13310:	014030ef          	jal	16324 <__pow5mult>
   13314:	02013603          	ld	a2,32(sp)
   13318:	00050593          	mv	a1,a0
   1331c:	00050a13          	mv	s4,a0
   13320:	00040513          	mv	a0,s0
   13324:	60d020ef          	jal	16130 <__multiply>
   13328:	03813683          	ld	a3,56(sp)
   1332c:	02013583          	ld	a1,32(sp)
   13330:	00050913          	mv	s2,a0
   13334:	00040513          	mv	a0,s0
   13338:	40dc0c3b          	subw	s8,s8,a3
   1333c:	235020ef          	jal	15d70 <_Bfree>
   13340:	04013803          	ld	a6,64(sp)
   13344:	020c0263          	beqz	s8,13368 <_dtoa_r+0x780>
   13348:	03213023          	sd	s2,32(sp)
   1334c:	02013583          	ld	a1,32(sp)
   13350:	000c0613          	mv	a2,s8
   13354:	00040513          	mv	a0,s0
   13358:	03013c23          	sd	a6,56(sp)
   1335c:	7c9020ef          	jal	16324 <__pow5mult>
   13360:	03813803          	ld	a6,56(sp)
   13364:	00050913          	mv	s2,a0
   13368:	00100593          	li	a1,1
   1336c:	00040513          	mv	a0,s0
   13370:	03013023          	sd	a6,32(sp)
   13374:	589020ef          	jal	160fc <__i2b>
   13378:	02812783          	lw	a5,40(sp)
   1337c:	00050c13          	mv	s8,a0
   13380:	02013803          	ld	a6,32(sp)
   13384:	0c078c63          	beqz	a5,1345c <_dtoa_r+0x874>
   13388:	00078613          	mv	a2,a5
   1338c:	00050593          	mv	a1,a0
   13390:	00040513          	mv	a0,s0
   13394:	791020ef          	jal	16324 <__pow5mult>
   13398:	00100793          	li	a5,1
   1339c:	00050c13          	mv	s8,a0
   133a0:	02013803          	ld	a6,32(sp)
   133a4:	3d37c263          	blt	a5,s3,13768 <_dtoa_r+0xb80>
   133a8:	00cd1793          	slli	a5,s10,0xc
   133ac:	3a079e63          	bnez	a5,13768 <_dtoa_r+0xb80>
   133b0:	420d5693          	srai	a3,s10,0x20
   133b4:	7ff007b7          	lui	a5,0x7ff00
   133b8:	00f6f7b3          	and	a5,a3,a5
   133bc:	02012023          	sw	zero,32(sp)
   133c0:	00078a63          	beqz	a5,133d4 <_dtoa_r+0x7ec>
   133c4:	00100793          	li	a5,1
   133c8:	0018081b          	addiw	a6,a6,1
   133cc:	001d8d9b          	addiw	s11,s11,1
   133d0:	02f12023          	sw	a5,32(sp)
   133d4:	02812783          	lw	a5,40(sp)
   133d8:	00100513          	li	a0,1
   133dc:	08078863          	beqz	a5,1346c <_dtoa_r+0x884>
   133e0:	014c2783          	lw	a5,20(s8)
   133e4:	03013423          	sd	a6,40(sp)
   133e8:	fff7879b          	addiw	a5,a5,-1
   133ec:	00478793          	addi	a5,a5,4 # 7ff00004 <_gp+0x7fee3244>
   133f0:	00279793          	slli	a5,a5,0x2
   133f4:	00fc07b3          	add	a5,s8,a5
   133f8:	0087a503          	lw	a0,8(a5)
   133fc:	3d5020ef          	jal	15fd0 <__hi0bits>
   13400:	02000793          	li	a5,32
   13404:	40a7853b          	subw	a0,a5,a0
   13408:	02813803          	ld	a6,40(sp)
   1340c:	0600006f          	j	1346c <_dtoa_r+0x884>
   13410:	d20b8753          	fcvt.d.w	fa4,s7
   13414:	a2e7a7d3          	feq.d	a5,fa5,fa4
   13418:	0017b793          	seqz	a5,a5
   1341c:	40fb8bbb          	subw	s7,s7,a5
   13420:	9f9ff06f          	j	12e18 <_dtoa_r+0x230>
   13424:	4178083b          	subw	a6,a6,s7
   13428:	41700c3b          	negw	s8,s7
   1342c:	02012423          	sw	zero,40(sp)
   13430:	a41ff06f          	j	12e70 <_dtoa_r+0x288>
   13434:	000c0693          	mv	a3,s8
   13438:	00080493          	mv	s1,a6
   1343c:	00000a13          	li	s4,0
   13440:	e8dff06f          	j	132cc <_dtoa_r+0x6e4>
   13444:	000d049b          	sext.w	s1,s10
   13448:	40d787bb          	subw	a5,a5,a3
   1344c:	00f494bb          	sllw	s1,s1,a5
   13450:	959ff06f          	j	12da8 <_dtoa_r+0x1c0>
   13454:	02012823          	sw	zero,48(sp)
   13458:	9f9ff06f          	j	12e50 <_dtoa_r+0x268>
   1345c:	00100793          	li	a5,1
   13460:	0737d4e3          	ble	s3,a5,13cc8 <_dtoa_r+0x10e0>
   13464:	02012023          	sw	zero,32(sp)
   13468:	00078513          	mv	a0,a5
   1346c:	01b507bb          	addw	a5,a0,s11
   13470:	01f7f793          	andi	a5,a5,31
   13474:	1a078663          	beqz	a5,13620 <_dtoa_r+0xa38>
   13478:	02000693          	li	a3,32
   1347c:	40f686bb          	subw	a3,a3,a5
   13480:	00400613          	li	a2,4
   13484:	04d658e3          	ble	a3,a2,13cd4 <_dtoa_r+0x10ec>
   13488:	01c00693          	li	a3,28
   1348c:	40f687bb          	subw	a5,a3,a5
   13490:	00f8083b          	addw	a6,a6,a5
   13494:	00f484bb          	addw	s1,s1,a5
   13498:	00fd8dbb          	addw	s11,s11,a5
   1349c:	01005c63          	blez	a6,134b4 <_dtoa_r+0x8cc>
   134a0:	00090593          	mv	a1,s2
   134a4:	00080613          	mv	a2,a6
   134a8:	00040513          	mv	a0,s0
   134ac:	7b1020ef          	jal	1645c <__lshift>
   134b0:	00050913          	mv	s2,a0
   134b4:	01b05c63          	blez	s11,134cc <_dtoa_r+0x8e4>
   134b8:	000c0593          	mv	a1,s8
   134bc:	000d8613          	mv	a2,s11
   134c0:	00040513          	mv	a0,s0
   134c4:	799020ef          	jal	1645c <__lshift>
   134c8:	00050c13          	mv	s8,a0
   134cc:	03012783          	lw	a5,48(sp)
   134d0:	22079663          	bnez	a5,136fc <_dtoa_r+0xb14>
   134d4:	3f505e63          	blez	s5,138d0 <_dtoa_r+0xce8>
   134d8:	01012783          	lw	a5,16(sp)
   134dc:	14078c63          	beqz	a5,13634 <_dtoa_r+0xa4c>
   134e0:	00905c63          	blez	s1,134f8 <_dtoa_r+0x910>
   134e4:	000a0593          	mv	a1,s4
   134e8:	00048613          	mv	a2,s1
   134ec:	00040513          	mv	a0,s0
   134f0:	76d020ef          	jal	1645c <__lshift>
   134f4:	00050a13          	mv	s4,a0
   134f8:	02012783          	lw	a5,32(sp)
   134fc:	000a0d93          	mv	s11,s4
   13500:	5a079463          	bnez	a5,13aa8 <_dtoa_r+0xec0>
   13504:	fffa849b          	addiw	s1,s5,-1
   13508:	00813783          	ld	a5,8(sp)
   1350c:	02049493          	slli	s1,s1,0x20
   13510:	0204d493          	srli	s1,s1,0x20
   13514:	00148493          	addi	s1,s1,1
   13518:	009784b3          	add	s1,a5,s1
   1351c:	00078c93          	mv	s9,a5
   13520:	001d7793          	andi	a5,s10,1
   13524:	00f13823          	sd	a5,16(sp)
   13528:	000c0593          	mv	a1,s8
   1352c:	00090513          	mv	a0,s2
   13530:	cccff0ef          	jal	129fc <quorem>
   13534:	00050d13          	mv	s10,a0
   13538:	02a12823          	sw	a0,48(sp)
   1353c:	000a0593          	mv	a1,s4
   13540:	00090513          	mv	a0,s2
   13544:	078030ef          	jal	165bc <__mcmp>
   13548:	00050a93          	mv	s5,a0
   1354c:	000d8613          	mv	a2,s11
   13550:	000c0593          	mv	a1,s8
   13554:	00040513          	mv	a0,s0
   13558:	0c4030ef          	jal	1661c <__mdiff>
   1355c:	01052683          	lw	a3,16(a0)
   13560:	00050793          	mv	a5,a0
   13564:	030d0d1b          	addiw	s10,s10,48
   13568:	00100713          	li	a4,1
   1356c:	00069e63          	bnez	a3,13588 <_dtoa_r+0x9a0>
   13570:	00050593          	mv	a1,a0
   13574:	02a13023          	sd	a0,32(sp)
   13578:	00090513          	mv	a0,s2
   1357c:	040030ef          	jal	165bc <__mcmp>
   13580:	02013783          	ld	a5,32(sp)
   13584:	00050713          	mv	a4,a0
   13588:	00078593          	mv	a1,a5
   1358c:	00040513          	mv	a0,s0
   13590:	02e13023          	sd	a4,32(sp)
   13594:	7dc020ef          	jal	15d70 <_Bfree>
   13598:	02013703          	ld	a4,32(sp)
   1359c:	013767b3          	or	a5,a4,s3
   135a0:	00079663          	bnez	a5,135ac <_dtoa_r+0x9c4>
   135a4:	01012783          	lw	a5,16(sp)
   135a8:	24078063          	beqz	a5,137e8 <_dtoa_r+0xc00>
   135ac:	260ac463          	bltz	s5,13814 <_dtoa_r+0xc2c>
   135b0:	013aeab3          	or	s5,s5,s3
   135b4:	000a9663          	bnez	s5,135c0 <_dtoa_r+0x9d8>
   135b8:	01012783          	lw	a5,16(sp)
   135bc:	24078c63          	beqz	a5,13814 <_dtoa_r+0xc2c>
   135c0:	5ee04263          	bgtz	a4,13ba4 <_dtoa_r+0xfbc>
   135c4:	001c8c93          	addi	s9,s9,1
   135c8:	ffac8fa3          	sb	s10,-1(s9)
   135cc:	5f948463          	beq	s1,s9,13bb4 <_dtoa_r+0xfcc>
   135d0:	00090593          	mv	a1,s2
   135d4:	00000693          	li	a3,0
   135d8:	00a00613          	li	a2,10
   135dc:	00040513          	mv	a0,s0
   135e0:	7b4020ef          	jal	15d94 <__multadd>
   135e4:	00050913          	mv	s2,a0
   135e8:	00000693          	li	a3,0
   135ec:	00a00613          	li	a2,10
   135f0:	000a0593          	mv	a1,s4
   135f4:	00040513          	mv	a0,s0
   135f8:	27ba0463          	beq	s4,s11,13860 <_dtoa_r+0xc78>
   135fc:	798020ef          	jal	15d94 <__multadd>
   13600:	000d8593          	mv	a1,s11
   13604:	00050a13          	mv	s4,a0
   13608:	00000693          	li	a3,0
   1360c:	00a00613          	li	a2,10
   13610:	00040513          	mv	a0,s0
   13614:	780020ef          	jal	15d94 <__multadd>
   13618:	00050d93          	mv	s11,a0
   1361c:	f0dff06f          	j	13528 <_dtoa_r+0x940>
   13620:	01c00793          	li	a5,28
   13624:	00f8083b          	addw	a6,a6,a5
   13628:	00f484bb          	addw	s1,s1,a5
   1362c:	00fd8dbb          	addw	s11,s11,a5
   13630:	e6dff06f          	j	1349c <_dtoa_r+0x8b4>
   13634:	00813483          	ld	s1,8(sp)
   13638:	00100993          	li	s3,1
   1363c:	0100006f          	j	1364c <_dtoa_r+0xa64>
   13640:	754020ef          	jal	15d94 <__multadd>
   13644:	00050913          	mv	s2,a0
   13648:	0019899b          	addiw	s3,s3,1
   1364c:	000c0593          	mv	a1,s8
   13650:	00090513          	mv	a0,s2
   13654:	ba8ff0ef          	jal	129fc <quorem>
   13658:	03050d1b          	addiw	s10,a0,48
   1365c:	00148493          	addi	s1,s1,1
   13660:	ffa48fa3          	sb	s10,-1(s1)
   13664:	00000693          	li	a3,0
   13668:	00a00613          	li	a2,10
   1366c:	00090593          	mv	a1,s2
   13670:	00040513          	mv	a0,s0
   13674:	fd59c6e3          	blt	s3,s5,13640 <_dtoa_r+0xa58>
   13678:	00000993          	li	s3,0
   1367c:	00090593          	mv	a1,s2
   13680:	00100613          	li	a2,1
   13684:	00040513          	mv	a0,s0
   13688:	5d5020ef          	jal	1645c <__lshift>
   1368c:	000c0593          	mv	a1,s8
   13690:	02a13023          	sd	a0,32(sp)
   13694:	729020ef          	jal	165bc <__mcmp>
   13698:	34a05463          	blez	a0,139e0 <_dtoa_r+0xdf8>
   1369c:	fff4c703          	lbu	a4,-1(s1)
   136a0:	03900693          	li	a3,57
   136a4:	0140006f          	j	136b8 <_dtoa_r+0xad0>
   136a8:	00813703          	ld	a4,8(sp)
   136ac:	26e78a63          	beq	a5,a4,13920 <_dtoa_r+0xd38>
   136b0:	fff7c703          	lbu	a4,-1(a5)
   136b4:	00078493          	mv	s1,a5
   136b8:	fff48793          	addi	a5,s1,-1
   136bc:	fed706e3          	beq	a4,a3,136a8 <_dtoa_r+0xac0>
   136c0:	0017071b          	addiw	a4,a4,1
   136c4:	00e78023          	sb	a4,0(a5)
   136c8:	000c0593          	mv	a1,s8
   136cc:	00040513          	mv	a0,s0
   136d0:	6a0020ef          	jal	15d70 <_Bfree>
   136d4:	9e0a0ae3          	beqz	s4,130c8 <_dtoa_r+0x4e0>
   136d8:	00098a63          	beqz	s3,136ec <_dtoa_r+0xb04>
   136dc:	01498863          	beq	s3,s4,136ec <_dtoa_r+0xb04>
   136e0:	00098593          	mv	a1,s3
   136e4:	00040513          	mv	a0,s0
   136e8:	688020ef          	jal	15d70 <_Bfree>
   136ec:	000a0593          	mv	a1,s4
   136f0:	00040513          	mv	a0,s0
   136f4:	67c020ef          	jal	15d70 <_Bfree>
   136f8:	9d1ff06f          	j	130c8 <_dtoa_r+0x4e0>
   136fc:	000c0593          	mv	a1,s8
   13700:	00090513          	mv	a0,s2
   13704:	6b9020ef          	jal	165bc <__mcmp>
   13708:	dc0556e3          	bgez	a0,134d4 <_dtoa_r+0x8ec>
   1370c:	00090593          	mv	a1,s2
   13710:	00000693          	li	a3,0
   13714:	00a00613          	li	a2,10
   13718:	00040513          	mv	a0,s0
   1371c:	678020ef          	jal	15d94 <__multadd>
   13720:	01012783          	lw	a5,16(sp)
   13724:	00050913          	mv	s2,a0
   13728:	fffb8b9b          	addiw	s7,s7,-1
   1372c:	56079063          	bnez	a5,13c8c <_dtoa_r+0x10a4>
   13730:	03412783          	lw	a5,52(sp)
   13734:	00078a93          	mv	s5,a5
   13738:	eef04ee3          	bgtz	a5,13634 <_dtoa_r+0xa4c>
   1373c:	00200793          	li	a5,2
   13740:	5937c063          	blt	a5,s3,13cc0 <_dtoa_r+0x10d8>
   13744:	000c0593          	mv	a1,s8
   13748:	ab4ff0ef          	jal	129fc <quorem>
   1374c:	00813783          	ld	a5,8(sp)
   13750:	03050d1b          	addiw	s10,a0,48
   13754:	00178493          	addi	s1,a5,1
   13758:	ffa48fa3          	sb	s10,-1(s1)
   1375c:	f1dff06f          	j	13678 <_dtoa_r+0xa90>
   13760:	000d8793          	mv	a5,s11
   13764:	b79ff06f          	j	132dc <_dtoa_r+0x6f4>
   13768:	02012023          	sw	zero,32(sp)
   1376c:	c75ff06f          	j	133e0 <_dtoa_r+0x7f8>
   13770:	00100793          	li	a5,1
   13774:	00f12823          	sw	a5,16(sp)
   13778:	0f905c63          	blez	s9,13870 <_dtoa_r+0xc88>
   1377c:	000c8513          	mv	a0,s9
   13780:	000c8493          	mv	s1,s9
   13784:	03912a23          	sw	s9,52(sp)
   13788:	000c8a93          	mv	s5,s9
   1378c:	f3cff06f          	j	12ec8 <_dtoa_r+0x2e0>
   13790:	a1504ce3          	bgtz	s5,131a8 <_dtoa_r+0x5c0>
   13794:	1e0a9e63          	bnez	s5,13990 <_dtoa_r+0xda8>
   13798:	0001c7b7          	lui	a5,0x1c
   1379c:	6307b787          	fld	fa5,1584(a5) # 1c630 <__wctomb+0x40>
   137a0:	00000c13          	li	s8,0
   137a4:	00000a13          	li	s4,0
   137a8:	12f6f6d3          	fmul.d	fa3,fa3,fa5
   137ac:	f20d07d3          	fmv.d.x	fa5,s10
   137b0:	a2d78753          	fle.d	a4,fa5,fa3
   137b4:	14070a63          	beqz	a4,13908 <_dtoa_r+0xd20>
   137b8:	00813483          	ld	s1,8(sp)
   137bc:	fffccb93          	not	s7,s9
   137c0:	000c0593          	mv	a1,s8
   137c4:	00040513          	mv	a0,s0
   137c8:	5a8020ef          	jal	15d70 <_Bfree>
   137cc:	8e0a0ee3          	beqz	s4,130c8 <_dtoa_r+0x4e0>
   137d0:	f1dff06f          	j	136ec <_dtoa_r+0xb04>
   137d4:	3e090c63          	beqz	s2,13bcc <_dtoa_r+0xfe4>
   137d8:	4337879b          	addiw	a5,a5,1075
   137dc:	000c0693          	mv	a3,s8
   137e0:	00080493          	mv	s1,a6
   137e4:	abdff06f          	j	132a0 <_dtoa_r+0x6b8>
   137e8:	03900793          	li	a5,57
   137ec:	04fd0a63          	beq	s10,a5,13840 <_dtoa_r+0xc58>
   137f0:	01505663          	blez	s5,137fc <_dtoa_r+0xc14>
   137f4:	03012783          	lw	a5,48(sp)
   137f8:	03178d1b          	addiw	s10,a5,49
   137fc:	000a0993          	mv	s3,s4
   13800:	001c8493          	addi	s1,s9,1
   13804:	01ac8023          	sb	s10,0(s9)
   13808:	000d8a13          	mv	s4,s11
   1380c:	03213023          	sd	s2,32(sp)
   13810:	eb9ff06f          	j	136c8 <_dtoa_r+0xae0>
   13814:	fee054e3          	blez	a4,137fc <_dtoa_r+0xc14>
   13818:	00090593          	mv	a1,s2
   1381c:	00100613          	li	a2,1
   13820:	00040513          	mv	a0,s0
   13824:	439020ef          	jal	1645c <__lshift>
   13828:	000c0593          	mv	a1,s8
   1382c:	00050913          	mv	s2,a0
   13830:	58d020ef          	jal	165bc <__mcmp>
   13834:	44a05063          	blez	a0,13c74 <_dtoa_r+0x108c>
   13838:	03900793          	li	a5,57
   1383c:	fafd1ce3          	bne	s10,a5,137f4 <_dtoa_r+0xc0c>
   13840:	03900793          	li	a5,57
   13844:	000a0993          	mv	s3,s4
   13848:	001c8493          	addi	s1,s9,1
   1384c:	00fc8023          	sb	a5,0(s9)
   13850:	000d8a13          	mv	s4,s11
   13854:	03213023          	sd	s2,32(sp)
   13858:	03900713          	li	a4,57
   1385c:	e45ff06f          	j	136a0 <_dtoa_r+0xab8>
   13860:	534020ef          	jal	15d94 <__multadd>
   13864:	00050a13          	mv	s4,a0
   13868:	00050d93          	mv	s11,a0
   1386c:	cbdff06f          	j	13528 <_dtoa_r+0x940>
   13870:	00100493          	li	s1,1
   13874:	02912a23          	sw	s1,52(sp)
   13878:	00048a93          	mv	s5,s1
   1387c:	00048c93          	mv	s9,s1
   13880:	06042423          	sw	zero,104(s0)
   13884:	00000593          	li	a1,0
   13888:	e74ff06f          	j	12efc <_dtoa_r+0x314>
   1388c:	00012823          	sw	zero,16(sp)
   13890:	00200793          	li	a5,2
   13894:	eef982e3          	beq	s3,a5,13778 <_dtoa_r+0xb90>
   13898:	06042423          	sw	zero,104(s0)
   1389c:	00000593          	li	a1,0
   138a0:	00040513          	mv	a0,s0
   138a4:	03013c23          	sd	a6,56(sp)
   138a8:	41c020ef          	jal	15cc4 <_Balloc>
   138ac:	fff00a93          	li	s5,-1
   138b0:	00100793          	li	a5,1
   138b4:	00a13423          	sd	a0,8(sp)
   138b8:	06a43023          	sd	a0,96(s0)
   138bc:	03512a23          	sw	s5,52(sp)
   138c0:	00000c93          	li	s9,0
   138c4:	00f12823          	sw	a5,16(sp)
   138c8:	03813803          	ld	a6,56(sp)
   138cc:	8b5ff06f          	j	13180 <_dtoa_r+0x598>
   138d0:	00200793          	li	a5,2
   138d4:	c137d2e3          	ble	s3,a5,134d8 <_dtoa_r+0x8f0>
   138d8:	300a9663          	bnez	s5,13be4 <_dtoa_r+0xffc>
   138dc:	000c0593          	mv	a1,s8
   138e0:	00000693          	li	a3,0
   138e4:	00500613          	li	a2,5
   138e8:	00040513          	mv	a0,s0
   138ec:	4a8020ef          	jal	15d94 <__multadd>
   138f0:	00050593          	mv	a1,a0
   138f4:	00050c13          	mv	s8,a0
   138f8:	00090513          	mv	a0,s2
   138fc:	4c1020ef          	jal	165bc <__mcmp>
   13900:	03213023          	sd	s2,32(sp)
   13904:	eaa05ae3          	blez	a0,137b8 <_dtoa_r+0xbd0>
   13908:	00813703          	ld	a4,8(sp)
   1390c:	03100793          	li	a5,49
   13910:	001b8b9b          	addiw	s7,s7,1
   13914:	00170493          	addi	s1,a4,1
   13918:	00f70023          	sb	a5,0(a4)
   1391c:	ea5ff06f          	j	137c0 <_dtoa_r+0xbd8>
   13920:	00813703          	ld	a4,8(sp)
   13924:	03100793          	li	a5,49
   13928:	001b8b9b          	addiw	s7,s7,1
   1392c:	00f70023          	sb	a5,0(a4)
   13930:	d99ff06f          	j	136c8 <_dtoa_r+0xae0>
   13934:	00012823          	sw	zero,16(sp)
   13938:	d78ff06f          	j	12eb0 <_dtoa_r+0x2c8>
   1393c:	0001c7b7          	lui	a5,0x1c
   13940:	d20706d3          	fcvt.d.w	fa3,a4
   13944:	6287b707          	fld	fa4,1576(a5) # 1c628 <__wctomb+0x38>
   13948:	fcc006b7          	lui	a3,0xfcc00
   1394c:	72d7f743          	fmadd.d	fa4,fa5,fa3,fa4
   13950:	e2070753          	fmv.x.d	a4,fa4
   13954:	42075793          	srai	a5,a4,0x20
   13958:	00d787bb          	addw	a5,a5,a3
   1395c:	02071713          	slli	a4,a4,0x20
   13960:	02079793          	slli	a5,a5,0x20
   13964:	02075713          	srli	a4,a4,0x20
   13968:	00f76733          	or	a4,a4,a5
   1396c:	0001c7b7          	lui	a5,0x1c
   13970:	6307b707          	fld	fa4,1584(a5) # 1c630 <__wctomb+0x40>
   13974:	f20706d3          	fmv.d.x	fa3,a4
   13978:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
   1397c:	a2f697d3          	flt.d	a5,fa3,fa5
   13980:	16079463          	bnez	a5,13ae8 <_dtoa_r+0xf00>
   13984:	22d69753          	fneg.d	fa4,fa3
   13988:	a2e797d3          	flt.d	a5,fa5,fa4
   1398c:	06078e63          	beqz	a5,13a08 <_dtoa_r+0xe20>
   13990:	00000c13          	li	s8,0
   13994:	00000a13          	li	s4,0
   13998:	e21ff06f          	j	137b8 <_dtoa_r+0xbd0>
   1399c:	00090593          	mv	a1,s2
   139a0:	000c0613          	mv	a2,s8
   139a4:	00040513          	mv	a0,s0
   139a8:	03013023          	sd	a6,32(sp)
   139ac:	179020ef          	jal	16324 <__pow5mult>
   139b0:	00050913          	mv	s2,a0
   139b4:	02013803          	ld	a6,32(sp)
   139b8:	9b1ff06f          	j	13368 <_dtoa_r+0x780>
   139bc:	00813503          	ld	a0,8(sp)
   139c0:	af4ff06f          	j	12cb4 <_dtoa_r+0xcc>
   139c4:	02812783          	lw	a5,40(sp)
   139c8:	41868c3b          	subw	s8,a3,s8
   139cc:	018787bb          	addw	a5,a5,s8
   139d0:	02f12423          	sw	a5,40(sp)
   139d4:	00068c13          	mv	s8,a3
   139d8:	00000693          	li	a3,0
   139dc:	8b9ff06f          	j	13294 <_dtoa_r+0x6ac>
   139e0:	00051663          	bnez	a0,139ec <_dtoa_r+0xe04>
   139e4:	001d7d13          	andi	s10,s10,1
   139e8:	ca0d1ae3          	bnez	s10,1369c <_dtoa_r+0xab4>
   139ec:	03000693          	li	a3,48
   139f0:	0080006f          	j	139f8 <_dtoa_r+0xe10>
   139f4:	00070493          	mv	s1,a4
   139f8:	fff4c783          	lbu	a5,-1(s1)
   139fc:	fff48713          	addi	a4,s1,-1
   13a00:	fed78ae3          	beq	a5,a3,139f4 <_dtoa_r+0xe0c>
   13a04:	cc5ff06f          	j	136c8 <_dtoa_r+0xae0>
   13a08:	03813d03          	ld	s10,56(sp)
   13a0c:	f74ff06f          	j	13180 <_dtoa_r+0x598>
   13a10:	a2f6a753          	feq.d	a4,fa3,fa5
   13a14:	00068493          	mv	s1,a3
   13a18:	ea070863          	beqz	a4,130c8 <_dtoa_r+0x4e0>
   13a1c:	0017f793          	andi	a5,a5,1
   13a20:	ea078463          	beqz	a5,130c8 <_dtoa_r+0x4e0>
   13a24:	fff6c783          	lbu	a5,-1(a3) # fffffffffcbfffff <_gp+0xfffffffffcbe323f>
   13a28:	825ff06f          	j	1324c <_dtoa_r+0x664>
   13a2c:	417007bb          	negw	a5,s7
   13a30:	03813787          	fld	fa5,56(sp)
   13a34:	00200713          	li	a4,2
   13a38:	d6078063          	beqz	a5,12f98 <_dtoa_r+0x3b0>
   13a3c:	00f7f693          	andi	a3,a5,15
   13a40:	0001a637          	lui	a2,0x1a
   13a44:	00369693          	slli	a3,a3,0x3
   13a48:	97060613          	addi	a2,a2,-1680 # 19970 <__mprec_tens>
   13a4c:	00c686b3          	add	a3,a3,a2
   13a50:	0006b787          	fld	fa5,0(a3)
   13a54:	03813707          	fld	fa4,56(sp)
   13a58:	4047d79b          	sraiw	a5,a5,0x4
   13a5c:	12f777d3          	fmul.d	fa5,fa4,fa5
   13a60:	d2078c63          	beqz	a5,12f98 <_dtoa_r+0x3b0>
   13a64:	0001a6b7          	lui	a3,0x1a
   13a68:	a6068693          	addi	a3,a3,-1440 # 19a60 <__mprec_bigtens>
   13a6c:	0017f613          	andi	a2,a5,1
   13a70:	4017d79b          	sraiw	a5,a5,0x1
   13a74:	00060863          	beqz	a2,13a84 <_dtoa_r+0xe9c>
   13a78:	0006b707          	fld	fa4,0(a3)
   13a7c:	0017071b          	addiw	a4,a4,1
   13a80:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   13a84:	00868693          	addi	a3,a3,8
   13a88:	fe0792e3          	bnez	a5,13a6c <_dtoa_r+0xe84>
   13a8c:	d0cff06f          	j	12f98 <_dtoa_r+0x3b0>
   13a90:	00813683          	ld	a3,8(sp)
   13a94:	03000793          	li	a5,48
   13a98:	001b8b9b          	addiw	s7,s7,1
   13a9c:	00f68023          	sb	a5,0(a3)
   13aa0:	fff4c783          	lbu	a5,-1(s1)
   13aa4:	fc8ff06f          	j	1326c <_dtoa_r+0x684>
   13aa8:	008a2583          	lw	a1,8(s4)
   13aac:	00040513          	mv	a0,s0
   13ab0:	214020ef          	jal	15cc4 <_Balloc>
   13ab4:	014a2603          	lw	a2,20(s4)
   13ab8:	00050493          	mv	s1,a0
   13abc:	010a0593          	addi	a1,s4,16
   13ac0:	00260613          	addi	a2,a2,2
   13ac4:	00261613          	slli	a2,a2,0x2
   13ac8:	01050513          	addi	a0,a0,16
   13acc:	6d5010ef          	jal	159a0 <memcpy>
   13ad0:	00100613          	li	a2,1
   13ad4:	00048593          	mv	a1,s1
   13ad8:	00040513          	mv	a0,s0
   13adc:	181020ef          	jal	1645c <__lshift>
   13ae0:	00050d93          	mv	s11,a0
   13ae4:	a21ff06f          	j	13504 <_dtoa_r+0x91c>
   13ae8:	00000c13          	li	s8,0
   13aec:	00000a13          	li	s4,0
   13af0:	e19ff06f          	j	13908 <_dtoa_r+0xd20>
   13af4:	fff6079b          	addiw	a5,a2,-1
   13af8:	0001a537          	lui	a0,0x1a
   13afc:	c20795d3          	fcvt.w.d	a1,fa5,rtz
   13b00:	00379793          	slli	a5,a5,0x3
   13b04:	97050513          	addi	a0,a0,-1680 # 19970 <__mprec_tens>
   13b08:	00a787b3          	add	a5,a5,a0
   13b0c:	0007b707          	fld	fa4,0(a5)
   13b10:	00813783          	ld	a5,8(sp)
   13b14:	d20586d3          	fcvt.d.w	fa3,a1
   13b18:	f2070653          	fmv.d.x	fa2,a4
   13b1c:	0305859b          	addiw	a1,a1,48
   13b20:	00b78023          	sb	a1,0(a5)
   13b24:	00178493          	addi	s1,a5,1
   13b28:	00100793          	li	a5,1
   13b2c:	12c77653          	fmul.d	fa2,fa4,fa2
   13b30:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   13b34:	04f60863          	beq	a2,a5,13b84 <_dtoa_r+0xf9c>
   13b38:	ffe6061b          	addiw	a2,a2,-2
   13b3c:	0001c7b7          	lui	a5,0x1c
   13b40:	02061593          	slli	a1,a2,0x20
   13b44:	6207b687          	fld	fa3,1568(a5) # 1c620 <__wctomb+0x30>
   13b48:	00813783          	ld	a5,8(sp)
   13b4c:	0205d593          	srli	a1,a1,0x20
   13b50:	00258513          	addi	a0,a1,2
   13b54:	00a78533          	add	a0,a5,a0
   13b58:	00048613          	mv	a2,s1
   13b5c:	12d7f7d3          	fmul.d	fa5,fa5,fa3
   13b60:	00160613          	addi	a2,a2,1
   13b64:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   13b68:	d2078753          	fcvt.d.w	fa4,a5
   13b6c:	0307879b          	addiw	a5,a5,48
   13b70:	fef60fa3          	sb	a5,-1(a2)
   13b74:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
   13b78:	fea612e3          	bne	a2,a0,13b5c <_dtoa_r+0xf74>
   13b7c:	00158593          	addi	a1,a1,1
   13b80:	00b484b3          	add	s1,s1,a1
   13b84:	0001c7b7          	lui	a5,0x1c
   13b88:	6387b707          	fld	fa4,1592(a5) # 1c638 <__wctomb+0x48>
   13b8c:	02e676d3          	fadd.d	fa3,fa2,fa4
   13b90:	a2f697d3          	flt.d	a5,fa3,fa5
   13b94:	0a078663          	beqz	a5,13c40 <_dtoa_r+0x1058>
   13b98:	fff4c783          	lbu	a5,-1(s1)
   13b9c:	00068b93          	mv	s7,a3
   13ba0:	eacff06f          	j	1324c <_dtoa_r+0x664>
   13ba4:	03900793          	li	a5,57
   13ba8:	c8fd0ce3          	beq	s10,a5,13840 <_dtoa_r+0xc58>
   13bac:	001d0d1b          	addiw	s10,s10,1
   13bb0:	c4dff06f          	j	137fc <_dtoa_r+0xc14>
   13bb4:	000a0993          	mv	s3,s4
   13bb8:	000d8a13          	mv	s4,s11
   13bbc:	ac1ff06f          	j	1367c <_dtoa_r+0xa94>
   13bc0:	415804bb          	subw	s1,a6,s5
   13bc4:	00000793          	li	a5,0
   13bc8:	ed8ff06f          	j	132a0 <_dtoa_r+0x6b8>
   13bcc:	05812603          	lw	a2,88(sp)
   13bd0:	03600793          	li	a5,54
   13bd4:	000c0693          	mv	a3,s8
   13bd8:	40c787bb          	subw	a5,a5,a2
   13bdc:	00080493          	mv	s1,a6
   13be0:	ec0ff06f          	j	132a0 <_dtoa_r+0x6b8>
   13be4:	03213023          	sd	s2,32(sp)
   13be8:	bd1ff06f          	j	137b8 <_dtoa_r+0xbd0>
   13bec:	d40a88e3          	beqz	s5,1393c <_dtoa_r+0xd54>
   13bf0:	03412603          	lw	a2,52(sp)
   13bf4:	e0c05ae3          	blez	a2,13a08 <_dtoa_r+0xe20>
   13bf8:	0001c7b7          	lui	a5,0x1c
   13bfc:	6207b707          	fld	fa4,1568(a5) # 1c620 <__wctomb+0x30>
   13c00:	0017071b          	addiw	a4,a4,1
   13c04:	0001c7b7          	lui	a5,0x1c
   13c08:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   13c0c:	d20706d3          	fcvt.d.w	fa3,a4
   13c10:	6287b707          	fld	fa4,1576(a5) # 1c628 <__wctomb+0x38>
   13c14:	fcc005b7          	lui	a1,0xfcc00
   13c18:	fffb869b          	addiw	a3,s7,-1
   13c1c:	72d7f743          	fmadd.d	fa4,fa5,fa3,fa4
   13c20:	e2070753          	fmv.x.d	a4,fa4
   13c24:	42075793          	srai	a5,a4,0x20
   13c28:	00b787bb          	addw	a5,a5,a1
   13c2c:	02071713          	slli	a4,a4,0x20
   13c30:	02079793          	slli	a5,a5,0x20
   13c34:	02075713          	srli	a4,a4,0x20
   13c38:	00f76733          	or	a4,a4,a5
   13c3c:	bb0ff06f          	j	12fec <_dtoa_r+0x404>
   13c40:	0ac77753          	fsub.d	fa4,fa4,fa2
   13c44:	03000613          	li	a2,48
   13c48:	a2e797d3          	flt.d	a5,fa5,fa4
   13c4c:	00079663          	bnez	a5,13c58 <_dtoa_r+0x1070>
   13c50:	db9ff06f          	j	13a08 <_dtoa_r+0xe20>
   13c54:	00070493          	mv	s1,a4
   13c58:	fff4c783          	lbu	a5,-1(s1)
   13c5c:	fff48713          	addi	a4,s1,-1
   13c60:	fec78ae3          	beq	a5,a2,13c54 <_dtoa_r+0x106c>
   13c64:	00068b93          	mv	s7,a3
   13c68:	c60ff06f          	j	130c8 <_dtoa_r+0x4e0>
   13c6c:	00068b93          	mv	s7,a3
   13c70:	ddcff06f          	j	1324c <_dtoa_r+0x664>
   13c74:	b80514e3          	bnez	a0,137fc <_dtoa_r+0xc14>
   13c78:	001d7793          	andi	a5,s10,1
   13c7c:	b80780e3          	beqz	a5,137fc <_dtoa_r+0xc14>
   13c80:	bb9ff06f          	j	13838 <_dtoa_r+0xc50>
   13c84:	00048693          	mv	a3,s1
   13c88:	db0ff06f          	j	13238 <_dtoa_r+0x650>
   13c8c:	000a0593          	mv	a1,s4
   13c90:	00000693          	li	a3,0
   13c94:	00a00613          	li	a2,10
   13c98:	00040513          	mv	a0,s0
   13c9c:	0f8020ef          	jal	15d94 <__multadd>
   13ca0:	03412783          	lw	a5,52(sp)
   13ca4:	00050a13          	mv	s4,a0
   13ca8:	00078a93          	mv	s5,a5
   13cac:	82f04ae3          	bgtz	a5,134e0 <_dtoa_r+0x8f8>
   13cb0:	00200793          	li	a5,2
   13cb4:	0137c663          	blt	a5,s3,13cc0 <_dtoa_r+0x10d8>
   13cb8:	03412a83          	lw	s5,52(sp)
   13cbc:	825ff06f          	j	134e0 <_dtoa_r+0x8f8>
   13cc0:	03412a83          	lw	s5,52(sp)
   13cc4:	c15ff06f          	j	138d8 <_dtoa_r+0xcf0>
   13cc8:	00cd1713          	slli	a4,s10,0xc
   13ccc:	ee070263          	beqz	a4,133b0 <_dtoa_r+0x7c8>
   13cd0:	f94ff06f          	j	13464 <_dtoa_r+0x87c>
   13cd4:	fcc68463          	beq	a3,a2,1349c <_dtoa_r+0x8b4>
   13cd8:	03c00693          	li	a3,60
   13cdc:	40f687bb          	subw	a5,a3,a5
   13ce0:	945ff06f          	j	13624 <_dtoa_r+0xa3c>

0000000000013ce4 <__sflush_r>:
   13ce4:	01059683          	lh	a3,16(a1) # fffffffffcc00010 <_gp+0xfffffffffcbe3250>
   13ce8:	fd010113          	addi	sp,sp,-48
   13cec:	00913c23          	sd	s1,24(sp)
   13cf0:	03069713          	slli	a4,a3,0x30
   13cf4:	03075713          	srli	a4,a4,0x30
   13cf8:	01313423          	sd	s3,8(sp)
   13cfc:	02113423          	sd	ra,40(sp)
   13d00:	02813023          	sd	s0,32(sp)
   13d04:	01213823          	sd	s2,16(sp)
   13d08:	00877793          	andi	a5,a4,8
   13d0c:	00058493          	mv	s1,a1
   13d10:	00050993          	mv	s3,a0
   13d14:	0e079863          	bnez	a5,13e04 <__sflush_r+0x120>
   13d18:	000017b7          	lui	a5,0x1
   13d1c:	8007879b          	addiw	a5,a5,-2048
   13d20:	00f6e7b3          	or	a5,a3,a5
   13d24:	0107979b          	slliw	a5,a5,0x10
   13d28:	0085a703          	lw	a4,8(a1)
   13d2c:	4107d79b          	sraiw	a5,a5,0x10
   13d30:	00f59823          	sh	a5,16(a1)
   13d34:	1ae05863          	blez	a4,13ee4 <__sflush_r+0x200>
   13d38:	0484b703          	ld	a4,72(s1)
   13d3c:	0a070463          	beqz	a4,13de4 <__sflush_r+0x100>
   13d40:	03079793          	slli	a5,a5,0x30
   13d44:	0307d793          	srli	a5,a5,0x30
   13d48:	0009a403          	lw	s0,0(s3)
   13d4c:	03379693          	slli	a3,a5,0x33
   13d50:	0009a023          	sw	zero,0(s3)
   13d54:	1806de63          	bgez	a3,13ef0 <__sflush_r+0x20c>
   13d58:	0904b603          	ld	a2,144(s1)
   13d5c:	0047f793          	andi	a5,a5,4
   13d60:	00078e63          	beqz	a5,13d7c <__sflush_r+0x98>
   13d64:	0084a683          	lw	a3,8(s1)
   13d68:	0584b783          	ld	a5,88(s1)
   13d6c:	40d60633          	sub	a2,a2,a3
   13d70:	00078663          	beqz	a5,13d7c <__sflush_r+0x98>
   13d74:	0704a783          	lw	a5,112(s1)
   13d78:	40f60633          	sub	a2,a2,a5
   13d7c:	0304b583          	ld	a1,48(s1)
   13d80:	00000693          	li	a3,0
   13d84:	00098513          	mv	a0,s3
   13d88:	000700e7          	jalr	a4
   13d8c:	fff00793          	li	a5,-1
   13d90:	0ef50c63          	beq	a0,a5,13e88 <__sflush_r+0x1a4>
   13d94:	0104d683          	lhu	a3,16(s1)
   13d98:	fffff7b7          	lui	a5,0xfffff
   13d9c:	7ff7879b          	addiw	a5,a5,2047
   13da0:	0184b703          	ld	a4,24(s1)
   13da4:	00f6f7b3          	and	a5,a3,a5
   13da8:	0107979b          	slliw	a5,a5,0x10
   13dac:	4107d79b          	sraiw	a5,a5,0x10
   13db0:	00e4b023          	sd	a4,0(s1)
   13db4:	00f49823          	sh	a5,16(s1)
   13db8:	0004a423          	sw	zero,8(s1)
   13dbc:	03379713          	slli	a4,a5,0x33
   13dc0:	10074e63          	bltz	a4,13edc <__sflush_r+0x1f8>
   13dc4:	0584b583          	ld	a1,88(s1)
   13dc8:	0089a023          	sw	s0,0(s3)
   13dcc:	00058c63          	beqz	a1,13de4 <__sflush_r+0x100>
   13dd0:	07448793          	addi	a5,s1,116
   13dd4:	00f58663          	beq	a1,a5,13de0 <__sflush_r+0xfc>
   13dd8:	00098513          	mv	a0,s3
   13ddc:	7c4000ef          	jal	145a0 <_free_r>
   13de0:	0404bc23          	sd	zero,88(s1)
   13de4:	00000513          	li	a0,0
   13de8:	02813083          	ld	ra,40(sp)
   13dec:	02013403          	ld	s0,32(sp)
   13df0:	01813483          	ld	s1,24(sp)
   13df4:	01013903          	ld	s2,16(sp)
   13df8:	00813983          	ld	s3,8(sp)
   13dfc:	03010113          	addi	sp,sp,48
   13e00:	00008067          	ret
   13e04:	0185b903          	ld	s2,24(a1)
   13e08:	fc090ee3          	beqz	s2,13de4 <__sflush_r+0x100>
   13e0c:	0005b403          	ld	s0,0(a1)
   13e10:	00377713          	andi	a4,a4,3
   13e14:	0125b023          	sd	s2,0(a1)
   13e18:	4124043b          	subw	s0,s0,s2
   13e1c:	00000793          	li	a5,0
   13e20:	00071463          	bnez	a4,13e28 <__sflush_r+0x144>
   13e24:	0205a783          	lw	a5,32(a1)
   13e28:	00f4a623          	sw	a5,12(s1)
   13e2c:	00804863          	bgtz	s0,13e3c <__sflush_r+0x158>
   13e30:	fb5ff06f          	j	13de4 <__sflush_r+0x100>
   13e34:	00a90933          	add	s2,s2,a0
   13e38:	fa8056e3          	blez	s0,13de4 <__sflush_r+0x100>
   13e3c:	0404b783          	ld	a5,64(s1)
   13e40:	0304b583          	ld	a1,48(s1)
   13e44:	00040693          	mv	a3,s0
   13e48:	00090613          	mv	a2,s2
   13e4c:	00098513          	mv	a0,s3
   13e50:	000780e7          	jalr	a5
   13e54:	40a4043b          	subw	s0,s0,a0
   13e58:	fca04ee3          	bgtz	a0,13e34 <__sflush_r+0x150>
   13e5c:	0104d783          	lhu	a5,16(s1)
   13e60:	02813083          	ld	ra,40(sp)
   13e64:	fff00513          	li	a0,-1
   13e68:	0407e793          	ori	a5,a5,64
   13e6c:	00f49823          	sh	a5,16(s1)
   13e70:	02013403          	ld	s0,32(sp)
   13e74:	01813483          	ld	s1,24(sp)
   13e78:	01013903          	ld	s2,16(sp)
   13e7c:	00813983          	ld	s3,8(sp)
   13e80:	03010113          	addi	sp,sp,48
   13e84:	00008067          	ret
   13e88:	0009a703          	lw	a4,0(s3)
   13e8c:	01d00793          	li	a5,29
   13e90:	fce7e6e3          	bltu	a5,a4,13e5c <__sflush_r+0x178>
   13e94:	204007b7          	lui	a5,0x20400
   13e98:	00178793          	addi	a5,a5,1 # 20400001 <_gp+0x203e3241>
   13e9c:	00e7d7b3          	srl	a5,a5,a4
   13ea0:	0017f793          	andi	a5,a5,1
   13ea4:	fa078ce3          	beqz	a5,13e5c <__sflush_r+0x178>
   13ea8:	0104d603          	lhu	a2,16(s1)
   13eac:	fffff7b7          	lui	a5,0xfffff
   13eb0:	7ff7879b          	addiw	a5,a5,2047
   13eb4:	0184b683          	ld	a3,24(s1)
   13eb8:	00f677b3          	and	a5,a2,a5
   13ebc:	0107979b          	slliw	a5,a5,0x10
   13ec0:	4107d79b          	sraiw	a5,a5,0x10
   13ec4:	00d4b023          	sd	a3,0(s1)
   13ec8:	00f49823          	sh	a5,16(s1)
   13ecc:	0004a423          	sw	zero,8(s1)
   13ed0:	03379693          	slli	a3,a5,0x33
   13ed4:	ee06d8e3          	bgez	a3,13dc4 <__sflush_r+0xe0>
   13ed8:	ee0716e3          	bnez	a4,13dc4 <__sflush_r+0xe0>
   13edc:	08a4b823          	sd	a0,144(s1)
   13ee0:	ee5ff06f          	j	13dc4 <__sflush_r+0xe0>
   13ee4:	0705a703          	lw	a4,112(a1)
   13ee8:	e4e048e3          	bgtz	a4,13d38 <__sflush_r+0x54>
   13eec:	ef9ff06f          	j	13de4 <__sflush_r+0x100>
   13ef0:	0304b583          	ld	a1,48(s1)
   13ef4:	00000613          	li	a2,0
   13ef8:	00100693          	li	a3,1
   13efc:	00098513          	mv	a0,s3
   13f00:	000700e7          	jalr	a4
   13f04:	fff00793          	li	a5,-1
   13f08:	00050613          	mv	a2,a0
   13f0c:	00f50863          	beq	a0,a5,13f1c <__sflush_r+0x238>
   13f10:	0104d783          	lhu	a5,16(s1)
   13f14:	0484b703          	ld	a4,72(s1)
   13f18:	e45ff06f          	j	13d5c <__sflush_r+0x78>
   13f1c:	0009a783          	lw	a5,0(s3)
   13f20:	fe0788e3          	beqz	a5,13f10 <__sflush_r+0x22c>
   13f24:	01d00713          	li	a4,29
   13f28:	00e78663          	beq	a5,a4,13f34 <__sflush_r+0x250>
   13f2c:	01600713          	li	a4,22
   13f30:	00e79863          	bne	a5,a4,13f40 <__sflush_r+0x25c>
   13f34:	0089a023          	sw	s0,0(s3)
   13f38:	00000513          	li	a0,0
   13f3c:	eadff06f          	j	13de8 <__sflush_r+0x104>
   13f40:	0104d783          	lhu	a5,16(s1)
   13f44:	0407e793          	ori	a5,a5,64
   13f48:	00f49823          	sh	a5,16(s1)
   13f4c:	e9dff06f          	j	13de8 <__sflush_r+0x104>

0000000000013f50 <_fflush_r>:
   13f50:	fe010113          	addi	sp,sp,-32
   13f54:	00813823          	sd	s0,16(sp)
   13f58:	00113c23          	sd	ra,24(sp)
   13f5c:	00050413          	mv	s0,a0
   13f60:	00050663          	beqz	a0,13f6c <_fflush_r+0x1c>
   13f64:	05052783          	lw	a5,80(a0)
   13f68:	02078a63          	beqz	a5,13f9c <_fflush_r+0x4c>
   13f6c:	01059783          	lh	a5,16(a1)
   13f70:	00079c63          	bnez	a5,13f88 <_fflush_r+0x38>
   13f74:	01813083          	ld	ra,24(sp)
   13f78:	00000513          	li	a0,0
   13f7c:	01013403          	ld	s0,16(sp)
   13f80:	02010113          	addi	sp,sp,32
   13f84:	00008067          	ret
   13f88:	00040513          	mv	a0,s0
   13f8c:	01813083          	ld	ra,24(sp)
   13f90:	01013403          	ld	s0,16(sp)
   13f94:	02010113          	addi	sp,sp,32
   13f98:	d4dff06f          	j	13ce4 <__sflush_r>
   13f9c:	00b13423          	sd	a1,8(sp)
   13fa0:	35c000ef          	jal	142fc <__sinit>
   13fa4:	00813583          	ld	a1,8(sp)
   13fa8:	fc5ff06f          	j	13f6c <_fflush_r+0x1c>

0000000000013fac <fflush>:
   13fac:	00050593          	mv	a1,a0
   13fb0:	00050663          	beqz	a0,13fbc <fflush+0x10>
   13fb4:	8101b503          	ld	a0,-2032(gp) # 1c5d0 <_impure_ptr>
   13fb8:	f99ff06f          	j	13f50 <_fflush_r>
   13fbc:	8081b503          	ld	a0,-2040(gp) # 1c5c8 <_global_impure_ptr>
   13fc0:	000145b7          	lui	a1,0x14
   13fc4:	f5058593          	addi	a1,a1,-176 # 13f50 <_fflush_r>
   13fc8:	64d0006f          	j	14e14 <_fwalk_reent>

0000000000013fcc <__fp_unlock>:
   13fcc:	00000513          	li	a0,0
   13fd0:	00008067          	ret

0000000000013fd4 <_cleanup_r>:
   13fd4:	000195b7          	lui	a1,0x19
   13fd8:	c7858593          	addi	a1,a1,-904 # 18c78 <_fclose_r>
   13fdc:	6390006f          	j	14e14 <_fwalk_reent>

0000000000013fe0 <__sinit.part.1>:
   13fe0:	fc010113          	addi	sp,sp,-64
   13fe4:	000147b7          	lui	a5,0x14
   13fe8:	02113c23          	sd	ra,56(sp)
   13fec:	02813823          	sd	s0,48(sp)
   13ff0:	02913423          	sd	s1,40(sp)
   13ff4:	00853403          	ld	s0,8(a0)
   13ff8:	03213023          	sd	s2,32(sp)
   13ffc:	01313c23          	sd	s3,24(sp)
   14000:	01413823          	sd	s4,16(sp)
   14004:	01513423          	sd	s5,8(sp)
   14008:	01613023          	sd	s6,0(sp)
   1400c:	fd478793          	addi	a5,a5,-44 # 13fd4 <_cleanup_r>
   14010:	04f53c23          	sd	a5,88(a0)
   14014:	53850713          	addi	a4,a0,1336
   14018:	00300793          	li	a5,3
   1401c:	52e53823          	sd	a4,1328(a0)
   14020:	52f52423          	sw	a5,1320(a0)
   14024:	52053023          	sd	zero,1312(a0)
   14028:	00400793          	li	a5,4
   1402c:	00050913          	mv	s2,a0
   14030:	00f41823          	sh	a5,16(s0)
   14034:	00800613          	li	a2,8
   14038:	00000593          	li	a1,0
   1403c:	00043023          	sd	zero,0(s0)
   14040:	00042423          	sw	zero,8(s0)
   14044:	00042623          	sw	zero,12(s0)
   14048:	0a042623          	sw	zero,172(s0)
   1404c:	00041923          	sh	zero,18(s0)
   14050:	00043c23          	sd	zero,24(s0)
   14054:	02042023          	sw	zero,32(s0)
   14058:	02042423          	sw	zero,40(s0)
   1405c:	0a440513          	addi	a0,s0,164
   14060:	381010ef          	jal	15be0 <memset>
   14064:	00017b37          	lui	s6,0x17
   14068:	01093483          	ld	s1,16(s2)
   1406c:	00017ab7          	lui	s5,0x17
   14070:	00017a37          	lui	s4,0x17
   14074:	000179b7          	lui	s3,0x17
   14078:	47cb0b13          	addi	s6,s6,1148 # 1747c <__sread>
   1407c:	4e8a8a93          	addi	s5,s5,1256 # 174e8 <__swrite>
   14080:	558a0a13          	addi	s4,s4,1368 # 17558 <__sseek>
   14084:	5c498993          	addi	s3,s3,1476 # 175c4 <__sclose>
   14088:	03643c23          	sd	s6,56(s0)
   1408c:	05543023          	sd	s5,64(s0)
   14090:	05443423          	sd	s4,72(s0)
   14094:	05343823          	sd	s3,80(s0)
   14098:	02843823          	sd	s0,48(s0)
   1409c:	00900793          	li	a5,9
   140a0:	00f49823          	sh	a5,16(s1)
   140a4:	00100793          	li	a5,1
   140a8:	00f49923          	sh	a5,18(s1)
   140ac:	00800613          	li	a2,8
   140b0:	00000593          	li	a1,0
   140b4:	0004b023          	sd	zero,0(s1)
   140b8:	0004a423          	sw	zero,8(s1)
   140bc:	0004a623          	sw	zero,12(s1)
   140c0:	0a04a623          	sw	zero,172(s1)
   140c4:	0004bc23          	sd	zero,24(s1)
   140c8:	0204a023          	sw	zero,32(s1)
   140cc:	0204a423          	sw	zero,40(s1)
   140d0:	0a448513          	addi	a0,s1,164
   140d4:	30d010ef          	jal	15be0 <memset>
   140d8:	01893403          	ld	s0,24(s2)
   140dc:	01200793          	li	a5,18
   140e0:	0364bc23          	sd	s6,56(s1)
   140e4:	0554b023          	sd	s5,64(s1)
   140e8:	0544b423          	sd	s4,72(s1)
   140ec:	0534b823          	sd	s3,80(s1)
   140f0:	0294b823          	sd	s1,48(s1)
   140f4:	00f41823          	sh	a5,16(s0)
   140f8:	00200793          	li	a5,2
   140fc:	00f41923          	sh	a5,18(s0)
   14100:	00043023          	sd	zero,0(s0)
   14104:	00042423          	sw	zero,8(s0)
   14108:	00042623          	sw	zero,12(s0)
   1410c:	0a042623          	sw	zero,172(s0)
   14110:	00043c23          	sd	zero,24(s0)
   14114:	02042023          	sw	zero,32(s0)
   14118:	02042423          	sw	zero,40(s0)
   1411c:	0a440513          	addi	a0,s0,164
   14120:	00800613          	li	a2,8
   14124:	00000593          	li	a1,0
   14128:	2b9010ef          	jal	15be0 <memset>
   1412c:	03813083          	ld	ra,56(sp)
   14130:	03643c23          	sd	s6,56(s0)
   14134:	05543023          	sd	s5,64(s0)
   14138:	05443423          	sd	s4,72(s0)
   1413c:	05343823          	sd	s3,80(s0)
   14140:	02843823          	sd	s0,48(s0)
   14144:	00100793          	li	a5,1
   14148:	04f92823          	sw	a5,80(s2)
   1414c:	03013403          	ld	s0,48(sp)
   14150:	02813483          	ld	s1,40(sp)
   14154:	02013903          	ld	s2,32(sp)
   14158:	01813983          	ld	s3,24(sp)
   1415c:	01013a03          	ld	s4,16(sp)
   14160:	00813a83          	ld	s5,8(sp)
   14164:	00013b03          	ld	s6,0(sp)
   14168:	04010113          	addi	sp,sp,64
   1416c:	00008067          	ret

0000000000014170 <__fp_lock>:
   14170:	00000513          	li	a0,0
   14174:	00008067          	ret

0000000000014178 <__sfmoreglue>:
   14178:	fe010113          	addi	sp,sp,-32
   1417c:	fff5879b          	addiw	a5,a1,-1
   14180:	00913423          	sd	s1,8(sp)
   14184:	0b000493          	li	s1,176
   14188:	029784b3          	mul	s1,a5,s1
   1418c:	01213023          	sd	s2,0(sp)
   14190:	00058913          	mv	s2,a1
   14194:	00813823          	sd	s0,16(sp)
   14198:	00113c23          	sd	ra,24(sp)
   1419c:	0c848593          	addi	a1,s1,200
   141a0:	7a9000ef          	jal	15148 <_malloc_r>
   141a4:	00050413          	mv	s0,a0
   141a8:	02050063          	beqz	a0,141c8 <__sfmoreglue+0x50>
   141ac:	01850513          	addi	a0,a0,24
   141b0:	00043023          	sd	zero,0(s0)
   141b4:	01242423          	sw	s2,8(s0)
   141b8:	00a43823          	sd	a0,16(s0)
   141bc:	0b048613          	addi	a2,s1,176
   141c0:	00000593          	li	a1,0
   141c4:	21d010ef          	jal	15be0 <memset>
   141c8:	01813083          	ld	ra,24(sp)
   141cc:	00040513          	mv	a0,s0
   141d0:	00813483          	ld	s1,8(sp)
   141d4:	01013403          	ld	s0,16(sp)
   141d8:	00013903          	ld	s2,0(sp)
   141dc:	02010113          	addi	sp,sp,32
   141e0:	00008067          	ret

00000000000141e4 <__sfp>:
   141e4:	fd010113          	addi	sp,sp,-48
   141e8:	01213823          	sd	s2,16(sp)
   141ec:	8081b903          	ld	s2,-2040(gp) # 1c5c8 <_global_impure_ptr>
   141f0:	01313423          	sd	s3,8(sp)
   141f4:	02113423          	sd	ra,40(sp)
   141f8:	05092783          	lw	a5,80(s2)
   141fc:	02813023          	sd	s0,32(sp)
   14200:	00913c23          	sd	s1,24(sp)
   14204:	00050993          	mv	s3,a0
   14208:	00079663          	bnez	a5,14214 <__sfp+0x30>
   1420c:	00090513          	mv	a0,s2
   14210:	dd1ff0ef          	jal	13fe0 <__sinit.part.1>
   14214:	52090913          	addi	s2,s2,1312
   14218:	fff00493          	li	s1,-1
   1421c:	00892783          	lw	a5,8(s2)
   14220:	01093403          	ld	s0,16(s2)
   14224:	fff7879b          	addiw	a5,a5,-1
   14228:	0007da63          	bgez	a5,1423c <__sfp+0x58>
   1422c:	0840006f          	j	142b0 <__sfp+0xcc>
   14230:	fff7879b          	addiw	a5,a5,-1
   14234:	0b040413          	addi	s0,s0,176
   14238:	06978c63          	beq	a5,s1,142b0 <__sfp+0xcc>
   1423c:	01041703          	lh	a4,16(s0)
   14240:	fe0718e3          	bnez	a4,14230 <__sfp+0x4c>
   14244:	fff00793          	li	a5,-1
   14248:	00f41923          	sh	a5,18(s0)
   1424c:	00100793          	li	a5,1
   14250:	00f41823          	sh	a5,16(s0)
   14254:	0a042623          	sw	zero,172(s0)
   14258:	00043023          	sd	zero,0(s0)
   1425c:	00042623          	sw	zero,12(s0)
   14260:	00042423          	sw	zero,8(s0)
   14264:	00043c23          	sd	zero,24(s0)
   14268:	02042023          	sw	zero,32(s0)
   1426c:	02042423          	sw	zero,40(s0)
   14270:	00800613          	li	a2,8
   14274:	00000593          	li	a1,0
   14278:	0a440513          	addi	a0,s0,164
   1427c:	165010ef          	jal	15be0 <memset>
   14280:	00040513          	mv	a0,s0
   14284:	04043c23          	sd	zero,88(s0)
   14288:	06042023          	sw	zero,96(s0)
   1428c:	06043c23          	sd	zero,120(s0)
   14290:	08042023          	sw	zero,128(s0)
   14294:	02813083          	ld	ra,40(sp)
   14298:	02013403          	ld	s0,32(sp)
   1429c:	01813483          	ld	s1,24(sp)
   142a0:	01013903          	ld	s2,16(sp)
   142a4:	00813983          	ld	s3,8(sp)
   142a8:	03010113          	addi	sp,sp,48
   142ac:	00008067          	ret
   142b0:	00093783          	ld	a5,0(s2)
   142b4:	00078663          	beqz	a5,142c0 <__sfp+0xdc>
   142b8:	00078913          	mv	s2,a5
   142bc:	f61ff06f          	j	1421c <__sfp+0x38>
   142c0:	00400593          	li	a1,4
   142c4:	00098513          	mv	a0,s3
   142c8:	eb1ff0ef          	jal	14178 <__sfmoreglue>
   142cc:	00a93023          	sd	a0,0(s2)
   142d0:	00050663          	beqz	a0,142dc <__sfp+0xf8>
   142d4:	00050913          	mv	s2,a0
   142d8:	f45ff06f          	j	1421c <__sfp+0x38>
   142dc:	00c00793          	li	a5,12
   142e0:	00f9a023          	sw	a5,0(s3)
   142e4:	00000513          	li	a0,0
   142e8:	fadff06f          	j	14294 <__sfp+0xb0>

00000000000142ec <_cleanup>:
   142ec:	8081b503          	ld	a0,-2040(gp) # 1c5c8 <_global_impure_ptr>
   142f0:	000195b7          	lui	a1,0x19
   142f4:	c7858593          	addi	a1,a1,-904 # 18c78 <_fclose_r>
   142f8:	31d0006f          	j	14e14 <_fwalk_reent>

00000000000142fc <__sinit>:
   142fc:	05052783          	lw	a5,80(a0)
   14300:	00078463          	beqz	a5,14308 <__sinit+0xc>
   14304:	00008067          	ret
   14308:	cd9ff06f          	j	13fe0 <__sinit.part.1>

000000000001430c <__sfp_lock_acquire>:
   1430c:	00008067          	ret

0000000000014310 <__sfp_lock_release>:
   14310:	00008067          	ret

0000000000014314 <__sinit_lock_acquire>:
   14314:	00008067          	ret

0000000000014318 <__sinit_lock_release>:
   14318:	00008067          	ret

000000000001431c <__fp_lock_all>:
   1431c:	8101b503          	ld	a0,-2032(gp) # 1c5d0 <_impure_ptr>
   14320:	000145b7          	lui	a1,0x14
   14324:	17058593          	addi	a1,a1,368 # 14170 <__fp_lock>
   14328:	23d0006f          	j	14d64 <_fwalk>

000000000001432c <__fp_unlock_all>:
   1432c:	8101b503          	ld	a0,-2032(gp) # 1c5d0 <_impure_ptr>
   14330:	000145b7          	lui	a1,0x14
   14334:	fcc58593          	addi	a1,a1,-52 # 13fcc <__fp_unlock>
   14338:	22d0006f          	j	14d64 <_fwalk>

000000000001433c <_fputc_r>:
   1433c:	fe010113          	addi	sp,sp,-32
   14340:	00813823          	sd	s0,16(sp)
   14344:	00113c23          	sd	ra,24(sp)
   14348:	00050413          	mv	s0,a0
   1434c:	02050063          	beqz	a0,1436c <_fputc_r+0x30>
   14350:	05052783          	lw	a5,80(a0)
   14354:	00079c63          	bnez	a5,1436c <_fputc_r+0x30>
   14358:	00c13423          	sd	a2,8(sp)
   1435c:	00b13023          	sd	a1,0(sp)
   14360:	f9dff0ef          	jal	142fc <__sinit>
   14364:	00813603          	ld	a2,8(sp)
   14368:	00013583          	ld	a1,0(sp)
   1436c:	00040513          	mv	a0,s0
   14370:	01813083          	ld	ra,24(sp)
   14374:	01013403          	ld	s0,16(sp)
   14378:	02010113          	addi	sp,sp,32
   1437c:	1ad0206f          	j	16d28 <_putc_r>

0000000000014380 <fputc>:
   14380:	fd010113          	addi	sp,sp,-48
   14384:	02813023          	sd	s0,32(sp)
   14388:	8101b403          	ld	s0,-2032(gp) # 1c5d0 <_impure_ptr>
   1438c:	00913c23          	sd	s1,24(sp)
   14390:	02113423          	sd	ra,40(sp)
   14394:	00050493          	mv	s1,a0
   14398:	00058613          	mv	a2,a1
   1439c:	00040e63          	beqz	s0,143b8 <fputc+0x38>
   143a0:	05042783          	lw	a5,80(s0)
   143a4:	00079a63          	bnez	a5,143b8 <fputc+0x38>
   143a8:	00040513          	mv	a0,s0
   143ac:	00b13423          	sd	a1,8(sp)
   143b0:	f4dff0ef          	jal	142fc <__sinit>
   143b4:	00813603          	ld	a2,8(sp)
   143b8:	00048593          	mv	a1,s1
   143bc:	00040513          	mv	a0,s0
   143c0:	02813083          	ld	ra,40(sp)
   143c4:	02013403          	ld	s0,32(sp)
   143c8:	01813483          	ld	s1,24(sp)
   143cc:	03010113          	addi	sp,sp,48
   143d0:	1590206f          	j	16d28 <_putc_r>

00000000000143d4 <_fputs_r>:
   143d4:	fb010113          	addi	sp,sp,-80
   143d8:	02913c23          	sd	s1,56(sp)
   143dc:	00050493          	mv	s1,a0
   143e0:	00058513          	mv	a0,a1
   143e4:	04813023          	sd	s0,64(sp)
   143e8:	04113423          	sd	ra,72(sp)
   143ec:	00060413          	mv	s0,a2
   143f0:	00b13423          	sd	a1,8(sp)
   143f4:	304030ef          	jal	176f8 <strlen>
   143f8:	00810793          	addi	a5,sp,8
   143fc:	00f13c23          	sd	a5,24(sp)
   14400:	00100793          	li	a5,1
   14404:	02a13423          	sd	a0,40(sp)
   14408:	00a13823          	sd	a0,16(sp)
   1440c:	02f12023          	sw	a5,32(sp)
   14410:	00048663          	beqz	s1,1441c <_fputs_r+0x48>
   14414:	0504a783          	lw	a5,80(s1)
   14418:	04078a63          	beqz	a5,1446c <_fputs_r+0x98>
   1441c:	01041703          	lh	a4,16(s0)
   14420:	03271793          	slli	a5,a4,0x32
   14424:	0207c263          	bltz	a5,14448 <_fputs_r+0x74>
   14428:	0ac42603          	lw	a2,172(s0)
   1442c:	ffffe7b7          	lui	a5,0xffffe
   14430:	000026b7          	lui	a3,0x2
   14434:	fff7879b          	addiw	a5,a5,-1
   14438:	00d76733          	or	a4,a4,a3
   1443c:	00f677b3          	and	a5,a2,a5
   14440:	00e41823          	sh	a4,16(s0)
   14444:	0af42623          	sw	a5,172(s0)
   14448:	01810613          	addi	a2,sp,24
   1444c:	00040593          	mv	a1,s0
   14450:	00048513          	mv	a0,s1
   14454:	45c000ef          	jal	148b0 <__sfvwrite_r>
   14458:	04813083          	ld	ra,72(sp)
   1445c:	04013403          	ld	s0,64(sp)
   14460:	03813483          	ld	s1,56(sp)
   14464:	05010113          	addi	sp,sp,80
   14468:	00008067          	ret
   1446c:	00048513          	mv	a0,s1
   14470:	e8dff0ef          	jal	142fc <__sinit>
   14474:	fa9ff06f          	j	1441c <_fputs_r+0x48>

0000000000014478 <fputs>:
   14478:	00058613          	mv	a2,a1
   1447c:	00050593          	mv	a1,a0
   14480:	8101b503          	ld	a0,-2032(gp) # 1c5d0 <_impure_ptr>
   14484:	f51ff06f          	j	143d4 <_fputs_r>

0000000000014488 <_malloc_trim_r>:
   14488:	fd010113          	addi	sp,sp,-48
   1448c:	01213823          	sd	s2,16(sp)
   14490:	0001c937          	lui	s2,0x1c
   14494:	02813023          	sd	s0,32(sp)
   14498:	00913c23          	sd	s1,24(sp)
   1449c:	00058413          	mv	s0,a1
   144a0:	01313423          	sd	s3,8(sp)
   144a4:	02113423          	sd	ra,40(sp)
   144a8:	00050993          	mv	s3,a0
   144ac:	da890913          	addi	s2,s2,-600 # 1bda8 <__malloc_av_>
   144b0:	00d010ef          	jal	15cbc <__malloc_lock>
   144b4:	01093703          	ld	a4,16(s2)
   144b8:	000017b7          	lui	a5,0x1
   144bc:	fdf78593          	addi	a1,a5,-33 # fdf <_ftext-0xf021>
   144c0:	00873483          	ld	s1,8(a4)
   144c4:	ffc4f493          	andi	s1,s1,-4
   144c8:	40848433          	sub	s0,s1,s0
   144cc:	00b40433          	add	s0,s0,a1
   144d0:	00c45413          	srli	s0,s0,0xc
   144d4:	fff40413          	addi	s0,s0,-1
   144d8:	00c41413          	slli	s0,s0,0xc
   144dc:	00f44c63          	blt	s0,a5,144f4 <_malloc_trim_r+0x6c>
   144e0:	00000513          	li	a0,0
   144e4:	024050ef          	jal	19508 <sbrk>
   144e8:	01093783          	ld	a5,16(s2)
   144ec:	009787b3          	add	a5,a5,s1
   144f0:	02f50663          	beq	a0,a5,1451c <_malloc_trim_r+0x94>
   144f4:	00098513          	mv	a0,s3
   144f8:	7c8010ef          	jal	15cc0 <__malloc_unlock>
   144fc:	02813083          	ld	ra,40(sp)
   14500:	00000513          	li	a0,0
   14504:	02013403          	ld	s0,32(sp)
   14508:	01813483          	ld	s1,24(sp)
   1450c:	01013903          	ld	s2,16(sp)
   14510:	00813983          	ld	s3,8(sp)
   14514:	03010113          	addi	sp,sp,48
   14518:	00008067          	ret
   1451c:	40800533          	neg	a0,s0
   14520:	7e9040ef          	jal	19508 <sbrk>
   14524:	fff00793          	li	a5,-1
   14528:	04f50463          	beq	a0,a5,14570 <_malloc_trim_r+0xe8>
   1452c:	9001a783          	lw	a5,-1792(gp) # 1c6c0 <__malloc_current_mallinfo>
   14530:	01093683          	ld	a3,16(s2)
   14534:	408484b3          	sub	s1,s1,s0
   14538:	0014e493          	ori	s1,s1,1
   1453c:	4087843b          	subw	s0,a5,s0
   14540:	00098513          	mv	a0,s3
   14544:	0096b423          	sd	s1,8(a3) # 2008 <_ftext-0xdff8>
   14548:	9081a023          	sw	s0,-1792(gp) # 1c6c0 <__malloc_current_mallinfo>
   1454c:	774010ef          	jal	15cc0 <__malloc_unlock>
   14550:	02813083          	ld	ra,40(sp)
   14554:	00100513          	li	a0,1
   14558:	02013403          	ld	s0,32(sp)
   1455c:	01813483          	ld	s1,24(sp)
   14560:	01013903          	ld	s2,16(sp)
   14564:	00813983          	ld	s3,8(sp)
   14568:	03010113          	addi	sp,sp,48
   1456c:	00008067          	ret
   14570:	00000513          	li	a0,0
   14574:	795040ef          	jal	19508 <sbrk>
   14578:	01093703          	ld	a4,16(s2)
   1457c:	01f00693          	li	a3,31
   14580:	40e507b3          	sub	a5,a0,a4
   14584:	f6f6d8e3          	ble	a5,a3,144f4 <_malloc_trim_r+0x6c>
   14588:	8201b683          	ld	a3,-2016(gp) # 1c5e0 <__malloc_sbrk_base>
   1458c:	0017e793          	ori	a5,a5,1
   14590:	00f73423          	sd	a5,8(a4)
   14594:	40d50533          	sub	a0,a0,a3
   14598:	90a1a023          	sw	a0,-1792(gp) # 1c6c0 <__malloc_current_mallinfo>
   1459c:	f59ff06f          	j	144f4 <_malloc_trim_r+0x6c>

00000000000145a0 <_free_r>:
   145a0:	10058263          	beqz	a1,146a4 <_free_r+0x104>
   145a4:	fe010113          	addi	sp,sp,-32
   145a8:	00813823          	sd	s0,16(sp)
   145ac:	00913423          	sd	s1,8(sp)
   145b0:	00058413          	mv	s0,a1
   145b4:	00050493          	mv	s1,a0
   145b8:	00113c23          	sd	ra,24(sp)
   145bc:	700010ef          	jal	15cbc <__malloc_lock>
   145c0:	ff843503          	ld	a0,-8(s0)
   145c4:	ff040693          	addi	a3,s0,-16
   145c8:	0001c5b7          	lui	a1,0x1c
   145cc:	ffe57793          	andi	a5,a0,-2
   145d0:	00f68633          	add	a2,a3,a5
   145d4:	da858593          	addi	a1,a1,-600 # 1bda8 <__malloc_av_>
   145d8:	00863703          	ld	a4,8(a2)
   145dc:	0105b803          	ld	a6,16(a1)
   145e0:	ffc77713          	andi	a4,a4,-4
   145e4:	17060663          	beq	a2,a6,14750 <_free_r+0x1b0>
   145e8:	00e63423          	sd	a4,8(a2)
   145ec:	00157513          	andi	a0,a0,1
   145f0:	02051663          	bnez	a0,1461c <_free_r+0x7c>
   145f4:	ff043503          	ld	a0,-16(s0)
   145f8:	40a686b3          	sub	a3,a3,a0
   145fc:	0106b803          	ld	a6,16(a3)
   14600:	00a787b3          	add	a5,a5,a0
   14604:	0001c537          	lui	a0,0x1c
   14608:	db850513          	addi	a0,a0,-584 # 1bdb8 <__malloc_av_+0x10>
   1460c:	18a80863          	beq	a6,a0,1479c <_free_r+0x1fc>
   14610:	0186b503          	ld	a0,24(a3)
   14614:	00a83c23          	sd	a0,24(a6)
   14618:	01053823          	sd	a6,16(a0)
   1461c:	00e60533          	add	a0,a2,a4
   14620:	00853503          	ld	a0,8(a0)
   14624:	00157513          	andi	a0,a0,1
   14628:	0e050a63          	beqz	a0,1471c <_free_r+0x17c>
   1462c:	0017e713          	ori	a4,a5,1
   14630:	00e6b423          	sd	a4,8(a3)
   14634:	00f68733          	add	a4,a3,a5
   14638:	00f73023          	sd	a5,0(a4)
   1463c:	1ff00713          	li	a4,511
   14640:	06f76463          	bltu	a4,a5,146a8 <_free_r+0x108>
   14644:	0037d793          	srli	a5,a5,0x3
   14648:	0007879b          	sext.w	a5,a5
   1464c:	0017871b          	addiw	a4,a5,1
   14650:	0017171b          	slliw	a4,a4,0x1
   14654:	00371713          	slli	a4,a4,0x3
   14658:	0085b603          	ld	a2,8(a1)
   1465c:	00e58733          	add	a4,a1,a4
   14660:	00073803          	ld	a6,0(a4)
   14664:	4027d79b          	sraiw	a5,a5,0x2
   14668:	00100513          	li	a0,1
   1466c:	00f517b3          	sll	a5,a0,a5
   14670:	00c7e7b3          	or	a5,a5,a2
   14674:	ff070613          	addi	a2,a4,-16
   14678:	00c6bc23          	sd	a2,24(a3)
   1467c:	0106b823          	sd	a6,16(a3)
   14680:	00f5b423          	sd	a5,8(a1)
   14684:	00d73023          	sd	a3,0(a4)
   14688:	00d83c23          	sd	a3,24(a6)
   1468c:	00048513          	mv	a0,s1
   14690:	01813083          	ld	ra,24(sp)
   14694:	01013403          	ld	s0,16(sp)
   14698:	00813483          	ld	s1,8(sp)
   1469c:	02010113          	addi	sp,sp,32
   146a0:	6200106f          	j	15cc0 <__malloc_unlock>
   146a4:	00008067          	ret
   146a8:	0097d713          	srli	a4,a5,0x9
   146ac:	00400613          	li	a2,4
   146b0:	12e66263          	bltu	a2,a4,147d4 <_free_r+0x234>
   146b4:	0067d713          	srli	a4,a5,0x6
   146b8:	0007071b          	sext.w	a4,a4
   146bc:	0397051b          	addiw	a0,a4,57
   146c0:	0387061b          	addiw	a2,a4,56
   146c4:	0015151b          	slliw	a0,a0,0x1
   146c8:	00351513          	slli	a0,a0,0x3
   146cc:	00a58533          	add	a0,a1,a0
   146d0:	00053703          	ld	a4,0(a0)
   146d4:	ff050513          	addi	a0,a0,-16
   146d8:	10e50c63          	beq	a0,a4,147f0 <_free_r+0x250>
   146dc:	00873603          	ld	a2,8(a4)
   146e0:	ffc67613          	andi	a2,a2,-4
   146e4:	00c7f663          	bleu	a2,a5,146f0 <_free_r+0x150>
   146e8:	01073703          	ld	a4,16(a4)
   146ec:	fee518e3          	bne	a0,a4,146dc <_free_r+0x13c>
   146f0:	01873503          	ld	a0,24(a4)
   146f4:	00a6bc23          	sd	a0,24(a3)
   146f8:	00e6b823          	sd	a4,16(a3)
   146fc:	00d53823          	sd	a3,16(a0)
   14700:	01813083          	ld	ra,24(sp)
   14704:	00048513          	mv	a0,s1
   14708:	01013403          	ld	s0,16(sp)
   1470c:	00813483          	ld	s1,8(sp)
   14710:	00d73c23          	sd	a3,24(a4)
   14714:	02010113          	addi	sp,sp,32
   14718:	5a80106f          	j	15cc0 <__malloc_unlock>
   1471c:	01063503          	ld	a0,16(a2)
   14720:	00e787b3          	add	a5,a5,a4
   14724:	0001c737          	lui	a4,0x1c
   14728:	db870713          	addi	a4,a4,-584 # 1bdb8 <__malloc_av_+0x10>
   1472c:	0ee50263          	beq	a0,a4,14810 <_free_r+0x270>
   14730:	01863803          	ld	a6,24(a2)
   14734:	0017e613          	ori	a2,a5,1
   14738:	00f68733          	add	a4,a3,a5
   1473c:	01053c23          	sd	a6,24(a0)
   14740:	00a83823          	sd	a0,16(a6)
   14744:	00c6b423          	sd	a2,8(a3)
   14748:	00f73023          	sd	a5,0(a4)
   1474c:	ef1ff06f          	j	1463c <_free_r+0x9c>
   14750:	00157513          	andi	a0,a0,1
   14754:	00e787b3          	add	a5,a5,a4
   14758:	02051063          	bnez	a0,14778 <_free_r+0x1d8>
   1475c:	ff043503          	ld	a0,-16(s0)
   14760:	40a686b3          	sub	a3,a3,a0
   14764:	0186b703          	ld	a4,24(a3)
   14768:	0106b603          	ld	a2,16(a3)
   1476c:	00a787b3          	add	a5,a5,a0
   14770:	00e63c23          	sd	a4,24(a2)
   14774:	00c73823          	sd	a2,16(a4)
   14778:	0017e613          	ori	a2,a5,1
   1477c:	8281b703          	ld	a4,-2008(gp) # 1c5e8 <__malloc_trim_threshold>
   14780:	00c6b423          	sd	a2,8(a3)
   14784:	00d5b823          	sd	a3,16(a1)
   14788:	f0e7e2e3          	bltu	a5,a4,1468c <_free_r+0xec>
   1478c:	8b81b583          	ld	a1,-1864(gp) # 1c678 <__malloc_top_pad>
   14790:	00048513          	mv	a0,s1
   14794:	cf5ff0ef          	jal	14488 <_malloc_trim_r>
   14798:	ef5ff06f          	j	1468c <_free_r+0xec>
   1479c:	00e605b3          	add	a1,a2,a4
   147a0:	0085b583          	ld	a1,8(a1)
   147a4:	0015f593          	andi	a1,a1,1
   147a8:	0e059a63          	bnez	a1,1489c <_free_r+0x2fc>
   147ac:	01063583          	ld	a1,16(a2)
   147b0:	01863603          	ld	a2,24(a2)
   147b4:	00f707b3          	add	a5,a4,a5
   147b8:	0017e713          	ori	a4,a5,1
   147bc:	00c5bc23          	sd	a2,24(a1)
   147c0:	00b63823          	sd	a1,16(a2)
   147c4:	00e6b423          	sd	a4,8(a3)
   147c8:	00f686b3          	add	a3,a3,a5
   147cc:	00f6b023          	sd	a5,0(a3)
   147d0:	ebdff06f          	j	1468c <_free_r+0xec>
   147d4:	01400613          	li	a2,20
   147d8:	04e66e63          	bltu	a2,a4,14834 <_free_r+0x294>
   147dc:	0007071b          	sext.w	a4,a4
   147e0:	05c7051b          	addiw	a0,a4,92
   147e4:	05b7061b          	addiw	a2,a4,91
   147e8:	0015151b          	slliw	a0,a0,0x1
   147ec:	eddff06f          	j	146c8 <_free_r+0x128>
   147f0:	0085b783          	ld	a5,8(a1)
   147f4:	4026571b          	sraiw	a4,a2,0x2
   147f8:	00100613          	li	a2,1
   147fc:	00e61733          	sll	a4,a2,a4
   14800:	00f767b3          	or	a5,a4,a5
   14804:	00f5b423          	sd	a5,8(a1)
   14808:	00050713          	mv	a4,a0
   1480c:	ee9ff06f          	j	146f4 <_free_r+0x154>
   14810:	02d5b423          	sd	a3,40(a1)
   14814:	02d5b023          	sd	a3,32(a1)
   14818:	0017e713          	ori	a4,a5,1
   1481c:	00a6bc23          	sd	a0,24(a3)
   14820:	00a6b823          	sd	a0,16(a3)
   14824:	00e6b423          	sd	a4,8(a3)
   14828:	00f686b3          	add	a3,a3,a5
   1482c:	00f6b023          	sd	a5,0(a3)
   14830:	e5dff06f          	j	1468c <_free_r+0xec>
   14834:	05400613          	li	a2,84
   14838:	00e66e63          	bltu	a2,a4,14854 <_free_r+0x2b4>
   1483c:	00c7d713          	srli	a4,a5,0xc
   14840:	0007071b          	sext.w	a4,a4
   14844:	06f7051b          	addiw	a0,a4,111
   14848:	06e7061b          	addiw	a2,a4,110
   1484c:	0015151b          	slliw	a0,a0,0x1
   14850:	e79ff06f          	j	146c8 <_free_r+0x128>
   14854:	15400613          	li	a2,340
   14858:	00e66e63          	bltu	a2,a4,14874 <_free_r+0x2d4>
   1485c:	00f7d713          	srli	a4,a5,0xf
   14860:	0007071b          	sext.w	a4,a4
   14864:	0787051b          	addiw	a0,a4,120
   14868:	0777061b          	addiw	a2,a4,119
   1486c:	0015151b          	slliw	a0,a0,0x1
   14870:	e59ff06f          	j	146c8 <_free_r+0x128>
   14874:	55400813          	li	a6,1364
   14878:	0fe00513          	li	a0,254
   1487c:	07e00613          	li	a2,126
   14880:	e4e864e3          	bltu	a6,a4,146c8 <_free_r+0x128>
   14884:	0127d713          	srli	a4,a5,0x12
   14888:	0007071b          	sext.w	a4,a4
   1488c:	07d7051b          	addiw	a0,a4,125
   14890:	07c7061b          	addiw	a2,a4,124
   14894:	0015151b          	slliw	a0,a0,0x1
   14898:	e31ff06f          	j	146c8 <_free_r+0x128>
   1489c:	0017e713          	ori	a4,a5,1
   148a0:	00e6b423          	sd	a4,8(a3)
   148a4:	00f686b3          	add	a3,a3,a5
   148a8:	00f6b023          	sd	a5,0(a3)
   148ac:	de1ff06f          	j	1468c <_free_r+0xec>

00000000000148b0 <__sfvwrite_r>:
   148b0:	01063783          	ld	a5,16(a2)
   148b4:	26078a63          	beqz	a5,14b28 <__sfvwrite_r+0x278>
   148b8:	0105d703          	lhu	a4,16(a1)
   148bc:	f9010113          	addi	sp,sp,-112
   148c0:	06813023          	sd	s0,96(sp)
   148c4:	03513c23          	sd	s5,56(sp)
   148c8:	03613823          	sd	s6,48(sp)
   148cc:	06113423          	sd	ra,104(sp)
   148d0:	04913c23          	sd	s1,88(sp)
   148d4:	05213823          	sd	s2,80(sp)
   148d8:	05313423          	sd	s3,72(sp)
   148dc:	05413023          	sd	s4,64(sp)
   148e0:	03713423          	sd	s7,40(sp)
   148e4:	03813023          	sd	s8,32(sp)
   148e8:	01913c23          	sd	s9,24(sp)
   148ec:	01a13823          	sd	s10,16(sp)
   148f0:	01b13423          	sd	s11,8(sp)
   148f4:	00877793          	andi	a5,a4,8
   148f8:	00058413          	mv	s0,a1
   148fc:	00050b13          	mv	s6,a0
   14900:	00060a93          	mv	s5,a2
   14904:	0a078863          	beqz	a5,149b4 <__sfvwrite_r+0x104>
   14908:	0185b783          	ld	a5,24(a1)
   1490c:	0a078463          	beqz	a5,149b4 <__sfvwrite_r+0x104>
   14910:	00277793          	andi	a5,a4,2
   14914:	000ab483          	ld	s1,0(s5)
   14918:	0c078063          	beqz	a5,149d8 <__sfvwrite_r+0x128>
   1491c:	80000a37          	lui	s4,0x80000
   14920:	00000993          	li	s3,0
   14924:	00000913          	li	s2,0
   14928:	c00a4a13          	xori	s4,s4,-1024
   1492c:	00098613          	mv	a2,s3
   14930:	000b0513          	mv	a0,s6
   14934:	1e090263          	beqz	s2,14b18 <__sfvwrite_r+0x268>
   14938:	00090693          	mv	a3,s2
   1493c:	012a7463          	bleu	s2,s4,14944 <__sfvwrite_r+0x94>
   14940:	000a0693          	mv	a3,s4
   14944:	04043783          	ld	a5,64(s0)
   14948:	03043583          	ld	a1,48(s0)
   1494c:	0006869b          	sext.w	a3,a3
   14950:	000780e7          	jalr	a5
   14954:	22a05063          	blez	a0,14b74 <__sfvwrite_r+0x2c4>
   14958:	010ab783          	ld	a5,16(s5)
   1495c:	00a989b3          	add	s3,s3,a0
   14960:	40a90933          	sub	s2,s2,a0
   14964:	40a78533          	sub	a0,a5,a0
   14968:	00aab823          	sd	a0,16(s5)
   1496c:	fc0510e3          	bnez	a0,1492c <__sfvwrite_r+0x7c>
   14970:	00000793          	li	a5,0
   14974:	06813083          	ld	ra,104(sp)
   14978:	00078513          	mv	a0,a5
   1497c:	06013403          	ld	s0,96(sp)
   14980:	05813483          	ld	s1,88(sp)
   14984:	05013903          	ld	s2,80(sp)
   14988:	04813983          	ld	s3,72(sp)
   1498c:	04013a03          	ld	s4,64(sp)
   14990:	03813a83          	ld	s5,56(sp)
   14994:	03013b03          	ld	s6,48(sp)
   14998:	02813b83          	ld	s7,40(sp)
   1499c:	02013c03          	ld	s8,32(sp)
   149a0:	01813c83          	ld	s9,24(sp)
   149a4:	01013d03          	ld	s10,16(sp)
   149a8:	00813d83          	ld	s11,8(sp)
   149ac:	07010113          	addi	sp,sp,112
   149b0:	00008067          	ret
   149b4:	00040593          	mv	a1,s0
   149b8:	000b0513          	mv	a0,s6
   149bc:	c35fd0ef          	jal	125f0 <__swsetup_r>
   149c0:	fff00793          	li	a5,-1
   149c4:	fa0518e3          	bnez	a0,14974 <__sfvwrite_r+0xc4>
   149c8:	01045703          	lhu	a4,16(s0)
   149cc:	000ab483          	ld	s1,0(s5)
   149d0:	00277793          	andi	a5,a4,2
   149d4:	f40794e3          	bnez	a5,1491c <__sfvwrite_r+0x6c>
   149d8:	00177793          	andi	a5,a4,1
   149dc:	1a079663          	bnez	a5,14b88 <__sfvwrite_r+0x2d8>
   149e0:	80000bb7          	lui	s7,0x80000
   149e4:	ffebcc13          	xori	s8,s7,-2
   149e8:	00000c93          	li	s9,0
   149ec:	00000913          	li	s2,0
   149f0:	fffbcb93          	not	s7,s7
   149f4:	10090a63          	beqz	s2,14b08 <__sfvwrite_r+0x258>
   149f8:	00c42983          	lw	s3,12(s0)
   149fc:	20077793          	andi	a5,a4,512
   14a00:	00098a13          	mv	s4,s3
   14a04:	26078863          	beqz	a5,14c74 <__sfvwrite_r+0x3c4>
   14a08:	2b396a63          	bltu	s2,s3,14cbc <__sfvwrite_r+0x40c>
   14a0c:	48077793          	andi	a5,a4,1152
   14a10:	2a078663          	beqz	a5,14cbc <__sfvwrite_r+0x40c>
   14a14:	02042a03          	lw	s4,32(s0)
   14a18:	01843583          	ld	a1,24(s0)
   14a1c:	00043d03          	ld	s10,0(s0)
   14a20:	001a179b          	slliw	a5,s4,0x1
   14a24:	01478a3b          	addw	s4,a5,s4
   14a28:	01fa579b          	srliw	a5,s4,0x1f
   14a2c:	40bd0d3b          	subw	s10,s10,a1
   14a30:	01478a3b          	addw	s4,a5,s4
   14a34:	000d0993          	mv	s3,s10
   14a38:	401a5a1b          	sraiw	s4,s4,0x1
   14a3c:	00198793          	addi	a5,s3,1
   14a40:	000a0613          	mv	a2,s4
   14a44:	012787b3          	add	a5,a5,s2
   14a48:	00f67863          	bleu	a5,a2,14a58 <__sfvwrite_r+0x1a8>
   14a4c:	001d0a1b          	addiw	s4,s10,1
   14a50:	01490a3b          	addw	s4,s2,s4
   14a54:	000a0613          	mv	a2,s4
   14a58:	40077713          	andi	a4,a4,1024
   14a5c:	2a070a63          	beqz	a4,14d10 <__sfvwrite_r+0x460>
   14a60:	00060593          	mv	a1,a2
   14a64:	000b0513          	mv	a0,s6
   14a68:	6e0000ef          	jal	15148 <_malloc_r>
   14a6c:	00050d93          	mv	s11,a0
   14a70:	2e050263          	beqz	a0,14d54 <__sfvwrite_r+0x4a4>
   14a74:	01843583          	ld	a1,24(s0)
   14a78:	00098613          	mv	a2,s3
   14a7c:	725000ef          	jal	159a0 <memcpy>
   14a80:	01045783          	lhu	a5,16(s0)
   14a84:	b7f7f793          	andi	a5,a5,-1153
   14a88:	0807e793          	ori	a5,a5,128
   14a8c:	00f41823          	sh	a5,16(s0)
   14a90:	41aa0d3b          	subw	s10,s4,s10
   14a94:	013d8533          	add	a0,s11,s3
   14a98:	03442023          	sw	s4,32(s0)
   14a9c:	01b43c23          	sd	s11,24(s0)
   14aa0:	00a43023          	sd	a0,0(s0)
   14aa4:	00090a13          	mv	s4,s2
   14aa8:	01a42623          	sw	s10,12(s0)
   14aac:	000a0d13          	mv	s10,s4
   14ab0:	00090993          	mv	s3,s2
   14ab4:	01497863          	bleu	s4,s2,14ac4 <__sfvwrite_r+0x214>
   14ab8:	00090d13          	mv	s10,s2
   14abc:	00090993          	mv	s3,s2
   14ac0:	00090a13          	mv	s4,s2
   14ac4:	000d0613          	mv	a2,s10
   14ac8:	000c8593          	mv	a1,s9
   14acc:	7f5000ef          	jal	15ac0 <memmove>
   14ad0:	00c42783          	lw	a5,12(s0)
   14ad4:	00043603          	ld	a2,0(s0)
   14ad8:	41478a3b          	subw	s4,a5,s4
   14adc:	01a60633          	add	a2,a2,s10
   14ae0:	01442623          	sw	s4,12(s0)
   14ae4:	00c43023          	sd	a2,0(s0)
   14ae8:	010ab503          	ld	a0,16(s5)
   14aec:	013c8cb3          	add	s9,s9,s3
   14af0:	41390933          	sub	s2,s2,s3
   14af4:	413509b3          	sub	s3,a0,s3
   14af8:	013ab823          	sd	s3,16(s5)
   14afc:	e6098ae3          	beqz	s3,14970 <__sfvwrite_r+0xc0>
   14b00:	01045703          	lhu	a4,16(s0)
   14b04:	ee091ae3          	bnez	s2,149f8 <__sfvwrite_r+0x148>
   14b08:	0004bc83          	ld	s9,0(s1)
   14b0c:	0084b903          	ld	s2,8(s1)
   14b10:	01048493          	addi	s1,s1,16
   14b14:	ee1ff06f          	j	149f4 <__sfvwrite_r+0x144>
   14b18:	0004b983          	ld	s3,0(s1)
   14b1c:	0084b903          	ld	s2,8(s1)
   14b20:	01048493          	addi	s1,s1,16
   14b24:	e09ff06f          	j	1492c <__sfvwrite_r+0x7c>
   14b28:	00000793          	li	a5,0
   14b2c:	00078513          	mv	a0,a5
   14b30:	00008067          	ret
   14b34:	01397463          	bleu	s3,s2,14b3c <__sfvwrite_r+0x28c>
   14b38:	00090993          	mv	s3,s2
   14b3c:	00098613          	mv	a2,s3
   14b40:	000c8593          	mv	a1,s9
   14b44:	77d000ef          	jal	15ac0 <memmove>
   14b48:	00c42783          	lw	a5,12(s0)
   14b4c:	00043703          	ld	a4,0(s0)
   14b50:	413787bb          	subw	a5,a5,s3
   14b54:	01370733          	add	a4,a4,s3
   14b58:	00f42623          	sw	a5,12(s0)
   14b5c:	00e43023          	sd	a4,0(s0)
   14b60:	f80794e3          	bnez	a5,14ae8 <__sfvwrite_r+0x238>
   14b64:	00040593          	mv	a1,s0
   14b68:	000b0513          	mv	a0,s6
   14b6c:	be4ff0ef          	jal	13f50 <_fflush_r>
   14b70:	f6050ce3          	beqz	a0,14ae8 <__sfvwrite_r+0x238>
   14b74:	01041783          	lh	a5,16(s0)
   14b78:	0407e793          	ori	a5,a5,64
   14b7c:	00f41823          	sh	a5,16(s0)
   14b80:	fff00793          	li	a5,-1
   14b84:	df1ff06f          	j	14974 <__sfvwrite_r+0xc4>
   14b88:	00000a13          	li	s4,0
   14b8c:	00000c13          	li	s8,0
   14b90:	00000d13          	li	s10,0
   14b94:	00000913          	li	s2,0
   14b98:	06090e63          	beqz	s2,14c14 <__sfvwrite_r+0x364>
   14b9c:	140c0863          	beqz	s8,14cec <__sfvwrite_r+0x43c>
   14ba0:	000a0993          	mv	s3,s4
   14ba4:	01497463          	bleu	s4,s2,14bac <__sfvwrite_r+0x2fc>
   14ba8:	00090993          	mv	s3,s2
   14bac:	00043503          	ld	a0,0(s0)
   14bb0:	01843783          	ld	a5,24(s0)
   14bb4:	00098b93          	mv	s7,s3
   14bb8:	02042683          	lw	a3,32(s0)
   14bbc:	00a7fa63          	bleu	a0,a5,14bd0 <__sfvwrite_r+0x320>
   14bc0:	00c42c83          	lw	s9,12(s0)
   14bc4:	01968cbb          	addw	s9,a3,s9
   14bc8:	000c8d93          	mv	s11,s9
   14bcc:	053dce63          	blt	s11,s3,14c28 <__sfvwrite_r+0x378>
   14bd0:	0ed9ca63          	blt	s3,a3,14cc4 <__sfvwrite_r+0x414>
   14bd4:	04043783          	ld	a5,64(s0)
   14bd8:	03043583          	ld	a1,48(s0)
   14bdc:	000d0613          	mv	a2,s10
   14be0:	000b0513          	mv	a0,s6
   14be4:	000780e7          	jalr	a5
   14be8:	00050b93          	mv	s7,a0
   14bec:	f8a054e3          	blez	a0,14b74 <__sfvwrite_r+0x2c4>
   14bf0:	417a0a3b          	subw	s4,s4,s7
   14bf4:	060a0463          	beqz	s4,14c5c <__sfvwrite_r+0x3ac>
   14bf8:	010ab783          	ld	a5,16(s5)
   14bfc:	017d0d33          	add	s10,s10,s7
   14c00:	41790933          	sub	s2,s2,s7
   14c04:	41778bb3          	sub	s7,a5,s7
   14c08:	017ab823          	sd	s7,16(s5)
   14c0c:	d60b82e3          	beqz	s7,14970 <__sfvwrite_r+0xc0>
   14c10:	f80916e3          	bnez	s2,14b9c <__sfvwrite_r+0x2ec>
   14c14:	0004bd03          	ld	s10,0(s1)
   14c18:	0084b903          	ld	s2,8(s1)
   14c1c:	00000c13          	li	s8,0
   14c20:	01048493          	addi	s1,s1,16
   14c24:	f75ff06f          	j	14b98 <__sfvwrite_r+0x2e8>
   14c28:	000d0593          	mv	a1,s10
   14c2c:	000c8613          	mv	a2,s9
   14c30:	691000ef          	jal	15ac0 <memmove>
   14c34:	00043783          	ld	a5,0(s0)
   14c38:	00040593          	mv	a1,s0
   14c3c:	000b0513          	mv	a0,s6
   14c40:	01b78db3          	add	s11,a5,s11
   14c44:	01b43023          	sd	s11,0(s0)
   14c48:	b08ff0ef          	jal	13f50 <_fflush_r>
   14c4c:	f20514e3          	bnez	a0,14b74 <__sfvwrite_r+0x2c4>
   14c50:	000c8b93          	mv	s7,s9
   14c54:	417a0a3b          	subw	s4,s4,s7
   14c58:	fa0a10e3          	bnez	s4,14bf8 <__sfvwrite_r+0x348>
   14c5c:	00040593          	mv	a1,s0
   14c60:	000b0513          	mv	a0,s6
   14c64:	aecff0ef          	jal	13f50 <_fflush_r>
   14c68:	f00516e3          	bnez	a0,14b74 <__sfvwrite_r+0x2c4>
   14c6c:	00000c13          	li	s8,0
   14c70:	f89ff06f          	j	14bf8 <__sfvwrite_r+0x348>
   14c74:	00043503          	ld	a0,0(s0)
   14c78:	01843783          	ld	a5,24(s0)
   14c7c:	eaa7ece3          	bltu	a5,a0,14b34 <__sfvwrite_r+0x284>
   14c80:	02042783          	lw	a5,32(s0)
   14c84:	eaf968e3          	bltu	s2,a5,14b34 <__sfvwrite_r+0x284>
   14c88:	000b8693          	mv	a3,s7
   14c8c:	012c6463          	bltu	s8,s2,14c94 <__sfvwrite_r+0x3e4>
   14c90:	0009069b          	sext.w	a3,s2
   14c94:	02f6c6bb          	divw	a3,a3,a5
   14c98:	04043703          	ld	a4,64(s0)
   14c9c:	03043583          	ld	a1,48(s0)
   14ca0:	000c8613          	mv	a2,s9
   14ca4:	000b0513          	mv	a0,s6
   14ca8:	02f686bb          	mulw	a3,a3,a5
   14cac:	000700e7          	jalr	a4
   14cb0:	eca052e3          	blez	a0,14b74 <__sfvwrite_r+0x2c4>
   14cb4:	00050993          	mv	s3,a0
   14cb8:	e31ff06f          	j	14ae8 <__sfvwrite_r+0x238>
   14cbc:	00043503          	ld	a0,0(s0)
   14cc0:	dedff06f          	j	14aac <__sfvwrite_r+0x1fc>
   14cc4:	00098613          	mv	a2,s3
   14cc8:	000d0593          	mv	a1,s10
   14ccc:	5f5000ef          	jal	15ac0 <memmove>
   14cd0:	00c42703          	lw	a4,12(s0)
   14cd4:	00043783          	ld	a5,0(s0)
   14cd8:	4137073b          	subw	a4,a4,s3
   14cdc:	013789b3          	add	s3,a5,s3
   14ce0:	00e42623          	sw	a4,12(s0)
   14ce4:	01343023          	sd	s3,0(s0)
   14ce8:	f09ff06f          	j	14bf0 <__sfvwrite_r+0x340>
   14cec:	00090613          	mv	a2,s2
   14cf0:	00a00593          	li	a1,10
   14cf4:	000d0513          	mv	a0,s10
   14cf8:	3c1000ef          	jal	158b8 <memchr>
   14cfc:	04050663          	beqz	a0,14d48 <__sfvwrite_r+0x498>
   14d00:	00150a13          	addi	s4,a0,1
   14d04:	41aa0a3b          	subw	s4,s4,s10
   14d08:	00100c13          	li	s8,1
   14d0c:	e95ff06f          	j	14ba0 <__sfvwrite_r+0x2f0>
   14d10:	000b0513          	mv	a0,s6
   14d14:	174020ef          	jal	16e88 <_realloc_r>
   14d18:	00050d93          	mv	s11,a0
   14d1c:	d6051ae3          	bnez	a0,14a90 <__sfvwrite_r+0x1e0>
   14d20:	01843583          	ld	a1,24(s0)
   14d24:	000b0513          	mv	a0,s6
   14d28:	879ff0ef          	jal	145a0 <_free_r>
   14d2c:	01045783          	lhu	a5,16(s0)
   14d30:	00c00713          	li	a4,12
   14d34:	00eb2023          	sw	a4,0(s6)
   14d38:	f7f7f793          	andi	a5,a5,-129
   14d3c:	0107979b          	slliw	a5,a5,0x10
   14d40:	4107d79b          	sraiw	a5,a5,0x10
   14d44:	e35ff06f          	j	14b78 <__sfvwrite_r+0x2c8>
   14d48:	00190a1b          	addiw	s4,s2,1
   14d4c:	00100c13          	li	s8,1
   14d50:	e51ff06f          	j	14ba0 <__sfvwrite_r+0x2f0>
   14d54:	00c00793          	li	a5,12
   14d58:	00fb2023          	sw	a5,0(s6)
   14d5c:	01041783          	lh	a5,16(s0)
   14d60:	e19ff06f          	j	14b78 <__sfvwrite_r+0x2c8>

0000000000014d64 <_fwalk>:
   14d64:	fc010113          	addi	sp,sp,-64
   14d68:	01513423          	sd	s5,8(sp)
   14d6c:	02113c23          	sd	ra,56(sp)
   14d70:	02813823          	sd	s0,48(sp)
   14d74:	02913423          	sd	s1,40(sp)
   14d78:	03213023          	sd	s2,32(sp)
   14d7c:	01313c23          	sd	s3,24(sp)
   14d80:	01413823          	sd	s4,16(sp)
   14d84:	01613023          	sd	s6,0(sp)
   14d88:	52050a93          	addi	s5,a0,1312
   14d8c:	080a8063          	beqz	s5,14e0c <_fwalk+0xa8>
   14d90:	00058b13          	mv	s6,a1
   14d94:	00000a13          	li	s4,0
   14d98:	00100993          	li	s3,1
   14d9c:	fff00913          	li	s2,-1
   14da0:	008aa483          	lw	s1,8(s5)
   14da4:	010ab403          	ld	s0,16(s5)
   14da8:	fff4849b          	addiw	s1,s1,-1
   14dac:	0204c663          	bltz	s1,14dd8 <_fwalk+0x74>
   14db0:	01045783          	lhu	a5,16(s0)
   14db4:	fff4849b          	addiw	s1,s1,-1
   14db8:	00f9fc63          	bleu	a5,s3,14dd0 <_fwalk+0x6c>
   14dbc:	01241783          	lh	a5,18(s0)
   14dc0:	00040513          	mv	a0,s0
   14dc4:	01278663          	beq	a5,s2,14dd0 <_fwalk+0x6c>
   14dc8:	000b00e7          	jalr	s6
   14dcc:	00aa6a33          	or	s4,s4,a0
   14dd0:	0b040413          	addi	s0,s0,176
   14dd4:	fd249ee3          	bne	s1,s2,14db0 <_fwalk+0x4c>
   14dd8:	000aba83          	ld	s5,0(s5)
   14ddc:	fc0a92e3          	bnez	s5,14da0 <_fwalk+0x3c>
   14de0:	03813083          	ld	ra,56(sp)
   14de4:	000a0513          	mv	a0,s4
   14de8:	03013403          	ld	s0,48(sp)
   14dec:	02813483          	ld	s1,40(sp)
   14df0:	02013903          	ld	s2,32(sp)
   14df4:	01813983          	ld	s3,24(sp)
   14df8:	01013a03          	ld	s4,16(sp)
   14dfc:	00813a83          	ld	s5,8(sp)
   14e00:	00013b03          	ld	s6,0(sp)
   14e04:	04010113          	addi	sp,sp,64
   14e08:	00008067          	ret
   14e0c:	00000a13          	li	s4,0
   14e10:	fd1ff06f          	j	14de0 <_fwalk+0x7c>

0000000000014e14 <_fwalk_reent>:
   14e14:	fb010113          	addi	sp,sp,-80
   14e18:	01613823          	sd	s6,16(sp)
   14e1c:	04113423          	sd	ra,72(sp)
   14e20:	04813023          	sd	s0,64(sp)
   14e24:	02913c23          	sd	s1,56(sp)
   14e28:	03213823          	sd	s2,48(sp)
   14e2c:	03313423          	sd	s3,40(sp)
   14e30:	03413023          	sd	s4,32(sp)
   14e34:	01513c23          	sd	s5,24(sp)
   14e38:	01713423          	sd	s7,8(sp)
   14e3c:	52050b13          	addi	s6,a0,1312
   14e40:	080b0663          	beqz	s6,14ecc <_fwalk_reent+0xb8>
   14e44:	00058b93          	mv	s7,a1
   14e48:	00050a93          	mv	s5,a0
   14e4c:	00000a13          	li	s4,0
   14e50:	00100993          	li	s3,1
   14e54:	fff00913          	li	s2,-1
   14e58:	008b2483          	lw	s1,8(s6)
   14e5c:	010b3403          	ld	s0,16(s6)
   14e60:	fff4849b          	addiw	s1,s1,-1
   14e64:	0204c863          	bltz	s1,14e94 <_fwalk_reent+0x80>
   14e68:	01045783          	lhu	a5,16(s0)
   14e6c:	fff4849b          	addiw	s1,s1,-1
   14e70:	00f9fe63          	bleu	a5,s3,14e8c <_fwalk_reent+0x78>
   14e74:	01241783          	lh	a5,18(s0)
   14e78:	00040593          	mv	a1,s0
   14e7c:	000a8513          	mv	a0,s5
   14e80:	01278663          	beq	a5,s2,14e8c <_fwalk_reent+0x78>
   14e84:	000b80e7          	jalr	s7
   14e88:	00aa6a33          	or	s4,s4,a0
   14e8c:	0b040413          	addi	s0,s0,176
   14e90:	fd249ce3          	bne	s1,s2,14e68 <_fwalk_reent+0x54>
   14e94:	000b3b03          	ld	s6,0(s6)
   14e98:	fc0b10e3          	bnez	s6,14e58 <_fwalk_reent+0x44>
   14e9c:	04813083          	ld	ra,72(sp)
   14ea0:	000a0513          	mv	a0,s4
   14ea4:	04013403          	ld	s0,64(sp)
   14ea8:	03813483          	ld	s1,56(sp)
   14eac:	03013903          	ld	s2,48(sp)
   14eb0:	02813983          	ld	s3,40(sp)
   14eb4:	02013a03          	ld	s4,32(sp)
   14eb8:	01813a83          	ld	s5,24(sp)
   14ebc:	01013b03          	ld	s6,16(sp)
   14ec0:	00813b83          	ld	s7,8(sp)
   14ec4:	05010113          	addi	sp,sp,80
   14ec8:	00008067          	ret
   14ecc:	00000a13          	li	s4,0
   14ed0:	fcdff06f          	j	14e9c <_fwalk_reent+0x88>

0000000000014ed4 <_setlocale_r>:
   14ed4:	fe010113          	addi	sp,sp,-32
   14ed8:	00913423          	sd	s1,8(sp)
   14edc:	00113c23          	sd	ra,24(sp)
   14ee0:	00813823          	sd	s0,16(sp)
   14ee4:	0001a4b7          	lui	s1,0x1a
   14ee8:	02060063          	beqz	a2,14f08 <_setlocale_r+0x34>
   14eec:	0001a5b7          	lui	a1,0x1a
   14ef0:	43058593          	addi	a1,a1,1072 # 1a430 <zeroes.4137+0x830>
   14ef4:	00060513          	mv	a0,a2
   14ef8:	00060413          	mv	s0,a2
   14efc:	6d0020ef          	jal	175cc <strcmp>
   14f00:	0001a4b7          	lui	s1,0x1a
   14f04:	00051e63          	bnez	a0,14f20 <_setlocale_r+0x4c>
   14f08:	c1048513          	addi	a0,s1,-1008 # 19c10 <zeroes.4137+0x10>
   14f0c:	01813083          	ld	ra,24(sp)
   14f10:	01013403          	ld	s0,16(sp)
   14f14:	00813483          	ld	s1,8(sp)
   14f18:	02010113          	addi	sp,sp,32
   14f1c:	00008067          	ret
   14f20:	c1048593          	addi	a1,s1,-1008
   14f24:	00040513          	mv	a0,s0
   14f28:	6a4020ef          	jal	175cc <strcmp>
   14f2c:	fc050ee3          	beqz	a0,14f08 <_setlocale_r+0x34>
   14f30:	0001a5b7          	lui	a1,0x1a
   14f34:	3e858593          	addi	a1,a1,1000 # 1a3e8 <zeroes.4137+0x7e8>
   14f38:	00040513          	mv	a0,s0
   14f3c:	690020ef          	jal	175cc <strcmp>
   14f40:	fc0504e3          	beqz	a0,14f08 <_setlocale_r+0x34>
   14f44:	00000513          	li	a0,0
   14f48:	fc5ff06f          	j	14f0c <_setlocale_r+0x38>

0000000000014f4c <__locale_charset>:
   14f4c:	0001c537          	lui	a0,0x1c
   14f50:	d0850513          	addi	a0,a0,-760 # 1bd08 <lc_ctype_charset>
   14f54:	00008067          	ret

0000000000014f58 <__locale_mb_cur_max>:
   14f58:	8181a503          	lw	a0,-2024(gp) # 1c5d8 <__mb_cur_max>
   14f5c:	00008067          	ret

0000000000014f60 <__locale_msgcharset>:
   14f60:	0001c537          	lui	a0,0x1c
   14f64:	d2850513          	addi	a0,a0,-728 # 1bd28 <lc_message_charset>
   14f68:	00008067          	ret

0000000000014f6c <__locale_cjk_lang>:
   14f6c:	00000513          	li	a0,0
   14f70:	00008067          	ret

0000000000014f74 <_localeconv_r>:
   14f74:	0001c537          	lui	a0,0x1c
   14f78:	d4850513          	addi	a0,a0,-696 # 1bd48 <lconv>
   14f7c:	00008067          	ret

0000000000014f80 <setlocale>:
   14f80:	00058613          	mv	a2,a1
   14f84:	00050593          	mv	a1,a0
   14f88:	8101b503          	ld	a0,-2032(gp) # 1c5d0 <_impure_ptr>
   14f8c:	f49ff06f          	j	14ed4 <_setlocale_r>

0000000000014f90 <localeconv>:
   14f90:	0001c537          	lui	a0,0x1c
   14f94:	d4850513          	addi	a0,a0,-696 # 1bd48 <lconv>
   14f98:	00008067          	ret

0000000000014f9c <__smakebuf_r>:
   14f9c:	01059783          	lh	a5,16(a1)
   14fa0:	f5010113          	addi	sp,sp,-176
   14fa4:	08913c23          	sd	s1,152(sp)
   14fa8:	03079493          	slli	s1,a5,0x30
   14fac:	0304d493          	srli	s1,s1,0x30
   14fb0:	0a113423          	sd	ra,168(sp)
   14fb4:	0a813023          	sd	s0,160(sp)
   14fb8:	09213823          	sd	s2,144(sp)
   14fbc:	09313423          	sd	s3,136(sp)
   14fc0:	0024f713          	andi	a4,s1,2
   14fc4:	0e071063          	bnez	a4,150a4 <__smakebuf_r+0x108>
   14fc8:	00050913          	mv	s2,a0
   14fcc:	01259503          	lh	a0,18(a1)
   14fd0:	00058413          	mv	s0,a1
   14fd4:	04054c63          	bltz	a0,1502c <__smakebuf_r+0x90>
   14fd8:	00010593          	mv	a1,sp
   14fdc:	260040ef          	jal	1923c <fstat>
   14fe0:	04054063          	bltz	a0,15020 <__smakebuf_r+0x84>
   14fe4:	01012703          	lw	a4,16(sp)
   14fe8:	0000f7b7          	lui	a5,0xf
   14fec:	ffffe9b7          	lui	s3,0xffffe
   14ff0:	00f777b3          	and	a5,a4,a5
   14ff4:	013789bb          	addw	s3,a5,s3
   14ff8:	00008737          	lui	a4,0x8
   14ffc:	0019b993          	seqz	s3,s3
   15000:	0ce78a63          	beq	a5,a4,150d4 <__smakebuf_r+0x138>
   15004:	01045703          	lhu	a4,16(s0)
   15008:	000017b7          	lui	a5,0x1
   1500c:	8007879b          	addiw	a5,a5,-2048
   15010:	00f767b3          	or	a5,a4,a5
   15014:	00f41823          	sh	a5,16(s0)
   15018:	40000493          	li	s1,1024
   1501c:	0340006f          	j	15050 <__smakebuf_r+0xb4>
   15020:	01041783          	lh	a5,16(s0)
   15024:	03079493          	slli	s1,a5,0x30
   15028:	0304d493          	srli	s1,s1,0x30
   1502c:	03849493          	slli	s1,s1,0x38
   15030:	00001737          	lui	a4,0x1
   15034:	43f4d493          	srai	s1,s1,0x3f
   15038:	8007071b          	addiw	a4,a4,-2048
   1503c:	c404f493          	andi	s1,s1,-960
   15040:	00e7e7b3          	or	a5,a5,a4
   15044:	40048493          	addi	s1,s1,1024
   15048:	00f41823          	sh	a5,16(s0)
   1504c:	00000993          	li	s3,0
   15050:	00048593          	mv	a1,s1
   15054:	00090513          	mv	a0,s2
   15058:	0f0000ef          	jal	15148 <_malloc_r>
   1505c:	0c050063          	beqz	a0,1511c <__smakebuf_r+0x180>
   15060:	01045783          	lhu	a5,16(s0)
   15064:	00014737          	lui	a4,0x14
   15068:	fd470713          	addi	a4,a4,-44 # 13fd4 <_cleanup_r>
   1506c:	04e93c23          	sd	a4,88(s2)
   15070:	0807e793          	ori	a5,a5,128
   15074:	00f41823          	sh	a5,16(s0)
   15078:	00a43023          	sd	a0,0(s0)
   1507c:	00a43c23          	sd	a0,24(s0)
   15080:	02942023          	sw	s1,32(s0)
   15084:	06099e63          	bnez	s3,15100 <__smakebuf_r+0x164>
   15088:	0a813083          	ld	ra,168(sp)
   1508c:	0a013403          	ld	s0,160(sp)
   15090:	09813483          	ld	s1,152(sp)
   15094:	09013903          	ld	s2,144(sp)
   15098:	08813983          	ld	s3,136(sp)
   1509c:	0b010113          	addi	sp,sp,176
   150a0:	00008067          	ret
   150a4:	0a813083          	ld	ra,168(sp)
   150a8:	07758793          	addi	a5,a1,119
   150ac:	00f5b023          	sd	a5,0(a1)
   150b0:	00f5bc23          	sd	a5,24(a1)
   150b4:	00100793          	li	a5,1
   150b8:	0a013403          	ld	s0,160(sp)
   150bc:	09813483          	ld	s1,152(sp)
   150c0:	09013903          	ld	s2,144(sp)
   150c4:	08813983          	ld	s3,136(sp)
   150c8:	02f5a023          	sw	a5,32(a1)
   150cc:	0b010113          	addi	sp,sp,176
   150d0:	00008067          	ret
   150d4:	04843703          	ld	a4,72(s0)
   150d8:	000177b7          	lui	a5,0x17
   150dc:	55878793          	addi	a5,a5,1368 # 17558 <__sseek>
   150e0:	f2f712e3          	bne	a4,a5,15004 <__smakebuf_r+0x68>
   150e4:	01045783          	lhu	a5,16(s0)
   150e8:	40000713          	li	a4,1024
   150ec:	08e42423          	sw	a4,136(s0)
   150f0:	00e7e7b3          	or	a5,a5,a4
   150f4:	00f41823          	sh	a5,16(s0)
   150f8:	40000493          	li	s1,1024
   150fc:	f55ff06f          	j	15050 <__smakebuf_r+0xb4>
   15100:	01241503          	lh	a0,18(s0)
   15104:	2c4040ef          	jal	193c8 <isatty>
   15108:	f80500e3          	beqz	a0,15088 <__smakebuf_r+0xec>
   1510c:	01045783          	lhu	a5,16(s0)
   15110:	0017e793          	ori	a5,a5,1
   15114:	00f41823          	sh	a5,16(s0)
   15118:	f71ff06f          	j	15088 <__smakebuf_r+0xec>
   1511c:	01041783          	lh	a5,16(s0)
   15120:	2007f713          	andi	a4,a5,512
   15124:	f60712e3          	bnez	a4,15088 <__smakebuf_r+0xec>
   15128:	0027e793          	ori	a5,a5,2
   1512c:	07740713          	addi	a4,s0,119
   15130:	00f41823          	sh	a5,16(s0)
   15134:	00100793          	li	a5,1
   15138:	00e43023          	sd	a4,0(s0)
   1513c:	00e43c23          	sd	a4,24(s0)
   15140:	02f42023          	sw	a5,32(s0)
   15144:	f45ff06f          	j	15088 <__smakebuf_r+0xec>

0000000000015148 <_malloc_r>:
   15148:	fa010113          	addi	sp,sp,-96
   1514c:	04913423          	sd	s1,72(sp)
   15150:	03313c23          	sd	s3,56(sp)
   15154:	04113c23          	sd	ra,88(sp)
   15158:	04813823          	sd	s0,80(sp)
   1515c:	05213023          	sd	s2,64(sp)
   15160:	03413823          	sd	s4,48(sp)
   15164:	03513423          	sd	s5,40(sp)
   15168:	03613023          	sd	s6,32(sp)
   1516c:	01713c23          	sd	s7,24(sp)
   15170:	01813823          	sd	s8,16(sp)
   15174:	01913423          	sd	s9,8(sp)
   15178:	01758493          	addi	s1,a1,23
   1517c:	02e00793          	li	a5,46
   15180:	00050993          	mv	s3,a0
   15184:	1c97fa63          	bleu	s1,a5,15358 <_malloc_r+0x210>
   15188:	800007b7          	lui	a5,0x80000
   1518c:	ff04f493          	andi	s1,s1,-16
   15190:	fff7c793          	not	a5,a5
   15194:	2497ee63          	bltu	a5,s1,153f0 <_malloc_r+0x2a8>
   15198:	24b4ec63          	bltu	s1,a1,153f0 <_malloc_r+0x2a8>
   1519c:	321000ef          	jal	15cbc <__malloc_lock>
   151a0:	1f700793          	li	a5,503
   151a4:	7097f063          	bleu	s1,a5,158a4 <_malloc_r+0x75c>
   151a8:	0094d793          	srli	a5,s1,0x9
   151ac:	08000693          	li	a3,128
   151b0:	04000513          	li	a0,64
   151b4:	03f00593          	li	a1,63
   151b8:	24079463          	bnez	a5,15400 <_malloc_r+0x2b8>
   151bc:	0001c937          	lui	s2,0x1c
   151c0:	da890913          	addi	s2,s2,-600 # 1bda8 <__malloc_av_>
   151c4:	00369693          	slli	a3,a3,0x3
   151c8:	00d906b3          	add	a3,s2,a3
   151cc:	0086b403          	ld	s0,8(a3)
   151d0:	ff068693          	addi	a3,a3,-16
   151d4:	24868663          	beq	a3,s0,15420 <_malloc_r+0x2d8>
   151d8:	00843783          	ld	a5,8(s0)
   151dc:	01f00613          	li	a2,31
   151e0:	ffc7f793          	andi	a5,a5,-4
   151e4:	40978733          	sub	a4,a5,s1
   151e8:	02e64063          	blt	a2,a4,15208 <_malloc_r+0xc0>
   151ec:	22075e63          	bgez	a4,15428 <_malloc_r+0x2e0>
   151f0:	01843403          	ld	s0,24(s0)
   151f4:	22868663          	beq	a3,s0,15420 <_malloc_r+0x2d8>
   151f8:	00843783          	ld	a5,8(s0)
   151fc:	ffc7f793          	andi	a5,a5,-4
   15200:	40978733          	sub	a4,a5,s1
   15204:	fee654e3          	ble	a4,a2,151ec <_malloc_r+0xa4>
   15208:	00058693          	mv	a3,a1
   1520c:	02093403          	ld	s0,32(s2)
   15210:	01090813          	addi	a6,s2,16
   15214:	47040a63          	beq	s0,a6,15688 <_malloc_r+0x540>
   15218:	00843783          	ld	a5,8(s0)
   1521c:	01f00613          	li	a2,31
   15220:	ffc7f793          	andi	a5,a5,-4
   15224:	40978733          	sub	a4,a5,s1
   15228:	44e64a63          	blt	a2,a4,1567c <_malloc_r+0x534>
   1522c:	03093423          	sd	a6,40(s2)
   15230:	03093023          	sd	a6,32(s2)
   15234:	20075063          	bgez	a4,15434 <_malloc_r+0x2ec>
   15238:	1ff00713          	li	a4,511
   1523c:	3cf76c63          	bltu	a4,a5,15614 <_malloc_r+0x4cc>
   15240:	0037d793          	srli	a5,a5,0x3
   15244:	0007879b          	sext.w	a5,a5
   15248:	0017861b          	addiw	a2,a5,1
   1524c:	0016161b          	slliw	a2,a2,0x1
   15250:	00361613          	slli	a2,a2,0x3
   15254:	00893703          	ld	a4,8(s2)
   15258:	00c90633          	add	a2,s2,a2
   1525c:	00063503          	ld	a0,0(a2)
   15260:	4027d79b          	sraiw	a5,a5,0x2
   15264:	00100593          	li	a1,1
   15268:	00f597b3          	sll	a5,a1,a5
   1526c:	00e7e7b3          	or	a5,a5,a4
   15270:	ff060713          	addi	a4,a2,-16
   15274:	00e43c23          	sd	a4,24(s0)
   15278:	00a43823          	sd	a0,16(s0)
   1527c:	00f93423          	sd	a5,8(s2)
   15280:	00863023          	sd	s0,0(a2)
   15284:	00853c23          	sd	s0,24(a0)
   15288:	4026d61b          	sraiw	a2,a3,0x2
   1528c:	00100713          	li	a4,1
   15290:	00c71633          	sll	a2,a4,a2
   15294:	1cc7e063          	bltu	a5,a2,15454 <_malloc_r+0x30c>
   15298:	00f67733          	and	a4,a2,a5
   1529c:	02071463          	bnez	a4,152c4 <_malloc_r+0x17c>
   152a0:	00161613          	slli	a2,a2,0x1
   152a4:	ffc6f693          	andi	a3,a3,-4
   152a8:	00f67733          	and	a4,a2,a5
   152ac:	0046869b          	addiw	a3,a3,4
   152b0:	00071a63          	bnez	a4,152c4 <_malloc_r+0x17c>
   152b4:	00161613          	slli	a2,a2,0x1
   152b8:	00f67733          	and	a4,a2,a5
   152bc:	0046869b          	addiw	a3,a3,4
   152c0:	fe070ae3          	beqz	a4,152b4 <_malloc_r+0x16c>
   152c4:	01f00513          	li	a0,31
   152c8:	0016889b          	addiw	a7,a3,1
   152cc:	0018989b          	slliw	a7,a7,0x1
   152d0:	00389893          	slli	a7,a7,0x3
   152d4:	011908b3          	add	a7,s2,a7
   152d8:	ff088893          	addi	a7,a7,-16
   152dc:	00088593          	mv	a1,a7
   152e0:	00068313          	mv	t1,a3
   152e4:	0185b403          	ld	s0,24(a1)
   152e8:	00859a63          	bne	a1,s0,152fc <_malloc_r+0x1b4>
   152ec:	3a40006f          	j	15690 <_malloc_r+0x548>
   152f0:	3c075263          	bgez	a4,156b4 <_malloc_r+0x56c>
   152f4:	01843403          	ld	s0,24(s0)
   152f8:	38858c63          	beq	a1,s0,15690 <_malloc_r+0x548>
   152fc:	00843783          	ld	a5,8(s0)
   15300:	ffc7f793          	andi	a5,a5,-4
   15304:	40978733          	sub	a4,a5,s1
   15308:	fee554e3          	ble	a4,a0,152f0 <_malloc_r+0x1a8>
   1530c:	01843783          	ld	a5,24(s0)
   15310:	01043683          	ld	a3,16(s0)
   15314:	0014e613          	ori	a2,s1,1
   15318:	00c43423          	sd	a2,8(s0)
   1531c:	00f6bc23          	sd	a5,24(a3)
   15320:	00d7b823          	sd	a3,16(a5) # ffffffff80000010 <_gp+0xffffffff7ffe3250>
   15324:	009404b3          	add	s1,s0,s1
   15328:	02993423          	sd	s1,40(s2)
   1532c:	02993023          	sd	s1,32(s2)
   15330:	00176793          	ori	a5,a4,1
   15334:	0104bc23          	sd	a6,24(s1)
   15338:	0104b823          	sd	a6,16(s1)
   1533c:	00f4b423          	sd	a5,8(s1)
   15340:	00e484b3          	add	s1,s1,a4
   15344:	00098513          	mv	a0,s3
   15348:	00e4b023          	sd	a4,0(s1)
   1534c:	175000ef          	jal	15cc0 <__malloc_unlock>
   15350:	01040513          	addi	a0,s0,16
   15354:	0680006f          	j	153bc <_malloc_r+0x274>
   15358:	02000493          	li	s1,32
   1535c:	08b4ea63          	bltu	s1,a1,153f0 <_malloc_r+0x2a8>
   15360:	15d000ef          	jal	15cbc <__malloc_lock>
   15364:	00a00793          	li	a5,10
   15368:	00400693          	li	a3,4
   1536c:	0001c937          	lui	s2,0x1c
   15370:	da890913          	addi	s2,s2,-600 # 1bda8 <__malloc_av_>
   15374:	00379793          	slli	a5,a5,0x3
   15378:	00f907b3          	add	a5,s2,a5
   1537c:	0087b403          	ld	s0,8(a5)
   15380:	ff078713          	addi	a4,a5,-16
   15384:	32e40063          	beq	s0,a4,156a4 <_malloc_r+0x55c>
   15388:	00843783          	ld	a5,8(s0)
   1538c:	01843683          	ld	a3,24(s0)
   15390:	01043603          	ld	a2,16(s0)
   15394:	ffc7f793          	andi	a5,a5,-4
   15398:	00f407b3          	add	a5,s0,a5
   1539c:	0087b703          	ld	a4,8(a5)
   153a0:	00d63c23          	sd	a3,24(a2)
   153a4:	00c6b823          	sd	a2,16(a3)
   153a8:	00176713          	ori	a4,a4,1
   153ac:	00098513          	mv	a0,s3
   153b0:	00e7b423          	sd	a4,8(a5)
   153b4:	10d000ef          	jal	15cc0 <__malloc_unlock>
   153b8:	01040513          	addi	a0,s0,16
   153bc:	05813083          	ld	ra,88(sp)
   153c0:	05013403          	ld	s0,80(sp)
   153c4:	04813483          	ld	s1,72(sp)
   153c8:	04013903          	ld	s2,64(sp)
   153cc:	03813983          	ld	s3,56(sp)
   153d0:	03013a03          	ld	s4,48(sp)
   153d4:	02813a83          	ld	s5,40(sp)
   153d8:	02013b03          	ld	s6,32(sp)
   153dc:	01813b83          	ld	s7,24(sp)
   153e0:	01013c03          	ld	s8,16(sp)
   153e4:	00813c83          	ld	s9,8(sp)
   153e8:	06010113          	addi	sp,sp,96
   153ec:	00008067          	ret
   153f0:	00c00793          	li	a5,12
   153f4:	00f9a023          	sw	a5,0(s3) # ffffffffffffe000 <_gp+0xfffffffffffe1240>
   153f8:	00000513          	li	a0,0
   153fc:	fc1ff06f          	j	153bc <_malloc_r+0x274>
   15400:	00400713          	li	a4,4
   15404:	1ef76463          	bltu	a4,a5,155ec <_malloc_r+0x4a4>
   15408:	0064d593          	srli	a1,s1,0x6
   1540c:	0005859b          	sext.w	a1,a1
   15410:	0395851b          	addiw	a0,a1,57
   15414:	0015169b          	slliw	a3,a0,0x1
   15418:	0385859b          	addiw	a1,a1,56
   1541c:	da1ff06f          	j	151bc <_malloc_r+0x74>
   15420:	00050693          	mv	a3,a0
   15424:	de9ff06f          	j	1520c <_malloc_r+0xc4>
   15428:	01843683          	ld	a3,24(s0)
   1542c:	01043603          	ld	a2,16(s0)
   15430:	f69ff06f          	j	15398 <_malloc_r+0x250>
   15434:	00f407b3          	add	a5,s0,a5
   15438:	0087b703          	ld	a4,8(a5)
   1543c:	00098513          	mv	a0,s3
   15440:	00176713          	ori	a4,a4,1
   15444:	00e7b423          	sd	a4,8(a5)
   15448:	079000ef          	jal	15cc0 <__malloc_unlock>
   1544c:	01040513          	addi	a0,s0,16
   15450:	f6dff06f          	j	153bc <_malloc_r+0x274>
   15454:	01093403          	ld	s0,16(s2)
   15458:	00843703          	ld	a4,8(s0)
   1545c:	ffc77b93          	andi	s7,a4,-4
   15460:	009be863          	bltu	s7,s1,15470 <_malloc_r+0x328>
   15464:	409b87b3          	sub	a5,s7,s1
   15468:	01f00713          	li	a4,31
   1546c:	14f74c63          	blt	a4,a5,155c4 <_malloc_r+0x47c>
   15470:	8b81b783          	ld	a5,-1864(gp) # 1c678 <__malloc_top_pad>
   15474:	8201b683          	ld	a3,-2016(gp) # 1c5e0 <__malloc_sbrk_base>
   15478:	fff00713          	li	a4,-1
   1547c:	00f487b3          	add	a5,s1,a5
   15480:	01740a33          	add	s4,s0,s7
   15484:	02078b13          	addi	s6,a5,32
   15488:	00e68c63          	beq	a3,a4,154a0 <_malloc_r+0x358>
   1548c:	00001b37          	lui	s6,0x1
   15490:	01fb0b13          	addi	s6,s6,31 # 101f <_ftext-0xefe1>
   15494:	01678b33          	add	s6,a5,s6
   15498:	fffff7b7          	lui	a5,0xfffff
   1549c:	00fb7b33          	and	s6,s6,a5
   154a0:	000b0513          	mv	a0,s6
   154a4:	064040ef          	jal	19508 <sbrk>
   154a8:	fff00793          	li	a5,-1
   154ac:	00050a93          	mv	s5,a0
   154b0:	26f50263          	beq	a0,a5,15714 <_malloc_r+0x5cc>
   154b4:	25456e63          	bltu	a0,s4,15710 <_malloc_r+0x5c8>
   154b8:	90018c13          	addi	s8,gp,-1792 # 1c6c0 <__malloc_current_mallinfo>
   154bc:	000c2783          	lw	a5,0(s8)
   154c0:	00fb07bb          	addw	a5,s6,a5
   154c4:	00fc2023          	sw	a5,0(s8)
   154c8:	355a0463          	beq	s4,s5,15810 <_malloc_r+0x6c8>
   154cc:	8201b683          	ld	a3,-2016(gp) # 1c5e0 <__malloc_sbrk_base>
   154d0:	fff00713          	li	a4,-1
   154d4:	36e68263          	beq	a3,a4,15838 <_malloc_r+0x6f0>
   154d8:	414a8a33          	sub	s4,s5,s4
   154dc:	00fa07bb          	addw	a5,s4,a5
   154e0:	00fc2023          	sw	a5,0(s8)
   154e4:	00faf713          	andi	a4,s5,15
   154e8:	000017b7          	lui	a5,0x1
   154ec:	00070a63          	beqz	a4,15500 <_malloc_r+0x3b8>
   154f0:	40ea8ab3          	sub	s5,s5,a4
   154f4:	01078a13          	addi	s4,a5,16 # 1010 <_ftext-0xeff0>
   154f8:	010a8a93          	addi	s5,s5,16
   154fc:	40ea07b3          	sub	a5,s4,a4
   15500:	00001a37          	lui	s4,0x1
   15504:	fffa0a13          	addi	s4,s4,-1 # fff <_ftext-0xf001>
   15508:	016a8b33          	add	s6,s5,s6
   1550c:	014b7b33          	and	s6,s6,s4
   15510:	41678a33          	sub	s4,a5,s6
   15514:	000a0513          	mv	a0,s4
   15518:	7f1030ef          	jal	19508 <sbrk>
   1551c:	fff00793          	li	a5,-1
   15520:	30f50663          	beq	a0,a5,1582c <_malloc_r+0x6e4>
   15524:	41550733          	sub	a4,a0,s5
   15528:	01470733          	add	a4,a4,s4
   1552c:	00176713          	ori	a4,a4,1
   15530:	000a0a1b          	sext.w	s4,s4
   15534:	000c2783          	lw	a5,0(s8)
   15538:	01593823          	sd	s5,16(s2)
   1553c:	00eab423          	sd	a4,8(s5)
   15540:	00fa07bb          	addw	a5,s4,a5
   15544:	00fc2023          	sw	a5,0(s8)
   15548:	03240c63          	beq	s0,s2,15580 <_malloc_r+0x438>
   1554c:	01f00613          	li	a2,31
   15550:	27767463          	bleu	s7,a2,157b8 <_malloc_r+0x670>
   15554:	00843683          	ld	a3,8(s0)
   15558:	fe8b8713          	addi	a4,s7,-24 # ffffffff7fffffe8 <_gp+0xffffffff7ffe3228>
   1555c:	ff077713          	andi	a4,a4,-16
   15560:	0016f693          	andi	a3,a3,1
   15564:	00e6e6b3          	or	a3,a3,a4
   15568:	00d43423          	sd	a3,8(s0)
   1556c:	00900593          	li	a1,9
   15570:	00e406b3          	add	a3,s0,a4
   15574:	00b6b423          	sd	a1,8(a3)
   15578:	00b6b823          	sd	a1,16(a3)
   1557c:	2ce66263          	bltu	a2,a4,15840 <_malloc_r+0x6f8>
   15580:	8b01b683          	ld	a3,-1872(gp) # 1c670 <__malloc_max_sbrked_mem>
   15584:	00f6f463          	bleu	a5,a3,1558c <_malloc_r+0x444>
   15588:	8af1b823          	sd	a5,-1872(gp) # 1c670 <__malloc_max_sbrked_mem>
   1558c:	8a81b683          	ld	a3,-1880(gp) # 1c668 <__malloc_max_total_mem>
   15590:	01093403          	ld	s0,16(s2)
   15594:	00f6f463          	bleu	a5,a3,1559c <_malloc_r+0x454>
   15598:	8af1b423          	sd	a5,-1880(gp) # 1c668 <__malloc_max_total_mem>
   1559c:	00843703          	ld	a4,8(s0)
   155a0:	ffc77713          	andi	a4,a4,-4
   155a4:	409707b3          	sub	a5,a4,s1
   155a8:	00976663          	bltu	a4,s1,155b4 <_malloc_r+0x46c>
   155ac:	01f00713          	li	a4,31
   155b0:	00f74a63          	blt	a4,a5,155c4 <_malloc_r+0x47c>
   155b4:	00098513          	mv	a0,s3
   155b8:	708000ef          	jal	15cc0 <__malloc_unlock>
   155bc:	00000513          	li	a0,0
   155c0:	dfdff06f          	j	153bc <_malloc_r+0x274>
   155c4:	0014e713          	ori	a4,s1,1
   155c8:	00e43423          	sd	a4,8(s0)
   155cc:	009404b3          	add	s1,s0,s1
   155d0:	00993823          	sd	s1,16(s2)
   155d4:	0017e793          	ori	a5,a5,1
   155d8:	00098513          	mv	a0,s3
   155dc:	00f4b423          	sd	a5,8(s1)
   155e0:	6e0000ef          	jal	15cc0 <__malloc_unlock>
   155e4:	01040513          	addi	a0,s0,16
   155e8:	dd5ff06f          	j	153bc <_malloc_r+0x274>
   155ec:	01400713          	li	a4,20
   155f0:	0ef77a63          	bleu	a5,a4,156e4 <_malloc_r+0x59c>
   155f4:	05400713          	li	a4,84
   155f8:	18f76063          	bltu	a4,a5,15778 <_malloc_r+0x630>
   155fc:	00c4d593          	srli	a1,s1,0xc
   15600:	0005859b          	sext.w	a1,a1
   15604:	06f5851b          	addiw	a0,a1,111
   15608:	0015169b          	slliw	a3,a0,0x1
   1560c:	06e5859b          	addiw	a1,a1,110
   15610:	badff06f          	j	151bc <_malloc_r+0x74>
   15614:	0097d713          	srli	a4,a5,0x9
   15618:	00400613          	li	a2,4
   1561c:	0ce67e63          	bleu	a4,a2,156f8 <_malloc_r+0x5b0>
   15620:	01400613          	li	a2,20
   15624:	1ce66663          	bltu	a2,a4,157f0 <_malloc_r+0x6a8>
   15628:	0007071b          	sext.w	a4,a4
   1562c:	05c7059b          	addiw	a1,a4,92
   15630:	05b7061b          	addiw	a2,a4,91
   15634:	0015959b          	slliw	a1,a1,0x1
   15638:	00359593          	slli	a1,a1,0x3
   1563c:	00b905b3          	add	a1,s2,a1
   15640:	0005b703          	ld	a4,0(a1)
   15644:	ff058593          	addi	a1,a1,-16
   15648:	14e58863          	beq	a1,a4,15798 <_malloc_r+0x650>
   1564c:	00873603          	ld	a2,8(a4)
   15650:	ffc67613          	andi	a2,a2,-4
   15654:	00c7f663          	bleu	a2,a5,15660 <_malloc_r+0x518>
   15658:	01073703          	ld	a4,16(a4)
   1565c:	fee598e3          	bne	a1,a4,1564c <_malloc_r+0x504>
   15660:	01873583          	ld	a1,24(a4)
   15664:	00893783          	ld	a5,8(s2)
   15668:	00b43c23          	sd	a1,24(s0)
   1566c:	00e43823          	sd	a4,16(s0)
   15670:	0085b823          	sd	s0,16(a1)
   15674:	00873c23          	sd	s0,24(a4)
   15678:	c11ff06f          	j	15288 <_malloc_r+0x140>
   1567c:	0014e793          	ori	a5,s1,1
   15680:	00f43423          	sd	a5,8(s0)
   15684:	ca1ff06f          	j	15324 <_malloc_r+0x1dc>
   15688:	00893783          	ld	a5,8(s2)
   1568c:	bfdff06f          	j	15288 <_malloc_r+0x140>
   15690:	0013031b          	addiw	t1,t1,1
   15694:	00337793          	andi	a5,t1,3
   15698:	01058593          	addi	a1,a1,16
   1569c:	c40794e3          	bnez	a5,152e4 <_malloc_r+0x19c>
   156a0:	0900006f          	j	15730 <_malloc_r+0x5e8>
   156a4:	0187b403          	ld	s0,24(a5)
   156a8:	0026869b          	addiw	a3,a3,2
   156ac:	b68780e3          	beq	a5,s0,1520c <_malloc_r+0xc4>
   156b0:	cd9ff06f          	j	15388 <_malloc_r+0x240>
   156b4:	00f407b3          	add	a5,s0,a5
   156b8:	0087b703          	ld	a4,8(a5)
   156bc:	01843683          	ld	a3,24(s0)
   156c0:	01043603          	ld	a2,16(s0)
   156c4:	00176713          	ori	a4,a4,1
   156c8:	00e7b423          	sd	a4,8(a5)
   156cc:	00d63c23          	sd	a3,24(a2)
   156d0:	00098513          	mv	a0,s3
   156d4:	00c6b823          	sd	a2,16(a3)
   156d8:	5e8000ef          	jal	15cc0 <__malloc_unlock>
   156dc:	01040513          	addi	a0,s0,16
   156e0:	cddff06f          	j	153bc <_malloc_r+0x274>
   156e4:	0007879b          	sext.w	a5,a5
   156e8:	05c7851b          	addiw	a0,a5,92
   156ec:	05b7859b          	addiw	a1,a5,91
   156f0:	0015169b          	slliw	a3,a0,0x1
   156f4:	ac9ff06f          	j	151bc <_malloc_r+0x74>
   156f8:	0067d713          	srli	a4,a5,0x6
   156fc:	0007071b          	sext.w	a4,a4
   15700:	0397059b          	addiw	a1,a4,57
   15704:	0387061b          	addiw	a2,a4,56
   15708:	0015959b          	slliw	a1,a1,0x1
   1570c:	f2dff06f          	j	15638 <_malloc_r+0x4f0>
   15710:	db2404e3          	beq	s0,s2,154b8 <_malloc_r+0x370>
   15714:	01093403          	ld	s0,16(s2)
   15718:	00843703          	ld	a4,8(s0)
   1571c:	ffc77713          	andi	a4,a4,-4
   15720:	e85ff06f          	j	155a4 <_malloc_r+0x45c>
   15724:	0108b783          	ld	a5,16(a7)
   15728:	fff6869b          	addiw	a3,a3,-1
   1572c:	16f89863          	bne	a7,a5,1589c <_malloc_r+0x754>
   15730:	0036f793          	andi	a5,a3,3
   15734:	ff088893          	addi	a7,a7,-16
   15738:	fe0796e3          	bnez	a5,15724 <_malloc_r+0x5dc>
   1573c:	00893783          	ld	a5,8(s2)
   15740:	fff64713          	not	a4,a2
   15744:	00f777b3          	and	a5,a4,a5
   15748:	00f93423          	sd	a5,8(s2)
   1574c:	00161613          	slli	a2,a2,0x1
   15750:	d0c7e2e3          	bltu	a5,a2,15454 <_malloc_r+0x30c>
   15754:	d00600e3          	beqz	a2,15454 <_malloc_r+0x30c>
   15758:	00f67733          	and	a4,a2,a5
   1575c:	00030693          	mv	a3,t1
   15760:	b60714e3          	bnez	a4,152c8 <_malloc_r+0x180>
   15764:	00161613          	slli	a2,a2,0x1
   15768:	00f67733          	and	a4,a2,a5
   1576c:	0046869b          	addiw	a3,a3,4
   15770:	fe070ae3          	beqz	a4,15764 <_malloc_r+0x61c>
   15774:	b55ff06f          	j	152c8 <_malloc_r+0x180>
   15778:	15400713          	li	a4,340
   1577c:	04f76463          	bltu	a4,a5,157c4 <_malloc_r+0x67c>
   15780:	00f4d593          	srli	a1,s1,0xf
   15784:	0005859b          	sext.w	a1,a1
   15788:	0785851b          	addiw	a0,a1,120
   1578c:	0015169b          	slliw	a3,a0,0x1
   15790:	0775859b          	addiw	a1,a1,119
   15794:	a29ff06f          	j	151bc <_malloc_r+0x74>
   15798:	00893783          	ld	a5,8(s2)
   1579c:	4026571b          	sraiw	a4,a2,0x2
   157a0:	00100613          	li	a2,1
   157a4:	00e61733          	sll	a4,a2,a4
   157a8:	00f767b3          	or	a5,a4,a5
   157ac:	00f93423          	sd	a5,8(s2)
   157b0:	00058713          	mv	a4,a1
   157b4:	eb5ff06f          	j	15668 <_malloc_r+0x520>
   157b8:	00100793          	li	a5,1
   157bc:	00fab423          	sd	a5,8(s5)
   157c0:	df5ff06f          	j	155b4 <_malloc_r+0x46c>
   157c4:	55400713          	li	a4,1364
   157c8:	0fe00693          	li	a3,254
   157cc:	07f00513          	li	a0,127
   157d0:	07e00593          	li	a1,126
   157d4:	9ef764e3          	bltu	a4,a5,151bc <_malloc_r+0x74>
   157d8:	0124d593          	srli	a1,s1,0x12
   157dc:	0005859b          	sext.w	a1,a1
   157e0:	07d5851b          	addiw	a0,a1,125
   157e4:	0015169b          	slliw	a3,a0,0x1
   157e8:	07c5859b          	addiw	a1,a1,124
   157ec:	9d1ff06f          	j	151bc <_malloc_r+0x74>
   157f0:	05400613          	li	a2,84
   157f4:	06e66063          	bltu	a2,a4,15854 <_malloc_r+0x70c>
   157f8:	00c7d713          	srli	a4,a5,0xc
   157fc:	0007071b          	sext.w	a4,a4
   15800:	06f7059b          	addiw	a1,a4,111
   15804:	06e7061b          	addiw	a2,a4,110
   15808:	0015959b          	slliw	a1,a1,0x1
   1580c:	e2dff06f          	j	15638 <_malloc_r+0x4f0>
   15810:	034a1713          	slli	a4,s4,0x34
   15814:	ca071ce3          	bnez	a4,154cc <_malloc_r+0x384>
   15818:	01093683          	ld	a3,16(s2)
   1581c:	016b8733          	add	a4,s7,s6
   15820:	00176713          	ori	a4,a4,1
   15824:	00e6b423          	sd	a4,8(a3)
   15828:	d59ff06f          	j	15580 <_malloc_r+0x438>
   1582c:	00100713          	li	a4,1
   15830:	00000a13          	li	s4,0
   15834:	d01ff06f          	j	15534 <_malloc_r+0x3ec>
   15838:	8351b023          	sd	s5,-2016(gp) # 1c5e0 <__malloc_sbrk_base>
   1583c:	ca9ff06f          	j	154e4 <_malloc_r+0x39c>
   15840:	01040593          	addi	a1,s0,16
   15844:	00098513          	mv	a0,s3
   15848:	d59fe0ef          	jal	145a0 <_free_r>
   1584c:	000c2783          	lw	a5,0(s8)
   15850:	d31ff06f          	j	15580 <_malloc_r+0x438>
   15854:	15400613          	li	a2,340
   15858:	00e66e63          	bltu	a2,a4,15874 <_malloc_r+0x72c>
   1585c:	00f7d713          	srli	a4,a5,0xf
   15860:	0007071b          	sext.w	a4,a4
   15864:	0787059b          	addiw	a1,a4,120
   15868:	0777061b          	addiw	a2,a4,119
   1586c:	0015959b          	slliw	a1,a1,0x1
   15870:	dc9ff06f          	j	15638 <_malloc_r+0x4f0>
   15874:	55400513          	li	a0,1364
   15878:	0fe00593          	li	a1,254
   1587c:	07e00613          	li	a2,126
   15880:	dae56ce3          	bltu	a0,a4,15638 <_malloc_r+0x4f0>
   15884:	0127d713          	srli	a4,a5,0x12
   15888:	0007071b          	sext.w	a4,a4
   1588c:	07d7059b          	addiw	a1,a4,125
   15890:	07c7061b          	addiw	a2,a4,124
   15894:	0015959b          	slliw	a1,a1,0x1
   15898:	da1ff06f          	j	15638 <_malloc_r+0x4f0>
   1589c:	00893783          	ld	a5,8(s2)
   158a0:	eadff06f          	j	1574c <_malloc_r+0x604>
   158a4:	0034d693          	srli	a3,s1,0x3
   158a8:	0006869b          	sext.w	a3,a3
   158ac:	0016879b          	addiw	a5,a3,1
   158b0:	0017979b          	slliw	a5,a5,0x1
   158b4:	ab9ff06f          	j	1536c <_malloc_r+0x224>

00000000000158b8 <memchr>:
   158b8:	00757793          	andi	a5,a0,7
   158bc:	0ff5f813          	andi	a6,a1,255
   158c0:	0c078c63          	beqz	a5,15998 <memchr+0xe0>
   158c4:	fff60793          	addi	a5,a2,-1
   158c8:	06060463          	beqz	a2,15930 <memchr+0x78>
   158cc:	00054703          	lbu	a4,0(a0)
   158d0:	07070263          	beq	a4,a6,15934 <memchr+0x7c>
   158d4:	00080693          	mv	a3,a6
   158d8:	0140006f          	j	158ec <memchr+0x34>
   158dc:	04078a63          	beqz	a5,15930 <memchr+0x78>
   158e0:	00054703          	lbu	a4,0(a0)
   158e4:	fff78793          	addi	a5,a5,-1
   158e8:	04d70663          	beq	a4,a3,15934 <memchr+0x7c>
   158ec:	00150513          	addi	a0,a0,1
   158f0:	00757713          	andi	a4,a0,7
   158f4:	fe0714e3          	bnez	a4,158dc <memchr+0x24>
   158f8:	00700693          	li	a3,7
   158fc:	02f6ee63          	bltu	a3,a5,15938 <memchr+0x80>
   15900:	02078863          	beqz	a5,15930 <memchr+0x78>
   15904:	00054703          	lbu	a4,0(a0)
   15908:	03070663          	beq	a4,a6,15934 <memchr+0x7c>
   1590c:	00150713          	addi	a4,a0,1
   15910:	00f507b3          	add	a5,a0,a5
   15914:	00080613          	mv	a2,a6
   15918:	0100006f          	j	15928 <memchr+0x70>
   1591c:	00170713          	addi	a4,a4,1
   15920:	fff74683          	lbu	a3,-1(a4)
   15924:	00c68863          	beq	a3,a2,15934 <memchr+0x7c>
   15928:	00070513          	mv	a0,a4
   1592c:	fee798e3          	bne	a5,a4,1591c <memchr+0x64>
   15930:	00000513          	li	a0,0
   15934:	00008067          	ret
   15938:	0ff5f593          	andi	a1,a1,255
   1593c:	0085971b          	slliw	a4,a1,0x8
   15940:	00b765b3          	or	a1,a4,a1
   15944:	00058713          	mv	a4,a1
   15948:	01071613          	slli	a2,a4,0x10
   1594c:	00c76733          	or	a4,a4,a2
   15950:	0001c637          	lui	a2,0x1c
   15954:	64063303          	ld	t1,1600(a2) # 1c640 <__wctomb+0x50>
   15958:	0001c637          	lui	a2,0x1c
   1595c:	64863883          	ld	a7,1608(a2) # 1c648 <__wctomb+0x58>
   15960:	02071613          	slli	a2,a4,0x20
   15964:	00e66633          	or	a2,a2,a4
   15968:	00068593          	mv	a1,a3
   1596c:	00053703          	ld	a4,0(a0)
   15970:	00e64733          	xor	a4,a2,a4
   15974:	006706b3          	add	a3,a4,t1
   15978:	fff74713          	not	a4,a4
   1597c:	00e6f733          	and	a4,a3,a4
   15980:	01177733          	and	a4,a4,a7
   15984:	f80710e3          	bnez	a4,15904 <memchr+0x4c>
   15988:	ff878793          	addi	a5,a5,-8
   1598c:	00850513          	addi	a0,a0,8
   15990:	fcf5eee3          	bltu	a1,a5,1596c <memchr+0xb4>
   15994:	f6dff06f          	j	15900 <memchr+0x48>
   15998:	00060793          	mv	a5,a2
   1599c:	f5dff06f          	j	158f8 <memchr+0x40>

00000000000159a0 <memcpy>:
   159a0:	00a5c7b3          	xor	a5,a1,a0
   159a4:	0077f793          	andi	a5,a5,7
   159a8:	00c508b3          	add	a7,a0,a2
   159ac:	0e079263          	bnez	a5,15a90 <memcpy+0xf0>
   159b0:	00700793          	li	a5,7
   159b4:	0ec7fe63          	bleu	a2,a5,15ab0 <memcpy+0x110>
   159b8:	00757793          	andi	a5,a0,7
   159bc:	04079a63          	bnez	a5,15a10 <memcpy+0x70>
   159c0:	ff88f813          	andi	a6,a7,-8
   159c4:	fc080793          	addi	a5,a6,-64
   159c8:	00050713          	mv	a4,a0
   159cc:	06f56663          	bltu	a0,a5,15a38 <memcpy+0x98>
   159d0:	00058693          	mv	a3,a1
   159d4:	00070793          	mv	a5,a4
   159d8:	03077863          	bleu	a6,a4,15a08 <memcpy+0x68>
   159dc:	0006b603          	ld	a2,0(a3)
   159e0:	00878793          	addi	a5,a5,8
   159e4:	00868693          	addi	a3,a3,8
   159e8:	fec7bc23          	sd	a2,-8(a5)
   159ec:	ff07e8e3          	bltu	a5,a6,159dc <memcpy+0x3c>
   159f0:	fff74793          	not	a5,a4
   159f4:	01078833          	add	a6,a5,a6
   159f8:	ff887813          	andi	a6,a6,-8
   159fc:	00880813          	addi	a6,a6,8
   15a00:	01070733          	add	a4,a4,a6
   15a04:	010585b3          	add	a1,a1,a6
   15a08:	09176863          	bltu	a4,a7,15a98 <memcpy+0xf8>
   15a0c:	00008067          	ret
   15a10:	00050713          	mv	a4,a0
   15a14:	0005c683          	lbu	a3,0(a1)
   15a18:	00170713          	addi	a4,a4,1
   15a1c:	00777793          	andi	a5,a4,7
   15a20:	fed70fa3          	sb	a3,-1(a4)
   15a24:	00158593          	addi	a1,a1,1
   15a28:	fe0796e3          	bnez	a5,15a14 <memcpy+0x74>
   15a2c:	ff88f813          	andi	a6,a7,-8
   15a30:	fc080793          	addi	a5,a6,-64
   15a34:	f8f77ee3          	bleu	a5,a4,159d0 <memcpy+0x30>
   15a38:	0005b383          	ld	t2,0(a1)
   15a3c:	0085b283          	ld	t0,8(a1)
   15a40:	0105bf83          	ld	t6,16(a1)
   15a44:	0185bf03          	ld	t5,24(a1)
   15a48:	0205be83          	ld	t4,32(a1)
   15a4c:	0285be03          	ld	t3,40(a1)
   15a50:	0305b303          	ld	t1,48(a1)
   15a54:	0385b603          	ld	a2,56(a1)
   15a58:	04858593          	addi	a1,a1,72
   15a5c:	04870713          	addi	a4,a4,72
   15a60:	ff85b683          	ld	a3,-8(a1)
   15a64:	fa773c23          	sd	t2,-72(a4)
   15a68:	fc573023          	sd	t0,-64(a4)
   15a6c:	fdf73423          	sd	t6,-56(a4)
   15a70:	fde73823          	sd	t5,-48(a4)
   15a74:	fdd73c23          	sd	t4,-40(a4)
   15a78:	ffc73023          	sd	t3,-32(a4)
   15a7c:	fe673423          	sd	t1,-24(a4)
   15a80:	fec73823          	sd	a2,-16(a4)
   15a84:	fed73c23          	sd	a3,-8(a4)
   15a88:	faf768e3          	bltu	a4,a5,15a38 <memcpy+0x98>
   15a8c:	f45ff06f          	j	159d0 <memcpy+0x30>
   15a90:	00050713          	mv	a4,a0
   15a94:	03157463          	bleu	a7,a0,15abc <memcpy+0x11c>
   15a98:	0005c783          	lbu	a5,0(a1)
   15a9c:	00170713          	addi	a4,a4,1
   15aa0:	00158593          	addi	a1,a1,1
   15aa4:	fef70fa3          	sb	a5,-1(a4)
   15aa8:	ff1768e3          	bltu	a4,a7,15a98 <memcpy+0xf8>
   15aac:	00008067          	ret
   15ab0:	00050713          	mv	a4,a0
   15ab4:	ff1562e3          	bltu	a0,a7,15a98 <memcpy+0xf8>
   15ab8:	f55ff06f          	j	15a0c <memcpy+0x6c>
   15abc:	00008067          	ret

0000000000015ac0 <memmove>:
   15ac0:	02a5f863          	bleu	a0,a1,15af0 <memmove+0x30>
   15ac4:	00c58733          	add	a4,a1,a2
   15ac8:	02e57463          	bleu	a4,a0,15af0 <memmove+0x30>
   15acc:	00c507b3          	add	a5,a0,a2
   15ad0:	40c785b3          	sub	a1,a5,a2
   15ad4:	0e060263          	beqz	a2,15bb8 <memmove+0xf8>
   15ad8:	fff70713          	addi	a4,a4,-1
   15adc:	00074683          	lbu	a3,0(a4)
   15ae0:	fff78793          	addi	a5,a5,-1
   15ae4:	00d78023          	sb	a3,0(a5)
   15ae8:	fef598e3          	bne	a1,a5,15ad8 <memmove+0x18>
   15aec:	00008067          	ret
   15af0:	01f00893          	li	a7,31
   15af4:	0cc8f463          	bleu	a2,a7,15bbc <memmove+0xfc>
   15af8:	00a5e7b3          	or	a5,a1,a0
   15afc:	0077f793          	andi	a5,a5,7
   15b00:	0c079463          	bnez	a5,15bc8 <memmove+0x108>
   15b04:	00058713          	mv	a4,a1
   15b08:	00050793          	mv	a5,a0
   15b0c:	00060693          	mv	a3,a2
   15b10:	00073803          	ld	a6,0(a4)
   15b14:	02078793          	addi	a5,a5,32
   15b18:	02070713          	addi	a4,a4,32
   15b1c:	ff07b023          	sd	a6,-32(a5)
   15b20:	fe873803          	ld	a6,-24(a4)
   15b24:	fe068693          	addi	a3,a3,-32
   15b28:	ff07b423          	sd	a6,-24(a5)
   15b2c:	ff073803          	ld	a6,-16(a4)
   15b30:	ff07b823          	sd	a6,-16(a5)
   15b34:	ff873803          	ld	a6,-8(a4)
   15b38:	ff07bc23          	sd	a6,-8(a5)
   15b3c:	fcd8eae3          	bltu	a7,a3,15b10 <memmove+0x50>
   15b40:	fe060713          	addi	a4,a2,-32
   15b44:	fe077713          	andi	a4,a4,-32
   15b48:	02070713          	addi	a4,a4,32
   15b4c:	01f67e13          	andi	t3,a2,31
   15b50:	00700313          	li	t1,7
   15b54:	00e507b3          	add	a5,a0,a4
   15b58:	00e585b3          	add	a1,a1,a4
   15b5c:	07c37c63          	bleu	t3,t1,15bd4 <memmove+0x114>
   15b60:	00058813          	mv	a6,a1
   15b64:	00078693          	mv	a3,a5
   15b68:	000e0713          	mv	a4,t3
   15b6c:	00880813          	addi	a6,a6,8
   15b70:	ff883883          	ld	a7,-8(a6)
   15b74:	00868693          	addi	a3,a3,8
   15b78:	ff870713          	addi	a4,a4,-8
   15b7c:	ff16bc23          	sd	a7,-8(a3)
   15b80:	fee366e3          	bltu	t1,a4,15b6c <memmove+0xac>
   15b84:	ff8e0713          	addi	a4,t3,-8
   15b88:	ff877713          	andi	a4,a4,-8
   15b8c:	00870713          	addi	a4,a4,8
   15b90:	00767613          	andi	a2,a2,7
   15b94:	00e787b3          	add	a5,a5,a4
   15b98:	00e585b3          	add	a1,a1,a4
   15b9c:	02060a63          	beqz	a2,15bd0 <memmove+0x110>
   15ba0:	00c78633          	add	a2,a5,a2
   15ba4:	00158593          	addi	a1,a1,1
   15ba8:	fff5c703          	lbu	a4,-1(a1)
   15bac:	00178793          	addi	a5,a5,1
   15bb0:	fee78fa3          	sb	a4,-1(a5)
   15bb4:	fec798e3          	bne	a5,a2,15ba4 <memmove+0xe4>
   15bb8:	00008067          	ret
   15bbc:	00050793          	mv	a5,a0
   15bc0:	fe0610e3          	bnez	a2,15ba0 <memmove+0xe0>
   15bc4:	00c0006f          	j	15bd0 <memmove+0x110>
   15bc8:	00050793          	mv	a5,a0
   15bcc:	fd5ff06f          	j	15ba0 <memmove+0xe0>
   15bd0:	00008067          	ret
   15bd4:	000e0613          	mv	a2,t3
   15bd8:	fc0614e3          	bnez	a2,15ba0 <memmove+0xe0>
   15bdc:	ff5ff06f          	j	15bd0 <memmove+0x110>

0000000000015be0 <memset>:
   15be0:	00f00813          	li	a6,15
   15be4:	00050713          	mv	a4,a0
   15be8:	02c87a63          	bleu	a2,a6,15c1c <memset+0x3c>
   15bec:	00f77793          	andi	a5,a4,15
   15bf0:	0a079063          	bnez	a5,15c90 <memset+0xb0>
   15bf4:	06059e63          	bnez	a1,15c70 <memset+0x90>
   15bf8:	ff067693          	andi	a3,a2,-16
   15bfc:	00f67613          	andi	a2,a2,15
   15c00:	00e686b3          	add	a3,a3,a4
   15c04:	00b73023          	sd	a1,0(a4)
   15c08:	00b73423          	sd	a1,8(a4)
   15c0c:	01070713          	addi	a4,a4,16
   15c10:	fed76ae3          	bltu	a4,a3,15c04 <memset+0x24>
   15c14:	00061463          	bnez	a2,15c1c <memset+0x3c>
   15c18:	00008067          	ret
   15c1c:	40c806b3          	sub	a3,a6,a2
   15c20:	00269693          	slli	a3,a3,0x2
   15c24:	00000297          	auipc	t0,0x0
   15c28:	005686b3          	add	a3,a3,t0
   15c2c:	00c68067          	jr	a3,12
   15c30:	00b70723          	sb	a1,14(a4)
   15c34:	00b706a3          	sb	a1,13(a4)
   15c38:	00b70623          	sb	a1,12(a4)
   15c3c:	00b705a3          	sb	a1,11(a4)
   15c40:	00b70523          	sb	a1,10(a4)
   15c44:	00b704a3          	sb	a1,9(a4)
   15c48:	00b70423          	sb	a1,8(a4)
   15c4c:	00b703a3          	sb	a1,7(a4)
   15c50:	00b70323          	sb	a1,6(a4)
   15c54:	00b702a3          	sb	a1,5(a4)
   15c58:	00b70223          	sb	a1,4(a4)
   15c5c:	00b701a3          	sb	a1,3(a4)
   15c60:	00b70123          	sb	a1,2(a4)
   15c64:	00b700a3          	sb	a1,1(a4)
   15c68:	00b70023          	sb	a1,0(a4)
   15c6c:	00008067          	ret
   15c70:	0ff5f593          	andi	a1,a1,255
   15c74:	00859693          	slli	a3,a1,0x8
   15c78:	00d5e5b3          	or	a1,a1,a3
   15c7c:	01059693          	slli	a3,a1,0x10
   15c80:	00d5e5b3          	or	a1,a1,a3
   15c84:	02059693          	slli	a3,a1,0x20
   15c88:	00d5e5b3          	or	a1,a1,a3
   15c8c:	f6dff06f          	j	15bf8 <memset+0x18>
   15c90:	00279693          	slli	a3,a5,0x2
   15c94:	00000297          	auipc	t0,0x0
   15c98:	005686b3          	add	a3,a3,t0
   15c9c:	00008293          	mv	t0,ra
   15ca0:	f98680e7          	jalr	a3,-104
   15ca4:	00028093          	mv	ra,t0
   15ca8:	ff078793          	addi	a5,a5,-16
   15cac:	40f70733          	sub	a4,a4,a5
   15cb0:	00f60633          	add	a2,a2,a5
   15cb4:	f6c874e3          	bleu	a2,a6,15c1c <memset+0x3c>
   15cb8:	f3dff06f          	j	15bf4 <memset+0x14>

0000000000015cbc <__malloc_lock>:
   15cbc:	00008067          	ret

0000000000015cc0 <__malloc_unlock>:
   15cc0:	00008067          	ret

0000000000015cc4 <_Balloc>:
   15cc4:	07853783          	ld	a5,120(a0)
   15cc8:	fe010113          	addi	sp,sp,-32
   15ccc:	00813823          	sd	s0,16(sp)
   15cd0:	00913423          	sd	s1,8(sp)
   15cd4:	00113c23          	sd	ra,24(sp)
   15cd8:	01213023          	sd	s2,0(sp)
   15cdc:	00050413          	mv	s0,a0
   15ce0:	00058493          	mv	s1,a1
   15ce4:	02078e63          	beqz	a5,15d20 <_Balloc+0x5c>
   15ce8:	00349513          	slli	a0,s1,0x3
   15cec:	00a787b3          	add	a5,a5,a0
   15cf0:	0007b503          	ld	a0,0(a5)
   15cf4:	04050663          	beqz	a0,15d40 <_Balloc+0x7c>
   15cf8:	00053703          	ld	a4,0(a0)
   15cfc:	00e7b023          	sd	a4,0(a5)
   15d00:	00052a23          	sw	zero,20(a0)
   15d04:	00052823          	sw	zero,16(a0)
   15d08:	01813083          	ld	ra,24(sp)
   15d0c:	01013403          	ld	s0,16(sp)
   15d10:	00813483          	ld	s1,8(sp)
   15d14:	00013903          	ld	s2,0(sp)
   15d18:	02010113          	addi	sp,sp,32
   15d1c:	00008067          	ret
   15d20:	04100613          	li	a2,65
   15d24:	00800593          	li	a1,8
   15d28:	69d020ef          	jal	18bc4 <_calloc_r>
   15d2c:	06a43c23          	sd	a0,120(s0)
   15d30:	00050793          	mv	a5,a0
   15d34:	fa051ae3          	bnez	a0,15ce8 <_Balloc+0x24>
   15d38:	00000513          	li	a0,0
   15d3c:	fcdff06f          	j	15d08 <_Balloc+0x44>
   15d40:	00100913          	li	s2,1
   15d44:	0099193b          	sllw	s2,s2,s1
   15d48:	fff9061b          	addiw	a2,s2,-1
   15d4c:	00860613          	addi	a2,a2,8
   15d50:	00261613          	slli	a2,a2,0x2
   15d54:	00100593          	li	a1,1
   15d58:	00040513          	mv	a0,s0
   15d5c:	669020ef          	jal	18bc4 <_calloc_r>
   15d60:	fc050ce3          	beqz	a0,15d38 <_Balloc+0x74>
   15d64:	00952423          	sw	s1,8(a0)
   15d68:	01252623          	sw	s2,12(a0)
   15d6c:	f95ff06f          	j	15d00 <_Balloc+0x3c>

0000000000015d70 <_Bfree>:
   15d70:	02058063          	beqz	a1,15d90 <_Bfree+0x20>
   15d74:	0085a783          	lw	a5,8(a1)
   15d78:	07853703          	ld	a4,120(a0)
   15d7c:	00379793          	slli	a5,a5,0x3
   15d80:	00f707b3          	add	a5,a4,a5
   15d84:	0007b703          	ld	a4,0(a5)
   15d88:	00e5b023          	sd	a4,0(a1)
   15d8c:	00b7b023          	sd	a1,0(a5)
   15d90:	00008067          	ret

0000000000015d94 <__multadd>:
   15d94:	fc010113          	addi	sp,sp,-64
   15d98:	00010837          	lui	a6,0x10
   15d9c:	02813823          	sd	s0,48(sp)
   15da0:	02913423          	sd	s1,40(sp)
   15da4:	03213023          	sd	s2,32(sp)
   15da8:	00058493          	mv	s1,a1
   15dac:	0145a403          	lw	s0,20(a1)
   15db0:	00050913          	mv	s2,a0
   15db4:	02113c23          	sd	ra,56(sp)
   15db8:	01313c23          	sd	s3,24(sp)
   15dbc:	01858593          	addi	a1,a1,24
   15dc0:	00000513          	li	a0,0
   15dc4:	fff8081b          	addiw	a6,a6,-1
   15dc8:	0005a783          	lw	a5,0(a1)
   15dcc:	00458593          	addi	a1,a1,4
   15dd0:	0015051b          	addiw	a0,a0,1
   15dd4:	0107f733          	and	a4,a5,a6
   15dd8:	02c7073b          	mulw	a4,a4,a2
   15ddc:	0107d79b          	srliw	a5,a5,0x10
   15de0:	02c787bb          	mulw	a5,a5,a2
   15de4:	00d7073b          	addw	a4,a4,a3
   15de8:	0107569b          	srliw	a3,a4,0x10
   15dec:	01077733          	and	a4,a4,a6
   15df0:	00d786bb          	addw	a3,a5,a3
   15df4:	0106979b          	slliw	a5,a3,0x10
   15df8:	00e7873b          	addw	a4,a5,a4
   15dfc:	fee5ae23          	sw	a4,-4(a1)
   15e00:	0106d69b          	srliw	a3,a3,0x10
   15e04:	fc8542e3          	blt	a0,s0,15dc8 <__multadd+0x34>
   15e08:	02068263          	beqz	a3,15e2c <__multadd+0x98>
   15e0c:	00c4a783          	lw	a5,12(s1)
   15e10:	02f45e63          	ble	a5,s0,15e4c <__multadd+0xb8>
   15e14:	00440793          	addi	a5,s0,4
   15e18:	00279793          	slli	a5,a5,0x2
   15e1c:	00f487b3          	add	a5,s1,a5
   15e20:	00d7a423          	sw	a3,8(a5)
   15e24:	0014041b          	addiw	s0,s0,1
   15e28:	0084aa23          	sw	s0,20(s1)
   15e2c:	03813083          	ld	ra,56(sp)
   15e30:	00048513          	mv	a0,s1
   15e34:	03013403          	ld	s0,48(sp)
   15e38:	02813483          	ld	s1,40(sp)
   15e3c:	02013903          	ld	s2,32(sp)
   15e40:	01813983          	ld	s3,24(sp)
   15e44:	04010113          	addi	sp,sp,64
   15e48:	00008067          	ret
   15e4c:	0084a583          	lw	a1,8(s1)
   15e50:	00090513          	mv	a0,s2
   15e54:	00d13423          	sd	a3,8(sp)
   15e58:	0015859b          	addiw	a1,a1,1
   15e5c:	e69ff0ef          	jal	15cc4 <_Balloc>
   15e60:	0144a603          	lw	a2,20(s1)
   15e64:	00050993          	mv	s3,a0
   15e68:	01048593          	addi	a1,s1,16
   15e6c:	00260613          	addi	a2,a2,2
   15e70:	01050513          	addi	a0,a0,16
   15e74:	00261613          	slli	a2,a2,0x2
   15e78:	b29ff0ef          	jal	159a0 <memcpy>
   15e7c:	0084a703          	lw	a4,8(s1)
   15e80:	07893783          	ld	a5,120(s2)
   15e84:	00813683          	ld	a3,8(sp)
   15e88:	00371713          	slli	a4,a4,0x3
   15e8c:	00e787b3          	add	a5,a5,a4
   15e90:	0007b703          	ld	a4,0(a5)
   15e94:	00e4b023          	sd	a4,0(s1)
   15e98:	0097b023          	sd	s1,0(a5)
   15e9c:	00098493          	mv	s1,s3
   15ea0:	f75ff06f          	j	15e14 <__multadd+0x80>

0000000000015ea4 <__s2b>:
   15ea4:	fc010113          	addi	sp,sp,-64
   15ea8:	0086879b          	addiw	a5,a3,8
   15eac:	03213023          	sd	s2,32(sp)
   15eb0:	00068913          	mv	s2,a3
   15eb4:	00900693          	li	a3,9
   15eb8:	02d7c6bb          	divw	a3,a5,a3
   15ebc:	02813823          	sd	s0,48(sp)
   15ec0:	02913423          	sd	s1,40(sp)
   15ec4:	01313c23          	sd	s3,24(sp)
   15ec8:	01413823          	sd	s4,16(sp)
   15ecc:	02113c23          	sd	ra,56(sp)
   15ed0:	01513423          	sd	s5,8(sp)
   15ed4:	01613023          	sd	s6,0(sp)
   15ed8:	00100793          	li	a5,1
   15edc:	00058413          	mv	s0,a1
   15ee0:	00050993          	mv	s3,a0
   15ee4:	00060a13          	mv	s4,a2
   15ee8:	00070493          	mv	s1,a4
   15eec:	00000593          	li	a1,0
   15ef0:	00d7d863          	ble	a3,a5,15f00 <__s2b+0x5c>
   15ef4:	0017979b          	slliw	a5,a5,0x1
   15ef8:	0015859b          	addiw	a1,a1,1
   15efc:	fed7cce3          	blt	a5,a3,15ef4 <__s2b+0x50>
   15f00:	00098513          	mv	a0,s3
   15f04:	dc1ff0ef          	jal	15cc4 <_Balloc>
   15f08:	00100793          	li	a5,1
   15f0c:	00f52a23          	sw	a5,20(a0)
   15f10:	00952c23          	sw	s1,24(a0)
   15f14:	00900793          	li	a5,9
   15f18:	0b47d663          	ble	s4,a5,15fc4 <__s2b+0x120>
   15f1c:	ff6a0b1b          	addiw	s6,s4,-10
   15f20:	020b1b13          	slli	s6,s6,0x20
   15f24:	020b5b13          	srli	s6,s6,0x20
   15f28:	00940a93          	addi	s5,s0,9
   15f2c:	00ab0793          	addi	a5,s6,10
   15f30:	00f40433          	add	s0,s0,a5
   15f34:	000a8493          	mv	s1,s5
   15f38:	00148493          	addi	s1,s1,1
   15f3c:	fff4c683          	lbu	a3,-1(s1)
   15f40:	00050593          	mv	a1,a0
   15f44:	00a00613          	li	a2,10
   15f48:	fd06869b          	addiw	a3,a3,-48
   15f4c:	00098513          	mv	a0,s3
   15f50:	e45ff0ef          	jal	15d94 <__multadd>
   15f54:	fe8492e3          	bne	s1,s0,15f38 <__s2b+0x94>
   15f58:	016a8433          	add	s0,s5,s6
   15f5c:	00240413          	addi	s0,s0,2
   15f60:	032a5e63          	ble	s2,s4,15f9c <__s2b+0xf8>
   15f64:	fff9091b          	addiw	s2,s2,-1
   15f68:	414904bb          	subw	s1,s2,s4
   15f6c:	02049493          	slli	s1,s1,0x20
   15f70:	0204d493          	srli	s1,s1,0x20
   15f74:	00148493          	addi	s1,s1,1
   15f78:	009404b3          	add	s1,s0,s1
   15f7c:	00140413          	addi	s0,s0,1
   15f80:	fff44683          	lbu	a3,-1(s0)
   15f84:	00050593          	mv	a1,a0
   15f88:	00a00613          	li	a2,10
   15f8c:	fd06869b          	addiw	a3,a3,-48
   15f90:	00098513          	mv	a0,s3
   15f94:	e01ff0ef          	jal	15d94 <__multadd>
   15f98:	fe9412e3          	bne	s0,s1,15f7c <__s2b+0xd8>
   15f9c:	03813083          	ld	ra,56(sp)
   15fa0:	03013403          	ld	s0,48(sp)
   15fa4:	02813483          	ld	s1,40(sp)
   15fa8:	02013903          	ld	s2,32(sp)
   15fac:	01813983          	ld	s3,24(sp)
   15fb0:	01013a03          	ld	s4,16(sp)
   15fb4:	00813a83          	ld	s5,8(sp)
   15fb8:	00013b03          	ld	s6,0(sp)
   15fbc:	04010113          	addi	sp,sp,64
   15fc0:	00008067          	ret
   15fc4:	00a40413          	addi	s0,s0,10
   15fc8:	00078a13          	mv	s4,a5
   15fcc:	f95ff06f          	j	15f60 <__s2b+0xbc>

0000000000015fd0 <__hi0bits>:
   15fd0:	ffff06b7          	lui	a3,0xffff0
   15fd4:	00d576b3          	and	a3,a0,a3
   15fd8:	00050793          	mv	a5,a0
   15fdc:	00000713          	li	a4,0
   15fe0:	00069663          	bnez	a3,15fec <__hi0bits+0x1c>
   15fe4:	0105179b          	slliw	a5,a0,0x10
   15fe8:	01000713          	li	a4,16
   15fec:	ff0006b7          	lui	a3,0xff000
   15ff0:	00d7f6b3          	and	a3,a5,a3
   15ff4:	00069663          	bnez	a3,16000 <__hi0bits+0x30>
   15ff8:	0087071b          	addiw	a4,a4,8
   15ffc:	0087979b          	slliw	a5,a5,0x8
   16000:	f00006b7          	lui	a3,0xf0000
   16004:	00d7f6b3          	and	a3,a5,a3
   16008:	00069663          	bnez	a3,16014 <__hi0bits+0x44>
   1600c:	0047071b          	addiw	a4,a4,4
   16010:	0047979b          	slliw	a5,a5,0x4
   16014:	c00006b7          	lui	a3,0xc0000
   16018:	00d7f6b3          	and	a3,a5,a3
   1601c:	00069663          	bnez	a3,16028 <__hi0bits+0x58>
   16020:	0027071b          	addiw	a4,a4,2
   16024:	0027979b          	slliw	a5,a5,0x2
   16028:	0007ce63          	bltz	a5,16044 <__hi0bits+0x74>
   1602c:	02179693          	slli	a3,a5,0x21
   16030:	02000513          	li	a0,32
   16034:	0006c463          	bltz	a3,1603c <__hi0bits+0x6c>
   16038:	00008067          	ret
   1603c:	0017051b          	addiw	a0,a4,1
   16040:	00008067          	ret
   16044:	00070513          	mv	a0,a4
   16048:	00008067          	ret

000000000001604c <__lo0bits>:
   1604c:	00052783          	lw	a5,0(a0)
   16050:	00050693          	mv	a3,a0
   16054:	0077f713          	andi	a4,a5,7
   16058:	02070463          	beqz	a4,16080 <__lo0bits+0x34>
   1605c:	0017f713          	andi	a4,a5,1
   16060:	00000513          	li	a0,0
   16064:	08071263          	bnez	a4,160e8 <__lo0bits+0x9c>
   16068:	0027f713          	andi	a4,a5,2
   1606c:	08071063          	bnez	a4,160ec <__lo0bits+0xa0>
   16070:	0027d79b          	srliw	a5,a5,0x2
   16074:	00f6a023          	sw	a5,0(a3) # ffffffffc0000000 <_gp+0xffffffffbffe3240>
   16078:	00200513          	li	a0,2
   1607c:	00008067          	ret
   16080:	0107961b          	slliw	a2,a5,0x10
   16084:	0106561b          	srliw	a2,a2,0x10
   16088:	00000713          	li	a4,0
   1608c:	00061663          	bnez	a2,16098 <__lo0bits+0x4c>
   16090:	0107d79b          	srliw	a5,a5,0x10
   16094:	01000713          	li	a4,16
   16098:	0ff7f613          	andi	a2,a5,255
   1609c:	00061663          	bnez	a2,160a8 <__lo0bits+0x5c>
   160a0:	0087071b          	addiw	a4,a4,8
   160a4:	0087d79b          	srliw	a5,a5,0x8
   160a8:	00f7f613          	andi	a2,a5,15
   160ac:	00061663          	bnez	a2,160b8 <__lo0bits+0x6c>
   160b0:	0047071b          	addiw	a4,a4,4
   160b4:	0047d79b          	srliw	a5,a5,0x4
   160b8:	0037f613          	andi	a2,a5,3
   160bc:	00061663          	bnez	a2,160c8 <__lo0bits+0x7c>
   160c0:	0027071b          	addiw	a4,a4,2
   160c4:	0027d79b          	srliw	a5,a5,0x2
   160c8:	0017f613          	andi	a2,a5,1
   160cc:	00061a63          	bnez	a2,160e0 <__lo0bits+0x94>
   160d0:	0017d79b          	srliw	a5,a5,0x1
   160d4:	02000513          	li	a0,32
   160d8:	00078863          	beqz	a5,160e8 <__lo0bits+0x9c>
   160dc:	0017071b          	addiw	a4,a4,1
   160e0:	00f6a023          	sw	a5,0(a3)
   160e4:	00070513          	mv	a0,a4
   160e8:	00008067          	ret
   160ec:	0017d79b          	srliw	a5,a5,0x1
   160f0:	00f6a023          	sw	a5,0(a3)
   160f4:	00100513          	li	a0,1
   160f8:	00008067          	ret

00000000000160fc <__i2b>:
   160fc:	ff010113          	addi	sp,sp,-16
   16100:	00813023          	sd	s0,0(sp)
   16104:	00058413          	mv	s0,a1
   16108:	00100593          	li	a1,1
   1610c:	00113423          	sd	ra,8(sp)
   16110:	bb5ff0ef          	jal	15cc4 <_Balloc>
   16114:	00813083          	ld	ra,8(sp)
   16118:	00100713          	li	a4,1
   1611c:	00852c23          	sw	s0,24(a0)
   16120:	00e52a23          	sw	a4,20(a0)
   16124:	00013403          	ld	s0,0(sp)
   16128:	01010113          	addi	sp,sp,16
   1612c:	00008067          	ret

0000000000016130 <__multiply>:
   16130:	fd010113          	addi	sp,sp,-48
   16134:	01313423          	sd	s3,8(sp)
   16138:	01413023          	sd	s4,0(sp)
   1613c:	0145a983          	lw	s3,20(a1)
   16140:	01462a03          	lw	s4,20(a2)
   16144:	00913c23          	sd	s1,24(sp)
   16148:	01213823          	sd	s2,16(sp)
   1614c:	02113423          	sd	ra,40(sp)
   16150:	02813023          	sd	s0,32(sp)
   16154:	00058913          	mv	s2,a1
   16158:	00060493          	mv	s1,a2
   1615c:	0149dc63          	ble	s4,s3,16174 <__multiply+0x44>
   16160:	00098713          	mv	a4,s3
   16164:	00060913          	mv	s2,a2
   16168:	000a0993          	mv	s3,s4
   1616c:	00058493          	mv	s1,a1
   16170:	00070a13          	mv	s4,a4
   16174:	00c92783          	lw	a5,12(s2)
   16178:	00892583          	lw	a1,8(s2)
   1617c:	0149843b          	addw	s0,s3,s4
   16180:	0087a7b3          	slt	a5,a5,s0
   16184:	00f585bb          	addw	a1,a1,a5
   16188:	b3dff0ef          	jal	15cc4 <_Balloc>
   1618c:	00040893          	mv	a7,s0
   16190:	01850313          	addi	t1,a0,24
   16194:	00289893          	slli	a7,a7,0x2
   16198:	011308b3          	add	a7,t1,a7
   1619c:	00030793          	mv	a5,t1
   161a0:	01137863          	bleu	a7,t1,161b0 <__multiply+0x80>
   161a4:	0007a023          	sw	zero,0(a5)
   161a8:	00478793          	addi	a5,a5,4
   161ac:	ff17ece3          	bltu	a5,a7,161a4 <__multiply+0x74>
   161b0:	01848613          	addi	a2,s1,24
   161b4:	002a1e13          	slli	t3,s4,0x2
   161b8:	01890e93          	addi	t4,s2,24
   161bc:	00299813          	slli	a6,s3,0x2
   161c0:	000105b7          	lui	a1,0x10
   161c4:	01c60e33          	add	t3,a2,t3
   161c8:	010e8833          	add	a6,t4,a6
   161cc:	fff5859b          	addiw	a1,a1,-1
   161d0:	11c67463          	bleu	t3,a2,162d8 <__multiply+0x1a8>
   161d4:	00062383          	lw	t2,0(a2)
   161d8:	00b3f4b3          	and	s1,t2,a1
   161dc:	06048a63          	beqz	s1,16250 <__multiply+0x120>
   161e0:	00030293          	mv	t0,t1
   161e4:	000e8f93          	mv	t6,t4
   161e8:	00000793          	li	a5,0
   161ec:	0080006f          	j	161f4 <__multiply+0xc4>
   161f0:	00038293          	mv	t0,t2
   161f4:	000fa683          	lw	a3,0(t6)
   161f8:	0002af03          	lw	t5,0(t0) # 15c94 <memset+0xb4>
   161fc:	00428393          	addi	t2,t0,4
   16200:	00b6f733          	and	a4,a3,a1
   16204:	0297073b          	mulw	a4,a4,s1
   16208:	0106d69b          	srliw	a3,a3,0x10
   1620c:	00bf7933          	and	s2,t5,a1
   16210:	010f5f1b          	srliw	t5,t5,0x10
   16214:	004f8f93          	addi	t6,t6,4
   16218:	029686bb          	mulw	a3,a3,s1
   1621c:	0127073b          	addw	a4,a4,s2
   16220:	00f707bb          	addw	a5,a4,a5
   16224:	0107d71b          	srliw	a4,a5,0x10
   16228:	00b7f7b3          	and	a5,a5,a1
   1622c:	01e686bb          	addw	a3,a3,t5
   16230:	00e6873b          	addw	a4,a3,a4
   16234:	0107169b          	slliw	a3,a4,0x10
   16238:	00f6e7b3          	or	a5,a3,a5
   1623c:	fef3ae23          	sw	a5,-4(t2)
   16240:	0107579b          	srliw	a5,a4,0x10
   16244:	fb0fe6e3          	bltu	t6,a6,161f0 <__multiply+0xc0>
   16248:	00f2a223          	sw	a5,4(t0)
   1624c:	00062383          	lw	t2,0(a2)
   16250:	0103d39b          	srliw	t2,t2,0x10
   16254:	06038c63          	beqz	t2,162cc <__multiply+0x19c>
   16258:	00032783          	lw	a5,0(t1) # 10000 <_ftext>
   1625c:	00030293          	mv	t0,t1
   16260:	000e8f93          	mv	t6,t4
   16264:	00078f13          	mv	t5,a5
   16268:	00000693          	li	a3,0
   1626c:	0080006f          	j	16274 <__multiply+0x144>
   16270:	00048293          	mv	t0,s1
   16274:	000fa703          	lw	a4,0(t6)
   16278:	010f5f1b          	srliw	t5,t5,0x10
   1627c:	00b7f7b3          	and	a5,a5,a1
   16280:	00b77733          	and	a4,a4,a1
   16284:	0277073b          	mulw	a4,a4,t2
   16288:	00428493          	addi	s1,t0,4
   1628c:	004f8f93          	addi	t6,t6,4
   16290:	01e7073b          	addw	a4,a4,t5
   16294:	00d706bb          	addw	a3,a4,a3
   16298:	0106971b          	slliw	a4,a3,0x10
   1629c:	00f767b3          	or	a5,a4,a5
   162a0:	fef4ae23          	sw	a5,-4(s1)
   162a4:	ffefd703          	lhu	a4,-2(t6)
   162a8:	0042af03          	lw	t5,4(t0)
   162ac:	0106d69b          	srliw	a3,a3,0x10
   162b0:	0277073b          	mulw	a4,a4,t2
   162b4:	00bf77b3          	and	a5,t5,a1
   162b8:	00f707bb          	addw	a5,a4,a5
   162bc:	00d787bb          	addw	a5,a5,a3
   162c0:	0107d69b          	srliw	a3,a5,0x10
   162c4:	fb0fe6e3          	bltu	t6,a6,16270 <__multiply+0x140>
   162c8:	00f2a223          	sw	a5,4(t0)
   162cc:	00460613          	addi	a2,a2,4
   162d0:	00430313          	addi	t1,t1,4
   162d4:	f1c660e3          	bltu	a2,t3,161d4 <__multiply+0xa4>
   162d8:	02805463          	blez	s0,16300 <__multiply+0x1d0>
   162dc:	ffc8a783          	lw	a5,-4(a7)
   162e0:	ffc88893          	addi	a7,a7,-4
   162e4:	00078863          	beqz	a5,162f4 <__multiply+0x1c4>
   162e8:	0180006f          	j	16300 <__multiply+0x1d0>
   162ec:	0008a783          	lw	a5,0(a7)
   162f0:	00079863          	bnez	a5,16300 <__multiply+0x1d0>
   162f4:	fff4041b          	addiw	s0,s0,-1
   162f8:	ffc88893          	addi	a7,a7,-4
   162fc:	fe0418e3          	bnez	s0,162ec <__multiply+0x1bc>
   16300:	02813083          	ld	ra,40(sp)
   16304:	00852a23          	sw	s0,20(a0)
   16308:	01813483          	ld	s1,24(sp)
   1630c:	02013403          	ld	s0,32(sp)
   16310:	01013903          	ld	s2,16(sp)
   16314:	00813983          	ld	s3,8(sp)
   16318:	00013a03          	ld	s4,0(sp)
   1631c:	03010113          	addi	sp,sp,48
   16320:	00008067          	ret

0000000000016324 <__pow5mult>:
   16324:	fd010113          	addi	sp,sp,-48
   16328:	02813023          	sd	s0,32(sp)
   1632c:	01213823          	sd	s2,16(sp)
   16330:	01313423          	sd	s3,8(sp)
   16334:	02113423          	sd	ra,40(sp)
   16338:	00913c23          	sd	s1,24(sp)
   1633c:	00367793          	andi	a5,a2,3
   16340:	00060413          	mv	s0,a2
   16344:	00050993          	mv	s3,a0
   16348:	00058913          	mv	s2,a1
   1634c:	0a079e63          	bnez	a5,16408 <__pow5mult+0xe4>
   16350:	4024541b          	sraiw	s0,s0,0x2
   16354:	06040663          	beqz	s0,163c0 <__pow5mult+0x9c>
   16358:	0709b483          	ld	s1,112(s3)
   1635c:	0c048a63          	beqz	s1,16430 <__pow5mult+0x10c>
   16360:	00147793          	andi	a5,s0,1
   16364:	02079063          	bnez	a5,16384 <__pow5mult+0x60>
   16368:	4014541b          	sraiw	s0,s0,0x1
   1636c:	04040a63          	beqz	s0,163c0 <__pow5mult+0x9c>
   16370:	0004b503          	ld	a0,0(s1)
   16374:	06050663          	beqz	a0,163e0 <__pow5mult+0xbc>
   16378:	00050493          	mv	s1,a0
   1637c:	00147793          	andi	a5,s0,1
   16380:	fe0784e3          	beqz	a5,16368 <__pow5mult+0x44>
   16384:	00048613          	mv	a2,s1
   16388:	00090593          	mv	a1,s2
   1638c:	00098513          	mv	a0,s3
   16390:	da1ff0ef          	jal	16130 <__multiply>
   16394:	06090663          	beqz	s2,16400 <__pow5mult+0xdc>
   16398:	00892783          	lw	a5,8(s2)
   1639c:	0789b703          	ld	a4,120(s3)
   163a0:	4014541b          	sraiw	s0,s0,0x1
   163a4:	00379793          	slli	a5,a5,0x3
   163a8:	00f707b3          	add	a5,a4,a5
   163ac:	0007b703          	ld	a4,0(a5)
   163b0:	00e93023          	sd	a4,0(s2)
   163b4:	0127b023          	sd	s2,0(a5)
   163b8:	00050913          	mv	s2,a0
   163bc:	fa041ae3          	bnez	s0,16370 <__pow5mult+0x4c>
   163c0:	02813083          	ld	ra,40(sp)
   163c4:	00090513          	mv	a0,s2
   163c8:	02013403          	ld	s0,32(sp)
   163cc:	01813483          	ld	s1,24(sp)
   163d0:	01013903          	ld	s2,16(sp)
   163d4:	00813983          	ld	s3,8(sp)
   163d8:	03010113          	addi	sp,sp,48
   163dc:	00008067          	ret
   163e0:	00048613          	mv	a2,s1
   163e4:	00048593          	mv	a1,s1
   163e8:	00098513          	mv	a0,s3
   163ec:	d45ff0ef          	jal	16130 <__multiply>
   163f0:	00a4b023          	sd	a0,0(s1)
   163f4:	00053023          	sd	zero,0(a0)
   163f8:	00050493          	mv	s1,a0
   163fc:	f81ff06f          	j	1637c <__pow5mult+0x58>
   16400:	00050913          	mv	s2,a0
   16404:	f65ff06f          	j	16368 <__pow5mult+0x44>
   16408:	fff7879b          	addiw	a5,a5,-1
   1640c:	0001a737          	lui	a4,0x1a
   16410:	96070713          	addi	a4,a4,-1696 # 19960 <p05.2568>
   16414:	00279793          	slli	a5,a5,0x2
   16418:	00f707b3          	add	a5,a4,a5
   1641c:	0007a603          	lw	a2,0(a5)
   16420:	00000693          	li	a3,0
   16424:	971ff0ef          	jal	15d94 <__multadd>
   16428:	00050913          	mv	s2,a0
   1642c:	f25ff06f          	j	16350 <__pow5mult+0x2c>
   16430:	00100593          	li	a1,1
   16434:	00098513          	mv	a0,s3
   16438:	88dff0ef          	jal	15cc4 <_Balloc>
   1643c:	27100793          	li	a5,625
   16440:	00f52c23          	sw	a5,24(a0)
   16444:	00100793          	li	a5,1
   16448:	00f52a23          	sw	a5,20(a0)
   1644c:	06a9b823          	sd	a0,112(s3)
   16450:	00050493          	mv	s1,a0
   16454:	00053023          	sd	zero,0(a0)
   16458:	f09ff06f          	j	16360 <__pow5mult+0x3c>

000000000001645c <__lshift>:
   1645c:	fc010113          	addi	sp,sp,-64
   16460:	01513423          	sd	s5,8(sp)
   16464:	0145aa83          	lw	s5,20(a1) # 10014 <_ftext+0x14>
   16468:	02813823          	sd	s0,48(sp)
   1646c:	00c5a783          	lw	a5,12(a1)
   16470:	4056541b          	sraiw	s0,a2,0x5
   16474:	01540abb          	addw	s5,s0,s5
   16478:	02913423          	sd	s1,40(sp)
   1647c:	03213023          	sd	s2,32(sp)
   16480:	01313c23          	sd	s3,24(sp)
   16484:	01413823          	sd	s4,16(sp)
   16488:	02113c23          	sd	ra,56(sp)
   1648c:	001a849b          	addiw	s1,s5,1
   16490:	00058913          	mv	s2,a1
   16494:	00060993          	mv	s3,a2
   16498:	00050a13          	mv	s4,a0
   1649c:	0085a583          	lw	a1,8(a1)
   164a0:	0097d863          	ble	s1,a5,164b0 <__lshift+0x54>
   164a4:	0017979b          	slliw	a5,a5,0x1
   164a8:	0015859b          	addiw	a1,a1,1
   164ac:	fe97cce3          	blt	a5,s1,164a4 <__lshift+0x48>
   164b0:	000a0513          	mv	a0,s4
   164b4:	811ff0ef          	jal	15cc4 <_Balloc>
   164b8:	01850793          	addi	a5,a0,24
   164bc:	0e805c63          	blez	s0,165b4 <__lshift+0x158>
   164c0:	fff4071b          	addiw	a4,s0,-1
   164c4:	02071713          	slli	a4,a4,0x20
   164c8:	02075713          	srli	a4,a4,0x20
   164cc:	00170713          	addi	a4,a4,1
   164d0:	00271713          	slli	a4,a4,0x2
   164d4:	00e78733          	add	a4,a5,a4
   164d8:	00478793          	addi	a5,a5,4
   164dc:	fe07ae23          	sw	zero,-4(a5)
   164e0:	fee79ce3          	bne	a5,a4,164d8 <__lshift+0x7c>
   164e4:	01492883          	lw	a7,20(s2)
   164e8:	01890793          	addi	a5,s2,24
   164ec:	01f9f613          	andi	a2,s3,31
   164f0:	00289893          	slli	a7,a7,0x2
   164f4:	011788b3          	add	a7,a5,a7
   164f8:	08060863          	beqz	a2,16588 <__lshift+0x12c>
   164fc:	02000313          	li	t1,32
   16500:	40c3033b          	subw	t1,t1,a2
   16504:	00000693          	li	a3,0
   16508:	0080006f          	j	16510 <__lshift+0xb4>
   1650c:	00080713          	mv	a4,a6
   16510:	0007a583          	lw	a1,0(a5)
   16514:	00470813          	addi	a6,a4,4
   16518:	00478793          	addi	a5,a5,4
   1651c:	00c595bb          	sllw	a1,a1,a2
   16520:	00d5e6b3          	or	a3,a1,a3
   16524:	fed82e23          	sw	a3,-4(a6) # fffc <_ftext-0x4>
   16528:	ffc7a683          	lw	a3,-4(a5)
   1652c:	0066d6bb          	srlw	a3,a3,t1
   16530:	fd17eee3          	bltu	a5,a7,1650c <__lshift+0xb0>
   16534:	00d72223          	sw	a3,4(a4)
   16538:	00068463          	beqz	a3,16540 <__lshift+0xe4>
   1653c:	002a849b          	addiw	s1,s5,2
   16540:	00892783          	lw	a5,8(s2)
   16544:	078a3703          	ld	a4,120(s4)
   16548:	fff4849b          	addiw	s1,s1,-1
   1654c:	00379793          	slli	a5,a5,0x3
   16550:	00f707b3          	add	a5,a4,a5
   16554:	0007b703          	ld	a4,0(a5)
   16558:	03813083          	ld	ra,56(sp)
   1655c:	00952a23          	sw	s1,20(a0)
   16560:	00e93023          	sd	a4,0(s2)
   16564:	0127b023          	sd	s2,0(a5)
   16568:	03013403          	ld	s0,48(sp)
   1656c:	02813483          	ld	s1,40(sp)
   16570:	02013903          	ld	s2,32(sp)
   16574:	01813983          	ld	s3,24(sp)
   16578:	01013a03          	ld	s4,16(sp)
   1657c:	00813a83          	ld	s5,8(sp)
   16580:	04010113          	addi	sp,sp,64
   16584:	00008067          	ret
   16588:	00478793          	addi	a5,a5,4
   1658c:	ffc7a683          	lw	a3,-4(a5)
   16590:	00470713          	addi	a4,a4,4
   16594:	fed72e23          	sw	a3,-4(a4)
   16598:	fb17f4e3          	bleu	a7,a5,16540 <__lshift+0xe4>
   1659c:	00478793          	addi	a5,a5,4
   165a0:	ffc7a683          	lw	a3,-4(a5)
   165a4:	00470713          	addi	a4,a4,4
   165a8:	fed72e23          	sw	a3,-4(a4)
   165ac:	fd17eee3          	bltu	a5,a7,16588 <__lshift+0x12c>
   165b0:	f91ff06f          	j	16540 <__lshift+0xe4>
   165b4:	00078713          	mv	a4,a5
   165b8:	f2dff06f          	j	164e4 <__lshift+0x88>

00000000000165bc <__mcmp>:
   165bc:	01452783          	lw	a5,20(a0)
   165c0:	0145a703          	lw	a4,20(a1)
   165c4:	40e787bb          	subw	a5,a5,a4
   165c8:	04079263          	bnez	a5,1660c <__mcmp+0x50>
   165cc:	00271713          	slli	a4,a4,0x2
   165d0:	01850513          	addi	a0,a0,24
   165d4:	01858593          	addi	a1,a1,24
   165d8:	00e507b3          	add	a5,a0,a4
   165dc:	00e585b3          	add	a1,a1,a4
   165e0:	0080006f          	j	165e8 <__mcmp+0x2c>
   165e4:	02f57863          	bleu	a5,a0,16614 <__mcmp+0x58>
   165e8:	ffc78793          	addi	a5,a5,-4
   165ec:	ffc58593          	addi	a1,a1,-4
   165f0:	0007a703          	lw	a4,0(a5)
   165f4:	0005a683          	lw	a3,0(a1)
   165f8:	fed706e3          	beq	a4,a3,165e4 <__mcmp+0x28>
   165fc:	00d737b3          	sltu	a5,a4,a3
   16600:	40f007bb          	negw	a5,a5
   16604:	0017e513          	ori	a0,a5,1
   16608:	00008067          	ret
   1660c:	00078513          	mv	a0,a5
   16610:	00008067          	ret
   16614:	00000513          	li	a0,0
   16618:	00008067          	ret

000000000001661c <__mdiff>:
   1661c:	0145a703          	lw	a4,20(a1)
   16620:	01462783          	lw	a5,20(a2)
   16624:	fd010113          	addi	sp,sp,-48
   16628:	01213823          	sd	s2,16(sp)
   1662c:	01313423          	sd	s3,8(sp)
   16630:	02113423          	sd	ra,40(sp)
   16634:	02813023          	sd	s0,32(sp)
   16638:	00913c23          	sd	s1,24(sp)
   1663c:	01413023          	sd	s4,0(sp)
   16640:	40f7073b          	subw	a4,a4,a5
   16644:	00058913          	mv	s2,a1
   16648:	00060993          	mv	s3,a2
   1664c:	04071863          	bnez	a4,1669c <__mdiff+0x80>
   16650:	00279713          	slli	a4,a5,0x2
   16654:	01858813          	addi	a6,a1,24
   16658:	01860413          	addi	s0,a2,24
   1665c:	00e807b3          	add	a5,a6,a4
   16660:	00e40733          	add	a4,s0,a4
   16664:	0080006f          	j	1666c <__mdiff+0x50>
   16668:	16f87263          	bleu	a5,a6,167cc <__mdiff+0x1b0>
   1666c:	ffc78793          	addi	a5,a5,-4
   16670:	ffc70713          	addi	a4,a4,-4
   16674:	0007a583          	lw	a1,0(a5)
   16678:	00072683          	lw	a3,0(a4)
   1667c:	fed586e3          	beq	a1,a3,16668 <__mdiff+0x4c>
   16680:	18d5f063          	bleu	a3,a1,16800 <__mdiff+0x1e4>
   16684:	00090793          	mv	a5,s2
   16688:	00080493          	mv	s1,a6
   1668c:	00098913          	mv	s2,s3
   16690:	00100a13          	li	s4,1
   16694:	00078993          	mv	s3,a5
   16698:	0140006f          	j	166ac <__mdiff+0x90>
   1669c:	16074a63          	bltz	a4,16810 <__mdiff+0x1f4>
   166a0:	01860493          	addi	s1,a2,24
   166a4:	01858413          	addi	s0,a1,24
   166a8:	00000a13          	li	s4,0
   166ac:	00892583          	lw	a1,8(s2)
   166b0:	e14ff0ef          	jal	15cc4 <_Balloc>
   166b4:	01492e03          	lw	t3,20(s2)
   166b8:	0149af03          	lw	t5,20(s3)
   166bc:	00010337          	lui	t1,0x10
   166c0:	002e1e93          	slli	t4,t3,0x2
   166c4:	002f1f13          	slli	t5,t5,0x2
   166c8:	01452823          	sw	s4,16(a0)
   166cc:	01d40eb3          	add	t4,s0,t4
   166d0:	01e48f33          	add	t5,s1,t5
   166d4:	01850813          	addi	a6,a0,24
   166d8:	00000693          	li	a3,0
   166dc:	fff3031b          	addiw	t1,t1,-1
   166e0:	00042583          	lw	a1,0(s0)
   166e4:	0004a883          	lw	a7,0(s1)
   166e8:	00480813          	addi	a6,a6,4
   166ec:	0065f633          	and	a2,a1,t1
   166f0:	00d606bb          	addw	a3,a2,a3
   166f4:	0068f733          	and	a4,a7,t1
   166f8:	40e6873b          	subw	a4,a3,a4
   166fc:	0105d59b          	srliw	a1,a1,0x10
   16700:	0108d69b          	srliw	a3,a7,0x10
   16704:	40d585bb          	subw	a1,a1,a3
   16708:	4107569b          	sraiw	a3,a4,0x10
   1670c:	00d586bb          	addw	a3,a1,a3
   16710:	0106979b          	slliw	a5,a3,0x10
   16714:	00677733          	and	a4,a4,t1
   16718:	00e7e7b3          	or	a5,a5,a4
   1671c:	00448493          	addi	s1,s1,4
   16720:	fef82e23          	sw	a5,-4(a6)
   16724:	00440413          	addi	s0,s0,4
   16728:	4106d69b          	sraiw	a3,a3,0x10
   1672c:	fbe4eae3          	bltu	s1,t5,166e0 <__mdiff+0xc4>
   16730:	07d47063          	bleu	t4,s0,16790 <__mdiff+0x174>
   16734:	00010f37          	lui	t5,0x10
   16738:	00080313          	mv	t1,a6
   1673c:	00040893          	mv	a7,s0
   16740:	ffff0f1b          	addiw	t5,t5,-1
   16744:	0008a583          	lw	a1,0(a7)
   16748:	00430313          	addi	t1,t1,4 # 10004 <_ftext+0x4>
   1674c:	00488893          	addi	a7,a7,4
   16750:	01e5f633          	and	a2,a1,t5
   16754:	00d606bb          	addw	a3,a2,a3
   16758:	4106d71b          	sraiw	a4,a3,0x10
   1675c:	0105d59b          	srliw	a1,a1,0x10
   16760:	00e5873b          	addw	a4,a1,a4
   16764:	01e6f6b3          	and	a3,a3,t5
   16768:	0107179b          	slliw	a5,a4,0x10
   1676c:	00d7e7b3          	or	a5,a5,a3
   16770:	fef32e23          	sw	a5,-4(t1)
   16774:	4107569b          	sraiw	a3,a4,0x10
   16778:	fdd8e6e3          	bltu	a7,t4,16744 <__mdiff+0x128>
   1677c:	fff44413          	not	s0,s0
   16780:	01d40eb3          	add	t4,s0,t4
   16784:	ffcefe93          	andi	t4,t4,-4
   16788:	004e8e93          	addi	t4,t4,4
   1678c:	01d80833          	add	a6,a6,t4
   16790:	ffc80813          	addi	a6,a6,-4
   16794:	00079a63          	bnez	a5,167a8 <__mdiff+0x18c>
   16798:	ffc80813          	addi	a6,a6,-4
   1679c:	00082783          	lw	a5,0(a6)
   167a0:	fffe0e1b          	addiw	t3,t3,-1
   167a4:	fe078ae3          	beqz	a5,16798 <__mdiff+0x17c>
   167a8:	02813083          	ld	ra,40(sp)
   167ac:	02013403          	ld	s0,32(sp)
   167b0:	01813483          	ld	s1,24(sp)
   167b4:	01013903          	ld	s2,16(sp)
   167b8:	00813983          	ld	s3,8(sp)
   167bc:	00013a03          	ld	s4,0(sp)
   167c0:	01c52a23          	sw	t3,20(a0)
   167c4:	03010113          	addi	sp,sp,48
   167c8:	00008067          	ret
   167cc:	00000593          	li	a1,0
   167d0:	cf4ff0ef          	jal	15cc4 <_Balloc>
   167d4:	02813083          	ld	ra,40(sp)
   167d8:	00100793          	li	a5,1
   167dc:	02013403          	ld	s0,32(sp)
   167e0:	01813483          	ld	s1,24(sp)
   167e4:	01013903          	ld	s2,16(sp)
   167e8:	00813983          	ld	s3,8(sp)
   167ec:	00013a03          	ld	s4,0(sp)
   167f0:	00f52a23          	sw	a5,20(a0)
   167f4:	00052c23          	sw	zero,24(a0)
   167f8:	03010113          	addi	sp,sp,48
   167fc:	00008067          	ret
   16800:	00040493          	mv	s1,s0
   16804:	00000a13          	li	s4,0
   16808:	00080413          	mv	s0,a6
   1680c:	ea1ff06f          	j	166ac <__mdiff+0x90>
   16810:	00090793          	mv	a5,s2
   16814:	01890493          	addi	s1,s2,24
   16818:	01898413          	addi	s0,s3,24
   1681c:	00098913          	mv	s2,s3
   16820:	00100a13          	li	s4,1
   16824:	00078993          	mv	s3,a5
   16828:	e85ff06f          	j	166ac <__mdiff+0x90>

000000000001682c <__ulp>:
   1682c:	e20507d3          	fmv.x.d	a5,fa0
   16830:	7ff00737          	lui	a4,0x7ff00
   16834:	4207d793          	srai	a5,a5,0x20
   16838:	00e7f7b3          	and	a5,a5,a4
   1683c:	fcc00737          	lui	a4,0xfcc00
   16840:	00e787bb          	addw	a5,a5,a4
   16844:	00f05863          	blez	a5,16854 <__ulp+0x28>
   16848:	02079793          	slli	a5,a5,0x20
   1684c:	f2078553          	fmv.d.x	fa0,a5
   16850:	00008067          	ret
   16854:	40f007bb          	negw	a5,a5
   16858:	4147d79b          	sraiw	a5,a5,0x14
   1685c:	01300713          	li	a4,19
   16860:	04f75063          	ble	a5,a4,168a0 <__ulp+0x74>
   16864:	fec7869b          	addiw	a3,a5,-20
   16868:	01e00613          	li	a2,30
   1686c:	00000793          	li	a5,0
   16870:	00100713          	li	a4,1
   16874:	00d64663          	blt	a2,a3,16880 <__ulp+0x54>
   16878:	fff6c693          	not	a3,a3
   1687c:	00d7173b          	sllw	a4,a4,a3
   16880:	fff00693          	li	a3,-1
   16884:	02069693          	slli	a3,a3,0x20
   16888:	02071713          	slli	a4,a4,0x20
   1688c:	02075713          	srli	a4,a4,0x20
   16890:	00d7f7b3          	and	a5,a5,a3
   16894:	00e7e7b3          	or	a5,a5,a4
   16898:	f2078553          	fmv.d.x	fa0,a5
   1689c:	00008067          	ret
   168a0:	00080737          	lui	a4,0x80
   168a4:	40f757bb          	sraw	a5,a4,a5
   168a8:	fa1ff06f          	j	16848 <__ulp+0x1c>

00000000000168ac <__b2d>:
   168ac:	fd010113          	addi	sp,sp,-48
   168b0:	02813023          	sd	s0,32(sp)
   168b4:	01452403          	lw	s0,20(a0)
   168b8:	00913c23          	sd	s1,24(sp)
   168bc:	01850493          	addi	s1,a0,24
   168c0:	00241413          	slli	s0,s0,0x2
   168c4:	00848433          	add	s0,s1,s0
   168c8:	01213823          	sd	s2,16(sp)
   168cc:	ffc42903          	lw	s2,-4(s0)
   168d0:	01313423          	sd	s3,8(sp)
   168d4:	01413023          	sd	s4,0(sp)
   168d8:	00090513          	mv	a0,s2
   168dc:	00058a13          	mv	s4,a1
   168e0:	02113423          	sd	ra,40(sp)
   168e4:	eecff0ef          	jal	15fd0 <__hi0bits>
   168e8:	02000793          	li	a5,32
   168ec:	40a7873b          	subw	a4,a5,a0
   168f0:	00ea2023          	sw	a4,0(s4)
   168f4:	00a00713          	li	a4,10
   168f8:	ffc40993          	addi	s3,s0,-4
   168fc:	06a74a63          	blt	a4,a0,16970 <__b2d+0xc4>
   16900:	00b00693          	li	a3,11
   16904:	40a686bb          	subw	a3,a3,a0
   16908:	3ff00737          	lui	a4,0x3ff00
   1690c:	00d957bb          	srlw	a5,s2,a3
   16910:	00e7e7b3          	or	a5,a5,a4
   16914:	02079793          	slli	a5,a5,0x20
   16918:	00000713          	li	a4,0
   1691c:	0134f663          	bleu	s3,s1,16928 <__b2d+0x7c>
   16920:	ff842703          	lw	a4,-8(s0)
   16924:	00d7573b          	srlw	a4,a4,a3
   16928:	0155051b          	addiw	a0,a0,21
   1692c:	00a9153b          	sllw	a0,s2,a0
   16930:	00e56533          	or	a0,a0,a4
   16934:	fff00713          	li	a4,-1
   16938:	02051513          	slli	a0,a0,0x20
   1693c:	02071713          	slli	a4,a4,0x20
   16940:	02055513          	srli	a0,a0,0x20
   16944:	00e7f7b3          	and	a5,a5,a4
   16948:	00a7e7b3          	or	a5,a5,a0
   1694c:	02813083          	ld	ra,40(sp)
   16950:	f2078553          	fmv.d.x	fa0,a5
   16954:	02013403          	ld	s0,32(sp)
   16958:	01813483          	ld	s1,24(sp)
   1695c:	01013903          	ld	s2,16(sp)
   16960:	00813983          	ld	s3,8(sp)
   16964:	00013a03          	ld	s4,0(sp)
   16968:	03010113          	addi	sp,sp,48
   1696c:	00008067          	ret
   16970:	ff55051b          	addiw	a0,a0,-11
   16974:	0534f263          	bleu	s3,s1,169b8 <__b2d+0x10c>
   16978:	ff842683          	lw	a3,-8(s0)
   1697c:	04050263          	beqz	a0,169c0 <__b2d+0x114>
   16980:	40a7863b          	subw	a2,a5,a0
   16984:	00a917bb          	sllw	a5,s2,a0
   16988:	3ff00937          	lui	s2,0x3ff00
   1698c:	00c6d73b          	srlw	a4,a3,a2
   16990:	0127e7b3          	or	a5,a5,s2
   16994:	00e7e7b3          	or	a5,a5,a4
   16998:	ff840713          	addi	a4,s0,-8
   1699c:	02079793          	slli	a5,a5,0x20
   169a0:	04e4fa63          	bleu	a4,s1,169f4 <__b2d+0x148>
   169a4:	ff442703          	lw	a4,-12(s0)
   169a8:	00a6953b          	sllw	a0,a3,a0
   169ac:	00c756bb          	srlw	a3,a4,a2
   169b0:	00a6e533          	or	a0,a3,a0
   169b4:	f81ff06f          	j	16934 <__b2d+0x88>
   169b8:	00000693          	li	a3,0
   169bc:	02051063          	bnez	a0,169dc <__b2d+0x130>
   169c0:	3ff00737          	lui	a4,0x3ff00
   169c4:	00e967b3          	or	a5,s2,a4
   169c8:	02069693          	slli	a3,a3,0x20
   169cc:	0206d693          	srli	a3,a3,0x20
   169d0:	02079793          	slli	a5,a5,0x20
   169d4:	00d7e7b3          	or	a5,a5,a3
   169d8:	f75ff06f          	j	1694c <__b2d+0xa0>
   169dc:	00a917bb          	sllw	a5,s2,a0
   169e0:	3ff00737          	lui	a4,0x3ff00
   169e4:	00e7e7b3          	or	a5,a5,a4
   169e8:	02079793          	slli	a5,a5,0x20
   169ec:	00000513          	li	a0,0
   169f0:	f45ff06f          	j	16934 <__b2d+0x88>
   169f4:	00a6953b          	sllw	a0,a3,a0
   169f8:	f3dff06f          	j	16934 <__b2d+0x88>

00000000000169fc <__d2b>:
   169fc:	fc010113          	addi	sp,sp,-64
   16a00:	02813823          	sd	s0,48(sp)
   16a04:	e2058453          	fmv.x.d	s0,fa1
   16a08:	00100593          	li	a1,1
   16a0c:	02913423          	sd	s1,40(sp)
   16a10:	03213023          	sd	s2,32(sp)
   16a14:	01313c23          	sd	s3,24(sp)
   16a18:	01413823          	sd	s4,16(sp)
   16a1c:	00068993          	mv	s3,a3
   16a20:	02113c23          	sd	ra,56(sp)
   16a24:	00060a13          	mv	s4,a2
   16a28:	a9cff0ef          	jal	15cc4 <_Balloc>
   16a2c:	42045793          	srai	a5,s0,0x20
   16a30:	02179493          	slli	s1,a5,0x21
   16a34:	001006b7          	lui	a3,0x100
   16a38:	fff6871b          	addiw	a4,a3,-1
   16a3c:	0354d493          	srli	s1,s1,0x35
   16a40:	00050913          	mv	s2,a0
   16a44:	00e7f7b3          	and	a5,a5,a4
   16a48:	00048463          	beqz	s1,16a50 <__d2b+0x54>
   16a4c:	00d7e7b3          	or	a5,a5,a3
   16a50:	00f12623          	sw	a5,12(sp)
   16a54:	0004041b          	sext.w	s0,s0
   16a58:	08040063          	beqz	s0,16ad8 <__d2b+0xdc>
   16a5c:	00810513          	addi	a0,sp,8
   16a60:	00812423          	sw	s0,8(sp)
   16a64:	de8ff0ef          	jal	1604c <__lo0bits>
   16a68:	00c12783          	lw	a5,12(sp)
   16a6c:	0a051463          	bnez	a0,16b14 <__d2b+0x118>
   16a70:	00812703          	lw	a4,8(sp)
   16a74:	00e92c23          	sw	a4,24(s2) # 3ff00018 <_gp+0x3fee3258>
   16a78:	0017b413          	seqz	s0,a5
   16a7c:	00200713          	li	a4,2
   16a80:	4087043b          	subw	s0,a4,s0
   16a84:	00f92e23          	sw	a5,28(s2)
   16a88:	00892a23          	sw	s0,20(s2)
   16a8c:	06049663          	bnez	s1,16af8 <__d2b+0xfc>
   16a90:	bce5051b          	addiw	a0,a0,-1074
   16a94:	00241793          	slli	a5,s0,0x2
   16a98:	00aa2023          	sw	a0,0(s4)
   16a9c:	00f907b3          	add	a5,s2,a5
   16aa0:	0147a503          	lw	a0,20(a5)
   16aa4:	0054141b          	slliw	s0,s0,0x5
   16aa8:	d28ff0ef          	jal	15fd0 <__hi0bits>
   16aac:	40a4053b          	subw	a0,s0,a0
   16ab0:	00a9a023          	sw	a0,0(s3)
   16ab4:	03813083          	ld	ra,56(sp)
   16ab8:	00090513          	mv	a0,s2
   16abc:	03013403          	ld	s0,48(sp)
   16ac0:	02813483          	ld	s1,40(sp)
   16ac4:	02013903          	ld	s2,32(sp)
   16ac8:	01813983          	ld	s3,24(sp)
   16acc:	01013a03          	ld	s4,16(sp)
   16ad0:	04010113          	addi	sp,sp,64
   16ad4:	00008067          	ret
   16ad8:	00c10513          	addi	a0,sp,12
   16adc:	d70ff0ef          	jal	1604c <__lo0bits>
   16ae0:	00c12783          	lw	a5,12(sp)
   16ae4:	00100413          	li	s0,1
   16ae8:	00892a23          	sw	s0,20(s2)
   16aec:	00f92c23          	sw	a5,24(s2)
   16af0:	0205051b          	addiw	a0,a0,32
   16af4:	f8048ee3          	beqz	s1,16a90 <__d2b+0x94>
   16af8:	bcd4849b          	addiw	s1,s1,-1075
   16afc:	00a484bb          	addw	s1,s1,a0
   16b00:	03500793          	li	a5,53
   16b04:	009a2023          	sw	s1,0(s4)
   16b08:	40a7853b          	subw	a0,a5,a0
   16b0c:	00a9a023          	sw	a0,0(s3)
   16b10:	fa5ff06f          	j	16ab4 <__d2b+0xb8>
   16b14:	02000713          	li	a4,32
   16b18:	00812683          	lw	a3,8(sp)
   16b1c:	40a7073b          	subw	a4,a4,a0
   16b20:	00e7973b          	sllw	a4,a5,a4
   16b24:	00d76733          	or	a4,a4,a3
   16b28:	00a7d7bb          	srlw	a5,a5,a0
   16b2c:	00e92c23          	sw	a4,24(s2)
   16b30:	00f12623          	sw	a5,12(sp)
   16b34:	f45ff06f          	j	16a78 <__d2b+0x7c>

0000000000016b38 <__ratio>:
   16b38:	fd010113          	addi	sp,sp,-48
   16b3c:	00913c23          	sd	s1,24(sp)
   16b40:	00058493          	mv	s1,a1
   16b44:	00810593          	addi	a1,sp,8
   16b48:	02113423          	sd	ra,40(sp)
   16b4c:	02813023          	sd	s0,32(sp)
   16b50:	01213823          	sd	s2,16(sp)
   16b54:	00050913          	mv	s2,a0
   16b58:	d55ff0ef          	jal	168ac <__b2d>
   16b5c:	00c10593          	addi	a1,sp,12
   16b60:	00048513          	mv	a0,s1
   16b64:	e2050453          	fmv.x.d	s0,fa0
   16b68:	d45ff0ef          	jal	168ac <__b2d>
   16b6c:	01492703          	lw	a4,20(s2)
   16b70:	0144a783          	lw	a5,20(s1)
   16b74:	00c12603          	lw	a2,12(sp)
   16b78:	e20506d3          	fmv.x.d	a3,fa0
   16b7c:	40f707bb          	subw	a5,a4,a5
   16b80:	0057971b          	slliw	a4,a5,0x5
   16b84:	00812783          	lw	a5,8(sp)
   16b88:	40c787bb          	subw	a5,a5,a2
   16b8c:	00f707bb          	addw	a5,a4,a5
   16b90:	04f05463          	blez	a5,16bd8 <__ratio+0xa0>
   16b94:	00040713          	mv	a4,s0
   16b98:	0147979b          	slliw	a5,a5,0x14
   16b9c:	42045413          	srai	s0,s0,0x20
   16ba0:	00f407bb          	addw	a5,s0,a5
   16ba4:	02071413          	slli	s0,a4,0x20
   16ba8:	02079793          	slli	a5,a5,0x20
   16bac:	02045413          	srli	s0,s0,0x20
   16bb0:	00f46433          	or	s0,s0,a5
   16bb4:	f20407d3          	fmv.d.x	fa5,s0
   16bb8:	f2068753          	fmv.d.x	fa4,a3
   16bbc:	02813083          	ld	ra,40(sp)
   16bc0:	02013403          	ld	s0,32(sp)
   16bc4:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   16bc8:	01813483          	ld	s1,24(sp)
   16bcc:	01013903          	ld	s2,16(sp)
   16bd0:	03010113          	addi	sp,sp,48
   16bd4:	00008067          	ret
   16bd8:	00068613          	mv	a2,a3
   16bdc:	0147979b          	slliw	a5,a5,0x14
   16be0:	4206d693          	srai	a3,a3,0x20
   16be4:	40f687bb          	subw	a5,a3,a5
   16be8:	02061693          	slli	a3,a2,0x20
   16bec:	02079793          	slli	a5,a5,0x20
   16bf0:	0206d693          	srli	a3,a3,0x20
   16bf4:	00f6e6b3          	or	a3,a3,a5
   16bf8:	fbdff06f          	j	16bb4 <__ratio+0x7c>

0000000000016bfc <_mprec_log10>:
   16bfc:	01700793          	li	a5,23
   16c00:	02a7d263          	ble	a0,a5,16c24 <_mprec_log10+0x28>
   16c04:	0001c7b7          	lui	a5,0x1c
   16c08:	6187b507          	fld	fa0,1560(a5) # 1c618 <__wctomb+0x28>
   16c0c:	0001c7b7          	lui	a5,0x1c
   16c10:	6207b787          	fld	fa5,1568(a5) # 1c620 <__wctomb+0x30>
   16c14:	fff5051b          	addiw	a0,a0,-1
   16c18:	12f57553          	fmul.d	fa0,fa0,fa5
   16c1c:	fe051ce3          	bnez	a0,16c14 <_mprec_log10+0x18>
   16c20:	00008067          	ret
   16c24:	0001a7b7          	lui	a5,0x1a
   16c28:	96078793          	addi	a5,a5,-1696 # 19960 <p05.2568>
   16c2c:	00351513          	slli	a0,a0,0x3
   16c30:	00a78533          	add	a0,a5,a0
   16c34:	01053507          	fld	fa0,16(a0)
   16c38:	00008067          	ret

0000000000016c3c <__copybits>:
   16c3c:	01462703          	lw	a4,20(a2)
   16c40:	fff5859b          	addiw	a1,a1,-1
   16c44:	4055d81b          	sraiw	a6,a1,0x5
   16c48:	00180813          	addi	a6,a6,1
   16c4c:	01860793          	addi	a5,a2,24
   16c50:	00271713          	slli	a4,a4,0x2
   16c54:	00281813          	slli	a6,a6,0x2
   16c58:	00e786b3          	add	a3,a5,a4
   16c5c:	01050833          	add	a6,a0,a6
   16c60:	02d7f863          	bleu	a3,a5,16c90 <__copybits+0x54>
   16c64:	00050713          	mv	a4,a0
   16c68:	00478793          	addi	a5,a5,4
   16c6c:	ffc7a583          	lw	a1,-4(a5)
   16c70:	00470713          	addi	a4,a4,4 # 3ff00004 <_gp+0x3fee3244>
   16c74:	feb72e23          	sw	a1,-4(a4)
   16c78:	fed7e8e3          	bltu	a5,a3,16c68 <__copybits+0x2c>
   16c7c:	40c687b3          	sub	a5,a3,a2
   16c80:	fe778793          	addi	a5,a5,-25
   16c84:	ffc7f793          	andi	a5,a5,-4
   16c88:	00478793          	addi	a5,a5,4
   16c8c:	00f50533          	add	a0,a0,a5
   16c90:	01057863          	bleu	a6,a0,16ca0 <__copybits+0x64>
   16c94:	00450513          	addi	a0,a0,4
   16c98:	fe052e23          	sw	zero,-4(a0)
   16c9c:	ff056ce3          	bltu	a0,a6,16c94 <__copybits+0x58>
   16ca0:	00008067          	ret

0000000000016ca4 <__any_on>:
   16ca4:	01452783          	lw	a5,20(a0)
   16ca8:	4055d71b          	sraiw	a4,a1,0x5
   16cac:	01850693          	addi	a3,a0,24
   16cb0:	04e7c463          	blt	a5,a4,16cf8 <__any_on+0x54>
   16cb4:	04f75063          	ble	a5,a4,16cf4 <__any_on+0x50>
   16cb8:	00070793          	mv	a5,a4
   16cbc:	00279793          	slli	a5,a5,0x2
   16cc0:	01f5f593          	andi	a1,a1,31
   16cc4:	00f687b3          	add	a5,a3,a5
   16cc8:	04059063          	bnez	a1,16d08 <__any_on+0x64>
   16ccc:	04f6fa63          	bleu	a5,a3,16d20 <__any_on+0x7c>
   16cd0:	ffc7a503          	lw	a0,-4(a5)
   16cd4:	ffc78793          	addi	a5,a5,-4
   16cd8:	00051a63          	bnez	a0,16cec <__any_on+0x48>
   16cdc:	02f6f463          	bleu	a5,a3,16d04 <__any_on+0x60>
   16ce0:	ffc78793          	addi	a5,a5,-4
   16ce4:	0007a703          	lw	a4,0(a5)
   16ce8:	fe070ae3          	beqz	a4,16cdc <__any_on+0x38>
   16cec:	00100513          	li	a0,1
   16cf0:	00008067          	ret
   16cf4:	00070793          	mv	a5,a4
   16cf8:	00279793          	slli	a5,a5,0x2
   16cfc:	00f687b3          	add	a5,a3,a5
   16d00:	fcdff06f          	j	16ccc <__any_on+0x28>
   16d04:	00008067          	ret
   16d08:	0007a603          	lw	a2,0(a5)
   16d0c:	00100513          	li	a0,1
   16d10:	00b6573b          	srlw	a4,a2,a1
   16d14:	00b715bb          	sllw	a1,a4,a1
   16d18:	fab60ae3          	beq	a2,a1,16ccc <__any_on+0x28>
   16d1c:	00008067          	ret
   16d20:	00000513          	li	a0,0
   16d24:	00008067          	ret

0000000000016d28 <_putc_r>:
   16d28:	fe010113          	addi	sp,sp,-32
   16d2c:	00813823          	sd	s0,16(sp)
   16d30:	00113c23          	sd	ra,24(sp)
   16d34:	00050413          	mv	s0,a0
   16d38:	00050663          	beqz	a0,16d44 <_putc_r+0x1c>
   16d3c:	05052783          	lw	a5,80(a0)
   16d40:	06078863          	beqz	a5,16db0 <_putc_r+0x88>
   16d44:	00c62783          	lw	a5,12(a2)
   16d48:	fff7879b          	addiw	a5,a5,-1
   16d4c:	00f62623          	sw	a5,12(a2)
   16d50:	0207c663          	bltz	a5,16d7c <_putc_r+0x54>
   16d54:	00063783          	ld	a5,0(a2)
   16d58:	00b78023          	sb	a1,0(a5)
   16d5c:	00063783          	ld	a5,0(a2)
   16d60:	01813083          	ld	ra,24(sp)
   16d64:	00178713          	addi	a4,a5,1
   16d68:	00e63023          	sd	a4,0(a2)
   16d6c:	0007c503          	lbu	a0,0(a5)
   16d70:	01013403          	ld	s0,16(sp)
   16d74:	02010113          	addi	sp,sp,32
   16d78:	00008067          	ret
   16d7c:	02862703          	lw	a4,40(a2)
   16d80:	00e7ce63          	blt	a5,a4,16d9c <_putc_r+0x74>
   16d84:	00063783          	ld	a5,0(a2)
   16d88:	00a00713          	li	a4,10
   16d8c:	00b78023          	sb	a1,0(a5)
   16d90:	00063783          	ld	a5,0(a2)
   16d94:	0007c583          	lbu	a1,0(a5)
   16d98:	fce594e3          	bne	a1,a4,16d60 <_putc_r+0x38>
   16d9c:	00040513          	mv	a0,s0
   16da0:	01813083          	ld	ra,24(sp)
   16da4:	01013403          	ld	s0,16(sp)
   16da8:	02010113          	addi	sp,sp,32
   16dac:	4910106f          	j	18a3c <__swbuf_r>
   16db0:	00c13423          	sd	a2,8(sp)
   16db4:	00b13023          	sd	a1,0(sp)
   16db8:	d44fd0ef          	jal	142fc <__sinit>
   16dbc:	00813603          	ld	a2,8(sp)
   16dc0:	00013583          	ld	a1,0(sp)
   16dc4:	f81ff06f          	j	16d44 <_putc_r+0x1c>

0000000000016dc8 <putc>:
   16dc8:	fd010113          	addi	sp,sp,-48
   16dcc:	02813023          	sd	s0,32(sp)
   16dd0:	8101b403          	ld	s0,-2032(gp) # 1c5d0 <_impure_ptr>
   16dd4:	00913c23          	sd	s1,24(sp)
   16dd8:	02113423          	sd	ra,40(sp)
   16ddc:	00050493          	mv	s1,a0
   16de0:	00040663          	beqz	s0,16dec <putc+0x24>
   16de4:	05042783          	lw	a5,80(s0)
   16de8:	06078663          	beqz	a5,16e54 <putc+0x8c>
   16dec:	00c5a783          	lw	a5,12(a1)
   16df0:	fff7879b          	addiw	a5,a5,-1
   16df4:	00f5a623          	sw	a5,12(a1)
   16df8:	0207c863          	bltz	a5,16e28 <putc+0x60>
   16dfc:	0005b783          	ld	a5,0(a1)
   16e00:	00978023          	sb	s1,0(a5)
   16e04:	0005b783          	ld	a5,0(a1)
   16e08:	02813083          	ld	ra,40(sp)
   16e0c:	00178713          	addi	a4,a5,1
   16e10:	00e5b023          	sd	a4,0(a1)
   16e14:	0007c503          	lbu	a0,0(a5)
   16e18:	02013403          	ld	s0,32(sp)
   16e1c:	01813483          	ld	s1,24(sp)
   16e20:	03010113          	addi	sp,sp,48
   16e24:	00008067          	ret
   16e28:	0285a703          	lw	a4,40(a1)
   16e2c:	02e7ce63          	blt	a5,a4,16e68 <putc+0xa0>
   16e30:	0005b783          	ld	a5,0(a1)
   16e34:	00a00693          	li	a3,10
   16e38:	00978023          	sb	s1,0(a5)
   16e3c:	0005b783          	ld	a5,0(a1)
   16e40:	0007c703          	lbu	a4,0(a5)
   16e44:	fcd712e3          	bne	a4,a3,16e08 <putc+0x40>
   16e48:	00058613          	mv	a2,a1
   16e4c:	00070593          	mv	a1,a4
   16e50:	0200006f          	j	16e70 <putc+0xa8>
   16e54:	00040513          	mv	a0,s0
   16e58:	00b13423          	sd	a1,8(sp)
   16e5c:	ca0fd0ef          	jal	142fc <__sinit>
   16e60:	00813583          	ld	a1,8(sp)
   16e64:	f89ff06f          	j	16dec <putc+0x24>
   16e68:	00058613          	mv	a2,a1
   16e6c:	00048593          	mv	a1,s1
   16e70:	00040513          	mv	a0,s0
   16e74:	02813083          	ld	ra,40(sp)
   16e78:	02013403          	ld	s0,32(sp)
   16e7c:	01813483          	ld	s1,24(sp)
   16e80:	03010113          	addi	sp,sp,48
   16e84:	3b90106f          	j	18a3c <__swbuf_r>

0000000000016e88 <_realloc_r>:
   16e88:	fb010113          	addi	sp,sp,-80
   16e8c:	02913c23          	sd	s1,56(sp)
   16e90:	04113423          	sd	ra,72(sp)
   16e94:	04813023          	sd	s0,64(sp)
   16e98:	03213823          	sd	s2,48(sp)
   16e9c:	03313423          	sd	s3,40(sp)
   16ea0:	03413023          	sd	s4,32(sp)
   16ea4:	01513c23          	sd	s5,24(sp)
   16ea8:	01613823          	sd	s6,16(sp)
   16eac:	01713423          	sd	s7,8(sp)
   16eb0:	01813023          	sd	s8,0(sp)
   16eb4:	00060493          	mv	s1,a2
   16eb8:	1c058a63          	beqz	a1,1708c <_realloc_r+0x204>
   16ebc:	00058993          	mv	s3,a1
   16ec0:	00050913          	mv	s2,a0
   16ec4:	df9fe0ef          	jal	15cbc <__malloc_lock>
   16ec8:	ff89b783          	ld	a5,-8(s3)
   16ecc:	01748413          	addi	s0,s1,23
   16ed0:	02e00713          	li	a4,46
   16ed4:	ff098a93          	addi	s5,s3,-16
   16ed8:	ffc7fa13          	andi	s4,a5,-4
   16edc:	0c877463          	bleu	s0,a4,16fa4 <_realloc_r+0x11c>
   16ee0:	80000737          	lui	a4,0x80000
   16ee4:	ff047413          	andi	s0,s0,-16
   16ee8:	fff74713          	not	a4,a4
   16eec:	14876a63          	bltu	a4,s0,17040 <_realloc_r+0x1b8>
   16ef0:	14946863          	bltu	s0,s1,17040 <_realloc_r+0x1b8>
   16ef4:	0a8a5c63          	ble	s0,s4,16fac <_realloc_r+0x124>
   16ef8:	0001cb37          	lui	s6,0x1c
   16efc:	da8b0b13          	addi	s6,s6,-600 # 1bda8 <__malloc_av_>
   16f00:	010b3703          	ld	a4,16(s6)
   16f04:	014a86b3          	add	a3,s5,s4
   16f08:	2ee68e63          	beq	a3,a4,17204 <_realloc_r+0x37c>
   16f0c:	0086b703          	ld	a4,8(a3) # 100008 <_gp+0xe3248>
   16f10:	ffe77613          	andi	a2,a4,-2
   16f14:	00c68633          	add	a2,a3,a2
   16f18:	00863603          	ld	a2,8(a2)
   16f1c:	00167613          	andi	a2,a2,1
   16f20:	0e060c63          	beqz	a2,17018 <_realloc_r+0x190>
   16f24:	0017f793          	andi	a5,a5,1
   16f28:	26078063          	beqz	a5,17188 <_realloc_r+0x300>
   16f2c:	00048593          	mv	a1,s1
   16f30:	00090513          	mv	a0,s2
   16f34:	a14fe0ef          	jal	15148 <_malloc_r>
   16f38:	00050493          	mv	s1,a0
   16f3c:	48050e63          	beqz	a0,173d8 <_realloc_r+0x550>
   16f40:	ff89b783          	ld	a5,-8(s3)
   16f44:	ff050713          	addi	a4,a0,-16
   16f48:	ffe7f793          	andi	a5,a5,-2
   16f4c:	00fa87b3          	add	a5,s5,a5
   16f50:	40f70e63          	beq	a4,a5,1736c <_realloc_r+0x4e4>
   16f54:	ff8a0613          	addi	a2,s4,-8
   16f58:	04800793          	li	a5,72
   16f5c:	3ec7e263          	bltu	a5,a2,17340 <_realloc_r+0x4b8>
   16f60:	02700713          	li	a4,39
   16f64:	36c76663          	bltu	a4,a2,172d0 <_realloc_r+0x448>
   16f68:	00050793          	mv	a5,a0
   16f6c:	00098713          	mv	a4,s3
   16f70:	00073683          	ld	a3,0(a4) # ffffffff80000000 <_gp+0xffffffff7ffe3240>
   16f74:	00d7b023          	sd	a3,0(a5)
   16f78:	00873683          	ld	a3,8(a4)
   16f7c:	00d7b423          	sd	a3,8(a5)
   16f80:	01073703          	ld	a4,16(a4)
   16f84:	00e7b823          	sd	a4,16(a5)
   16f88:	00098593          	mv	a1,s3
   16f8c:	00090513          	mv	a0,s2
   16f90:	e10fd0ef          	jal	145a0 <_free_r>
   16f94:	00090513          	mv	a0,s2
   16f98:	d29fe0ef          	jal	15cc0 <__malloc_unlock>
   16f9c:	00048513          	mv	a0,s1
   16fa0:	0480006f          	j	16fe8 <_realloc_r+0x160>
   16fa4:	02000413          	li	s0,32
   16fa8:	f49ff06f          	j	16ef0 <_realloc_r+0x68>
   16fac:	00098493          	mv	s1,s3
   16fb0:	408a07b3          	sub	a5,s4,s0
   16fb4:	01f00713          	li	a4,31
   16fb8:	08f76c63          	bltu	a4,a5,17050 <_realloc_r+0x1c8>
   16fbc:	008ab783          	ld	a5,8(s5)
   16fc0:	014a8733          	add	a4,s5,s4
   16fc4:	0017f793          	andi	a5,a5,1
   16fc8:	0147e633          	or	a2,a5,s4
   16fcc:	00cab423          	sd	a2,8(s5)
   16fd0:	00873783          	ld	a5,8(a4)
   16fd4:	0017e793          	ori	a5,a5,1
   16fd8:	00f73423          	sd	a5,8(a4)
   16fdc:	00090513          	mv	a0,s2
   16fe0:	ce1fe0ef          	jal	15cc0 <__malloc_unlock>
   16fe4:	00048513          	mv	a0,s1
   16fe8:	04813083          	ld	ra,72(sp)
   16fec:	04013403          	ld	s0,64(sp)
   16ff0:	03813483          	ld	s1,56(sp)
   16ff4:	03013903          	ld	s2,48(sp)
   16ff8:	02813983          	ld	s3,40(sp)
   16ffc:	02013a03          	ld	s4,32(sp)
   17000:	01813a83          	ld	s5,24(sp)
   17004:	01013b03          	ld	s6,16(sp)
   17008:	00813b83          	ld	s7,8(sp)
   1700c:	00013c03          	ld	s8,0(sp)
   17010:	05010113          	addi	sp,sp,80
   17014:	00008067          	ret
   17018:	ffc77713          	andi	a4,a4,-4
   1701c:	01470733          	add	a4,a4,s4
   17020:	0a874063          	blt	a4,s0,170c0 <_realloc_r+0x238>
   17024:	0186b783          	ld	a5,24(a3)
   17028:	0106b683          	ld	a3,16(a3)
   1702c:	00098493          	mv	s1,s3
   17030:	00070a13          	mv	s4,a4
   17034:	00f6bc23          	sd	a5,24(a3)
   17038:	00d7b823          	sd	a3,16(a5)
   1703c:	f75ff06f          	j	16fb0 <_realloc_r+0x128>
   17040:	00c00793          	li	a5,12
   17044:	00f92023          	sw	a5,0(s2)
   17048:	00000513          	li	a0,0
   1704c:	f9dff06f          	j	16fe8 <_realloc_r+0x160>
   17050:	008ab703          	ld	a4,8(s5)
   17054:	008a85b3          	add	a1,s5,s0
   17058:	0017e693          	ori	a3,a5,1
   1705c:	00177713          	andi	a4,a4,1
   17060:	00876433          	or	s0,a4,s0
   17064:	008ab423          	sd	s0,8(s5)
   17068:	00d5b423          	sd	a3,8(a1)
   1706c:	00f587b3          	add	a5,a1,a5
   17070:	0087b703          	ld	a4,8(a5)
   17074:	01058593          	addi	a1,a1,16
   17078:	00090513          	mv	a0,s2
   1707c:	00176713          	ori	a4,a4,1
   17080:	00e7b423          	sd	a4,8(a5)
   17084:	d1cfd0ef          	jal	145a0 <_free_r>
   17088:	f55ff06f          	j	16fdc <_realloc_r+0x154>
   1708c:	04813083          	ld	ra,72(sp)
   17090:	04013403          	ld	s0,64(sp)
   17094:	03813483          	ld	s1,56(sp)
   17098:	03013903          	ld	s2,48(sp)
   1709c:	02813983          	ld	s3,40(sp)
   170a0:	02013a03          	ld	s4,32(sp)
   170a4:	01813a83          	ld	s5,24(sp)
   170a8:	01013b03          	ld	s6,16(sp)
   170ac:	00813b83          	ld	s7,8(sp)
   170b0:	00013c03          	ld	s8,0(sp)
   170b4:	00060593          	mv	a1,a2
   170b8:	05010113          	addi	sp,sp,80
   170bc:	88cfe06f          	j	15148 <_malloc_r>
   170c0:	0017f793          	andi	a5,a5,1
   170c4:	e60794e3          	bnez	a5,16f2c <_realloc_r+0xa4>
   170c8:	ff09bb83          	ld	s7,-16(s3)
   170cc:	417a8bb3          	sub	s7,s5,s7
   170d0:	008bb783          	ld	a5,8(s7)
   170d4:	ffc7f793          	andi	a5,a5,-4
   170d8:	00f70b33          	add	s6,a4,a5
   170dc:	0a8b4e63          	blt	s6,s0,17198 <_realloc_r+0x310>
   170e0:	0186b783          	ld	a5,24(a3)
   170e4:	0106b703          	ld	a4,16(a3)
   170e8:	ff8a0613          	addi	a2,s4,-8
   170ec:	010b8493          	addi	s1,s7,16
   170f0:	00f73c23          	sd	a5,24(a4)
   170f4:	00e7b823          	sd	a4,16(a5)
   170f8:	010bb703          	ld	a4,16(s7)
   170fc:	018bb783          	ld	a5,24(s7)
   17100:	00f73c23          	sd	a5,24(a4)
   17104:	00e7b823          	sd	a4,16(a5)
   17108:	04800793          	li	a5,72
   1710c:	1ec7e463          	bltu	a5,a2,172f4 <_realloc_r+0x46c>
   17110:	02700713          	li	a4,39
   17114:	00048793          	mv	a5,s1
   17118:	04c77663          	bleu	a2,a4,17164 <_realloc_r+0x2dc>
   1711c:	0009b783          	ld	a5,0(s3)
   17120:	00fbb823          	sd	a5,16(s7)
   17124:	0089b783          	ld	a5,8(s3)
   17128:	00fbbc23          	sd	a5,24(s7)
   1712c:	03700793          	li	a5,55
   17130:	24c7f863          	bleu	a2,a5,17380 <_realloc_r+0x4f8>
   17134:	0109b783          	ld	a5,16(s3)
   17138:	02fbb023          	sd	a5,32(s7)
   1713c:	0189b783          	ld	a5,24(s3)
   17140:	02fbb423          	sd	a5,40(s7)
   17144:	04800793          	li	a5,72
   17148:	0af61863          	bne	a2,a5,171f8 <_realloc_r+0x370>
   1714c:	0209b703          	ld	a4,32(s3)
   17150:	040b8793          	addi	a5,s7,64
   17154:	03098993          	addi	s3,s3,48
   17158:	02ebb823          	sd	a4,48(s7)
   1715c:	ff89b703          	ld	a4,-8(s3)
   17160:	02ebbc23          	sd	a4,56(s7)
   17164:	0009b703          	ld	a4,0(s3)
   17168:	000b0a13          	mv	s4,s6
   1716c:	000b8a93          	mv	s5,s7
   17170:	00e7b023          	sd	a4,0(a5)
   17174:	0089b703          	ld	a4,8(s3)
   17178:	00e7b423          	sd	a4,8(a5)
   1717c:	0109b703          	ld	a4,16(s3)
   17180:	00e7b823          	sd	a4,16(a5)
   17184:	e2dff06f          	j	16fb0 <_realloc_r+0x128>
   17188:	ff09bb83          	ld	s7,-16(s3)
   1718c:	417a8bb3          	sub	s7,s5,s7
   17190:	008bb783          	ld	a5,8(s7)
   17194:	ffc7f793          	andi	a5,a5,-4
   17198:	00fa0b33          	add	s6,s4,a5
   1719c:	d88b48e3          	blt	s6,s0,16f2c <_realloc_r+0xa4>
   171a0:	018bb783          	ld	a5,24(s7)
   171a4:	010bb703          	ld	a4,16(s7)
   171a8:	ff8a0613          	addi	a2,s4,-8
   171ac:	04800693          	li	a3,72
   171b0:	00f73c23          	sd	a5,24(a4)
   171b4:	00e7b823          	sd	a4,16(a5)
   171b8:	010b8493          	addi	s1,s7,16
   171bc:	12c6ec63          	bltu	a3,a2,172f4 <_realloc_r+0x46c>
   171c0:	02700713          	li	a4,39
   171c4:	00048793          	mv	a5,s1
   171c8:	f8c77ee3          	bleu	a2,a4,17164 <_realloc_r+0x2dc>
   171cc:	0009b783          	ld	a5,0(s3)
   171d0:	00fbb823          	sd	a5,16(s7)
   171d4:	0089b783          	ld	a5,8(s3)
   171d8:	00fbbc23          	sd	a5,24(s7)
   171dc:	03700793          	li	a5,55
   171e0:	1ac7f063          	bleu	a2,a5,17380 <_realloc_r+0x4f8>
   171e4:	0109b783          	ld	a5,16(s3)
   171e8:	02fbb023          	sd	a5,32(s7)
   171ec:	0189b783          	ld	a5,24(s3)
   171f0:	02fbb423          	sd	a5,40(s7)
   171f4:	f4d60ce3          	beq	a2,a3,1714c <_realloc_r+0x2c4>
   171f8:	030b8793          	addi	a5,s7,48
   171fc:	02098993          	addi	s3,s3,32
   17200:	f65ff06f          	j	17164 <_realloc_r+0x2dc>
   17204:	0086b703          	ld	a4,8(a3)
   17208:	02040693          	addi	a3,s0,32
   1720c:	ffc77713          	andi	a4,a4,-4
   17210:	01470733          	add	a4,a4,s4
   17214:	0ed75c63          	ble	a3,a4,1730c <_realloc_r+0x484>
   17218:	0017f793          	andi	a5,a5,1
   1721c:	d00798e3          	bnez	a5,16f2c <_realloc_r+0xa4>
   17220:	ff09bb83          	ld	s7,-16(s3)
   17224:	417a8bb3          	sub	s7,s5,s7
   17228:	008bb783          	ld	a5,8(s7)
   1722c:	ffc7f793          	andi	a5,a5,-4
   17230:	00e78c33          	add	s8,a5,a4
   17234:	f6dc42e3          	blt	s8,a3,17198 <_realloc_r+0x310>
   17238:	018bb783          	ld	a5,24(s7)
   1723c:	010bb703          	ld	a4,16(s7)
   17240:	ff8a0613          	addi	a2,s4,-8
   17244:	04800693          	li	a3,72
   17248:	00f73c23          	sd	a5,24(a4)
   1724c:	00e7b823          	sd	a4,16(a5)
   17250:	010b8493          	addi	s1,s7,16
   17254:	14c6ea63          	bltu	a3,a2,173a8 <_realloc_r+0x520>
   17258:	02700713          	li	a4,39
   1725c:	00048793          	mv	a5,s1
   17260:	02c77263          	bleu	a2,a4,17284 <_realloc_r+0x3fc>
   17264:	0009b783          	ld	a5,0(s3)
   17268:	00fbb823          	sd	a5,16(s7)
   1726c:	0089b783          	ld	a5,8(s3)
   17270:	00fbbc23          	sd	a5,24(s7)
   17274:	03700793          	li	a5,55
   17278:	14c7e063          	bltu	a5,a2,173b8 <_realloc_r+0x530>
   1727c:	020b8793          	addi	a5,s7,32
   17280:	01098993          	addi	s3,s3,16
   17284:	0009b703          	ld	a4,0(s3)
   17288:	00e7b023          	sd	a4,0(a5)
   1728c:	0089b703          	ld	a4,8(s3)
   17290:	00e7b423          	sd	a4,8(a5)
   17294:	0109b703          	ld	a4,16(s3)
   17298:	00e7b823          	sd	a4,16(a5)
   1729c:	008b8733          	add	a4,s7,s0
   172a0:	408c07b3          	sub	a5,s8,s0
   172a4:	00eb3823          	sd	a4,16(s6)
   172a8:	0017e793          	ori	a5,a5,1
   172ac:	00f73423          	sd	a5,8(a4)
   172b0:	008bb783          	ld	a5,8(s7)
   172b4:	00090513          	mv	a0,s2
   172b8:	0017f793          	andi	a5,a5,1
   172bc:	0087e433          	or	s0,a5,s0
   172c0:	008bb423          	sd	s0,8(s7)
   172c4:	9fdfe0ef          	jal	15cc0 <__malloc_unlock>
   172c8:	00048513          	mv	a0,s1
   172cc:	d1dff06f          	j	16fe8 <_realloc_r+0x160>
   172d0:	0009b703          	ld	a4,0(s3)
   172d4:	00e53023          	sd	a4,0(a0)
   172d8:	0089b703          	ld	a4,8(s3)
   172dc:	00e53423          	sd	a4,8(a0)
   172e0:	03700713          	li	a4,55
   172e4:	06c76463          	bltu	a4,a2,1734c <_realloc_r+0x4c4>
   172e8:	01050793          	addi	a5,a0,16
   172ec:	01098713          	addi	a4,s3,16
   172f0:	c81ff06f          	j	16f70 <_realloc_r+0xe8>
   172f4:	00098593          	mv	a1,s3
   172f8:	00048513          	mv	a0,s1
   172fc:	fc4fe0ef          	jal	15ac0 <memmove>
   17300:	000b0a13          	mv	s4,s6
   17304:	000b8a93          	mv	s5,s7
   17308:	ca9ff06f          	j	16fb0 <_realloc_r+0x128>
   1730c:	008a8ab3          	add	s5,s5,s0
   17310:	408707b3          	sub	a5,a4,s0
   17314:	015b3823          	sd	s5,16(s6)
   17318:	0017e793          	ori	a5,a5,1
   1731c:	00fab423          	sd	a5,8(s5)
   17320:	ff89b783          	ld	a5,-8(s3)
   17324:	00090513          	mv	a0,s2
   17328:	0017f793          	andi	a5,a5,1
   1732c:	0087e433          	or	s0,a5,s0
   17330:	fe89bc23          	sd	s0,-8(s3)
   17334:	98dfe0ef          	jal	15cc0 <__malloc_unlock>
   17338:	00098513          	mv	a0,s3
   1733c:	cadff06f          	j	16fe8 <_realloc_r+0x160>
   17340:	00098593          	mv	a1,s3
   17344:	f7cfe0ef          	jal	15ac0 <memmove>
   17348:	c41ff06f          	j	16f88 <_realloc_r+0x100>
   1734c:	0109b703          	ld	a4,16(s3)
   17350:	00e53823          	sd	a4,16(a0)
   17354:	0189b703          	ld	a4,24(s3)
   17358:	00e53c23          	sd	a4,24(a0)
   1735c:	02f60863          	beq	a2,a5,1738c <_realloc_r+0x504>
   17360:	02050793          	addi	a5,a0,32
   17364:	02098713          	addi	a4,s3,32
   17368:	c09ff06f          	j	16f70 <_realloc_r+0xe8>
   1736c:	ff853783          	ld	a5,-8(a0)
   17370:	00098493          	mv	s1,s3
   17374:	ffc7f793          	andi	a5,a5,-4
   17378:	00fa0a33          	add	s4,s4,a5
   1737c:	c35ff06f          	j	16fb0 <_realloc_r+0x128>
   17380:	020b8793          	addi	a5,s7,32
   17384:	01098993          	addi	s3,s3,16
   17388:	dddff06f          	j	17164 <_realloc_r+0x2dc>
   1738c:	0209b683          	ld	a3,32(s3)
   17390:	03050793          	addi	a5,a0,48
   17394:	03098713          	addi	a4,s3,48
   17398:	02d53023          	sd	a3,32(a0)
   1739c:	0289b683          	ld	a3,40(s3)
   173a0:	02d53423          	sd	a3,40(a0)
   173a4:	bcdff06f          	j	16f70 <_realloc_r+0xe8>
   173a8:	00098593          	mv	a1,s3
   173ac:	00048513          	mv	a0,s1
   173b0:	f10fe0ef          	jal	15ac0 <memmove>
   173b4:	ee9ff06f          	j	1729c <_realloc_r+0x414>
   173b8:	0109b783          	ld	a5,16(s3)
   173bc:	02fbb023          	sd	a5,32(s7)
   173c0:	0189b783          	ld	a5,24(s3)
   173c4:	02fbb423          	sd	a5,40(s7)
   173c8:	02d60063          	beq	a2,a3,173e8 <_realloc_r+0x560>
   173cc:	030b8793          	addi	a5,s7,48
   173d0:	02098993          	addi	s3,s3,32
   173d4:	eb1ff06f          	j	17284 <_realloc_r+0x3fc>
   173d8:	00090513          	mv	a0,s2
   173dc:	8e5fe0ef          	jal	15cc0 <__malloc_unlock>
   173e0:	00000513          	li	a0,0
   173e4:	c05ff06f          	j	16fe8 <_realloc_r+0x160>
   173e8:	0209b703          	ld	a4,32(s3)
   173ec:	040b8793          	addi	a5,s7,64
   173f0:	03098993          	addi	s3,s3,48
   173f4:	02ebb823          	sd	a4,48(s7)
   173f8:	ff89b703          	ld	a4,-8(s3)
   173fc:	02ebbc23          	sd	a4,56(s7)
   17400:	e85ff06f          	j	17284 <_realloc_r+0x3fc>

0000000000017404 <__fpclassifyd>:
   17404:	e20507d3          	fmv.x.d	a5,fa0
   17408:	00200513          	li	a0,2
   1740c:	4207d713          	srai	a4,a5,0x20
   17410:	0007879b          	sext.w	a5,a5
   17414:	00f766b3          	or	a3,a4,a5
   17418:	00069463          	bnez	a3,17420 <__fpclassifyd+0x1c>
   1741c:	00008067          	ret
   17420:	800006b7          	lui	a3,0x80000
   17424:	04d70863          	beq	a4,a3,17474 <__fpclassifyd+0x70>
   17428:	fff006b7          	lui	a3,0xfff00
   1742c:	00d706bb          	addw	a3,a4,a3
   17430:	7fe00637          	lui	a2,0x7fe00
   17434:	00400513          	li	a0,4
   17438:	fec6e2e3          	bltu	a3,a2,1741c <__fpclassifyd+0x18>
   1743c:	7ff006b7          	lui	a3,0x7ff00
   17440:	00d706bb          	addw	a3,a4,a3
   17444:	fcc6ece3          	bltu	a3,a2,1741c <__fpclassifyd+0x18>
   17448:	800006b7          	lui	a3,0x80000
   1744c:	fff6c693          	not	a3,a3
   17450:	00d77733          	and	a4,a4,a3
   17454:	001006b7          	lui	a3,0x100
   17458:	00300513          	li	a0,3
   1745c:	fcd760e3          	bltu	a4,a3,1741c <__fpclassifyd+0x18>
   17460:	7ff006b7          	lui	a3,0x7ff00
   17464:	00000513          	li	a0,0
   17468:	fad71ae3          	bne	a4,a3,1741c <__fpclassifyd+0x18>
   1746c:	0017b513          	seqz	a0,a5
   17470:	00008067          	ret
   17474:	fc079ae3          	bnez	a5,17448 <__fpclassifyd+0x44>
   17478:	00008067          	ret

000000000001747c <__sread>:
   1747c:	01259503          	lh	a0,18(a1)
   17480:	ff010113          	addi	sp,sp,-16
   17484:	00813023          	sd	s0,0(sp)
   17488:	00058413          	mv	s0,a1
   1748c:	00060593          	mv	a1,a2
   17490:	00068613          	mv	a2,a3
   17494:	00113423          	sd	ra,8(sp)
   17498:	57d010ef          	jal	19214 <read>
   1749c:	02054063          	bltz	a0,174bc <__sread+0x40>
   174a0:	09043783          	ld	a5,144(s0)
   174a4:	00813083          	ld	ra,8(sp)
   174a8:	00a787b3          	add	a5,a5,a0
   174ac:	08f43823          	sd	a5,144(s0)
   174b0:	00013403          	ld	s0,0(sp)
   174b4:	01010113          	addi	sp,sp,16
   174b8:	00008067          	ret
   174bc:	01045703          	lhu	a4,16(s0)
   174c0:	fffff7b7          	lui	a5,0xfffff
   174c4:	00813083          	ld	ra,8(sp)
   174c8:	fff7879b          	addiw	a5,a5,-1
   174cc:	00f777b3          	and	a5,a4,a5
   174d0:	00f41823          	sh	a5,16(s0)
   174d4:	00013403          	ld	s0,0(sp)
   174d8:	01010113          	addi	sp,sp,16
   174dc:	00008067          	ret

00000000000174e0 <__seofread>:
   174e0:	00000513          	li	a0,0
   174e4:	00008067          	ret

00000000000174e8 <__swrite>:
   174e8:	01059703          	lh	a4,16(a1)
   174ec:	fd010113          	addi	sp,sp,-48
   174f0:	02813023          	sd	s0,32(sp)
   174f4:	00913c23          	sd	s1,24(sp)
   174f8:	02113423          	sd	ra,40(sp)
   174fc:	10077793          	andi	a5,a4,256
   17500:	00058413          	mv	s0,a1
   17504:	00060493          	mv	s1,a2
   17508:	02078063          	beqz	a5,17528 <__swrite+0x40>
   1750c:	01259503          	lh	a0,18(a1)
   17510:	00200613          	li	a2,2
   17514:	00000593          	li	a1,0
   17518:	00d13423          	sd	a3,8(sp)
   1751c:	4e5010ef          	jal	19200 <lseek>
   17520:	01041703          	lh	a4,16(s0)
   17524:	00813683          	ld	a3,8(sp)
   17528:	fffff7b7          	lui	a5,0xfffff
   1752c:	fff7879b          	addiw	a5,a5,-1
   17530:	00f777b3          	and	a5,a4,a5
   17534:	01241503          	lh	a0,18(s0)
   17538:	00f41823          	sh	a5,16(s0)
   1753c:	00048593          	mv	a1,s1
   17540:	02813083          	ld	ra,40(sp)
   17544:	02013403          	ld	s0,32(sp)
   17548:	01813483          	ld	s1,24(sp)
   1754c:	00068613          	mv	a2,a3
   17550:	03010113          	addi	sp,sp,48
   17554:	4d50106f          	j	19228 <write>

0000000000017558 <__sseek>:
   17558:	01259503          	lh	a0,18(a1)
   1755c:	ff010113          	addi	sp,sp,-16
   17560:	00813023          	sd	s0,0(sp)
   17564:	00058413          	mv	s0,a1
   17568:	00060593          	mv	a1,a2
   1756c:	00068613          	mv	a2,a3
   17570:	00113423          	sd	ra,8(sp)
   17574:	48d010ef          	jal	19200 <lseek>
   17578:	fff00793          	li	a5,-1
   1757c:	01045703          	lhu	a4,16(s0)
   17580:	02f50263          	beq	a0,a5,175a4 <__sseek+0x4c>
   17584:	00813083          	ld	ra,8(sp)
   17588:	000017b7          	lui	a5,0x1
   1758c:	00f767b3          	or	a5,a4,a5
   17590:	08a43823          	sd	a0,144(s0)
   17594:	00f41823          	sh	a5,16(s0)
   17598:	00013403          	ld	s0,0(sp)
   1759c:	01010113          	addi	sp,sp,16
   175a0:	00008067          	ret
   175a4:	fffff7b7          	lui	a5,0xfffff
   175a8:	00813083          	ld	ra,8(sp)
   175ac:	fff7879b          	addiw	a5,a5,-1
   175b0:	00f777b3          	and	a5,a4,a5
   175b4:	00f41823          	sh	a5,16(s0)
   175b8:	00013403          	ld	s0,0(sp)
   175bc:	01010113          	addi	sp,sp,16
   175c0:	00008067          	ret

00000000000175c4 <__sclose>:
   175c4:	01259503          	lh	a0,18(a1)
   175c8:	50d0106f          	j	192d4 <close>

00000000000175cc <strcmp>:
   175cc:	00b56733          	or	a4,a0,a1
   175d0:	fff00393          	li	t2,-1
   175d4:	00777713          	andi	a4,a4,7
   175d8:	0c071c63          	bnez	a4,176b0 <strcmp+0xe4>
   175dc:	00005e17          	auipc	t3,0x5
   175e0:	074e3e03          	ld	t3,116(t3) # 1c650 <mask>
   175e4:	00053603          	ld	a2,0(a0)
   175e8:	0005b683          	ld	a3,0(a1)
   175ec:	01c672b3          	and	t0,a2,t3
   175f0:	01c66333          	or	t1,a2,t3
   175f4:	01c282b3          	add	t0,t0,t3
   175f8:	0062e2b3          	or	t0,t0,t1
   175fc:	0c729e63          	bne	t0,t2,176d8 <strcmp+0x10c>
   17600:	04d61663          	bne	a2,a3,1764c <strcmp+0x80>
   17604:	00853603          	ld	a2,8(a0)
   17608:	0085b683          	ld	a3,8(a1)
   1760c:	01c672b3          	and	t0,a2,t3
   17610:	01c66333          	or	t1,a2,t3
   17614:	01c282b3          	add	t0,t0,t3
   17618:	0062e2b3          	or	t0,t0,t1
   1761c:	0a729a63          	bne	t0,t2,176d0 <strcmp+0x104>
   17620:	02d61663          	bne	a2,a3,1764c <strcmp+0x80>
   17624:	01053603          	ld	a2,16(a0)
   17628:	0105b683          	ld	a3,16(a1)
   1762c:	01c672b3          	and	t0,a2,t3
   17630:	01c66333          	or	t1,a2,t3
   17634:	01c282b3          	add	t0,t0,t3
   17638:	0062e2b3          	or	t0,t0,t1
   1763c:	0a729463          	bne	t0,t2,176e4 <strcmp+0x118>
   17640:	01850513          	addi	a0,a0,24
   17644:	01858593          	addi	a1,a1,24
   17648:	f8d60ee3          	beq	a2,a3,175e4 <strcmp+0x18>
   1764c:	03061713          	slli	a4,a2,0x30
   17650:	03069793          	slli	a5,a3,0x30
   17654:	02f71a63          	bne	a4,a5,17688 <strcmp+0xbc>
   17658:	02061713          	slli	a4,a2,0x20
   1765c:	02069793          	slli	a5,a3,0x20
   17660:	02f71463          	bne	a4,a5,17688 <strcmp+0xbc>
   17664:	01061713          	slli	a4,a2,0x10
   17668:	01069793          	slli	a5,a3,0x10
   1766c:	00f71e63          	bne	a4,a5,17688 <strcmp+0xbc>
   17670:	03065713          	srli	a4,a2,0x30
   17674:	0306d793          	srli	a5,a3,0x30
   17678:	40f70533          	sub	a0,a4,a5
   1767c:	0ff57593          	andi	a1,a0,255
   17680:	02059063          	bnez	a1,176a0 <strcmp+0xd4>
   17684:	00008067          	ret
   17688:	03075713          	srli	a4,a4,0x30
   1768c:	0307d793          	srli	a5,a5,0x30
   17690:	40f70533          	sub	a0,a4,a5
   17694:	0ff57593          	andi	a1,a0,255
   17698:	00059463          	bnez	a1,176a0 <strcmp+0xd4>
   1769c:	00008067          	ret
   176a0:	0ff77713          	andi	a4,a4,255
   176a4:	0ff7f793          	andi	a5,a5,255
   176a8:	40f70533          	sub	a0,a4,a5
   176ac:	00008067          	ret
   176b0:	00054603          	lbu	a2,0(a0)
   176b4:	0005c683          	lbu	a3,0(a1)
   176b8:	00150513          	addi	a0,a0,1
   176bc:	00158593          	addi	a1,a1,1
   176c0:	00d61463          	bne	a2,a3,176c8 <strcmp+0xfc>
   176c4:	fe0616e3          	bnez	a2,176b0 <strcmp+0xe4>
   176c8:	40d60533          	sub	a0,a2,a3
   176cc:	00008067          	ret
   176d0:	00850513          	addi	a0,a0,8
   176d4:	00858593          	addi	a1,a1,8
   176d8:	fcd61ce3          	bne	a2,a3,176b0 <strcmp+0xe4>
   176dc:	00000513          	li	a0,0
   176e0:	00008067          	ret
   176e4:	01050513          	addi	a0,a0,16
   176e8:	01058593          	addi	a1,a1,16
   176ec:	fcd612e3          	bne	a2,a3,176b0 <strcmp+0xe4>
   176f0:	00000513          	li	a0,0
   176f4:	00008067          	ret

00000000000176f8 <strlen>:
   176f8:	00757793          	andi	a5,a0,7
   176fc:	00050593          	mv	a1,a0
   17700:	06079a63          	bnez	a5,17774 <strlen+0x7c>
   17704:	0001c7b7          	lui	a5,0x1c
   17708:	6507b683          	ld	a3,1616(a5) # 1c650 <mask>
   1770c:	fff00613          	li	a2,-1
   17710:	00850513          	addi	a0,a0,8
   17714:	ff853783          	ld	a5,-8(a0)
   17718:	00d7f733          	and	a4,a5,a3
   1771c:	00d70733          	add	a4,a4,a3
   17720:	00d7e7b3          	or	a5,a5,a3
   17724:	00f767b3          	or	a5,a4,a5
   17728:	fec784e3          	beq	a5,a2,17710 <strlen+0x18>
   1772c:	ff854783          	lbu	a5,-8(a0)
   17730:	40b505b3          	sub	a1,a0,a1
   17734:	06078263          	beqz	a5,17798 <strlen+0xa0>
   17738:	ff954783          	lbu	a5,-7(a0)
   1773c:	04078a63          	beqz	a5,17790 <strlen+0x98>
   17740:	ffa54783          	lbu	a5,-6(a0)
   17744:	06078263          	beqz	a5,177a8 <strlen+0xb0>
   17748:	ffb54783          	lbu	a5,-5(a0)
   1774c:	04078a63          	beqz	a5,177a0 <strlen+0xa8>
   17750:	ffc54783          	lbu	a5,-4(a0)
   17754:	ffd54703          	lbu	a4,-3(a0)
   17758:	ffe54683          	lbu	a3,-2(a0)
   1775c:	04078a63          	beqz	a5,177b0 <strlen+0xb8>
   17760:	04070c63          	beqz	a4,177b8 <strlen+0xc0>
   17764:	fff58513          	addi	a0,a1,-1
   17768:	04068c63          	beqz	a3,177c0 <strlen+0xc8>
   1776c:	00008067          	ret
   17770:	f8070ae3          	beqz	a4,17704 <strlen+0xc>
   17774:	00054783          	lbu	a5,0(a0)
   17778:	00150513          	addi	a0,a0,1
   1777c:	00757713          	andi	a4,a0,7
   17780:	fe0798e3          	bnez	a5,17770 <strlen+0x78>
   17784:	40b50533          	sub	a0,a0,a1
   17788:	fff50513          	addi	a0,a0,-1
   1778c:	00008067          	ret
   17790:	ff958513          	addi	a0,a1,-7
   17794:	00008067          	ret
   17798:	ff858513          	addi	a0,a1,-8
   1779c:	00008067          	ret
   177a0:	ffb58513          	addi	a0,a1,-5
   177a4:	00008067          	ret
   177a8:	ffa58513          	addi	a0,a1,-6
   177ac:	00008067          	ret
   177b0:	ffc58513          	addi	a0,a1,-4
   177b4:	00008067          	ret
   177b8:	ffd58513          	addi	a0,a1,-3
   177bc:	00008067          	ret
   177c0:	ffe58513          	addi	a0,a1,-2
   177c4:	00008067          	ret

00000000000177c8 <__sprint_r.part.0>:
   177c8:	0ac5a783          	lw	a5,172(a1)
   177cc:	fb010113          	addi	sp,sp,-80
   177d0:	01613823          	sd	s6,16(sp)
   177d4:	04113423          	sd	ra,72(sp)
   177d8:	04813023          	sd	s0,64(sp)
   177dc:	02913c23          	sd	s1,56(sp)
   177e0:	03213823          	sd	s2,48(sp)
   177e4:	03313423          	sd	s3,40(sp)
   177e8:	03413023          	sd	s4,32(sp)
   177ec:	01513c23          	sd	s5,24(sp)
   177f0:	01713423          	sd	s7,8(sp)
   177f4:	03279713          	slli	a4,a5,0x32
   177f8:	00060b13          	mv	s6,a2
   177fc:	0a075863          	bgez	a4,178ac <__sprint_r.part.0+0xe4>
   17800:	01063783          	ld	a5,16(a2) # 7fe00010 <_gp+0x7fde3250>
   17804:	00058a13          	mv	s4,a1
   17808:	00050a93          	mv	s5,a0
   1780c:	00063b83          	ld	s7,0(a2)
   17810:	fff00993          	li	s3,-1
   17814:	08078863          	beqz	a5,178a4 <__sprint_r.part.0+0xdc>
   17818:	008bb903          	ld	s2,8(s7)
   1781c:	000bb483          	ld	s1,0(s7)
   17820:	00000413          	li	s0,0
   17824:	00295913          	srli	s2,s2,0x2
   17828:	0009091b          	sext.w	s2,s2
   1782c:	01204863          	bgtz	s2,1783c <__sprint_r.part.0+0x74>
   17830:	0600006f          	j	17890 <__sprint_r.part.0+0xc8>
   17834:	00448493          	addi	s1,s1,4
   17838:	04890a63          	beq	s2,s0,1788c <__sprint_r.part.0+0xc4>
   1783c:	0004a583          	lw	a1,0(s1)
   17840:	000a0613          	mv	a2,s4
   17844:	000a8513          	mv	a0,s5
   17848:	6ac010ef          	jal	18ef4 <_fputwc_r>
   1784c:	0014041b          	addiw	s0,s0,1
   17850:	ff3512e3          	bne	a0,s3,17834 <__sprint_r.part.0+0x6c>
   17854:	00098513          	mv	a0,s3
   17858:	04813083          	ld	ra,72(sp)
   1785c:	000b3823          	sd	zero,16(s6)
   17860:	000b2423          	sw	zero,8(s6)
   17864:	04013403          	ld	s0,64(sp)
   17868:	03813483          	ld	s1,56(sp)
   1786c:	03013903          	ld	s2,48(sp)
   17870:	02813983          	ld	s3,40(sp)
   17874:	02013a03          	ld	s4,32(sp)
   17878:	01813a83          	ld	s5,24(sp)
   1787c:	01013b03          	ld	s6,16(sp)
   17880:	00813b83          	ld	s7,8(sp)
   17884:	05010113          	addi	sp,sp,80
   17888:	00008067          	ret
   1788c:	010b3783          	ld	a5,16(s6)
   17890:	00291913          	slli	s2,s2,0x2
   17894:	412787b3          	sub	a5,a5,s2
   17898:	00fb3823          	sd	a5,16(s6)
   1789c:	010b8b93          	addi	s7,s7,16
   178a0:	f6079ce3          	bnez	a5,17818 <__sprint_r.part.0+0x50>
   178a4:	00000513          	li	a0,0
   178a8:	fb1ff06f          	j	17858 <__sprint_r.part.0+0x90>
   178ac:	804fd0ef          	jal	148b0 <__sfvwrite_r>
   178b0:	fa9ff06f          	j	17858 <__sprint_r.part.0+0x90>

00000000000178b4 <__sprint_r>:
   178b4:	01063703          	ld	a4,16(a2)
   178b8:	00070463          	beqz	a4,178c0 <__sprint_r+0xc>
   178bc:	f0dff06f          	j	177c8 <__sprint_r.part.0>
   178c0:	00062423          	sw	zero,8(a2)
   178c4:	00000513          	li	a0,0
   178c8:	00008067          	ret

00000000000178cc <_vfiprintf_r>:
   178cc:	e6010113          	addi	sp,sp,-416
   178d0:	17513423          	sd	s5,360(sp)
   178d4:	17613023          	sd	s6,352(sp)
   178d8:	15a13023          	sd	s10,320(sp)
   178dc:	18113c23          	sd	ra,408(sp)
   178e0:	18813823          	sd	s0,400(sp)
   178e4:	18913423          	sd	s1,392(sp)
   178e8:	19213023          	sd	s2,384(sp)
   178ec:	17313c23          	sd	s3,376(sp)
   178f0:	17413823          	sd	s4,368(sp)
   178f4:	15713c23          	sd	s7,344(sp)
   178f8:	15813823          	sd	s8,336(sp)
   178fc:	15913423          	sd	s9,328(sp)
   17900:	13b13c23          	sd	s11,312(sp)
   17904:	00d13423          	sd	a3,8(sp)
   17908:	00050a93          	mv	s5,a0
   1790c:	00058d13          	mv	s10,a1
   17910:	00060b13          	mv	s6,a2
   17914:	00050663          	beqz	a0,17920 <_vfiprintf_r+0x54>
   17918:	05052783          	lw	a5,80(a0)
   1791c:	1e078c63          	beqz	a5,17b14 <_vfiprintf_r+0x248>
   17920:	010d1683          	lh	a3,16(s10)
   17924:	03069793          	slli	a5,a3,0x30
   17928:	0307d793          	srli	a5,a5,0x30
   1792c:	03279713          	slli	a4,a5,0x32
   17930:	02074a63          	bltz	a4,17964 <_vfiprintf_r+0x98>
   17934:	000027b7          	lui	a5,0x2
   17938:	0acd2603          	lw	a2,172(s10)
   1793c:	00f6e7b3          	or	a5,a3,a5
   17940:	0107979b          	slliw	a5,a5,0x10
   17944:	ffffe737          	lui	a4,0xffffe
   17948:	4107d79b          	sraiw	a5,a5,0x10
   1794c:	fff7071b          	addiw	a4,a4,-1
   17950:	00e67733          	and	a4,a2,a4
   17954:	00fd1823          	sh	a5,16(s10)
   17958:	03079793          	slli	a5,a5,0x30
   1795c:	0aed2623          	sw	a4,172(s10)
   17960:	0307d793          	srli	a5,a5,0x30
   17964:	0087f713          	andi	a4,a5,8
   17968:	12070a63          	beqz	a4,17a9c <_vfiprintf_r+0x1d0>
   1796c:	018d3703          	ld	a4,24(s10)
   17970:	12070663          	beqz	a4,17a9c <_vfiprintf_r+0x1d0>
   17974:	01a7f793          	andi	a5,a5,26
   17978:	00a00713          	li	a4,10
   1797c:	14e78063          	beq	a5,a4,17abc <_vfiprintf_r+0x1f0>
   17980:	0b010c93          	addi	s9,sp,176
   17984:	0001ac37          	lui	s8,0x1a
   17988:	0af10793          	addi	a5,sp,175
   1798c:	a88c0713          	addi	a4,s8,-1400 # 19a88 <__mprec_bigtens+0x28>
   17990:	40fc87b3          	sub	a5,s9,a5
   17994:	0001a8b7          	lui	a7,0x1a
   17998:	07913823          	sd	s9,112(sp)
   1799c:	08013023          	sd	zero,128(sp)
   179a0:	06012c23          	sw	zero,120(sp)
   179a4:	000c8413          	mv	s0,s9
   179a8:	00013c23          	sd	zero,24(sp)
   179ac:	04012c23          	sw	zero,88(sp)
   179b0:	00e13823          	sd	a4,16(sp)
   179b4:	bf088c13          	addi	s8,a7,-1040 # 19bf0 <blanks.4136>
   179b8:	04f12e23          	sw	a5,92(sp)
   179bc:	000b4783          	lbu	a5,0(s6)
   179c0:	4e078ee3          	beqz	a5,186bc <_vfiprintf_r+0xdf0>
   179c4:	02500713          	li	a4,37
   179c8:	000b0493          	mv	s1,s6
   179cc:	00e79663          	bne	a5,a4,179d8 <_vfiprintf_r+0x10c>
   179d0:	0580006f          	j	17a28 <_vfiprintf_r+0x15c>
   179d4:	00e78863          	beq	a5,a4,179e4 <_vfiprintf_r+0x118>
   179d8:	00148493          	addi	s1,s1,1
   179dc:	0004c783          	lbu	a5,0(s1)
   179e0:	fe079ae3          	bnez	a5,179d4 <_vfiprintf_r+0x108>
   179e4:	4164893b          	subw	s2,s1,s6
   179e8:	04090063          	beqz	s2,17a28 <_vfiprintf_r+0x15c>
   179ec:	08013703          	ld	a4,128(sp)
   179f0:	07812783          	lw	a5,120(sp)
   179f4:	00090613          	mv	a2,s2
   179f8:	00e60733          	add	a4,a2,a4
   179fc:	0017879b          	addiw	a5,a5,1
   17a00:	00c43423          	sd	a2,8(s0)
   17a04:	01643023          	sd	s6,0(s0)
   17a08:	08e13023          	sd	a4,128(sp)
   17a0c:	06f12c23          	sw	a5,120(sp)
   17a10:	00700613          	li	a2,7
   17a14:	01040413          	addi	s0,s0,16
   17a18:	06f64463          	blt	a2,a5,17a80 <_vfiprintf_r+0x1b4>
   17a1c:	05812783          	lw	a5,88(sp)
   17a20:	012787bb          	addw	a5,a5,s2
   17a24:	04f12c23          	sw	a5,88(sp)
   17a28:	0004c783          	lbu	a5,0(s1)
   17a2c:	580786e3          	beqz	a5,187b8 <_vfiprintf_r+0xeec>
   17a30:	00148813          	addi	a6,s1,1
   17a34:	060103a3          	sb	zero,103(sp)
   17a38:	00000513          	li	a0,0
   17a3c:	00000e93          	li	t4,0
   17a40:	fff00493          	li	s1,-1
   17a44:	00000913          	li	s2,0
   17a48:	00000313          	li	t1,0
   17a4c:	05800613          	li	a2,88
   17a50:	00900593          	li	a1,9
   17a54:	02a00f13          	li	t5,42
   17a58:	00084703          	lbu	a4,0(a6)
   17a5c:	00180b13          	addi	s6,a6,1
   17a60:	fe07079b          	addiw	a5,a4,-32
   17a64:	66f66263          	bltu	a2,a5,180c8 <_vfiprintf_r+0x7fc>
   17a68:	01013683          	ld	a3,16(sp)
   17a6c:	02079793          	slli	a5,a5,0x20
   17a70:	01e7d793          	srli	a5,a5,0x1e
   17a74:	00d787b3          	add	a5,a5,a3
   17a78:	0007a783          	lw	a5,0(a5) # 2000 <_ftext-0xe000>
   17a7c:	00078067          	jr	a5
   17a80:	2e071ee3          	bnez	a4,1857c <_vfiprintf_r+0xcb0>
   17a84:	06012c23          	sw	zero,120(sp)
   17a88:	000c8413          	mv	s0,s9
   17a8c:	f91ff06f          	j	17a1c <_vfiprintf_r+0x150>
   17a90:	01036313          	ori	t1,t1,16
   17a94:	000b0813          	mv	a6,s6
   17a98:	fc1ff06f          	j	17a58 <_vfiprintf_r+0x18c>
   17a9c:	000d0593          	mv	a1,s10
   17aa0:	000a8513          	mv	a0,s5
   17aa4:	b4dfa0ef          	jal	125f0 <__swsetup_r>
   17aa8:	4e0512e3          	bnez	a0,1878c <_vfiprintf_r+0xec0>
   17aac:	010d5783          	lhu	a5,16(s10)
   17ab0:	00a00713          	li	a4,10
   17ab4:	01a7f793          	andi	a5,a5,26
   17ab8:	ece794e3          	bne	a5,a4,17980 <_vfiprintf_r+0xb4>
   17abc:	012d1783          	lh	a5,18(s10)
   17ac0:	ec07c0e3          	bltz	a5,17980 <_vfiprintf_r+0xb4>
   17ac4:	00813683          	ld	a3,8(sp)
   17ac8:	000b0613          	mv	a2,s6
   17acc:	000d0593          	mv	a1,s10
   17ad0:	000a8513          	mv	a0,s5
   17ad4:	6a9000ef          	jal	1897c <__sbprintf>
   17ad8:	19813083          	ld	ra,408(sp)
   17adc:	19013403          	ld	s0,400(sp)
   17ae0:	18813483          	ld	s1,392(sp)
   17ae4:	18013903          	ld	s2,384(sp)
   17ae8:	17813983          	ld	s3,376(sp)
   17aec:	17013a03          	ld	s4,368(sp)
   17af0:	16813a83          	ld	s5,360(sp)
   17af4:	16013b03          	ld	s6,352(sp)
   17af8:	15813b83          	ld	s7,344(sp)
   17afc:	15013c03          	ld	s8,336(sp)
   17b00:	14813c83          	ld	s9,328(sp)
   17b04:	14013d03          	ld	s10,320(sp)
   17b08:	13813d83          	ld	s11,312(sp)
   17b0c:	1a010113          	addi	sp,sp,416
   17b10:	00008067          	ret
   17b14:	fe8fc0ef          	jal	142fc <__sinit>
   17b18:	e09ff06f          	j	17920 <_vfiprintf_r+0x54>
   17b1c:	00813783          	ld	a5,8(sp)
   17b20:	0007a903          	lw	s2,0(a5)
   17b24:	00878793          	addi	a5,a5,8
   17b28:	00f13423          	sd	a5,8(sp)
   17b2c:	f60954e3          	bgez	s2,17a94 <_vfiprintf_r+0x1c8>
   17b30:	4120093b          	negw	s2,s2
   17b34:	00436313          	ori	t1,t1,4
   17b38:	000b0813          	mv	a6,s6
   17b3c:	f1dff06f          	j	17a58 <_vfiprintf_r+0x18c>
   17b40:	03000793          	li	a5,48
   17b44:	06f10423          	sb	a5,104(sp)
   17b48:	07800793          	li	a5,120
   17b4c:	06f104a3          	sb	a5,105(sp)
   17b50:	00813783          	ld	a5,8(sp)
   17b54:	060103a3          	sb	zero,103(sp)
   17b58:	00236613          	ori	a2,t1,2
   17b5c:	00878713          	addi	a4,a5,8
   17b60:	0007b783          	ld	a5,0(a5)
   17b64:	2e04cce3          	bltz	s1,1865c <_vfiprintf_r+0xd90>
   17b68:	f7f37313          	andi	t1,t1,-129
   17b6c:	00e13423          	sd	a4,8(sp)
   17b70:	00236313          	ori	t1,t1,2
   17b74:	32079ae3          	bnez	a5,186a8 <_vfiprintf_r+0xddc>
   17b78:	0001a7b7          	lui	a5,0x1a
   17b7c:	3f078793          	addi	a5,a5,1008 # 1a3f0 <zeroes.4137+0x7f0>
   17b80:	00f13c23          	sd	a5,24(sp)
   17b84:	00000593          	li	a1,0
   17b88:	200498e3          	bnez	s1,18598 <_vfiprintf_r+0xccc>
   17b8c:	00000493          	li	s1,0
   17b90:	00000a13          	li	s4,0
   17b94:	000c8b93          	mv	s7,s9
   17b98:	00048993          	mv	s3,s1
   17b9c:	0144d463          	ble	s4,s1,17ba4 <_vfiprintf_r+0x2d8>
   17ba0:	000a0993          	mv	s3,s4
   17ba4:	00b035b3          	snez	a1,a1
   17ba8:	00b989bb          	addw	s3,s3,a1
   17bac:	00237393          	andi	t2,t1,2
   17bb0:	00038463          	beqz	t2,17bb8 <_vfiprintf_r+0x2ec>
   17bb4:	0029899b          	addiw	s3,s3,2
   17bb8:	08437293          	andi	t0,t1,132
   17bbc:	58029463          	bnez	t0,18144 <_vfiprintf_r+0x878>
   17bc0:	41390dbb          	subw	s11,s2,s3
   17bc4:	59b05063          	blez	s11,18144 <_vfiprintf_r+0x878>
   17bc8:	01000793          	li	a5,16
   17bcc:	45b7dee3          	ble	s11,a5,18828 <_vfiprintf_r+0xf5c>
   17bd0:	01000e93          	li	t4,16
   17bd4:	08013783          	ld	a5,128(sp)
   17bd8:	07812503          	lw	a0,120(sp)
   17bdc:	05813823          	sd	s8,80(sp)
   17be0:	00700f13          	li	t5,7
   17be4:	000e8f93          	mv	t6,t4
   17be8:	0180006f          	j	17c00 <_vfiprintf_r+0x334>
   17bec:	0025061b          	addiw	a2,a0,2
   17bf0:	01040413          	addi	s0,s0,16
   17bf4:	00058513          	mv	a0,a1
   17bf8:	ff0d8d9b          	addiw	s11,s11,-16
   17bfc:	03bfdc63          	ble	s11,t6,17c34 <_vfiprintf_r+0x368>
   17c00:	01078793          	addi	a5,a5,16
   17c04:	0015059b          	addiw	a1,a0,1
   17c08:	01843023          	sd	s8,0(s0)
   17c0c:	01d43423          	sd	t4,8(s0)
   17c10:	08f13023          	sd	a5,128(sp)
   17c14:	06b12c23          	sw	a1,120(sp)
   17c18:	fcbf5ae3          	ble	a1,t5,17bec <_vfiprintf_r+0x320>
   17c1c:	4c079863          	bnez	a5,180ec <_vfiprintf_r+0x820>
   17c20:	ff0d8d9b          	addiw	s11,s11,-16
   17c24:	00000513          	li	a0,0
   17c28:	00100613          	li	a2,1
   17c2c:	000c8413          	mv	s0,s9
   17c30:	fdbfc8e3          	blt	t6,s11,17c00 <_vfiprintf_r+0x334>
   17c34:	05013703          	ld	a4,80(sp)
   17c38:	00fd87b3          	add	a5,s11,a5
   17c3c:	01b43423          	sd	s11,8(s0)
   17c40:	00e43023          	sd	a4,0(s0)
   17c44:	08f13023          	sd	a5,128(sp)
   17c48:	06c12c23          	sw	a2,120(sp)
   17c4c:	00700593          	li	a1,7
   17c50:	7ac5cc63          	blt	a1,a2,18408 <_vfiprintf_r+0xb3c>
   17c54:	06714503          	lbu	a0,103(sp)
   17c58:	01040413          	addi	s0,s0,16
   17c5c:	0016059b          	addiw	a1,a2,1
   17c60:	4e051c63          	bnez	a0,18158 <_vfiprintf_r+0x88c>
   17c64:	52038663          	beqz	t2,18190 <_vfiprintf_r+0x8c4>
   17c68:	06810613          	addi	a2,sp,104
   17c6c:	00278793          	addi	a5,a5,2
   17c70:	00c43023          	sd	a2,0(s0)
   17c74:	00200613          	li	a2,2
   17c78:	00c43423          	sd	a2,8(s0)
   17c7c:	08f13023          	sd	a5,128(sp)
   17c80:	06b12c23          	sw	a1,120(sp)
   17c84:	00700613          	li	a2,7
   17c88:	7cb65863          	ble	a1,a2,18458 <_vfiprintf_r+0xb8c>
   17c8c:	10079ae3          	bnez	a5,185a0 <_vfiprintf_r+0xcd4>
   17c90:	08000513          	li	a0,128
   17c94:	00100593          	li	a1,1
   17c98:	00000613          	li	a2,0
   17c9c:	000c8413          	mv	s0,s9
   17ca0:	4ea29c63          	bne	t0,a0,18198 <_vfiprintf_r+0x8cc>
   17ca4:	41390ebb          	subw	t4,s2,s3
   17ca8:	4fd05863          	blez	t4,18198 <_vfiprintf_r+0x8cc>
   17cac:	01000513          	li	a0,16
   17cb0:	3fd55ce3          	ble	t4,a0,188a8 <_vfiprintf_r+0xfdc>
   17cb4:	01000f13          	li	t5,16
   17cb8:	0001a737          	lui	a4,0x1a
   17cbc:	c0070d93          	addi	s11,a4,-1024 # 19c00 <zeroes.4137>
   17cc0:	00700f93          	li	t6,7
   17cc4:	000f0293          	mv	t0,t5
   17cc8:	0180006f          	j	17ce0 <_vfiprintf_r+0x414>
   17ccc:	0026051b          	addiw	a0,a2,2
   17cd0:	01040413          	addi	s0,s0,16
   17cd4:	00058613          	mv	a2,a1
   17cd8:	ff0e8e9b          	addiw	t4,t4,-16
   17cdc:	03d2dc63          	ble	t4,t0,17d14 <_vfiprintf_r+0x448>
   17ce0:	01078793          	addi	a5,a5,16
   17ce4:	0016059b          	addiw	a1,a2,1
   17ce8:	01b43023          	sd	s11,0(s0)
   17cec:	01e43423          	sd	t5,8(s0)
   17cf0:	08f13023          	sd	a5,128(sp)
   17cf4:	06b12c23          	sw	a1,120(sp)
   17cf8:	fcbfdae3          	ble	a1,t6,17ccc <_vfiprintf_r+0x400>
   17cfc:	6a079e63          	bnez	a5,183b8 <_vfiprintf_r+0xaec>
   17d00:	ff0e8e9b          	addiw	t4,t4,-16
   17d04:	00100513          	li	a0,1
   17d08:	00000613          	li	a2,0
   17d0c:	000c8413          	mv	s0,s9
   17d10:	fdd2c8e3          	blt	t0,t4,17ce0 <_vfiprintf_r+0x414>
   17d14:	01d787b3          	add	a5,a5,t4
   17d18:	01b43023          	sd	s11,0(s0)
   17d1c:	01d43423          	sd	t4,8(s0)
   17d20:	08f13023          	sd	a5,128(sp)
   17d24:	06a12c23          	sw	a0,120(sp)
   17d28:	00700613          	li	a2,7
   17d2c:	0ea646e3          	blt	a2,a0,18618 <_vfiprintf_r+0xd4c>
   17d30:	414484bb          	subw	s1,s1,s4
   17d34:	01040413          	addi	s0,s0,16
   17d38:	0015059b          	addiw	a1,a0,1
   17d3c:	00050613          	mv	a2,a0
   17d40:	46904063          	bgtz	s1,181a0 <_vfiprintf_r+0x8d4>
   17d44:	00fa07b3          	add	a5,s4,a5
   17d48:	01743023          	sd	s7,0(s0)
   17d4c:	01443423          	sd	s4,8(s0)
   17d50:	08f13023          	sd	a5,128(sp)
   17d54:	06b12c23          	sw	a1,120(sp)
   17d58:	00700713          	li	a4,7
   17d5c:	4eb75a63          	ble	a1,a4,18250 <_vfiprintf_r+0x984>
   17d60:	7a079463          	bnez	a5,18508 <_vfiprintf_r+0xc3c>
   17d64:	06012c23          	sw	zero,120(sp)
   17d68:	00437313          	andi	t1,t1,4
   17d6c:	00030663          	beqz	t1,17d78 <_vfiprintf_r+0x4ac>
   17d70:	413904bb          	subw	s1,s2,s3
   17d74:	229040e3          	bgtz	s1,18794 <_vfiprintf_r+0xec8>
   17d78:	01395463          	ble	s3,s2,17d80 <_vfiprintf_r+0x4b4>
   17d7c:	00098913          	mv	s2,s3
   17d80:	05812783          	lw	a5,88(sp)
   17d84:	012787bb          	addw	a5,a5,s2
   17d88:	04f12c23          	sw	a5,88(sp)
   17d8c:	06012c23          	sw	zero,120(sp)
   17d90:	000c8413          	mv	s0,s9
   17d94:	c29ff06f          	j	179bc <_vfiprintf_r+0xf0>
   17d98:	00100513          	li	a0,1
   17d9c:	02b00e93          	li	t4,43
   17da0:	000b0813          	mv	a6,s6
   17da4:	cb5ff06f          	j	17a58 <_vfiprintf_r+0x18c>
   17da8:	08036313          	ori	t1,t1,128
   17dac:	000b0813          	mv	a6,s6
   17db0:	ca9ff06f          	j	17a58 <_vfiprintf_r+0x18c>
   17db4:	00000913          	li	s2,0
   17db8:	fd07079b          	addiw	a5,a4,-48
   17dbc:	001b0b13          	addi	s6,s6,1
   17dc0:	fffb4703          	lbu	a4,-1(s6)
   17dc4:	00191f9b          	slliw	t6,s2,0x1
   17dc8:	0039191b          	slliw	s2,s2,0x3
   17dcc:	012f893b          	addw	s2,t6,s2
   17dd0:	0127893b          	addw	s2,a5,s2
   17dd4:	fd07079b          	addiw	a5,a4,-48
   17dd8:	fef5f2e3          	bleu	a5,a1,17dbc <_vfiprintf_r+0x4f0>
   17ddc:	c85ff06f          	j	17a60 <_vfiprintf_r+0x194>
   17de0:	360518e3          	bnez	a0,18950 <_vfiprintf_r+0x1084>
   17de4:	01036313          	ori	t1,t1,16
   17de8:	01037793          	andi	a5,t1,16
   17dec:	74078263          	beqz	a5,18530 <_vfiprintf_r+0xc64>
   17df0:	00813703          	ld	a4,8(sp)
   17df4:	00073783          	ld	a5,0(a4)
   17df8:	00870713          	addi	a4,a4,8
   17dfc:	00e13423          	sd	a4,8(sp)
   17e00:	0e07c6e3          	bltz	a5,186ec <_vfiprintf_r+0xe20>
   17e04:	06714583          	lbu	a1,103(sp)
   17e08:	6e04c063          	bltz	s1,184e8 <_vfiprintf_r+0xc1c>
   17e0c:	f7f37313          	andi	t1,t1,-129
   17e10:	10078c63          	beqz	a5,17f28 <_vfiprintf_r+0x65c>
   17e14:	00900613          	li	a2,9
   17e18:	000c8b93          	mv	s7,s9
   17e1c:	00a00513          	li	a0,10
   17e20:	10f67863          	bleu	a5,a2,17f30 <_vfiprintf_r+0x664>
   17e24:	02a7f633          	remu	a2,a5,a0
   17e28:	fffb8b93          	addi	s7,s7,-1
   17e2c:	02a7d7b3          	divu	a5,a5,a0
   17e30:	0306061b          	addiw	a2,a2,48
   17e34:	00cb8023          	sb	a2,0(s7)
   17e38:	fe0796e3          	bnez	a5,17e24 <_vfiprintf_r+0x558>
   17e3c:	417c8a3b          	subw	s4,s9,s7
   17e40:	d59ff06f          	j	17b98 <_vfiprintf_r+0x2cc>
   17e44:	300512e3          	bnez	a0,18948 <_vfiprintf_r+0x107c>
   17e48:	01036313          	ori	t1,t1,16
   17e4c:	01037793          	andi	a5,t1,16
   17e50:	6e078e63          	beqz	a5,1854c <_vfiprintf_r+0xc80>
   17e54:	00813783          	ld	a5,8(sp)
   17e58:	060103a3          	sb	zero,103(sp)
   17e5c:	00878713          	addi	a4,a5,8
   17e60:	0007b783          	ld	a5,0(a5)
   17e64:	7004c263          	bltz	s1,18568 <_vfiprintf_r+0xc9c>
   17e68:	00e13423          	sd	a4,8(sp)
   17e6c:	f7f37313          	andi	t1,t1,-129
   17e70:	70079263          	bnez	a5,18574 <_vfiprintf_r+0xca8>
   17e74:	00000593          	li	a1,0
   17e78:	00000793          	li	a5,0
   17e7c:	2a0482e3          	beqz	s1,18920 <_vfiprintf_r+0x1054>
   17e80:	000c8b93          	mv	s7,s9
   17e84:	0077f613          	andi	a2,a5,7
   17e88:	fffb8b93          	addi	s7,s7,-1
   17e8c:	0306061b          	addiw	a2,a2,48
   17e90:	00cb8023          	sb	a2,0(s7)
   17e94:	0037d793          	srli	a5,a5,0x3
   17e98:	fe0796e3          	bnez	a5,17e84 <_vfiprintf_r+0x5b8>
   17e9c:	00137793          	andi	a5,t1,1
   17ea0:	f8078ee3          	beqz	a5,17e3c <_vfiprintf_r+0x570>
   17ea4:	03000793          	li	a5,48
   17ea8:	f8f60ae3          	beq	a2,a5,17e3c <_vfiprintf_r+0x570>
   17eac:	fffb8613          	addi	a2,s7,-1
   17eb0:	40cc8a33          	sub	s4,s9,a2
   17eb4:	fefb8fa3          	sb	a5,-1(s7)
   17eb8:	000a0a1b          	sext.w	s4,s4
   17ebc:	00060b93          	mv	s7,a2
   17ec0:	cd9ff06f          	j	17b98 <_vfiprintf_r+0x2cc>
   17ec4:	28051ee3          	bnez	a0,18960 <_vfiprintf_r+0x1094>
   17ec8:	01037793          	andi	a5,t1,16
   17ecc:	040786e3          	beqz	a5,18718 <_vfiprintf_r+0xe4c>
   17ed0:	00813683          	ld	a3,8(sp)
   17ed4:	05812703          	lw	a4,88(sp)
   17ed8:	0006b783          	ld	a5,0(a3) # 7ff00000 <_gp+0x7fee3240>
   17edc:	00868693          	addi	a3,a3,8
   17ee0:	00d13423          	sd	a3,8(sp)
   17ee4:	00e7b023          	sd	a4,0(a5)
   17ee8:	ad5ff06f          	j	179bc <_vfiprintf_r+0xf0>
   17eec:	260516e3          	bnez	a0,18958 <_vfiprintf_r+0x108c>
   17ef0:	01036313          	ori	t1,t1,16
   17ef4:	01037793          	andi	a5,t1,16
   17ef8:	5c079a63          	bnez	a5,184cc <_vfiprintf_r+0xc00>
   17efc:	04037793          	andi	a5,t1,64
   17f00:	060103a3          	sb	zero,103(sp)
   17f04:	7c078063          	beqz	a5,186c4 <_vfiprintf_r+0xdf8>
   17f08:	00813783          	ld	a5,8(sp)
   17f0c:	00878713          	addi	a4,a5,8
   17f10:	0007d783          	lhu	a5,0(a5)
   17f14:	5c04c663          	bltz	s1,184e0 <_vfiprintf_r+0xc14>
   17f18:	00e13423          	sd	a4,8(sp)
   17f1c:	f7f37313          	andi	t1,t1,-129
   17f20:	00000593          	li	a1,0
   17f24:	ee0798e3          	bnez	a5,17e14 <_vfiprintf_r+0x548>
   17f28:	c60482e3          	beqz	s1,17b8c <_vfiprintf_r+0x2c0>
   17f2c:	00000793          	li	a5,0
   17f30:	0307879b          	addiw	a5,a5,48
   17f34:	0af107a3          	sb	a5,175(sp)
   17f38:	05c12a03          	lw	s4,92(sp)
   17f3c:	0af10b93          	addi	s7,sp,175
   17f40:	c59ff06f          	j	17b98 <_vfiprintf_r+0x2cc>
   17f44:	b40e98e3          	bnez	t4,17a94 <_vfiprintf_r+0x1c8>
   17f48:	00100513          	li	a0,1
   17f4c:	02000e93          	li	t4,32
   17f50:	000b0813          	mv	a6,s6
   17f54:	b05ff06f          	j	17a58 <_vfiprintf_r+0x18c>
   17f58:	00136313          	ori	t1,t1,1
   17f5c:	000b0813          	mv	a6,s6
   17f60:	af9ff06f          	j	17a58 <_vfiprintf_r+0x18c>
   17f64:	00813783          	ld	a5,8(sp)
   17f68:	060103a3          	sb	zero,103(sp)
   17f6c:	0007bb83          	ld	s7,0(a5)
   17f70:	00878d93          	addi	s11,a5,8
   17f74:	0e0b84e3          	beqz	s7,1885c <_vfiprintf_r+0xf90>
   17f78:	0404cee3          	bltz	s1,187d4 <_vfiprintf_r+0xf08>
   17f7c:	00048613          	mv	a2,s1
   17f80:	00000593          	li	a1,0
   17f84:	000b8513          	mv	a0,s7
   17f88:	00613423          	sd	t1,8(sp)
   17f8c:	92dfd0ef          	jal	158b8 <memchr>
   17f90:	00813303          	ld	t1,8(sp)
   17f94:	120502e3          	beqz	a0,188b8 <_vfiprintf_r+0xfec>
   17f98:	41750a3b          	subw	s4,a0,s7
   17f9c:	06714583          	lbu	a1,103(sp)
   17fa0:	01b13423          	sd	s11,8(sp)
   17fa4:	00000493          	li	s1,0
   17fa8:	bf1ff06f          	j	17b98 <_vfiprintf_r+0x2cc>
   17fac:	f40504e3          	beqz	a0,17ef4 <_vfiprintf_r+0x628>
   17fb0:	07d103a3          	sb	t4,103(sp)
   17fb4:	f41ff06f          	j	17ef4 <_vfiprintf_r+0x628>
   17fb8:	00813703          	ld	a4,8(sp)
   17fbc:	00100993          	li	s3,1
   17fc0:	060103a3          	sb	zero,103(sp)
   17fc4:	00072783          	lw	a5,0(a4)
   17fc8:	00098a13          	mv	s4,s3
   17fcc:	08810b93          	addi	s7,sp,136
   17fd0:	08f10423          	sb	a5,136(sp)
   17fd4:	00870793          	addi	a5,a4,8
   17fd8:	00f13423          	sd	a5,8(sp)
   17fdc:	00000493          	li	s1,0
   17fe0:	bcdff06f          	j	17bac <_vfiprintf_r+0x2e0>
   17fe4:	e00502e3          	beqz	a0,17de8 <_vfiprintf_r+0x51c>
   17fe8:	07d103a3          	sb	t4,103(sp)
   17fec:	dfdff06f          	j	17de8 <_vfiprintf_r+0x51c>
   17ff0:	120510e3          	bnez	a0,18910 <_vfiprintf_r+0x1044>
   17ff4:	0001a7b7          	lui	a5,0x1a
   17ff8:	3d878793          	addi	a5,a5,984 # 1a3d8 <zeroes.4137+0x7d8>
   17ffc:	00f13c23          	sd	a5,24(sp)
   18000:	01037793          	andi	a5,t1,16
   18004:	06078063          	beqz	a5,18064 <_vfiprintf_r+0x798>
   18008:	00813683          	ld	a3,8(sp)
   1800c:	0006b783          	ld	a5,0(a3)
   18010:	00868693          	addi	a3,a3,8
   18014:	00d13423          	sd	a3,8(sp)
   18018:	00137613          	andi	a2,t1,1
   1801c:	46060863          	beqz	a2,1848c <_vfiprintf_r+0xbc0>
   18020:	66079063          	bnez	a5,18680 <_vfiprintf_r+0xdb4>
   18024:	060103a3          	sb	zero,103(sp)
   18028:	6404c663          	bltz	s1,18674 <_vfiprintf_r+0xda8>
   1802c:	f7f37313          	andi	t1,t1,-129
   18030:	b55ff06f          	j	17b84 <_vfiprintf_r+0x2b8>
   18034:	e0050ce3          	beqz	a0,17e4c <_vfiprintf_r+0x580>
   18038:	07d103a3          	sb	t4,103(sp)
   1803c:	e11ff06f          	j	17e4c <_vfiprintf_r+0x580>
   18040:	04036313          	ori	t1,t1,64
   18044:	000b0813          	mv	a6,s6
   18048:	a11ff06f          	j	17a58 <_vfiprintf_r+0x18c>
   1804c:	0a051ee3          	bnez	a0,18908 <_vfiprintf_r+0x103c>
   18050:	0001a7b7          	lui	a5,0x1a
   18054:	3f078793          	addi	a5,a5,1008 # 1a3f0 <zeroes.4137+0x7f0>
   18058:	00f13c23          	sd	a5,24(sp)
   1805c:	01037793          	andi	a5,t1,16
   18060:	fa0794e3          	bnez	a5,18008 <_vfiprintf_r+0x73c>
   18064:	04037793          	andi	a5,t1,64
   18068:	00813683          	ld	a3,8(sp)
   1806c:	68078e63          	beqz	a5,18708 <_vfiprintf_r+0xe3c>
   18070:	0006d783          	lhu	a5,0(a3)
   18074:	00868693          	addi	a3,a3,8
   18078:	00d13423          	sd	a3,8(sp)
   1807c:	f9dff06f          	j	18018 <_vfiprintf_r+0x74c>
   18080:	000b4703          	lbu	a4,0(s6)
   18084:	001b0813          	addi	a6,s6,1
   18088:	05e70ee3          	beq	a4,t5,188e4 <_vfiprintf_r+0x1018>
   1808c:	fd07079b          	addiw	a5,a4,-48
   18090:	00000493          	li	s1,0
   18094:	00080b13          	mv	s6,a6
   18098:	9cf5e4e3          	bltu	a1,a5,17a60 <_vfiprintf_r+0x194>
   1809c:	001b0b13          	addi	s6,s6,1
   180a0:	fffb4703          	lbu	a4,-1(s6)
   180a4:	00149f9b          	slliw	t6,s1,0x1
   180a8:	0034949b          	slliw	s1,s1,0x3
   180ac:	009f84bb          	addw	s1,t6,s1
   180b0:	00f484bb          	addw	s1,s1,a5
   180b4:	fd07079b          	addiw	a5,a4,-48
   180b8:	fef5f2e3          	bleu	a5,a1,1809c <_vfiprintf_r+0x7d0>
   180bc:	9a04d2e3          	bgez	s1,17a60 <_vfiprintf_r+0x194>
   180c0:	fff00493          	li	s1,-1
   180c4:	99dff06f          	j	17a60 <_vfiprintf_r+0x194>
   180c8:	040518e3          	bnez	a0,18918 <_vfiprintf_r+0x104c>
   180cc:	6e070663          	beqz	a4,187b8 <_vfiprintf_r+0xeec>
   180d0:	00100993          	li	s3,1
   180d4:	08e10423          	sb	a4,136(sp)
   180d8:	060103a3          	sb	zero,103(sp)
   180dc:	00098a13          	mv	s4,s3
   180e0:	08810b93          	addi	s7,sp,136
   180e4:	00000493          	li	s1,0
   180e8:	ac5ff06f          	j	17bac <_vfiprintf_r+0x2e0>
   180ec:	07010613          	addi	a2,sp,112
   180f0:	000d0593          	mv	a1,s10
   180f4:	000a8513          	mv	a0,s5
   180f8:	05f13423          	sd	t6,72(sp)
   180fc:	05e13023          	sd	t5,64(sp)
   18100:	03d13c23          	sd	t4,56(sp)
   18104:	02513823          	sd	t0,48(sp)
   18108:	02713423          	sd	t2,40(sp)
   1810c:	02613023          	sd	t1,32(sp)
   18110:	eb8ff0ef          	jal	177c8 <__sprint_r.part.0>
   18114:	22051063          	bnez	a0,18334 <_vfiprintf_r+0xa68>
   18118:	07812503          	lw	a0,120(sp)
   1811c:	08013783          	ld	a5,128(sp)
   18120:	000c8413          	mv	s0,s9
   18124:	0015061b          	addiw	a2,a0,1
   18128:	04813f83          	ld	t6,72(sp)
   1812c:	04013f03          	ld	t5,64(sp)
   18130:	03813e83          	ld	t4,56(sp)
   18134:	03013283          	ld	t0,48(sp)
   18138:	02813383          	ld	t2,40(sp)
   1813c:	02013303          	ld	t1,32(sp)
   18140:	ab9ff06f          	j	17bf8 <_vfiprintf_r+0x32c>
   18144:	07812603          	lw	a2,120(sp)
   18148:	08013783          	ld	a5,128(sp)
   1814c:	0016059b          	addiw	a1,a2,1
   18150:	06714503          	lbu	a0,103(sp)
   18154:	b00508e3          	beqz	a0,17c64 <_vfiprintf_r+0x398>
   18158:	00100513          	li	a0,1
   1815c:	06710613          	addi	a2,sp,103
   18160:	00a787b3          	add	a5,a5,a0
   18164:	00c43023          	sd	a2,0(s0)
   18168:	00a43423          	sd	a0,8(s0)
   1816c:	08f13023          	sd	a5,128(sp)
   18170:	06b12c23          	sw	a1,120(sp)
   18174:	00700613          	li	a2,7
   18178:	2ab65a63          	ble	a1,a2,1842c <_vfiprintf_r+0xb60>
   1817c:	44079e63          	bnez	a5,185d8 <_vfiprintf_r+0xd0c>
   18180:	2c039063          	bnez	t2,18440 <_vfiprintf_r+0xb74>
   18184:	00000613          	li	a2,0
   18188:	00050593          	mv	a1,a0
   1818c:	000c8413          	mv	s0,s9
   18190:	08000513          	li	a0,128
   18194:	b0a288e3          	beq	t0,a0,17ca4 <_vfiprintf_r+0x3d8>
   18198:	414484bb          	subw	s1,s1,s4
   1819c:	ba9054e3          	blez	s1,17d44 <_vfiprintf_r+0x478>
   181a0:	0001a737          	lui	a4,0x1a
   181a4:	01000513          	li	a0,16
   181a8:	c0070d93          	addi	s11,a4,-1024 # 19c00 <zeroes.4137>
   181ac:	06955263          	ble	s1,a0,18210 <_vfiprintf_r+0x944>
   181b0:	01000e93          	li	t4,16
   181b4:	0001a737          	lui	a4,0x1a
   181b8:	c0070d93          	addi	s11,a4,-1024 # 19c00 <zeroes.4137>
   181bc:	00700f13          	li	t5,7
   181c0:	000e8f93          	mv	t6,t4
   181c4:	0180006f          	j	181dc <_vfiprintf_r+0x910>
   181c8:	0026059b          	addiw	a1,a2,2
   181cc:	01040413          	addi	s0,s0,16
   181d0:	00050613          	mv	a2,a0
   181d4:	ff04849b          	addiw	s1,s1,-16
   181d8:	029fdc63          	ble	s1,t6,18210 <_vfiprintf_r+0x944>
   181dc:	01078793          	addi	a5,a5,16
   181e0:	0016051b          	addiw	a0,a2,1
   181e4:	01b43023          	sd	s11,0(s0)
   181e8:	01d43423          	sd	t4,8(s0)
   181ec:	08f13023          	sd	a5,128(sp)
   181f0:	06a12c23          	sw	a0,120(sp)
   181f4:	fcaf5ae3          	ble	a0,t5,181c8 <_vfiprintf_r+0x8fc>
   181f8:	14079863          	bnez	a5,18348 <_vfiprintf_r+0xa7c>
   181fc:	ff04849b          	addiw	s1,s1,-16
   18200:	00100593          	li	a1,1
   18204:	00000613          	li	a2,0
   18208:	000c8413          	mv	s0,s9
   1820c:	fc9fc8e3          	blt	t6,s1,181dc <_vfiprintf_r+0x910>
   18210:	009787b3          	add	a5,a5,s1
   18214:	01b43023          	sd	s11,0(s0)
   18218:	00943423          	sd	s1,8(s0)
   1821c:	08f13023          	sd	a5,128(sp)
   18220:	06b12c23          	sw	a1,120(sp)
   18224:	00700613          	li	a2,7
   18228:	24b64063          	blt	a2,a1,18468 <_vfiprintf_r+0xb9c>
   1822c:	01040413          	addi	s0,s0,16
   18230:	0015859b          	addiw	a1,a1,1
   18234:	00fa07b3          	add	a5,s4,a5
   18238:	01743023          	sd	s7,0(s0)
   1823c:	01443423          	sd	s4,8(s0)
   18240:	08f13023          	sd	a5,128(sp)
   18244:	06b12c23          	sw	a1,120(sp)
   18248:	00700713          	li	a4,7
   1824c:	b0b74ae3          	blt	a4,a1,17d60 <_vfiprintf_r+0x494>
   18250:	01040413          	addi	s0,s0,16
   18254:	00437313          	andi	t1,t1,4
   18258:	0a030863          	beqz	t1,18308 <_vfiprintf_r+0xa3c>
   1825c:	413904bb          	subw	s1,s2,s3
   18260:	0a905463          	blez	s1,18308 <_vfiprintf_r+0xa3c>
   18264:	01000713          	li	a4,16
   18268:	62975863          	ble	s1,a4,18898 <_vfiprintf_r+0xfcc>
   1826c:	01000a13          	li	s4,16
   18270:	07812603          	lw	a2,120(sp)
   18274:	05813823          	sd	s8,80(sp)
   18278:	00700d93          	li	s11,7
   1827c:	000a0b93          	mv	s7,s4
   18280:	0180006f          	j	18298 <_vfiprintf_r+0x9cc>
   18284:	0026059b          	addiw	a1,a2,2
   18288:	01040413          	addi	s0,s0,16
   1828c:	00070613          	mv	a2,a4
   18290:	ff04849b          	addiw	s1,s1,-16
   18294:	029bdc63          	ble	s1,s7,182cc <_vfiprintf_r+0xa00>
   18298:	01078793          	addi	a5,a5,16
   1829c:	0016071b          	addiw	a4,a2,1
   182a0:	01843023          	sd	s8,0(s0)
   182a4:	01443423          	sd	s4,8(s0)
   182a8:	08f13023          	sd	a5,128(sp)
   182ac:	06e12c23          	sw	a4,120(sp)
   182b0:	fceddae3          	ble	a4,s11,18284 <_vfiprintf_r+0x9b8>
   182b4:	0c079e63          	bnez	a5,18390 <_vfiprintf_r+0xac4>
   182b8:	ff04849b          	addiw	s1,s1,-16
   182bc:	00100593          	li	a1,1
   182c0:	00000613          	li	a2,0
   182c4:	000c8413          	mv	s0,s9
   182c8:	fc9bc8e3          	blt	s7,s1,18298 <_vfiprintf_r+0x9cc>
   182cc:	05013703          	ld	a4,80(sp)
   182d0:	009787b3          	add	a5,a5,s1
   182d4:	00943423          	sd	s1,8(s0)
   182d8:	00e43023          	sd	a4,0(s0)
   182dc:	08f13023          	sd	a5,128(sp)
   182e0:	06b12c23          	sw	a1,120(sp)
   182e4:	00700713          	li	a4,7
   182e8:	02b75063          	ble	a1,a4,18308 <_vfiprintf_r+0xa3c>
   182ec:	a80786e3          	beqz	a5,17d78 <_vfiprintf_r+0x4ac>
   182f0:	07010613          	addi	a2,sp,112
   182f4:	000d0593          	mv	a1,s10
   182f8:	000a8513          	mv	a0,s5
   182fc:	cccff0ef          	jal	177c8 <__sprint_r.part.0>
   18300:	02051a63          	bnez	a0,18334 <_vfiprintf_r+0xa68>
   18304:	08013783          	ld	a5,128(sp)
   18308:	01395463          	ble	s3,s2,18310 <_vfiprintf_r+0xa44>
   1830c:	00098913          	mv	s2,s3
   18310:	05812703          	lw	a4,88(sp)
   18314:	0127073b          	addw	a4,a4,s2
   18318:	04e12c23          	sw	a4,88(sp)
   1831c:	a60788e3          	beqz	a5,17d8c <_vfiprintf_r+0x4c0>
   18320:	07010613          	addi	a2,sp,112
   18324:	000d0593          	mv	a1,s10
   18328:	000a8513          	mv	a0,s5
   1832c:	c9cff0ef          	jal	177c8 <__sprint_r.part.0>
   18330:	a4050ee3          	beqz	a0,17d8c <_vfiprintf_r+0x4c0>
   18334:	010d5783          	lhu	a5,16(s10)
   18338:	0407f793          	andi	a5,a5,64
   1833c:	44079863          	bnez	a5,1878c <_vfiprintf_r+0xec0>
   18340:	05812503          	lw	a0,88(sp)
   18344:	f94ff06f          	j	17ad8 <_vfiprintf_r+0x20c>
   18348:	07010613          	addi	a2,sp,112
   1834c:	000d0593          	mv	a1,s10
   18350:	000a8513          	mv	a0,s5
   18354:	03f13c23          	sd	t6,56(sp)
   18358:	03e13823          	sd	t5,48(sp)
   1835c:	03d13423          	sd	t4,40(sp)
   18360:	02613023          	sd	t1,32(sp)
   18364:	c64ff0ef          	jal	177c8 <__sprint_r.part.0>
   18368:	fc0516e3          	bnez	a0,18334 <_vfiprintf_r+0xa68>
   1836c:	07812603          	lw	a2,120(sp)
   18370:	08013783          	ld	a5,128(sp)
   18374:	000c8413          	mv	s0,s9
   18378:	0016059b          	addiw	a1,a2,1
   1837c:	03813f83          	ld	t6,56(sp)
   18380:	03013f03          	ld	t5,48(sp)
   18384:	02813e83          	ld	t4,40(sp)
   18388:	02013303          	ld	t1,32(sp)
   1838c:	e49ff06f          	j	181d4 <_vfiprintf_r+0x908>
   18390:	07010613          	addi	a2,sp,112
   18394:	000d0593          	mv	a1,s10
   18398:	000a8513          	mv	a0,s5
   1839c:	c2cff0ef          	jal	177c8 <__sprint_r.part.0>
   183a0:	f8051ae3          	bnez	a0,18334 <_vfiprintf_r+0xa68>
   183a4:	07812603          	lw	a2,120(sp)
   183a8:	08013783          	ld	a5,128(sp)
   183ac:	000c8413          	mv	s0,s9
   183b0:	0016059b          	addiw	a1,a2,1
   183b4:	eddff06f          	j	18290 <_vfiprintf_r+0x9c4>
   183b8:	07010613          	addi	a2,sp,112
   183bc:	000d0593          	mv	a1,s10
   183c0:	000a8513          	mv	a0,s5
   183c4:	04513023          	sd	t0,64(sp)
   183c8:	03f13c23          	sd	t6,56(sp)
   183cc:	03e13823          	sd	t5,48(sp)
   183d0:	03d13423          	sd	t4,40(sp)
   183d4:	02613023          	sd	t1,32(sp)
   183d8:	bf0ff0ef          	jal	177c8 <__sprint_r.part.0>
   183dc:	f4051ce3          	bnez	a0,18334 <_vfiprintf_r+0xa68>
   183e0:	07812603          	lw	a2,120(sp)
   183e4:	08013783          	ld	a5,128(sp)
   183e8:	000c8413          	mv	s0,s9
   183ec:	0016051b          	addiw	a0,a2,1
   183f0:	04013283          	ld	t0,64(sp)
   183f4:	03813f83          	ld	t6,56(sp)
   183f8:	03013f03          	ld	t5,48(sp)
   183fc:	02813e83          	ld	t4,40(sp)
   18400:	02013303          	ld	t1,32(sp)
   18404:	8d5ff06f          	j	17cd8 <_vfiprintf_r+0x40c>
   18408:	34079263          	bnez	a5,1874c <_vfiprintf_r+0xe80>
   1840c:	06714603          	lbu	a2,103(sp)
   18410:	02060663          	beqz	a2,1843c <_vfiprintf_r+0xb70>
   18414:	00100793          	li	a5,1
   18418:	06710613          	addi	a2,sp,103
   1841c:	0ac13823          	sd	a2,176(sp)
   18420:	0af13c23          	sd	a5,184(sp)
   18424:	00078593          	mv	a1,a5
   18428:	000c8413          	mv	s0,s9
   1842c:	00058613          	mv	a2,a1
   18430:	01040413          	addi	s0,s0,16
   18434:	0015859b          	addiw	a1,a1,1
   18438:	82dff06f          	j	17c64 <_vfiprintf_r+0x398>
   1843c:	36038063          	beqz	t2,1879c <_vfiprintf_r+0xed0>
   18440:	00200793          	li	a5,2
   18444:	06810613          	addi	a2,sp,104
   18448:	0ac13823          	sd	a2,176(sp)
   1844c:	0af13c23          	sd	a5,184(sp)
   18450:	00100593          	li	a1,1
   18454:	000c8413          	mv	s0,s9
   18458:	00058613          	mv	a2,a1
   1845c:	01040413          	addi	s0,s0,16
   18460:	0015859b          	addiw	a1,a1,1
   18464:	d2dff06f          	j	18190 <_vfiprintf_r+0x8c4>
   18468:	1c079263          	bnez	a5,1862c <_vfiprintf_r+0xd60>
   1846c:	00100713          	li	a4,1
   18470:	000a0793          	mv	a5,s4
   18474:	0b713823          	sd	s7,176(sp)
   18478:	0b413c23          	sd	s4,184(sp)
   1847c:	09413023          	sd	s4,128(sp)
   18480:	06e12c23          	sw	a4,120(sp)
   18484:	000c8413          	mv	s0,s9
   18488:	dc9ff06f          	j	18250 <_vfiprintf_r+0x984>
   1848c:	060103a3          	sb	zero,103(sp)
   18490:	1e04c063          	bltz	s1,18670 <_vfiprintf_r+0xda4>
   18494:	f7f37313          	andi	t1,t1,-129
   18498:	ee078663          	beqz	a5,17b84 <_vfiprintf_r+0x2b8>
   1849c:	00000593          	li	a1,0
   184a0:	000c8b93          	mv	s7,s9
   184a4:	01813703          	ld	a4,24(sp)
   184a8:	00f7f613          	andi	a2,a5,15
   184ac:	fffb8b93          	addi	s7,s7,-1
   184b0:	00c70633          	add	a2,a4,a2
   184b4:	00064603          	lbu	a2,0(a2)
   184b8:	0047d793          	srli	a5,a5,0x4
   184bc:	00cb8023          	sb	a2,0(s7)
   184c0:	fe0792e3          	bnez	a5,184a4 <_vfiprintf_r+0xbd8>
   184c4:	417c8a3b          	subw	s4,s9,s7
   184c8:	ed0ff06f          	j	17b98 <_vfiprintf_r+0x2cc>
   184cc:	00813783          	ld	a5,8(sp)
   184d0:	060103a3          	sb	zero,103(sp)
   184d4:	00878713          	addi	a4,a5,8
   184d8:	0007b783          	ld	a5,0(a5)
   184dc:	a204dee3          	bgez	s1,17f18 <_vfiprintf_r+0x64c>
   184e0:	00e13423          	sd	a4,8(sp)
   184e4:	00000593          	li	a1,0
   184e8:	920796e3          	bnez	a5,17e14 <_vfiprintf_r+0x548>
   184ec:	00100793          	li	a5,1
   184f0:	00100713          	li	a4,1
   184f4:	a2e78ce3          	beq	a5,a4,17f2c <_vfiprintf_r+0x660>
   184f8:	00200713          	li	a4,2
   184fc:	08e78e63          	beq	a5,a4,18598 <_vfiprintf_r+0xccc>
   18500:	00000793          	li	a5,0
   18504:	97dff06f          	j	17e80 <_vfiprintf_r+0x5b4>
   18508:	07010613          	addi	a2,sp,112
   1850c:	000d0593          	mv	a1,s10
   18510:	000a8513          	mv	a0,s5
   18514:	02613023          	sd	t1,32(sp)
   18518:	ab0ff0ef          	jal	177c8 <__sprint_r.part.0>
   1851c:	e0051ce3          	bnez	a0,18334 <_vfiprintf_r+0xa68>
   18520:	08013783          	ld	a5,128(sp)
   18524:	000c8413          	mv	s0,s9
   18528:	02013303          	ld	t1,32(sp)
   1852c:	d29ff06f          	j	18254 <_vfiprintf_r+0x988>
   18530:	04037793          	andi	a5,t1,64
   18534:	00813703          	ld	a4,8(sp)
   18538:	20078263          	beqz	a5,1873c <_vfiprintf_r+0xe70>
   1853c:	00071783          	lh	a5,0(a4)
   18540:	00870713          	addi	a4,a4,8
   18544:	00e13423          	sd	a4,8(sp)
   18548:	8b9ff06f          	j	17e00 <_vfiprintf_r+0x534>
   1854c:	04037793          	andi	a5,t1,64
   18550:	060103a3          	sb	zero,103(sp)
   18554:	18078263          	beqz	a5,186d8 <_vfiprintf_r+0xe0c>
   18558:	00813783          	ld	a5,8(sp)
   1855c:	00878713          	addi	a4,a5,8
   18560:	0007d783          	lhu	a5,0(a5)
   18564:	9004d2e3          	bgez	s1,17e68 <_vfiprintf_r+0x59c>
   18568:	00e13423          	sd	a4,8(sp)
   1856c:	00000593          	li	a1,0
   18570:	f80780e3          	beqz	a5,184f0 <_vfiprintf_r+0xc24>
   18574:	00000593          	li	a1,0
   18578:	909ff06f          	j	17e80 <_vfiprintf_r+0x5b4>
   1857c:	07010613          	addi	a2,sp,112
   18580:	000d0593          	mv	a1,s10
   18584:	000a8513          	mv	a0,s5
   18588:	a40ff0ef          	jal	177c8 <__sprint_r.part.0>
   1858c:	da0514e3          	bnez	a0,18334 <_vfiprintf_r+0xa68>
   18590:	000c8413          	mv	s0,s9
   18594:	c88ff06f          	j	17a1c <_vfiprintf_r+0x150>
   18598:	00000793          	li	a5,0
   1859c:	f05ff06f          	j	184a0 <_vfiprintf_r+0xbd4>
   185a0:	07010613          	addi	a2,sp,112
   185a4:	000d0593          	mv	a1,s10
   185a8:	000a8513          	mv	a0,s5
   185ac:	02513423          	sd	t0,40(sp)
   185b0:	02613023          	sd	t1,32(sp)
   185b4:	a14ff0ef          	jal	177c8 <__sprint_r.part.0>
   185b8:	d6051ee3          	bnez	a0,18334 <_vfiprintf_r+0xa68>
   185bc:	07812603          	lw	a2,120(sp)
   185c0:	08013783          	ld	a5,128(sp)
   185c4:	000c8413          	mv	s0,s9
   185c8:	0016059b          	addiw	a1,a2,1
   185cc:	02813283          	ld	t0,40(sp)
   185d0:	02013303          	ld	t1,32(sp)
   185d4:	bbdff06f          	j	18190 <_vfiprintf_r+0x8c4>
   185d8:	07010613          	addi	a2,sp,112
   185dc:	000d0593          	mv	a1,s10
   185e0:	000a8513          	mv	a0,s5
   185e4:	02513823          	sd	t0,48(sp)
   185e8:	02713423          	sd	t2,40(sp)
   185ec:	02613023          	sd	t1,32(sp)
   185f0:	9d8ff0ef          	jal	177c8 <__sprint_r.part.0>
   185f4:	d40510e3          	bnez	a0,18334 <_vfiprintf_r+0xa68>
   185f8:	07812603          	lw	a2,120(sp)
   185fc:	08013783          	ld	a5,128(sp)
   18600:	000c8413          	mv	s0,s9
   18604:	0016059b          	addiw	a1,a2,1
   18608:	03013283          	ld	t0,48(sp)
   1860c:	02813383          	ld	t2,40(sp)
   18610:	02013303          	ld	t1,32(sp)
   18614:	e50ff06f          	j	17c64 <_vfiprintf_r+0x398>
   18618:	1e079063          	bnez	a5,187f8 <_vfiprintf_r+0xf2c>
   1861c:	00100593          	li	a1,1
   18620:	00000613          	li	a2,0
   18624:	000c8413          	mv	s0,s9
   18628:	b71ff06f          	j	18198 <_vfiprintf_r+0x8cc>
   1862c:	07010613          	addi	a2,sp,112
   18630:	000d0593          	mv	a1,s10
   18634:	000a8513          	mv	a0,s5
   18638:	02613023          	sd	t1,32(sp)
   1863c:	98cff0ef          	jal	177c8 <__sprint_r.part.0>
   18640:	ce051ae3          	bnez	a0,18334 <_vfiprintf_r+0xa68>
   18644:	07812583          	lw	a1,120(sp)
   18648:	08013783          	ld	a5,128(sp)
   1864c:	000c8413          	mv	s0,s9
   18650:	0015859b          	addiw	a1,a1,1
   18654:	02013303          	ld	t1,32(sp)
   18658:	eecff06f          	j	17d44 <_vfiprintf_r+0x478>
   1865c:	00e13423          	sd	a4,8(sp)
   18660:	0001a737          	lui	a4,0x1a
   18664:	3f070713          	addi	a4,a4,1008 # 1a3f0 <zeroes.4137+0x7f0>
   18668:	00060313          	mv	t1,a2
   1866c:	00e13c23          	sd	a4,24(sp)
   18670:	e20796e3          	bnez	a5,1849c <_vfiprintf_r+0xbd0>
   18674:	00000593          	li	a1,0
   18678:	00200793          	li	a5,2
   1867c:	e75ff06f          	j	184f0 <_vfiprintf_r+0xc24>
   18680:	03000613          	li	a2,48
   18684:	06e104a3          	sb	a4,105(sp)
   18688:	06c10423          	sb	a2,104(sp)
   1868c:	060103a3          	sb	zero,103(sp)
   18690:	00236713          	ori	a4,t1,2
   18694:	1a04c463          	bltz	s1,1883c <_vfiprintf_r+0xf70>
   18698:	f7f37313          	andi	t1,t1,-129
   1869c:	00236313          	ori	t1,t1,2
   186a0:	00000593          	li	a1,0
   186a4:	dfdff06f          	j	184a0 <_vfiprintf_r+0xbd4>
   186a8:	0001a737          	lui	a4,0x1a
   186ac:	3f070713          	addi	a4,a4,1008 # 1a3f0 <zeroes.4137+0x7f0>
   186b0:	00000593          	li	a1,0
   186b4:	00e13c23          	sd	a4,24(sp)
   186b8:	de9ff06f          	j	184a0 <_vfiprintf_r+0xbd4>
   186bc:	000b0493          	mv	s1,s6
   186c0:	b68ff06f          	j	17a28 <_vfiprintf_r+0x15c>
   186c4:	00813783          	ld	a5,8(sp)
   186c8:	00878713          	addi	a4,a5,8
   186cc:	0007e783          	lwu	a5,0(a5)
   186d0:	8404d4e3          	bgez	s1,17f18 <_vfiprintf_r+0x64c>
   186d4:	e0dff06f          	j	184e0 <_vfiprintf_r+0xc14>
   186d8:	00813783          	ld	a5,8(sp)
   186dc:	00878713          	addi	a4,a5,8
   186e0:	0007e783          	lwu	a5,0(a5)
   186e4:	f804d263          	bgez	s1,17e68 <_vfiprintf_r+0x59c>
   186e8:	e81ff06f          	j	18568 <_vfiprintf_r+0xc9c>
   186ec:	02d00713          	li	a4,45
   186f0:	06e103a3          	sb	a4,103(sp)
   186f4:	40f007b3          	neg	a5,a5
   186f8:	1804c863          	bltz	s1,18888 <_vfiprintf_r+0xfbc>
   186fc:	f7f37313          	andi	t1,t1,-129
   18700:	02d00593          	li	a1,45
   18704:	f10ff06f          	j	17e14 <_vfiprintf_r+0x548>
   18708:	0006e783          	lwu	a5,0(a3)
   1870c:	00868693          	addi	a3,a3,8
   18710:	00d13423          	sd	a3,8(sp)
   18714:	905ff06f          	j	18018 <_vfiprintf_r+0x74c>
   18718:	00813703          	ld	a4,8(sp)
   1871c:	04037313          	andi	t1,t1,64
   18720:	00073783          	ld	a5,0(a4)
   18724:	00870713          	addi	a4,a4,8
   18728:	00e13423          	sd	a4,8(sp)
   1872c:	08030063          	beqz	t1,187ac <_vfiprintf_r+0xee0>
   18730:	05815703          	lhu	a4,88(sp)
   18734:	00e79023          	sh	a4,0(a5)
   18738:	a84ff06f          	j	179bc <_vfiprintf_r+0xf0>
   1873c:	00072783          	lw	a5,0(a4)
   18740:	00870713          	addi	a4,a4,8
   18744:	00e13423          	sd	a4,8(sp)
   18748:	eb8ff06f          	j	17e00 <_vfiprintf_r+0x534>
   1874c:	07010613          	addi	a2,sp,112
   18750:	000d0593          	mv	a1,s10
   18754:	000a8513          	mv	a0,s5
   18758:	02513823          	sd	t0,48(sp)
   1875c:	02713423          	sd	t2,40(sp)
   18760:	02613023          	sd	t1,32(sp)
   18764:	864ff0ef          	jal	177c8 <__sprint_r.part.0>
   18768:	bc0516e3          	bnez	a0,18334 <_vfiprintf_r+0xa68>
   1876c:	07812603          	lw	a2,120(sp)
   18770:	08013783          	ld	a5,128(sp)
   18774:	000c8413          	mv	s0,s9
   18778:	0016059b          	addiw	a1,a2,1
   1877c:	03013283          	ld	t0,48(sp)
   18780:	02813383          	ld	t2,40(sp)
   18784:	02013303          	ld	t1,32(sp)
   18788:	9c9ff06f          	j	18150 <_vfiprintf_r+0x884>
   1878c:	fff00513          	li	a0,-1
   18790:	b48ff06f          	j	17ad8 <_vfiprintf_r+0x20c>
   18794:	000c8413          	mv	s0,s9
   18798:	acdff06f          	j	18264 <_vfiprintf_r+0x998>
   1879c:	00000613          	li	a2,0
   187a0:	00100593          	li	a1,1
   187a4:	000c8413          	mv	s0,s9
   187a8:	9e9ff06f          	j	18190 <_vfiprintf_r+0x8c4>
   187ac:	05812703          	lw	a4,88(sp)
   187b0:	00e7a023          	sw	a4,0(a5)
   187b4:	a08ff06f          	j	179bc <_vfiprintf_r+0xf0>
   187b8:	08013783          	ld	a5,128(sp)
   187bc:	b6078ce3          	beqz	a5,18334 <_vfiprintf_r+0xa68>
   187c0:	07010613          	addi	a2,sp,112
   187c4:	000d0593          	mv	a1,s10
   187c8:	000a8513          	mv	a0,s5
   187cc:	ffdfe0ef          	jal	177c8 <__sprint_r.part.0>
   187d0:	b65ff06f          	j	18334 <_vfiprintf_r+0xa68>
   187d4:	000b8513          	mv	a0,s7
   187d8:	02613023          	sd	t1,32(sp)
   187dc:	f1dfe0ef          	jal	176f8 <strlen>
   187e0:	00050a1b          	sext.w	s4,a0
   187e4:	06714583          	lbu	a1,103(sp)
   187e8:	01b13423          	sd	s11,8(sp)
   187ec:	00000493          	li	s1,0
   187f0:	02013303          	ld	t1,32(sp)
   187f4:	ba4ff06f          	j	17b98 <_vfiprintf_r+0x2cc>
   187f8:	07010613          	addi	a2,sp,112
   187fc:	000d0593          	mv	a1,s10
   18800:	000a8513          	mv	a0,s5
   18804:	02613023          	sd	t1,32(sp)
   18808:	fc1fe0ef          	jal	177c8 <__sprint_r.part.0>
   1880c:	b20514e3          	bnez	a0,18334 <_vfiprintf_r+0xa68>
   18810:	07812603          	lw	a2,120(sp)
   18814:	08013783          	ld	a5,128(sp)
   18818:	000c8413          	mv	s0,s9
   1881c:	0016059b          	addiw	a1,a2,1
   18820:	02013303          	ld	t1,32(sp)
   18824:	975ff06f          	j	18198 <_vfiprintf_r+0x8cc>
   18828:	07812603          	lw	a2,120(sp)
   1882c:	08013783          	ld	a5,128(sp)
   18830:	05813823          	sd	s8,80(sp)
   18834:	0016061b          	addiw	a2,a2,1
   18838:	bfcff06f          	j	17c34 <_vfiprintf_r+0x368>
   1883c:	00000593          	li	a1,0
   18840:	00200613          	li	a2,2
   18844:	00100513          	li	a0,1
   18848:	08a60263          	beq	a2,a0,188cc <_vfiprintf_r+0x1000>
   1884c:	00200513          	li	a0,2
   18850:	08a61263          	bne	a2,a0,188d4 <_vfiprintf_r+0x1008>
   18854:	00070313          	mv	t1,a4
   18858:	c49ff06f          	j	184a0 <_vfiprintf_r+0xbd4>
   1885c:	00600793          	li	a5,6
   18860:	0097f463          	bleu	s1,a5,18868 <_vfiprintf_r+0xf9c>
   18864:	00078493          	mv	s1,a5
   18868:	00048a13          	mv	s4,s1
   1886c:	00048993          	mv	s3,s1
   18870:	0604c663          	bltz	s1,188dc <_vfiprintf_r+0x1010>
   18874:	0001a737          	lui	a4,0x1a
   18878:	01b13423          	sd	s11,8(sp)
   1887c:	40870b93          	addi	s7,a4,1032 # 1a408 <zeroes.4137+0x808>
   18880:	00000493          	li	s1,0
   18884:	b28ff06f          	j	17bac <_vfiprintf_r+0x2e0>
   18888:	00030713          	mv	a4,t1
   1888c:	02d00593          	li	a1,45
   18890:	00100613          	li	a2,1
   18894:	fb1ff06f          	j	18844 <_vfiprintf_r+0xf78>
   18898:	07812583          	lw	a1,120(sp)
   1889c:	05813823          	sd	s8,80(sp)
   188a0:	0015859b          	addiw	a1,a1,1
   188a4:	a29ff06f          	j	182cc <_vfiprintf_r+0xa00>
   188a8:	0001a737          	lui	a4,0x1a
   188ac:	00058513          	mv	a0,a1
   188b0:	c0070d93          	addi	s11,a4,-1024 # 19c00 <zeroes.4137>
   188b4:	c60ff06f          	j	17d14 <_vfiprintf_r+0x448>
   188b8:	00048a13          	mv	s4,s1
   188bc:	06714583          	lbu	a1,103(sp)
   188c0:	01b13423          	sd	s11,8(sp)
   188c4:	00000493          	li	s1,0
   188c8:	ad0ff06f          	j	17b98 <_vfiprintf_r+0x2cc>
   188cc:	00070313          	mv	t1,a4
   188d0:	d44ff06f          	j	17e14 <_vfiprintf_r+0x548>
   188d4:	00070313          	mv	t1,a4
   188d8:	da8ff06f          	j	17e80 <_vfiprintf_r+0x5b4>
   188dc:	00000993          	li	s3,0
   188e0:	f95ff06f          	j	18874 <_vfiprintf_r+0xfa8>
   188e4:	00813783          	ld	a5,8(sp)
   188e8:	00080b13          	mv	s6,a6
   188ec:	0007a483          	lw	s1,0(a5)
   188f0:	00878b93          	addi	s7,a5,8
   188f4:	01713423          	sd	s7,8(sp)
   188f8:	9804de63          	bgez	s1,17a94 <_vfiprintf_r+0x1c8>
   188fc:	fff00493          	li	s1,-1
   18900:	000b0813          	mv	a6,s6
   18904:	954ff06f          	j	17a58 <_vfiprintf_r+0x18c>
   18908:	07d103a3          	sb	t4,103(sp)
   1890c:	f44ff06f          	j	18050 <_vfiprintf_r+0x784>
   18910:	07d103a3          	sb	t4,103(sp)
   18914:	ee0ff06f          	j	17ff4 <_vfiprintf_r+0x728>
   18918:	07d103a3          	sb	t4,103(sp)
   1891c:	fb0ff06f          	j	180cc <_vfiprintf_r+0x800>
   18920:	00137793          	andi	a5,t1,1
   18924:	00078c63          	beqz	a5,1893c <_vfiprintf_r+0x1070>
   18928:	03000793          	li	a5,48
   1892c:	0af107a3          	sb	a5,175(sp)
   18930:	05c12a03          	lw	s4,92(sp)
   18934:	0af10b93          	addi	s7,sp,175
   18938:	a60ff06f          	j	17b98 <_vfiprintf_r+0x2cc>
   1893c:	00000a13          	li	s4,0
   18940:	000c8b93          	mv	s7,s9
   18944:	a54ff06f          	j	17b98 <_vfiprintf_r+0x2cc>
   18948:	07d103a3          	sb	t4,103(sp)
   1894c:	cfcff06f          	j	17e48 <_vfiprintf_r+0x57c>
   18950:	07d103a3          	sb	t4,103(sp)
   18954:	c90ff06f          	j	17de4 <_vfiprintf_r+0x518>
   18958:	07d103a3          	sb	t4,103(sp)
   1895c:	d94ff06f          	j	17ef0 <_vfiprintf_r+0x624>
   18960:	07d103a3          	sb	t4,103(sp)
   18964:	d64ff06f          	j	17ec8 <_vfiprintf_r+0x5fc>

0000000000018968 <vfiprintf>:
   18968:	00060693          	mv	a3,a2
   1896c:	00058613          	mv	a2,a1
   18970:	00050593          	mv	a1,a0
   18974:	8101b503          	ld	a0,-2032(gp) # 1c5d0 <_impure_ptr>
   18978:	f55fe06f          	j	178cc <_vfiprintf_r>

000000000001897c <__sbprintf>:
   1897c:	0105d783          	lhu	a5,16(a1)
   18980:	0ac5ae03          	lw	t3,172(a1)
   18984:	0125d303          	lhu	t1,18(a1)
   18988:	0305b883          	ld	a7,48(a1)
   1898c:	0405b803          	ld	a6,64(a1)
   18990:	b3010113          	addi	sp,sp,-1232
   18994:	ffd7f793          	andi	a5,a5,-3
   18998:	40000713          	li	a4,1024
   1899c:	4c813023          	sd	s0,1216(sp)
   189a0:	00f11823          	sh	a5,16(sp)
   189a4:	00058413          	mv	s0,a1
   189a8:	0b010793          	addi	a5,sp,176
   189ac:	00010593          	mv	a1,sp
   189b0:	4a913c23          	sd	s1,1208(sp)
   189b4:	4b213823          	sd	s2,1200(sp)
   189b8:	4c113423          	sd	ra,1224(sp)
   189bc:	00050913          	mv	s2,a0
   189c0:	0bc12623          	sw	t3,172(sp)
   189c4:	00611923          	sh	t1,18(sp)
   189c8:	03113823          	sd	a7,48(sp)
   189cc:	05013023          	sd	a6,64(sp)
   189d0:	00f13023          	sd	a5,0(sp)
   189d4:	00f13c23          	sd	a5,24(sp)
   189d8:	00e12623          	sw	a4,12(sp)
   189dc:	02e12023          	sw	a4,32(sp)
   189e0:	02012423          	sw	zero,40(sp)
   189e4:	ee9fe0ef          	jal	178cc <_vfiprintf_r>
   189e8:	00050493          	mv	s1,a0
   189ec:	00054a63          	bltz	a0,18a00 <__sbprintf+0x84>
   189f0:	00010593          	mv	a1,sp
   189f4:	00090513          	mv	a0,s2
   189f8:	d58fb0ef          	jal	13f50 <_fflush_r>
   189fc:	02051c63          	bnez	a0,18a34 <__sbprintf+0xb8>
   18a00:	01015783          	lhu	a5,16(sp)
   18a04:	0407f793          	andi	a5,a5,64
   18a08:	00078863          	beqz	a5,18a18 <__sbprintf+0x9c>
   18a0c:	01045783          	lhu	a5,16(s0)
   18a10:	0407e793          	ori	a5,a5,64
   18a14:	00f41823          	sh	a5,16(s0)
   18a18:	4c813083          	ld	ra,1224(sp)
   18a1c:	00048513          	mv	a0,s1
   18a20:	4c013403          	ld	s0,1216(sp)
   18a24:	4b813483          	ld	s1,1208(sp)
   18a28:	4b013903          	ld	s2,1200(sp)
   18a2c:	4d010113          	addi	sp,sp,1232
   18a30:	00008067          	ret
   18a34:	fff00493          	li	s1,-1
   18a38:	fc9ff06f          	j	18a00 <__sbprintf+0x84>

0000000000018a3c <__swbuf_r>:
   18a3c:	fd010113          	addi	sp,sp,-48
   18a40:	02813023          	sd	s0,32(sp)
   18a44:	00913c23          	sd	s1,24(sp)
   18a48:	01313423          	sd	s3,8(sp)
   18a4c:	02113423          	sd	ra,40(sp)
   18a50:	01213823          	sd	s2,16(sp)
   18a54:	00050493          	mv	s1,a0
   18a58:	00058993          	mv	s3,a1
   18a5c:	00060413          	mv	s0,a2
   18a60:	00050663          	beqz	a0,18a6c <__swbuf_r+0x30>
   18a64:	05052783          	lw	a5,80(a0)
   18a68:	12078e63          	beqz	a5,18ba4 <__swbuf_r+0x168>
   18a6c:	01041683          	lh	a3,16(s0)
   18a70:	02842783          	lw	a5,40(s0)
   18a74:	03069713          	slli	a4,a3,0x30
   18a78:	03075713          	srli	a4,a4,0x30
   18a7c:	00f42623          	sw	a5,12(s0)
   18a80:	00877793          	andi	a5,a4,8
   18a84:	0e078e63          	beqz	a5,18b80 <__swbuf_r+0x144>
   18a88:	01843783          	ld	a5,24(s0)
   18a8c:	0e078a63          	beqz	a5,18b80 <__swbuf_r+0x144>
   18a90:	03271613          	slli	a2,a4,0x32
   18a94:	0ff9f913          	andi	s2,s3,255
   18a98:	06065663          	bgez	a2,18b04 <__swbuf_r+0xc8>
   18a9c:	00043703          	ld	a4,0(s0)
   18aa0:	02042683          	lw	a3,32(s0)
   18aa4:	40f707bb          	subw	a5,a4,a5
   18aa8:	08d7d663          	ble	a3,a5,18b34 <__swbuf_r+0xf8>
   18aac:	0017879b          	addiw	a5,a5,1
   18ab0:	00c42683          	lw	a3,12(s0)
   18ab4:	00170613          	addi	a2,a4,1
   18ab8:	00c43023          	sd	a2,0(s0)
   18abc:	fff6869b          	addiw	a3,a3,-1
   18ac0:	00d42623          	sw	a3,12(s0)
   18ac4:	01370023          	sb	s3,0(a4)
   18ac8:	02042703          	lw	a4,32(s0)
   18acc:	08f70263          	beq	a4,a5,18b50 <__swbuf_r+0x114>
   18ad0:	01045783          	lhu	a5,16(s0)
   18ad4:	00090513          	mv	a0,s2
   18ad8:	0017f793          	andi	a5,a5,1
   18adc:	00078663          	beqz	a5,18ae8 <__swbuf_r+0xac>
   18ae0:	00a00793          	li	a5,10
   18ae4:	06f90663          	beq	s2,a5,18b50 <__swbuf_r+0x114>
   18ae8:	02813083          	ld	ra,40(sp)
   18aec:	02013403          	ld	s0,32(sp)
   18af0:	01813483          	ld	s1,24(sp)
   18af4:	01013903          	ld	s2,16(sp)
   18af8:	00813983          	ld	s3,8(sp)
   18afc:	03010113          	addi	sp,sp,48
   18b00:	00008067          	ret
   18b04:	0ac42583          	lw	a1,172(s0)
   18b08:	ffffe737          	lui	a4,0xffffe
   18b0c:	fff7071b          	addiw	a4,a4,-1
   18b10:	00e5f733          	and	a4,a1,a4
   18b14:	00002637          	lui	a2,0x2
   18b18:	00c6e6b3          	or	a3,a3,a2
   18b1c:	0ae42623          	sw	a4,172(s0)
   18b20:	00043703          	ld	a4,0(s0)
   18b24:	00d41823          	sh	a3,16(s0)
   18b28:	02042683          	lw	a3,32(s0)
   18b2c:	40f707bb          	subw	a5,a4,a5
   18b30:	f6d7cee3          	blt	a5,a3,18aac <__swbuf_r+0x70>
   18b34:	00040593          	mv	a1,s0
   18b38:	00048513          	mv	a0,s1
   18b3c:	c14fb0ef          	jal	13f50 <_fflush_r>
   18b40:	06051663          	bnez	a0,18bac <__swbuf_r+0x170>
   18b44:	00043703          	ld	a4,0(s0)
   18b48:	00100793          	li	a5,1
   18b4c:	f65ff06f          	j	18ab0 <__swbuf_r+0x74>
   18b50:	00040593          	mv	a1,s0
   18b54:	00048513          	mv	a0,s1
   18b58:	bf8fb0ef          	jal	13f50 <_fflush_r>
   18b5c:	04051863          	bnez	a0,18bac <__swbuf_r+0x170>
   18b60:	02813083          	ld	ra,40(sp)
   18b64:	00090513          	mv	a0,s2
   18b68:	02013403          	ld	s0,32(sp)
   18b6c:	01813483          	ld	s1,24(sp)
   18b70:	01013903          	ld	s2,16(sp)
   18b74:	00813983          	ld	s3,8(sp)
   18b78:	03010113          	addi	sp,sp,48
   18b7c:	00008067          	ret
   18b80:	00040593          	mv	a1,s0
   18b84:	00048513          	mv	a0,s1
   18b88:	a69f90ef          	jal	125f0 <__swsetup_r>
   18b8c:	02051063          	bnez	a0,18bac <__swbuf_r+0x170>
   18b90:	01041683          	lh	a3,16(s0)
   18b94:	01843783          	ld	a5,24(s0)
   18b98:	03069713          	slli	a4,a3,0x30
   18b9c:	03075713          	srli	a4,a4,0x30
   18ba0:	ef1ff06f          	j	18a90 <__swbuf_r+0x54>
   18ba4:	f58fb0ef          	jal	142fc <__sinit>
   18ba8:	ec5ff06f          	j	18a6c <__swbuf_r+0x30>
   18bac:	fff00513          	li	a0,-1
   18bb0:	f39ff06f          	j	18ae8 <__swbuf_r+0xac>

0000000000018bb4 <__swbuf>:
   18bb4:	00058613          	mv	a2,a1
   18bb8:	00050593          	mv	a1,a0
   18bbc:	8101b503          	ld	a0,-2032(gp) # 1c5d0 <_impure_ptr>
   18bc0:	e7dff06f          	j	18a3c <__swbuf_r>

0000000000018bc4 <_calloc_r>:
   18bc4:	02c585b3          	mul	a1,a1,a2
   18bc8:	ff010113          	addi	sp,sp,-16
   18bcc:	00113423          	sd	ra,8(sp)
   18bd0:	00813023          	sd	s0,0(sp)
   18bd4:	d74fc0ef          	jal	15148 <_malloc_r>
   18bd8:	08050c63          	beqz	a0,18c70 <_calloc_r+0xac>
   18bdc:	ff853603          	ld	a2,-8(a0)
   18be0:	04800713          	li	a4,72
   18be4:	00050413          	mv	s0,a0
   18be8:	ffc67613          	andi	a2,a2,-4
   18bec:	ff860613          	addi	a2,a2,-8 # 1ff8 <_ftext-0xe008>
   18bf0:	04c76e63          	bltu	a4,a2,18c4c <_calloc_r+0x88>
   18bf4:	02700693          	li	a3,39
   18bf8:	00050793          	mv	a5,a0
   18bfc:	02c6f863          	bleu	a2,a3,18c2c <_calloc_r+0x68>
   18c00:	00053023          	sd	zero,0(a0)
   18c04:	00053423          	sd	zero,8(a0)
   18c08:	03700793          	li	a5,55
   18c0c:	04c7fe63          	bleu	a2,a5,18c68 <_calloc_r+0xa4>
   18c10:	00053823          	sd	zero,16(a0)
   18c14:	00053c23          	sd	zero,24(a0)
   18c18:	02050793          	addi	a5,a0,32
   18c1c:	00e61863          	bne	a2,a4,18c2c <_calloc_r+0x68>
   18c20:	02053023          	sd	zero,32(a0)
   18c24:	03050793          	addi	a5,a0,48
   18c28:	02053423          	sd	zero,40(a0)
   18c2c:	0007b023          	sd	zero,0(a5)
   18c30:	0007b423          	sd	zero,8(a5)
   18c34:	0007b823          	sd	zero,16(a5)
   18c38:	00040513          	mv	a0,s0
   18c3c:	00813083          	ld	ra,8(sp)
   18c40:	00013403          	ld	s0,0(sp)
   18c44:	01010113          	addi	sp,sp,16
   18c48:	00008067          	ret
   18c4c:	00000593          	li	a1,0
   18c50:	f91fc0ef          	jal	15be0 <memset>
   18c54:	00813083          	ld	ra,8(sp)
   18c58:	00040513          	mv	a0,s0
   18c5c:	00013403          	ld	s0,0(sp)
   18c60:	01010113          	addi	sp,sp,16
   18c64:	00008067          	ret
   18c68:	01050793          	addi	a5,a0,16
   18c6c:	fc1ff06f          	j	18c2c <_calloc_r+0x68>
   18c70:	00000513          	li	a0,0
   18c74:	fc9ff06f          	j	18c3c <_calloc_r+0x78>

0000000000018c78 <_fclose_r>:
   18c78:	0e058e63          	beqz	a1,18d74 <_fclose_r+0xfc>
   18c7c:	fe010113          	addi	sp,sp,-32
   18c80:	00813823          	sd	s0,16(sp)
   18c84:	00913423          	sd	s1,8(sp)
   18c88:	00113c23          	sd	ra,24(sp)
   18c8c:	01213023          	sd	s2,0(sp)
   18c90:	00050493          	mv	s1,a0
   18c94:	00058413          	mv	s0,a1
   18c98:	00050663          	beqz	a0,18ca4 <_fclose_r+0x2c>
   18c9c:	05052783          	lw	a5,80(a0)
   18ca0:	0a078a63          	beqz	a5,18d54 <_fclose_r+0xdc>
   18ca4:	01041783          	lh	a5,16(s0)
   18ca8:	00000513          	li	a0,0
   18cac:	00079e63          	bnez	a5,18cc8 <_fclose_r+0x50>
   18cb0:	01813083          	ld	ra,24(sp)
   18cb4:	01013403          	ld	s0,16(sp)
   18cb8:	00813483          	ld	s1,8(sp)
   18cbc:	00013903          	ld	s2,0(sp)
   18cc0:	02010113          	addi	sp,sp,32
   18cc4:	00008067          	ret
   18cc8:	00040593          	mv	a1,s0
   18ccc:	00048513          	mv	a0,s1
   18cd0:	814fb0ef          	jal	13ce4 <__sflush_r>
   18cd4:	05043783          	ld	a5,80(s0)
   18cd8:	00050913          	mv	s2,a0
   18cdc:	00078a63          	beqz	a5,18cf0 <_fclose_r+0x78>
   18ce0:	03043583          	ld	a1,48(s0)
   18ce4:	00048513          	mv	a0,s1
   18ce8:	000780e7          	jalr	a5
   18cec:	06054863          	bltz	a0,18d5c <_fclose_r+0xe4>
   18cf0:	01045783          	lhu	a5,16(s0)
   18cf4:	0807f793          	andi	a5,a5,128
   18cf8:	06079663          	bnez	a5,18d64 <_fclose_r+0xec>
   18cfc:	05843583          	ld	a1,88(s0)
   18d00:	00058c63          	beqz	a1,18d18 <_fclose_r+0xa0>
   18d04:	07440793          	addi	a5,s0,116
   18d08:	00f58663          	beq	a1,a5,18d14 <_fclose_r+0x9c>
   18d0c:	00048513          	mv	a0,s1
   18d10:	891fb0ef          	jal	145a0 <_free_r>
   18d14:	04043c23          	sd	zero,88(s0)
   18d18:	07843583          	ld	a1,120(s0)
   18d1c:	00058863          	beqz	a1,18d2c <_fclose_r+0xb4>
   18d20:	00048513          	mv	a0,s1
   18d24:	87dfb0ef          	jal	145a0 <_free_r>
   18d28:	06043c23          	sd	zero,120(s0)
   18d2c:	de0fb0ef          	jal	1430c <__sfp_lock_acquire>
   18d30:	00041823          	sh	zero,16(s0)
   18d34:	ddcfb0ef          	jal	14310 <__sfp_lock_release>
   18d38:	01813083          	ld	ra,24(sp)
   18d3c:	00090513          	mv	a0,s2
   18d40:	01013403          	ld	s0,16(sp)
   18d44:	00813483          	ld	s1,8(sp)
   18d48:	00013903          	ld	s2,0(sp)
   18d4c:	02010113          	addi	sp,sp,32
   18d50:	00008067          	ret
   18d54:	da8fb0ef          	jal	142fc <__sinit>
   18d58:	f4dff06f          	j	18ca4 <_fclose_r+0x2c>
   18d5c:	fff00913          	li	s2,-1
   18d60:	f91ff06f          	j	18cf0 <_fclose_r+0x78>
   18d64:	01843583          	ld	a1,24(s0)
   18d68:	00048513          	mv	a0,s1
   18d6c:	835fb0ef          	jal	145a0 <_free_r>
   18d70:	f8dff06f          	j	18cfc <_fclose_r+0x84>
   18d74:	00000513          	li	a0,0
   18d78:	00008067          	ret

0000000000018d7c <fclose>:
   18d7c:	00050593          	mv	a1,a0
   18d80:	8101b503          	ld	a0,-2032(gp) # 1c5d0 <_impure_ptr>
   18d84:	ef5ff06f          	j	18c78 <_fclose_r>

0000000000018d88 <__fputwc>:
   18d88:	fb010113          	addi	sp,sp,-80
   18d8c:	04813023          	sd	s0,64(sp)
   18d90:	03413023          	sd	s4,32(sp)
   18d94:	01513c23          	sd	s5,24(sp)
   18d98:	04113423          	sd	ra,72(sp)
   18d9c:	02913c23          	sd	s1,56(sp)
   18da0:	03213823          	sd	s2,48(sp)
   18da4:	03313423          	sd	s3,40(sp)
   18da8:	01613823          	sd	s6,16(sp)
   18dac:	00050a93          	mv	s5,a0
   18db0:	00058a13          	mv	s4,a1
   18db4:	00060413          	mv	s0,a2
   18db8:	9a0fc0ef          	jal	14f58 <__locale_mb_cur_max>
   18dbc:	00100793          	li	a5,1
   18dc0:	10f50663          	beq	a0,a5,18ecc <__fputwc+0x144>
   18dc4:	00810493          	addi	s1,sp,8
   18dc8:	0a440693          	addi	a3,s0,164
   18dcc:	000a0613          	mv	a2,s4
   18dd0:	00048593          	mv	a1,s1
   18dd4:	000a8513          	mv	a0,s5
   18dd8:	1c0000ef          	jal	18f98 <_wcrtomb_r>
   18ddc:	fff00793          	li	a5,-1
   18de0:	00050993          	mv	s3,a0
   18de4:	08f50e63          	beq	a0,a5,18e80 <__fputwc+0xf8>
   18de8:	10050263          	beqz	a0,18eec <__fputwc+0x164>
   18dec:	00814583          	lbu	a1,8(sp)
   18df0:	00c42783          	lw	a5,12(s0)
   18df4:	00000913          	li	s2,0
   18df8:	00a00b13          	li	s6,10
   18dfc:	fff7879b          	addiw	a5,a5,-1
   18e00:	00f42623          	sw	a5,12(s0)
   18e04:	0207cc63          	bltz	a5,18e3c <__fputwc+0xb4>
   18e08:	00043783          	ld	a5,0(s0)
   18e0c:	00b78023          	sb	a1,0(a5)
   18e10:	00043783          	ld	a5,0(s0)
   18e14:	00178793          	addi	a5,a5,1
   18e18:	00f43023          	sd	a5,0(s0)
   18e1c:	00190913          	addi	s2,s2,1
   18e20:	00148493          	addi	s1,s1,1
   18e24:	0d397463          	bleu	s3,s2,18eec <__fputwc+0x164>
   18e28:	00c42783          	lw	a5,12(s0)
   18e2c:	0004c583          	lbu	a1,0(s1)
   18e30:	fff7879b          	addiw	a5,a5,-1
   18e34:	00f42623          	sw	a5,12(s0)
   18e38:	fc07d8e3          	bgez	a5,18e08 <__fputwc+0x80>
   18e3c:	02842703          	lw	a4,40(s0)
   18e40:	06e7ca63          	blt	a5,a4,18eb4 <__fputwc+0x12c>
   18e44:	00043783          	ld	a5,0(s0)
   18e48:	00b78023          	sb	a1,0(a5)
   18e4c:	00043783          	ld	a5,0(s0)
   18e50:	0007c703          	lbu	a4,0(a5)
   18e54:	00178793          	addi	a5,a5,1
   18e58:	fd6710e3          	bne	a4,s6,18e18 <__fputwc+0x90>
   18e5c:	00040613          	mv	a2,s0
   18e60:	000b0593          	mv	a1,s6
   18e64:	000a8513          	mv	a0,s5
   18e68:	bd5ff0ef          	jal	18a3c <__swbuf_r>
   18e6c:	0015051b          	addiw	a0,a0,1
   18e70:	00153513          	seqz	a0,a0
   18e74:	fa0504e3          	beqz	a0,18e1c <__fputwc+0x94>
   18e78:	fff00513          	li	a0,-1
   18e7c:	0100006f          	j	18e8c <__fputwc+0x104>
   18e80:	01045783          	lhu	a5,16(s0)
   18e84:	0407e793          	ori	a5,a5,64
   18e88:	00f41823          	sh	a5,16(s0)
   18e8c:	04813083          	ld	ra,72(sp)
   18e90:	04013403          	ld	s0,64(sp)
   18e94:	03813483          	ld	s1,56(sp)
   18e98:	03013903          	ld	s2,48(sp)
   18e9c:	02813983          	ld	s3,40(sp)
   18ea0:	02013a03          	ld	s4,32(sp)
   18ea4:	01813a83          	ld	s5,24(sp)
   18ea8:	01013b03          	ld	s6,16(sp)
   18eac:	05010113          	addi	sp,sp,80
   18eb0:	00008067          	ret
   18eb4:	00040613          	mv	a2,s0
   18eb8:	000a8513          	mv	a0,s5
   18ebc:	b81ff0ef          	jal	18a3c <__swbuf_r>
   18ec0:	0015051b          	addiw	a0,a0,1
   18ec4:	00153513          	seqz	a0,a0
   18ec8:	fadff06f          	j	18e74 <__fputwc+0xec>
   18ecc:	fffa079b          	addiw	a5,s4,-1
   18ed0:	0fe00713          	li	a4,254
   18ed4:	eef768e3          	bltu	a4,a5,18dc4 <__fputwc+0x3c>
   18ed8:	0ffa7593          	andi	a1,s4,255
   18edc:	00b10423          	sb	a1,8(sp)
   18ee0:	00100993          	li	s3,1
   18ee4:	00810493          	addi	s1,sp,8
   18ee8:	f09ff06f          	j	18df0 <__fputwc+0x68>
   18eec:	000a0513          	mv	a0,s4
   18ef0:	f9dff06f          	j	18e8c <__fputwc+0x104>

0000000000018ef4 <_fputwc_r>:
   18ef4:	01061783          	lh	a5,16(a2)
   18ef8:	00002737          	lui	a4,0x2
   18efc:	03279693          	slli	a3,a5,0x32
   18f00:	0006cc63          	bltz	a3,18f18 <_fputwc_r+0x24>
   18f04:	0ac62683          	lw	a3,172(a2)
   18f08:	00e7e7b3          	or	a5,a5,a4
   18f0c:	00f61823          	sh	a5,16(a2)
   18f10:	00e6e733          	or	a4,a3,a4
   18f14:	0ae62623          	sw	a4,172(a2)
   18f18:	e71ff06f          	j	18d88 <__fputwc>

0000000000018f1c <fputwc>:
   18f1c:	fd010113          	addi	sp,sp,-48
   18f20:	02813023          	sd	s0,32(sp)
   18f24:	8101b403          	ld	s0,-2032(gp) # 1c5d0 <_impure_ptr>
   18f28:	00913c23          	sd	s1,24(sp)
   18f2c:	02113423          	sd	ra,40(sp)
   18f30:	00050493          	mv	s1,a0
   18f34:	00058613          	mv	a2,a1
   18f38:	00040663          	beqz	s0,18f44 <fputwc+0x28>
   18f3c:	05042783          	lw	a5,80(s0)
   18f40:	04078263          	beqz	a5,18f84 <fputwc+0x68>
   18f44:	01061783          	lh	a5,16(a2)
   18f48:	00002737          	lui	a4,0x2
   18f4c:	03279693          	slli	a3,a5,0x32
   18f50:	0006cc63          	bltz	a3,18f68 <fputwc+0x4c>
   18f54:	0ac62683          	lw	a3,172(a2)
   18f58:	00e7e7b3          	or	a5,a5,a4
   18f5c:	00f61823          	sh	a5,16(a2)
   18f60:	00e6e733          	or	a4,a3,a4
   18f64:	0ae62623          	sw	a4,172(a2)
   18f68:	00048593          	mv	a1,s1
   18f6c:	00040513          	mv	a0,s0
   18f70:	02813083          	ld	ra,40(sp)
   18f74:	02013403          	ld	s0,32(sp)
   18f78:	01813483          	ld	s1,24(sp)
   18f7c:	03010113          	addi	sp,sp,48
   18f80:	e09ff06f          	j	18d88 <__fputwc>
   18f84:	00040513          	mv	a0,s0
   18f88:	00b13423          	sd	a1,8(sp)
   18f8c:	b70fb0ef          	jal	142fc <__sinit>
   18f90:	00813603          	ld	a2,8(sp)
   18f94:	fb1ff06f          	j	18f44 <fputwc+0x28>

0000000000018f98 <_wcrtomb_r>:
   18f98:	fc010113          	addi	sp,sp,-64
   18f9c:	02913423          	sd	s1,40(sp)
   18fa0:	03213023          	sd	s2,32(sp)
   18fa4:	02113c23          	sd	ra,56(sp)
   18fa8:	02813823          	sd	s0,48(sp)
   18fac:	01313c23          	sd	s3,24(sp)
   18fb0:	01413823          	sd	s4,16(sp)
   18fb4:	00050493          	mv	s1,a0
   18fb8:	00068913          	mv	s2,a3
   18fbc:	06058663          	beqz	a1,19028 <_wcrtomb_r+0x90>
   18fc0:	8301ba03          	ld	s4,-2000(gp) # 1c5f0 <__wctomb>
   18fc4:	00058413          	mv	s0,a1
   18fc8:	00060993          	mv	s3,a2
   18fcc:	f81fb0ef          	jal	14f4c <__locale_charset>
   18fd0:	00050693          	mv	a3,a0
   18fd4:	00090713          	mv	a4,s2
   18fd8:	00098613          	mv	a2,s3
   18fdc:	00040593          	mv	a1,s0
   18fe0:	00048513          	mv	a0,s1
   18fe4:	000a00e7          	jalr	s4
   18fe8:	00050793          	mv	a5,a0
   18fec:	fff00713          	li	a4,-1
   18ff0:	00078513          	mv	a0,a5
   18ff4:	00e79a63          	bne	a5,a4,19008 <_wcrtomb_r+0x70>
   18ff8:	00092023          	sw	zero,0(s2)
   18ffc:	08a00793          	li	a5,138
   19000:	00f4a023          	sw	a5,0(s1)
   19004:	fff00513          	li	a0,-1
   19008:	03813083          	ld	ra,56(sp)
   1900c:	03013403          	ld	s0,48(sp)
   19010:	02813483          	ld	s1,40(sp)
   19014:	02013903          	ld	s2,32(sp)
   19018:	01813983          	ld	s3,24(sp)
   1901c:	01013a03          	ld	s4,16(sp)
   19020:	04010113          	addi	sp,sp,64
   19024:	00008067          	ret
   19028:	8301b403          	ld	s0,-2000(gp) # 1c5f0 <__wctomb>
   1902c:	f21fb0ef          	jal	14f4c <__locale_charset>
   19030:	00050693          	mv	a3,a0
   19034:	00090713          	mv	a4,s2
   19038:	00000613          	li	a2,0
   1903c:	00010593          	mv	a1,sp
   19040:	00048513          	mv	a0,s1
   19044:	000400e7          	jalr	s0
   19048:	00050793          	mv	a5,a0
   1904c:	fa1ff06f          	j	18fec <_wcrtomb_r+0x54>

0000000000019050 <wcrtomb>:
   19050:	fc010113          	addi	sp,sp,-64
   19054:	02913423          	sd	s1,40(sp)
   19058:	03213023          	sd	s2,32(sp)
   1905c:	02113c23          	sd	ra,56(sp)
   19060:	02813823          	sd	s0,48(sp)
   19064:	01313c23          	sd	s3,24(sp)
   19068:	01413823          	sd	s4,16(sp)
   1906c:	00060913          	mv	s2,a2
   19070:	8101b483          	ld	s1,-2032(gp) # 1c5d0 <_impure_ptr>
   19074:	06050663          	beqz	a0,190e0 <wcrtomb+0x90>
   19078:	8301ba03          	ld	s4,-2000(gp) # 1c5f0 <__wctomb>
   1907c:	00058993          	mv	s3,a1
   19080:	00050413          	mv	s0,a0
   19084:	ec9fb0ef          	jal	14f4c <__locale_charset>
   19088:	00050693          	mv	a3,a0
   1908c:	00090713          	mv	a4,s2
   19090:	00098613          	mv	a2,s3
   19094:	00040593          	mv	a1,s0
   19098:	00048513          	mv	a0,s1
   1909c:	000a00e7          	jalr	s4
   190a0:	00050793          	mv	a5,a0
   190a4:	fff00713          	li	a4,-1
   190a8:	00078513          	mv	a0,a5
   190ac:	00e79a63          	bne	a5,a4,190c0 <wcrtomb+0x70>
   190b0:	00092023          	sw	zero,0(s2)
   190b4:	08a00793          	li	a5,138
   190b8:	00f4a023          	sw	a5,0(s1)
   190bc:	fff00513          	li	a0,-1
   190c0:	03813083          	ld	ra,56(sp)
   190c4:	03013403          	ld	s0,48(sp)
   190c8:	02813483          	ld	s1,40(sp)
   190cc:	02013903          	ld	s2,32(sp)
   190d0:	01813983          	ld	s3,24(sp)
   190d4:	01013a03          	ld	s4,16(sp)
   190d8:	04010113          	addi	sp,sp,64
   190dc:	00008067          	ret
   190e0:	8301b403          	ld	s0,-2000(gp) # 1c5f0 <__wctomb>
   190e4:	e69fb0ef          	jal	14f4c <__locale_charset>
   190e8:	00050693          	mv	a3,a0
   190ec:	00090713          	mv	a4,s2
   190f0:	00000613          	li	a2,0
   190f4:	00010593          	mv	a1,sp
   190f8:	00048513          	mv	a0,s1
   190fc:	000400e7          	jalr	s0
   19100:	00050793          	mv	a5,a0
   19104:	fa1ff06f          	j	190a4 <wcrtomb+0x54>

0000000000019108 <__ascii_wctomb>:
   19108:	00058c63          	beqz	a1,19120 <__ascii_wctomb+0x18>
   1910c:	0ff00793          	li	a5,255
   19110:	00c7ec63          	bltu	a5,a2,19128 <__ascii_wctomb+0x20>
   19114:	00c58023          	sb	a2,0(a1)
   19118:	00100513          	li	a0,1
   1911c:	00008067          	ret
   19120:	00000513          	li	a0,0
   19124:	00008067          	ret
   19128:	08a00793          	li	a5,138
   1912c:	00f52023          	sw	a5,0(a0)
   19130:	fff00513          	li	a0,-1
   19134:	00008067          	ret

0000000000019138 <_wctomb_r>:
   19138:	fd010113          	addi	sp,sp,-48
   1913c:	02813023          	sd	s0,32(sp)
   19140:	8301b403          	ld	s0,-2000(gp) # 1c5f0 <__wctomb>
   19144:	02113423          	sd	ra,40(sp)
   19148:	00913c23          	sd	s1,24(sp)
   1914c:	01213823          	sd	s2,16(sp)
   19150:	01313423          	sd	s3,8(sp)
   19154:	01413023          	sd	s4,0(sp)
   19158:	00050493          	mv	s1,a0
   1915c:	00068a13          	mv	s4,a3
   19160:	00058913          	mv	s2,a1
   19164:	00060993          	mv	s3,a2
   19168:	de5fb0ef          	jal	14f4c <__locale_charset>
   1916c:	000a0713          	mv	a4,s4
   19170:	00050693          	mv	a3,a0
   19174:	00098613          	mv	a2,s3
   19178:	00090593          	mv	a1,s2
   1917c:	00048513          	mv	a0,s1
   19180:	00040313          	mv	t1,s0
   19184:	02813083          	ld	ra,40(sp)
   19188:	02013403          	ld	s0,32(sp)
   1918c:	01813483          	ld	s1,24(sp)
   19190:	01013903          	ld	s2,16(sp)
   19194:	00813983          	ld	s3,8(sp)
   19198:	00013a03          	ld	s4,0(sp)
   1919c:	03010113          	addi	sp,sp,48
   191a0:	00030067          	jr	t1

00000000000191a4 <__syscall_error>:
   191a4:	ff010113          	addi	sp,sp,-16
   191a8:	00113423          	sd	ra,8(sp)
   191ac:	00813023          	sd	s0,0(sp)
   191b0:	00050413          	mv	s0,a0
   191b4:	3c0000ef          	jal	19574 <__errno>
   191b8:	00813083          	ld	ra,8(sp)
   191bc:	408007bb          	negw	a5,s0
   191c0:	00f52023          	sw	a5,0(a0)
   191c4:	00013403          	ld	s0,0(sp)
   191c8:	fff00513          	li	a0,-1
   191cc:	01010113          	addi	sp,sp,16
   191d0:	00008067          	ret

00000000000191d4 <open>:
   191d4:	00000693          	li	a3,0
   191d8:	40000893          	li	a7,1024
   191dc:	00000073          	ecall
   191e0:	fc0542e3          	bltz	a0,191a4 <__syscall_error>
   191e4:	0005051b          	sext.w	a0,a0
   191e8:	00008067          	ret

00000000000191ec <openat>:
   191ec:	03800893          	li	a7,56
   191f0:	00000073          	ecall
   191f4:	fa0548e3          	bltz	a0,191a4 <__syscall_error>
   191f8:	0005051b          	sext.w	a0,a0
   191fc:	00008067          	ret

0000000000019200 <lseek>:
   19200:	00000693          	li	a3,0
   19204:	03e00893          	li	a7,62
   19208:	00000073          	ecall
   1920c:	f8054ce3          	bltz	a0,191a4 <__syscall_error>
   19210:	00008067          	ret

0000000000019214 <read>:
   19214:	00000693          	li	a3,0
   19218:	03f00893          	li	a7,63
   1921c:	00000073          	ecall
   19220:	f80542e3          	bltz	a0,191a4 <__syscall_error>
   19224:	00008067          	ret

0000000000019228 <write>:
   19228:	00000693          	li	a3,0
   1922c:	04000893          	li	a7,64
   19230:	00000073          	ecall
   19234:	f60548e3          	bltz	a0,191a4 <__syscall_error>
   19238:	00008067          	ret

000000000001923c <fstat>:
   1923c:	00000613          	li	a2,0
   19240:	00000693          	li	a3,0
   19244:	05000893          	li	a7,80
   19248:	00000073          	ecall
   1924c:	f4054ce3          	bltz	a0,191a4 <__syscall_error>
   19250:	0005051b          	sext.w	a0,a0
   19254:	00008067          	ret

0000000000019258 <stat>:
   19258:	00000613          	li	a2,0
   1925c:	00000693          	li	a3,0
   19260:	40e00893          	li	a7,1038
   19264:	00000073          	ecall
   19268:	f2054ee3          	bltz	a0,191a4 <__syscall_error>
   1926c:	0005051b          	sext.w	a0,a0
   19270:	00008067          	ret

0000000000019274 <lstat>:
   19274:	00000613          	li	a2,0
   19278:	00000693          	li	a3,0
   1927c:	40f00893          	li	a7,1039
   19280:	00000073          	ecall
   19284:	f20540e3          	bltz	a0,191a4 <__syscall_error>
   19288:	0005051b          	sext.w	a0,a0
   1928c:	00008067          	ret

0000000000019290 <fstatat>:
   19290:	04f00893          	li	a7,79
   19294:	00000073          	ecall
   19298:	f00546e3          	bltz	a0,191a4 <__syscall_error>
   1929c:	0005051b          	sext.w	a0,a0
   192a0:	00008067          	ret

00000000000192a4 <access>:
   192a4:	00000613          	li	a2,0
   192a8:	00000693          	li	a3,0
   192ac:	40900893          	li	a7,1033
   192b0:	00000073          	ecall
   192b4:	ee0548e3          	bltz	a0,191a4 <__syscall_error>
   192b8:	0005051b          	sext.w	a0,a0
   192bc:	00008067          	ret

00000000000192c0 <faccessat>:
   192c0:	03000893          	li	a7,48
   192c4:	00000073          	ecall
   192c8:	ec054ee3          	bltz	a0,191a4 <__syscall_error>
   192cc:	0005051b          	sext.w	a0,a0
   192d0:	00008067          	ret

00000000000192d4 <close>:
   192d4:	00000593          	li	a1,0
   192d8:	00000613          	li	a2,0
   192dc:	00000693          	li	a3,0
   192e0:	03900893          	li	a7,57
   192e4:	00000073          	ecall
   192e8:	ea054ee3          	bltz	a0,191a4 <__syscall_error>
   192ec:	0005051b          	sext.w	a0,a0
   192f0:	00008067          	ret

00000000000192f4 <link>:
   192f4:	00000613          	li	a2,0
   192f8:	00000693          	li	a3,0
   192fc:	40100893          	li	a7,1025
   19300:	00000073          	ecall
   19304:	ea0540e3          	bltz	a0,191a4 <__syscall_error>
   19308:	0005051b          	sext.w	a0,a0
   1930c:	00008067          	ret

0000000000019310 <unlink>:
   19310:	00000593          	li	a1,0
   19314:	00000613          	li	a2,0
   19318:	00000693          	li	a3,0
   1931c:	40200893          	li	a7,1026
   19320:	00000073          	ecall
   19324:	e80540e3          	bltz	a0,191a4 <__syscall_error>
   19328:	0005051b          	sext.w	a0,a0
   1932c:	00008067          	ret

0000000000019330 <execve>:
   19330:	ff010113          	addi	sp,sp,-16
   19334:	00113423          	sd	ra,8(sp)
   19338:	23c000ef          	jal	19574 <__errno>
   1933c:	00813083          	ld	ra,8(sp)
   19340:	00c00793          	li	a5,12
   19344:	00f52023          	sw	a5,0(a0)
   19348:	01010113          	addi	sp,sp,16
   1934c:	fff00513          	li	a0,-1
   19350:	00008067          	ret

0000000000019354 <fork>:
   19354:	ff010113          	addi	sp,sp,-16
   19358:	00113423          	sd	ra,8(sp)
   1935c:	218000ef          	jal	19574 <__errno>
   19360:	00813083          	ld	ra,8(sp)
   19364:	00b00793          	li	a5,11
   19368:	00f52023          	sw	a5,0(a0)
   1936c:	01010113          	addi	sp,sp,16
   19370:	fff00513          	li	a0,-1
   19374:	00008067          	ret

0000000000019378 <getpid>:
   19378:	00100513          	li	a0,1
   1937c:	00008067          	ret

0000000000019380 <kill>:
   19380:	ff010113          	addi	sp,sp,-16
   19384:	00113423          	sd	ra,8(sp)
   19388:	1ec000ef          	jal	19574 <__errno>
   1938c:	00813083          	ld	ra,8(sp)
   19390:	01600793          	li	a5,22
   19394:	00f52023          	sw	a5,0(a0)
   19398:	01010113          	addi	sp,sp,16
   1939c:	fff00513          	li	a0,-1
   193a0:	00008067          	ret

00000000000193a4 <wait>:
   193a4:	ff010113          	addi	sp,sp,-16
   193a8:	00113423          	sd	ra,8(sp)
   193ac:	1c8000ef          	jal	19574 <__errno>
   193b0:	00813083          	ld	ra,8(sp)
   193b4:	00a00793          	li	a5,10
   193b8:	00f52023          	sw	a5,0(a0)
   193bc:	01010113          	addi	sp,sp,16
   193c0:	fff00513          	li	a0,-1
   193c4:	00008067          	ret

00000000000193c8 <isatty>:
   193c8:	f8010113          	addi	sp,sp,-128
   193cc:	00010593          	mv	a1,sp
   193d0:	00000613          	li	a2,0
   193d4:	00000693          	li	a3,0
   193d8:	05000893          	li	a7,80
   193dc:	00000073          	ecall
   193e0:	dc0542e3          	bltz	a0,191a4 <__syscall_error>
   193e4:	fff00793          	li	a5,-1
   193e8:	0005051b          	sext.w	a0,a0
   193ec:	00f50863          	beq	a0,a5,193fc <isatty+0x34>
   193f0:	01012503          	lw	a0,16(sp)
   193f4:	40d5551b          	sraiw	a0,a0,0xd
   193f8:	00157513          	andi	a0,a0,1
   193fc:	08010113          	addi	sp,sp,128
   19400:	00008067          	ret

0000000000019404 <times>:
   19404:	92818313          	addi	t1,gp,-1752 # 1c6e8 <t0.2343>
   19408:	00033703          	ld	a4,0(t1)
   1940c:	ff010113          	addi	sp,sp,-16
   19410:	00050813          	mv	a6,a0
   19414:	02071063          	bnez	a4,19434 <times+0x30>
   19418:	92818513          	addi	a0,gp,-1752 # 1c6e8 <t0.2343>
   1941c:	00000593          	li	a1,0
   19420:	00000613          	li	a2,0
   19424:	00000693          	li	a3,0
   19428:	0a900893          	li	a7,169
   1942c:	00000073          	ecall
   19430:	d6054ae3          	bltz	a0,191a4 <__syscall_error>
   19434:	00010513          	mv	a0,sp
   19438:	00000593          	li	a1,0
   1943c:	00000613          	li	a2,0
   19440:	00000693          	li	a3,0
   19444:	0a900893          	li	a7,169
   19448:	00000073          	ecall
   1944c:	d4054ce3          	bltz	a0,191a4 <__syscall_error>
   19450:	00033703          	ld	a4,0(t1)
   19454:	00013783          	ld	a5,0(sp)
   19458:	fff00513          	li	a0,-1
   1945c:	00083823          	sd	zero,16(a6)
   19460:	40e786b3          	sub	a3,a5,a4
   19464:	000f47b7          	lui	a5,0xf4
   19468:	24078793          	addi	a5,a5,576 # f4240 <_gp+0xd7480>
   1946c:	02f68733          	mul	a4,a3,a5
   19470:	00833683          	ld	a3,8(t1)
   19474:	00813783          	ld	a5,8(sp)
   19478:	00083c23          	sd	zero,24(a6)
   1947c:	00083423          	sd	zero,8(a6)
   19480:	40d787b3          	sub	a5,a5,a3
   19484:	01010113          	addi	sp,sp,16
   19488:	00f707b3          	add	a5,a4,a5
   1948c:	00f83023          	sd	a5,0(a6)
   19490:	00008067          	ret

0000000000019494 <gettimeofday>:
   19494:	00000593          	li	a1,0
   19498:	00000613          	li	a2,0
   1949c:	00000693          	li	a3,0
   194a0:	0a900893          	li	a7,169
   194a4:	00000073          	ecall
   194a8:	ce054ee3          	bltz	a0,191a4 <__syscall_error>
   194ac:	0005051b          	sext.w	a0,a0
   194b0:	00008067          	ret

00000000000194b4 <ftime>:
   194b4:	00051423          	sh	zero,8(a0)
   194b8:	00053023          	sd	zero,0(a0)
   194bc:	00000513          	li	a0,0
   194c0:	00008067          	ret

00000000000194c4 <utime>:
   194c4:	fff00513          	li	a0,-1
   194c8:	00008067          	ret

00000000000194cc <chown>:
   194cc:	fff00513          	li	a0,-1
   194d0:	00008067          	ret

00000000000194d4 <chmod>:
   194d4:	fff00513          	li	a0,-1
   194d8:	00008067          	ret

00000000000194dc <chdir>:
   194dc:	fff00513          	li	a0,-1
   194e0:	00008067          	ret

00000000000194e4 <getcwd>:
   194e4:	00000513          	li	a0,0
   194e8:	00008067          	ret

00000000000194ec <sysconf>:
   194ec:	00200793          	li	a5,2
   194f0:	00f51863          	bne	a0,a5,19500 <sysconf+0x14>
   194f4:	000f4537          	lui	a0,0xf4
   194f8:	24050513          	addi	a0,a0,576 # f4240 <_gp+0xd7480>
   194fc:	00008067          	ret
   19500:	fff00513          	li	a0,-1
   19504:	00008067          	ret

0000000000019508 <sbrk>:
   19508:	8c01b703          	ld	a4,-1856(gp) # 1c680 <heap_end.2381>
   1950c:	00050793          	mv	a5,a0
   19510:	00071663          	bnez	a4,1951c <sbrk+0x14>
   19514:	93818713          	addi	a4,gp,-1736 # 1c6f8 <_end>
   19518:	8ce1b023          	sd	a4,-1856(gp) # 1c680 <heap_end.2381>
   1951c:	00e78533          	add	a0,a5,a4
   19520:	00000593          	li	a1,0
   19524:	00000613          	li	a2,0
   19528:	00000693          	li	a3,0
   1952c:	0d600893          	li	a7,214
   19530:	00000073          	ecall
   19534:	c60548e3          	bltz	a0,191a4 <__syscall_error>
   19538:	8c01b683          	ld	a3,-1856(gp) # 1c680 <heap_end.2381>
   1953c:	fff00713          	li	a4,-1
   19540:	00d787b3          	add	a5,a5,a3
   19544:	00f51663          	bne	a0,a5,19550 <sbrk+0x48>
   19548:	8ca1b023          	sd	a0,-1856(gp) # 1c680 <heap_end.2381>
   1954c:	00068713          	mv	a4,a3
   19550:	00070513          	mv	a0,a4
   19554:	00008067          	ret

0000000000019558 <_exit>:
   19558:	00000593          	li	a1,0
   1955c:	00000613          	li	a2,0
   19560:	00000693          	li	a3,0
   19564:	05d00893          	li	a7,93
   19568:	00000073          	ecall
   1956c:	c2054ce3          	bltz	a0,191a4 <__syscall_error>
   19570:	0000006f          	j	19570 <_exit+0x18>

0000000000019574 <__errno>:
   19574:	8101b503          	ld	a0,-2032(gp) # 1c5d0 <_impure_ptr>
   19578:	00008067          	ret
