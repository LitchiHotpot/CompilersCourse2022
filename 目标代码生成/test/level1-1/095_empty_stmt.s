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
	mul r6, r4, r5
	ldr r4, =1
	add r5, r6, r4
	mov r0, r5
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
.L13:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L14:
	b .L13
