	.arch armv8-a
	.arch_extension crc
	.arm
.data

.global s
.size s, 4
s:
	.word 0
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L2:
	ldr r4, =10
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =0
	cmp r4, r5
	movgt r4, #1
	movle r4, #0
	bgt .L4
	b .L12
.L4:
	mov r0, #1
	add sp, sp, #4
	bx lr
	b .L5
.L5:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L6:
.L7:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L8:
	b .L7
.L10:
.L11:
.L12:
	b .L5
addr_s:
	.word s
