	.arch armv8-a
	.arch_extension crc
	.arm
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L11:
	ldr r4, =10
	str r4, [fp, #-16]
	ldr r4, =4
	str r4, [fp, #-12]
	ldr r4, =2
	str r4, [fp, #-8]
	ldr r4, =2
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-16]
	ldr r6, =0
	cmp r5, r6
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-12]
	ldr r7, =0
	cmp r6, r7
	movgt r7, #1
	movle r7, #0
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-4]
	ldr r6, =0
	cmp r4, r6
	movgt r6, #1
	movle r6, #0
	sub r6, r5, r4
	mov r0, r6
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
