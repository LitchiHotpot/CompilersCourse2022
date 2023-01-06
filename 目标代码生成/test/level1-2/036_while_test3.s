	.arch armv8-a
	.arch_extension crc
	.arm
.data

.global g
.size g, 4
g:
	.word 0
.global h
.size h, 4
h:
	.word 0
.global f
.size f, 4
f:
	.word 0
.global e
.size e, 4
e:
	.word 0
	.global EightWhile
	.type EightWhile , %function
EightWhile:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L85:
	ldr r4, =5
	str r4, [fp, #-16]
	ldr r4, =6
	str r4, [fp, #-12]
	ldr r4, =7
	str r4, [fp, #-8]
	ldr r4, =10
	str r4, [fp, #-4]
	b .L90
.L90:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #20
	movlt r4, #1
	movge r4, #0
	blt .L91
	b .L99
.L91:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r4, r5
	str r6, [fp, #-16]
	b .L107
.L92:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-12]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-4]
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	add r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, addr_e
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r7, #1
	movle r7, #0
	add r7, r5, r4
	ldr r4, addr_g
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	sub r4, r7, r5
	ldr r5, addr_h
	ldr r7, [r5]
	cmp r7, #0
	movgt r5, #1
	movle r5, #0
	add r5, r4, r7
	sub r4, r6, r5
	mov r0, r4
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L94:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L95:
	b .L94
.L99:
	b .L92
.L101:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L102:
	b .L101
.L105:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L106:
	b .L105
.L107:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L108
	b .L116
.L108:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-12]
	b .L124
.L109:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	sub r6, r4, r5
	str r6, [fp, #-12]
	b .L90
.L111:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L112:
	b .L111
.L116:
	b .L109
.L118:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L119:
	b .L118
.L122:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L123:
	b .L122
.L124:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #7
	moveq r4, #1
	movne r4, #0
	beq .L125
	b .L133
.L125:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	sub r6, r4, r5
	str r6, [fp, #-8]
	b .L141
.L126:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L107
.L128:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L129:
	b .L128
.L133:
	b .L126
.L135:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L136:
	b .L135
.L139:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L140:
	b .L139
.L141:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #20
	movlt r4, #1
	movge r4, #0
	blt .L142
	b .L150
.L142:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r4, r5
	str r6, [fp, #-4]
	b .L158
.L143:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	sub r6, r4, r5
	str r6, [fp, #-4]
	b .L124
.L145:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L146:
	b .L145
.L150:
	b .L143
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
.L158:
	ldr r4, addr_e
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	cmp r5, #1
	movgt r4, #1
	movle r4, #0
	bgt .L159
	b .L167
.L159:
	ldr r4, addr_e
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =1
	sub r6, r5, r4
	ldr r4, addr_e
	str r6, [r4]
	b .L175
.L160:
	ldr r4, addr_e
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =1
	add r6, r5, r4
	ldr r4, addr_e
	str r6, [r4]
	b .L141
.L162:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L163:
	b .L162
.L167:
	b .L160
.L169:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L170:
	b .L169
.L173:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L174:
	b .L173
.L175:
	ldr r4, addr_f
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	cmp r5, #2
	movgt r4, #1
	movle r4, #0
	bgt .L176
	b .L184
.L176:
	ldr r4, addr_f
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =2
	sub r6, r5, r4
	ldr r4, addr_f
	str r6, [r4]
	b .L192
.L177:
	ldr r4, addr_f
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =1
	add r6, r5, r4
	ldr r4, addr_f
	str r6, [r4]
	b .L158
.L179:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L180:
	b .L179
.L184:
	b .L177
.L186:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L187:
	b .L186
.L190:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L191:
	b .L190
.L192:
	ldr r4, addr_g
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	cmp r5, #3
	movlt r4, #1
	movge r4, #0
	blt .L193
	b .L201
.L193:
	ldr r4, addr_g
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =10
	add r6, r5, r4
	ldr r4, addr_g
	str r6, [r4]
	b .L209
.L194:
	ldr r4, addr_g
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =8
	sub r6, r5, r4
	ldr r4, addr_g
	str r6, [r4]
	b .L175
.L196:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L197:
	b .L196
.L201:
	b .L194
.L203:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L204:
	b .L203
.L207:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L208:
	b .L207
.L209:
	ldr r4, addr_h
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	cmp r5, #10
	movlt r4, #1
	movge r4, #0
	blt .L210
	b .L218
.L210:
	ldr r4, addr_h
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =8
	add r6, r5, r4
	ldr r4, addr_h
	str r6, [r4]
	b .L209
.L211:
	ldr r4, addr_h
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =1
	sub r6, r5, r4
	ldr r4, addr_h
	str r6, [r4]
	b .L192
.L213:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L214:
	b .L213
.L218:
	b .L211
.L220:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L221:
	b .L220
.L224:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L225:
	b .L224
.L227:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L228:
	b .L227
.L231:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L232:
	b .L231
.L234:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L235:
	b .L234
.L238:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L239:
	b .L238
.L241:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L242:
	b .L241
.L245:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L246:
	b .L245
.L248:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L249:
	b .L248
.L252:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L253:
	b .L252
.L255:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L256:
	b .L255
.L259:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L260:
	b .L259
.L262:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L263:
	b .L262
.L266:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L267:
	b .L266
.L269:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L270:
	b .L269
.L273:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L274:
	b .L273
.L276:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L277:
	b .L276
.L280:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L281:
	b .L280
.L284:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L285:
	b .L284
.L288:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L289:
	b .L288
.L291:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L292:
	b .L291
.L294:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L295:
	b .L294
.L298:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L299:
	b .L298
.L301:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L302:
	b .L301
.L305:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L306:
	b .L305
.L309:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L310:
	b .L309
.L312:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L313:
	b .L312
.L316:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L317:
	b .L316
.L319:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L320:
	b .L319
.L323:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L324:
	b .L323
.L326:
	mov r0, #0
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L327:
	b .L326
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L328:
	ldr r4, =1
	ldr r5, addr_g
	str r4, [r5]
	ldr r4, =2
	ldr r5, addr_h
	str r4, [r5]
	ldr r4, =4
	ldr r5, addr_e
	str r4, [r5]
	ldr r4, =6
	ldr r5, addr_f
	str r4, [r5]
	bl EightWhile
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #0
	pop {r4, r5, fp, lr}
	bx lr
.L330:
	mov r0, #0
	add sp, sp, #0
	pop {r4, r5, fp, lr}
	bx lr
.L331:
	b .L330
addr_g:
	.word g
addr_h:
	.word h
addr_f:
	.word f
addr_e:
	.word e
