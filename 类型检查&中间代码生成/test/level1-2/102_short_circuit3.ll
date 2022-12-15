@a = global i32 0, align 4
@b = global i32 0, align 4
@d = global i32 0, align 4
define i32 @set_a(i32 %t123) {
B122:
  %t124 = alloca i32, align 4
  store i32 %t123, i32* %t124, align 4
  %t1 = load i32, i32* %t124, align 4
  %t128 = icmp sgt i32 %t1, 0
  store i32 %t1, i32* @a, align 4
  %t2 = load i32, i32* @a, align 4
  %t132 = icmp sgt i32 %t2, 0
  ret i32 %t2
}
define i32 @set_b(i32 %t134) {
B133:
  %t135 = alloca i32, align 4
  store i32 %t134, i32* %t135, align 4
  %t4 = load i32, i32* %t135, align 4
  %t139 = icmp sgt i32 %t4, 0
  store i32 %t4, i32* @b, align 4
  %t5 = load i32, i32* @b, align 4
  %t143 = icmp sgt i32 %t5, 0
  ret i32 %t5
}
define i32 @set_d(i32 %t145) {
B144:
  %t146 = alloca i32, align 4
  store i32 %t145, i32* %t146, align 4
  %t7 = load i32, i32* %t146, align 4
  %t150 = icmp sgt i32 %t7, 0
  store i32 %t7, i32* @d, align 4
  %t8 = load i32, i32* @d, align 4
  %t154 = icmp sgt i32 %t8, 0
  ret i32 %t8
}
define i32 @main() {
B155:
  %t362 = alloca i32, align 4
  %t361 = alloca i32, align 4
  %t360 = alloca i32, align 4
  %t359 = alloca i32, align 4
  %t358 = alloca i32, align 4
  %t218 = alloca i32, align 4
  store i32 2, i32* @a, align 4
  store i32 3, i32* @b, align 4
  %t11 = call i32 @set_a(i32 0)
  %t162 = icmp sgt i32 %t11, 0
  br i1 %t162, label %B158, label %B161
B158:                               	; preds = %B155
  %t12 = call i32 @set_b(i32 1)
  %t166 = icmp sgt i32 %t12, 0
  br i1 %t166, label %B156, label %B165
B161:                               	; preds = %B155
  br label %B157
B156:                               	; preds = %B158
  br label %B157
B165:                               	; preds = %B158
  br label %B157
B157:                               	; preds = %B156, %B161, %B165
  %t14 = load i32, i32* @a, align 4
  %t170 = icmp sgt i32 %t14, 0
  call void @putint(i32 %t14)
  call void @putch(i32 32)
  %t17 = load i32, i32* @b, align 4
  %t180 = icmp sgt i32 %t17, 0
  call void @putint(i32 %t17)
  call void @putch(i32 32)
  store i32 2, i32* @a, align 4
  store i32 3, i32* @b, align 4
  %t22 = call i32 @set_a(i32 0)
  %t193 = icmp sgt i32 %t22, 0
  br i1 %t193, label %B189, label %B192
B189:                               	; preds = %B157
  %t23 = call i32 @set_b(i32 1)
  %t197 = icmp sgt i32 %t23, 0
  br i1 %t197, label %B187, label %B196
B192:                               	; preds = %B157
  br label %B188
B187:                               	; preds = %B189
  br label %B188
B196:                               	; preds = %B189
  br label %B188
B188:                               	; preds = %B187, %B192, %B196
  %t25 = load i32, i32* @a, align 4
  %t201 = icmp sgt i32 %t25, 0
  call void @putint(i32 %t25)
  call void @putch(i32 32)
  %t28 = load i32, i32* @b, align 4
  %t211 = icmp sgt i32 %t28, 0
  call void @putint(i32 %t28)
  call void @putch(i32 10)
  store i32 1, i32* %t218, align 4
  store i32 2, i32* @d, align 4
  %t32 = load i32, i32* %t218, align 4
  %t33 = icmp sge i32 %t32, 1
  br i1 %t33, label %B221, label %B227
B221:                               	; preds = %B188
  %t34 = call i32 @set_d(i32 3)
  %t231 = icmp sgt i32 %t34, 0
  br i1 %t231, label %B219, label %B230
B227:                               	; preds = %B188
  br label %B220
B219:                               	; preds = %B221
  br label %B220
B230:                               	; preds = %B221
  br label %B220
B220:                               	; preds = %B219, %B227, %B230
  %t36 = load i32, i32* @d, align 4
  %t235 = icmp sgt i32 %t36, 0
  call void @putint(i32 %t36)
  call void @putch(i32 32)
  %t39 = load i32, i32* %t218, align 4
  %t40 = icmp sle i32 %t39, 1
  br i1 %t40, label %B242, label %B250
B242:                               	; preds = %B220, %B244
  br label %B243
B250:                               	; preds = %B220
  br label %B244
B243:                               	; preds = %B242, %B253
  %t43 = load i32, i32* @d, align 4
  %t258 = icmp sgt i32 %t43, 0
  call void @putint(i32 %t43)
  call void @putch(i32 10)
  %t46 = add i32 2, 1
  %t47 = sub i32 3, %t46
  %t48 = icmp sge i32 16, %t47
  br i1 %t48, label %B265, label %B275
B244:                               	; preds = %B250
  %t41 = call i32 @set_d(i32 4)
  %t254 = icmp sgt i32 %t41, 0
  br i1 %t254, label %B242, label %B253
B265:                               	; preds = %B243
  call void @putch(i32 65)
  br label %B266
B275:                               	; preds = %B243
  br label %B266
B253:                               	; preds = %B244
  br label %B243
B266:                               	; preds = %B265, %B275
  %t50 = sub i32 25, 7
  %t51 = mul i32 6, 3
  %t52 = sub i32 36, %t51
  %t53 = icmp ne i32 %t50, %t52
  br i1 %t53, label %B279, label %B292
B279:                               	; preds = %B266
  call void @putch(i32 66)
  br label %B280
B292:                               	; preds = %B266
  br label %B280
B280:                               	; preds = %B279, %B292
  %t55 = srem i32 7, 2
  %t56 = icmp ne i32 8, %t55
  %t304 = zext i1 %t56 to i32
  %t57 = icmp slt i32 1, %t304
  br i1 %t57, label %B296, label %B307
B296:                               	; preds = %B280
  call void @putch(i32 67)
  br label %B297
B307:                               	; preds = %B280
  br label %B297
B297:                               	; preds = %B296, %B307
  %t59 = icmp eq i32 4, 0
  %t316 = zext i1 %t59 to i32
  %t60 = icmp sgt i32 3, %t316
  br i1 %t60, label %B311, label %B319
B311:                               	; preds = %B297
  call void @putch(i32 68)
  br label %B312
B319:                               	; preds = %B297
  br label %B312
B312:                               	; preds = %B311, %B319
  %t62 = icmp sle i32 102, 63
  %t328 = zext i1 %t62 to i32
  %t63 = icmp eq i32 1, %t328
  br i1 %t63, label %B323, label %B331
B323:                               	; preds = %B312
  call void @putch(i32 69)
  br label %B324
B331:                               	; preds = %B312
  br label %B324
B324:                               	; preds = %B323, %B331
  %t65 = sub i32 5, 6
  %t340 = icmp sgt i32 0, 0
  %t66 = xor i1 %t340 , true
  %t341 = zext i1 %t66 to i32
  %t67 = sub nsw i32 0, %t341
  %t348 = icmp sgt i32 %t67, 0
  %t68 = icmp eq i32 %t65, %t67
  br i1 %t68, label %B335, label %B351
B335:                               	; preds = %B324
  call void @putch(i32 70)
  br label %B336
B351:                               	; preds = %B324
  br label %B336
B336:                               	; preds = %B335, %B351
  call void @putch(i32 10)
  store i32 0, i32* %t358, align 4
  store i32 1, i32* %t359, align 4
  store i32 2, i32* %t360, align 4
  store i32 3, i32* %t361, align 4
  store i32 4, i32* %t362, align 4
  br label %B363
B363:                               	; preds = %B336, %B364
  %t71 = load i32, i32* %t358, align 4
  %t370 = icmp sgt i32 %t71, 0
  br i1 %t370, label %B366, label %B369
B366:                               	; preds = %B363
  %t72 = load i32, i32* %t359, align 4
  %t374 = icmp sgt i32 %t72, 0
  br i1 %t374, label %B364, label %B373
B369:                               	; preds = %B363
  br label %B365
B364:                               	; preds = %B366
  call void @putch(i32 32)
  br label %B363
B373:                               	; preds = %B366
  br label %B365
B365:                               	; preds = %B369, %B373
  %t75 = load i32, i32* %t358, align 4
  %t384 = icmp sgt i32 %t75, 0
  br i1 %t384, label %B378, label %B383
B378:                               	; preds = %B365, %B380
  call void @putch(i32 67)
  br label %B379
B383:                               	; preds = %B365
  br label %B380
B379:                               	; preds = %B378, %B387
  %t79 = load i32, i32* %t358, align 4
  %t398 = icmp sgt i32 %t79, 0
  %t80 = load i32, i32* %t359, align 4
  %t402 = icmp sgt i32 %t80, 0
  %t81 = icmp sge i32 %t79, %t80
  br i1 %t81, label %B392, label %B405
B380:                               	; preds = %B383
  %t76 = load i32, i32* %t359, align 4
  %t388 = icmp sgt i32 %t76, 0
  br i1 %t388, label %B378, label %B387
B392:                               	; preds = %B379, %B394
  call void @putch(i32 72)
  br label %B393
B405:                               	; preds = %B379
  br label %B394
B387:                               	; preds = %B380
  br label %B379
B393:                               	; preds = %B392, %B416
  %t87 = load i32, i32* %t360, align 4
  %t426 = icmp sgt i32 %t87, 0
  %t88 = load i32, i32* %t359, align 4
  %t430 = icmp sgt i32 %t88, 0
  %t89 = icmp sge i32 %t87, %t88
  br i1 %t89, label %B422, label %B433
B394:                               	; preds = %B405
  %t82 = load i32, i32* %t359, align 4
  %t409 = icmp sgt i32 %t82, 0
  %t83 = load i32, i32* %t358, align 4
  %t413 = icmp sgt i32 %t83, 0
  %t84 = icmp sle i32 %t82, %t83
  br i1 %t84, label %B392, label %B416
B422:                               	; preds = %B393
  %t90 = load i32, i32* %t362, align 4
  %t437 = icmp sgt i32 %t90, 0
  %t91 = load i32, i32* %t361, align 4
  %t441 = icmp sgt i32 %t91, 0
  %t92 = icmp ne i32 %t90, %t91
  br i1 %t92, label %B420, label %B444
B433:                               	; preds = %B393
  br label %B421
B416:                               	; preds = %B394
  br label %B393
B420:                               	; preds = %B422
  call void @putch(i32 73)
  br label %B421
B444:                               	; preds = %B422
  br label %B421
B421:                               	; preds = %B420, %B433, %B444
  %t95 = load i32, i32* %t358, align 4
  %t455 = icmp sgt i32 %t95, 0
  %t96 = load i32, i32* %t359, align 4
  %t459 = icmp sgt i32 %t96, 0
  %t460 = icmp sgt i32 %t96, 0
  %t97 = xor i1 %t460 , true
  %t461 = zext i1 %t97 to i32
  %t98 = icmp eq i32 %t95, %t461
  br i1 %t98, label %B451, label %B467
B451:                               	; preds = %B421
  %t99 = load i32, i32* %t361, align 4
  %t471 = icmp sgt i32 %t99, 0
  %t100 = load i32, i32* %t361, align 4
  %t475 = icmp sgt i32 %t100, 0
  %t101 = icmp slt i32 %t99, %t100
  br i1 %t101, label %B448, label %B478
B467:                               	; preds = %B421
  br label %B450
B448:                               	; preds = %B450, %B451
  call void @putch(i32 74)
  br label %B449
B478:                               	; preds = %B451
  br label %B450
B450:                               	; preds = %B467, %B478
  %t103 = load i32, i32* %t362, align 4
  %t482 = icmp sgt i32 %t103, 0
  %t104 = load i32, i32* %t362, align 4
  %t486 = icmp sgt i32 %t104, 0
  %t105 = icmp sge i32 %t103, %t104
  br i1 %t105, label %B448, label %B489
B449:                               	; preds = %B448, %B489
  %t108 = load i32, i32* %t358, align 4
  %t499 = icmp sgt i32 %t108, 0
  %t109 = load i32, i32* %t359, align 4
  %t503 = icmp sgt i32 %t109, 0
  %t504 = icmp sgt i32 %t109, 0
  %t110 = xor i1 %t504 , true
  %t505 = zext i1 %t110 to i32
  %t111 = icmp eq i32 %t108, %t505
  br i1 %t111, label %B493, label %B511
B489:                               	; preds = %B450
  br label %B449
B493:                               	; preds = %B449, %B512
  call void @putch(i32 75)
  br label %B494
B511:                               	; preds = %B449
  br label %B495
B494:                               	; preds = %B493, %B523, %B534
  call void @putch(i32 10)
  ret i32 0
B495:                               	; preds = %B511
  %t112 = load i32, i32* %t361, align 4
  %t516 = icmp sgt i32 %t112, 0
  %t113 = load i32, i32* %t361, align 4
  %t520 = icmp sgt i32 %t113, 0
  %t114 = icmp slt i32 %t112, %t113
  br i1 %t114, label %B512, label %B523
B512:                               	; preds = %B495
  %t115 = load i32, i32* %t362, align 4
  %t527 = icmp sgt i32 %t115, 0
  %t116 = load i32, i32* %t362, align 4
  %t531 = icmp sgt i32 %t116, 0
  %t117 = icmp sge i32 %t115, %t116
  br i1 %t117, label %B493, label %B534
B523:                               	; preds = %B495
  br label %B494
B534:                               	; preds = %B512
  br label %B494
}
declare void @putint(i32)
declare i32 @getint()
declare void @putch(i32)
