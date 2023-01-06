	.arch armv8-a
	.arch_extension crc
	.arm
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L2:
	ldr r4, =1
	ldr r5, =0
	sub r6, r5, r4
	ldr r4, =0
	cmp r6, r4
	movgt r4, #1
	movle r4, #0
	ldr r4, =0
	sub r5, r4, r6
	ldr r4, =0
	cmp r5, r4
	movgt r4, #1
	movle r4, #0
	str r5, [fp, #-4]
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L5:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L6:
	b .L5
.L9:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L10:
	b .L9
