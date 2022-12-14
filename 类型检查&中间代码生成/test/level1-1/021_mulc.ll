@a = global i32 5, align 4
define i32 @main() {
B2:
  %t0 = load i32, i32* @a, align 4
  %t1 = mul i32 %t0, 5
  ret i32 %t1
}
