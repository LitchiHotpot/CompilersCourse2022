define i32 @ifElseIf() {
B28:
  %t30 = alloca i32, align 4
  %t29 = alloca i32, align 4
  store i32 5, i32* %t29, align 4
  store i32 10, i32* %t30, align 4
}
define i32 @main() {
B54:
  ret i32 0
}
