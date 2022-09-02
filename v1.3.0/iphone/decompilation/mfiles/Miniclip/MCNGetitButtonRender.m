@implementation MCNGetitButtonRender

-(void *)initWithFrame:(struct CGRect)arg2 forScale:(float)arg3 {
    memcpy(&r2, &arg2, 0x8);
    var_10 = d9;
    stack[-24] = d8;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self initWithFrame:r2];
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r0->scale = s8;
    }
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_40 super] initWithFrame:r2];
    r19 = r0;
    if (r0 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(string));
            r0 = *(r19 + r8);
            *(r19 + r8) = @"GET IT NOW";
            [r0 release];
            *(int8_t *)(int64_t *)&r19->pressed = 0x0;
            *(int32_t *)(int64_t *)&r19->fontSize = 0x41f00000;
            *(int32_t *)(int64_t *)&r19->scale = 0x3f800000;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(originalFrame));
            *(r19 + r8) = d11;
            *(0x8 + r19 + r8) = d10;
            *(0x10 + r19 + r8) = d9;
            *(0x18 + r19 + r8) = d8;
            [r19 setOpaque:0x0];
            [r19 setAccessibilityIdentifier:@"NF_GET_IT_BUTTON"];
    }
    r0 = r19;
    return r0;
}

-(struct CGRect)originalFrame {
    r0 = self;
    return r0;
}

-(void)setButtonText:(void *)arg2 {
    r31 = r31 - 0xd0;
    var_70 = d11;
    stack[-120] = d10;
    var_60 = d9;
    stack[-104] = d8;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    [arg2 retain];
    objc_storeStrong((int64_t *)&r20->string, arg2);
    r19 = sign_extend_64(*(int32_t *)ivar_offset(fontSize));
    *(int32_t *)(r20 + r19) = 0x41f00000;
    [r20 frame];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(scale));
    var_B8 = r8;
    asm { fcvt       d0, s0 };
    d9 = d2 + d0;
    r0 = [UILabel new];
    r21 = r0;
    [r0 setText:r22];
    r0 = @class(UIFont);
    r2 = *0x1011bd130;
    asm { fcvt       d0, s0 };
    r24 = [[r0 fontWithName:r2 size:r3] retain];
    [r21 setFont:r24];
    [r24 release];
    var_B0 = **_NSFontAttributeName;
    r27 = [[r21 font] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_80 forKeys:&var_88 count:0x1];
    r29 = r29;
    r28 = [r0 retain];
    r23 = r22;
    [r22 sizeWithAttributes:r28];
    [r28 release];
    [r27 release];
    r8 = var_B8;
    asm { fcvt       d0, s0 };
    d0 = 0x3fe0000000000000 * d8 * d0;
    if (d0 > d9) {
            r22 = r8;
            do {
                    var_A0 = @selector(fontWithName:size:);
                    var_A8 = @selector(setFont:);
                    r0 = @class(UIFont);
                    asm { fcvt       d0, s0 };
                    [objc_msgSend(r0, var_A0) retain];
                    objc_msgSend(r21, var_A8);
                    [r27 release];
                    [objc_msgSend(r21, r24) retain];
                    r0 = objc_msgSend(@class(NSDictionary), r25);
                    r29 = r29;
                    [r0 retain];
                    objc_msgSend(r23, r26);
                    [r28 release];
                    [r27 release];
                    asm { fcvt       d0, s0 };
                    d0 = d10 * d8 * d0;
                    if (d0 < d9) {
                        break;
                    }
                    *(int32_t *)(r20 + r19) = *(int32_t *)(r20 + r19) + 0xbff0000000000000;
            } while (true);
    }
    var_78 = **___stack_chk_guard;
    [r20 setNeedsDisplay];
    [r21 release];
    [r23 release];
    if (**___stack_chk_guard != var_78) {
            __stack_chk_fail();
    }
    return;
}

