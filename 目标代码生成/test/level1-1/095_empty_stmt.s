	.arch armv8-a
	.arch_extension crc
	.arm
	.global main
	.type main , %function
main:
	push {r0, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L3:
	ldr r0, =10
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mul r0, r0, #2
	add r0, r0, #1
	mov r0, r0
	add sp, sp, #4
	bx lr
.L5:
.L6:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L7:
	b .L6
.L9:
.L10:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L11:
	b .L10
.L12:
.L13:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L14:
	b .L13
