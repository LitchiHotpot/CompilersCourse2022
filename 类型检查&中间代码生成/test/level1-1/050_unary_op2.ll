define i32 @main() {
B24:
  %t26 = alloca i32, align 4
  %t25 = alloca i32, align 4
  store i32 56, i32* %t25, align 4
  store i32 4, i32* %t26, align 4
  %t3 = load i32, i32* %t25, align 4
  %t4 = sub nsw i32 0, 4
  %t30 = icmp sgt i32 %t4, 0
  %t5 = sub i32 %t3, %t4
  %t6 = load i32, i32* %t26, align 4
  %t37 = icmp sgt i32 %t6, 0
  %t8 = add i32 %t5, %t7
  store i32 %t8, i32* %t25, align 4
  %t9 = load i32, i32* %t25, align 4
  %t44 = icmp sgt i32 %t9, 0
  %t10 = xor i1 %t44 , true
  %t45 = zext i1 %t44 to i32
  %t49 = icmp sgt i32 %t45, 0
  %t11 = xor i1 %t49 , true
  %t50 = zext i1 %t49 to i32
  %t54 = icmp sgt i32 %t50, 0
  %t12 = xor i1 %t54 , true
  %t55 = zext i1 %t54 to i32
  %t13 = sub nsw i32 0, %t55
  %t62 = icmp sgt i32 %t13, 0
  %t66 = icmp sgt i32 %t13, 0
  br i1 %t66, label %B41, label %B65
B41:                               	; preds = %B24
  %t16 = sub nsw i32 0, 1
  %t70 = icmp sgt i32 %t16, 0
  %t17 = sub nsw i32 0, %t16
  %t74 = icmp sgt i32 %t17, 0
  %t18 = sub nsw i32 0, %t17
  %t78 = icmp sgt i32 %t18, 0
  store i32 %t18, i32* %t25, align 4
  br label %B43
B65:                               	; preds = %B24
  br label %B42
B43:                               	; preds = %B41, %B42
  ret i32 0
B42:                               	; preds = %B65
  %t20 = load i32, i32* %t26, align 4
  %t82 = icmp sgt i32 %t20, 0
  %t22 = add i32 0, %t21
  store i32 %t22, i32* %t25, align 4
  br label %B43
}
