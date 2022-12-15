@s = global i32 0, align 4
define i32 @get_ans_se(i32,i32,i32) {
B166:
  %t173 = alloca i32, align 4
  %t171 = alloca i32, align 4
  %t169 = alloca i32, align 4
  %t167 = alloca i32, align 4
  store i32 %t168, i32* %t167, align 4
  store i32 %t170, i32* %t169, align 4
  store i32 %t172, i32* %t171, align 4
  store i32 0, i32* %t173, align 4
}
define i32 @get_ans(i32,i32,i32) {
B185:
  %t192 = alloca i32, align 4
  %t190 = alloca i32, align 4
  %t188 = alloca i32, align 4
  %t186 = alloca i32, align 4
  store i32 %t187, i32* %t186, align 4
  store i32 %t189, i32* %t188, align 4
  store i32 %t191, i32* %t190, align 4
  store i32 0, i32* %t192, align 4
}
define i32 @main() {
B201:
  %t220 = alloca i32, align 4
  %t219 = alloca i32, align 4
  %t218 = alloca i32, align 4
  %t217 = alloca i32, align 4
  %t213 = alloca i32, align 4
  %t212 = alloca i32, align 4
  %t208 = alloca i32, align 4
  %t207 = alloca i32, align 4
  %t202 = alloca i32, align 4
  %t28 = sub nsw i32 0, -2147483648
  %t206 = icmp sgt i32 %t28, 0
  store i32 %t28, i32* %t202, align 4
  store i32 -2147483648, i32* %t207, align 4
  %t29 = add i32 -2147483648, 1
  store i32 %t29, i32* %t208, align 4
  store i32 2147483647, i32* %t212, align 4
  %t30 = sub i32 2147483647, 1
  store i32 %t30, i32* %t213, align 4
  %t32 = load i32, i32* %t202, align 4
  %t33 = load i32, i32* %t207, align 4
  %t34 = call i32 @get_ans(i32 0, i32 %t32, i32 %t33)
  store i32 %t34, i32* %t217, align 4
  %t36 = load i32, i32* %t217, align 4
  %t37 = load i32, i32* %t202, align 4
  %t38 = add i32 %t37, 1
  %t39 = load i32, i32* %t208, align 4
  %t40 = call i32 @get_ans(i32 %t36, i32 %t38, i32 %t39)
  store i32 %t40, i32* %t217, align 4
  %t42 = load i32, i32* %t217, align 4
  %t43 = load i32, i32* %t202, align 4
  %t44 = load i32, i32* %t212, align 4
  %t45 = sub nsw i32 0, %t44
  %t227 = icmp sgt i32 %t45, 0
  %t46 = sub i32 %t45, 1
  %t47 = call i32 @get_ans(i32 %t42, i32 %t43, i32 %t46)
  store i32 %t47, i32* %t217, align 4
  %t49 = load i32, i32* %t217, align 4
  %t50 = load i32, i32* %t202, align 4
  %t51 = load i32, i32* %t213, align 4
  %t52 = add i32 %t51, 1
  %t53 = call i32 @get_ans(i32 %t49, i32 %t50, i32 %t52)
  store i32 %t53, i32* %t217, align 4
  %t55 = load i32, i32* %t217, align 4
  %t56 = load i32, i32* %t207, align 4
  %t57 = sdiv i32 %t56, 2
  %t58 = load i32, i32* %t208, align 4
  %t59 = sdiv i32 %t58, 2
  %t60 = call i32 @get_ans(i32 %t55, i32 %t57, i32 %t59)
  store i32 %t60, i32* %t217, align 4
  %t62 = load i32, i32* %t217, align 4
  %t63 = load i32, i32* %t207, align 4
  %t64 = load i32, i32* %t212, align 4
  %t65 = sub nsw i32 0, %t64
  %t243 = icmp sgt i32 %t65, 0
  %t66 = sub i32 %t65, 1
  %t67 = call i32 @get_ans(i32 %t62, i32 %t63, i32 %t66)
  store i32 %t67, i32* %t217, align 4
  %t69 = load i32, i32* %t217, align 4
  %t70 = load i32, i32* %t207, align 4
  %t71 = load i32, i32* %t213, align 4
  %t72 = add i32 %t71, 1
  %t73 = call i32 @get_ans(i32 %t69, i32 %t70, i32 %t72)
  store i32 %t73, i32* %t217, align 4
  %t75 = load i32, i32* %t208, align 4
  %t76 = load i32, i32* %t212, align 4
  %t77 = call i32 @get_ans(i32 0, i32 %t75, i32 %t76)
  store i32 %t77, i32* %t218, align 4
  %t79 = load i32, i32* %t218, align 4
  %t80 = load i32, i32* %t208, align 4
  %t81 = load i32, i32* %t213, align 4
  %t82 = call i32 @get_ans(i32 %t79, i32 %t80, i32 %t81)
  store i32 %t82, i32* %t218, align 4
  %t84 = load i32, i32* %t218, align 4
  %t85 = load i32, i32* %t212, align 4
  %t86 = load i32, i32* %t213, align 4
  %t87 = call i32 @get_ans(i32 %t84, i32 %t85, i32 %t86)
  store i32 %t87, i32* %t218, align 4
  %t89 = load i32, i32* %t218, align 4
  %t90 = load i32, i32* %t202, align 4
  %t91 = sdiv i32 %t90, 2
  %t92 = load i32, i32* %t207, align 4
  %t93 = sdiv i32 %t92, 2
  %t94 = call i32 @get_ans(i32 %t89, i32 %t91, i32 %t93)
  store i32 %t94, i32* %t218, align 4
  %t96 = load i32, i32* %t202, align 4
  %t97 = load i32, i32* %t207, align 4
  %t98 = call i32 @get_ans_se(i32 0, i32 %t96, i32 %t97)
  store i32 %t98, i32* %t219, align 4
  %t100 = load i32, i32* %t219, alig