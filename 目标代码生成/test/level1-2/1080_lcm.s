	.arch armv8-a
	.arch_extension crc
	.arm
.data

.global n
.size n, 4
n:
	.word 0
	.global gcd
	.type gcd , %function
gcd:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L39:
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-16]
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-12]
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-20]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L56
	b .L68
.L47:
	mov r0, #0
	add sp, sp, #24
	pop {r4, r5, r6, fp, lr}
	bx lr
.L48:
	b .L47
.L51:
	mov r0, #0
	add sp, sp, #24
	pop {r4, r5, r6, fp, lr}
	bx lr
.L52:
	b .L51
.L56:
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-24]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-20]
	b .L57
.L57:
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-20]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	sdiv r6, r4, r5
	mul r5, r6, r5
	sub r6, r4, r5
	str r6, [fp, #-4]
	b .L92
.L59:
	mov r0, #0
	add sp, sp, #24
	pop {r4, r5, r6, fp, lr}
	bx lr
.L60:
	b .L59
.L63:
	mov r0, #0
	add sp, sp, #24
	pop {r4, r5, r6, fp, lr}
	bx lr
.L64:
	b .L63
.L68:
	b .L57
.L70:
	mov r0, #0
	add sp, sp, #24
	pop {r4, r5, r6, fp, lr}
	bx lr
.L71:
	b .L70
.L74:
	mov r0, #0
	add sp, sp, #24
	pop {r4, r5, r6, fp, lr}
	bx lr
.L75:
	b .L74
.L78:
	mov r0, #0
	add sp, sp, #24
	pop {r4, r5, r6, fp, lr}
	bx lr
.L79:
	b .L78
.L82:
	mov r0, #0
	add sp, sp, #24
	pop {r4, r5, r6, fp, lr}
	bx lr
.L83:
	b .L82
.L86:
	mov r0, #0
	add sp, sp, #24
	pop {r4, r5, r6, fp, lr}
	bx lr
.L87:
	b .L86
.L90:
	mov r0, #0
	add sp, sp, #24
	pop {r4, r5, r6, fp, lr}
	bx lr
.L91:
	b .L90
.L92:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L93
	b .L101
.L93:
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-24]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-20]
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-20]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	sdiv r6, r4, r5
	mul r5, r6, r5
	sub r6, r4, r5
	str r6, [fp, #-4]
	b .L92
.L94:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-12]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mul r6, r4, r5
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	sdiv r5, r6, r4
	mov r0, r5
	add sp, sp, #24
	pop {r4, r5, r6, fp, lr}
	bx lr
.L96:
	mov r0, #0
	add sp, sp, #24
	pop {r4, r5, r6, fp, lr}
	bx lr
.L97:
	b .L96
.L101:
	b .L94
.L103:
	mov r0, #0
	add sp, sp, #24
	pop {r4, r5, r6, fp, lr}
	bx lr
.L104:
	b .L103
.L107:
	mov r0, #0
	add sp, sp, #24
	pop {r4, r5, r6, fp, lr}
	bx lr
.L108:
	b .L107
.L111:
	mov r0, #0
	add sp, sp, #24
	pop {r4, r5, r6, fp, lr}
	bx lr
.L112:
	b .L111
.L115:
	mov r0, #0
	add sp, sp, #24
	pop {r4, r5, r6, fp, lr}
	bx lr
.L116:
	b .L115
.L119:
	mov r0, #0
	add sp, sp, #24
	pop {r4, r5, r6, fp, lr}
	bx lr
.L120:
	b .L119
.L122:
	mov r0, #0
	add sp, sp, #24
	pop {r4, r5, r6, fp, lr}
	bx lr
.L123:
	b .L122
.L126:
	mov r0, #0
	add sp, sp, #24
	pop {r4, r5, r6, fp, lr}
	bx lr
.L127:
	b .L126
.L130:
	mov r0, #0
	add sp, sp, #24
	pop {r4, r5, r6, fp, lr}
	bx lr
.L131:
	b .L130
.L133:
	mov r0, #0
	add sp, sp, #24
	pop {r4, r5, r6, fp, lr}
	bx lr
.L134:
	b .L133
.L137:
	mov r0, #0
	add sp, sp, #24
	pop {r4, r5, r6, fp, lr}
	bx lr
.L138:
	b .L137
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L139:
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-4]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mov r0, r4
	mov r1, r5
	bl gcd
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L143:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L144:
	b .L143
.L147:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L148:
	b .L147
.L151:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L152:
	b .L151
.L155:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L156:
	b .L155
.L159:
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L160:
	b .L159
addr_n:
	.word n
