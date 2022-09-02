@implementation VNGMoatUIUtil

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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 name];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 isEqualToString:r2];
    [r0 release];
    if (r24 != 0x0) {
            [VNGMoatLogging reportDevLogWithClass:r20 format:@"Lost App Focus"];
            *(int8_t *)0x1011da9e8 = 0x1;
    }
    else {
            r22 = @selector(isEqualToString:);
            r0 = [r19 name];
            r0 = [r0 retain];
            r22 = objc_msgSend(r0, r22);
            [r0 release];
            if (r22 != 0x0) {
                    [VNGMoatLogging reportDevLogWithClass:r20 format:@"Gained App Focus"];
                    *(int8_t *)0x1011da9e8 = 0x0;
                    [VNGMoatOnOff runStatusCheckInThread];
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
            *(int8_t *)0x1011da9e8 = 0x1;
    }
    if ((*(int8_t *)0x1011da9e9 & 0x1) == 0x0) {
            r21 = [[NSNotificationCenter defaultCenter] retain];
            [r21 addObserver:[r19 class] selector:@selector(respondToAppFocus:) name:**_UIApplicationWillResignActiveNotification object:0x0];
            [r21 release];
            r20 = [[NSNotificationCenter defaultCenter] retain];
            [r20 addObserver:[r19 class] selector:@selector(respondToAppFocus:) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
            [r20 release];
            *(int8_t *)0x1011da9e9 = 0x1;
    }
    return;
}

+(void *)getGroupViewState:(void *)arg2 {
    r31 = r31 - 0x150;
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
    r21 = [arg2 retain];
    r0 = [VNGMoatRenderState alloc];
    r0 = [r0 init];
    r19 = r0;
    [r0 setRenderState:0x2];
    [r19 setOpacity:0x2];
    var_118 = q0;
    r0 = [r21 retain];
    r21 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r2 = &var_128;
    var_138 = r1;
    r24 = objc_msgSend(r0, r1);
    if (r24 == 0x0) goto loc_100675b94;

loc_100675a7c:
    r23 = *var_118;
    goto loc_100675a90;

loc_100675a90:
    r20 = 0x0;
    goto loc_100675aa0;

loc_100675aa0:
    if (*var_118 != r23) {
            objc_enumerationMutation(r21);
    }
    r28 = *(var_120 + r20 * 0x8);
    if ([r28 isHidden] != 0x0) goto loc_100675b84;

loc_100675ad0:
    [r28 opacity];
    if (s0 >= 0x3ff0000000000000) goto loc_100675b48;

loc_100675ae4:
    if ([r19 renderState] != 0x1) {
            r2 = 0x1;
            [r19 setRenderState:r2];
    }
    [r19 opacity];
    objc_msgSend(r28, r26);
    s0 = s9 * s0;
    [r19 setOpacity:r2];
    objc_msgSend(r19, r26);
    if (s0 == 0x0) goto loc_100675b94;

loc_100675b48:
    r20 = r20 + 0x1;
    if (r20 < r24) goto loc_100675aa0;

loc_100675b54:
    r2 = &var_128;
    r24 = objc_msgSend(r21, var_138);
    if (r24 != 0x0) goto loc_100675a90;

loc_100675b94:
    var_68 = **___stack_chk_guard;
    [r21 release];
    [r21 release];
    if (**___stack_chk_guard == var_68) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100675b84:
    [r19 setRenderState:r2];
    goto loc_100675b94;
}

+(bool)isInvalidRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_20 = d11;
    stack[-40] = d10;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = CGRectEqualToRect(self, _cmd);
    if ((r0 & 0x1) == 0x0 && (d11 != *0x100ba20f0 || d10 != *0x100ba20f0)) {
            if (d8 * d9 == 0x0) {
                    if (CPU_FLAGS & E) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

+(void *)getLayerVisibility:(void *)arg2 atPoint:(struct CGPoint)arg3 ofSuperLayer:(void *)arg4 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x170;
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
    v8 = v1;
    v9 = v0;
    r23 = self;
    r19 = [arg2 retain];
    r0 = [r3 retain];
    r20 = r0;
    r0 = [r0 hitTest:r2];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_1006758c4;

loc_1006756ac:
    r0 = [r23 isLayerDescendant:r2 ofLayer:r3];
    r22 = 0x1;
    if (r21 == r19) goto loc_10067590c;

loc_1006756d4:
    r22 = 0x1;
    if ((r0 & 0x1) != 0x0) goto loc_10067590c;

loc_1006756d8:
    CGColorGetAlpha([r21 backgroundColor]);
    if (d0 != 0x0) goto loc_100675908;

loc_1006756f8:
    var_150 = @selector(isLayerDescendant:ofLayer:);
    stack[-344] = r23;
    var_130 = r20;
    r0 = [r21 superlayer];
    r0 = [r0 retain];
    r23 = [[r0 sublayers] retain];
    [r0 release];
    var_118 = q0;
    r0 = [r23 retain];
    r25 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r3 = &stack[-248];
    var_158 = r1;
    r27 = objc_msgSend(r0, r1);
    if (r27 == 0x0) goto loc_100675884;

loc_100675780:
    r8 = 0x0;
    r26 = *var_118;
    goto loc_100675798;

loc_100675798:
    r23 = 0x0;
    r20 = r8;
    goto loc_1006757b4;

loc_1006757b4:
    r22 = r20 + r23;
    if (*var_118 != r26) {
            objc_enumerationMutation(r25);
    }
    if (r22 > 0xc8) goto loc_1006758ec;

loc_1006757d8:
    r22 = *(var_120 + r23 * 0x8);
    CGColorGetAlpha([r22 backgroundColor]);
    if (([r22 isHidden] & 0x1) != 0x0 || r22 == r19 || d0 == 0x0) goto loc_100675848;

loc_100675810:
    [r22 convertPoint:r2 fromLayer:r3];
    if ([r22 containsPoint:r2] == 0x0 || objc_msgSend(stack[-344], var_150) != 0x0) goto loc_100675848;

loc_1006758ec:
    [r25 release];
    r22 = 0x0;
    r20 = var_130;
    goto loc_1006758fc;

loc_1006758fc:
    [r25 release];
    goto loc_10067590c;

loc_10067590c:
    r0 = [VNGMoatHitTestResult alloc];
    goto loc_100675940;

loc_100675940:
    var_68 = **___stack_chk_guard;
    r22 = [r0 initWithVis:r2 withHitLayer:r3];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_68) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100675848:
    r23 = r23 + 0x1;
    if (r23 < r27) goto loc_1006757b4;

loc_100675854:
    r3 = &stack[-248];
    r27 = objc_msgSend(r25, var_158);
    r8 = r20 + r23;
    if (r27 != 0x0) goto loc_100675798;

loc_100675884:
    [r25 release];
    r20 = var_130;
    [r19 convertPoint:r20 fromLayer:r3];
    r22 = [r19 containsPoint:r20];
    goto loc_1006758fc;

loc_100675908:
    r22 = 0x0;
    goto loc_10067590c;

loc_1006758c4:
    r0 = [VNGMoatHitTestResult alloc];
    goto loc_100675940;
}

+(struct CGRect)getRectOnScreen:(struct CGRect)arg2 withLayerChain:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x170;
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
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r20 = [r2 retain];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 keyWindow];
    r29 = &saved_fp;
    var_148 = [r0 retain];
    [r21 release];
    var_128 = q0;
    r0 = [r20 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_140 = r0;
    var_150 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 == 0x0) goto loc_10067676c;

