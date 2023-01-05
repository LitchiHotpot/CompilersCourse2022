	.arch armv8-a
	.arch_extension crc
	.arm
	.global main
	.type main , %function
main:
	push {r0, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L11:
	ldr r0, =10
	str r0, [fp, #-16]
	ldr r0, =4
	str r0, [fp, #-12]
	ldr r0, =2
	str r0, [fp, #-8]
	ldr r0, =2
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	ldr r0, [fp, #-16]
	ldr r0, [fp, #-12]
	mul r0, r0, r0
	add r0, r0, r0
	ldr r0, [fp, #-4]
	sub r0, r0, r0
	mov r0, r0
	add sp, sp, #16
	bx lr
.L16:
.L17:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L18:
	b .L17
.L20:
.L21:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L22:
	b .L21
.L24:
.L25:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L26:
	b .L25
.L28:
.L29:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L30:
	b .L29
.L31:
.L32:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L33:
	b .L32
.L34:
.L35:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L36:
	b .L35
.L38:
.L39:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L40:
	b .L39
