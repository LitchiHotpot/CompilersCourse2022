	.arch armv8-a
	.arch_extension crc
	.arm
	.global main
	.type main , %function
main:
	push {r0, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L13:
	ldr r0, =0
	str r0, [fp, #-4]
	ldr r0, =0
	str r0, [fp, #-8]
	b .L16
.L16:
	ldr r0, [fp, #-8]
.L17:
	ldr r0, [fp, #-4]
	ldr r0, [fp, #-8]
	add r0, r0, r0
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	add r0, r0, #1
	str r0, [fp, #-8]
	b .L16
.L18:
	ldr r0, [fp, #-4]
	mov r0, #0
	add sp, sp, #8
	bx lr
.L19:
.L20:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L21:
	b .L20
.L23:
.L24:
.L25:
	b .L18
.L26:
.L27:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L28:
	b .L27
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
.L37:
.L38:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L39:
	b .L38
.L41:
.L42:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L43:
	b .L42
.L44:
.L45:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L46:
	b .L45
.L48:
.L49:
.L50:
