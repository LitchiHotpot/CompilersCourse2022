	.arch armv8-a
	.arch_extension crc
	.arm
	.global main
	.type main , %function
main:
	push {r0, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L2:
	ldr r0, addr_@a
	ldr r0, [r0]
	mul r0, r0, #5
	mov r0, r0
	add sp, sp, #0
	bx lr
.L3:
.L4:
.L5:
.L6:
.L7:
	mov r0, #0
	add sp, sp, #0
	bx lr
.L8:
	b .L7
