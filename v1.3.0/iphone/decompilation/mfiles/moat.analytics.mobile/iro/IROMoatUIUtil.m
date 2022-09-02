@implementation IROMoatUIUtil

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
            *(int8_t *)0x1011dae00 = 0x1;
    }
    if ((*(int8_t *)0x1011dae01 & 0x1) == 0x0) {
            r21 = [[NSNotificationCenter defaultCenter] retain];
            [r21 addObserver:[r19 class] selector:@selector(respondToAppFocus:) name:**_UIApplicationWillResignActiveNotification object:0x0];
            [r21 release];
            r20 = [[NSNotificationCenter defaultCenter] retain];
            [r20 addObserver:[r19 class] selector:@selector(respondToAppFocus:) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
            [r20 release];
            *(int8_t *)0x1011dae01 = 0x1;
    }
    return;
}

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
            [IROMoatLogging reportDevLogWithClass:r20 format:@"Lost App Focus"];
            *(int8_t *)0x1011dae00 = 0x1;
    }
    else {
            r22 = @selector(isEqualToString:);
            r0 = [r19 name];
            r0 = [r0 retain];
            r22 = objc_msgSend(r0, r22);
            [r0 release];
            if (r22 != 0x0) {
                    [IROMoatLogging reportDevLogWithClass:r20 format:@"Gained App Focus"];
                    *(int8_t *)0x1011dae00 = 0x0;
                    [IROMoatOnOff runStatusCheckInThread];
            }
    }
    [r19 release];
    return;
}

+(void *)getGroupViewState:(void *)arg2 {
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffff90 - 0xe0;
    [arg2 retain];
    r0 = [IROMoatRenderState alloc];
    r0 = [r0 init];
    r19 = r0;
    [r0 setRenderState:0x2];
    v0 = v8;
    [r19 setOpacity:r2];
    var_128 = 0x0;
    r0 = [r20 retain];
    r20 = r0;
    r2 = &var_128;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 == 0x0) goto loc_10074ea5c;

loc_10074e934:
    var_138 = @selector(countByEnumeratingWithState:objects:count:);
    goto loc_10074e944;

loc_10074e944:
    r27 = 0x0;
    var_130 = @selector(setRenderState:);
    goto loc_10074e974;

loc_10074e974:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r20);
    }
    r28 = *(0x0 + r27 * 0x8);
    if ([r28 isHidden] != 0x0) goto loc_10074ea4c;

loc_10074e9a4:
    [r28 opacity];
    if (s0 >= 0x3ff0000000000000) goto loc_10074ea1c;

loc_10074e9b8:
    if ([r19 renderState] != 0x1) {
            var_130 = @selector(setRenderState:);
            r2 = 0x1;
            objc_msgSend(r19, var_130);
    }
    [r19 opacity];
    [r28 opacity];
    s0 = s9 * s0;
    [r19 setOpacity:r2];
    [r19 opacity];
    if (s0 == 0x0) goto loc_10074ea5c;

loc_10074ea1c:
    r27 = r27 + 0x1;
    if (r27 < r22) goto loc_10074e974;

loc_10074ea28:
    var_138 = @selector(countByEnumeratingWithState:objects:count:);
    r2 = &var_128;
    r22 = objc_msgSend(r20, var_138);
    if (r22 != 0x0) goto loc_10074e944;

loc_10074ea5c:
    var_68 = **___stack_chk_guard;
    [r20 release];
    [r20 release];
    if (**___stack_chk_guard == var_68) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10074ea4c:
    var_130 = @selector(setRenderState:);
    objc_msgSend(r19, var_130);
    goto loc_10074ea5c;
}

+(void *)getLayerVisibility:(void *)arg2 atPoint:(struct CGPoint)arg3 ofSuperLayer:(void *)arg4 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 + 0xffffffffffffff90 - 0x100;
    v8 = v1;
    v9 = v0;
    r26 = self;
    r24 = *___stack_chk_guard;
    r24 = *r24;
    var_68 = r24;
    r19 = [arg2 retain];
    r0 = [r3 retain];
    r20 = r0;
    r0 = [r0 hitTest:r2];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_10074e750;

loc_10074e554:
    r0 = [r26 isLayerDescendant:r21 ofLayer:r19];
    r22 = 0x1;
    if (r21 == r19) goto loc_10074e7e0;

loc_10074e578:
    r22 = 0x1;
    if ((r0 & 0x1) != 0x0) goto loc_10074e7e0;

loc_10074e57c:
    CGColorGetAlpha([r21 backgroundColor]);
    if (d0 != 0x0) goto loc_10074e794;

loc_10074e598:
    var_130 = r20;
    r0 = [r21 superlayer];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 sublayers];
    r29 = r29;
    r23 = [r0 retain];
    [r22 release];
    var_F8 = 0x0;
    var_108 = 0x0;
    var_100 = 0x0;
    var_118 = 0x0;
    var_110 = 0x0;
    var_128 = 0x0;
    var_120 = 0x0;
    r0 = [r23 retain];
    r23 = r0;
    r3 = &stack[-248];
    r25 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r25 == 0x0) goto loc_10074e79c;

loc_10074e614:
    var_150 = r26;
    r8 = 0x0;
    var_158 = @selector(countByEnumeratingWithState:objects:count:);
    goto loc_10074e638;

