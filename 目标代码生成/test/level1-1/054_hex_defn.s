	.arch armv8-a
	.arch_extension crc
	.arm
	.global main
	.type main , %function
main:
	push {r0, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L2:
	ldr r0, =15
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	add sp, sp, #4
	bx lr
.L4:
.L5:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L6:
	b .L5
