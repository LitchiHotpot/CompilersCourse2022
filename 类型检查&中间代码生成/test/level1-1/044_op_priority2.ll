define i32 @main() {
B11:
  %t15 = alloca i32, align 4
  %t14 = alloca i32, align 4
  %t13 = alloca i32, align 4
  %t12 = alloca i32, align 4
  store i32 10, i32* %t12, align 4
  store i32 4, i32* %t13, align 4
  store i32 2, i32* %t14, align 4
  store i32 2, i32* %t15, align 4
  %t4 = load i32, i32* %t14, align 4
  %t5 = load i32, i32* %t12, align 4
  %t6 = add i32 %t4, %t5
  %t7 = load i32, i32* %t13, align 4
  %t8 = load i32, i32* %t15, align 4
  %t9 = sub i32 %t7, %t8
  %t10 = mul i32 %t6, %t9
  ret i32 %t10
}
declare void @putint(i32)declare i32 @getint()declare void @punch(i32)