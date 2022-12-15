@a = global i32 0, align 4
@b = global i32 0, align 4
@c = global i32 0, align 4
@d = global i32 0, align 4
@e = global i32 0, align 4
define i32 @main() {
B43:
  %t44 = alloca i32, align 4
  %t1 = call i32 @getint()
  store i32 %t1, i32* @a, align 4
  %t3 = call i32 @getint()
  store i32 %t3, i32* @b, align 4
  %t5 = call i32 @getint()
  store i32 %t5, i32* @c, align 4
  %t7 = call i32 @getint()
  store i32 %t7, i32* @d, align 4
  %t9 = call i32 @getint()
  store i32 %t9, i32* @e, align 4
  store i32 0, i32* %t44, align 4
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
  br i1 %t20, label %B45, label %B63
B45:                               	; preds = %B43, %B47, %B48
  store i32 1, i32* %t44, align 4
  br label %B46
B63:                               	; preds = %B43
  br label %B48
B46:                               	; preds = %B45, %B87
  %t42 = load i32, i32* %t44, align 4
  ret i32 %t42
B48:                               	; preds = %B63
  %t21 = load i32, i32* @a, align 4
  %t22 = load i32, i32* @b, align 4
  %t23 = mul i32 %t21, %t22
  %t24 = load i32, i32* @c, align 4
  %t25 = sdiv i32 %t23, %t24
  %t26 = load i32, i32* @e, align 4
  %t27 = load i32, i32* @d, align 4
  %t28 = add i32 %t26, %t27
  %t29 = icmp eq i32 %t25, %t28
  br i1 %t29, label %B45, label %B75
B75:                               	; preds = %B48
  br label %B47
B47:                               	; preds = %B75
  %t31 = load i32, i32* @a, align 4
  %t32 = load i32, i32* @b, align 4
  %t33 = add i32 %t31, %t32
  %t34 = load i32, i32* @c, align 4
  %t35 = add i32 %t33, %t34
  %t36 = load i32, i32* @d, align 4
  %t37 = load i32, i32* @e, align 4
  %t38 = add i32 %t36, %t37
  %t39 = icmp eq i32 %t35, %t38
  br i1 %t39, label %B45, label %B87
B87:                               	; preds = %B47
  br label %B46
}
declare void @putint(i32)declare i32 @getint()declare void @punch(i32)