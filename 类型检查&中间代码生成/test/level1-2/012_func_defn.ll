@a = global i32 0, align 4
define i32 @func(i32 %t10) {
B9:
  %t11 = alloca i32, align 4
  store i32 %t10, i32* %t11, align 4
  %t1 = load i32, i32* %t11, align 4
  %t15 = icmp sgt i32 %t1, 0
  %t2 = sub i32 %t1, 1
  store i32 %t2, i32* %t11, align 4
  %t3 = load i32, i32* %t11, align 4
  %t22 = icmp sgt i32 %t3, 0
  ret i32 %t3
}
define i32 @main() {
B23:
  %t24 = alloca i32, align 4
  store i32 10, i32* @a, align 4
  %t6 = load i32, i32* @a, align 4
  %t28 = icmp sgt i32 %t6, 0
  %t7 = call i32 @func(i32 %t6)
  %t32 = icmp sgt i32 %t7, 0
  store i32 %t7, i32* %t24, align 4
  %t8 = load i32, i32* %t24, align 4
  %t36 = icmp sgt i32 %t8, 0
  ret i32 %t8
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
