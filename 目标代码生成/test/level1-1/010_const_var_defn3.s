	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L1:
	ldr r4, =10
	str r4, [fp, #-8]
	ldr r4, =5
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	add sp, sp, #8
	pop {r4, fp, lr}
	bx lr
