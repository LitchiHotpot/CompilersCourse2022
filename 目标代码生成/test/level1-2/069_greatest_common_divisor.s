	.arch armv8-a
	.arch_extension crc
	.arm
	.global fun
	.type fun , %function
fun:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L21:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	b .L27
.L27:
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =0
	cmp r4, r5
	movgt r4, #1
	movle r4, #0
	bgt .L28
	b .L36
.L28:
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
	sdiv r6, r4, r5
	mul r5, r6, r5
	sub r6, r4, r5
	str r6, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-12]
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	b .L27
.L29:
	ldr r4, [fp, #-12]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #12
	pop {r4, r5, r6, fp, lr}
	bx lr
.L31:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, fp, lr}
	bx lr
.L32:
	b .L31
.L36:
	b .L29
.L38:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, fp, lr}
	bx lr
.L39:
	b .L38
.L42:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, fp, lr}
	bx lr
.L43:
	b .L42
.L46:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, fp, lr}
	bx lr
.L47:
	b .L46
.L49:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, fp, lr}
	bx lr
.L50:
	b .L49
.L53:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, fp, lr}
	bx lr
.L54:
	b .L53
.L57:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, fp, lr}
	bx lr
.L58:
	b .L57
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L60:
	bl getint
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	bl getint
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-12]
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-12]
	ldr r6, =0
	cmp r5, r6
	movgt r6, #1
	movle r6, #0
	mov r0, r4
	mov r1, r5
	bl fun
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
	mov r0, r4
	bl putint
	mov r4, r0
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, fp, lr}
	bx lr
.L65:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, fp, lr}
	bx lr
.L66:
	b .L65
.L69:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, fp, lr}
	bx lr
.L70:
	b .L69
.L73:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, fp, lr}
	bx lr
.L74:
	b .L73
.L77:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, fp, lr}
	bx lr
.L78:
	b .L77
.L81:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, fp, lr}
	bx lr
.L82:
	b .L81
.L85:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, fp, lr}
	bx lr
.L86:
	b .L85
