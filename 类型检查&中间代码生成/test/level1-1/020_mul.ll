define i32 @main() {
B5:
  %t7 = alloca i32, align 4
  %t6 = alloca i32, align 4
  store i32 10, i32* %t6, align 4
  store i32 5, i32* %t7, align 4
  %t2 = load i32, i32* %t6, align 4
  %t3 = load i32, i32* %t7, align 4
  %t4 = mul i32 %t2, %t3
  ret i32 %t4
}
