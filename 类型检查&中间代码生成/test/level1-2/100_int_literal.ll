@s = global i32 0, align 4
define i32 @get_ans_se(i32 %t167,i32 %t168,i32 %t169) {
B166:
  %t173 = alloca i32, align 4
  %t172 = alloca i32, align 4
  %t171 = alloca i32, align 4
  %t170 = alloca i32, align 4
  store i32 %t167, i32* %t170, align 4
  store i32 %t168, i32* %t171, align 4
  store i32 %t169, i32* %t172, align 4
  store i32 0, i32* %t173, align 4
  %t0 = load i32, i32* %t171, align 4
  %t179 = icmp sgt i32 %t0, 0
  %t1 = load i32, i32* %t172, align 4
  %t183 = icmp sgt i32 %t1, 0
  %t2 = icmp eq i32 %t0, %t1
  br i1 %t2, label %B174, label %B186
B174:                               	; preds = %B166
  store i32 1, i32* %t173, align 4
  br label %B175
B186:                               	; preds = %B166
  br label %B175
B175:                               	; preds = %B174, %B186
  %t5 = load i32, i32* %t170, align 4
  %t190 = icmp sgt i32 %t5, 0
  %t6 = mul i32 %t5, 2
  store i32 %t6, i32* %t170, align 4
  %t8 = load i32, i32* %t170, align 4
  %t197 = icmp sgt i32 %t8, 0
  %t9 = load i32, i32* %t173, align 4
  %t201 = icmp sgt i32 %t9, 0
  %t10 = add i32 %t8, %t9
  store i32 %t10, i32* %t170, align 4
  %t12 = load i32, i32* @s, align 4
  %t208 = icmp sgt i32 %t12, 0
  %t13 = load i32, i32* %t170, align 4
  %t212 = icmp sgt i32 %t13, 0
  %t14 = add i32 %t12, %t13
  store i32 %t14, i32* @s, align 4
  %t15 = load i32, i32* %t170, align 4
  %t219 = icmp sgt i32 %t15, 0
  ret i32 %t15
}
define i32 @get_ans(i32 %t221,i32 %t222,i32 %t223) {
B220:
  %t227 = alloca i32, align 4
  %t226 = alloca i32, align 4
  %t225 = alloca i32, align 4
  %t224 = alloca i32, align 4
  store i32 %t221, i32* %t224, align 4
  store i32 %t222, i32* %t225, align 4
  store i32 %t223, i32* %t226, align 4
  store i32 0, i32* %t227, align 4
  %t16 = load i32, i32* %t225, align 4
  %t233 = icmp sgt i32 %t16, 0
  %t17 = load i32, i32* %t226, align 4
  %t237 = icmp sgt i32 %t17, 0
  %t18 = icmp eq i32 %t16, %t17
  br i1 %t18, label %B228, label %B240
B228:                               	; preds = %B220
  store i32 1, i32* %t227, align 4
  br label %B229
B240:                               	; preds = %B220
  br label %B229
B229:                               	; preds = %B228, %B240
  %t21 = load i32, i32* %t224, align 4
  %t244 = icmp sgt i32 %t21, 0
  %t22 = mul i32 %t21, 2
  store i32 %t22, i32* %t224, align 4
  %t24 = load i32, i32* %t224, align 4
  %t251 = icmp sgt i32 %t24, 0
  %t25 = load i32, i32* %t227, align 4
  %t255 = icmp sgt i32 %t25, 0
  %t26 = add i32 %t24, %t25
  store i32 %t26, i32* %t224, align 4
  %t27 = load i32, i32* %t224, align 4
  %t262 = icmp sgt i32 %t27, 0
  ret i32 %t27
}
define i32 @main() {
B263:
  %t282 = alloca i32, align 4
  %t281 = alloca i32, align 4
  %t280 = alloca i32, align 4
  %t279 = alloca i32, align 4
  %t275 = alloca i32, align 4
  %t274 = alloca i32, align 4
  %t270 = alloca i32, align 4
  %t269 = alloca i32, align 4
  %t264 = alloca i32, align 4
  %t28 = sub nsw i32 0, -2147483648
  %t268 = icmp sgt i32 %t28, 0
  store i32 %t28, i32* %t264, align 4
  store i32 -2147483648, i32* %t269, align 4
  %t29 = add i32 -2147483648, 1
  store i32 %t29, i32* %t270, align 4
  store i32 2147483647, i32* %t274, align 4
  %t30 = sub i32 2147483647, 1
  store i32 %t30, i32* %t275, align 4
  %t32 = load i32, i32* %t264, align 4
  %t33 = load i32, i32* %t269, align 4
  %t34 = call i32 @get_ans(i32 0, i32 %t32, i32 %t33)
  %t292 = icmp sgt i32 %t34, 0
  store i32 %t34, i32* %t279, align 4
  %t36 = load i32, i32* %t279, align 4
  %t296 = icmp sgt i32 %t36, 0
  %t37 = load i32, i32* %t264, align 4
  %t38 = add i32 %t37, 1
  %t39 = load i32, i32* %t270, align 4
  %t40 = call i32 @get_ans(i32 %t36, i32 %t38, i32 %t39)
  %t309 = icmp sgt i32 %t40, 0
  store i32 %t40, i32* %t279, align 4
  %t42 = load i32, i32* %t279, align 4
  %t313 = icmp sgt i32 %t42, 0
  %t43 = load i32, i32* %t264, align 4
  %t44 = load i32, i32* %t274, align 4
  %t45 = sub nsw i32 0, %t44
  %t323 = icmp sgt i32 %t45, 0
  %t46 = sub i32 %t45, 1
  %t47 = call i32 @get_ans(i32 %t42, i32 %t43, i32 %t46)
  %t330 = icmp sgt i32 %t47, 0
  store i32 %t47, i32* %t279, align 4
  %t49 = load i32, i32* %t279, align 4
  %t334 = icmp sgt i32 %t49, 0
  %t50 = load i32, i32* %t264, align 4
  %t51 = load i32, i32* %t275, align 4
  %t52 = add i32 %t51, 1
  %t53 = call i32 @get_ans(i32 %t49, i32 %t50, i32 %t52)
  %t347 = icmp sgt i32 %t53, 0
  store i32 %t53, i32* %t279, align 4
  %t55 = load i32, i32* %t279, align 4
  %t351 = icmp sgt i32 %t55, 0
  %t56 = load i32, i32* %t269, align 4
  %t57 = sdiv i32 %t56, 2
  %t58 = load i32, i32* %t270, align 4
  %t59 = sdiv i32 %t58, 2
  %t60 = call i32 @get_ans(i32 %t55, i32 %t57, i32 %t59)
  %t367 = icmp sgt i32 %t60, 0
  store i32 %t60, i32* %t279, align 4
  %t62 = load i32, i32* %t279, align 4
  %t371 = icmp sgt i32 %t62, 0
  %t63 = load i32, i32* %t269, align 4
  %t64 = load i32, i32* %t274, align 4
  %t65 = sub nsw i32 0, %t64
  %t381 = icmp sgt i32 %t65, 0
  %t66 = sub i32 %t65, 1
  %t67 = call i32 @get_ans(i32 %t62, i32 %t63, i32 %t66)
  %t388 = icmp sgt i32 %t67, 0
  store i32 %t67, i32* %t279, align 4
  %t69 = load i32, i32* %t279, align 4
  %t392 = icmp sgt i32 %t69, 0
  %t70 = load i32, i32* %t269, align 4
  %t71 = load i32, i32* %t275, align 4
  %t72 = add i32 %t71, 1
  %t73 = call i32 @get_ans(i32 %t69, i32 %t70, i32 %t72)
  %t405 = icmp sgt i32 %t73, 0
  store i32 %t73, i32* %t279, align 4
  %t75 = load i32, i32* %t270, align 4
  %t76 = load i32, i32* %t274, align 4
  %t77 = call i32 @get_ans(i32 0, i32 %t75, i32 %t76)
  %t415 = icmp sgt i32 %t77, 0
  store i32 %t77, i32* %t280, align 4
  %t79 = load i32, i32* %t280, align 4
  %t419 = icmp sgt i32 %t79, 0
  %t80 = load i32, i32* %t270, align 4
  %t81 = load i32, i32* %t275, align 4
  %t82 = call i32 @get_ans(i32 %t79, i32 %t80, i32 %t81)
  %t429 = icmp sgt i32 %t82, 0
  store i32 %t82, i32* %t280, align 4
  %t84 = load i32, i32* %t280, align 4
  %t433 = icmp sgt i32 %t84, 0
  %t85 = load i32, i32* %t274, align 4
  %t86 = load i32, i32* %t275, align 4
  %t87 = call i32 @get_ans(i32 %t84, i32 %t85, i32 %t86)
  %t443 = icmp sgt i32 %t87, 0
  store i32 %t87, i32* %t280, align 4
  %t89 = load i32, i32* %t280, align 4
  %t447 = icmp sgt i32 %t89, 0
  %t90 = load i32, i32* %t264, align 4
  %t91 = sdiv i32 %t90, 2
  %t92 = load i32, i32* %t269, align 4
  %t93 = sdiv i32 %t92, 2
  %t94 = call i32 @get_ans(i32 %t89, i32 %t91, i32 %t93)
  %t463 = icmp sgt i32 %t94, 0
  store i32 %t94, i32* %t280, align 4
  %t96 = load i32, i32* %t264, align 4
  %t97 = load i32, i32* %t269, align 4
  %t98 = call i32 @get_ans_se(i32 0, i32 %t96, i32 %t97)
  %t473 = icmp sgt i32 %t98, 0
  store i32 %t98, i32* %t281, align 4
  %t100 = load i32, i32* %t281, align 4
  %t477 = icmp sgt i32 %t100, 0
  %t101 = load i32, i32* %t264, align 4
  %t102 = add i32 %t101, 1
  %t103 = load i32, i32* %t270, align 4
  %t104 = call i32 @get_ans_se(i32 %t100, i32 %t102, i32 %t103)
  %t490 = icmp sgt i32 %t104, 0
  store i32 %t104, i32* %t281, align 4
  %t106 = load i32, i32* %t281, align 4
  %t494 = icmp sgt i32 %t106, 0
  %t107 = load i32, i32* %t264, align 4
  %t108 = load i32, i32* %t274, align 4
  %t109 = sub nsw i32 0, %t108
  %t504 = icmp sgt i32 %t109, 0
  %t110 = sub i32 %t109, 1
  %t111 = call i32 @get_ans_se(i32 %t106, i32 %t107, i32 %t110)
  %t511 = icmp sgt i32 %t111, 0
  store i32 %t111, i32* %t281, align 4
  %t113 = load i32, i32* %t281, align 4
  %t515 = icmp sgt i32 %t113, 0
  %t114 = load i32, i32* %t264, align 4
  %t115 = load i32, i32* %t275, align 4
  %t116 = add i32 %t115, 1
  %t117 = call i32 @get_ans_se(i32 %t113, i32 %t114, i32 %t116)
  %t528 = icmp sgt i32 %t117, 0
  store i32 %t117, i32* %t281, align 4
  %t119 = load i32, i32* %t281, align 4
  %t532 = icmp sgt i32 %t119, 0
  %t120 = load i32, i32* %t269, align 4
  %t121 = sdiv i32 %t120, 2
  %t122 = load i32, i32* %t270, align 4
  %t123 = sdiv i32 %t122, 2
  %t124 = call i32 @get_ans_se(i32 %t119, i32 %t121, i32 %t123)
  %t548 = icmp sgt i32 %t124, 0
  store i32 %t124, i32* %t281, align 4
  %t126 = load i32, i32* %t281, align 4
  %t552 = icmp sgt i32 %t126, 0
  %t127 = load i32, i32* %t269, align 4
  %t128 = load i32, i32* %t274, align 4
  %t129 = sub nsw i32 0, %t128
  %t562 = icmp sgt i32 %t129, 0
  %t130 = sub i32 %t129, 1
  %t131 = call i32 @get_ans_se(i32 %t126, i32 %t127, i32 %t130)
  %t569 = icmp sgt i32 %t131, 0
  store i32 %t131, i32* %t281, align 4
  %t133 = load i32, i32* %t281, align 4
  %t573 = icmp sgt i32 %t133, 0
  %t134 = load i32, i32* %t269, align 4
  %t135 = load i32, i32* %t275, align 4
  %t136 = add i32 %t135, 1
  %t137 = call i32 @get_ans_se(i32 %t133, i32 %t134, i32 %t136)
  %t586 = icmp sgt i32 %t137, 0
  store i32 %t137, i32* %t281, align 4
  %t139 = load i32, i32* %t270, align 4
  %t140 = load i32, i32* %t274, align 4
  %t141 = call i32 @get_ans_se(i32 0, i32 %t139, i32 %t140)
  %t596 = icmp sgt i32 %t141, 0
  store i32 %t141, i32* %t282, align 4
  %t143 = load i32, i32* %t282, align 4
  %t600 = icmp sgt i32 %t143, 0
  %t144 = load i32, i32* %t270, align 4
  %t145 = load i32, i32* %t275, align 4
  %t146 = call i32 @get_ans_se(i32 %t143, i32 %t144, i32 %t145)
  %t610 = icmp sgt i32 %t146, 0
  store i32 %t146, i32* %t282, align 4
  %t148 = load i32, i32* %t282, align 4
  %t614 = icmp sgt i32 %t148, 0
  %t149 = load i32, i32* %t274, align 4
  %t150 = load i32, i32* %t275, align 4
  %t151 = call i32 @get_ans_se(i32 %t148, i32 %t149, i32 %t150)
  %t624 = icmp sgt i32 %t151, 0
  store i32 %t151, i32* %t282, align 4
  %t153 = load i32, i32* %t282, align 4
  %t628 = icmp sgt i32 %t153, 0
  %t154 = load i32, i32* %t264, align 4
  %t155 = sdiv i32 %t154, 2
  %t156 = load i32, i32* %t269, align 4
  %t157 = sdiv i32 %t156, 2
  %t158 = call i32 @get_ans_se(i32 %t153, i32 %t155, i32 %t157)
  %t644 = icmp sgt i32 %t158, 0
  store i32 %t158, i32* %t282, align 4
  %t159 = load i32, i32* %t279, align 4
  %t648 = icmp sgt i32 %t159, 0
  %t160 = load i32, i32* %t280, align 4
  %t652 = icmp sgt i32 %t160, 0
  %t161 = add i32 %t159, %t160
  %t162 = load i32, i32* %t281, align 4
  %t659 = icmp sgt i32 %t162, 0
  %t163 = add i32 %t161, %t162
  %t164 = load i32, i32* %t282, align 4
  %t666 = icmp sgt i32 %t164, 0
  %t165 = add i32 %t163, %t164
  ret i32 %t165
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
