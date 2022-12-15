@n = global i32 0, align 4
define i32 @main() {
B20:
  %t23 = alloca i32, align 4
  %t22 = alloca i32, align 4
  %t21 = alloca i32, align 4
  %t1 = call i32 @getint()
  store i32 %t1, i32* %t21, align 4
  %t3 = call i32 @getint()
  store i32 %t3, i32* %t22, align 4
  %t5 = load i32, i32* %t21, align 4
  store i32 %t5, i32* %t23, align 4
  %t7 = load i32, i32* %t22, align 4
  store i32 %t7, i32* %t21, align 4
  %t9 = load i32, i32* %t23, align 4
  store i32 %t9, i32* %t22, align 4
  %t10 = load i32, i32* %t21, align 4
  call void @putint(i32 %t10)
  store i32 10, i32* %t23, align 4
  %t13 = load i32, i32* %t23, align 4
  call void @putch(i32 %t13)
  %t15 = load i32, i32* %t22, align 4
  call void @putint(i32 %t15)
  store i32 10, i32* %t23, align 4
  %t18 = load i32, i32* %t23, align 4
  call void @putch(i32 %t18)
  ret i32 0
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
