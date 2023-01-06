	.arch armv8-a
	.arch_extension crc
	.arm
.data

.global n
.size n, 4
n:
	.word 0
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L20:
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-12]
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-12]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	ldr r4, =10
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putch
	mov r4, r0
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	ldr r4, =10
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putch
	mov r4, r0
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, fp, lr}
	bx lr
.L24:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, fp, lr}
	bx lr
.L25:
	b .L24
.L28:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, fp, lr}
	bx lr
.L29:
	b .L28
.L33:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, fp, lr}
	bx lr
.L34:
	b .L33
.L37:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, fp, lr}
	bx lr
.L38:
	b .L37
.L41:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, fp, lr}
	bx lr
.L42:
	b .L41
.L45:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, fp, lr}
	bx lr
.L46:
	b .L45
.L52:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, fp, lr}
	bx lr
.L53:
	b .L52
.L59:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, fp, lr}
	bx lr
.L60:
	b .L59
.L66:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, fp, lr}
	bx lr
.L67:
	b .L66
addr_n:
	.word n
