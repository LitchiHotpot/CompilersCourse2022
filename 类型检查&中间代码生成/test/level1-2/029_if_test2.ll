define i32 @ifElseIf() {
B30:
  %t32 = alloca i32, align 4
  %t31 = alloca i32, align 4
  store i32 5, i32* %t31, align 4
  store i32 10, i32* %t32, align 4
  %t2 = load i32, i32* %t31, align 4
  %t40 = icmp sgt i32 %t2, 0
  %t3 = icmp eq i32 %t2, 6
  br i1 %t3, label %B33, label %B43
B33:                               	; preds = %B30, %B36
  %t7 = load i32, i32* %t31, align 4
  %t54 = icmp sgt i32 %t7, 0
  ret i32 %t7
  br label %B35
B43:                               	; preds = %B30
  br label %B36
B35:                               	; preds = %B33, %B57
  %t27 = load i32, i32* %t31, align 4
  %t117 = icmp sgt i32 %t27, 0
  ret i32 %t27
B36:                               	; preds = %B43
  %t4 = load i32, i32* %t32, align 4
  %t47 = icmp sgt i32 %t4, 0
  %t5 = icmp eq i32 %t4, 11
  br i1 %t5, label %B33, label %B50
B50:                               	; preds = %B36
  br label %B34
B34:                               	; preds = %B50
  %t8 = load i32, i32* %t32, align 4
  %t62 = icmp sgt i32 %t8, 0
  %t9 = icmp eq i32 %t8, 10
  br i1 %t9, label %B58, label %B65
B58:                               	; preds = %B34
  %t10 = load i32, i32* %t31, align 4
  %t69 = icmp sgt i32 %t10, 0
  %t11 = icmp eq i32 %t10, 1
  br i1 %t11, label %B55, label %B72
B65:                               	; preds = %B34
  br label %B56
B55:                               	; preds = %B58
  store i32 25, i32* %t31, align 4
  br label %B57
B72:                               	; preds = %B58
  br label %B56
B56:                               	; preds = %B65, %B72
  %t14 = load i32, i32* %t32, align 4
  %t80 = icmp sgt i32 %t14, 0
  %t15 = icmp eq i32 %t14, 10
  br i1 %t15, label %B76, label %B83
B57:                               	; preds = %B55, %B75
  br label %B35
B76:                               	; preds = %B56
  %t16 = load i32, i32* %t31, align 4
  %t87 = icmp sgt i32 %t16, 0
  %t17 = sub nsw i32 0, 5
  %t91 = icmp sgt i32 %t17, 0
  %t18 = icmp eq i32 %t16, %t17
  br i1 %t18, label %B73, label %B94
B83:                               	; preds = %B56
  br label %B74
B73:                               	; preds = %B76
  %t21 = load i32, i32* %t31, align 4
  %t98 = icmp sgt i32 %t21, 0
  %t22 = add i32 %t21, 15
  store i32 %t22, i32* %t31, align 4
  br label %B75
B94:                               	; preds = %B76
  br label %B74
B74:                               	; preds = %B83, %B94
  %t24 = load i32, i32* %t31, align 4
  %t105 = icmp sgt i32 %t24, 0
  %t106 = icmp sgt i32 %t24, 0
  %t26 = sub nsw i32 0, %t24
  %t113 = icmp sgt i32 %t26, 0
  store i32 %t26, i32* %t31, align 4
  br label %B75
B75:                               	; preds = %B73, %B74
  br label %B57
}
define i32 @main() {
B118:
  %t28 = call i32 @ifElseIf()
  %t122 = icmp sgt i32 %t28, 0
  call void @putint(i32 %t28)
  ret i32 0
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