loc_10074e638:
    r24 = 0x0;
    var_138 = @selector(convertPoint:fromLayer:);
    var_140 = @selector(containsPoint:);
    r20 = r8;
    var_148 = @selector(isLayerDescendant:ofLayer:);
    goto loc_10074e664;

loc_10074e664:
    var_118 = 0x0;
    r22 = r20 + r24;
    if (*var_118 != *0x0) {
            objc_enumerationMutation(r23);
    }
    if (r22 > 0x32) goto loc_10074e778;

loc_10074e688:
    var_120 = 0x0;
    r22 = *(var_120 + r24 * 0x8);
    CGColorGetAlpha([r22 backgroundColor]);
    if (([r22 isHidden] & 0x1) != 0x0 || r22 == r19 || d0 == 0x0) goto loc_10074e6f8;

loc_10074e6c0:
    var_138 = @selector(convertPoint:fromLayer:);
    var_140 = @selector(containsPoint:);
    objc_msgSend(r22, var_138);
    if (objc_msgSend(r22, var_140) == 0x0) goto loc_10074e6f8;

loc_10074e6e4:
    var_148 = @selector(isLayerDescendant:ofLayer:);
    if ((objc_msgSend(var_150, var_148) & 0x1) == 0x0) goto loc_10074e778;

loc_10074e6f8:
    r24 = r24 + 0x1;
    if (r24 < r25) goto loc_10074e664;

loc_10074e704:
    var_158 = @selector(countByEnumeratingWithState:objects:count:);
    r3 = &stack[-248];
    r25 = objc_msgSend(r23, var_158);
    r8 = r20 + r24;
    if (r25 != 0x0) goto loc_10074e638;

loc_10074e738:
    [r23 release];
    r24 = *___stack_chk_guard;
    r24 = *r24;
    goto loc_10074e7a4;

loc_10074e7a4:
    [r19 convertPoint:var_130 fromLayer:r3];
    r22 = [r19 containsPoint:var_130];
    goto loc_10074e7d4;

loc_10074e7d4:
    [r23 release];
    r20 = var_130;
    goto loc_10074e7e0;

loc_10074e7e0:
    r0 = [IROMoatHitTestResult alloc];
    goto loc_10074e814;

loc_10074e814:
    r22 = [r0 initWithVis:r2 withHitLayer:r3];
    [r21 release];
    [r20 release];
    [r19 release];
    if (r24 == var_68) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10074e778:
    [r23 release];
    r22 = 0x0;
    r24 = *___stack_chk_guard;
    r24 = *r24;
    goto loc_10074e7d4;

loc_10074e79c:
    [r23 release];
    goto loc_10074e7a4;

loc_10074e794:
    r22 = 0x0;
    goto loc_10074e7e0;

loc_10074e750:
    r0 = [IROMoatHitTestResult alloc];
    goto loc_10074e814;
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

+(struct CGRect)getRectOnScreen:(struct CGRect)arg2 withLayerChain:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 + 0xffffffffffffff80 - 0xf0;
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
    var_138 = 0x0;
    r0 = [r20 retain];
    var_140 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 == 0x0) goto loc_10074f670;

loc_10074f550:
    var_150 = @selector(countByEnumeratingWithState:objects:count:);
    goto loc_10074f574;

loc_10074f574:
    r20 = 0x0;
    goto loc_10074f588;

loc_10074f588:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_140);
    }
    r27 = *(0x0 + r20 * 0x8);
    v0 = v11;
    v1 = v10;
    v2 = v9;
    v3 = v8;
    if (([IROMoatUIUtil isInvalidRect:r2] & 0x1) != 0x0) goto loc_10074f670;

loc_10074f5c8:
    if (([r27 masksToBounds] & 0x1) == 0x0) {
            r0 = [var_148 layer];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r27 == r0) {
                    CGRectIntersection([IROMoatUIUtil getRectInWindow:r2 clipToWindow:r3], @selector(getRectInWindow:clipToWindow:));
                    v11 = v0;
                    v10 = v1;
                    v9 = v2;
                    v8 = v3;
            }
    }
    else {
            CGRectIntersection([IROMoatUIUtil getRectInWindow:r2 clipToWindow:r3], @selector(getRectInWindow:clipToWindow:));
            v11 = v0;
            v10 = v1;
            v9 = v2;
            v8 = v3;
    }
    r20 = r20 + 0x1;
    if (r20 < r22) goto loc_10074f588;

loc_10074f640:
    var_150 = @selector(countByEnumeratingWithState:objects:count:);
    r22 = objc_msgSend(var_140, var_150);
    if (r22 != 0x0) goto loc_10074f574;

