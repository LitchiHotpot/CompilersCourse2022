define i32 @deepWhileBr(i32 %t28,i32 %t29) {
B27:
  %t84 = alloca i32, align 4
  %t54 = alloca i32, align 4
  %t32 = alloca i32, align 4
  %t31 = alloca i32, align 4
  %t30 = alloca i32, align 4
  store i32 %t28, i32* %t30, align 4
  store i32 %t29, i32* %t31, align 4
  %t1 = load i32, i32* %t30, align 4
  %t36 = icmp sgt i32 %t1, 0
  %t2 = load i32, i32* %t31, align 4
  %t40 = icmp sgt i32 %t2, 0
  %t3 = add i32 %t1, %t2
  store i32 %t3, i32* %t32, align 4
  br label %B44
B44:                               	; preds = %B27, %B56
  %t4 = load i32, i32* %t32, align 4
  %t50 = icmp sgt i32 %t4, 0
  %t5 = icmp slt i32 %t4, 75
  br i1 %t5, label %B45, label %B53
B45:                               	; preds = %B44
  store i32 42, i32* %t54, align 4
  %t7 = load i32, i32* %t32, align 4
  %t60 = icmp sgt i32 %t7, 0
  %t8 = icmp slt i32 %t7, 100
  br i1 %t8, label %B55, label %B63
B53:                               	; preds = %B44
  br label %B46
B55:                               	; preds = %B45
  %t10 = load i32, i32* %t32, align 4
  %t67 = icmp sgt i32 %t10, 0
  %t11 = load i32, i32* %t54, align 4
  %t71 = icmp sgt i32 %t11, 0
  %t12 = add i32 %t10, %t11
  store i32 %t12, i32* %t32, align 4
  %t13 = load i32, i32* %t32, align 4
  %t80 = icmp sgt i32 %t13, 0
  %t14 = icmp sgt i32 %t13, 99
  br i1 %t14, label %B75, label %B83
B63:                               	; preds = %B45
  br label %B56
B46:                               	; preds = %B53
  %t22 = load i32, i32* %t32, align 4
  %t107 = icmp sgt i32 %t22, 0
  ret i32 %t22
B75:                               	; preds = %B55
  %t16 = load i32, i32* %t54, align 4
  %t88 = icmp sgt i32 %t16, 0
  %t17 = mul i32 %t16, 2
  store i32 %t17, i32* %t84, align 4
  %t18 = icmp eq i32 1, 1
  br i1 %t18, label %B92, label %B96
B83:                               	; preds = %B55
  br label %B76
B56:                               	; preds = %B63, %B76
  br label %B44
B92:                               	; preds = %B75
  %t20 = load i32, i32* %t84, align 4
  %t100 = icmp sgt i32 %t20, 0
  %t21 = mul i32 %t20, 2
  store i32 %t21, i32* %t32, align 4
  br label %B93
B96:                               	; preds = %B75
  br label %B93
B76:                               	; preds = %B83, %B93
  br label %B56
B93:                               	; preds = %B92, %B96
  br label %B76
}
define i32 @main() {
B108:
  %t109 = alloca i32, align 4
  store i32 2, i32* %t109, align 4
  %t24 = load i32, i32* %t109, align 4
  %t113 = icmp sgt i32 %t24, 0
  %t25 = load i32, i32* %t109, align 4
  %t117 = icmp sgt i32 %t25, 0
  %t26 = call i32 @deepWhileBr(i32 %t24, i32 %t25)
  %t121 = icmp sgt i32 %t26, 0
  ret i32 %t26
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
