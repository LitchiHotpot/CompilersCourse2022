	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L25:
	ldr r4, =56
	str r4, [fp, #-8]
	ldr r4, =4
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =4
	ldr r6, =0
	sub r7, r6, r5
	cmp r7, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r4, r7
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	str r6, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	ldr r5, =1
	eor r6, r5, r4
	mov r4, r6
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	ldr r5, =1
	eor r6, r5, r4
	mov r4, r6
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	ldr r5, =1
	eor r6, r5, r4
	mov r4, r6
	ldr r5, =0
	sub r6, r5, r4
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	bgt .L50
	b .L79
.L29:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L30:
	b .L29
.L33:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L34:
	b .L33
.L37:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L38:
	b .L37
.L40:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L41:
	b .L40
.L45:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L46:
	b .L45
.L48:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L49:
	b .L48
.L50:
	ldr r4, =1
	ldr r5, =0
	sub r6, r5, r4
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =0
	sub r5, r4, r6
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =0
	sub r6, r4, r5
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	str r6, [fp, #-8]
	b .L52
.L51:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =0
	add r6, r5, r4
	str r6, [fp, #-8]
	b .L52
.L52:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L54:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L55:
	b .L54
.L60:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L61:
	b .L60
.L65:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L66:
	b .L65
.L70:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L71:
	b .L70
.L73:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L74:
	b .L73
.L79:
	b .L51
.L81:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L82:
	b .L81
.L85:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L86:
	b .L85
.L89:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L90:
	b .L89
.L93:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L94:
	b .L93
.L98:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L99:
	b .L98
.L101:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L102:
	b .L101
.L104:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L105:
	b .L104
