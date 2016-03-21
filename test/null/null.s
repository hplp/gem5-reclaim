
null:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010000 <_ftext>:
   10000:	00002197          	auipc	gp,0x2
   10004:	cf018193          	addi	gp,gp,-784 # 11cf0 <_gp>
   10008:	00001297          	auipc	t0,0x1
   1000c:	50028293          	addi	t0,t0,1280 # 11508 <_fbss>
   10010:	00001317          	auipc	t1,0x1
   10014:	54830313          	addi	t1,t1,1352 # 11558 <_end>
   10018:	0002b023          	sd	zero,0(t0)
   1001c:	00828293          	addi	t0,t0,8
   10020:	fe62ece3          	bltu	t0,t1,10018 <_ftext+0x18>
   10024:	00000517          	auipc	a0,0x0
   10028:	1a450513          	addi	a0,a0,420 # 101c8 <__libc_fini_array>
   1002c:	158000ef          	jal	10184 <atexit>
   10030:	1f4000ef          	jal	10224 <__libc_init_array>
   10034:	00012503          	lw	a0,0(sp)
   10038:	00810593          	addi	a1,sp,8
   1003c:	00000613          	li	a2,0
   10040:	124000ef          	jal	10164 <main>
   10044:	1540006f          	j	10198 <exit>

0000000000010048 <_fini>:
   10048:	00008067          	ret

000000000001004c <deregister_tm_clones>:
   1004c:	00011537          	lui	a0,0x11
   10050:	000117b7          	lui	a5,0x11
   10054:	4e850713          	addi	a4,a0,1256 # 114e8 <__TMC_END__>
   10058:	4ef78793          	addi	a5,a5,1263 # 114ef <__TMC_END__+0x7>
   1005c:	40e787b3          	sub	a5,a5,a4
   10060:	00e00713          	li	a4,14
   10064:	00f77c63          	bleu	a5,a4,1007c <deregister_tm_clones+0x30>
   10068:	00000337          	lui	t1,0x0
   1006c:	00030313          	mv	t1,t1
   10070:	00030663          	beqz	t1,1007c <deregister_tm_clones+0x30>
   10074:	4e850513          	addi	a0,a0,1256
   10078:	00030067          	jr	t1
   1007c:	00008067          	ret

0000000000010080 <register_tm_clones>:
   10080:	00011537          	lui	a0,0x11
   10084:	000117b7          	lui	a5,0x11
   10088:	4e850593          	addi	a1,a0,1256 # 114e8 <__TMC_END__>
   1008c:	4e878793          	addi	a5,a5,1256 # 114e8 <__TMC_END__>
   10090:	40b787b3          	sub	a5,a5,a1
   10094:	4037d793          	srai	a5,a5,0x3
   10098:	03f7d593          	srli	a1,a5,0x3f
   1009c:	00f585b3          	add	a1,a1,a5
   100a0:	4015d593          	srai	a1,a1,0x1
   100a4:	00058c63          	beqz	a1,100bc <register_tm_clones+0x3c>
   100a8:	00000337          	lui	t1,0x0
   100ac:	00030313          	mv	t1,t1
   100b0:	00030663          	beqz	t1,100bc <register_tm_clones+0x3c>
   100b4:	4e850513          	addi	a0,a0,1256
   100b8:	00030067          	jr	t1
   100bc:	00008067          	ret

00000000000100c0 <__do_global_dtors_aux>:
   100c0:	ff010113          	addi	sp,sp,-16
   100c4:	00813023          	sd	s0,0(sp)
   100c8:	8201c783          	lbu	a5,-2016(gp) # 11510 <_bss_start>
   100cc:	00113423          	sd	ra,8(sp)
   100d0:	02079663          	bnez	a5,100fc <__do_global_dtors_aux+0x3c>
   100d4:	f79ff0ef          	jal	1004c <deregister_tm_clones>
   100d8:	000007b7          	lui	a5,0x0
   100dc:	00078793          	mv	a5,a5
   100e0:	00078a63          	beqz	a5,100f4 <__do_global_dtors_aux+0x34>
   100e4:	00011537          	lui	a0,0x11
   100e8:	96050513          	addi	a0,a0,-1696 # 10960 <__fini_array_end>
   100ec:	ffff0317          	auipc	t1,0xffff0
   100f0:	f14300e7          	jalr	t1,-236 # 0 <_ftext-0x10000>
   100f4:	00100793          	li	a5,1
   100f8:	82f18023          	sb	a5,-2016(gp) # 11510 <_bss_start>
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
   10120:	00011537          	lui	a0,0x11
   10124:	82818593          	addi	a1,gp,-2008 # 11518 <object.3092>
   10128:	96050513          	addi	a0,a0,-1696 # 10960 <__fini_array_end>
   1012c:	ffff0317          	auipc	t1,0xffff0
   10130:	ed4300e7          	jalr	t1,-300 # 0 <_ftext-0x10000>
   10134:	000117b7          	lui	a5,0x11
   10138:	d9078513          	addi	a0,a5,-624 # 10d90 <__JCR_END__>
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
   10164:	ff010113          	addi	sp,sp,-16
   10168:	00813423          	sd	s0,8(sp)
   1016c:	01010413          	addi	s0,sp,16
   10170:	00000793          	li	a5,0
   10174:	00078513          	mv	a0,a5
   10178:	00813403          	ld	s0,8(sp)
   1017c:	01010113          	addi	sp,sp,16
   10180:	00008067          	ret

