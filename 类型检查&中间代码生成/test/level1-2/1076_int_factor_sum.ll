@N = global i32 0, align 4
@newline = global i32 0, align 4
define i32 @factor(i32 %t24) {
B23:
  %t27 = alloca i32, align 4
  %t26 = alloca i32, align 4
  %t25 = alloca i32, align 4
  store i32 %t24, i32* %t25, align 4
  store i32 0, i32* %t27, align 4
  store i32 1, i32* %t26, align 4
  br label %B28
B28:                               	; preds = %B23, %B46
  %t2 = load i32, i32* %t26, align 4
  %t34 = icmp sgt i32 %t2, 0
  %t3 = load i32, i32* %t25, align 4
  %t38 = icmp sgt i32 %t3, 0
  %t4 = add i32 %t3, 1
  %t5 = icmp slt i32 %t2, %t4
  br i1 %t5, label %B29, label %B44
B29:                               	; preds = %B28
  %t6 = load i32, i32* %t25, align 4
  %t50 = icmp sgt i32 %t6, 0
  %t7 = load i32, i32* %t26, align 4
  %t54 = icmp sgt i32 %t7, 0
  %t8 = srem i32 %t6, %t7
  %t9 = icmp eq i32 %t8, 0
  br i1 %t9, label %B45, label %B60
B44:                               	; preds = %B28
  br label %B30
B45:                               	; preds = %B29
  %t11 = load i32, i32* %t27, align 4
  %t64 = icmp sgt i32 %t11, 0
  %t12 = load i32, i32* %t26, align 4
  %t68 = icmp sgt i32 %t12, 0
  %t13 = add i32 %t11, %t12
  store i32 %t13, i32* %t27, align 4
  br label %B46
B60:                               	; preds = %B29
  br label %B46
B30:                               	; preds = %B44
  %t17 = load i32, i32* %t27, align 4
  %t82 = icmp sgt i32 %t17, 0
  ret i32 %t17
B46:                               	; preds = %B45, %B60
  %t15 = load i32, i32* %t26, align 4
  %t75 = icmp sgt i32 %t15, 0
  %t16 = add i32 %t15, 1
  store i32 %t16, i32* %t26, align 4
  br label %B28
}
define i32 @main() {
B83:
  %t86 = alloca i32, align 4
  %t85 = alloca i32, align 4
  %t84 = alloca i32, align 4
  store i32 4, i32* @N, align 4
  store i32 10, i32* @newline, align 4
  store i32 1478, i32* %t85, align 4
  %t21 = load i32, i32* %t85, align 4
  %t90 = icmp sgt i32 %t21, 0
  %t22 = call i32 @factor(i32 %t21)
  %t94 = icmp sgt i32 %t22, 0
  ret i32 %t22
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
