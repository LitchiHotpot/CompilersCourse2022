define i32 @main() {
B13:
  %t14 = alloca i32, align 4
  store i32 10, i32* %t14, align 4
  %t1 = load i32, i32* %t14, align 4
  %t18 = icmp ne i32 %t1, 0
  %t2 = xor i1 %t18 , true
  %t19 = zext i1 %t18 to i32
  %t23 = icmp ne i32 %t19, 0
  %t3 = xor i1 %t23 , true
  %t24 = zext i1 %t23 to i32
  %t28 = icmp ne i32 %t24, 0
  %t4 = xor i1 %t28 , true
  %t29 = zext i1 %t28 to i32
  %t5 = sub nsw i32 0, %t29
  br i1 %t5, label %B33, label %B35
B33:                               	; preds = %B13
  ret void
B35:                               	; preds = %B13
  br label %B34
B34:                               	; preds = %B35
  ret i32 0
}
