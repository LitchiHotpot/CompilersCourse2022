	.arch armv8-a
	.arch_extension crc
	.arm
	.global main
	.type main , %function
main:
	push {r0, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L13:
	ldr r0, addr_@a
	str v1, [r0]
	ldr r0, addr_@b
	str v3, [r0]
	ldr r0, addr_@a
	ldr r0, [r0]
	ldr r0, addr_@b
	ldr r0, [r0]
.L14:
.L15:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L16:
	b .L15
.L18:
.L19:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L20:
	b .L19
.L23:
	ldr r0, =1
	str r0, [fp, #-4]
	b .L25
.L24:
	ldr r0, =0
	str r0, [fp, #-4]
	b .L25
.L25:
	ldr r0, [fp, #-4]
	mov r0, r0
	add sp, sp, #4
	bx lr
.L26:
	ldr r0, addr_@a
	ldr r0, [r0]
.L27:
.L28:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L29:
	b .L28
.L31:
.L32:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L33:
	b .L32
.L35:
.L36:
.L37:
	b .L24
.L38:
.L39:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L40:
	b .L39
.L42:
.L43:
.L44:
	b .L24
.L45:
.L46:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L47:
	b .L46
