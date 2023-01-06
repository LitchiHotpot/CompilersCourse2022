	.arch armv8-a
	.arch_extension crc
	.arm
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L2:
	ldr r4, =15
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, fp, lr}
	bx lr
.L5:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, fp, lr}
	bx lr
.L6:
	b .L5
