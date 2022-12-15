@a = global i32 3, align 4
@b = global i32 5, align 4
define i32 @main() {
B3:
  %t0 = load i32, i32* @a, align 4
  %t1 = load i32, i32* @b, align 4
  %t2 = add i32 %t0, %t1
  ret i32 %t2
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
