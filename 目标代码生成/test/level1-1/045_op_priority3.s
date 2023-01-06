	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L9:
	ldr r4, =10
	str r4, [fp, #-8]
	ldr r4, =30
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =5
	ldr r6, =0
	sub r7, r6, r5
	cmp r7, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r4, r7
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, =5
	ldr r5, =0
	sub r7, r5, r4
	cmp r7, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r7
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L13:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L14:
	b .L13
.L17:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L18:
	b .L17
.L21:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L22:
	b .L21
.L24:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L25:
	b .L24
.L28:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L29:
	b .L28
.L31:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L32:
	b .L31
.L35:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L36:
	b .L35