-(struct CGRect)adjustToButtonText:(void *)arg2 {
    r31 = r31 - 0xf0;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r20 = self;
    [arg2 retain];
    d2 = *(int128_t *)((int64_t *)&r20->originalFrame + 0x10);
    [r20 setBounds:r2];
    objc_storeStrong((int64_t *)&r20->string, arg2);
    r19 = sign_extend_64(*(int32_t *)ivar_offset(fontSize));
    *(int32_t *)(r20 + r19) = 0x41f00000;
    r0 = [UILabel new];
    r22 = r0;
    [r0 setText:r24];
    r0 = @class(UIFont);
    r2 = *0x1011bd130;
    asm { fcvt       d0, s0 };
    r25 = [[r0 fontWithName:r2 size:r3] retain];
    [r22 setFont:r25];
    [r25 release];
    var_D8 = **_NSFontAttributeName;
    r28 = [[r22 font] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_A0 forKeys:&var_A8 count:0x1];
    r29 = r29;
    r21 = [r0 retain];
    var_C0 = r24;
    [r24 sizeWithAttributes:r21];
    v8 = v0;
    [r21 release];
    [r28 release];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(scale));
    asm { fcvt       d1, s0 };
    d11 = 0x3fe0000000000000 * d8 * d1;
    var_E8 = r23;
    d1 = *(r23 + 0x10);
    asm { fcvt       d0, s0 };
    d12 = d1 + d0;
    r0 = [UIApplication sharedApplication];
    r29 = r29;
    r0 = [r0 retain];
    r28 = [r0 statusBarOrientation];
    [r0 release];
    r8 = r28 - 0x3;
    if (r8 < 0x2) {
            if (CPU_FLAGS & B) {
                    r8 = 0x1;
            }
    }
    if (d11 > d12) {
            d0 = *(0x100bdfa10 + r8 * 0x8);
            d8 = d12 * d0;
            if (d11 > d8) {
                    asm { fcvt       d0, s0 };
                    d11 = d8 + d0;
                    do {
                            var_C8 = @selector(fontWithName:size:);
                            var_D0 = @selector(setFont:);
                            r0 = @class(UIFont);
                            asm { fcvt       d0, s0 };
                            [objc_msgSend(r0, var_C8) retain];
                            objc_msgSend(r22, var_D0);
                            [r21 release];
                            [objc_msgSend(r22, r25) retain];
                            r0 = objc_msgSend(@class(NSDictionary), r26);
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(var_C0, r27);
                            [r28 release];
                            [r21 release];
                            asm { fcvt       d0, s0 };
                            d0 = d10 * d9 * d0;
                            if (d0 < d11) {
                                break;
                            }
                            *(int32_t *)(r20 + r19) = *(int32_t *)(r20 + r19) + 0xbff0000000000000;
                    } while (true);
                    r8 = var_E8;
                    r1 = @selector(setBounds:);
                    d0 = *(int128_t *)(r8 + 0x10);
                    asm { fcvt       s0, d0 };
                    asm { fcvt       d0, s0 };
                    r0 = r20;
                    v2 = v8;
            }
            else {
                    var_E0 = @selector(setBounds:);
                    asm { fcvt       s0, d0 };
                    asm { fcvt       d2, s0 };
                    r1 = var_E0;
                    r0 = r20;
            }
            objc_msgSend(r0, r1);
    }
    var_98 = **___stack_chk_guard;
    [r20 setNeedsDisplay];
    [r20 frame];
    v8 = v0;
    v9 = v1;
    v10 = v2;
    v11 = v3;
    [r22 release];
    r0 = [var_C0 release];
    if (**___stack_chk_guard != var_98) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setPressed:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->pressed = arg2;
    [self setNeedsDisplay];
    return;
}

-(struct CGSize)sizeThatFits:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    return r0;
}

-(void)drawText {
    r31 = r31 - 0xf0;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r19 = self;
    var_98 = **___stack_chk_guard;
    [self bounds];
    asm { fcvt       d1, s1 };
    asm { fdiv       d0, d0, d1 };
    asm { fcvt       d0, s0 };
    r20 = [[UIFont fontWithName:*0x1011bd130 size:r3] retain];
    r0 = [NSParagraphStyle defaultParagraphStyle];
    r0 = [r0 retain];
    r21 = [r0 mutableCopy];
    [r0 release];
    [r21 setLineBreakMode:0x0];
    [r21 setAlignment:0x1];
    r24 = [[NSDictionary dictionaryWithObjects:&var_A8 forKeys:&var_B8 count:0x2] retain];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(string));
    [*(r19 + r27) drawInRect:r24 withAttributes:&var_B8];
    r0 = [UIColor colorWithRed:r24 green:&var_B8 blue:0x2 alpha:r5];
    r25 = [r0 retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_D0 forKeys:&var_E8 count:0x3];
    r22 = [r0 retain];
    [r24 release];
    [*(r19 + r27) drawInRect:r22 withAttributes:&var_E8];
    [r25 release];
    [r22 release];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_98) {
            __stack_chk_fail();
    }
    return;
}

-(bool)isPressed {
    r0 = *(int8_t *)(int64_t *)&self->pressed;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->string, 0x0);
    return;
}

