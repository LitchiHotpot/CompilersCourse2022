define i32 @ifElse() {
B9:
  %t10 = alloca i32, align 4
  store i32 5, i32* %t10, align 4
  %t1 = load i32, i32* %t10, align 4
  %t17 = icmp sgt i32 %t1, 0
  %t2 = icmp eq i32 %t1, 5
  br i1 %t2, label %B11, label %B20
B11:                               	; preds = %B9
  store i32 25, i32* %t10, align 4
  br label %B13
B20:                               	; preds = %B9
  br label %B12
B13:                               	; preds = %B11, %B12
  %t7 = load i32, i32* %t10, align 4
  %t31 = icmp sgt i32 %t7, 0
  ret i32 %t7
B12:                               	; preds = %B20
  %t5 = load i32, i32* %t10, align 4
  %t24 = icmp sgt i32 %t5, 0
  %t6 = mul i32 %t5, 2
  store i32 %t6, i32* %t10, align 4
  br label %B13
}
define i32 @main() {
B32:
  %t8 = call i32 @ifElse()
  %t36 = icmp sgt i32 %t8, 0
  ret i32 %t8
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