loc_100676654:
    r21 = *var_128;
    goto loc_100676670;

loc_100676670:
    r20 = 0x0;
    goto loc_100676684;

loc_100676684:
    if (*var_128 != r21) {
            objc_enumerationMutation(var_140);
    }
    r27 = *(var_130 + r20 * 0x8);
    v0 = v11;
    v1 = v10;
    v2 = v9;
    v3 = v8;
    if (([VNGMoatUIUtil isInvalidRect:r2] & 0x1) != 0x0) goto loc_10067676c;

loc_1006766c4:
    if (([r27 masksToBounds] & 0x1) == 0x0) {
            r0 = [var_148 layer];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == r27) {
                    CGRectIntersection([VNGMoatUIUtil getRectInWindow:r2 clipToWindow:r3], @selector(getRectInWindow:clipToWindow:));
                    v11 = v0;
                    v10 = v1;
                    v9 = v2;
                    v8 = v3;
            }
    }
    else {
            CGRectIntersection([VNGMoatUIUtil getRectInWindow:r2 clipToWindow:r3], @selector(getRectInWindow:clipToWindow:));
            v11 = v0;
            v10 = v1;
            v9 = v2;
            v8 = v3;
    }
    r20 = r20 + 0x1;
    if (r20 < r22) goto loc_100676684;

loc_10067673c:
    r22 = objc_msgSend(var_140, var_150);
    if (r22 != 0x0) goto loc_100676670;

loc_10067676c:
    var_78 = **___stack_chk_guard;
    [var_140 release];
    [var_148 release];
    r0 = [var_140 release];
    if (**___stack_chk_guard != var_78) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(float)getVisibleArea:(void *)arg2 withLayerChain:(void *)arg3 withHitLayers:(void *)arg4 {
    r31 = r31 - 0x1b0;
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
    *(&var_10 + 0xffffffffffffff68) = **___stack_chk_guard;
    r20 = [arg2 retain];
    var_178 = [arg3 retain];
    r21 = [arg4 retain];
    [VNGMoatUIUtil getRectInWindow:r20 clipToWindow:0x1];
    v10 = v0;
    v11 = v1;
    v8 = v2;
    v9 = v3;
    var_1A8 = [[NSMutableArray alloc] init];
    r24 = [r21 retain];
    r0 = @class(VNGMoatUIUtil);
    r0 = [r0 getUiHierarchy:r20];
    r29 = &var_10;
    r21 = [r0 retain];
    [r20 release];
    [r24 addObjectsFromArray:r21];
    [r21 release];
    r21 = [[NSMutableSet alloc] init];
    r0 = [r24 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r3 = &stack[-296];
    var_170 = r0;
    var_1A0 = r1;
    r24 = objc_msgSend(r0, r1);
    if (r24 != 0x0) {
            do {
                    r19 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_170);
                            }
                            r23 = *(0x0 + r19 * 0x8);
                            if (([r21 containsObject:r23] & 0x1) == 0x0) {
                                    [r21 addObject:r23];
                                    r0 = @class(VNGMoatUIUtil);
                                    r0 = [r0 getRectInWindow:r23];
                                    v0 = v10;
                                    v1 = v11;
                                    v2 = v8;
                                    v3 = v9;
                                    CGRectIntersection(r0, @selector(getRectInWindow:));
                                    v12 = v0;
                                    v13 = v1;
                                    v14 = v2;
                                    v15 = v3;
                                    if (([VNGMoatUIUtil isInvalidRect:r23] & 0x1) == 0x0 && ([var_178 containsObject:r23] & 0x1) == 0x0) {
                                            [r23 opacity];
                                            if (s0 > 0x0 && ([r23 isHidden] & 0x1) == 0x0) {
                                                    CGColorGetAlpha([r23 backgroundColor]);
                                                    if (d0 != 0x0) {
                                                            v0 = v12;
                                                            v1 = v13;
                                                            v2 = v14;
                                                            v3 = v15;
                                                            r0 = [NSValue valueWithCGRect:r2];
                                                            r29 = r29;
                                                            r23 = [r0 retain];
                                                            [var_1A8 addObject:r23];
                                                            [r23 release];
                                                    }
                                            }
                                    }
                            }
                            r19 = r19 + 0x1;
                    } while (r19 < r24);
                    r3 = &stack[-296];
                    r24 = objc_msgSend(var_170, var_1A0);
            } while (r24 != 0x0);
    }
    [var_170 release];
    [VNGMoatUIUtil getCoveredArea:var_1A8 withRectsToCheck:r3];
    [r21 release];
    [var_170 release];
    [var_1A8 release];
    [var_170 release];
    r0 = [var_178 release];
    if (**___stack_chk_guard == *(r29 + 0xffffffffffffff68)) {
            asm { fcvt       s0, d0 };
            asm { fmaxnm     s0, s0, s1 };
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(float)getCoveredArea:(struct CGRect)arg2 withRectsToCheck:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
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
    r29 = &var_10;
    r31 = r31 + 0xffffffffffffff60 - 0x1d0;
    v8 = v3;
    v9 = v1;
    *(r29 + 0xffffffffffffff68) = **___stack_chk_guard;
    r0 = [r2 retain];
    [r0 sortUsingComparator:0x100e8a0e8];
    r19 = [[NSMutableArray alloc] init];
    r0 = [r0 retain];
    r20 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_238 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 != 0x0) {
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            r25 = @selector(addObject:);
                            r24 = @selector(numberWithFloat:);
                            [*(0x0 + r27 * 0x8) CGRectValue];
                            r0 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
                            asm { fcvt       s0, d10 };
                            r0 = objc_msgSend(r0, r24);
                            [r0 retain];
                            objc_msgSend(r19, r25);
                            [r26 release];
                            r0 = *(r28 + 0xfc0);
                            asm { fcvt       s0, d0 };
                            r0 = objc_msgSend(r0, r24);
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r19, r25);
                            [r26 release];
                            r27 = r27 + 0x1;
                    } while (r27 < r22);
                    r22 = objc_msgSend(r20, var_238);
            } while (r22 != 0x0);
    }
    [r20 release];
    [r19 sortUsingSelector:@selector(compare:)];
    r0 = [r19 count];
    var_22C = s0;
    if (r0 < 0x2) goto loc_100676034;

loc_100675de4:
    r23 = 0x0;
    r21 = r0 - 0x1;
    r22 = @selector(objectAtIndexedSubscript:);
    var_250 = r22;
    asm { fcvt       s0, d9 };
    var_25C = s0;
    asm { fcvt       s0, d0 };
    var_230 = s0;
    var_22C = s0;
    var_248 = r21;
    goto loc_100675e30;

loc_100675e30:
    r26 = [objc_msgSend(r19, r22) retain];
    r25 = r23 + 0x1;
    r0 = objc_msgSend(r19, r22);
    r29 = r29;
    r27 = [r0 retain];
    r28 = [r26 isEqualToNumber:r27];
    [r27 release];
    [r26 release];
    if ((r28 & 0x1) != 0x0) goto loc_100676028;

loc_100675e94:
    r0 = objc_msgSend(r19, r22);
    r0 = [r0 retain];
    [r0 floatValue];
    [r23 release];
    r0 = objc_msgSend(r19, r22);
    r29 = r29;
    r0 = [r0 retain];
    [r0 floatValue];
    [r23 release];
    var_218 = q0;
    r0 = [r20 retain];
    r26 = r0;
    r27 = objc_msgSend(r0, var_238);
    if (r27 == 0x0) goto loc_10067601c;

loc_100675f34:
    s10 = s11 - s12;
    asm { fcvt       d11, s10 };
    asm { fcvt       d12, s12 };
    r21 = *var_218;
    s15 = var_25C;
    goto loc_100675f4c;

loc_100675f4c:
    r22 = 0x0;
    goto loc_100675f60;

