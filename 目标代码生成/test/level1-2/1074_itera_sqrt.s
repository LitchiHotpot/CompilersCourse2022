	.arch armv8-a
	.arch_extension crc
	.arm
	.global fsqrt
	.type fsqrt , %function
fsqrt:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L28:
	str r0, [fp, #-12]
	ldr r4, =0
	str r4, [fp, #-8]
	ldr r4, [fp, #-12]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	sdiv r6, r4, r5
	str r6, [fp, #-4]
	b .L40
.L34:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L35:
	b .L34
.L38:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L39:
	b .L38
.L40:
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-4]
	ldr r6, =0
	cmp r5, r6
	movgt r6, #1
	movle r6, #0
	sub r6, r4, r5
	ldr r4, =0
	cmp r6, r4
	bne .L41
	b .L56
.L41:
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-12]
	ldr r6, =0
	cmp r5, r6
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-8]
	ldr r7, =0
	cmp r6, r7
	movgt r7, #1
	movle r7, #0
	sdiv r7, r5, r6
	add r5, r4, r7
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	sdiv r6, r4, r5
	str r6, [fp, #-4]
	b .L40
.L42:
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L44:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L45:
	b .L44
.L48:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L49:
	b .L48
.L52:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L53:
	b .L52
.L56:
	b .L42
.L58:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L59:
	b .L58
.L62:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L63:
	b .L62
.L66:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L67:
	b .L66
.L70:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L71:
	b .L70
.L74:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L75:
	b .L74
.L77:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L78:
	b .L77
.L80:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L81:
	b .L80
.L84:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L85:
	b .L84
.L87:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L88:
	b .L87
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L90:
	ldr r4, =400
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl fsqrt
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	ldr r4, =10
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putch
	mov r4, r0
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, fp, lr}
	bx lr
.L94:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, fp, lr}
	bx lr
.L95:
	b .L94
.L98:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, fp, lr}
	bx lr
.L99:
	b .L98
.L102:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, fp, lr}
	bx lr
.L103:
	b .L102
.L109:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, fp, lr}
	bx lr
.L110:
	b .L109
