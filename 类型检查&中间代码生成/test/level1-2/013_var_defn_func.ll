define i32 @defn() {
B2:
  ret i32 4
}
define i32 @main() {
B3:
  %t4 = alloca i32, align 4
  %t0 = call i32 @defn()
  %t8 = icmp sgt i32 %t0, 0
  store i32 %t0, i32* %t4, align 4
  %t1 = load i32, i32* %t4, align 4
  %t12 = icmp sgt i32 %t1, 0
  ret i32 %t1
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