loc_10074f670:
    var_78 = **___stack_chk_guard;
    [var_140 release];
    [var_148 release];
    r0 = [var_140 release];
    if (**___stack_chk_guard != var_78) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(float)getCoveredArea:(struct CGRect)arg2 withRectsToCheck:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r29 = &var_10;
    r31 = r31 + 0xffffffffffffff60 - 0x1e0;
    v8 = v3;
    v9 = v1;
    *(r29 + 0xffffffffffffff68) = **___stack_chk_guard;
    r0 = [r2 retain];
    [r0 sortUsingComparator:0x100e8e9a0];
    r19 = [[NSMutableArray alloc] init];
    var_1E8 = 0x0;
    r0 = [r0 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) {
            do {
                    r21 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            r25 = @selector(addObject:);
                            r24 = @selector(numberWithFloat:);
                            [*(0x0 + r21 * 0x8) CGRectValue];
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
                            r21 = r21 + 0x1;
                    } while (r21 < r22);
                    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    [r20 release];
    [r19 sortUsingSelector:@selector(compare:)];
    r0 = [r19 count];
    r22 = 0x0;
    var_250 = @selector(objectAtIndexedSubscript:);
    asm { fcvt       s0, d9 };
    var_26C = s0;
    asm { fcvt       s0, d0 };
    var_244 = s0;
    r21 = SAR(0xffffffff00000000 + r0 * 0x1, 0x20);
    var_240 = q0;
    goto loc_10074ed04;

loc_10074ed04:
    r8 = &@selector(updateAppMetadata:error:);
    r27 = *(r8 + 0xa80);
    asm { sxtw       x8, w22 };
    r25 = r8 - 0x1;
    r8 = r22 + 0x1;
    asm { sxtw       x8, w8 };
    r24 = r8 - 0x1;
    goto loc_10074ed20;

loc_10074ed20:
    r25 = r25 + 0x1;
    if (r25 >= r21) goto loc_10074ef30;

loc_10074ed2c:
    r28 = [[r19 objectAtIndexedSubscript:r2] retain];
    r24 = r24 + 0x1;
    r0 = [r19 objectAtIndexedSubscript:r2];
    r29 = r29;
    r23 = [r0 retain];
    r22 = objc_msgSend(r28, r27);
    [r23 release];
    [r28 release];
    if ((r22 & 0x1) != 0x0) goto loc_10074ed20;

loc_10074ed90:
    r0 = objc_msgSend(r19, var_250);
    r0 = [r0 retain];
    [r0 floatValue];
    [r0 release];
    r0 = objc_msgSend(r19, var_250);
    r29 = r29;
    r0 = [r0 retain];
    [r0 floatValue];
    [r0 release];
    var_1F8 = 0x0;
    var_1F0 = 0x0;
    var_208 = 0x0;
    var_200 = 0x0;
    var_218 = 0x0;
    var_210 = 0x0;
    var_220 = 0x0;
    r0 = [r20 retain];
    r24 = r0;
    r26 = [r0 countByEnumeratingWithState:&var_228 objects:&stack[-424] count:0x10];
    r22 = r25 + 0x1;
    if (r26 == 0x0) goto loc_10074ecf4;

loc_10074ee34:
    var_218 = 0x0;
    s14 = s10 - s11;
    asm { fcvt       d10, s14 };
    asm { fcvt       d11, s11 };
    r23 = *var_218;
    var_268 = @selector(countByEnumeratingWithState:objects:count:);
    s15 = var_26C;
    goto loc_10074ee58;

loc_10074ee58:
    r25 = 0x0;
    goto loc_10074ee6c;

loc_10074ee6c:
    var_218 = 0x0;
    if (*var_218 != r23) {
            objc_enumerationMutation(r24);
    }
    var_220 = 0x0;
    CGRectIntersection([*(var_220 + r25 * 0x8) CGRectValue], @selector(CGRectValue));
    if ((objc_msgSend(@class(IROMoatUIUtil), r28) & 0x1) != 0x0) goto loc_10074ef00;

loc_10074eec4:
    asm { fcvt       s0, d0 };
    if (s0 > s15) {
            asm { fcvt       s1, d12 };
            asm { fmaxnm     s1, s15, s1 };
            s2 = s2 + s14 * (s0 - s1);
            var_240 = var_240;
    }
    s1 = var_244;
    if (s0 == s1) goto loc_10074ecf4;

loc_10074ef00:
    r25 = r25 + 0x1;
    if (r25 < r26) goto loc_10074ee6c;

loc_10074ef0c:
    var_268 = @selector(countByEnumeratingWithState:objects:count:);
    r26 = objc_msgSend(r24, var_268);
    if (r26 != 0x0) goto loc_10074ee58;

loc_10074ecf4:
    [r24 release];
    goto loc_10074ed04;

loc_10074ef30:
    [r19 release];
    r0 = [r20 release];
    if (**___stack_chk_guard != *(r29 + 0xffffffffffffff68)) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(float)getVisibleArea:(void *)arg2 withLayerChain:(void *)arg3 withHitLayers:(void *)arg4 {
    r29 = &var_10;
    r31 = r31 + 0xffffffffffffff60 - 0x110;
    r25 = *___stack_chk_guard;
    r25 = *r25;
    *(r29 + 0xffffffffffffff68) = r25;
    r20 = [arg2 retain];
    var_178 = [arg3 retain];
    r21 = [arg4 retain];
    [IROMoatUIUtil getRectInWindow:r20 clipToWindow:0x1];
    v10 = v0;
    v11 = v1;
    v8 = v2;
    v9 = v3;
    var_1A8 = [[NSMutableArray alloc] init];
    r24 = [r21 retain];
    r21 = [IROMoatUIUtil getUiHierarchy:r20];
    [r20 release];
    r20 = [r21 retain];
    [r24 addObjectsFromArray:r20];
    [r20 release];
    r21 = [[NSMutableSet alloc] init];
    var_168 = 0x0;
    r0 = [r24 retain];
    var_170 = r0;
    r3 = &stack[-296];
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) {
            do {
                    r19 = 0x0;
                    var_180 = @selector(opacity);
                    var_188 = @selector(isHidden);
                    var_190 = @selector(backgroundColor);
                    var_198 = @selector(valueWithCGRect:);
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_170);
                            }
                            r24 = *(0x0 + r19 * 0x8);
                            if (([r21 containsObject:r24] & 0x1) == 0x0) {
                                    [r21 addObject:r24];
                                    r0 = @class(IROMoatUIUtil);
                                    r0 = [r0 getRectInWindow:r24];
                                    v0 = v10;
                                    v1 = v11;
                                    v2 = v8;
                                    v3 = v9;
                                    CGRectIntersection(r0, @selector(getRectInWindow:));
                                    v12 = v0;
                                    v13 = v1;
                                    v14 = v2;
                                    v15 = v3;
                                    if (([IROMoatUIUtil isInvalidRect:r24] & 0x1) == 0x0 && ([var_178 containsObject:r24] & 0x1) == 0x0) {
                                            var_180 = @selector(opacity);
                                            objc_msgSend(r24, var_180);
                                            if (s0 > 0x0) {
                                                    var_188 = @selector(isHidden);
                                                    if ((objc_msgSend(r24, var_188) & 0x1) == 0x0) {
                                                            var_190 = @selector(backgroundColor);
                                                            CGColorGetAlpha(objc_msgSend(r24, var_190));
                                                            if (d0 != 0x0) {
                                                                    var_198 = @selector(valueWithCGRect:);
                                                                    v0 = v12;
                                                                    v1 = v13;
                                                                    v2 = v14;
                                                                    v3 = v15;
                                                                    r0 = objc_msgSend(@class(NSValue), var_198);
                                                                    r29 = r29;
                                                                    r24 = [r0 retain];
                                                                    [var_1A8 addObject:r24];
                                                                    [r24 release];
                                                            }
                                                    }
                                            }
                                    }
                            }
                            r19 = r19 + 0x1;
                    } while (r19 < r23);
                    var_1A0 = @selector(countByEnumeratingWithState:objects:count:);
                    r3 = &stack[-296];
                    r23 = objc_msgSend(var_170, var_1A0);
            } while (r23 != 0x0);
            r25 = *___stack_chk_guard;
            r25 = *r25;
    }
    [var_170 release];
    [IROMoatUIUtil getCoveredArea:var_1A8 withRectsToCheck:r3];
    [r21 release];
    [var_170 release];
    [var_1A8 release];
    [var_170 release];
    r0 = [var_178 release];
    if (r25 == *(r29 + 0xffffffffffffff68)) {
            asm { fcvt       s0, d0 };
            asm { fmaxnm     s0, s0, s1 };
    }
    else {
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
    if (r19 == 0x0) goto loc_100750494;

loc_1007503f0:
    r21 = 0x0;
    if (r20 == 0x0) goto loc_100750494;

loc_1007503f4:
    r21 = 0x0;
    if (r20 == r19) goto loc_100750494;

loc_1007503fc:
    r23 = 0x0;
    goto loc_100750408;

loc_100750408:
    r0 = [r20 superlayer];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100750488;

loc_100750428:
    r0 = [r20 superlayer];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == r19) goto loc_100750490;

