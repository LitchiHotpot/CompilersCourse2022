define i32 @enc(i32 %t31) {
B30:
  %t32 = alloca i32, align 4
  store i32 %t31, i32* %t32, align 4
  %t0 = load i32, i32* %t32, align 4
  %t39 = icmp sgt i32 %t0, 0
  %t1 = icmp sgt i32 %t0, 25
  br i1 %t1, label %B33, label %B42
B33:                               	; preds = %B30
  %t3 = load i32, i32* %t32, align 4
  %t46 = icmp sgt i32 %t3, 0
  %t4 = add i32 %t3, 60
  store i32 %t4, i32* %t32, align 4
  br label %B35
B42:                               	; preds = %B30
  br label %B34
B35:                               	; preds = %B33, %B34
  %t8 = load i32, i32* %t32, align 4
  %t60 = icmp sgt i32 %t8, 0
  ret i32 %t8
B34:                               	; preds = %B42
  %t6 = load i32, i32* %t32, align 4
  %t53 = icmp sgt i32 %t6, 0
  %t7 = sub i32 %t6, 15
  store i32 %t7, i32* %t32, align 4
  br label %B35
}
define i32 @dec(i32 %t62) {
B61:
  %t63 = alloca i32, align 4
  store i32 %t62, i32* %t63, align 4
  %t9 = load i32, i32* %t63, align 4
  %t70 = icmp sgt i32 %t9, 0
  %t10 = icmp sgt i32 %t9, 85
  br i1 %t10, label %B64, label %B73
B64:                               	; preds = %B61
  %t12 = load i32, i32* %t63, align 4
  %t77 = icmp sgt i32 %t12, 0
  %t13 = sub i32 %t12, 59
  store i32 %t13, i32* %t63, align 4
  br label %B66
B73:                               	; preds = %B61
  br label %B65
B66:                               	; preds = %B64, %B65
  %t17 = load i32, i32* %t63, align 4
  %t91 = icmp sgt i32 %t17, 0
  ret i32 %t17
B65:                               	; preds = %B73
  %t15 = load i32, i32* %t63, align 4
  %t84 = icmp sgt i32 %t15, 0
  %t16 = add i32 %t15, 14
  store i32 %t16, i32* %t63, align 4
  br label %B66
}
define i32 @main() {
B92:
  %t94 = alloca i32, align 4
  %t93 = alloca i32, align 4
  store i32 400, i32* %t93, align 4
  %t20 = load i32, i32* %t93, align 4
  %t98 = icmp sgt i32 %t20, 0
  %t21 = call i32 @enc(i32 %t20)
  %t102 = icmp sgt i32 %t21, 0
  store i32 %t21, i32* %t94, align 4
  %t23 = load i32, i32* %t94, align 4
  %t106 = icmp sgt i32 %t23, 0
  %t24 = call i32 @dec(i32 %t23)
  %t110 = icmp sgt i32 %t24, 0
  store i32 %t24, i32* %t94, align 4
  %t25 = load i32, i32* %t94, align 4
  %t114 = icmp sgt i32 %t25, 0
  call void @putint(i32 %t25)
  store i32 10, i32* %t94, align 4
  %t28 = load i32, i32* %t94, align 4
  %t121 = icmp sgt i32 %t28, 0
  call void @putch(i32 %t28)
  ret i32 0
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
