define i32 @main() {
B24:
  %t26 = alloca i32, align 4
  %t25 = alloca i32, align 4
  store i32 56, i32* %t25, align 4
  store i32 4, i32* %t26, align 4
  %t3 = load i32, i32* %t25, align 4
  %t4 = sub nsw i32 0, 4
  %t5 = sub i32 %t3, %t4
  %t6 = load i32, i32* %t26, align 4
  %t8 = add i32 %t5, %t7
  store i32 %t8, i32* %t25, align 4
  %t9 = load i32, i32* %t25, align 4
  %t39 = icmp ne i32 %t9, 0
  %t10 = xor i1 %t39 , true
  %t40 = zext i1 %t39 to i32
  %t44 = icmp ne i32 %t40, 0
  %t11 = xor i1 %t44 , true
  %t45 = zext i1 %t44 to i32
  %t49 = icmp ne i32 %t45, 0
  %t12 = xor i1 %t49 , true
  %t50 = zext i1 %t49 to i32
  %t13 = sub nsw i32 0, %t50
  br i1 %t13, label %B54, label %B56
B54:                               	; preds = %B24
  ret void
B56:                               	; preds = %B24
  br label %B55
B55:                               	; preds = %B56
  ret i32 0
}
