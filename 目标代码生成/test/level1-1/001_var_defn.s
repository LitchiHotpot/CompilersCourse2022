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
	ldr r0, addr_@a
	ldr r0, [r0]
	ldr r0, addr_@b
	ldr r0, [r0]
	add r0, r0, r0
	mov r0, r0
	add sp, sp, #0
	bx lr
.L4:
.L5:
	mov r0, #0
	add sp, sp, #0
	bx lr
.L6:
	b .L5
.L8:
.L9:
	mov r0, #0
	add sp, sp, #0
	bx lr
.L10:
	b .L9
.L12:
.L13:
	mov r0, #0
	add sp, sp, #0
	bx lr
.L14:
	b .L13
