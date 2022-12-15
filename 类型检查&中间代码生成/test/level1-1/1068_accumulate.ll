define i32 @main() {
B13:
  %t15 = alloca i32, align 4
  %t14 = alloca i32, align 4
  store i32 0, i32* %t15, align 4
  store i32 0, i32* %t14, align 4
  br label %B16
B16:                               	; preds = %B13, %B17
  %t2 = load i32, i32* %t14, align 4
  %t3 = icmp slt i32 %t2, 21
  br i1 %t3, label %B17, label %B21
B17:                               	; preds = %B16
  %t5 = load i32, i32* %t15, align 4
  %t6 = load i32, i32* %t14, align 4
  %t7 = add i32 %t5, %t6
  store i32 %t7, i32* %t15, align 4
  %t9 = load i32, i32* %t14, align 4
  %t10 = add i32 %t9, 1
  store i32 %t10, i32* %t14, align 4
  br label %B16
B21:                               	; preds = %B16
  br label %B18
B18:                               	; preds = %B21
  %t11 = load i32, i32* %t15, align 4
  call void @putint(i32 %t11)
  ret i32 0
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
