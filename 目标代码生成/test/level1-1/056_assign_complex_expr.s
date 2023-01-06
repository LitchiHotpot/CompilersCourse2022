	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
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
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	mul r6, r4, r5
	ldr r4, =2
	sdiv r5, r6, r4
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-16]
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	sub r7, r4, r6
	add r4, r5, r7
	ldr r5, [fp, #-12]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, =3
	add r7, r5, r6
	ldr r5, =0
	sub r6, r5, r7
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	sdiv r7, r6, r5
	mul r5, r7, r5
	sub r7, r6, r5
	sub r5, r4, r7
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
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
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-16]
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	sub r7, r4, r6
	ldr r4, =0
	sub r6, r4, r7
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	add r4, r5, r6
	ldr r5, [fp, #-12]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, =2
	add r7, r5, r6
	ldr r5, =2
	sdiv r6, r7, r5
	mul r5, r6, r5
	sub r6, r7, r5
	ldr r5, =0
	sub r7, r5, r6
	cmp r7, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r4, r7
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r4, r5
	str r6, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L46:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L47:
	b .L46
.L50:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L51:
	b .L50
.L54:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L55:
	b .L54
.L57:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L58:
	b .L57
.L60:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L61:
	b .L60
.L64:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L65:
	b .L64
.L68:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L69:
	b .L68
.L71:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L72:
	b .L71
.L74:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L75:
	b .L74
.L78:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L79:
	b .L78
.L81:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L82:
	b .L81
.L85:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L86:
	b .L85
.L88:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L89:
	b .L88
.L91:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L92:
	b .L91
.L98:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L99:
	b .L98
.L102:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L103:
	b .L102
.L105:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L106:
	b .L105
.L108:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L109:
	b .L108
.L112:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L113:
	b .L112
.L116:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L117:
	b .L116
.L119:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L120:
	b .L119
.L123:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L124:
	b .L123
.L126:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L127:
	b .L126
.L130:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L131:
	b .L130
.L133:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L134:
	b .L133
.L136:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L137:
	b .L136
.L140:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L141:
	b .L140
.L143:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L144:
	b .L143
.L147:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L148:
	b .L147
.L150:
	mov r0, #0
	add sp, sp, #20
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L151:
	b .L150