0000000000010184 <atexit>:
   10184:	00050593          	mv	a1,a0
   10188:	00000693          	li	a3,0
   1018c:	00000613          	li	a2,0
   10190:	00000513          	li	a0,0
   10194:	1300006f          	j	102c4 <__register_exitproc>

0000000000010198 <exit>:
   10198:	ff010113          	addi	sp,sp,-16
   1019c:	00000593          	li	a1,0
   101a0:	00813023          	sd	s0,0(sp)
   101a4:	00113423          	sd	ra,8(sp)
   101a8:	00050413          	mv	s0,a0
   101ac:	22c000ef          	jal	103d8 <__call_exitprocs>
   101b0:	8081b503          	ld	a0,-2040(gp) # 114f8 <_global_impure_ptr>
   101b4:	05853783          	ld	a5,88(a0)
   101b8:	00078463          	beqz	a5,101c0 <exit+0x28>
   101bc:	000780e7          	jalr	a5
   101c0:	00040513          	mv	a0,s0
   101c4:	75c000ef          	jal	10920 <_exit>

00000000000101c8 <__libc_fini_array>:
   101c8:	fe010113          	addi	sp,sp,-32
   101cc:	00813823          	sd	s0,16(sp)
   101d0:	00913423          	sd	s1,8(sp)
   101d4:	00011437          	lui	s0,0x11
   101d8:	000114b7          	lui	s1,0x11
   101dc:	95848493          	addi	s1,s1,-1704 # 10958 <__init_array_end>
   101e0:	96040413          	addi	s0,s0,-1696 # 10960 <__fini_array_end>
   101e4:	40940433          	sub	s0,s0,s1
   101e8:	ff840793          	addi	a5,s0,-8
   101ec:	00113c23          	sd	ra,24(sp)
   101f0:	40345413          	srai	s0,s0,0x3
   101f4:	009784b3          	add	s1,a5,s1
   101f8:	00040c63          	beqz	s0,10210 <__libc_fini_array+0x48>
   101fc:	0004b783          	ld	a5,0(s1)
   10200:	fff40413          	addi	s0,s0,-1
   10204:	ff848493          	addi	s1,s1,-8
   10208:	000780e7          	jalr	a5
   1020c:	fe0418e3          	bnez	s0,101fc <__libc_fini_array+0x34>
   10210:	01813083          	ld	ra,24(sp)
   10214:	01013403          	ld	s0,16(sp)
   10218:	00813483          	ld	s1,8(sp)
   1021c:	02010113          	addi	sp,sp,32
   10220:	e29ff06f          	j	10048 <_fini>