loc_100675f60:
    if (*var_218 != r21) {
            objc_enumerationMutation(r26);
    }
    CGRectIntersection([*(var_220 + r22 * 0x8) CGRectValue], @selector(CGRectValue));
    if ((objc_msgSend(@class(VNGMoatUIUtil), r23) & 0x1) != 0x0) goto loc_100675ff0;

loc_100675fb4:
    asm { fcvt       s0, d0 };
    if (s15 < s0) {
            asm { fcvt       s1, d13 };
            asm { fmaxnm     s1, s15, s1 };
            var_22C = var_22C + s10 * (s0 - s1);
    }
    s1 = var_230;
    if (s0 == s1) goto loc_10067601c;

loc_100675ff0:
    r22 = r22 + 0x1;
    if (r22 < r27) goto loc_100675f60;

loc_100675ffc:
    r27 = objc_msgSend(r26, var_238);
    if (r27 != 0x0) goto loc_100675f4c;

loc_10067601c:
    [r26 release];
    r22 = var_250;
    r21 = var_248;
    goto loc_100676028;

loc_100676028:
    r23 = r25;
    if (r25 != r21) goto loc_100675e30;

loc_100676034:
    [r19 release];
    r0 = [r20 release];
    if (**___stack_chk_guard != *(r29 + 0xffffffffffffff68)) {
            r0 = __stack_chk_fail();
    }
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
    r21 = 0x0;
    if (r19 == 0x0) goto loc_100677544;

loc_1006774a0:
    r21 = 0x0;
    if (r20 == 0x0) goto loc_100677544;

loc_1006774a4:
    r21 = 0x0;
    if (r20 == r19) goto loc_100677544;

loc_1006774ac:
    r23 = 0xffffffffffffffff;
    goto loc_1006774b8;

loc_1006774b8:
    r0 = [r20 superlayer];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100677538;

loc_1006774d8:
    r0 = [r20 superlayer];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == r19) goto loc_100677540;

loc_1006774fc:
    r0 = [r20 superlayer];
    r29 = r29;
    r22 = [r0 retain];
    [r20 release];
    r23 = r23 + 0x1;
    r20 = r22;
    if (r23 < 0x63) goto loc_1006774b8;

loc_10067752c:
    r21 = 0x0;
    r20 = r22;
    goto loc_100677544;

loc_100677544:
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_100677540:
    r21 = 0x1;
    goto loc_100677544;

loc_100677538:
    r21 = 0x0;
    goto loc_100677544;
}

+(struct CGRect)getRectInWindow:(void *)arg2 {
    r0 = [VNGMoatUIUtil getRectInWindow:arg2 clipToWindow:0x0];
    return r0;
}

+(bool)layerChain:(void *)arg2 isCoveredByVCInWindow:(void *)arg3 {
    r31 = r31 - 0x80;
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
    r19 = [arg2 retain];
    r26 = [arg3 retain];
    r21 = [[NSSet setWithArray:r19] retain];
    r23 = [[r26 rootViewController] retain];
    r22 = objc_retainBlock(0x100e8a128);
    r0 = (*(r22 + 0x10))();
    r29 = &saved_fp;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            r25 = r24;
            do {
                    [r24 retain];
                    [r23 release];
                    r0 = (*(r22 + 0x10))(r22, r25);
                    r29 = r29;
                    r24 = [r0 retain];
                    r23 = r25;
                    [r25 release];
                    r25 = r24;
            } while (r24 != 0x0);
    }
    r0 = [r23 view];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 layer];
    r29 = r29;
    r25 = [r0 retain];
    [r20 release];
    if (([r21 containsObject:r2] & 0x1) != 0x0) {
            r28 = 0x0;
    }
    else {
            var_60 = r26;
            var_58 = r19;
            r19 = 0x0;
            do {
                    r27 = @selector(containsObject:);
                    r26 = [[r25 superlayer] retain];
                    r20 = objc_msgSend(r21, r27);
                    [r26 release];
                    r0 = [r25 superlayer];
                    r29 = r29;
                    r26 = [r0 retain];
                    if (r19 >= 0x63) {
                        break;
                    }
                    if (r20 != 0x0) {
                        break;
                    }
                    [r25 release];
                    r19 = r19 + 0x1;
                    r25 = r26;
            } while (true);
            r19 = var_58;
            r0 = [r19 indexOfObject:r2];
            r28 = 0x1;
            if (r0 != 0x0) {
                    r28 = 0x1;
                    if (r0 != 0x7fffffffffffffff) {
                            var_68 = [[r19 objectAtIndex:r0 - 0x1] retain];
                            r0 = [r26 sublayers];
                            r0 = [r0 retain];
                            var_70 = [r0 indexOfObject:r2];
                            [r0 release];
                            r0 = [r26 sublayers];
                            r0 = [r0 retain];
                            r27 = var_68;
                            r28 = [r0 indexOfObject:r2];
                            [r0 release];
                            if (var_70 > r28) {
                                    if (CPU_FLAGS & A) {
                                            r28 = 0x1;
                                    }
                            }
                            [r27 release];
                    }
            }
            [r26 release];
            r26 = var_60;
    }
    [r25 release];
    [r24 release];
    [r22 release];
    [r23 release];
    [r21 release];
    [r26 release];
    [r19 release];
    r0 = r28;
    return r0;
}

