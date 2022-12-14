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
  %t6 = load i32, i32* %t41, align 4
  %t7 = mul i32 %t6, 1
  %t8 = sdiv i32 %t7, 2
  %t9 = load i32, i32* %t38, align 4
  %t10 = load i32, i32* %t39, align 4
  %t11 = sub i32 %t9, %t10
  %t12 = add i32 %t8, %t11
  %t13 = load i32, i32* %t40, align 4
  %t14 = add i32 %t13, 3
  %t15 = sub nsw i32 0, %t14
  %t16 = srem i32 %t15, 2
  %t17 = sub i32 %t12, %t16
  store i32 %t17, i32* %t42, align 4
  %t20 = load i32, i32* %t41, align 4
  %t21 = srem i32 %t20, 2
  %t22 = add i32 %t21, 67
  %t23 = load i32, i32* %t38, align 4
  %t24 = load i32, i32* %t39, align 4
  %t25 = sub i32 %t23, %t24
  %t26 = sub nsw i32 0, %t25
  %t27 = add i32 %t22, %t26
  %t28 = load i32, i32* %t40, align 4
  %t29 = add i32 %t28, 2
  %t30 = srem i32 %t29, 2
  %t31 = sub nsw i32 0, %t30
  %t32 = sub i32 %t27, %t31
  store i32 %t32, i32* %t42, align 4
  %t34 = load i32, i32* %t42, align 4
  %t35 = add i32 %t34, 3
  store i32 %t35, i32* %t42, align 4
  ret i32 0
}
