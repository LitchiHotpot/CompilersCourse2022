	.arch armv8-a
	.arch_extension crc
	.arm
	.global main
	.type main , %function
main:
	push {r0, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L37:
	ldr r0, =0
	str r0, [fp, #-4]
	ldr r0, addr_@a
	ldr r0, [r0]
	ldr r0, addr_@b
	ldr r0, [r0]
	mul r0, r0, r0
	ldr r0, addr_@c
	ldr r0, [r0]
	sdiv r0, r0, r0
	ldr r0, addr_@e
	ldr r0, [r0]
	ldr r0, addr_@d
	ldr r0, [r0]
	add r0, r0, r0
.L39:
	ldr r0, =1
	str r0, [fp, #-4]
	b .L40
.L40:
	ldr r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, r0
	add sp, sp, #4
	bx lr
.L41:
	ldr r0, addr_@a
	ldr r0, [r0]
	ldr r0, addr_@b
	ldr r0, [r0]
	ldr r0, addr_@c
	ldr r0, [r0]
	mul r0, r0, r0
	sub r0, r0, r0
	ldr r0, addr_@d
	ldr r0, [r0]
	ldr r0, addr_@a
	ldr r0, [r0]
	ldr r0, addr_@c
	ldr r0, [r0]
	sdiv r0, r0, r0
	sub r0, r0, r0
.L42:
	ldr r0, addr_@a
	ldr r0, [r0]
	ldr r0, addr_@a
	ldr r0, [r0]
	ldr r0, addr_@b
	ldr r0, [r0]
	add r0, r0, r0
	mul r0, r0, r0
	ldr r0, addr_@c
	ldr r0, [r0]
	add r0, r0, r0
	ldr r0, addr_@d
	ldr r0, [r0]
	ldr r0, addr_@e
	ldr r0, [r0]
	add r0, r0, r0
.L43:
.L44:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L45:
	b .L44
.L47:
.L48:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L49:
	b .L48
.L51:
.L52:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L53:
	b .L52
.L54:
.L55:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L56:
	b .L55
.L58:
.L59:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L60:
	b .L59
.L61:
.L62:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L63:
	b .L62
.L65:
.L66:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L67:
	b .L66
.L69:
.L70:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L71:
	b .L70
.L72:
.L73:
.L74:
	b .L41
.L75:
.L76:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L77:
	b .L76
.L79:
.L80:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L81:
	b .L80
.L83:
.L84:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L85:
	b .L84
.L87:
.L88:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L89:
	b .L88
.L90:
.L91:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L92:
	b .L91
.L93:
.L94:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L95:
	b .L94
.L97:
.L98:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L99:
	b .L98
.L100:
.L101:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L102:
	b .L101
.L104:
.L105:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L106:
	b .L105
.L108:
.L109:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L110:
	b .L109
.L111:
.L112:
.L113:
	b .L41
.L114:
.L115:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L116:
	b .L115
.L118:
.L119:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L120:
	b .L119
.L122:
.L123:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L124:
	b .L123
.L126:
.L127:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L128:
	b .L127
.L129:
.L130:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L131:
	b .L130
.L132:
.L133:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L134:
	b .L133
.L136:
.L137:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L138:
	b .L137
.L140:
.L141:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L142:
	b .L141
.L144:
.L145:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L146:
	b .L145
.L147:
.L148:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L149:
	b .L148
.L150:
.L151:
.L152:
	b .L40
.L153:
.L154:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L155:
	b .L154
.L157:
.L158:
.L159:
.L160:
.L161:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L162:
	b .L161
