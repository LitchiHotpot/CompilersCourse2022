	.arch armv8-a
	.arch_extension crc
	.arm
	.global defn
	.type defn , %function
defn:
	push {fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L2:
	mov r0, #4
	add sp, sp, #0
	pop {fp, lr}
	bx lr
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L3:
	bl defn
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
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
.L6:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, fp, lr}
	bx lr
.L7:
	b .L6
.L10:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, fp, lr}
	bx lr
.L11:
	b .L10
