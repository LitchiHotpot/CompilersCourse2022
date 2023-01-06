	.arch armv8-a
	.arch_extension crc
	.arm
	.global FourWhile
	.type FourWhile , %function
FourWhile:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L41:
	ldr r4, =5
	str r4, [fp, #-16]
	ldr r4, =6
	str r4, [fp, #-12]
	ldr r4, =7
	str r4, [fp, #-8]
	ldr r4, =10
	str r4, [fp, #-4]
	b .L46
.L46:
	ldr r4, [fp, #-16]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =20
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L47
	b .L55
.L47:
	ldr r4, [fp, #-16]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r4, r5
	str r6, [fp, #-16]
	b .L63
.L48:
	ldr r4, [fp, #-16]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-12]
	ldr r6, =0
	cmp r5, r6
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-4]
	ldr r7, =0
	cmp r6, r7
	movgt r7, #1
	movle r7, #0
	add r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-8]
	ldr r6, =0
	cmp r4, r6
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	mov r0, r6
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L50:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L51:
	b .L50
.L55:
	b .L48
.L57:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L58:
	b .L57
.L61:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L62:
	b .L61
.L63:
	ldr r4, [fp, #-12]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =10
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L64
	b .L72
.L64:
	ldr r4, [fp, #-12]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-12]
	b .L80
.L65:
	ldr r4, [fp, #-12]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	sub r6, r4, r5
	str r6, [fp, #-12]
	b .L46
.L67:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L68:
	b .L67
.L72:
	b .L65
.L74:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L75:
	b .L74
.L78:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L79:
	b .L78
.L80:
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =7
	cmp r4, r5
	beq .L81
	b .L89
.L81:
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	sub r6, r4, r5
	str r6, [fp, #-8]
	b .L97
.L82:
	ldr r4, [fp, #-8]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L63
.L84:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L85:
	b .L84
.L89:
	b .L82
.L91:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L92:
	b .L91
.L95:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L96:
	b .L95
.L97:
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =20
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L98
	b .L106
.L98:
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r4, r5
	str r6, [fp, #-4]
	b .L97
.L99:
	ldr r4, [fp, #-4]
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	sub r6, r4, r5
	str r6, [fp, #-4]
	b .L80
.L101:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L102:
	b .L101
.L106:
	b .L99
.L108:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L109:
	b .L108
.L112:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L113:
	b .L112
.L115:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L116:
	b .L115
.L119:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L120:
	b .L119
.L122:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L123:
	b .L122
.L126:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L127:
	b .L126
.L129:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L130:
	b .L129
.L133:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L134:
	b .L133
.L136:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L137:
	b .L136
.L140:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L141:
	b .L140
.L144:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L145:
	b .L144
.L148:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L149:
	b .L148
.L151:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L152:
	b .L151
.L154:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L155:
	b .L154
.L158:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L159:
	b .L158
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L160:
	bl FourWhile
	mov r4, r0
	ldr r5, =0
	cmp r4, r5
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #0
	pop {r4, r5, fp, lr}
	bx lr
.L162:
	mov r0, #0
	add sp, sp, #0
	pop {r4, r5, fp, lr}
	bx lr
.L163:
	b .L162
