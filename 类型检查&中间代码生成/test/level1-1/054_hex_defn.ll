define i32 @main() {
B2:
  %t3 = alloca i32, align 4
  store i32 15, i32* %t3, align 4
  %t1 = load i32, i32* %t3, align 4
  ret i32 %t1
}
declare void @putint(i32)declare i32 @getint()declare void @punch(i32)