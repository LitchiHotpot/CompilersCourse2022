define i32 @main() {
B12:
  %t14 = alloca i32, align 4
  %t13 = alloca i32, align 4
  store i32 0, i32* %t14, align 4
  store i32 0, i32* %t13, align 4
  br label %B15
B15:                               	; preds = %B12
  %t2 = load i32, i32* %t13, align 4
  %t3 = icmp slt i32 %t2, 21
  br i1 %t3, label %B16, label %B20
B16:                               	; preds = %B15, %B16
  %t5 = load i32, i32* %t14, align 4
  %t6 = load i32, i32* %t13, align 4
  %t7 = add i32 %t5, %t6
  store i32 %t7, i32* %t14, align 4
  %t9 = load i32, i32* %t13, align 4
  %t10 = add i32 %t9, 1
  store i32 %t10, i32* %t13, align 4
  %t2 = load i32, i32* %t13, align 4
  %t3 = icmp slt i32 %t2, 21
  br i1 %t3, label %B16, label %B29
B20:                               	; preds = %B15
  br label %B17
B29:                               	; preds = %B16
  br label %B17
B17:                               	; preds = %B20, %B29
  ret i32 0
}
