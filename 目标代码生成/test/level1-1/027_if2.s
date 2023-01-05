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
	b .L6
.L5:
	mov r0, #0
	add sp, sp, #0
	bx lr
	b .L6
.L6:
	mov r0, #0
	add sp, sp, #0
	bx lr
.L7:
.L8:
	mov r0, #0
	add sp, sp, #0
	bx lr
.L9:
	b .L8
.L11:
.L12:
.L13:
	b .L5
