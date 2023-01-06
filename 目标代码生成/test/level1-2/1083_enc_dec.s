	.arch armv8-a
	.arch_extension crc
	.arm
	.global enc
	.type enc , %function
enc:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L30:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =25
	cmp r4, r5
	movgt r4, #1
	movle r4, #0
	bgt .L33
	b .L42
.L33:
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =60
	add r6, r4, r5
	str r6, [fp, #-4]
	b .L35
.L34:
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =15
	sub r6, r4, r5
	str r6, [fp, #-4]
	b .L35
.L35:
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L37:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L38:
	b .L37
.L42:
	b .L34
.L44:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L45:
	b .L44
.L48:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L49:
	b .L48
.L51:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L52:
	b .L51
.L55:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L56:
	b .L55
.L58:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L59:
	b .L58
	.global dec
	.type dec , %function
dec:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L61:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =85
	cmp r4, r5
	movgt r4, #1
	movle r4, #0
	bgt .L64
	b .L73
.L64:
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =59
	sub r6, r4, r5
	str r6, [fp, #-4]
	b .L66
.L65:
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =14
	add r6, r4, r5
	str r6, [fp, #-4]
	b .L66
.L66:
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L68:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L69:
	b .L68
.L73:
	b .L65
.L75:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L76:
	b .L75
.L79:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L80:
	b .L79
.L82:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L83:
	b .L82
.L86:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L87:
	b .L86
.L89:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L90:
	b .L89
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L92:
	ldr r4, =400
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl enc
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
	bl dec
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
	bl putint
	mov r4, r0
	ldr r4, =10
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putch
	mov r4, r0
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, fp, lr}
	bx lr
.L96:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, fp, lr}
	bx lr
.L97:
	b .L96
.L100:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, fp, lr}
	bx lr
.L101:
	b .L100
.L104:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, fp, lr}
	bx lr
.L105:
	b .L104
.L108:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, fp, lr}
	bx lr
.L109:
	b .L108
.L112:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, fp, lr}
	bx lr
.L113:
	b .L112
.L119:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, fp, lr}
	bx lr
.L120:
	b .L119
