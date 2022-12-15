@k = global i32 0, align 4
@n = global i32 10, align 4
define i32 @main() {
B17:
  %t18 = alloca i32, align 4
  store i32 0, i32* %t18, align 4
  store i32 1, i32* @k, align 4
  br label %B19
B19:                               	; preds = %B17
  %t1 = load i32, i32* %t18, align 4
  %t2 = load i32, i32* @n, align 4
  %t3 = sub i32 %t2, 1
  %t4 = icmp sle i32 %t1, %t3
  br i1 %t4, label %B20, label %B27
B20:                               	; preds = %B19, %B20
  %t6 = load i32, i32* %t18, align 4
  %t7 = add i32 %t6, 1
  store i32 %t7, i32* %t18, align 4
  %t8 = load i32, i32* @k, align 4
  %t9 = add i32 %t8, 1
  %t11 = load i32, i32* @k, align 4
  %t12 = load i32, i32* @k, align 4
  %t13 = add i32 %t11, %t12
  store i32 %t13, i32* @k, align 4
  %t1 = load i32, i32* %t18, align 4
  %t2 = load i32, i32* @n, align 4
  %t3 = sub i32 %t2, 1
  %t4 = icmp sle i32 %t1, %t3
  br i1 %t4, label %B20, label %B42
B27:                               	; preds = %B19
  br label %B21
B42:                               	; preds = %B20
  br label %B21
B21:                               	; preds = %B27, %B42
  %t14 = load i32, i32* @k, align 4
  call void @putint(i32 %t14)
  %t16 = load i32, i32* @k, align 4
  ret i32 %t16
}
declare void @putint(i32)declare i32 @getint()declare void @punch(i32)