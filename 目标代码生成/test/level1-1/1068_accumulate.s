	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L13:
	ldr r4, =0
	str r4, [fp, #-4]
	ldr r4, =0
	str r4, [fp, #-8]
	b .L16
.L16:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #21
	movlt r4, #1
	movge r4, #0
	blt .L17
	b .L25
.L17:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-8]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	add r6, r4, r5
	str r6, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L16
.L18:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L20:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L21:
	b .L20
.L25:
	b .L18
.L27:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L28:
	b .L27
.L31:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L32:
	b .L31
.L35:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L36:
	b .L35
.L38:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L39:
	b .L38
.L42:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L43:
	b .L42
.L45:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L46:
	b .L45
