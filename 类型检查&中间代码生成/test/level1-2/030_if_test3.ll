define i32 @ififElse() {
B12:
  %t14 = alloca i32, align 4
  %t13 = alloca i32, align 4
  store i32 5, i32* %t13, align 4
  store i32 10, i32* %t14, align 4
  %t2 = load i32, i32* %t13, align 4
  %t20 = icmp sgt i32 %t2, 0
  %t3 = icmp eq i32 %t2, 5
  br i1 %t3, label %B15, label %B23
B15:                               	; preds = %B12
  %t4 = load i32, i32* %t14, align 4
  %t30 = icmp sgt i32 %t4, 0
  %t5 = icmp eq i32 %t4, 10
  br i1 %t5, label %B24, label %B33
B23:                               	; preds = %B12
  br label %B16
B24:                               	; preds = %B15
  store i32 25, i32* %t13, align 4
  br label %B26
B33:                               	; preds = %B15
  br label %B25
B16:                               	; preds = %B23, %B26
  %t10 = load i32, i32* %t13, align 4
  %t44 = icmp sgt i32 %t10, 0
  ret i32 %t10
B26:                               	; preds = %B24, %B25
  br label %B16
B25:                               	; preds = %B33
  %t8 = load i32, i32* %t13, align 4
  %t37 = icmp sgt i32 %t8, 0
  %t9 = add i32 %t8, 15
  store i32 %t9, i32* %t13, align 4
  br label %B26
}
define i32 @main() {
B45:
  %t11 = call i32 @ififElse()
  %t49 = icmp sgt i32 %t11, 0
  ret i32 %t11
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
