@implementation TJYMoatUIUtil

+(void)respondToAppFocus:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 name];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 isEqualToString:r2];
    [r0 release];
    if (r23 != 0x0) {
            *(int8_t *)0x1011dc298 = 0x1;
    }
    else {
            r21 = @selector(isEqualToString:);
            r0 = [r19 name];
            r0 = [r0 retain];
            r21 = objc_msgSend(r0, r21);
            [r0 release];
            if (r21 != 0x0) {
                    *(int8_t *)0x1011dc298 = 0x0;
            }
    }
    [r19 release];
    return;
}

+(void)setFocusListener {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [UIApplication sharedApplication];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 applicationState];
    [r0 release];
    if (r21 <= 0x2) {
            *(int8_t *)0x1011dc298 = 0x1;
    }
    if ((*(int8_t *)0x1011dc299 & 0x1) == 0x0) {
            r21 = [[NSNotificationCenter defaultCenter] retain];
            [r21 addObserver:[r19 class] selector:@selector(respondToAppFocus:) name:**_UIApplicationWillResignActiveNotification object:0x0];
            [r21 release];
            r20 = [[NSNotificationCenter defaultCenter] retain];
            [r20 addObserver:[r19 class] selector:@selector(respondToAppFocus:) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
            [r20 release];
            *(int8_t *)0x1011dc299 = 0x1;
    }
    return;
}

+(bool)isLayerVisible:(void *)arg2 atPoint:(struct CGPoint)arg3 ofWindow:(void *)arg4 {
    memcpy(&r3, &arg3, 0x8);
    r21 = [arg2 retain];
    r19 = [[r3 layer] retain];
    r20 = [self isLayerVisible:r21 atPoint:r19 ofSuperLayer:r4];
    [r21 release];
    [r19 release];
    r0 = r20;
    return r0;
}

+(double)getStatusBarHeight {
    var_10 = r20;
    stack[-24] = r19;
    r0 = [UIApplication sharedApplication];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (([r0 isStatusBarHidden] & 0x1) == 0x0) {
            [r19 statusBarFrame];
            if (d2 < d3) {
                    asm { fcsel      d0, d2, d3, mi };
            }
    }
    r0 = [r19 release];
    return r0;
}

+(struct CGRect)getRectInWindow:(void *)arg2 {
    r19 = [arg2 retain];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r22 = [[r0 keyWindow] retain];
    [r0 release];
    [arg2 bounds];
    r21 = [[r22 layer] retain];
    [arg2 convertRect:r21 toLayer:r3];
    [r19 release];
    [r21 release];
    r0 = [r22 release];
    return r0;
}

+(struct CGRect)getNestedRectOfLayer:(void *)arg2 inWindow:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[arg3 layer] retain];
    [self getNestedRectOfLayer:r21 inLayer:r19 nestAlgoRet:0x0];
    [r21 release];
    r0 = [r19 release];
    return r0;
}

+(bool)isLayerVisible:(void *)arg2 atPoint:(struct CGPoint)arg3 ofSuperLayer:(void *)arg4 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 + 0xffffffffffffff90 - 0x100;
    v8 = v1;
    v9 = v0;
    r25 = self;
    r22 = *___stack_chk_guard;
    r22 = *r22;
    var_68 = r22;
    r19 = [arg2 retain];
    r0 = [r3 retain];
    r20 = r0;
    r0 = [r0 hitTest:r2];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_10096da80;

loc_10096d864:
    r0 = [r25 isLayerDescendant:r2 ofLayer:r3];
    r23 = 0x1;
    if (r21 == r19) goto loc_10096daac;

loc_10096d88c:
    r23 = 0x1;
    if ((r0 & 0x1) != 0x0) goto loc_10096daac;

loc_10096d890:
    CGColorGetAlpha([r21 backgroundColor]);
    if (d0 != 0x0) goto loc_10096da80;

