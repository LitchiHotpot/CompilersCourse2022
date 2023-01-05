	.arch armv8-a
	.arch_extension crc
	.arm
	.global main
	.type main , %function
main:
	push {r0, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L25:
	ldr r0, =56
	str r0, [fp, #-8]
	ldr r0, =4
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	sub r0, r0, v4
	ldr r0, [fp, #-4]
	add r0, r0, r0
	str r0, [fp, #-8]
	ldr r0, [fp, #-8]
.L28:
.L29:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L30:
	b .L29
.L32:
.L33:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L34:
	b .L33
.L36:
.L37:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L38:
	b .L37
.L39:
.L40:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L41:
	b .L40
.L44:
.L45:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L46:
	b .L45
.L47:
.L48:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L49:
	b .L48
.L50:
	str v18, [fp, #-8]
	b .L52
.L51:
	ldr r0, [fp, #-4]
	ldr r0, =0
	add r0, r0, r0
	str r0, [fp, #-8]
	b .L52
.L52:
	ldr r0, [fp, #-8]
	mov r0, #0
	add sp, sp, #8
	bx lr
.L53:
.L54:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L55:
	b .L54
.L59:
.L60:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L61:
	b .L60
.L64:
.L65:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L66:
	b .L65
.L69:
.L70:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L71:
	b .L70
.L72:
.L73:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L74:
	b .L73
.L77:
.L78:
.L79:
	b .L51
.L80:
.L81:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L82:
	b .L81
.L84:
.L85:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L86:
	b .L85
.L88:
.L89:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L90:
	b .L89
.L92:
.L93:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L94:
	b .L93
.L97:
.L98:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L99:
	b .L98
.L100:
.L101:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L102:
	b .L101
.L103:
.L104:
	mov r0, #0
	add sp, sp, #8
	bx lr
.L105:
	b .L104
.L107:
.L108:
.L109:
