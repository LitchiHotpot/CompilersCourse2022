@a = global i32 0, align 4
@b = global i32 0, align 4
@c = global i32 0, align 4
@d = global i32 0, align 4
@e = global i32 0, align 4
define i32 @main() {
B43:
  %t64 = alloca i32, align 4
  %t1 = call i32 @getint()
  %t47 = icmp sgt i32 %t1, 0
  store i32 %t1, i32* @a, align 4
  %t3 = call i32 @getint()
  %t51 = icmp sgt i32 %t3, 0
  store i32 %t3, i32* @b, align 4
  %t5 = call i32 @getint()
  %t55 = icmp sgt i32 %t5, 0
  store i32 %t5, i32* @c, align 4
  %t7 = call i32 @getint()
  %t59 = icmp sgt i32 %t7, 0
  store i32 %t7, i32* @d, align 4
  %t9 = call i32 @getint()
  %t63 = icmp sgt i32 %t9, 0
  store i32 %t9, i32* @e, align 4
  store i32 0, i32* %t64, align 4
  %t10 = load i32, i32* @a, align 4
  %t11 = load i32, i32* @b, align 4
  %t12 = load i32, i32* @c, align 4
  %t13 = mul i32 %t11, %t12
  %t14 = sub i32 %t10, %t13
  %t15 = load i32, i32* @d, align 4
  %t16 = load i32, i32* @a, align 4
  %t17 = load i32, i32* @c, align 4
  %t18 = sdiv i32 %t16, %t17
  %t19 = sub i32 %t15, %t18
  %t20 = icmp ne i32 %t14, %t19
  br i1 %t20, label %B65, label %B83
B65:                               	; preds = %B43, %B67, %B68
  store i32 1, i32* %t64, align 4
  br label %B66
B83:                               	; preds = %B43
  br label %B68
B66:                               	; preds = %B65, %B107
  %t42 = load i32, i32* %t64, align 4
  ret i32 %t42
B68:                               	; preds = %B83
  %t21 = load i32, i32* @a, align 4
  %t22 = load i32, i32* @b, align 4
  %t23 = mul i32 %t21, %t22
  %t24 = load i32, i32* @c, align 4
  %t25 = sdiv i32 %t23, %t24
  %t26 = load i32, i32* @e, align 4
  %t27 = load i32, i32* @d, align 4
  %t28 = add i32 %t26, %t27
  %t29 = icmp eq i32 %t25, %t28
  br i1 %t29, label %B65, label %B95
B95:                               	; preds = %B68
  br label %B67
B67:                               	; preds = %B95
  %t31 = load i32, i32* @a, align 4
  %t32 = load i32, i32* @b, align 4
  %t33 = add i32 %t31, %t32
  %t34 = load i32, i32* @c, align 4
  %t35 = add i32 %t33, %t34
  %t36 = load i32, i32* @d, align 4
  %t37 = load i32, i32* @e, align 4
  %t38 = add i32 %t36, %t37
  %t39 = icmp eq i32 %t35, %t38
  br i1 %t39, label %B65, label %B107
B107:                               	; preds = %B67
  br label %B66
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
