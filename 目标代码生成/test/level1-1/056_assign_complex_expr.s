	.arch armv8-a
	.arch_extension crc
	.arm
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
	ldr r6, =0
	sub r5, r6, r4
	ldr r4, =0
	cmp r5, r4
	movgt r4, #1
	movle r4, #0
	str r5, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	mul r6, r4, r5
	ldr r4, =2
	sdiv r5, r6, r4
	ldr r4, [fp, #-20]
	ldr r6, =0
	cmp r4, r6
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-16]
	ldr r7, =0
	cmp r6, r7
	movgt r7, #1
	movle r7, #0
	sub r7, r4, r6
	add r4, r5, r7
	ldr r5, [fp, #-12]
	ldr r6, =0
	cmp r5, r6
	movgt r6, #1
	movle r6, #0
	ldr r6, =3
	add r7, r5, r6
	ldr r6, =0
	sub r5, r6, r7
	ldr r6, =0
	cmp r5, r6
	movgt r6, #1
	movle r6, #0
	ldr r6, =2
	sdiv r7, r5, r6
	mul r6, r7, r6
	sub r7, r5, r6
	sub r5, r4, r7
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r4, #1
	movle r4, #0
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	sdiv r6, r4, r5
	mul r6, r6, r5
	sub r5, r4, r6
	ldr r4, =67
	add r6, r5, r4
	ldr r4, [fp, #-20]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-16]
	ldr r7, =0
	cmp r5, r7
	movgt r7, #1
	movle r7, #0
	sub r7, r4, r5
	ldr r5, =0
	sub r4, r5, r7
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-12]
	ldr r6, =0
	cmp r4, r6
	movgt r6, #1
	movle r6, #0
	ldr r6, =2
	add r7, r4, r6
	ldr r4, =2
	sdiv r6, r7, r4
	mul r4, r6, r4
	sub r6, r7, r4
	ldr r7, =0
	sub r4, r7, r6
	ldr r6, =0
	cmp r4, r6
	movgt r6, #1
	movle r6, #0
	sub r6, r5, r4
	str r6, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r4, r5
	str r6, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r4, #1
	movle r4, #0
	mov r0, #0
	add sp, sp, #20
	bx lr
.L45:
.L46:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L47:
	b .L46
.L49:
.L50:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L51:
	b .L50
.L53:
.L54:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L55:
	b .L54
.L56:
.L57:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L58:
	b .L57
.L59:
.L60:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L61:
	b .L60
.L63:
.L64:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L65:
	b .L64
.L67:
.L68:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L69:
	b .L68
.L70:
.L71:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L72:
	b .L71
.L73:
.L74:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L75:
	b .L74
.L77:
.L78:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L79:
	b .L78
.L80:
.L81:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L82:
	b .L81
.L84:
.L85:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L86:
	b .L85
.L87:
.L88:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L89:
	b .L88
.L90:
.L91:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L92:
	b .L91
.L94:
.L95:
.L96:
.L97:
.L98:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L99:
	b .L98
.L101:
.L102:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L103:
	b .L102
.L104:
.L105:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L106:
	b .L105
.L107:
.L108:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L109:
	b .L108
.L111:
.L112:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L113:
	b .L112
.L115:
.L116:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L117:
	b .L116
.L118:
.L119:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L120:
	b .L119
.L122:
.L123:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L124:
	b .L123
.L125:
.L126:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L127:
	b .L126
.L129:
.L130:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L131:
	b .L130
.L132:
.L133:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L134:
	b .L133
.L135:
.L136:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L137:
	b .L136
.L139:
.L140:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L141:
	b .L140
.L142:
.L143:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L144:
	b .L143
.L146:
.L147:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L148:
	b .L147
.L149:
.L150:
	mov r0, #0
	add sp, sp, #20
	bx lr
.L151:
	b .L150
.L153:
.L154:
.L155:
