	.arch armv8-a
	.arch_extension crc
	.arm
	.global main
	.type main , %function
main:
	push {r0, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L6:
	ldr r0, =10
	str r0, [fp, #-8]
	str v2, [fp, #-4]
	ldr r0, [fp, #-8]
	ldr r0, [fp, #-4]
	add r0, r0, r0
	mov r0, r0
	add sp, sp, #8
	bx lr
.L9:
.L10:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L11:
	b .L10
.L13:
.L14:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L15:
	b .L14
.L17:
.L18:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L19:
	b .L18
.L21:
.L22:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L23:
	b .L22
