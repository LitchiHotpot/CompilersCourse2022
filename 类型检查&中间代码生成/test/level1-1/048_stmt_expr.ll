@k = global i32 0, align 4
@n = global i32 10, align 4
define i32 @main() {
B16:
  %t17 = alloca i32, align 4
  store i32 0, i32* %t17, align 4
  store i32 1, i32* @k, align 4
  %t15 = load i32, i32* @k, align 4
  ret i32 %t15
}
