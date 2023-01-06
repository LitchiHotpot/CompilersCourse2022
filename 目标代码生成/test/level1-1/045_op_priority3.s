	.arch armv8-a
	.arch_extension crc
	.arm
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
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =5
	ldr r7, =0
	sub r6, r7, r5
	ldr r5, =0
	cmp r6, r5
	movgt r5, #1
	movle r5, #0
	sub r5, r4, r6
	ldr r4, [fp, #-4]
	ldr r6, =0
	cmp r4, r6
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, =5
	ldr r7, =0
	sub r5, r7, r4
	ldr r4, =0
	cmp r5, r4
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	mov r0, r4
	add sp, sp, #8
	bx lr
.L12:
.L13:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L14:
	b .L13
.L16:
.L17:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L18:
	b .L17
.L20:
.L21:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L22:
	b .L21
.L23:
.L24:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L25:
	b .L24
.L27:
.L28:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L29:
	b .L28
.L30:
.L31:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L32:
	b .L31
.L34:
.L35:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L36:
	b .L35
