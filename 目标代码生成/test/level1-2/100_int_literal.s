	.arch armv8-a
	.arch_extension crc
	.arm
.data

.global s
.size s, 4
s:
	.word 0
	.global get_ans_se
	.type get_ans_se , %function
get_ans_se:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L166:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	ldr r4, =0
	str r4, [fp, #-4]
	ldr r4, [fp, #-12]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-8]
	ldr r6, =0
	cmp r5, r6
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	beq .L174
	b .L186
.L174:
	ldr r4, =1
	str r4, [fp, #-4]
	b .L175
.L175:
	ldr r4, [fp, #-16]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	mul r6, r4, r5
	str r6, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-4]
	ldr r6, =0
	cmp r5, r6
	movgt r6, #1
	movle r6, #0
	add r6, r4, r5
	str r6, [fp, #-16]
	ldr r4, addr_s
	ldr r5, [r4]
	ldr r4, =0
	cmp r5, r4
	movgt r4, #1
	movle r4, #0
	ldr r4, [fp, #-16]
	ldr r6, =0
	cmp r4, r6
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, addr_s
	str r6, [r4]
	ldr r4, [fp, #-16]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #16
	pop {r4, r5, r6, fp, lr}
	bx lr
.L177:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, fp, lr}
	bx lr
.L178:
	b .L177
.L181:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, fp, lr}
	bx lr
.L182:
	b .L181
.L186:
	b .L175
.L188:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, fp, lr}
	bx lr
.L189:
	b .L188
.L192:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, fp, lr}
	bx lr
.L193:
	b .L192
.L195:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, fp, lr}
	bx lr
.L196:
	b .L195
.L199:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, fp, lr}
	bx lr
.L200:
	b .L199
.L203:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, fp, lr}
	bx lr
.L204:
	b .L203
.L206:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, fp, lr}
	bx lr
.L207:
	b .L206
.L210:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, fp, lr}
	bx lr
.L211:
	b .L210
.L214:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, fp, lr}
	bx lr
.L215:
	b .L214
.L217:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, fp, lr}
	bx lr
.L218:
	b .L217
	.global get_ans
	.type get_ans , %function
get_ans:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L220:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	ldr r4, =0
	str r4, [fp, #-4]
	ldr r4, [fp, #-12]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-8]
	ldr r6, =0
	cmp r5, r6
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	beq .L228
	b .L240
.L228:
	ldr r4, =1
	str r4, [fp, #-4]
	b .L229
.L229:
	ldr r4, [fp, #-16]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	mul r6, r4, r5
	str r6, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-4]
	ldr r6, =0
	cmp r5, r6
	movgt r6, #1
	movle r6, #0
	add r6, r4, r5
	str r6, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #16
	pop {r4, r5, r6, fp, lr}
	bx lr
.L231:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, fp, lr}
	bx lr
.L232:
	b .L231
.L235:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, fp, lr}
	bx lr
.L236:
	b .L235
.L240:
	b .L229
.L242:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, fp, lr}
	bx lr
.L243:
	b .L242
.L246:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, fp, lr}
	bx lr
.L247:
	b .L246
.L249:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, fp, lr}
	bx lr
.L250:
	b .L249
.L253:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, fp, lr}
	bx lr
.L254:
	b .L253
.L257:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, fp, lr}
	bx lr
.L258:
	b .L257
.L260:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, fp, lr}
	bx lr