loc_10096d8b0:
    var_150 = @selector(isLayerDescendant:ofLayer:);
    stack[-344] = r25;
    var_130 = r20;
    r0 = [r21 superlayer];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 sublayers];
    r29 = r29;
    r25 = [r0 retain];
    [r23 release];
    var_F8 = 0x0;
    var_108 = 0x0;
    var_100 = 0x0;
    var_118 = 0x0;
    var_110 = 0x0;
    var_128 = 0x0;
    var_120 = 0x0;
    r0 = [r25 retain];
    r25 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_158 = r1;
    r3 = &stack[-248];
    r28 = objc_msgSend(r0, r1);
    if (r28 == 0x0) goto loc_10096da2c;

loc_10096d934:
    var_138 = @selector(convertPoint:fromLayer:);
    var_140 = @selector(containsPoint:);
    goto loc_10096d960;

loc_10096d960:
    r22 = 0x0;
    asm { ubfx       x20, x8, #0x0, #0x20 };
    goto loc_10096d968;

loc_10096d968:
    var_118 = 0x0;
    r23 = r20 + r22;
    if (*var_118 != *0x0) {
            objc_enumerationMutation(r25);
    }
    if (r23 > 0x46) goto loc_10096da88;

loc_10096d98c:
    var_120 = 0x0;
    r23 = *(var_120 + r22 * 0x8);
    CGColorGetAlpha([r23 backgroundColor]);
    if (([r23 isHidden] & 0x1) != 0x0 || r23 == r19 || d0 == 0x0) goto loc_10096d9fc;

loc_10096d9c4:
    var_140 = @selector(containsPoint:);
    var_138 = @selector(convertPoint:fromLayer:);
    objc_msgSend(r23, var_138);
    if (objc_msgSend(r23, var_140) == 0x0 || objc_msgSend(stack[-344], var_150) != 0x0) goto loc_10096d9fc;

loc_10096da88:
    [r25 release];
    [r25 release];
    r23 = 0x0;
    r22 = *___stack_chk_guard;
    r22 = *r22;
    r20 = var_130;
    goto loc_10096daac;

loc_10096daac:
    [r21 release];
    [r20 release];
    [r19 release];
    if (r22 == var_68) {
            r0 = r23;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10096d9fc:
    r22 = r22 + 0x1;
    if (r22 < r28) goto loc_10096d968;

loc_10096da08:
    r3 = &stack[-248];
    r28 = objc_msgSend(r25, var_158);
    if (r28 != 0x0) goto loc_10096d960;

loc_10096da2c:
    [r25 release];
    r20 = var_130;
    [r19 convertPoint:r20 fromLayer:r3];
    r23 = [r19 containsPoint:r20];
    [r25 release];
    r22 = *___stack_chk_guard;
    r22 = *r22;
    goto loc_10096daac;

loc_10096da80:
    r23 = 0x0;
    goto loc_10096daac;
}

+(double)bounded:(double)arg2 min:(double)arg3 max:(double)arg4 {
    r0 = self;
    if (d0 >= d1) {
            if (d0 > d2) {
                    asm { fcsel      d1, d2, d0, gt };
            }
    }
    return r0;
}

+(struct CGPoint)bounded:(struct CGPoint)arg2 xMax:(double)arg3 yMax:(double)arg4 {
    memcpy(&r2, &arg2, 0x8);
    [self bounded:r2 min:r3 max:r4];
    r0 = [self bounded:r2 min:r3 max:r4];
    return r0;
}

+(bool)isLayerDescendant:(void *)arg2 ofLayer:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    if (r19 != 0x0) {
            asm { ccmp       x20, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { ccmp       x20, x19, #0x4, ne };
    }
    if (CPU_FLAGS & E) goto loc_10096e0c8;

loc_10096e03c:
    r23 = 0x0;
    goto loc_10096e048;

loc_10096e048:
    r0 = [r20 superlayer];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10096e0c8;

loc_10096e068:
    r0 = [r20 superlayer];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == r19) goto loc_10096e0d0;

loc_10096e08c:
    r0 = [r20 superlayer];
    r29 = r29;
    r22 = [r0 retain];
    [r20 release];
    r23 = r23 + 0x1;
    r20 = r22;
    if (r23 < 0x1e) goto loc_10096e048;

loc_10096e0bc:
    r21 = 0x0;
    r20 = r22;
    goto loc_10096e0d4;

loc_10096e0d4:
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_10096e0d0:
    r21 = 0x1;
    goto loc_10096e0d4;

loc_10096e0c8:
    r21 = 0x0;
    goto loc_10096e0d4;
}

+(bool)isAttached:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r20 = [[r0 keyWindow] retain];
    [r0 release];
    r22 = [[r20 layer] retain];
    r19 = [TJYMoatUIUtil isLayerDescendant:r21 ofLayer:r22];
    [r21 release];
    [r22 release];
    [r20 release];
    r0 = r19;
    return r0;
}

