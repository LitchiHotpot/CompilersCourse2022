	.arch armv8-a
	.arch_extension crc
	.arm
	.global main
	.type main , %function
main:
	push {r0, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L43:
	ldr r0, addr_@a
	str v1, [r0]
	ldr r0, addr_@b
	str v3, [r0]
	ldr r0, addr_@c
	str v5, [r0]
	ldr r0, addr_@d
	str v7, [r0]
	ldr r0, addr_@e
	str v9, [r0]
	ldr r0, =0
	str r0, [fp, #-4]
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
.L44:
.L45:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L46:
	b .L45
.L48:
.L49:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L50:
	b .L49
.L52:
.L53:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L54:
	b .L53
.L56:
.L57:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L58:
	b .L57
.L60:
.L61:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L62:
	b .L61
.L65:
	ldr r0, =1
	str r0, [fp, #-4]
	b .L66
.L66:
	ldr r0, [fp, #-4]
	mov r0, r0
	add sp, sp, #4
	bx lr
.L67:
	ldr r0, addr_@a
	ldr r0, [r0]
	ldr r0, addr_@b
	ldr r0, [r0]
	add r0, r0, r0
	ldr r0, addr_@c
	ldr r0, [r0]
	add r0, r0, r0
	ldr r0, addr_@d
	ldr r0, [r0]
	ldr r0, addr_@e
	ldr r0, [r0]
	add r0, r0, r0
.L68:
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
.L69:
.L70:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L71:
	b .L70
.L73:
.L74:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L75:
	b .L74
.L77:
.L78:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L79:
	b .L78
.L81:
.L82:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L83:
	b .L82
.L84:
.L85:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L86:
	b .L85
.L87:
.L88:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L89:
	b .L88
.L91:
.L92:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L93:
	b .L92
.L95:
.L96:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L97:
	b .L96
.L99:
.L100:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L101:
	b .L100
.L102:
.L103:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L104:
	b .L103
.L105:
.L106:
.L107:
	b .L68
.L108:
.L109:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L110:
	b .L109
.L112:
.L113:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L114:
	b .L113
.L116:
.L117:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L118:
	b .L117
.L119:
.L120:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L121:
	b .L120
.L123:
.L124:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L125:
	b .L124
.L126:
.L127:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L128:
	b .L127
.L130:
.L131:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L132:
	b .L131
.L134:
.L135:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L136:
	b .L135
.L137:
.L138:
.L139:
	b .L67
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
.L148:
.L149:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L150:
	b .L149
.L151:
.L152:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L153:
	b .L152
.L155:
.L156:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L157:
	b .L156
.L158:
.L159:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L160:
	b .L159
.L162:
.L163:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L164:
	b .L163
.L166:
.L167:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L168:
	b .L167
.L169:
.L170:
.L171:
	b .L66
.L172:
.L173:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L174:
	b .L173
