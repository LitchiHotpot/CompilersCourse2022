@N = global i32 0, align 4
@newline = global i32 0, align 4
define i32 @factor(i32) {
B23:
  %t27 = alloca i32, align 4
  %t26 = alloca i32, align 4
  %t24 = alloca i32, align 4
  store i32 %t25, i32* %t24, align 4
  store i32 0, i32* %t27, align 4
  store i32 1, i32* %t26, align 4
  br label %B28
B28:                               	; preds = %B23
  %t2 = load i32, i32* %t26, align 4
  %t3 = load i32, i32* %t24, align 4
  %t4 = add i32 %t3, 1
  %t5 = icmp slt i32 %t2, %t4
  br i1 %t5, label %B29, label %B36
B29:                               	; preds = %B28
  ret void
B36:                               	; preds = %B28
  br label %B30
B30:                               	; preds = %B36
  %t17 = load i32, i32* %t27, align 4
  ret i32 %t17
}
define i32 @main() {
B51:
  %t54 = alloca i32, align 4
  %t53 = alloca i32, align 4
  %t52 = alloca i32, align 4
  store i32 4, i32* @N, align 4
  store i32 10, i32* @newline, align 4
  store i32 1478, i32* %t53, align 4
  %t21 = load i32, i32* %t53, align 4
  %t22 = call i32 @factor(i32 %t21)
  ret i32 %t22
}
