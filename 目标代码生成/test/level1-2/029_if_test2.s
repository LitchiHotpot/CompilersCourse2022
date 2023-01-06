	.arch armv8-a
	.arch_extension crc
	.arm
	.global ifElseIf
	.type ifElseIf , %function
ifElseIf:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L30:
	ldr r4, =5
	str r4, [fp, #-8]
	ldr r4, =10
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =6
	cmp r4, r5
	beq .L33
	b .L43
.L33:
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
	b .L35
.L34:
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =10
	cmp r4, r5
	beq .L58
	b .L65
.L35:
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L36:
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =11
	cmp r4, r5
	beq .L33
	b .L50
.L38:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L39:
	b .L38
.L43:
	b .L36
.L45:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L46:
	b .L45
.L50:
	b .L34
.L52:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L53:
	b .L52
.L55:
	ldr r4, =25
	str r4, [fp, #-8]
	b .L57
.L56:
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =10
	cmp r4, r5
	beq .L76
	b .L83
.L57:
	b .L35
.L58:
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	cmp r4, r5
	beq .L55
	b .L72
.L60:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L61:
	b .L60
.L65:
	b .L56
.L67:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L68:
	b .L67
.L72:
	b .L56
.L73:
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =15
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L75
.L74:
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r6, =0
	sub r5, r6, r4
	ldr r4, =0
	cmp r5, r4
	movgt r4, #1
	movle r4, #0
	str r5, [fp, #-8]
	b .L75
.L75:
	b .L57
.L76:
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =5
	ldr r7, =0
	sub r6, r7, r5
	ldr r5, =0
	cmp r6, r5
	movgt r5, #1
	movle r5, #0
	cmp r4, r6
	beq .L73
	b .L94
.L78:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L79:
	b .L78
.L83:
	b .L74
.L85:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L86:
	b .L85
.L89:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L90:
	b .L89
.L94:
	b .L74
.L96:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L97:
	b .L96
.L100:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L101:
	b .L100
.L103:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L104:
	b .L103
.L108:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L109:
	b .L108
.L111:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L112:
	b .L111
.L115:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L116:
	b .L115
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L118:
	bl ifElseIf
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	mov r0, #0
	add sp, sp, #0
	pop {r4, r5, fp, lr}
	bx lr
.L120:
	mov r0, #0
	add sp, sp, #0
	pop {r4, r5, fp, lr}
	bx lr
.L121:
	b .L120
