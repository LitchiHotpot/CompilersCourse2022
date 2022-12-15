define i32 @whileIf() {
B18:
  %t20 = alloca i32, align 4
  %t19 = alloca i32, align 4
  store i32 0, i32* %t19, align 4
  store i32 0, i32* %t20, align 4
  br label %B21
B21:                               	; preds = %B18, %B33
  %t2 = load i32, i32* %t19, align 4
  %t27 = icmp sgt i32 %t2, 0
  %t3 = icmp slt i32 %t2, 100
  br i1 %t3, label %B22, label %B30
B22:                               	; preds = %B21
  %t4 = load i32, i32* %t19, align 4
  %t37 = icmp sgt i32 %t4, 0
  %t5 = icmp eq i32 %t4, 5
  br i1 %t5, label %B31, label %B40
B30:                               	; preds = %B21
  br label %B23
B31:                               	; preds = %B22
  store i32 25, i32* %t20, align 4
  br label %B33
B40:                               	; preds = %B22
  br label %B32
B23:                               	; preds = %B30
  %t16 = load i32, i32* %t20, align 4
  %t68 = icmp sgt i32 %t16, 0
  ret i32 %t16
B33:                               	; preds = %B31, %B43
  %t14 = load i32, i32* %t19, align 4
  %t61 = icmp sgt i32 %t14, 0
  %t15 = add i32 %t14, 1
  store i32 %t15, i32* %t19, align 4
  br label %B21
B32:                               	; preds = %B40
  %t7 = load i32, i32* %t19, align 4
  %t47 = icmp sgt i32 %t7, 0
  %t8 = icmp eq i32 %t7, 10
  br i1 %t8, label %B41, label %B50
B41:                               	; preds = %B32
  store i32 42, i32* %t20, align 4
  br label %B43
B50:                               	; preds = %B32
  br label %B42
B43:                               	; preds = %B41, %B42
  br label %B33
B42:                               	; preds = %B50
  %t11 = load i32, i32* %t19, align 4
  %t54 = icmp sgt i32 %t11, 0
  %t12 = mul i32 %t11, 2
  store i32 %t12, i32* %t20, align 4
  br label %B43
}
define i32 @main() {
B69:
  %t17 = call i32 @whileIf()
  %t73 = icmp sgt i32 %t17, 0
  ret i32 %t17
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