0000000000010224 <__libc_init_array>:
   10224:	fe010113          	addi	sp,sp,-32
   10228:	00813823          	sd	s0,16(sp)
   1022c:	000117b7          	lui	a5,0x11
   10230:	00011437          	lui	s0,0x11
   10234:	01213023          	sd	s2,0(sp)
   10238:	95078793          	addi	a5,a5,-1712 # 10950 <_etext>
   1023c:	95040913          	addi	s2,s0,-1712 # 10950 <_etext>
   10240:	41278933          	sub	s2,a5,s2
   10244:	00913423          	sd	s1,8(sp)
   10248:	00113c23          	sd	ra,24(sp)
   1024c:	40395913          	srai	s2,s2,0x3
   10250:	95040413          	addi	s0,s0,-1712
   10254:	00000493          	li	s1,0
   10258:	00090c63          	beqz	s2,10270 <__libc_init_array+0x4c>
   1025c:	00043783          	ld	a5,0(s0)
   10260:	00148493          	addi	s1,s1,1
   10264:	00840413          	addi	s0,s0,8
   10268:	000780e7          	jalr	a5
   1026c:	fe9918e3          	bne	s2,s1,1025c <__libc_init_array+0x38>
   10270:	dd9ff0ef          	jal	10048 <_fini>
   10274:	00011437          	lui	s0,0x11
   10278:	000117b7          	lui	a5,0x11
   1027c:	95040913          	addi	s2,s0,-1712 # 10950 <_etext>
   10280:	95878793          	addi	a5,a5,-1704 # 10958 <__init_array_end>
   10284:	41278933          	sub	s2,a5,s2
   10288:	40395913          	srai	s2,s2,0x3
   1028c:	95040413          	addi	s0,s0,-1712
   10290:	00000493          	li	s1,0
   10294:	00090c63          	beqz	s2,102ac <__libc_init_array+0x88>
   10298:	00043783          	ld	a5,0(s0)
   1029c:	00148493          	addi	s1,s1,1
   102a0:	00840413          	addi	s0,s0,8
   102a4:	000780e7          	jalr	a5
   102a8:	fe9918e3          	bne	s2,s1,10298 <__libc_init_array+0x74>
   102ac:	01813083          	ld	ra,24(sp)
   102b0:	01013403          	ld	s0,16(sp)
   102b4:	00813483          	ld	s1,8(sp)
   102b8:	00013903          	ld	s2,0(sp)
   102bc:	02010113          	addi	sp,sp,32
   102c0:	00008067          	ret

00000000000102c4 <__register_exitproc>:
   102c4:	fd010113          	addi	sp,sp,-48
   102c8:	02813023          	sd	s0,32(sp)
   102cc:	8081b403          	ld	s0,-2040(gp) # 114f8 <_global_impure_ptr>
   102d0:	00913c23          	sd	s1,24(sp)
   102d4:	00050493          	mv	s1,a0
   102d8:	1f843503          	ld	a0,504(s0)
   102dc:	01213823          	sd	s2,16(sp)
   102e0:	01313423          	sd	s3,8(sp)
   102e4:	01413023          	sd	s4,0(sp)
   102e8:	02113423          	sd	ra,40(sp)
   102ec:	00058913          	mv	s2,a1
   102f0:	00060a13          	mv	s4,a2
   102f4:	00068993          	mv	s3,a3
   102f8:	0c050663          	beqz	a0,103c4 <__register_exitproc+0x100>
   102fc:	00852703          	lw	a4,8(a0)
   10300:	01f00793          	li	a5,31
   10304:	0017059b          	addiw	a1,a4,1
   10308:	04e7d063          	ble	a4,a5,10348 <__register_exitproc+0x84>
   1030c:	000007b7          	lui	a5,0x0
   10310:	00078793          	mv	a5,a5
   10314:	0a078e63          	beqz	a5,103d0 <__register_exitproc+0x10c>
   10318:	31800513          	li	a0,792
   1031c:	ffff0317          	auipc	t1,0xffff0
   10320:	ce4300e7          	jalr	t1,-796 # 0 <_ftext-0x10000>
   10324:	0a050663          	beqz	a0,103d0 <__register_exitproc+0x10c>
   10328:	1f843783          	ld	a5,504(s0)
   1032c:	00052423          	sw	zero,8(a0)
   10330:	00100593          	li	a1,1
   10334:	00f53023          	sd	a5,0(a0)
   10338:	1ea43c23          	sd	a0,504(s0)
   1033c:	30052823          	sw	zero,784(a0)
   10340:	30052a23          	sw	zero,788(a0)
   10344:	00000713          	li	a4,0
   10348:	00070793          	mv	a5,a4
   1034c:	02049e63          	bnez	s1,10388 <__register_exitproc+0xc4>
   10350:	00278793          	addi	a5,a5,2 # 2 <_ftext-0xfffe>
   10354:	00379793          	slli	a5,a5,0x3
   10358:	00b52423          	sw	a1,8(a0)
   1035c:	00f50533          	add	a0,a0,a5
   10360:	01253023          	sd	s2,0(a0)
   10364:	00000513          	li	a0,0
   10368:	02813083          	ld	ra,40(sp)
   1036c:	02013403          	ld	s0,32(sp)
   10370:	01813483          	ld	s1,24(sp)
   10374:	01013903          	ld	s2,16(sp)
   10378:	00813983          	ld	s3,8(sp)
   1037c:	00013a03          	ld	s4,0(sp)
   10380:	03010113          	addi	sp,sp,48
   10384:	00008067          	ret
   10388:	00371813          	slli	a6,a4,0x3
   1038c:	01050833          	add	a6,a0,a6
   10390:	11483823          	sd	s4,272(a6)
   10394:	31052883          	lw	a7,784(a0)
   10398:	00100613          	li	a2,1
   1039c:	00e6173b          	sllw	a4,a2,a4
   103a0:	00e8e633          	or	a2,a7,a4
   103a4:	30c52823          	sw	a2,784(a0)
   103a8:	21383823          	sd	s3,528(a6)
   103ac:	00200693          	li	a3,2
   103b0:	fad490e3          	bne	s1,a3,10350 <__register_exitproc+0x8c>
   103b4:	31452683          	lw	a3,788(a0)
   103b8:	00e6e733          	or	a4,a3,a4
   103bc:	30e52a23          	sw	a4,788(a0)
   103c0:	f91ff06f          	j	10350 <__register_exitproc+0x8c>
   103c4:	20040513          	addi	a0,s0,512
   103c8:	1ea43c23          	sd	a0,504(s0)
   103cc:	f31ff06f          	j	102fc <__register_exitproc+0x38>
   103d0:	fff00513          	li	a0,-1
   103d4:	f95ff06f          	j	10368 <__register_exitproc+0xa4>

