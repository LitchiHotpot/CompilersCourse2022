	.arch armv8-a
	.arch_extension crc
	.arm
.data

.global n
.size n, 4
n:
	.word 0
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L20:
	bl addr_getint
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-12]
	bl addr_getint
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-12]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-12]
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-12]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl addr_putint
	mov r4, r0
	ldr r4, =10
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl addr_putch
	mov r4, r0
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl addr_putint
	mov r4, r0
	ldr r4, =10
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl addr_putch
	mov r4, r0
	mov r0, #0
	add sp, sp, #12
	bx lr
.L23:
.L24:
	mov r0, #0
	add sp, sp, #12
	bx lr
.L25:
	b .L24
.L27:
.L28:
	mov r0, #0
	add sp, sp, #12
	bx lr
.L29:
	b .L28
.L32:
.L33:
	mov r0, #0
	add sp, sp, #12
	bx lr
.L34:
	b .L33
.L36:
.L37:
	mov r0, #0
	add sp, sp, #12
	bx lr
.L38:
	b .L37
.L40:
.L41:
	mov r0, #0
	add sp, sp, #12
	bx lr
.L42:
	b .L41
.L44:
.L45:
	mov r0, #0
	add sp, sp, #12
	bx lr
.L46:
	b .L45
.L48:
.L49:
.L50:
.L51:
.L52:
	mov r0, #0
	add sp, sp, #12
	bx lr
.L53:
	b .L52
.L55:
.L56:
.L57:
.L58:
.L59:
	mov r0, #0
	add sp, sp, #12
	bx lr
.L60:
	b .L59
.L62:
.L63:
.L64:
.L65:
.L66:
	mov r0, #0
	add sp, sp, #12
	bx lr
.L67:
	b .L66
.L69:
.L70:
.L71:
addr_n:
	.word n
