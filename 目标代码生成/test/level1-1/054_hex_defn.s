	.arch armv8-a
	.arch_extension crc
	.arm
	.text
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
	cmp r4, #0
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
