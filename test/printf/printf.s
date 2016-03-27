
printf:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010000 <_ftext>:
   10000:	0000c197          	auipc	gp,0xc
   10004:	af018193          	addi	gp,gp,-1296 # 1baf0 <_gp>
   10008:	0000b297          	auipc	t0,0xb
   1000c:	38028293          	addi	t0,t0,896 # 1b388 <_PathLocale>
   10010:	0000b317          	auipc	t1,0xb
   10014:	41830313          	addi	t1,t1,1048 # 1b428 <_end>
   10018:	0002b023          	sd	zero,0(t0)
   1001c:	00828293          	addi	t0,t0,8
   10020:	fe62ece3          	bltu	t0,t1,10018 <_ftext+0x18>
   10024:	00000517          	auipc	a0,0x0
   10028:	1e050513          	addi	a0,a0,480 # 10204 <__libc_fini_array>
   1002c:	194000ef          	jal	101c0 <atexit>
   10030:	230000ef          	jal	10260 <__libc_init_array>
   10034:	00012503          	lw	a0,0(sp)
   10038:	00810593          	addi	a1,sp,8
   1003c:	00000613          	li	a2,0
   10040:	124000ef          	jal	10164 <main>
   10044:	1900006f          	j	101d4 <exit>

0000000000010048 <_fini>:
   10048:	00008067          	ret

000000000001004c <deregister_tm_clones>:
   1004c:	0001b537          	lui	a0,0x1b
   10050:	0001b7b7          	lui	a5,0x1b
   10054:	2e850713          	addi	a4,a0,744 # 1b2e8 <__TMC_END__>
   10058:	2ef78793          	addi	a5,a5,751 # 1b2ef <__TMC_END__+0x7>
   1005c:	40e787b3          	sub	a5,a5,a4
   10060:	00e00713          	li	a4,14
   10064:	00f77c63          	bleu	a5,a4,1007c <deregister_tm_clones+0x30>
   10068:	00000337          	lui	t1,0x0
   1006c:	00030313          	mv	t1,t1
   10070:	00030663          	beqz	t1,1007c <deregister_tm_clones+0x30>
   10074:	2e850513          	addi	a0,a0,744
   10078:	00030067          	jr	t1
   1007c:	00008067          	ret

0000000000010080 <register_tm_clones>:
   10080:	0001b537          	lui	a0,0x1b
   10084:	0001b7b7          	lui	a5,0x1b
   10088:	2e850593          	addi	a1,a0,744 # 1b2e8 <__TMC_END__>
   1008c:	2e878793          	addi	a5,a5,744 # 1b2e8 <__TMC_END__>
   10090:	40b787b3          	sub	a5,a5,a1
   10094:	4037d793          	srai	a5,a5,0x3
   10098:	03f7d593          	srli	a1,a5,0x3f
   1009c:	00f585b3          	add	a1,a1,a5
   100a0:	4015d593          	srai	a1,a1,0x1
   100a4:	00058c63          	beqz	a1,100bc <register_tm_clones+0x3c>
   100a8:	00000337          	lui	t1,0x0
   100ac:	00030313          	mv	t1,t1
   100b0:	00030663          	beqz	t1,100bc <register_tm_clones+0x3c>
   100b4:	2e850513          	addi	a0,a0,744
   100b8:	00030067          	jr	t1
   100bc:	00008067          	ret

00000000000100c0 <__do_global_dtors_aux>:
   100c0:	ff010113          	addi	sp,sp,-16
   100c4:	00813023          	sd	s0,0(sp)
   100c8:	8c81c783          	lbu	a5,-1848(gp) # 1b3b8 <_bss_start>
   100cc:	00113423          	sd	ra,8(sp)
   100d0:	02079663          	bnez	a5,100fc <__do_global_dtors_aux+0x3c>
   100d4:	f79ff0ef          	jal	1004c <deregister_tm_clones>
   100d8:	000007b7          	lui	a5,0x0
   100dc:	00078793          	mv	a5,a5
   100e0:	00078a63          	beqz	a5,100f4 <__do_global_dtors_aux+0x34>
   100e4:	00019537          	lui	a0,0x19
   100e8:	2b850513          	addi	a0,a0,696 # 192b8 <__fini_array_end>
   100ec:	ffff0317          	auipc	t1,0xffff0
   100f0:	f14300e7          	jalr	t1,-236 # 0 <_ftext-0x10000>
   100f4:	00100793          	li	a5,1
   100f8:	8cf18423          	sb	a5,-1848(gp) # 1b3b8 <_bss_start>
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
   10124:	8d018593          	addi	a1,gp,-1840 # 1b3c0 <object.3092>
   10128:	2b850513          	addi	a0,a0,696 # 192b8 <__fini_array_end>
   1012c:	ffff0317          	auipc	t1,0xffff0
   10130:	ed4300e7          	jalr	t1,-300 # 0 <_ftext-0x10000>
   10134:	0001a7b7          	lui	a5,0x1a
   10138:	2e078513          	addi	a0,a5,736 # 1a2e0 <__JCR_END__>
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
   10164:	fe010113          	addi	sp,sp,-32
   10168:	00113c23          	sd	ra,24(sp)
   1016c:	00813823          	sd	s0,16(sp)
   10170:	02010413          	addi	s0,sp,32
   10174:	01100793          	li	a5,17
   10178:	fef42623          	sw	a5,-20(s0)
   1017c:	fe800793          	li	a5,-24
   10180:	fef42423          	sw	a5,-24(s0)
   10184:	fec42703          	lw	a4,-20(s0)
   10188:	fe842783          	lw	a5,-24(s0)
   1018c:	02f707bb          	mulw	a5,a4,a5
   10190:	00078693          	mv	a3,a5
   10194:	fe842603          	lw	a2,-24(s0)
   10198:	fec42583          	lw	a1,-20(s0)
   1019c:	000197b7          	lui	a5,0x19
   101a0:	dd078513          	addi	a0,a5,-560 # 18dd0 <__errno+0x8>
   101a4:	1a0000ef          	jal	10344 <printf>
   101a8:	00000793          	li	a5,0
   101ac:	00078513          	mv	a0,a5
   101b0:	01813083          	ld	ra,24(sp)
   101b4:	01013403          	ld	s0,16(sp)
   101b8:	02010113          	addi	sp,sp,32
   101bc:	00008067          	ret

00000000000101c0 <atexit>:
   101c0:	00050593          	mv	a1,a0
   101c4:	00000693          	li	a3,0
   101c8:	00000613          	li	a2,0
   101cc:	00000513          	li	a0,0
   101d0:	0840206f          	j	12254 <__register_exitproc>

00000000000101d4 <exit>:
   101d4:	ff010113          	addi	sp,sp,-16
   101d8:	00000593          	li	a1,0
   101dc:	00813023          	sd	s0,0(sp)
   101e0:	00113423          	sd	ra,8(sp)
   101e4:	00050413          	mv	s0,a0
   101e8:	180020ef          	jal	12368 <__call_exitprocs>
   101ec:	8081b503          	ld	a0,-2040(gp) # 1b2f8 <_global_impure_ptr>
   101f0:	05853783          	ld	a5,88(a0)
   101f4:	00078463          	beqz	a5,101fc <exit+0x28>
   101f8:	000780e7          	jalr	a5
   101fc:	00040513          	mv	a0,s0
   10200:	3ad080ef          	jal	18dac <_exit>

0000000000010204 <__libc_fini_array>:
   10204:	fe010113          	addi	sp,sp,-32
   10208:	00813823          	sd	s0,16(sp)
   1020c:	00913423          	sd	s1,8(sp)
   10210:	00019437          	lui	s0,0x19
   10214:	000194b7          	lui	s1,0x19
   10218:	2b048493          	addi	s1,s1,688 # 192b0 <__init_array_end>
   1021c:	2b840413          	addi	s0,s0,696 # 192b8 <__fini_array_end>
   10220:	40940433          	sub	s0,s0,s1
   10224:	ff840793          	addi	a5,s0,-8
   10228:	00113c23          	sd	ra,24(sp)
   1022c:	40345413          	srai	s0,s0,0x3
   10230:	009784b3          	add	s1,a5,s1
   10234:	00040c63          	beqz	s0,1024c <__libc_fini_array+0x48>
   10238:	0004b783          	ld	a5,0(s1)
   1023c:	fff40413          	addi	s0,s0,-1
   10240:	ff848493          	addi	s1,s1,-8
   10244:	000780e7          	jalr	a5
   10248:	fe0418e3          	bnez	s0,10238 <__libc_fini_array+0x34>
   1024c:	01813083          	ld	ra,24(sp)
   10250:	01013403          	ld	s0,16(sp)
   10254:	00813483          	ld	s1,8(sp)
   10258:	02010113          	addi	sp,sp,32
   1025c:	dedff06f          	j	10048 <_fini>

0000000000010260 <__libc_init_array>:
   10260:	fe010113          	addi	sp,sp,-32
   10264:	00813823          	sd	s0,16(sp)
   10268:	000197b7          	lui	a5,0x19
   1026c:	00019437          	lui	s0,0x19
   10270:	01213023          	sd	s2,0(sp)
   10274:	2a878793          	addi	a5,a5,680 # 192a8 <_etext>
   10278:	2a840913          	addi	s2,s0,680 # 192a8 <_etext>
   1027c:	41278933          	sub	s2,a5,s2
   10280:	00913423          	sd	s1,8(sp)
   10284:	00113c23          	sd	ra,24(sp)
   10288:	40395913          	srai	s2,s2,0x3
   1028c:	2a840413          	addi	s0,s0,680
   10290:	00000493          	li	s1,0
   10294:	00090c63          	beqz	s2,102ac <__libc_init_array+0x4c>
   10298:	00043783          	ld	a5,0(s0)
   1029c:	00148493          	addi	s1,s1,1
   102a0:	00840413          	addi	s0,s0,8
   102a4:	000780e7          	jalr	a5
   102a8:	fe9918e3          	bne	s2,s1,10298 <__libc_init_array+0x38>
   102ac:	d9dff0ef          	jal	10048 <_fini>
   102b0:	00019437          	lui	s0,0x19
   102b4:	000197b7          	lui	a5,0x19
   102b8:	2a840913          	addi	s2,s0,680 # 192a8 <_etext>
   102bc:	2b078793          	addi	a5,a5,688 # 192b0 <__init_array_end>
   102c0:	41278933          	sub	s2,a5,s2
   102c4:	40395913          	srai	s2,s2,0x3
   102c8:	2a840413          	addi	s0,s0,680
   102cc:	00000493          	li	s1,0
   102d0:	00090c63          	beqz	s2,102e8 <__libc_init_array+0x88>
   102d4:	00043783          	ld	a5,0(s0)
   102d8:	00148493          	addi	s1,s1,1
   102dc:	00840413          	addi	s0,s0,8
   102e0:	000780e7          	jalr	a5
   102e4:	fe9918e3          	bne	s2,s1,102d4 <__libc_init_array+0x74>
   102e8:	01813083          	ld	ra,24(sp)
   102ec:	01013403          	ld	s0,16(sp)
   102f0:	00813483          	ld	s1,8(sp)
   102f4:	00013903          	ld	s2,0(sp)
   102f8:	02010113          	addi	sp,sp,32
   102fc:	00008067          	ret

0000000000010300 <_printf_r>:
   10300:	fb010113          	addi	sp,sp,-80
   10304:	02c13023          	sd	a2,32(sp)
   10308:	02d13423          	sd	a3,40(sp)
   1030c:	02f13c23          	sd	a5,56(sp)
   10310:	02e13823          	sd	a4,48(sp)
   10314:	05013023          	sd	a6,64(sp)
   10318:	05113423          	sd	a7,72(sp)
   1031c:	00058613          	mv	a2,a1
   10320:	01053583          	ld	a1,16(a0)
   10324:	02010793          	addi	a5,sp,32
   10328:	00078693          	mv	a3,a5
   1032c:	00113c23          	sd	ra,24(sp)
   10330:	00f13423          	sd	a5,8(sp)
   10334:	060000ef          	jal	10394 <_vfprintf_r>
   10338:	01813083          	ld	ra,24(sp)
   1033c:	05010113          	addi	sp,sp,80
   10340:	00008067          	ret

0000000000010344 <printf>:
   10344:	8101b303          	ld	t1,-2032(gp) # 1b300 <_impure_ptr>
   10348:	fa010113          	addi	sp,sp,-96
   1034c:	02c13823          	sd	a2,48(sp)
   10350:	02d13c23          	sd	a3,56(sp)
   10354:	04f13423          	sd	a5,72(sp)
   10358:	02b13423          	sd	a1,40(sp)
   1035c:	04e13023          	sd	a4,64(sp)
   10360:	05013823          	sd	a6,80(sp)
   10364:	05113c23          	sd	a7,88(sp)
   10368:	01033583          	ld	a1,16(t1)
   1036c:	02810793          	addi	a5,sp,40
   10370:	00050613          	mv	a2,a0
   10374:	00078693          	mv	a3,a5
   10378:	00030513          	mv	a0,t1
   1037c:	00113c23          	sd	ra,24(sp)
   10380:	00f13423          	sd	a5,8(sp)
   10384:	010000ef          	jal	10394 <_vfprintf_r>
   10388:	01813083          	ld	ra,24(sp)
   1038c:	06010113          	addi	sp,sp,96
   10390:	00008067          	ret

0000000000010394 <_vfprintf_r>:
   10394:	e1010113          	addi	sp,sp,-496
   10398:	1e113423          	sd	ra,488(sp)
   1039c:	1d313423          	sd	s3,456(sp)
   103a0:	1d413023          	sd	s4,448(sp)
   103a4:	1b713423          	sd	s7,424(sp)
   103a8:	00058a13          	mv	s4,a1
   103ac:	00060993          	mv	s3,a2
   103b0:	02d13423          	sd	a3,40(sp)
   103b4:	1e813023          	sd	s0,480(sp)
   103b8:	1c913c23          	sd	s1,472(sp)
   103bc:	1d213823          	sd	s2,464(sp)
   103c0:	1b513c23          	sd	s5,440(sp)
   103c4:	1b613823          	sd	s6,432(sp)
   103c8:	1b813023          	sd	s8,416(sp)
   103cc:	19913c23          	sd	s9,408(sp)
   103d0:	19a13823          	sd	s10,400(sp)
   103d4:	19b13423          	sd	s11,392(sp)
   103d8:	16813c27          	fsd	fs0,376(sp)
   103dc:	00050b93          	mv	s7,a0
   103e0:	094040ef          	jal	14474 <_localeconv_r>
   103e4:	00053783          	ld	a5,0(a0)
   103e8:	00078513          	mv	a0,a5
   103ec:	06f13023          	sd	a5,96(sp)
   103f0:	00c060ef          	jal	163fc <strlen>
   103f4:	06a13423          	sd	a0,104(sp)
   103f8:	000b8663          	beqz	s7,10404 <_vfprintf_r+0x70>
   103fc:	050ba783          	lw	a5,80(s7)
   10400:	2e078c63          	beqz	a5,106f8 <_vfprintf_r+0x364>
   10404:	010a1683          	lh	a3,16(s4)
   10408:	03069793          	slli	a5,a3,0x30
   1040c:	0307d793          	srli	a5,a5,0x30
   10410:	03279713          	slli	a4,a5,0x32
   10414:	02074a63          	bltz	a4,10448 <_vfprintf_r+0xb4>
   10418:	000027b7          	lui	a5,0x2
   1041c:	0aca2603          	lw	a2,172(s4)
   10420:	00f6e7b3          	or	a5,a3,a5
   10424:	0107979b          	slliw	a5,a5,0x10
   10428:	ffffe737          	lui	a4,0xffffe
   1042c:	4107d79b          	sraiw	a5,a5,0x10
   10430:	fff7071b          	addiw	a4,a4,-1
   10434:	00e67733          	and	a4,a2,a4
   10438:	00fa1823          	sh	a5,16(s4)
   1043c:	03079793          	slli	a5,a5,0x30
   10440:	0aea2623          	sw	a4,172(s4)
   10444:	0307d793          	srli	a5,a5,0x30
   10448:	0087f713          	andi	a4,a5,8
   1044c:	1e070063          	beqz	a4,1062c <_vfprintf_r+0x298>
   10450:	018a3703          	ld	a4,24(s4)
   10454:	1c070c63          	beqz	a4,1062c <_vfprintf_r+0x298>
   10458:	01a7f793          	andi	a5,a5,26
   1045c:	00a00713          	li	a4,10
   10460:	1ee78863          	beq	a5,a4,10650 <_vfprintf_r+0x2bc>
   10464:	000197b7          	lui	a5,0x19
   10468:	de078793          	addi	a5,a5,-544 # 18de0 <__errno+0x18>
   1046c:	0f010b13          	addi	s6,sp,240
   10470:	02f13823          	sd	a5,48(sp)
   10474:	0ef10793          	addi	a5,sp,239
   10478:	00019ab7          	lui	s5,0x19
   1047c:	000194b7          	lui	s1,0x19
   10480:	40fb07b3          	sub	a5,s6,a5
   10484:	04013c23          	sd	zero,88(sp)
   10488:	0b613823          	sd	s6,176(sp)
   1048c:	0c013023          	sd	zero,192(sp)
   10490:	0a012c23          	sw	zero,184(sp)
   10494:	06012823          	sw	zero,112(sp)
   10498:	000b0893          	mv	a7,s6
   1049c:	02013c23          	sd	zero,56(sp)
   104a0:	06012a23          	sw	zero,116(sp)
   104a4:	00012e23          	sw	zero,28(sp)
   104a8:	f48a8a93          	addi	s5,s5,-184 # 18f48 <blanks.4193>
   104ac:	f5848493          	addi	s1,s1,-168 # 18f58 <zeroes.4194>
   104b0:	06f13c23          	sd	a5,120(sp)
   104b4:	0009c783          	lbu	a5,0(s3)
   104b8:	0e0782e3          	beqz	a5,10d9c <_vfprintf_r+0xa08>
   104bc:	02500713          	li	a4,37
   104c0:	00098413          	mv	s0,s3
   104c4:	00e79663          	bne	a5,a4,104d0 <_vfprintf_r+0x13c>
   104c8:	0580006f          	j	10520 <_vfprintf_r+0x18c>
   104cc:	00e78863          	beq	a5,a4,104dc <_vfprintf_r+0x148>
   104d0:	00140413          	addi	s0,s0,1
   104d4:	00044783          	lbu	a5,0(s0)
   104d8:	fe079ae3          	bnez	a5,104cc <_vfprintf_r+0x138>
   104dc:	4134093b          	subw	s2,s0,s3
   104e0:	04090063          	beqz	s2,10520 <_vfprintf_r+0x18c>
   104e4:	0c013703          	ld	a4,192(sp)
   104e8:	0b812783          	lw	a5,184(sp)
   104ec:	00090693          	mv	a3,s2
   104f0:	00d70733          	add	a4,a4,a3
   104f4:	0017879b          	addiw	a5,a5,1
   104f8:	0138b023          	sd	s3,0(a7)
   104fc:	00d8b423          	sd	a3,8(a7)
   10500:	0ce13023          	sd	a4,192(sp)
   10504:	0af12c23          	sw	a5,184(sp)
   10508:	00700713          	li	a4,7
   1050c:	01088893          	addi	a7,a7,16
   10510:	16f74063          	blt	a4,a5,10670 <_vfprintf_r+0x2dc>
   10514:	01c12783          	lw	a5,28(sp)
   10518:	012787bb          	addw	a5,a5,s2
   1051c:	00f12e23          	sw	a5,28(sp)
   10520:	00044783          	lbu	a5,0(s0)
   10524:	16078463          	beqz	a5,1068c <_vfprintf_r+0x2f8>
   10528:	00140993          	addi	s3,s0,1
   1052c:	080107a3          	sb	zero,143(sp)
   10530:	00000613          	li	a2,0
   10534:	00000593          	li	a1,0
   10538:	fff00413          	li	s0,-1
   1053c:	00012c23          	sw	zero,24(sp)
   10540:	00000c13          	li	s8,0
   10544:	05800713          	li	a4,88
   10548:	00900693          	li	a3,9
   1054c:	02a00513          	li	a0,42
   10550:	0009cd03          	lbu	s10,0(s3)
   10554:	00198993          	addi	s3,s3,1
   10558:	fe0d079b          	addiw	a5,s10,-32
   1055c:	1cf762e3          	bltu	a4,a5,10f20 <_vfprintf_r+0xb8c>
   10560:	03013803          	ld	a6,48(sp)
   10564:	02079793          	slli	a5,a5,0x20
   10568:	01e7d793          	srli	a5,a5,0x1e
   1056c:	010787b3          	add	a5,a5,a6
   10570:	0007a783          	lw	a5,0(a5)
   10574:	00078067          	jr	a5
   10578:	010c6c13          	ori	s8,s8,16
   1057c:	fd5ff06f          	j	10550 <_vfprintf_r+0x1bc>
   10580:	02813783          	ld	a5,40(sp)
   10584:	0007a803          	lw	a6,0(a5)
   10588:	00878793          	addi	a5,a5,8
   1058c:	02f13423          	sd	a5,40(sp)
   10590:	01012c23          	sw	a6,24(sp)
   10594:	fa085ee3          	bgez	a6,10550 <_vfprintf_r+0x1bc>
   10598:	410007bb          	negw	a5,a6
   1059c:	00f12c23          	sw	a5,24(sp)
   105a0:	004c6c13          	ori	s8,s8,4
   105a4:	fadff06f          	j	10550 <_vfprintf_r+0x1bc>
   105a8:	03000793          	li	a5,48
   105ac:	08f10823          	sb	a5,144(sp)
   105b0:	07800793          	li	a5,120
   105b4:	08f108a3          	sb	a5,145(sp)
   105b8:	02813783          	ld	a5,40(sp)
   105bc:	080107a3          	sb	zero,143(sp)
   105c0:	002c6693          	ori	a3,s8,2
   105c4:	00878713          	addi	a4,a5,8
   105c8:	0007b783          	ld	a5,0(a5)
   105cc:	180444e3          	bltz	s0,10f54 <_vfprintf_r+0xbc0>
   105d0:	f7fc7c13          	andi	s8,s8,-129
   105d4:	02e13423          	sd	a4,40(sp)
   105d8:	002c6c13          	ori	s8,s8,2
   105dc:	120796e3          	bnez	a5,10f08 <_vfprintf_r+0xb74>
   105e0:	000197b7          	lui	a5,0x19
   105e4:	25878793          	addi	a5,a5,600 # 19258 <zeroes.4137+0x50>
   105e8:	02f13c23          	sd	a5,56(sp)
   105ec:	07800d13          	li	s10,120
   105f0:	00000613          	li	a2,0
   105f4:	7e040463          	beqz	s0,10ddc <_vfprintf_r+0xa48>
   105f8:	00000793          	li	a5,0
   105fc:	000b0913          	mv	s2,s6
   10600:	03813683          	ld	a3,56(sp)
   10604:	00f7f713          	andi	a4,a5,15
   10608:	fff90913          	addi	s2,s2,-1
   1060c:	00e68733          	add	a4,a3,a4
   10610:	00074703          	lbu	a4,0(a4) # ffffffffffffe000 <_gp+0xfffffffffffe2510>
   10614:	0047d793          	srli	a5,a5,0x4
   10618:	00e90023          	sb	a4,0(s2)
   1061c:	fe0792e3          	bnez	a5,10600 <_vfprintf_r+0x26c>
   10620:	412b07b3          	sub	a5,s6,s2
   10624:	02f12023          	sw	a5,32(sp)
   10628:	1680006f          	j	10790 <_vfprintf_r+0x3fc>
   1062c:	000a0593          	mv	a1,s4
   10630:	000b8513          	mv	a0,s7
   10634:	2bd010ef          	jal	120f0 <__swsetup_r>
   10638:	00050463          	beqz	a0,10640 <_vfprintf_r+0x2ac>
   1063c:	3940106f          	j	119d0 <_vfprintf_r+0x163c>
   10640:	010a5783          	lhu	a5,16(s4)
   10644:	00a00713          	li	a4,10
   10648:	01a7f793          	andi	a5,a5,26
   1064c:	e0e79ce3          	bne	a5,a4,10464 <_vfprintf_r+0xd0>
   10650:	012a1783          	lh	a5,18(s4)
   10654:	e007c8e3          	bltz	a5,10464 <_vfprintf_r+0xd0>
   10658:	02813683          	ld	a3,40(sp)
   1065c:	00098613          	mv	a2,s3
   10660:	000a0593          	mv	a1,s4
   10664:	000b8513          	mv	a0,s7
   10668:	1c9010ef          	jal	12030 <__sbprintf>
   1066c:	04c0006f          	j	106b8 <_vfprintf_r+0x324>
   10670:	0b010613          	addi	a2,sp,176
   10674:	000a0593          	mv	a1,s4
   10678:	000b8513          	mv	a0,s7
   1067c:	73d050ef          	jal	165b8 <__sprint_r>
   10680:	02051263          	bnez	a0,106a4 <_vfprintf_r+0x310>
   10684:	000b0893          	mv	a7,s6
   10688:	e8dff06f          	j	10514 <_vfprintf_r+0x180>
   1068c:	0c013783          	ld	a5,192(sp)
   10690:	00078a63          	beqz	a5,106a4 <_vfprintf_r+0x310>
   10694:	0b010613          	addi	a2,sp,176
   10698:	000a0593          	mv	a1,s4
   1069c:	000b8513          	mv	a0,s7
   106a0:	719050ef          	jal	165b8 <__sprint_r>
   106a4:	010a5783          	lhu	a5,16(s4)
   106a8:	0407f793          	andi	a5,a5,64
   106ac:	00078463          	beqz	a5,106b4 <_vfprintf_r+0x320>
   106b0:	3200106f          	j	119d0 <_vfprintf_r+0x163c>
   106b4:	01c12503          	lw	a0,28(sp)
   106b8:	1e813083          	ld	ra,488(sp)
   106bc:	1e013403          	ld	s0,480(sp)
   106c0:	1d813483          	ld	s1,472(sp)
   106c4:	1d013903          	ld	s2,464(sp)
   106c8:	1c813983          	ld	s3,456(sp)
   106cc:	1c013a03          	ld	s4,448(sp)
   106d0:	1b813a83          	ld	s5,440(sp)
   106d4:	1b013b03          	ld	s6,432(sp)
   106d8:	1a813b83          	ld	s7,424(sp)
   106dc:	1a013c03          	ld	s8,416(sp)
   106e0:	19813c83          	ld	s9,408(sp)
   106e4:	19013d03          	ld	s10,400(sp)
   106e8:	18813d83          	ld	s11,392(sp)
   106ec:	17813407          	fld	fs0,376(sp)
   106f0:	1f010113          	addi	sp,sp,496
   106f4:	00008067          	ret
   106f8:	000b8513          	mv	a0,s7
   106fc:	700030ef          	jal	13dfc <__sinit>
   10700:	d05ff06f          	j	10404 <_vfprintf_r+0x70>
   10704:	00100613          	li	a2,1
   10708:	02b00593          	li	a1,43
   1070c:	e45ff06f          	j	10550 <_vfprintf_r+0x1bc>
   10710:	00060463          	beqz	a2,10718 <_vfprintf_r+0x384>
   10714:	0d90106f          	j	11fec <_vfprintf_r+0x1c58>
   10718:	010c7793          	andi	a5,s8,16
   1071c:	22078263          	beqz	a5,10940 <_vfprintf_r+0x5ac>
   10720:	02813783          	ld	a5,40(sp)
   10724:	080107a3          	sb	zero,143(sp)
   10728:	00878713          	addi	a4,a5,8
   1072c:	0007b783          	ld	a5,0(a5)
   10730:	22044663          	bltz	s0,1095c <_vfprintf_r+0x5c8>
   10734:	02e13423          	sd	a4,40(sp)
   10738:	f7fc7c13          	andi	s8,s8,-129
   1073c:	22079663          	bnez	a5,10968 <_vfprintf_r+0x5d4>
   10740:	00000613          	li	a2,0
   10744:	00000793          	li	a5,0
   10748:	00041463          	bnez	s0,10750 <_vfprintf_r+0x3bc>
   1074c:	3680106f          	j	11ab4 <_vfprintf_r+0x1720>
   10750:	000b0913          	mv	s2,s6
   10754:	0077f713          	andi	a4,a5,7
   10758:	fff90913          	addi	s2,s2,-1
   1075c:	0307071b          	addiw	a4,a4,48
   10760:	00e90023          	sb	a4,0(s2)
   10764:	0037d793          	srli	a5,a5,0x3
   10768:	fe0796e3          	bnez	a5,10754 <_vfprintf_r+0x3c0>
   1076c:	001c7793          	andi	a5,s8,1
   10770:	ea0788e3          	beqz	a5,10620 <_vfprintf_r+0x28c>
   10774:	03000793          	li	a5,48
   10778:	eaf704e3          	beq	a4,a5,10620 <_vfprintf_r+0x28c>
   1077c:	fff90713          	addi	a4,s2,-1
   10780:	40eb06b3          	sub	a3,s6,a4
   10784:	fef90fa3          	sb	a5,-1(s2)
   10788:	02d12023          	sw	a3,32(sp)
   1078c:	00070913          	mv	s2,a4
   10790:	02012783          	lw	a5,32(sp)
   10794:	00078d93          	mv	s11,a5
   10798:	0087d463          	ble	s0,a5,107a0 <_vfprintf_r+0x40c>
   1079c:	00040d93          	mv	s11,s0
   107a0:	01b12423          	sw	s11,8(sp)
   107a4:	04012623          	sw	zero,76(sp)
   107a8:	2a060263          	beqz	a2,10a4c <_vfprintf_r+0x6b8>
   107ac:	00812783          	lw	a5,8(sp)
   107b0:	0017879b          	addiw	a5,a5,1
   107b4:	00f12423          	sw	a5,8(sp)
   107b8:	2940006f          	j	10a4c <_vfprintf_r+0x6b8>
   107bc:	0009cd03          	lbu	s10,0(s3)
   107c0:	00198993          	addi	s3,s3,1
   107c4:	00ad1463          	bne	s10,a0,107cc <_vfprintf_r+0x438>
   107c8:	75c0106f          	j	11f24 <_vfprintf_r+0x1b90>
   107cc:	fd0d079b          	addiw	a5,s10,-48
   107d0:	00000413          	li	s0,0
   107d4:	d8f6e2e3          	bltu	a3,a5,10558 <_vfprintf_r+0x1c4>
   107d8:	00198993          	addi	s3,s3,1
   107dc:	fff9cd03          	lbu	s10,-1(s3)
   107e0:	0014181b          	slliw	a6,s0,0x1
   107e4:	0034141b          	slliw	s0,s0,0x3
   107e8:	0088043b          	addw	s0,a6,s0
   107ec:	00f4043b          	addw	s0,s0,a5
   107f0:	fd0d079b          	addiw	a5,s10,-48
   107f4:	fef6f2e3          	bleu	a5,a3,107d8 <_vfprintf_r+0x444>
   107f8:	d60450e3          	bgez	s0,10558 <_vfprintf_r+0x1c4>
   107fc:	fff00413          	li	s0,-1
   10800:	d59ff06f          	j	10558 <_vfprintf_r+0x1c4>
   10804:	080c6c13          	ori	s8,s8,128
   10808:	d49ff06f          	j	10550 <_vfprintf_r+0x1bc>
   1080c:	d40592e3          	bnez	a1,10550 <_vfprintf_r+0x1bc>
   10810:	00100613          	li	a2,1
   10814:	02000593          	li	a1,32
   10818:	d39ff06f          	j	10550 <_vfprintf_r+0x1bc>
   1081c:	001c6c13          	ori	s8,s8,1
   10820:	d31ff06f          	j	10550 <_vfprintf_r+0x1bc>
   10824:	02813783          	ld	a5,40(sp)
   10828:	080107a3          	sb	zero,143(sp)
   1082c:	0007b903          	ld	s2,0(a5)
   10830:	00878c93          	addi	s9,a5,8
   10834:	00091463          	bnez	s2,1083c <_vfprintf_r+0x4a8>
   10838:	39c0106f          	j	11bd4 <_vfprintf_r+0x1840>
   1083c:	01113023          	sd	a7,0(sp)
   10840:	00045463          	bgez	s0,10848 <_vfprintf_r+0x4b4>
   10844:	3240106f          	j	11b68 <_vfprintf_r+0x17d4>
   10848:	00040613          	mv	a2,s0
   1084c:	00000593          	li	a1,0
   10850:	00090513          	mv	a0,s2
   10854:	564040ef          	jal	14db8 <memchr>
   10858:	00013883          	ld	a7,0(sp)
   1085c:	00051463          	bnez	a0,10864 <_vfprintf_r+0x4d0>
   10860:	4c00106f          	j	11d20 <_vfprintf_r+0x198c>
   10864:	412507bb          	subw	a5,a0,s2
   10868:	02f12023          	sw	a5,32(sp)
   1086c:	00078d93          	mv	s11,a5
   10870:	0007d463          	bgez	a5,10878 <_vfprintf_r+0x4e4>
   10874:	3140106f          	j	11b88 <_vfprintf_r+0x17f4>
   10878:	08f14603          	lbu	a2,143(sp)
   1087c:	01b12423          	sw	s11,8(sp)
   10880:	03913423          	sd	s9,40(sp)
   10884:	00000413          	li	s0,0
   10888:	04012623          	sw	zero,76(sp)
   1088c:	f1dff06f          	j	107a8 <_vfprintf_r+0x414>
   10890:	00060463          	beqz	a2,10898 <_vfprintf_r+0x504>
   10894:	7800106f          	j	12014 <_vfprintf_r+0x1c80>
   10898:	010c7793          	andi	a5,s8,16
   1089c:	0e078463          	beqz	a5,10984 <_vfprintf_r+0x5f0>
   108a0:	02813783          	ld	a5,40(sp)
   108a4:	080107a3          	sb	zero,143(sp)
   108a8:	00878713          	addi	a4,a5,8
   108ac:	0007b783          	ld	a5,0(a5)
   108b0:	0e044863          	bltz	s0,109a0 <_vfprintf_r+0x60c>
   108b4:	02e13423          	sd	a4,40(sp)
   108b8:	f7fc7c13          	andi	s8,s8,-129
   108bc:	00000613          	li	a2,0
   108c0:	50078c63          	beqz	a5,10dd8 <_vfprintf_r+0xa44>
   108c4:	00900713          	li	a4,9
   108c8:	000b0913          	mv	s2,s6
   108cc:	00a00693          	li	a3,10
   108d0:	40f770e3          	bleu	a5,a4,114d0 <_vfprintf_r+0x113c>
   108d4:	02d7f733          	remu	a4,a5,a3
   108d8:	fff90913          	addi	s2,s2,-1
   108dc:	02d7d7b3          	divu	a5,a5,a3
   108e0:	0307071b          	addiw	a4,a4,48
   108e4:	00e90023          	sb	a4,0(s2)
   108e8:	fe0796e3          	bnez	a5,108d4 <_vfprintf_r+0x540>
   108ec:	412b07b3          	sub	a5,s6,s2
   108f0:	02f12023          	sw	a5,32(sp)
   108f4:	e9dff06f          	j	10790 <_vfprintf_r+0x3fc>
   108f8:	00012c23          	sw	zero,24(sp)
   108fc:	fd0d079b          	addiw	a5,s10,-48
   10900:	01812303          	lw	t1,24(sp)
   10904:	00198993          	addi	s3,s3,1
   10908:	fff9cd03          	lbu	s10,-1(s3)
   1090c:	0013181b          	slliw	a6,t1,0x1
   10910:	00331c9b          	slliw	s9,t1,0x3
   10914:	01980cbb          	addw	s9,a6,s9
   10918:	019787bb          	addw	a5,a5,s9
   1091c:	00f12c23          	sw	a5,24(sp)
   10920:	fd0d079b          	addiw	a5,s10,-48
   10924:	fcf6fee3          	bleu	a5,a3,10900 <_vfprintf_r+0x56c>
   10928:	c31ff06f          	j	10558 <_vfprintf_r+0x1c4>
   1092c:	00060463          	beqz	a2,10934 <_vfprintf_r+0x5a0>
   10930:	6d80106f          	j	12008 <_vfprintf_r+0x1c74>
   10934:	010c6c13          	ori	s8,s8,16
   10938:	010c7793          	andi	a5,s8,16
   1093c:	de0792e3          	bnez	a5,10720 <_vfprintf_r+0x38c>
   10940:	040c7793          	andi	a5,s8,64
   10944:	080107a3          	sb	zero,143(sp)
   10948:	580780e3          	beqz	a5,116c8 <_vfprintf_r+0x1334>
   1094c:	02813783          	ld	a5,40(sp)
   10950:	00878713          	addi	a4,a5,8
   10954:	0007d783          	lhu	a5,0(a5)
   10958:	dc045ee3          	bgez	s0,10734 <_vfprintf_r+0x3a0>
   1095c:	02e13423          	sd	a4,40(sp)
   10960:	00000613          	li	a2,0
   10964:	60078a63          	beqz	a5,10f78 <_vfprintf_r+0xbe4>
   10968:	00000613          	li	a2,0
   1096c:	de5ff06f          	j	10750 <_vfprintf_r+0x3bc>
   10970:	00060463          	beqz	a2,10978 <_vfprintf_r+0x5e4>
   10974:	6880106f          	j	11ffc <_vfprintf_r+0x1c68>
   10978:	010c6c13          	ori	s8,s8,16
   1097c:	010c7793          	andi	a5,s8,16
   10980:	f20790e3          	bnez	a5,108a0 <_vfprintf_r+0x50c>
   10984:	040c7793          	andi	a5,s8,64
   10988:	080107a3          	sb	zero,143(sp)
   1098c:	500780e3          	beqz	a5,1168c <_vfprintf_r+0x12f8>
   10990:	02813783          	ld	a5,40(sp)
   10994:	00878713          	addi	a4,a5,8
   10998:	0007d783          	lhu	a5,0(a5)
   1099c:	f0045ce3          	bgez	s0,108b4 <_vfprintf_r+0x520>
   109a0:	02e13423          	sd	a4,40(sp)
   109a4:	00000613          	li	a2,0
   109a8:	f0079ee3          	bnez	a5,108c4 <_vfprintf_r+0x530>
   109ac:	00100793          	li	a5,1
   109b0:	5c80006f          	j	10f78 <_vfprintf_r+0xbe4>
   109b4:	00060463          	beqz	a2,109bc <_vfprintf_r+0x628>
   109b8:	63c0106f          	j	11ff4 <_vfprintf_r+0x1c60>
   109bc:	000197b7          	lui	a5,0x19
   109c0:	24078793          	addi	a5,a5,576 # 19240 <zeroes.4137+0x38>
   109c4:	02f13c23          	sd	a5,56(sp)
   109c8:	010c7793          	andi	a5,s8,16
   109cc:	4c078263          	beqz	a5,10e90 <_vfprintf_r+0xafc>
   109d0:	02813703          	ld	a4,40(sp)
   109d4:	00073783          	ld	a5,0(a4)
   109d8:	00870713          	addi	a4,a4,8
   109dc:	02e13423          	sd	a4,40(sp)
   109e0:	001c7713          	andi	a4,s8,1
   109e4:	120706e3          	beqz	a4,11310 <_vfprintf_r+0xf7c>
   109e8:	6a078ee3          	beqz	a5,118a4 <_vfprintf_r+0x1510>
   109ec:	03000713          	li	a4,48
   109f0:	08e10823          	sb	a4,144(sp)
   109f4:	09a108a3          	sb	s10,145(sp)
   109f8:	080107a3          	sb	zero,143(sp)
   109fc:	002c6713          	ori	a4,s8,2
   10a00:	00045463          	bgez	s0,10a08 <_vfprintf_r+0x674>
   10a04:	2140106f          	j	11c18 <_vfprintf_r+0x1884>
   10a08:	f7fc7c13          	andi	s8,s8,-129
   10a0c:	002c6c13          	ori	s8,s8,2
   10a10:	00000613          	li	a2,0
   10a14:	be9ff06f          	j	105fc <_vfprintf_r+0x268>
   10a18:	02813703          	ld	a4,40(sp)
   10a1c:	00100693          	li	a3,1
   10a20:	00d12423          	sw	a3,8(sp)
   10a24:	00072783          	lw	a5,0(a4)
   10a28:	080107a3          	sb	zero,143(sp)
   10a2c:	00000613          	li	a2,0
   10a30:	0cf10423          	sb	a5,200(sp)
   10a34:	00870793          	addi	a5,a4,8
   10a38:	02f13423          	sd	a5,40(sp)
   10a3c:	02d12023          	sw	a3,32(sp)
   10a40:	00000413          	li	s0,0
   10a44:	04012623          	sw	zero,76(sp)
   10a48:	0c810913          	addi	s2,sp,200
   10a4c:	002c7793          	andi	a5,s8,2
   10a50:	04f12023          	sw	a5,64(sp)
   10a54:	00078863          	beqz	a5,10a64 <_vfprintf_r+0x6d0>
   10a58:	00812783          	lw	a5,8(sp)
   10a5c:	0027879b          	addiw	a5,a5,2
   10a60:	00f12423          	sw	a5,8(sp)
   10a64:	084c7793          	andi	a5,s8,132
   10a68:	04f12423          	sw	a5,72(sp)
   10a6c:	52079263          	bnez	a5,10f90 <_vfprintf_r+0xbfc>
   10a70:	01812783          	lw	a5,24(sp)
   10a74:	00812703          	lw	a4,8(sp)
   10a78:	40e78cbb          	subw	s9,a5,a4
   10a7c:	51905a63          	blez	s9,10f90 <_vfprintf_r+0xbfc>
   10a80:	01000793          	li	a5,16
   10a84:	0197c463          	blt	a5,s9,10a8c <_vfprintf_r+0x6f8>
   10a88:	1080106f          	j	11b90 <_vfprintf_r+0x17fc>
   10a8c:	01000813          	li	a6,16
   10a90:	0c013783          	ld	a5,192(sp)
   10a94:	0b812703          	lw	a4,184(sp)
   10a98:	05513823          	sd	s5,80(sp)
   10a9c:	00700313          	li	t1,7
   10aa0:	00080d93          	mv	s11,a6
   10aa4:	00c0006f          	j	10ab0 <_vfprintf_r+0x71c>
   10aa8:	ff0c8c9b          	addiw	s9,s9,-16
   10aac:	059dde63          	ble	s9,s11,10b08 <_vfprintf_r+0x774>
   10ab0:	01078793          	addi	a5,a5,16
   10ab4:	0017071b          	addiw	a4,a4,1
   10ab8:	0158b023          	sd	s5,0(a7)
   10abc:	0108b423          	sd	a6,8(a7)
   10ac0:	0cf13023          	sd	a5,192(sp)
   10ac4:	0ae12c23          	sw	a4,184(sp)
   10ac8:	01088893          	addi	a7,a7,16
   10acc:	fce35ee3          	ble	a4,t1,10aa8 <_vfprintf_r+0x714>
   10ad0:	0b010613          	addi	a2,sp,176
   10ad4:	000a0593          	mv	a1,s4
   10ad8:	000b8513          	mv	a0,s7
   10adc:	00613823          	sd	t1,16(sp)
   10ae0:	01013023          	sd	a6,0(sp)
   10ae4:	2d5050ef          	jal	165b8 <__sprint_r>
   10ae8:	ba051ee3          	bnez	a0,106a4 <_vfprintf_r+0x310>
   10aec:	ff0c8c9b          	addiw	s9,s9,-16
   10af0:	0c013783          	ld	a5,192(sp)
   10af4:	0b812703          	lw	a4,184(sp)
   10af8:	000b0893          	mv	a7,s6
   10afc:	01013303          	ld	t1,16(sp)
   10b00:	00013803          	ld	a6,0(sp)
   10b04:	fb9dc6e3          	blt	s11,s9,10ab0 <_vfprintf_r+0x71c>
   10b08:	05013603          	ld	a2,80(sp)
   10b0c:	00fc87b3          	add	a5,s9,a5
   10b10:	0017071b          	addiw	a4,a4,1
   10b14:	00c8b023          	sd	a2,0(a7)
   10b18:	0198b423          	sd	s9,8(a7)
   10b1c:	0cf13023          	sd	a5,192(sp)
   10b20:	0ae12c23          	sw	a4,184(sp)
   10b24:	00700693          	li	a3,7
   10b28:	0ce6cae3          	blt	a3,a4,113fc <_vfprintf_r+0x1068>
   10b2c:	08f14603          	lbu	a2,143(sp)
   10b30:	01088893          	addi	a7,a7,16
   10b34:	02060a63          	beqz	a2,10b68 <_vfprintf_r+0x7d4>
   10b38:	0b812703          	lw	a4,184(sp)
   10b3c:	08f10693          	addi	a3,sp,143
   10b40:	00d8b023          	sd	a3,0(a7)
   10b44:	00178793          	addi	a5,a5,1
   10b48:	00100693          	li	a3,1
   10b4c:	0017071b          	addiw	a4,a4,1
   10b50:	00d8b423          	sd	a3,8(a7)
   10b54:	0cf13023          	sd	a5,192(sp)
   10b58:	0ae12c23          	sw	a4,184(sp)
   10b5c:	00700693          	li	a3,7
   10b60:	01088893          	addi	a7,a7,16
   10b64:	76e6c663          	blt	a3,a4,112d0 <_vfprintf_r+0xf3c>
   10b68:	04012703          	lw	a4,64(sp)
   10b6c:	02070a63          	beqz	a4,10ba0 <_vfprintf_r+0x80c>
   10b70:	0b812703          	lw	a4,184(sp)
   10b74:	09010693          	addi	a3,sp,144
   10b78:	00d8b023          	sd	a3,0(a7)
   10b7c:	00278793          	addi	a5,a5,2
   10b80:	00200693          	li	a3,2
   10b84:	0017071b          	addiw	a4,a4,1
   10b88:	00d8b423          	sd	a3,8(a7)
   10b8c:	0cf13023          	sd	a5,192(sp)
   10b90:	0ae12c23          	sw	a4,184(sp)
   10b94:	00700693          	li	a3,7
   10b98:	01088893          	addi	a7,a7,16
   10b9c:	74e6ca63          	blt	a3,a4,112f0 <_vfprintf_r+0xf5c>
   10ba0:	04812683          	lw	a3,72(sp)
   10ba4:	08000713          	li	a4,128
   10ba8:	5ee68663          	beq	a3,a4,11194 <_vfprintf_r+0xe00>
   10bac:	02012703          	lw	a4,32(sp)
   10bb0:	40e4043b          	subw	s0,s0,a4
   10bb4:	0c805063          	blez	s0,10c74 <_vfprintf_r+0x8e0>
   10bb8:	01000713          	li	a4,16
   10bbc:	4e875ce3          	ble	s0,a4,118b4 <_vfprintf_r+0x1520>
   10bc0:	01000c93          	li	s9,16
   10bc4:	0b812703          	lw	a4,184(sp)
   10bc8:	00913823          	sd	s1,16(sp)
   10bcc:	00700813          	li	a6,7
   10bd0:	000c8d93          	mv	s11,s9
   10bd4:	00c0006f          	j	10be0 <_vfprintf_r+0x84c>
   10bd8:	ff04041b          	addiw	s0,s0,-16
   10bdc:	048dda63          	ble	s0,s11,10c30 <_vfprintf_r+0x89c>
   10be0:	01078793          	addi	a5,a5,16
   10be4:	0017071b          	addiw	a4,a4,1
   10be8:	0098b023          	sd	s1,0(a7)
   10bec:	0198b423          	sd	s9,8(a7)
   10bf0:	0cf13023          	sd	a5,192(sp)
   10bf4:	0ae12c23          	sw	a4,184(sp)
   10bf8:	01088893          	addi	a7,a7,16
   10bfc:	fce85ee3          	ble	a4,a6,10bd8 <_vfprintf_r+0x844>
   10c00:	0b010613          	addi	a2,sp,176
   10c04:	000a0593          	mv	a1,s4
   10c08:	000b8513          	mv	a0,s7
   10c0c:	01013023          	sd	a6,0(sp)
   10c10:	1a9050ef          	jal	165b8 <__sprint_r>
   10c14:	a80518e3          	bnez	a0,106a4 <_vfprintf_r+0x310>
   10c18:	ff04041b          	addiw	s0,s0,-16
   10c1c:	0c013783          	ld	a5,192(sp)
   10c20:	0b812703          	lw	a4,184(sp)
   10c24:	000b0893          	mv	a7,s6
   10c28:	00013803          	ld	a6,0(sp)
   10c2c:	fa8dcae3          	blt	s11,s0,10be0 <_vfprintf_r+0x84c>
   10c30:	01013683          	ld	a3,16(sp)
   10c34:	008787b3          	add	a5,a5,s0
   10c38:	0017071b          	addiw	a4,a4,1
   10c3c:	00d8b023          	sd	a3,0(a7)
   10c40:	0088b423          	sd	s0,8(a7)
   10c44:	0cf13023          	sd	a5,192(sp)
   10c48:	0ae12c23          	sw	a4,184(sp)
   10c4c:	00700693          	li	a3,7
   10c50:	01088893          	addi	a7,a7,16
   10c54:	02e6d063          	ble	a4,a3,10c74 <_vfprintf_r+0x8e0>
   10c58:	0b010613          	addi	a2,sp,176
   10c5c:	000a0593          	mv	a1,s4
   10c60:	000b8513          	mv	a0,s7
   10c64:	155050ef          	jal	165b8 <__sprint_r>
   10c68:	a2051ee3          	bnez	a0,106a4 <_vfprintf_r+0x310>
   10c6c:	0c013783          	ld	a5,192(sp)
   10c70:	000b0893          	mv	a7,s6
   10c74:	100c7713          	andi	a4,s8,256
   10c78:	40071663          	bnez	a4,11084 <_vfprintf_r+0xcf0>
   10c7c:	02012703          	lw	a4,32(sp)
   10c80:	0b812683          	lw	a3,184(sp)
   10c84:	0128b023          	sd	s2,0(a7)
   10c88:	00e787b3          	add	a5,a5,a4
   10c8c:	0016869b          	addiw	a3,a3,1
   10c90:	00e8b423          	sd	a4,8(a7)
   10c94:	0cf13023          	sd	a5,192(sp)
   10c98:	0ad12c23          	sw	a3,184(sp)
   10c9c:	00700713          	li	a4,7
   10ca0:	3cd74263          	blt	a4,a3,11064 <_vfprintf_r+0xcd0>
   10ca4:	01088893          	addi	a7,a7,16
   10ca8:	004c7c13          	andi	s8,s8,4
   10cac:	0c0c0063          	beqz	s8,10d6c <_vfprintf_r+0x9d8>
   10cb0:	01812703          	lw	a4,24(sp)
   10cb4:	00812683          	lw	a3,8(sp)
   10cb8:	40d7043b          	subw	s0,a4,a3
   10cbc:	0a805863          	blez	s0,10d6c <_vfprintf_r+0x9d8>
   10cc0:	01000713          	li	a4,16
   10cc4:	748754e3          	ble	s0,a4,11c0c <_vfprintf_r+0x1878>
   10cc8:	01000913          	li	s2,16
   10ccc:	0b812703          	lw	a4,184(sp)
   10cd0:	05513823          	sd	s5,80(sp)
   10cd4:	00700c13          	li	s8,7
   10cd8:	00090d13          	mv	s10,s2
   10cdc:	00c0006f          	j	10ce8 <_vfprintf_r+0x954>
   10ce0:	ff04041b          	addiw	s0,s0,-16
   10ce4:	048d5663          	ble	s0,s10,10d30 <_vfprintf_r+0x99c>
   10ce8:	01078793          	addi	a5,a5,16
   10cec:	0017071b          	addiw	a4,a4,1
   10cf0:	0158b023          	sd	s5,0(a7)
   10cf4:	0128b423          	sd	s2,8(a7)
   10cf8:	0cf13023          	sd	a5,192(sp)
   10cfc:	0ae12c23          	sw	a4,184(sp)
   10d00:	01088893          	addi	a7,a7,16
   10d04:	fcec5ee3          	ble	a4,s8,10ce0 <_vfprintf_r+0x94c>
   10d08:	0b010613          	addi	a2,sp,176
   10d0c:	000a0593          	mv	a1,s4
   10d10:	000b8513          	mv	a0,s7
   10d14:	0a5050ef          	jal	165b8 <__sprint_r>
   10d18:	980516e3          	bnez	a0,106a4 <_vfprintf_r+0x310>
   10d1c:	ff04041b          	addiw	s0,s0,-16
   10d20:	0c013783          	ld	a5,192(sp)
   10d24:	0b812703          	lw	a4,184(sp)
   10d28:	000b0893          	mv	a7,s6
   10d2c:	fa8d4ee3          	blt	s10,s0,10ce8 <_vfprintf_r+0x954>
   10d30:	05013683          	ld	a3,80(sp)
   10d34:	008787b3          	add	a5,a5,s0
   10d38:	0017071b          	addiw	a4,a4,1
   10d3c:	00d8b023          	sd	a3,0(a7)
   10d40:	0088b423          	sd	s0,8(a7)
   10d44:	0cf13023          	sd	a5,192(sp)
   10d48:	0ae12c23          	sw	a4,184(sp)
   10d4c:	00700693          	li	a3,7
   10d50:	00e6de63          	ble	a4,a3,10d6c <_vfprintf_r+0x9d8>
   10d54:	0b010613          	addi	a2,sp,176
   10d58:	000a0593          	mv	a1,s4
   10d5c:	000b8513          	mv	a0,s7
   10d60:	059050ef          	jal	165b8 <__sprint_r>
   10d64:	940510e3          	bnez	a0,106a4 <_vfprintf_r+0x310>
   10d68:	0c013783          	ld	a5,192(sp)
   10d6c:	01812c83          	lw	s9,24(sp)
   10d70:	00812703          	lw	a4,8(sp)
   10d74:	00ecd463          	ble	a4,s9,10d7c <_vfprintf_r+0x9e8>
   10d78:	00070c93          	mv	s9,a4
   10d7c:	01c12703          	lw	a4,28(sp)
   10d80:	0197073b          	addw	a4,a4,s9
   10d84:	00e12e23          	sw	a4,28(sp)
   10d88:	52079863          	bnez	a5,112b8 <_vfprintf_r+0xf24>
   10d8c:	0009c783          	lbu	a5,0(s3)
   10d90:	0a012c23          	sw	zero,184(sp)
   10d94:	000b0893          	mv	a7,s6
   10d98:	f2079263          	bnez	a5,104bc <_vfprintf_r+0x128>
   10d9c:	00098413          	mv	s0,s3
   10da0:	f80ff06f          	j	10520 <_vfprintf_r+0x18c>
   10da4:	00060463          	beqz	a2,10dac <_vfprintf_r+0xa18>
   10da8:	22c0106f          	j	11fd4 <_vfprintf_r+0x1c40>
   10dac:	010c7793          	andi	a5,s8,16
   10db0:	12078e63          	beqz	a5,10eec <_vfprintf_r+0xb58>
   10db4:	02813703          	ld	a4,40(sp)
   10db8:	00073783          	ld	a5,0(a4)
   10dbc:	00870713          	addi	a4,a4,8
   10dc0:	02e13423          	sd	a4,40(sp)
   10dc4:	1407c0e3          	bltz	a5,11704 <_vfprintf_r+0x1370>
   10dc8:	08f14603          	lbu	a2,143(sp)
   10dcc:	bc044ee3          	bltz	s0,109a8 <_vfprintf_r+0x614>
   10dd0:	f7fc7c13          	andi	s8,s8,-129
   10dd4:	ae0798e3          	bnez	a5,108c4 <_vfprintf_r+0x530>
   10dd8:	6e041a63          	bnez	s0,114cc <_vfprintf_r+0x1138>
   10ddc:	00000413          	li	s0,0
   10de0:	02012023          	sw	zero,32(sp)
   10de4:	000b0913          	mv	s2,s6
   10de8:	9a9ff06f          	j	10790 <_vfprintf_r+0x3fc>
   10dec:	040c6c13          	ori	s8,s8,64
   10df0:	f60ff06f          	j	10550 <_vfprintf_r+0x1bc>
   10df4:	00060463          	beqz	a2,10dfc <_vfprintf_r+0xa68>
   10df8:	1d40106f          	j	11fcc <_vfprintf_r+0x1c38>
   10dfc:	02813783          	ld	a5,40(sp)
   10e00:	00100913          	li	s2,1
   10e04:	0007b787          	fld	fa5,0(a5)
   10e08:	00878793          	addi	a5,a5,8
   10e0c:	01113023          	sd	a7,0(sp)
   10e10:	04f13c27          	fsd	fa5,88(sp)
   10e14:	05813c83          	ld	s9,88(sp)
   10e18:	02f13423          	sd	a5,40(sp)
   10e1c:	f20c8553          	fmv.d.x	fa0,s9
   10e20:	2e8050ef          	jal	16108 <__fpclassifyd>
   10e24:	00013883          	ld	a7,0(sp)
   10e28:	0f251ce3          	bne	a0,s2,11720 <_vfprintf_r+0x138c>
   10e2c:	f20007d3          	fmv.d.x	fa5,zero
   10e30:	f20c8753          	fmv.d.x	fa4,s9
   10e34:	a2f717d3          	flt.d	a5,fa4,fa5
   10e38:	600792e3          	bnez	a5,11c3c <_vfprintf_r+0x18a8>
   10e3c:	08f14603          	lbu	a2,143(sp)
   10e40:	04700793          	li	a5,71
   10e44:	3da7d8e3          	ble	s10,a5,11a14 <_vfprintf_r+0x1680>
   10e48:	00019937          	lui	s2,0x19
   10e4c:	22890913          	addi	s2,s2,552 # 19228 <zeroes.4137+0x20>
   10e50:	00300793          	li	a5,3
   10e54:	00f12423          	sw	a5,8(sp)
   10e58:	f7fc7c13          	andi	s8,s8,-129
   10e5c:	02f12023          	sw	a5,32(sp)
   10e60:	00000413          	li	s0,0
   10e64:	04012623          	sw	zero,76(sp)
   10e68:	941ff06f          	j	107a8 <_vfprintf_r+0x414>
   10e6c:	008c6c13          	ori	s8,s8,8
   10e70:	ee0ff06f          	j	10550 <_vfprintf_r+0x1bc>
   10e74:	00060463          	beqz	a2,10e7c <_vfprintf_r+0xae8>
   10e78:	1280106f          	j	11fa0 <_vfprintf_r+0x1c0c>
   10e7c:	000197b7          	lui	a5,0x19
   10e80:	25878793          	addi	a5,a5,600 # 19258 <zeroes.4137+0x50>
   10e84:	02f13c23          	sd	a5,56(sp)
   10e88:	010c7793          	andi	a5,s8,16
   10e8c:	b40792e3          	bnez	a5,109d0 <_vfprintf_r+0x63c>
   10e90:	040c7793          	andi	a5,s8,64
   10e94:	02813703          	ld	a4,40(sp)
   10e98:	1c0784e3          	beqz	a5,11860 <_vfprintf_r+0x14cc>
   10e9c:	00075783          	lhu	a5,0(a4)
   10ea0:	00870713          	addi	a4,a4,8
   10ea4:	02e13423          	sd	a4,40(sp)
   10ea8:	b39ff06f          	j	109e0 <_vfprintf_r+0x64c>
   10eac:	00060463          	beqz	a2,10eb4 <_vfprintf_r+0xb20>
   10eb0:	10c0106f          	j	11fbc <_vfprintf_r+0x1c28>
   10eb4:	010c7793          	andi	a5,s8,16
   10eb8:	1a078ce3          	beqz	a5,11870 <_vfprintf_r+0x14dc>
   10ebc:	02813683          	ld	a3,40(sp)
   10ec0:	01c12703          	lw	a4,28(sp)
   10ec4:	0006b783          	ld	a5,0(a3)
   10ec8:	00868693          	addi	a3,a3,8
   10ecc:	02d13423          	sd	a3,40(sp)
   10ed0:	00e7b023          	sd	a4,0(a5)
   10ed4:	de0ff06f          	j	104b4 <_vfprintf_r+0x120>
   10ed8:	00060463          	beqz	a2,10ee0 <_vfprintf_r+0xb4c>
   10edc:	0d40106f          	j	11fb0 <_vfprintf_r+0x1c1c>
   10ee0:	010c6c13          	ori	s8,s8,16
   10ee4:	010c7793          	andi	a5,s8,16
   10ee8:	ec0796e3          	bnez	a5,10db4 <_vfprintf_r+0xa20>
   10eec:	040c7793          	andi	a5,s8,64
   10ef0:	02813703          	ld	a4,40(sp)
   10ef4:	1a0780e3          	beqz	a5,11894 <_vfprintf_r+0x1500>
   10ef8:	00071783          	lh	a5,0(a4)
   10efc:	00870713          	addi	a4,a4,8
   10f00:	02e13423          	sd	a4,40(sp)
   10f04:	ec1ff06f          	j	10dc4 <_vfprintf_r+0xa30>
   10f08:	00019737          	lui	a4,0x19
   10f0c:	25870713          	addi	a4,a4,600 # 19258 <zeroes.4137+0x50>
   10f10:	00000613          	li	a2,0
   10f14:	02e13c23          	sd	a4,56(sp)
   10f18:	07800d13          	li	s10,120
   10f1c:	ee0ff06f          	j	105fc <_vfprintf_r+0x268>
   10f20:	00060463          	beqz	a2,10f28 <_vfprintf_r+0xb94>
   10f24:	0c00106f          	j	11fe4 <_vfprintf_r+0x1c50>
   10f28:	f60d0263          	beqz	s10,1068c <_vfprintf_r+0x2f8>
   10f2c:	00100793          	li	a5,1
   10f30:	00f12423          	sw	a5,8(sp)
   10f34:	0da10423          	sb	s10,200(sp)
   10f38:	080107a3          	sb	zero,143(sp)
   10f3c:	00000613          	li	a2,0
   10f40:	02f12023          	sw	a5,32(sp)
   10f44:	00000413          	li	s0,0
   10f48:	04012623          	sw	zero,76(sp)
   10f4c:	0c810913          	addi	s2,sp,200
   10f50:	afdff06f          	j	10a4c <_vfprintf_r+0x6b8>
   10f54:	02e13423          	sd	a4,40(sp)
   10f58:	00019737          	lui	a4,0x19
   10f5c:	25870713          	addi	a4,a4,600 # 19258 <zeroes.4137+0x50>
   10f60:	00068c13          	mv	s8,a3
   10f64:	02e13c23          	sd	a4,56(sp)
   10f68:	07800d13          	li	s10,120
   10f6c:	3a079a63          	bnez	a5,11320 <_vfprintf_r+0xf8c>
   10f70:	00000613          	li	a2,0
   10f74:	00200793          	li	a5,2
   10f78:	00100713          	li	a4,1
   10f7c:	54e78863          	beq	a5,a4,114cc <_vfprintf_r+0x1138>
   10f80:	00200713          	li	a4,2
   10f84:	e6e78a63          	beq	a5,a4,105f8 <_vfprintf_r+0x264>
   10f88:	00000793          	li	a5,0
   10f8c:	fc4ff06f          	j	10750 <_vfprintf_r+0x3bc>
   10f90:	0c013783          	ld	a5,192(sp)
   10f94:	ba1ff06f          	j	10b34 <_vfprintf_r+0x7a0>
   10f98:	07012683          	lw	a3,112(sp)
   10f9c:	00100713          	li	a4,1
   10fa0:	00178793          	addi	a5,a5,1
   10fa4:	6cd75663          	ble	a3,a4,11670 <_vfprintf_r+0x12dc>
   10fa8:	0b812703          	lw	a4,184(sp)
   10fac:	00100693          	li	a3,1
   10fb0:	00d8b423          	sd	a3,8(a7)
   10fb4:	0017071b          	addiw	a4,a4,1
   10fb8:	0128b023          	sd	s2,0(a7)
   10fbc:	0cf13023          	sd	a5,192(sp)
   10fc0:	0ae12c23          	sw	a4,184(sp)
   10fc4:	00700693          	li	a3,7
   10fc8:	01088893          	addi	a7,a7,16
   10fcc:	6ce6ca63          	blt	a3,a4,116a0 <_vfprintf_r+0x130c>
   10fd0:	06813683          	ld	a3,104(sp)
   10fd4:	06013603          	ld	a2,96(sp)
   10fd8:	0017071b          	addiw	a4,a4,1
   10fdc:	00f687b3          	add	a5,a3,a5
   10fe0:	00d8b423          	sd	a3,8(a7)
   10fe4:	00c8b023          	sd	a2,0(a7)
   10fe8:	0cf13023          	sd	a5,192(sp)
   10fec:	0ae12c23          	sw	a4,184(sp)
   10ff0:	00700693          	li	a3,7
   10ff4:	01088893          	addi	a7,a7,16
   10ff8:	6ee6c263          	blt	a3,a4,116dc <_vfprintf_r+0x1348>
   10ffc:	f20007d3          	fmv.d.x	fa5,zero
   11000:	05813707          	fld	fa4,88(sp)
   11004:	a2f726d3          	feq.d	a3,fa4,fa5
   11008:	40069c63          	bnez	a3,11420 <_vfprintf_r+0x108c>
   1100c:	07012683          	lw	a3,112(sp)
   11010:	00190913          	addi	s2,s2,1
   11014:	0017071b          	addiw	a4,a4,1
   11018:	fff6869b          	addiw	a3,a3,-1
   1101c:	00d787b3          	add	a5,a5,a3
   11020:	0128b023          	sd	s2,0(a7)
   11024:	00d8b423          	sd	a3,8(a7)
   11028:	0cf13023          	sd	a5,192(sp)
   1102c:	0ae12c23          	sw	a4,184(sp)
   11030:	00700693          	li	a3,7
   11034:	26e6c063          	blt	a3,a4,11294 <_vfprintf_r+0xf00>
   11038:	01088893          	addi	a7,a7,16
   1103c:	07412683          	lw	a3,116(sp)
   11040:	0a010613          	addi	a2,sp,160
   11044:	0017071b          	addiw	a4,a4,1
   11048:	00f687b3          	add	a5,a3,a5
   1104c:	00c8b023          	sd	a2,0(a7)
   11050:	00d8b423          	sd	a3,8(a7)
   11054:	0cf13023          	sd	a5,192(sp)
   11058:	0ae12c23          	sw	a4,184(sp)
   1105c:	00700693          	li	a3,7
   11060:	c4e6d2e3          	ble	a4,a3,10ca4 <_vfprintf_r+0x910>
   11064:	0b010613          	addi	a2,sp,176
   11068:	000a0593          	mv	a1,s4
   1106c:	000b8513          	mv	a0,s7
   11070:	548050ef          	jal	165b8 <__sprint_r>
   11074:	e2051863          	bnez	a0,106a4 <_vfprintf_r+0x310>
   11078:	0c013783          	ld	a5,192(sp)
   1107c:	000b0893          	mv	a7,s6
   11080:	c29ff06f          	j	10ca8 <_vfprintf_r+0x914>
   11084:	06500713          	li	a4,101
   11088:	f1a758e3          	ble	s10,a4,10f98 <_vfprintf_r+0xc04>
   1108c:	f20007d3          	fmv.d.x	fa5,zero
   11090:	05813707          	fld	fa4,88(sp)
   11094:	a2f72753          	feq.d	a4,fa4,fa5
   11098:	28070863          	beqz	a4,11328 <_vfprintf_r+0xf94>
   1109c:	0b812703          	lw	a4,184(sp)
   110a0:	000196b7          	lui	a3,0x19
   110a4:	27868693          	addi	a3,a3,632 # 19278 <zeroes.4137+0x70>
   110a8:	00d8b023          	sd	a3,0(a7)
   110ac:	00178793          	addi	a5,a5,1
   110b0:	00100693          	li	a3,1
   110b4:	0017071b          	addiw	a4,a4,1
   110b8:	00d8b423          	sd	a3,8(a7)
   110bc:	0cf13023          	sd	a5,192(sp)
   110c0:	0ae12c23          	sw	a4,184(sp)
   110c4:	00700693          	li	a3,7
   110c8:	01088893          	addi	a7,a7,16
   110cc:	7ee6ca63          	blt	a3,a4,118c0 <_vfprintf_r+0x152c>
   110d0:	09812703          	lw	a4,152(sp)
   110d4:	07012683          	lw	a3,112(sp)
   110d8:	00d74663          	blt	a4,a3,110e4 <_vfprintf_r+0xd50>
   110dc:	001c7713          	andi	a4,s8,1
   110e0:	bc0704e3          	beqz	a4,10ca8 <_vfprintf_r+0x914>
   110e4:	06013703          	ld	a4,96(sp)
   110e8:	06813683          	ld	a3,104(sp)
   110ec:	01088893          	addi	a7,a7,16
   110f0:	fee8b823          	sd	a4,-16(a7)
   110f4:	0b812703          	lw	a4,184(sp)
   110f8:	00d787b3          	add	a5,a5,a3
   110fc:	fed8bc23          	sd	a3,-8(a7)
   11100:	0017071b          	addiw	a4,a4,1
   11104:	0cf13023          	sd	a5,192(sp)
   11108:	0ae12c23          	sw	a4,184(sp)
   1110c:	00700693          	li	a3,7
   11110:	1ce6c8e3          	blt	a3,a4,11ae0 <_vfprintf_r+0x174c>
   11114:	07012703          	lw	a4,112(sp)
   11118:	fff7041b          	addiw	s0,a4,-1
   1111c:	b88056e3          	blez	s0,10ca8 <_vfprintf_r+0x914>
   11120:	01000713          	li	a4,16
   11124:	36875c63          	ble	s0,a4,1149c <_vfprintf_r+0x1108>
   11128:	01000913          	li	s2,16
   1112c:	0b812703          	lw	a4,184(sp)
   11130:	00913823          	sd	s1,16(sp)
   11134:	00700d13          	li	s10,7
   11138:	00090693          	mv	a3,s2
   1113c:	00c0006f          	j	11148 <_vfprintf_r+0xdb4>
   11140:	ff04041b          	addiw	s0,s0,-16
   11144:	3686d063          	ble	s0,a3,114a4 <_vfprintf_r+0x1110>
   11148:	01078793          	addi	a5,a5,16
   1114c:	0017071b          	addiw	a4,a4,1
   11150:	0098b023          	sd	s1,0(a7)
   11154:	0128b423          	sd	s2,8(a7)
   11158:	0cf13023          	sd	a5,192(sp)
   1115c:	0ae12c23          	sw	a4,184(sp)
   11160:	01088893          	addi	a7,a7,16
   11164:	fced5ee3          	ble	a4,s10,11140 <_vfprintf_r+0xdac>
   11168:	0b010613          	addi	a2,sp,176
   1116c:	000a0593          	mv	a1,s4
   11170:	000b8513          	mv	a0,s7
   11174:	00d13023          	sd	a3,0(sp)
   11178:	440050ef          	jal	165b8 <__sprint_r>
   1117c:	d2051463          	bnez	a0,106a4 <_vfprintf_r+0x310>
   11180:	0c013783          	ld	a5,192(sp)
   11184:	0b812703          	lw	a4,184(sp)
   11188:	000b0893          	mv	a7,s6
   1118c:	00013683          	ld	a3,0(sp)
   11190:	fb1ff06f          	j	11140 <_vfprintf_r+0xdac>
   11194:	01812703          	lw	a4,24(sp)
   11198:	00812683          	lw	a3,8(sp)
   1119c:	40d70cbb          	subw	s9,a4,a3
   111a0:	a19056e3          	blez	s9,10bac <_vfprintf_r+0x818>
   111a4:	01000713          	li	a4,16
   111a8:	2f975ee3          	ble	s9,a4,11ca4 <_vfprintf_r+0x1910>
   111ac:	01000813          	li	a6,16
   111b0:	0b812703          	lw	a4,184(sp)
   111b4:	00913823          	sd	s1,16(sp)
   111b8:	00700313          	li	t1,7
   111bc:	00080d93          	mv	s11,a6
   111c0:	00c0006f          	j	111cc <_vfprintf_r+0xe38>
   111c4:	ff0c8c9b          	addiw	s9,s9,-16
   111c8:	059dde63          	ble	s9,s11,11224 <_vfprintf_r+0xe90>
   111cc:	01078793          	addi	a5,a5,16
   111d0:	0017071b          	addiw	a4,a4,1
   111d4:	0098b023          	sd	s1,0(a7)
   111d8:	0108b423          	sd	a6,8(a7)
   111dc:	0cf13023          	sd	a5,192(sp)
   111e0:	0ae12c23          	sw	a4,184(sp)
   111e4:	01088893          	addi	a7,a7,16
   111e8:	fce35ee3          	ble	a4,t1,111c4 <_vfprintf_r+0xe30>
   111ec:	0b010613          	addi	a2,sp,176
   111f0:	000a0593          	mv	a1,s4
   111f4:	000b8513          	mv	a0,s7
   111f8:	04613023          	sd	t1,64(sp)
   111fc:	01013023          	sd	a6,0(sp)
   11200:	3b8050ef          	jal	165b8 <__sprint_r>
   11204:	ca051063          	bnez	a0,106a4 <_vfprintf_r+0x310>
   11208:	ff0c8c9b          	addiw	s9,s9,-16
   1120c:	0c013783          	ld	a5,192(sp)
   11210:	0b812703          	lw	a4,184(sp)
   11214:	000b0893          	mv	a7,s6
   11218:	04013303          	ld	t1,64(sp)
   1121c:	00013803          	ld	a6,0(sp)
   11220:	fb9dc6e3          	blt	s11,s9,111cc <_vfprintf_r+0xe38>
   11224:	01013603          	ld	a2,16(sp)
   11228:	019787b3          	add	a5,a5,s9
   1122c:	0017071b          	addiw	a4,a4,1
   11230:	00c8b023          	sd	a2,0(a7)
   11234:	0198b423          	sd	s9,8(a7)
   11238:	0cf13023          	sd	a5,192(sp)
   1123c:	0ae12c23          	sw	a4,184(sp)
   11240:	00700693          	li	a3,7
   11244:	01088893          	addi	a7,a7,16
   11248:	96e6d2e3          	ble	a4,a3,10bac <_vfprintf_r+0x818>
   1124c:	0b010613          	addi	a2,sp,176
   11250:	000a0593          	mv	a1,s4
   11254:	000b8513          	mv	a0,s7
   11258:	360050ef          	jal	165b8 <__sprint_r>
   1125c:	c4051463          	bnez	a0,106a4 <_vfprintf_r+0x310>
   11260:	0c013783          	ld	a5,192(sp)
   11264:	000b0893          	mv	a7,s6
   11268:	945ff06f          	j	10bac <_vfprintf_r+0x818>
   1126c:	00913823          	sd	s1,16(sp)
   11270:	01013683          	ld	a3,16(sp)
   11274:	008787b3          	add	a5,a5,s0
   11278:	0017071b          	addiw	a4,a4,1
   1127c:	00d8b023          	sd	a3,0(a7)
   11280:	0088b423          	sd	s0,8(a7)
   11284:	0cf13023          	sd	a5,192(sp)
   11288:	0ae12c23          	sw	a4,184(sp)
   1128c:	00700693          	li	a3,7
   11290:	dae6d4e3          	ble	a4,a3,11038 <_vfprintf_r+0xca4>
   11294:	0b010613          	addi	a2,sp,176
   11298:	000a0593          	mv	a1,s4
   1129c:	000b8513          	mv	a0,s7
   112a0:	318050ef          	jal	165b8 <__sprint_r>
   112a4:	c0051063          	bnez	a0,106a4 <_vfprintf_r+0x310>
   112a8:	0c013783          	ld	a5,192(sp)
   112ac:	0b812703          	lw	a4,184(sp)
   112b0:	000b0893          	mv	a7,s6
   112b4:	d89ff06f          	j	1103c <_vfprintf_r+0xca8>
   112b8:	0b010613          	addi	a2,sp,176
   112bc:	000a0593          	mv	a1,s4
   112c0:	000b8513          	mv	a0,s7
   112c4:	2f4050ef          	jal	165b8 <__sprint_r>
   112c8:	ac0502e3          	beqz	a0,10d8c <_vfprintf_r+0x9f8>
   112cc:	bd8ff06f          	j	106a4 <_vfprintf_r+0x310>
   112d0:	0b010613          	addi	a2,sp,176
   112d4:	000a0593          	mv	a1,s4
   112d8:	000b8513          	mv	a0,s7
   112dc:	2dc050ef          	jal	165b8 <__sprint_r>
   112e0:	bc051263          	bnez	a0,106a4 <_vfprintf_r+0x310>
   112e4:	0c013783          	ld	a5,192(sp)
   112e8:	000b0893          	mv	a7,s6
   112ec:	87dff06f          	j	10b68 <_vfprintf_r+0x7d4>
   112f0:	0b010613          	addi	a2,sp,176
   112f4:	000a0593          	mv	a1,s4
   112f8:	000b8513          	mv	a0,s7
   112fc:	2bc050ef          	jal	165b8 <__sprint_r>
   11300:	ba051263          	bnez	a0,106a4 <_vfprintf_r+0x310>
   11304:	0c013783          	ld	a5,192(sp)
   11308:	000b0893          	mv	a7,s6
   1130c:	895ff06f          	j	10ba0 <_vfprintf_r+0x80c>
   11310:	080107a3          	sb	zero,143(sp)
   11314:	c4044ce3          	bltz	s0,10f6c <_vfprintf_r+0xbd8>
   11318:	f7fc7c13          	andi	s8,s8,-129
   1131c:	ac078a63          	beqz	a5,105f0 <_vfprintf_r+0x25c>
   11320:	00000613          	li	a2,0
   11324:	ad8ff06f          	j	105fc <_vfprintf_r+0x268>
   11328:	09812403          	lw	s0,152(sp)
   1132c:	5a805c63          	blez	s0,118e4 <_vfprintf_r+0x1550>
   11330:	04c12703          	lw	a4,76(sp)
   11334:	07012683          	lw	a3,112(sp)
   11338:	00070413          	mv	s0,a4
   1133c:	00e6d463          	ble	a4,a3,11344 <_vfprintf_r+0xfb0>
   11340:	00068413          	mv	s0,a3
   11344:	02805663          	blez	s0,11370 <_vfprintf_r+0xfdc>
   11348:	0b812703          	lw	a4,184(sp)
   1134c:	008787b3          	add	a5,a5,s0
   11350:	0128b023          	sd	s2,0(a7)
   11354:	0017071b          	addiw	a4,a4,1
   11358:	0088b423          	sd	s0,8(a7)
   1135c:	0cf13023          	sd	a5,192(sp)
   11360:	0ae12c23          	sw	a4,184(sp)
   11364:	00700693          	li	a3,7
   11368:	01088893          	addi	a7,a7,16
   1136c:	6ae6ca63          	blt	a3,a4,11a20 <_vfprintf_r+0x168c>
   11370:	020448e3          	bltz	s0,11ba0 <_vfprintf_r+0x180c>
   11374:	04c12703          	lw	a4,76(sp)
   11378:	4087043b          	subw	s0,a4,s0
   1137c:	1a805c63          	blez	s0,11534 <_vfprintf_r+0x11a0>
   11380:	01000713          	li	a4,16
   11384:	16875263          	ble	s0,a4,114e8 <_vfprintf_r+0x1154>
   11388:	01000d13          	li	s10,16
   1138c:	0b812703          	lw	a4,184(sp)
   11390:	00913823          	sd	s1,16(sp)
   11394:	00700693          	li	a3,7
   11398:	000d0813          	mv	a6,s10
   1139c:	00c0006f          	j	113a8 <_vfprintf_r+0x1014>
   113a0:	ff04041b          	addiw	s0,s0,-16
   113a4:	14885663          	ble	s0,a6,114f0 <_vfprintf_r+0x115c>
   113a8:	01078793          	addi	a5,a5,16
   113ac:	0017071b          	addiw	a4,a4,1
   113b0:	0098b023          	sd	s1,0(a7)
   113b4:	01a8b423          	sd	s10,8(a7)
   113b8:	0cf13023          	sd	a5,192(sp)
   113bc:	0ae12c23          	sw	a4,184(sp)
   113c0:	01088893          	addi	a7,a7,16
   113c4:	fce6dee3          	ble	a4,a3,113a0 <_vfprintf_r+0x100c>
   113c8:	0b010613          	addi	a2,sp,176
   113cc:	000a0593          	mv	a1,s4
   113d0:	000b8513          	mv	a0,s7
   113d4:	03013023          	sd	a6,32(sp)
   113d8:	00d13023          	sd	a3,0(sp)
   113dc:	1dc050ef          	jal	165b8 <__sprint_r>
   113e0:	ac051263          	bnez	a0,106a4 <_vfprintf_r+0x310>
   113e4:	0c013783          	ld	a5,192(sp)
   113e8:	0b812703          	lw	a4,184(sp)
   113ec:	000b0893          	mv	a7,s6
   113f0:	02013803          	ld	a6,32(sp)
   113f4:	00013683          	ld	a3,0(sp)
   113f8:	fa9ff06f          	j	113a0 <_vfprintf_r+0x100c>
   113fc:	0b010613          	addi	a2,sp,176
   11400:	000a0593          	mv	a1,s4
   11404:	000b8513          	mv	a0,s7
   11408:	1b0050ef          	jal	165b8 <__sprint_r>
   1140c:	a8051c63          	bnez	a0,106a4 <_vfprintf_r+0x310>
   11410:	08f14603          	lbu	a2,143(sp)
   11414:	0c013783          	ld	a5,192(sp)
   11418:	000b0893          	mv	a7,s6
   1141c:	f18ff06f          	j	10b34 <_vfprintf_r+0x7a0>
   11420:	07012683          	lw	a3,112(sp)
   11424:	fff6841b          	addiw	s0,a3,-1
   11428:	c0805ae3          	blez	s0,1103c <_vfprintf_r+0xca8>
   1142c:	01000693          	li	a3,16
   11430:	e286dee3          	ble	s0,a3,1126c <_vfprintf_r+0xed8>
   11434:	01000913          	li	s2,16
   11438:	00913823          	sd	s1,16(sp)
   1143c:	00700d13          	li	s10,7
   11440:	00090693          	mv	a3,s2
   11444:	00c0006f          	j	11450 <_vfprintf_r+0x10bc>
   11448:	ff04041b          	addiw	s0,s0,-16
   1144c:	e286d2e3          	ble	s0,a3,11270 <_vfprintf_r+0xedc>
   11450:	01078793          	addi	a5,a5,16
   11454:	0017071b          	addiw	a4,a4,1
   11458:	0098b023          	sd	s1,0(a7)
   1145c:	0128b423          	sd	s2,8(a7)
   11460:	0cf13023          	sd	a5,192(sp)
   11464:	0ae12c23          	sw	a4,184(sp)
   11468:	01088893          	addi	a7,a7,16
   1146c:	fced5ee3          	ble	a4,s10,11448 <_vfprintf_r+0x10b4>
   11470:	0b010613          	addi	a2,sp,176
   11474:	000a0593          	mv	a1,s4
   11478:	000b8513          	mv	a0,s7
   1147c:	00d13023          	sd	a3,0(sp)
   11480:	138050ef          	jal	165b8 <__sprint_r>
   11484:	a2051063          	bnez	a0,106a4 <_vfprintf_r+0x310>
   11488:	0c013783          	ld	a5,192(sp)
   1148c:	0b812703          	lw	a4,184(sp)
   11490:	000b0893          	mv	a7,s6
   11494:	00013683          	ld	a3,0(sp)
   11498:	fb1ff06f          	j	11448 <_vfprintf_r+0x10b4>
   1149c:	0b812703          	lw	a4,184(sp)
   114a0:	00913823          	sd	s1,16(sp)
   114a4:	01013683          	ld	a3,16(sp)
   114a8:	008787b3          	add	a5,a5,s0
   114ac:	0088b423          	sd	s0,8(a7)
   114b0:	00d8b023          	sd	a3,0(a7)
   114b4:	0017071b          	addiw	a4,a4,1
   114b8:	0cf13023          	sd	a5,192(sp)
   114bc:	0ae12c23          	sw	a4,184(sp)
   114c0:	00700693          	li	a3,7
   114c4:	fee6d063          	ble	a4,a3,10ca4 <_vfprintf_r+0x910>
   114c8:	b9dff06f          	j	11064 <_vfprintf_r+0xcd0>
   114cc:	00000793          	li	a5,0
   114d0:	0307879b          	addiw	a5,a5,48
   114d4:	0ef107a3          	sb	a5,239(sp)
   114d8:	07813783          	ld	a5,120(sp)
   114dc:	0ef10913          	addi	s2,sp,239
   114e0:	02f12023          	sw	a5,32(sp)
   114e4:	aacff06f          	j	10790 <_vfprintf_r+0x3fc>
   114e8:	0b812703          	lw	a4,184(sp)
   114ec:	00913823          	sd	s1,16(sp)
   114f0:	01013683          	ld	a3,16(sp)
   114f4:	008787b3          	add	a5,a5,s0
   114f8:	0017071b          	addiw	a4,a4,1
   114fc:	00d8b023          	sd	a3,0(a7)
   11500:	0088b423          	sd	s0,8(a7)
   11504:	0cf13023          	sd	a5,192(sp)
   11508:	0ae12c23          	sw	a4,184(sp)
   1150c:	00700693          	li	a3,7
   11510:	01088893          	addi	a7,a7,16
   11514:	02e6d063          	ble	a4,a3,11534 <_vfprintf_r+0x11a0>
   11518:	0b010613          	addi	a2,sp,176
   1151c:	000a0593          	mv	a1,s4
   11520:	000b8513          	mv	a0,s7
   11524:	094050ef          	jal	165b8 <__sprint_r>
   11528:	96051e63          	bnez	a0,106a4 <_vfprintf_r+0x310>
   1152c:	0c013783          	ld	a5,192(sp)
   11530:	000b0893          	mv	a7,s6
   11534:	04c12d03          	lw	s10,76(sp)
   11538:	09812703          	lw	a4,152(sp)
   1153c:	07012683          	lw	a3,112(sp)
   11540:	01a90d33          	add	s10,s2,s10
   11544:	0cd74a63          	blt	a4,a3,11618 <_vfprintf_r+0x1284>
   11548:	001c7693          	andi	a3,s8,1
   1154c:	0c069663          	bnez	a3,11618 <_vfprintf_r+0x1284>
   11550:	07012683          	lw	a3,112(sp)
   11554:	00d90433          	add	s0,s2,a3
   11558:	41a40433          	sub	s0,s0,s10
   1155c:	40e6873b          	subw	a4,a3,a4
   11560:	0004041b          	sext.w	s0,s0
   11564:	00875463          	ble	s0,a4,1156c <_vfprintf_r+0x11d8>
   11568:	00070413          	mv	s0,a4
   1156c:	02805663          	blez	s0,11598 <_vfprintf_r+0x1204>
   11570:	0b812683          	lw	a3,184(sp)
   11574:	008787b3          	add	a5,a5,s0
   11578:	01a8b023          	sd	s10,0(a7)
   1157c:	0016869b          	addiw	a3,a3,1
   11580:	0088b423          	sd	s0,8(a7)
   11584:	0cf13023          	sd	a5,192(sp)
   11588:	0ad12c23          	sw	a3,184(sp)
   1158c:	00700613          	li	a2,7
   11590:	01088893          	addi	a7,a7,16
   11594:	4cd64263          	blt	a2,a3,11a58 <_vfprintf_r+0x16c4>
   11598:	60044863          	bltz	s0,11ba8 <_vfprintf_r+0x1814>
   1159c:	4087043b          	subw	s0,a4,s0
   115a0:	f0805463          	blez	s0,10ca8 <_vfprintf_r+0x914>
   115a4:	01000713          	li	a4,16
   115a8:	ee875ae3          	ble	s0,a4,1149c <_vfprintf_r+0x1108>
   115ac:	01000913          	li	s2,16
   115b0:	0b812703          	lw	a4,184(sp)
   115b4:	00913823          	sd	s1,16(sp)
   115b8:	00700d13          	li	s10,7
   115bc:	00090693          	mv	a3,s2
   115c0:	00c0006f          	j	115cc <_vfprintf_r+0x1238>
   115c4:	ff04041b          	addiw	s0,s0,-16
   115c8:	ec86dee3          	ble	s0,a3,114a4 <_vfprintf_r+0x1110>
   115cc:	01078793          	addi	a5,a5,16
   115d0:	0017071b          	addiw	a4,a4,1
   115d4:	0098b023          	sd	s1,0(a7)
   115d8:	0128b423          	sd	s2,8(a7)
   115dc:	0cf13023          	sd	a5,192(sp)
   115e0:	0ae12c23          	sw	a4,184(sp)
   115e4:	01088893          	addi	a7,a7,16
   115e8:	fced5ee3          	ble	a4,s10,115c4 <_vfprintf_r+0x1230>
   115ec:	0b010613          	addi	a2,sp,176
   115f0:	000a0593          	mv	a1,s4
   115f4:	000b8513          	mv	a0,s7
   115f8:	00d13023          	sd	a3,0(sp)
   115fc:	7bd040ef          	jal	165b8 <__sprint_r>
   11600:	8a051263          	bnez	a0,106a4 <_vfprintf_r+0x310>
   11604:	0c013783          	ld	a5,192(sp)
   11608:	0b812703          	lw	a4,184(sp)
   1160c:	000b0893          	mv	a7,s6
   11610:	00013683          	ld	a3,0(sp)
   11614:	fb1ff06f          	j	115c4 <_vfprintf_r+0x1230>
   11618:	06013683          	ld	a3,96(sp)
   1161c:	06813603          	ld	a2,104(sp)
   11620:	01088893          	addi	a7,a7,16
   11624:	fed8b823          	sd	a3,-16(a7)
   11628:	0b812683          	lw	a3,184(sp)
   1162c:	00c787b3          	add	a5,a5,a2
   11630:	fec8bc23          	sd	a2,-8(a7)
   11634:	0016869b          	addiw	a3,a3,1
   11638:	0cf13023          	sd	a5,192(sp)
   1163c:	0ad12c23          	sw	a3,184(sp)
   11640:	00700613          	li	a2,7
   11644:	f0d656e3          	ble	a3,a2,11550 <_vfprintf_r+0x11bc>
   11648:	0b010613          	addi	a2,sp,176
   1164c:	000a0593          	mv	a1,s4
   11650:	000b8513          	mv	a0,s7
   11654:	765040ef          	jal	165b8 <__sprint_r>
   11658:	00050463          	beqz	a0,11660 <_vfprintf_r+0x12cc>
   1165c:	848ff06f          	j	106a4 <_vfprintf_r+0x310>
   11660:	09812703          	lw	a4,152(sp)
   11664:	0c013783          	ld	a5,192(sp)
   11668:	000b0893          	mv	a7,s6
   1166c:	ee5ff06f          	j	11550 <_vfprintf_r+0x11bc>
   11670:	00ec7733          	and	a4,s8,a4
   11674:	92071ae3          	bnez	a4,10fa8 <_vfprintf_r+0xc14>
   11678:	0b812703          	lw	a4,184(sp)
   1167c:	0128b023          	sd	s2,0(a7)
   11680:	00100693          	li	a3,1
   11684:	0017071b          	addiw	a4,a4,1
   11688:	99dff06f          	j	11024 <_vfprintf_r+0xc90>
   1168c:	02813783          	ld	a5,40(sp)
   11690:	00878713          	addi	a4,a5,8
   11694:	0007e783          	lwu	a5,0(a5)
   11698:	a0045e63          	bgez	s0,108b4 <_vfprintf_r+0x520>
   1169c:	b04ff06f          	j	109a0 <_vfprintf_r+0x60c>
   116a0:	0b010613          	addi	a2,sp,176
   116a4:	000a0593          	mv	a1,s4
   116a8:	000b8513          	mv	a0,s7
   116ac:	70d040ef          	jal	165b8 <__sprint_r>
   116b0:	00050463          	beqz	a0,116b8 <_vfprintf_r+0x1324>
   116b4:	ff1fe06f          	j	106a4 <_vfprintf_r+0x310>
   116b8:	0c013783          	ld	a5,192(sp)
   116bc:	0b812703          	lw	a4,184(sp)
   116c0:	000b0893          	mv	a7,s6
   116c4:	90dff06f          	j	10fd0 <_vfprintf_r+0xc3c>
   116c8:	02813783          	ld	a5,40(sp)
   116cc:	00878713          	addi	a4,a5,8
   116d0:	0007e783          	lwu	a5,0(a5)
   116d4:	86045063          	bgez	s0,10734 <_vfprintf_r+0x3a0>
   116d8:	a84ff06f          	j	1095c <_vfprintf_r+0x5c8>
   116dc:	0b010613          	addi	a2,sp,176
   116e0:	000a0593          	mv	a1,s4
   116e4:	000b8513          	mv	a0,s7
   116e8:	6d1040ef          	jal	165b8 <__sprint_r>
   116ec:	00050463          	beqz	a0,116f4 <_vfprintf_r+0x1360>
   116f0:	fb5fe06f          	j	106a4 <_vfprintf_r+0x310>
   116f4:	0c013783          	ld	a5,192(sp)
   116f8:	0b812703          	lw	a4,184(sp)
   116fc:	000b0893          	mv	a7,s6
   11700:	8fdff06f          	j	10ffc <_vfprintf_r+0xc68>
   11704:	02d00713          	li	a4,45
   11708:	08e107a3          	sb	a4,143(sp)
   1170c:	40f007b3          	neg	a5,a5
   11710:	4a044063          	bltz	s0,11bb0 <_vfprintf_r+0x181c>
   11714:	f7fc7c13          	andi	s8,s8,-129
   11718:	02d00613          	li	a2,45
   1171c:	9a8ff06f          	j	108c4 <_vfprintf_r+0x530>
   11720:	05813507          	fld	fa0,88(sp)
   11724:	01113023          	sd	a7,0(sp)
   11728:	1e1040ef          	jal	16108 <__fpclassifyd>
   1172c:	00013883          	ld	a7,0(sp)
   11730:	2a050463          	beqz	a0,119d8 <_vfprintf_r+0x1644>
   11734:	fff00793          	li	a5,-1
   11738:	fdfd7d93          	andi	s11,s10,-33
   1173c:	62f40c63          	beq	s0,a5,11d74 <_vfprintf_r+0x19e0>
   11740:	04700793          	li	a5,71
   11744:	62fd8263          	beq	s11,a5,11d68 <_vfprintf_r+0x19d4>
   11748:	05813703          	ld	a4,88(sp)
   1174c:	100c6693          	ori	a3,s8,256
   11750:	00d12023          	sw	a3,0(sp)
   11754:	42075793          	srai	a5,a4,0x20
   11758:	f2070453          	fmv.d.x	fs0,a4
   1175c:	00000c93          	li	s9,0
   11760:	6607c663          	bltz	a5,11dcc <_vfprintf_r+0x1a38>
   11764:	06600793          	li	a5,102
   11768:	60fd0a63          	beq	s10,a5,11d7c <_vfprintf_r+0x19e8>
   1176c:	04600793          	li	a5,70
   11770:	72fd0863          	beq	s10,a5,11ea0 <_vfprintf_r+0x1b0c>
   11774:	fbbd859b          	addiw	a1,s11,-69
   11778:	0015b593          	seqz	a1,a1
   1177c:	228405d3          	fmv.d	fa1,fs0
   11780:	00b405bb          	addw	a1,s0,a1
   11784:	09c10793          	addi	a5,sp,156
   11788:	00058693          	mv	a3,a1
   1178c:	0a810813          	addi	a6,sp,168
   11790:	09810713          	addi	a4,sp,152
   11794:	00200613          	li	a2,2
   11798:	000b8513          	mv	a0,s7
   1179c:	01113823          	sd	a7,16(sp)
   117a0:	00b13423          	sd	a1,8(sp)
   117a4:	745000ef          	jal	126e8 <_dtoa_r>
   117a8:	06700793          	li	a5,103
   117ac:	00050913          	mv	s2,a0
   117b0:	00813583          	ld	a1,8(sp)
   117b4:	01013883          	ld	a7,16(sp)
   117b8:	46fd0863          	beq	s10,a5,11c28 <_vfprintf_r+0x1894>
   117bc:	04700793          	li	a5,71
   117c0:	00b50733          	add	a4,a0,a1
   117c4:	48fd0a63          	beq	s10,a5,11c58 <_vfprintf_r+0x18c4>
   117c8:	f20007d3          	fmv.d.x	fa5,zero
   117cc:	00070793          	mv	a5,a4
   117d0:	a2f426d3          	feq.d	a3,fs0,fa5
   117d4:	02069263          	bnez	a3,117f8 <_vfprintf_r+0x1464>
   117d8:	0a813783          	ld	a5,168(sp)
   117dc:	00e7fe63          	bleu	a4,a5,117f8 <_vfprintf_r+0x1464>
   117e0:	03000613          	li	a2,48
   117e4:	00178693          	addi	a3,a5,1
   117e8:	0ad13423          	sd	a3,168(sp)
   117ec:	00c78023          	sb	a2,0(a5)
   117f0:	0a813783          	ld	a5,168(sp)
   117f4:	fee7e8e3          	bltu	a5,a4,117e4 <_vfprintf_r+0x1450>
   117f8:	412787b3          	sub	a5,a5,s2
   117fc:	06f12823          	sw	a5,112(sp)
   11800:	04700793          	li	a5,71
   11804:	46fd8663          	beq	s11,a5,11c70 <_vfprintf_r+0x18dc>
   11808:	06500793          	li	a5,101
   1180c:	7ba7dc63          	ble	s10,a5,11fc4 <_vfprintf_r+0x1c30>
   11810:	06600793          	li	a5,102
   11814:	60fd0263          	beq	s10,a5,11e18 <_vfprintf_r+0x1a84>
   11818:	09812783          	lw	a5,152(sp)
   1181c:	04f12623          	sw	a5,76(sp)
   11820:	04c12703          	lw	a4,76(sp)
   11824:	07012683          	lw	a3,112(sp)
   11828:	00070793          	mv	a5,a4
   1182c:	5ad74663          	blt	a4,a3,11dd8 <_vfprintf_r+0x1a44>
   11830:	001c7c13          	andi	s8,s8,1
   11834:	5c0c1463          	bnez	s8,11dfc <_vfprintf_r+0x1a68>
   11838:	76074863          	bltz	a4,11fa8 <_vfprintf_r+0x1c14>
   1183c:	04c12703          	lw	a4,76(sp)
   11840:	06700d13          	li	s10,103
   11844:	02e12023          	sw	a4,32(sp)
   11848:	440c9063          	bnez	s9,11c88 <_vfprintf_r+0x18f4>
   1184c:	08f14603          	lbu	a2,143(sp)
   11850:	00f12423          	sw	a5,8(sp)
   11854:	00012c03          	lw	s8,0(sp)
   11858:	00000413          	li	s0,0
   1185c:	f4dfe06f          	j	107a8 <_vfprintf_r+0x414>
   11860:	00076783          	lwu	a5,0(a4)
   11864:	00870713          	addi	a4,a4,8
   11868:	02e13423          	sd	a4,40(sp)
   1186c:	974ff06f          	j	109e0 <_vfprintf_r+0x64c>
   11870:	02813703          	ld	a4,40(sp)
   11874:	040c7c13          	andi	s8,s8,64
   11878:	00073783          	ld	a5,0(a4)
   1187c:	00870713          	addi	a4,a4,8
   11880:	02e13423          	sd	a4,40(sp)
   11884:	180c0263          	beqz	s8,11a08 <_vfprintf_r+0x1674>
   11888:	01c15703          	lhu	a4,28(sp)
   1188c:	00e79023          	sh	a4,0(a5)
   11890:	c25fe06f          	j	104b4 <_vfprintf_r+0x120>
   11894:	00072783          	lw	a5,0(a4)
   11898:	00870713          	addi	a4,a4,8
   1189c:	02e13423          	sd	a4,40(sp)
   118a0:	d24ff06f          	j	10dc4 <_vfprintf_r+0xa30>
   118a4:	080107a3          	sb	zero,143(sp)
   118a8:	ec044463          	bltz	s0,10f70 <_vfprintf_r+0xbdc>
   118ac:	f7fc7c13          	andi	s8,s8,-129
   118b0:	d41fe06f          	j	105f0 <_vfprintf_r+0x25c>
   118b4:	0b812703          	lw	a4,184(sp)
   118b8:	00913823          	sd	s1,16(sp)
   118bc:	b74ff06f          	j	10c30 <_vfprintf_r+0x89c>
   118c0:	0b010613          	addi	a2,sp,176
   118c4:	000a0593          	mv	a1,s4
   118c8:	000b8513          	mv	a0,s7
   118cc:	4ed040ef          	jal	165b8 <__sprint_r>
   118d0:	00050463          	beqz	a0,118d8 <_vfprintf_r+0x1544>
   118d4:	dd1fe06f          	j	106a4 <_vfprintf_r+0x310>
   118d8:	0c013783          	ld	a5,192(sp)
   118dc:	000b0893          	mv	a7,s6
   118e0:	ff0ff06f          	j	110d0 <_vfprintf_r+0xd3c>
   118e4:	0b812703          	lw	a4,184(sp)
   118e8:	000196b7          	lui	a3,0x19
   118ec:	27868693          	addi	a3,a3,632 # 19278 <zeroes.4137+0x70>
   118f0:	00d8b023          	sd	a3,0(a7)
   118f4:	00178793          	addi	a5,a5,1
   118f8:	00100693          	li	a3,1
   118fc:	0017071b          	addiw	a4,a4,1
   11900:	00d8b423          	sd	a3,8(a7)
   11904:	0cf13023          	sd	a5,192(sp)
   11908:	0ae12c23          	sw	a4,184(sp)
   1190c:	00700693          	li	a3,7
   11910:	01088893          	addi	a7,a7,16
   11914:	16e6ca63          	blt	a3,a4,11a88 <_vfprintf_r+0x16f4>
   11918:	12040663          	beqz	s0,11a44 <_vfprintf_r+0x16b0>
   1191c:	06013703          	ld	a4,96(sp)
   11920:	06813683          	ld	a3,104(sp)
   11924:	01088893          	addi	a7,a7,16
   11928:	fee8b823          	sd	a4,-16(a7)
   1192c:	0b812703          	lw	a4,184(sp)
   11930:	00f687b3          	add	a5,a3,a5
   11934:	fed8bc23          	sd	a3,-8(a7)
   11938:	0017071b          	addiw	a4,a4,1
   1193c:	0cf13023          	sd	a5,192(sp)
   11940:	0ae12c23          	sw	a4,184(sp)
   11944:	00700693          	li	a3,7
   11948:	3ee6ca63          	blt	a3,a4,11d3c <_vfprintf_r+0x19a8>
   1194c:	4080043b          	negw	s0,s0
   11950:	20805263          	blez	s0,11b54 <_vfprintf_r+0x17c0>
   11954:	01000693          	li	a3,16
   11958:	1a86d663          	ble	s0,a3,11b04 <_vfprintf_r+0x1770>
   1195c:	01000d13          	li	s10,16
   11960:	00913823          	sd	s1,16(sp)
   11964:	00700813          	li	a6,7
   11968:	000d0693          	mv	a3,s10
   1196c:	00c0006f          	j	11978 <_vfprintf_r+0x15e4>
   11970:	ff04041b          	addiw	s0,s0,-16
   11974:	1886da63          	ble	s0,a3,11b08 <_vfprintf_r+0x1774>
   11978:	01078793          	addi	a5,a5,16
   1197c:	0017071b          	addiw	a4,a4,1
   11980:	0098b023          	sd	s1,0(a7)
   11984:	01a8b423          	sd	s10,8(a7)
   11988:	0cf13023          	sd	a5,192(sp)
   1198c:	0ae12c23          	sw	a4,184(sp)
   11990:	01088893          	addi	a7,a7,16
   11994:	fce85ee3          	ble	a4,a6,11970 <_vfprintf_r+0x15dc>
   11998:	0b010613          	addi	a2,sp,176
   1199c:	000a0593          	mv	a1,s4
   119a0:	000b8513          	mv	a0,s7
   119a4:	02d13023          	sd	a3,32(sp)
   119a8:	01013023          	sd	a6,0(sp)
   119ac:	40d040ef          	jal	165b8 <__sprint_r>
   119b0:	00050463          	beqz	a0,119b8 <_vfprintf_r+0x1624>
   119b4:	cf1fe06f          	j	106a4 <_vfprintf_r+0x310>
   119b8:	0c013783          	ld	a5,192(sp)
   119bc:	0b812703          	lw	a4,184(sp)
   119c0:	000b0893          	mv	a7,s6
   119c4:	02013683          	ld	a3,32(sp)
   119c8:	00013803          	ld	a6,0(sp)
   119cc:	fa5ff06f          	j	11970 <_vfprintf_r+0x15dc>
   119d0:	fff00513          	li	a0,-1
   119d4:	ce5fe06f          	j	106b8 <_vfprintf_r+0x324>
   119d8:	04700793          	li	a5,71
   119dc:	27a7c863          	blt	a5,s10,11c4c <_vfprintf_r+0x18b8>
   119e0:	00019937          	lui	s2,0x19
   119e4:	23090913          	addi	s2,s2,560 # 19230 <zeroes.4137+0x28>
   119e8:	00300793          	li	a5,3
   119ec:	00f12423          	sw	a5,8(sp)
   119f0:	f7fc7c13          	andi	s8,s8,-129
   119f4:	08f14603          	lbu	a2,143(sp)
   119f8:	02f12023          	sw	a5,32(sp)
   119fc:	00000413          	li	s0,0
   11a00:	04012623          	sw	zero,76(sp)
   11a04:	da5fe06f          	j	107a8 <_vfprintf_r+0x414>
   11a08:	01c12703          	lw	a4,28(sp)
   11a0c:	00e7a023          	sw	a4,0(a5)
   11a10:	aa5fe06f          	j	104b4 <_vfprintf_r+0x120>
   11a14:	00019937          	lui	s2,0x19
   11a18:	22090913          	addi	s2,s2,544 # 19220 <zeroes.4137+0x18>
   11a1c:	c34ff06f          	j	10e50 <_vfprintf_r+0xabc>
   11a20:	0b010613          	addi	a2,sp,176
   11a24:	000a0593          	mv	a1,s4
   11a28:	000b8513          	mv	a0,s7
   11a2c:	38d040ef          	jal	165b8 <__sprint_r>
   11a30:	00050463          	beqz	a0,11a38 <_vfprintf_r+0x16a4>
   11a34:	c71fe06f          	j	106a4 <_vfprintf_r+0x310>
   11a38:	0c013783          	ld	a5,192(sp)
   11a3c:	000b0893          	mv	a7,s6
   11a40:	931ff06f          	j	11370 <_vfprintf_r+0xfdc>
   11a44:	07012703          	lw	a4,112(sp)
   11a48:	ec071ae3          	bnez	a4,1191c <_vfprintf_r+0x1588>
   11a4c:	001c7713          	andi	a4,s8,1
   11a50:	a4070c63          	beqz	a4,10ca8 <_vfprintf_r+0x914>
   11a54:	ec9ff06f          	j	1191c <_vfprintf_r+0x1588>
   11a58:	0b010613          	addi	a2,sp,176
   11a5c:	000a0593          	mv	a1,s4
   11a60:	000b8513          	mv	a0,s7
   11a64:	355040ef          	jal	165b8 <__sprint_r>
   11a68:	00050463          	beqz	a0,11a70 <_vfprintf_r+0x16dc>
   11a6c:	c39fe06f          	j	106a4 <_vfprintf_r+0x310>
   11a70:	09812703          	lw	a4,152(sp)
   11a74:	07012683          	lw	a3,112(sp)
   11a78:	0c013783          	ld	a5,192(sp)
   11a7c:	000b0893          	mv	a7,s6
   11a80:	40e6873b          	subw	a4,a3,a4
   11a84:	b15ff06f          	j	11598 <_vfprintf_r+0x1204>
   11a88:	0b010613          	addi	a2,sp,176
   11a8c:	000a0593          	mv	a1,s4
   11a90:	000b8513          	mv	a0,s7
   11a94:	325040ef          	jal	165b8 <__sprint_r>
   11a98:	00050463          	beqz	a0,11aa0 <_vfprintf_r+0x170c>
   11a9c:	c09fe06f          	j	106a4 <_vfprintf_r+0x310>
   11aa0:	09812403          	lw	s0,152(sp)
   11aa4:	0c013783          	ld	a5,192(sp)
   11aa8:	000b0893          	mv	a7,s6
   11aac:	e60418e3          	bnez	s0,1191c <_vfprintf_r+0x1588>
   11ab0:	f95ff06f          	j	11a44 <_vfprintf_r+0x16b0>
   11ab4:	001c7793          	andi	a5,s8,1
   11ab8:	00078e63          	beqz	a5,11ad4 <_vfprintf_r+0x1740>
   11abc:	03000793          	li	a5,48
   11ac0:	0ef107a3          	sb	a5,239(sp)
   11ac4:	07813783          	ld	a5,120(sp)
   11ac8:	0ef10913          	addi	s2,sp,239
   11acc:	02f12023          	sw	a5,32(sp)
   11ad0:	cc1fe06f          	j	10790 <_vfprintf_r+0x3fc>
   11ad4:	02012023          	sw	zero,32(sp)
   11ad8:	000b0913          	mv	s2,s6
   11adc:	cb5fe06f          	j	10790 <_vfprintf_r+0x3fc>
   11ae0:	0b010613          	addi	a2,sp,176
   11ae4:	000a0593          	mv	a1,s4
   11ae8:	000b8513          	mv	a0,s7
   11aec:	2cd040ef          	jal	165b8 <__sprint_r>
   11af0:	00050463          	beqz	a0,11af8 <_vfprintf_r+0x1764>
   11af4:	bb1fe06f          	j	106a4 <_vfprintf_r+0x310>
   11af8:	0c013783          	ld	a5,192(sp)
   11afc:	000b0893          	mv	a7,s6
   11b00:	e14ff06f          	j	11114 <_vfprintf_r+0xd80>
   11b04:	00913823          	sd	s1,16(sp)
   11b08:	01013683          	ld	a3,16(sp)
   11b0c:	008787b3          	add	a5,a5,s0
   11b10:	0017071b          	addiw	a4,a4,1
   11b14:	00d8b023          	sd	a3,0(a7)
   11b18:	0088b423          	sd	s0,8(a7)
   11b1c:	0cf13023          	sd	a5,192(sp)
   11b20:	0ae12c23          	sw	a4,184(sp)
   11b24:	00700693          	li	a3,7
   11b28:	01088893          	addi	a7,a7,16
   11b2c:	02e6d463          	ble	a4,a3,11b54 <_vfprintf_r+0x17c0>
   11b30:	0b010613          	addi	a2,sp,176
   11b34:	000a0593          	mv	a1,s4
   11b38:	000b8513          	mv	a0,s7
   11b3c:	27d040ef          	jal	165b8 <__sprint_r>
   11b40:	00050463          	beqz	a0,11b48 <_vfprintf_r+0x17b4>
   11b44:	b61fe06f          	j	106a4 <_vfprintf_r+0x310>
   11b48:	0c013783          	ld	a5,192(sp)
   11b4c:	0b812703          	lw	a4,184(sp)
   11b50:	000b0893          	mv	a7,s6
   11b54:	07012683          	lw	a3,112(sp)
   11b58:	0017071b          	addiw	a4,a4,1
   11b5c:	0128b023          	sd	s2,0(a7)
   11b60:	00f687b3          	add	a5,a3,a5
   11b64:	cecff06f          	j	11050 <_vfprintf_r+0xcbc>
   11b68:	00090513          	mv	a0,s2
   11b6c:	091040ef          	jal	163fc <strlen>
   11b70:	0005079b          	sext.w	a5,a0
   11b74:	02f12023          	sw	a5,32(sp)
   11b78:	00078d93          	mv	s11,a5
   11b7c:	00013883          	ld	a7,0(sp)
   11b80:	0007c463          	bltz	a5,11b88 <_vfprintf_r+0x17f4>
   11b84:	cf5fe06f          	j	10878 <_vfprintf_r+0x4e4>
   11b88:	00000d93          	li	s11,0
   11b8c:	cedfe06f          	j	10878 <_vfprintf_r+0x4e4>
   11b90:	0c013783          	ld	a5,192(sp)
   11b94:	0b812703          	lw	a4,184(sp)
   11b98:	05513823          	sd	s5,80(sp)
   11b9c:	f6dfe06f          	j	10b08 <_vfprintf_r+0x774>
   11ba0:	00000413          	li	s0,0
   11ba4:	fd0ff06f          	j	11374 <_vfprintf_r+0xfe0>
   11ba8:	00000413          	li	s0,0
   11bac:	9f1ff06f          	j	1159c <_vfprintf_r+0x1208>
   11bb0:	02d00613          	li	a2,45
   11bb4:	00100713          	li	a4,1
   11bb8:	00100693          	li	a3,1
   11bbc:	00d71463          	bne	a4,a3,11bc4 <_vfprintf_r+0x1830>
   11bc0:	d05fe06f          	j	108c4 <_vfprintf_r+0x530>
   11bc4:	00200693          	li	a3,2
   11bc8:	00d71463          	bne	a4,a3,11bd0 <_vfprintf_r+0x183c>
   11bcc:	a31fe06f          	j	105fc <_vfprintf_r+0x268>
   11bd0:	b81fe06f          	j	10750 <_vfprintf_r+0x3bc>
   11bd4:	00600713          	li	a4,6
   11bd8:	00877463          	bleu	s0,a4,11be0 <_vfprintf_r+0x184c>
   11bdc:	00070413          	mv	s0,a4
   11be0:	02812023          	sw	s0,32(sp)
   11be4:	00040d93          	mv	s11,s0
   11be8:	32044a63          	bltz	s0,11f1c <_vfprintf_r+0x1b88>
   11bec:	00019937          	lui	s2,0x19
   11bf0:	01b12423          	sw	s11,8(sp)
   11bf4:	03913423          	sd	s9,40(sp)
   11bf8:	00000613          	li	a2,0
   11bfc:	00000413          	li	s0,0
   11c00:	04012623          	sw	zero,76(sp)
   11c04:	27090913          	addi	s2,s2,624 # 19270 <zeroes.4137+0x68>
   11c08:	e45fe06f          	j	10a4c <_vfprintf_r+0x6b8>
   11c0c:	0b812703          	lw	a4,184(sp)
   11c10:	05513823          	sd	s5,80(sp)
   11c14:	91cff06f          	j	10d30 <_vfprintf_r+0x99c>
   11c18:	00070c13          	mv	s8,a4
   11c1c:	00000613          	li	a2,0
   11c20:	00200713          	li	a4,2
   11c24:	f95ff06f          	j	11bb8 <_vfprintf_r+0x1824>
   11c28:	001c7793          	andi	a5,s8,1
   11c2c:	00b50733          	add	a4,a0,a1
   11c30:	b8079ce3          	bnez	a5,117c8 <_vfprintf_r+0x1434>
   11c34:	0a813783          	ld	a5,168(sp)
   11c38:	bc1ff06f          	j	117f8 <_vfprintf_r+0x1464>
   11c3c:	02d00793          	li	a5,45
   11c40:	08f107a3          	sb	a5,143(sp)
   11c44:	02d00613          	li	a2,45
   11c48:	9f8ff06f          	j	10e40 <_vfprintf_r+0xaac>
   11c4c:	00019937          	lui	s2,0x19
   11c50:	23890913          	addi	s2,s2,568 # 19238 <zeroes.4137+0x30>
   11c54:	d95ff06f          	j	119e8 <_vfprintf_r+0x1654>
   11c58:	001c7793          	andi	a5,s8,1
   11c5c:	26079a63          	bnez	a5,11ed0 <_vfprintf_r+0x1b3c>
   11c60:	0a813783          	ld	a5,168(sp)
   11c64:	412787b3          	sub	a5,a5,s2
   11c68:	06f12823          	sw	a5,112(sp)
   11c6c:	35ad9c63          	bne	s11,s10,11fc4 <_vfprintf_r+0x1c30>
   11c70:	09812783          	lw	a5,152(sp)
   11c74:	ffd00713          	li	a4,-3
   11c78:	02e7cc63          	blt	a5,a4,11cb0 <_vfprintf_r+0x191c>
   11c7c:	02f44a63          	blt	s0,a5,11cb0 <_vfprintf_r+0x191c>
   11c80:	04f12623          	sw	a5,76(sp)
   11c84:	b9dff06f          	j	11820 <_vfprintf_r+0x148c>
   11c88:	02d00713          	li	a4,45
   11c8c:	08e107a3          	sb	a4,143(sp)
   11c90:	00f12423          	sw	a5,8(sp)
   11c94:	00012c03          	lw	s8,0(sp)
   11c98:	02d00613          	li	a2,45
   11c9c:	00000413          	li	s0,0
   11ca0:	b0dfe06f          	j	107ac <_vfprintf_r+0x418>
   11ca4:	0b812703          	lw	a4,184(sp)
   11ca8:	00913823          	sd	s1,16(sp)
   11cac:	d78ff06f          	j	11224 <_vfprintf_r+0xe90>
   11cb0:	ffed0d1b          	addiw	s10,s10,-2
   11cb4:	fff7879b          	addiw	a5,a5,-1
   11cb8:	08f12c23          	sw	a5,152(sp)
   11cbc:	0ba10023          	sb	s10,160(sp)
   11cc0:	2c07c863          	bltz	a5,11f90 <_vfprintf_r+0x1bfc>
   11cc4:	02b00713          	li	a4,43
   11cc8:	0ae100a3          	sb	a4,161(sp)
   11ccc:	00900613          	li	a2,9
   11cd0:	16f64463          	blt	a2,a5,11e38 <_vfprintf_r+0x1aa4>
   11cd4:	0307879b          	addiw	a5,a5,48
   11cd8:	03000713          	li	a4,48
   11cdc:	0af101a3          	sb	a5,163(sp)
   11ce0:	0ae10123          	sb	a4,162(sp)
   11ce4:	0a410793          	addi	a5,sp,164
   11ce8:	0a010713          	addi	a4,sp,160
   11cec:	40e787bb          	subw	a5,a5,a4
   11cf0:	07012703          	lw	a4,112(sp)
   11cf4:	06f12a23          	sw	a5,116(sp)
   11cf8:	00e787bb          	addw	a5,a5,a4
   11cfc:	02f12023          	sw	a5,32(sp)
   11d00:	00100793          	li	a5,1
   11d04:	26e7d263          	ble	a4,a5,11f68 <_vfprintf_r+0x1bd4>
   11d08:	02012783          	lw	a5,32(sp)
   11d0c:	0017879b          	addiw	a5,a5,1
   11d10:	02f12023          	sw	a5,32(sp)
   11d14:	2607c463          	bltz	a5,11f7c <_vfprintf_r+0x1be8>
   11d18:	04012623          	sw	zero,76(sp)
   11d1c:	b2dff06f          	j	11848 <_vfprintf_r+0x14b4>
   11d20:	00812423          	sw	s0,8(sp)
   11d24:	02812023          	sw	s0,32(sp)
   11d28:	08f14603          	lbu	a2,143(sp)
   11d2c:	03913423          	sd	s9,40(sp)
   11d30:	00000413          	li	s0,0
   11d34:	04012623          	sw	zero,76(sp)
   11d38:	a71fe06f          	j	107a8 <_vfprintf_r+0x414>
   11d3c:	0b010613          	addi	a2,sp,176
   11d40:	000a0593          	mv	a1,s4
   11d44:	000b8513          	mv	a0,s7
   11d48:	071040ef          	jal	165b8 <__sprint_r>
   11d4c:	00050463          	beqz	a0,11d54 <_vfprintf_r+0x19c0>
   11d50:	955fe06f          	j	106a4 <_vfprintf_r+0x310>
   11d54:	09812403          	lw	s0,152(sp)
   11d58:	0c013783          	ld	a5,192(sp)
   11d5c:	0b812703          	lw	a4,184(sp)
   11d60:	000b0893          	mv	a7,s6
   11d64:	be9ff06f          	j	1194c <_vfprintf_r+0x15b8>
   11d68:	9e0410e3          	bnez	s0,11748 <_vfprintf_r+0x13b4>
   11d6c:	00090413          	mv	s0,s2
   11d70:	9d9ff06f          	j	11748 <_vfprintf_r+0x13b4>
   11d74:	00600413          	li	s0,6
   11d78:	9d1ff06f          	j	11748 <_vfprintf_r+0x13b4>
   11d7c:	228405d3          	fmv.d	fa1,fs0
   11d80:	09810713          	addi	a4,sp,152
   11d84:	0a810813          	addi	a6,sp,168
   11d88:	09c10793          	addi	a5,sp,156
   11d8c:	00040693          	mv	a3,s0
   11d90:	00300613          	li	a2,3
   11d94:	000b8513          	mv	a0,s7
   11d98:	01113423          	sd	a7,8(sp)
   11d9c:	14d000ef          	jal	126e8 <_dtoa_r>
   11da0:	00813883          	ld	a7,8(sp)
   11da4:	00040713          	mv	a4,s0
   11da8:	00050913          	mv	s2,a0
   11dac:	00e50733          	add	a4,a0,a4
   11db0:	00040593          	mv	a1,s0
   11db4:	00094683          	lbu	a3,0(s2)
   11db8:	03000793          	li	a5,48
   11dbc:	14f68063          	beq	a3,a5,11efc <_vfprintf_r+0x1b68>
   11dc0:	09812583          	lw	a1,152(sp)
   11dc4:	00b70733          	add	a4,a4,a1
   11dc8:	a01ff06f          	j	117c8 <_vfprintf_r+0x1434>
   11dcc:	22841453          	fneg.d	fs0,fs0
   11dd0:	02d00c93          	li	s9,45
   11dd4:	991ff06f          	j	11764 <_vfprintf_r+0x13d0>
   11dd8:	04c12703          	lw	a4,76(sp)
   11ddc:	00100793          	li	a5,1
   11de0:	1ae05263          	blez	a4,11f84 <_vfprintf_r+0x1bf0>
   11de4:	07012703          	lw	a4,112(sp)
   11de8:	00e787bb          	addw	a5,a5,a4
   11dec:	02f12023          	sw	a5,32(sp)
   11df0:	0007ce63          	bltz	a5,11e0c <_vfprintf_r+0x1a78>
   11df4:	06700d13          	li	s10,103
   11df8:	a51ff06f          	j	11848 <_vfprintf_r+0x14b4>
   11dfc:	04c12783          	lw	a5,76(sp)
   11e00:	0017879b          	addiw	a5,a5,1
   11e04:	02f12023          	sw	a5,32(sp)
   11e08:	fe07d6e3          	bgez	a5,11df4 <_vfprintf_r+0x1a60>
   11e0c:	00000793          	li	a5,0
   11e10:	06700d13          	li	s10,103
   11e14:	a35ff06f          	j	11848 <_vfprintf_r+0x14b4>
   11e18:	09812783          	lw	a5,152(sp)
   11e1c:	04f12623          	sw	a5,76(sp)
   11e20:	12f05263          	blez	a5,11f44 <_vfprintf_r+0x1bb0>
   11e24:	0a041e63          	bnez	s0,11ee0 <_vfprintf_r+0x1b4c>
   11e28:	001c7c13          	andi	s8,s8,1
   11e2c:	0a0c1a63          	bnez	s8,11ee0 <_vfprintf_r+0x1b4c>
   11e30:	02f12023          	sw	a5,32(sp)
   11e34:	a15ff06f          	j	11848 <_vfprintf_r+0x14b4>
   11e38:	0af10593          	addi	a1,sp,175
   11e3c:	00058713          	mv	a4,a1
   11e40:	00a00513          	li	a0,10
   11e44:	02a7e6bb          	remw	a3,a5,a0
   11e48:	fff70713          	addi	a4,a4,-1
   11e4c:	02a7c7bb          	divw	a5,a5,a0
   11e50:	0306869b          	addiw	a3,a3,48
   11e54:	00d70023          	sb	a3,0(a4)
   11e58:	fef646e3          	blt	a2,a5,11e44 <_vfprintf_r+0x1ab0>
   11e5c:	0307879b          	addiw	a5,a5,48
   11e60:	0ff7f793          	andi	a5,a5,255
   11e64:	fff70693          	addi	a3,a4,-1
   11e68:	fef70fa3          	sb	a5,-1(a4)
   11e6c:	16b6f863          	bleu	a1,a3,11fdc <_vfprintf_r+0x1c48>
   11e70:	0a210613          	addi	a2,sp,162
   11e74:	0080006f          	j	11e7c <_vfprintf_r+0x1ae8>
   11e78:	0006c783          	lbu	a5,0(a3)
   11e7c:	00160613          	addi	a2,a2,1
   11e80:	00168693          	addi	a3,a3,1
   11e84:	fef60fa3          	sb	a5,-1(a2)
   11e88:	feb698e3          	bne	a3,a1,11e78 <_vfprintf_r+0x1ae4>
   11e8c:	0b010793          	addi	a5,sp,176
   11e90:	40e787b3          	sub	a5,a5,a4
   11e94:	0a210713          	addi	a4,sp,162
   11e98:	00f707b3          	add	a5,a4,a5
   11e9c:	e4dff06f          	j	11ce8 <_vfprintf_r+0x1954>
   11ea0:	228405d3          	fmv.d	fa1,fs0
   11ea4:	0a810813          	addi	a6,sp,168
   11ea8:	09c10793          	addi	a5,sp,156
   11eac:	09810713          	addi	a4,sp,152
   11eb0:	00040693          	mv	a3,s0
   11eb4:	00300613          	li	a2,3
   11eb8:	000b8513          	mv	a0,s7
   11ebc:	01113423          	sd	a7,8(sp)
   11ec0:	029000ef          	jal	126e8 <_dtoa_r>
   11ec4:	00813883          	ld	a7,8(sp)
   11ec8:	00050913          	mv	s2,a0
   11ecc:	00040593          	mv	a1,s0
   11ed0:	04600793          	li	a5,70
   11ed4:	00b90733          	add	a4,s2,a1
   11ed8:	ecfd0ee3          	beq	s10,a5,11db4 <_vfprintf_r+0x1a20>
   11edc:	8edff06f          	j	117c8 <_vfprintf_r+0x1434>
   11ee0:	04c12783          	lw	a5,76(sp)
   11ee4:	0014041b          	addiw	s0,s0,1
   11ee8:	008787bb          	addw	a5,a5,s0
   11eec:	02f12023          	sw	a5,32(sp)
   11ef0:	9407dce3          	bgez	a5,11848 <_vfprintf_r+0x14b4>
   11ef4:	00000793          	li	a5,0
   11ef8:	951ff06f          	j	11848 <_vfprintf_r+0x14b4>
   11efc:	f20007d3          	fmv.d.x	fa5,zero
   11f00:	a2f427d3          	feq.d	a5,fs0,fa5
   11f04:	ea079ee3          	bnez	a5,11dc0 <_vfprintf_r+0x1a2c>
   11f08:	00100793          	li	a5,1
   11f0c:	40b785bb          	subw	a1,a5,a1
   11f10:	08b12c23          	sw	a1,152(sp)
   11f14:	00b70733          	add	a4,a4,a1
   11f18:	8b1ff06f          	j	117c8 <_vfprintf_r+0x1434>
   11f1c:	00000d93          	li	s11,0
   11f20:	ccdff06f          	j	11bec <_vfprintf_r+0x1858>
   11f24:	02813783          	ld	a5,40(sp)
   11f28:	0007a403          	lw	s0,0(a5)
   11f2c:	00878793          	addi	a5,a5,8
   11f30:	02f13423          	sd	a5,40(sp)
   11f34:	00044463          	bltz	s0,11f3c <_vfprintf_r+0x1ba8>
   11f38:	e18fe06f          	j	10550 <_vfprintf_r+0x1bc>
   11f3c:	fff00413          	li	s0,-1
   11f40:	e10fe06f          	j	10550 <_vfprintf_r+0x1bc>
   11f44:	00041a63          	bnez	s0,11f58 <_vfprintf_r+0x1bc4>
   11f48:	00100793          	li	a5,1
   11f4c:	00fc7c33          	and	s8,s8,a5
   11f50:	02f12023          	sw	a5,32(sp)
   11f54:	8e0c0ae3          	beqz	s8,11848 <_vfprintf_r+0x14b4>
   11f58:	0024079b          	addiw	a5,s0,2
   11f5c:	02f12023          	sw	a5,32(sp)
   11f60:	8e07d4e3          	bgez	a5,11848 <_vfprintf_r+0x14b4>
   11f64:	f91ff06f          	j	11ef4 <_vfprintf_r+0x1b60>
   11f68:	00fc7c33          	and	s8,s8,a5
   11f6c:	d80c1ee3          	bnez	s8,11d08 <_vfprintf_r+0x1974>
   11f70:	02012703          	lw	a4,32(sp)
   11f74:	00070793          	mv	a5,a4
   11f78:	da0750e3          	bgez	a4,11d18 <_vfprintf_r+0x1984>
   11f7c:	00000793          	li	a5,0
   11f80:	d99ff06f          	j	11d18 <_vfprintf_r+0x1984>
   11f84:	00200793          	li	a5,2
   11f88:	40e787bb          	subw	a5,a5,a4
   11f8c:	e59ff06f          	j	11de4 <_vfprintf_r+0x1a50>
   11f90:	02d00713          	li	a4,45
   11f94:	40f007bb          	negw	a5,a5
   11f98:	0ae100a3          	sb	a4,161(sp)
   11f9c:	d31ff06f          	j	11ccc <_vfprintf_r+0x1938>
   11fa0:	08b107a3          	sb	a1,143(sp)
   11fa4:	ed9fe06f          	j	10e7c <_vfprintf_r+0xae8>
   11fa8:	00000793          	li	a5,0
   11fac:	891ff06f          	j	1183c <_vfprintf_r+0x14a8>
   11fb0:	08b107a3          	sb	a1,143(sp)
   11fb4:	010c6c13          	ori	s8,s8,16
   11fb8:	f2dfe06f          	j	10ee4 <_vfprintf_r+0xb50>
   11fbc:	08b107a3          	sb	a1,143(sp)
   11fc0:	ef5fe06f          	j	10eb4 <_vfprintf_r+0xb20>
   11fc4:	09812783          	lw	a5,152(sp)
   11fc8:	cedff06f          	j	11cb4 <_vfprintf_r+0x1920>
   11fcc:	08b107a3          	sb	a1,143(sp)
   11fd0:	e2dfe06f          	j	10dfc <_vfprintf_r+0xa68>
   11fd4:	08b107a3          	sb	a1,143(sp)
   11fd8:	dd5fe06f          	j	10dac <_vfprintf_r+0xa18>
   11fdc:	0a210793          	addi	a5,sp,162
   11fe0:	d09ff06f          	j	11ce8 <_vfprintf_r+0x1954>
   11fe4:	08b107a3          	sb	a1,143(sp)
   11fe8:	f41fe06f          	j	10f28 <_vfprintf_r+0xb94>
   11fec:	08b107a3          	sb	a1,143(sp)
   11ff0:	f28fe06f          	j	10718 <_vfprintf_r+0x384>
   11ff4:	08b107a3          	sb	a1,143(sp)
   11ff8:	9c5fe06f          	j	109bc <_vfprintf_r+0x628>
   11ffc:	08b107a3          	sb	a1,143(sp)
   12000:	010c6c13          	ori	s8,s8,16
   12004:	979fe06f          	j	1097c <_vfprintf_r+0x5e8>
   12008:	08b107a3          	sb	a1,143(sp)
   1200c:	010c6c13          	ori	s8,s8,16
   12010:	929fe06f          	j	10938 <_vfprintf_r+0x5a4>
   12014:	08b107a3          	sb	a1,143(sp)
   12018:	881fe06f          	j	10898 <_vfprintf_r+0x504>

000000000001201c <vfprintf>:
   1201c:	00060693          	mv	a3,a2
   12020:	00058613          	mv	a2,a1
   12024:	00050593          	mv	a1,a0
   12028:	8101b503          	ld	a0,-2032(gp) # 1b300 <_impure_ptr>
   1202c:	b68fe06f          	j	10394 <_vfprintf_r>

0000000000012030 <__sbprintf>:
   12030:	0105d783          	lhu	a5,16(a1)
   12034:	0ac5ae03          	lw	t3,172(a1)
   12038:	0125d303          	lhu	t1,18(a1)
   1203c:	0305b883          	ld	a7,48(a1)
   12040:	0405b803          	ld	a6,64(a1)
   12044:	b3010113          	addi	sp,sp,-1232
   12048:	ffd7f793          	andi	a5,a5,-3
   1204c:	40000713          	li	a4,1024
   12050:	4c813023          	sd	s0,1216(sp)
   12054:	00f11823          	sh	a5,16(sp)
   12058:	00058413          	mv	s0,a1
   1205c:	0b010793          	addi	a5,sp,176
   12060:	00010593          	mv	a1,sp
   12064:	4a913c23          	sd	s1,1208(sp)
   12068:	4b213823          	sd	s2,1200(sp)
   1206c:	4c113423          	sd	ra,1224(sp)
   12070:	00050913          	mv	s2,a0
   12074:	0bc12623          	sw	t3,172(sp)
   12078:	00611923          	sh	t1,18(sp)
   1207c:	03113823          	sd	a7,48(sp)
   12080:	05013023          	sd	a6,64(sp)
   12084:	00f13023          	sd	a5,0(sp)
   12088:	00f13c23          	sd	a5,24(sp)
   1208c:	00e12623          	sw	a4,12(sp)
   12090:	02e12023          	sw	a4,32(sp)
   12094:	02012423          	sw	zero,40(sp)
   12098:	afcfe0ef          	jal	10394 <_vfprintf_r>
   1209c:	00050493          	mv	s1,a0
   120a0:	00054a63          	bltz	a0,120b4 <__sbprintf+0x84>
   120a4:	00010593          	mv	a1,sp
   120a8:	00090513          	mv	a0,s2
   120ac:	1a5010ef          	jal	13a50 <_fflush_r>
   120b0:	02051c63          	bnez	a0,120e8 <__sbprintf+0xb8>
   120b4:	01015783          	lhu	a5,16(sp)
   120b8:	0407f793          	andi	a5,a5,64
   120bc:	00078863          	beqz	a5,120cc <__sbprintf+0x9c>
   120c0:	01045783          	lhu	a5,16(s0)
   120c4:	0407e793          	ori	a5,a5,64
   120c8:	00f41823          	sh	a5,16(s0)
   120cc:	4c813083          	ld	ra,1224(sp)
   120d0:	00048513          	mv	a0,s1
   120d4:	4c013403          	ld	s0,1216(sp)
   120d8:	4b813483          	ld	s1,1208(sp)
   120dc:	4b013903          	ld	s2,1200(sp)
   120e0:	4d010113          	addi	sp,sp,1232
   120e4:	00008067          	ret
   120e8:	fff00493          	li	s1,-1
   120ec:	fc9ff06f          	j	120b4 <__sbprintf+0x84>

00000000000120f0 <__swsetup_r>:
   120f0:	8101b783          	ld	a5,-2032(gp) # 1b300 <_impure_ptr>
   120f4:	fe010113          	addi	sp,sp,-32
   120f8:	00813823          	sd	s0,16(sp)
   120fc:	00913423          	sd	s1,8(sp)
   12100:	00113c23          	sd	ra,24(sp)
   12104:	00050493          	mv	s1,a0
   12108:	00058413          	mv	s0,a1
   1210c:	00078663          	beqz	a5,12118 <__swsetup_r+0x28>
   12110:	0507a703          	lw	a4,80(a5)
   12114:	0e070063          	beqz	a4,121f4 <__swsetup_r+0x104>
   12118:	01041703          	lh	a4,16(s0)
   1211c:	03071793          	slli	a5,a4,0x30
   12120:	0307d793          	srli	a5,a5,0x30
   12124:	0087f693          	andi	a3,a5,8
   12128:	04068263          	beqz	a3,1216c <__swsetup_r+0x7c>
   1212c:	01843683          	ld	a3,24(s0)
   12130:	06068663          	beqz	a3,1219c <__swsetup_r+0xac>
   12134:	0017f713          	andi	a4,a5,1
   12138:	08071463          	bnez	a4,121c0 <__swsetup_r+0xd0>
   1213c:	0027f793          	andi	a5,a5,2
   12140:	00000713          	li	a4,0
   12144:	00079463          	bnez	a5,1214c <__swsetup_r+0x5c>
   12148:	02042703          	lw	a4,32(s0)
   1214c:	00e42623          	sw	a4,12(s0)
   12150:	00000513          	li	a0,0
   12154:	08068263          	beqz	a3,121d8 <__swsetup_r+0xe8>
   12158:	01813083          	ld	ra,24(sp)
   1215c:	01013403          	ld	s0,16(sp)
   12160:	00813483          	ld	s1,8(sp)
   12164:	02010113          	addi	sp,sp,32
   12168:	00008067          	ret
   1216c:	0107f693          	andi	a3,a5,16
   12170:	0c068663          	beqz	a3,1223c <__swsetup_r+0x14c>
   12174:	0047f793          	andi	a5,a5,4
   12178:	08079463          	bnez	a5,12200 <__swsetup_r+0x110>
   1217c:	01843683          	ld	a3,24(s0)
   12180:	00876793          	ori	a5,a4,8
   12184:	0107979b          	slliw	a5,a5,0x10
   12188:	4107d79b          	sraiw	a5,a5,0x10
   1218c:	00f41823          	sh	a5,16(s0)
   12190:	03079793          	slli	a5,a5,0x30
   12194:	0307d793          	srli	a5,a5,0x30
   12198:	f8069ee3          	bnez	a3,12134 <__swsetup_r+0x44>
   1219c:	2807f713          	andi	a4,a5,640
   121a0:	20000613          	li	a2,512
   121a4:	f8c708e3          	beq	a4,a2,12134 <__swsetup_r+0x44>
   121a8:	00040593          	mv	a1,s0
   121ac:	00048513          	mv	a0,s1
   121b0:	2ec020ef          	jal	1449c <__smakebuf_r>
   121b4:	01045783          	lhu	a5,16(s0)
   121b8:	01843683          	ld	a3,24(s0)
   121bc:	f79ff06f          	j	12134 <__swsetup_r+0x44>
   121c0:	02042783          	lw	a5,32(s0)
   121c4:	00042623          	sw	zero,12(s0)
   121c8:	00000513          	li	a0,0
   121cc:	40f007bb          	negw	a5,a5
   121d0:	02f42423          	sw	a5,40(s0)
   121d4:	f80692e3          	bnez	a3,12158 <__swsetup_r+0x68>
   121d8:	01041783          	lh	a5,16(s0)
   121dc:	0807f713          	andi	a4,a5,128
   121e0:	f6070ce3          	beqz	a4,12158 <__swsetup_r+0x68>
   121e4:	0407e793          	ori	a5,a5,64
   121e8:	00f41823          	sh	a5,16(s0)
   121ec:	fff00513          	li	a0,-1
   121f0:	f69ff06f          	j	12158 <__swsetup_r+0x68>
   121f4:	00078513          	mv	a0,a5
   121f8:	405010ef          	jal	13dfc <__sinit>
   121fc:	f1dff06f          	j	12118 <__swsetup_r+0x28>
   12200:	05843583          	ld	a1,88(s0)
   12204:	00058e63          	beqz	a1,12220 <__swsetup_r+0x130>
   12208:	07440793          	addi	a5,s0,116
   1220c:	00f58863          	beq	a1,a5,1221c <__swsetup_r+0x12c>
   12210:	00048513          	mv	a0,s1
   12214:	541010ef          	jal	13f54 <_free_r>
   12218:	01041703          	lh	a4,16(s0)
   1221c:	04043c23          	sd	zero,88(s0)
   12220:	01843683          	ld	a3,24(s0)
   12224:	fdb77713          	andi	a4,a4,-37
   12228:	0107171b          	slliw	a4,a4,0x10
   1222c:	4107571b          	sraiw	a4,a4,0x10
   12230:	00042423          	sw	zero,8(s0)
   12234:	00d43023          	sd	a3,0(s0)
   12238:	f49ff06f          	j	12180 <__swsetup_r+0x90>
   1223c:	00900793          	li	a5,9
   12240:	00f4a023          	sw	a5,0(s1)
   12244:	04076713          	ori	a4,a4,64
   12248:	00e41823          	sh	a4,16(s0)
   1224c:	fff00513          	li	a0,-1
   12250:	f09ff06f          	j	12158 <__swsetup_r+0x68>

0000000000012254 <__register_exitproc>:
   12254:	fd010113          	addi	sp,sp,-48
   12258:	02813023          	sd	s0,32(sp)
   1225c:	8081b403          	ld	s0,-2040(gp) # 1b2f8 <_global_impure_ptr>
   12260:	00913c23          	sd	s1,24(sp)
   12264:	00050493          	mv	s1,a0
   12268:	1f843503          	ld	a0,504(s0)
   1226c:	01213823          	sd	s2,16(sp)
   12270:	01313423          	sd	s3,8(sp)
   12274:	01413023          	sd	s4,0(sp)
   12278:	02113423          	sd	ra,40(sp)
   1227c:	00058913          	mv	s2,a1
   12280:	00060a13          	mv	s4,a2
   12284:	00068993          	mv	s3,a3
   12288:	0c050663          	beqz	a0,12354 <__register_exitproc+0x100>
   1228c:	00852703          	lw	a4,8(a0)
   12290:	01f00793          	li	a5,31
   12294:	0017059b          	addiw	a1,a4,1
   12298:	04e7d063          	ble	a4,a5,122d8 <__register_exitproc+0x84>
   1229c:	000007b7          	lui	a5,0x0
   122a0:	00078793          	mv	a5,a5
   122a4:	0a078e63          	beqz	a5,12360 <__register_exitproc+0x10c>
   122a8:	31800513          	li	a0,792
   122ac:	fffee317          	auipc	t1,0xfffee
   122b0:	d54300e7          	jalr	t1,-684 # 0 <_ftext-0x10000>
   122b4:	0a050663          	beqz	a0,12360 <__register_exitproc+0x10c>
   122b8:	1f843783          	ld	a5,504(s0)
   122bc:	00052423          	sw	zero,8(a0)
   122c0:	00100593          	li	a1,1
   122c4:	00f53023          	sd	a5,0(a0)
   122c8:	1ea43c23          	sd	a0,504(s0)
   122cc:	30052823          	sw	zero,784(a0)
   122d0:	30052a23          	sw	zero,788(a0)
   122d4:	00000713          	li	a4,0
   122d8:	00070793          	mv	a5,a4
   122dc:	02049e63          	bnez	s1,12318 <__register_exitproc+0xc4>
   122e0:	00278793          	addi	a5,a5,2 # 2 <_ftext-0xfffe>
   122e4:	00379793          	slli	a5,a5,0x3
   122e8:	00b52423          	sw	a1,8(a0)
   122ec:	00f50533          	add	a0,a0,a5
   122f0:	01253023          	sd	s2,0(a0)
   122f4:	00000513          	li	a0,0
   122f8:	02813083          	ld	ra,40(sp)
   122fc:	02013403          	ld	s0,32(sp)
   12300:	01813483          	ld	s1,24(sp)
   12304:	01013903          	ld	s2,16(sp)
   12308:	00813983          	ld	s3,8(sp)
   1230c:	00013a03          	ld	s4,0(sp)
   12310:	03010113          	addi	sp,sp,48
   12314:	00008067          	ret
   12318:	00371813          	slli	a6,a4,0x3
   1231c:	01050833          	add	a6,a0,a6
   12320:	11483823          	sd	s4,272(a6)
   12324:	31052883          	lw	a7,784(a0)
   12328:	00100613          	li	a2,1
   1232c:	00e6173b          	sllw	a4,a2,a4
   12330:	00e8e633          	or	a2,a7,a4
   12334:	30c52823          	sw	a2,784(a0)
   12338:	21383823          	sd	s3,528(a6)
   1233c:	00200693          	li	a3,2
   12340:	fad490e3          	bne	s1,a3,122e0 <__register_exitproc+0x8c>
   12344:	31452683          	lw	a3,788(a0)
   12348:	00e6e733          	or	a4,a3,a4
   1234c:	30e52a23          	sw	a4,788(a0)
   12350:	f91ff06f          	j	122e0 <__register_exitproc+0x8c>
   12354:	20040513          	addi	a0,s0,512
   12358:	1ea43c23          	sd	a0,504(s0)
   1235c:	f31ff06f          	j	1228c <__register_exitproc+0x38>
   12360:	fff00513          	li	a0,-1
   12364:	f95ff06f          	j	122f8 <__register_exitproc+0xa4>

0000000000012368 <__call_exitprocs>:
   12368:	fa010113          	addi	sp,sp,-96
   1236c:	03413823          	sd	s4,48(sp)
   12370:	8081ba03          	ld	s4,-2040(gp) # 1b2f8 <_global_impure_ptr>
   12374:	03313c23          	sd	s3,56(sp)
   12378:	000009b7          	lui	s3,0x0
   1237c:	04913423          	sd	s1,72(sp)
   12380:	05213023          	sd	s2,64(sp)
   12384:	03513423          	sd	s5,40(sp)
   12388:	01713c23          	sd	s7,24(sp)
   1238c:	01813823          	sd	s8,16(sp)
   12390:	04113c23          	sd	ra,88(sp)
   12394:	04813823          	sd	s0,80(sp)
   12398:	03613023          	sd	s6,32(sp)
   1239c:	01913423          	sd	s9,8(sp)
   123a0:	01a13023          	sd	s10,0(sp)
   123a4:	00050913          	mv	s2,a0
   123a8:	00058b93          	mv	s7,a1
   123ac:	1f8a0a93          	addi	s5,s4,504
   123b0:	00100493          	li	s1,1
   123b4:	fff00c13          	li	s8,-1
   123b8:	00098993          	mv	s3,s3
   123bc:	1f8a3b03          	ld	s6,504(s4)
   123c0:	0c0b0663          	beqz	s6,1248c <__call_exitprocs+0x124>
   123c4:	000a8d13          	mv	s10,s5
   123c8:	008b2403          	lw	s0,8(s6)
   123cc:	fff4041b          	addiw	s0,s0,-1
   123d0:	02045263          	bgez	s0,123f4 <__call_exitprocs+0x8c>
   123d4:	08c0006f          	j	12460 <__call_exitprocs+0xf8>
   123d8:	02040793          	addi	a5,s0,32
   123dc:	00379793          	slli	a5,a5,0x3
   123e0:	00fb07b3          	add	a5,s6,a5
   123e4:	1107b783          	ld	a5,272(a5)
   123e8:	00fb8a63          	beq	s7,a5,123fc <__call_exitprocs+0x94>
   123ec:	fff4041b          	addiw	s0,s0,-1
   123f0:	07840863          	beq	s0,s8,12460 <__call_exitprocs+0xf8>
   123f4:	00040713          	mv	a4,s0
   123f8:	fe0b90e3          	bnez	s7,123d8 <__call_exitprocs+0x70>
   123fc:	008b2783          	lw	a5,8(s6)
   12400:	00371713          	slli	a4,a4,0x3
   12404:	00eb0733          	add	a4,s6,a4
   12408:	fff7879b          	addiw	a5,a5,-1
   1240c:	01073683          	ld	a3,16(a4)
   12410:	0a878e63          	beq	a5,s0,124cc <__call_exitprocs+0x164>
   12414:	00073823          	sd	zero,16(a4)
   12418:	fc068ae3          	beqz	a3,123ec <__call_exitprocs+0x84>
   1241c:	310b2783          	lw	a5,784(s6)
   12420:	0084963b          	sllw	a2,s1,s0
   12424:	008b2c83          	lw	s9,8(s6)
   12428:	00f677b3          	and	a5,a2,a5
   1242c:	08078c63          	beqz	a5,124c4 <__call_exitprocs+0x15c>
   12430:	314b2783          	lw	a5,788(s6)
   12434:	00f67633          	and	a2,a2,a5
   12438:	08061e63          	bnez	a2,124d4 <__call_exitprocs+0x16c>
   1243c:	11073583          	ld	a1,272(a4)
   12440:	00090513          	mv	a0,s2
   12444:	000680e7          	jalr	a3
   12448:	008b2783          	lw	a5,8(s6)
   1244c:	f79798e3          	bne	a5,s9,123bc <__call_exitprocs+0x54>
   12450:	000d3783          	ld	a5,0(s10)
   12454:	f76794e3          	bne	a5,s6,123bc <__call_exitprocs+0x54>
   12458:	fff4041b          	addiw	s0,s0,-1
   1245c:	f9841ce3          	bne	s0,s8,123f4 <__call_exitprocs+0x8c>
   12460:	02098663          	beqz	s3,1248c <__call_exitprocs+0x124>
   12464:	008b2783          	lw	a5,8(s6)
   12468:	06079c63          	bnez	a5,124e0 <__call_exitprocs+0x178>
   1246c:	000b3783          	ld	a5,0(s6)
   12470:	08078263          	beqz	a5,124f4 <__call_exitprocs+0x18c>
   12474:	000b0513          	mv	a0,s6
   12478:	00fd3023          	sd	a5,0(s10)
   1247c:	fffee317          	auipc	t1,0xfffee
   12480:	b84300e7          	jalr	t1,-1148 # 0 <_ftext-0x10000>
   12484:	000d3b03          	ld	s6,0(s10)
   12488:	f40b10e3          	bnez	s6,123c8 <__call_exitprocs+0x60>
   1248c:	05813083          	ld	ra,88(sp)
   12490:	05013403          	ld	s0,80(sp)
   12494:	04813483          	ld	s1,72(sp)
   12498:	04013903          	ld	s2,64(sp)
   1249c:	03813983          	ld	s3,56(sp)
   124a0:	03013a03          	ld	s4,48(sp)
   124a4:	02813a83          	ld	s5,40(sp)
   124a8:	02013b03          	ld	s6,32(sp)
   124ac:	01813b83          	ld	s7,24(sp)
   124b0:	01013c03          	ld	s8,16(sp)
   124b4:	00813c83          	ld	s9,8(sp)
   124b8:	00013d03          	ld	s10,0(sp)
   124bc:	06010113          	addi	sp,sp,96
   124c0:	00008067          	ret
   124c4:	000680e7          	jalr	a3
   124c8:	f81ff06f          	j	12448 <__call_exitprocs+0xe0>
   124cc:	008b2423          	sw	s0,8(s6)
   124d0:	f49ff06f          	j	12418 <__call_exitprocs+0xb0>
   124d4:	11073503          	ld	a0,272(a4)
   124d8:	000680e7          	jalr	a3
   124dc:	f6dff06f          	j	12448 <__call_exitprocs+0xe0>
   124e0:	000b3783          	ld	a5,0(s6)
   124e4:	000b0d13          	mv	s10,s6
   124e8:	00078b13          	mv	s6,a5
   124ec:	ec0b1ee3          	bnez	s6,123c8 <__call_exitprocs+0x60>
   124f0:	f9dff06f          	j	1248c <__call_exitprocs+0x124>
   124f4:	00000793          	li	a5,0
   124f8:	fedff06f          	j	124e4 <__call_exitprocs+0x17c>

00000000000124fc <quorem>:
   124fc:	fc010113          	addi	sp,sp,-64
   12500:	03213023          	sd	s2,32(sp)
   12504:	01452783          	lw	a5,20(a0)
   12508:	0145a903          	lw	s2,20(a1)
   1250c:	02113c23          	sd	ra,56(sp)
   12510:	02813823          	sd	s0,48(sp)
   12514:	02913423          	sd	s1,40(sp)
   12518:	01313c23          	sd	s3,24(sp)
   1251c:	01413823          	sd	s4,16(sp)
   12520:	01513423          	sd	s5,8(sp)
   12524:	1b27ce63          	blt	a5,s2,126e0 <quorem+0x1e4>
   12528:	fff9091b          	addiw	s2,s2,-1
   1252c:	00090f13          	mv	t5,s2
   12530:	002f1f13          	slli	t5,t5,0x2
   12534:	01858413          	addi	s0,a1,24
   12538:	01e409b3          	add	s3,s0,t5
   1253c:	01850a13          	addi	s4,a0,24
   12540:	01ea0f33          	add	t5,s4,t5
   12544:	0009a783          	lw	a5,0(s3) # 0 <_ftext-0x10000>
   12548:	000f2483          	lw	s1,0(t5)
   1254c:	0017879b          	addiw	a5,a5,1
   12550:	02f4d4bb          	divuw	s1,s1,a5
   12554:	0a048e63          	beqz	s1,12610 <quorem+0x114>
   12558:	00010337          	lui	t1,0x10
   1255c:	00040e93          	mv	t4,s0
   12560:	000a0e13          	mv	t3,s4
   12564:	00000613          	li	a2,0
   12568:	00000713          	li	a4,0
   1256c:	fff3031b          	addiw	t1,t1,-1
   12570:	004e8e93          	addi	t4,t4,4
   12574:	ffcea803          	lw	a6,-4(t4)
   12578:	000e2683          	lw	a3,0(t3)
   1257c:	004e0e13          	addi	t3,t3,4
   12580:	006878b3          	and	a7,a6,t1
   12584:	029888bb          	mulw	a7,a7,s1
   12588:	0108581b          	srliw	a6,a6,0x10
   1258c:	0066f7b3          	and	a5,a3,t1
   12590:	0106d69b          	srliw	a3,a3,0x10
   12594:	0298083b          	mulw	a6,a6,s1
   12598:	00c888bb          	addw	a7,a7,a2
   1259c:	0108d61b          	srliw	a2,a7,0x10
   125a0:	0068f8b3          	and	a7,a7,t1
   125a4:	4117073b          	subw	a4,a4,a7
   125a8:	00f707bb          	addw	a5,a4,a5
   125ac:	4107d71b          	sraiw	a4,a5,0x10
   125b0:	0067f7b3          	and	a5,a5,t1
   125b4:	00c8063b          	addw	a2,a6,a2
   125b8:	00667833          	and	a6,a2,t1
   125bc:	410686bb          	subw	a3,a3,a6
   125c0:	00e6873b          	addw	a4,a3,a4
   125c4:	0107169b          	slliw	a3,a4,0x10
   125c8:	00f6e6b3          	or	a3,a3,a5
   125cc:	fede2e23          	sw	a3,-4(t3)
   125d0:	0106561b          	srliw	a2,a2,0x10
   125d4:	4107571b          	sraiw	a4,a4,0x10
   125d8:	f9d9fce3          	bleu	t4,s3,12570 <quorem+0x74>
   125dc:	000f2783          	lw	a5,0(t5)
   125e0:	02079863          	bnez	a5,12610 <quorem+0x114>
   125e4:	ffcf0793          	addi	a5,t5,-4
   125e8:	02fa7263          	bleu	a5,s4,1260c <quorem+0x110>
   125ec:	ffcf2703          	lw	a4,-4(t5)
   125f0:	00070863          	beqz	a4,12600 <quorem+0x104>
   125f4:	0180006f          	j	1260c <quorem+0x110>
   125f8:	0007a703          	lw	a4,0(a5)
   125fc:	00071863          	bnez	a4,1260c <quorem+0x110>
   12600:	ffc78793          	addi	a5,a5,-4
   12604:	fff9091b          	addiw	s2,s2,-1
   12608:	fefa68e3          	bltu	s4,a5,125f8 <quorem+0xfc>
   1260c:	01252a23          	sw	s2,20(a0)
   12610:	00050a93          	mv	s5,a0
   12614:	388030ef          	jal	1599c <__mcmp>
   12618:	0a054063          	bltz	a0,126b8 <quorem+0x1bc>
   1261c:	000105b7          	lui	a1,0x10
   12620:	0014849b          	addiw	s1,s1,1
   12624:	000a0613          	mv	a2,s4
   12628:	00000793          	li	a5,0
   1262c:	fff5859b          	addiw	a1,a1,-1
   12630:	00440413          	addi	s0,s0,4
   12634:	ffc42683          	lw	a3,-4(s0)
   12638:	00062703          	lw	a4,0(a2)
   1263c:	00460613          	addi	a2,a2,4
   12640:	00b6f833          	and	a6,a3,a1
   12644:	410787bb          	subw	a5,a5,a6
   12648:	00b77833          	and	a6,a4,a1
   1264c:	010787bb          	addw	a5,a5,a6
   12650:	0106d69b          	srliw	a3,a3,0x10
   12654:	0107571b          	srliw	a4,a4,0x10
   12658:	40d7073b          	subw	a4,a4,a3
   1265c:	4107d69b          	sraiw	a3,a5,0x10
   12660:	00d706bb          	addw	a3,a4,a3
   12664:	0106981b          	slliw	a6,a3,0x10
   12668:	00b7f733          	and	a4,a5,a1
   1266c:	00e86733          	or	a4,a6,a4
   12670:	fee62e23          	sw	a4,-4(a2)
   12674:	4106d79b          	sraiw	a5,a3,0x10
   12678:	fa89fce3          	bleu	s0,s3,12630 <quorem+0x134>
   1267c:	00291713          	slli	a4,s2,0x2
   12680:	00ea0733          	add	a4,s4,a4
   12684:	00072783          	lw	a5,0(a4)
   12688:	02079863          	bnez	a5,126b8 <quorem+0x1bc>
   1268c:	ffc70793          	addi	a5,a4,-4
   12690:	02fa7263          	bleu	a5,s4,126b4 <quorem+0x1b8>
   12694:	ffc72703          	lw	a4,-4(a4)
   12698:	00070863          	beqz	a4,126a8 <quorem+0x1ac>
   1269c:	0180006f          	j	126b4 <quorem+0x1b8>
   126a0:	0007a703          	lw	a4,0(a5)
   126a4:	00071863          	bnez	a4,126b4 <quorem+0x1b8>
   126a8:	ffc78793          	addi	a5,a5,-4
   126ac:	fff9091b          	addiw	s2,s2,-1
   126b0:	fefa68e3          	bltu	s4,a5,126a0 <quorem+0x1a4>
   126b4:	012aaa23          	sw	s2,20(s5)
   126b8:	00048513          	mv	a0,s1
   126bc:	03813083          	ld	ra,56(sp)
   126c0:	03013403          	ld	s0,48(sp)
   126c4:	02813483          	ld	s1,40(sp)
   126c8:	02013903          	ld	s2,32(sp)
   126cc:	01813983          	ld	s3,24(sp)
   126d0:	01013a03          	ld	s4,16(sp)
   126d4:	00813a83          	ld	s5,8(sp)
   126d8:	04010113          	addi	sp,sp,64
   126dc:	00008067          	ret
   126e0:	00000513          	li	a0,0
   126e4:	fd9ff06f          	j	126bc <quorem+0x1c0>

00000000000126e8 <_dtoa_r>:
   126e8:	e20585d3          	fmv.x.d	a1,fa1
   126ec:	06053883          	ld	a7,96(a0)
   126f0:	f3010113          	addi	sp,sp,-208
   126f4:	0c813023          	sd	s0,192(sp)
   126f8:	0a913c23          	sd	s1,184(sp)
   126fc:	0b313423          	sd	s3,168(sp)
   12700:	09613823          	sd	s6,144(sp)
   12704:	07913c23          	sd	s9,120(sp)
   12708:	07a13823          	sd	s10,112(sp)
   1270c:	0c113423          	sd	ra,200(sp)
   12710:	0b213823          	sd	s2,176(sp)
   12714:	0b413023          	sd	s4,160(sp)
   12718:	09513c23          	sd	s5,152(sp)
   1271c:	09713423          	sd	s7,136(sp)
   12720:	09813023          	sd	s8,128(sp)
   12724:	07b13423          	sd	s11,104(sp)
   12728:	00e13023          	sd	a4,0(sp)
   1272c:	00050413          	mv	s0,a0
   12730:	00060993          	mv	s3,a2
   12734:	00068c93          	mv	s9,a3
   12738:	00078493          	mv	s1,a5
   1273c:	00080b13          	mv	s6,a6
   12740:	00058d13          	mv	s10,a1
   12744:	02088263          	beqz	a7,12768 <_dtoa_r+0x80>
   12748:	06852603          	lw	a2,104(a0)
   1274c:	00100693          	li	a3,1
   12750:	00088593          	mv	a1,a7
   12754:	00c696bb          	sllw	a3,a3,a2
   12758:	00c8a423          	sw	a2,8(a7)
   1275c:	00d8a623          	sw	a3,12(a7)
   12760:	1f1020ef          	jal	15150 <_Bfree>
   12764:	06043023          	sd	zero,96(s0)
   12768:	420d5913          	srai	s2,s10,0x20
   1276c:	0c094063          	bltz	s2,1282c <_dtoa_r+0x144>
   12770:	0004a023          	sw	zero,0(s1)
   12774:	7ff007b7          	lui	a5,0x7ff00
   12778:	00f976b3          	and	a3,s2,a5
   1277c:	06f68a63          	beq	a3,a5,127f0 <_dtoa_r+0x108>
   12780:	f20007d3          	fmv.d.x	fa5,zero
   12784:	f20d0753          	fmv.d.x	fa4,s10
   12788:	a2f727d3          	feq.d	a5,fa4,fa5
   1278c:	0c078463          	beqz	a5,12854 <_dtoa_r+0x16c>
   12790:	00013703          	ld	a4,0(sp)
   12794:	00100793          	li	a5,1
   12798:	00f72023          	sw	a5,0(a4)
   1279c:	480b0a63          	beqz	s6,12c30 <_dtoa_r+0x548>
   127a0:	000197b7          	lui	a5,0x19
   127a4:	27978793          	addi	a5,a5,633 # 19279 <zeroes.4137+0x71>
   127a8:	00019537          	lui	a0,0x19
   127ac:	00fb3023          	sd	a5,0(s6)
   127b0:	27850513          	addi	a0,a0,632 # 19278 <zeroes.4137+0x70>
   127b4:	0c813083          	ld	ra,200(sp)
   127b8:	0c013403          	ld	s0,192(sp)
   127bc:	0b813483          	ld	s1,184(sp)
   127c0:	0b013903          	ld	s2,176(sp)
   127c4:	0a813983          	ld	s3,168(sp)
   127c8:	0a013a03          	ld	s4,160(sp)
   127cc:	09813a83          	ld	s5,152(sp)
   127d0:	09013b03          	ld	s6,144(sp)
   127d4:	08813b83          	ld	s7,136(sp)
   127d8:	08013c03          	ld	s8,128(sp)
   127dc:	07813c83          	ld	s9,120(sp)
   127e0:	07013d03          	ld	s10,112(sp)
   127e4:	06813d83          	ld	s11,104(sp)
   127e8:	0d010113          	addi	sp,sp,208
   127ec:	00008067          	ret
   127f0:	00013703          	ld	a4,0(sp)
   127f4:	000027b7          	lui	a5,0x2
   127f8:	70f7879b          	addiw	a5,a5,1807
   127fc:	00f72023          	sw	a5,0(a4)
   12800:	00cd1793          	slli	a5,s10,0xc
   12804:	3e079863          	bnez	a5,12bf4 <_dtoa_r+0x50c>
   12808:	00019537          	lui	a0,0x19
   1280c:	28050513          	addi	a0,a0,640 # 19280 <zeroes.4137+0x78>
   12810:	fa0b02e3          	beqz	s6,127b4 <_dtoa_r+0xcc>
   12814:	00354703          	lbu	a4,3(a0)
   12818:	00350793          	addi	a5,a0,3
   1281c:	00070463          	beqz	a4,12824 <_dtoa_r+0x13c>
   12820:	00850793          	addi	a5,a0,8
   12824:	00fb3023          	sd	a5,0(s6)
   12828:	f8dff06f          	j	127b4 <_dtoa_r+0xcc>
   1282c:	800007b7          	lui	a5,0x80000
   12830:	fff7c793          	not	a5,a5
   12834:	020d1713          	slli	a4,s10,0x20
   12838:	00f97933          	and	s2,s2,a5
   1283c:	02091793          	slli	a5,s2,0x20
   12840:	02075713          	srli	a4,a4,0x20
   12844:	00100693          	li	a3,1
   12848:	00d4a023          	sw	a3,0(s1)
   1284c:	00f76d33          	or	s10,a4,a5
   12850:	f25ff06f          	j	12774 <_dtoa_r+0x8c>
   12854:	f20d05d3          	fmv.d.x	fa1,s10
   12858:	05810693          	addi	a3,sp,88
   1285c:	05c10613          	addi	a2,sp,92
   12860:	00040513          	mv	a0,s0
   12864:	578030ef          	jal	15ddc <__d2b>
   12868:	02a13023          	sd	a0,32(sp)
   1286c:	0149581b          	srliw	a6,s2,0x14
   12870:	38081863          	bnez	a6,12c00 <_dtoa_r+0x518>
   12874:	05812603          	lw	a2,88(sp)
   12878:	05c12803          	lw	a6,92(sp)
   1287c:	02000793          	li	a5,32
   12880:	0106083b          	addw	a6,a2,a6
   12884:	4328069b          	addiw	a3,a6,1074
   12888:	6ad7de63          	ble	a3,a5,12f44 <_dtoa_r+0x85c>
   1288c:	04000593          	li	a1,64
   12890:	4128049b          	addiw	s1,a6,1042
   12894:	000d079b          	sext.w	a5,s10
   12898:	40d585bb          	subw	a1,a1,a3
   1289c:	0097d7bb          	srlw	a5,a5,s1
   128a0:	00b914bb          	sllw	s1,s2,a1
   128a4:	0097e4b3          	or	s1,a5,s1
   128a8:	d21487d3          	fcvt.d.wu	fa5,s1
   128ac:	fe1006b7          	lui	a3,0xfe100
   128b0:	fff8081b          	addiw	a6,a6,-1
   128b4:	e20784d3          	fmv.x.d	s1,fa5
   128b8:	00100913          	li	s2,1
   128bc:	4204d793          	srai	a5,s1,0x20
   128c0:	00d787bb          	addw	a5,a5,a3
   128c4:	02049493          	slli	s1,s1,0x20
   128c8:	02079793          	slli	a5,a5,0x20
   128cc:	0204d493          	srli	s1,s1,0x20
   128d0:	00f4e4b3          	or	s1,s1,a5
   128d4:	0001b7b7          	lui	a5,0x1b
   128d8:	3287b787          	fld	fa5,808(a5) # 1b328 <__wctomb+0x8>
   128dc:	f2048753          	fmv.d.x	fa4,s1
   128e0:	0001b7b7          	lui	a5,0x1b
   128e4:	0af77653          	fsub.d	fa2,fa4,fa5
   128e8:	3387b787          	fld	fa5,824(a5) # 1b338 <__wctomb+0x18>
   128ec:	0001b7b7          	lui	a5,0x1b
   128f0:	3307b687          	fld	fa3,816(a5) # 1b330 <__wctomb+0x10>
   128f4:	0001b7b7          	lui	a5,0x1b
   128f8:	d2080753          	fcvt.d.w	fa4,a6
   128fc:	7ad677c3          	fmadd.d	fa5,fa2,fa3,fa5
   12900:	3407b687          	fld	fa3,832(a5) # 1b340 <__wctomb+0x20>
   12904:	7ad777c3          	fmadd.d	fa5,fa4,fa3,fa5
   12908:	f2000753          	fmv.d.x	fa4,zero
   1290c:	a2e797d3          	flt.d	a5,fa5,fa4
   12910:	c2079bd3          	fcvt.w.d	s7,fa5,rtz
   12914:	5e079e63          	bnez	a5,12f10 <_dtoa_r+0x828>
   12918:	00100793          	li	a5,1
   1291c:	02f12823          	sw	a5,48(sp)
   12920:	01600793          	li	a5,22
   12924:	0377e663          	bltu	a5,s7,12950 <_dtoa_r+0x268>
   12928:	000197b7          	lui	a5,0x19
   1292c:	003b9693          	slli	a3,s7,0x3
   12930:	f7878793          	addi	a5,a5,-136 # 18f78 <__mprec_tens>
   12934:	00f687b3          	add	a5,a3,a5
   12938:	0007b787          	fld	fa5,0(a5)
   1293c:	f20d0753          	fmv.d.x	fa4,s10
   12940:	a2f717d3          	flt.d	a5,fa4,fa5
   12944:	60078863          	beqz	a5,12f54 <_dtoa_r+0x86c>
   12948:	fffb8b9b          	addiw	s7,s7,-1
   1294c:	02012823          	sw	zero,48(sp)
   12950:	4106083b          	subw	a6,a2,a6
   12954:	fff80d9b          	addiw	s11,a6,-1
   12958:	00000813          	li	a6,0
   1295c:	2e0dc063          	bltz	s11,12c3c <_dtoa_r+0x554>
   12960:	5c0bc263          	bltz	s7,12f24 <_dtoa_r+0x83c>
   12964:	017d8dbb          	addw	s11,s11,s7
   12968:	03712423          	sw	s7,40(sp)
   1296c:	00000c13          	li	s8,0
   12970:	00900793          	li	a5,9
   12974:	2d37ea63          	bltu	a5,s3,12c48 <_dtoa_r+0x560>
   12978:	00500793          	li	a5,5
   1297c:	00100a13          	li	s4,1
   12980:	0137d663          	ble	s3,a5,1298c <_dtoa_r+0x2a4>
   12984:	ffc9899b          	addiw	s3,s3,-4
   12988:	00000a13          	li	s4,0
   1298c:	00300793          	li	a5,3
   12990:	2af982e3          	beq	s3,a5,13434 <_dtoa_r+0xd4c>
   12994:	1f37dce3          	ble	s3,a5,1338c <_dtoa_r+0xca4>
   12998:	00400793          	li	a5,4
   1299c:	0cf98ae3          	beq	s3,a5,13270 <_dtoa_r+0xb88>
   129a0:	00100793          	li	a5,1
   129a4:	00f12823          	sw	a5,16(sp)
   129a8:	00500793          	li	a5,5
   129ac:	1ef996e3          	bne	s3,a5,13398 <_dtoa_r+0xcb0>
   129b0:	019b87bb          	addw	a5,s7,s9
   129b4:	00178a9b          	addiw	s5,a5,1
   129b8:	02f12a23          	sw	a5,52(sp)
   129bc:	000a8513          	mv	a0,s5
   129c0:	000a8493          	mv	s1,s5
   129c4:	1b505ee3          	blez	s5,13380 <_dtoa_r+0xc98>
   129c8:	06042423          	sw	zero,104(s0)
   129cc:	01f00793          	li	a5,31
   129d0:	00000593          	li	a1,0
   129d4:	02a7f463          	bleu	a0,a5,129fc <_dtoa_r+0x314>
   129d8:	00100613          	li	a2,1
   129dc:	00400693          	li	a3,4
   129e0:	0016969b          	slliw	a3,a3,0x1
   129e4:	00068793          	mv	a5,a3
   129e8:	01c78793          	addi	a5,a5,28
   129ec:	00060593          	mv	a1,a2
   129f0:	0016061b          	addiw	a2,a2,1
   129f4:	fef576e3          	bleu	a5,a0,129e0 <_dtoa_r+0x2f8>
   129f8:	06b42423          	sw	a1,104(s0)
   129fc:	00040513          	mv	a0,s0
   12a00:	03013c23          	sd	a6,56(sp)
   12a04:	6a0020ef          	jal	150a4 <_Balloc>
   12a08:	00a13423          	sd	a0,8(sp)
   12a0c:	06a43023          	sd	a0,96(s0)
   12a10:	00e00793          	li	a5,14
   12a14:	03813803          	ld	a6,56(sp)
   12a18:	2697e463          	bltu	a5,s1,12c80 <_dtoa_r+0x598>
   12a1c:	260a0263          	beqz	s4,12c80 <_dtoa_r+0x598>
   12a20:	03a13c23          	sd	s10,56(sp)
   12a24:	317054e3          	blez	s7,1352c <_dtoa_r+0xe44>
   12a28:	00fbf713          	andi	a4,s7,15
   12a2c:	00371693          	slli	a3,a4,0x3
   12a30:	00019737          	lui	a4,0x19
   12a34:	404bd79b          	sraiw	a5,s7,0x4
   12a38:	f7870713          	addi	a4,a4,-136 # 18f78 <__mprec_tens>
   12a3c:	00e68733          	add	a4,a3,a4
   12a40:	0107f693          	andi	a3,a5,16
   12a44:	00073687          	fld	fa3,0(a4)
   12a48:	f20d07d3          	fmv.d.x	fa5,s10
   12a4c:	00200713          	li	a4,2
   12a50:	00068c63          	beqz	a3,12a68 <_dtoa_r+0x380>
   12a54:	00019737          	lui	a4,0x19
   12a58:	08873707          	fld	fa4,136(a4) # 19088 <__mprec_bigtens+0x20>
   12a5c:	00f7f793          	andi	a5,a5,15
   12a60:	00300713          	li	a4,3
   12a64:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   12a68:	02078663          	beqz	a5,12a94 <_dtoa_r+0x3ac>
   12a6c:	000196b7          	lui	a3,0x19
   12a70:	06868693          	addi	a3,a3,104 # 19068 <__mprec_bigtens>
   12a74:	0017f613          	andi	a2,a5,1
   12a78:	4017d79b          	sraiw	a5,a5,0x1
   12a7c:	00060863          	beqz	a2,12a8c <_dtoa_r+0x3a4>
   12a80:	0006b707          	fld	fa4,0(a3)
   12a84:	0017071b          	addiw	a4,a4,1
   12a88:	12e6f6d3          	fmul.d	fa3,fa3,fa4
   12a8c:	00868693          	addi	a3,a3,8
   12a90:	fe0792e3          	bnez	a5,12a74 <_dtoa_r+0x38c>
   12a94:	1ad7f7d3          	fdiv.d	fa5,fa5,fa3
   12a98:	03012783          	lw	a5,48(sp)
   12a9c:	00078a63          	beqz	a5,12ab0 <_dtoa_r+0x3c8>
   12aa0:	0001b7b7          	lui	a5,0x1b
   12aa4:	3487b707          	fld	fa4,840(a5) # 1b348 <__wctomb+0x28>
   12aa8:	a2e797d3          	flt.d	a5,fa5,fa4
   12aac:	440790e3          	bnez	a5,136ec <_dtoa_r+0x1004>
   12ab0:	0001b7b7          	lui	a5,0x1b
   12ab4:	d20706d3          	fcvt.d.w	fa3,a4
   12ab8:	3587b707          	fld	fa4,856(a5) # 1b358 <__wctomb+0x38>
   12abc:	fcc006b7          	lui	a3,0xfcc00
   12ac0:	72f6f743          	fmadd.d	fa4,fa3,fa5,fa4
   12ac4:	e2070753          	fmv.x.d	a4,fa4
   12ac8:	42075793          	srai	a5,a4,0x20
   12acc:	00d787bb          	addw	a5,a5,a3
   12ad0:	02071713          	slli	a4,a4,0x20
   12ad4:	02079793          	slli	a5,a5,0x20
   12ad8:	02075713          	srli	a4,a4,0x20
   12adc:	00f76733          	or	a4,a4,a5
   12ae0:	180a86e3          	beqz	s5,1346c <_dtoa_r+0xd84>
   12ae4:	000b8693          	mv	a3,s7
   12ae8:	000a8613          	mv	a2,s5
   12aec:	01012783          	lw	a5,16(sp)
   12af0:	300782e3          	beqz	a5,135f4 <_dtoa_r+0xf0c>
   12af4:	fff6079b          	addiw	a5,a2,-1
   12af8:	000195b7          	lui	a1,0x19
   12afc:	f7858593          	addi	a1,a1,-136 # 18f78 <__mprec_tens>
   12b00:	00379793          	slli	a5,a5,0x3
   12b04:	00b787b3          	add	a5,a5,a1
   12b08:	0001b5b7          	lui	a1,0x1b
   12b0c:	0007b687          	fld	fa3,0(a5)
   12b10:	3685b707          	fld	fa4,872(a1) # 1b368 <__wctomb+0x48>
   12b14:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   12b18:	00813503          	ld	a0,8(sp)
   12b1c:	1ad77753          	fdiv.d	fa4,fa4,fa3
   12b20:	d20786d3          	fcvt.d.w	fa3,a5
   12b24:	0307879b          	addiw	a5,a5,48
   12b28:	0ff7f793          	andi	a5,a5,255
   12b2c:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   12b30:	f20706d3          	fmv.d.x	fa3,a4
   12b34:	00f50023          	sb	a5,0(a0)
   12b38:	00150493          	addi	s1,a0,1
   12b3c:	0ad77753          	fsub.d	fa4,fa4,fa3
   12b40:	a2e79753          	flt.d	a4,fa5,fa4
   12b44:	08071063          	bnez	a4,12bc4 <_dtoa_r+0x4dc>
   12b48:	0001b737          	lui	a4,0x1b
   12b4c:	34873587          	fld	fa1,840(a4) # 1b348 <__wctomb+0x28>
   12b50:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   12b54:	a2e69753          	flt.d	a4,fa3,fa4
   12b58:	40071ae3          	bnez	a4,1376c <_dtoa_r+0x1084>
   12b5c:	00100793          	li	a5,1
   12b60:	1ac7d4e3          	ble	a2,a5,13508 <_dtoa_r+0xe20>
   12b64:	0001b7b7          	lui	a5,0x1b
   12b68:	ffe6061b          	addiw	a2,a2,-2
   12b6c:	02061613          	slli	a2,a2,0x20
   12b70:	3507b607          	fld	fa2,848(a5) # 1b350 <__wctomb+0x30>
   12b74:	00813783          	ld	a5,8(sp)
   12b78:	02065613          	srli	a2,a2,0x20
   12b7c:	00260613          	addi	a2,a2,2
   12b80:	00c78633          	add	a2,a5,a2
   12b84:	0140006f          	j	12b98 <_dtoa_r+0x4b0>
   12b88:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   12b8c:	a2e69753          	flt.d	a4,fa3,fa4
   12b90:	3c071ee3          	bnez	a4,1376c <_dtoa_r+0x1084>
   12b94:	16960ae3          	beq	a2,s1,13508 <_dtoa_r+0xe20>
   12b98:	12c7f7d3          	fmul.d	fa5,fa5,fa2
   12b9c:	12c77753          	fmul.d	fa4,fa4,fa2
   12ba0:	00148493          	addi	s1,s1,1
   12ba4:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   12ba8:	d20786d3          	fcvt.d.w	fa3,a5
   12bac:	0307879b          	addiw	a5,a5,48
   12bb0:	0ff7f793          	andi	a5,a5,255
   12bb4:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   12bb8:	fef48fa3          	sb	a5,-1(s1)
   12bbc:	a2e79753          	flt.d	a4,fa5,fa4
   12bc0:	fc0704e3          	beqz	a4,12b88 <_dtoa_r+0x4a0>
   12bc4:	00068b93          	mv	s7,a3
   12bc8:	02013583          	ld	a1,32(sp)
   12bcc:	00040513          	mv	a0,s0
   12bd0:	001b8b9b          	addiw	s7,s7,1
   12bd4:	57c020ef          	jal	15150 <_Bfree>
   12bd8:	00013783          	ld	a5,0(sp)
   12bdc:	00048023          	sb	zero,0(s1)
   12be0:	0177a023          	sw	s7,0(a5)
   12be4:	0c0b0ce3          	beqz	s6,134bc <_dtoa_r+0xdd4>
   12be8:	009b3023          	sd	s1,0(s6)
   12bec:	00813503          	ld	a0,8(sp)
   12bf0:	bc5ff06f          	j	127b4 <_dtoa_r+0xcc>
   12bf4:	00019537          	lui	a0,0x19
   12bf8:	29050513          	addi	a0,a0,656 # 19290 <zeroes.4137+0x88>
   12bfc:	c15ff06f          	j	12810 <_dtoa_r+0x128>
   12c00:	00cd1793          	slli	a5,s10,0xc
   12c04:	02c7d693          	srli	a3,a5,0x2c
   12c08:	3ff007b7          	lui	a5,0x3ff00
   12c0c:	00f6e7b3          	or	a5,a3,a5
   12c10:	020d1493          	slli	s1,s10,0x20
   12c14:	02079793          	slli	a5,a5,0x20
   12c18:	0204d493          	srli	s1,s1,0x20
   12c1c:	00f4e4b3          	or	s1,s1,a5
   12c20:	c018081b          	addiw	a6,a6,-1023
   12c24:	05812603          	lw	a2,88(sp)
   12c28:	00000913          	li	s2,0
   12c2c:	ca9ff06f          	j	128d4 <_dtoa_r+0x1ec>
   12c30:	00019537          	lui	a0,0x19
   12c34:	27850513          	addi	a0,a0,632 # 19278 <zeroes.4137+0x70>
   12c38:	b7dff06f          	j	127b4 <_dtoa_r+0xcc>
   12c3c:	41b0083b          	negw	a6,s11
   12c40:	00000d93          	li	s11,0
   12c44:	d1dff06f          	j	12960 <_dtoa_r+0x278>
   12c48:	06042423          	sw	zero,104(s0)
   12c4c:	00000593          	li	a1,0
   12c50:	00040513          	mv	a0,s0
   12c54:	03013c23          	sd	a6,56(sp)
   12c58:	44c020ef          	jal	150a4 <_Balloc>
   12c5c:	03813803          	ld	a6,56(sp)
   12c60:	fff00a93          	li	s5,-1
   12c64:	00100793          	li	a5,1
   12c68:	00a13423          	sd	a0,8(sp)
   12c6c:	06a43023          	sd	a0,96(s0)
   12c70:	03512a23          	sw	s5,52(sp)
   12c74:	00000993          	li	s3,0
   12c78:	00000c93          	li	s9,0
   12c7c:	00f12823          	sw	a5,16(sp)
   12c80:	05c12783          	lw	a5,92(sp)
   12c84:	0e07ca63          	bltz	a5,12d78 <_dtoa_r+0x690>
   12c88:	00e00693          	li	a3,14
   12c8c:	0f76c663          	blt	a3,s7,12d78 <_dtoa_r+0x690>
   12c90:	000197b7          	lui	a5,0x19
   12c94:	003b9693          	slli	a3,s7,0x3
   12c98:	f7878793          	addi	a5,a5,-136 # 18f78 <__mprec_tens>
   12c9c:	00f687b3          	add	a5,a3,a5
   12ca0:	0007b687          	fld	fa3,0(a5)
   12ca4:	5e0cc663          	bltz	s9,13290 <_dtoa_r+0xba8>
   12ca8:	f20d0653          	fmv.d.x	fa2,s10
   12cac:	00813703          	ld	a4,8(sp)
   12cb0:	22d69553          	fneg.d	fa0,fa3
   12cb4:	1ad67753          	fdiv.d	fa4,fa2,fa3
   12cb8:	00170493          	addi	s1,a4,1
   12cbc:	c20717d3          	fcvt.w.d	a5,fa4,rtz
   12cc0:	d20787d3          	fcvt.d.w	fa5,a5
   12cc4:	0307869b          	addiw	a3,a5,48
   12cc8:	00d70023          	sb	a3,0(a4)
   12ccc:	00100713          	li	a4,1
   12cd0:	62f577c3          	fmadd.d	fa5,fa0,fa5,fa2
   12cd4:	2aea88e3          	beq	s5,a4,13784 <_dtoa_r+0x109c>
   12cd8:	0001b7b7          	lui	a5,0x1b
   12cdc:	3507b587          	fld	fa1,848(a5) # 1b350 <__wctomb+0x30>
   12ce0:	f2000653          	fmv.d.x	fa2,zero
   12ce4:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   12ce8:	a2c7a7d3          	feq.d	a5,fa5,fa2
   12cec:	ec079ee3          	bnez	a5,12bc8 <_dtoa_r+0x4e0>
   12cf0:	ffea869b          	addiw	a3,s5,-2
   12cf4:	02069693          	slli	a3,a3,0x20
   12cf8:	00813783          	ld	a5,8(sp)
   12cfc:	0206d693          	srli	a3,a3,0x20
   12d00:	00268693          	addi	a3,a3,2 # fffffffffcc00002 <_gp+0xfffffffffcbe4512>
   12d04:	00d786b3          	add	a3,a5,a3
   12d08:	0100006f          	j	12d18 <_dtoa_r+0x630>
   12d0c:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   12d10:	a2c7a7d3          	feq.d	a5,fa5,fa2
   12d14:	ea079ae3          	bnez	a5,12bc8 <_dtoa_r+0x4e0>
   12d18:	1ad7f753          	fdiv.d	fa4,fa5,fa3
   12d1c:	00148493          	addi	s1,s1,1
   12d20:	c20717d3          	fcvt.w.d	a5,fa4,rtz
   12d24:	d2078753          	fcvt.d.w	fa4,a5
   12d28:	0307871b          	addiw	a4,a5,48
   12d2c:	fee48fa3          	sb	a4,-1(s1)
   12d30:	7ae577c3          	fmadd.d	fa5,fa0,fa4,fa5
   12d34:	fcd49ce3          	bne	s1,a3,12d0c <_dtoa_r+0x624>
   12d38:	02f7f7d3          	fadd.d	fa5,fa5,fa5
   12d3c:	a2f69753          	flt.d	a4,fa3,fa5
   12d40:	7c070863          	beqz	a4,13510 <_dtoa_r+0xe28>
   12d44:	fff6c783          	lbu	a5,-1(a3)
   12d48:	00068493          	mv	s1,a3
   12d4c:	03900693          	li	a3,57
   12d50:	0140006f          	j	12d64 <_dtoa_r+0x67c>
   12d54:	00813783          	ld	a5,8(sp)
   12d58:	02f70ce3          	beq	a4,a5,13590 <_dtoa_r+0xea8>
   12d5c:	fff74783          	lbu	a5,-1(a4)
   12d60:	00070493          	mv	s1,a4
   12d64:	fff48713          	addi	a4,s1,-1
   12d68:	fed786e3          	beq	a5,a3,12d54 <_dtoa_r+0x66c>
   12d6c:	0017879b          	addiw	a5,a5,1
   12d70:	00f70023          	sb	a5,0(a4)
   12d74:	e55ff06f          	j	12bc8 <_dtoa_r+0x4e0>
   12d78:	01012703          	lw	a4,16(sp)
   12d7c:	1a070c63          	beqz	a4,12f34 <_dtoa_r+0x84c>
   12d80:	00100693          	li	a3,1
   12d84:	5536d863          	ble	s3,a3,132d4 <_dtoa_r+0xbec>
   12d88:	fffa869b          	addiw	a3,s5,-1
   12d8c:	72dc4c63          	blt	s8,a3,134c4 <_dtoa_r+0xddc>
   12d90:	40dc06bb          	subw	a3,s8,a3
   12d94:	00080493          	mv	s1,a6
   12d98:	000a8793          	mv	a5,s5
   12d9c:	120ac2e3          	bltz	s5,136c0 <_dtoa_r+0xfd8>
   12da0:	00f8083b          	addw	a6,a6,a5
   12da4:	00100593          	li	a1,1
   12da8:	00040513          	mv	a0,s0
   12dac:	04d13423          	sd	a3,72(sp)
   12db0:	05013023          	sd	a6,64(sp)
   12db4:	03013c23          	sd	a6,56(sp)
   12db8:	00fd8dbb          	addw	s11,s11,a5
   12dbc:	720020ef          	jal	154dc <__i2b>
   12dc0:	04013803          	ld	a6,64(sp)
   12dc4:	04813683          	ld	a3,72(sp)
   12dc8:	00050a13          	mv	s4,a0
   12dcc:	00048e63          	beqz	s1,12de8 <_dtoa_r+0x700>
   12dd0:	01b05c63          	blez	s11,12de8 <_dtoa_r+0x700>
   12dd4:	00048793          	mv	a5,s1
   12dd8:	489dc463          	blt	s11,s1,13260 <_dtoa_r+0xb78>
   12ddc:	40f8083b          	subw	a6,a6,a5
   12de0:	40f484bb          	subw	s1,s1,a5
   12de4:	40fd8dbb          	subw	s11,s11,a5
   12de8:	02013903          	ld	s2,32(sp)
   12dec:	07805e63          	blez	s8,12e68 <_dtoa_r+0x780>
   12df0:	01012783          	lw	a5,16(sp)
   12df4:	6a078463          	beqz	a5,1349c <_dtoa_r+0xdb4>
   12df8:	04068a63          	beqz	a3,12e4c <_dtoa_r+0x764>
   12dfc:	00068613          	mv	a2,a3
   12e00:	000a0593          	mv	a1,s4
   12e04:	00040513          	mv	a0,s0
   12e08:	05013023          	sd	a6,64(sp)
   12e0c:	02d13c23          	sd	a3,56(sp)
   12e10:	0f5020ef          	jal	15704 <__pow5mult>
   12e14:	02013603          	ld	a2,32(sp)
   12e18:	00050593          	mv	a1,a0
   12e1c:	00050a13          	mv	s4,a0
   12e20:	00040513          	mv	a0,s0
   12e24:	6ec020ef          	jal	15510 <__multiply>
   12e28:	03813683          	ld	a3,56(sp)
   12e2c:	02013583          	ld	a1,32(sp)
   12e30:	00050913          	mv	s2,a0
   12e34:	00040513          	mv	a0,s0
   12e38:	40dc0c3b          	subw	s8,s8,a3
   12e3c:	314020ef          	jal	15150 <_Bfree>
   12e40:	04013803          	ld	a6,64(sp)
   12e44:	020c0263          	beqz	s8,12e68 <_dtoa_r+0x780>
   12e48:	03213023          	sd	s2,32(sp)
   12e4c:	02013583          	ld	a1,32(sp)
   12e50:	000c0613          	mv	a2,s8
   12e54:	00040513          	mv	a0,s0
   12e58:	03013c23          	sd	a6,56(sp)
   12e5c:	0a9020ef          	jal	15704 <__pow5mult>
   12e60:	03813803          	ld	a6,56(sp)
   12e64:	00050913          	mv	s2,a0
   12e68:	00100593          	li	a1,1
   12e6c:	00040513          	mv	a0,s0
   12e70:	03013023          	sd	a6,32(sp)
   12e74:	668020ef          	jal	154dc <__i2b>
   12e78:	02812783          	lw	a5,40(sp)
   12e7c:	00050c13          	mv	s8,a0
   12e80:	02013803          	ld	a6,32(sp)
   12e84:	0c078c63          	beqz	a5,12f5c <_dtoa_r+0x874>
   12e88:	00078613          	mv	a2,a5
   12e8c:	00050593          	mv	a1,a0
   12e90:	00040513          	mv	a0,s0
   12e94:	071020ef          	jal	15704 <__pow5mult>
   12e98:	00100793          	li	a5,1
   12e9c:	00050c13          	mv	s8,a0
   12ea0:	02013803          	ld	a6,32(sp)
   12ea4:	3d37c263          	blt	a5,s3,13268 <_dtoa_r+0xb80>
   12ea8:	00cd1793          	slli	a5,s10,0xc
   12eac:	3a079e63          	bnez	a5,13268 <_dtoa_r+0xb80>
   12eb0:	420d5693          	srai	a3,s10,0x20
   12eb4:	7ff007b7          	lui	a5,0x7ff00
   12eb8:	00f6f7b3          	and	a5,a3,a5
   12ebc:	02012023          	sw	zero,32(sp)
   12ec0:	00078a63          	beqz	a5,12ed4 <_dtoa_r+0x7ec>
   12ec4:	00100793          	li	a5,1
   12ec8:	0018081b          	addiw	a6,a6,1
   12ecc:	001d8d9b          	addiw	s11,s11,1
   12ed0:	02f12023          	sw	a5,32(sp)
   12ed4:	02812783          	lw	a5,40(sp)
   12ed8:	00100513          	li	a0,1
   12edc:	08078863          	beqz	a5,12f6c <_dtoa_r+0x884>
   12ee0:	014c2783          	lw	a5,20(s8)
   12ee4:	03013423          	sd	a6,40(sp)
   12ee8:	fff7879b          	addiw	a5,a5,-1
   12eec:	00478793          	addi	a5,a5,4 # 7ff00004 <_gp+0x7fee4514>
   12ef0:	00279793          	slli	a5,a5,0x2
   12ef4:	00fc07b3          	add	a5,s8,a5
   12ef8:	0087a503          	lw	a0,8(a5)
   12efc:	4b4020ef          	jal	153b0 <__hi0bits>
   12f00:	02000793          	li	a5,32
   12f04:	40a7853b          	subw	a0,a5,a0
   12f08:	02813803          	ld	a6,40(sp)
   12f0c:	0600006f          	j	12f6c <_dtoa_r+0x884>
   12f10:	d20b8753          	fcvt.d.w	fa4,s7
   12f14:	a2e7a7d3          	feq.d	a5,fa5,fa4
   12f18:	0017b793          	seqz	a5,a5
   12f1c:	40fb8bbb          	subw	s7,s7,a5
   12f20:	9f9ff06f          	j	12918 <_dtoa_r+0x230>
   12f24:	4178083b          	subw	a6,a6,s7
   12f28:	41700c3b          	negw	s8,s7
   12f2c:	02012423          	sw	zero,40(sp)
   12f30:	a41ff06f          	j	12970 <_dtoa_r+0x288>
   12f34:	000c0693          	mv	a3,s8
   12f38:	00080493          	mv	s1,a6
   12f3c:	00000a13          	li	s4,0
   12f40:	e8dff06f          	j	12dcc <_dtoa_r+0x6e4>
   12f44:	000d049b          	sext.w	s1,s10
   12f48:	40d787bb          	subw	a5,a5,a3
   12f4c:	00f494bb          	sllw	s1,s1,a5
   12f50:	959ff06f          	j	128a8 <_dtoa_r+0x1c0>
   12f54:	02012823          	sw	zero,48(sp)
   12f58:	9f9ff06f          	j	12950 <_dtoa_r+0x268>
   12f5c:	00100793          	li	a5,1
   12f60:	0737d4e3          	ble	s3,a5,137c8 <_dtoa_r+0x10e0>
   12f64:	02012023          	sw	zero,32(sp)
   12f68:	00078513          	mv	a0,a5
   12f6c:	01b507bb          	addw	a5,a0,s11
   12f70:	01f7f793          	andi	a5,a5,31
   12f74:	1a078663          	beqz	a5,13120 <_dtoa_r+0xa38>
   12f78:	02000693          	li	a3,32
   12f7c:	40f686bb          	subw	a3,a3,a5
   12f80:	00400613          	li	a2,4
   12f84:	04d658e3          	ble	a3,a2,137d4 <_dtoa_r+0x10ec>
   12f88:	01c00693          	li	a3,28
   12f8c:	40f687bb          	subw	a5,a3,a5
   12f90:	00f8083b          	addw	a6,a6,a5
   12f94:	00f484bb          	addw	s1,s1,a5
   12f98:	00fd8dbb          	addw	s11,s11,a5
   12f9c:	01005c63          	blez	a6,12fb4 <_dtoa_r+0x8cc>
   12fa0:	00090593          	mv	a1,s2
   12fa4:	00080613          	mv	a2,a6
   12fa8:	00040513          	mv	a0,s0
   12fac:	091020ef          	jal	1583c <__lshift>
   12fb0:	00050913          	mv	s2,a0
   12fb4:	01b05c63          	blez	s11,12fcc <_dtoa_r+0x8e4>
   12fb8:	000c0593          	mv	a1,s8
   12fbc:	000d8613          	mv	a2,s11
   12fc0:	00040513          	mv	a0,s0
   12fc4:	079020ef          	jal	1583c <__lshift>
   12fc8:	00050c13          	mv	s8,a0
   12fcc:	03012783          	lw	a5,48(sp)
   12fd0:	22079663          	bnez	a5,131fc <_dtoa_r+0xb14>
   12fd4:	3f505e63          	blez	s5,133d0 <_dtoa_r+0xce8>
   12fd8:	01012783          	lw	a5,16(sp)
   12fdc:	14078c63          	beqz	a5,13134 <_dtoa_r+0xa4c>
   12fe0:	00905c63          	blez	s1,12ff8 <_dtoa_r+0x910>
   12fe4:	000a0593          	mv	a1,s4
   12fe8:	00048613          	mv	a2,s1
   12fec:	00040513          	mv	a0,s0
   12ff0:	04d020ef          	jal	1583c <__lshift>
   12ff4:	00050a13          	mv	s4,a0
   12ff8:	02012783          	lw	a5,32(sp)
   12ffc:	000a0d93          	mv	s11,s4
   13000:	5a079463          	bnez	a5,135a8 <_dtoa_r+0xec0>
   13004:	fffa849b          	addiw	s1,s5,-1
   13008:	00813783          	ld	a5,8(sp)
   1300c:	02049493          	slli	s1,s1,0x20
   13010:	0204d493          	srli	s1,s1,0x20
   13014:	00148493          	addi	s1,s1,1
   13018:	009784b3          	add	s1,a5,s1
   1301c:	00078c93          	mv	s9,a5
   13020:	001d7793          	andi	a5,s10,1
   13024:	00f13823          	sd	a5,16(sp)
   13028:	000c0593          	mv	a1,s8
   1302c:	00090513          	mv	a0,s2
   13030:	cccff0ef          	jal	124fc <quorem>
   13034:	00050d13          	mv	s10,a0
   13038:	02a12823          	sw	a0,48(sp)
   1303c:	000a0593          	mv	a1,s4
   13040:	00090513          	mv	a0,s2
   13044:	159020ef          	jal	1599c <__mcmp>
   13048:	00050a93          	mv	s5,a0
   1304c:	000d8613          	mv	a2,s11
   13050:	000c0593          	mv	a1,s8
   13054:	00040513          	mv	a0,s0
   13058:	1a5020ef          	jal	159fc <__mdiff>
   1305c:	01052683          	lw	a3,16(a0)
   13060:	00050793          	mv	a5,a0
   13064:	030d0d1b          	addiw	s10,s10,48
   13068:	00100713          	li	a4,1
   1306c:	00069e63          	bnez	a3,13088 <_dtoa_r+0x9a0>
   13070:	00050593          	mv	a1,a0
   13074:	02a13023          	sd	a0,32(sp)
   13078:	00090513          	mv	a0,s2
   1307c:	121020ef          	jal	1599c <__mcmp>
   13080:	02013783          	ld	a5,32(sp)
   13084:	00050713          	mv	a4,a0
   13088:	00078593          	mv	a1,a5
   1308c:	00040513          	mv	a0,s0
   13090:	02e13023          	sd	a4,32(sp)
   13094:	0bc020ef          	jal	15150 <_Bfree>
   13098:	02013703          	ld	a4,32(sp)
   1309c:	013767b3          	or	a5,a4,s3
   130a0:	00079663          	bnez	a5,130ac <_dtoa_r+0x9c4>
   130a4:	01012783          	lw	a5,16(sp)
   130a8:	24078063          	beqz	a5,132e8 <_dtoa_r+0xc00>
   130ac:	260ac463          	bltz	s5,13314 <_dtoa_r+0xc2c>
   130b0:	013aeab3          	or	s5,s5,s3
   130b4:	000a9663          	bnez	s5,130c0 <_dtoa_r+0x9d8>
   130b8:	01012783          	lw	a5,16(sp)
   130bc:	24078c63          	beqz	a5,13314 <_dtoa_r+0xc2c>
   130c0:	5ee04263          	bgtz	a4,136a4 <_dtoa_r+0xfbc>
   130c4:	001c8c93          	addi	s9,s9,1
   130c8:	ffac8fa3          	sb	s10,-1(s9)
   130cc:	5f948463          	beq	s1,s9,136b4 <_dtoa_r+0xfcc>
   130d0:	00090593          	mv	a1,s2
   130d4:	00000693          	li	a3,0
   130d8:	00a00613          	li	a2,10
   130dc:	00040513          	mv	a0,s0
   130e0:	094020ef          	jal	15174 <__multadd>
   130e4:	00050913          	mv	s2,a0
   130e8:	00000693          	li	a3,0
   130ec:	00a00613          	li	a2,10
   130f0:	000a0593          	mv	a1,s4
   130f4:	00040513          	mv	a0,s0
   130f8:	27ba0463          	beq	s4,s11,13360 <_dtoa_r+0xc78>
   130fc:	078020ef          	jal	15174 <__multadd>
   13100:	000d8593          	mv	a1,s11
   13104:	00050a13          	mv	s4,a0
   13108:	00000693          	li	a3,0
   1310c:	00a00613          	li	a2,10
   13110:	00040513          	mv	a0,s0
   13114:	060020ef          	jal	15174 <__multadd>
   13118:	00050d93          	mv	s11,a0
   1311c:	f0dff06f          	j	13028 <_dtoa_r+0x940>
   13120:	01c00793          	li	a5,28
   13124:	00f8083b          	addw	a6,a6,a5
   13128:	00f484bb          	addw	s1,s1,a5
   1312c:	00fd8dbb          	addw	s11,s11,a5
   13130:	e6dff06f          	j	12f9c <_dtoa_r+0x8b4>
   13134:	00813483          	ld	s1,8(sp)
   13138:	00100993          	li	s3,1
   1313c:	0100006f          	j	1314c <_dtoa_r+0xa64>
   13140:	034020ef          	jal	15174 <__multadd>
   13144:	00050913          	mv	s2,a0
   13148:	0019899b          	addiw	s3,s3,1
   1314c:	000c0593          	mv	a1,s8
   13150:	00090513          	mv	a0,s2
   13154:	ba8ff0ef          	jal	124fc <quorem>
   13158:	03050d1b          	addiw	s10,a0,48
   1315c:	00148493          	addi	s1,s1,1
   13160:	ffa48fa3          	sb	s10,-1(s1)
   13164:	00000693          	li	a3,0
   13168:	00a00613          	li	a2,10
   1316c:	00090593          	mv	a1,s2
   13170:	00040513          	mv	a0,s0
   13174:	fd59c6e3          	blt	s3,s5,13140 <_dtoa_r+0xa58>
   13178:	00000993          	li	s3,0
   1317c:	00090593          	mv	a1,s2
   13180:	00100613          	li	a2,1
   13184:	00040513          	mv	a0,s0
   13188:	6b4020ef          	jal	1583c <__lshift>
   1318c:	000c0593          	mv	a1,s8
   13190:	02a13023          	sd	a0,32(sp)
   13194:	009020ef          	jal	1599c <__mcmp>
   13198:	34a05463          	blez	a0,134e0 <_dtoa_r+0xdf8>
   1319c:	fff4c703          	lbu	a4,-1(s1)
   131a0:	03900693          	li	a3,57
   131a4:	0140006f          	j	131b8 <_dtoa_r+0xad0>
   131a8:	00813703          	ld	a4,8(sp)
   131ac:	26e78a63          	beq	a5,a4,13420 <_dtoa_r+0xd38>
   131b0:	fff7c703          	lbu	a4,-1(a5)
   131b4:	00078493          	mv	s1,a5
   131b8:	fff48793          	addi	a5,s1,-1
   131bc:	fed706e3          	beq	a4,a3,131a8 <_dtoa_r+0xac0>
   131c0:	0017071b          	addiw	a4,a4,1
   131c4:	00e78023          	sb	a4,0(a5)
   131c8:	000c0593          	mv	a1,s8
   131cc:	00040513          	mv	a0,s0
   131d0:	781010ef          	jal	15150 <_Bfree>
   131d4:	9e0a0ae3          	beqz	s4,12bc8 <_dtoa_r+0x4e0>
   131d8:	00098a63          	beqz	s3,131ec <_dtoa_r+0xb04>
   131dc:	01498863          	beq	s3,s4,131ec <_dtoa_r+0xb04>
   131e0:	00098593          	mv	a1,s3
   131e4:	00040513          	mv	a0,s0
   131e8:	769010ef          	jal	15150 <_Bfree>
   131ec:	000a0593          	mv	a1,s4
   131f0:	00040513          	mv	a0,s0
   131f4:	75d010ef          	jal	15150 <_Bfree>
   131f8:	9d1ff06f          	j	12bc8 <_dtoa_r+0x4e0>
   131fc:	000c0593          	mv	a1,s8
   13200:	00090513          	mv	a0,s2
   13204:	798020ef          	jal	1599c <__mcmp>
   13208:	dc0556e3          	bgez	a0,12fd4 <_dtoa_r+0x8ec>
   1320c:	00090593          	mv	a1,s2
   13210:	00000693          	li	a3,0
   13214:	00a00613          	li	a2,10
   13218:	00040513          	mv	a0,s0
   1321c:	759010ef          	jal	15174 <__multadd>
   13220:	01012783          	lw	a5,16(sp)
   13224:	00050913          	mv	s2,a0
   13228:	fffb8b9b          	addiw	s7,s7,-1
   1322c:	56079063          	bnez	a5,1378c <_dtoa_r+0x10a4>
   13230:	03412783          	lw	a5,52(sp)
   13234:	00078a93          	mv	s5,a5
   13238:	eef04ee3          	bgtz	a5,13134 <_dtoa_r+0xa4c>
   1323c:	00200793          	li	a5,2
   13240:	5937c063          	blt	a5,s3,137c0 <_dtoa_r+0x10d8>
   13244:	000c0593          	mv	a1,s8
   13248:	ab4ff0ef          	jal	124fc <quorem>
   1324c:	00813783          	ld	a5,8(sp)
   13250:	03050d1b          	addiw	s10,a0,48
   13254:	00178493          	addi	s1,a5,1
   13258:	ffa48fa3          	sb	s10,-1(s1)
   1325c:	f1dff06f          	j	13178 <_dtoa_r+0xa90>
   13260:	000d8793          	mv	a5,s11
   13264:	b79ff06f          	j	12ddc <_dtoa_r+0x6f4>
   13268:	02012023          	sw	zero,32(sp)
   1326c:	c75ff06f          	j	12ee0 <_dtoa_r+0x7f8>
   13270:	00100793          	li	a5,1
   13274:	00f12823          	sw	a5,16(sp)
   13278:	0f905c63          	blez	s9,13370 <_dtoa_r+0xc88>
   1327c:	000c8513          	mv	a0,s9
   13280:	000c8493          	mv	s1,s9
   13284:	03912a23          	sw	s9,52(sp)
   13288:	000c8a93          	mv	s5,s9
   1328c:	f3cff06f          	j	129c8 <_dtoa_r+0x2e0>
   13290:	a1504ce3          	bgtz	s5,12ca8 <_dtoa_r+0x5c0>
   13294:	1e0a9e63          	bnez	s5,13490 <_dtoa_r+0xda8>
   13298:	0001b7b7          	lui	a5,0x1b
   1329c:	3607b787          	fld	fa5,864(a5) # 1b360 <__wctomb+0x40>
   132a0:	00000c13          	li	s8,0
   132a4:	00000a13          	li	s4,0
   132a8:	12f6f6d3          	fmul.d	fa3,fa3,fa5
   132ac:	f20d07d3          	fmv.d.x	fa5,s10
   132b0:	a2d78753          	fle.d	a4,fa5,fa3
   132b4:	14070a63          	beqz	a4,13408 <_dtoa_r+0xd20>
   132b8:	00813483          	ld	s1,8(sp)
   132bc:	fffccb93          	not	s7,s9
   132c0:	000c0593          	mv	a1,s8
   132c4:	00040513          	mv	a0,s0
   132c8:	689010ef          	jal	15150 <_Bfree>
   132cc:	8e0a0ee3          	beqz	s4,12bc8 <_dtoa_r+0x4e0>
   132d0:	f1dff06f          	j	131ec <_dtoa_r+0xb04>
   132d4:	3e090c63          	beqz	s2,136cc <_dtoa_r+0xfe4>
   132d8:	4337879b          	addiw	a5,a5,1075
   132dc:	000c0693          	mv	a3,s8
   132e0:	00080493          	mv	s1,a6
   132e4:	abdff06f          	j	12da0 <_dtoa_r+0x6b8>
   132e8:	03900793          	li	a5,57
   132ec:	04fd0a63          	beq	s10,a5,13340 <_dtoa_r+0xc58>
   132f0:	01505663          	blez	s5,132fc <_dtoa_r+0xc14>
   132f4:	03012783          	lw	a5,48(sp)
   132f8:	03178d1b          	addiw	s10,a5,49
   132fc:	000a0993          	mv	s3,s4
   13300:	001c8493          	addi	s1,s9,1
   13304:	01ac8023          	sb	s10,0(s9)
   13308:	000d8a13          	mv	s4,s11
   1330c:	03213023          	sd	s2,32(sp)
   13310:	eb9ff06f          	j	131c8 <_dtoa_r+0xae0>
   13314:	fee054e3          	blez	a4,132fc <_dtoa_r+0xc14>
   13318:	00090593          	mv	a1,s2
   1331c:	00100613          	li	a2,1
   13320:	00040513          	mv	a0,s0
   13324:	518020ef          	jal	1583c <__lshift>
   13328:	000c0593          	mv	a1,s8
   1332c:	00050913          	mv	s2,a0
   13330:	66c020ef          	jal	1599c <__mcmp>
   13334:	44a05063          	blez	a0,13774 <_dtoa_r+0x108c>
   13338:	03900793          	li	a5,57
   1333c:	fafd1ce3          	bne	s10,a5,132f4 <_dtoa_r+0xc0c>
   13340:	03900793          	li	a5,57
   13344:	000a0993          	mv	s3,s4
   13348:	001c8493          	addi	s1,s9,1
   1334c:	00fc8023          	sb	a5,0(s9)
   13350:	000d8a13          	mv	s4,s11
   13354:	03213023          	sd	s2,32(sp)
   13358:	03900713          	li	a4,57
   1335c:	e45ff06f          	j	131a0 <_dtoa_r+0xab8>
   13360:	615010ef          	jal	15174 <__multadd>
   13364:	00050a13          	mv	s4,a0
   13368:	00050d93          	mv	s11,a0
   1336c:	cbdff06f          	j	13028 <_dtoa_r+0x940>
   13370:	00100493          	li	s1,1
   13374:	02912a23          	sw	s1,52(sp)
   13378:	00048a93          	mv	s5,s1
   1337c:	00048c93          	mv	s9,s1
   13380:	06042423          	sw	zero,104(s0)
   13384:	00000593          	li	a1,0
   13388:	e74ff06f          	j	129fc <_dtoa_r+0x314>
   1338c:	00012823          	sw	zero,16(sp)
   13390:	00200793          	li	a5,2
   13394:	eef982e3          	beq	s3,a5,13278 <_dtoa_r+0xb90>
   13398:	06042423          	sw	zero,104(s0)
   1339c:	00000593          	li	a1,0
   133a0:	00040513          	mv	a0,s0
   133a4:	03013c23          	sd	a6,56(sp)
   133a8:	4fd010ef          	jal	150a4 <_Balloc>
   133ac:	fff00a93          	li	s5,-1
   133b0:	00100793          	li	a5,1
   133b4:	00a13423          	sd	a0,8(sp)
   133b8:	06a43023          	sd	a0,96(s0)
   133bc:	03512a23          	sw	s5,52(sp)
   133c0:	00000c93          	li	s9,0
   133c4:	00f12823          	sw	a5,16(sp)
   133c8:	03813803          	ld	a6,56(sp)
   133cc:	8b5ff06f          	j	12c80 <_dtoa_r+0x598>
   133d0:	00200793          	li	a5,2
   133d4:	c137d2e3          	ble	s3,a5,12fd8 <_dtoa_r+0x8f0>
   133d8:	300a9663          	bnez	s5,136e4 <_dtoa_r+0xffc>
   133dc:	000c0593          	mv	a1,s8
   133e0:	00000693          	li	a3,0
   133e4:	00500613          	li	a2,5
   133e8:	00040513          	mv	a0,s0
   133ec:	589010ef          	jal	15174 <__multadd>
   133f0:	00050593          	mv	a1,a0
   133f4:	00050c13          	mv	s8,a0
   133f8:	00090513          	mv	a0,s2
   133fc:	5a0020ef          	jal	1599c <__mcmp>
   13400:	03213023          	sd	s2,32(sp)
   13404:	eaa05ae3          	blez	a0,132b8 <_dtoa_r+0xbd0>
   13408:	00813703          	ld	a4,8(sp)
   1340c:	03100793          	li	a5,49
   13410:	001b8b9b          	addiw	s7,s7,1
   13414:	00170493          	addi	s1,a4,1
   13418:	00f70023          	sb	a5,0(a4)
   1341c:	ea5ff06f          	j	132c0 <_dtoa_r+0xbd8>
   13420:	00813703          	ld	a4,8(sp)
   13424:	03100793          	li	a5,49
   13428:	001b8b9b          	addiw	s7,s7,1
   1342c:	00f70023          	sb	a5,0(a4)
   13430:	d99ff06f          	j	131c8 <_dtoa_r+0xae0>
   13434:	00012823          	sw	zero,16(sp)
   13438:	d78ff06f          	j	129b0 <_dtoa_r+0x2c8>
   1343c:	0001b7b7          	lui	a5,0x1b
   13440:	d20706d3          	fcvt.d.w	fa3,a4
   13444:	3587b707          	fld	fa4,856(a5) # 1b358 <__wctomb+0x38>
   13448:	fcc006b7          	lui	a3,0xfcc00
   1344c:	72d7f743          	fmadd.d	fa4,fa5,fa3,fa4
   13450:	e2070753          	fmv.x.d	a4,fa4
   13454:	42075793          	srai	a5,a4,0x20
   13458:	00d787bb          	addw	a5,a5,a3
   1345c:	02071713          	slli	a4,a4,0x20
   13460:	02079793          	slli	a5,a5,0x20
   13464:	02075713          	srli	a4,a4,0x20
   13468:	00f76733          	or	a4,a4,a5
   1346c:	0001b7b7          	lui	a5,0x1b
   13470:	3607b707          	fld	fa4,864(a5) # 1b360 <__wctomb+0x40>
   13474:	f20706d3          	fmv.d.x	fa3,a4
   13478:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
   1347c:	a2f697d3          	flt.d	a5,fa3,fa5
   13480:	16079463          	bnez	a5,135e8 <_dtoa_r+0xf00>
   13484:	22d69753          	fneg.d	fa4,fa3
   13488:	a2e797d3          	flt.d	a5,fa5,fa4
   1348c:	06078e63          	beqz	a5,13508 <_dtoa_r+0xe20>
   13490:	00000c13          	li	s8,0
   13494:	00000a13          	li	s4,0
   13498:	e21ff06f          	j	132b8 <_dtoa_r+0xbd0>
   1349c:	00090593          	mv	a1,s2
   134a0:	000c0613          	mv	a2,s8
   134a4:	00040513          	mv	a0,s0
   134a8:	03013023          	sd	a6,32(sp)
   134ac:	258020ef          	jal	15704 <__pow5mult>
   134b0:	00050913          	mv	s2,a0
   134b4:	02013803          	ld	a6,32(sp)
   134b8:	9b1ff06f          	j	12e68 <_dtoa_r+0x780>
   134bc:	00813503          	ld	a0,8(sp)
   134c0:	af4ff06f          	j	127b4 <_dtoa_r+0xcc>
   134c4:	02812783          	lw	a5,40(sp)
   134c8:	41868c3b          	subw	s8,a3,s8
   134cc:	018787bb          	addw	a5,a5,s8
   134d0:	02f12423          	sw	a5,40(sp)
   134d4:	00068c13          	mv	s8,a3
   134d8:	00000693          	li	a3,0
   134dc:	8b9ff06f          	j	12d94 <_dtoa_r+0x6ac>
   134e0:	00051663          	bnez	a0,134ec <_dtoa_r+0xe04>
   134e4:	001d7d13          	andi	s10,s10,1
   134e8:	ca0d1ae3          	bnez	s10,1319c <_dtoa_r+0xab4>
   134ec:	03000693          	li	a3,48
   134f0:	0080006f          	j	134f8 <_dtoa_r+0xe10>
   134f4:	00070493          	mv	s1,a4
   134f8:	fff4c783          	lbu	a5,-1(s1)
   134fc:	fff48713          	addi	a4,s1,-1
   13500:	fed78ae3          	beq	a5,a3,134f4 <_dtoa_r+0xe0c>
   13504:	cc5ff06f          	j	131c8 <_dtoa_r+0xae0>
   13508:	03813d03          	ld	s10,56(sp)
   1350c:	f74ff06f          	j	12c80 <_dtoa_r+0x598>
   13510:	a2f6a753          	feq.d	a4,fa3,fa5
   13514:	00068493          	mv	s1,a3
   13518:	ea070863          	beqz	a4,12bc8 <_dtoa_r+0x4e0>
   1351c:	0017f793          	andi	a5,a5,1
   13520:	ea078463          	beqz	a5,12bc8 <_dtoa_r+0x4e0>
   13524:	fff6c783          	lbu	a5,-1(a3) # fffffffffcbfffff <_gp+0xfffffffffcbe450f>
   13528:	825ff06f          	j	12d4c <_dtoa_r+0x664>
   1352c:	417007bb          	negw	a5,s7
   13530:	03813787          	fld	fa5,56(sp)
   13534:	00200713          	li	a4,2
   13538:	d6078063          	beqz	a5,12a98 <_dtoa_r+0x3b0>
   1353c:	00f7f693          	andi	a3,a5,15
   13540:	00019637          	lui	a2,0x19
   13544:	00369693          	slli	a3,a3,0x3
   13548:	f7860613          	addi	a2,a2,-136 # 18f78 <__mprec_tens>
   1354c:	00c686b3          	add	a3,a3,a2
   13550:	0006b787          	fld	fa5,0(a3)
   13554:	03813707          	fld	fa4,56(sp)
   13558:	4047d79b          	sraiw	a5,a5,0x4
   1355c:	12f777d3          	fmul.d	fa5,fa4,fa5
   13560:	d2078c63          	beqz	a5,12a98 <_dtoa_r+0x3b0>
   13564:	000196b7          	lui	a3,0x19
   13568:	06868693          	addi	a3,a3,104 # 19068 <__mprec_bigtens>
   1356c:	0017f613          	andi	a2,a5,1
   13570:	4017d79b          	sraiw	a5,a5,0x1
   13574:	00060863          	beqz	a2,13584 <_dtoa_r+0xe9c>
   13578:	0006b707          	fld	fa4,0(a3)
   1357c:	0017071b          	addiw	a4,a4,1
   13580:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   13584:	00868693          	addi	a3,a3,8
   13588:	fe0792e3          	bnez	a5,1356c <_dtoa_r+0xe84>
   1358c:	d0cff06f          	j	12a98 <_dtoa_r+0x3b0>
   13590:	00813683          	ld	a3,8(sp)
   13594:	03000793          	li	a5,48
   13598:	001b8b9b          	addiw	s7,s7,1
   1359c:	00f68023          	sb	a5,0(a3)
   135a0:	fff4c783          	lbu	a5,-1(s1)
   135a4:	fc8ff06f          	j	12d6c <_dtoa_r+0x684>
   135a8:	008a2583          	lw	a1,8(s4)
   135ac:	00040513          	mv	a0,s0
   135b0:	2f5010ef          	jal	150a4 <_Balloc>
   135b4:	014a2603          	lw	a2,20(s4)
   135b8:	00050493          	mv	s1,a0
   135bc:	010a0593          	addi	a1,s4,16
   135c0:	00260613          	addi	a2,a2,2
   135c4:	00261613          	slli	a2,a2,0x2
   135c8:	01050513          	addi	a0,a0,16
   135cc:	0d5010ef          	jal	14ea0 <memcpy>
   135d0:	00100613          	li	a2,1
   135d4:	00048593          	mv	a1,s1
   135d8:	00040513          	mv	a0,s0
   135dc:	260020ef          	jal	1583c <__lshift>
   135e0:	00050d93          	mv	s11,a0
   135e4:	a21ff06f          	j	13004 <_dtoa_r+0x91c>
   135e8:	00000c13          	li	s8,0
   135ec:	00000a13          	li	s4,0
   135f0:	e19ff06f          	j	13408 <_dtoa_r+0xd20>
   135f4:	fff6079b          	addiw	a5,a2,-1
   135f8:	00019537          	lui	a0,0x19
   135fc:	c20795d3          	fcvt.w.d	a1,fa5,rtz
   13600:	00379793          	slli	a5,a5,0x3
   13604:	f7850513          	addi	a0,a0,-136 # 18f78 <__mprec_tens>
   13608:	00a787b3          	add	a5,a5,a0
   1360c:	0007b707          	fld	fa4,0(a5)
   13610:	00813783          	ld	a5,8(sp)
   13614:	d20586d3          	fcvt.d.w	fa3,a1
   13618:	f2070653          	fmv.d.x	fa2,a4
   1361c:	0305859b          	addiw	a1,a1,48
   13620:	00b78023          	sb	a1,0(a5)
   13624:	00178493          	addi	s1,a5,1
   13628:	00100793          	li	a5,1
   1362c:	12c77653          	fmul.d	fa2,fa4,fa2
   13630:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   13634:	04f60863          	beq	a2,a5,13684 <_dtoa_r+0xf9c>
   13638:	ffe6061b          	addiw	a2,a2,-2
   1363c:	0001b7b7          	lui	a5,0x1b
   13640:	02061593          	slli	a1,a2,0x20
   13644:	3507b687          	fld	fa3,848(a5) # 1b350 <__wctomb+0x30>
   13648:	00813783          	ld	a5,8(sp)
   1364c:	0205d593          	srli	a1,a1,0x20
   13650:	00258513          	addi	a0,a1,2
   13654:	00a78533          	add	a0,a5,a0
   13658:	00048613          	mv	a2,s1
   1365c:	12d7f7d3          	fmul.d	fa5,fa5,fa3
   13660:	00160613          	addi	a2,a2,1
   13664:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   13668:	d2078753          	fcvt.d.w	fa4,a5
   1366c:	0307879b          	addiw	a5,a5,48
   13670:	fef60fa3          	sb	a5,-1(a2)
   13674:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
   13678:	fea612e3          	bne	a2,a0,1365c <_dtoa_r+0xf74>
   1367c:	00158593          	addi	a1,a1,1
   13680:	00b484b3          	add	s1,s1,a1
   13684:	0001b7b7          	lui	a5,0x1b
   13688:	3687b707          	fld	fa4,872(a5) # 1b368 <__wctomb+0x48>
   1368c:	02e676d3          	fadd.d	fa3,fa2,fa4
   13690:	a2f697d3          	flt.d	a5,fa3,fa5
   13694:	0a078663          	beqz	a5,13740 <_dtoa_r+0x1058>
   13698:	fff4c783          	lbu	a5,-1(s1)
   1369c:	00068b93          	mv	s7,a3
   136a0:	eacff06f          	j	12d4c <_dtoa_r+0x664>
   136a4:	03900793          	li	a5,57
   136a8:	c8fd0ce3          	beq	s10,a5,13340 <_dtoa_r+0xc58>
   136ac:	001d0d1b          	addiw	s10,s10,1
   136b0:	c4dff06f          	j	132fc <_dtoa_r+0xc14>
   136b4:	000a0993          	mv	s3,s4
   136b8:	000d8a13          	mv	s4,s11
   136bc:	ac1ff06f          	j	1317c <_dtoa_r+0xa94>
   136c0:	415804bb          	subw	s1,a6,s5
   136c4:	00000793          	li	a5,0
   136c8:	ed8ff06f          	j	12da0 <_dtoa_r+0x6b8>
   136cc:	05812603          	lw	a2,88(sp)
   136d0:	03600793          	li	a5,54
   136d4:	000c0693          	mv	a3,s8
   136d8:	40c787bb          	subw	a5,a5,a2
   136dc:	00080493          	mv	s1,a6
   136e0:	ec0ff06f          	j	12da0 <_dtoa_r+0x6b8>
   136e4:	03213023          	sd	s2,32(sp)
   136e8:	bd1ff06f          	j	132b8 <_dtoa_r+0xbd0>
   136ec:	d40a88e3          	beqz	s5,1343c <_dtoa_r+0xd54>
   136f0:	03412603          	lw	a2,52(sp)
   136f4:	e0c05ae3          	blez	a2,13508 <_dtoa_r+0xe20>
   136f8:	0001b7b7          	lui	a5,0x1b
   136fc:	3507b707          	fld	fa4,848(a5) # 1b350 <__wctomb+0x30>
   13700:	0017071b          	addiw	a4,a4,1
   13704:	0001b7b7          	lui	a5,0x1b
   13708:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   1370c:	d20706d3          	fcvt.d.w	fa3,a4
   13710:	3587b707          	fld	fa4,856(a5) # 1b358 <__wctomb+0x38>
   13714:	fcc005b7          	lui	a1,0xfcc00
   13718:	fffb869b          	addiw	a3,s7,-1
   1371c:	72d7f743          	fmadd.d	fa4,fa5,fa3,fa4
   13720:	e2070753          	fmv.x.d	a4,fa4
   13724:	42075793          	srai	a5,a4,0x20
   13728:	00b787bb          	addw	a5,a5,a1
   1372c:	02071713          	slli	a4,a4,0x20
   13730:	02079793          	slli	a5,a5,0x20
   13734:	02075713          	srli	a4,a4,0x20
   13738:	00f76733          	or	a4,a4,a5
   1373c:	bb0ff06f          	j	12aec <_dtoa_r+0x404>
   13740:	0ac77753          	fsub.d	fa4,fa4,fa2
   13744:	03000613          	li	a2,48
   13748:	a2e797d3          	flt.d	a5,fa5,fa4
   1374c:	00079663          	bnez	a5,13758 <_dtoa_r+0x1070>
   13750:	db9ff06f          	j	13508 <_dtoa_r+0xe20>
   13754:	00070493          	mv	s1,a4
   13758:	fff4c783          	lbu	a5,-1(s1)
   1375c:	fff48713          	addi	a4,s1,-1
   13760:	fec78ae3          	beq	a5,a2,13754 <_dtoa_r+0x106c>
   13764:	00068b93          	mv	s7,a3
   13768:	c60ff06f          	j	12bc8 <_dtoa_r+0x4e0>
   1376c:	00068b93          	mv	s7,a3
   13770:	ddcff06f          	j	12d4c <_dtoa_r+0x664>
   13774:	b80514e3          	bnez	a0,132fc <_dtoa_r+0xc14>
   13778:	001d7793          	andi	a5,s10,1
   1377c:	b80780e3          	beqz	a5,132fc <_dtoa_r+0xc14>
   13780:	bb9ff06f          	j	13338 <_dtoa_r+0xc50>
   13784:	00048693          	mv	a3,s1
   13788:	db0ff06f          	j	12d38 <_dtoa_r+0x650>
   1378c:	000a0593          	mv	a1,s4
   13790:	00000693          	li	a3,0
   13794:	00a00613          	li	a2,10
   13798:	00040513          	mv	a0,s0
   1379c:	1d9010ef          	jal	15174 <__multadd>
   137a0:	03412783          	lw	a5,52(sp)
   137a4:	00050a13          	mv	s4,a0
   137a8:	00078a93          	mv	s5,a5
   137ac:	82f04ae3          	bgtz	a5,12fe0 <_dtoa_r+0x8f8>
   137b0:	00200793          	li	a5,2
   137b4:	0137c663          	blt	a5,s3,137c0 <_dtoa_r+0x10d8>
   137b8:	03412a83          	lw	s5,52(sp)
   137bc:	825ff06f          	j	12fe0 <_dtoa_r+0x8f8>
   137c0:	03412a83          	lw	s5,52(sp)
   137c4:	c15ff06f          	j	133d8 <_dtoa_r+0xcf0>
   137c8:	00cd1713          	slli	a4,s10,0xc
   137cc:	ee070263          	beqz	a4,12eb0 <_dtoa_r+0x7c8>
   137d0:	f94ff06f          	j	12f64 <_dtoa_r+0x87c>
   137d4:	fcc68463          	beq	a3,a2,12f9c <_dtoa_r+0x8b4>
   137d8:	03c00693          	li	a3,60
   137dc:	40f687bb          	subw	a5,a3,a5
   137e0:	945ff06f          	j	13124 <_dtoa_r+0xa3c>

00000000000137e4 <__sflush_r>:
   137e4:	01059683          	lh	a3,16(a1) # fffffffffcc00010 <_gp+0xfffffffffcbe4520>
   137e8:	fd010113          	addi	sp,sp,-48
   137ec:	00913c23          	sd	s1,24(sp)
   137f0:	03069713          	slli	a4,a3,0x30
   137f4:	03075713          	srli	a4,a4,0x30
   137f8:	01313423          	sd	s3,8(sp)
   137fc:	02113423          	sd	ra,40(sp)
   13800:	02813023          	sd	s0,32(sp)
   13804:	01213823          	sd	s2,16(sp)
   13808:	00877793          	andi	a5,a4,8
   1380c:	00058493          	mv	s1,a1
   13810:	00050993          	mv	s3,a0
   13814:	0e079863          	bnez	a5,13904 <__sflush_r+0x120>
   13818:	000017b7          	lui	a5,0x1
   1381c:	8007879b          	addiw	a5,a5,-2048
   13820:	00f6e7b3          	or	a5,a3,a5
   13824:	0107979b          	slliw	a5,a5,0x10
   13828:	0085a703          	lw	a4,8(a1)
   1382c:	4107d79b          	sraiw	a5,a5,0x10
   13830:	00f59823          	sh	a5,16(a1)
   13834:	1ae05863          	blez	a4,139e4 <__sflush_r+0x200>
   13838:	0484b703          	ld	a4,72(s1)
   1383c:	0a070463          	beqz	a4,138e4 <__sflush_r+0x100>
   13840:	03079793          	slli	a5,a5,0x30
   13844:	0307d793          	srli	a5,a5,0x30
   13848:	0009a403          	lw	s0,0(s3)
   1384c:	03379693          	slli	a3,a5,0x33
   13850:	0009a023          	sw	zero,0(s3)
   13854:	1806de63          	bgez	a3,139f0 <__sflush_r+0x20c>
   13858:	0904b603          	ld	a2,144(s1)
   1385c:	0047f793          	andi	a5,a5,4
   13860:	00078e63          	beqz	a5,1387c <__sflush_r+0x98>
   13864:	0084a683          	lw	a3,8(s1)
   13868:	0584b783          	ld	a5,88(s1)
   1386c:	40d60633          	sub	a2,a2,a3
   13870:	00078663          	beqz	a5,1387c <__sflush_r+0x98>
   13874:	0704a783          	lw	a5,112(s1)
   13878:	40f60633          	sub	a2,a2,a5
   1387c:	0304b583          	ld	a1,48(s1)
   13880:	00000693          	li	a3,0
   13884:	00098513          	mv	a0,s3
   13888:	000700e7          	jalr	a4
   1388c:	fff00793          	li	a5,-1
   13890:	0ef50c63          	beq	a0,a5,13988 <__sflush_r+0x1a4>
   13894:	0104d683          	lhu	a3,16(s1)
   13898:	fffff7b7          	lui	a5,0xfffff
   1389c:	7ff7879b          	addiw	a5,a5,2047
   138a0:	0184b703          	ld	a4,24(s1)
   138a4:	00f6f7b3          	and	a5,a3,a5
   138a8:	0107979b          	slliw	a5,a5,0x10
   138ac:	4107d79b          	sraiw	a5,a5,0x10
   138b0:	00e4b023          	sd	a4,0(s1)
   138b4:	00f49823          	sh	a5,16(s1)
   138b8:	0004a423          	sw	zero,8(s1)
   138bc:	03379713          	slli	a4,a5,0x33
   138c0:	10074e63          	bltz	a4,139dc <__sflush_r+0x1f8>
   138c4:	0584b583          	ld	a1,88(s1)
   138c8:	0089a023          	sw	s0,0(s3)
   138cc:	00058c63          	beqz	a1,138e4 <__sflush_r+0x100>
   138d0:	07448793          	addi	a5,s1,116
   138d4:	00f58663          	beq	a1,a5,138e0 <__sflush_r+0xfc>
   138d8:	00098513          	mv	a0,s3
   138dc:	678000ef          	jal	13f54 <_free_r>
   138e0:	0404bc23          	sd	zero,88(s1)
   138e4:	00000513          	li	a0,0
   138e8:	02813083          	ld	ra,40(sp)
   138ec:	02013403          	ld	s0,32(sp)
   138f0:	01813483          	ld	s1,24(sp)
   138f4:	01013903          	ld	s2,16(sp)
   138f8:	00813983          	ld	s3,8(sp)
   138fc:	03010113          	addi	sp,sp,48
   13900:	00008067          	ret
   13904:	0185b903          	ld	s2,24(a1)
   13908:	fc090ee3          	beqz	s2,138e4 <__sflush_r+0x100>
   1390c:	0005b403          	ld	s0,0(a1)
   13910:	00377713          	andi	a4,a4,3
   13914:	0125b023          	sd	s2,0(a1)
   13918:	4124043b          	subw	s0,s0,s2
   1391c:	00000793          	li	a5,0
   13920:	00071463          	bnez	a4,13928 <__sflush_r+0x144>
   13924:	0205a783          	lw	a5,32(a1)
   13928:	00f4a623          	sw	a5,12(s1)
   1392c:	00804863          	bgtz	s0,1393c <__sflush_r+0x158>
   13930:	fb5ff06f          	j	138e4 <__sflush_r+0x100>
   13934:	00a90933          	add	s2,s2,a0
   13938:	fa8056e3          	blez	s0,138e4 <__sflush_r+0x100>
   1393c:	0404b783          	ld	a5,64(s1)
   13940:	0304b583          	ld	a1,48(s1)
   13944:	00040693          	mv	a3,s0
   13948:	00090613          	mv	a2,s2
   1394c:	00098513          	mv	a0,s3
   13950:	000780e7          	jalr	a5
   13954:	40a4043b          	subw	s0,s0,a0
   13958:	fca04ee3          	bgtz	a0,13934 <__sflush_r+0x150>
   1395c:	0104d783          	lhu	a5,16(s1)
   13960:	02813083          	ld	ra,40(sp)
   13964:	fff00513          	li	a0,-1
   13968:	0407e793          	ori	a5,a5,64
   1396c:	00f49823          	sh	a5,16(s1)
   13970:	02013403          	ld	s0,32(sp)
   13974:	01813483          	ld	s1,24(sp)
   13978:	01013903          	ld	s2,16(sp)
   1397c:	00813983          	ld	s3,8(sp)
   13980:	03010113          	addi	sp,sp,48
   13984:	00008067          	ret
   13988:	0009a703          	lw	a4,0(s3)
   1398c:	01d00793          	li	a5,29
   13990:	fce7e6e3          	bltu	a5,a4,1395c <__sflush_r+0x178>
   13994:	204007b7          	lui	a5,0x20400
   13998:	00178793          	addi	a5,a5,1 # 20400001 <_gp+0x203e4511>
   1399c:	00e7d7b3          	srl	a5,a5,a4
   139a0:	0017f793          	andi	a5,a5,1
   139a4:	fa078ce3          	beqz	a5,1395c <__sflush_r+0x178>
   139a8:	0104d603          	lhu	a2,16(s1)
   139ac:	fffff7b7          	lui	a5,0xfffff
   139b0:	7ff7879b          	addiw	a5,a5,2047
   139b4:	0184b683          	ld	a3,24(s1)
   139b8:	00f677b3          	and	a5,a2,a5
   139bc:	0107979b          	slliw	a5,a5,0x10
   139c0:	4107d79b          	sraiw	a5,a5,0x10
   139c4:	00d4b023          	sd	a3,0(s1)
   139c8:	00f49823          	sh	a5,16(s1)
   139cc:	0004a423          	sw	zero,8(s1)
   139d0:	03379693          	slli	a3,a5,0x33
   139d4:	ee06d8e3          	bgez	a3,138c4 <__sflush_r+0xe0>
   139d8:	ee0716e3          	bnez	a4,138c4 <__sflush_r+0xe0>
   139dc:	08a4b823          	sd	a0,144(s1)
   139e0:	ee5ff06f          	j	138c4 <__sflush_r+0xe0>
   139e4:	0705a703          	lw	a4,112(a1)
   139e8:	e4e048e3          	bgtz	a4,13838 <__sflush_r+0x54>
   139ec:	ef9ff06f          	j	138e4 <__sflush_r+0x100>
   139f0:	0304b583          	ld	a1,48(s1)
   139f4:	00000613          	li	a2,0
   139f8:	00100693          	li	a3,1
   139fc:	00098513          	mv	a0,s3
   13a00:	000700e7          	jalr	a4
   13a04:	fff00793          	li	a5,-1
   13a08:	00050613          	mv	a2,a0
   13a0c:	00f50863          	beq	a0,a5,13a1c <__sflush_r+0x238>
   13a10:	0104d783          	lhu	a5,16(s1)
   13a14:	0484b703          	ld	a4,72(s1)
   13a18:	e45ff06f          	j	1385c <__sflush_r+0x78>
   13a1c:	0009a783          	lw	a5,0(s3)
   13a20:	fe0788e3          	beqz	a5,13a10 <__sflush_r+0x22c>
   13a24:	01d00713          	li	a4,29
   13a28:	00e78663          	beq	a5,a4,13a34 <__sflush_r+0x250>
   13a2c:	01600713          	li	a4,22
   13a30:	00e79863          	bne	a5,a4,13a40 <__sflush_r+0x25c>
   13a34:	0089a023          	sw	s0,0(s3)
   13a38:	00000513          	li	a0,0
   13a3c:	eadff06f          	j	138e8 <__sflush_r+0x104>
   13a40:	0104d783          	lhu	a5,16(s1)
   13a44:	0407e793          	ori	a5,a5,64
   13a48:	00f49823          	sh	a5,16(s1)
   13a4c:	e9dff06f          	j	138e8 <__sflush_r+0x104>

0000000000013a50 <_fflush_r>:
   13a50:	fe010113          	addi	sp,sp,-32
   13a54:	00813823          	sd	s0,16(sp)
   13a58:	00113c23          	sd	ra,24(sp)
   13a5c:	00050413          	mv	s0,a0
   13a60:	00050663          	beqz	a0,13a6c <_fflush_r+0x1c>
   13a64:	05052783          	lw	a5,80(a0)
   13a68:	02078a63          	beqz	a5,13a9c <_fflush_r+0x4c>
   13a6c:	01059783          	lh	a5,16(a1)
   13a70:	00079c63          	bnez	a5,13a88 <_fflush_r+0x38>
   13a74:	01813083          	ld	ra,24(sp)
   13a78:	00000513          	li	a0,0
   13a7c:	01013403          	ld	s0,16(sp)
   13a80:	02010113          	addi	sp,sp,32
   13a84:	00008067          	ret
   13a88:	00040513          	mv	a0,s0
   13a8c:	01813083          	ld	ra,24(sp)
   13a90:	01013403          	ld	s0,16(sp)
   13a94:	02010113          	addi	sp,sp,32
   13a98:	d4dff06f          	j	137e4 <__sflush_r>
   13a9c:	00b13423          	sd	a1,8(sp)
   13aa0:	35c000ef          	jal	13dfc <__sinit>
   13aa4:	00813583          	ld	a1,8(sp)
   13aa8:	fc5ff06f          	j	13a6c <_fflush_r+0x1c>

0000000000013aac <fflush>:
   13aac:	00050593          	mv	a1,a0
   13ab0:	00050663          	beqz	a0,13abc <fflush+0x10>
   13ab4:	8101b503          	ld	a0,-2032(gp) # 1b300 <_impure_ptr>
   13ab8:	f99ff06f          	j	13a50 <_fflush_r>
   13abc:	8081b503          	ld	a0,-2040(gp) # 1b2f8 <_global_impure_ptr>
   13ac0:	000145b7          	lui	a1,0x14
   13ac4:	a5058593          	addi	a1,a1,-1456 # 13a50 <_fflush_r>
   13ac8:	04d0006f          	j	14314 <_fwalk_reent>

0000000000013acc <__fp_unlock>:
   13acc:	00000513          	li	a0,0
   13ad0:	00008067          	ret

0000000000013ad4 <_cleanup_r>:
   13ad4:	000175b7          	lui	a1,0x17
   13ad8:	7f458593          	addi	a1,a1,2036 # 177f4 <_fclose_r>
   13adc:	0390006f          	j	14314 <_fwalk_reent>

0000000000013ae0 <__sinit.part.1>:
   13ae0:	fc010113          	addi	sp,sp,-64
   13ae4:	000147b7          	lui	a5,0x14
   13ae8:	02113c23          	sd	ra,56(sp)
   13aec:	02813823          	sd	s0,48(sp)
   13af0:	02913423          	sd	s1,40(sp)
   13af4:	00853403          	ld	s0,8(a0)
   13af8:	03213023          	sd	s2,32(sp)
   13afc:	01313c23          	sd	s3,24(sp)
   13b00:	01413823          	sd	s4,16(sp)
   13b04:	01513423          	sd	s5,8(sp)
   13b08:	01613023          	sd	s6,0(sp)
   13b0c:	ad478793          	addi	a5,a5,-1324 # 13ad4 <_cleanup_r>
   13b10:	04f53c23          	sd	a5,88(a0)
   13b14:	53850713          	addi	a4,a0,1336
   13b18:	00300793          	li	a5,3
   13b1c:	52e53823          	sd	a4,1328(a0)
   13b20:	52f52423          	sw	a5,1320(a0)
   13b24:	52053023          	sd	zero,1312(a0)
   13b28:	00400793          	li	a5,4
   13b2c:	00050913          	mv	s2,a0
   13b30:	00f41823          	sh	a5,16(s0)
   13b34:	00800613          	li	a2,8
   13b38:	00000593          	li	a1,0
   13b3c:	00043023          	sd	zero,0(s0)
   13b40:	00042423          	sw	zero,8(s0)
   13b44:	00042623          	sw	zero,12(s0)
   13b48:	0a042623          	sw	zero,172(s0)
   13b4c:	00041923          	sh	zero,18(s0)
   13b50:	00043c23          	sd	zero,24(s0)
   13b54:	02042023          	sw	zero,32(s0)
   13b58:	02042423          	sw	zero,40(s0)
   13b5c:	0a440513          	addi	a0,s0,164
   13b60:	460010ef          	jal	14fc0 <memset>
   13b64:	00016b37          	lui	s6,0x16
   13b68:	01093483          	ld	s1,16(s2)
   13b6c:	00016ab7          	lui	s5,0x16
   13b70:	00016a37          	lui	s4,0x16
   13b74:	000169b7          	lui	s3,0x16
   13b78:	180b0b13          	addi	s6,s6,384 # 16180 <__sread>
   13b7c:	1eca8a93          	addi	s5,s5,492 # 161ec <__swrite>
   13b80:	25ca0a13          	addi	s4,s4,604 # 1625c <__sseek>
   13b84:	2c898993          	addi	s3,s3,712 # 162c8 <__sclose>
   13b88:	03643c23          	sd	s6,56(s0)
   13b8c:	05543023          	sd	s5,64(s0)
   13b90:	05443423          	sd	s4,72(s0)
   13b94:	05343823          	sd	s3,80(s0)
   13b98:	02843823          	sd	s0,48(s0)
   13b9c:	00900793          	li	a5,9
   13ba0:	00f49823          	sh	a5,16(s1)
   13ba4:	00100793          	li	a5,1
   13ba8:	00f49923          	sh	a5,18(s1)
   13bac:	00800613          	li	a2,8
   13bb0:	00000593          	li	a1,0
   13bb4:	0004b023          	sd	zero,0(s1)
   13bb8:	0004a423          	sw	zero,8(s1)
   13bbc:	0004a623          	sw	zero,12(s1)
   13bc0:	0a04a623          	sw	zero,172(s1)
   13bc4:	0004bc23          	sd	zero,24(s1)
   13bc8:	0204a023          	sw	zero,32(s1)
   13bcc:	0204a423          	sw	zero,40(s1)
   13bd0:	0a448513          	addi	a0,s1,164
   13bd4:	3ec010ef          	jal	14fc0 <memset>
   13bd8:	01893403          	ld	s0,24(s2)
   13bdc:	01200793          	li	a5,18
   13be0:	0364bc23          	sd	s6,56(s1)
   13be4:	0554b023          	sd	s5,64(s1)
   13be8:	0544b423          	sd	s4,72(s1)
   13bec:	0534b823          	sd	s3,80(s1)
   13bf0:	0294b823          	sd	s1,48(s1)
   13bf4:	00f41823          	sh	a5,16(s0)
   13bf8:	00200793          	li	a5,2
   13bfc:	00f41923          	sh	a5,18(s0)
   13c00:	00043023          	sd	zero,0(s0)
   13c04:	00042423          	sw	zero,8(s0)
   13c08:	00042623          	sw	zero,12(s0)
   13c0c:	0a042623          	sw	zero,172(s0)
   13c10:	00043c23          	sd	zero,24(s0)
   13c14:	02042023          	sw	zero,32(s0)
   13c18:	02042423          	sw	zero,40(s0)
   13c1c:	0a440513          	addi	a0,s0,164
   13c20:	00800613          	li	a2,8
   13c24:	00000593          	li	a1,0
   13c28:	398010ef          	jal	14fc0 <memset>
   13c2c:	03813083          	ld	ra,56(sp)
   13c30:	03643c23          	sd	s6,56(s0)
   13c34:	05543023          	sd	s5,64(s0)
   13c38:	05443423          	sd	s4,72(s0)
   13c3c:	05343823          	sd	s3,80(s0)
   13c40:	02843823          	sd	s0,48(s0)
   13c44:	00100793          	li	a5,1
   13c48:	04f92823          	sw	a5,80(s2)
   13c4c:	03013403          	ld	s0,48(sp)
   13c50:	02813483          	ld	s1,40(sp)
   13c54:	02013903          	ld	s2,32(sp)
   13c58:	01813983          	ld	s3,24(sp)
   13c5c:	01013a03          	ld	s4,16(sp)
   13c60:	00813a83          	ld	s5,8(sp)
   13c64:	00013b03          	ld	s6,0(sp)
   13c68:	04010113          	addi	sp,sp,64
   13c6c:	00008067          	ret

0000000000013c70 <__fp_lock>:
   13c70:	00000513          	li	a0,0
   13c74:	00008067          	ret

0000000000013c78 <__sfmoreglue>:
   13c78:	fe010113          	addi	sp,sp,-32
   13c7c:	fff5879b          	addiw	a5,a1,-1
   13c80:	00913423          	sd	s1,8(sp)
   13c84:	0b000493          	li	s1,176
   13c88:	029784b3          	mul	s1,a5,s1
   13c8c:	01213023          	sd	s2,0(sp)
   13c90:	00058913          	mv	s2,a1
   13c94:	00813823          	sd	s0,16(sp)
   13c98:	00113c23          	sd	ra,24(sp)
   13c9c:	0c848593          	addi	a1,s1,200
   13ca0:	1a9000ef          	jal	14648 <_malloc_r>
   13ca4:	00050413          	mv	s0,a0
   13ca8:	02050063          	beqz	a0,13cc8 <__sfmoreglue+0x50>
   13cac:	01850513          	addi	a0,a0,24
   13cb0:	00043023          	sd	zero,0(s0)
   13cb4:	01242423          	sw	s2,8(s0)
   13cb8:	00a43823          	sd	a0,16(s0)
   13cbc:	0b048613          	addi	a2,s1,176
   13cc0:	00000593          	li	a1,0
   13cc4:	2fc010ef          	jal	14fc0 <memset>
   13cc8:	01813083          	ld	ra,24(sp)
   13ccc:	00040513          	mv	a0,s0
   13cd0:	00813483          	ld	s1,8(sp)
   13cd4:	01013403          	ld	s0,16(sp)
   13cd8:	00013903          	ld	s2,0(sp)
   13cdc:	02010113          	addi	sp,sp,32
   13ce0:	00008067          	ret

0000000000013ce4 <__sfp>:
   13ce4:	fd010113          	addi	sp,sp,-48
   13ce8:	01213823          	sd	s2,16(sp)
   13cec:	8081b903          	ld	s2,-2040(gp) # 1b2f8 <_global_impure_ptr>
   13cf0:	01313423          	sd	s3,8(sp)
   13cf4:	02113423          	sd	ra,40(sp)
   13cf8:	05092783          	lw	a5,80(s2)
   13cfc:	02813023          	sd	s0,32(sp)
   13d00:	00913c23          	sd	s1,24(sp)
   13d04:	00050993          	mv	s3,a0
   13d08:	00079663          	bnez	a5,13d14 <__sfp+0x30>
   13d0c:	00090513          	mv	a0,s2
   13d10:	dd1ff0ef          	jal	13ae0 <__sinit.part.1>
   13d14:	52090913          	addi	s2,s2,1312
   13d18:	fff00493          	li	s1,-1
   13d1c:	00892783          	lw	a5,8(s2)
   13d20:	01093403          	ld	s0,16(s2)
   13d24:	fff7879b          	addiw	a5,a5,-1
   13d28:	0007da63          	bgez	a5,13d3c <__sfp+0x58>
   13d2c:	0840006f          	j	13db0 <__sfp+0xcc>
   13d30:	fff7879b          	addiw	a5,a5,-1
   13d34:	0b040413          	addi	s0,s0,176
   13d38:	06978c63          	beq	a5,s1,13db0 <__sfp+0xcc>
   13d3c:	01041703          	lh	a4,16(s0)
   13d40:	fe0718e3          	bnez	a4,13d30 <__sfp+0x4c>
   13d44:	fff00793          	li	a5,-1
   13d48:	00f41923          	sh	a5,18(s0)
   13d4c:	00100793          	li	a5,1
   13d50:	00f41823          	sh	a5,16(s0)
   13d54:	0a042623          	sw	zero,172(s0)
   13d58:	00043023          	sd	zero,0(s0)
   13d5c:	00042623          	sw	zero,12(s0)
   13d60:	00042423          	sw	zero,8(s0)
   13d64:	00043c23          	sd	zero,24(s0)
   13d68:	02042023          	sw	zero,32(s0)
   13d6c:	02042423          	sw	zero,40(s0)
   13d70:	00800613          	li	a2,8
   13d74:	00000593          	li	a1,0
   13d78:	0a440513          	addi	a0,s0,164
   13d7c:	244010ef          	jal	14fc0 <memset>
   13d80:	00040513          	mv	a0,s0
   13d84:	04043c23          	sd	zero,88(s0)
   13d88:	06042023          	sw	zero,96(s0)
   13d8c:	06043c23          	sd	zero,120(s0)
   13d90:	08042023          	sw	zero,128(s0)
   13d94:	02813083          	ld	ra,40(sp)
   13d98:	02013403          	ld	s0,32(sp)
   13d9c:	01813483          	ld	s1,24(sp)
   13da0:	01013903          	ld	s2,16(sp)
   13da4:	00813983          	ld	s3,8(sp)
   13da8:	03010113          	addi	sp,sp,48
   13dac:	00008067          	ret
   13db0:	00093783          	ld	a5,0(s2)
   13db4:	00078663          	beqz	a5,13dc0 <__sfp+0xdc>
   13db8:	00078913          	mv	s2,a5
   13dbc:	f61ff06f          	j	13d1c <__sfp+0x38>
   13dc0:	00400593          	li	a1,4
   13dc4:	00098513          	mv	a0,s3
   13dc8:	eb1ff0ef          	jal	13c78 <__sfmoreglue>
   13dcc:	00a93023          	sd	a0,0(s2)
   13dd0:	00050663          	beqz	a0,13ddc <__sfp+0xf8>
   13dd4:	00050913          	mv	s2,a0
   13dd8:	f45ff06f          	j	13d1c <__sfp+0x38>
   13ddc:	00c00793          	li	a5,12
   13de0:	00f9a023          	sw	a5,0(s3)
   13de4:	00000513          	li	a0,0
   13de8:	fadff06f          	j	13d94 <__sfp+0xb0>

0000000000013dec <_cleanup>:
   13dec:	8081b503          	ld	a0,-2040(gp) # 1b2f8 <_global_impure_ptr>
   13df0:	000175b7          	lui	a1,0x17
   13df4:	7f458593          	addi	a1,a1,2036 # 177f4 <_fclose_r>
   13df8:	51c0006f          	j	14314 <_fwalk_reent>

0000000000013dfc <__sinit>:
   13dfc:	05052783          	lw	a5,80(a0)
   13e00:	00078463          	beqz	a5,13e08 <__sinit+0xc>
   13e04:	00008067          	ret
   13e08:	cd9ff06f          	j	13ae0 <__sinit.part.1>

0000000000013e0c <__sfp_lock_acquire>:
   13e0c:	00008067          	ret

0000000000013e10 <__sfp_lock_release>:
   13e10:	00008067          	ret

0000000000013e14 <__sinit_lock_acquire>:
   13e14:	00008067          	ret

0000000000013e18 <__sinit_lock_release>:
   13e18:	00008067          	ret

0000000000013e1c <__fp_lock_all>:
   13e1c:	8101b503          	ld	a0,-2032(gp) # 1b300 <_impure_ptr>
   13e20:	000145b7          	lui	a1,0x14
   13e24:	c7058593          	addi	a1,a1,-912 # 13c70 <__fp_lock>
   13e28:	43c0006f          	j	14264 <_fwalk>

0000000000013e2c <__fp_unlock_all>:
   13e2c:	8101b503          	ld	a0,-2032(gp) # 1b300 <_impure_ptr>
   13e30:	000145b7          	lui	a1,0x14
   13e34:	acc58593          	addi	a1,a1,-1332 # 13acc <__fp_unlock>
   13e38:	42c0006f          	j	14264 <_fwalk>

0000000000013e3c <_malloc_trim_r>:
   13e3c:	fd010113          	addi	sp,sp,-48
   13e40:	01213823          	sd	s2,16(sp)
   13e44:	0001b937          	lui	s2,0x1b
   13e48:	02813023          	sd	s0,32(sp)
   13e4c:	00913c23          	sd	s1,24(sp)
   13e50:	00058413          	mv	s0,a1
   13e54:	01313423          	sd	s3,8(sp)
   13e58:	02113423          	sd	ra,40(sp)
   13e5c:	00050993          	mv	s3,a0
   13e60:	ad890913          	addi	s2,s2,-1320 # 1aad8 <__malloc_av_>
   13e64:	238010ef          	jal	1509c <__malloc_lock>
   13e68:	01093703          	ld	a4,16(s2)
   13e6c:	000017b7          	lui	a5,0x1
   13e70:	fdf78593          	addi	a1,a5,-33 # fdf <_ftext-0xf021>
   13e74:	00873483          	ld	s1,8(a4)
   13e78:	ffc4f493          	andi	s1,s1,-4
   13e7c:	40848433          	sub	s0,s1,s0
   13e80:	00b40433          	add	s0,s0,a1
   13e84:	00c45413          	srli	s0,s0,0xc
   13e88:	fff40413          	addi	s0,s0,-1
   13e8c:	00c41413          	slli	s0,s0,0xc
   13e90:	00f44c63          	blt	s0,a5,13ea8 <_malloc_trim_r+0x6c>
   13e94:	00000513          	li	a0,0
   13e98:	6c5040ef          	jal	18d5c <sbrk>
   13e9c:	01093783          	ld	a5,16(s2)
   13ea0:	009787b3          	add	a5,a5,s1
   13ea4:	02f50663          	beq	a0,a5,13ed0 <_malloc_trim_r+0x94>
   13ea8:	00098513          	mv	a0,s3
   13eac:	1f4010ef          	jal	150a0 <__malloc_unlock>
   13eb0:	02813083          	ld	ra,40(sp)
   13eb4:	00000513          	li	a0,0
   13eb8:	02013403          	ld	s0,32(sp)
   13ebc:	01813483          	ld	s1,24(sp)
   13ec0:	01013903          	ld	s2,16(sp)
   13ec4:	00813983          	ld	s3,8(sp)
   13ec8:	03010113          	addi	sp,sp,48
   13ecc:	00008067          	ret
   13ed0:	40800533          	neg	a0,s0
   13ed4:	689040ef          	jal	18d5c <sbrk>
   13ed8:	fff00793          	li	a5,-1
   13edc:	04f50463          	beq	a0,a5,13f24 <_malloc_trim_r+0xe8>
   13ee0:	9001a783          	lw	a5,-1792(gp) # 1b3f0 <__malloc_current_mallinfo>
   13ee4:	01093683          	ld	a3,16(s2)
   13ee8:	408484b3          	sub	s1,s1,s0
   13eec:	0014e493          	ori	s1,s1,1
   13ef0:	4087843b          	subw	s0,a5,s0
   13ef4:	00098513          	mv	a0,s3
   13ef8:	0096b423          	sd	s1,8(a3)
   13efc:	9081a023          	sw	s0,-1792(gp) # 1b3f0 <__malloc_current_mallinfo>
   13f00:	1a0010ef          	jal	150a0 <__malloc_unlock>
   13f04:	02813083          	ld	ra,40(sp)
   13f08:	00100513          	li	a0,1
   13f0c:	02013403          	ld	s0,32(sp)
   13f10:	01813483          	ld	s1,24(sp)
   13f14:	01013903          	ld	s2,16(sp)
   13f18:	00813983          	ld	s3,8(sp)
   13f1c:	03010113          	addi	sp,sp,48
   13f20:	00008067          	ret
   13f24:	00000513          	li	a0,0
   13f28:	635040ef          	jal	18d5c <sbrk>
   13f2c:	01093703          	ld	a4,16(s2)
   13f30:	01f00693          	li	a3,31
   13f34:	40e507b3          	sub	a5,a0,a4
   13f38:	f6f6d8e3          	ble	a5,a3,13ea8 <_malloc_trim_r+0x6c>
   13f3c:	8201b683          	ld	a3,-2016(gp) # 1b310 <__malloc_sbrk_base>
   13f40:	0017e793          	ori	a5,a5,1
   13f44:	00f73423          	sd	a5,8(a4)
   13f48:	40d50533          	sub	a0,a0,a3
   13f4c:	90a1a023          	sw	a0,-1792(gp) # 1b3f0 <__malloc_current_mallinfo>
   13f50:	f59ff06f          	j	13ea8 <_malloc_trim_r+0x6c>

0000000000013f54 <_free_r>:
   13f54:	10058263          	beqz	a1,14058 <_free_r+0x104>
   13f58:	fe010113          	addi	sp,sp,-32
   13f5c:	00813823          	sd	s0,16(sp)
   13f60:	00913423          	sd	s1,8(sp)
   13f64:	00058413          	mv	s0,a1
   13f68:	00050493          	mv	s1,a0
   13f6c:	00113c23          	sd	ra,24(sp)
   13f70:	12c010ef          	jal	1509c <__malloc_lock>
   13f74:	ff843503          	ld	a0,-8(s0)
   13f78:	ff040693          	addi	a3,s0,-16
   13f7c:	0001b5b7          	lui	a1,0x1b
   13f80:	ffe57793          	andi	a5,a0,-2
   13f84:	00f68633          	add	a2,a3,a5
   13f88:	ad858593          	addi	a1,a1,-1320 # 1aad8 <__malloc_av_>
   13f8c:	00863703          	ld	a4,8(a2)
   13f90:	0105b803          	ld	a6,16(a1)
   13f94:	ffc77713          	andi	a4,a4,-4
   13f98:	17060663          	beq	a2,a6,14104 <_free_r+0x1b0>
   13f9c:	00e63423          	sd	a4,8(a2)
   13fa0:	00157513          	andi	a0,a0,1
   13fa4:	02051663          	bnez	a0,13fd0 <_free_r+0x7c>
   13fa8:	ff043503          	ld	a0,-16(s0)
   13fac:	40a686b3          	sub	a3,a3,a0
   13fb0:	0106b803          	ld	a6,16(a3)
   13fb4:	00a787b3          	add	a5,a5,a0
   13fb8:	0001b537          	lui	a0,0x1b
   13fbc:	ae850513          	addi	a0,a0,-1304 # 1aae8 <__malloc_av_+0x10>
   13fc0:	18a80863          	beq	a6,a0,14150 <_free_r+0x1fc>
   13fc4:	0186b503          	ld	a0,24(a3)
   13fc8:	00a83c23          	sd	a0,24(a6)
   13fcc:	01053823          	sd	a6,16(a0)
   13fd0:	00e60533          	add	a0,a2,a4
   13fd4:	00853503          	ld	a0,8(a0)
   13fd8:	00157513          	andi	a0,a0,1
   13fdc:	0e050a63          	beqz	a0,140d0 <_free_r+0x17c>
   13fe0:	0017e713          	ori	a4,a5,1
   13fe4:	00e6b423          	sd	a4,8(a3)
   13fe8:	00f68733          	add	a4,a3,a5
   13fec:	00f73023          	sd	a5,0(a4)
   13ff0:	1ff00713          	li	a4,511
   13ff4:	06f76463          	bltu	a4,a5,1405c <_free_r+0x108>
   13ff8:	0037d793          	srli	a5,a5,0x3
   13ffc:	0007879b          	sext.w	a5,a5
   14000:	0017871b          	addiw	a4,a5,1
   14004:	0017171b          	slliw	a4,a4,0x1
   14008:	00371713          	slli	a4,a4,0x3
   1400c:	0085b603          	ld	a2,8(a1)
   14010:	00e58733          	add	a4,a1,a4
   14014:	00073803          	ld	a6,0(a4)
   14018:	4027d79b          	sraiw	a5,a5,0x2
   1401c:	00100513          	li	a0,1
   14020:	00f517b3          	sll	a5,a0,a5
   14024:	00c7e7b3          	or	a5,a5,a2
   14028:	ff070613          	addi	a2,a4,-16
   1402c:	00c6bc23          	sd	a2,24(a3)
   14030:	0106b823          	sd	a6,16(a3)
   14034:	00f5b423          	sd	a5,8(a1)
   14038:	00d73023          	sd	a3,0(a4)
   1403c:	00d83c23          	sd	a3,24(a6)
   14040:	00048513          	mv	a0,s1
   14044:	01813083          	ld	ra,24(sp)
   14048:	01013403          	ld	s0,16(sp)
   1404c:	00813483          	ld	s1,8(sp)
   14050:	02010113          	addi	sp,sp,32
   14054:	04c0106f          	j	150a0 <__malloc_unlock>
   14058:	00008067          	ret
   1405c:	0097d713          	srli	a4,a5,0x9
   14060:	00400613          	li	a2,4
   14064:	12e66263          	bltu	a2,a4,14188 <_free_r+0x234>
   14068:	0067d713          	srli	a4,a5,0x6
   1406c:	0007071b          	sext.w	a4,a4
   14070:	0397051b          	addiw	a0,a4,57
   14074:	0387061b          	addiw	a2,a4,56
   14078:	0015151b          	slliw	a0,a0,0x1
   1407c:	00351513          	slli	a0,a0,0x3
   14080:	00a58533          	add	a0,a1,a0
   14084:	00053703          	ld	a4,0(a0)
   14088:	ff050513          	addi	a0,a0,-16
   1408c:	10e50c63          	beq	a0,a4,141a4 <_free_r+0x250>
   14090:	00873603          	ld	a2,8(a4)
   14094:	ffc67613          	andi	a2,a2,-4
   14098:	00c7f663          	bleu	a2,a5,140a4 <_free_r+0x150>
   1409c:	01073703          	ld	a4,16(a4)
   140a0:	fee518e3          	bne	a0,a4,14090 <_free_r+0x13c>
   140a4:	01873503          	ld	a0,24(a4)
   140a8:	00a6bc23          	sd	a0,24(a3)
   140ac:	00e6b823          	sd	a4,16(a3)
   140b0:	00d53823          	sd	a3,16(a0)
   140b4:	01813083          	ld	ra,24(sp)
   140b8:	00048513          	mv	a0,s1
   140bc:	01013403          	ld	s0,16(sp)
   140c0:	00813483          	ld	s1,8(sp)
   140c4:	00d73c23          	sd	a3,24(a4)
   140c8:	02010113          	addi	sp,sp,32
   140cc:	7d50006f          	j	150a0 <__malloc_unlock>
   140d0:	01063503          	ld	a0,16(a2)
   140d4:	00e787b3          	add	a5,a5,a4
   140d8:	0001b737          	lui	a4,0x1b
   140dc:	ae870713          	addi	a4,a4,-1304 # 1aae8 <__malloc_av_+0x10>
   140e0:	0ee50263          	beq	a0,a4,141c4 <_free_r+0x270>
   140e4:	01863803          	ld	a6,24(a2)
   140e8:	0017e613          	ori	a2,a5,1
   140ec:	00f68733          	add	a4,a3,a5
   140f0:	01053c23          	sd	a6,24(a0)
   140f4:	00a83823          	sd	a0,16(a6)
   140f8:	00c6b423          	sd	a2,8(a3)
   140fc:	00f73023          	sd	a5,0(a4)
   14100:	ef1ff06f          	j	13ff0 <_free_r+0x9c>
   14104:	00157513          	andi	a0,a0,1
   14108:	00e787b3          	add	a5,a5,a4
   1410c:	02051063          	bnez	a0,1412c <_free_r+0x1d8>
   14110:	ff043503          	ld	a0,-16(s0)
   14114:	40a686b3          	sub	a3,a3,a0
   14118:	0186b703          	ld	a4,24(a3)
   1411c:	0106b603          	ld	a2,16(a3)
   14120:	00a787b3          	add	a5,a5,a0
   14124:	00e63c23          	sd	a4,24(a2)
   14128:	00c73823          	sd	a2,16(a4)
   1412c:	0017e613          	ori	a2,a5,1
   14130:	8281b703          	ld	a4,-2008(gp) # 1b318 <__malloc_trim_threshold>
   14134:	00c6b423          	sd	a2,8(a3)
   14138:	00d5b823          	sd	a3,16(a1)
   1413c:	f0e7e2e3          	bltu	a5,a4,14040 <_free_r+0xec>
   14140:	8b81b583          	ld	a1,-1864(gp) # 1b3a8 <__malloc_top_pad>
   14144:	00048513          	mv	a0,s1
   14148:	cf5ff0ef          	jal	13e3c <_malloc_trim_r>
   1414c:	ef5ff06f          	j	14040 <_free_r+0xec>
   14150:	00e605b3          	add	a1,a2,a4
   14154:	0085b583          	ld	a1,8(a1)
   14158:	0015f593          	andi	a1,a1,1
   1415c:	0e059a63          	bnez	a1,14250 <_free_r+0x2fc>
   14160:	01063583          	ld	a1,16(a2)
   14164:	01863603          	ld	a2,24(a2)
   14168:	00f707b3          	add	a5,a4,a5
   1416c:	0017e713          	ori	a4,a5,1
   14170:	00c5bc23          	sd	a2,24(a1)
   14174:	00b63823          	sd	a1,16(a2)
   14178:	00e6b423          	sd	a4,8(a3)
   1417c:	00f686b3          	add	a3,a3,a5
   14180:	00f6b023          	sd	a5,0(a3)
   14184:	ebdff06f          	j	14040 <_free_r+0xec>
   14188:	01400613          	li	a2,20
   1418c:	04e66e63          	bltu	a2,a4,141e8 <_free_r+0x294>
   14190:	0007071b          	sext.w	a4,a4
   14194:	05c7051b          	addiw	a0,a4,92
   14198:	05b7061b          	addiw	a2,a4,91
   1419c:	0015151b          	slliw	a0,a0,0x1
   141a0:	eddff06f          	j	1407c <_free_r+0x128>
   141a4:	0085b783          	ld	a5,8(a1)
   141a8:	4026571b          	sraiw	a4,a2,0x2
   141ac:	00100613          	li	a2,1
   141b0:	00e61733          	sll	a4,a2,a4
   141b4:	00f767b3          	or	a5,a4,a5
   141b8:	00f5b423          	sd	a5,8(a1)
   141bc:	00050713          	mv	a4,a0
   141c0:	ee9ff06f          	j	140a8 <_free_r+0x154>
   141c4:	02d5b423          	sd	a3,40(a1)
   141c8:	02d5b023          	sd	a3,32(a1)
   141cc:	0017e713          	ori	a4,a5,1
   141d0:	00a6bc23          	sd	a0,24(a3)
   141d4:	00a6b823          	sd	a0,16(a3)
   141d8:	00e6b423          	sd	a4,8(a3)
   141dc:	00f686b3          	add	a3,a3,a5
   141e0:	00f6b023          	sd	a5,0(a3)
   141e4:	e5dff06f          	j	14040 <_free_r+0xec>
   141e8:	05400613          	li	a2,84
   141ec:	00e66e63          	bltu	a2,a4,14208 <_free_r+0x2b4>
   141f0:	00c7d713          	srli	a4,a5,0xc
   141f4:	0007071b          	sext.w	a4,a4
   141f8:	06f7051b          	addiw	a0,a4,111
   141fc:	06e7061b          	addiw	a2,a4,110
   14200:	0015151b          	slliw	a0,a0,0x1
   14204:	e79ff06f          	j	1407c <_free_r+0x128>
   14208:	15400613          	li	a2,340
   1420c:	00e66e63          	bltu	a2,a4,14228 <_free_r+0x2d4>
   14210:	00f7d713          	srli	a4,a5,0xf
   14214:	0007071b          	sext.w	a4,a4
   14218:	0787051b          	addiw	a0,a4,120
   1421c:	0777061b          	addiw	a2,a4,119
   14220:	0015151b          	slliw	a0,a0,0x1
   14224:	e59ff06f          	j	1407c <_free_r+0x128>
   14228:	55400813          	li	a6,1364
   1422c:	0fe00513          	li	a0,254
   14230:	07e00613          	li	a2,126
   14234:	e4e864e3          	bltu	a6,a4,1407c <_free_r+0x128>
   14238:	0127d713          	srli	a4,a5,0x12
   1423c:	0007071b          	sext.w	a4,a4
   14240:	07d7051b          	addiw	a0,a4,125
   14244:	07c7061b          	addiw	a2,a4,124
   14248:	0015151b          	slliw	a0,a0,0x1
   1424c:	e31ff06f          	j	1407c <_free_r+0x128>
   14250:	0017e713          	ori	a4,a5,1
   14254:	00e6b423          	sd	a4,8(a3)
   14258:	00f686b3          	add	a3,a3,a5
   1425c:	00f6b023          	sd	a5,0(a3)
   14260:	de1ff06f          	j	14040 <_free_r+0xec>

0000000000014264 <_fwalk>:
   14264:	fc010113          	addi	sp,sp,-64
   14268:	01513423          	sd	s5,8(sp)
   1426c:	02113c23          	sd	ra,56(sp)
   14270:	02813823          	sd	s0,48(sp)
   14274:	02913423          	sd	s1,40(sp)
   14278:	03213023          	sd	s2,32(sp)
   1427c:	01313c23          	sd	s3,24(sp)
   14280:	01413823          	sd	s4,16(sp)
   14284:	01613023          	sd	s6,0(sp)
   14288:	52050a93          	addi	s5,a0,1312
   1428c:	080a8063          	beqz	s5,1430c <_fwalk+0xa8>
   14290:	00058b13          	mv	s6,a1
   14294:	00000a13          	li	s4,0
   14298:	00100993          	li	s3,1
   1429c:	fff00913          	li	s2,-1
   142a0:	008aa483          	lw	s1,8(s5)
   142a4:	010ab403          	ld	s0,16(s5)
   142a8:	fff4849b          	addiw	s1,s1,-1
   142ac:	0204c663          	bltz	s1,142d8 <_fwalk+0x74>
   142b0:	01045783          	lhu	a5,16(s0)
   142b4:	fff4849b          	addiw	s1,s1,-1
   142b8:	00f9fc63          	bleu	a5,s3,142d0 <_fwalk+0x6c>
   142bc:	01241783          	lh	a5,18(s0)
   142c0:	00040513          	mv	a0,s0
   142c4:	01278663          	beq	a5,s2,142d0 <_fwalk+0x6c>
   142c8:	000b00e7          	jalr	s6
   142cc:	00aa6a33          	or	s4,s4,a0
   142d0:	0b040413          	addi	s0,s0,176
   142d4:	fd249ee3          	bne	s1,s2,142b0 <_fwalk+0x4c>
   142d8:	000aba83          	ld	s5,0(s5)
   142dc:	fc0a92e3          	bnez	s5,142a0 <_fwalk+0x3c>
   142e0:	03813083          	ld	ra,56(sp)
   142e4:	000a0513          	mv	a0,s4
   142e8:	03013403          	ld	s0,48(sp)
   142ec:	02813483          	ld	s1,40(sp)
   142f0:	02013903          	ld	s2,32(sp)
   142f4:	01813983          	ld	s3,24(sp)
   142f8:	01013a03          	ld	s4,16(sp)
   142fc:	00813a83          	ld	s5,8(sp)
   14300:	00013b03          	ld	s6,0(sp)
   14304:	04010113          	addi	sp,sp,64
   14308:	00008067          	ret
   1430c:	00000a13          	li	s4,0
   14310:	fd1ff06f          	j	142e0 <_fwalk+0x7c>

0000000000014314 <_fwalk_reent>:
   14314:	fb010113          	addi	sp,sp,-80
   14318:	01613823          	sd	s6,16(sp)
   1431c:	04113423          	sd	ra,72(sp)
   14320:	04813023          	sd	s0,64(sp)
   14324:	02913c23          	sd	s1,56(sp)
   14328:	03213823          	sd	s2,48(sp)
   1432c:	03313423          	sd	s3,40(sp)
   14330:	03413023          	sd	s4,32(sp)
   14334:	01513c23          	sd	s5,24(sp)
   14338:	01713423          	sd	s7,8(sp)
   1433c:	52050b13          	addi	s6,a0,1312
   14340:	080b0663          	beqz	s6,143cc <_fwalk_reent+0xb8>
   14344:	00058b93          	mv	s7,a1
   14348:	00050a93          	mv	s5,a0
   1434c:	00000a13          	li	s4,0
   14350:	00100993          	li	s3,1
   14354:	fff00913          	li	s2,-1
   14358:	008b2483          	lw	s1,8(s6)
   1435c:	010b3403          	ld	s0,16(s6)
   14360:	fff4849b          	addiw	s1,s1,-1
   14364:	0204c863          	bltz	s1,14394 <_fwalk_reent+0x80>
   14368:	01045783          	lhu	a5,16(s0)
   1436c:	fff4849b          	addiw	s1,s1,-1
   14370:	00f9fe63          	bleu	a5,s3,1438c <_fwalk_reent+0x78>
   14374:	01241783          	lh	a5,18(s0)
   14378:	00040593          	mv	a1,s0
   1437c:	000a8513          	mv	a0,s5
   14380:	01278663          	beq	a5,s2,1438c <_fwalk_reent+0x78>
   14384:	000b80e7          	jalr	s7
   14388:	00aa6a33          	or	s4,s4,a0
   1438c:	0b040413          	addi	s0,s0,176
   14390:	fd249ce3          	bne	s1,s2,14368 <_fwalk_reent+0x54>
   14394:	000b3b03          	ld	s6,0(s6)
   14398:	fc0b10e3          	bnez	s6,14358 <_fwalk_reent+0x44>
   1439c:	04813083          	ld	ra,72(sp)
   143a0:	000a0513          	mv	a0,s4
   143a4:	04013403          	ld	s0,64(sp)
   143a8:	03813483          	ld	s1,56(sp)
   143ac:	03013903          	ld	s2,48(sp)
   143b0:	02813983          	ld	s3,40(sp)
   143b4:	02013a03          	ld	s4,32(sp)
   143b8:	01813a83          	ld	s5,24(sp)
   143bc:	01013b03          	ld	s6,16(sp)
   143c0:	00813b83          	ld	s7,8(sp)
   143c4:	05010113          	addi	sp,sp,80
   143c8:	00008067          	ret
   143cc:	00000a13          	li	s4,0
   143d0:	fcdff06f          	j	1439c <_fwalk_reent+0x88>

00000000000143d4 <_setlocale_r>:
   143d4:	fe010113          	addi	sp,sp,-32
   143d8:	00913423          	sd	s1,8(sp)
   143dc:	00113c23          	sd	ra,24(sp)
   143e0:	00813823          	sd	s0,16(sp)
   143e4:	000194b7          	lui	s1,0x19
   143e8:	02060063          	beqz	a2,14408 <_setlocale_r+0x34>
   143ec:	000195b7          	lui	a1,0x19
   143f0:	29858593          	addi	a1,a1,664 # 19298 <zeroes.4137+0x90>
   143f4:	00060513          	mv	a0,a2
   143f8:	00060413          	mv	s0,a2
   143fc:	6d5010ef          	jal	162d0 <strcmp>
   14400:	000194b7          	lui	s1,0x19
   14404:	00051e63          	bnez	a0,14420 <_setlocale_r+0x4c>
   14408:	21848513          	addi	a0,s1,536 # 19218 <zeroes.4137+0x10>
   1440c:	01813083          	ld	ra,24(sp)
   14410:	01013403          	ld	s0,16(sp)
   14414:	00813483          	ld	s1,8(sp)
   14418:	02010113          	addi	sp,sp,32
   1441c:	00008067          	ret
   14420:	21848593          	addi	a1,s1,536
   14424:	00040513          	mv	a0,s0
   14428:	6a9010ef          	jal	162d0 <strcmp>
   1442c:	fc050ee3          	beqz	a0,14408 <_setlocale_r+0x34>
   14430:	000195b7          	lui	a1,0x19
   14434:	25058593          	addi	a1,a1,592 # 19250 <zeroes.4137+0x48>
   14438:	00040513          	mv	a0,s0
   1443c:	695010ef          	jal	162d0 <strcmp>
   14440:	fc0504e3          	beqz	a0,14408 <_setlocale_r+0x34>
   14444:	00000513          	li	a0,0
   14448:	fc5ff06f          	j	1440c <_setlocale_r+0x38>

000000000001444c <__locale_charset>:
   1444c:	0001b537          	lui	a0,0x1b
   14450:	a3850513          	addi	a0,a0,-1480 # 1aa38 <lc_ctype_charset>
   14454:	00008067          	ret

0000000000014458 <__locale_mb_cur_max>:
   14458:	8181a503          	lw	a0,-2024(gp) # 1b308 <__mb_cur_max>
   1445c:	00008067          	ret

0000000000014460 <__locale_msgcharset>:
   14460:	0001b537          	lui	a0,0x1b
   14464:	a5850513          	addi	a0,a0,-1448 # 1aa58 <lc_message_charset>
   14468:	00008067          	ret

000000000001446c <__locale_cjk_lang>:
   1446c:	00000513          	li	a0,0
   14470:	00008067          	ret

0000000000014474 <_localeconv_r>:
   14474:	0001b537          	lui	a0,0x1b
   14478:	a7850513          	addi	a0,a0,-1416 # 1aa78 <lconv>
   1447c:	00008067          	ret

0000000000014480 <setlocale>:
   14480:	00058613          	mv	a2,a1
   14484:	00050593          	mv	a1,a0
   14488:	8101b503          	ld	a0,-2032(gp) # 1b300 <_impure_ptr>
   1448c:	f49ff06f          	j	143d4 <_setlocale_r>

0000000000014490 <localeconv>:
   14490:	0001b537          	lui	a0,0x1b
   14494:	a7850513          	addi	a0,a0,-1416 # 1aa78 <lconv>
   14498:	00008067          	ret

000000000001449c <__smakebuf_r>:
   1449c:	01059783          	lh	a5,16(a1)
   144a0:	f5010113          	addi	sp,sp,-176
   144a4:	08913c23          	sd	s1,152(sp)
   144a8:	03079493          	slli	s1,a5,0x30
   144ac:	0304d493          	srli	s1,s1,0x30
   144b0:	0a113423          	sd	ra,168(sp)
   144b4:	0a813023          	sd	s0,160(sp)
   144b8:	09213823          	sd	s2,144(sp)
   144bc:	09313423          	sd	s3,136(sp)
   144c0:	0024f713          	andi	a4,s1,2
   144c4:	0e071063          	bnez	a4,145a4 <__smakebuf_r+0x108>
   144c8:	00050913          	mv	s2,a0
   144cc:	01259503          	lh	a0,18(a1)
   144d0:	00058413          	mv	s0,a1
   144d4:	04054c63          	bltz	a0,1452c <__smakebuf_r+0x90>
   144d8:	00010593          	mv	a1,sp
   144dc:	5b4040ef          	jal	18a90 <fstat>
   144e0:	04054063          	bltz	a0,14520 <__smakebuf_r+0x84>
   144e4:	01012703          	lw	a4,16(sp)
   144e8:	0000f7b7          	lui	a5,0xf
   144ec:	ffffe9b7          	lui	s3,0xffffe
   144f0:	00f777b3          	and	a5,a4,a5
   144f4:	013789bb          	addw	s3,a5,s3
   144f8:	00008737          	lui	a4,0x8
   144fc:	0019b993          	seqz	s3,s3
   14500:	0ce78a63          	beq	a5,a4,145d4 <__smakebuf_r+0x138>
   14504:	01045703          	lhu	a4,16(s0)
   14508:	000017b7          	lui	a5,0x1
   1450c:	8007879b          	addiw	a5,a5,-2048
   14510:	00f767b3          	or	a5,a4,a5
   14514:	00f41823          	sh	a5,16(s0)
   14518:	40000493          	li	s1,1024
   1451c:	0340006f          	j	14550 <__smakebuf_r+0xb4>
   14520:	01041783          	lh	a5,16(s0)
   14524:	03079493          	slli	s1,a5,0x30
   14528:	0304d493          	srli	s1,s1,0x30
   1452c:	03849493          	slli	s1,s1,0x38
   14530:	00001737          	lui	a4,0x1
   14534:	43f4d493          	srai	s1,s1,0x3f
   14538:	8007071b          	addiw	a4,a4,-2048
   1453c:	c404f493          	andi	s1,s1,-960
   14540:	00e7e7b3          	or	a5,a5,a4
   14544:	40048493          	addi	s1,s1,1024
   14548:	00f41823          	sh	a5,16(s0)
   1454c:	00000993          	li	s3,0
   14550:	00048593          	mv	a1,s1
   14554:	00090513          	mv	a0,s2
   14558:	0f0000ef          	jal	14648 <_malloc_r>
   1455c:	0c050063          	beqz	a0,1461c <__smakebuf_r+0x180>
   14560:	01045783          	lhu	a5,16(s0)
   14564:	00014737          	lui	a4,0x14
   14568:	ad470713          	addi	a4,a4,-1324 # 13ad4 <_cleanup_r>
   1456c:	04e93c23          	sd	a4,88(s2)
   14570:	0807e793          	ori	a5,a5,128
   14574:	00f41823          	sh	a5,16(s0)
   14578:	00a43023          	sd	a0,0(s0)
   1457c:	00a43c23          	sd	a0,24(s0)
   14580:	02942023          	sw	s1,32(s0)
   14584:	06099e63          	bnez	s3,14600 <__smakebuf_r+0x164>
   14588:	0a813083          	ld	ra,168(sp)
   1458c:	0a013403          	ld	s0,160(sp)
   14590:	09813483          	ld	s1,152(sp)
   14594:	09013903          	ld	s2,144(sp)
   14598:	08813983          	ld	s3,136(sp)
   1459c:	0b010113          	addi	sp,sp,176
   145a0:	00008067          	ret
   145a4:	0a813083          	ld	ra,168(sp)
   145a8:	07758793          	addi	a5,a1,119
   145ac:	00f5b023          	sd	a5,0(a1)
   145b0:	00f5bc23          	sd	a5,24(a1)
   145b4:	00100793          	li	a5,1
   145b8:	0a013403          	ld	s0,160(sp)
   145bc:	09813483          	ld	s1,152(sp)
   145c0:	09013903          	ld	s2,144(sp)
   145c4:	08813983          	ld	s3,136(sp)
   145c8:	02f5a023          	sw	a5,32(a1)
   145cc:	0b010113          	addi	sp,sp,176
   145d0:	00008067          	ret
   145d4:	04843703          	ld	a4,72(s0)
   145d8:	000167b7          	lui	a5,0x16
   145dc:	25c78793          	addi	a5,a5,604 # 1625c <__sseek>
   145e0:	f2f712e3          	bne	a4,a5,14504 <__smakebuf_r+0x68>
   145e4:	01045783          	lhu	a5,16(s0)
   145e8:	40000713          	li	a4,1024
   145ec:	08e42423          	sw	a4,136(s0)
   145f0:	00e7e7b3          	or	a5,a5,a4
   145f4:	00f41823          	sh	a5,16(s0)
   145f8:	40000493          	li	s1,1024
   145fc:	f55ff06f          	j	14550 <__smakebuf_r+0xb4>
   14600:	01241503          	lh	a0,18(s0)
   14604:	618040ef          	jal	18c1c <isatty>
   14608:	f80500e3          	beqz	a0,14588 <__smakebuf_r+0xec>
   1460c:	01045783          	lhu	a5,16(s0)
   14610:	0017e793          	ori	a5,a5,1
   14614:	00f41823          	sh	a5,16(s0)
   14618:	f71ff06f          	j	14588 <__smakebuf_r+0xec>
   1461c:	01041783          	lh	a5,16(s0)
   14620:	2007f713          	andi	a4,a5,512
   14624:	f60712e3          	bnez	a4,14588 <__smakebuf_r+0xec>
   14628:	0027e793          	ori	a5,a5,2
   1462c:	07740713          	addi	a4,s0,119
   14630:	00f41823          	sh	a5,16(s0)
   14634:	00100793          	li	a5,1
   14638:	00e43023          	sd	a4,0(s0)
   1463c:	00e43c23          	sd	a4,24(s0)
   14640:	02f42023          	sw	a5,32(s0)
   14644:	f45ff06f          	j	14588 <__smakebuf_r+0xec>

0000000000014648 <_malloc_r>:
   14648:	fa010113          	addi	sp,sp,-96
   1464c:	04913423          	sd	s1,72(sp)
   14650:	03313c23          	sd	s3,56(sp)
   14654:	04113c23          	sd	ra,88(sp)
   14658:	04813823          	sd	s0,80(sp)
   1465c:	05213023          	sd	s2,64(sp)
   14660:	03413823          	sd	s4,48(sp)
   14664:	03513423          	sd	s5,40(sp)
   14668:	03613023          	sd	s6,32(sp)
   1466c:	01713c23          	sd	s7,24(sp)
   14670:	01813823          	sd	s8,16(sp)
   14674:	01913423          	sd	s9,8(sp)
   14678:	01758493          	addi	s1,a1,23
   1467c:	02e00793          	li	a5,46
   14680:	00050993          	mv	s3,a0
   14684:	1c97fa63          	bleu	s1,a5,14858 <_malloc_r+0x210>
   14688:	800007b7          	lui	a5,0x80000
   1468c:	ff04f493          	andi	s1,s1,-16
   14690:	fff7c793          	not	a5,a5
   14694:	2497ee63          	bltu	a5,s1,148f0 <_malloc_r+0x2a8>
   14698:	24b4ec63          	bltu	s1,a1,148f0 <_malloc_r+0x2a8>
   1469c:	201000ef          	jal	1509c <__malloc_lock>
   146a0:	1f700793          	li	a5,503
   146a4:	7097f063          	bleu	s1,a5,14da4 <_malloc_r+0x75c>
   146a8:	0094d793          	srli	a5,s1,0x9
   146ac:	08000693          	li	a3,128
   146b0:	04000513          	li	a0,64
   146b4:	03f00593          	li	a1,63
   146b8:	24079463          	bnez	a5,14900 <_malloc_r+0x2b8>
   146bc:	0001b937          	lui	s2,0x1b
   146c0:	ad890913          	addi	s2,s2,-1320 # 1aad8 <__malloc_av_>
   146c4:	00369693          	slli	a3,a3,0x3
   146c8:	00d906b3          	add	a3,s2,a3
   146cc:	0086b403          	ld	s0,8(a3)
   146d0:	ff068693          	addi	a3,a3,-16
   146d4:	24868663          	beq	a3,s0,14920 <_malloc_r+0x2d8>
   146d8:	00843783          	ld	a5,8(s0)
   146dc:	01f00613          	li	a2,31
   146e0:	ffc7f793          	andi	a5,a5,-4
   146e4:	40978733          	sub	a4,a5,s1
   146e8:	02e64063          	blt	a2,a4,14708 <_malloc_r+0xc0>
   146ec:	22075e63          	bgez	a4,14928 <_malloc_r+0x2e0>
   146f0:	01843403          	ld	s0,24(s0)
   146f4:	22868663          	beq	a3,s0,14920 <_malloc_r+0x2d8>
   146f8:	00843783          	ld	a5,8(s0)
   146fc:	ffc7f793          	andi	a5,a5,-4
   14700:	40978733          	sub	a4,a5,s1
   14704:	fee654e3          	ble	a4,a2,146ec <_malloc_r+0xa4>
   14708:	00058693          	mv	a3,a1
   1470c:	02093403          	ld	s0,32(s2)
   14710:	01090813          	addi	a6,s2,16
   14714:	47040a63          	beq	s0,a6,14b88 <_malloc_r+0x540>
   14718:	00843783          	ld	a5,8(s0)
   1471c:	01f00613          	li	a2,31
   14720:	ffc7f793          	andi	a5,a5,-4
   14724:	40978733          	sub	a4,a5,s1
   14728:	44e64a63          	blt	a2,a4,14b7c <_malloc_r+0x534>
   1472c:	03093423          	sd	a6,40(s2)
   14730:	03093023          	sd	a6,32(s2)
   14734:	20075063          	bgez	a4,14934 <_malloc_r+0x2ec>
   14738:	1ff00713          	li	a4,511
   1473c:	3cf76c63          	bltu	a4,a5,14b14 <_malloc_r+0x4cc>
   14740:	0037d793          	srli	a5,a5,0x3
   14744:	0007879b          	sext.w	a5,a5
   14748:	0017861b          	addiw	a2,a5,1
   1474c:	0016161b          	slliw	a2,a2,0x1
   14750:	00361613          	slli	a2,a2,0x3
   14754:	00893703          	ld	a4,8(s2)
   14758:	00c90633          	add	a2,s2,a2
   1475c:	00063503          	ld	a0,0(a2)
   14760:	4027d79b          	sraiw	a5,a5,0x2
   14764:	00100593          	li	a1,1
   14768:	00f597b3          	sll	a5,a1,a5
   1476c:	00e7e7b3          	or	a5,a5,a4
   14770:	ff060713          	addi	a4,a2,-16
   14774:	00e43c23          	sd	a4,24(s0)
   14778:	00a43823          	sd	a0,16(s0)
   1477c:	00f93423          	sd	a5,8(s2)
   14780:	00863023          	sd	s0,0(a2)
   14784:	00853c23          	sd	s0,24(a0)
   14788:	4026d61b          	sraiw	a2,a3,0x2
   1478c:	00100713          	li	a4,1
   14790:	00c71633          	sll	a2,a4,a2
   14794:	1cc7e063          	bltu	a5,a2,14954 <_malloc_r+0x30c>
   14798:	00f67733          	and	a4,a2,a5
   1479c:	02071463          	bnez	a4,147c4 <_malloc_r+0x17c>
   147a0:	00161613          	slli	a2,a2,0x1
   147a4:	ffc6f693          	andi	a3,a3,-4
   147a8:	00f67733          	and	a4,a2,a5
   147ac:	0046869b          	addiw	a3,a3,4
   147b0:	00071a63          	bnez	a4,147c4 <_malloc_r+0x17c>
   147b4:	00161613          	slli	a2,a2,0x1
   147b8:	00f67733          	and	a4,a2,a5
   147bc:	0046869b          	addiw	a3,a3,4
   147c0:	fe070ae3          	beqz	a4,147b4 <_malloc_r+0x16c>
   147c4:	01f00513          	li	a0,31
   147c8:	0016889b          	addiw	a7,a3,1
   147cc:	0018989b          	slliw	a7,a7,0x1
   147d0:	00389893          	slli	a7,a7,0x3
   147d4:	011908b3          	add	a7,s2,a7
   147d8:	ff088893          	addi	a7,a7,-16
   147dc:	00088593          	mv	a1,a7
   147e0:	00068313          	mv	t1,a3
   147e4:	0185b403          	ld	s0,24(a1)
   147e8:	00859a63          	bne	a1,s0,147fc <_malloc_r+0x1b4>
   147ec:	3a40006f          	j	14b90 <_malloc_r+0x548>
   147f0:	3c075263          	bgez	a4,14bb4 <_malloc_r+0x56c>
   147f4:	01843403          	ld	s0,24(s0)
   147f8:	38858c63          	beq	a1,s0,14b90 <_malloc_r+0x548>
   147fc:	00843783          	ld	a5,8(s0)
   14800:	ffc7f793          	andi	a5,a5,-4
   14804:	40978733          	sub	a4,a5,s1
   14808:	fee554e3          	ble	a4,a0,147f0 <_malloc_r+0x1a8>
   1480c:	01843783          	ld	a5,24(s0)
   14810:	01043683          	ld	a3,16(s0)
   14814:	0014e613          	ori	a2,s1,1
   14818:	00c43423          	sd	a2,8(s0)
   1481c:	00f6bc23          	sd	a5,24(a3)
   14820:	00d7b823          	sd	a3,16(a5) # ffffffff80000010 <_gp+0xffffffff7ffe4520>
   14824:	009404b3          	add	s1,s0,s1
   14828:	02993423          	sd	s1,40(s2)
   1482c:	02993023          	sd	s1,32(s2)
   14830:	00176793          	ori	a5,a4,1
   14834:	0104bc23          	sd	a6,24(s1)
   14838:	0104b823          	sd	a6,16(s1)
   1483c:	00f4b423          	sd	a5,8(s1)
   14840:	00e484b3          	add	s1,s1,a4
   14844:	00098513          	mv	a0,s3
   14848:	00e4b023          	sd	a4,0(s1)
   1484c:	055000ef          	jal	150a0 <__malloc_unlock>
   14850:	01040513          	addi	a0,s0,16
   14854:	0680006f          	j	148bc <_malloc_r+0x274>
   14858:	02000493          	li	s1,32
   1485c:	08b4ea63          	bltu	s1,a1,148f0 <_malloc_r+0x2a8>
   14860:	03d000ef          	jal	1509c <__malloc_lock>
   14864:	00a00793          	li	a5,10
   14868:	00400693          	li	a3,4
   1486c:	0001b937          	lui	s2,0x1b
   14870:	ad890913          	addi	s2,s2,-1320 # 1aad8 <__malloc_av_>
   14874:	00379793          	slli	a5,a5,0x3
   14878:	00f907b3          	add	a5,s2,a5
   1487c:	0087b403          	ld	s0,8(a5)
   14880:	ff078713          	addi	a4,a5,-16
   14884:	32e40063          	beq	s0,a4,14ba4 <_malloc_r+0x55c>
   14888:	00843783          	ld	a5,8(s0)
   1488c:	01843683          	ld	a3,24(s0)
   14890:	01043603          	ld	a2,16(s0)
   14894:	ffc7f793          	andi	a5,a5,-4
   14898:	00f407b3          	add	a5,s0,a5
   1489c:	0087b703          	ld	a4,8(a5)
   148a0:	00d63c23          	sd	a3,24(a2)
   148a4:	00c6b823          	sd	a2,16(a3)
   148a8:	00176713          	ori	a4,a4,1
   148ac:	00098513          	mv	a0,s3
   148b0:	00e7b423          	sd	a4,8(a5)
   148b4:	7ec000ef          	jal	150a0 <__malloc_unlock>
   148b8:	01040513          	addi	a0,s0,16
   148bc:	05813083          	ld	ra,88(sp)
   148c0:	05013403          	ld	s0,80(sp)
   148c4:	04813483          	ld	s1,72(sp)
   148c8:	04013903          	ld	s2,64(sp)
   148cc:	03813983          	ld	s3,56(sp)
   148d0:	03013a03          	ld	s4,48(sp)
   148d4:	02813a83          	ld	s5,40(sp)
   148d8:	02013b03          	ld	s6,32(sp)
   148dc:	01813b83          	ld	s7,24(sp)
   148e0:	01013c03          	ld	s8,16(sp)
   148e4:	00813c83          	ld	s9,8(sp)
   148e8:	06010113          	addi	sp,sp,96
   148ec:	00008067          	ret
   148f0:	00c00793          	li	a5,12
   148f4:	00f9a023          	sw	a5,0(s3) # ffffffffffffe000 <_gp+0xfffffffffffe2510>
   148f8:	00000513          	li	a0,0
   148fc:	fc1ff06f          	j	148bc <_malloc_r+0x274>
   14900:	00400713          	li	a4,4
   14904:	1ef76463          	bltu	a4,a5,14aec <_malloc_r+0x4a4>
   14908:	0064d593          	srli	a1,s1,0x6
   1490c:	0005859b          	sext.w	a1,a1
   14910:	0395851b          	addiw	a0,a1,57
   14914:	0015169b          	slliw	a3,a0,0x1
   14918:	0385859b          	addiw	a1,a1,56
   1491c:	da1ff06f          	j	146bc <_malloc_r+0x74>
   14920:	00050693          	mv	a3,a0
   14924:	de9ff06f          	j	1470c <_malloc_r+0xc4>
   14928:	01843683          	ld	a3,24(s0)
   1492c:	01043603          	ld	a2,16(s0)
   14930:	f69ff06f          	j	14898 <_malloc_r+0x250>
   14934:	00f407b3          	add	a5,s0,a5
   14938:	0087b703          	ld	a4,8(a5)
   1493c:	00098513          	mv	a0,s3
   14940:	00176713          	ori	a4,a4,1
   14944:	00e7b423          	sd	a4,8(a5)
   14948:	758000ef          	jal	150a0 <__malloc_unlock>
   1494c:	01040513          	addi	a0,s0,16
   14950:	f6dff06f          	j	148bc <_malloc_r+0x274>
   14954:	01093403          	ld	s0,16(s2)
   14958:	00843703          	ld	a4,8(s0)
   1495c:	ffc77b93          	andi	s7,a4,-4
   14960:	009be863          	bltu	s7,s1,14970 <_malloc_r+0x328>
   14964:	409b87b3          	sub	a5,s7,s1
   14968:	01f00713          	li	a4,31
   1496c:	14f74c63          	blt	a4,a5,14ac4 <_malloc_r+0x47c>
   14970:	8b81b783          	ld	a5,-1864(gp) # 1b3a8 <__malloc_top_pad>
   14974:	8201b683          	ld	a3,-2016(gp) # 1b310 <__malloc_sbrk_base>
   14978:	fff00713          	li	a4,-1
   1497c:	00f487b3          	add	a5,s1,a5
   14980:	01740a33          	add	s4,s0,s7
   14984:	02078b13          	addi	s6,a5,32
   14988:	00e68c63          	beq	a3,a4,149a0 <_malloc_r+0x358>
   1498c:	00001b37          	lui	s6,0x1
   14990:	01fb0b13          	addi	s6,s6,31 # 101f <_ftext-0xefe1>
   14994:	01678b33          	add	s6,a5,s6
   14998:	fffff7b7          	lui	a5,0xfffff
   1499c:	00fb7b33          	and	s6,s6,a5
   149a0:	000b0513          	mv	a0,s6
   149a4:	3b8040ef          	jal	18d5c <sbrk>
   149a8:	fff00793          	li	a5,-1
   149ac:	00050a93          	mv	s5,a0
   149b0:	26f50263          	beq	a0,a5,14c14 <_malloc_r+0x5cc>
   149b4:	25456e63          	bltu	a0,s4,14c10 <_malloc_r+0x5c8>
   149b8:	90018c13          	addi	s8,gp,-1792 # 1b3f0 <__malloc_current_mallinfo>
   149bc:	000c2783          	lw	a5,0(s8)
   149c0:	00fb07bb          	addw	a5,s6,a5
   149c4:	00fc2023          	sw	a5,0(s8)
   149c8:	355a0463          	beq	s4,s5,14d10 <_malloc_r+0x6c8>
   149cc:	8201b683          	ld	a3,-2016(gp) # 1b310 <__malloc_sbrk_base>
   149d0:	fff00713          	li	a4,-1
   149d4:	36e68263          	beq	a3,a4,14d38 <_malloc_r+0x6f0>
   149d8:	414a8a33          	sub	s4,s5,s4
   149dc:	00fa07bb          	addw	a5,s4,a5
   149e0:	00fc2023          	sw	a5,0(s8)
   149e4:	00faf713          	andi	a4,s5,15
   149e8:	000017b7          	lui	a5,0x1
   149ec:	00070a63          	beqz	a4,14a00 <_malloc_r+0x3b8>
   149f0:	40ea8ab3          	sub	s5,s5,a4
   149f4:	01078a13          	addi	s4,a5,16 # 1010 <_ftext-0xeff0>
   149f8:	010a8a93          	addi	s5,s5,16
   149fc:	40ea07b3          	sub	a5,s4,a4
   14a00:	00001a37          	lui	s4,0x1
   14a04:	fffa0a13          	addi	s4,s4,-1 # fff <_ftext-0xf001>
   14a08:	016a8b33          	add	s6,s5,s6
   14a0c:	014b7b33          	and	s6,s6,s4
   14a10:	41678a33          	sub	s4,a5,s6
   14a14:	000a0513          	mv	a0,s4
   14a18:	344040ef          	jal	18d5c <sbrk>
   14a1c:	fff00793          	li	a5,-1
   14a20:	30f50663          	beq	a0,a5,14d2c <_malloc_r+0x6e4>
   14a24:	41550733          	sub	a4,a0,s5
   14a28:	01470733          	add	a4,a4,s4
   14a2c:	00176713          	ori	a4,a4,1
   14a30:	000a0a1b          	sext.w	s4,s4
   14a34:	000c2783          	lw	a5,0(s8)
   14a38:	01593823          	sd	s5,16(s2)
   14a3c:	00eab423          	sd	a4,8(s5)
   14a40:	00fa07bb          	addw	a5,s4,a5
   14a44:	00fc2023          	sw	a5,0(s8)
   14a48:	03240c63          	beq	s0,s2,14a80 <_malloc_r+0x438>
   14a4c:	01f00613          	li	a2,31
   14a50:	27767463          	bleu	s7,a2,14cb8 <_malloc_r+0x670>
   14a54:	00843683          	ld	a3,8(s0)
   14a58:	fe8b8713          	addi	a4,s7,-24
   14a5c:	ff077713          	andi	a4,a4,-16
   14a60:	0016f693          	andi	a3,a3,1
   14a64:	00e6e6b3          	or	a3,a3,a4
   14a68:	00d43423          	sd	a3,8(s0)
   14a6c:	00900593          	li	a1,9
   14a70:	00e406b3          	add	a3,s0,a4
   14a74:	00b6b423          	sd	a1,8(a3)
   14a78:	00b6b823          	sd	a1,16(a3)
   14a7c:	2ce66263          	bltu	a2,a4,14d40 <_malloc_r+0x6f8>
   14a80:	8b01b683          	ld	a3,-1872(gp) # 1b3a0 <__malloc_max_sbrked_mem>
   14a84:	00f6f463          	bleu	a5,a3,14a8c <_malloc_r+0x444>
   14a88:	8af1b823          	sd	a5,-1872(gp) # 1b3a0 <__malloc_max_sbrked_mem>
   14a8c:	8a81b683          	ld	a3,-1880(gp) # 1b398 <__malloc_max_total_mem>
   14a90:	01093403          	ld	s0,16(s2)
   14a94:	00f6f463          	bleu	a5,a3,14a9c <_malloc_r+0x454>
   14a98:	8af1b423          	sd	a5,-1880(gp) # 1b398 <__malloc_max_total_mem>
   14a9c:	00843703          	ld	a4,8(s0)
   14aa0:	ffc77713          	andi	a4,a4,-4
   14aa4:	409707b3          	sub	a5,a4,s1
   14aa8:	00976663          	bltu	a4,s1,14ab4 <_malloc_r+0x46c>
   14aac:	01f00713          	li	a4,31
   14ab0:	00f74a63          	blt	a4,a5,14ac4 <_malloc_r+0x47c>
   14ab4:	00098513          	mv	a0,s3
   14ab8:	5e8000ef          	jal	150a0 <__malloc_unlock>
   14abc:	00000513          	li	a0,0
   14ac0:	dfdff06f          	j	148bc <_malloc_r+0x274>
   14ac4:	0014e713          	ori	a4,s1,1
   14ac8:	00e43423          	sd	a4,8(s0)
   14acc:	009404b3          	add	s1,s0,s1
   14ad0:	00993823          	sd	s1,16(s2)
   14ad4:	0017e793          	ori	a5,a5,1
   14ad8:	00098513          	mv	a0,s3
   14adc:	00f4b423          	sd	a5,8(s1)
   14ae0:	5c0000ef          	jal	150a0 <__malloc_unlock>
   14ae4:	01040513          	addi	a0,s0,16
   14ae8:	dd5ff06f          	j	148bc <_malloc_r+0x274>
   14aec:	01400713          	li	a4,20
   14af0:	0ef77a63          	bleu	a5,a4,14be4 <_malloc_r+0x59c>
   14af4:	05400713          	li	a4,84
   14af8:	18f76063          	bltu	a4,a5,14c78 <_malloc_r+0x630>
   14afc:	00c4d593          	srli	a1,s1,0xc
   14b00:	0005859b          	sext.w	a1,a1
   14b04:	06f5851b          	addiw	a0,a1,111
   14b08:	0015169b          	slliw	a3,a0,0x1
   14b0c:	06e5859b          	addiw	a1,a1,110
   14b10:	badff06f          	j	146bc <_malloc_r+0x74>
   14b14:	0097d713          	srli	a4,a5,0x9
   14b18:	00400613          	li	a2,4
   14b1c:	0ce67e63          	bleu	a4,a2,14bf8 <_malloc_r+0x5b0>
   14b20:	01400613          	li	a2,20
   14b24:	1ce66663          	bltu	a2,a4,14cf0 <_malloc_r+0x6a8>
   14b28:	0007071b          	sext.w	a4,a4
   14b2c:	05c7059b          	addiw	a1,a4,92
   14b30:	05b7061b          	addiw	a2,a4,91
   14b34:	0015959b          	slliw	a1,a1,0x1
   14b38:	00359593          	slli	a1,a1,0x3
   14b3c:	00b905b3          	add	a1,s2,a1
   14b40:	0005b703          	ld	a4,0(a1)
   14b44:	ff058593          	addi	a1,a1,-16
   14b48:	14e58863          	beq	a1,a4,14c98 <_malloc_r+0x650>
   14b4c:	00873603          	ld	a2,8(a4)
   14b50:	ffc67613          	andi	a2,a2,-4
   14b54:	00c7f663          	bleu	a2,a5,14b60 <_malloc_r+0x518>
   14b58:	01073703          	ld	a4,16(a4)
   14b5c:	fee598e3          	bne	a1,a4,14b4c <_malloc_r+0x504>
   14b60:	01873583          	ld	a1,24(a4)
   14b64:	00893783          	ld	a5,8(s2)
   14b68:	00b43c23          	sd	a1,24(s0)
   14b6c:	00e43823          	sd	a4,16(s0)
   14b70:	0085b823          	sd	s0,16(a1)
   14b74:	00873c23          	sd	s0,24(a4)
   14b78:	c11ff06f          	j	14788 <_malloc_r+0x140>
   14b7c:	0014e793          	ori	a5,s1,1
   14b80:	00f43423          	sd	a5,8(s0)
   14b84:	ca1ff06f          	j	14824 <_malloc_r+0x1dc>
   14b88:	00893783          	ld	a5,8(s2)
   14b8c:	bfdff06f          	j	14788 <_malloc_r+0x140>
   14b90:	0013031b          	addiw	t1,t1,1
   14b94:	00337793          	andi	a5,t1,3
   14b98:	01058593          	addi	a1,a1,16
   14b9c:	c40794e3          	bnez	a5,147e4 <_malloc_r+0x19c>
   14ba0:	0900006f          	j	14c30 <_malloc_r+0x5e8>
   14ba4:	0187b403          	ld	s0,24(a5)
   14ba8:	0026869b          	addiw	a3,a3,2
   14bac:	b68780e3          	beq	a5,s0,1470c <_malloc_r+0xc4>
   14bb0:	cd9ff06f          	j	14888 <_malloc_r+0x240>
   14bb4:	00f407b3          	add	a5,s0,a5
   14bb8:	0087b703          	ld	a4,8(a5)
   14bbc:	01843683          	ld	a3,24(s0)
   14bc0:	01043603          	ld	a2,16(s0)
   14bc4:	00176713          	ori	a4,a4,1
   14bc8:	00e7b423          	sd	a4,8(a5)
   14bcc:	00d63c23          	sd	a3,24(a2)
   14bd0:	00098513          	mv	a0,s3
   14bd4:	00c6b823          	sd	a2,16(a3)
   14bd8:	4c8000ef          	jal	150a0 <__malloc_unlock>
   14bdc:	01040513          	addi	a0,s0,16
   14be0:	cddff06f          	j	148bc <_malloc_r+0x274>
   14be4:	0007879b          	sext.w	a5,a5
   14be8:	05c7851b          	addiw	a0,a5,92
   14bec:	05b7859b          	addiw	a1,a5,91
   14bf0:	0015169b          	slliw	a3,a0,0x1
   14bf4:	ac9ff06f          	j	146bc <_malloc_r+0x74>
   14bf8:	0067d713          	srli	a4,a5,0x6
   14bfc:	0007071b          	sext.w	a4,a4
   14c00:	0397059b          	addiw	a1,a4,57
   14c04:	0387061b          	addiw	a2,a4,56
   14c08:	0015959b          	slliw	a1,a1,0x1
   14c0c:	f2dff06f          	j	14b38 <_malloc_r+0x4f0>
   14c10:	db2404e3          	beq	s0,s2,149b8 <_malloc_r+0x370>
   14c14:	01093403          	ld	s0,16(s2)
   14c18:	00843703          	ld	a4,8(s0)
   14c1c:	ffc77713          	andi	a4,a4,-4
   14c20:	e85ff06f          	j	14aa4 <_malloc_r+0x45c>
   14c24:	0108b783          	ld	a5,16(a7)
   14c28:	fff6869b          	addiw	a3,a3,-1
   14c2c:	16f89863          	bne	a7,a5,14d9c <_malloc_r+0x754>
   14c30:	0036f793          	andi	a5,a3,3
   14c34:	ff088893          	addi	a7,a7,-16
   14c38:	fe0796e3          	bnez	a5,14c24 <_malloc_r+0x5dc>
   14c3c:	00893783          	ld	a5,8(s2)
   14c40:	fff64713          	not	a4,a2
   14c44:	00f777b3          	and	a5,a4,a5
   14c48:	00f93423          	sd	a5,8(s2)
   14c4c:	00161613          	slli	a2,a2,0x1
   14c50:	d0c7e2e3          	bltu	a5,a2,14954 <_malloc_r+0x30c>
   14c54:	d00600e3          	beqz	a2,14954 <_malloc_r+0x30c>
   14c58:	00f67733          	and	a4,a2,a5
   14c5c:	00030693          	mv	a3,t1
   14c60:	b60714e3          	bnez	a4,147c8 <_malloc_r+0x180>
   14c64:	00161613          	slli	a2,a2,0x1
   14c68:	00f67733          	and	a4,a2,a5
   14c6c:	0046869b          	addiw	a3,a3,4
   14c70:	fe070ae3          	beqz	a4,14c64 <_malloc_r+0x61c>
   14c74:	b55ff06f          	j	147c8 <_malloc_r+0x180>
   14c78:	15400713          	li	a4,340
   14c7c:	04f76463          	bltu	a4,a5,14cc4 <_malloc_r+0x67c>
   14c80:	00f4d593          	srli	a1,s1,0xf
   14c84:	0005859b          	sext.w	a1,a1
   14c88:	0785851b          	addiw	a0,a1,120
   14c8c:	0015169b          	slliw	a3,a0,0x1
   14c90:	0775859b          	addiw	a1,a1,119
   14c94:	a29ff06f          	j	146bc <_malloc_r+0x74>
   14c98:	00893783          	ld	a5,8(s2)
   14c9c:	4026571b          	sraiw	a4,a2,0x2
   14ca0:	00100613          	li	a2,1
   14ca4:	00e61733          	sll	a4,a2,a4
   14ca8:	00f767b3          	or	a5,a4,a5
   14cac:	00f93423          	sd	a5,8(s2)
   14cb0:	00058713          	mv	a4,a1
   14cb4:	eb5ff06f          	j	14b68 <_malloc_r+0x520>
   14cb8:	00100793          	li	a5,1
   14cbc:	00fab423          	sd	a5,8(s5)
   14cc0:	df5ff06f          	j	14ab4 <_malloc_r+0x46c>
   14cc4:	55400713          	li	a4,1364
   14cc8:	0fe00693          	li	a3,254
   14ccc:	07f00513          	li	a0,127
   14cd0:	07e00593          	li	a1,126
   14cd4:	9ef764e3          	bltu	a4,a5,146bc <_malloc_r+0x74>
   14cd8:	0124d593          	srli	a1,s1,0x12
   14cdc:	0005859b          	sext.w	a1,a1
   14ce0:	07d5851b          	addiw	a0,a1,125
   14ce4:	0015169b          	slliw	a3,a0,0x1
   14ce8:	07c5859b          	addiw	a1,a1,124
   14cec:	9d1ff06f          	j	146bc <_malloc_r+0x74>
   14cf0:	05400613          	li	a2,84
   14cf4:	06e66063          	bltu	a2,a4,14d54 <_malloc_r+0x70c>
   14cf8:	00c7d713          	srli	a4,a5,0xc
   14cfc:	0007071b          	sext.w	a4,a4
   14d00:	06f7059b          	addiw	a1,a4,111
   14d04:	06e7061b          	addiw	a2,a4,110
   14d08:	0015959b          	slliw	a1,a1,0x1
   14d0c:	e2dff06f          	j	14b38 <_malloc_r+0x4f0>
   14d10:	034a1713          	slli	a4,s4,0x34
   14d14:	ca071ce3          	bnez	a4,149cc <_malloc_r+0x384>
   14d18:	01093683          	ld	a3,16(s2)
   14d1c:	016b8733          	add	a4,s7,s6
   14d20:	00176713          	ori	a4,a4,1
   14d24:	00e6b423          	sd	a4,8(a3)
   14d28:	d59ff06f          	j	14a80 <_malloc_r+0x438>
   14d2c:	00100713          	li	a4,1
   14d30:	00000a13          	li	s4,0
   14d34:	d01ff06f          	j	14a34 <_malloc_r+0x3ec>
   14d38:	8351b023          	sd	s5,-2016(gp) # 1b310 <__malloc_sbrk_base>
   14d3c:	ca9ff06f          	j	149e4 <_malloc_r+0x39c>
   14d40:	01040593          	addi	a1,s0,16
   14d44:	00098513          	mv	a0,s3
   14d48:	a0cff0ef          	jal	13f54 <_free_r>
   14d4c:	000c2783          	lw	a5,0(s8)
   14d50:	d31ff06f          	j	14a80 <_malloc_r+0x438>
   14d54:	15400613          	li	a2,340
   14d58:	00e66e63          	bltu	a2,a4,14d74 <_malloc_r+0x72c>
   14d5c:	00f7d713          	srli	a4,a5,0xf
   14d60:	0007071b          	sext.w	a4,a4
   14d64:	0787059b          	addiw	a1,a4,120
   14d68:	0777061b          	addiw	a2,a4,119
   14d6c:	0015959b          	slliw	a1,a1,0x1
   14d70:	dc9ff06f          	j	14b38 <_malloc_r+0x4f0>
   14d74:	55400513          	li	a0,1364
   14d78:	0fe00593          	li	a1,254
   14d7c:	07e00613          	li	a2,126
   14d80:	dae56ce3          	bltu	a0,a4,14b38 <_malloc_r+0x4f0>
   14d84:	0127d713          	srli	a4,a5,0x12
   14d88:	0007071b          	sext.w	a4,a4
   14d8c:	07d7059b          	addiw	a1,a4,125
   14d90:	07c7061b          	addiw	a2,a4,124
   14d94:	0015959b          	slliw	a1,a1,0x1
   14d98:	da1ff06f          	j	14b38 <_malloc_r+0x4f0>
   14d9c:	00893783          	ld	a5,8(s2)
   14da0:	eadff06f          	j	14c4c <_malloc_r+0x604>
   14da4:	0034d693          	srli	a3,s1,0x3
   14da8:	0006869b          	sext.w	a3,a3
   14dac:	0016879b          	addiw	a5,a3,1
   14db0:	0017979b          	slliw	a5,a5,0x1
   14db4:	ab9ff06f          	j	1486c <_malloc_r+0x224>

0000000000014db8 <memchr>:
   14db8:	00757793          	andi	a5,a0,7
   14dbc:	0ff5f813          	andi	a6,a1,255
   14dc0:	0c078c63          	beqz	a5,14e98 <memchr+0xe0>
   14dc4:	fff60793          	addi	a5,a2,-1
   14dc8:	06060463          	beqz	a2,14e30 <memchr+0x78>
   14dcc:	00054703          	lbu	a4,0(a0)
   14dd0:	07070263          	beq	a4,a6,14e34 <memchr+0x7c>
   14dd4:	00080693          	mv	a3,a6
   14dd8:	0140006f          	j	14dec <memchr+0x34>
   14ddc:	04078a63          	beqz	a5,14e30 <memchr+0x78>
   14de0:	00054703          	lbu	a4,0(a0)
   14de4:	fff78793          	addi	a5,a5,-1
   14de8:	04d70663          	beq	a4,a3,14e34 <memchr+0x7c>
   14dec:	00150513          	addi	a0,a0,1
   14df0:	00757713          	andi	a4,a0,7
   14df4:	fe0714e3          	bnez	a4,14ddc <memchr+0x24>
   14df8:	00700693          	li	a3,7
   14dfc:	02f6ee63          	bltu	a3,a5,14e38 <memchr+0x80>
   14e00:	02078863          	beqz	a5,14e30 <memchr+0x78>
   14e04:	00054703          	lbu	a4,0(a0)
   14e08:	03070663          	beq	a4,a6,14e34 <memchr+0x7c>
   14e0c:	00150713          	addi	a4,a0,1
   14e10:	00f507b3          	add	a5,a0,a5
   14e14:	00080613          	mv	a2,a6
   14e18:	0100006f          	j	14e28 <memchr+0x70>
   14e1c:	00170713          	addi	a4,a4,1
   14e20:	fff74683          	lbu	a3,-1(a4)
   14e24:	00c68863          	beq	a3,a2,14e34 <memchr+0x7c>
   14e28:	00070513          	mv	a0,a4
   14e2c:	fee798e3          	bne	a5,a4,14e1c <memchr+0x64>
   14e30:	00000513          	li	a0,0
   14e34:	00008067          	ret
   14e38:	0ff5f593          	andi	a1,a1,255
   14e3c:	0085971b          	slliw	a4,a1,0x8
   14e40:	00b765b3          	or	a1,a4,a1
   14e44:	00058713          	mv	a4,a1
   14e48:	01071613          	slli	a2,a4,0x10
   14e4c:	00c76733          	or	a4,a4,a2
   14e50:	0001b637          	lui	a2,0x1b
   14e54:	37063303          	ld	t1,880(a2) # 1b370 <__wctomb+0x50>
   14e58:	0001b637          	lui	a2,0x1b
   14e5c:	37863883          	ld	a7,888(a2) # 1b378 <__wctomb+0x58>
   14e60:	02071613          	slli	a2,a4,0x20
   14e64:	00e66633          	or	a2,a2,a4
   14e68:	00068593          	mv	a1,a3
   14e6c:	00053703          	ld	a4,0(a0)
   14e70:	00e64733          	xor	a4,a2,a4
   14e74:	006706b3          	add	a3,a4,t1
   14e78:	fff74713          	not	a4,a4
   14e7c:	00e6f733          	and	a4,a3,a4
   14e80:	01177733          	and	a4,a4,a7
   14e84:	f80710e3          	bnez	a4,14e04 <memchr+0x4c>
   14e88:	ff878793          	addi	a5,a5,-8
   14e8c:	00850513          	addi	a0,a0,8
   14e90:	fcf5eee3          	bltu	a1,a5,14e6c <memchr+0xb4>
   14e94:	f6dff06f          	j	14e00 <memchr+0x48>
   14e98:	00060793          	mv	a5,a2
   14e9c:	f5dff06f          	j	14df8 <memchr+0x40>

0000000000014ea0 <memcpy>:
   14ea0:	00a5c7b3          	xor	a5,a1,a0
   14ea4:	0077f793          	andi	a5,a5,7
   14ea8:	00c508b3          	add	a7,a0,a2
   14eac:	0e079263          	bnez	a5,14f90 <memcpy+0xf0>
   14eb0:	00700793          	li	a5,7
   14eb4:	0ec7fe63          	bleu	a2,a5,14fb0 <memcpy+0x110>
   14eb8:	00757793          	andi	a5,a0,7
   14ebc:	04079a63          	bnez	a5,14f10 <memcpy+0x70>
   14ec0:	ff88f813          	andi	a6,a7,-8
   14ec4:	fc080793          	addi	a5,a6,-64
   14ec8:	00050713          	mv	a4,a0
   14ecc:	06f56663          	bltu	a0,a5,14f38 <memcpy+0x98>
   14ed0:	00058693          	mv	a3,a1
   14ed4:	00070793          	mv	a5,a4
   14ed8:	03077863          	bleu	a6,a4,14f08 <memcpy+0x68>
   14edc:	0006b603          	ld	a2,0(a3)
   14ee0:	00878793          	addi	a5,a5,8
   14ee4:	00868693          	addi	a3,a3,8
   14ee8:	fec7bc23          	sd	a2,-8(a5)
   14eec:	ff07e8e3          	bltu	a5,a6,14edc <memcpy+0x3c>
   14ef0:	fff74793          	not	a5,a4
   14ef4:	01078833          	add	a6,a5,a6
   14ef8:	ff887813          	andi	a6,a6,-8
   14efc:	00880813          	addi	a6,a6,8
   14f00:	01070733          	add	a4,a4,a6
   14f04:	010585b3          	add	a1,a1,a6
   14f08:	09176863          	bltu	a4,a7,14f98 <memcpy+0xf8>
   14f0c:	00008067          	ret
   14f10:	00050713          	mv	a4,a0
   14f14:	0005c683          	lbu	a3,0(a1)
   14f18:	00170713          	addi	a4,a4,1
   14f1c:	00777793          	andi	a5,a4,7
   14f20:	fed70fa3          	sb	a3,-1(a4)
   14f24:	00158593          	addi	a1,a1,1
   14f28:	fe0796e3          	bnez	a5,14f14 <memcpy+0x74>
   14f2c:	ff88f813          	andi	a6,a7,-8
   14f30:	fc080793          	addi	a5,a6,-64
   14f34:	f8f77ee3          	bleu	a5,a4,14ed0 <memcpy+0x30>
   14f38:	0005b383          	ld	t2,0(a1)
   14f3c:	0085b283          	ld	t0,8(a1)
   14f40:	0105bf83          	ld	t6,16(a1)
   14f44:	0185bf03          	ld	t5,24(a1)
   14f48:	0205be83          	ld	t4,32(a1)
   14f4c:	0285be03          	ld	t3,40(a1)
   14f50:	0305b303          	ld	t1,48(a1)
   14f54:	0385b603          	ld	a2,56(a1)
   14f58:	04858593          	addi	a1,a1,72
   14f5c:	04870713          	addi	a4,a4,72
   14f60:	ff85b683          	ld	a3,-8(a1)
   14f64:	fa773c23          	sd	t2,-72(a4)
   14f68:	fc573023          	sd	t0,-64(a4)
   14f6c:	fdf73423          	sd	t6,-56(a4)
   14f70:	fde73823          	sd	t5,-48(a4)
   14f74:	fdd73c23          	sd	t4,-40(a4)
   14f78:	ffc73023          	sd	t3,-32(a4)
   14f7c:	fe673423          	sd	t1,-24(a4)
   14f80:	fec73823          	sd	a2,-16(a4)
   14f84:	fed73c23          	sd	a3,-8(a4)
   14f88:	faf768e3          	bltu	a4,a5,14f38 <memcpy+0x98>
   14f8c:	f45ff06f          	j	14ed0 <memcpy+0x30>
   14f90:	00050713          	mv	a4,a0
   14f94:	03157463          	bleu	a7,a0,14fbc <memcpy+0x11c>
   14f98:	0005c783          	lbu	a5,0(a1)
   14f9c:	00170713          	addi	a4,a4,1
   14fa0:	00158593          	addi	a1,a1,1
   14fa4:	fef70fa3          	sb	a5,-1(a4)
   14fa8:	ff1768e3          	bltu	a4,a7,14f98 <memcpy+0xf8>
   14fac:	00008067          	ret
   14fb0:	00050713          	mv	a4,a0
   14fb4:	ff1562e3          	bltu	a0,a7,14f98 <memcpy+0xf8>
   14fb8:	f55ff06f          	j	14f0c <memcpy+0x6c>
   14fbc:	00008067          	ret

0000000000014fc0 <memset>:
   14fc0:	00f00813          	li	a6,15
   14fc4:	00050713          	mv	a4,a0
   14fc8:	02c87a63          	bleu	a2,a6,14ffc <memset+0x3c>
   14fcc:	00f77793          	andi	a5,a4,15
   14fd0:	0a079063          	bnez	a5,15070 <memset+0xb0>
   14fd4:	06059e63          	bnez	a1,15050 <memset+0x90>
   14fd8:	ff067693          	andi	a3,a2,-16
   14fdc:	00f67613          	andi	a2,a2,15
   14fe0:	00e686b3          	add	a3,a3,a4
   14fe4:	00b73023          	sd	a1,0(a4)
   14fe8:	00b73423          	sd	a1,8(a4)
   14fec:	01070713          	addi	a4,a4,16
   14ff0:	fed76ae3          	bltu	a4,a3,14fe4 <memset+0x24>
   14ff4:	00061463          	bnez	a2,14ffc <memset+0x3c>
   14ff8:	00008067          	ret
   14ffc:	40c806b3          	sub	a3,a6,a2
   15000:	00269693          	slli	a3,a3,0x2
   15004:	00000297          	auipc	t0,0x0
   15008:	005686b3          	add	a3,a3,t0
   1500c:	00c68067          	jr	a3,12
   15010:	00b70723          	sb	a1,14(a4)
   15014:	00b706a3          	sb	a1,13(a4)
   15018:	00b70623          	sb	a1,12(a4)
   1501c:	00b705a3          	sb	a1,11(a4)
   15020:	00b70523          	sb	a1,10(a4)
   15024:	00b704a3          	sb	a1,9(a4)
   15028:	00b70423          	sb	a1,8(a4)
   1502c:	00b703a3          	sb	a1,7(a4)
   15030:	00b70323          	sb	a1,6(a4)
   15034:	00b702a3          	sb	a1,5(a4)
   15038:	00b70223          	sb	a1,4(a4)
   1503c:	00b701a3          	sb	a1,3(a4)
   15040:	00b70123          	sb	a1,2(a4)
   15044:	00b700a3          	sb	a1,1(a4)
   15048:	00b70023          	sb	a1,0(a4)
   1504c:	00008067          	ret
   15050:	0ff5f593          	andi	a1,a1,255
   15054:	00859693          	slli	a3,a1,0x8
   15058:	00d5e5b3          	or	a1,a1,a3
   1505c:	01059693          	slli	a3,a1,0x10
   15060:	00d5e5b3          	or	a1,a1,a3
   15064:	02059693          	slli	a3,a1,0x20
   15068:	00d5e5b3          	or	a1,a1,a3
   1506c:	f6dff06f          	j	14fd8 <memset+0x18>
   15070:	00279693          	slli	a3,a5,0x2
   15074:	00000297          	auipc	t0,0x0
   15078:	005686b3          	add	a3,a3,t0
   1507c:	00008293          	mv	t0,ra
   15080:	f98680e7          	jalr	a3,-104
   15084:	00028093          	mv	ra,t0
   15088:	ff078793          	addi	a5,a5,-16
   1508c:	40f70733          	sub	a4,a4,a5
   15090:	00f60633          	add	a2,a2,a5
   15094:	f6c874e3          	bleu	a2,a6,14ffc <memset+0x3c>
   15098:	f3dff06f          	j	14fd4 <memset+0x14>

000000000001509c <__malloc_lock>:
   1509c:	00008067          	ret

00000000000150a0 <__malloc_unlock>:
   150a0:	00008067          	ret

00000000000150a4 <_Balloc>:
   150a4:	07853783          	ld	a5,120(a0)
   150a8:	fe010113          	addi	sp,sp,-32
   150ac:	00813823          	sd	s0,16(sp)
   150b0:	00913423          	sd	s1,8(sp)
   150b4:	00113c23          	sd	ra,24(sp)
   150b8:	01213023          	sd	s2,0(sp)
   150bc:	00050413          	mv	s0,a0
   150c0:	00058493          	mv	s1,a1
   150c4:	02078e63          	beqz	a5,15100 <_Balloc+0x5c>
   150c8:	00349513          	slli	a0,s1,0x3
   150cc:	00a787b3          	add	a5,a5,a0
   150d0:	0007b503          	ld	a0,0(a5)
   150d4:	04050663          	beqz	a0,15120 <_Balloc+0x7c>
   150d8:	00053703          	ld	a4,0(a0)
   150dc:	00e7b023          	sd	a4,0(a5)
   150e0:	00052a23          	sw	zero,20(a0)
   150e4:	00052823          	sw	zero,16(a0)
   150e8:	01813083          	ld	ra,24(sp)
   150ec:	01013403          	ld	s0,16(sp)
   150f0:	00813483          	ld	s1,8(sp)
   150f4:	00013903          	ld	s2,0(sp)
   150f8:	02010113          	addi	sp,sp,32
   150fc:	00008067          	ret
   15100:	04100613          	li	a2,65
   15104:	00800593          	li	a1,8
   15108:	638020ef          	jal	17740 <_calloc_r>
   1510c:	06a43c23          	sd	a0,120(s0)
   15110:	00050793          	mv	a5,a0
   15114:	fa051ae3          	bnez	a0,150c8 <_Balloc+0x24>
   15118:	00000513          	li	a0,0
   1511c:	fcdff06f          	j	150e8 <_Balloc+0x44>
   15120:	00100913          	li	s2,1
   15124:	0099193b          	sllw	s2,s2,s1
   15128:	fff9061b          	addiw	a2,s2,-1
   1512c:	00860613          	addi	a2,a2,8
   15130:	00261613          	slli	a2,a2,0x2
   15134:	00100593          	li	a1,1
   15138:	00040513          	mv	a0,s0
   1513c:	604020ef          	jal	17740 <_calloc_r>
   15140:	fc050ce3          	beqz	a0,15118 <_Balloc+0x74>
   15144:	00952423          	sw	s1,8(a0)
   15148:	01252623          	sw	s2,12(a0)
   1514c:	f95ff06f          	j	150e0 <_Balloc+0x3c>

0000000000015150 <_Bfree>:
   15150:	02058063          	beqz	a1,15170 <_Bfree+0x20>
   15154:	0085a783          	lw	a5,8(a1)
   15158:	07853703          	ld	a4,120(a0)
   1515c:	00379793          	slli	a5,a5,0x3
   15160:	00f707b3          	add	a5,a4,a5
   15164:	0007b703          	ld	a4,0(a5)
   15168:	00e5b023          	sd	a4,0(a1)
   1516c:	00b7b023          	sd	a1,0(a5)
   15170:	00008067          	ret

0000000000015174 <__multadd>:
   15174:	fc010113          	addi	sp,sp,-64
   15178:	00010837          	lui	a6,0x10
   1517c:	02813823          	sd	s0,48(sp)
   15180:	02913423          	sd	s1,40(sp)
   15184:	03213023          	sd	s2,32(sp)
   15188:	00058493          	mv	s1,a1
   1518c:	0145a403          	lw	s0,20(a1)
   15190:	00050913          	mv	s2,a0
   15194:	02113c23          	sd	ra,56(sp)
   15198:	01313c23          	sd	s3,24(sp)
   1519c:	01858593          	addi	a1,a1,24
   151a0:	00000513          	li	a0,0
   151a4:	fff8081b          	addiw	a6,a6,-1
   151a8:	0005a783          	lw	a5,0(a1)
   151ac:	00458593          	addi	a1,a1,4
   151b0:	0015051b          	addiw	a0,a0,1
   151b4:	0107f733          	and	a4,a5,a6
   151b8:	02c7073b          	mulw	a4,a4,a2
   151bc:	0107d79b          	srliw	a5,a5,0x10
   151c0:	02c787bb          	mulw	a5,a5,a2
   151c4:	00d7073b          	addw	a4,a4,a3
   151c8:	0107569b          	srliw	a3,a4,0x10
   151cc:	01077733          	and	a4,a4,a6
   151d0:	00d786bb          	addw	a3,a5,a3
   151d4:	0106979b          	slliw	a5,a3,0x10
   151d8:	00e7873b          	addw	a4,a5,a4
   151dc:	fee5ae23          	sw	a4,-4(a1)
   151e0:	0106d69b          	srliw	a3,a3,0x10
   151e4:	fc8542e3          	blt	a0,s0,151a8 <__multadd+0x34>
   151e8:	02068263          	beqz	a3,1520c <__multadd+0x98>
   151ec:	00c4a783          	lw	a5,12(s1)
   151f0:	02f45e63          	ble	a5,s0,1522c <__multadd+0xb8>
   151f4:	00440793          	addi	a5,s0,4
   151f8:	00279793          	slli	a5,a5,0x2
   151fc:	00f487b3          	add	a5,s1,a5
   15200:	00d7a423          	sw	a3,8(a5)
   15204:	0014041b          	addiw	s0,s0,1
   15208:	0084aa23          	sw	s0,20(s1)
   1520c:	03813083          	ld	ra,56(sp)
   15210:	00048513          	mv	a0,s1
   15214:	03013403          	ld	s0,48(sp)
   15218:	02813483          	ld	s1,40(sp)
   1521c:	02013903          	ld	s2,32(sp)
   15220:	01813983          	ld	s3,24(sp)
   15224:	04010113          	addi	sp,sp,64
   15228:	00008067          	ret
   1522c:	0084a583          	lw	a1,8(s1)
   15230:	00090513          	mv	a0,s2
   15234:	00d13423          	sd	a3,8(sp)
   15238:	0015859b          	addiw	a1,a1,1
   1523c:	e69ff0ef          	jal	150a4 <_Balloc>
   15240:	0144a603          	lw	a2,20(s1)
   15244:	00050993          	mv	s3,a0
   15248:	01048593          	addi	a1,s1,16
   1524c:	00260613          	addi	a2,a2,2
   15250:	01050513          	addi	a0,a0,16
   15254:	00261613          	slli	a2,a2,0x2
   15258:	c49ff0ef          	jal	14ea0 <memcpy>
   1525c:	0084a703          	lw	a4,8(s1)
   15260:	07893783          	ld	a5,120(s2)
   15264:	00813683          	ld	a3,8(sp)
   15268:	00371713          	slli	a4,a4,0x3
   1526c:	00e787b3          	add	a5,a5,a4
   15270:	0007b703          	ld	a4,0(a5)
   15274:	00e4b023          	sd	a4,0(s1)
   15278:	0097b023          	sd	s1,0(a5)
   1527c:	00098493          	mv	s1,s3
   15280:	f75ff06f          	j	151f4 <__multadd+0x80>

0000000000015284 <__s2b>:
   15284:	fc010113          	addi	sp,sp,-64
   15288:	0086879b          	addiw	a5,a3,8
   1528c:	03213023          	sd	s2,32(sp)
   15290:	00068913          	mv	s2,a3
   15294:	00900693          	li	a3,9
   15298:	02d7c6bb          	divw	a3,a5,a3
   1529c:	02813823          	sd	s0,48(sp)
   152a0:	02913423          	sd	s1,40(sp)
   152a4:	01313c23          	sd	s3,24(sp)
   152a8:	01413823          	sd	s4,16(sp)
   152ac:	02113c23          	sd	ra,56(sp)
   152b0:	01513423          	sd	s5,8(sp)
   152b4:	01613023          	sd	s6,0(sp)
   152b8:	00100793          	li	a5,1
   152bc:	00058413          	mv	s0,a1
   152c0:	00050993          	mv	s3,a0
   152c4:	00060a13          	mv	s4,a2
   152c8:	00070493          	mv	s1,a4
   152cc:	00000593          	li	a1,0
   152d0:	00d7d863          	ble	a3,a5,152e0 <__s2b+0x5c>
   152d4:	0017979b          	slliw	a5,a5,0x1
   152d8:	0015859b          	addiw	a1,a1,1
   152dc:	fed7cce3          	blt	a5,a3,152d4 <__s2b+0x50>
   152e0:	00098513          	mv	a0,s3
   152e4:	dc1ff0ef          	jal	150a4 <_Balloc>
   152e8:	00100793          	li	a5,1
   152ec:	00f52a23          	sw	a5,20(a0)
   152f0:	00952c23          	sw	s1,24(a0)
   152f4:	00900793          	li	a5,9
   152f8:	0b47d663          	ble	s4,a5,153a4 <__s2b+0x120>
   152fc:	ff6a0b1b          	addiw	s6,s4,-10
   15300:	020b1b13          	slli	s6,s6,0x20
   15304:	020b5b13          	srli	s6,s6,0x20
   15308:	00940a93          	addi	s5,s0,9
   1530c:	00ab0793          	addi	a5,s6,10
   15310:	00f40433          	add	s0,s0,a5
   15314:	000a8493          	mv	s1,s5
   15318:	00148493          	addi	s1,s1,1
   1531c:	fff4c683          	lbu	a3,-1(s1)
   15320:	00050593          	mv	a1,a0
   15324:	00a00613          	li	a2,10
   15328:	fd06869b          	addiw	a3,a3,-48
   1532c:	00098513          	mv	a0,s3
   15330:	e45ff0ef          	jal	15174 <__multadd>
   15334:	fe8492e3          	bne	s1,s0,15318 <__s2b+0x94>
   15338:	016a8433          	add	s0,s5,s6
   1533c:	00240413          	addi	s0,s0,2
   15340:	032a5e63          	ble	s2,s4,1537c <__s2b+0xf8>
   15344:	fff9091b          	addiw	s2,s2,-1
   15348:	414904bb          	subw	s1,s2,s4
   1534c:	02049493          	slli	s1,s1,0x20
   15350:	0204d493          	srli	s1,s1,0x20
   15354:	00148493          	addi	s1,s1,1
   15358:	009404b3          	add	s1,s0,s1
   1535c:	00140413          	addi	s0,s0,1
   15360:	fff44683          	lbu	a3,-1(s0)
   15364:	00050593          	mv	a1,a0
   15368:	00a00613          	li	a2,10
   1536c:	fd06869b          	addiw	a3,a3,-48
   15370:	00098513          	mv	a0,s3
   15374:	e01ff0ef          	jal	15174 <__multadd>
   15378:	fe9412e3          	bne	s0,s1,1535c <__s2b+0xd8>
   1537c:	03813083          	ld	ra,56(sp)
   15380:	03013403          	ld	s0,48(sp)
   15384:	02813483          	ld	s1,40(sp)
   15388:	02013903          	ld	s2,32(sp)
   1538c:	01813983          	ld	s3,24(sp)
   15390:	01013a03          	ld	s4,16(sp)
   15394:	00813a83          	ld	s5,8(sp)
   15398:	00013b03          	ld	s6,0(sp)
   1539c:	04010113          	addi	sp,sp,64
   153a0:	00008067          	ret
   153a4:	00a40413          	addi	s0,s0,10
   153a8:	00078a13          	mv	s4,a5
   153ac:	f95ff06f          	j	15340 <__s2b+0xbc>

00000000000153b0 <__hi0bits>:
   153b0:	ffff06b7          	lui	a3,0xffff0
   153b4:	00d576b3          	and	a3,a0,a3
   153b8:	00050793          	mv	a5,a0
   153bc:	00000713          	li	a4,0
   153c0:	00069663          	bnez	a3,153cc <__hi0bits+0x1c>
   153c4:	0105179b          	slliw	a5,a0,0x10
   153c8:	01000713          	li	a4,16
   153cc:	ff0006b7          	lui	a3,0xff000
   153d0:	00d7f6b3          	and	a3,a5,a3
   153d4:	00069663          	bnez	a3,153e0 <__hi0bits+0x30>
   153d8:	0087071b          	addiw	a4,a4,8
   153dc:	0087979b          	slliw	a5,a5,0x8
   153e0:	f00006b7          	lui	a3,0xf0000
   153e4:	00d7f6b3          	and	a3,a5,a3
   153e8:	00069663          	bnez	a3,153f4 <__hi0bits+0x44>
   153ec:	0047071b          	addiw	a4,a4,4
   153f0:	0047979b          	slliw	a5,a5,0x4
   153f4:	c00006b7          	lui	a3,0xc0000
   153f8:	00d7f6b3          	and	a3,a5,a3
   153fc:	00069663          	bnez	a3,15408 <__hi0bits+0x58>
   15400:	0027071b          	addiw	a4,a4,2
   15404:	0027979b          	slliw	a5,a5,0x2
   15408:	0007ce63          	bltz	a5,15424 <__hi0bits+0x74>
   1540c:	02179693          	slli	a3,a5,0x21
   15410:	02000513          	li	a0,32
   15414:	0006c463          	bltz	a3,1541c <__hi0bits+0x6c>
   15418:	00008067          	ret
   1541c:	0017051b          	addiw	a0,a4,1
   15420:	00008067          	ret
   15424:	00070513          	mv	a0,a4
   15428:	00008067          	ret

000000000001542c <__lo0bits>:
   1542c:	00052783          	lw	a5,0(a0)
   15430:	00050693          	mv	a3,a0
   15434:	0077f713          	andi	a4,a5,7
   15438:	02070463          	beqz	a4,15460 <__lo0bits+0x34>
   1543c:	0017f713          	andi	a4,a5,1
   15440:	00000513          	li	a0,0
   15444:	08071263          	bnez	a4,154c8 <__lo0bits+0x9c>
   15448:	0027f713          	andi	a4,a5,2
   1544c:	08071063          	bnez	a4,154cc <__lo0bits+0xa0>
   15450:	0027d79b          	srliw	a5,a5,0x2
   15454:	00f6a023          	sw	a5,0(a3) # ffffffffc0000000 <_gp+0xffffffffbffe4510>
   15458:	00200513          	li	a0,2
   1545c:	00008067          	ret
   15460:	0107961b          	slliw	a2,a5,0x10
   15464:	0106561b          	srliw	a2,a2,0x10
   15468:	00000713          	li	a4,0
   1546c:	00061663          	bnez	a2,15478 <__lo0bits+0x4c>
   15470:	0107d79b          	srliw	a5,a5,0x10
   15474:	01000713          	li	a4,16
   15478:	0ff7f613          	andi	a2,a5,255
   1547c:	00061663          	bnez	a2,15488 <__lo0bits+0x5c>
   15480:	0087071b          	addiw	a4,a4,8
   15484:	0087d79b          	srliw	a5,a5,0x8
   15488:	00f7f613          	andi	a2,a5,15
   1548c:	00061663          	bnez	a2,15498 <__lo0bits+0x6c>
   15490:	0047071b          	addiw	a4,a4,4
   15494:	0047d79b          	srliw	a5,a5,0x4
   15498:	0037f613          	andi	a2,a5,3
   1549c:	00061663          	bnez	a2,154a8 <__lo0bits+0x7c>
   154a0:	0027071b          	addiw	a4,a4,2
   154a4:	0027d79b          	srliw	a5,a5,0x2
   154a8:	0017f613          	andi	a2,a5,1
   154ac:	00061a63          	bnez	a2,154c0 <__lo0bits+0x94>
   154b0:	0017d79b          	srliw	a5,a5,0x1
   154b4:	02000513          	li	a0,32
   154b8:	00078863          	beqz	a5,154c8 <__lo0bits+0x9c>
   154bc:	0017071b          	addiw	a4,a4,1
   154c0:	00f6a023          	sw	a5,0(a3)
   154c4:	00070513          	mv	a0,a4
   154c8:	00008067          	ret
   154cc:	0017d79b          	srliw	a5,a5,0x1
   154d0:	00f6a023          	sw	a5,0(a3)
   154d4:	00100513          	li	a0,1
   154d8:	00008067          	ret

00000000000154dc <__i2b>:
   154dc:	ff010113          	addi	sp,sp,-16
   154e0:	00813023          	sd	s0,0(sp)
   154e4:	00058413          	mv	s0,a1
   154e8:	00100593          	li	a1,1
   154ec:	00113423          	sd	ra,8(sp)
   154f0:	bb5ff0ef          	jal	150a4 <_Balloc>
   154f4:	00813083          	ld	ra,8(sp)
   154f8:	00100713          	li	a4,1
   154fc:	00852c23          	sw	s0,24(a0)
   15500:	00e52a23          	sw	a4,20(a0)
   15504:	00013403          	ld	s0,0(sp)
   15508:	01010113          	addi	sp,sp,16
   1550c:	00008067          	ret

0000000000015510 <__multiply>:
   15510:	fd010113          	addi	sp,sp,-48
   15514:	01313423          	sd	s3,8(sp)
   15518:	01413023          	sd	s4,0(sp)
   1551c:	0145a983          	lw	s3,20(a1)
   15520:	01462a03          	lw	s4,20(a2)
   15524:	00913c23          	sd	s1,24(sp)
   15528:	01213823          	sd	s2,16(sp)
   1552c:	02113423          	sd	ra,40(sp)
   15530:	02813023          	sd	s0,32(sp)
   15534:	00058913          	mv	s2,a1
   15538:	00060493          	mv	s1,a2
   1553c:	0149dc63          	ble	s4,s3,15554 <__multiply+0x44>
   15540:	00098713          	mv	a4,s3
   15544:	00060913          	mv	s2,a2
   15548:	000a0993          	mv	s3,s4
   1554c:	00058493          	mv	s1,a1
   15550:	00070a13          	mv	s4,a4
   15554:	00c92783          	lw	a5,12(s2)
   15558:	00892583          	lw	a1,8(s2)
   1555c:	0149843b          	addw	s0,s3,s4
   15560:	0087a7b3          	slt	a5,a5,s0
   15564:	00f585bb          	addw	a1,a1,a5
   15568:	b3dff0ef          	jal	150a4 <_Balloc>
   1556c:	00040893          	mv	a7,s0
   15570:	01850313          	addi	t1,a0,24
   15574:	00289893          	slli	a7,a7,0x2
   15578:	011308b3          	add	a7,t1,a7
   1557c:	00030793          	mv	a5,t1
   15580:	01137863          	bleu	a7,t1,15590 <__multiply+0x80>
   15584:	0007a023          	sw	zero,0(a5)
   15588:	00478793          	addi	a5,a5,4
   1558c:	ff17ece3          	bltu	a5,a7,15584 <__multiply+0x74>
   15590:	01848613          	addi	a2,s1,24
   15594:	002a1e13          	slli	t3,s4,0x2
   15598:	01890e93          	addi	t4,s2,24
   1559c:	00299813          	slli	a6,s3,0x2
   155a0:	000105b7          	lui	a1,0x10
   155a4:	01c60e33          	add	t3,a2,t3
   155a8:	010e8833          	add	a6,t4,a6
   155ac:	fff5859b          	addiw	a1,a1,-1
   155b0:	11c67463          	bleu	t3,a2,156b8 <__multiply+0x1a8>
   155b4:	00062383          	lw	t2,0(a2)
   155b8:	00b3f4b3          	and	s1,t2,a1
   155bc:	06048a63          	beqz	s1,15630 <__multiply+0x120>
   155c0:	00030293          	mv	t0,t1
   155c4:	000e8f93          	mv	t6,t4
   155c8:	00000793          	li	a5,0
   155cc:	0080006f          	j	155d4 <__multiply+0xc4>
   155d0:	00038293          	mv	t0,t2
   155d4:	000fa683          	lw	a3,0(t6)
   155d8:	0002af03          	lw	t5,0(t0) # 15074 <memset+0xb4>
   155dc:	00428393          	addi	t2,t0,4
   155e0:	00b6f733          	and	a4,a3,a1
   155e4:	0297073b          	mulw	a4,a4,s1
   155e8:	0106d69b          	srliw	a3,a3,0x10
   155ec:	00bf7933          	and	s2,t5,a1
   155f0:	010f5f1b          	srliw	t5,t5,0x10
   155f4:	004f8f93          	addi	t6,t6,4
   155f8:	029686bb          	mulw	a3,a3,s1
   155fc:	0127073b          	addw	a4,a4,s2
   15600:	00f707bb          	addw	a5,a4,a5
   15604:	0107d71b          	srliw	a4,a5,0x10
   15608:	00b7f7b3          	and	a5,a5,a1
   1560c:	01e686bb          	addw	a3,a3,t5
   15610:	00e6873b          	addw	a4,a3,a4
   15614:	0107169b          	slliw	a3,a4,0x10
   15618:	00f6e7b3          	or	a5,a3,a5
   1561c:	fef3ae23          	sw	a5,-4(t2)
   15620:	0107579b          	srliw	a5,a4,0x10
   15624:	fb0fe6e3          	bltu	t6,a6,155d0 <__multiply+0xc0>
   15628:	00f2a223          	sw	a5,4(t0)
   1562c:	00062383          	lw	t2,0(a2)
   15630:	0103d39b          	srliw	t2,t2,0x10
   15634:	06038c63          	beqz	t2,156ac <__multiply+0x19c>
   15638:	00032783          	lw	a5,0(t1) # 10000 <_ftext>
   1563c:	00030293          	mv	t0,t1
   15640:	000e8f93          	mv	t6,t4
   15644:	00078f13          	mv	t5,a5
   15648:	00000693          	li	a3,0
   1564c:	0080006f          	j	15654 <__multiply+0x144>
   15650:	00048293          	mv	t0,s1
   15654:	000fa703          	lw	a4,0(t6)
   15658:	010f5f1b          	srliw	t5,t5,0x10
   1565c:	00b7f7b3          	and	a5,a5,a1
   15660:	00b77733          	and	a4,a4,a1
   15664:	0277073b          	mulw	a4,a4,t2
   15668:	00428493          	addi	s1,t0,4
   1566c:	004f8f93          	addi	t6,t6,4
   15670:	01e7073b          	addw	a4,a4,t5
   15674:	00d706bb          	addw	a3,a4,a3
   15678:	0106971b          	slliw	a4,a3,0x10
   1567c:	00f767b3          	or	a5,a4,a5
   15680:	fef4ae23          	sw	a5,-4(s1)
   15684:	ffefd703          	lhu	a4,-2(t6)
   15688:	0042af03          	lw	t5,4(t0)
   1568c:	0106d69b          	srliw	a3,a3,0x10
   15690:	0277073b          	mulw	a4,a4,t2
   15694:	00bf77b3          	and	a5,t5,a1
   15698:	00f707bb          	addw	a5,a4,a5
   1569c:	00d787bb          	addw	a5,a5,a3
   156a0:	0107d69b          	srliw	a3,a5,0x10
   156a4:	fb0fe6e3          	bltu	t6,a6,15650 <__multiply+0x140>
   156a8:	00f2a223          	sw	a5,4(t0)
   156ac:	00460613          	addi	a2,a2,4
   156b0:	00430313          	addi	t1,t1,4
   156b4:	f1c660e3          	bltu	a2,t3,155b4 <__multiply+0xa4>
   156b8:	02805463          	blez	s0,156e0 <__multiply+0x1d0>
   156bc:	ffc8a783          	lw	a5,-4(a7)
   156c0:	ffc88893          	addi	a7,a7,-4
   156c4:	00078863          	beqz	a5,156d4 <__multiply+0x1c4>
   156c8:	0180006f          	j	156e0 <__multiply+0x1d0>
   156cc:	0008a783          	lw	a5,0(a7)
   156d0:	00079863          	bnez	a5,156e0 <__multiply+0x1d0>
   156d4:	fff4041b          	addiw	s0,s0,-1
   156d8:	ffc88893          	addi	a7,a7,-4
   156dc:	fe0418e3          	bnez	s0,156cc <__multiply+0x1bc>
   156e0:	02813083          	ld	ra,40(sp)
   156e4:	00852a23          	sw	s0,20(a0)
   156e8:	01813483          	ld	s1,24(sp)
   156ec:	02013403          	ld	s0,32(sp)
   156f0:	01013903          	ld	s2,16(sp)
   156f4:	00813983          	ld	s3,8(sp)
   156f8:	00013a03          	ld	s4,0(sp)
   156fc:	03010113          	addi	sp,sp,48
   15700:	00008067          	ret

0000000000015704 <__pow5mult>:
   15704:	fd010113          	addi	sp,sp,-48
   15708:	02813023          	sd	s0,32(sp)
   1570c:	01213823          	sd	s2,16(sp)
   15710:	01313423          	sd	s3,8(sp)
   15714:	02113423          	sd	ra,40(sp)
   15718:	00913c23          	sd	s1,24(sp)
   1571c:	00367793          	andi	a5,a2,3
   15720:	00060413          	mv	s0,a2
   15724:	00050993          	mv	s3,a0
   15728:	00058913          	mv	s2,a1
   1572c:	0a079e63          	bnez	a5,157e8 <__pow5mult+0xe4>
   15730:	4024541b          	sraiw	s0,s0,0x2
   15734:	06040663          	beqz	s0,157a0 <__pow5mult+0x9c>
   15738:	0709b483          	ld	s1,112(s3)
   1573c:	0c048a63          	beqz	s1,15810 <__pow5mult+0x10c>
   15740:	00147793          	andi	a5,s0,1
   15744:	02079063          	bnez	a5,15764 <__pow5mult+0x60>
   15748:	4014541b          	sraiw	s0,s0,0x1
   1574c:	04040a63          	beqz	s0,157a0 <__pow5mult+0x9c>
   15750:	0004b503          	ld	a0,0(s1)
   15754:	06050663          	beqz	a0,157c0 <__pow5mult+0xbc>
   15758:	00050493          	mv	s1,a0
   1575c:	00147793          	andi	a5,s0,1
   15760:	fe0784e3          	beqz	a5,15748 <__pow5mult+0x44>
   15764:	00048613          	mv	a2,s1
   15768:	00090593          	mv	a1,s2
   1576c:	00098513          	mv	a0,s3
   15770:	da1ff0ef          	jal	15510 <__multiply>
   15774:	06090663          	beqz	s2,157e0 <__pow5mult+0xdc>
   15778:	00892783          	lw	a5,8(s2)
   1577c:	0789b703          	ld	a4,120(s3)
   15780:	4014541b          	sraiw	s0,s0,0x1
   15784:	00379793          	slli	a5,a5,0x3
   15788:	00f707b3          	add	a5,a4,a5
   1578c:	0007b703          	ld	a4,0(a5)
   15790:	00e93023          	sd	a4,0(s2)
   15794:	0127b023          	sd	s2,0(a5)
   15798:	00050913          	mv	s2,a0
   1579c:	fa041ae3          	bnez	s0,15750 <__pow5mult+0x4c>
   157a0:	02813083          	ld	ra,40(sp)
   157a4:	00090513          	mv	a0,s2
   157a8:	02013403          	ld	s0,32(sp)
   157ac:	01813483          	ld	s1,24(sp)
   157b0:	01013903          	ld	s2,16(sp)
   157b4:	00813983          	ld	s3,8(sp)
   157b8:	03010113          	addi	sp,sp,48
   157bc:	00008067          	ret
   157c0:	00048613          	mv	a2,s1
   157c4:	00048593          	mv	a1,s1
   157c8:	00098513          	mv	a0,s3
   157cc:	d45ff0ef          	jal	15510 <__multiply>
   157d0:	00a4b023          	sd	a0,0(s1)
   157d4:	00053023          	sd	zero,0(a0)
   157d8:	00050493          	mv	s1,a0
   157dc:	f81ff06f          	j	1575c <__pow5mult+0x58>
   157e0:	00050913          	mv	s2,a0
   157e4:	f65ff06f          	j	15748 <__pow5mult+0x44>
   157e8:	fff7879b          	addiw	a5,a5,-1
   157ec:	00019737          	lui	a4,0x19
   157f0:	f6870713          	addi	a4,a4,-152 # 18f68 <p05.2568>
   157f4:	00279793          	slli	a5,a5,0x2
   157f8:	00f707b3          	add	a5,a4,a5
   157fc:	0007a603          	lw	a2,0(a5)
   15800:	00000693          	li	a3,0
   15804:	971ff0ef          	jal	15174 <__multadd>
   15808:	00050913          	mv	s2,a0
   1580c:	f25ff06f          	j	15730 <__pow5mult+0x2c>
   15810:	00100593          	li	a1,1
   15814:	00098513          	mv	a0,s3
   15818:	88dff0ef          	jal	150a4 <_Balloc>
   1581c:	27100793          	li	a5,625
   15820:	00f52c23          	sw	a5,24(a0)
   15824:	00100793          	li	a5,1
   15828:	00f52a23          	sw	a5,20(a0)
   1582c:	06a9b823          	sd	a0,112(s3)
   15830:	00050493          	mv	s1,a0
   15834:	00053023          	sd	zero,0(a0)
   15838:	f09ff06f          	j	15740 <__pow5mult+0x3c>

000000000001583c <__lshift>:
   1583c:	fc010113          	addi	sp,sp,-64
   15840:	01513423          	sd	s5,8(sp)
   15844:	0145aa83          	lw	s5,20(a1) # 10014 <_ftext+0x14>
   15848:	02813823          	sd	s0,48(sp)
   1584c:	00c5a783          	lw	a5,12(a1)
   15850:	4056541b          	sraiw	s0,a2,0x5
   15854:	01540abb          	addw	s5,s0,s5
   15858:	02913423          	sd	s1,40(sp)
   1585c:	03213023          	sd	s2,32(sp)
   15860:	01313c23          	sd	s3,24(sp)
   15864:	01413823          	sd	s4,16(sp)
   15868:	02113c23          	sd	ra,56(sp)
   1586c:	001a849b          	addiw	s1,s5,1
   15870:	00058913          	mv	s2,a1
   15874:	00060993          	mv	s3,a2
   15878:	00050a13          	mv	s4,a0
   1587c:	0085a583          	lw	a1,8(a1)
   15880:	0097d863          	ble	s1,a5,15890 <__lshift+0x54>
   15884:	0017979b          	slliw	a5,a5,0x1
   15888:	0015859b          	addiw	a1,a1,1
   1588c:	fe97cce3          	blt	a5,s1,15884 <__lshift+0x48>
   15890:	000a0513          	mv	a0,s4
   15894:	811ff0ef          	jal	150a4 <_Balloc>
   15898:	01850793          	addi	a5,a0,24
   1589c:	0e805c63          	blez	s0,15994 <__lshift+0x158>
   158a0:	fff4071b          	addiw	a4,s0,-1
   158a4:	02071713          	slli	a4,a4,0x20
   158a8:	02075713          	srli	a4,a4,0x20
   158ac:	00170713          	addi	a4,a4,1
   158b0:	00271713          	slli	a4,a4,0x2
   158b4:	00e78733          	add	a4,a5,a4
   158b8:	00478793          	addi	a5,a5,4
   158bc:	fe07ae23          	sw	zero,-4(a5)
   158c0:	fee79ce3          	bne	a5,a4,158b8 <__lshift+0x7c>
   158c4:	01492883          	lw	a7,20(s2)
   158c8:	01890793          	addi	a5,s2,24
   158cc:	01f9f613          	andi	a2,s3,31
   158d0:	00289893          	slli	a7,a7,0x2
   158d4:	011788b3          	add	a7,a5,a7
   158d8:	08060863          	beqz	a2,15968 <__lshift+0x12c>
   158dc:	02000313          	li	t1,32
   158e0:	40c3033b          	subw	t1,t1,a2
   158e4:	00000693          	li	a3,0
   158e8:	0080006f          	j	158f0 <__lshift+0xb4>
   158ec:	00080713          	mv	a4,a6
   158f0:	0007a583          	lw	a1,0(a5)
   158f4:	00470813          	addi	a6,a4,4
   158f8:	00478793          	addi	a5,a5,4
   158fc:	00c595bb          	sllw	a1,a1,a2
   15900:	00d5e6b3          	or	a3,a1,a3
   15904:	fed82e23          	sw	a3,-4(a6) # fffc <_ftext-0x4>
   15908:	ffc7a683          	lw	a3,-4(a5)
   1590c:	0066d6bb          	srlw	a3,a3,t1
   15910:	fd17eee3          	bltu	a5,a7,158ec <__lshift+0xb0>
   15914:	00d72223          	sw	a3,4(a4)
   15918:	00068463          	beqz	a3,15920 <__lshift+0xe4>
   1591c:	002a849b          	addiw	s1,s5,2
   15920:	00892783          	lw	a5,8(s2)
   15924:	078a3703          	ld	a4,120(s4)
   15928:	fff4849b          	addiw	s1,s1,-1
   1592c:	00379793          	slli	a5,a5,0x3
   15930:	00f707b3          	add	a5,a4,a5
   15934:	0007b703          	ld	a4,0(a5)
   15938:	03813083          	ld	ra,56(sp)
   1593c:	00952a23          	sw	s1,20(a0)
   15940:	00e93023          	sd	a4,0(s2)
   15944:	0127b023          	sd	s2,0(a5)
   15948:	03013403          	ld	s0,48(sp)
   1594c:	02813483          	ld	s1,40(sp)
   15950:	02013903          	ld	s2,32(sp)
   15954:	01813983          	ld	s3,24(sp)
   15958:	01013a03          	ld	s4,16(sp)
   1595c:	00813a83          	ld	s5,8(sp)
   15960:	04010113          	addi	sp,sp,64
   15964:	00008067          	ret
   15968:	00478793          	addi	a5,a5,4
   1596c:	ffc7a683          	lw	a3,-4(a5)
   15970:	00470713          	addi	a4,a4,4
   15974:	fed72e23          	sw	a3,-4(a4)
   15978:	fb17f4e3          	bleu	a7,a5,15920 <__lshift+0xe4>
   1597c:	00478793          	addi	a5,a5,4
   15980:	ffc7a683          	lw	a3,-4(a5)
   15984:	00470713          	addi	a4,a4,4
   15988:	fed72e23          	sw	a3,-4(a4)
   1598c:	fd17eee3          	bltu	a5,a7,15968 <__lshift+0x12c>
   15990:	f91ff06f          	j	15920 <__lshift+0xe4>
   15994:	00078713          	mv	a4,a5
   15998:	f2dff06f          	j	158c4 <__lshift+0x88>

000000000001599c <__mcmp>:
   1599c:	01452783          	lw	a5,20(a0)
   159a0:	0145a703          	lw	a4,20(a1)
   159a4:	40e787bb          	subw	a5,a5,a4
   159a8:	04079263          	bnez	a5,159ec <__mcmp+0x50>
   159ac:	00271713          	slli	a4,a4,0x2
   159b0:	01850513          	addi	a0,a0,24
   159b4:	01858593          	addi	a1,a1,24
   159b8:	00e507b3          	add	a5,a0,a4
   159bc:	00e585b3          	add	a1,a1,a4
   159c0:	0080006f          	j	159c8 <__mcmp+0x2c>
   159c4:	02f57863          	bleu	a5,a0,159f4 <__mcmp+0x58>
   159c8:	ffc78793          	addi	a5,a5,-4
   159cc:	ffc58593          	addi	a1,a1,-4
   159d0:	0007a703          	lw	a4,0(a5)
   159d4:	0005a683          	lw	a3,0(a1)
   159d8:	fed706e3          	beq	a4,a3,159c4 <__mcmp+0x28>
   159dc:	00d737b3          	sltu	a5,a4,a3
   159e0:	40f007bb          	negw	a5,a5
   159e4:	0017e513          	ori	a0,a5,1
   159e8:	00008067          	ret
   159ec:	00078513          	mv	a0,a5
   159f0:	00008067          	ret
   159f4:	00000513          	li	a0,0
   159f8:	00008067          	ret

00000000000159fc <__mdiff>:
   159fc:	0145a703          	lw	a4,20(a1)
   15a00:	01462783          	lw	a5,20(a2)
   15a04:	fd010113          	addi	sp,sp,-48
   15a08:	01213823          	sd	s2,16(sp)
   15a0c:	01313423          	sd	s3,8(sp)
   15a10:	02113423          	sd	ra,40(sp)
   15a14:	02813023          	sd	s0,32(sp)
   15a18:	00913c23          	sd	s1,24(sp)
   15a1c:	01413023          	sd	s4,0(sp)
   15a20:	40f7073b          	subw	a4,a4,a5
   15a24:	00058913          	mv	s2,a1
   15a28:	00060993          	mv	s3,a2
   15a2c:	04071863          	bnez	a4,15a7c <__mdiff+0x80>
   15a30:	00279713          	slli	a4,a5,0x2
   15a34:	01858813          	addi	a6,a1,24
   15a38:	01860413          	addi	s0,a2,24
   15a3c:	00e807b3          	add	a5,a6,a4
   15a40:	00e40733          	add	a4,s0,a4
   15a44:	0080006f          	j	15a4c <__mdiff+0x50>
   15a48:	16f87263          	bleu	a5,a6,15bac <__mdiff+0x1b0>
   15a4c:	ffc78793          	addi	a5,a5,-4
   15a50:	ffc70713          	addi	a4,a4,-4
   15a54:	0007a583          	lw	a1,0(a5)
   15a58:	00072683          	lw	a3,0(a4)
   15a5c:	fed586e3          	beq	a1,a3,15a48 <__mdiff+0x4c>
   15a60:	18d5f063          	bleu	a3,a1,15be0 <__mdiff+0x1e4>
   15a64:	00090793          	mv	a5,s2
   15a68:	00080493          	mv	s1,a6
   15a6c:	00098913          	mv	s2,s3
   15a70:	00100a13          	li	s4,1
   15a74:	00078993          	mv	s3,a5
   15a78:	0140006f          	j	15a8c <__mdiff+0x90>
   15a7c:	16074a63          	bltz	a4,15bf0 <__mdiff+0x1f4>
   15a80:	01860493          	addi	s1,a2,24
   15a84:	01858413          	addi	s0,a1,24
   15a88:	00000a13          	li	s4,0
   15a8c:	00892583          	lw	a1,8(s2)
   15a90:	e14ff0ef          	jal	150a4 <_Balloc>
   15a94:	01492e03          	lw	t3,20(s2)
   15a98:	0149af03          	lw	t5,20(s3)
   15a9c:	00010337          	lui	t1,0x10
   15aa0:	002e1e93          	slli	t4,t3,0x2
   15aa4:	002f1f13          	slli	t5,t5,0x2
   15aa8:	01452823          	sw	s4,16(a0)
   15aac:	01d40eb3          	add	t4,s0,t4
   15ab0:	01e48f33          	add	t5,s1,t5
   15ab4:	01850813          	addi	a6,a0,24
   15ab8:	00000693          	li	a3,0
   15abc:	fff3031b          	addiw	t1,t1,-1
   15ac0:	00042583          	lw	a1,0(s0)
   15ac4:	0004a883          	lw	a7,0(s1)
   15ac8:	00480813          	addi	a6,a6,4
   15acc:	0065f633          	and	a2,a1,t1
   15ad0:	00d606bb          	addw	a3,a2,a3
   15ad4:	0068f733          	and	a4,a7,t1
   15ad8:	40e6873b          	subw	a4,a3,a4
   15adc:	0105d59b          	srliw	a1,a1,0x10
   15ae0:	0108d69b          	srliw	a3,a7,0x10
   15ae4:	40d585bb          	subw	a1,a1,a3
   15ae8:	4107569b          	sraiw	a3,a4,0x10
   15aec:	00d586bb          	addw	a3,a1,a3
   15af0:	0106979b          	slliw	a5,a3,0x10
   15af4:	00677733          	and	a4,a4,t1
   15af8:	00e7e7b3          	or	a5,a5,a4
   15afc:	00448493          	addi	s1,s1,4
   15b00:	fef82e23          	sw	a5,-4(a6)
   15b04:	00440413          	addi	s0,s0,4
   15b08:	4106d69b          	sraiw	a3,a3,0x10
   15b0c:	fbe4eae3          	bltu	s1,t5,15ac0 <__mdiff+0xc4>
   15b10:	07d47063          	bleu	t4,s0,15b70 <__mdiff+0x174>
   15b14:	00010f37          	lui	t5,0x10
   15b18:	00080313          	mv	t1,a6
   15b1c:	00040893          	mv	a7,s0
   15b20:	ffff0f1b          	addiw	t5,t5,-1
   15b24:	0008a583          	lw	a1,0(a7)
   15b28:	00430313          	addi	t1,t1,4 # 10004 <_ftext+0x4>
   15b2c:	00488893          	addi	a7,a7,4
   15b30:	01e5f633          	and	a2,a1,t5
   15b34:	00d606bb          	addw	a3,a2,a3
   15b38:	4106d71b          	sraiw	a4,a3,0x10
   15b3c:	0105d59b          	srliw	a1,a1,0x10
   15b40:	00e5873b          	addw	a4,a1,a4
   15b44:	01e6f6b3          	and	a3,a3,t5
   15b48:	0107179b          	slliw	a5,a4,0x10
   15b4c:	00d7e7b3          	or	a5,a5,a3
   15b50:	fef32e23          	sw	a5,-4(t1)
   15b54:	4107569b          	sraiw	a3,a4,0x10
   15b58:	fdd8e6e3          	bltu	a7,t4,15b24 <__mdiff+0x128>
   15b5c:	fff44413          	not	s0,s0
   15b60:	01d40eb3          	add	t4,s0,t4
   15b64:	ffcefe93          	andi	t4,t4,-4
   15b68:	004e8e93          	addi	t4,t4,4
   15b6c:	01d80833          	add	a6,a6,t4
   15b70:	ffc80813          	addi	a6,a6,-4
   15b74:	00079a63          	bnez	a5,15b88 <__mdiff+0x18c>
   15b78:	ffc80813          	addi	a6,a6,-4
   15b7c:	00082783          	lw	a5,0(a6)
   15b80:	fffe0e1b          	addiw	t3,t3,-1
   15b84:	fe078ae3          	beqz	a5,15b78 <__mdiff+0x17c>
   15b88:	02813083          	ld	ra,40(sp)
   15b8c:	02013403          	ld	s0,32(sp)
   15b90:	01813483          	ld	s1,24(sp)
   15b94:	01013903          	ld	s2,16(sp)
   15b98:	00813983          	ld	s3,8(sp)
   15b9c:	00013a03          	ld	s4,0(sp)
   15ba0:	01c52a23          	sw	t3,20(a0)
   15ba4:	03010113          	addi	sp,sp,48
   15ba8:	00008067          	ret
   15bac:	00000593          	li	a1,0
   15bb0:	cf4ff0ef          	jal	150a4 <_Balloc>
   15bb4:	02813083          	ld	ra,40(sp)
   15bb8:	00100793          	li	a5,1
   15bbc:	02013403          	ld	s0,32(sp)
   15bc0:	01813483          	ld	s1,24(sp)
   15bc4:	01013903          	ld	s2,16(sp)
   15bc8:	00813983          	ld	s3,8(sp)
   15bcc:	00013a03          	ld	s4,0(sp)
   15bd0:	00f52a23          	sw	a5,20(a0)
   15bd4:	00052c23          	sw	zero,24(a0)
   15bd8:	03010113          	addi	sp,sp,48
   15bdc:	00008067          	ret
   15be0:	00040493          	mv	s1,s0
   15be4:	00000a13          	li	s4,0
   15be8:	00080413          	mv	s0,a6
   15bec:	ea1ff06f          	j	15a8c <__mdiff+0x90>
   15bf0:	00090793          	mv	a5,s2
   15bf4:	01890493          	addi	s1,s2,24
   15bf8:	01898413          	addi	s0,s3,24
   15bfc:	00098913          	mv	s2,s3
   15c00:	00100a13          	li	s4,1
   15c04:	00078993          	mv	s3,a5
   15c08:	e85ff06f          	j	15a8c <__mdiff+0x90>

0000000000015c0c <__ulp>:
   15c0c:	e20507d3          	fmv.x.d	a5,fa0
   15c10:	7ff00737          	lui	a4,0x7ff00
   15c14:	4207d793          	srai	a5,a5,0x20
   15c18:	00e7f7b3          	and	a5,a5,a4
   15c1c:	fcc00737          	lui	a4,0xfcc00
   15c20:	00e787bb          	addw	a5,a5,a4
   15c24:	00f05863          	blez	a5,15c34 <__ulp+0x28>
   15c28:	02079793          	slli	a5,a5,0x20
   15c2c:	f2078553          	fmv.d.x	fa0,a5
   15c30:	00008067          	ret
   15c34:	40f007bb          	negw	a5,a5
   15c38:	4147d79b          	sraiw	a5,a5,0x14
   15c3c:	01300713          	li	a4,19
   15c40:	04f75063          	ble	a5,a4,15c80 <__ulp+0x74>
   15c44:	fec7869b          	addiw	a3,a5,-20
   15c48:	01e00613          	li	a2,30
   15c4c:	00000793          	li	a5,0
   15c50:	00100713          	li	a4,1
   15c54:	00d64663          	blt	a2,a3,15c60 <__ulp+0x54>
   15c58:	fff6c693          	not	a3,a3
   15c5c:	00d7173b          	sllw	a4,a4,a3
   15c60:	fff00693          	li	a3,-1
   15c64:	02069693          	slli	a3,a3,0x20
   15c68:	02071713          	slli	a4,a4,0x20
   15c6c:	02075713          	srli	a4,a4,0x20
   15c70:	00d7f7b3          	and	a5,a5,a3
   15c74:	00e7e7b3          	or	a5,a5,a4
   15c78:	f2078553          	fmv.d.x	fa0,a5
   15c7c:	00008067          	ret
   15c80:	00080737          	lui	a4,0x80
   15c84:	40f757bb          	sraw	a5,a4,a5
   15c88:	fa1ff06f          	j	15c28 <__ulp+0x1c>

0000000000015c8c <__b2d>:
   15c8c:	fd010113          	addi	sp,sp,-48
   15c90:	02813023          	sd	s0,32(sp)
   15c94:	01452403          	lw	s0,20(a0)
   15c98:	00913c23          	sd	s1,24(sp)
   15c9c:	01850493          	addi	s1,a0,24
   15ca0:	00241413          	slli	s0,s0,0x2
   15ca4:	00848433          	add	s0,s1,s0
   15ca8:	01213823          	sd	s2,16(sp)
   15cac:	ffc42903          	lw	s2,-4(s0)
   15cb0:	01313423          	sd	s3,8(sp)
   15cb4:	01413023          	sd	s4,0(sp)
   15cb8:	00090513          	mv	a0,s2
   15cbc:	00058a13          	mv	s4,a1
   15cc0:	02113423          	sd	ra,40(sp)
   15cc4:	eecff0ef          	jal	153b0 <__hi0bits>
   15cc8:	02000793          	li	a5,32
   15ccc:	40a7873b          	subw	a4,a5,a0
   15cd0:	00ea2023          	sw	a4,0(s4)
   15cd4:	00a00713          	li	a4,10
   15cd8:	ffc40993          	addi	s3,s0,-4
   15cdc:	06a74a63          	blt	a4,a0,15d50 <__b2d+0xc4>
   15ce0:	00b00693          	li	a3,11
   15ce4:	40a686bb          	subw	a3,a3,a0
   15ce8:	3ff00737          	lui	a4,0x3ff00
   15cec:	00d957bb          	srlw	a5,s2,a3
   15cf0:	00e7e7b3          	or	a5,a5,a4
   15cf4:	02079793          	slli	a5,a5,0x20
   15cf8:	00000713          	li	a4,0
   15cfc:	0134f663          	bleu	s3,s1,15d08 <__b2d+0x7c>
   15d00:	ff842703          	lw	a4,-8(s0)
   15d04:	00d7573b          	srlw	a4,a4,a3
   15d08:	0155051b          	addiw	a0,a0,21
   15d0c:	00a9153b          	sllw	a0,s2,a0
   15d10:	00e56533          	or	a0,a0,a4
   15d14:	fff00713          	li	a4,-1
   15d18:	02051513          	slli	a0,a0,0x20
   15d1c:	02071713          	slli	a4,a4,0x20
   15d20:	02055513          	srli	a0,a0,0x20
   15d24:	00e7f7b3          	and	a5,a5,a4
   15d28:	00a7e7b3          	or	a5,a5,a0
   15d2c:	02813083          	ld	ra,40(sp)
   15d30:	f2078553          	fmv.d.x	fa0,a5
   15d34:	02013403          	ld	s0,32(sp)
   15d38:	01813483          	ld	s1,24(sp)
   15d3c:	01013903          	ld	s2,16(sp)
   15d40:	00813983          	ld	s3,8(sp)
   15d44:	00013a03          	ld	s4,0(sp)
   15d48:	03010113          	addi	sp,sp,48
   15d4c:	00008067          	ret
   15d50:	ff55051b          	addiw	a0,a0,-11
   15d54:	0534f263          	bleu	s3,s1,15d98 <__b2d+0x10c>
   15d58:	ff842683          	lw	a3,-8(s0)
   15d5c:	04050263          	beqz	a0,15da0 <__b2d+0x114>
   15d60:	40a7863b          	subw	a2,a5,a0
   15d64:	00a917bb          	sllw	a5,s2,a0
   15d68:	3ff00937          	lui	s2,0x3ff00
   15d6c:	00c6d73b          	srlw	a4,a3,a2
   15d70:	0127e7b3          	or	a5,a5,s2
   15d74:	00e7e7b3          	or	a5,a5,a4
   15d78:	ff840713          	addi	a4,s0,-8
   15d7c:	02079793          	slli	a5,a5,0x20
   15d80:	04e4fa63          	bleu	a4,s1,15dd4 <__b2d+0x148>
   15d84:	ff442703          	lw	a4,-12(s0)
   15d88:	00a6953b          	sllw	a0,a3,a0
   15d8c:	00c756bb          	srlw	a3,a4,a2
   15d90:	00a6e533          	or	a0,a3,a0
   15d94:	f81ff06f          	j	15d14 <__b2d+0x88>
   15d98:	00000693          	li	a3,0
   15d9c:	02051063          	bnez	a0,15dbc <__b2d+0x130>
   15da0:	3ff00737          	lui	a4,0x3ff00
   15da4:	00e967b3          	or	a5,s2,a4
   15da8:	02069693          	slli	a3,a3,0x20
   15dac:	0206d693          	srli	a3,a3,0x20
   15db0:	02079793          	slli	a5,a5,0x20
   15db4:	00d7e7b3          	or	a5,a5,a3
   15db8:	f75ff06f          	j	15d2c <__b2d+0xa0>
   15dbc:	00a917bb          	sllw	a5,s2,a0
   15dc0:	3ff00737          	lui	a4,0x3ff00
   15dc4:	00e7e7b3          	or	a5,a5,a4
   15dc8:	02079793          	slli	a5,a5,0x20
   15dcc:	00000513          	li	a0,0
   15dd0:	f45ff06f          	j	15d14 <__b2d+0x88>
   15dd4:	00a6953b          	sllw	a0,a3,a0
   15dd8:	f3dff06f          	j	15d14 <__b2d+0x88>

0000000000015ddc <__d2b>:
   15ddc:	fc010113          	addi	sp,sp,-64
   15de0:	02813823          	sd	s0,48(sp)
   15de4:	e2058453          	fmv.x.d	s0,fa1
   15de8:	00100593          	li	a1,1
   15dec:	02913423          	sd	s1,40(sp)
   15df0:	03213023          	sd	s2,32(sp)
   15df4:	01313c23          	sd	s3,24(sp)
   15df8:	01413823          	sd	s4,16(sp)
   15dfc:	00068993          	mv	s3,a3
   15e00:	02113c23          	sd	ra,56(sp)
   15e04:	00060a13          	mv	s4,a2
   15e08:	a9cff0ef          	jal	150a4 <_Balloc>
   15e0c:	42045793          	srai	a5,s0,0x20
   15e10:	02179493          	slli	s1,a5,0x21
   15e14:	001006b7          	lui	a3,0x100
   15e18:	fff6871b          	addiw	a4,a3,-1
   15e1c:	0354d493          	srli	s1,s1,0x35
   15e20:	00050913          	mv	s2,a0
   15e24:	00e7f7b3          	and	a5,a5,a4
   15e28:	00048463          	beqz	s1,15e30 <__d2b+0x54>
   15e2c:	00d7e7b3          	or	a5,a5,a3
   15e30:	00f12623          	sw	a5,12(sp)
   15e34:	0004041b          	sext.w	s0,s0
   15e38:	08040063          	beqz	s0,15eb8 <__d2b+0xdc>
   15e3c:	00810513          	addi	a0,sp,8
   15e40:	00812423          	sw	s0,8(sp)
   15e44:	de8ff0ef          	jal	1542c <__lo0bits>
   15e48:	00c12783          	lw	a5,12(sp)
   15e4c:	0a051463          	bnez	a0,15ef4 <__d2b+0x118>
   15e50:	00812703          	lw	a4,8(sp)
   15e54:	00e92c23          	sw	a4,24(s2) # 3ff00018 <_gp+0x3fee4528>
   15e58:	0017b413          	seqz	s0,a5
   15e5c:	00200713          	li	a4,2
   15e60:	4087043b          	subw	s0,a4,s0
   15e64:	00f92e23          	sw	a5,28(s2)
   15e68:	00892a23          	sw	s0,20(s2)
   15e6c:	06049663          	bnez	s1,15ed8 <__d2b+0xfc>
   15e70:	bce5051b          	addiw	a0,a0,-1074
   15e74:	00241793          	slli	a5,s0,0x2
   15e78:	00aa2023          	sw	a0,0(s4)
   15e7c:	00f907b3          	add	a5,s2,a5
   15e80:	0147a503          	lw	a0,20(a5)
   15e84:	0054141b          	slliw	s0,s0,0x5
   15e88:	d28ff0ef          	jal	153b0 <__hi0bits>
   15e8c:	40a4053b          	subw	a0,s0,a0
   15e90:	00a9a023          	sw	a0,0(s3)
   15e94:	03813083          	ld	ra,56(sp)
   15e98:	00090513          	mv	a0,s2
   15e9c:	03013403          	ld	s0,48(sp)
   15ea0:	02813483          	ld	s1,40(sp)
   15ea4:	02013903          	ld	s2,32(sp)
   15ea8:	01813983          	ld	s3,24(sp)
   15eac:	01013a03          	ld	s4,16(sp)
   15eb0:	04010113          	addi	sp,sp,64
   15eb4:	00008067          	ret
   15eb8:	00c10513          	addi	a0,sp,12
   15ebc:	d70ff0ef          	jal	1542c <__lo0bits>
   15ec0:	00c12783          	lw	a5,12(sp)
   15ec4:	00100413          	li	s0,1
   15ec8:	00892a23          	sw	s0,20(s2)
   15ecc:	00f92c23          	sw	a5,24(s2)
   15ed0:	0205051b          	addiw	a0,a0,32
   15ed4:	f8048ee3          	beqz	s1,15e70 <__d2b+0x94>
   15ed8:	bcd4849b          	addiw	s1,s1,-1075
   15edc:	00a484bb          	addw	s1,s1,a0
   15ee0:	03500793          	li	a5,53
   15ee4:	009a2023          	sw	s1,0(s4)
   15ee8:	40a7853b          	subw	a0,a5,a0
   15eec:	00a9a023          	sw	a0,0(s3)
   15ef0:	fa5ff06f          	j	15e94 <__d2b+0xb8>
   15ef4:	02000713          	li	a4,32
   15ef8:	00812683          	lw	a3,8(sp)
   15efc:	40a7073b          	subw	a4,a4,a0
   15f00:	00e7973b          	sllw	a4,a5,a4
   15f04:	00d76733          	or	a4,a4,a3
   15f08:	00a7d7bb          	srlw	a5,a5,a0
   15f0c:	00e92c23          	sw	a4,24(s2)
   15f10:	00f12623          	sw	a5,12(sp)
   15f14:	f45ff06f          	j	15e58 <__d2b+0x7c>

0000000000015f18 <__ratio>:
   15f18:	fd010113          	addi	sp,sp,-48
   15f1c:	00913c23          	sd	s1,24(sp)
   15f20:	00058493          	mv	s1,a1
   15f24:	00810593          	addi	a1,sp,8
   15f28:	02113423          	sd	ra,40(sp)
   15f2c:	02813023          	sd	s0,32(sp)
   15f30:	01213823          	sd	s2,16(sp)
   15f34:	00050913          	mv	s2,a0
   15f38:	d55ff0ef          	jal	15c8c <__b2d>
   15f3c:	00c10593          	addi	a1,sp,12
   15f40:	00048513          	mv	a0,s1
   15f44:	e2050453          	fmv.x.d	s0,fa0
   15f48:	d45ff0ef          	jal	15c8c <__b2d>
   15f4c:	01492703          	lw	a4,20(s2)
   15f50:	0144a783          	lw	a5,20(s1)
   15f54:	00c12603          	lw	a2,12(sp)
   15f58:	e20506d3          	fmv.x.d	a3,fa0
   15f5c:	40f707bb          	subw	a5,a4,a5
   15f60:	0057971b          	slliw	a4,a5,0x5
   15f64:	00812783          	lw	a5,8(sp)
   15f68:	40c787bb          	subw	a5,a5,a2
   15f6c:	00f707bb          	addw	a5,a4,a5
   15f70:	04f05463          	blez	a5,15fb8 <__ratio+0xa0>
   15f74:	00040713          	mv	a4,s0
   15f78:	0147979b          	slliw	a5,a5,0x14
   15f7c:	42045413          	srai	s0,s0,0x20
   15f80:	00f407bb          	addw	a5,s0,a5
   15f84:	02071413          	slli	s0,a4,0x20
   15f88:	02079793          	slli	a5,a5,0x20
   15f8c:	02045413          	srli	s0,s0,0x20
   15f90:	00f46433          	or	s0,s0,a5
   15f94:	f20407d3          	fmv.d.x	fa5,s0
   15f98:	f2068753          	fmv.d.x	fa4,a3
   15f9c:	02813083          	ld	ra,40(sp)
   15fa0:	02013403          	ld	s0,32(sp)
   15fa4:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   15fa8:	01813483          	ld	s1,24(sp)
   15fac:	01013903          	ld	s2,16(sp)
   15fb0:	03010113          	addi	sp,sp,48
   15fb4:	00008067          	ret
   15fb8:	00068613          	mv	a2,a3
   15fbc:	0147979b          	slliw	a5,a5,0x14
   15fc0:	4206d693          	srai	a3,a3,0x20
   15fc4:	40f687bb          	subw	a5,a3,a5
   15fc8:	02061693          	slli	a3,a2,0x20
   15fcc:	02079793          	slli	a5,a5,0x20
   15fd0:	0206d693          	srli	a3,a3,0x20
   15fd4:	00f6e6b3          	or	a3,a3,a5
   15fd8:	fbdff06f          	j	15f94 <__ratio+0x7c>

0000000000015fdc <_mprec_log10>:
   15fdc:	01700793          	li	a5,23
   15fe0:	02a7d263          	ble	a0,a5,16004 <_mprec_log10+0x28>
   15fe4:	0001b7b7          	lui	a5,0x1b
   15fe8:	3487b507          	fld	fa0,840(a5) # 1b348 <__wctomb+0x28>
   15fec:	0001b7b7          	lui	a5,0x1b
   15ff0:	3507b787          	fld	fa5,848(a5) # 1b350 <__wctomb+0x30>
   15ff4:	fff5051b          	addiw	a0,a0,-1
   15ff8:	12f57553          	fmul.d	fa0,fa0,fa5
   15ffc:	fe051ce3          	bnez	a0,15ff4 <_mprec_log10+0x18>
   16000:	00008067          	ret
   16004:	000197b7          	lui	a5,0x19
   16008:	f6878793          	addi	a5,a5,-152 # 18f68 <p05.2568>
   1600c:	00351513          	slli	a0,a0,0x3
   16010:	00a78533          	add	a0,a5,a0
   16014:	01053507          	fld	fa0,16(a0)
   16018:	00008067          	ret

000000000001601c <__copybits>:
   1601c:	01462703          	lw	a4,20(a2)
   16020:	fff5859b          	addiw	a1,a1,-1
   16024:	4055d81b          	sraiw	a6,a1,0x5
   16028:	00180813          	addi	a6,a6,1
   1602c:	01860793          	addi	a5,a2,24
   16030:	00271713          	slli	a4,a4,0x2
   16034:	00281813          	slli	a6,a6,0x2
   16038:	00e786b3          	add	a3,a5,a4
   1603c:	01050833          	add	a6,a0,a6
   16040:	02d7f863          	bleu	a3,a5,16070 <__copybits+0x54>
   16044:	00050713          	mv	a4,a0
   16048:	00478793          	addi	a5,a5,4
   1604c:	ffc7a583          	lw	a1,-4(a5)
   16050:	00470713          	addi	a4,a4,4 # 3ff00004 <_gp+0x3fee4514>
   16054:	feb72e23          	sw	a1,-4(a4)
   16058:	fed7e8e3          	bltu	a5,a3,16048 <__copybits+0x2c>
   1605c:	40c687b3          	sub	a5,a3,a2
   16060:	fe778793          	addi	a5,a5,-25
   16064:	ffc7f793          	andi	a5,a5,-4
   16068:	00478793          	addi	a5,a5,4
   1606c:	00f50533          	add	a0,a0,a5
   16070:	01057863          	bleu	a6,a0,16080 <__copybits+0x64>
   16074:	00450513          	addi	a0,a0,4
   16078:	fe052e23          	sw	zero,-4(a0)
   1607c:	ff056ce3          	bltu	a0,a6,16074 <__copybits+0x58>
   16080:	00008067          	ret

0000000000016084 <__any_on>:
   16084:	01452783          	lw	a5,20(a0)
   16088:	4055d71b          	sraiw	a4,a1,0x5
   1608c:	01850693          	addi	a3,a0,24
   16090:	04e7c463          	blt	a5,a4,160d8 <__any_on+0x54>
   16094:	04f75063          	ble	a5,a4,160d4 <__any_on+0x50>
   16098:	00070793          	mv	a5,a4
   1609c:	00279793          	slli	a5,a5,0x2
   160a0:	01f5f593          	andi	a1,a1,31
   160a4:	00f687b3          	add	a5,a3,a5
   160a8:	04059063          	bnez	a1,160e8 <__any_on+0x64>
   160ac:	04f6fa63          	bleu	a5,a3,16100 <__any_on+0x7c>
   160b0:	ffc7a503          	lw	a0,-4(a5)
   160b4:	ffc78793          	addi	a5,a5,-4
   160b8:	00051a63          	bnez	a0,160cc <__any_on+0x48>
   160bc:	02f6f463          	bleu	a5,a3,160e4 <__any_on+0x60>
   160c0:	ffc78793          	addi	a5,a5,-4
   160c4:	0007a703          	lw	a4,0(a5)
   160c8:	fe070ae3          	beqz	a4,160bc <__any_on+0x38>
   160cc:	00100513          	li	a0,1
   160d0:	00008067          	ret
   160d4:	00070793          	mv	a5,a4
   160d8:	00279793          	slli	a5,a5,0x2
   160dc:	00f687b3          	add	a5,a3,a5
   160e0:	fcdff06f          	j	160ac <__any_on+0x28>
   160e4:	00008067          	ret
   160e8:	0007a603          	lw	a2,0(a5)
   160ec:	00100513          	li	a0,1
   160f0:	00b6573b          	srlw	a4,a2,a1
   160f4:	00b715bb          	sllw	a1,a4,a1
   160f8:	fab60ae3          	beq	a2,a1,160ac <__any_on+0x28>
   160fc:	00008067          	ret
   16100:	00000513          	li	a0,0
   16104:	00008067          	ret

0000000000016108 <__fpclassifyd>:
   16108:	e20507d3          	fmv.x.d	a5,fa0
   1610c:	00200513          	li	a0,2
   16110:	4207d713          	srai	a4,a5,0x20
   16114:	0007879b          	sext.w	a5,a5
   16118:	00f766b3          	or	a3,a4,a5
   1611c:	00069463          	bnez	a3,16124 <__fpclassifyd+0x1c>
   16120:	00008067          	ret
   16124:	800006b7          	lui	a3,0x80000
   16128:	04d70863          	beq	a4,a3,16178 <__fpclassifyd+0x70>
   1612c:	fff006b7          	lui	a3,0xfff00
   16130:	00d706bb          	addw	a3,a4,a3
   16134:	7fe00637          	lui	a2,0x7fe00
   16138:	00400513          	li	a0,4
   1613c:	fec6e2e3          	bltu	a3,a2,16120 <__fpclassifyd+0x18>
   16140:	7ff006b7          	lui	a3,0x7ff00
   16144:	00d706bb          	addw	a3,a4,a3
   16148:	fcc6ece3          	bltu	a3,a2,16120 <__fpclassifyd+0x18>
   1614c:	800006b7          	lui	a3,0x80000
   16150:	fff6c693          	not	a3,a3
   16154:	00d77733          	and	a4,a4,a3
   16158:	001006b7          	lui	a3,0x100
   1615c:	00300513          	li	a0,3
   16160:	fcd760e3          	bltu	a4,a3,16120 <__fpclassifyd+0x18>
   16164:	7ff006b7          	lui	a3,0x7ff00
   16168:	00000513          	li	a0,0
   1616c:	fad71ae3          	bne	a4,a3,16120 <__fpclassifyd+0x18>
   16170:	0017b513          	seqz	a0,a5
   16174:	00008067          	ret
   16178:	fc079ae3          	bnez	a5,1614c <__fpclassifyd+0x44>
   1617c:	00008067          	ret

0000000000016180 <__sread>:
   16180:	01259503          	lh	a0,18(a1)
   16184:	ff010113          	addi	sp,sp,-16
   16188:	00813023          	sd	s0,0(sp)
   1618c:	00058413          	mv	s0,a1
   16190:	00060593          	mv	a1,a2
   16194:	00068613          	mv	a2,a3
   16198:	00113423          	sd	ra,8(sp)
   1619c:	0cd020ef          	jal	18a68 <read>
   161a0:	02054063          	bltz	a0,161c0 <__sread+0x40>
   161a4:	09043783          	ld	a5,144(s0)
   161a8:	00813083          	ld	ra,8(sp)
   161ac:	00a787b3          	add	a5,a5,a0
   161b0:	08f43823          	sd	a5,144(s0)
   161b4:	00013403          	ld	s0,0(sp)
   161b8:	01010113          	addi	sp,sp,16
   161bc:	00008067          	ret
   161c0:	01045703          	lhu	a4,16(s0)
   161c4:	fffff7b7          	lui	a5,0xfffff
   161c8:	00813083          	ld	ra,8(sp)
   161cc:	fff7879b          	addiw	a5,a5,-1
   161d0:	00f777b3          	and	a5,a4,a5
   161d4:	00f41823          	sh	a5,16(s0)
   161d8:	00013403          	ld	s0,0(sp)
   161dc:	01010113          	addi	sp,sp,16
   161e0:	00008067          	ret

00000000000161e4 <__seofread>:
   161e4:	00000513          	li	a0,0
   161e8:	00008067          	ret

00000000000161ec <__swrite>:
   161ec:	01059703          	lh	a4,16(a1)
   161f0:	fd010113          	addi	sp,sp,-48
   161f4:	02813023          	sd	s0,32(sp)
   161f8:	00913c23          	sd	s1,24(sp)
   161fc:	02113423          	sd	ra,40(sp)
   16200:	10077793          	andi	a5,a4,256
   16204:	00058413          	mv	s0,a1
   16208:	00060493          	mv	s1,a2
   1620c:	02078063          	beqz	a5,1622c <__swrite+0x40>
   16210:	01259503          	lh	a0,18(a1)
   16214:	00200613          	li	a2,2
   16218:	00000593          	li	a1,0
   1621c:	00d13423          	sd	a3,8(sp)
   16220:	035020ef          	jal	18a54 <lseek>
   16224:	01041703          	lh	a4,16(s0)
   16228:	00813683          	ld	a3,8(sp)
   1622c:	fffff7b7          	lui	a5,0xfffff
   16230:	fff7879b          	addiw	a5,a5,-1
   16234:	00f777b3          	and	a5,a4,a5
   16238:	01241503          	lh	a0,18(s0)
   1623c:	00f41823          	sh	a5,16(s0)
   16240:	00048593          	mv	a1,s1
   16244:	02813083          	ld	ra,40(sp)
   16248:	02013403          	ld	s0,32(sp)
   1624c:	01813483          	ld	s1,24(sp)
   16250:	00068613          	mv	a2,a3
   16254:	03010113          	addi	sp,sp,48
   16258:	0250206f          	j	18a7c <write>

000000000001625c <__sseek>:
   1625c:	01259503          	lh	a0,18(a1)
   16260:	ff010113          	addi	sp,sp,-16
   16264:	00813023          	sd	s0,0(sp)
   16268:	00058413          	mv	s0,a1
   1626c:	00060593          	mv	a1,a2
   16270:	00068613          	mv	a2,a3
   16274:	00113423          	sd	ra,8(sp)
   16278:	7dc020ef          	jal	18a54 <lseek>
   1627c:	fff00793          	li	a5,-1
   16280:	01045703          	lhu	a4,16(s0)
   16284:	02f50263          	beq	a0,a5,162a8 <__sseek+0x4c>
   16288:	00813083          	ld	ra,8(sp)
   1628c:	000017b7          	lui	a5,0x1
   16290:	00f767b3          	or	a5,a4,a5
   16294:	08a43823          	sd	a0,144(s0)
   16298:	00f41823          	sh	a5,16(s0)
   1629c:	00013403          	ld	s0,0(sp)
   162a0:	01010113          	addi	sp,sp,16
   162a4:	00008067          	ret
   162a8:	fffff7b7          	lui	a5,0xfffff
   162ac:	00813083          	ld	ra,8(sp)
   162b0:	fff7879b          	addiw	a5,a5,-1
   162b4:	00f777b3          	and	a5,a4,a5
   162b8:	00f41823          	sh	a5,16(s0)
   162bc:	00013403          	ld	s0,0(sp)
   162c0:	01010113          	addi	sp,sp,16
   162c4:	00008067          	ret

00000000000162c8 <__sclose>:
   162c8:	01259503          	lh	a0,18(a1)
   162cc:	05d0206f          	j	18b28 <close>

00000000000162d0 <strcmp>:
   162d0:	00b56733          	or	a4,a0,a1
   162d4:	fff00393          	li	t2,-1
   162d8:	00777713          	andi	a4,a4,7
   162dc:	0c071c63          	bnez	a4,163b4 <strcmp+0xe4>
   162e0:	00005e17          	auipc	t3,0x5
   162e4:	0a0e3e03          	ld	t3,160(t3) # 1b380 <mask>
   162e8:	00053603          	ld	a2,0(a0)
   162ec:	0005b683          	ld	a3,0(a1)
   162f0:	01c672b3          	and	t0,a2,t3
   162f4:	01c66333          	or	t1,a2,t3
   162f8:	01c282b3          	add	t0,t0,t3
   162fc:	0062e2b3          	or	t0,t0,t1
   16300:	0c729e63          	bne	t0,t2,163dc <strcmp+0x10c>
   16304:	04d61663          	bne	a2,a3,16350 <strcmp+0x80>
   16308:	00853603          	ld	a2,8(a0)
   1630c:	0085b683          	ld	a3,8(a1)
   16310:	01c672b3          	and	t0,a2,t3
   16314:	01c66333          	or	t1,a2,t3
   16318:	01c282b3          	add	t0,t0,t3
   1631c:	0062e2b3          	or	t0,t0,t1
   16320:	0a729a63          	bne	t0,t2,163d4 <strcmp+0x104>
   16324:	02d61663          	bne	a2,a3,16350 <strcmp+0x80>
   16328:	01053603          	ld	a2,16(a0)
   1632c:	0105b683          	ld	a3,16(a1)
   16330:	01c672b3          	and	t0,a2,t3
   16334:	01c66333          	or	t1,a2,t3
   16338:	01c282b3          	add	t0,t0,t3
   1633c:	0062e2b3          	or	t0,t0,t1
   16340:	0a729463          	bne	t0,t2,163e8 <strcmp+0x118>
   16344:	01850513          	addi	a0,a0,24
   16348:	01858593          	addi	a1,a1,24
   1634c:	f8d60ee3          	beq	a2,a3,162e8 <strcmp+0x18>
   16350:	03061713          	slli	a4,a2,0x30
   16354:	03069793          	slli	a5,a3,0x30
   16358:	02f71a63          	bne	a4,a5,1638c <strcmp+0xbc>
   1635c:	02061713          	slli	a4,a2,0x20
   16360:	02069793          	slli	a5,a3,0x20
   16364:	02f71463          	bne	a4,a5,1638c <strcmp+0xbc>
   16368:	01061713          	slli	a4,a2,0x10
   1636c:	01069793          	slli	a5,a3,0x10
   16370:	00f71e63          	bne	a4,a5,1638c <strcmp+0xbc>
   16374:	03065713          	srli	a4,a2,0x30
   16378:	0306d793          	srli	a5,a3,0x30
   1637c:	40f70533          	sub	a0,a4,a5
   16380:	0ff57593          	andi	a1,a0,255
   16384:	02059063          	bnez	a1,163a4 <strcmp+0xd4>
   16388:	00008067          	ret
   1638c:	03075713          	srli	a4,a4,0x30
   16390:	0307d793          	srli	a5,a5,0x30
   16394:	40f70533          	sub	a0,a4,a5
   16398:	0ff57593          	andi	a1,a0,255
   1639c:	00059463          	bnez	a1,163a4 <strcmp+0xd4>
   163a0:	00008067          	ret
   163a4:	0ff77713          	andi	a4,a4,255
   163a8:	0ff7f793          	andi	a5,a5,255
   163ac:	40f70533          	sub	a0,a4,a5
   163b0:	00008067          	ret
   163b4:	00054603          	lbu	a2,0(a0)
   163b8:	0005c683          	lbu	a3,0(a1)
   163bc:	00150513          	addi	a0,a0,1
   163c0:	00158593          	addi	a1,a1,1
   163c4:	00d61463          	bne	a2,a3,163cc <strcmp+0xfc>
   163c8:	fe0616e3          	bnez	a2,163b4 <strcmp+0xe4>
   163cc:	40d60533          	sub	a0,a2,a3
   163d0:	00008067          	ret
   163d4:	00850513          	addi	a0,a0,8
   163d8:	00858593          	addi	a1,a1,8
   163dc:	fcd61ce3          	bne	a2,a3,163b4 <strcmp+0xe4>
   163e0:	00000513          	li	a0,0
   163e4:	00008067          	ret
   163e8:	01050513          	addi	a0,a0,16
   163ec:	01058593          	addi	a1,a1,16
   163f0:	fcd612e3          	bne	a2,a3,163b4 <strcmp+0xe4>
   163f4:	00000513          	li	a0,0
   163f8:	00008067          	ret

00000000000163fc <strlen>:
   163fc:	00757793          	andi	a5,a0,7
   16400:	00050593          	mv	a1,a0
   16404:	06079a63          	bnez	a5,16478 <strlen+0x7c>
   16408:	0001b7b7          	lui	a5,0x1b
   1640c:	3807b683          	ld	a3,896(a5) # 1b380 <mask>
   16410:	fff00613          	li	a2,-1
   16414:	00850513          	addi	a0,a0,8
   16418:	ff853783          	ld	a5,-8(a0)
   1641c:	00d7f733          	and	a4,a5,a3
   16420:	00d70733          	add	a4,a4,a3
   16424:	00d7e7b3          	or	a5,a5,a3
   16428:	00f767b3          	or	a5,a4,a5
   1642c:	fec784e3          	beq	a5,a2,16414 <strlen+0x18>
   16430:	ff854783          	lbu	a5,-8(a0)
   16434:	40b505b3          	sub	a1,a0,a1
   16438:	06078263          	beqz	a5,1649c <strlen+0xa0>
   1643c:	ff954783          	lbu	a5,-7(a0)
   16440:	04078a63          	beqz	a5,16494 <strlen+0x98>
   16444:	ffa54783          	lbu	a5,-6(a0)
   16448:	06078263          	beqz	a5,164ac <strlen+0xb0>
   1644c:	ffb54783          	lbu	a5,-5(a0)
   16450:	04078a63          	beqz	a5,164a4 <strlen+0xa8>
   16454:	ffc54783          	lbu	a5,-4(a0)
   16458:	ffd54703          	lbu	a4,-3(a0)
   1645c:	ffe54683          	lbu	a3,-2(a0)
   16460:	04078a63          	beqz	a5,164b4 <strlen+0xb8>
   16464:	04070c63          	beqz	a4,164bc <strlen+0xc0>
   16468:	fff58513          	addi	a0,a1,-1
   1646c:	04068c63          	beqz	a3,164c4 <strlen+0xc8>
   16470:	00008067          	ret
   16474:	f8070ae3          	beqz	a4,16408 <strlen+0xc>
   16478:	00054783          	lbu	a5,0(a0)
   1647c:	00150513          	addi	a0,a0,1
   16480:	00757713          	andi	a4,a0,7
   16484:	fe0798e3          	bnez	a5,16474 <strlen+0x78>
   16488:	40b50533          	sub	a0,a0,a1
   1648c:	fff50513          	addi	a0,a0,-1
   16490:	00008067          	ret
   16494:	ff958513          	addi	a0,a1,-7
   16498:	00008067          	ret
   1649c:	ff858513          	addi	a0,a1,-8
   164a0:	00008067          	ret
   164a4:	ffb58513          	addi	a0,a1,-5
   164a8:	00008067          	ret
   164ac:	ffa58513          	addi	a0,a1,-6
   164b0:	00008067          	ret
   164b4:	ffc58513          	addi	a0,a1,-4
   164b8:	00008067          	ret
   164bc:	ffd58513          	addi	a0,a1,-3
   164c0:	00008067          	ret
   164c4:	ffe58513          	addi	a0,a1,-2
   164c8:	00008067          	ret

00000000000164cc <__sprint_r.part.0>:
   164cc:	0ac5a783          	lw	a5,172(a1)
   164d0:	fb010113          	addi	sp,sp,-80
   164d4:	01613823          	sd	s6,16(sp)
   164d8:	04113423          	sd	ra,72(sp)
   164dc:	04813023          	sd	s0,64(sp)
   164e0:	02913c23          	sd	s1,56(sp)
   164e4:	03213823          	sd	s2,48(sp)
   164e8:	03313423          	sd	s3,40(sp)
   164ec:	03413023          	sd	s4,32(sp)
   164f0:	01513c23          	sd	s5,24(sp)
   164f4:	01713423          	sd	s7,8(sp)
   164f8:	03279713          	slli	a4,a5,0x32
   164fc:	00060b13          	mv	s6,a2
   16500:	0a075863          	bgez	a4,165b0 <__sprint_r.part.0+0xe4>
   16504:	01063783          	ld	a5,16(a2) # 7fe00010 <_gp+0x7fde4520>
   16508:	00058a13          	mv	s4,a1
   1650c:	00050a93          	mv	s5,a0
   16510:	00063b83          	ld	s7,0(a2)
   16514:	fff00993          	li	s3,-1
   16518:	08078863          	beqz	a5,165a8 <__sprint_r.part.0+0xdc>
   1651c:	008bb903          	ld	s2,8(s7)
   16520:	000bb483          	ld	s1,0(s7)
   16524:	00000413          	li	s0,0
   16528:	00295913          	srli	s2,s2,0x2
   1652c:	0009091b          	sext.w	s2,s2
   16530:	01204863          	bgtz	s2,16540 <__sprint_r.part.0+0x74>
   16534:	0600006f          	j	16594 <__sprint_r.part.0+0xc8>
   16538:	00448493          	addi	s1,s1,4
   1653c:	04890a63          	beq	s2,s0,16590 <__sprint_r.part.0+0xc4>
   16540:	0004a583          	lw	a1,0(s1)
   16544:	000a0613          	mv	a2,s4
   16548:	000a8513          	mv	a0,s5
   1654c:	524010ef          	jal	17a70 <_fputwc_r>
   16550:	0014041b          	addiw	s0,s0,1
   16554:	ff3512e3          	bne	a0,s3,16538 <__sprint_r.part.0+0x6c>
   16558:	00098513          	mv	a0,s3
   1655c:	04813083          	ld	ra,72(sp)
   16560:	000b3823          	sd	zero,16(s6)
   16564:	000b2423          	sw	zero,8(s6)
   16568:	04013403          	ld	s0,64(sp)
   1656c:	03813483          	ld	s1,56(sp)
   16570:	03013903          	ld	s2,48(sp)
   16574:	02813983          	ld	s3,40(sp)
   16578:	02013a03          	ld	s4,32(sp)
   1657c:	01813a83          	ld	s5,24(sp)
   16580:	01013b03          	ld	s6,16(sp)
   16584:	00813b83          	ld	s7,8(sp)
   16588:	05010113          	addi	sp,sp,80
   1658c:	00008067          	ret
   16590:	010b3783          	ld	a5,16(s6)
   16594:	00291913          	slli	s2,s2,0x2
   16598:	412787b3          	sub	a5,a5,s2
   1659c:	00fb3823          	sd	a5,16(s6)
   165a0:	010b8b93          	addi	s7,s7,16
   165a4:	f6079ce3          	bnez	a5,1651c <__sprint_r.part.0+0x50>
   165a8:	00000513          	li	a0,0
   165ac:	fb1ff06f          	j	1655c <__sprint_r.part.0+0x90>
   165b0:	564010ef          	jal	17b14 <__sfvwrite_r>
   165b4:	fa9ff06f          	j	1655c <__sprint_r.part.0+0x90>

00000000000165b8 <__sprint_r>:
   165b8:	01063703          	ld	a4,16(a2)
   165bc:	00070463          	beqz	a4,165c4 <__sprint_r+0xc>
   165c0:	f0dff06f          	j	164cc <__sprint_r.part.0>
   165c4:	00062423          	sw	zero,8(a2)
   165c8:	00000513          	li	a0,0
   165cc:	00008067          	ret

00000000000165d0 <_vfiprintf_r>:
   165d0:	e6010113          	addi	sp,sp,-416
   165d4:	17513423          	sd	s5,360(sp)
   165d8:	17613023          	sd	s6,352(sp)
   165dc:	15a13023          	sd	s10,320(sp)
   165e0:	18113c23          	sd	ra,408(sp)
   165e4:	18813823          	sd	s0,400(sp)
   165e8:	18913423          	sd	s1,392(sp)
   165ec:	19213023          	sd	s2,384(sp)
   165f0:	17313c23          	sd	s3,376(sp)
   165f4:	17413823          	sd	s4,368(sp)
   165f8:	15713c23          	sd	s7,344(sp)
   165fc:	15813823          	sd	s8,336(sp)
   16600:	15913423          	sd	s9,328(sp)
   16604:	13b13c23          	sd	s11,312(sp)
   16608:	00d13423          	sd	a3,8(sp)
   1660c:	00050a93          	mv	s5,a0
   16610:	00058d13          	mv	s10,a1
   16614:	00060b13          	mv	s6,a2
   16618:	00050663          	beqz	a0,16624 <_vfiprintf_r+0x54>
   1661c:	05052783          	lw	a5,80(a0)
   16620:	1e078c63          	beqz	a5,16818 <_vfiprintf_r+0x248>
   16624:	010d1683          	lh	a3,16(s10)
   16628:	03069793          	slli	a5,a3,0x30
   1662c:	0307d793          	srli	a5,a5,0x30
   16630:	03279713          	slli	a4,a5,0x32
   16634:	02074a63          	bltz	a4,16668 <_vfiprintf_r+0x98>
   16638:	000027b7          	lui	a5,0x2
   1663c:	0acd2603          	lw	a2,172(s10)
   16640:	00f6e7b3          	or	a5,a3,a5
   16644:	0107979b          	slliw	a5,a5,0x10
   16648:	ffffe737          	lui	a4,0xffffe
   1664c:	4107d79b          	sraiw	a5,a5,0x10
   16650:	fff7071b          	addiw	a4,a4,-1
   16654:	00e67733          	and	a4,a2,a4
   16658:	00fd1823          	sh	a5,16(s10)
   1665c:	03079793          	slli	a5,a5,0x30
   16660:	0aed2623          	sw	a4,172(s10)
   16664:	0307d793          	srli	a5,a5,0x30
   16668:	0087f713          	andi	a4,a5,8
   1666c:	12070a63          	beqz	a4,167a0 <_vfiprintf_r+0x1d0>
   16670:	018d3703          	ld	a4,24(s10)
   16674:	12070663          	beqz	a4,167a0 <_vfiprintf_r+0x1d0>
   16678:	01a7f793          	andi	a5,a5,26
   1667c:	00a00713          	li	a4,10
   16680:	14e78063          	beq	a5,a4,167c0 <_vfiprintf_r+0x1f0>
   16684:	0b010c93          	addi	s9,sp,176
   16688:	00019c37          	lui	s8,0x19
   1668c:	0af10793          	addi	a5,sp,175
   16690:	090c0713          	addi	a4,s8,144 # 19090 <__mprec_bigtens+0x28>
   16694:	40fc87b3          	sub	a5,s9,a5
   16698:	000198b7          	lui	a7,0x19
   1669c:	07913823          	sd	s9,112(sp)
   166a0:	08013023          	sd	zero,128(sp)
   166a4:	06012c23          	sw	zero,120(sp)
   166a8:	000c8413          	mv	s0,s9
   166ac:	00013c23          	sd	zero,24(sp)
   166b0:	04012c23          	sw	zero,88(sp)
   166b4:	00e13823          	sd	a4,16(sp)
   166b8:	1f888c13          	addi	s8,a7,504 # 191f8 <blanks.4136>
   166bc:	04f12e23          	sw	a5,92(sp)
   166c0:	000b4783          	lbu	a5,0(s6)
   166c4:	4e078ee3          	beqz	a5,173c0 <_vfiprintf_r+0xdf0>
   166c8:	02500713          	li	a4,37
   166cc:	000b0493          	mv	s1,s6
   166d0:	00e79663          	bne	a5,a4,166dc <_vfiprintf_r+0x10c>
   166d4:	0580006f          	j	1672c <_vfiprintf_r+0x15c>
   166d8:	00e78863          	beq	a5,a4,166e8 <_vfiprintf_r+0x118>
   166dc:	00148493          	addi	s1,s1,1
   166e0:	0004c783          	lbu	a5,0(s1)
   166e4:	fe079ae3          	bnez	a5,166d8 <_vfiprintf_r+0x108>
   166e8:	4164893b          	subw	s2,s1,s6
   166ec:	04090063          	beqz	s2,1672c <_vfiprintf_r+0x15c>
   166f0:	08013703          	ld	a4,128(sp)
   166f4:	07812783          	lw	a5,120(sp)
   166f8:	00090613          	mv	a2,s2
   166fc:	00e60733          	add	a4,a2,a4
   16700:	0017879b          	addiw	a5,a5,1
   16704:	00c43423          	sd	a2,8(s0)
   16708:	01643023          	sd	s6,0(s0)
   1670c:	08e13023          	sd	a4,128(sp)
   16710:	06f12c23          	sw	a5,120(sp)
   16714:	00700613          	li	a2,7
   16718:	01040413          	addi	s0,s0,16
   1671c:	06f64463          	blt	a2,a5,16784 <_vfiprintf_r+0x1b4>
   16720:	05812783          	lw	a5,88(sp)
   16724:	012787bb          	addw	a5,a5,s2
   16728:	04f12c23          	sw	a5,88(sp)
   1672c:	0004c783          	lbu	a5,0(s1)
   16730:	580786e3          	beqz	a5,174bc <_vfiprintf_r+0xeec>
   16734:	00148813          	addi	a6,s1,1
   16738:	060103a3          	sb	zero,103(sp)
   1673c:	00000513          	li	a0,0
   16740:	00000e93          	li	t4,0
   16744:	fff00493          	li	s1,-1
   16748:	00000913          	li	s2,0
   1674c:	00000313          	li	t1,0
   16750:	05800613          	li	a2,88
   16754:	00900593          	li	a1,9
   16758:	02a00f13          	li	t5,42
   1675c:	00084703          	lbu	a4,0(a6)
   16760:	00180b13          	addi	s6,a6,1
   16764:	fe07079b          	addiw	a5,a4,-32
   16768:	66f66263          	bltu	a2,a5,16dcc <_vfiprintf_r+0x7fc>
   1676c:	01013683          	ld	a3,16(sp)
   16770:	02079793          	slli	a5,a5,0x20
   16774:	01e7d793          	srli	a5,a5,0x1e
   16778:	00d787b3          	add	a5,a5,a3
   1677c:	0007a783          	lw	a5,0(a5) # 2000 <_ftext-0xe000>
   16780:	00078067          	jr	a5
   16784:	2e071ee3          	bnez	a4,17280 <_vfiprintf_r+0xcb0>
   16788:	06012c23          	sw	zero,120(sp)
   1678c:	000c8413          	mv	s0,s9
   16790:	f91ff06f          	j	16720 <_vfiprintf_r+0x150>
   16794:	01036313          	ori	t1,t1,16
   16798:	000b0813          	mv	a6,s6
   1679c:	fc1ff06f          	j	1675c <_vfiprintf_r+0x18c>
   167a0:	000d0593          	mv	a1,s10
   167a4:	000a8513          	mv	a0,s5
   167a8:	949fb0ef          	jal	120f0 <__swsetup_r>
   167ac:	4e0512e3          	bnez	a0,17490 <_vfiprintf_r+0xec0>
   167b0:	010d5783          	lhu	a5,16(s10)
   167b4:	00a00713          	li	a4,10
   167b8:	01a7f793          	andi	a5,a5,26
   167bc:	ece794e3          	bne	a5,a4,16684 <_vfiprintf_r+0xb4>
   167c0:	012d1783          	lh	a5,18(s10)
   167c4:	ec07c0e3          	bltz	a5,16684 <_vfiprintf_r+0xb4>
   167c8:	00813683          	ld	a3,8(sp)
   167cc:	000b0613          	mv	a2,s6
   167d0:	000d0593          	mv	a1,s10
   167d4:	000a8513          	mv	a0,s5
   167d8:	6a9000ef          	jal	17680 <__sbprintf>
   167dc:	19813083          	ld	ra,408(sp)
   167e0:	19013403          	ld	s0,400(sp)
   167e4:	18813483          	ld	s1,392(sp)
   167e8:	18013903          	ld	s2,384(sp)
   167ec:	17813983          	ld	s3,376(sp)
   167f0:	17013a03          	ld	s4,368(sp)
   167f4:	16813a83          	ld	s5,360(sp)
   167f8:	16013b03          	ld	s6,352(sp)
   167fc:	15813b83          	ld	s7,344(sp)
   16800:	15013c03          	ld	s8,336(sp)
   16804:	14813c83          	ld	s9,328(sp)
   16808:	14013d03          	ld	s10,320(sp)
   1680c:	13813d83          	ld	s11,312(sp)
   16810:	1a010113          	addi	sp,sp,416
   16814:	00008067          	ret
   16818:	de4fd0ef          	jal	13dfc <__sinit>
   1681c:	e09ff06f          	j	16624 <_vfiprintf_r+0x54>
   16820:	00813783          	ld	a5,8(sp)
   16824:	0007a903          	lw	s2,0(a5)
   16828:	00878793          	addi	a5,a5,8
   1682c:	00f13423          	sd	a5,8(sp)
   16830:	f60954e3          	bgez	s2,16798 <_vfiprintf_r+0x1c8>
   16834:	4120093b          	negw	s2,s2
   16838:	00436313          	ori	t1,t1,4
   1683c:	000b0813          	mv	a6,s6
   16840:	f1dff06f          	j	1675c <_vfiprintf_r+0x18c>
   16844:	03000793          	li	a5,48
   16848:	06f10423          	sb	a5,104(sp)
   1684c:	07800793          	li	a5,120
   16850:	06f104a3          	sb	a5,105(sp)
   16854:	00813783          	ld	a5,8(sp)
   16858:	060103a3          	sb	zero,103(sp)
   1685c:	00236613          	ori	a2,t1,2
   16860:	00878713          	addi	a4,a5,8
   16864:	0007b783          	ld	a5,0(a5)
   16868:	2e04cce3          	bltz	s1,17360 <_vfiprintf_r+0xd90>
   1686c:	f7f37313          	andi	t1,t1,-129
   16870:	00e13423          	sd	a4,8(sp)
   16874:	00236313          	ori	t1,t1,2
   16878:	32079ae3          	bnez	a5,173ac <_vfiprintf_r+0xddc>
   1687c:	000197b7          	lui	a5,0x19
   16880:	25878793          	addi	a5,a5,600 # 19258 <zeroes.4137+0x50>
   16884:	00f13c23          	sd	a5,24(sp)
   16888:	00000593          	li	a1,0
   1688c:	200498e3          	bnez	s1,1729c <_vfiprintf_r+0xccc>
   16890:	00000493          	li	s1,0
   16894:	00000a13          	li	s4,0
   16898:	000c8b93          	mv	s7,s9
   1689c:	00048993          	mv	s3,s1
   168a0:	0144d463          	ble	s4,s1,168a8 <_vfiprintf_r+0x2d8>
   168a4:	000a0993          	mv	s3,s4
   168a8:	00b035b3          	snez	a1,a1
   168ac:	00b989bb          	addw	s3,s3,a1
   168b0:	00237393          	andi	t2,t1,2
   168b4:	00038463          	beqz	t2,168bc <_vfiprintf_r+0x2ec>
   168b8:	0029899b          	addiw	s3,s3,2
   168bc:	08437293          	andi	t0,t1,132
   168c0:	58029463          	bnez	t0,16e48 <_vfiprintf_r+0x878>
   168c4:	41390dbb          	subw	s11,s2,s3
   168c8:	59b05063          	blez	s11,16e48 <_vfiprintf_r+0x878>
   168cc:	01000793          	li	a5,16
   168d0:	45b7dee3          	ble	s11,a5,1752c <_vfiprintf_r+0xf5c>
   168d4:	01000e93          	li	t4,16
   168d8:	08013783          	ld	a5,128(sp)
   168dc:	07812503          	lw	a0,120(sp)
   168e0:	05813823          	sd	s8,80(sp)
   168e4:	00700f13          	li	t5,7
   168e8:	000e8f93          	mv	t6,t4
   168ec:	0180006f          	j	16904 <_vfiprintf_r+0x334>
   168f0:	0025061b          	addiw	a2,a0,2
   168f4:	01040413          	addi	s0,s0,16
   168f8:	00058513          	mv	a0,a1
   168fc:	ff0d8d9b          	addiw	s11,s11,-16
   16900:	03bfdc63          	ble	s11,t6,16938 <_vfiprintf_r+0x368>
   16904:	01078793          	addi	a5,a5,16
   16908:	0015059b          	addiw	a1,a0,1
   1690c:	01843023          	sd	s8,0(s0)
   16910:	01d43423          	sd	t4,8(s0)
   16914:	08f13023          	sd	a5,128(sp)
   16918:	06b12c23          	sw	a1,120(sp)
   1691c:	fcbf5ae3          	ble	a1,t5,168f0 <_vfiprintf_r+0x320>
   16920:	4c079863          	bnez	a5,16df0 <_vfiprintf_r+0x820>
   16924:	ff0d8d9b          	addiw	s11,s11,-16
   16928:	00000513          	li	a0,0
   1692c:	00100613          	li	a2,1
   16930:	000c8413          	mv	s0,s9
   16934:	fdbfc8e3          	blt	t6,s11,16904 <_vfiprintf_r+0x334>
   16938:	05013703          	ld	a4,80(sp)
   1693c:	00fd87b3          	add	a5,s11,a5
   16940:	01b43423          	sd	s11,8(s0)
   16944:	00e43023          	sd	a4,0(s0)
   16948:	08f13023          	sd	a5,128(sp)
   1694c:	06c12c23          	sw	a2,120(sp)
   16950:	00700593          	li	a1,7
   16954:	7ac5cc63          	blt	a1,a2,1710c <_vfiprintf_r+0xb3c>
   16958:	06714503          	lbu	a0,103(sp)
   1695c:	01040413          	addi	s0,s0,16
   16960:	0016059b          	addiw	a1,a2,1
   16964:	4e051c63          	bnez	a0,16e5c <_vfiprintf_r+0x88c>
   16968:	52038663          	beqz	t2,16e94 <_vfiprintf_r+0x8c4>
   1696c:	06810613          	addi	a2,sp,104
   16970:	00278793          	addi	a5,a5,2
   16974:	00c43023          	sd	a2,0(s0)
   16978:	00200613          	li	a2,2
   1697c:	00c43423          	sd	a2,8(s0)
   16980:	08f13023          	sd	a5,128(sp)
   16984:	06b12c23          	sw	a1,120(sp)
   16988:	00700613          	li	a2,7
   1698c:	7cb65863          	ble	a1,a2,1715c <_vfiprintf_r+0xb8c>
   16990:	10079ae3          	bnez	a5,172a4 <_vfiprintf_r+0xcd4>
   16994:	08000513          	li	a0,128
   16998:	00100593          	li	a1,1
   1699c:	00000613          	li	a2,0
   169a0:	000c8413          	mv	s0,s9
   169a4:	4ea29c63          	bne	t0,a0,16e9c <_vfiprintf_r+0x8cc>
   169a8:	41390ebb          	subw	t4,s2,s3
   169ac:	4fd05863          	blez	t4,16e9c <_vfiprintf_r+0x8cc>
   169b0:	01000513          	li	a0,16
   169b4:	3fd55ce3          	ble	t4,a0,175ac <_vfiprintf_r+0xfdc>
   169b8:	01000f13          	li	t5,16
   169bc:	00019737          	lui	a4,0x19
   169c0:	20870d93          	addi	s11,a4,520 # 19208 <zeroes.4137>
   169c4:	00700f93          	li	t6,7
   169c8:	000f0293          	mv	t0,t5
   169cc:	0180006f          	j	169e4 <_vfiprintf_r+0x414>
   169d0:	0026051b          	addiw	a0,a2,2
   169d4:	01040413          	addi	s0,s0,16
   169d8:	00058613          	mv	a2,a1
   169dc:	ff0e8e9b          	addiw	t4,t4,-16
   169e0:	03d2dc63          	ble	t4,t0,16a18 <_vfiprintf_r+0x448>
   169e4:	01078793          	addi	a5,a5,16
   169e8:	0016059b          	addiw	a1,a2,1
   169ec:	01b43023          	sd	s11,0(s0)
   169f0:	01e43423          	sd	t5,8(s0)
   169f4:	08f13023          	sd	a5,128(sp)
   169f8:	06b12c23          	sw	a1,120(sp)
   169fc:	fcbfdae3          	ble	a1,t6,169d0 <_vfiprintf_r+0x400>
   16a00:	6a079e63          	bnez	a5,170bc <_vfiprintf_r+0xaec>
   16a04:	ff0e8e9b          	addiw	t4,t4,-16
   16a08:	00100513          	li	a0,1
   16a0c:	00000613          	li	a2,0
   16a10:	000c8413          	mv	s0,s9
   16a14:	fdd2c8e3          	blt	t0,t4,169e4 <_vfiprintf_r+0x414>
   16a18:	01d787b3          	add	a5,a5,t4
   16a1c:	01b43023          	sd	s11,0(s0)
   16a20:	01d43423          	sd	t4,8(s0)
   16a24:	08f13023          	sd	a5,128(sp)
   16a28:	06a12c23          	sw	a0,120(sp)
   16a2c:	00700613          	li	a2,7
   16a30:	0ea646e3          	blt	a2,a0,1731c <_vfiprintf_r+0xd4c>
   16a34:	414484bb          	subw	s1,s1,s4
   16a38:	01040413          	addi	s0,s0,16
   16a3c:	0015059b          	addiw	a1,a0,1
   16a40:	00050613          	mv	a2,a0
   16a44:	46904063          	bgtz	s1,16ea4 <_vfiprintf_r+0x8d4>
   16a48:	00fa07b3          	add	a5,s4,a5
   16a4c:	01743023          	sd	s7,0(s0)
   16a50:	01443423          	sd	s4,8(s0)
   16a54:	08f13023          	sd	a5,128(sp)
   16a58:	06b12c23          	sw	a1,120(sp)
   16a5c:	00700713          	li	a4,7
   16a60:	4eb75a63          	ble	a1,a4,16f54 <_vfiprintf_r+0x984>
   16a64:	7a079463          	bnez	a5,1720c <_vfiprintf_r+0xc3c>
   16a68:	06012c23          	sw	zero,120(sp)
   16a6c:	00437313          	andi	t1,t1,4
   16a70:	00030663          	beqz	t1,16a7c <_vfiprintf_r+0x4ac>
   16a74:	413904bb          	subw	s1,s2,s3
   16a78:	229040e3          	bgtz	s1,17498 <_vfiprintf_r+0xec8>
   16a7c:	01395463          	ble	s3,s2,16a84 <_vfiprintf_r+0x4b4>
   16a80:	00098913          	mv	s2,s3
   16a84:	05812783          	lw	a5,88(sp)
   16a88:	012787bb          	addw	a5,a5,s2
   16a8c:	04f12c23          	sw	a5,88(sp)
   16a90:	06012c23          	sw	zero,120(sp)
   16a94:	000c8413          	mv	s0,s9
   16a98:	c29ff06f          	j	166c0 <_vfiprintf_r+0xf0>
   16a9c:	00100513          	li	a0,1
   16aa0:	02b00e93          	li	t4,43
   16aa4:	000b0813          	mv	a6,s6
   16aa8:	cb5ff06f          	j	1675c <_vfiprintf_r+0x18c>
   16aac:	08036313          	ori	t1,t1,128
   16ab0:	000b0813          	mv	a6,s6
   16ab4:	ca9ff06f          	j	1675c <_vfiprintf_r+0x18c>
   16ab8:	00000913          	li	s2,0
   16abc:	fd07079b          	addiw	a5,a4,-48
   16ac0:	001b0b13          	addi	s6,s6,1
   16ac4:	fffb4703          	lbu	a4,-1(s6)
   16ac8:	00191f9b          	slliw	t6,s2,0x1
   16acc:	0039191b          	slliw	s2,s2,0x3
   16ad0:	012f893b          	addw	s2,t6,s2
   16ad4:	0127893b          	addw	s2,a5,s2
   16ad8:	fd07079b          	addiw	a5,a4,-48
   16adc:	fef5f2e3          	bleu	a5,a1,16ac0 <_vfiprintf_r+0x4f0>
   16ae0:	c85ff06f          	j	16764 <_vfiprintf_r+0x194>
   16ae4:	360518e3          	bnez	a0,17654 <_vfiprintf_r+0x1084>
   16ae8:	01036313          	ori	t1,t1,16
   16aec:	01037793          	andi	a5,t1,16
   16af0:	74078263          	beqz	a5,17234 <_vfiprintf_r+0xc64>
   16af4:	00813703          	ld	a4,8(sp)
   16af8:	00073783          	ld	a5,0(a4)
   16afc:	00870713          	addi	a4,a4,8
   16b00:	00e13423          	sd	a4,8(sp)
   16b04:	0e07c6e3          	bltz	a5,173f0 <_vfiprintf_r+0xe20>
   16b08:	06714583          	lbu	a1,103(sp)
   16b0c:	6e04c063          	bltz	s1,171ec <_vfiprintf_r+0xc1c>
   16b10:	f7f37313          	andi	t1,t1,-129
   16b14:	10078c63          	beqz	a5,16c2c <_vfiprintf_r+0x65c>
   16b18:	00900613          	li	a2,9
   16b1c:	000c8b93          	mv	s7,s9
   16b20:	00a00513          	li	a0,10
   16b24:	10f67863          	bleu	a5,a2,16c34 <_vfiprintf_r+0x664>
   16b28:	02a7f633          	remu	a2,a5,a0
   16b2c:	fffb8b93          	addi	s7,s7,-1
   16b30:	02a7d7b3          	divu	a5,a5,a0
   16b34:	0306061b          	addiw	a2,a2,48
   16b38:	00cb8023          	sb	a2,0(s7)
   16b3c:	fe0796e3          	bnez	a5,16b28 <_vfiprintf_r+0x558>
   16b40:	417c8a3b          	subw	s4,s9,s7
   16b44:	d59ff06f          	j	1689c <_vfiprintf_r+0x2cc>
   16b48:	300512e3          	bnez	a0,1764c <_vfiprintf_r+0x107c>
   16b4c:	01036313          	ori	t1,t1,16
   16b50:	01037793          	andi	a5,t1,16
   16b54:	6e078e63          	beqz	a5,17250 <_vfiprintf_r+0xc80>
   16b58:	00813783          	ld	a5,8(sp)
   16b5c:	060103a3          	sb	zero,103(sp)
   16b60:	00878713          	addi	a4,a5,8
   16b64:	0007b783          	ld	a5,0(a5)
   16b68:	7004c263          	bltz	s1,1726c <_vfiprintf_r+0xc9c>
   16b6c:	00e13423          	sd	a4,8(sp)
   16b70:	f7f37313          	andi	t1,t1,-129
   16b74:	70079263          	bnez	a5,17278 <_vfiprintf_r+0xca8>
   16b78:	00000593          	li	a1,0
   16b7c:	00000793          	li	a5,0
   16b80:	2a0482e3          	beqz	s1,17624 <_vfiprintf_r+0x1054>
   16b84:	000c8b93          	mv	s7,s9
   16b88:	0077f613          	andi	a2,a5,7
   16b8c:	fffb8b93          	addi	s7,s7,-1
   16b90:	0306061b          	addiw	a2,a2,48
   16b94:	00cb8023          	sb	a2,0(s7)
   16b98:	0037d793          	srli	a5,a5,0x3
   16b9c:	fe0796e3          	bnez	a5,16b88 <_vfiprintf_r+0x5b8>
   16ba0:	00137793          	andi	a5,t1,1
   16ba4:	f8078ee3          	beqz	a5,16b40 <_vfiprintf_r+0x570>
   16ba8:	03000793          	li	a5,48
   16bac:	f8f60ae3          	beq	a2,a5,16b40 <_vfiprintf_r+0x570>
   16bb0:	fffb8613          	addi	a2,s7,-1
   16bb4:	40cc8a33          	sub	s4,s9,a2
   16bb8:	fefb8fa3          	sb	a5,-1(s7)
   16bbc:	000a0a1b          	sext.w	s4,s4
   16bc0:	00060b93          	mv	s7,a2
   16bc4:	cd9ff06f          	j	1689c <_vfiprintf_r+0x2cc>
   16bc8:	28051ee3          	bnez	a0,17664 <_vfiprintf_r+0x1094>
   16bcc:	01037793          	andi	a5,t1,16
   16bd0:	040786e3          	beqz	a5,1741c <_vfiprintf_r+0xe4c>
   16bd4:	00813683          	ld	a3,8(sp)
   16bd8:	05812703          	lw	a4,88(sp)
   16bdc:	0006b783          	ld	a5,0(a3) # 7ff00000 <_gp+0x7fee4510>
   16be0:	00868693          	addi	a3,a3,8
   16be4:	00d13423          	sd	a3,8(sp)
   16be8:	00e7b023          	sd	a4,0(a5)
   16bec:	ad5ff06f          	j	166c0 <_vfiprintf_r+0xf0>
   16bf0:	260516e3          	bnez	a0,1765c <_vfiprintf_r+0x108c>
   16bf4:	01036313          	ori	t1,t1,16
   16bf8:	01037793          	andi	a5,t1,16
   16bfc:	5c079a63          	bnez	a5,171d0 <_vfiprintf_r+0xc00>
   16c00:	04037793          	andi	a5,t1,64
   16c04:	060103a3          	sb	zero,103(sp)
   16c08:	7c078063          	beqz	a5,173c8 <_vfiprintf_r+0xdf8>
   16c0c:	00813783          	ld	a5,8(sp)
   16c10:	00878713          	addi	a4,a5,8
   16c14:	0007d783          	lhu	a5,0(a5)
   16c18:	5c04c663          	bltz	s1,171e4 <_vfiprintf_r+0xc14>
   16c1c:	00e13423          	sd	a4,8(sp)
   16c20:	f7f37313          	andi	t1,t1,-129
   16c24:	00000593          	li	a1,0
   16c28:	ee0798e3          	bnez	a5,16b18 <_vfiprintf_r+0x548>
   16c2c:	c60482e3          	beqz	s1,16890 <_vfiprintf_r+0x2c0>
   16c30:	00000793          	li	a5,0
   16c34:	0307879b          	addiw	a5,a5,48
   16c38:	0af107a3          	sb	a5,175(sp)
   16c3c:	05c12a03          	lw	s4,92(sp)
   16c40:	0af10b93          	addi	s7,sp,175
   16c44:	c59ff06f          	j	1689c <_vfiprintf_r+0x2cc>
   16c48:	b40e98e3          	bnez	t4,16798 <_vfiprintf_r+0x1c8>
   16c4c:	00100513          	li	a0,1
   16c50:	02000e93          	li	t4,32
   16c54:	000b0813          	mv	a6,s6
   16c58:	b05ff06f          	j	1675c <_vfiprintf_r+0x18c>
   16c5c:	00136313          	ori	t1,t1,1
   16c60:	000b0813          	mv	a6,s6
   16c64:	af9ff06f          	j	1675c <_vfiprintf_r+0x18c>
   16c68:	00813783          	ld	a5,8(sp)
   16c6c:	060103a3          	sb	zero,103(sp)
   16c70:	0007bb83          	ld	s7,0(a5)
   16c74:	00878d93          	addi	s11,a5,8
   16c78:	0e0b84e3          	beqz	s7,17560 <_vfiprintf_r+0xf90>
   16c7c:	0404cee3          	bltz	s1,174d8 <_vfiprintf_r+0xf08>
   16c80:	00048613          	mv	a2,s1
   16c84:	00000593          	li	a1,0
   16c88:	000b8513          	mv	a0,s7
   16c8c:	00613423          	sd	t1,8(sp)
   16c90:	928fe0ef          	jal	14db8 <memchr>
   16c94:	00813303          	ld	t1,8(sp)
   16c98:	120502e3          	beqz	a0,175bc <_vfiprintf_r+0xfec>
   16c9c:	41750a3b          	subw	s4,a0,s7
   16ca0:	06714583          	lbu	a1,103(sp)
   16ca4:	01b13423          	sd	s11,8(sp)
   16ca8:	00000493          	li	s1,0
   16cac:	bf1ff06f          	j	1689c <_vfiprintf_r+0x2cc>
   16cb0:	f40504e3          	beqz	a0,16bf8 <_vfiprintf_r+0x628>
   16cb4:	07d103a3          	sb	t4,103(sp)
   16cb8:	f41ff06f          	j	16bf8 <_vfiprintf_r+0x628>
   16cbc:	00813703          	ld	a4,8(sp)
   16cc0:	00100993          	li	s3,1
   16cc4:	060103a3          	sb	zero,103(sp)
   16cc8:	00072783          	lw	a5,0(a4)
   16ccc:	00098a13          	mv	s4,s3
   16cd0:	08810b93          	addi	s7,sp,136
   16cd4:	08f10423          	sb	a5,136(sp)
   16cd8:	00870793          	addi	a5,a4,8
   16cdc:	00f13423          	sd	a5,8(sp)
   16ce0:	00000493          	li	s1,0
   16ce4:	bcdff06f          	j	168b0 <_vfiprintf_r+0x2e0>
   16ce8:	e00502e3          	beqz	a0,16aec <_vfiprintf_r+0x51c>
   16cec:	07d103a3          	sb	t4,103(sp)
   16cf0:	dfdff06f          	j	16aec <_vfiprintf_r+0x51c>
   16cf4:	120510e3          	bnez	a0,17614 <_vfiprintf_r+0x1044>
   16cf8:	000197b7          	lui	a5,0x19
   16cfc:	24078793          	addi	a5,a5,576 # 19240 <zeroes.4137+0x38>
   16d00:	00f13c23          	sd	a5,24(sp)
   16d04:	01037793          	andi	a5,t1,16
   16d08:	06078063          	beqz	a5,16d68 <_vfiprintf_r+0x798>
   16d0c:	00813683          	ld	a3,8(sp)
   16d10:	0006b783          	ld	a5,0(a3)
   16d14:	00868693          	addi	a3,a3,8
   16d18:	00d13423          	sd	a3,8(sp)
   16d1c:	00137613          	andi	a2,t1,1
   16d20:	46060863          	beqz	a2,17190 <_vfiprintf_r+0xbc0>
   16d24:	66079063          	bnez	a5,17384 <_vfiprintf_r+0xdb4>
   16d28:	060103a3          	sb	zero,103(sp)
   16d2c:	6404c663          	bltz	s1,17378 <_vfiprintf_r+0xda8>
   16d30:	f7f37313          	andi	t1,t1,-129
   16d34:	b55ff06f          	j	16888 <_vfiprintf_r+0x2b8>
   16d38:	e0050ce3          	beqz	a0,16b50 <_vfiprintf_r+0x580>
   16d3c:	07d103a3          	sb	t4,103(sp)
   16d40:	e11ff06f          	j	16b50 <_vfiprintf_r+0x580>
   16d44:	04036313          	ori	t1,t1,64
   16d48:	000b0813          	mv	a6,s6
   16d4c:	a11ff06f          	j	1675c <_vfiprintf_r+0x18c>
   16d50:	0a051ee3          	bnez	a0,1760c <_vfiprintf_r+0x103c>
   16d54:	000197b7          	lui	a5,0x19
   16d58:	25878793          	addi	a5,a5,600 # 19258 <zeroes.4137+0x50>
   16d5c:	00f13c23          	sd	a5,24(sp)
   16d60:	01037793          	andi	a5,t1,16
   16d64:	fa0794e3          	bnez	a5,16d0c <_vfiprintf_r+0x73c>
   16d68:	04037793          	andi	a5,t1,64
   16d6c:	00813683          	ld	a3,8(sp)
   16d70:	68078e63          	beqz	a5,1740c <_vfiprintf_r+0xe3c>
   16d74:	0006d783          	lhu	a5,0(a3)
   16d78:	00868693          	addi	a3,a3,8
   16d7c:	00d13423          	sd	a3,8(sp)
   16d80:	f9dff06f          	j	16d1c <_vfiprintf_r+0x74c>
   16d84:	000b4703          	lbu	a4,0(s6)
   16d88:	001b0813          	addi	a6,s6,1
   16d8c:	05e70ee3          	beq	a4,t5,175e8 <_vfiprintf_r+0x1018>
   16d90:	fd07079b          	addiw	a5,a4,-48
   16d94:	00000493          	li	s1,0
   16d98:	00080b13          	mv	s6,a6
   16d9c:	9cf5e4e3          	bltu	a1,a5,16764 <_vfiprintf_r+0x194>
   16da0:	001b0b13          	addi	s6,s6,1
   16da4:	fffb4703          	lbu	a4,-1(s6)
   16da8:	00149f9b          	slliw	t6,s1,0x1
   16dac:	0034949b          	slliw	s1,s1,0x3
   16db0:	009f84bb          	addw	s1,t6,s1
   16db4:	00f484bb          	addw	s1,s1,a5
   16db8:	fd07079b          	addiw	a5,a4,-48
   16dbc:	fef5f2e3          	bleu	a5,a1,16da0 <_vfiprintf_r+0x7d0>
   16dc0:	9a04d2e3          	bgez	s1,16764 <_vfiprintf_r+0x194>
   16dc4:	fff00493          	li	s1,-1
   16dc8:	99dff06f          	j	16764 <_vfiprintf_r+0x194>
   16dcc:	040518e3          	bnez	a0,1761c <_vfiprintf_r+0x104c>
   16dd0:	6e070663          	beqz	a4,174bc <_vfiprintf_r+0xeec>
   16dd4:	00100993          	li	s3,1
   16dd8:	08e10423          	sb	a4,136(sp)
   16ddc:	060103a3          	sb	zero,103(sp)
   16de0:	00098a13          	mv	s4,s3
   16de4:	08810b93          	addi	s7,sp,136
   16de8:	00000493          	li	s1,0
   16dec:	ac5ff06f          	j	168b0 <_vfiprintf_r+0x2e0>
   16df0:	07010613          	addi	a2,sp,112
   16df4:	000d0593          	mv	a1,s10
   16df8:	000a8513          	mv	a0,s5
   16dfc:	05f13423          	sd	t6,72(sp)
   16e00:	05e13023          	sd	t5,64(sp)
   16e04:	03d13c23          	sd	t4,56(sp)
   16e08:	02513823          	sd	t0,48(sp)
   16e0c:	02713423          	sd	t2,40(sp)
   16e10:	02613023          	sd	t1,32(sp)
   16e14:	eb8ff0ef          	jal	164cc <__sprint_r.part.0>
   16e18:	22051063          	bnez	a0,17038 <_vfiprintf_r+0xa68>
   16e1c:	07812503          	lw	a0,120(sp)
   16e20:	08013783          	ld	a5,128(sp)
   16e24:	000c8413          	mv	s0,s9
   16e28:	0015061b          	addiw	a2,a0,1
   16e2c:	04813f83          	ld	t6,72(sp)
   16e30:	04013f03          	ld	t5,64(sp)
   16e34:	03813e83          	ld	t4,56(sp)
   16e38:	03013283          	ld	t0,48(sp)
   16e3c:	02813383          	ld	t2,40(sp)
   16e40:	02013303          	ld	t1,32(sp)
   16e44:	ab9ff06f          	j	168fc <_vfiprintf_r+0x32c>
   16e48:	07812603          	lw	a2,120(sp)
   16e4c:	08013783          	ld	a5,128(sp)
   16e50:	0016059b          	addiw	a1,a2,1
   16e54:	06714503          	lbu	a0,103(sp)
   16e58:	b00508e3          	beqz	a0,16968 <_vfiprintf_r+0x398>
   16e5c:	00100513          	li	a0,1
   16e60:	06710613          	addi	a2,sp,103
   16e64:	00a787b3          	add	a5,a5,a0
   16e68:	00c43023          	sd	a2,0(s0)
   16e6c:	00a43423          	sd	a0,8(s0)
   16e70:	08f13023          	sd	a5,128(sp)
   16e74:	06b12c23          	sw	a1,120(sp)
   16e78:	00700613          	li	a2,7
   16e7c:	2ab65a63          	ble	a1,a2,17130 <_vfiprintf_r+0xb60>
   16e80:	44079e63          	bnez	a5,172dc <_vfiprintf_r+0xd0c>
   16e84:	2c039063          	bnez	t2,17144 <_vfiprintf_r+0xb74>
   16e88:	00000613          	li	a2,0
   16e8c:	00050593          	mv	a1,a0
   16e90:	000c8413          	mv	s0,s9
   16e94:	08000513          	li	a0,128
   16e98:	b0a288e3          	beq	t0,a0,169a8 <_vfiprintf_r+0x3d8>
   16e9c:	414484bb          	subw	s1,s1,s4
   16ea0:	ba9054e3          	blez	s1,16a48 <_vfiprintf_r+0x478>
   16ea4:	00019737          	lui	a4,0x19
   16ea8:	01000513          	li	a0,16
   16eac:	20870d93          	addi	s11,a4,520 # 19208 <zeroes.4137>
   16eb0:	06955263          	ble	s1,a0,16f14 <_vfiprintf_r+0x944>
   16eb4:	01000e93          	li	t4,16
   16eb8:	00019737          	lui	a4,0x19
   16ebc:	20870d93          	addi	s11,a4,520 # 19208 <zeroes.4137>
   16ec0:	00700f13          	li	t5,7
   16ec4:	000e8f93          	mv	t6,t4
   16ec8:	0180006f          	j	16ee0 <_vfiprintf_r+0x910>
   16ecc:	0026059b          	addiw	a1,a2,2
   16ed0:	01040413          	addi	s0,s0,16
   16ed4:	00050613          	mv	a2,a0
   16ed8:	ff04849b          	addiw	s1,s1,-16
   16edc:	029fdc63          	ble	s1,t6,16f14 <_vfiprintf_r+0x944>
   16ee0:	01078793          	addi	a5,a5,16
   16ee4:	0016051b          	addiw	a0,a2,1
   16ee8:	01b43023          	sd	s11,0(s0)
   16eec:	01d43423          	sd	t4,8(s0)
   16ef0:	08f13023          	sd	a5,128(sp)
   16ef4:	06a12c23          	sw	a0,120(sp)
   16ef8:	fcaf5ae3          	ble	a0,t5,16ecc <_vfiprintf_r+0x8fc>
   16efc:	14079863          	bnez	a5,1704c <_vfiprintf_r+0xa7c>
   16f00:	ff04849b          	addiw	s1,s1,-16
   16f04:	00100593          	li	a1,1
   16f08:	00000613          	li	a2,0
   16f0c:	000c8413          	mv	s0,s9
   16f10:	fc9fc8e3          	blt	t6,s1,16ee0 <_vfiprintf_r+0x910>
   16f14:	009787b3          	add	a5,a5,s1
   16f18:	01b43023          	sd	s11,0(s0)
   16f1c:	00943423          	sd	s1,8(s0)
   16f20:	08f13023          	sd	a5,128(sp)
   16f24:	06b12c23          	sw	a1,120(sp)
   16f28:	00700613          	li	a2,7
   16f2c:	24b64063          	blt	a2,a1,1716c <_vfiprintf_r+0xb9c>
   16f30:	01040413          	addi	s0,s0,16
   16f34:	0015859b          	addiw	a1,a1,1
   16f38:	00fa07b3          	add	a5,s4,a5
   16f3c:	01743023          	sd	s7,0(s0)
   16f40:	01443423          	sd	s4,8(s0)
   16f44:	08f13023          	sd	a5,128(sp)
   16f48:	06b12c23          	sw	a1,120(sp)
   16f4c:	00700713          	li	a4,7
   16f50:	b0b74ae3          	blt	a4,a1,16a64 <_vfiprintf_r+0x494>
   16f54:	01040413          	addi	s0,s0,16
   16f58:	00437313          	andi	t1,t1,4
   16f5c:	0a030863          	beqz	t1,1700c <_vfiprintf_r+0xa3c>
   16f60:	413904bb          	subw	s1,s2,s3
   16f64:	0a905463          	blez	s1,1700c <_vfiprintf_r+0xa3c>
   16f68:	01000713          	li	a4,16
   16f6c:	62975863          	ble	s1,a4,1759c <_vfiprintf_r+0xfcc>
   16f70:	01000a13          	li	s4,16
   16f74:	07812603          	lw	a2,120(sp)
   16f78:	05813823          	sd	s8,80(sp)
   16f7c:	00700d93          	li	s11,7
   16f80:	000a0b93          	mv	s7,s4
   16f84:	0180006f          	j	16f9c <_vfiprintf_r+0x9cc>
   16f88:	0026059b          	addiw	a1,a2,2
   16f8c:	01040413          	addi	s0,s0,16
   16f90:	00070613          	mv	a2,a4
   16f94:	ff04849b          	addiw	s1,s1,-16
   16f98:	029bdc63          	ble	s1,s7,16fd0 <_vfiprintf_r+0xa00>
   16f9c:	01078793          	addi	a5,a5,16
   16fa0:	0016071b          	addiw	a4,a2,1
   16fa4:	01843023          	sd	s8,0(s0)
   16fa8:	01443423          	sd	s4,8(s0)
   16fac:	08f13023          	sd	a5,128(sp)
   16fb0:	06e12c23          	sw	a4,120(sp)
   16fb4:	fceddae3          	ble	a4,s11,16f88 <_vfiprintf_r+0x9b8>
   16fb8:	0c079e63          	bnez	a5,17094 <_vfiprintf_r+0xac4>
   16fbc:	ff04849b          	addiw	s1,s1,-16
   16fc0:	00100593          	li	a1,1
   16fc4:	00000613          	li	a2,0
   16fc8:	000c8413          	mv	s0,s9
   16fcc:	fc9bc8e3          	blt	s7,s1,16f9c <_vfiprintf_r+0x9cc>
   16fd0:	05013703          	ld	a4,80(sp)
   16fd4:	009787b3          	add	a5,a5,s1
   16fd8:	00943423          	sd	s1,8(s0)
   16fdc:	00e43023          	sd	a4,0(s0)
   16fe0:	08f13023          	sd	a5,128(sp)
   16fe4:	06b12c23          	sw	a1,120(sp)
   16fe8:	00700713          	li	a4,7
   16fec:	02b75063          	ble	a1,a4,1700c <_vfiprintf_r+0xa3c>
   16ff0:	a80786e3          	beqz	a5,16a7c <_vfiprintf_r+0x4ac>
   16ff4:	07010613          	addi	a2,sp,112
   16ff8:	000d0593          	mv	a1,s10
   16ffc:	000a8513          	mv	a0,s5
   17000:	cccff0ef          	jal	164cc <__sprint_r.part.0>
   17004:	02051a63          	bnez	a0,17038 <_vfiprintf_r+0xa68>
   17008:	08013783          	ld	a5,128(sp)
   1700c:	01395463          	ble	s3,s2,17014 <_vfiprintf_r+0xa44>
   17010:	00098913          	mv	s2,s3
   17014:	05812703          	lw	a4,88(sp)
   17018:	0127073b          	addw	a4,a4,s2
   1701c:	04e12c23          	sw	a4,88(sp)
   17020:	a60788e3          	beqz	a5,16a90 <_vfiprintf_r+0x4c0>
   17024:	07010613          	addi	a2,sp,112
   17028:	000d0593          	mv	a1,s10
   1702c:	000a8513          	mv	a0,s5
   17030:	c9cff0ef          	jal	164cc <__sprint_r.part.0>
   17034:	a4050ee3          	beqz	a0,16a90 <_vfiprintf_r+0x4c0>
   17038:	010d5783          	lhu	a5,16(s10)
   1703c:	0407f793          	andi	a5,a5,64
   17040:	44079863          	bnez	a5,17490 <_vfiprintf_r+0xec0>
   17044:	05812503          	lw	a0,88(sp)
   17048:	f94ff06f          	j	167dc <_vfiprintf_r+0x20c>
   1704c:	07010613          	addi	a2,sp,112
   17050:	000d0593          	mv	a1,s10
   17054:	000a8513          	mv	a0,s5
   17058:	03f13c23          	sd	t6,56(sp)
   1705c:	03e13823          	sd	t5,48(sp)
   17060:	03d13423          	sd	t4,40(sp)
   17064:	02613023          	sd	t1,32(sp)
   17068:	c64ff0ef          	jal	164cc <__sprint_r.part.0>
   1706c:	fc0516e3          	bnez	a0,17038 <_vfiprintf_r+0xa68>
   17070:	07812603          	lw	a2,120(sp)
   17074:	08013783          	ld	a5,128(sp)
   17078:	000c8413          	mv	s0,s9
   1707c:	0016059b          	addiw	a1,a2,1
   17080:	03813f83          	ld	t6,56(sp)
   17084:	03013f03          	ld	t5,48(sp)
   17088:	02813e83          	ld	t4,40(sp)
   1708c:	02013303          	ld	t1,32(sp)
   17090:	e49ff06f          	j	16ed8 <_vfiprintf_r+0x908>
   17094:	07010613          	addi	a2,sp,112
   17098:	000d0593          	mv	a1,s10
   1709c:	000a8513          	mv	a0,s5
   170a0:	c2cff0ef          	jal	164cc <__sprint_r.part.0>
   170a4:	f8051ae3          	bnez	a0,17038 <_vfiprintf_r+0xa68>
   170a8:	07812603          	lw	a2,120(sp)
   170ac:	08013783          	ld	a5,128(sp)
   170b0:	000c8413          	mv	s0,s9
   170b4:	0016059b          	addiw	a1,a2,1
   170b8:	eddff06f          	j	16f94 <_vfiprintf_r+0x9c4>
   170bc:	07010613          	addi	a2,sp,112
   170c0:	000d0593          	mv	a1,s10
   170c4:	000a8513          	mv	a0,s5
   170c8:	04513023          	sd	t0,64(sp)
   170cc:	03f13c23          	sd	t6,56(sp)
   170d0:	03e13823          	sd	t5,48(sp)
   170d4:	03d13423          	sd	t4,40(sp)
   170d8:	02613023          	sd	t1,32(sp)
   170dc:	bf0ff0ef          	jal	164cc <__sprint_r.part.0>
   170e0:	f4051ce3          	bnez	a0,17038 <_vfiprintf_r+0xa68>
   170e4:	07812603          	lw	a2,120(sp)
   170e8:	08013783          	ld	a5,128(sp)
   170ec:	000c8413          	mv	s0,s9
   170f0:	0016051b          	addiw	a0,a2,1
   170f4:	04013283          	ld	t0,64(sp)
   170f8:	03813f83          	ld	t6,56(sp)
   170fc:	03013f03          	ld	t5,48(sp)
   17100:	02813e83          	ld	t4,40(sp)
   17104:	02013303          	ld	t1,32(sp)
   17108:	8d5ff06f          	j	169dc <_vfiprintf_r+0x40c>
   1710c:	34079263          	bnez	a5,17450 <_vfiprintf_r+0xe80>
   17110:	06714603          	lbu	a2,103(sp)
   17114:	02060663          	beqz	a2,17140 <_vfiprintf_r+0xb70>
   17118:	00100793          	li	a5,1
   1711c:	06710613          	addi	a2,sp,103
   17120:	0ac13823          	sd	a2,176(sp)
   17124:	0af13c23          	sd	a5,184(sp)
   17128:	00078593          	mv	a1,a5
   1712c:	000c8413          	mv	s0,s9
   17130:	00058613          	mv	a2,a1
   17134:	01040413          	addi	s0,s0,16
   17138:	0015859b          	addiw	a1,a1,1
   1713c:	82dff06f          	j	16968 <_vfiprintf_r+0x398>
   17140:	36038063          	beqz	t2,174a0 <_vfiprintf_r+0xed0>
   17144:	00200793          	li	a5,2
   17148:	06810613          	addi	a2,sp,104
   1714c:	0ac13823          	sd	a2,176(sp)
   17150:	0af13c23          	sd	a5,184(sp)
   17154:	00100593          	li	a1,1
   17158:	000c8413          	mv	s0,s9
   1715c:	00058613          	mv	a2,a1
   17160:	01040413          	addi	s0,s0,16
   17164:	0015859b          	addiw	a1,a1,1
   17168:	d2dff06f          	j	16e94 <_vfiprintf_r+0x8c4>
   1716c:	1c079263          	bnez	a5,17330 <_vfiprintf_r+0xd60>
   17170:	00100713          	li	a4,1
   17174:	000a0793          	mv	a5,s4
   17178:	0b713823          	sd	s7,176(sp)
   1717c:	0b413c23          	sd	s4,184(sp)
   17180:	09413023          	sd	s4,128(sp)
   17184:	06e12c23          	sw	a4,120(sp)
   17188:	000c8413          	mv	s0,s9
   1718c:	dc9ff06f          	j	16f54 <_vfiprintf_r+0x984>
   17190:	060103a3          	sb	zero,103(sp)
   17194:	1e04c063          	bltz	s1,17374 <_vfiprintf_r+0xda4>
   17198:	f7f37313          	andi	t1,t1,-129
   1719c:	ee078663          	beqz	a5,16888 <_vfiprintf_r+0x2b8>
   171a0:	00000593          	li	a1,0
   171a4:	000c8b93          	mv	s7,s9
   171a8:	01813703          	ld	a4,24(sp)
   171ac:	00f7f613          	andi	a2,a5,15
   171b0:	fffb8b93          	addi	s7,s7,-1
   171b4:	00c70633          	add	a2,a4,a2
   171b8:	00064603          	lbu	a2,0(a2)
   171bc:	0047d793          	srli	a5,a5,0x4
   171c0:	00cb8023          	sb	a2,0(s7)
   171c4:	fe0792e3          	bnez	a5,171a8 <_vfiprintf_r+0xbd8>
   171c8:	417c8a3b          	subw	s4,s9,s7
   171cc:	ed0ff06f          	j	1689c <_vfiprintf_r+0x2cc>
   171d0:	00813783          	ld	a5,8(sp)
   171d4:	060103a3          	sb	zero,103(sp)
   171d8:	00878713          	addi	a4,a5,8
   171dc:	0007b783          	ld	a5,0(a5)
   171e0:	a204dee3          	bgez	s1,16c1c <_vfiprintf_r+0x64c>
   171e4:	00e13423          	sd	a4,8(sp)
   171e8:	00000593          	li	a1,0
   171ec:	920796e3          	bnez	a5,16b18 <_vfiprintf_r+0x548>
   171f0:	00100793          	li	a5,1
   171f4:	00100713          	li	a4,1
   171f8:	a2e78ce3          	beq	a5,a4,16c30 <_vfiprintf_r+0x660>
   171fc:	00200713          	li	a4,2
   17200:	08e78e63          	beq	a5,a4,1729c <_vfiprintf_r+0xccc>
   17204:	00000793          	li	a5,0
   17208:	97dff06f          	j	16b84 <_vfiprintf_r+0x5b4>
   1720c:	07010613          	addi	a2,sp,112
   17210:	000d0593          	mv	a1,s10
   17214:	000a8513          	mv	a0,s5
   17218:	02613023          	sd	t1,32(sp)
   1721c:	ab0ff0ef          	jal	164cc <__sprint_r.part.0>
   17220:	e0051ce3          	bnez	a0,17038 <_vfiprintf_r+0xa68>
   17224:	08013783          	ld	a5,128(sp)
   17228:	000c8413          	mv	s0,s9
   1722c:	02013303          	ld	t1,32(sp)
   17230:	d29ff06f          	j	16f58 <_vfiprintf_r+0x988>
   17234:	04037793          	andi	a5,t1,64
   17238:	00813703          	ld	a4,8(sp)
   1723c:	20078263          	beqz	a5,17440 <_vfiprintf_r+0xe70>
   17240:	00071783          	lh	a5,0(a4)
   17244:	00870713          	addi	a4,a4,8
   17248:	00e13423          	sd	a4,8(sp)
   1724c:	8b9ff06f          	j	16b04 <_vfiprintf_r+0x534>
   17250:	04037793          	andi	a5,t1,64
   17254:	060103a3          	sb	zero,103(sp)
   17258:	18078263          	beqz	a5,173dc <_vfiprintf_r+0xe0c>
   1725c:	00813783          	ld	a5,8(sp)
   17260:	00878713          	addi	a4,a5,8
   17264:	0007d783          	lhu	a5,0(a5)
   17268:	9004d2e3          	bgez	s1,16b6c <_vfiprintf_r+0x59c>
   1726c:	00e13423          	sd	a4,8(sp)
   17270:	00000593          	li	a1,0
   17274:	f80780e3          	beqz	a5,171f4 <_vfiprintf_r+0xc24>
   17278:	00000593          	li	a1,0
   1727c:	909ff06f          	j	16b84 <_vfiprintf_r+0x5b4>
   17280:	07010613          	addi	a2,sp,112
   17284:	000d0593          	mv	a1,s10
   17288:	000a8513          	mv	a0,s5
   1728c:	a40ff0ef          	jal	164cc <__sprint_r.part.0>
   17290:	da0514e3          	bnez	a0,17038 <_vfiprintf_r+0xa68>
   17294:	000c8413          	mv	s0,s9
   17298:	c88ff06f          	j	16720 <_vfiprintf_r+0x150>
   1729c:	00000793          	li	a5,0
   172a0:	f05ff06f          	j	171a4 <_vfiprintf_r+0xbd4>
   172a4:	07010613          	addi	a2,sp,112
   172a8:	000d0593          	mv	a1,s10
   172ac:	000a8513          	mv	a0,s5
   172b0:	02513423          	sd	t0,40(sp)
   172b4:	02613023          	sd	t1,32(sp)
   172b8:	a14ff0ef          	jal	164cc <__sprint_r.part.0>
   172bc:	d6051ee3          	bnez	a0,17038 <_vfiprintf_r+0xa68>
   172c0:	07812603          	lw	a2,120(sp)
   172c4:	08013783          	ld	a5,128(sp)
   172c8:	000c8413          	mv	s0,s9
   172cc:	0016059b          	addiw	a1,a2,1
   172d0:	02813283          	ld	t0,40(sp)
   172d4:	02013303          	ld	t1,32(sp)
   172d8:	bbdff06f          	j	16e94 <_vfiprintf_r+0x8c4>
   172dc:	07010613          	addi	a2,sp,112
   172e0:	000d0593          	mv	a1,s10
   172e4:	000a8513          	mv	a0,s5
   172e8:	02513823          	sd	t0,48(sp)
   172ec:	02713423          	sd	t2,40(sp)
   172f0:	02613023          	sd	t1,32(sp)
   172f4:	9d8ff0ef          	jal	164cc <__sprint_r.part.0>
   172f8:	d40510e3          	bnez	a0,17038 <_vfiprintf_r+0xa68>
   172fc:	07812603          	lw	a2,120(sp)
   17300:	08013783          	ld	a5,128(sp)
   17304:	000c8413          	mv	s0,s9
   17308:	0016059b          	addiw	a1,a2,1
   1730c:	03013283          	ld	t0,48(sp)
   17310:	02813383          	ld	t2,40(sp)
   17314:	02013303          	ld	t1,32(sp)
   17318:	e50ff06f          	j	16968 <_vfiprintf_r+0x398>
   1731c:	1e079063          	bnez	a5,174fc <_vfiprintf_r+0xf2c>
   17320:	00100593          	li	a1,1
   17324:	00000613          	li	a2,0
   17328:	000c8413          	mv	s0,s9
   1732c:	b71ff06f          	j	16e9c <_vfiprintf_r+0x8cc>
   17330:	07010613          	addi	a2,sp,112
   17334:	000d0593          	mv	a1,s10
   17338:	000a8513          	mv	a0,s5
   1733c:	02613023          	sd	t1,32(sp)
   17340:	98cff0ef          	jal	164cc <__sprint_r.part.0>
   17344:	ce051ae3          	bnez	a0,17038 <_vfiprintf_r+0xa68>
   17348:	07812583          	lw	a1,120(sp)
   1734c:	08013783          	ld	a5,128(sp)
   17350:	000c8413          	mv	s0,s9
   17354:	0015859b          	addiw	a1,a1,1
   17358:	02013303          	ld	t1,32(sp)
   1735c:	eecff06f          	j	16a48 <_vfiprintf_r+0x478>
   17360:	00e13423          	sd	a4,8(sp)
   17364:	00019737          	lui	a4,0x19
   17368:	25870713          	addi	a4,a4,600 # 19258 <zeroes.4137+0x50>
   1736c:	00060313          	mv	t1,a2
   17370:	00e13c23          	sd	a4,24(sp)
   17374:	e20796e3          	bnez	a5,171a0 <_vfiprintf_r+0xbd0>
   17378:	00000593          	li	a1,0
   1737c:	00200793          	li	a5,2
   17380:	e75ff06f          	j	171f4 <_vfiprintf_r+0xc24>
   17384:	03000613          	li	a2,48
   17388:	06e104a3          	sb	a4,105(sp)
   1738c:	06c10423          	sb	a2,104(sp)
   17390:	060103a3          	sb	zero,103(sp)
   17394:	00236713          	ori	a4,t1,2
   17398:	1a04c463          	bltz	s1,17540 <_vfiprintf_r+0xf70>
   1739c:	f7f37313          	andi	t1,t1,-129
   173a0:	00236313          	ori	t1,t1,2
   173a4:	00000593          	li	a1,0
   173a8:	dfdff06f          	j	171a4 <_vfiprintf_r+0xbd4>
   173ac:	00019737          	lui	a4,0x19
   173b0:	25870713          	addi	a4,a4,600 # 19258 <zeroes.4137+0x50>
   173b4:	00000593          	li	a1,0
   173b8:	00e13c23          	sd	a4,24(sp)
   173bc:	de9ff06f          	j	171a4 <_vfiprintf_r+0xbd4>
   173c0:	000b0493          	mv	s1,s6
   173c4:	b68ff06f          	j	1672c <_vfiprintf_r+0x15c>
   173c8:	00813783          	ld	a5,8(sp)
   173cc:	00878713          	addi	a4,a5,8
   173d0:	0007e783          	lwu	a5,0(a5)
   173d4:	8404d4e3          	bgez	s1,16c1c <_vfiprintf_r+0x64c>
   173d8:	e0dff06f          	j	171e4 <_vfiprintf_r+0xc14>
   173dc:	00813783          	ld	a5,8(sp)
   173e0:	00878713          	addi	a4,a5,8
   173e4:	0007e783          	lwu	a5,0(a5)
   173e8:	f804d263          	bgez	s1,16b6c <_vfiprintf_r+0x59c>
   173ec:	e81ff06f          	j	1726c <_vfiprintf_r+0xc9c>
   173f0:	02d00713          	li	a4,45
   173f4:	06e103a3          	sb	a4,103(sp)
   173f8:	40f007b3          	neg	a5,a5
   173fc:	1804c863          	bltz	s1,1758c <_vfiprintf_r+0xfbc>
   17400:	f7f37313          	andi	t1,t1,-129
   17404:	02d00593          	li	a1,45
   17408:	f10ff06f          	j	16b18 <_vfiprintf_r+0x548>
   1740c:	0006e783          	lwu	a5,0(a3)
   17410:	00868693          	addi	a3,a3,8
   17414:	00d13423          	sd	a3,8(sp)
   17418:	905ff06f          	j	16d1c <_vfiprintf_r+0x74c>
   1741c:	00813703          	ld	a4,8(sp)
   17420:	04037313          	andi	t1,t1,64
   17424:	00073783          	ld	a5,0(a4)
   17428:	00870713          	addi	a4,a4,8
   1742c:	00e13423          	sd	a4,8(sp)
   17430:	08030063          	beqz	t1,174b0 <_vfiprintf_r+0xee0>
   17434:	05815703          	lhu	a4,88(sp)
   17438:	00e79023          	sh	a4,0(a5)
   1743c:	a84ff06f          	j	166c0 <_vfiprintf_r+0xf0>
   17440:	00072783          	lw	a5,0(a4)
   17444:	00870713          	addi	a4,a4,8
   17448:	00e13423          	sd	a4,8(sp)
   1744c:	eb8ff06f          	j	16b04 <_vfiprintf_r+0x534>
   17450:	07010613          	addi	a2,sp,112
   17454:	000d0593          	mv	a1,s10
   17458:	000a8513          	mv	a0,s5
   1745c:	02513823          	sd	t0,48(sp)
   17460:	02713423          	sd	t2,40(sp)
   17464:	02613023          	sd	t1,32(sp)
   17468:	864ff0ef          	jal	164cc <__sprint_r.part.0>
   1746c:	bc0516e3          	bnez	a0,17038 <_vfiprintf_r+0xa68>
   17470:	07812603          	lw	a2,120(sp)
   17474:	08013783          	ld	a5,128(sp)
   17478:	000c8413          	mv	s0,s9
   1747c:	0016059b          	addiw	a1,a2,1
   17480:	03013283          	ld	t0,48(sp)
   17484:	02813383          	ld	t2,40(sp)
   17488:	02013303          	ld	t1,32(sp)
   1748c:	9c9ff06f          	j	16e54 <_vfiprintf_r+0x884>
   17490:	fff00513          	li	a0,-1
   17494:	b48ff06f          	j	167dc <_vfiprintf_r+0x20c>
   17498:	000c8413          	mv	s0,s9
   1749c:	acdff06f          	j	16f68 <_vfiprintf_r+0x998>
   174a0:	00000613          	li	a2,0
   174a4:	00100593          	li	a1,1
   174a8:	000c8413          	mv	s0,s9
   174ac:	9e9ff06f          	j	16e94 <_vfiprintf_r+0x8c4>
   174b0:	05812703          	lw	a4,88(sp)
   174b4:	00e7a023          	sw	a4,0(a5)
   174b8:	a08ff06f          	j	166c0 <_vfiprintf_r+0xf0>
   174bc:	08013783          	ld	a5,128(sp)
   174c0:	b6078ce3          	beqz	a5,17038 <_vfiprintf_r+0xa68>
   174c4:	07010613          	addi	a2,sp,112
   174c8:	000d0593          	mv	a1,s10
   174cc:	000a8513          	mv	a0,s5
   174d0:	ffdfe0ef          	jal	164cc <__sprint_r.part.0>
   174d4:	b65ff06f          	j	17038 <_vfiprintf_r+0xa68>
   174d8:	000b8513          	mv	a0,s7
   174dc:	02613023          	sd	t1,32(sp)
   174e0:	f1dfe0ef          	jal	163fc <strlen>
   174e4:	00050a1b          	sext.w	s4,a0
   174e8:	06714583          	lbu	a1,103(sp)
   174ec:	01b13423          	sd	s11,8(sp)
   174f0:	00000493          	li	s1,0
   174f4:	02013303          	ld	t1,32(sp)
   174f8:	ba4ff06f          	j	1689c <_vfiprintf_r+0x2cc>
   174fc:	07010613          	addi	a2,sp,112
   17500:	000d0593          	mv	a1,s10
   17504:	000a8513          	mv	a0,s5
   17508:	02613023          	sd	t1,32(sp)
   1750c:	fc1fe0ef          	jal	164cc <__sprint_r.part.0>
   17510:	b20514e3          	bnez	a0,17038 <_vfiprintf_r+0xa68>
   17514:	07812603          	lw	a2,120(sp)
   17518:	08013783          	ld	a5,128(sp)
   1751c:	000c8413          	mv	s0,s9
   17520:	0016059b          	addiw	a1,a2,1
   17524:	02013303          	ld	t1,32(sp)
   17528:	975ff06f          	j	16e9c <_vfiprintf_r+0x8cc>
   1752c:	07812603          	lw	a2,120(sp)
   17530:	08013783          	ld	a5,128(sp)
   17534:	05813823          	sd	s8,80(sp)
   17538:	0016061b          	addiw	a2,a2,1
   1753c:	bfcff06f          	j	16938 <_vfiprintf_r+0x368>
   17540:	00000593          	li	a1,0
   17544:	00200613          	li	a2,2
   17548:	00100513          	li	a0,1
   1754c:	08a60263          	beq	a2,a0,175d0 <_vfiprintf_r+0x1000>
   17550:	00200513          	li	a0,2
   17554:	08a61263          	bne	a2,a0,175d8 <_vfiprintf_r+0x1008>
   17558:	00070313          	mv	t1,a4
   1755c:	c49ff06f          	j	171a4 <_vfiprintf_r+0xbd4>
   17560:	00600793          	li	a5,6
   17564:	0097f463          	bleu	s1,a5,1756c <_vfiprintf_r+0xf9c>
   17568:	00078493          	mv	s1,a5
   1756c:	00048a13          	mv	s4,s1
   17570:	00048993          	mv	s3,s1
   17574:	0604c663          	bltz	s1,175e0 <_vfiprintf_r+0x1010>
   17578:	00019737          	lui	a4,0x19
   1757c:	01b13423          	sd	s11,8(sp)
   17580:	27070b93          	addi	s7,a4,624 # 19270 <zeroes.4137+0x68>
   17584:	00000493          	li	s1,0
   17588:	b28ff06f          	j	168b0 <_vfiprintf_r+0x2e0>
   1758c:	00030713          	mv	a4,t1
   17590:	02d00593          	li	a1,45
   17594:	00100613          	li	a2,1
   17598:	fb1ff06f          	j	17548 <_vfiprintf_r+0xf78>
   1759c:	07812583          	lw	a1,120(sp)
   175a0:	05813823          	sd	s8,80(sp)
   175a4:	0015859b          	addiw	a1,a1,1
   175a8:	a29ff06f          	j	16fd0 <_vfiprintf_r+0xa00>
   175ac:	00019737          	lui	a4,0x19
   175b0:	00058513          	mv	a0,a1
   175b4:	20870d93          	addi	s11,a4,520 # 19208 <zeroes.4137>
   175b8:	c60ff06f          	j	16a18 <_vfiprintf_r+0x448>
   175bc:	00048a13          	mv	s4,s1
   175c0:	06714583          	lbu	a1,103(sp)
   175c4:	01b13423          	sd	s11,8(sp)
   175c8:	00000493          	li	s1,0
   175cc:	ad0ff06f          	j	1689c <_vfiprintf_r+0x2cc>
   175d0:	00070313          	mv	t1,a4
   175d4:	d44ff06f          	j	16b18 <_vfiprintf_r+0x548>
   175d8:	00070313          	mv	t1,a4
   175dc:	da8ff06f          	j	16b84 <_vfiprintf_r+0x5b4>
   175e0:	00000993          	li	s3,0
   175e4:	f95ff06f          	j	17578 <_vfiprintf_r+0xfa8>
   175e8:	00813783          	ld	a5,8(sp)
   175ec:	00080b13          	mv	s6,a6
   175f0:	0007a483          	lw	s1,0(a5)
   175f4:	00878b93          	addi	s7,a5,8
   175f8:	01713423          	sd	s7,8(sp)
   175fc:	9804de63          	bgez	s1,16798 <_vfiprintf_r+0x1c8>
   17600:	fff00493          	li	s1,-1
   17604:	000b0813          	mv	a6,s6
   17608:	954ff06f          	j	1675c <_vfiprintf_r+0x18c>
   1760c:	07d103a3          	sb	t4,103(sp)
   17610:	f44ff06f          	j	16d54 <_vfiprintf_r+0x784>
   17614:	07d103a3          	sb	t4,103(sp)
   17618:	ee0ff06f          	j	16cf8 <_vfiprintf_r+0x728>
   1761c:	07d103a3          	sb	t4,103(sp)
   17620:	fb0ff06f          	j	16dd0 <_vfiprintf_r+0x800>
   17624:	00137793          	andi	a5,t1,1
   17628:	00078c63          	beqz	a5,17640 <_vfiprintf_r+0x1070>
   1762c:	03000793          	li	a5,48
   17630:	0af107a3          	sb	a5,175(sp)
   17634:	05c12a03          	lw	s4,92(sp)
   17638:	0af10b93          	addi	s7,sp,175
   1763c:	a60ff06f          	j	1689c <_vfiprintf_r+0x2cc>
   17640:	00000a13          	li	s4,0
   17644:	000c8b93          	mv	s7,s9
   17648:	a54ff06f          	j	1689c <_vfiprintf_r+0x2cc>
   1764c:	07d103a3          	sb	t4,103(sp)
   17650:	cfcff06f          	j	16b4c <_vfiprintf_r+0x57c>
   17654:	07d103a3          	sb	t4,103(sp)
   17658:	c90ff06f          	j	16ae8 <_vfiprintf_r+0x518>
   1765c:	07d103a3          	sb	t4,103(sp)
   17660:	d94ff06f          	j	16bf4 <_vfiprintf_r+0x624>
   17664:	07d103a3          	sb	t4,103(sp)
   17668:	d64ff06f          	j	16bcc <_vfiprintf_r+0x5fc>

000000000001766c <vfiprintf>:
   1766c:	00060693          	mv	a3,a2
   17670:	00058613          	mv	a2,a1
   17674:	00050593          	mv	a1,a0
   17678:	8101b503          	ld	a0,-2032(gp) # 1b300 <_impure_ptr>
   1767c:	f55fe06f          	j	165d0 <_vfiprintf_r>

0000000000017680 <__sbprintf>:
   17680:	0105d783          	lhu	a5,16(a1)
   17684:	0ac5ae03          	lw	t3,172(a1)
   17688:	0125d303          	lhu	t1,18(a1)
   1768c:	0305b883          	ld	a7,48(a1)
   17690:	0405b803          	ld	a6,64(a1)
   17694:	b3010113          	addi	sp,sp,-1232
   17698:	ffd7f793          	andi	a5,a5,-3
   1769c:	40000713          	li	a4,1024
   176a0:	4c813023          	sd	s0,1216(sp)
   176a4:	00f11823          	sh	a5,16(sp)
   176a8:	00058413          	mv	s0,a1
   176ac:	0b010793          	addi	a5,sp,176
   176b0:	00010593          	mv	a1,sp
   176b4:	4a913c23          	sd	s1,1208(sp)
   176b8:	4b213823          	sd	s2,1200(sp)
   176bc:	4c113423          	sd	ra,1224(sp)
   176c0:	00050913          	mv	s2,a0
   176c4:	0bc12623          	sw	t3,172(sp)
   176c8:	00611923          	sh	t1,18(sp)
   176cc:	03113823          	sd	a7,48(sp)
   176d0:	05013023          	sd	a6,64(sp)
   176d4:	00f13023          	sd	a5,0(sp)
   176d8:	00f13c23          	sd	a5,24(sp)
   176dc:	00e12623          	sw	a4,12(sp)
   176e0:	02e12023          	sw	a4,32(sp)
   176e4:	02012423          	sw	zero,40(sp)
   176e8:	ee9fe0ef          	jal	165d0 <_vfiprintf_r>
   176ec:	00050493          	mv	s1,a0
   176f0:	00054a63          	bltz	a0,17704 <__sbprintf+0x84>
   176f4:	00010593          	mv	a1,sp
   176f8:	00090513          	mv	a0,s2
   176fc:	b54fc0ef          	jal	13a50 <_fflush_r>
   17700:	02051c63          	bnez	a0,17738 <__sbprintf+0xb8>
   17704:	01015783          	lhu	a5,16(sp)
   17708:	0407f793          	andi	a5,a5,64
   1770c:	00078863          	beqz	a5,1771c <__sbprintf+0x9c>
   17710:	01045783          	lhu	a5,16(s0)
   17714:	0407e793          	ori	a5,a5,64
   17718:	00f41823          	sh	a5,16(s0)
   1771c:	4c813083          	ld	ra,1224(sp)
   17720:	00048513          	mv	a0,s1
   17724:	4c013403          	ld	s0,1216(sp)
   17728:	4b813483          	ld	s1,1208(sp)
   1772c:	4b013903          	ld	s2,1200(sp)
   17730:	4d010113          	addi	sp,sp,1232
   17734:	00008067          	ret
   17738:	fff00493          	li	s1,-1
   1773c:	fc9ff06f          	j	17704 <__sbprintf+0x84>

0000000000017740 <_calloc_r>:
   17740:	02c585b3          	mul	a1,a1,a2
   17744:	ff010113          	addi	sp,sp,-16
   17748:	00113423          	sd	ra,8(sp)
   1774c:	00813023          	sd	s0,0(sp)
   17750:	ef9fc0ef          	jal	14648 <_malloc_r>
   17754:	08050c63          	beqz	a0,177ec <_calloc_r+0xac>
   17758:	ff853603          	ld	a2,-8(a0)
   1775c:	04800713          	li	a4,72
   17760:	00050413          	mv	s0,a0
   17764:	ffc67613          	andi	a2,a2,-4
   17768:	ff860613          	addi	a2,a2,-8
   1776c:	04c76e63          	bltu	a4,a2,177c8 <_calloc_r+0x88>
   17770:	02700693          	li	a3,39
   17774:	00050793          	mv	a5,a0
   17778:	02c6f863          	bleu	a2,a3,177a8 <_calloc_r+0x68>
   1777c:	00053023          	sd	zero,0(a0)
   17780:	00053423          	sd	zero,8(a0)
   17784:	03700793          	li	a5,55
   17788:	04c7fe63          	bleu	a2,a5,177e4 <_calloc_r+0xa4>
   1778c:	00053823          	sd	zero,16(a0)
   17790:	00053c23          	sd	zero,24(a0)
   17794:	02050793          	addi	a5,a0,32
   17798:	00e61863          	bne	a2,a4,177a8 <_calloc_r+0x68>
   1779c:	02053023          	sd	zero,32(a0)
   177a0:	03050793          	addi	a5,a0,48
   177a4:	02053423          	sd	zero,40(a0)
   177a8:	0007b023          	sd	zero,0(a5)
   177ac:	0007b423          	sd	zero,8(a5)
   177b0:	0007b823          	sd	zero,16(a5)
   177b4:	00040513          	mv	a0,s0
   177b8:	00813083          	ld	ra,8(sp)
   177bc:	00013403          	ld	s0,0(sp)
   177c0:	01010113          	addi	sp,sp,16
   177c4:	00008067          	ret
   177c8:	00000593          	li	a1,0
   177cc:	ff4fd0ef          	jal	14fc0 <memset>
   177d0:	00813083          	ld	ra,8(sp)
   177d4:	00040513          	mv	a0,s0
   177d8:	00013403          	ld	s0,0(sp)
   177dc:	01010113          	addi	sp,sp,16
   177e0:	00008067          	ret
   177e4:	01050793          	addi	a5,a0,16
   177e8:	fc1ff06f          	j	177a8 <_calloc_r+0x68>
   177ec:	00000513          	li	a0,0
   177f0:	fc9ff06f          	j	177b8 <_calloc_r+0x78>

00000000000177f4 <_fclose_r>:
   177f4:	0e058e63          	beqz	a1,178f0 <_fclose_r+0xfc>
   177f8:	fe010113          	addi	sp,sp,-32
   177fc:	00813823          	sd	s0,16(sp)
   17800:	00913423          	sd	s1,8(sp)
   17804:	00113c23          	sd	ra,24(sp)
   17808:	01213023          	sd	s2,0(sp)
   1780c:	00050493          	mv	s1,a0
   17810:	00058413          	mv	s0,a1
   17814:	00050663          	beqz	a0,17820 <_fclose_r+0x2c>
   17818:	05052783          	lw	a5,80(a0)
   1781c:	0a078a63          	beqz	a5,178d0 <_fclose_r+0xdc>
   17820:	01041783          	lh	a5,16(s0)
   17824:	00000513          	li	a0,0
   17828:	00079e63          	bnez	a5,17844 <_fclose_r+0x50>
   1782c:	01813083          	ld	ra,24(sp)
   17830:	01013403          	ld	s0,16(sp)
   17834:	00813483          	ld	s1,8(sp)
   17838:	00013903          	ld	s2,0(sp)
   1783c:	02010113          	addi	sp,sp,32
   17840:	00008067          	ret
   17844:	00040593          	mv	a1,s0
   17848:	00048513          	mv	a0,s1
   1784c:	f99fb0ef          	jal	137e4 <__sflush_r>
   17850:	05043783          	ld	a5,80(s0)
   17854:	00050913          	mv	s2,a0
   17858:	00078a63          	beqz	a5,1786c <_fclose_r+0x78>
   1785c:	03043583          	ld	a1,48(s0)
   17860:	00048513          	mv	a0,s1
   17864:	000780e7          	jalr	a5
   17868:	06054863          	bltz	a0,178d8 <_fclose_r+0xe4>
   1786c:	01045783          	lhu	a5,16(s0)
   17870:	0807f793          	andi	a5,a5,128
   17874:	06079663          	bnez	a5,178e0 <_fclose_r+0xec>
   17878:	05843583          	ld	a1,88(s0)
   1787c:	00058c63          	beqz	a1,17894 <_fclose_r+0xa0>
   17880:	07440793          	addi	a5,s0,116
   17884:	00f58663          	beq	a1,a5,17890 <_fclose_r+0x9c>
   17888:	00048513          	mv	a0,s1
   1788c:	ec8fc0ef          	jal	13f54 <_free_r>
   17890:	04043c23          	sd	zero,88(s0)
   17894:	07843583          	ld	a1,120(s0)
   17898:	00058863          	beqz	a1,178a8 <_fclose_r+0xb4>
   1789c:	00048513          	mv	a0,s1
   178a0:	eb4fc0ef          	jal	13f54 <_free_r>
   178a4:	06043c23          	sd	zero,120(s0)
   178a8:	d64fc0ef          	jal	13e0c <__sfp_lock_acquire>
   178ac:	00041823          	sh	zero,16(s0)
   178b0:	d60fc0ef          	jal	13e10 <__sfp_lock_release>
   178b4:	01813083          	ld	ra,24(sp)
   178b8:	00090513          	mv	a0,s2
   178bc:	01013403          	ld	s0,16(sp)
   178c0:	00813483          	ld	s1,8(sp)
   178c4:	00013903          	ld	s2,0(sp)
   178c8:	02010113          	addi	sp,sp,32
   178cc:	00008067          	ret
   178d0:	d2cfc0ef          	jal	13dfc <__sinit>
   178d4:	f4dff06f          	j	17820 <_fclose_r+0x2c>
   178d8:	fff00913          	li	s2,-1
   178dc:	f91ff06f          	j	1786c <_fclose_r+0x78>
   178e0:	01843583          	ld	a1,24(s0)
   178e4:	00048513          	mv	a0,s1
   178e8:	e6cfc0ef          	jal	13f54 <_free_r>
   178ec:	f8dff06f          	j	17878 <_fclose_r+0x84>
   178f0:	00000513          	li	a0,0
   178f4:	00008067          	ret

00000000000178f8 <fclose>:
   178f8:	00050593          	mv	a1,a0
   178fc:	8101b503          	ld	a0,-2032(gp) # 1b300 <_impure_ptr>
   17900:	ef5ff06f          	j	177f4 <_fclose_r>

0000000000017904 <__fputwc>:
   17904:	fb010113          	addi	sp,sp,-80
   17908:	04813023          	sd	s0,64(sp)
   1790c:	03413023          	sd	s4,32(sp)
   17910:	01513c23          	sd	s5,24(sp)
   17914:	04113423          	sd	ra,72(sp)
   17918:	02913c23          	sd	s1,56(sp)
   1791c:	03213823          	sd	s2,48(sp)
   17920:	03313423          	sd	s3,40(sp)
   17924:	01613823          	sd	s6,16(sp)
   17928:	00050a93          	mv	s5,a0
   1792c:	00058a13          	mv	s4,a1
   17930:	00060413          	mv	s0,a2
   17934:	b25fc0ef          	jal	14458 <__locale_mb_cur_max>
   17938:	00100793          	li	a5,1
   1793c:	10f50663          	beq	a0,a5,17a48 <__fputwc+0x144>
   17940:	00810493          	addi	s1,sp,8
   17944:	0a440693          	addi	a3,s0,164
   17948:	000a0613          	mv	a2,s4
   1794c:	00048593          	mv	a1,s1
   17950:	000a8513          	mv	a0,s5
   17954:	699000ef          	jal	187ec <_wcrtomb_r>
   17958:	fff00793          	li	a5,-1
   1795c:	00050993          	mv	s3,a0
   17960:	08f50e63          	beq	a0,a5,179fc <__fputwc+0xf8>
   17964:	10050263          	beqz	a0,17a68 <__fputwc+0x164>
   17968:	00814583          	lbu	a1,8(sp)
   1796c:	00c42783          	lw	a5,12(s0)
   17970:	00000913          	li	s2,0
   17974:	00a00b13          	li	s6,10
   17978:	fff7879b          	addiw	a5,a5,-1
   1797c:	00f42623          	sw	a5,12(s0)
   17980:	0207cc63          	bltz	a5,179b8 <__fputwc+0xb4>
   17984:	00043783          	ld	a5,0(s0)
   17988:	00b78023          	sb	a1,0(a5)
   1798c:	00043783          	ld	a5,0(s0)
   17990:	00178793          	addi	a5,a5,1
   17994:	00f43023          	sd	a5,0(s0)
   17998:	00190913          	addi	s2,s2,1
   1799c:	00148493          	addi	s1,s1,1
   179a0:	0d397463          	bleu	s3,s2,17a68 <__fputwc+0x164>
   179a4:	00c42783          	lw	a5,12(s0)
   179a8:	0004c583          	lbu	a1,0(s1)
   179ac:	fff7879b          	addiw	a5,a5,-1
   179b0:	00f42623          	sw	a5,12(s0)
   179b4:	fc07d8e3          	bgez	a5,17984 <__fputwc+0x80>
   179b8:	02842703          	lw	a4,40(s0)
   179bc:	06e7ca63          	blt	a5,a4,17a30 <__fputwc+0x12c>
   179c0:	00043783          	ld	a5,0(s0)
   179c4:	00b78023          	sb	a1,0(a5)
   179c8:	00043783          	ld	a5,0(s0)
   179cc:	0007c703          	lbu	a4,0(a5)
   179d0:	00178793          	addi	a5,a5,1
   179d4:	fd6710e3          	bne	a4,s6,17994 <__fputwc+0x90>
   179d8:	00040613          	mv	a2,s0
   179dc:	000b0593          	mv	a1,s6
   179e0:	000a8513          	mv	a0,s5
   179e4:	481000ef          	jal	18664 <__swbuf_r>
   179e8:	0015051b          	addiw	a0,a0,1
   179ec:	00153513          	seqz	a0,a0
   179f0:	fa0504e3          	beqz	a0,17998 <__fputwc+0x94>
   179f4:	fff00513          	li	a0,-1
   179f8:	0100006f          	j	17a08 <__fputwc+0x104>
   179fc:	01045783          	lhu	a5,16(s0)
   17a00:	0407e793          	ori	a5,a5,64
   17a04:	00f41823          	sh	a5,16(s0)
   17a08:	04813083          	ld	ra,72(sp)
   17a0c:	04013403          	ld	s0,64(sp)
   17a10:	03813483          	ld	s1,56(sp)
   17a14:	03013903          	ld	s2,48(sp)
   17a18:	02813983          	ld	s3,40(sp)
   17a1c:	02013a03          	ld	s4,32(sp)
   17a20:	01813a83          	ld	s5,24(sp)
   17a24:	01013b03          	ld	s6,16(sp)
   17a28:	05010113          	addi	sp,sp,80
   17a2c:	00008067          	ret
   17a30:	00040613          	mv	a2,s0
   17a34:	000a8513          	mv	a0,s5
   17a38:	42d000ef          	jal	18664 <__swbuf_r>
   17a3c:	0015051b          	addiw	a0,a0,1
   17a40:	00153513          	seqz	a0,a0
   17a44:	fadff06f          	j	179f0 <__fputwc+0xec>
   17a48:	fffa079b          	addiw	a5,s4,-1
   17a4c:	0fe00713          	li	a4,254
   17a50:	eef768e3          	bltu	a4,a5,17940 <__fputwc+0x3c>
   17a54:	0ffa7593          	andi	a1,s4,255
   17a58:	00b10423          	sb	a1,8(sp)
   17a5c:	00100993          	li	s3,1
   17a60:	00810493          	addi	s1,sp,8
   17a64:	f09ff06f          	j	1796c <__fputwc+0x68>
   17a68:	000a0513          	mv	a0,s4
   17a6c:	f9dff06f          	j	17a08 <__fputwc+0x104>

0000000000017a70 <_fputwc_r>:
   17a70:	01061783          	lh	a5,16(a2)
   17a74:	00002737          	lui	a4,0x2
   17a78:	03279693          	slli	a3,a5,0x32
   17a7c:	0006cc63          	bltz	a3,17a94 <_fputwc_r+0x24>
   17a80:	0ac62683          	lw	a3,172(a2)
   17a84:	00e7e7b3          	or	a5,a5,a4
   17a88:	00f61823          	sh	a5,16(a2)
   17a8c:	00e6e733          	or	a4,a3,a4
   17a90:	0ae62623          	sw	a4,172(a2)
   17a94:	e71ff06f          	j	17904 <__fputwc>

0000000000017a98 <fputwc>:
   17a98:	fd010113          	addi	sp,sp,-48
   17a9c:	02813023          	sd	s0,32(sp)
   17aa0:	8101b403          	ld	s0,-2032(gp) # 1b300 <_impure_ptr>
   17aa4:	00913c23          	sd	s1,24(sp)
   17aa8:	02113423          	sd	ra,40(sp)
   17aac:	00050493          	mv	s1,a0
   17ab0:	00058613          	mv	a2,a1
   17ab4:	00040663          	beqz	s0,17ac0 <fputwc+0x28>
   17ab8:	05042783          	lw	a5,80(s0)
   17abc:	04078263          	beqz	a5,17b00 <fputwc+0x68>
   17ac0:	01061783          	lh	a5,16(a2)
   17ac4:	00002737          	lui	a4,0x2
   17ac8:	03279693          	slli	a3,a5,0x32
   17acc:	0006cc63          	bltz	a3,17ae4 <fputwc+0x4c>
   17ad0:	0ac62683          	lw	a3,172(a2)
   17ad4:	00e7e7b3          	or	a5,a5,a4
   17ad8:	00f61823          	sh	a5,16(a2)
   17adc:	00e6e733          	or	a4,a3,a4
   17ae0:	0ae62623          	sw	a4,172(a2)
   17ae4:	00048593          	mv	a1,s1
   17ae8:	00040513          	mv	a0,s0
   17aec:	02813083          	ld	ra,40(sp)
   17af0:	02013403          	ld	s0,32(sp)
   17af4:	01813483          	ld	s1,24(sp)
   17af8:	03010113          	addi	sp,sp,48
   17afc:	e09ff06f          	j	17904 <__fputwc>
   17b00:	00040513          	mv	a0,s0
   17b04:	00b13423          	sd	a1,8(sp)
   17b08:	af4fc0ef          	jal	13dfc <__sinit>
   17b0c:	00813603          	ld	a2,8(sp)
   17b10:	fb1ff06f          	j	17ac0 <fputwc+0x28>

0000000000017b14 <__sfvwrite_r>:
   17b14:	01063783          	ld	a5,16(a2)
   17b18:	26078a63          	beqz	a5,17d8c <__sfvwrite_r+0x278>
   17b1c:	0105d703          	lhu	a4,16(a1)
   17b20:	f9010113          	addi	sp,sp,-112
   17b24:	06813023          	sd	s0,96(sp)
   17b28:	03513c23          	sd	s5,56(sp)
   17b2c:	03613823          	sd	s6,48(sp)
   17b30:	06113423          	sd	ra,104(sp)
   17b34:	04913c23          	sd	s1,88(sp)
   17b38:	05213823          	sd	s2,80(sp)
   17b3c:	05313423          	sd	s3,72(sp)
   17b40:	05413023          	sd	s4,64(sp)
   17b44:	03713423          	sd	s7,40(sp)
   17b48:	03813023          	sd	s8,32(sp)
   17b4c:	01913c23          	sd	s9,24(sp)
   17b50:	01a13823          	sd	s10,16(sp)
   17b54:	01b13423          	sd	s11,8(sp)
   17b58:	00877793          	andi	a5,a4,8
   17b5c:	00058413          	mv	s0,a1
   17b60:	00050b13          	mv	s6,a0
   17b64:	00060a93          	mv	s5,a2
   17b68:	0a078863          	beqz	a5,17c18 <__sfvwrite_r+0x104>
   17b6c:	0185b783          	ld	a5,24(a1)
   17b70:	0a078463          	beqz	a5,17c18 <__sfvwrite_r+0x104>
   17b74:	00277793          	andi	a5,a4,2
   17b78:	000ab483          	ld	s1,0(s5)
   17b7c:	0c078063          	beqz	a5,17c3c <__sfvwrite_r+0x128>
   17b80:	80000a37          	lui	s4,0x80000
   17b84:	00000993          	li	s3,0
   17b88:	00000913          	li	s2,0
   17b8c:	c00a4a13          	xori	s4,s4,-1024
   17b90:	00098613          	mv	a2,s3
   17b94:	000b0513          	mv	a0,s6
   17b98:	1e090263          	beqz	s2,17d7c <__sfvwrite_r+0x268>
   17b9c:	00090693          	mv	a3,s2
   17ba0:	012a7463          	bleu	s2,s4,17ba8 <__sfvwrite_r+0x94>
   17ba4:	000a0693          	mv	a3,s4
   17ba8:	04043783          	ld	a5,64(s0)
   17bac:	03043583          	ld	a1,48(s0)
   17bb0:	0006869b          	sext.w	a3,a3
   17bb4:	000780e7          	jalr	a5
   17bb8:	22a05063          	blez	a0,17dd8 <__sfvwrite_r+0x2c4>
   17bbc:	010ab783          	ld	a5,16(s5)
   17bc0:	00a989b3          	add	s3,s3,a0
   17bc4:	40a90933          	sub	s2,s2,a0
   17bc8:	40a78533          	sub	a0,a5,a0
   17bcc:	00aab823          	sd	a0,16(s5)
   17bd0:	fc0510e3          	bnez	a0,17b90 <__sfvwrite_r+0x7c>
   17bd4:	00000793          	li	a5,0
   17bd8:	06813083          	ld	ra,104(sp)
   17bdc:	00078513          	mv	a0,a5
   17be0:	06013403          	ld	s0,96(sp)
   17be4:	05813483          	ld	s1,88(sp)
   17be8:	05013903          	ld	s2,80(sp)
   17bec:	04813983          	ld	s3,72(sp)
   17bf0:	04013a03          	ld	s4,64(sp)
   17bf4:	03813a83          	ld	s5,56(sp)
   17bf8:	03013b03          	ld	s6,48(sp)
   17bfc:	02813b83          	ld	s7,40(sp)
   17c00:	02013c03          	ld	s8,32(sp)
   17c04:	01813c83          	ld	s9,24(sp)
   17c08:	01013d03          	ld	s10,16(sp)
   17c0c:	00813d83          	ld	s11,8(sp)
   17c10:	07010113          	addi	sp,sp,112
   17c14:	00008067          	ret
   17c18:	00040593          	mv	a1,s0
   17c1c:	000b0513          	mv	a0,s6
   17c20:	cd0fa0ef          	jal	120f0 <__swsetup_r>
   17c24:	fff00793          	li	a5,-1
   17c28:	fa0518e3          	bnez	a0,17bd8 <__sfvwrite_r+0xc4>
   17c2c:	01045703          	lhu	a4,16(s0)
   17c30:	000ab483          	ld	s1,0(s5)
   17c34:	00277793          	andi	a5,a4,2
   17c38:	f40794e3          	bnez	a5,17b80 <__sfvwrite_r+0x6c>
   17c3c:	00177793          	andi	a5,a4,1
   17c40:	1a079663          	bnez	a5,17dec <__sfvwrite_r+0x2d8>
   17c44:	80000bb7          	lui	s7,0x80000
   17c48:	ffebcc13          	xori	s8,s7,-2
   17c4c:	00000c93          	li	s9,0
   17c50:	00000913          	li	s2,0
   17c54:	fffbcb93          	not	s7,s7
   17c58:	10090a63          	beqz	s2,17d6c <__sfvwrite_r+0x258>
   17c5c:	00c42983          	lw	s3,12(s0)
   17c60:	20077793          	andi	a5,a4,512
   17c64:	00098a13          	mv	s4,s3
   17c68:	26078863          	beqz	a5,17ed8 <__sfvwrite_r+0x3c4>
   17c6c:	2b396a63          	bltu	s2,s3,17f20 <__sfvwrite_r+0x40c>
   17c70:	48077793          	andi	a5,a4,1152
   17c74:	2a078663          	beqz	a5,17f20 <__sfvwrite_r+0x40c>
   17c78:	02042a03          	lw	s4,32(s0)
   17c7c:	01843583          	ld	a1,24(s0)
   17c80:	00043d03          	ld	s10,0(s0)
   17c84:	001a179b          	slliw	a5,s4,0x1
   17c88:	01478a3b          	addw	s4,a5,s4
   17c8c:	01fa579b          	srliw	a5,s4,0x1f
   17c90:	40bd0d3b          	subw	s10,s10,a1
   17c94:	01478a3b          	addw	s4,a5,s4
   17c98:	000d0993          	mv	s3,s10
   17c9c:	401a5a1b          	sraiw	s4,s4,0x1
   17ca0:	00198793          	addi	a5,s3,1
   17ca4:	000a0613          	mv	a2,s4
   17ca8:	012787b3          	add	a5,a5,s2
   17cac:	00f67863          	bleu	a5,a2,17cbc <__sfvwrite_r+0x1a8>
   17cb0:	001d0a1b          	addiw	s4,s10,1
   17cb4:	01490a3b          	addw	s4,s2,s4
   17cb8:	000a0613          	mv	a2,s4
   17cbc:	40077713          	andi	a4,a4,1024
   17cc0:	2a070a63          	beqz	a4,17f74 <__sfvwrite_r+0x460>
   17cc4:	00060593          	mv	a1,a2
   17cc8:	000b0513          	mv	a0,s6
   17ccc:	97dfc0ef          	jal	14648 <_malloc_r>
   17cd0:	00050d93          	mv	s11,a0
   17cd4:	2e050263          	beqz	a0,17fb8 <__sfvwrite_r+0x4a4>
   17cd8:	01843583          	ld	a1,24(s0)
   17cdc:	00098613          	mv	a2,s3
   17ce0:	9c0fd0ef          	jal	14ea0 <memcpy>
   17ce4:	01045783          	lhu	a5,16(s0)
   17ce8:	b7f7f793          	andi	a5,a5,-1153
   17cec:	0807e793          	ori	a5,a5,128
   17cf0:	00f41823          	sh	a5,16(s0)
   17cf4:	41aa0d3b          	subw	s10,s4,s10
   17cf8:	013d8533          	add	a0,s11,s3
   17cfc:	03442023          	sw	s4,32(s0)
   17d00:	01b43c23          	sd	s11,24(s0)
   17d04:	00a43023          	sd	a0,0(s0)
   17d08:	00090a13          	mv	s4,s2
   17d0c:	01a42623          	sw	s10,12(s0)
   17d10:	000a0d13          	mv	s10,s4
   17d14:	00090993          	mv	s3,s2
   17d18:	01497863          	bleu	s4,s2,17d28 <__sfvwrite_r+0x214>
   17d1c:	00090d13          	mv	s10,s2
   17d20:	00090993          	mv	s3,s2
   17d24:	00090a13          	mv	s4,s2
   17d28:	000d0613          	mv	a2,s10
   17d2c:	000c8593          	mv	a1,s9
   17d30:	298000ef          	jal	17fc8 <memmove>
   17d34:	00c42783          	lw	a5,12(s0)
   17d38:	00043603          	ld	a2,0(s0)
   17d3c:	41478a3b          	subw	s4,a5,s4
   17d40:	01a60633          	add	a2,a2,s10
   17d44:	01442623          	sw	s4,12(s0)
   17d48:	00c43023          	sd	a2,0(s0)
   17d4c:	010ab503          	ld	a0,16(s5)
   17d50:	013c8cb3          	add	s9,s9,s3
   17d54:	41390933          	sub	s2,s2,s3
   17d58:	413509b3          	sub	s3,a0,s3
   17d5c:	013ab823          	sd	s3,16(s5)
   17d60:	e6098ae3          	beqz	s3,17bd4 <__sfvwrite_r+0xc0>
   17d64:	01045703          	lhu	a4,16(s0)
   17d68:	ee091ae3          	bnez	s2,17c5c <__sfvwrite_r+0x148>
   17d6c:	0004bc83          	ld	s9,0(s1)
   17d70:	0084b903          	ld	s2,8(s1)
   17d74:	01048493          	addi	s1,s1,16
   17d78:	ee1ff06f          	j	17c58 <__sfvwrite_r+0x144>
   17d7c:	0004b983          	ld	s3,0(s1)
   17d80:	0084b903          	ld	s2,8(s1)
   17d84:	01048493          	addi	s1,s1,16
   17d88:	e09ff06f          	j	17b90 <__sfvwrite_r+0x7c>
   17d8c:	00000793          	li	a5,0
   17d90:	00078513          	mv	a0,a5
   17d94:	00008067          	ret
   17d98:	01397463          	bleu	s3,s2,17da0 <__sfvwrite_r+0x28c>
   17d9c:	00090993          	mv	s3,s2
   17da0:	00098613          	mv	a2,s3
   17da4:	000c8593          	mv	a1,s9
   17da8:	220000ef          	jal	17fc8 <memmove>
   17dac:	00c42783          	lw	a5,12(s0)
   17db0:	00043703          	ld	a4,0(s0)
   17db4:	413787bb          	subw	a5,a5,s3
   17db8:	01370733          	add	a4,a4,s3
   17dbc:	00f42623          	sw	a5,12(s0)
   17dc0:	00e43023          	sd	a4,0(s0)
   17dc4:	f80794e3          	bnez	a5,17d4c <__sfvwrite_r+0x238>
   17dc8:	00040593          	mv	a1,s0
   17dcc:	000b0513          	mv	a0,s6
   17dd0:	c81fb0ef          	jal	13a50 <_fflush_r>
   17dd4:	f6050ce3          	beqz	a0,17d4c <__sfvwrite_r+0x238>
   17dd8:	01041783          	lh	a5,16(s0)
   17ddc:	0407e793          	ori	a5,a5,64
   17de0:	00f41823          	sh	a5,16(s0)
   17de4:	fff00793          	li	a5,-1
   17de8:	df1ff06f          	j	17bd8 <__sfvwrite_r+0xc4>
   17dec:	00000a13          	li	s4,0
   17df0:	00000c13          	li	s8,0
   17df4:	00000d13          	li	s10,0
   17df8:	00000913          	li	s2,0
   17dfc:	06090e63          	beqz	s2,17e78 <__sfvwrite_r+0x364>
   17e00:	140c0863          	beqz	s8,17f50 <__sfvwrite_r+0x43c>
   17e04:	000a0993          	mv	s3,s4
   17e08:	01497463          	bleu	s4,s2,17e10 <__sfvwrite_r+0x2fc>
   17e0c:	00090993          	mv	s3,s2
   17e10:	00043503          	ld	a0,0(s0)
   17e14:	01843783          	ld	a5,24(s0)
   17e18:	00098b93          	mv	s7,s3
   17e1c:	02042683          	lw	a3,32(s0)
   17e20:	00a7fa63          	bleu	a0,a5,17e34 <__sfvwrite_r+0x320>
   17e24:	00c42c83          	lw	s9,12(s0)
   17e28:	01968cbb          	addw	s9,a3,s9
   17e2c:	000c8d93          	mv	s11,s9
   17e30:	053dce63          	blt	s11,s3,17e8c <__sfvwrite_r+0x378>
   17e34:	0ed9ca63          	blt	s3,a3,17f28 <__sfvwrite_r+0x414>
   17e38:	04043783          	ld	a5,64(s0)
   17e3c:	03043583          	ld	a1,48(s0)
   17e40:	000d0613          	mv	a2,s10
   17e44:	000b0513          	mv	a0,s6
   17e48:	000780e7          	jalr	a5
   17e4c:	00050b93          	mv	s7,a0
   17e50:	f8a054e3          	blez	a0,17dd8 <__sfvwrite_r+0x2c4>
   17e54:	417a0a3b          	subw	s4,s4,s7
   17e58:	060a0463          	beqz	s4,17ec0 <__sfvwrite_r+0x3ac>
   17e5c:	010ab783          	ld	a5,16(s5)
   17e60:	017d0d33          	add	s10,s10,s7
   17e64:	41790933          	sub	s2,s2,s7
   17e68:	41778bb3          	sub	s7,a5,s7
   17e6c:	017ab823          	sd	s7,16(s5)
   17e70:	d60b82e3          	beqz	s7,17bd4 <__sfvwrite_r+0xc0>
   17e74:	f80916e3          	bnez	s2,17e00 <__sfvwrite_r+0x2ec>
   17e78:	0004bd03          	ld	s10,0(s1)
   17e7c:	0084b903          	ld	s2,8(s1)
   17e80:	00000c13          	li	s8,0
   17e84:	01048493          	addi	s1,s1,16
   17e88:	f75ff06f          	j	17dfc <__sfvwrite_r+0x2e8>
   17e8c:	000d0593          	mv	a1,s10
   17e90:	000c8613          	mv	a2,s9
   17e94:	134000ef          	jal	17fc8 <memmove>
   17e98:	00043783          	ld	a5,0(s0)
   17e9c:	00040593          	mv	a1,s0
   17ea0:	000b0513          	mv	a0,s6
   17ea4:	01b78db3          	add	s11,a5,s11
   17ea8:	01b43023          	sd	s11,0(s0)
   17eac:	ba5fb0ef          	jal	13a50 <_fflush_r>
   17eb0:	f20514e3          	bnez	a0,17dd8 <__sfvwrite_r+0x2c4>
   17eb4:	000c8b93          	mv	s7,s9
   17eb8:	417a0a3b          	subw	s4,s4,s7
   17ebc:	fa0a10e3          	bnez	s4,17e5c <__sfvwrite_r+0x348>
   17ec0:	00040593          	mv	a1,s0
   17ec4:	000b0513          	mv	a0,s6
   17ec8:	b89fb0ef          	jal	13a50 <_fflush_r>
   17ecc:	f00516e3          	bnez	a0,17dd8 <__sfvwrite_r+0x2c4>
   17ed0:	00000c13          	li	s8,0
   17ed4:	f89ff06f          	j	17e5c <__sfvwrite_r+0x348>
   17ed8:	00043503          	ld	a0,0(s0)
   17edc:	01843783          	ld	a5,24(s0)
   17ee0:	eaa7ece3          	bltu	a5,a0,17d98 <__sfvwrite_r+0x284>
   17ee4:	02042783          	lw	a5,32(s0)
   17ee8:	eaf968e3          	bltu	s2,a5,17d98 <__sfvwrite_r+0x284>
   17eec:	000b8693          	mv	a3,s7
   17ef0:	012c6463          	bltu	s8,s2,17ef8 <__sfvwrite_r+0x3e4>
   17ef4:	0009069b          	sext.w	a3,s2
   17ef8:	02f6c6bb          	divw	a3,a3,a5
   17efc:	04043703          	ld	a4,64(s0)
   17f00:	03043583          	ld	a1,48(s0)
   17f04:	000c8613          	mv	a2,s9
   17f08:	000b0513          	mv	a0,s6
   17f0c:	02f686bb          	mulw	a3,a3,a5
   17f10:	000700e7          	jalr	a4
   17f14:	eca052e3          	blez	a0,17dd8 <__sfvwrite_r+0x2c4>
   17f18:	00050993          	mv	s3,a0
   17f1c:	e31ff06f          	j	17d4c <__sfvwrite_r+0x238>
   17f20:	00043503          	ld	a0,0(s0)
   17f24:	dedff06f          	j	17d10 <__sfvwrite_r+0x1fc>
   17f28:	00098613          	mv	a2,s3
   17f2c:	000d0593          	mv	a1,s10
   17f30:	098000ef          	jal	17fc8 <memmove>
   17f34:	00c42703          	lw	a4,12(s0)
   17f38:	00043783          	ld	a5,0(s0)
   17f3c:	4137073b          	subw	a4,a4,s3
   17f40:	013789b3          	add	s3,a5,s3
   17f44:	00e42623          	sw	a4,12(s0)
   17f48:	01343023          	sd	s3,0(s0)
   17f4c:	f09ff06f          	j	17e54 <__sfvwrite_r+0x340>
   17f50:	00090613          	mv	a2,s2
   17f54:	00a00593          	li	a1,10
   17f58:	000d0513          	mv	a0,s10
   17f5c:	e5dfc0ef          	jal	14db8 <memchr>
   17f60:	04050663          	beqz	a0,17fac <__sfvwrite_r+0x498>
   17f64:	00150a13          	addi	s4,a0,1
   17f68:	41aa0a3b          	subw	s4,s4,s10
   17f6c:	00100c13          	li	s8,1
   17f70:	e95ff06f          	j	17e04 <__sfvwrite_r+0x2f0>
   17f74:	000b0513          	mv	a0,s6
   17f78:	170000ef          	jal	180e8 <_realloc_r>
   17f7c:	00050d93          	mv	s11,a0
   17f80:	d6051ae3          	bnez	a0,17cf4 <__sfvwrite_r+0x1e0>
   17f84:	01843583          	ld	a1,24(s0)
   17f88:	000b0513          	mv	a0,s6
   17f8c:	fc9fb0ef          	jal	13f54 <_free_r>
   17f90:	01045783          	lhu	a5,16(s0)
   17f94:	00c00713          	li	a4,12
   17f98:	00eb2023          	sw	a4,0(s6)
   17f9c:	f7f7f793          	andi	a5,a5,-129
   17fa0:	0107979b          	slliw	a5,a5,0x10
   17fa4:	4107d79b          	sraiw	a5,a5,0x10
   17fa8:	e35ff06f          	j	17ddc <__sfvwrite_r+0x2c8>
   17fac:	00190a1b          	addiw	s4,s2,1
   17fb0:	00100c13          	li	s8,1
   17fb4:	e51ff06f          	j	17e04 <__sfvwrite_r+0x2f0>
   17fb8:	00c00793          	li	a5,12
   17fbc:	00fb2023          	sw	a5,0(s6)
   17fc0:	01041783          	lh	a5,16(s0)
   17fc4:	e19ff06f          	j	17ddc <__sfvwrite_r+0x2c8>

0000000000017fc8 <memmove>:
   17fc8:	02a5f863          	bleu	a0,a1,17ff8 <memmove+0x30>
   17fcc:	00c58733          	add	a4,a1,a2
   17fd0:	02e57463          	bleu	a4,a0,17ff8 <memmove+0x30>
   17fd4:	00c507b3          	add	a5,a0,a2
   17fd8:	40c785b3          	sub	a1,a5,a2
   17fdc:	0e060263          	beqz	a2,180c0 <memmove+0xf8>
   17fe0:	fff70713          	addi	a4,a4,-1 # 1fff <_ftext-0xe001>
   17fe4:	00074683          	lbu	a3,0(a4)
   17fe8:	fff78793          	addi	a5,a5,-1
   17fec:	00d78023          	sb	a3,0(a5)
   17ff0:	fef598e3          	bne	a1,a5,17fe0 <memmove+0x18>
   17ff4:	00008067          	ret
   17ff8:	01f00893          	li	a7,31
   17ffc:	0cc8f463          	bleu	a2,a7,180c4 <memmove+0xfc>
   18000:	00a5e7b3          	or	a5,a1,a0
   18004:	0077f793          	andi	a5,a5,7
   18008:	0c079463          	bnez	a5,180d0 <memmove+0x108>
   1800c:	00058713          	mv	a4,a1
   18010:	00050793          	mv	a5,a0
   18014:	00060693          	mv	a3,a2
   18018:	00073803          	ld	a6,0(a4)
   1801c:	02078793          	addi	a5,a5,32
   18020:	02070713          	addi	a4,a4,32
   18024:	ff07b023          	sd	a6,-32(a5)
   18028:	fe873803          	ld	a6,-24(a4)
   1802c:	fe068693          	addi	a3,a3,-32
   18030:	ff07b423          	sd	a6,-24(a5)
   18034:	ff073803          	ld	a6,-16(a4)
   18038:	ff07b823          	sd	a6,-16(a5)
   1803c:	ff873803          	ld	a6,-8(a4)
   18040:	ff07bc23          	sd	a6,-8(a5)
   18044:	fcd8eae3          	bltu	a7,a3,18018 <memmove+0x50>
   18048:	fe060713          	addi	a4,a2,-32
   1804c:	fe077713          	andi	a4,a4,-32
   18050:	02070713          	addi	a4,a4,32
   18054:	01f67e13          	andi	t3,a2,31
   18058:	00700313          	li	t1,7
   1805c:	00e507b3          	add	a5,a0,a4
   18060:	00e585b3          	add	a1,a1,a4
   18064:	07c37c63          	bleu	t3,t1,180dc <memmove+0x114>
   18068:	00058813          	mv	a6,a1
   1806c:	00078693          	mv	a3,a5
   18070:	000e0713          	mv	a4,t3
   18074:	00880813          	addi	a6,a6,8
   18078:	ff883883          	ld	a7,-8(a6)
   1807c:	00868693          	addi	a3,a3,8
   18080:	ff870713          	addi	a4,a4,-8
   18084:	ff16bc23          	sd	a7,-8(a3)
   18088:	fee366e3          	bltu	t1,a4,18074 <memmove+0xac>
   1808c:	ff8e0713          	addi	a4,t3,-8
   18090:	ff877713          	andi	a4,a4,-8
   18094:	00870713          	addi	a4,a4,8
   18098:	00767613          	andi	a2,a2,7
   1809c:	00e787b3          	add	a5,a5,a4
   180a0:	00e585b3          	add	a1,a1,a4
   180a4:	02060a63          	beqz	a2,180d8 <memmove+0x110>
   180a8:	00c78633          	add	a2,a5,a2
   180ac:	00158593          	addi	a1,a1,1
   180b0:	fff5c703          	lbu	a4,-1(a1)
   180b4:	00178793          	addi	a5,a5,1
   180b8:	fee78fa3          	sb	a4,-1(a5)
   180bc:	fec798e3          	bne	a5,a2,180ac <memmove+0xe4>
   180c0:	00008067          	ret
   180c4:	00050793          	mv	a5,a0
   180c8:	fe0610e3          	bnez	a2,180a8 <memmove+0xe0>
   180cc:	00c0006f          	j	180d8 <memmove+0x110>
   180d0:	00050793          	mv	a5,a0
   180d4:	fd5ff06f          	j	180a8 <memmove+0xe0>
   180d8:	00008067          	ret
   180dc:	000e0613          	mv	a2,t3
   180e0:	fc0614e3          	bnez	a2,180a8 <memmove+0xe0>
   180e4:	ff5ff06f          	j	180d8 <memmove+0x110>

00000000000180e8 <_realloc_r>:
   180e8:	fb010113          	addi	sp,sp,-80
   180ec:	02913c23          	sd	s1,56(sp)
   180f0:	04113423          	sd	ra,72(sp)
   180f4:	04813023          	sd	s0,64(sp)
   180f8:	03213823          	sd	s2,48(sp)
   180fc:	03313423          	sd	s3,40(sp)
   18100:	03413023          	sd	s4,32(sp)
   18104:	01513c23          	sd	s5,24(sp)
   18108:	01613823          	sd	s6,16(sp)
   1810c:	01713423          	sd	s7,8(sp)
   18110:	01813023          	sd	s8,0(sp)
   18114:	00060493          	mv	s1,a2
   18118:	1c058a63          	beqz	a1,182ec <_realloc_r+0x204>
   1811c:	00058993          	mv	s3,a1
   18120:	00050913          	mv	s2,a0
   18124:	f79fc0ef          	jal	1509c <__malloc_lock>
   18128:	ff89b783          	ld	a5,-8(s3)
   1812c:	01748413          	addi	s0,s1,23
   18130:	02e00713          	li	a4,46
   18134:	ff098a93          	addi	s5,s3,-16
   18138:	ffc7fa13          	andi	s4,a5,-4
   1813c:	0c877463          	bleu	s0,a4,18204 <_realloc_r+0x11c>
   18140:	80000737          	lui	a4,0x80000
   18144:	ff047413          	andi	s0,s0,-16
   18148:	fff74713          	not	a4,a4
   1814c:	14876a63          	bltu	a4,s0,182a0 <_realloc_r+0x1b8>
   18150:	14946863          	bltu	s0,s1,182a0 <_realloc_r+0x1b8>
   18154:	0a8a5c63          	ble	s0,s4,1820c <_realloc_r+0x124>
   18158:	0001bb37          	lui	s6,0x1b
   1815c:	ad8b0b13          	addi	s6,s6,-1320 # 1aad8 <__malloc_av_>
   18160:	010b3703          	ld	a4,16(s6)
   18164:	014a86b3          	add	a3,s5,s4
   18168:	2ee68e63          	beq	a3,a4,18464 <_realloc_r+0x37c>
   1816c:	0086b703          	ld	a4,8(a3)
   18170:	ffe77613          	andi	a2,a4,-2
   18174:	00c68633          	add	a2,a3,a2
   18178:	00863603          	ld	a2,8(a2)
   1817c:	00167613          	andi	a2,a2,1
   18180:	0e060c63          	beqz	a2,18278 <_realloc_r+0x190>
   18184:	0017f793          	andi	a5,a5,1
   18188:	26078063          	beqz	a5,183e8 <_realloc_r+0x300>
   1818c:	00048593          	mv	a1,s1
   18190:	00090513          	mv	a0,s2
   18194:	cb4fc0ef          	jal	14648 <_malloc_r>
   18198:	00050493          	mv	s1,a0
   1819c:	48050e63          	beqz	a0,18638 <_realloc_r+0x550>
   181a0:	ff89b783          	ld	a5,-8(s3)
   181a4:	ff050713          	addi	a4,a0,-16
   181a8:	ffe7f793          	andi	a5,a5,-2
   181ac:	00fa87b3          	add	a5,s5,a5
   181b0:	40f70e63          	beq	a4,a5,185cc <_realloc_r+0x4e4>
   181b4:	ff8a0613          	addi	a2,s4,-8 # ffffffff7ffffff8 <_gp+0xffffffff7ffe4508>
   181b8:	04800793          	li	a5,72
   181bc:	3ec7e263          	bltu	a5,a2,185a0 <_realloc_r+0x4b8>
   181c0:	02700713          	li	a4,39
   181c4:	36c76663          	bltu	a4,a2,18530 <_realloc_r+0x448>
   181c8:	00050793          	mv	a5,a0
   181cc:	00098713          	mv	a4,s3
   181d0:	00073683          	ld	a3,0(a4) # ffffffff80000000 <_gp+0xffffffff7ffe4510>
   181d4:	00d7b023          	sd	a3,0(a5)
   181d8:	00873683          	ld	a3,8(a4)
   181dc:	00d7b423          	sd	a3,8(a5)
   181e0:	01073703          	ld	a4,16(a4)
   181e4:	00e7b823          	sd	a4,16(a5)
   181e8:	00098593          	mv	a1,s3
   181ec:	00090513          	mv	a0,s2
   181f0:	d65fb0ef          	jal	13f54 <_free_r>
   181f4:	00090513          	mv	a0,s2
   181f8:	ea9fc0ef          	jal	150a0 <__malloc_unlock>
   181fc:	00048513          	mv	a0,s1
   18200:	0480006f          	j	18248 <_realloc_r+0x160>
   18204:	02000413          	li	s0,32
   18208:	f49ff06f          	j	18150 <_realloc_r+0x68>
   1820c:	00098493          	mv	s1,s3
   18210:	408a07b3          	sub	a5,s4,s0
   18214:	01f00713          	li	a4,31
   18218:	08f76c63          	bltu	a4,a5,182b0 <_realloc_r+0x1c8>
   1821c:	008ab783          	ld	a5,8(s5)
   18220:	014a8733          	add	a4,s5,s4
   18224:	0017f793          	andi	a5,a5,1
   18228:	0147e633          	or	a2,a5,s4
   1822c:	00cab423          	sd	a2,8(s5)
   18230:	00873783          	ld	a5,8(a4)
   18234:	0017e793          	ori	a5,a5,1
   18238:	00f73423          	sd	a5,8(a4)
   1823c:	00090513          	mv	a0,s2
   18240:	e61fc0ef          	jal	150a0 <__malloc_unlock>
   18244:	00048513          	mv	a0,s1
   18248:	04813083          	ld	ra,72(sp)
   1824c:	04013403          	ld	s0,64(sp)
   18250:	03813483          	ld	s1,56(sp)
   18254:	03013903          	ld	s2,48(sp)
   18258:	02813983          	ld	s3,40(sp)
   1825c:	02013a03          	ld	s4,32(sp)
   18260:	01813a83          	ld	s5,24(sp)
   18264:	01013b03          	ld	s6,16(sp)
   18268:	00813b83          	ld	s7,8(sp)
   1826c:	00013c03          	ld	s8,0(sp)
   18270:	05010113          	addi	sp,sp,80
   18274:	00008067          	ret
   18278:	ffc77713          	andi	a4,a4,-4
   1827c:	01470733          	add	a4,a4,s4
   18280:	0a874063          	blt	a4,s0,18320 <_realloc_r+0x238>
   18284:	0186b783          	ld	a5,24(a3)
   18288:	0106b683          	ld	a3,16(a3)
   1828c:	00098493          	mv	s1,s3
   18290:	00070a13          	mv	s4,a4
   18294:	00f6bc23          	sd	a5,24(a3)
   18298:	00d7b823          	sd	a3,16(a5)
   1829c:	f75ff06f          	j	18210 <_realloc_r+0x128>
   182a0:	00c00793          	li	a5,12
   182a4:	00f92023          	sw	a5,0(s2)
   182a8:	00000513          	li	a0,0
   182ac:	f9dff06f          	j	18248 <_realloc_r+0x160>
   182b0:	008ab703          	ld	a4,8(s5)
   182b4:	008a85b3          	add	a1,s5,s0
   182b8:	0017e693          	ori	a3,a5,1
   182bc:	00177713          	andi	a4,a4,1
   182c0:	00876433          	or	s0,a4,s0
   182c4:	008ab423          	sd	s0,8(s5)
   182c8:	00d5b423          	sd	a3,8(a1)
   182cc:	00f587b3          	add	a5,a1,a5
   182d0:	0087b703          	ld	a4,8(a5)
   182d4:	01058593          	addi	a1,a1,16
   182d8:	00090513          	mv	a0,s2
   182dc:	00176713          	ori	a4,a4,1
   182e0:	00e7b423          	sd	a4,8(a5)
   182e4:	c71fb0ef          	jal	13f54 <_free_r>
   182e8:	f55ff06f          	j	1823c <_realloc_r+0x154>
   182ec:	04813083          	ld	ra,72(sp)
   182f0:	04013403          	ld	s0,64(sp)
   182f4:	03813483          	ld	s1,56(sp)
   182f8:	03013903          	ld	s2,48(sp)
   182fc:	02813983          	ld	s3,40(sp)
   18300:	02013a03          	ld	s4,32(sp)
   18304:	01813a83          	ld	s5,24(sp)
   18308:	01013b03          	ld	s6,16(sp)
   1830c:	00813b83          	ld	s7,8(sp)
   18310:	00013c03          	ld	s8,0(sp)
   18314:	00060593          	mv	a1,a2
   18318:	05010113          	addi	sp,sp,80
   1831c:	b2cfc06f          	j	14648 <_malloc_r>
   18320:	0017f793          	andi	a5,a5,1
   18324:	e60794e3          	bnez	a5,1818c <_realloc_r+0xa4>
   18328:	ff09bb83          	ld	s7,-16(s3)
   1832c:	417a8bb3          	sub	s7,s5,s7
   18330:	008bb783          	ld	a5,8(s7) # ffffffff80000008 <_gp+0xffffffff7ffe4518>
   18334:	ffc7f793          	andi	a5,a5,-4
   18338:	00f70b33          	add	s6,a4,a5
   1833c:	0a8b4e63          	blt	s6,s0,183f8 <_realloc_r+0x310>
   18340:	0186b783          	ld	a5,24(a3)
   18344:	0106b703          	ld	a4,16(a3)
   18348:	ff8a0613          	addi	a2,s4,-8
   1834c:	010b8493          	addi	s1,s7,16
   18350:	00f73c23          	sd	a5,24(a4)
   18354:	00e7b823          	sd	a4,16(a5)
   18358:	010bb703          	ld	a4,16(s7)
   1835c:	018bb783          	ld	a5,24(s7)
   18360:	00f73c23          	sd	a5,24(a4)
   18364:	00e7b823          	sd	a4,16(a5)
   18368:	04800793          	li	a5,72
   1836c:	1ec7e463          	bltu	a5,a2,18554 <_realloc_r+0x46c>
   18370:	02700713          	li	a4,39
   18374:	00048793          	mv	a5,s1
   18378:	04c77663          	bleu	a2,a4,183c4 <_realloc_r+0x2dc>
   1837c:	0009b783          	ld	a5,0(s3)
   18380:	00fbb823          	sd	a5,16(s7)
   18384:	0089b783          	ld	a5,8(s3)
   18388:	00fbbc23          	sd	a5,24(s7)
   1838c:	03700793          	li	a5,55
   18390:	24c7f863          	bleu	a2,a5,185e0 <_realloc_r+0x4f8>
   18394:	0109b783          	ld	a5,16(s3)
   18398:	02fbb023          	sd	a5,32(s7)
   1839c:	0189b783          	ld	a5,24(s3)
   183a0:	02fbb423          	sd	a5,40(s7)
   183a4:	04800793          	li	a5,72
   183a8:	0af61863          	bne	a2,a5,18458 <_realloc_r+0x370>
   183ac:	0209b703          	ld	a4,32(s3)
   183b0:	040b8793          	addi	a5,s7,64
   183b4:	03098993          	addi	s3,s3,48
   183b8:	02ebb823          	sd	a4,48(s7)
   183bc:	ff89b703          	ld	a4,-8(s3)
   183c0:	02ebbc23          	sd	a4,56(s7)
   183c4:	0009b703          	ld	a4,0(s3)
   183c8:	000b0a13          	mv	s4,s6
   183cc:	000b8a93          	mv	s5,s7
   183d0:	00e7b023          	sd	a4,0(a5)
   183d4:	0089b703          	ld	a4,8(s3)
   183d8:	00e7b423          	sd	a4,8(a5)
   183dc:	0109b703          	ld	a4,16(s3)
   183e0:	00e7b823          	sd	a4,16(a5)
   183e4:	e2dff06f          	j	18210 <_realloc_r+0x128>
   183e8:	ff09bb83          	ld	s7,-16(s3)
   183ec:	417a8bb3          	sub	s7,s5,s7
   183f0:	008bb783          	ld	a5,8(s7)
   183f4:	ffc7f793          	andi	a5,a5,-4
   183f8:	00fa0b33          	add	s6,s4,a5
   183fc:	d88b48e3          	blt	s6,s0,1818c <_realloc_r+0xa4>
   18400:	018bb783          	ld	a5,24(s7)
   18404:	010bb703          	ld	a4,16(s7)
   18408:	ff8a0613          	addi	a2,s4,-8
   1840c:	04800693          	li	a3,72
   18410:	00f73c23          	sd	a5,24(a4)
   18414:	00e7b823          	sd	a4,16(a5)
   18418:	010b8493          	addi	s1,s7,16
   1841c:	12c6ec63          	bltu	a3,a2,18554 <_realloc_r+0x46c>
   18420:	02700713          	li	a4,39
   18424:	00048793          	mv	a5,s1
   18428:	f8c77ee3          	bleu	a2,a4,183c4 <_realloc_r+0x2dc>
   1842c:	0009b783          	ld	a5,0(s3)
   18430:	00fbb823          	sd	a5,16(s7)
   18434:	0089b783          	ld	a5,8(s3)
   18438:	00fbbc23          	sd	a5,24(s7)
   1843c:	03700793          	li	a5,55
   18440:	1ac7f063          	bleu	a2,a5,185e0 <_realloc_r+0x4f8>
   18444:	0109b783          	ld	a5,16(s3)
   18448:	02fbb023          	sd	a5,32(s7)
   1844c:	0189b783          	ld	a5,24(s3)
   18450:	02fbb423          	sd	a5,40(s7)
   18454:	f4d60ce3          	beq	a2,a3,183ac <_realloc_r+0x2c4>
   18458:	030b8793          	addi	a5,s7,48
   1845c:	02098993          	addi	s3,s3,32
   18460:	f65ff06f          	j	183c4 <_realloc_r+0x2dc>
   18464:	0086b703          	ld	a4,8(a3)
   18468:	02040693          	addi	a3,s0,32
   1846c:	ffc77713          	andi	a4,a4,-4
   18470:	01470733          	add	a4,a4,s4
   18474:	0ed75c63          	ble	a3,a4,1856c <_realloc_r+0x484>
   18478:	0017f793          	andi	a5,a5,1
   1847c:	d00798e3          	bnez	a5,1818c <_realloc_r+0xa4>
   18480:	ff09bb83          	ld	s7,-16(s3)
   18484:	417a8bb3          	sub	s7,s5,s7
   18488:	008bb783          	ld	a5,8(s7)
   1848c:	ffc7f793          	andi	a5,a5,-4
   18490:	00e78c33          	add	s8,a5,a4
   18494:	f6dc42e3          	blt	s8,a3,183f8 <_realloc_r+0x310>
   18498:	018bb783          	ld	a5,24(s7)
   1849c:	010bb703          	ld	a4,16(s7)
   184a0:	ff8a0613          	addi	a2,s4,-8
   184a4:	04800693          	li	a3,72
   184a8:	00f73c23          	sd	a5,24(a4)
   184ac:	00e7b823          	sd	a4,16(a5)
   184b0:	010b8493          	addi	s1,s7,16
   184b4:	14c6ea63          	bltu	a3,a2,18608 <_realloc_r+0x520>
   184b8:	02700713          	li	a4,39
   184bc:	00048793          	mv	a5,s1
   184c0:	02c77263          	bleu	a2,a4,184e4 <_realloc_r+0x3fc>
   184c4:	0009b783          	ld	a5,0(s3)
   184c8:	00fbb823          	sd	a5,16(s7)
   184cc:	0089b783          	ld	a5,8(s3)
   184d0:	00fbbc23          	sd	a5,24(s7)
   184d4:	03700793          	li	a5,55
   184d8:	14c7e063          	bltu	a5,a2,18618 <_realloc_r+0x530>
   184dc:	020b8793          	addi	a5,s7,32
   184e0:	01098993          	addi	s3,s3,16
   184e4:	0009b703          	ld	a4,0(s3)
   184e8:	00e7b023          	sd	a4,0(a5)
   184ec:	0089b703          	ld	a4,8(s3)
   184f0:	00e7b423          	sd	a4,8(a5)
   184f4:	0109b703          	ld	a4,16(s3)
   184f8:	00e7b823          	sd	a4,16(a5)
   184fc:	008b8733          	add	a4,s7,s0
   18500:	408c07b3          	sub	a5,s8,s0
   18504:	00eb3823          	sd	a4,16(s6)
   18508:	0017e793          	ori	a5,a5,1
   1850c:	00f73423          	sd	a5,8(a4)
   18510:	008bb783          	ld	a5,8(s7)
   18514:	00090513          	mv	a0,s2
   18518:	0017f793          	andi	a5,a5,1
   1851c:	0087e433          	or	s0,a5,s0
   18520:	008bb423          	sd	s0,8(s7)
   18524:	b7dfc0ef          	jal	150a0 <__malloc_unlock>
   18528:	00048513          	mv	a0,s1
   1852c:	d1dff06f          	j	18248 <_realloc_r+0x160>
   18530:	0009b703          	ld	a4,0(s3)
   18534:	00e53023          	sd	a4,0(a0)
   18538:	0089b703          	ld	a4,8(s3)
   1853c:	00e53423          	sd	a4,8(a0)
   18540:	03700713          	li	a4,55
   18544:	06c76463          	bltu	a4,a2,185ac <_realloc_r+0x4c4>
   18548:	01050793          	addi	a5,a0,16
   1854c:	01098713          	addi	a4,s3,16
   18550:	c81ff06f          	j	181d0 <_realloc_r+0xe8>
   18554:	00098593          	mv	a1,s3
   18558:	00048513          	mv	a0,s1
   1855c:	a6dff0ef          	jal	17fc8 <memmove>
   18560:	000b0a13          	mv	s4,s6
   18564:	000b8a93          	mv	s5,s7
   18568:	ca9ff06f          	j	18210 <_realloc_r+0x128>
   1856c:	008a8ab3          	add	s5,s5,s0
   18570:	408707b3          	sub	a5,a4,s0
   18574:	015b3823          	sd	s5,16(s6)
   18578:	0017e793          	ori	a5,a5,1
   1857c:	00fab423          	sd	a5,8(s5)
   18580:	ff89b783          	ld	a5,-8(s3)
   18584:	00090513          	mv	a0,s2
   18588:	0017f793          	andi	a5,a5,1
   1858c:	0087e433          	or	s0,a5,s0
   18590:	fe89bc23          	sd	s0,-8(s3)
   18594:	b0dfc0ef          	jal	150a0 <__malloc_unlock>
   18598:	00098513          	mv	a0,s3
   1859c:	cadff06f          	j	18248 <_realloc_r+0x160>
   185a0:	00098593          	mv	a1,s3
   185a4:	a25ff0ef          	jal	17fc8 <memmove>
   185a8:	c41ff06f          	j	181e8 <_realloc_r+0x100>
   185ac:	0109b703          	ld	a4,16(s3)
   185b0:	00e53823          	sd	a4,16(a0)
   185b4:	0189b703          	ld	a4,24(s3)
   185b8:	00e53c23          	sd	a4,24(a0)
   185bc:	02f60863          	beq	a2,a5,185ec <_realloc_r+0x504>
   185c0:	02050793          	addi	a5,a0,32
   185c4:	02098713          	addi	a4,s3,32
   185c8:	c09ff06f          	j	181d0 <_realloc_r+0xe8>
   185cc:	ff853783          	ld	a5,-8(a0)
   185d0:	00098493          	mv	s1,s3
   185d4:	ffc7f793          	andi	a5,a5,-4
   185d8:	00fa0a33          	add	s4,s4,a5
   185dc:	c35ff06f          	j	18210 <_realloc_r+0x128>
   185e0:	020b8793          	addi	a5,s7,32
   185e4:	01098993          	addi	s3,s3,16
   185e8:	dddff06f          	j	183c4 <_realloc_r+0x2dc>
   185ec:	0209b683          	ld	a3,32(s3)
   185f0:	03050793          	addi	a5,a0,48
   185f4:	03098713          	addi	a4,s3,48
   185f8:	02d53023          	sd	a3,32(a0)
   185fc:	0289b683          	ld	a3,40(s3)
   18600:	02d53423          	sd	a3,40(a0)
   18604:	bcdff06f          	j	181d0 <_realloc_r+0xe8>
   18608:	00098593          	mv	a1,s3
   1860c:	00048513          	mv	a0,s1
   18610:	9b9ff0ef          	jal	17fc8 <memmove>
   18614:	ee9ff06f          	j	184fc <_realloc_r+0x414>
   18618:	0109b783          	ld	a5,16(s3)
   1861c:	02fbb023          	sd	a5,32(s7)
   18620:	0189b783          	ld	a5,24(s3)
   18624:	02fbb423          	sd	a5,40(s7)
   18628:	02d60063          	beq	a2,a3,18648 <_realloc_r+0x560>
   1862c:	030b8793          	addi	a5,s7,48
   18630:	02098993          	addi	s3,s3,32
   18634:	eb1ff06f          	j	184e4 <_realloc_r+0x3fc>
   18638:	00090513          	mv	a0,s2
   1863c:	a65fc0ef          	jal	150a0 <__malloc_unlock>
   18640:	00000513          	li	a0,0
   18644:	c05ff06f          	j	18248 <_realloc_r+0x160>
   18648:	0209b703          	ld	a4,32(s3)
   1864c:	040b8793          	addi	a5,s7,64
   18650:	03098993          	addi	s3,s3,48
   18654:	02ebb823          	sd	a4,48(s7)
   18658:	ff89b703          	ld	a4,-8(s3)
   1865c:	02ebbc23          	sd	a4,56(s7)
   18660:	e85ff06f          	j	184e4 <_realloc_r+0x3fc>

0000000000018664 <__swbuf_r>:
   18664:	fd010113          	addi	sp,sp,-48
   18668:	02813023          	sd	s0,32(sp)
   1866c:	00913c23          	sd	s1,24(sp)
   18670:	01313423          	sd	s3,8(sp)
   18674:	02113423          	sd	ra,40(sp)
   18678:	01213823          	sd	s2,16(sp)
   1867c:	00050493          	mv	s1,a0
   18680:	00058993          	mv	s3,a1
   18684:	00060413          	mv	s0,a2
   18688:	00050663          	beqz	a0,18694 <__swbuf_r+0x30>
   1868c:	05052783          	lw	a5,80(a0)
   18690:	12078e63          	beqz	a5,187cc <__swbuf_r+0x168>
   18694:	01041683          	lh	a3,16(s0)
   18698:	02842783          	lw	a5,40(s0)
   1869c:	03069713          	slli	a4,a3,0x30
   186a0:	03075713          	srli	a4,a4,0x30
   186a4:	00f42623          	sw	a5,12(s0)
   186a8:	00877793          	andi	a5,a4,8
   186ac:	0e078e63          	beqz	a5,187a8 <__swbuf_r+0x144>
   186b0:	01843783          	ld	a5,24(s0)
   186b4:	0e078a63          	beqz	a5,187a8 <__swbuf_r+0x144>
   186b8:	03271613          	slli	a2,a4,0x32
   186bc:	0ff9f913          	andi	s2,s3,255
   186c0:	06065663          	bgez	a2,1872c <__swbuf_r+0xc8>
   186c4:	00043703          	ld	a4,0(s0)
   186c8:	02042683          	lw	a3,32(s0)
   186cc:	40f707bb          	subw	a5,a4,a5
   186d0:	08d7d663          	ble	a3,a5,1875c <__swbuf_r+0xf8>
   186d4:	0017879b          	addiw	a5,a5,1
   186d8:	00c42683          	lw	a3,12(s0)
   186dc:	00170613          	addi	a2,a4,1
   186e0:	00c43023          	sd	a2,0(s0)
   186e4:	fff6869b          	addiw	a3,a3,-1
   186e8:	00d42623          	sw	a3,12(s0)
   186ec:	01370023          	sb	s3,0(a4)
   186f0:	02042703          	lw	a4,32(s0)
   186f4:	08f70263          	beq	a4,a5,18778 <__swbuf_r+0x114>
   186f8:	01045783          	lhu	a5,16(s0)
   186fc:	00090513          	mv	a0,s2
   18700:	0017f793          	andi	a5,a5,1
   18704:	00078663          	beqz	a5,18710 <__swbuf_r+0xac>
   18708:	00a00793          	li	a5,10
   1870c:	06f90663          	beq	s2,a5,18778 <__swbuf_r+0x114>
   18710:	02813083          	ld	ra,40(sp)
   18714:	02013403          	ld	s0,32(sp)
   18718:	01813483          	ld	s1,24(sp)
   1871c:	01013903          	ld	s2,16(sp)
   18720:	00813983          	ld	s3,8(sp)
   18724:	03010113          	addi	sp,sp,48
   18728:	00008067          	ret
   1872c:	0ac42583          	lw	a1,172(s0)
   18730:	ffffe737          	lui	a4,0xffffe
   18734:	fff7071b          	addiw	a4,a4,-1
   18738:	00e5f733          	and	a4,a1,a4
   1873c:	00002637          	lui	a2,0x2
   18740:	00c6e6b3          	or	a3,a3,a2
   18744:	0ae42623          	sw	a4,172(s0)
   18748:	00043703          	ld	a4,0(s0)
   1874c:	00d41823          	sh	a3,16(s0)
   18750:	02042683          	lw	a3,32(s0)
   18754:	40f707bb          	subw	a5,a4,a5
   18758:	f6d7cee3          	blt	a5,a3,186d4 <__swbuf_r+0x70>
   1875c:	00040593          	mv	a1,s0
   18760:	00048513          	mv	a0,s1
   18764:	aecfb0ef          	jal	13a50 <_fflush_r>
   18768:	06051663          	bnez	a0,187d4 <__swbuf_r+0x170>
   1876c:	00043703          	ld	a4,0(s0)
   18770:	00100793          	li	a5,1
   18774:	f65ff06f          	j	186d8 <__swbuf_r+0x74>
   18778:	00040593          	mv	a1,s0
   1877c:	00048513          	mv	a0,s1
   18780:	ad0fb0ef          	jal	13a50 <_fflush_r>
   18784:	04051863          	bnez	a0,187d4 <__swbuf_r+0x170>
   18788:	02813083          	ld	ra,40(sp)
   1878c:	00090513          	mv	a0,s2
   18790:	02013403          	ld	s0,32(sp)
   18794:	01813483          	ld	s1,24(sp)
   18798:	01013903          	ld	s2,16(sp)
   1879c:	00813983          	ld	s3,8(sp)
   187a0:	03010113          	addi	sp,sp,48
   187a4:	00008067          	ret
   187a8:	00040593          	mv	a1,s0
   187ac:	00048513          	mv	a0,s1
   187b0:	941f90ef          	jal	120f0 <__swsetup_r>
   187b4:	02051063          	bnez	a0,187d4 <__swbuf_r+0x170>
   187b8:	01041683          	lh	a3,16(s0)
   187bc:	01843783          	ld	a5,24(s0)
   187c0:	03069713          	slli	a4,a3,0x30
   187c4:	03075713          	srli	a4,a4,0x30
   187c8:	ef1ff06f          	j	186b8 <__swbuf_r+0x54>
   187cc:	e30fb0ef          	jal	13dfc <__sinit>
   187d0:	ec5ff06f          	j	18694 <__swbuf_r+0x30>
   187d4:	fff00513          	li	a0,-1
   187d8:	f39ff06f          	j	18710 <__swbuf_r+0xac>

00000000000187dc <__swbuf>:
   187dc:	00058613          	mv	a2,a1
   187e0:	00050593          	mv	a1,a0
   187e4:	8101b503          	ld	a0,-2032(gp) # 1b300 <_impure_ptr>
   187e8:	e7dff06f          	j	18664 <__swbuf_r>

00000000000187ec <_wcrtomb_r>:
   187ec:	fc010113          	addi	sp,sp,-64
   187f0:	02913423          	sd	s1,40(sp)
   187f4:	03213023          	sd	s2,32(sp)
   187f8:	02113c23          	sd	ra,56(sp)
   187fc:	02813823          	sd	s0,48(sp)
   18800:	01313c23          	sd	s3,24(sp)
   18804:	01413823          	sd	s4,16(sp)
   18808:	00050493          	mv	s1,a0
   1880c:	00068913          	mv	s2,a3
   18810:	06058663          	beqz	a1,1887c <_wcrtomb_r+0x90>
   18814:	8301ba03          	ld	s4,-2000(gp) # 1b320 <__wctomb>
   18818:	00058413          	mv	s0,a1
   1881c:	00060993          	mv	s3,a2
   18820:	c2dfb0ef          	jal	1444c <__locale_charset>
   18824:	00050693          	mv	a3,a0
   18828:	00090713          	mv	a4,s2
   1882c:	00098613          	mv	a2,s3
   18830:	00040593          	mv	a1,s0
   18834:	00048513          	mv	a0,s1
   18838:	000a00e7          	jalr	s4
   1883c:	00050793          	mv	a5,a0
   18840:	fff00713          	li	a4,-1
   18844:	00078513          	mv	a0,a5
   18848:	00e79a63          	bne	a5,a4,1885c <_wcrtomb_r+0x70>
   1884c:	00092023          	sw	zero,0(s2)
   18850:	08a00793          	li	a5,138
   18854:	00f4a023          	sw	a5,0(s1)
   18858:	fff00513          	li	a0,-1
   1885c:	03813083          	ld	ra,56(sp)
   18860:	03013403          	ld	s0,48(sp)
   18864:	02813483          	ld	s1,40(sp)
   18868:	02013903          	ld	s2,32(sp)
   1886c:	01813983          	ld	s3,24(sp)
   18870:	01013a03          	ld	s4,16(sp)
   18874:	04010113          	addi	sp,sp,64
   18878:	00008067          	ret
   1887c:	8301b403          	ld	s0,-2000(gp) # 1b320 <__wctomb>
   18880:	bcdfb0ef          	jal	1444c <__locale_charset>
   18884:	00050693          	mv	a3,a0
   18888:	00090713          	mv	a4,s2
   1888c:	00000613          	li	a2,0
   18890:	00010593          	mv	a1,sp
   18894:	00048513          	mv	a0,s1
   18898:	000400e7          	jalr	s0
   1889c:	00050793          	mv	a5,a0
   188a0:	fa1ff06f          	j	18840 <_wcrtomb_r+0x54>

00000000000188a4 <wcrtomb>:
   188a4:	fc010113          	addi	sp,sp,-64
   188a8:	02913423          	sd	s1,40(sp)
   188ac:	03213023          	sd	s2,32(sp)
   188b0:	02113c23          	sd	ra,56(sp)
   188b4:	02813823          	sd	s0,48(sp)
   188b8:	01313c23          	sd	s3,24(sp)
   188bc:	01413823          	sd	s4,16(sp)
   188c0:	00060913          	mv	s2,a2
   188c4:	8101b483          	ld	s1,-2032(gp) # 1b300 <_impure_ptr>
   188c8:	06050663          	beqz	a0,18934 <wcrtomb+0x90>
   188cc:	8301ba03          	ld	s4,-2000(gp) # 1b320 <__wctomb>
   188d0:	00058993          	mv	s3,a1
   188d4:	00050413          	mv	s0,a0
   188d8:	b75fb0ef          	jal	1444c <__locale_charset>
   188dc:	00050693          	mv	a3,a0
   188e0:	00090713          	mv	a4,s2
   188e4:	00098613          	mv	a2,s3
   188e8:	00040593          	mv	a1,s0
   188ec:	00048513          	mv	a0,s1
   188f0:	000a00e7          	jalr	s4
   188f4:	00050793          	mv	a5,a0
   188f8:	fff00713          	li	a4,-1
   188fc:	00078513          	mv	a0,a5
   18900:	00e79a63          	bne	a5,a4,18914 <wcrtomb+0x70>
   18904:	00092023          	sw	zero,0(s2)
   18908:	08a00793          	li	a5,138
   1890c:	00f4a023          	sw	a5,0(s1)
   18910:	fff00513          	li	a0,-1
   18914:	03813083          	ld	ra,56(sp)
   18918:	03013403          	ld	s0,48(sp)
   1891c:	02813483          	ld	s1,40(sp)
   18920:	02013903          	ld	s2,32(sp)
   18924:	01813983          	ld	s3,24(sp)
   18928:	01013a03          	ld	s4,16(sp)
   1892c:	04010113          	addi	sp,sp,64
   18930:	00008067          	ret
   18934:	8301b403          	ld	s0,-2000(gp) # 1b320 <__wctomb>
   18938:	b15fb0ef          	jal	1444c <__locale_charset>
   1893c:	00050693          	mv	a3,a0
   18940:	00090713          	mv	a4,s2
   18944:	00000613          	li	a2,0
   18948:	00010593          	mv	a1,sp
   1894c:	00048513          	mv	a0,s1
   18950:	000400e7          	jalr	s0
   18954:	00050793          	mv	a5,a0
   18958:	fa1ff06f          	j	188f8 <wcrtomb+0x54>

000000000001895c <__ascii_wctomb>:
   1895c:	00058c63          	beqz	a1,18974 <__ascii_wctomb+0x18>
   18960:	0ff00793          	li	a5,255
   18964:	00c7ec63          	bltu	a5,a2,1897c <__ascii_wctomb+0x20>
   18968:	00c58023          	sb	a2,0(a1)
   1896c:	00100513          	li	a0,1
   18970:	00008067          	ret
   18974:	00000513          	li	a0,0
   18978:	00008067          	ret
   1897c:	08a00793          	li	a5,138
   18980:	00f52023          	sw	a5,0(a0)
   18984:	fff00513          	li	a0,-1
   18988:	00008067          	ret

000000000001898c <_wctomb_r>:
   1898c:	fd010113          	addi	sp,sp,-48
   18990:	02813023          	sd	s0,32(sp)
   18994:	8301b403          	ld	s0,-2000(gp) # 1b320 <__wctomb>
   18998:	02113423          	sd	ra,40(sp)
   1899c:	00913c23          	sd	s1,24(sp)
   189a0:	01213823          	sd	s2,16(sp)
   189a4:	01313423          	sd	s3,8(sp)
   189a8:	01413023          	sd	s4,0(sp)
   189ac:	00050493          	mv	s1,a0
   189b0:	00068a13          	mv	s4,a3
   189b4:	00058913          	mv	s2,a1
   189b8:	00060993          	mv	s3,a2
   189bc:	a91fb0ef          	jal	1444c <__locale_charset>
   189c0:	000a0713          	mv	a4,s4
   189c4:	00050693          	mv	a3,a0
   189c8:	00098613          	mv	a2,s3
   189cc:	00090593          	mv	a1,s2
   189d0:	00048513          	mv	a0,s1
   189d4:	00040313          	mv	t1,s0
   189d8:	02813083          	ld	ra,40(sp)
   189dc:	02013403          	ld	s0,32(sp)
   189e0:	01813483          	ld	s1,24(sp)
   189e4:	01013903          	ld	s2,16(sp)
   189e8:	00813983          	ld	s3,8(sp)
   189ec:	00013a03          	ld	s4,0(sp)
   189f0:	03010113          	addi	sp,sp,48
   189f4:	00030067          	jr	t1

00000000000189f8 <__syscall_error>:
   189f8:	ff010113          	addi	sp,sp,-16
   189fc:	00113423          	sd	ra,8(sp)
   18a00:	00813023          	sd	s0,0(sp)
   18a04:	00050413          	mv	s0,a0
   18a08:	3c0000ef          	jal	18dc8 <__errno>
   18a0c:	00813083          	ld	ra,8(sp)
   18a10:	408007bb          	negw	a5,s0
   18a14:	00f52023          	sw	a5,0(a0)
   18a18:	00013403          	ld	s0,0(sp)
   18a1c:	fff00513          	li	a0,-1
   18a20:	01010113          	addi	sp,sp,16
   18a24:	00008067          	ret

0000000000018a28 <open>:
   18a28:	00000693          	li	a3,0
   18a2c:	40000893          	li	a7,1024
   18a30:	00000073          	ecall
   18a34:	fc0542e3          	bltz	a0,189f8 <__syscall_error>
   18a38:	0005051b          	sext.w	a0,a0
   18a3c:	00008067          	ret

0000000000018a40 <openat>:
   18a40:	03800893          	li	a7,56
   18a44:	00000073          	ecall
   18a48:	fa0548e3          	bltz	a0,189f8 <__syscall_error>
   18a4c:	0005051b          	sext.w	a0,a0
   18a50:	00008067          	ret

0000000000018a54 <lseek>:
   18a54:	00000693          	li	a3,0
   18a58:	03e00893          	li	a7,62
   18a5c:	00000073          	ecall
   18a60:	f8054ce3          	bltz	a0,189f8 <__syscall_error>
   18a64:	00008067          	ret

0000000000018a68 <read>:
   18a68:	00000693          	li	a3,0
   18a6c:	03f00893          	li	a7,63
   18a70:	00000073          	ecall
   18a74:	f80542e3          	bltz	a0,189f8 <__syscall_error>
   18a78:	00008067          	ret

0000000000018a7c <write>:
   18a7c:	00000693          	li	a3,0
   18a80:	04000893          	li	a7,64
   18a84:	00000073          	ecall
   18a88:	f60548e3          	bltz	a0,189f8 <__syscall_error>
   18a8c:	00008067          	ret

0000000000018a90 <fstat>:
   18a90:	00000613          	li	a2,0
   18a94:	00000693          	li	a3,0
   18a98:	05000893          	li	a7,80
   18a9c:	00000073          	ecall
   18aa0:	f4054ce3          	bltz	a0,189f8 <__syscall_error>
   18aa4:	0005051b          	sext.w	a0,a0
   18aa8:	00008067          	ret

0000000000018aac <stat>:
   18aac:	00000613          	li	a2,0
   18ab0:	00000693          	li	a3,0
   18ab4:	40e00893          	li	a7,1038
   18ab8:	00000073          	ecall
   18abc:	f2054ee3          	bltz	a0,189f8 <__syscall_error>
   18ac0:	0005051b          	sext.w	a0,a0
   18ac4:	00008067          	ret

0000000000018ac8 <lstat>:
   18ac8:	00000613          	li	a2,0
   18acc:	00000693          	li	a3,0
   18ad0:	40f00893          	li	a7,1039
   18ad4:	00000073          	ecall
   18ad8:	f20540e3          	bltz	a0,189f8 <__syscall_error>
   18adc:	0005051b          	sext.w	a0,a0
   18ae0:	00008067          	ret

0000000000018ae4 <fstatat>:
   18ae4:	04f00893          	li	a7,79
   18ae8:	00000073          	ecall
   18aec:	f00546e3          	bltz	a0,189f8 <__syscall_error>
   18af0:	0005051b          	sext.w	a0,a0
   18af4:	00008067          	ret

0000000000018af8 <access>:
   18af8:	00000613          	li	a2,0
   18afc:	00000693          	li	a3,0
   18b00:	40900893          	li	a7,1033
   18b04:	00000073          	ecall
   18b08:	ee0548e3          	bltz	a0,189f8 <__syscall_error>
   18b0c:	0005051b          	sext.w	a0,a0
   18b10:	00008067          	ret

0000000000018b14 <faccessat>:
   18b14:	03000893          	li	a7,48
   18b18:	00000073          	ecall
   18b1c:	ec054ee3          	bltz	a0,189f8 <__syscall_error>
   18b20:	0005051b          	sext.w	a0,a0
   18b24:	00008067          	ret

0000000000018b28 <close>:
   18b28:	00000593          	li	a1,0
   18b2c:	00000613          	li	a2,0
   18b30:	00000693          	li	a3,0
   18b34:	03900893          	li	a7,57
   18b38:	00000073          	ecall
   18b3c:	ea054ee3          	bltz	a0,189f8 <__syscall_error>
   18b40:	0005051b          	sext.w	a0,a0
   18b44:	00008067          	ret

0000000000018b48 <link>:
   18b48:	00000613          	li	a2,0
   18b4c:	00000693          	li	a3,0
   18b50:	40100893          	li	a7,1025
   18b54:	00000073          	ecall
   18b58:	ea0540e3          	bltz	a0,189f8 <__syscall_error>
   18b5c:	0005051b          	sext.w	a0,a0
   18b60:	00008067          	ret

0000000000018b64 <unlink>:
   18b64:	00000593          	li	a1,0
   18b68:	00000613          	li	a2,0
   18b6c:	00000693          	li	a3,0
   18b70:	40200893          	li	a7,1026
   18b74:	00000073          	ecall
   18b78:	e80540e3          	bltz	a0,189f8 <__syscall_error>
   18b7c:	0005051b          	sext.w	a0,a0
   18b80:	00008067          	ret

0000000000018b84 <execve>:
   18b84:	ff010113          	addi	sp,sp,-16
   18b88:	00113423          	sd	ra,8(sp)
   18b8c:	23c000ef          	jal	18dc8 <__errno>
   18b90:	00813083          	ld	ra,8(sp)
   18b94:	00c00793          	li	a5,12
   18b98:	00f52023          	sw	a5,0(a0)
   18b9c:	01010113          	addi	sp,sp,16
   18ba0:	fff00513          	li	a0,-1
   18ba4:	00008067          	ret

0000000000018ba8 <fork>:
   18ba8:	ff010113          	addi	sp,sp,-16
   18bac:	00113423          	sd	ra,8(sp)
   18bb0:	218000ef          	jal	18dc8 <__errno>
   18bb4:	00813083          	ld	ra,8(sp)
   18bb8:	00b00793          	li	a5,11
   18bbc:	00f52023          	sw	a5,0(a0)
   18bc0:	01010113          	addi	sp,sp,16
   18bc4:	fff00513          	li	a0,-1
   18bc8:	00008067          	ret

0000000000018bcc <getpid>:
   18bcc:	00100513          	li	a0,1
   18bd0:	00008067          	ret

0000000000018bd4 <kill>:
   18bd4:	ff010113          	addi	sp,sp,-16
   18bd8:	00113423          	sd	ra,8(sp)
   18bdc:	1ec000ef          	jal	18dc8 <__errno>
   18be0:	00813083          	ld	ra,8(sp)
   18be4:	01600793          	li	a5,22
   18be8:	00f52023          	sw	a5,0(a0)
   18bec:	01010113          	addi	sp,sp,16
   18bf0:	fff00513          	li	a0,-1
   18bf4:	00008067          	ret

0000000000018bf8 <wait>:
   18bf8:	ff010113          	addi	sp,sp,-16
   18bfc:	00113423          	sd	ra,8(sp)
   18c00:	1c8000ef          	jal	18dc8 <__errno>
   18c04:	00813083          	ld	ra,8(sp)
   18c08:	00a00793          	li	a5,10
   18c0c:	00f52023          	sw	a5,0(a0)
   18c10:	01010113          	addi	sp,sp,16
   18c14:	fff00513          	li	a0,-1
   18c18:	00008067          	ret

0000000000018c1c <isatty>:
   18c1c:	f8010113          	addi	sp,sp,-128
   18c20:	00010593          	mv	a1,sp
   18c24:	00000613          	li	a2,0
   18c28:	00000693          	li	a3,0
   18c2c:	05000893          	li	a7,80
   18c30:	00000073          	ecall
   18c34:	dc0542e3          	bltz	a0,189f8 <__syscall_error>
   18c38:	fff00793          	li	a5,-1
   18c3c:	0005051b          	sext.w	a0,a0
   18c40:	00f50863          	beq	a0,a5,18c50 <isatty+0x34>
   18c44:	01012503          	lw	a0,16(sp)
   18c48:	40d5551b          	sraiw	a0,a0,0xd
   18c4c:	00157513          	andi	a0,a0,1
   18c50:	08010113          	addi	sp,sp,128
   18c54:	00008067          	ret

0000000000018c58 <times>:
   18c58:	92818313          	addi	t1,gp,-1752 # 1b418 <t0.2343>
   18c5c:	00033703          	ld	a4,0(t1)
   18c60:	ff010113          	addi	sp,sp,-16
   18c64:	00050813          	mv	a6,a0
   18c68:	02071063          	bnez	a4,18c88 <times+0x30>
   18c6c:	92818513          	addi	a0,gp,-1752 # 1b418 <t0.2343>
   18c70:	00000593          	li	a1,0
   18c74:	00000613          	li	a2,0
   18c78:	00000693          	li	a3,0
   18c7c:	0a900893          	li	a7,169
   18c80:	00000073          	ecall
   18c84:	d6054ae3          	bltz	a0,189f8 <__syscall_error>
   18c88:	00010513          	mv	a0,sp
   18c8c:	00000593          	li	a1,0
   18c90:	00000613          	li	a2,0
   18c94:	00000693          	li	a3,0
   18c98:	0a900893          	li	a7,169
   18c9c:	00000073          	ecall
   18ca0:	d4054ce3          	bltz	a0,189f8 <__syscall_error>
   18ca4:	00033703          	ld	a4,0(t1)
   18ca8:	00013783          	ld	a5,0(sp)
   18cac:	fff00513          	li	a0,-1
   18cb0:	00083823          	sd	zero,16(a6)
   18cb4:	40e786b3          	sub	a3,a5,a4
   18cb8:	000f47b7          	lui	a5,0xf4
   18cbc:	24078793          	addi	a5,a5,576 # f4240 <_gp+0xd8750>
   18cc0:	02f68733          	mul	a4,a3,a5
   18cc4:	00833683          	ld	a3,8(t1)
   18cc8:	00813783          	ld	a5,8(sp)
   18ccc:	00083c23          	sd	zero,24(a6)
   18cd0:	00083423          	sd	zero,8(a6)
   18cd4:	40d787b3          	sub	a5,a5,a3
   18cd8:	01010113          	addi	sp,sp,16
   18cdc:	00f707b3          	add	a5,a4,a5
   18ce0:	00f83023          	sd	a5,0(a6)
   18ce4:	00008067          	ret

0000000000018ce8 <gettimeofday>:
   18ce8:	00000593          	li	a1,0
   18cec:	00000613          	li	a2,0
   18cf0:	00000693          	li	a3,0
   18cf4:	0a900893          	li	a7,169
   18cf8:	00000073          	ecall
   18cfc:	ce054ee3          	bltz	a0,189f8 <__syscall_error>
   18d00:	0005051b          	sext.w	a0,a0
   18d04:	00008067          	ret

0000000000018d08 <ftime>:
   18d08:	00051423          	sh	zero,8(a0)
   18d0c:	00053023          	sd	zero,0(a0)
   18d10:	00000513          	li	a0,0
   18d14:	00008067          	ret

0000000000018d18 <utime>:
   18d18:	fff00513          	li	a0,-1
   18d1c:	00008067          	ret

0000000000018d20 <chown>:
   18d20:	fff00513          	li	a0,-1
   18d24:	00008067          	ret

0000000000018d28 <chmod>:
   18d28:	fff00513          	li	a0,-1
   18d2c:	00008067          	ret

0000000000018d30 <chdir>:
   18d30:	fff00513          	li	a0,-1
   18d34:	00008067          	ret

0000000000018d38 <getcwd>:
   18d38:	00000513          	li	a0,0
   18d3c:	00008067          	ret

0000000000018d40 <sysconf>:
   18d40:	00200793          	li	a5,2
   18d44:	00f51863          	bne	a0,a5,18d54 <sysconf+0x14>
   18d48:	000f4537          	lui	a0,0xf4
   18d4c:	24050513          	addi	a0,a0,576 # f4240 <_gp+0xd8750>
   18d50:	00008067          	ret
   18d54:	fff00513          	li	a0,-1
   18d58:	00008067          	ret

0000000000018d5c <sbrk>:
   18d5c:	8c01b703          	ld	a4,-1856(gp) # 1b3b0 <heap_end.2381>
   18d60:	00050793          	mv	a5,a0
   18d64:	00071663          	bnez	a4,18d70 <sbrk+0x14>
   18d68:	93818713          	addi	a4,gp,-1736 # 1b428 <_end>
   18d6c:	8ce1b023          	sd	a4,-1856(gp) # 1b3b0 <heap_end.2381>
   18d70:	00e78533          	add	a0,a5,a4
   18d74:	00000593          	li	a1,0
   18d78:	00000613          	li	a2,0
   18d7c:	00000693          	li	a3,0
   18d80:	0d600893          	li	a7,214
   18d84:	00000073          	ecall
   18d88:	c60548e3          	bltz	a0,189f8 <__syscall_error>
   18d8c:	8c01b683          	ld	a3,-1856(gp) # 1b3b0 <heap_end.2381>
   18d90:	fff00713          	li	a4,-1
   18d94:	00d787b3          	add	a5,a5,a3
   18d98:	00f51663          	bne	a0,a5,18da4 <sbrk+0x48>
   18d9c:	8ca1b023          	sd	a0,-1856(gp) # 1b3b0 <heap_end.2381>
   18da0:	00068713          	mv	a4,a3
   18da4:	00070513          	mv	a0,a4
   18da8:	00008067          	ret

0000000000018dac <_exit>:
   18dac:	00000593          	li	a1,0
   18db0:	00000613          	li	a2,0
   18db4:	00000693          	li	a3,0
   18db8:	05d00893          	li	a7,93
   18dbc:	00000073          	ecall
   18dc0:	c2054ce3          	bltz	a0,189f8 <__syscall_error>
   18dc4:	0000006f          	j	18dc4 <_exit+0x18>

0000000000018dc8 <__errno>:
   18dc8:	8101b503          	ld	a0,-2032(gp) # 1b300 <_impure_ptr>
   18dcc:	00008067          	ret
