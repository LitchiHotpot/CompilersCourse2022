define i32 @main() {
B6:
  %t7 = alloca i32, align 4
  store i32 0, i32* %t7, align 4
  %t1 = add i32 1, 1
  store i32 %t1, i32* %t7, align 4
  br label %B11
B11:                               	; preds = %B6
  %t2 = load i32, i32* %t7, align 4
  %t3 = icmp slt i32 %t2, 1
  br i1 %t3, label %B12, label %B16
B12:                               	; preds = %B11, %B12
  store i32 1, i32* %t7, align 4
  %t2 = load i32, i32* %t7, align 4
  %t3 = icmp slt i32 %t2, 1
  br i1 %t3, label %B12, label %B19
B16:                               	; preds = %B11
  br label %B13
B19:                               	; preds = %B12
  br label %B13
B13:                               	; preds = %B16, %B19
  %t5 = load i32, i32* %t7, align 4
  ret i32 %t5
}
