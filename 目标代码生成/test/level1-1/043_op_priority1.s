	.arch armv8-a
	.arch_extension crc
	.arm
	.text
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
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-16]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-12]
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	sub r6, r5, r4
	mov r0, r6
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L17:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L18:
	b .L17
.L21:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L22:
	b .L21
.L25:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L26:
	b .L25
.L29:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L30:
	b .L29
.L32:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L33:
	b .L32
.L35:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L36:
	b .L35
.L39:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L40:
	b .L39
