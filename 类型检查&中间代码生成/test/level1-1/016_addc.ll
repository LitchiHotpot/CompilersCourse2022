@a = global i32 10, align 4
define i32 @main() {
B2:
  %t0 = load i32, i32* @a, align 4
  %t1 = add i32 %t0, 5
  ret i32 %t1
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
