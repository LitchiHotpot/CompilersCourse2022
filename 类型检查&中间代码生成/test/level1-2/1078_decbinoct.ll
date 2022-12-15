define i32 @dec2bin(i32 %t32) {
B31:
  %t37 = alloca i32, align 4
  %t36 = alloca i32, align 4
  %t35 = alloca i32, align 4
  %t34 = alloca i32, align 4
  %t33 = alloca i32, align 4
  store i32 %t32, i32* %t33, align 4
  store i32 0, i32* %t34, align 4
  store i32 1, i32* %t35, align 4
  %t3 = load i32, i32* %t33, align 4
  %t41 = icmp sgt i32 %t3, 0
  store i32 %t3, i32* %t37, align 4
  br label %B42
B42:                               	; preds = %B31, %B43
  %t4 = load i32, i32* %t37, align 4
  %t48 = icmp sgt i32 %t4, 0
  %t5 = icmp ne i32 %t4, 0
  br i1 %t5, label %B43, label %B51
B43:                               	; preds = %B42
  %t7 = load i32, i32* %t37, align 4
  %t55 = icmp sgt i32 %t7, 0
  %t8 = srem i32 %t7, 2
  store i32 %t8, i32* %t36, align 4
  %t10 = load i32, i32* %t35, align 4
  %t62 = icmp sgt i32 %t10, 0
  %t11 = load i32, i32* %t36, align 4
  %t66 = icmp sgt i32 %t11, 0
  %t12 = mul i32 %t10, %t11
  %t13 = load i32, i32* %t34, align 4
  %t73 = icmp sgt i32 %t13, 0
  %t14 = add i32 %t12, %t13
  store i32 %t14, i32* %t34, align 4
  %t16 = load i32, i32* %t35, align 4
  %t80 = icmp sgt i32 %t16, 0
  %t17 = mul i32 %t16, 10
  store i32 %t17, i32* %t35, align 4
  %t19 = load i32, i32* %t37, align 4
  %t87 = icmp sgt i32 %t19, 0
  %t20 = sdiv i32 %t19, 2
  store i32 %t20, i32* %t37, align 4
  br label %B42
B51:                               	; preds = %B42
  br label %B44
B44:                               	; preds = %B51
  %t21 = load i32, i32* %t34, align 4
  %t94 = icmp sgt i32 %t21, 0
  ret i32 %t21
}
define i32 @main() {
B95:
  %t97 = alloca i32, align 4
  %t96 = alloca i32, align 4
  store i32 400, i32* %t96, align 4
  %t24 = load i32, i32* %t96, align 4
  %t101 = icmp sgt i32 %t24, 0
  %t25 = call i32 @dec2bin(i32 %t24)
  %t105 = icmp sgt i32 %t25, 0
  store i32 %t25, i32* %t97, align 4
  %t26 = load i32, i32* %t97, align 4
  %t109 = icmp sgt i32 %t26, 0
  call void @putint(i32 %t26)
  store i32 10, i32* %t97, align 4
  %t29 = load i32, i32* %t97, align 4
  %t116 = icmp sgt i32 %t29, 0
  call void @putch(i32 %t29)
  ret i32 0
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
