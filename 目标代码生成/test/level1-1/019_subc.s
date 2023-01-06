	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L3:
	ldr r4, =10
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	sub r6, r4, r5
	mov r0, r6
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L6:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L7:
	b .L6
.L10:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L11:
	b .L10
