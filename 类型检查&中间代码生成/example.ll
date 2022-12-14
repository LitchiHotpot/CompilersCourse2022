define i32 @main() {
B11:
  %t31 = alloca i32, align 4
  %t12 = alloca i32, align 4
  %t1 = sub nsw i32 0, 1
  store i32 %t1, i32* %t12, align 4
  %t2 = load i32, i32* %t12, align 4
  %t3 = add i32 1, %t2
  br i1 %t3, label %B16, label %B20
B16:                               	; preds = %B11
  store i32 1, i32* %t12, align 4
  br label %B17
B20:                               	; preds = %B11
  br label %B17
B17:                               	; preds = %B16, %B20
  %t5 = load i32, i32* %t12, align 4
  %t23 = icmp ne i32 %t5, 0
  %t6 = xor i1 %t23 , true
  %t24 = zext i1 %t23 to i32
  %t7 = sub nsw i32 0, %t24
  br i1 %t7, label %B28, label %B30
B28:                               	; preds = %B17
  ret void
B30:                               	; preds = %B17
  br label %B29
B29:                               	; preds = %B30
  ret i32 0
}
