	.arch armv8-a
	.arch_extension crc
	.arm
	.global main
	.type main , %function
main:
	push {r0, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L6:
	ldr r0, =1
	str r0, [fp, #-12]
	ldr r0, =2
	str r0, [fp, #-8]
	ldr r0, =3
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	ldr r0, [fp, #-4]
	add r0, r0, r0
	mov r0, r0
	add sp, sp, #12
	bx lr
.L10:
.L11:
	mov r0, #0
	add sp, sp, #12
	bx lr
.L12:
	b .L11
.L14:
.L15:
	mov r0, #0
	add sp, sp, #12
	bx lr
.L16:
	b .L15
.L18:
.L19:
	mov r0, #0
	add sp, sp, #12
	bx lr
.L20:
	b .L19
