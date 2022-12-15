define i32 @main() {
B39:
  %t44 = alloca i32, align 4
  %t43 = alloca i32, align 4
  %t42 = alloca i32, align 4
  %t41 = alloca i32, align 4
  %t40 = alloca i32, align 4
  store i32 5, i32* %t40, align 4
  store i32 5, i32* %t41, align 4
  store i32 1, i32* %t42, align 4
  %t4 = sub nsw i32 0, 2
  %t48 = icmp sgt i32 %t4, 0
  store i32 %t4, i32* %t43, align 4
  store i32 2, i32* %t44, align 4
  %t6 = load i32, i32* %t43, align 4
  %t7 = mul i32 %t6, 1
  %t8 = sdiv i32 %t7, 2
  %t9 = icmp slt i32 %t8, 0
  br i1 %t9, label %B49, label %B60
B49:                               	; preds = %B39, %B61
  %t20 = load i32, i32* %t44, align 4
  call void @putint(i32 %t20)
  br label %B50
B60:                               	; preds = %B39
  br label %B51
B50:                               	; preds = %B49, %B67, %B76
  %t22 = load i32, i32* %t43, align 4
  %t23 = srem i32 %t22, 2
  %t24 = add i32 %t23, 67
  %t25 = icmp slt i32 %t24, 0
  br i1 %t25, label %B77, label %B88
B51:                               	; preds = %B60
  %t10 = load i32, i32* %t40, align 4
  %t11 = load i32, i32* %t41, align 4
  %t12 = sub i32 %t10, %t11
  %t13 = icmp ne i32 %t12, 0
  br i1 %t13, label %B61, label %B67
B77:                               	; preds = %B50, %B89
  store i32 4, i32* %t44, align 4
  %t37 = load i32, i32* %t44, align 4
  call void @putint(i32 %t37)
  br label %B78
B88:                               	; preds = %B50
  br label %B79
B61:                               	; preds = %B51
  %t14 = load i32, i32* %t42, align 4
  %t15 = add i32 %t14, 3
  %t16 = srem i32 %t15, 2
  %t17 = icmp ne i32 %t16, 0
  br i1 %t17, label %B49, label %B76
B67:                               	; preds = %B51
  br label %B50
B78:                               	; preds = %B77, %B95, %B104
  ret i32 0
B79:                               	; preds = %B88
  %t26 = load i32, i32* %t40, align 4
  %t27 = load i32, i32* %t41, align 4
  %t28 = sub i32 %t26, %t27
  %t29 = icmp ne i32 %t28, 0
  br i1 %t29, label %B89, label %B95
B76:                               	; preds = %B61
  br label %B50
B89:                               	; preds = %B79
  %t30 = load i32, i32* %t42, align 4
  %t31 = add i32 %t30, 2
  %t32 = srem i32 %t31, 2
  %t33 = icmp ne i32 %t32, 0
  br i1 %t33, label %B77, label %B104
B95:                               	; preds = %B79
  br label %B78
B104:                               	; preds = %B89
  br label %B78
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