loc_10075044c:
    r0 = [r20 superlayer];
    r29 = r29;
    r22 = [r0 retain];
    [r20 release];
    r23 = r23 + 0x1;
    r20 = r22;
    if (r23 < 0x1e) goto loc_100750408;

loc_10075047c:
    r21 = 0x0;
    r20 = r22;
    goto loc_100750494;

loc_100750494:
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_100750490:
    r21 = 0x1;
    goto loc_100750494;

loc_100750488:
    r21 = 0x0;
    goto loc_100750494;
}

+(bool)layerChain:(void *)arg2 isCoveredByVCInWindow:(void *)arg3 {
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    r19 = [arg2 retain];
    r26 = [arg3 retain];
    r21 = [[NSSet setWithArray:r19] retain];
    r23 = [[r26 rootViewController] retain];
    r22 = objc_retainBlock(0x100e8e9e0);
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
                    r28 = @selector(containsObject:);
                    r26 = [[r25 superlayer] retain];
                    r20 = objc_msgSend(r21, r28);
                    [r26 release];
                    r0 = [r25 superlayer];
                    r29 = r29;
                    r26 = [r0 retain];
                    if (r19 > 0x1d || (r20 ^ 0x1) == 0x0) {
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
                            r29 = r29;
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

+(struct CGRect)getRectInWindow:(void *)arg2 {
    r0 = [IROMoatUIUtil getRectInWindow:arg2 clipToWindow:0x0];
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
            r9 = &@selector(reportDevLogWithObject:format:);
            r22 = *(r9 + 0x1d8);
            r23 = r20;
            do {
                    r8 = (r8 ^ 0xffffffff) & 0x1;
                    r25 = r8 + r25;
                    [r19 addObject:r23];
                    r0 = objc_msgSend(r23, r22);
                    r29 = r29;
                    r24 = [r0 retain];
                    [r23 release];
                    if (r24 == 0x0) {
                            if (CPU_FLAGS & E) {
                                    r8 = 0x1;
                            }
                    }
                    if (CPU_FLAGS & NE) {
                            if (CPU_FLAGS & NE) {
                                    r9 = 0x1;
                            }
                    }
                    if (r25 > 0x1d) {
                        break;
                    }
                    r23 = r24;
            } while ((r9 & 0x1) != 0x0);
            [r24 release];
    }
    [r20 release];
    [r19 autorelease];
    r0 = r19;
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
            r8 = r22 - [r19 count];
            if (r8 < 0x0) {
                    if (!CPU_FLAGS & L) {
                            r8 = r8;
                    }
                    else {
                            r8 = 0x0;
                    }
            }
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
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
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
                    r20 = [r0 retain];
                    r21 = [[NSMutableArray alloc] init];
                    if ([r20 count] != 0x0) {
                            var_58 = @selector(masksToBounds);
                            var_60 = @selector(sublayers);
                            var_68 = @selector(addObjectsFromArray:);
                            var_70 = @selector(addObject:);
                            do {
                                    r0 = [r20 lastObject];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r19 = r0;
                                    [r0 opacity];
                                    if (s0 > 0x0 && ([r19 isHidden] & 0x1) == 0x0) {
                                            [r19 frame];
                                            if (d3 != 0x0) {
                                                    [r19 frame];
                                                    if (d2 == 0x0) {
                                                            var_58 = @selector(masksToBounds);
                                                            if ((objc_msgSend(r19, var_58) & 0x1) == 0x0) {
                                                                    var_60 = @selector(sublayers);
                                                                    var_68 = @selector(addObjectsFromArray:);
                                                                    var_70 = @selector(addObject:);
                                                                    r0 = objc_msgSend(r19, var_60);
                                                                    r29 = r29;
                                                                    [r0 retain];
                                                                    objc_msgSend(r20, var_68);
                                                                    [r26 release];
                                                                    objc_msgSend(r21, var_70);
                                                            }
                                                    }
                                                    else {
                                                            var_60 = @selector(sublayers);
                                                            var_68 = @selector(addObjectsFromArray:);
                                                            var_70 = @selector(addObject:);
                                                            r0 = objc_msgSend(r19, var_60);
                                                            r29 = r29;
                                                            [r0 retain];
                                                            objc_msgSend(r20, var_68);
                                                            [r26 release];
                                                            objc_msgSend(r21, var_70);
                                                    }
                                            }
                                            else {
                                                    var_58 = @selector(masksToBounds);
                                                    if ((objc_msgSend(r19, var_58) & 0x1) == 0x0) {
                                                            var_60 = @selector(sublayers);
                                                            var_68 = @selector(addObjectsFromArray:);
                                                            var_70 = @selector(addObject:);
                                                            r0 = objc_msgSend(r19, var_60);
                                                            r29 = r29;
                                                            [r0 retain];
                                                            objc_msgSend(r20, var_68);
                                                            [r26 release];
                                                            objc_msgSend(r21, var_70);
                                                    }
                                            }
                                    }
                                    [r20 removeObject:r2];
                                    [r19 release];
                            } while (objc_msgSend(r20, r27) != 0x0);
                    }
                    [r20 release];
                    r9 = var_78;
            }
            else {
                    r21 = 0x0;
            }
            [r9 release];
    }
    else {
            r21 = 0x0;
    }
    r0 = [r21 autorelease];
    return r0;
}

