	.arch armv8-a
	.arch_extension crc
	.arm
	.global main
	.type main , %function
main:
	push {r0, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L4:
	ldr r0, =2
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	ldr r0, addr_@a
	ldr r0, [r0]
	sub r0, r0, r0
	mov r0, r0
	add sp, sp, #4
	bx lr
.L6:
.L7:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L8:
	b .L7
.L10:
.L11:
.L12:
.L13:
.L14:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L15:
	b .L14