+(struct CGRect)getRectInWindow:(void *)arg2 clipToWindow:(bool)arg3 {
    var_50 = d11;
    stack[-88] = d10;
    r31 = r31 + 0xffffffffffffffa0;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r19 = [[r0 keyWindow] retain];
    [r0 release];
    [arg2 bounds];
    r0 = [r19 layer];
    r29 = &saved_fp;
    r24 = [r0 retain];
    v0 = v0;
    v1 = v1;
    v2 = v2;
    v3 = v3;
    [arg2 convertRect:r24 toLayer:r3];
    v8 = v0;
    v9 = v1;
    v10 = v2;
    v11 = v3;
    [r21 release];
    [r24 release];
    if (arg3 != 0x0) {
            r0 = [r19 layer];
            r0 = [r0 retain];
            r1 = @selector(frame);
            CGRectIntersection(objc_msgSend(r0, r1), r1);
            v8 = v0;
            v9 = v1;
            v10 = v2;
            v11 = v3;
            [r20 release];
    }
    r0 = [r19 release];
    return r0;
}

+(void *)getLayerChain:(void *)arg2 {
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
    r29 = &saved_fp;
    r20 = [arg2 retain];
    r19 = [[NSMutableArray alloc] init];
    r20 = [r20 retain];
    if (r20 != 0x0) {
            r8 = 0x0;
            r25 = 0x0;
            r23 = r20;
            do {
                    r8 = (r8 ^ 0xffffffff) & 0x1;
                    r25 = r25 + r8;
                    [r19 addObject:r23];
                    r0 = [r23 superlayer];
                    r29 = r29;
                    r24 = [r0 retain];
                    [r23 release];
                    if (r24 == 0x0) {
                            if (CPU_FLAGS & E) {
                                    r8 = 0x1;
                            }
                    }
                    if (r25 <= 0x63) {
                            asm { ccmp       x24, #0x0, #0x4, le };
                    }
                    r23 = r24;
            } while (CPU_FLAGS & NE);
            [r24 release];
    }
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void)insertIntoArray:(void *)arg2 fromArray:(void *)arg3 withStartIndex:(int)arg4 withMaxMergedSize:(int)arg5 {
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
    r22 = arg5;
    r21 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0 && r20 != 0x0) {
            r24 = [r20 count] - r21;
            r0 = [r19 count];
            r8 = r22 - r0 & !((r22 - r0) / 0xffffffff80000000);
            if (r8 < r24) {
                    if (!CPU_FLAGS & L) {
                            r8 = r24;
                    }
                    else {
                            r8 = r8;
                    }
            }
            if (r8 >= 0x1) {
                    asm { sxtw       x2, w21 };
                    asm { sxtw       x3, w8 };
                    r21 = [[r20 subarrayWithRange:r2] retain];
                    [r19 addObjectsFromArray:r21];
                    [r21 release];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

+(void *)getSublayers:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x90;
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
    if (r2 != 0x0) {
            r0 = [r2 sublayers];
            r29 = r29;
            r9 = [r0 retain];
            if (r9 != 0x0) {
                    r0 = @class(NSMutableArray);
                    var_78 = r9;
                    r0 = [r0 arrayWithArray:r9];
                    r29 = r29;
                    r21 = [r0 retain];
                    r22 = [[NSMutableArray alloc] init];
                    if ([r21 count] != 0x0) {
                            do {
                                    r0 = [r21 lastObject];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r20 = r0;
                                    [r0 opacity];
                                    if (s0 > 0x0 && ([r20 isHidden] & 0x1) == 0x0) {
                                            [r20 frame];
                                            if (d3 != 0x0) {
                                                    [r20 frame];
                                                    if (d2 == 0x0) {
                                                            if (([r20 masksToBounds] & 0x1) == 0x0) {
                                                                    r0 = [r20 sublayers];
                                                                    r29 = r29;
                                                                    r27 = [r0 retain];
                                                                    [r21 addObjectsFromArray:r27];
                                                                    [r27 release];
                                                                    [r22 addObject:r20];
                                                            }
                                                    }
                                                    else {
                                                            r0 = [r20 sublayers];
                                                            r29 = r29;
                                                            r27 = [r0 retain];
                                                            [r21 addObjectsFromArray:r27];
                                                            [r27 release];
                                                            [r22 addObject:r20];
                                                    }
                                            }
                                            else {
                                                    if (([r20 masksToBounds] & 0x1) == 0x0) {
                                                            r0 = [r20 sublayers];
                                                            r29 = r29;
                                                            r27 = [r0 retain];
                                                            [r21 addObjectsFromArray:r27];
                                                            [r27 release];
                                                            [r22 addObject:r20];
                                                    }
                                            }
                                    }
                                    [r21 removeObject:r2];
                                    [r20 release];
                            } while (objc_msgSend(r21, r19) != 0x0);
                    }
                    [r21 release];
                    r9 = var_78;
            }
            else {
                    r22 = 0x0;
            }
            [r9 release];
    }
    else {
            r22 = 0x0;
    }
    r0 = [r22 autorelease];
    return r0;
}

+(void *)getUiHierarchy:(void *)arg2 {
    r31 = r31 - 0xa0;
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
    r0 = [arg2 retain];
    if (r0 == 0x0) goto loc_100677a44;

loc_100677828:
    r20 = [[NSMutableArray alloc] init];
    var_90 = r0;
    r19 = [r0 retain];
    r22 = @selector(superlayer);
    r23 = @selector(sublayers);
    r25 = @selector(indexOfObject:);
    r26 = @selector(count);
    var_80 = r23;
    stack[-136] = r22;
    var_88 = r25;
    var_60 = r26;
    goto loc_100677898;

loc_100677898:
    r0 = objc_msgSend(r19, r22);
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_100677a4c;

loc_1006778b0:
    var_68 = r0;
    r0 = objc_msgSend(r0, r23);
    r29 = r29;
    r0 = [r0 retain];
    r28 = r0;
    r24 = objc_msgSend(r0, r25) + 0x1;
    [VNGMoatUIUtil insertIntoArray:r20 fromArray:r28 withStartIndex:r24 withMaxMergedSize:0x64];
    if (objc_msgSend(r20, r26) >= 0x63) {
            r27 = 0x1;
            r21 = 0x1;
            r24 = var_68;
    }
    else {
            var_70 = r19;
            if (r24 < objc_msgSend(r28, r26)) {
                    r27 = 0x0;
                    r8 = &@selector(reportDevLogWithObject:format:);
                    r23 = *(r8 + 0x2d0);
                    asm { sxtw       x8, w24 };
                    asm { sxtw       x25, w0 };
                    r26 = r8 + 0x1;
                    do {
                            r22 = [[r28 objectAtIndexedSubscript:r26 - 0x1] retain];
                            r8 = &@class(MPVASTModel);
                            r0 = *(r8 + 0x958);
                            r0 = objc_msgSend(r0, r23);
                            r29 = r29;
                            r21 = [r0 retain];
                            [*(r8 + 0x958) insertIntoArray:r20 fromArray:r21 withStartIndex:0x0 withMaxMergedSize:0x64];
                            r24 = objc_msgSend(r20, var_60);
                            if (r24 > 0xc7) {
                                    r8 = &@class(MPVASTModel);
                                    if (CPU_FLAGS & A) {
                                            r8 = 0x1;
                                    }
                            }
                            r27 = r27 | r8;
                            [r21 release];
                            [r22 release];
                            if (r26 >= r25) {
                                break;
                            }
                            r26 = r26 + 0x1;
                    } while (r24 < 0xc8);
            }
            else {
                    r27 = 0x0;
            }
            r24 = var_68;
            r19 = [r24 retain];
            [var_70 release];
            r21 = 0x0;
            r23 = var_80;
            r22 = stack[-136];
            r25 = var_88;
            r26 = var_60;
    }
    [r28 release];
    [r24 release];
    if (r19 == 0x0 || (r21 & 0x1) != 0x0 || (r27 & 0x1) != 0x0) goto loc_100677a50;
    goto loc_100677898;

loc_100677a50:
    [r19 release];
    r0 = var_90;
    goto loc_100677a5c;

loc_100677a5c:
    [r0 release];
    r0 = [r20 autorelease];
    return r0;

loc_100677a4c:
    [r0 release];
    goto loc_100677a50;

loc_100677a44:
    r20 = 0x0;
    goto loc_100677a5c;
}

+(bool)containsWebView:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 digForUIWebView:r19 allowMultiple:0x1];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 == 0x0) {
            r0 = [r20 digForWKWebView:r19 allowMultiple:0x1];
            r0 = [r0 retain];
            if (r0 != 0x0) {
            }
            [r0 release];
    }
    [r22 release];
    [r19 release];
    return 0x1;
}

