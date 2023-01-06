	.arch armv8-a
	.arch_extension crc
	.arm
.data

.global a
.size a, 4
a:
	.word 0
.global b
.size b, 4
b:
	.word 0
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L13:
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_a
	str r4, [r5]
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_b
	str r4, [r5]
	ldr r4, addr_a
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, addr_b
	ldr r6, [r4]
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	cmp r5, r6
	moveq r4, #1
	movne r4, #0
	beq .L26
	b .L37
.L15:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L16:
	b .L15
.L19:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L20:
	b .L19
.L23:
	ldr r4, =1
	str r4, [fp, #-4]
	b .L25
.L24:
	ldr r4, =0
	str r4, [fp, #-4]
	b .L25
.L25:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L26:
	ldr r4, addr_a
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	cmp r5, #3
	movne r4, #1
	moveq r4, #0
	bne .L23
	b .L44
.L28:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L29:
	b .L28
.L32:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L33:
	b .L32
.L37:
	b .L24
.L39:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L40:
	b .L39
.L44:
	b .L24
.L46:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L47:
	b .L46
addr_a:
	.word a
addr_b:
	.word b
