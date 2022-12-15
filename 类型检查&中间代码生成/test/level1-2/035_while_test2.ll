define i32 @FourWhile() {
B41:
  %t45 = alloca i32, align 4
  %t44 = alloca i32, align 4
  %t43 = alloca i32, align 4
  %t42 = alloca i32, align 4
  store i32 5, i32* %t42, align 4
  store i32 6, i32* %t43, align 4
  store i32 7, i32* %t44, align 4
  store i32 10, i32* %t45, align 4
  br label %B46
B46:                               	; preds = %B41, %B65
  %t4 = load i32, i32* %t42, align 4
  %t52 = icmp sgt i32 %t4, 0
  %t5 = icmp slt i32 %t4, 20
  br i1 %t5, label %B47, label %B55
B47:                               	; preds = %B46
  %t7 = load i32, i32* %t42, align 4
  %t59 = icmp sgt i32 %t7, 0
  %t8 = add i32 %t7, 3
  store i32 %t8, i32* %t42, align 4
  br label %B63
B55:                               	; preds = %B46
  br label %B48
B63:                               	; preds = %B47, %B82
  %t9 = load i32, i32* %t43, align 4
  %t69 = icmp sgt i32 %t9, 0
  %t10 = icmp slt i32 %t9, 10
  br i1 %t10, label %B64, label %B72
B48:                               	; preds = %B55
  %t33 = load i32, i32* %t42, align 4
  %t138 = icmp sgt i32 %t33, 0
  %t34 = load i32, i32* %t43, align 4
  %t142 = icmp sgt i32 %t34, 0
  %t35 = load i32, i32* %t45, align 4
  %t146 = icmp sgt i32 %t35, 0
  %t36 = add i32 %t34, %t35
  %t37 = add i32 %t33, %t36
  %t38 = load i32, i32* %t44, align 4
  %t156 = icmp sgt i32 %t38, 0
  %t39 = add i32 %t37, %t38
  ret i32 %t39
B64:                               	; preds = %B63
  %t12 = load i32, i32* %t43, align 4
  %t76 = icmp sgt i32 %t12, 0
  %t13 = add i32 %t12, 1
  store i32 %t13, i32* %t43, align 4
  br label %B80
B72:                               	; preds = %B63
  br label %B65
B80:                               	; preds = %B64, %B99
  %t14 = load i32, i32* %t44, align 4
  %t86 = icmp sgt i32 %t14, 0
  %t15 = icmp eq i32 %t14, 7
  br i1 %t15, label %B81, label %B89
B65:                               	; preds = %B72
  %t31 = load i32, i32* %t43, align 4
  %t131 = icmp sgt i32 %t31, 0
  %t32 = sub i32 %t31, 2
  store i32 %t32, i32* %t43, align 4
  br label %B46
B81:                               	; preds = %B80
  %t17 = load i32, i32* %t44, align 4
  %t93 = icmp sgt i32 %t17, 0
  %t18 = sub i32 %t17, 1
  store i32 %t18, i32* %t44, align 4
  br label %B97
B89:                               	; preds = %B80
  br label %B82
B97:                               	; preds = %B81, %B98
  %t19 = load i32, i32* %t45, align 4
  %t103 = icmp sgt i32 %t19, 0
  %t20 = icmp slt i32 %t19, 20
  br i1 %t20, label %B98, label %B106
B82:                               	; preds = %B89
  %t28 = load i32, i32* %t44, align 4
  %t124 = icmp sgt i32 %t28, 0
  %t29 = add i32 %t28, 1
  store i32 %t29, i32* %t44, align 4
  br label %B63
B98:                               	; preds = %B97
  %t22 = load i32, i32* %t45, align 4
  %t110 = icmp sgt i32 %t22, 0
  %t23 = add i32 %t22, 3
  store i32 %t23, i32* %t45, align 4
  br label %B97
B106:                               	; preds = %B97
  br label %B99
B99:                               	; preds = %B106
  %t25 = load i32, i32* %t45, align 4
  %t117 = icmp sgt i32 %t25, 0
  %t26 = sub i32 %t25, 1
  store i32 %t26, i32* %t45, align 4
  br label %B80
}
define i32 @main() {
B160:
  %t40 = call i32 @FourWhile()
  %t164 = icmp sgt i32 %t40, 0
  ret i32 %t40
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