00000000000103d8 <__call_exitprocs>:
   103d8:	fa010113          	addi	sp,sp,-96
   103dc:	03413823          	sd	s4,48(sp)
   103e0:	8081ba03          	ld	s4,-2040(gp) # 114f8 <_global_impure_ptr>
   103e4:	03313c23          	sd	s3,56(sp)
   103e8:	000009b7          	lui	s3,0x0
   103ec:	04913423          	sd	s1,72(sp)
   103f0:	05213023          	sd	s2,64(sp)
   103f4:	03513423          	sd	s5,40(sp)
   103f8:	01713c23          	sd	s7,24(sp)
   103fc:	01813823          	sd	s8,16(sp)
   10400:	04113c23          	sd	ra,88(sp)
   10404:	04813823          	sd	s0,80(sp)
   10408:	03613023          	sd	s6,32(sp)
   1040c:	01913423          	sd	s9,8(sp)
   10410:	01a13023          	sd	s10,0(sp)
   10414:	00050913          	mv	s2,a0
   10418:	00058b93          	mv	s7,a1
   1041c:	1f8a0a93          	addi	s5,s4,504
   10420:	00100493          	li	s1,1
   10424:	fff00c13          	li	s8,-1
   10428:	00098993          	mv	s3,s3
   1042c:	1f8a3b03          	ld	s6,504(s4)
   10430:	0c0b0663          	beqz	s6,104fc <__call_exitprocs+0x124>
   10434:	000a8d13          	mv	s10,s5
   10438:	008b2403          	lw	s0,8(s6)
   1043c:	fff4041b          	addiw	s0,s0,-1
   10440:	02045263          	bgez	s0,10464 <__call_exitprocs+0x8c>
   10444:	08c0006f          	j	104d0 <__call_exitprocs+0xf8>
   10448:	02040793          	addi	a5,s0,32
   1044c:	00379793          	slli	a5,a5,0x3
   10450:	00fb07b3          	add	a5,s6,a5
   10454:	1107b783          	ld	a5,272(a5)
   10458:	00fb8a63          	beq	s7,a5,1046c <__call_exitprocs+0x94>
   1045c:	fff4041b          	addiw	s0,s0,-1
   10460:	07840863          	beq	s0,s8,104d0 <__call_exitprocs+0xf8>
   10464:	00040713          	mv	a4,s0
   10468:	fe0b90e3          	bnez	s7,10448 <__call_exitprocs+0x70>
   1046c:	008b2783          	lw	a5,8(s6)
   10470:	00371713          	slli	a4,a4,0x3
   10474:	00eb0733          	add	a4,s6,a4
   10478:	fff7879b          	addiw	a5,a5,-1
   1047c:	01073683          	ld	a3,16(a4)
   10480:	0a878e63          	beq	a5,s0,1053c <__call_exitprocs+0x164>
   10484:	00073823          	sd	zero,16(a4)
   10488:	fc068ae3          	beqz	a3,1045c <__call_exitprocs+0x84>
   1048c:	310b2783          	lw	a5,784(s6)
   10490:	0084963b          	sllw	a2,s1,s0
   10494:	008b2c83          	lw	s9,8(s6)
   10498:	00f677b3          	and	a5,a2,a5
   1049c:	08078c63          	beqz	a5,10534 <__call_exitprocs+0x15c>
   104a0:	314b2783          	lw	a5,788(s6)
   104a4:	00f67633          	and	a2,a2,a5
   104a8:	08061e63          	bnez	a2,10544 <__call_exitprocs+0x16c>
   104ac:	11073583          	ld	a1,272(a4)
   104b0:	00090513          	mv	a0,s2
   104b4:	000680e7          	jalr	a3
   104b8:	008b2783          	lw	a5,8(s6)
   104bc:	f79798e3          	bne	a5,s9,1042c <__call_exitprocs+0x54>
   104c0:	000d3783          	ld	a5,0(s10)
   104c4:	f76794e3          	bne	a5,s6,1042c <__call_exitprocs+0x54>
   104c8:	fff4041b          	addiw	s0,s0,-1
   104cc:	f9841ce3          	bne	s0,s8,10464 <__call_exitprocs+0x8c>
   104d0:	02098663          	beqz	s3,104fc <__call_exitprocs+0x124>
   104d4:	008b2783          	lw	a5,8(s6)
   104d8:	06079c63          	bnez	a5,10550 <__call_exitprocs+0x178>
   104dc:	000b3783          	ld	a5,0(s6)
   104e0:	08078263          	beqz	a5,10564 <__call_exitprocs+0x18c>
   104e4:	000b0513          	mv	a0,s6
   104e8:	00fd3023          	sd	a5,0(s10)
   104ec:	ffff0317          	auipc	t1,0xffff0
   104f0:	b14300e7          	jalr	t1,-1260 # 0 <_ftext-0x10000>
   104f4:	000d3b03          	ld	s6,0(s10)
   104f8:	f40b10e3          	bnez	s6,10438 <__call_exitprocs+0x60>
   104fc:	05813083          	ld	ra,88(sp)
   10500:	05013403          	ld	s0,80(sp)
   10504:	04813483          	ld	s1,72(sp)
   10508:	04013903          	ld	s2,64(sp)
   1050c:	03813983          	ld	s3,56(sp)
   10510:	03013a03          	ld	s4,48(sp)
   10514:	02813a83          	ld	s5,40(sp)
   10518:	02013b03          	ld	s6,32(sp)
   1051c:	01813b83          	ld	s7,24(sp)
   10520:	01013c03          	ld	s8,16(sp)
   10524:	00813c83          	ld	s9,8(sp)
   10528:	00013d03          	ld	s10,0(sp)
   1052c:	06010113          	addi	sp,sp,96
   10530:	00008067          	ret
   10534:	000680e7          	jalr	a3
   10538:	f81ff06f          	j	104b8 <__call_exitprocs+0xe0>
   1053c:	008b2423          	sw	s0,8(s6)
   10540:	f49ff06f          	j	10488 <__call_exitprocs+0xb0>
   10544:	11073503          	ld	a0,272(a4)
   10548:	000680e7          	jalr	a3
   1054c:	f6dff06f          	j	104b8 <__call_exitprocs+0xe0>
   10550:	000b3783          	ld	a5,0(s6)
   10554:	000b0d13          	mv	s10,s6
   10558:	00078b13          	mv	s6,a5
   1055c:	ec0b1ee3          	bnez	s6,10438 <__call_exitprocs+0x60>
   10560:	f9dff06f          	j	104fc <__call_exitprocs+0x124>
   10564:	00000793          	li	a5,0
   10568:	fedff06f          	j	10554 <__call_exitprocs+0x17c>