+(void *)getUiHierarchy:(void *)arg2 {
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r21 = [[NSMutableArray alloc] init];
            var_B0 = r19;
            r25 = [r19 retain];
            r28 = 0x0;
            r23 = @selector(superlayer);
            var_98 = r23;
            r27 = @selector(sublayers);
            var_A0 = r27;
            r26 = @selector(indexOfObject:);
            var_A8 = r26;
            var_80 = @selector(insertIntoArray:fromArray:withStartIndex:withMaxMergedSize:);
            var_88 = @selector(count);
            while ((r28 & 0x1) == 0x0) {
                    r0 = objc_msgSend(r25, r23);
                    r29 = r29;
                    r22 = [r0 retain];
                    if (r22 != 0x0) {
                            var_88 = @selector(count);
                            var_80 = @selector(insertIntoArray:fromArray:withStartIndex:withMaxMergedSize:);
                            var_78 = r22;
                            r0 = objc_msgSend(r22, r27);
                            r29 = r29;
                            r0 = [r0 retain];
                            r28 = r0;
                            r24 = r26;
                            r26 = objc_msgSend(r0, r26);
                            r22 = r26 + 0x1;
                            objc_msgSend(@class(IROMoatUIUtil), var_80);
                            r20 = var_88;
                            if (objc_msgSend(r21, r20) >= 0x1d) {
                                    var_58 = r28;
                                    r20 = 0x3;
                                    r28 = 0x1;
                                    r22 = var_78;
                                    r26 = r24;
                            }
                            else {
                                    var_90 = r25;
                                    r24 = r21;
                                    var_58 = r28;
                                    r0 = objc_msgSend(r28, r20);
                                    var_60 = r0;
                                    if (r22 < r0) {
                                            r28 = 0x0;
                                            asm { sxtw       x22, w22 };
                                            r23 = r26 + 0x2;
                                            r8 = 0x101137000;
                                            r26 = *(r8 + 0x410);
                                            do {
                                                    var_68 = @selector(objectAtIndexedSubscript:);
                                                    var_70 = @selector(getSublayers:);
                                                    r21 = [objc_msgSend(var_58, var_68) retain];
                                                    r0 = @class(IROMoatUIUtil);
                                                    r0 = objc_msgSend(r0, var_70);
                                                    r29 = r29;
                                                    r27 = [r0 retain];
                                                    [IROMoatUIUtil insertIntoArray:r24 fromArray:r27 withStartIndex:0x0 withMaxMergedSize:0x1e];
                                                    r20 = objc_msgSend(r24, r26);
                                                    if (r20 > 0x31) {
                                                            if (CPU_FLAGS & A) {
                                                                    r8 = 0x1;
                                                            }
                                                    }
                                                    r28 = r28 | r8;
                                                    [r27 release];
                                                    [r21 release];
                                                    if (r20 < 0x32) {
                                                            if (CPU_FLAGS & B) {
                                                                    r8 = 0x1;
                                                            }
                                                    }
                                                    if (r23 >= var_60) {
                                                        break;
                                                    }
                                                    r22 = r22 + 0x1;
                                                    r23 = r23 + 0x1;
                                            } while ((r8 & 0x1) != 0x0);
                                    }
                                    else {
                                            r28 = 0x0;
                                    }
                                    r22 = var_78;
                                    r25 = [r22 retain];
                                    [var_90 release];
                                    r20 = 0x0;
                                    r21 = r24;
                                    r27 = var_A0;
                                    r23 = var_98;
                                    r26 = var_A8;
                            }
                            [var_58 release];
                    }
                    else {
                            r28 = 0x0;
                            r20 = 0x3;
                    }
                    [r22 release];
                    if (r25 == 0x0 || r20 != 0x0) {
                        break;
                    }
                    else {
                        continue;
                    }
            }
            [r25 release];
            r19 = var_B0;
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(bool)containsWebView:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r19 = [arg2 retain];
    r0 = [r22 digForUIWebView:r19 allowMultiple:0x1];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 == 0x0) {
            r0 = [r22 digForWKWebView:r19 allowMultiple:0x1];
            r0 = [r0 retain];
            if (r0 != 0x0) {
            }
            [r0 release];
    }
    [r21 release];
    [r19 release];
    return 0x1;
}

