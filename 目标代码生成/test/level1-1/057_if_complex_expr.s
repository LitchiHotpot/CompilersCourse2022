	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L39:
	ldr r4, =5
	str r4, [fp, #-20]
	ldr r4, =5
	str r4, [fp, #-16]
	ldr r4, =1
	str r4, [fp, #-12]
	ldr r4, =2
	ldr r5, =0
	sub r6, r5, r4
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	str r6, [fp, #-8]
	ldr r4, =2
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	mul r6, r4, r5
	ldr r4, =2
	sdiv r5, r6, r4
	cmp r5, #0
	movlt r4, #1
	movge r4, #0
	blt .L49
	b .L64
.L46:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L47:
	b .L46
.L49:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	b .L50
.L50:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	sdiv r6, r4, r5
	mul r5, r6, r5
	sub r6, r4, r5
	ldr r4, =67
	add r5, r6, r4
	cmp r5, #0
	movlt r4, #1
	movge r4, #0
	blt .L100
	b .L115
.L51:
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-16]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	sub r6, r4, r5
	cmp r6, #0
	movne r4, #1
	moveq r4, #0
	bne .L65
	b .L79
.L53:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L54:
	b .L53
.L57:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L58:
	b .L57
.L60:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L61:
	b .L60
.L64:
	b .L51
.L65:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r4, r5
	ldr r4, =2
	sdiv r5, r6, r4
	mul r4, r5, r4
	sub r5, r6, r4
	cmp r5, #0
	movne r4, #1
	moveq r4, #0
	bne .L49
	b .L92
.L67:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L68:
	b .L67
.L71:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L72:
	b .L71
.L75:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L76:
	b .L75
.L79:
	b .L50
.L81:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L82:
	b .L81
.L85:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L86:
	b .L85
.L88:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L89:
	b .L88
.L92:
	b .L50
.L94:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L95:
	b .L94
.L100:
	ldr r4, =4
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	b .L101
.L101:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L102:
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-16]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	sub r6, r4, r5
	cmp r6, #0
	movne r4, #1
	moveq r4, #0
	bne .L116
	b .L130
.L104:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L105:
	b .L104
.L108:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L109:
	b .L108
.L111:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L112:
	b .L111
.L115:
	b .L102
.L116:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	add r6, r4, r5
	ldr r4, =2
	sdiv r5, r6, r4
	mul r4, r5, r4
	sub r5, r6, r4
	cmp r5, #0
	movne r4, #1
	moveq r4, #0
	bne .L100
	b .L143
.L118:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L119:
	b .L118
.L122:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L123:
	b .L122
.L126:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L127:
	b .L126
.L130:
	b .L101
.L132:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L133:
	b .L132
.L136:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L137:
	b .L136
.L139:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L140:
	b .L139
.L143:
	b .L101
.L145:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L146:
	b .L145