000000000001056c <__syscall_error>:
   1056c:	ff010113          	addi	sp,sp,-16
   10570:	00113423          	sd	ra,8(sp)
   10574:	00813023          	sd	s0,0(sp)
   10578:	00050413          	mv	s0,a0
   1057c:	3c0000ef          	jal	1093c <__errno>
   10580:	00813083          	ld	ra,8(sp)
   10584:	408007bb          	negw	a5,s0
   10588:	00f52023          	sw	a5,0(a0)
   1058c:	00013403          	ld	s0,0(sp)
   10590:	fff00513          	li	a0,-1
   10594:	01010113          	addi	sp,sp,16
   10598:	00008067          	ret

000000000001059c <open>:
   1059c:	00000693          	li	a3,0
   105a0:	40000893          	li	a7,1024
   105a4:	00000073          	ecall
   105a8:	fc0542e3          	bltz	a0,1056c <__syscall_error>
   105ac:	0005051b          	sext.w	a0,a0
   105b0:	00008067          	ret

00000000000105b4 <openat>:
   105b4:	03800893          	li	a7,56
   105b8:	00000073          	ecall
   105bc:	fa0548e3          	bltz	a0,1056c <__syscall_error>
   105c0:	0005051b          	sext.w	a0,a0
   105c4:	00008067          	ret