-(void)drawRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x1a0;
    var_A0 = d15;
    stack[-152] = d14;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r25 = self;
    *(&var_10 + 0xffffffffffffff60) = **___stack_chk_guard;
    [self bounds];
    v11 = v1;
    r19 = sign_extend_64(*(int32_t *)ivar_offset(scale));
    asm { fcvt       d1, s1 };
    asm { fdiv       d8, d0, d1 };
    var_188 = d3 + d3;
    stack[-384] = d1;
    r20 = UIGraphicsGetCurrentContext();
    var_160 = CGColorSpaceCreateDeviceRGB();
    asm { fcvt       d10, s0 };
    CGContextSaveGState(r20);
    CGContextTranslateCTM(r20, r1, r2);
    CGContextScaleCTM(r20, r1, r2);
    CGContextSetAlpha(r20, r1);
    CGContextBeginTransparencyLayer(r20, 0x0);
    r0 = CGPathCreateMutable();
    CGPathMoveToPoint(r0, 0x0, r2, r3);
    var_168 = d8;
    CGPathAddCurveToPoint(r21, 0x0, r2, r3, r4, r5, r6, r7);
    CGPathAddLineToPoint(r21, 0x0, r2, r3);
    CGPathAddCurveToPoint(r21, 0x0, r2, r3, r4, r5, r6, r7);
    CGPathAddLineToPoint(r21, 0x0, r2, r3);
    v9 = v14;
    CGPathAddCurveToPoint(r21, 0x0, r2, r3, r4, r5, r6, r7);
    CGPathAddLineToPoint(r21, 0x0, r2, r3);
    CGPathAddCurveToPoint(r21, 0x0, r2, r3, r4, r5, r6, r7);
    CGPathAddLineToPoint(r21, 0x0, r2, r3);
    CGPathCloseSubpath(r21);
    r0 = [UIColor colorWithRed:r2 green:r3 blue:r4 alpha:r5];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    [r0 setFill];
    r1 = r21;
    CGContextAddPath(r20, r1);
    CGContextFillPath(r20);
    CGPathRelease(r21);
    CGContextEndTransparencyLayer(r20);
    r0 = CGContextSetAlpha(r20, r1);
    d0 = d10 * *0x100bdfa48;
    asm { fcvt       s1, d0 };
    asm { frintp     s2, s1 };
    asm { frinta     s1, s1 };
    if (d0 < d8) {
            asm { fcsel      s0, s2, s1, mi };
    }
    asm { fcvt       d0, s0 };
    asm { fdiv       d0, d0, d10 };
    var_170 = d0 + d0;
    asm { fcvt       s0, d0 };
    fmodf(r0, r1);
    asm { fcvt       d15, s0 };
    r0 = CGPathCreateMutable();
    r26 = r0;
    d0 = (var_168 + 0xc037000000000000) * d10 + d15;
    asm { fcvt       s0, d0 };
    asm { frinta     s0, s0 };
    asm { fcvt       d0, s0 };
    d0 = d0 - d15;
    asm { fdiv       d0, d0, d10 };
    var_1A0 = d0;
    d1 = d10 * *0x100bd97c0 + d15;
    asm { fcvt       s1, d1 };
    asm { frinta     s1, s1 };
    asm { fcvt       d1, s1 };
    d1 = d1 - d15;
    asm { fdiv       d1, d1, d10 };
    var_158 = d1;
    CGPathMoveToPoint(r0, 0x0, r2, r3);
    asm { fcvt       s0, d0 };
    asm { frinta     s0, s0 };
    asm { fcvt       d0, s0 };
    asm { fdiv       d9, d0, d10 };
    asm { fcvt       s0, d0 };
    asm { frinta     s0, s0 };
    asm { fcvt       d0, s0 };
    asm { fdiv       d5, d0, d10 };
    CGPathAddCurveToPoint(r26, 0x0, r2, r3, r4, r5, r6, r7);
    asm { fcvt       s0, d0 };
    asm { frinta     s0, s0 };
    asm { fcvt       d0, s0 };
    asm { fdiv       d12, d0, d10 };
    CGPathAddLineToPoint(r26, 0x0, r2, r3);
    asm { fcvt       s0, d0 };
    asm { frinta     s0, s0 };
    asm { fcvt       d0, s0 };
    asm { fdiv       d13, d0, d10 };
    d9 = var_1A0;
    CGPathAddCurveToPoint(r26, 0x0, r2, r3, r4, r5, r6, r7);
    asm { fcvt       s0, d0 };
    asm { frinta     s0, s0 };
    asm { fcvt       d0, s0 };
    asm { fdiv       d8, d0, d10 };
    CGPathAddLineToPoint(r26, 0x0, r2, r3);
    asm { fcvt       s0, d0 };
    asm { frinta     s0, s0 };
    asm { fcvt       d0, s0 };
    asm { fdiv       d10, d0, d10 };
    v3 = v14;
    CGPathAddCurveToPoint(r26, 0x0, r2, r3, r4, r5, r6, r7);
    CGPathAddLineToPoint(r26, 0x0, r2, r3);
    v2 = v13;
    d8 = var_158;
    CGPathAddCurveToPoint(r26, 0x0, r2, r3, r4, r5, r6, r7);
    v0 = v9;
    v1 = v8;
    CGPathAddLineToPoint(r26, 0x0, r2, r3);
    CGPathCloseSubpath(r26);
    r0 = [NSMutableArray arrayWithCapacity:0x2];
    r29 = r29;
    r28 = [r0 retain];
    var_158 = r25;
    r8 = [r25 isPressed];
    r0 = *(r19 + 0x700);
    if ((r8 & 0x1) != 0x0) {
            v3 = v0;
    }
    r23 = @selector(isPressed);
    r0 = [r0 colorWithRed:r2 green:r3 blue:r4 alpha:r5];
    r29 = r29;
    asm { fdiv       d10, d1, d0 };
    r19 = [r0 retain];
    [r24 release];
    r0 = objc_retainAutorelease(r19);
    r21 = r0;
    [r28 addObject:[r0 CGColor]];
    *(r29 + 0xffffffffffffff50) = 0x0;
    if ((objc_msgSend(var_158, r23) & 0x1) != 0x0) {
            v3 = v0;
    }
    r19 = [[UIColor colorWithRed:r2 green:r3 blue:r4 alpha:r5] retain];
    [r21 release];
    r0 = objc_retainAutorelease(r19);
    [r28 addObject:[r0 CGColor]];
    *(r29 + 0xffffffffffffff58) = 0x3ff0000000000000;
    CGGradientCreateWithColors(var_160, r28, r29 - 0xb0);
    CGContextAddPath(r20, r26);
    CGContextSaveGState(r20);
    CGAffineTransformMakeRotation(CGContextEOClip(r20));
    r0 = CGPathCreateMutable();
    CGPathAddPath(r0, &var_F0, r26);
    r0 = CGPathGetBoundingBox(r19);
    r0 = CGRectGetMaxX(r0);
    CGRectGetMinY(r0);
    CGAffineTransformInvert(&var_150);
    CGPathRelease(r19);
    CGContextDrawLinearGradient(r20, r21, 0x3, r3, r4);
    CGContextRestoreGState(r20);
    CGGradientRelease(r21);
    r21 = [[UIColor colorWithRed:r2 green:r3 blue:r4 alpha:r5] retain];
    [r27 release];
    [r21 setStroke];
    CGContextSetLineWidth(r20, @selector(setStroke));
    CGContextSetLineCap(r20, 0x2);
    CGContextSaveGState(r20);
    CGContextAddPath(r20, r26);
    CGContextAddRect(r20, r26);
    CGContextEOClip(r20);
    CGContextAddPath(r20, r26);
    CGContextStrokePath(r20);
    CGContextRestoreGState(r20);
    CGPathRelease(r26);
    r0 = CGPathCreateMutable();
    r26 = r0;
    d9 = var_168 + 0xc03c000000000000;
    CGPathMoveToPoint(r0, 0x0, 0x3, r3);
    CGPathAddCurveToPoint(r26, 0x0, 0x3, r3, r4, r5, r6, r7);
    CGPathAddLineToPoint(r26, 0x0, 0x3, r3);
    CGPathAddCurveToPoint(r26, 0x0, 0x3, r3, r4, r5, r6, r7);
    CGPathAddLineToPoint(r26, 0x0, 0x3, r3);
    CGPathAddCurveToPoint(r26, 0x0, 0x3, r3, r4, r5, r6, r7);
    CGPathAddLineToPoint(r26, 0x0, 0x3, r3);
    v2 = v12;
    CGPathAddCurveToPoint(r26, 0x0, 0x3, r3, r4, r5, r6, r7);
    v0 = v9;
    v1 = v10;
    CGPathAddLineToPoint(r26, 0x0, 0x3, r3);
    CGPathCloseSubpath(r26);
    r0 = [NSMutableArray arrayWithCapacity:r2];
    r29 = r29;
    r27 = [r0 retain];
    [r28 release];
    r28 = var_158;
    if (([r28 isPressed] & 0x1) != 0x0) {
            v3 = v0;
    }
    else {
            v3 = v1;
    }
    r0 = @class(UIColor);
    r0 = [r0 colorWithRed:r2 green:r3 blue:r4 alpha:r5];
    r29 = r29;
    r19 = [r0 retain];
    [r21 release];
    r0 = objc_retainAutorelease(r19);
    r19 = r0;
    [r27 addObject:[r0 CGColor]];
    *(r29 + 0xffffffffffffff50) = 0x0;
    if (([r28 isPressed] & 0x1) != 0x0) {
            v3 = v0;
    }
    r21 = [[UIColor colorWithRed:r2 green:r3 blue:r4 alpha:r5] retain];
    [r19 release];
    r0 = objc_retainAutorelease(r21);
    [r27 addObject:[r0 CGColor]];
    *(r29 + 0xffffffffffffff58) = 0x3ff0000000000000;
    CGGradientCreateWithColors(var_160, r27, r29 - 0xb0);
    CGContextAddPath(r20, r26);
    CGContextSaveGState(r20);
    CGAffineTransformMakeRotation(CGContextEOClip(r20));
    r0 = CGPathCreateMutable();
    CGPathAddPath(r0, &var_F0, r26);
    r0 = CGPathGetBoundingBox(r19);
    CGRectGetMinY(CGRectGetMaxX(r0));
    CGAffineTransformInvert(&var_150);
    CGPathRelease(r19);
    CGContextDrawLinearGradient(r20, r22, 0x3, r3, r4);
    CGContextRestoreGState(r20);
    CGGradientRelease(r22);
    CGPathRelease(r26);
    [r28 drawText];
    CGContextRestoreGState(r20);
    CGColorSpaceRelease(var_160);
    [r27 release];
    [r21 release];
    if (**___stack_chk_guard != *(r29 + 0xffffffffffffff60)) {
            __stack_chk_fail();
    }
    return;
}

@end