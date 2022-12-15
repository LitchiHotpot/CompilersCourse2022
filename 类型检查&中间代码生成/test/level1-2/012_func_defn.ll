@a = global i32 0, align 4
define i32 @func(i32) {
B9:
  %t10 = alloca i32, align 4
  store i32 %t11, i32* %t10, align 4
  %t1 = load i32, i32* %t10, align 4
  %t2 = sub i32 %t1, 1
  store i32 %t2, i32* %t10, align 4
  %t3 = load i32, i32* %t10, align 4
  ret i32 %t3
}
define i32 @main() {
B15:
  %t16 = alloca i32, align 4
  store i32 10, i32* @a, align 4
  %t6 = load i32, i32* @a, align 4
  %t7 = call i32 @func(i32 %t6)
  store i32 %t7, i32* %t16, align 4
  %t8 = load i32, i32* %t16, align 4
  ret i32 %t8
}
