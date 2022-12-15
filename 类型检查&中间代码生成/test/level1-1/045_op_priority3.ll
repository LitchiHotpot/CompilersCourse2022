define i32 @main() {
B9:
  %t11 = alloca i32, align 4
  %t10 = alloca i32, align 4
  store i32 10, i32* %t10, align 4
  store i32 30, i32* %t11, align 4
  %t2 = load i32, i32* %t10, align 4
  %t3 = sub nsw i32 0, 5
  %t15 = icmp sgt i32 %t3, 0
  %t4 = sub i32 %t2, %t3
  %t5 = load i32, i32* %t11, align 4
  %t6 = add i32 %t4, %t5
  %t7 = sub nsw i32 0, 5
  %t25 = icmp sgt i32 %t7, 0
  %t8 = add i32 %t6, %t7
  ret i32 %t8
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
