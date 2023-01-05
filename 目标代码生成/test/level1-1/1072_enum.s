	.arch armv8-a
	.arch_extension crc
	.arm
	.global main
	.type main , %function
main:
	push {r0, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L38:
	ldr r0, =0
	str r0, [fp, #-16]
	ldr r0, =0
	str r0, [fp, #-12]
	ldr r0, =0
	str r0, [fp, #-8]
	b .L43
.L43:
	ldr r0, [fp, #-16]
.L44:
	b .L53
.L45:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L46:
.L47:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L48:
	b .L47
.L50:
.L51:
.L52:
	b .L45
.L53:
	ldr r0, [fp, #-12]
	ldr r0, [fp, #-16]
	ldr r0, =101
	sub r0, r0, r0
.L54:
	ldr r0, [fp, #-16]
	ldr r0, =100
	sub r0, r0, r0
	ldr r0, [fp, #-12]
	sub r0, r0, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-16]
	ldr r0, =5
	mul r0, r0, r0
	ldr r0, [fp, #-12]
	ldr r0, =1
	mul r0, r0, r0
	add r0, r0, r0
	ldr r0, [fp, #-8]
	sdiv r0, r0, #2
	add r0, r0, r0
.L55:
	ldr r0, [fp, #-16]
	add r0, r0, #1
	str r0, [fp, #-16]
	b .L43
.L56:
.L57:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L58:
	b .L57
.L60:
.L61:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L62:
	b .L61
.L64:
.L65:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L66:
	b .L65
.L67:
.L68:
.L69:
	b .L55
.L70:
.L71:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L72:
	b .L71
.L74:
.L75:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L76:
	b .L75
.L77:
.L78:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L79:
	b .L78
.L81:
.L82:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L83:
	b .L82
.L84:
	ldr r0, [fp, #-16]
	ldr r0, [fp, #-12]
	ldr r0, [fp, #-8]
	ldr r0, =10
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	b .L85
.L85:
	ldr r0, [fp, #-12]
	add r0, r0, #1
	str r0, [fp, #-12]
	b .L53
.L86:
.L87:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L88:
	b .L87
.L90:
.L91:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L92:
	b .L91
.L93:
.L94:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L95:
	b .L94
.L97:
.L98:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L99:
	b .L98
.L100:
.L101:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L102:
	b .L101
.L103:
.L104:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L105:
	b .L104
.L107:
.L108:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L109:
	b .L108
.L110:
.L111:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L112:
	b .L111
.L113:
.L114:
.L115:
	b .L85
.L116:
.L117:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L118:
	b .L117
.L120:
.L121:
.L122:
.L123:
.L124:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L125:
	b .L124
.L127:
.L128:
.L129:
.L130:
.L131:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L132:
	b .L131
.L134:
.L135:
.L136:
.L137:
.L138:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L139:
	b .L138
.L141:
.L142:
.L143:
.L144:
.L145:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L146:
	b .L145
.L148:
.L149:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L150:
	b .L149
.L151:
.L152:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L153:
	b .L152
.L155:
.L156:
	mov r0, #0
	add sp, sp, #16
	bx lr
.L157:
	b .L156