+(void *)digForUIWebView:(void *)arg2 allowMultiple:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    r8 = NSClassFromString(@"UIWebView");
    if (r8 != 0x0) {
            r20 = [[r21 digForWebView:r19 webViewType:r8 allowMultiple:r20] retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)digForWKWebView:(void *)arg2 allowMultiple:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    r8 = NSClassFromString(@"WKWebView");
    if (r8 != 0x0) {
            r20 = [[r21 digForWebView:r19 webViewType:r8 allowMultiple:r20] retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)getViewableState:(void *)arg2 {
    r31 = r31 - 0x1d0;
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
    r28 = self;
    *(&var_10 + 0xffffffffffffff68) = **___stack_chk_guard;
    r20 = [arg2 retain];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r24 = [[r0 keyWindow] retain];
    [r0 release];
    r22 = [[VNGMoatViewableState alloc] init];
    r0 = [UIScreen mainScreen];
    r29 = &var_10;
    r0 = [r0 retain];
    [r0 bounds];
    [r22 setScreenRect:r2];
    [r0 release];
    [VNGMoatUIUtil getRectInWindow:r20];
    [r22 setViewRect:r20];
    r2 = (*(int8_t *)byte_1011da9e8 ^ 0xffffffff) & 0x1;
    [r22 setIsFocused:r2];
    d3 = *(int128_t *)(*_CGRectZero + 0x18);
    [r22 setVisibleRect:r2];
    if (([r22 isFocused] & 0x1) != 0x0) {
            var_198 = r20;
            r25 = [[VNGMoatUIUtil getLayerChain:r20] retain];
            r0 = [r24 layer];
            r29 = r29;
            r19 = [r0 retain];
            [r22 setIsAttached:[r25 containsObject:r19]];
            [r19 release];
            if (([r22 isAttached] & 0x1) != 0x0) {
                    r0 = [VNGMoatUIUtil getGroupViewState:r25];
                    r29 = r29;
                    r0 = [r0 retain];
                    r19 = r0;
                    if ([r0 renderState] != 0x0) {
                            var_1B8 = r19;
                            [r19 opacity];
                            [r22 setOpacity:r2];
                            r20 = @class(VNGMoatUIUtil);
                            [r22 viewRect];
                            if ([r20 isInvalidRect:r2] == 0x0) {
                                    [r22 viewRect];
                                    [VNGMoatUIUtil getRectOnScreen:r25 withLayerChain:r3];
                                    v9 = v0;
                                    v8 = v1;
                                    v11 = v2;
                                    v10 = v3;
                                    if ([VNGMoatUIUtil isInvalidRect:r2] != 0x0) {
                                            [r22 retain];
                                            r26 = var_198;
                                            r19 = var_1B8;
                                    }
                                    else {
                                            v2 = v11;
                                            [r22 setVisibleRect:r2];
                                            var_1C8 = r25;
                                            if ([r28 layerChain:r25 isCoveredByVCInWindow:r24] != 0x0) {
                                                    [r22 setIsCoveredByVC:0x1];
                                            }
                                            var_1C0 = r22;
                                            r22 = [[NSMutableArray alloc] init];
                                            r19 = [[NSValue valueWithCGPoint:r2] retain];
                                            [r22 addObject:r19];
                                            [r19 release];
                                            r19 = [[NSValue valueWithCGPoint:r19] retain];
                                            [r22 addObject:r19];
                                            [r19 release];
                                            r19 = [[NSValue valueWithCGPoint:r19] retain];
                                            [r22 addObject:r19];
                                            [r19 release];
                                            v0 = v14;
                                            v1 = v13;
                                            r19 = [[NSValue valueWithCGPoint:r19] retain];
                                            [r22 addObject:r19];
                                            [r19 release];
                                            r0 = @class(NSValue);
                                            r0 = [r0 valueWithCGPoint:r19];
                                            r29 = r29;
                                            r19 = [r0 retain];
                                            [r22 addObject:r19];
                                            [r19 release];
                                            var_190 = [[NSMutableArray alloc] init];
                                            r0 = [r22 retain];
                                            r1 = @selector(countByEnumeratingWithState:objects:count:);
                                            r2 = &var_168;
                                            var_188 = r0;
                                            var_1B0 = r1;
                                            r0 = objc_msgSend(r0, r1);
                                            r26 = var_198;
                                            var_170 = r0;
                                            if (r0 != 0x0) {
                                                    do {
                                                            r27 = 0x0;
                                                            do {
                                                                    if (*0x0 != *0x0) {
                                                                            objc_enumerationMutation(var_188);
                                                                    }
                                                                    [*(0x0 + r27 * 0x8) CGPointValue];
                                                                    r22 = r24;
                                                                    r20 = [[r24 layer] retain];
                                                                    v0 = v0;
                                                                    v1 = v1;
                                                                    r0 = [VNGMoatUIUtil getLayerVisibility:r2 atPoint:r3 ofSuperLayer:r4];
                                                                    r29 = r29;
                                                                    r19 = [r0 retain];
                                                                    [r20 release];
                                                                    if (([r19 isVisible] & 0x1) == 0x0) {
                                                                            r0 = [r19 hitLayer];
                                                                            r29 = r29;
                                                                            r20 = [r0 retain];
                                                                            if (r20 != 0x0) {
                                                                                    r0 = [r19 hitLayer];
                                                                                    r29 = r29;
                                                                                    r26 = [r0 retain];
                                                                                    r24 = [var_190 containsObject:r2];
                                                                                    r0 = r26;
                                                                                    r26 = var_198;
                                                                                    [r0 release];
                                                                                    [r20 release];
                                                                                    if ((r24 & 0x1) == 0x0) {
                                                                                            r0 = [r19 hitLayer];
                                                                                            r29 = r29;
                                                                                            [r0 retain];
                                                                                            [var_190 addObject:r2];
                                                                                            [r20 release];
                                                                                    }
                                                                            }
                                                                    }
                                                                    [r19 release];
                                                                    r27 = r27 + 0x1;
                                                                    r24 = r22;
                                                            } while (r27 < var_170);
                                                            r2 = &var_168;
                                                            r0 = objc_msgSend(var_188, var_1B0);
                                                            var_170 = r0;
                                                    } while (r0 != 0x0);
                                            }
                                            [var_188 release];
                                            r20 = var_190;
                                            r0 = [r20 count];
                                            r22 = var_1C0;
                                            if (r0 != 0x0) {
                                                    [r22 visibleRect];
                                                    [r22 visibleRect];
                                                    asm { fcvt       s8, d0 };
                                                    r25 = var_1C8;
                                                    [VNGMoatUIUtil getVisibleArea:r26 withLayerChain:r25 withHitLayers:r20];
                                                    if (s0 < s8) {
                                                            asm { fdiv       s0, s0, s8 };
                                                            [r22 setCoveredPercent:r2];
                                                    }
                                                    [r22 retain];
                                            }
                                            else {
                                                    [r22 retain];
                                                    r25 = var_1C8;
                                            }
                                            r19 = var_1B8;
                                            [r20 release];
                                            [var_188 release];
                                    }
                            }
                            else {
                                    [r22 retain];
                                    r26 = var_198;
                                    r19 = var_1B8;
                            }
                    }
                    else {
                            [r22 setIsHidden:0x1];
                            [r22 retain];
                            r26 = var_198;
                    }
                    [r19 release];
            }
            else {
                    r0 = [r25 lastObject];
                    r0 = [r0 retain];
                    r19 = r0;
                    r0 = [r0 superlayer];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    [r19 release];
                    if (r0 != 0x0) {
                            [r22 setExceedsMaxLayerCount:0x1];
                    }
                    [r22 retain];
                    r26 = var_198;
            }
            [r25 release];
    }
    else {
            [r22 retain];
            r26 = r20;
    }
    [r22 release];
    [r24 release];
    [r26 release];
    if (**___stack_chk_guard == *(r29 + 0xffffffffffffff68)) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)digForWebView:(void *)arg2 webViewType:(void *)arg3 allowMultiple:(bool)arg4 {
    r31 = r31 - 0xb0;
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
    var_64 = arg4;
    r23 = self;
    r0 = [arg2 retain];
    r21 = r0;
    var_58 = arg3;
    if ([r0 isKindOfClass:r2] == 0x0) goto loc_100677f7c;

loc_100677f6c:
    r19 = [r21 retain];
    goto loc_1006781e0;

loc_1006781e0:
    [r21 release];
    r0 = [r19 autorelease];
    return r0;

loc_100677f7c:
    r19 = @class(NSMutableArray);
    var_80 = r21;
    r21 = [[r21 subviews] retain];
    r0 = [r19 arrayWithArray:r21];
    r29 = r29;
    r20 = [r0 retain];
    [r21 release];
    var_60 = [[NSMutableArray alloc] init];
    r28 = @selector(count);
    if (objc_msgSend(r20, r28) == 0x0) goto loc_100678160;

loc_100678008:
    var_98 = r23;
    r24 = 0x0;
    r27 = 0x0;
    r21 = @selector(removeAllObjects);
    r23 = @selector(addObjectsFromArray:);
    var_90 = r23;
    stack[-152] = r21;
    goto loc_100678030;

loc_100678030:
    r0 = objc_msgSend(r20, r28);
    if (r24 > 0x63 || r0 == 0x0) goto loc_100678110;

loc_100678048:
    r23 = 0x1;
    goto loc_100678058;

loc_100678058:
    r25 = @selector(isKindOfClass:);
    r0 = [r20 objectAtIndexedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (objc_msgSend(r0, r25) == 0x0) goto loc_1006780a0;

loc_100678084:
    if (r27 != 0x0) goto loc_10067817c;

loc_100678088:
    r27 = [r22 retain];
    if (var_64 == 0x0) goto loc_1006780d0;

loc_10067809c:
    r27 = [r27 retain];
    r19 = r27;
    r21 = var_80;
    goto loc_1006781c0;

loc_1006781c0:
    [r22 release];
    goto loc_1006781c8;

loc_1006781c8:
    [r27 release];
    [var_60 release];
    [r20 release];
    goto loc_1006781e0;

loc_1006780d0:
    [r22 release];
    r0 = objc_msgSend(r20, r28);
    r8 = r23 + 0x1;
    if (r24 + r23 > 0x63) goto loc_100678100;

loc_1006780f4:
    COND = r23 < r0;
    r23 = r8;
    if (COND) goto loc_100678058;

loc_100678100:
    r24 = r24 + r8 - 0x1;
    r23 = var_90;
    r21 = stack[-152];
    goto loc_100678110;

loc_100678110:
    var_78 = @selector(count);
    objc_msgSend(r20, r21);
    objc_msgSend(r20, r23);
    objc_msgSend(var_60, r21);
    r19 = var_78;
    r0 = objc_msgSend(r20, r19);
    if (r24 > 0x63) goto loc_100678164;

loc_100678154:
    r28 = r19;
    if (r0 != 0x0) goto loc_100678030;

loc_100678164:
    r27 = [r27 retain];
    r19 = r27;
    r21 = var_80;
    goto loc_1006781c8;

loc_10067817c:
    r21 = var_80;
    [VNGMoatLogging reportDevLogWithClass:var_98 format:@"%@ contained multiple WebViews. Expected one."];
    r19 = 0x0;
    goto loc_1006781c0;

loc_1006780a0:
    r0 = [r22 subviews];
    r29 = r29;
    [r0 retain];
    [var_60 addObjectsFromArray:r2];
    [r26 release];
    goto loc_1006780d0;

loc_100678160:
    r27 = 0x0;
    goto loc_100678164;
}

@end