.L261:
	b .L260
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #36
.L263:
	ldr r4, =-2147483648
	ldr r5, =0
	sub r6, r5, r4
	ldr r4, =0
	cmp r6, r4
	movgt r4, #1
	movle r4, #0
	str r6, [fp, #-36]
	ldr r4, =-2147483648
	str r4, [fp, #-32]
	ldr r4, =-2147483648
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-28]
	ldr r4, =2147483647
	str r4, [fp, #-24]
	ldr r4, =2147483647
	ldr r5, =1
	sub r6, r4, r5
	str r6, [fp, #-20]
	ldr r4, [fp, #-36]
	ldr r5, [fp, #-32]
	ldr r0, =0
	mov r1, r4
	mov r2, r5
	bl get_ans
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-36]
	ldr r6, =1
	add r7, r5, r6
	ldr r5, [fp, #-28]
	mov r0, r4
	mov r1, r7
	mov r2, r5
	bl get_ans
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-36]
	ldr r6, [fp, #-24]
	ldr r7, =0
	sub r8, r7, r6
	ldr r6, =0
	cmp r8, r6
	movgt r6, #1
	movle r6, #0
	ldr r6, =1
	sub r7, r8, r6
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl get_ans
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-36]
	ldr r6, [fp, #-20]
	ldr r7, =1
	add r8, r6, r7
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl get_ans
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-32]
	ldr r6, =2
	sdiv r7, r5, r6
	ldr r5, [fp, #-28]
	ldr r6, =2
	sdiv r8, r5, r6
	mov r0, r4
	mov r1, r7
	mov r2, r8
	bl get_ans
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-32]
	ldr r6, [fp, #-24]
	ldr r8, =0
	sub r7, r8, r6
	ldr r6, =0
	cmp r7, r6
	movgt r6, #1
	movle r6, #0
	ldr r6, =1
	sub r8, r7, r6
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl get_ans
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-32]
	ldr r6, [fp, #-20]
	ldr r7, =1
	add r8, r6, r7
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl get_ans
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-16]
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-24]
	ldr r0, =0
	mov r1, r4
	mov r2, r5
	bl get_ans
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-12]
	ldr r4, [fp, #-12]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-28]
	ldr r6, [fp, #-20]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl get_ans
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-12]
	ldr r4, [fp, #-12]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-24]
	ldr r6, [fp, #-20]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl get_ans
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-12]
	ldr r4, [fp, #-12]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-36]
	ldr r6, =2
	sdiv r7, r5, r6
	ldr r5, [fp, #-32]
	ldr r6, =2
	sdiv r8, r5, r6
	mov r0, r4
	mov r1, r7
	mov r2, r8
	bl get_ans
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-12]
	ldr r4, [fp, #-36]
	ldr r5, [fp, #-32]
	ldr r0, =0
	mov r1, r4
	mov r2, r5
	bl get_ans_se
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-36]
	ldr r6, =1
	add r7, r5, r6
	ldr r5, [fp, #-28]
	mov r0, r4
	mov r1, r7
	mov r2, r5
	bl get_ans_se
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-36]
	ldr r6, [fp, #-24]
	ldr r8, =0
	sub r7, r8, r6
	ldr r6, =0
	cmp r7, r6
	movgt r6, #1
	movle r6, #0
	ldr r6, =1
	sub r8, r7, r6
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl get_ans_se
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-36]
	ldr r6, [fp, #-20]
	ldr r7, =1
	add r8, r6, r7
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl get_ans_se
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-32]
	ldr r6, =2
	sdiv r7, r5, r6
	ldr r5, [fp, #-28]
	ldr r6, =2
	sdiv r8, r5, r6
	mov r0, r4
	mov r1, r7
	mov r2, r8
	bl get_ans_se
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-32]
	ldr r6, [fp, #-24]
	ldr r8, =0
	sub r7, r8, r6
	ldr r6, =0
	cmp r7, r6
	movgt r6, #1
	movle r6, #0
	ldr r6, =1
	sub r8, r7, r6
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl get_ans_se
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-32]
	ldr r6, [fp, #-20]
	ldr r7, =1
	add r8, r6, r7
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl get_ans_se
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-24]
	ldr r0, =0
	mov r1, r4
	mov r2, r5
	bl get_ans_se
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-28]
	ldr r6, [fp, #-20]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl get_ans_se
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-24]
	ldr r6, [fp, #-20]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl get_ans_se
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-36]
	ldr r6, =2
	sdiv r7, r5, r6
	ldr r5, [fp, #-32]
	ldr r6, =2
	sdiv r8, r5, r6
	mov r0, r4
	mov r1, r7
	mov r2, r8
	bl get_ans_se
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-4]
	ldr r4, [fp, #-16]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-12]
	ldr r6, =0
	cmp r5, r6
	movgt r6, #1
	movle r6, #0
	add r6, r4, r5
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-4]
	ldr r6, =0
	cmp r4, r6
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	mov r0, r6
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L266:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L267:
	b .L266
.L272:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L273:
	b .L272
.L277:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L278:
	b .L277
.L290:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L291:
	b .L290
.L294:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L295:
	b .L294
.L301:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L302:
	b .L301
.L307:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L308:
	b .L307
.L311:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L312:
	b .L311
.L321:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L322:
	b .L321
.L325:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L326:
	b .L325
.L328:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L329:
	b .L328
.L332:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L333:
	b .L332
.L342:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L343:
	b .L342
.L345:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L346:
	b .L345
.L349:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L350:
	b .L349
.L356:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L357:
	b .L356
.L362:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L363:
	b .L362
.L365:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L366:
	b .L365
.L369:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L370:
	b .L369
.L379:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L380:
	b .L379
.L383:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L384:
	b .L383
.L386:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L387:
	b .L386
.L390:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L391:
	b .L390
.L400:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L401:
	b .L400
.L403:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L404:
	b .L403
.L413:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L414:
	b .L413
.L417:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L418:
	b .L417
.L427:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L428:
	b .L427
.L431:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L432:
	b .L431
.L441:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L442:
	b .L441
.L445:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L446:
	b .L445
.L452:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L453:
	b .L452
.L458:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L459:
	b .L458
.L461:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L462:
	b .L461
.L471:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L472:
	b .L471
.L475:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L476:
	b .L475
.L482:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L483:
	b .L482
.L488:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L489:
	b .L488
.L492:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L493:
	b .L492
.L502:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L503:
	b .L502
.L506:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L507:
	b .L506
.L509:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L510:
	b .L509
.L513:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L514:
	b .L513
.L523:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L524:
	b .L523
.L526:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L527:
	b .L526
.L530:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L531:
	b .L530
.L537:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L538:
	b .L537
.L543:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L544:
	b .L543
.L546:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L547:
	b .L546
.L550:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L551:
	b .L550
.L560:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L561:
	b .L560
.L564:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L565:
	b .L564
.L567:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L568:
	b .L567
.L571:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L572:
	b .L571
.L581:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L582:
	b .L581
.L584:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L585:
	b .L584
.L594:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L595:
	b .L594
.L598:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L599:
	b .L598
.L608:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L609:
	b .L608
.L612:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L613:
	b .L612
.L622:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L623:
	b .L622
.L626:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L627:
	b .L626
.L633:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L634:
	b .L633
.L639:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L640:
	b .L639
.L642:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L643:
	b .L642
.L646:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L647:
	b .L646
.L650:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L651:
	b .L650
.L654:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L655:
	b .L654
.L657:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L658:
	b .L657
.L661:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L662:
	b .L661
.L664:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L665:
	b .L664
.L668:
	mov r0, #0
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L669:
	b .L668
addr_s:
	.word s
