	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L6:
	ldr r4, =1
	str r4, [fp, #-12]
	ldr r4, =2
	str r4, [fp, #-8]
	ldr r4, =3
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-4]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	add r6, r4, r5
	mov r0, r6
	add sp, sp, #12
	pop {r4, r5, r6, fp, lr}
	bx lr
.L11:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, fp, lr}
	bx lr
.L12:
	b .L11
.L15:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, fp, lr}
	bx lr
.L16:
	b .L15
.L19:
	mov r0, #0
	add sp, sp, #12
	pop {r4, r5, r6, fp, lr}
	bx lr
.L20:
	b .L19
