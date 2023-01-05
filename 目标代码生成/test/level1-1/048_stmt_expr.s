	.arch armv8-a
	.arch_extension crc
	.arm
	.global main
	.type main , %function
main:
	push {r0, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L17:
	ldr r0, =0
	str r0, [fp, #-4]
	ldr r0, =1
	ldr r0, addr_@k
	str r0, [r0]
	b .L19
.L19:
	ldr r0, [fp, #-4]
	ldr r0, addr_@n
	ldr r0, [r0]
	sub r0, r0, #1
.L20:
	ldr r0, [fp, #-4]
	add r0, r0, #1
	str r0, [fp, #-4]
	ldr r0, addr_@k
	ldr r0, [r0]
	add r0, r0, #1
	ldr r0, addr_@k
	ldr r0, [r0]
	ldr r0, addr_@k
	ldr r0, [r0]
	add r0, r0, r0
	ldr r0, addr_@k
	str r0, [r0]
	b .L19
.L21:
	ldr r0, addr_@k
	ldr r0, [r0]
	ldr r0, addr_@k
	ldr r0, [r0]
	mov r0, r0
	add sp, sp, #4
	bx lr
.L22:
.L23:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L24:
	b .L23
.L26:
.L27:
.L28:
.L29:
.L30:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L31:
	b .L30
.L32:
.L33:
.L34:
	b .L21
.L35:
.L36:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L37:
	b .L36
.L39:
.L40:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L41:
	b .L40
.L42:
.L43:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L44:
	b .L43
.L46:
.L47:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L48:
	b .L47
.L49:
.L50:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L51:
	b .L50
.L53:
.L54:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L55:
	b .L54
.L57:
.L58:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L59:
	b .L58
.L60:
.L61:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L62:
	b .L61
.L64:
.L65:
.L66:
.L67:
.L68:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L69:
	b .L68
