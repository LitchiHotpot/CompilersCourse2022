define i32 @fun(i32 %t22,i32 %t23) {
B21:
  %t26 = alloca i32, align 4
  %t25 = alloca i32, align 4
  %t24 = alloca i32, align 4
  store i32 %t22, i32* %t24, align 4
  store i32 %t23, i32* %t25, align 4
  br label %B27
B27:                               	; preds = %B21, %B28
  %t0 = load i32, i32* %t25, align 4
  %t33 = icmp sgt i32 %t0, 0
  %t1 = icmp sgt i32 %t0, 0
  br i1 %t1, label %B28, label %B36
B28:                               	; preds = %B27
  %t3 = load i32, i32* %t24, align 4
  %t40 = icmp sgt i32 %t3, 0
  %t4 = load i32, i32* %t25, align 4
  %t44 = icmp sgt i32 %t4, 0
  %t5 = srem i32 %t3, %t4
  store i32 %t5, i32* %t26, align 4
  %t7 = load i32, i32* %t25, align 4
  %t51 = icmp sgt i32 %t7, 0
  store i32 %t7, i32* %t24, align 4
  %t9 = load i32, i32* %t26, align 4
  %t55 = icmp sgt i32 %t9, 0
  store i32 %t9, i32* %t25, align 4
  br label %B27
B36:                               	; preds = %B27
  br label %B29
B29:                               	; preds = %B36
  %t10 = load i32, i32* %t24, align 4
  %t59 = icmp sgt i32 %t10, 0
  ret i32 %t10
}
define i32 @main() {
B60:
  %t63 = alloca i32, align 4
  %t62 = alloca i32, align 4
  %t61 = alloca i32, align 4
  %t12 = call i32 @getint()
  %t67 = icmp sgt i32 %t12, 0
  store i32 %t12, i32* %t62, align 4
  %t14 = call i32 @getint()
  %t71 = icmp sgt i32 %t14, 0
  store i32 %t14, i32* %t61, align 4
  %t16 = load i32, i32* %t62, align 4
  %t75 = icmp sgt i32 %t16, 0
  %t17 = load i32, i32* %t61, align 4
  %t79 = icmp sgt i32 %t17, 0
  %t18 = call i32 @fun(i32 %t16, i32 %t17)
  %t83 = icmp sgt i32 %t18, 0
  store i32 %t18, i32* %t63, align 4
  %t19 = load i32, i32* %t63, align 4
  %t87 = icmp sgt i32 %t19, 0
  call void @putint(i32 %t19)
  ret i32 0
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
