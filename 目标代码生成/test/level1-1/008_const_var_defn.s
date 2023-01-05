	.arch armv8-a
	.arch_extension crc
	.arm
	.global main
	.type main , %function
main:
	push {r0, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L1:
	ldr r0, addr_@a
	ldr r0, [r0]
	mov r0, r0
	add sp, sp, #0
	bx lr
.L2:
.L3:
.L4:
