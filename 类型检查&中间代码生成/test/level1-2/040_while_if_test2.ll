define i32 @ifWhile() {
B22:
  %t24 = alloca i32, align 4
  %t23 = alloca i32, align 4
  store i32 0, i32* %t23, align 4
  store i32 3, i32* %t24, align 4
  %t2 = load i32, i32* %t23, align 4
  %t31 = icmp sgt i32 %t2, 0
  %t3 = icmp eq i32 %t2, 5
  br i1 %t3, label %B25, label %B34
B25:                               	; preds = %B22
  br label %B35
B34:                               	; preds = %B22
  br label %B26
B35:                               	; preds = %B25, %B36
  %t4 = load i32, i32* %t24, align 4
  %t41 = icmp sgt i32 %t4, 0
  %t5 = icmp eq i32 %t4, 2
  br i1 %t5, label %B36, label %B44
B26:                               	; preds = %B34
  br label %B59
B36:                               	; preds = %B35
  %t7 = load i32, i32* %t24, align 4
  %t48 = icmp sgt i32 %t7, 0
  %t8 = add i32 %t7, 2
  store i32 %t8, i32* %t24, align 4
  br label %B35
B44:                               	; preds = %B35
  br label %B37
B59:                               	; preds = %B26, %B60
  %t12 = load i32, i32* %t23, align 4
  %t65 = icmp sgt i32 %t12, 0
  %t13 = icmp slt i32 %t12, 5
  br i1 %t13, label %B60, label %B68
B37:                               	; preds = %B44
  %t10 = load i32, i32* %t24, align 4
  %t55 = icmp sgt i32 %t10, 0
  %t11 = add i32 %t10, 25
  store i32 %t11, i32* %t24, align 4
  br label %B27
B60:                               	; preds = %B59
  %t15 = load i32, i32* %t24, align 4
  %t72 = icmp sgt i32 %t15, 0
  %t16 = mul i32 %t15, 2
  store i32 %t16, i32* %t24, align 4
  %t18 = load i32, i32* %t23, align 4
  %t79 = icmp sgt i32 %t18, 0
  %t19 = add i32 %t18, 1
  store i32 %t19, i32* %t23, align 4
  br label %B59
B68:                               	; preds = %B59
  br label %B61
B27:                               	; preds = %B37, %B61
  %t20 = load i32, i32* %t24, align 4
  %t86 = icmp sgt i32 %t20, 0
  ret i32 %t20
B61:                               	; preds = %B68
  br label %B27
}
define i32 @main() {
B87:
  %t21 = call i32 @ifWhile()
  %t91 = icmp sgt i32 %t21, 0
  ret i32 %t21
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