+(struct CGRect)getVisibleRect:(void *)arg2 deduceNestedRect:(bool)arg3 {
    r23 = [arg2 retain];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r22 = [[r0 keyWindow] retain];
    [r0 release];
    [self getVisibleRect:r23 deduceNestedRect:arg3 inWindow:r22];
    [r23 release];
    r0 = [r22 release];
    return r0;
}

+(struct CGRect)getNestedRectOfLayer:(void *)arg2 inLayer:(void *)arg3 nestAlgoRet:(unsigned long long *)arg4 {
    var_70 = d11;
    stack[-120] = d10;
    r31 = r31 + 0xffffffffffffff80;
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
    r29 = &saved_fp;
    r21 = arg4;
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    [r20 bounds];
    [r20 convertRect:r2 toLayer:r3];
    v8 = v0;
    v9 = v1;
    v10 = v2;
    v11 = v3;
    r0 = [r20 retain];
    r20 = r0;
    if (r20 == r19) goto loc_10096dedc;

loc_10096dddc:
    r28 = 0xffffffffffffffff;
    r22 = r20;
    goto loc_10096ddf4;

loc_10096ddf4:
    r0 = [r22 superlayer];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10096ded8;

loc_10096de14:
    r28 = r28 + 0x1;
    if (r28 >= 0x1e) goto loc_10096deec;

loc_10096de20:
    if ([r22 isHidden] != 0x0) goto loc_10096def8;

loc_10096de30:
    [r22 bounds];
    [r22 convertRect:r2 toLayer:r3];
    if (d0 <= d10 + d8) {
            asm { fccmp      d1, d5, #0x0, le };
    }
    if (CPU_FLAGS & G) goto loc_10096df10;

loc_10096de60:
    d4 = d0 + d2;
    d2 = d1 + d3;
    if (d4 >= d8) {
            asm { fccmp      d2, d9, #0x8, pl };
    }
    if (CPU_FLAGS & S) goto loc_10096df04;

loc_10096de74:
    if (d0 > d8) {
            asm { fcsel      d8, d0, d8, gt };
    }
    if (d1 > d9) {
            asm { fcsel      d9, d1, d9, gt };
    }
    if (d4 >= d10 + d8) {
            asm { fcsel      d10, d10, d0, pl };
    }
    d0 = d2 - d9;
    if (d2 >= d11 + d9) {
            asm { fcsel      d11, d11, d0, pl };
    }
    r0 = [r22 superlayer];
    r29 = r29;
    r27 = [r0 retain];
    [r22 release];
    r22 = r27;
    r0 = r19;
    if (r27 != r19) goto loc_10096ddf4;

loc_10096dedc:
    if (r21 != 0x0) {
            *r21 = 0x0;
    }
    r22 = r0;
    goto loc_10096df2c;

loc_10096df2c:
    [r22 release];
    [r19 release];
    r0 = [r20 release];
    return r0;

loc_10096df04:
    if (r21 == 0x0) goto loc_10096df2c;

loc_10096df08:
    r8 = 0x2;
    goto loc_10096df18;

loc_10096df18:
    *r21 = r8;
    goto loc_10096df2c;

loc_10096df10:
    if (r21 == 0x0) goto loc_10096df2c;

loc_10096df14:
    r8 = 0x3;
    goto loc_10096df18;

loc_10096def8:
    if (r21 == 0x0) goto loc_10096df2c;

loc_10096defc:
    r8 = 0x1;
    goto loc_10096df18;

loc_10096deec:
    if (r21 == 0x0) goto loc_10096df2c;

loc_10096def0:
    r8 = 0x4;
    goto loc_10096df18;

loc_10096ded8:
    r0 = r22;
    goto loc_10096dedc;
}

+(void *)getRectAsJson:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

+(void *)getRectsAsJson:(void *)arg2 {
    r19 = [arg2 retain];
    r0 = [UIScreen mainScreen];
    r0 = [r0 retain];
    [r0 bounds];
    [r0 release];
    [TJYMoatUIUtil getRectInWindow:r19];
    [TJYMoatUIUtil getVisibleRect:r19 deduceNestedRect:0x1];
    r2 = r19;
    [TJYMoatUIUtil getVisibleRect:r2 deduceNestedRect:0x0];
    [r19 release];
    r19 = [[TJYMoatUIUtil getRectAsJson:r2] retain];
    r20 = [[TJYMoatUIUtil getRectAsJson:r2] retain];
    r22 = [[TJYMoatUIUtil getRectAsJson:r2] retain];
    r21 = [[TJYMoatUIUtil getRectAsJson:r2] retain];
    r23 = [[NSString stringWithFormat:r2] retain];
    [r21 release];
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

+(struct CGRect)getVisibleRect:(void *)arg2 deduceNestedRect:(bool)arg3 inWindow:(void *)arg4 {
    var_70 = d15;
    stack[-120] = d14;
    var_60 = d13;
    stack[-104] = d12;
    var_50 = d11;
    stack[-88] = d10;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    r22 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [arg4 retain];
    r20 = r0;
    r0 = [r0 layer];
    r29 = &saved_fp;
    r24 = [r0 retain];
    r23 = [TJYMoatUIUtil isLayerDescendant:r19 ofLayer:r24];
    [r24 release];
    if (([r19 isHidden] & 0x1) != 0x0 || (r23 ^ 0x1) != 0x0) goto loc_10096e768;

loc_10096e358:
    if (r22 != 0x0) {
            r1 = @selector(getNestedRectOfLayer:inWindow:);
            r0 = objc_msgSend(r21, r1);
    }
    else {
            r1 = @selector(getRectInWindow:);
            r0 = objc_msgSend(r21, r1);
    }
    v9 = v0;
    v12 = v1;
    v15 = v2;
    v14 = v3;
    r8 = *_CGRectZero;
    d10 = *(int128_t *)r8;
    d11 = *(int128_t *)(r8 + 0x8);
    d8 = *(int128_t *)(r8 + 0x10);
    d13 = *(int128_t *)(r8 + 0x18);
    if (CGRectEqualToRect(r0, r1) != 0x0) goto loc_10096e768;

loc_10096e3d8:
    var_90 = d8;
    var_88 = d13;
    r0 = [UIScreen mainScreen];
    r29 = r29;
    r0 = [r0 retain];
    [r0 bounds];
    var_78 = d8;
    [r0 release];
    r8 = &@selector(purchaseTotalPrice);
    r22 = *(r8 + 0xc08);
    r0 = objc_msgSend(r21, r22);
    var_80 = d0;
    v8 = v12;
    r0 = CGRectGetMaxX(r0);
    d14 = 0xbff0000000000000;
    v1 = v12;
    var_98 = d1;
    v0 = v9;
    CGRectGetMaxY(r0);
    d1 = d0 + d14;
    v14 = v13;
    asm { fcvtzs     w8, d12 };
    d12 = var_80;
    asm { fcvtzs     w9, d12 };
    if (r8 < r9) {
            if (!CPU_FLAGS & L) {
                    r8 = &@selector(purchaseTotalPrice);
            }
            else {
                    r8 = r9;
            }
    }
    asm { scvtf      d0, w8 };
    asm { fcvtzs     w8, d1 };
    asm { fcvtzs     w9, d8 };
    asm { scvtf      d1, w8 };
    objc_msgSend(r21, r22);
    v9 = v0;
    v13 = v1;
    if (([r21 isLayerVisible:r2 atPoint:r3 ofWindow:r4] & 0x1) == 0x0) goto loc_10096e500;

loc_10096e4f4:
    r8 = &@selector(purchaseTotalPrice);
    v15 = v9;
    v14 = v13;
    goto loc_10096e610;

loc_10096e610:
    asm { fcvtzs     w8, d0 };
    if (r8 < 0x0) {
            asm { cneg       w8, w8, mi };
    }
    if (r8 >= 0x2) {
            r23 = 0x0;
            d10 = 0x3fe0000000000000;
            v11 = v12;
            v13 = v12;
            v9 = v15;
            do {
                    r23 = r23 + 0x1;
                    if ([r21 isLayerVisible:r2 atPoint:r3 ofWindow:r4] != 0x0) {
                            asm { fcsel      d11, d9, d11, ne };
                    }
                    if (CPU_FLAGS & NE) {
                            asm { fcsel      d15, d15, d9, ne };
                    }
                    asm { fcvtzs     w8, d0 };
                    if (r8 < 0x0) {
                            asm { cneg       w8, w8, mi };
                    }
                    if (r23 > 0x22) {
                        break;
                    }
                    d10 = 0x3fe0000000000000;
                    asm { fcvtzs     w9, d0 };
                    asm { scvtf      d9, w9 };
            } while (r8 > 0x1);
    }
    else {
            r23 = 0x0;
            v11 = v12;
            v13 = v12;
    }
    d0 = d8 - d14;
    asm { fcvtzs     w8, d0 };
    if (r8 < 0x0) {
            asm { cneg       w8, w8, mi };
    }
    if (r23 <= 0x45 && r8 >= 0x2) {
            r23 = r23 + 0x1;
            d10 = 0x3fe0000000000000;
            v9 = v14;
            do {
                    if ([r21 isLayerVisible:r2 atPoint:r3 ofWindow:r4] != 0x0) {
                            asm { fcsel      d12, d9, d12, ne };
                    }
                    if (CPU_FLAGS & NE) {
                            asm { fcsel      d14, d14, d9, ne };
                    }
                    d0 = d12 - d14;
                    asm { fcvtzs     w8, d0 };
                    if (r8 < 0x0) {
                            asm { cneg       w8, w8, mi };
                    }
                    if (r23 > 0x45) {
                        break;
                    }
                    d10 = 0x3fe0000000000000;
                    d0 = (d12 + d14) * d10;
                    asm { fcvtzs     w9, d0 };
                    asm { scvtf      d9, w9 };
                    r23 = r23 + 0x1;
            } while (r8 > 0x1);
    }
    if (d13 < d11) {
            asm { fcsel      d10, d13, d11, mi };
    }
    if (CPU_FLAGS & G) {
            asm { fcsel      d0, d13, d11, gt };
    }
    if (d8 < d12) {
            asm { fcsel      d11, d8, d12, mi };
    }
    if (CPU_FLAGS & G) {
            asm { fcsel      d1, d8, d12, gt };
    }
    goto loc_10096e768;

loc_10096e768:
    [r20 release];
    r0 = [r19 release];
    return r0;

loc_10096e500:
    r0 = [r21 isLayerVisible:r2 atPoint:r3 ofWindow:r4];
    v0 = v13;
    d13 = var_88;
    if ((r0 & 0x1) == 0x0) goto loc_10096e53c;

loc_10096e528:
    r8 = &@selector(purchaseTotalPrice);
    v15 = v12;
    v14 = v8;
    v12 = v9;
    v8 = v0;
    goto loc_10096e610;

loc_10096e53c:
    var_78 = d0;
    if (([r21 isLayerVisible:r2 atPoint:r3 ofWindow:r4] & 0x1) == 0x0) goto loc_10096e570;

loc_10096e560:
    r8 = &@selector(purchaseTotalPrice);
    v15 = v12;
    d14 = var_78;
    v12 = v9;
    goto loc_10096e610;

loc_10096e570:
    d1 = var_78;
    if (([r21 isLayerVisible:r2 atPoint:r3 ofWindow:r4] & 0x1) == 0x0) goto loc_10096e5a0;

loc_10096e590:
    r8 = &@selector(purchaseTotalPrice);
    v15 = v9;
    v14 = v8;
    d8 = var_78;
    goto loc_10096e610;

loc_10096e5a0:
    if (d15 >= 0xbff0000000000000 * *0x100b9e2d0) {
            d8 = 0xbff0000000000000 * *0x100bf4950 + d8;
            if (d12 < d9) {
                    asm { fccmp      d8, d1, #0x0, mi };
            }
            d1 = var_98;
            if (CPU_FLAGS & S) {
                    asm { fccmp      d1, d0, #0x0, mi };
            }
            if (!CPU_FLAGS & NS) {
                    r8 = 0x100bf4000;
                    r0 = [r21 isLayerVisible:r2 atPoint:r3 ofWindow:r4];
                    v15 = v9;
                    d14 = var_78;
                    if ((r0 & 0x1) != 0x0) {
                            asm { fcvtzs     w8, d0 };
                            if (r8 < 0x0) {
                                    asm { cneg       w8, w8, mi };
                            }
                            if (r8 >= 0x2) {
                                    r23 = 0x0;
                                    d10 = 0x3fe0000000000000;
                                    v11 = v12;
                                    v13 = v12;
                                    v9 = v15;
                                    do {
                                            r23 = r23 + 0x1;
                                            if ([r21 isLayerVisible:r2 atPoint:r3 ofWindow:r4] != 0x0) {
                                                    asm { fcsel      d11, d9, d11, ne };
                                            }
                                            if (CPU_FLAGS & NE) {
                                                    asm { fcsel      d15, d15, d9, ne };
                                            }
                                            asm { fcvtzs     w8, d0 };
                                            if (r8 < 0x0) {
                                                    asm { cneg       w8, w8, mi };
                                            }
                                            if (r23 > 0x22) {
                                                break;
                                            }
                                            d10 = 0x3fe0000000000000;
                                            asm { fcvtzs     w9, d0 };
                                            asm { scvtf      d9, w9 };
                                    } while (r8 > 0x1);
                            }
                            else {
                                    r23 = 0x0;
                                    v11 = v12;
                                    v13 = v12;
                            }
                            d0 = d8 - d14;
                            asm { fcvtzs     w8, d0 };
                            if (r8 < 0x0) {
                                    asm { cneg       w8, w8, mi };
                            }
                            if (r23 <= 0x45 && r8 >= 0x2) {
                                    r23 = r23 + 0x1;
                                    d10 = 0x3fe0000000000000;
                                    v9 = v14;
                                    do {
                                            if ([r21 isLayerVisible:r2 atPoint:r3 ofWindow:r4] != 0x0) {
                                                    asm { fcsel      d12, d9, d12, ne };
                                            }
                                            if (CPU_FLAGS & NE) {
                                                    asm { fcsel      d14, d14, d9, ne };
                                            }
                                            d0 = d12 - d14;
                                            asm { fcvtzs     w8, d0 };
                                            if (r8 < 0x0) {
                                                    asm { cneg       w8, w8, mi };
                                            }
                                            if (r23 > 0x45) {
                                                break;
                                            }
                                            d10 = 0x3fe0000000000000;
                                            d0 = (d12 + d14) * d10;
                                            asm { fcvtzs     w9, d0 };
                                            asm { scvtf      d9, w9 };
                                            r23 = r23 + 0x1;
                                    } while (r8 > 0x1);
                            }
                            if (d13 < d11) {
                                    asm { fcsel      d10, d13, d11, mi };
                            }
                            if (CPU_FLAGS & G) {
                                    asm { fcsel      d0, d13, d11, gt };
                            }
                            if (d8 < d12) {
                                    asm { fcsel      d11, d8, d12, mi };
                            }
                            if (CPU_FLAGS & G) {
                                    asm { fcsel      d1, d8, d12, gt };
                            }
                    }
            }
    }
    goto loc_10096e768;
}

@end