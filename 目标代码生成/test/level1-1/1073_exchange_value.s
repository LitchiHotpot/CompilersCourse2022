	.arch armv8-a
	.arch_extension crc
	.arm
	.global main
	.type main , %function
main:
	push {r0, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L20:
	str v1, [fp, #-12]
	str v3, [fp, #-8]
	ldr r0, [fp, #-12]
	str r0, [fp, #-4]
	ldr r0, [fp, #-8]
	str r0, [fp, #-12]
	ldr r0, [fp, #-4]
	str r0, [fp, #-8]
	ldr r0, [fp, #-12]
	ldr r0, =10
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	ldr r0, [fp, #-8]
	ldr r0, =10
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
	mov r0, #0
	add sp, sp, #12
	bx lr
.L23:
.L24:
	mov r0, #0
	add sp, sp, #12
	bx lr
.L25:
	b .L24
.L27:
.L28:
	mov r0, #0
	add sp, sp, #12
	bx lr
.L29:
	b .L28
.L32:
.L33:
	mov r0, #0
	add sp, sp, #12
	bx lr
.L34:
	b .L33
.L36:
.L37:
	mov r0, #0
	add sp, sp, #12
	bx lr
.L38:
	b .L37
.L40:
.L41:
	mov r0, #0
	add sp, sp, #12
	bx lr
.L42:
	b .L41
.L44:
.L45:
	mov r0, #0
	add sp, sp, #12
	bx lr
.L46:
	b .L45
.L48:
.L49:
.L50:
.L51:
.L52:
	mov r0, #0
	add sp, sp, #12
	bx lr
.L53:
	b .L52
.L55:
.L56:
.L57:
.L58:
.L59:
	mov r0, #0
	add sp, sp, #12
	bx lr
.L60:
	b .L59
.L62:
.L63:
.L64:
.L65:
.L66:
	mov r0, #0
	add sp, sp, #12
	bx lr
.L67:
	b .L66
.L69:
.L70:
.L71:
