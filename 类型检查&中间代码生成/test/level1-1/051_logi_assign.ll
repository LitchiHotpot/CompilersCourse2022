@a = global i32 0, align 4
@b = global i32 0, align 4
define i32 @main() {
B13:
  %t22 = alloca i32, align 4
  %t1 = call i32 @getint()
  %t17 = icmp sgt i32 %t1, 0
  store i32 %t1, i32* @a, align 4
  %t3 = call i32 @getint()
  %t21 = icmp sgt i32 %t3, 0
  store i32 %t3, i32* @b, align 4
  %t4 = load i32, i32* @a, align 4
  %t5 = load i32, i32* @b, align 4
  %t6 = icmp eq i32 %t4, %t5
  br i1 %t6, label %B26, label %B29
B26:                               	; preds = %B13
  %t7 = load i32, i32* @a, align 4
  %t8 = icmp ne i32 %t7, 3
  br i1 %t8, label %B23, label %B32
B29:                               	; preds = %B13
  br label %B24
B23:                               	; preds = %B26
  store i32 1, i32* %t22, align 4
  br label %B25
B32:                               	; preds = %B26
  br label %B24
B24:                               	; preds = %B29, %B32
  store i32 0, i32* %t22, align 4
  br label %B25
B25:                               	; preds = %B23, %B24
  %t12 = load i32, i32* %t22, align 4
  ret i32 %t12
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
