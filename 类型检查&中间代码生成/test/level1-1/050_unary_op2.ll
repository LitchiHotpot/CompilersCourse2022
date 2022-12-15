define i32 @main() {
B25:
  %t27 = alloca i32, align 4
  %t26 = alloca i32, align 4
  store i32 56, i32* %t26, align 4
  store i32 4, i32* %t27, align 4
  %t3 = load i32, i32* %t26, align 4
  %t4 = sub nsw i32 0, 4
  %t31 = icmp sgt i32 %t4, 0
  %t5 = sub i32 %t3, %t4
  %t6 = load i32, i32* %t27, align 4
  %t35 = icmp sgt i32 %t6, 0
  %t8 = add i32 %t5, %t6
  store i32 %t8, i32* %t26, align 4
  %t9 = load i32, i32* %t26, align 4
  %t45 = icmp sgt i32 %t9, 0
  %t10 = xor i1 %t45 , true
  %t46 = zext i1 %t45 to i32
  %t50 = icmp sgt i32 %t46, 0
  %t11 = xor i1 %t50 , true
  %t51 = zext i1 %t50 to i32
  %t55 = icmp sgt i32 %t51, 0
  %t12 = xor i1 %t55 , true
  %t56 = zext i1 %t55 to i32
  %t13 = sub nsw i32 0, %t56
  %t63 = icmp sgt i32 %t13, 0
  %t64 = icmp sgt i32 %t13, 0
  br i1 %t64, label %B42, label %B67
B42:                               	; preds = %B25
  %t16 = sub nsw i32 0, 1
  %t71 = icmp sgt i32 %t16, 0
  %t17 = sub nsw i32 0, %t16
  %t75 = icmp sgt i32 %t17, 0
  %t18 = sub nsw i32 0, %t17
  %t79 = icmp sgt i32 %t18, 0
  store i32 %t18, i32* %t26, align 4
  br label %B44
B67:                               	; preds = %B25
  br label %B43
B44:                               	; preds = %B42, %B43
  %t23 = load i32, i32* %t26, align 4
  call void @putint(i32 %t23)
  ret i32 0
B43:                               	; preds = %B67
  %t20 = load i32, i32* %t27, align 4
  %t80 = icmp sgt i32 %t20, 0
  %t22 = add i32 0, %t20
  store i32 %t22, i32* %t26, align 4
  br label %B44
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
