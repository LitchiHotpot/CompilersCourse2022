@a = global i32 0, align 4
@b = global i32 0, align 4
define i32 @main() {
B13:
  %t14 = alloca i32, align 4
  %t1 = call i32 @getint()
  store i32 %t1, i32* @a, align 4
  %t3 = call i32 @getint()
  store i32 %t3, i32* @b, align 4
  %t4 = load i32, i32* @a, align 4
  %t5 = load i32, i32* @b, align 4
  %t6 = icmp eq i32 %t4, %t5
  br i1 %t6, label %B18, label %B21
B18:                               	; preds = %B13
  %t7 = load i32, i32* @a, align 4
  %t8 = icmp ne i32 %t7, 3
  br i1 %t8, label %B15, label %B24
B21:                               	; preds = %B13
  br label %B16
B15:                               	; preds = %B18
  store i32 1, i32* %t14, align 4
  br label %B17
B24:                               	; preds = %B18
  br label %B16
B16:                               	; preds = %B21, %B24
  store i32 0, i32* %t14, align 4
  br label %B17
B17:                               	; preds = %B15, %B16
  %t12 = load i32, i32* %t14, align 4
  ret i32 %t12
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
