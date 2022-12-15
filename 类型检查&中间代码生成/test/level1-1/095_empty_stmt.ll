define i32 @main() {
B3:
  %t4 = alloca i32, align 4
  store i32 10, i32* %t4, align 4
  %t0 = load i32, i32* %t4, align 4
  %t1 = mul i32 %t0, 2
  %t2 = add i32 %t1, 1
  ret i32 %t2
}
declare void @putint(i32)declare i32 @getint()declare void @punch(i32)