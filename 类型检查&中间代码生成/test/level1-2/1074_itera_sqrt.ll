define i32 @fsqrt(i32 %t29) {
B28:
  %t32 = alloca i32, align 4
  %t31 = alloca i32, align 4
  %t30 = alloca i32, align 4
  store i32 %t29, i32* %t30, align 4
  store i32 0, i32* %t31, align 4
  %t1 = load i32, i32* %t30, align 4
  %t36 = icmp sgt i32 %t1, 0
  %t2 = sdiv i32 %t1, 2
  store i32 %t2, i32* %t32, align 4
  br label %B40
B40:                               	; preds = %B28, %B41
  %t3 = load i32, i32* %t31, align 4
  %t46 = icmp sgt i32 %t3, 0
  %t4 = load i32, i32* %t32, align 4
  %t50 = icmp sgt i32 %t4, 0
  %t5 = sub i32 %t3, %t4
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %B41, label %B56
B41:                               	; preds = %B40
  %t8 = load i32, i32* %t32, align 4
  %t60 = icmp sgt i32 %t8, 0
  store i32 %t8, i32* %t31, align 4
  %t10 = load i32, i32* %t31, align 4
  %t64 = icmp sgt i32 %t10, 0
  %t11 = load i32, i32* %t30, align 4
  %t68 = icmp sgt i32 %t11, 0
  %t12 = load i32, i32* %t31, align 4
  %t72 = icmp sgt i32 %t12, 0
  %t13 = sdiv i32 %t11, %t12
  %t14 = add i32 %t10, %t13
  store i32 %t14, i32* %t32, align 4
  %t16 = load i32, i32* %t32, align 4
  %t82 = icmp sgt i32 %t16, 0
  %t17 = sdiv i32 %t16, 2
  store i32 %t17, i32* %t32, align 4
  br label %B40
B56:                               	; preds = %B40
  br label %B42
B42:                               	; preds = %B56
  %t18 = load i32, i32* %t32, align 4
  %t89 = icmp sgt i32 %t18, 0
  ret i32 %t18
}
define i32 @main() {
B90:
  %t92 = alloca i32, align 4
  %t91 = alloca i32, align 4
  store i32 400, i32* %t91, align 4
  %t21 = load i32, i32* %t91, align 4
  %t96 = icmp sgt i32 %t21, 0
  %t22 = call i32 @fsqrt(i32 %t21)
  %t100 = icmp sgt i32 %t22, 0
  store i32 %t22, i32* %t92, align 4
  %t23 = load i32, i32* %t92, align 4
  %t104 = icmp sgt i32 %t23, 0
  call void @putint(i32 %t23)
  store i32 10, i32* %t92, align 4
  %t26 = load i32, i32* %t92, align 4
  %t111 = icmp sgt i32 %t26, 0
  call void @putch(i32 %t26)
  ret i32 0
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
