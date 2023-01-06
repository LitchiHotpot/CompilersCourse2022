	.arch armv8-a
	.arch_extension crc
	.arm
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L5:
	ldr r4, =5
	ldr r5, =6
	sub r6, r4, r5
	ldr r4, =0
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	ldr r5, =1
	eor r7, r5, r4
	mov r4, r7
	ldr r5, =0
	sub r7, r5, r4
	cmp r7, #0
	movgt r4, #1
	movle r4, #0
	cmp r6, r7
	moveq r4, #1
	movne r4, #0
	beq .L6
	b .L22
.L6:
	ldr r0, =70
	bl putch
	mov r4, r0
	b .L7
.L7:
	mov r0, #0
	add sp, sp, #0
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L9:
	mov r0, #0
	add sp, sp, #0
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L10:
	b .L9
.L14:
	mov r0, #0
	add sp, sp, #0
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L15:
	b .L14
.L17:
	mov r0, #0
	add sp, sp, #0
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L18:
	b .L17
.L22:
	b .L7
