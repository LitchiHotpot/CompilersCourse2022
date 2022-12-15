define i32 @main() {
B13:
  %t14 = alloca i32, align 4
  store i32 10, i32* %t14, align 4
  %t1 = load i32, i32* %t14, align 4
  %t18 = icmp sgt i32 %t1, 0
  %t2 = xor i1 %t18 , true
  %t19 = zext i1 %t18 to i32
  %t23 = icmp sgt i32 %t19, 0
  %t3 = xor i1 %t23 , true
  %t24 = zext i1 %t23 to i32
  %t28 = icmp sgt i32 %t24, 0
  %t4 = xor i1 %t28 , true
  %t29 = zext i1 %t28 to i32
  %t5 = sub nsw i32 0, %t29
  %t36 = icmp sgt i32 %t5, 0
  %t37 = icmp sgt i32 %t5, 0
  br i1 %t37, label %B15, label %B40
B15:                               	; preds = %B13
  %t8 = sub nsw i32 0, 1
  %t44 = icmp sgt i32 %t8, 0
  %t9 = sub nsw i32 0, %t8
  %t48 = icmp sgt i32 %t9, 0
  %t10 = sub nsw i32 0, %t9
  %t52 = icmp sgt i32 %t10, 0
  store i32 %t10, i32* %t14, align 4
  br label %B17
B40:                               	; preds = %B13
  br label %B16
B17:                               	; preds = %B15, %B16
  %t12 = load i32, i32* %t14, align 4
  ret i32 %t12
B16:                               	; preds = %B40
  store i32 0, i32* %t14, align 4
  br label %B17
}
declare void @putint(i32)declare i32 @getint()declare void @punch(i32)