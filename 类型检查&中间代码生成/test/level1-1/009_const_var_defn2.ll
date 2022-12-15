@a = global i32 10, align 4
@b = global i32 5, align 4
define i32 @main() {
B1:
  %t0 = load i32, i32* @b, align 4
  ret i32 %t0
}
declare void @putint(i32)declare i32 @getint()declare void @punch(i32)