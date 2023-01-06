	.arch armv8-a
	.arch_extension crc
	.arm
.data

.global a
.size a, 4
a:
	.word 3
.global b
.size b, 4
b:
	.word 5
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L3:
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
	add r4, r5, r6
	mov r0, r4
	add sp, sp, #0
	pop {r4, r5, r6, fp, lr}
	bx lr
.L5:
	mov r0, #0
	add sp, sp, #0
	pop {r4, r5, r6, fp, lr}
	bx lr
.L6:
	b .L5
.L9:
	mov r0, #0
	add sp, sp, #0
	pop {r4, r5, r6, fp, lr}
	bx lr
.L10:
	b .L9
.L13:
	mov r0, #0
	add sp, sp, #0
	pop {r4, r5, r6, fp, lr}
	bx lr
.L14:
	b .L13
addr_a:
	.word a
addr_b:
	.word b