00000000000105c8 <lseek>:
   105c8:	00000693          	li	a3,0
   105cc:	03e00893          	li	a7,62
   105d0:	00000073          	ecall
   105d4:	f8054ce3          	bltz	a0,1056c <__syscall_error>
   105d8:	00008067          	ret

00000000000105dc <read>:
   105dc:	00000693          	li	a3,0
   105e0:	03f00893          	li	a7,63
   105e4:	00000073          	ecall
   105e8:	f80542e3          	bltz	a0,1056c <__syscall_error>
   105ec:	00008067          	ret

00000000000105f0 <write>:
   105f0:	00000693          	li	a3,0
   105f4:	04000893          	li	a7,64
   105f8:	00000073          	ecall
   105fc:	f60548e3          	bltz	a0,1056c <__syscall_error>
   10600:	00008067          	ret

0000000000010604 <fstat>:
   10604:	00000613          	li	a2,0
   10608:	00000693          	li	a3,0
   1060c:	05000893          	li	a7,80
   10610:	00000073          	ecall
   10614:	f4054ce3          	bltz	a0,1056c <__syscall_error>
   10618:	0005051b          	sext.w	a0,a0
   1061c:	00008067          	ret

0000000000010620 <stat>:
   10620:	00000613          	li	a2,0
   10624:	00000693          	li	a3,0
   10628:	40e00893          	li	a7,1038
   1062c:	00000073          	ecall
   10630:	f2054ee3          	bltz	a0,1056c <__syscall_error>
   10634:	0005051b          	sext.w	a0,a0
   10638:	00008067          	ret

000000000001063c <lstat>:
   1063c:	00000613          	li	a2,0
   10640:	00000693          	li	a3,0
   10644:	40f00893          	li	a7,1039
   10648:	00000073          	ecall
   1064c:	f20540e3          	bltz	a0,1056c <__syscall_error>
   10650:	0005051b          	sext.w	a0,a0
   10654:	00008067          	ret

0000000000010658 <fstatat>:
   10658:	04f00893          	li	a7,79
   1065c:	00000073          	ecall
   10660:	f00546e3          	bltz	a0,1056c <__syscall_error>
   10664:	0005051b          	sext.w	a0,a0
   10668:	00008067          	ret

000000000001066c <access>:
   1066c:	00000613          	li	a2,0
   10670:	00000693          	li	a3,0
   10674:	40900893          	li	a7,1033
   10678:	00000073          	ecall
   1067c:	ee0548e3          	bltz	a0,1056c <__syscall_error>
   10680:	0005051b          	sext.w	a0,a0
   10684:	00008067          	ret

0000000000010688 <faccessat>:
   10688:	03000893          	li	a7,48
   1068c:	00000073          	ecall
   10690:	ec054ee3          	bltz	a0,1056c <__syscall_error>
   10694:	0005051b          	sext.w	a0,a0
   10698:	00008067          	ret

000000000001069c <close>:
   1069c:	00000593          	li	a1,0
   106a0:	00000613          	li	a2,0
   106a4:	00000693          	li	a3,0
   106a8:	03900893          	li	a7,57
   106ac:	00000073          	ecall
   106b0:	ea054ee3          	bltz	a0,1056c <__syscall_error>
   106b4:	0005051b          	sext.w	a0,a0
   106b8:	00008067          	ret

00000000000106bc <link>:
   106bc:	00000613          	li	a2,0
   106c0:	00000693          	li	a3,0
   106c4:	40100893          	li	a7,1025
   106c8:	00000073          	ecall
   106cc:	ea0540e3          	bltz	a0,1056c <__syscall_error>
   106d0:	0005051b          	sext.w	a0,a0
   106d4:	00008067          	ret

