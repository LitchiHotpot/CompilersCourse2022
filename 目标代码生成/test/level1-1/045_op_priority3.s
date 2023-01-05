	.arch armv8-a
	.arch_extension crc
	.arm
	.global main
	.type main , %function
main:
	push {r0, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L9:
	ldr r0, =10
	str r0, [fp, #-8]
	ldr r0, =30
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	sub r0, r0, v3
	ldr r0, [fp, #-4]
	add r0, r0, r0
	add r0, r0, v7
	mov r0, r0
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
