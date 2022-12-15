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
  %t6 = load i32, i32* %t43, align 4
  %t7 = mul i32 %t6, 1
  %t8 = sdiv i32 %t7, 2
  %t9 = load i32, i32* %t40, align 4
  %t10 = load i32, i32* %t41, align 4
  %t11 = sub i32 %t9, %t10
  %t12 = add i32 %t8, %t11
  %t13 = load i32, i32* %t42, align 4
  %t14 = add i32 %t13, 3
  %t15 = sub nsw i32 0, %t14
  %t67 = icmp sgt i32 %t15, 0
  %t16 = srem i32 %t15, 2
  %t17 = sub i32 %t12, %t16
  store i32 %t17, i32* %t44, align 4
  %t18 = load i32, i32* %t44, align 4
  call void @putint(i32 %t18)
  %t21 = load i32, i32* %t43, align 4
  %t22 = srem i32 %t21, 2
  %t23 = add i32 %t22, 67
  %t24 = load i32, i32* %t40, align 4
  %t25 = load i32, i32* %t41, align 4
  %t26 = sub i32 %t24, %t25
  %t27 = sub nsw i32 0, %t26
  %t86 = icmp sgt i32 %t27, 0
  %t28 = add i32 %t23, %t27
  %t29 = load i32, i32* %t42, align 4
  %t30 = add i32 %t29, 2
  %t31 = srem i32 %t30, 2
  %t32 = sub nsw i32 0, %t31
  %t99 = icmp sgt i32 %t32, 0
  %t33 = sub i32 %t28, %t32
  store i32 %t33, i32* %t44, align 4
  %t35 = load i32, i32* %t44, align 4
  %t36 = add i32 %t35, 3
  store i32 %t36, i32* %t44, align 4
  %t37 = load i32, i32* %t44, align 4
  call void @putint(i32 %t37)
  ret i32 0
}
declare void @putint(i32)declare i32 @getint()declare void @punch(i32)