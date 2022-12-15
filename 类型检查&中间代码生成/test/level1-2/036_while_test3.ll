@g = global i32 0, align 4
@h = global i32 0, align 4
@f = global i32 0, align 4
@e = global i32 0, align 4
define i32 @EightWhile() {
B85:
  %t89 = alloca i32, align 4
  %t88 = alloca i32, align 4
  %t87 = alloca i32, align 4
  %t86 = alloca i32, align 4
  store i32 5, i32* %t86, align 4
  store i32 6, i32* %t87, align 4
  store i32 7, i32* %t88, align 4
  store i32 10, i32* %t89, align 4
  br label %B90
B90:                               	; preds = %B85, %B109
  %t4 = load i32, i32* %t86, align 4
  %t96 = icmp sgt i32 %t4, 0
  %t5 = icmp slt i32 %t4, 20
  br i1 %t5, label %B91, label %B99
B91:                               	; preds = %B90
  %t7 = load i32, i32* %t86, align 4
  %t103 = icmp sgt i32 %t7, 0
  %t8 = add i32 %t7, 3
  store i32 %t8, i32* %t86, align 4
  br label %B107
B99:                               	; preds = %B90
  br label %B92
B107:                               	; preds = %B91, %B126
  %t9 = load i32, i32* %t87, align 4
  %t113 = icmp sgt i32 %t9, 0
  %t10 = icmp slt i32 %t9, 10
  br i1 %t10, label %B108, label %B116
B92:                               	; preds = %B99
  %t65 = load i32, i32* %t86, align 4
  %t278 = icmp sgt i32 %t65, 0
  %t66 = load i32, i32* %t87, align 4
  %t282 = icmp sgt i32 %t66, 0
  %t67 = load i32, i32* %t89, align 4
  %t286 = icmp sgt i32 %t67, 0
  %t68 = add i32 %t66, %t67
  %t69 = add i32 %t65, %t68
  %t70 = load i32, i32* %t88, align 4
  %t296 = icmp sgt i32 %t70, 0
  %t71 = add i32 %t69, %t70
  %t72 = load i32, i32* @e, align 4
  %t303 = icmp sgt i32 %t72, 0
  %t73 = load i32, i32* %t89, align 4
  %t307 = icmp sgt i32 %t73, 0
  %t74 = add i32 %t72, %t73
  %t75 = load i32, i32* @g, align 4
  %t314 = icmp sgt i32 %t75, 0
  %t76 = sub i32 %t74, %t75
  %t77 = load i32, i32* @h, align 4
  %t321 = icmp sgt i32 %t77, 0
  %t78 = add i32 %t76, %t77
  %t79 = sub i32 %t71, %t78
  ret i32 %t79
B108:                               	; preds = %B107
  %t12 = load i32, i32* %t87, align 4
  %t120 = icmp sgt i32 %t12, 0
  %t13 = add i32 %t12, 1
  store i32 %t13, i32* %t87, align 4
  br label %B124
B116:                               	; preds = %B107
  br label %B109
B124:                               	; preds = %B108, %B143
  %t14 = load i32, i32* %t88, align 4
  %t130 = icmp sgt i32 %t14, 0
  %t15 = icmp eq i32 %t14, 7
  br i1 %t15, label %B125, label %B133
B109:                               	; preds = %B116
  %t63 = load i32, i32* %t87, align 4
  %t271 = icmp sgt i32 %t63, 0
  %t64 = sub i32 %t63, 2
  store i32 %t64, i32* %t87, align 4
  br label %B90
B125:                               	; preds = %B124
  %t17 = load i32, i32* %t88, align 4
  %t137 = icmp sgt i32 %t17, 0
  %t18 = sub i32 %t17, 1
  store i32 %t18, i32* %t88, align 4
  br label %B141
B133:                               	; preds = %B124
  br label %B126
B141:                               	; preds = %B125, %B160
  %t19 = load i32, i32* %t89, align 4
  %t147 = icmp sgt i32 %t19, 0
  %t20 = icmp slt i32 %t19, 20
  br i1 %t20, label %B142, label %B150
B126:                               	; preds = %B133
  %t60 = load i32, i32* %t88, align 4
  %t264 = icmp sgt i32 %t60, 0
  %t61 = add i32 %t60, 1
  store i32 %t61, i32* %t88, align 4
  br label %B107
B142:                               	; preds = %B141
  %t22 = load i32, i32* %t89, align 4
  %t154 = icmp sgt i32 %t22, 0
  %t23 = add i32 %t22, 3
  store i32 %t23, i32* %t89, align 4
  br label %B158
B150:                               	; preds = %B141
  br label %B143
B158:                               	; preds = %B142, %B177
  %t24 = load i32, i32* @e, align 4
  %t164 = icmp sgt i32 %t24, 0
  %t25 = icmp sgt i32 %t24, 1
  br i1 %t25, label %B159, label %B167
B143:                               	; preds = %B150
  %t57 = load i32, i32* %t89, align 4
  %t257 = icmp sgt i32 %t57, 0
  %t58 = sub i32 %t57, 1
  store i32 %t58, i32* %t89, align 4
  br label %B124
B159:                               	; preds = %B158
  %t27 = load i32, i32* @e, align 4
  %t171 = icmp sgt i32 %t27, 0
  %t28 = sub i32 %t27, 1
  store i32 %t28, i32* @e, align 4
  br label %B175
B167:                               	; preds = %B158
  br label %B160
B175:                               	; preds = %B159, %B194
  %t29 = load i32, i32* @f, align 4
  %t181 = icmp sgt i32 %t29, 0
  %t30 = icmp sgt i32 %t29, 2
  br i1 %t30, label %B176, label %B184
B160:                               	; preds = %B167
  %t54 = load i32, i32* @e, align 4
  %t250 = icmp sgt i32 %t54, 0
  %t55 = add i32 %t54, 1
  store i32 %t55, i32* @e, align 4
  br label %B141
B176:                               	; preds = %B175
  %t32 = load i32, i32* @f, align 4
  %t188 = icmp sgt i32 %t32, 0
  %t33 = sub i32 %t32, 2
  store i32 %t33, i32* @f, align 4
  br label %B192
B184:                               	; preds = %B175
  br label %B177
B192:                               	; preds = %B176, %B211
  %t34 = load i32, i32* @g, align 4
  %t198 = icmp sgt i32 %t34, 0
  %t35 = icmp slt i32 %t34, 3
  br i1 %t35, label %B193, label %B201
B177:                               	; preds = %B184
  %t51 = load i32, i32* @f, align 4
  %t243 = icmp sgt i32 %t51, 0
  %t52 = add i32 %t51, 1
  store i32 %t52, i32* @f, align 4
  br label %B158
B193:                               	; preds = %B192
  %t37 = load i32, i32* @g, align 4
  %t205 = icmp sgt i32 %t37, 0
  %t38 = add i32 %t37, 10
  store i32 %t38, i32* @g, align 4
  br label %B209
B201:                               	; preds = %B192
  br label %B194
B209:                               	; preds = %B193, %B210
  %t39 = load i32, i32* @h, align 4
  %t215 = icmp sgt i32 %t39, 0
  %t40 = icmp slt i32 %t39, 10
  br i1 %t40, label %B210, label %B218
B194:                               	; preds = %B201
  %t48 = load i32, i32* @g, align 4
  %t236 = icmp sgt i32 %t48, 0
  %t49 = sub i32 %t48, 8
  store i32 %t49, i32* @g, align 4
  br label %B175
B210:                               	; preds = %B209
  %t42 = load i32, i32* @h, align 4
  %t222 = icmp sgt i32 %t42, 0
  %t43 = add i32 %t42, 8
  store i32 %t43, i32* @h, align 4
  br label %B209
B218:                               	; preds = %B209
  br label %B211
B211:                               	; preds = %B218
  %t45 = load i32, i32* @h, align 4
  %t229 = icmp sgt i32 %t45, 0
  %t46 = sub i32 %t45, 1
  store i32 %t46, i32* @h, align 4
  br label %B192
}
define i32 @main() {
B328:
  store i32 1, i32* @g, align 4
  store i32 2, i32* @h, align 4
  store i32 4, i32* @e, align 4
  store i32 6, i32* @f, align 4
  %t84 = call i32 @EightWhile()
  %t332 = icmp sgt i32 %t84, 0
  ret i32 %t84
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
