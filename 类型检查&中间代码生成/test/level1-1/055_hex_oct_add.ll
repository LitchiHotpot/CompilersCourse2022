define i32 @main() {
B6:
  %t8 = alloca i32, align 4
  %t7 = alloca i32, align 4
  store i32 15, i32* %t7, align 4
  store i32 12, i32* %t8, align 4
  %t2 = load i32, i32* %t7, align 4
  %t3 = load i32, i32* %t8, align 4
  %t4 = add i32 %t2, %t3
  %t5 = add i32 %t4, 61
  ret i32 %t5
}
declare void @putint(i32)declare i32 @getint()declare void @punch(i32)