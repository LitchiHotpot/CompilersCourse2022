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
.L5:
	ldr r4, =10
	str r4, [fp, #-8]
	ldr r4, =2
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-4]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	sub r6, r4, r5
	mov r0, r6
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L9:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L10:
	b .L9
.L13:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L14:
	b .L13
.L17:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L18:
	b .L17
