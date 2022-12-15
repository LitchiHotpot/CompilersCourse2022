define i32 @main() {
B3:
  %t4 = alloca i32, align 4
  store i32 10, i32* %t4, align 4
  %t1 = load i32, i32* %t4, align 4
  %t2 = sdiv i32 %t1, 3
  ret i32 %t2
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
