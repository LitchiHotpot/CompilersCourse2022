	.arch armv8-a
	.arch_extension crc
	.arm
.data

.section .rodata

.global a
.size a, 4
a:
	.word 10
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L1:
	ldr r4, addr_a
	ldr r5, [r4]
	mov r0, r5
	add sp, sp, #0
	bx lr
.L2:
.L3:
.L4:
addr_a:
	.word a
