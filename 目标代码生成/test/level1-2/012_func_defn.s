	.arch armv8-a
	.arch_extension crc
	.arm
.data

.global a
.size a, 4
a:
	.word 0
	.global func
	.type func , %function
func:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L9:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	sub r6, r4, r5
	str r6, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L13:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L14:
	b .L13
.L17:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L18:
	b .L17
.L20:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L21:
	b .L20
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L23:
	ldr r4, =10
	ldr r5, addr_a
	str r4, [r5]
	ldr r4, addr_a
	ldr r5, [r4]
	ldr r4, =0
	cmp r5, r4
	movgt r4, #1
	movle r4, #0
	mov r0, r5
	bl func
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
.L26:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, fp, lr}
	bx lr
.L27:
	b .L26
.L30:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, fp, lr}
	bx lr
.L31:
	b .L30
.L34:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, fp, lr}
	bx lr
.L35:
	b .L34
addr_a:
	.word a
