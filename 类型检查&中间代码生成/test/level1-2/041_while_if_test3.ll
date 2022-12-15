define i32 @deepWhileBr(i32,i32) {
B27:
  %t56 = alloca i32, align 4
  %t42 = alloca i32, align 4
  %t32 = alloca i32, align 4
  %t30 = alloca i32, align 4
  %t28 = alloca i32, align 4
  store i32 %t29, i32* %t28, align 4
  store i32 %t31, i32* %t30, align 4
  %t1 = load i32, i32* %t28, align 4
  %t2 = load i32, i32* %t30, align 4
  %t3 = add i32 %t1, %t2
  store i32 %t3, i32* %t32, align 4
  br label %B36
B36:                               	; preds = %B27
  %t4 = load i32, i32* %t32, align 4
  %t5 = icmp slt i32 %t4, 75
  br i1 %t5, label %B37, label %B41
B37:                               	; preds = %B36, %B44
  store i32 42, i32* %t42, align 4
  %t7 = load i32, i32* %t32, align 4
  %t8 = icmp slt i32 %t7, 100
  br i1 %t8, label %B43, label %B47
B41:                               	; preds = %B36
  br label %B38
B43:                               	; preds = %B37
  %t10 = load i32, i32* %t32, align 4
  %t11 = load i32, i32* %t42, align 4
  %t12 = add i32 %t10, %t11
  store i32 %t12, i32* %t32, align 4
  %t13 = load i32, i32* %t32, align 4
  %t14 = icmp sgt i32 %t13, 99
  br i1 %t14, label %B51, label %B55
B47:                               	; preds = %B37
  br label %B44
B38:                               	; preds = %B41, %B67
  %t22 = load i32, i32* %t32, align 4
  ret i32 %t22
B51:                               	; preds = %B43
  %t16 = load i32, i32* %t42, align 4
  %t17 = mul i32 %t16, 2
  store i32 %t17, i32* %t56, align 4
B55:                               	; preds = %B43
  br label %B52
B44:                               	; preds = %B47, %B52
  %t4 = load i32, i32* %t32, align 4
  %t5 = icmp slt i32 %t4, 75
  br i1 %t5, label %B37, label %B67
B52:                               	; preds = %B55
  br label %B44
B67:                               	; preds = %B44
  br label %B38
}
define i32 @main() {
B68:
  %t69 = alloca i32, align 4
  store i32 2, i32* %t69, align 4
  %t24 = load i32, i32* %t69, align 4
  %t25 = load i32, i32* %t69, align 4
  %t26 = call i32 @deepWhileBr(i32 %t24, i32 %t25)
  ret i32 %t26
}
