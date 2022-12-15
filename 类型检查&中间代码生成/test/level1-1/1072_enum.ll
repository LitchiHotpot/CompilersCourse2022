define i32 @main() {
B38:
  %t42 = alloca i32, align 4
  %t41 = alloca i32, align 4
  %t40 = alloca i32, align 4
  %t39 = alloca i32, align 4
  store i32 0, i32* %t39, align 4
  store i32 0, i32* %t40, align 4
  store i32 0, i32* %t41, align 4
  br label %B43
B43:                               	; preds = %B38, %B51
  %t3 = load i32, i32* %t39, align 4
  %t4 = icmp slt i32 %t3, 21
  br i1 %t4, label %B44, label %B48
B44:                               	; preds = %B43
  br label %B49
B48:                               	; preds = %B43
  br label %B45
B49:                               	; preds = %B44, %B65
  %t5 = load i32, i32* %t40, align 4
  %t6 = load i32, i32* %t39, align 4
  %t7 = sub i32 101, %t6
  %t8 = icmp slt i32 %t5, %t7
  br i1 %t8, label %B50, label %B57
B45:                               	; preds = %B48
  ret i32 0
B50:                               	; preds = %B49
  %t10 = load i32, i32* %t39, align 4
  %t11 = sub i32 100, %t10
  %t12 = load i32, i32* %t40, align 4
  %t13 = sub i32 %t11, %t12
  store i32 %t13, i32* %t41, align 4
  %t14 = load i32, i32* %t39, align 4
  %t15 = mul i32 5, %t14
  %t16 = load i32, i32* %t40, align 4
  %t17 = mul i32 1, %t16
  %t18 = add i32 %t15, %t17
  %t19 = load i32, i32* %t41, align 4
  %t20 = sdiv i32 %t19, 2
  %t21 = add i32 %t18, %t20
  %t22 = icmp eq i32 %t21, 100
  br i1 %t22, label %B64, label %B83
B57:                               	; preds = %B49
  br label %B51
B64:                               	; preds = %B50
  %t23 = load i32, i32* %t39, align 4
  call void @putint(i32 %t23)
  %t25 = load i32, i32* %t40, align 4
  call void @putint(i32 %t25)
  %t27 = load i32, i32* %t41, align 4
  call void @putint(i32 %t27)
  store i32 10, i32* %t42, align 4
  %t30 = load i32, i32* %t42, align 4
  call void @putch(i32 %t30)
  br label %B65
B83:                               	; preds = %B50
  br label %B65
B51:                               	; preds = %B57
  %t36 = load i32, i32* %t39, align 4
  %t37 = add i32 %t36, 1
  store i32 %t37, i32* %t39, align 4
  br label %B43
B65:                               	; preds = %B64, %B83
  %t33 = load i32, i32* %t40, align 4
  %t34 = add i32 %t33, 1
  store i32 %t34, i32* %t40, align 4
  br label %B49
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
