	.arch armv8-a
	.arch_extension crc
	.arm
.data

.global a
.size a, 4
a:
	.word 0
.global b
.size b, 4
b:
	.word 0
.global c
.size c, 4
c:
	.word 0
.global d
.size d, 4
d:
	.word 0
.global e
.size e, 4
e:
	.word 0
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L43:
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_a
	str r4, [r5]
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_b
	str r4, [r5]
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_c
	str r4, [r5]
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_d
	str r4, [r5]
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_e
	str r4, [r5]
	ldr r4, =0
	str r4, [fp, #-4]
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
	ldr r4, addr_c
	ldr r7, [r4]
	cmp r7, #0
	movgt r4, #1
	movle r4, #0
	mul r4, r6, r7
	sub r6, r5, r4
	ldr r4, addr_d
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, addr_a
	ldr r7, [r4]
	cmp r7, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, addr_c
	ldr r8, [r4]
	cmp r8, #0
	movgt r4, #1
	movle r4, #0
	sdiv r4, r7, r8
	sub r7, r5, r4
	cmp r6, r7
	movne r4, #1
	moveq r4, #0
	bne .L65
	b .L107
.L45:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L46:
	b .L45
.L49:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L50:
	b .L49
.L53:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L54:
	b .L53
.L57:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L58:
	b .L57
.L61:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L62:
	b .L61
.L65:
	ldr r4, =1
	str r4, [fp, #-4]
	b .L66
.L66:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L67:
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
	ldr r5, addr_c
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	add r5, r4, r6
	ldr r4, addr_d
	ldr r6, [r4]
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, addr_e
	ldr r7, [r4]
	cmp r7, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r7
	cmp r5, r4
	moveq r4, #1
	movne r4, #0
	beq .L65
	b .L171
.L68:
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
	mul r4, r5, r6
	ldr r5, addr_c
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	sdiv r5, r4, r6
	ldr r4, addr_e
	ldr r6, [r4]
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, addr_d
	ldr r7, [r4]
	cmp r7, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r7
	cmp r5, r4
	moveq r4, #1
	movne r4, #0
	beq .L65
	b .L139
.L70:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L71:
	b .L70
.L74:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L75:
	b .L74
.L78:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L79:
	b .L78
.L82:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L83:
	b .L82
.L85:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L86:
	b .L85
.L88:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L89:
	b .L88
.L92:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L93:
	b .L92
.L96:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L97:
	b .L96
.L100:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L101:
	b .L100
.L103:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L104:
	b .L103
.L107:
	b .L68
.L109:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L110:
	b .L109
.L113:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L114:
	b .L113
.L117:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L118:
	b .L117
.L120:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L121:
	b .L120
.L124:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L125:
	b .L124
.L127:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L128:
	b .L127
.L131:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L132:
	b .L131
.L135:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L136:
	b .L135
.L139:
	b .L67
.L141:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L142:
	b .L141
.L145:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L146:
	b .L145
.L149:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L150:
	b .L149
.L152:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L153:
	b .L152
.L156:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L157:
	b .L156
.L159:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L160:
	b .L159
.L163:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L164:
	b .L163
.L167:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L168:
	b .L167
.L171:
	b .L66
.L173:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L174:
	b .L173
addr_a:
	.word a
addr_b:
	.word b
addr_c:
	.word c
addr_d:
	.word d
addr_e:
	.word e
