define i32 @main() {
B37:
  %t42 = alloca i32, align 4
  %t41 = alloca i32, align 4
  %t40 = alloca i32, align 4
  %t39 = alloca i32, align 4
  %t38 = alloca i32, align 4
  store i32 5, i32* %t38, align 4
  store i32 5, i32* %t39, align 4
  store i32 1, i32* %t40, align 4
  %t4 = sub nsw i32 0, 2
  store i32 %t4, i32* %t41, align 4
  store i32 2, i32* %t42, align 4
  %t6 = load i32, i32* %t41, align 4
  %t7 = mul i32 %t6, 1
  %t8 = sdiv i32 %t7, 2
  %t9 = icmp slt i32 %t8, 0
  br i1 %t9, label %B46, label %B57
B46:                               	; preds = %B37, %B58
  br label %B47
B57:                               	; preds = %B37
  br label %B48
B47:                               	; preds = %B46, %B64, %B73
  %t21 = load i32, i32* %t41, align 4
  %t22 = srem i32 %t21, 2
  %t23 = add i32 %t22, 67
  %t24 = icmp slt i32 %t23, 0
  br i1 %t24, label %B74, label %B85
B48:                               	; preds = %B57
  %t10 = load i32, i32* %t38, align 4
  %t11 = load i32, i32* %t39, align 4
  %t12 = sub i32 %t10, %t11
  %t13 = icmp ne i32 %t12, 0
  br i1 %t13, label %B58, label %B64
B74:                               	; preds = %B47, %B86
  store i32 4, i32* %t42, align 4
  br label %B75
B85:                               	; preds = %B47
  br label %B76
B58:                               	; preds = %B48
  %t14 = load i32, i32* %t40, align 4
  %t15 = add i32 %t14, 3
  %t16 = srem i32 %t15, 2
  %t17 = icmp ne i32 %t16, 0
  br i1 %t17, label %B46, label %B73
B64:                               	; preds = %B48
  br label %B47
B75:                               	; preds = %B74, %B92, %B101
  ret i32 0
B76:                               	; preds = %B85
  %t25 = load i32, i32* %t38, align 4
  %t26 = load i32, i32* %t39, align 4
  %t27 = sub i32 %t25, %t26
  %t28 = icmp ne i32 %t27, 0
  br i1 %t28, label %B86, label %B92
B73:                               	; preds = %B58
  br label %B47
B86:                               	; preds = %B76
  %t29 = load i32, i32* %t40, align 4
  %t30 = add i32 %t29, 2
  %t31 = srem i32 %t30, 2
  %t32 = icmp ne i32 %t31, 0
  br i1 %t32, label %B74, label %B101
B92:                               	; preds = %B76
  br label %B75
B101:                               	; preds = %B86
  br label %B75
}
