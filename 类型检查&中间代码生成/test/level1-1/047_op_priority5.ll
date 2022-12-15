@a = global i32 1, align 4
@b = global i32 0, align 4
@c = global i32 1, align 4
@d = global i32 2, align 4
@e = global i32 4, align 4
define i32 @main() {
B37:
  %t38 = alloca i32, align 4
  store i32 0, i32* %t38, align 4
  %t0 = load i32, i32* @a, align 4
  %t1 = load i32, i32* @b, align 4
  %t2 = mul i32 %t0, %t1
  %t3 = load i32, i32* @c, align 4
  %t4 = sdiv i32 %t2, %t3
  %t5 = load i32, i32* @e, align 4
  %t6 = load i32, i32* @d, align 4
  %t7 = add i32 %t5, %t6
  %t8 = icmp eq i32 %t4, %t7
  br i1 %t8, label %B42, label %B54
B42:                               	; preds = %B37
  %t9 = load i32, i32* @a, align 4
  %t10 = load i32, i32* @a, align 4
  %t11 = load i32, i32* @b, align 4
  %t12 = add i32 %t10, %t11
  %t13 = mul i32 %t9, %t12
  %t14 = load i32, i32* @c, align 4
  %t15 = add i32 %t13, %t14
  %t16 = load i32, i32* @d, align 4
  %t17 = load i32, i32* @e, align 4
  %t18 = add i32 %t16, %t17
  %t19 = icmp sle i32 %t15, %t18
  br i1 %t19, label %B39, label %B69
B54:                               	; preds = %B37
  br label %B41
B39:                               	; preds = %B41, %B42
  store i32 1, i32* %t38, align 4
  br label %B40
B69:                               	; preds = %B42
  br label %B41
B41:                               	; preds = %B54, %B69
  %t21 = load i32, i32* @a, align 4
  %t22 = load i32, i32* @b, align 4
  %t23 = load i32, i32* @c, align 4
  %t24 = mul i32 %t22, %t23
  %t25 = sub i32 %t21, %t24
  %t26 = load i32, i32* @d, align 4
  %t27 = load i32, i32* @a, align 4
  %t28 = load i32, i32* @c, align 4
  %t29 = sdiv i32 %t27, %t28
  %t30 = sub i32 %t26, %t29
  %t31 = icmp eq i32 %t25, %t30
  br i1 %t31, label %B39, label %B84
B40:                               	; preds = %B39, %B84
  %t34 = load i32, i32* %t38, align 4
  call void @putint(i32 %t34)
  %t36 = load i32, i32* %t38, align 4
  ret i32 %t36
B84:                               	; preds = %B41
  br label %B40
}
declare void @putint(i32)declare i32 @getint()declare void @punch(i32)