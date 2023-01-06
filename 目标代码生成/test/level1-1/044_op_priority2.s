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
	add r6, r4, r5
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-4]
	cmp r5, #0
	movgt r7, #1
	movle r7, #0
	sub r7, r4, r5
	mul r4, r6, r7
	mov r0, r4
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
.L28:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L29:
	b .L28
.L32:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L33:
	b .L32
.L36:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L37:
	b .L36
.L39:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L40:
	b .L39
