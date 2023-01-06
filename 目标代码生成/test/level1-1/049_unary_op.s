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
.L13:
	ldr r4, =10
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	ldr r5, =1
	eor r6, r5, r4
	mov r4, r6
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	ldr r5, =1
	eor r6, r5, r4
	mov r4, r6
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	ldr r5, =1
	eor r6, r5, r4
	mov r4, r6
	ldr r5, =0
	sub r6, r5, r4
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	bgt .L15
	b .L44
.L15:
	ldr r4, =1
	ldr r5, =0
	sub r6, r5, r4
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =0
	sub r5, r4, r6
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =0
	sub r6, r4, r5
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	str r6, [fp, #-4]
	b .L17
.L16:
	ldr r4, =0
	str r4, [fp, #-4]
	b .L17
.L17:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L19:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L20:
	b .L19
.L25:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L26:
	b .L25
.L30:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L31:
	b .L30
.L35:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L36:
	b .L35
.L38:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L39:
	b .L38
.L44:
	b .L16
.L46:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L47:
	b .L46
.L50:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L51:
	b .L50
.L54:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L55:
	b .L54
.L58:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L59:
	b .L58
