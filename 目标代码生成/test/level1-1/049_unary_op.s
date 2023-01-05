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
	ldr r0, =10
	str r0, [fp, #-4]
	ldr r0, [fp, #-4]
.L15:
	str v10, [fp, #-4]
	b .L17
.L16:
	ldr r0, =0
	str r0, [fp, #-4]
	b .L17
.L17:
	ldr r0, [fp, #-4]
	mov r0, r0
	add sp, sp, #4
	bx lr
.L18:
.L19:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L20:
	b .L19
.L24:
.L25:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L26:
	b .L25
.L29:
.L30:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L31:
	b .L30
.L34:
.L35:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L36:
	b .L35
.L37:
.L38:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L39:
	b .L38
.L42:
.L43:
.L44:
	b .L16
.L45:
.L46:
	mov r0, #0
	add sp, sp, #4
	bx lr
.L47:
	b .L46
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