+(void *)digForUIWebView:(void *)arg2 allowMultiple:(bool)arg3 {
    r23 = [arg2 retain];
    r19 = [self digForWebView:r23 webViewType:[UIWebView class] allowMultiple:arg3];
    [r23 release];
    r0 = [r19 retain];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)getViewableState:(void *)arg2 {
    r31 = r31 + 0xffffffffffffff60 - 0x140;
    r26 = self;
    r22 = *___stack_chk_guard;
    r22 = *r22;
    *(&var_10 + 0xffffffffffffff68) = r22;
    r20 = [arg2 retain];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r28 = [[r0 keyWindow] retain];
    [r0 release];
    r21 = [[IROMoatViewableState alloc] init];
    r0 = [UIScreen mainScreen];
    r29 = &var_10;
    r0 = [r0 retain];
    [r0 bounds];
    [r21 setScreenRect:r2];
    [r0 release];
    [IROMoatUIUtil getRectInWindow:r20];
    [r21 setViewRect:r20];
    r2 = (*(int8_t *)byte_1011dae00 ^ 0xffffffff) & 0x1;
    [r21 setIsFocused:r2];
    d3 = *(int128_t *)(*_CGRectZero + 0x18);
    [r21 setVisibleRect:r2];
    if (([r21 isFocused] & 0x1) != 0x0) {
            var_1B8 = r28;
            var_170 = r20;
            r20 = [[IROMoatUIUtil getLayerChain:r20] retain];
            r0 = [r28 layer];
            r29 = r29;
            r19 = [r0 retain];
            [r21 setIsAttached:[r20 containsObject:r19]];
            [r19 release];
            if (([r21 isAttached] & 0x1) != 0x0) {
                    r0 = [IROMoatUIUtil getGroupViewState:r20];
                    r29 = r29;
                    r0 = [r0 retain];
                    r19 = r0;
                    if ([r0 renderState] != 0x0) {
                            var_178 = r26;
                            r26 = r20;
                            var_1C8 = r19;
                            [r19 opacity];
                            [r21 setOpacity:r2];
                            r23 = r21;
                            r21 = *(&@class(MPVASTModel) + 0xf70);
                            [r23 viewRect];
                            if ([r21 isInvalidRect:r2] != 0x0) {
                                    [r23 retain];
                                    r25 = var_170;
                                    r28 = var_1B8;
                                    r21 = r23;
                                    r20 = r26;
                                    r19 = var_1C8;
                            }
                            else {
                                    r21 = *(&@class(MPVASTModel) + 0xf70);
                                    [r23 viewRect];
                                    r20 = r26;
                                    [r21 getRectOnScreen:r20 withLayerChain:r3];
                                    v9 = v0;
                                    v8 = v1;
                                    v11 = v2;
                                    v10 = v3;
                                    if ([*(&@class(MPVASTModel) + 0xf70) isInvalidRect:r2] != 0x0) {
                                            [r23 retain];
                                            r25 = var_170;
                                            r28 = var_1B8;
                                            r21 = r23;
                                            r19 = var_1C8;
                                    }
                                    else {
                                            v2 = v11;
                                            [r23 setVisibleRect:r2];
                                            var_1D8 = r20;
                                            if ([var_178 layerChain:r20 isCoveredByVCInWindow:var_1B8] != 0x0) {
                                                    [r23 setIsCoveredByVC:0x1];
                                            }
                                            var_1D0 = r23;
                                            r26 = [[NSMutableArray alloc] init];
                                            [[NSValue valueWithCGPoint:r2] retain];
                                            [r26 addObject:r2];
                                            [r20 release];
                                            [[NSValue valueWithCGPoint:r20] retain];
                                            objc_msgSend(r26, r21);
                                            [r20 release];
                                            [[NSValue valueWithCGPoint:r20] retain];
                                            objc_msgSend(r26, r21);
                                            [r20 release];
                                            v0 = v14;
                                            v1 = v13;
                                            [[NSValue valueWithCGPoint:r20] retain];
                                            objc_msgSend(r26, r21);
                                            [r20 release];
                                            r0 = @class(NSValue);
                                            r0 = [r0 valueWithCGPoint:r20];
                                            r29 = r29;
                                            [r0 retain];
                                            objc_msgSend(r26, r21);
                                            [r19 release];
                                            var_198 = [[NSMutableArray alloc] init];
                                            var_148 = 0x0;
                                            var_158 = 0x0;
                                            var_150 = 0x0;
                                            var_168 = 0x0;
                                            var_160 = 0x0;
                                            r0 = [r26 retain];
                                            var_190 = r0;
                                            r2 = &var_168;
                                            r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                            if (r22 != 0x0) {
                                                    r23 = &@class(MPVASTModel);
                                                    r21 = *0x0;
                                                    r25 = var_170;
                                                    r28 = var_1B8;
                                                    do {
                                                            r27 = 0x0;
                                                            r26 = @selector(CGPointValue);
                                                            var_1A0 = r26;
                                                            var_188 = @selector(hitLayer);
                                                            var_1A8 = @selector(containsObject:);
                                                            var_1B0 = @selector(addObject:);
                                                            do {
                                                                    var_158 = 0x0;
                                                                    if (*var_158 != r21) {
                                                                            objc_enumerationMutation(var_190);
                                                                    }
                                                                    var_160 = 0x0;
                                                                    var_170 = @selector(layer);
                                                                    var_178 = @selector(getLayerVisibility:atPoint:ofSuperLayer:);
                                                                    var_180 = @selector(isVisible);
                                                                    objc_msgSend(*(var_160 + r27 * 0x8), r26);
                                                                    r20 = *(r23 + 0xf70);
                                                                    r24 = [objc_msgSend(r28, var_170) retain];
                                                                    v0 = v0;
                                                                    v1 = v1;
                                                                    r0 = objc_msgSend(r20, var_178);
                                                                    r29 = r29;
                                                                    r20 = [r0 retain];
                                                                    [r24 release];
                                                                    if ((objc_msgSend(r20, var_180) & 0x1) == 0x0) {
                                                                            var_188 = @selector(hitLayer);
                                                                            r0 = objc_msgSend(r20, var_188);
                                                                            r29 = r29;
                                                                            r24 = [r0 retain];
                                                                            if (r24 != 0x0) {
                                                                                    var_188 = @selector(hitLayer);
                                                                                    var_1A8 = @selector(containsObject:);
                                                                                    r0 = objc_msgSend(r20, var_188);
                                                                                    r29 = r29;
                                                                                    r0 = [r0 retain];
                                                                                    r19 = objc_msgSend(var_198, var_1A8);
                                                                                    r25 = r25;
                                                                                    r28 = r28;
                                                                                    r23 = r23;
                                                                                    r21 = r21;
                                                                                    r22 = r22;
                                                                                    r26 = var_1A0;
                                                                                    [r0 release];
                                                                                    [r24 release];
                                                                                    if ((r19 & 0x1) == 0x0) {
                                                                                            var_1B0 = @selector(addObject:);
                                                                                            var_188 = @selector(hitLayer);
                                                                                            r0 = objc_msgSend(r20, var_188);
                                                                                            r29 = r29;
                                                                                            [r0 retain];
                                                                                            objc_msgSend(var_198, var_1B0);
                                                                                            [r19 release];
                                                                                    }
                                                                            }
                                                                    }
                                                                    [r20 release];
                                                                    r27 = r27 + 0x1;
                                                            } while (r27 < r22);
                                                            var_1C0 = @selector(countByEnumeratingWithState:objects:count:);
                                                            r2 = &var_168;
                                                            r22 = objc_msgSend(var_190, var_1C0);
                                                    } while (r22 != 0x0);
                                            }
                                            else {
                                                    r23 = &@class(MPVASTModel);
                                                    r25 = var_170;
                                                    r28 = var_1B8;
                                            }
                                            [var_190 release];
                                            r24 = var_198;
                                            if ([r24 count] != 0x0) {
                                                    r21 = var_1D0;
                                                    [r21 visibleRect];
                                                    [r21 visibleRect];
                                                    asm { fcvt       s8, d0 };
                                                    r20 = var_1D8;
                                                    [*(r23 + 0xf70) getVisibleArea:r25 withLayerChain:r20 withHitLayers:r24];
                                                    r22 = *___stack_chk_guard;
                                                    r22 = *r22;
                                                    if (s0 < s8) {
                                                            asm { fdiv       s0, s0, s8 };
                                                            [r21 setCoveredPercent:r2];
                                                    }
                                                    [r21 retain];
                                            }
                                            else {
                                                    r21 = var_1D0;
                                                    [r21 retain];
                                                    r22 = *___stack_chk_guard;
                                                    r22 = *r22;
                                                    r20 = var_1D8;
                                            }
                                            r19 = var_1C8;
                                            [r24 release];
                                            [var_190 release];
                                    }
                            }
                    }
                    else {
                            [r21 setIsHidden:0x1];
                            [r21 retain];
                            r25 = var_170;
                            r28 = var_1B8;
                    }
                    [r19 release];
            }
            else {
                    [r21 retain];
                    r25 = var_170;
                    r28 = var_1B8;
            }
            [r20 release];
    }
    else {
            [r21 retain];
            r25 = r20;
    }
    [r21 release];
    [r28 release];
    [r25 release];
    if (r22 == *(r29 + 0xffffffffffffff68)) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)digForWKWebView:(void *)arg2 allowMultiple:(bool)arg3 {
    r23 = [arg2 retain];
    r19 = [self digForWebView:r23 webViewType:[WKWebView class] allowMultiple:arg3];
    [r23 release];
    r0 = [r19 retain];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)digForWebView:(void *)arg2 webViewType:(void *)arg3 allowMultiple:(bool)arg4 {
    var_50 = r28;
    stack[-88] = r27;
    r29 = &saved_fp;
    var_64 = arg4;
    var_58 = arg3;
    r23 = self;
    r0 = [arg2 retain];
    r21 = r0;
    if ([r0 isKindOfClass:r2] == 0x0) goto loc_100750f30;

loc_100750f20:
    r19 = [r21 retain];
    goto loc_1007511a8;

loc_1007511a8:
    [r21 release];
    r0 = [r19 autorelease];
    return r0;

loc_100750f30:
    r19 = @class(NSMutableArray);
    var_78 = r21;
    r21 = [[r21 subviews] retain];
    r0 = [r19 arrayWithArray:r21];
    r29 = r29;
    r20 = [r0 retain];
    [r21 release];
    var_60 = [[NSMutableArray alloc] init];
    if ([r20 count] == 0x0) goto loc_100751128;

loc_100750fb4:
    var_98 = r23;
    r26 = 0x0;
    r25 = 0x0;
    r21 = @selector(count);
    var_80 = r21;
    r23 = @selector(removeAllObjects);
    var_88 = r23;
    r27 = @selector(addObjectsFromArray:);
    var_90 = r27;
    goto loc_100750fe4;

loc_100750fe4:
    r0 = objc_msgSend(r20, r21);
    if (r26 > 0x63 || r0 == 0x0) goto loc_1007510e0;

loc_100750ffc:
    r21 = 0x0;
    var_70 = @selector(subviews);
    goto loc_100751020;

loc_100751020:
    r27 = @selector(isKindOfClass:);
    r0 = [r20 objectAtIndexedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (objc_msgSend(r0, r27) == 0x0) goto loc_100751068;

loc_10075104c:
    if (r25 != 0x0) goto loc_100751144;

loc_100751050:
    r25 = [r22 retain];
    if (var_64 == 0x0) goto loc_100751098;

loc_100751064:
    r25 = [r25 retain];
    r19 = r25;
    r21 = var_78;
    goto loc_100751188;

loc_100751188:
    [r22 release];
    goto loc_100751190;

loc_100751190:
    [r25 release];
    [var_60 release];
    [r20 release];
    goto loc_1007511a8;

loc_100751098:
    r19 = @selector(count);
    r24 = 0x1 + r26 + r21;
    [r22 release];
    r21 = r21 + 0x1;
    r0 = objc_msgSend(r20, r19);
    if (r24 > 0x63 || r21 >= r0) goto loc_1007510c8;
    goto loc_100751020;

loc_1007510c8:
    r26 = r26 + r21;
    r23 = var_88;
    r21 = var_80;
    r27 = var_90;
    goto loc_1007510e0;

loc_1007510e0:
    objc_msgSend(r20, r23);
    objc_msgSend(r20, r27);
    objc_msgSend(var_60, r23);
    r0 = objc_msgSend(r20, r21);
    if (r26 > 0x63 || r0 == 0x0) goto loc_10075112c;
    goto loc_100750fe4;

loc_10075112c:
    r25 = [r25 retain];
    r19 = r25;
    r21 = var_78;
    goto loc_100751190;

loc_100751144:
    r21 = var_78;
    var_A0 = r21;
    [IROMoatLogging reportDevLogWithClass:var_98 format:@"%@ contained multiple WebViews. Expected one."];
    r19 = 0x0;
    goto loc_100751188;

loc_100751068:
    var_70 = @selector(subviews);
    r0 = objc_msgSend(r22, var_70);
    r29 = r29;
    [r0 retain];
    [var_60 addObjectsFromArray:r2];
    [r24 release];
    goto loc_100751098;

loc_100751128:
    r25 = 0x0;
    goto loc_10075112c;
}

@end