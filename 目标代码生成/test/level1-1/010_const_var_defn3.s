	.arch armv8-a
	.arch_extension crc
	.arm
	.global main
	.type main , %function
main:
	push {r0, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L1:
	ldr r0, =10
	str r0, [fp, #-8]
	ldr r0, =5
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	add sp, sp, #8
	bx lr
.L4:
.L5:
.L6:
