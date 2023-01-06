	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L38:
	ldr r4, =0
	str r4, [fp, #-16]
	ldr r4, =0
	str r4, [fp, #-12]
	ldr r4, =0
	str r4, [fp, #-8]
	b .L43
.L43:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #21
	movlt r4, #1
	movge r4, #0
	blt .L44
	b .L52
.L44:
	b .L53
.L45:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L47:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L48:
	b .L47
.L52:
	b .L45
.L53:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-16]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, =101
	sub r7, r6, r5
	cmp r4, r7
	movlt r4, #1
	movge r4, #0
	blt .L54
	b .L69
.L54:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =100
	sub r6, r5, r4
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r6, r4
	str r5, [fp, #-8]
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =5
	mul r6, r5, r4
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	mul r7, r5, r4
	add r4, r6, r7
	ldr r5, [fp, #-8]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, =2
	sdiv r7, r5, r6
	add r5, r4, r7
	cmp r5, #100
	moveq r4, #1
	movne r4, #0
	beq .L84
	b .L115
.L55:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-16]
	b .L43
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
.L65:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L66:
	b .L65
.L69:
	b .L55
.L71:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L72:
	b .L71
.L75:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L76:
	b .L75
.L78:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L79:
	b .L78
.L82:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L83:
	b .L82
.L84:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	ldr r4, [fp, #-12]
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
	mov r0, r4
	bl putint
	mov r4, r0
	ldr r4, =10
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putch
	mov r4, r0
	b .L85
.L85:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-12]
	b .L53
.L87:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L88:
	b .L87
.L91:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L92:
	b .L91
.L94:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L95:
	b .L94
.L98:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L99:
	b .L98
.L101:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L102:
	b .L101
.L104:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L105:
	b .L104
.L108:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L109:
	b .L108
.L111:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L112:
	b .L111
.L115:
	b .L85
.L117:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L118:
	b .L117
.L124:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L125:
	b .L124
.L131:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L132:
	b .L131
.L138:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L139:
	b .L138
.L145:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L146:
	b .L145
.L149:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L150:
	b .L149
.L152:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L153:
	b .L152
.L156:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L157:
	b .L156
