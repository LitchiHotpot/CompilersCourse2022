	.arch armv8-a
	.arch_extension crc
	.arm
	.global main
	.type main , %function
main:
	push {r0, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L5:
	ldr r0, =10
	str r0, [fp, #-8]
	ldr r0, =2
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	ldr r0, [fp, #-4]
	add r0, r0, r0
	mov r0, r0
	add sp, sp, #8
	bx lr
.L8:
.L9:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L10:
	b .L9
.L12:
.L13:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L14:
	b .L13
.L16:
.L17:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L18:
	b .L17