00000000000106d8 <unlink>:
   106d8:	00000593          	li	a1,0
   106dc:	00000613          	li	a2,0
   106e0:	00000693          	li	a3,0
   106e4:	40200893          	li	a7,1026
   106e8:	00000073          	ecall
   106ec:	e80540e3          	bltz	a0,1056c <__syscall_error>
   106f0:	0005051b          	sext.w	a0,a0
   106f4:	00008067          	ret

00000000000106f8 <execve>:
   106f8:	ff010113          	addi	sp,sp,-16
   106fc:	00113423          	sd	ra,8(sp)
   10700:	23c000ef          	jal	1093c <__errno>
   10704:	00813083          	ld	ra,8(sp)
   10708:	00c00793          	li	a5,12
   1070c:	00f52023          	sw	a5,0(a0)
   10710:	01010113          	addi	sp,sp,16
   10714:	fff00513          	li	a0,-1
   10718:	00008067          	ret

000000000001071c <fork>:
   1071c:	ff010113          	addi	sp,sp,-16
   10720:	00113423          	sd	ra,8(sp)
   10724:	218000ef          	jal	1093c <__errno>
   10728:	00813083          	ld	ra,8(sp)
   1072c:	00b00793          	li	a5,11
   10730:	00f52023          	sw	a5,0(a0)
   10734:	01010113          	addi	sp,sp,16
   10738:	fff00513          	li	a0,-1
   1073c:	00008067          	ret

0000000000010740 <getpid>:
   10740:	00100513          	li	a0,1
   10744:	00008067          	ret

0000000000010748 <kill>:
   10748:	ff010113          	addi	sp,sp,-16
   1074c:	00113423          	sd	ra,8(sp)
   10750:	1ec000ef          	jal	1093c <__errno>
   10754:	00813083          	ld	ra,8(sp)
   10758:	01600793          	li	a5,22
   1075c:	00f52023          	sw	a5,0(a0)
   10760:	01010113          	addi	sp,sp,16
   10764:	fff00513          	li	a0,-1
   10768:	00008067          	ret

000000000001076c <wait>:
   1076c:	ff010113          	addi	sp,sp,-16
   10770:	00113423          	sd	ra,8(sp)
   10774:	1c8000ef          	jal	1093c <__errno>
   10778:	00813083          	ld	ra,8(sp)
   1077c:	00a00793          	li	a5,10
   10780:	00f52023          	sw	a5,0(a0)
   10784:	01010113          	addi	sp,sp,16
   10788:	fff00513          	li	a0,-1
   1078c:	00008067          	ret

0000000000010790 <isatty>:
   10790:	f8010113          	addi	sp,sp,-128
   10794:	00010593          	mv	a1,sp
   10798:	00000613          	li	a2,0
   1079c:	00000693          	li	a3,0
   107a0:	05000893          	li	a7,80
   107a4:	00000073          	ecall
   107a8:	dc0542e3          	bltz	a0,1056c <__syscall_error>
   107ac:	fff00793          	li	a5,-1
   107b0:	0005051b          	sext.w	a0,a0
   107b4:	00f50863          	beq	a0,a5,107c4 <isatty+0x34>
   107b8:	01012503          	lw	a0,16(sp)
   107bc:	40d5551b          	sraiw	a0,a0,0xd
   107c0:	00157513          	andi	a0,a0,1
   107c4:	08010113          	addi	sp,sp,128
   107c8:	00008067          	ret

00000000000107cc <times>:
   107cc:	85818313          	addi	t1,gp,-1960 # 11548 <t0.2343>
   107d0:	00033703          	ld	a4,0(t1)
   107d4:	ff010113          	addi	sp,sp,-16
   107d8:	00050813          	mv	a6,a0
   107dc:	02071063          	bnez	a4,107fc <times+0x30>
   107e0:	85818513          	addi	a0,gp,-1960 # 11548 <t0.2343>
   107e4:	00000593          	li	a1,0
   107e8:	00000613          	li	a2,0
   107ec:	00000693          	li	a3,0
   107f0:	0a900893          	li	a7,169
   107f4:	00000073          	ecall
   107f8:	d6054ae3          	bltz	a0,1056c <__syscall_error>
   107fc:	00010513          	mv	a0,sp
   10800:	00000593          	li	a1,0
   10804:	00000613          	li	a2,0
   10808:	00000693          	li	a3,0
   1080c:	0a900893          	li	a7,169
   10810:	00000073          	ecall
   10814:	d4054ce3          	bltz	a0,1056c <__syscall_error>
   10818:	00033703          	ld	a4,0(t1)
   1081c:	00013783          	ld	a5,0(sp)
   10820:	fff00513          	li	a0,-1
   10824:	00083823          	sd	zero,16(a6)
   10828:	40e786b3          	sub	a3,a5,a4
   1082c:	000f47b7          	lui	a5,0xf4
   10830:	24078793          	addi	a5,a5,576 # f4240 <_gp+0xe2550>
   10834:	02f68733          	mul	a4,a3,a5
   10838:	00833683          	ld	a3,8(t1)
   1083c:	00813783          	ld	a5,8(sp)
   10840:	00083c23          	sd	zero,24(a6)
   10844:	00083423          	sd	zero,8(a6)
   10848:	40d787b3          	sub	a5,a5,a3
   1084c:	01010113          	addi	sp,sp,16
   10850:	00f707b3          	add	a5,a4,a5
   10854:	00f83023          	sd	a5,0(a6)
   10858:	00008067          	ret

