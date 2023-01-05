	.arch armv8-a
	.arch_extension crc
	.arm
	.global main
	.type main , %function
main:
	push {r0, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L3:
	ldr r0, =10
	ldr r0, addr_@a
	str r0, [r0]
	ldr r0, addr_@a
	ldr r0, [r0]
.L4:
	mov r0, #1
	add sp, sp, #0
	bx lr
	b .L5
.L5:
	mov r0, #0
	add sp, sp, #0
	bx lr
.L6:
.L7:
	mov r0, #0
	add sp, sp, #0
	bx lr
.L8:
	b .L7
.L10:
.L11:
.L12:
	b .L5
