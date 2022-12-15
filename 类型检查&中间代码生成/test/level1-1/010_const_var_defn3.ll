define i32 @main() {
B1:
  %t3 = alloca i32, align 4
  %t2 = alloca i32, align 4
  store i32 10, i32* %t2, align 4
  store i32 5, i32* %t3, align 4
  %t0 = load i32, i32* %t3, align 4
  ret i32 %t0
}
declare void @putint(i32)declare i32 @getint()declare void @punch(i32)