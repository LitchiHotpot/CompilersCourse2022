@n = global i32 0, align 4
define i32 @gcd(i32 %t40,i32 %t41) {
B39:
  %t55 = alloca i32, align 4
  %t54 = alloca i32, align 4
  %t45 = alloca i32, align 4
  %t44 = alloca i32, align 4
  %t43 = alloca i32, align 4
  %t42 = alloca i32, align 4
  store i32 %t40, i32* %t42, align 4
  store i32 %t41, i32* %t43, align 4
  %t1 = load i32, i32* %t42, align 4
  %t49 = icmp sgt i32 %t1, 0
  store i32 %t1, i32* %t44, align 4
  %t3 = load i32, i32* %t43, align 4
  %t53 = icmp sgt i32 %t3, 0
  store i32 %t3, i32* %t45, align 4
  %t4 = load i32, i32* %t42, align 4
  %t61 = icmp sgt i32 %t4, 0
  %t5 = load i32, i32* %t43, align 4
  %t65 = icmp sgt i32 %t5, 0
  %t6 = icmp slt i32 %t4, %t5
  br i1 %t6, label %B56, label %B68
B56:                               	; preds = %B39
  %t8 = load i32, i32* %t42, align 4
  %t72 = icmp sgt i32 %t8, 0
  store i32 %t8, i32* %t54, align 4
  %t10 = load i32, i32* %t43, align 4
  %t76 = icmp sgt i32 %t10, 0
  store i32 %t10, i32* %t42, align 4
  %t12 = load i32, i32* %t54, align 4
  %t80 = icmp sgt i32 %t12, 0
  store i32 %t12, i32* %t43, align 4
  br label %B57
B68:                               	; preds = %B39
  br label %B57
B57:                               	; preds = %B56, %B68
  %t14 = load i32, i32* %t42, align 4
  %t84 = icmp sgt i32 %t14, 0
  %t15 = load i32, i32* %t43, align 4
  %t88 = icmp sgt i32 %t15, 0
  %t16 = srem i32 %t14, %t15
  store i32 %t16, i32* %t55, align 4
  br label %B92
B92:                               	; preds = %B57, %B93
  %t17 = load i32, i32* %t55, align 4
  %t98 = icmp sgt i32 %t17, 0
  %t18 = icmp ne i32 %t17, 0
  br i1 %t18, label %B93, label %B101
B93:                               	; preds = %B92
  %t20 = load i32, i32* %t43, align 4
  %t105 = icmp sgt i32 %t20, 0
  store i32 %t20, i32* %t42, align 4
  %t22 = load i32, i32* %t55, align 4
  %t109 = icmp sgt i32 %t22, 0
  store i32 %t22, i32* %t43, align 4
  %t24 = load i32, i32* %t42, align 4
  %t113 = icmp sgt i32 %t24, 0
  %t25 = load i32, i32* %t43, align 4
  %t117 = icmp sgt i32 %t25, 0
  %t26 = srem i32 %t24, %t25
  store i32 %t26, i32* %t55, align 4
  br label %B92
B101:                               	; preds = %B92
  br label %B94
B94:                               	; preds = %B101
  %t27 = load i32, i32* %t44, align 4
  %t124 = icmp sgt i32 %t27, 0
  %t28 = load i32, i32* %t45, align 4
  %t128 = icmp sgt i32 %t28, 0
  %t29 = mul i32 %t27, %t28
  %t30 = load i32, i32* %t43, align 4
  %t135 = icmp sgt i32 %t30, 0
  %t31 = sdiv i32 %t29, %t30
  ret i32 %t31
}
define i32 @main() {
B139:
  %t141 = alloca i32, align 4
  %t140 = alloca i32, align 4
  %t33 = call i32 @getint()
  %t145 = icmp sgt i32 %t33, 0
  store i32 %t33, i32* %t140, align 4
  %t35 = call i32 @getint()
  %t149 = icmp sgt i32 %t35, 0
  store i32 %t35, i32* %t141, align 4
  %t36 = load i32, i32* %t140, align 4
  %t153 = icmp sgt i32 %t36, 0
  %t37 = load i32, i32* %t141, align 4
  %t157 = icmp sgt i32 %t37, 0
  %t38 = call i32 @gcd(i32 %t36, i32 %t37)
  %t161 = icmp sgt i32 %t38, 0
  ret i32 %t38
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
