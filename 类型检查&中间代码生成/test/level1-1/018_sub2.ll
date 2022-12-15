@a = global i32 10, align 4
define i32 @main() {
B4:
  %t5 = alloca i32, align 4
  store i32 2, i32* %t5, align 4
  %t1 = load i32, i32* %t5, align 4
  %t2 = load i32, i32* @a, align 4
  %t3 = sub i32 %t1, %t2
  ret i32 %t3
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
