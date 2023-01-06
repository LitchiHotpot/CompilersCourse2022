	.arch armv8-a
	.arch_extension crc
	.arm
.data

.global a
.size a, 4
a:
	.word 1
.global b
.size b, 4
b:
	.word 0
.global c
.size c, 4
c:
	.word 1
.global d
.size d, 4
d:
	.word 2
.global e
.size e, 4
e:
	.word 4
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L37:
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
	beq .L42
	b .L74
.L39:
	ldr r4, =1
	str r4, [fp, #-4]
	b .L40
.L40:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L41:
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
	moveq r4, #1
	movne r4, #0
	beq .L39
	b .L152
.L42:
	ldr r4, addr_a
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, addr_a
	ldr r6, [r4]
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, addr_b
	ldr r7, [r4]
	cmp r7, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r7
	mul r6, r5, r4
	ldr r4, addr_c
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	ldr r5, addr_d
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_e
	ldr r7, [r5]
	cmp r7, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r7
	cmp r4, r5
	movle r4, #1
	movgt r4, #0
	ble .L39
	b .L113
.L44:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L45:
	b .L44
.L48:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L49:
	b .L48
.L52:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L53:
	b .L52
.L55:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L56:
	b .L55
.L59:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L60:
	b .L59
.L62:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L63:
	b .L62
.L66:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L67:
	b .L66
.L70:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L71:
	b .L70
.L74:
	b .L41
.L76:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L77:
	b .L76
.L80:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L81:
	b .L80
.L84:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L85:
	b .L84
.L88:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L89:
	b .L88
.L91:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L92:
	b .L91
.L94:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L95:
	b .L94
.L98:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L99:
	b .L98
.L101:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L102:
	b .L101
.L105:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L106:
	b .L105
.L109:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L110:
	b .L109
.L113:
	b .L41
.L115:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L116:
	b .L115
.L119:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L120:
	b .L119
.L123:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L124:
	b .L123
.L127:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L128:
	b .L127
.L130:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L131:
	b .L130
.L133:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L134:
	b .L133
.L137:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L138:
	b .L137
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
.L148:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L149:
	b .L148
.L152:
	b .L40
.L154:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L155:
	b .L154
.L161:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L162:
	b .L161
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