000000000001085c <gettimeofday>:
   1085c:	00000593          	li	a1,0
   10860:	00000613          	li	a2,0
   10864:	00000693          	li	a3,0
   10868:	0a900893          	li	a7,169
   1086c:	00000073          	ecall
   10870:	ce054ee3          	bltz	a0,1056c <__syscall_error>
   10874:	0005051b          	sext.w	a0,a0
   10878:	00008067          	ret

000000000001087c <ftime>:
   1087c:	00051423          	sh	zero,8(a0)
   10880:	00053023          	sd	zero,0(a0)
   10884:	00000513          	li	a0,0
   10888:	00008067          	ret

000000000001088c <utime>:
   1088c:	fff00513          	li	a0,-1
   10890:	00008067          	ret

0000000000010894 <chown>:
   10894:	fff00513          	li	a0,-1
   10898:	00008067          	ret

000000000001089c <chmod>:
   1089c:	fff00513          	li	a0,-1
   108a0:	00008067          	ret

00000000000108a4 <chdir>:
   108a4:	fff00513          	li	a0,-1
   108a8:	00008067          	ret

00000000000108ac <getcwd>:
   108ac:	00000513          	li	a0,0
   108b0:	00008067          	ret

00000000000108b4 <sysconf>:
   108b4:	00200793          	li	a5,2
   108b8:	00f51863          	bne	a0,a5,108c8 <sysconf+0x14>
   108bc:	000f4537          	lui	a0,0xf4
   108c0:	24050513          	addi	a0,a0,576 # f4240 <_gp+0xe2550>
   108c4:	00008067          	ret
   108c8:	fff00513          	li	a0,-1
   108cc:	00008067          	ret

00000000000108d0 <sbrk>:
   108d0:	8181b703          	ld	a4,-2024(gp) # 11508 <_fbss>
   108d4:	00050793          	mv	a5,a0
   108d8:	00071663          	bnez	a4,108e4 <sbrk+0x14>
   108dc:	86818713          	addi	a4,gp,-1944 # 11558 <_end>
   108e0:	80e1bc23          	sd	a4,-2024(gp) # 11508 <_fbss>
   108e4:	00e78533          	add	a0,a5,a4
   108e8:	00000593          	li	a1,0
   108ec:	00000613          	li	a2,0
   108f0:	00000693          	li	a3,0
   108f4:	0d600893          	li	a7,214
   108f8:	00000073          	ecall
   108fc:	c60548e3          	bltz	a0,1056c <__syscall_error>
   10900:	8181b683          	ld	a3,-2024(gp) # 11508 <_fbss>
   10904:	fff00713          	li	a4,-1
   10908:	00d787b3          	add	a5,a5,a3
   1090c:	00f51663          	bne	a0,a5,10918 <sbrk+0x48>
   10910:	80a1bc23          	sd	a0,-2024(gp) # 11508 <_fbss>
   10914:	00068713          	mv	a4,a3
   10918:	00070513          	mv	a0,a4
   1091c:	00008067          	ret

0000000000010920 <_exit>:
   10920:	00000593          	li	a1,0
   10924:	00000613          	li	a2,0
   10928:	00000693          	li	a3,0
   1092c:	05d00893          	li	a7,93
   10930:	00000073          	ecall
   10934:	c2054ce3          	bltz	a0,1056c <__syscall_error>
   10938:	0000006f          	j	10938 <_exit+0x18>

000000000001093c <__errno>:
   1093c:	8101b503          	ld	a0,-2032(gp) # 11500 <_impure_ptr>
   10940:	00008067          	ret
