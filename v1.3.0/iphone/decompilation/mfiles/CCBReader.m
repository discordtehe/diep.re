@implementation CCBReader

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = @selector(init);
            r2 = [objc_msgSend([CCBAnimationManager alloc], r20) autorelease];
            [r19 setActionManager:r2];
            *(r19 + 0x50) = objc_msgSend([NSMutableSet alloc], r20);
            [[CCDirector sharedDirector] winSize];
            [*(r19 + 0x60) setRootContainerSize:r2];
            *(r19 + 0x78) = [NSMutableDictionary dictionary];
            *(r19 + 0x80) = [NSMutableArray array];
            *(int32_t *)(r19 + 0x28) = 0x3f800000;
            *(int128_t *)(r19 + 0xb8) = 0x0;
            *(int128_t *)(r19 + 0xc0) = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [*(self + 0x58) release];
    *(r19 + 0x18) = 0x0;
    [*(r19 + 0x10) release];
    [*(r19 + 0x48) release];
    [*(r19 + 0x50) release];
    [*(r19 + 0x90) release];
    [*(r19 + 0x88) release];
    [*(r19 + 0xa0) release];
    [*(r19 + 0x98) release];
    if (*(int8_t *)(r19 + 0x8) != 0x0) {
            [*(r19 + 0xa8) release];
            [*(r19 + 0xb0) release];
    }
    [r19 setActionManager:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void)alignBits {
    r0 = self;
    if (*(int32_t *)(r0 + 0x24) != 0x0) {
            *(int128_t *)(r0 + 0x20) = *(int32_t *)(r0 + 0x20) + 0x1;
            *(int128_t *)(r0 + 0x24) = 0x0;
    }
    return;
}

-(bool)getBit {
    r0 = self;
    r9 = *(r0 + 0x18);
    r8 = *(int128_t *)(r0 + 0x20);
    r10 = *(int128_t *)(r0 + 0x24);
    asm { sxtw       x8, w8 };
    r9 = *(int8_t *)(r9 + r8);
    r9 = 0x1 << r10 & r9;
    *(int32_t *)(r0 + 0x24) = r10 + 0x1;
    if (r10 >= 0x7) {
            *(int128_t *)(r0 + 0x20) = r8 + 0x1;
            *(int128_t *)(r0 + 0x24) = 0x0;
    }
    if (r9 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(float)readFloat {
    r0 = self;
    r9 = *(r0 + 0x18);
    r10 = sign_extend_64(*(int32_t *)(r0 + 0x20));
    r11 = *(int8_t *)(r9 + r10);
    r8 = r10 + 0x1;
    *(int32_t *)(r0 + 0x20) = r8;
    if (r11 <= 0x4) {
            r0 = (0x100347644 + *(int8_t *)(0x100bcd1a2 + r11) * 0x4)();
    }
    else {
            *(int32_t *)(r0 + 0x20) = r10 + 0x5;
    }
    return r0;
}

-(void *)readCachedString {
    r0 = self;
    r9 = *(r0 + 0x18);
    r8 = sign_extend_64(*(int32_t *)(r0 + 0x20));
    r10 = r9 + r8;
    r11 = r10 + 0x1;
    if ((*(int8_t *)r10 & 0x80) != 0x0) {
            r11 = *(int8_t *)(r10 + 0x1);
            asm { bfi        w9, w11, #0x7, #0x7 };
            if ((r11 & 0x80) == 0x0) {
                    r11 = r10 + 0x2;
            }
            else {
                    r11 = *(int8_t *)(r10 + 0x2);
                    asm { bfi        w9, w11, #0xe, #0x7 };
                    if ((r11 & 0x80) == 0x0) {
                            r11 = r10 + 0x3;
                    }
                    else {
                            r11 = *(int8_t *)(r10 + 0x3);
                            asm { bfi        w9, w11, #0x15, #0x7 };
                            if ((r11 & 0x80) == 0x0) {
                                    r11 = r10 + 0x4;
                            }
                            else {
                                    r11 = r10 + 0x5;
                                    asm { bfi        w9, w12, #0x1c, #0x4 };
                            }
                    }
            }
    }
    *(int32_t *)(r0 + 0x20) = r8 + (r11 - r10);
    r0 = *(r0 + 0x48);
    asm { sxtw       x2, w9 };
    r0 = [r0 objectAtIndex:r2];
    return r0;
}

-(bool)isPropertyAllowed:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    if (([r19 isEqualToString:r2] & 0x1) == 0x0 && ([r19 isEqualToString:r2] & 0x1) == 0x0 && ([r19 isEqualToString:r2] & 0x1) == 0x0 && ([r19 isEqualToString:r2] & 0x1) == 0x0) {
            if (([r19 isEqualToString:r2] & 0x1) == 0x0) {
                    if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                            r0 = 0x0;
                    }
                    else {
                            r0 = [r19 isEqualToString:r2];
                            r0 = r0 ^ 0x1;
                    }
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(int)readIntWithSignOLD:(bool)arg2 {
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
    r20 = arg2;
    r19 = self;
    r22 = 0xffffffffffffffff;
    do {
            r0 = [r19 getBit];
            r22 = r22 + 0x1;
    } while (r0 == 0x0);
    r23 = 0x0;
    if (r22 != 0x0) {
            r23 = 0x0;
            r24 = r22 + 0x1;
            do {
                    r0 = [r19 getBit];
                    r8 = 0x1 << r24 - 0x2;
                    asm { sxtw       x8, w8 };
                    if (r0 != 0x0) {
                            if (!CPU_FLAGS & NE) {
                                    r8 = 0x0;
                            }
                            else {
                                    r8 = r8;
                            }
                    }
                    r23 = r8 | r23;
                    r24 = r24 - 0x1;
            } while (r24 > 0x1);
    }
    r8 = 0x1 << r22;
    asm { sxtw       x8, w8 };
    r8 = r23 | r8;
    if ((r20 & 0x1) != 0x0) {
            if (r8 < 0x0) {
                    asm { cinc       x9, x8, lt };
            }
            if (r8 != (r9 & 0xfffffffe)) {
                    asm { cneg       x9, x9, ne };
            }
            r20 = r8 / 0xfffffffffffffffe;
    }
    else {
            r20 = r8 - 0x1;
    }
    [r19 alignBits];
    r0 = r20;
    return r0;
}

-(float)resolutionScale {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int32_t *)0x1011e2dd8 == 0x0) {
            r0 = [CCConfiguration sharedConfiguration];
            r0 = [r0 useNewResourceManagement];
            if (r0 != 0x0) {
                    r0 = loc_10042cdf4(r0, @selector(useNewResourceManagement));
            }
            else {
                    r0 = [CCResourcePackManager sharedInstance];
                    r0 = [r0 currentDeviceCategoryPointScale];
            }
            *(int32_t *)0x1011e2dd8 = *(int32_t *)0x1011e2dd8;
    }
    return r0;
}

-(float)calculateScale:(float)arg2 withType:(int)arg3 {
    r0 = self;
    var_10 = d9;
    stack[-24] = d8;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    if (arg2 == 0x1) {
            r0 = [r0 resolutionScale];
            asm { fdiv       s8, s8, s0 };
    }
    return r0;
}

-(void)calculateAndSetRelativePosition:(void *)arg2 x:(float)arg3 y:(float)arg4 xUnit:(int)arg5 yUnit:(int)arg6 corner:(int)arg7 name:(void *)arg8 parentContentSize:(struct CGSize)arg9 {
    r3 = arg3;
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
    v8 = v3;
    v9 = v2;
    r19 = arg6;
    r20 = arg5;
    r23 = arg4;
    r21 = arg2;
    r22 = self;
    if (r3 == 0x0) goto loc_1003496c4;

loc_10034965c:
    if (r3 == 0x1) goto loc_100349678;

loc_100349664:
    if (r3 != 0x2) goto loc_10034968c;

loc_10034966c:
    asm { fcvt       d0, s11 };
    d0 = d9 * d0;
    asm { fcvt       s11, d0 };
    goto loc_100349678;

loc_100349678:
    [r22 resolutionScale];
    asm { fdiv       s11, s11, s0 };
    goto loc_10034968c;

loc_10034968c:
    if (r23 == 0x0) goto loc_1003496d8;

loc_100349690:
    if (r23 == 0x1) goto loc_1003496ac;

loc_100349698:
    if (r23 != 0x2) goto loc_1003496d8;

loc_1003496a0:
    asm { fcvt       d0, s10 };
    asm { fcvt       s10, d0 };
    goto loc_1003496ac;

loc_1003496ac:
    [r22 resolutionScale];
    asm { fdiv       s10, s10, s0 };
    goto loc_1003496d8;

loc_1003496d8:
    asm { fcvt       d0, s11 };
    asm { fcvt       d1, s10 };
    [r21 setRelativePosition:r20 type:r19 parentSize:r4 propertyName:r5];
    return;

loc_1003496c4:
    if (r23 != 0x0) goto loc_100349690;
}

-(void *)calculatePropertyTypeSize:(float)arg2 h:(float)arg3 xUnit:(int)arg4 yUnit:(int)arg5 parentContentSize:(struct CGSize)arg6 {
    memcpy(&r6, &arg6, 0x8);
    r2 = arg2;
    r31 = r31 - 0x90;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    v9 = v1;
    v8 = v0;
    r19 = self;
    if (r2 <= 0x4) {
            r0 = (0x1003497a0 + *(int8_t *)(0x100bcd1ee + r2) * 0x4)();
    }
    else {
            var_48 = **___stack_chk_guard;
            [NSNumber numberWithFloat:r2];
            [NSNumber numberWithFloat:r2];
@(0x0);
            r0 = [NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_78 count:0x3];
            if (**___stack_chk_guard != var_48) {
                    r0 = __stack_chk_fail();
            }
    }
    return r0;
}

-(void *)calculateAndSetSpriteFrame:(void *)arg2 spriteSheet:(void *)arg3 node:(void *)arg4 name:(void * *)arg5 chunks:(void *)arg6 {
    r6 = arg6;
    r3 = arg3;
    r31 = r31 - 0x70;
    var_50 = d9;
    stack[-88] = d8;
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
    r20 = arg5;
    r19 = arg4;
    r22 = arg2;
    if (r3 != 0x0) {
            r23 = r6;
            r25 = r3;
            if ([r3 isEqualToString:r2] != 0x0) {
                    r0 = [CCTextureCache sharedTextureCache];
                    r0 = [r0 addImage:r22];
                    r22 = r0;
                    [r0 contentSize];
                    v8 = v0;
                    objc_msgSend(r22, r23);
                    r23 = [CCSpriteFrame frameWithTexture:r22 rect:r3];
            }
            else {
                    r24 = [CCSpriteFrameCache sharedSpriteFrameCache];
                    [r24 addSpriteFramesWithFile:[NSString stringWithFormat:@"%@%@"]];
                    [r23 lastObject];
                    r0 = [r24 spriteFrameByName:r2];
                    r23 = r0;
                    if (r0 == 0x0) {
                            r0 = [r24 spriteFrameByName:r2];
                            r23 = r0;
                            if (r0 == 0x0) {
                                    r0 = [CCTextureCache sharedTextureCache];
                                    r0 = [r0 addImage:r22];
                                    r22 = r0;
                                    [r0 contentSize];
                                    v8 = v0;
                                    objc_msgSend(r22, r23);
                                    if (r22 == 0x0) {
                                            r23 = 0x0;
                                    }
                                    else {
                                            r23 = [CCSpriteFrame frameWithTexture:r22 rect:r3];
                                    }
                            }
                    }
            }
    }
    else {
            r0 = [CCTextureCache sharedTextureCache];
            r0 = [r0 addImage:r22];
            r22 = r0;
            [r0 contentSize];
            v8 = v0;
            objc_msgSend(r22, r23);
            r23 = [CCSpriteFrame frameWithTexture:r22 rect:r3];
    }
    if (([*r20 isEqualToString:r2] & 0x1) != 0x0) {
            *r20 = @"displayFrame";
    }
    else {
            r3 = *r20;
    }
    [r19 setValue:r23 forKey:r3];
    r0 = r23;
    return r0;
}

-(void)readEffects {
    r0 = self;
    r9 = *(r0 + 0x18);
    r8 = sign_extend_64(*(int32_t *)(r0 + 0x20));
    r9 = r9 + r8;
    r10 = r9 + 0x1;
    if ((sign_extend_64(*(int8_t *)r9) & 0xffffffff80000000) != 0x0) {
            if ((sign_extend_64(*(int8_t *)(r9 + 0x1)) & 0xffffffff80000000) == 0x0) {
                    r10 = r9 + 0x2;
            }
            else {
                    if ((sign_extend_64(*(int8_t *)(r9 + 0x2)) & 0xffffffff80000000) == 0x0) {
                            r10 = r9 + 0x3;
                    }
                    else {
                            if (sign_extend_64(*(int8_t *)(r9 + 0x3)) < 0x0) {
                                    asm { cinc       x10, x10, lt };
                            }
                            r10 = r9 + 0x4;
                    }
            }
    }
    *(int32_t *)(r0 + 0x20) = r8 + (r10 - r9);
    return;
}

-(void)didLoadFromCCB {
    return;
}

-(void)didLoadFromCCBAfterChildren {
    return;
}

-(void)readPropertyForNode:(void *)arg2 parent:(void *)arg3 isExtraProp:(bool)arg4 {
    r31 = r31 - 0x160;
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
    r26 = arg4;
    r23 = arg3;
    r19 = arg2;
    r20 = self;
    r9 = *(self + 0x18);
    r8 = sign_extend_64(*(int32_t *)(self + 0x20));
    r9 = r9 + r8;
    r11 = *(int8_t *)r9;
    r10 = r9 + 0x1;
    r28 = r11 & 0x7f;
    if ((r11 & 0x80) != 0x0) {
            r10 = *(int8_t *)(r9 + 0x1);
            asm { bfi        w28, w10, #0x7, #0x7 };
            if ((r10 & 0x80) == 0x0) {
                    r10 = r9 + 0x2;
            }
            else {
                    r10 = *(int8_t *)(r9 + 0x2);
                    asm { bfi        w28, w10, #0xe, #0x7 };
                    if ((r10 & 0x80) == 0x0) {
                            r10 = r9 + 0x3;
                    }
                    else {
                            r10 = *(int8_t *)(r9 + 0x3);
                            asm { bfi        w28, w10, #0x15, #0x7 };
                            if ((r10 & 0x80) == 0x0) {
                                    r10 = r9 + 0x4;
                            }
                            else {
                                    r10 = r9 + 0x5;
                                    asm { bfi        w28, w11, #0x1c, #0x4 };
                            }
                    }
            }
    }
    *(int32_t *)(r20 + 0x20) = r8 + (r10 - r9);
    r0 = [r20 readCachedString];
    r21 = r0;
    *(r29 + 0xffffffffffffff60) = r0;
    r22 = [r20 isPropertyAllowed:r21];
    r2 = [CCBFile class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_100347ba0;

loc_1003479d8:
    if ([r19 ccbFile] == 0x0 || r26 == 0x0) goto loc_100347bbc;

loc_1003479f4:
    r0 = [r19 ccbFile];
    r19 = r0;
    r0 = [r0 userObject];
    r2 = r21;
    r22 = r22 & [r0 containsObject:r2];
    if (r28 != 0x0) goto loc_100347bc0;

loc_100347a28:
    [r20 readFloat];
    v9 = v0;
    [r20 readFloat];
    r8 = *(r20 + 0x18);
    r9 = sign_extend_64(*(int32_t *)(r20 + 0x20));
    r26 = *(int8_t *)(r8 + r9);
    *(int32_t *)(r20 + 0x20) = r9 + 0x1;
    r25 = *(int8_t *)(r8 + r9 + 0x1);
    *(int32_t *)(r20 + 0x20) = r9 + 0x2;
    r24 = *(int8_t *)(r8 + r9 + 0x2);
    *(int32_t *)(r20 + 0x20) = r9 + 0x3;
    if (r22 == 0x0) goto .l3;

loc_100347a7c:
    v8 = v0;
    [*(r20 + 0x60) containerSize:r23];
    [r20 calculateAndSetRelativePosition:r19 x:r25 y:r24 xUnit:r26 yUnit:r21 corner:r7 name:var_160 parentContentSize:var_158];
    r2 = r21;
    if ([*(r20 + 0x70) containsObject:r2] == 0x0) goto .l3;

loc_100347ae0:
    r27 = [NSNumber numberWithFloat:r2];
    [NSNumber numberWithFloat:r2];
    [NSNumber numberWithInt:r26];
    [NSNumber numberWithInt:r25];
    [NSNumber numberWithInt:r24];
    [NSArray arrayWithObjects:r27];
    r0 = *(r20 + 0x60);
    goto loc_1003481d0;

loc_1003481d0:
    [r0 setBaseValue:r2 forNode:r3 propertyName:r4];
    return;

.l3:
    return;

loc_100347bc0:
    if ((r28 | 0x1) != 0x3) goto loc_100347c30;

loc_100347bcc:
    [r20 readFloat];
    [r20 readFloat];
    if (r22 == 0x0) goto .l3;

loc_100347bf4:
    asm { fcvt       d2, s8 };
    asm { fcvt       d1, s0 };
    r0 = [NSValue valueWithCGPoint:r2];
    goto loc_100347c14;

loc_100347c14:
    r0 = r19;
    goto loc_100347c28;

loc_100347c28:
    [r0 setValue:r2 forKey:r3];
    return;

loc_100347c30:
    if (r28 == 0x1) goto loc_100347f10;

loc_100347c38:
    if (r28 == 0x4) goto loc_100347d78;

loc_100347c40:
    if (r28 != 0x1b) goto loc_100348108;

loc_100347c48:
    [r20 readFloat];
    v9 = v0;
    [r20 readFloat];
    if (r22 == 0x0) goto .l3;

loc_100347c70:
    r22 = [NSString stringWithFormat:@"%@X"];
    [NSString stringWithFormat:@"%@Y"];
    r2 = [NSNumber numberWithFloat:@"%@Y"];
    [r19 setValue:r2 forKey:r22];
    [NSNumber numberWithFloat:r2];
    r0 = r19;
    goto loc_100347c28;

loc_100348108:
    if ((r28 | 0x2) != 0x7) goto loc_100348204;

loc_100348114:
    [r20 readFloat];
    if (r22 == 0x0) goto .l3;

loc_100348128:
    v8 = v0;
    if ([r21 isEqualToString:r2] != 0x0) {
            if (s8 >= 0x3ff0000000000000) {
                    asm { fcsel      s0, s0, s1, ge };
            }
            sub_10035d730();
            v8 = v0;
    }
    r22 = [NSNumber numberWithFloat:@"opacity"];
    [r19 setValue:r22 forKey:r21];
    if ([*(r20 + 0x70) containsObject:r2] == 0x0) goto .l3;

loc_1003481b8:
    r0 = *(r20 + 0x60);
    goto loc_1003481d0;

loc_100348204:
    r8 = r28 - 0x6;
    if (r8 > 0x1e) goto loc_1003482ac;

loc_100348210:
    (0x100348228 + *(int16_t *)(0x100bcd1a8 + r8 * 0x2) * 0x4)();
    return;

loc_1003482ac:
    if (r28 > 0x26) goto loc_100348d1c;

loc_1003482b8:
    r0 = [r20 readCachedString];
    if (r22 == 0x0) goto .l3;

loc_1003482c8:
    r0 = [r0 lastPathComponent];
    goto loc_100347c14;

loc_100348d1c:
    if (r28 == 0x1f) {
            [r20 readEffects];
    }
    return;

loc_100347d78:
    [r20 readFloat];
    v8 = v0;
    [r20 readFloat];
    r8 = *(r20 + 0x18);
    r9 = sign_extend_64(*(int32_t *)(r20 + 0x20));
    r23 = *(int8_t *)(r8 + r9);
    *(int32_t *)(r20 + 0x20) = r9 + 0x1;
    if (r22 == 0x0) goto .l3;

loc_100347db4:
    [r20 calculateScale:r23 withType:r3];
    v8 = v8;
    [r20 calculateScale:r23 withType:r3];
    v9 = v0;
    r24 = [NSNumber numberWithFloat:r23];
    [r19 setValue:r24 forKey:[r21 stringByAppendingString:@"X"]];
    [r19 setValue:[NSNumber numberWithFloat:r24] forKey:[r21 stringByAppendingString:@"Y"]];
    r2 = r21;
    if ([*(r20 + 0x70) containsObject:r2] == 0x0) goto .l3;

loc_100347e9c:
    r25 = [NSNumber numberWithFloat:r2];
    [NSNumber numberWithFloat:r2];
    [NSNumber numberWithInt:r23];
    [NSArray arrayWithObjects:r25];
    r0 = *(r20 + 0x60);
    goto loc_1003481d0;

loc_100347f10:
    [r20 readFloat];
    v9 = v0;
    [r20 readFloat];
    r8 = *(r20 + 0x18);
    r9 = sign_extend_64(*(int32_t *)(r20 + 0x20));
    r25 = *(int8_t *)(r8 + r9);
    *(int32_t *)(r20 + 0x20) = r9 + 0x1;
    r24 = *(int8_t *)(r8 + r9 + 0x1);
    *(int32_t *)(r20 + 0x20) = r9 + 0x2;
    if (r22 == 0x0) goto .l3;

loc_100347f58:
    v8 = v0;
    [*(r20 + 0x60) containerSize:r2];
    r0 = [r20 calculatePropertyTypeSize:r25 h:r24 xUnit:r4 yUnit:r5 parentContentSize:r6];
    [[r0 valueForKey:r2] floatValue];
    asm { fcvt       d10, s0 };
    objc_msgSend(objc_msgSend(r26, r27), r28);
    asm { fcvt       d11, s0 };
    [objc_msgSend(r26, r27) intValue];
    objc_msgSend(*(r20 + 0x60), r22);
    [r19 setRelativeSize:r26 type:r21 parentSize:r4 propertyName:r5];
    r2 = r21;
    if ([*(r20 + 0x70) containsObject:r2] == 0x0) goto .l3;

loc_100348060:
    r26 = [NSNumber numberWithFloat:r2];
    [NSNumber numberWithFloat:r2];
    [NSNumber numberWithInt:r25];
    [NSNumber numberWithInt:r24];
    [NSArray arrayWithObjects:r26];
    r0 = *(r20 + 0x60);
    goto loc_1003481d0;

loc_100347bbc:
    if (r28 == 0x0) goto loc_100347a28;
    goto loc_100347bc0;

loc_100347ba0:
    if (r26 == 0x0 || [*(r20 + 0x60) rootNode] != r19) goto loc_100347bbc;

loc_100347d18:
    r0 = [r19 userObject];
    r26 = r0;
    if (r0 == 0x0) {
            r26 = [NSMutableSet set];
            [r19 setUserObject:r26];
    }
    r2 = r21;
    [r26 addObject:r2];
    if (r28 != 0x0) goto loc_100347bc0;
}

-(void *)readKeyframeOfType:(int)arg2 name:(void *)arg3 {
    r31 = r31 - 0x80;
    var_50 = d9;
    stack[-88] = d8;
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
    r22 = arg3;
    r23 = arg2;
    r20 = self;
    r19 = [[[CCBKeyframe alloc] init] autorelease];
    [r20 readFloat];
    [r19 setTime:r2];
    r9 = *(r20 + 0x18);
    r8 = sign_extend_64(*(int32_t *)(r20 + 0x20));
    r9 = r9 + r8;
    r11 = *(int8_t *)r9;
    r10 = r9 + 0x1;
    r24 = r11 & 0x7f;
    if ((r11 & 0x80) != 0x0) {
            r10 = *(int8_t *)(r9 + 0x1);
            asm { bfi        w24, w10, #0x7, #0x7 };
            if ((r10 & 0x80) == 0x0) {
                    r10 = r9 + 0x2;
            }
            else {
                    r10 = *(int8_t *)(r9 + 0x2);
                    asm { bfi        w24, w10, #0xe, #0x7 };
                    if ((r10 & 0x80) == 0x0) {
                            r10 = r9 + 0x3;
                    }
                    else {
                            r10 = *(int8_t *)(r9 + 0x3);
                            asm { bfi        w24, w10, #0x15, #0x7 };
                            if ((r10 & 0x80) == 0x0) {
                                    r10 = r9 + 0x4;
                            }
                            else {
                                    r10 = r9 + 0x5;
                                    asm { bfi        w24, w11, #0x1c, #0x4 };
                            }
                    }
            }
    }
    *(int32_t *)(r20 + 0x20) = r8 + (r10 - r9);
    if (r24 < 0x13) {
            asm { ccmp       w8, #0x0, #0x4, ls };
    }
    if (!CPU_FLAGS & E) {
            [r20 readFloat];
            v8 = v0;
    }
    else {
            s8 = 0x0;
    }
    [r19 setEasingType:r24];
    v0 = v8;
    [r19 setEasingOpt:r24];
    if (r23 == 0xd) goto loc_100349eb0;

loc_100349e70:
    if (r23 == 0xc) goto loc_100349f6c;

loc_100349e78:
    if (r23 != 0x9) goto loc_100349fd0;

loc_100349e80:
    r8 = *(r20 + 0x18);
    r9 = sign_extend_64(*(int32_t *)(r20 + 0x20));
    r8 = *(int8_t *)(r8 + r9);
    *(int32_t *)(r20 + 0x20) = r9 + 0x1;
    r1 = @selector(numberWithBool:);
    goto loc_100349f90;

loc_100349f90:
    r0 = objc_msgSend(@class(NSNumber), r1);
    goto loc_100349f94;

loc_100349f94:
    r24 = r0;
    goto loc_100349f98;

loc_100349f98:
    [r19 setValue:r24];
    r0 = r19;
    return r0;

loc_100349fd0:
    if ((r23 | 0x2) != 0x7) goto loc_10034a05c;

loc_100349fdc:
    [r20 readFloat];
    r24 = [NSNumber numberWithFloat:r2];
    if ([r22 isEqualToString:r2] == 0x0) goto loc_100349f98;

loc_10034a024:
    if (s8 >= 0x3ff0000000000000) {
            asm { fcsel      s0, s0, s1, ge };
    }
    sub_10035d730();
    asm { fcvtzs     w8, s0 };
    r0 = *(r21 + 0xfc0);
    asm { scvtf      s0, w8 };
    r0 = objc_msgSend(r0, r20);
    goto loc_100349f94;

loc_10034a05c:
    if (r23 > 0x9) goto loc_10034a080;

loc_10034a068:
    if (r23 == 0x0 || r23 == 0x4) goto loc_10034a090;

loc_10034a074:
    r24 = 0x0;
    goto loc_100349f98;

loc_10034a090:
    [r20 readFloat];
    [r20 readFloat];
    [NSNumber numberWithFloat:r2];
    r0 = @class(NSNumber);
    [r0 numberWithFloat:r2];
    r1 = @selector(arrayWithObjects:);
    r0 = @class(NSArray);
    goto loc_10034a0fc;

loc_10034a0fc:
    r0 = objc_msgSend(r0, r1);
    goto loc_100349f94;

loc_10034a080:
    if (r23 == 0xa) goto loc_10034a104;

loc_10034a088:
    r24 = 0x0;
    if (r23 != 0x1b) goto loc_100349f98;
    goto loc_10034a090;

loc_10034a104:
    r0 = [r20 readCachedString];
    r20 = r0;
    r0 = [r0 componentsSeparatedByString:@"/"];
    r21 = r0;
    r0 = [r0 count];
    r22 = @"";
    if (r0 >= 0x2) {
            r22 = [r20 stringByDeletingLastPathComponent];
    }
    if ([[r20 pathExtension] isEqualToString:r2] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r22 = r22;
            }
            else {
                    r22 = @"";
            }
    }
    if (r22 != 0x0) {
            r24 = [r22 isEqualToString:r2];
    }
    else {
            r24 = 0x1;
    }
    r0 = [CCTextureCache sharedTextureCache];
    r0 = [r0 addImage:r20];
    r23 = r0;
    [r0 contentSize];
    v8 = v0;
    objc_msgSend(r23, r25);
    if (r24 != 0x0 || r23 != 0x0) goto loc_10034a20c;

loc_10034a234:
    r23 = [CCSpriteFrameCache sharedSpriteFrameCache];
    [r23 addSpriteFramesWithFile:[NSString stringWithFormat:@"%@%@"]];
    [r21 lastObject];
    r0 = [r23 spriteFrameByName:r2];
    r24 = r0;
    if (r0 != 0x0) goto loc_100349f98;

loc_10034a2b8:
    r0 = r23;
    r1 = @selector(spriteFrameByName:);
    goto loc_10034a0fc;

loc_10034a20c:
    r0 = [CCSpriteFrame frameWithTexture:r23 rect:r3];
    goto loc_100349f94;

loc_100349f6c:
    *(int32_t *)(r20 + 0x20) = sign_extend_64(*(int32_t *)(r20 + 0x20)) + 0x1;
    r1 = @selector(numberWithInt:);
    goto loc_100349f90;

loc_100349eb0:
    [r20 readFloat];
    if (s0 >= 0x3ff0000000000000) {
            asm { fcsel      s0, s8, s1, ge };
    }
    sub_10035d730();
    asm { fcvtzs     w22, s0 };
    objc_msgSend(r20, r21);
    if (s0 >= s9) {
            asm { fcsel      s0, s8, s1, ge };
    }
    sub_10035d730();
    asm { fcvtzs     w23, s0 };
    objc_msgSend(r20, r21);
    if (s0 >= s9) {
            asm { fcsel      s0, s8, s1, ge };
    }
    sub_10035d730();
    asm { fcvtzs     w24, s0 };
    objc_msgSend(r20, r21);
    asm { bfi        w22, w23, #0x8, #0x8 };
    asm { bfi        w22, w8, #0x10, #0x8 };
    asm { bfi        w22, w8, #0x18, #0x8 };
    r0 = [NSValue value:&var_54 withObjCType:"{_ccColorThreeB=CCCC}"];
    goto loc_100349f94;
}

-(bool)readSequences {
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
    r19 = self;
    var_80 = [*(self + 0x60) sequences];
    r8 = *(r19 + 0x18);
    r9 = sign_extend_64(*(int32_t *)(r19 + 0x20));
    r10 = r8 + r9;
    r12 = *(int8_t *)r10;
    r11 = r10 + 0x1;
    r25 = r12 & 0x7f;
    if ((r12 & 0x80) != 0x0) {
            r11 = *(int8_t *)(r10 + 0x1);
            asm { bfi        w25, w11, #0x7, #0x7 };
            if ((r11 & 0x80) == 0x0) {
                    r11 = r10 + 0x2;
            }
            else {
                    r11 = *(int8_t *)(r10 + 0x2);
                    asm { bfi        w25, w11, #0xe, #0x7 };
                    if ((r11 & 0x80) == 0x0) {
                            r11 = r10 + 0x3;
                    }
                    else {
                            r11 = *(int8_t *)(r10 + 0x3);
                            asm { bfi        w25, w11, #0x15, #0x7 };
                            if ((r11 & 0x80) == 0x0) {
                                    r11 = r10 + 0x4;
                            }
                            else {
                                    r11 = r10 + 0x5;
                                    asm { bfi        w25, w12, #0x1c, #0x4 };
                            }
                    }
            }
    }
    r9 = 0x2 + r9 + (r11 - r10);
    *(int32_t *)(r19 + 0x20) = r9;
    if (r25 < 0x1) goto loc_10034b224;

loc_10034b078:
    r24 = [[[CCBSequence alloc] init] autorelease];
    [r19 readFloat];
    [r24 setDuration:r2];
    [r24 setName:[r19 readCachedString]];
    r9 = *(r19 + 0x18);
    r8 = sign_extend_64(*(int32_t *)(r19 + 0x20));
    r9 = r9 + r8;
    r11 = *(int8_t *)r9;
    r10 = r9 + 0x1;
    r2 = r11 & 0x7f;
    if ((r11 & 0x80) != 0x0) {
            r10 = *(int8_t *)(r9 + 0x1);
            asm { bfi        w2, w10, #0x7, #0x7 };
            if ((r10 & 0x80) == 0x0) {
                    r10 = r9 + 0x2;
            }
            else {
                    r10 = *(int8_t *)(r9 + 0x2);
                    asm { bfi        w2, w10, #0xe, #0x7 };
                    if ((r10 & 0x80) == 0x0) {
                            r10 = r9 + 0x3;
                    }
                    else {
                            r10 = *(int8_t *)(r9 + 0x3);
                            asm { bfi        w2, w10, #0x15, #0x7 };
                            if ((r10 & 0x80) == 0x0) {
                                    r10 = r9 + 0x4;
                            }
                            else {
                                    r10 = r9 + 0x5;
                                    asm { bfi        w2, w11, #0x1c, #0x4 };
                            }
                    }
            }
    }
    *(int32_t *)(r19 + 0x20) = r8 + (r10 - r9);
    [r24 setSequenceId:r2];
    r9 = *(r19 + 0x18);
    r8 = sign_extend_64(*(int32_t *)(r19 + 0x20));
    r10 = r9 + r8;
    r12 = *(int8_t *)r10;
    r11 = r10 + 0x1;
    r9 = r12 & 0x7f;
    if ((r12 & 0x80) != 0x0) {
            r11 = *(int8_t *)(r10 + 0x1);
            asm { bfi        w9, w11, #0x7, #0x7 };
            if ((r11 & 0x80) == 0x0) {
                    r11 = r10 + 0x2;
            }
            else {
                    r11 = *(int8_t *)(r10 + 0x2);
                    asm { bfi        w9, w11, #0xe, #0x7 };
                    if ((r11 & 0x80) == 0x0) {
                            r11 = r10 + 0x3;
                    }
                    else {
                            r11 = *(int8_t *)(r10 + 0x3);
                            asm { bfi        w9, w11, #0x15, #0x7 };
                            if ((r11 & 0x80) == 0x0) {
                                    r11 = r10 + 0x4;
                            }
                            else {
                                    r11 = r10 + 0x5;
                                    asm { bfi        w9, w12, #0x1c, #0x4 };
                            }
                    }
            }
    }
    *(int32_t *)(r19 + 0x20) = r8 + (r11 - r10);
    if ((r9 & 0x1) == 0x0) {
            asm { csneg      w2, w10, w8, eq };
    }
    [r24 setChainedSequenceId:r2];
    r0 = [r19 readCallbackKeyframesForSeq:r24];
    if (r0 == 0x0) goto .l16;

loc_10034b1f0:
    r0 = [r19 readSoundKeyframesForSeq:r24];
    if (r0 == 0x0) goto .l16;

loc_10034b204:
    r2 = r24;
    [var_80 addObject:r2];
    r25 = r25 - 0x1;
    if (r25 != 0x0) goto loc_10034b078;

loc_10034b21c:
    r8 = *(r19 + 0x18);
    r9 = *(int32_t *)(r19 + 0x20);
    goto loc_10034b224;

loc_10034b224:
    r10 = r8 + sign_extend_64(r9);
    r12 = *(int8_t *)r10;
    r11 = r10 + 0x1;
    r8 = r12 & 0x7f;
    if ((r12 & 0x80) != 0x0) {
            r11 = *(int8_t *)(r10 + 0x1);
            asm { bfi        w8, w11, #0x7, #0x7 };
            if ((r11 & 0x80) == 0x0) {
                    r11 = r10 + 0x2;
            }
            else {
                    r11 = *(int8_t *)(r10 + 0x2);
                    asm { bfi        w8, w11, #0xe, #0x7 };
                    if ((r11 & 0x80) == 0x0) {
                            r11 = r10 + 0x3;
                    }
                    else {
                            r11 = *(int8_t *)(r10 + 0x3);
                            asm { bfi        w8, w11, #0x15, #0x7 };
                            if ((r11 & 0x80) == 0x0) {
                                    r11 = r10 + 0x4;
                            }
                            else {
                                    r11 = r10 + 0x5;
                                    asm { bfi        w8, w12, #0x1c, #0x4 };
                            }
                    }
            }
    }
    *(int32_t *)(r19 + 0x20) = r9 + (r11 - r10);
    if ((r8 & 0x1) == 0x0) {
            asm { csneg      w2, w10, w9, eq };
    }
    [*(r19 + 0x60) setAutoPlaySequenceId:r2];
    r0 = 0x1;
    return r0;

.l16:
    return r0;
}

-(bool)readCallbackKeyframesForSeq:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0xb0;
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
    r9 = *(self + 0x18);
    r8 = sign_extend_64(*(int32_t *)(self + 0x20));
    r9 = r9 + r8;
    r11 = *(int8_t *)r9;
    r10 = r9 + 0x1;
    r25 = r11 & 0x7f;
    if ((r11 & 0x80) != 0x0) {
            r10 = *(int8_t *)(r9 + 0x1);
            asm { bfi        w25, w10, #0x7, #0x7 };
            if ((r10 & 0x80) == 0x0) {
                    r10 = r9 + 0x2;
            }
            else {
                    r10 = *(int8_t *)(r9 + 0x2);
                    asm { bfi        w25, w10, #0xe, #0x7 };
                    if ((r10 & 0x80) == 0x0) {
                            r10 = r9 + 0x3;
                    }
                    else {
                            r10 = *(int8_t *)(r9 + 0x3);
                            asm { bfi        w25, w10, #0x15, #0x7 };
                            if ((r10 & 0x80) == 0x0) {
                                    r10 = r9 + 0x4;
                            }
                            else {
                                    r10 = r9 + 0x5;
                                    asm { bfi        w25, w11, #0x1c, #0x4 };
                            }
                    }
            }
    }
    *(int32_t *)(r20 + 0x20) = r8 + (r10 - r9);
    if (r25 != 0x0) {
            var_90 = r2;
            r0 = [CCBSequenceProperty alloc];
            r1 = @selector(init);
            var_78 = r1;
            var_68 = objc_msgSend(r0, r1);
            if (r25 >= 0x1) {
                    do {
                            [r20 readFloat];
                            v8 = v0;
                            r23 = [r20 readCachedString];
                            r9 = *(r20 + 0x18);
                            r8 = sign_extend_64(*(int32_t *)(r20 + 0x20));
                            r9 = r9 + r8;
                            r11 = *(int8_t *)r9;
                            r10 = r9 + 0x1;
                            r2 = r11 & 0x7f;
                            if ((r11 & 0x80) != 0x0) {
                                    r10 = *(int8_t *)(r9 + 0x1);
                                    asm { bfi        w2, w10, #0x7, #0x7 };
                                    if ((r10 & 0x80) == 0x0) {
                                            r10 = r9 + 0x2;
                                    }
                                    else {
                                            r10 = *(int8_t *)(r9 + 0x2);
                                            asm { bfi        w2, w10, #0xe, #0x7 };
                                            if ((r10 & 0x80) == 0x0) {
                                                    r10 = r9 + 0x3;
                                            }
                                            else {
                                                    r10 = *(int8_t *)(r9 + 0x3);
                                                    asm { bfi        w2, w10, #0x15, #0x7 };
                                                    if ((r10 & 0x80) == 0x0) {
                                                            r10 = r9 + 0x4;
                                                    }
                                                    else {
                                                            r10 = r9 + 0x5;
                                                            asm { bfi        w2, w11, #0x1c, #0x4 };
                                                    }
                                            }
                                    }
                            }
                            r22 = @selector(addObject:);
                            *(int32_t *)(r20 + 0x20) = r8 + (r10 - r9);
                            [NSNumber numberWithInt:r2];
                            r2 = r23;
                            r23 = [NSMutableArray arrayWithObjects:r2];
                            r0 = [CCBKeyframe alloc];
                            r0 = objc_msgSend(r0, var_78);
                            v0 = v8;
                            [r0 setTime:r2];
                            [r0 setValue:r23];
                            objc_msgSend([var_68 keyframes], r22);
                            r25 = r25 - 0x1;
                    } while (r25 != 0x0);
            }
            [var_90 setCallbackChannel:var_68];
    }
    return 0x1;
}

-(bool)readHeader {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = *(r0 + 0x18);
    if (r8 != 0x0) {
            r19 = r0;
            r9 = sign_extend_64(*(int32_t *)(r0 + 0x20));
            r8 = *(int32_t *)(r8 + r9);
            *(int32_t *)(r0 + 0x20) = r9 + 0x4;
            if (r8 == 0x63636269) {
                    r0 = [r19 readIntWithSignOLD:0x0];
                    *(int32_t *)(r19 + 0x40) = r0;
                    if (r0 < 0xd) {
                            if (CPU_FLAGS & B) {
                                    r0 = 0x1;
                            }
                    }
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)readStringCache {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r19 = self;
    r9 = *(self + 0x18);
    r8 = sign_extend_64(*(int32_t *)(self + 0x20));
    r9 = r9 + r8;
    r11 = *(int8_t *)r9;
    r10 = r9 + 0x1;
    r22 = r11 & 0x7f;
    if ((r11 & 0x80) != 0x0) {
            r10 = *(int8_t *)(r9 + 0x1);
            asm { bfi        w22, w10, #0x7, #0x7 };
            if ((r10 & 0x80) == 0x0) {
                    r10 = r9 + 0x2;
            }
            else {
                    r10 = *(int8_t *)(r9 + 0x2);
                    asm { bfi        w22, w10, #0xe, #0x7 };
                    if ((r10 & 0x80) == 0x0) {
                            r10 = r9 + 0x3;
                    }
                    else {
                            r10 = *(int8_t *)(r9 + 0x3);
                            asm { bfi        w22, w10, #0x15, #0x7 };
                            if ((r10 & 0x80) == 0x0) {
                                    r10 = r9 + 0x4;
                            }
                            else {
                                    r10 = r9 + 0x5;
                                    asm { bfi        w22, w11, #0x1c, #0x4 };
                            }
                    }
            }
    }
    *(int32_t *)(r19 + 0x20) = r8 + (r10 - r9);
    r0 = [NSMutableArray alloc];
    asm { sxtw       x2, w22 };
    r0 = [r0 initWithCapacity:r2];
    *(r19 + 0x48) = r0;
    r26 = r22 - 0x1;
    if (r26 >= 0x0) {
            r21 = r0;
            do {
                    r27 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
                    r23 = @selector(autorelease);
                    r22 = @selector(initWithBytes:length:encoding:);
                    r20 = @selector(alloc);
                    r8 = *(r19 + 0x18);
                    r9 = sign_extend_64(*(int32_t *)(r19 + 0x20));
                    *(int32_t *)(r19 + 0x20) = r9 + 0x1;
                    *(int32_t *)(r19 + 0x20) = r9 + 0x2;
                    asm { bfi        x25, x10, #0x8, #0x8 };
                    objc_msgSend(objc_msgSend(objc_msgSend(*(r27 + 0xfa8), r20), r22), r23);
                    *(int32_t *)(r19 + 0x20) = *(int32_t *)(r19 + 0x20) + r25;
                    objc_msgSend(r21, r24);
                    if (r26 == 0x0) {
                        break;
                    }
                    r21 = *(r19 + 0x48);
                    r26 = r26 - 0x1;
            } while (true);
    }
    return 0x1;
}

-(bool)readSoundKeyframesForSeq:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0xf0;
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
    r24 = self;
    r9 = *(self + 0x18);
    r8 = sign_extend_64(*(int32_t *)(self + 0x20));
    r9 = r9 + r8;
    r11 = *(int8_t *)r9;
    r10 = r9 + 0x1;
    r19 = r11 & 0x7f;
    if ((r11 & 0x80) != 0x0) {
            r10 = *(int8_t *)(r9 + 0x1);
            asm { bfi        w19, w10, #0x7, #0x7 };
            if ((r10 & 0x80) == 0x0) {
                    r10 = r9 + 0x2;
            }
            else {
                    r10 = *(int8_t *)(r9 + 0x2);
                    asm { bfi        w19, w10, #0xe, #0x7 };
                    if ((r10 & 0x80) == 0x0) {
                            r10 = r9 + 0x3;
                    }
                    else {
                            r10 = *(int8_t *)(r9 + 0x3);
                            asm { bfi        w19, w10, #0x15, #0x7 };
                            if ((r10 & 0x80) == 0x0) {
                                    r10 = r9 + 0x4;
                            }
                            else {
                                    r10 = r9 + 0x5;
                                    asm { bfi        w19, w11, #0x1c, #0x4 };
                            }
                    }
            }
    }
    *(int32_t *)(r24 + 0x20) = r8 + (r10 - r9);
    if (r19 != 0x0) {
            var_C0 = r2;
            r0 = [CCBSequenceProperty alloc];
            r28 = @selector(init);
            r21 = objc_msgSend(r0, r28);
            if (r19 >= 0x1) {
                    r27 = @selector(alloc);
                    var_78 = r21;
                    do {
                            var_B8 = @selector(addObject:);
                            [r24 readFloat];
                            r23 = [r24 readCachedString];
                            [r24 readFloat];
                            [r24 readFloat];
                            [r24 readFloat];
                            r0 = @class(NSNumber);
                            r0 = [r0 numberWithFloat:r2];
                            r22 = r27;
                            r0 = @class(NSNumber);
                            [r0 numberWithFloat:r2];
                            r21 = r28;
                            [NSNumber numberWithFloat:r2];
                            r27 = r22;
                            r28 = r21;
                            r2 = r23;
                            r23 = [NSMutableArray arrayWithObjects:r2];
                            r0 = objc_msgSend(@class(CCBKeyframe), r22);
                            r0 = objc_msgSend(r0, r21);
                            r25 = r0;
                            v0 = v0;
                            [r0 setTime:r2];
                            r21 = var_78;
                            [r25 setValue:r23];
                            r0 = [r21 keyframes];
                            r2 = r25;
                            objc_msgSend(r0, var_B8);
                            r19 = r19 - 0x1;
                    } while (r19 != 0x0);
            }
            [var_C0 setSoundChannel:r21];
    }
    return 0x1;
}

-(void)cleanUpNodeGraph:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    [arg2 setUserObject:0x0];
    if ([r20 children] != 0x0 && **([r20 children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r21 = @selector(children);
            r22 = *(*(objc_msgSend(r20, r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r21 = *(*(objc_msgSend(r20, r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10) + **(objc_msgSend(r20, r21) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r22 <= r21) {
                    do {
                            r22 = r22 + 0x8;
                            [r19 cleanUpNodeGraph:r2];
                    } while (r22 < r21);
            }
    }
    return;
}

-(void *)readFileWithCleanUp:(bool)arg2 actionManagers:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r20 = arg2;
    r19 = self;
    if ([r19 readSequences] != 0x0 && [self readHeader] != 0x0 && [r19 readStringCache] != 0x0) {
            if (*(int32_t *)(r19 + 0x40) >= 0xb) {
                    *(r19 + 0x30) = [r19 readCachedString];
                    *(r19 + 0x38) = [r19 readCachedString];
            }
            *(r19 + 0x68) = r21;
            r21 = [r19 readNodeGraphParent:0x0];
            r22 = *(r19 + 0x68);
            [r19 actionManager];
            [NSValue valueWithPointer:r21];
            [r22 setObject:r2 forKey:r3];
            if (r20 != 0x0) {
                    [r19 cleanUpNodeGraph:r21];
            }
    }
    else {
            r21 = 0x0;
    }
    r0 = r21;
    return r0;
}

+(void)callDidLoadFromCCBForNodeGraph:(void *)arg2 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r19 = arg2;
    r21 = self;
    if ([arg2 respondsToSelector:r2] != 0x0) {
            [r19 performSelector:r2];
    }
    if ([r19 children] != 0x0 && **([r19 children] + sign_extend_64(*(int32_t *)ivar_offset(data))) != 0x0) {
            r22 = @selector(children);
            r26 = *(*(objc_msgSend(r19, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10);
            r27 = *(*(objc_msgSend(r19, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) + 0x10) + **(objc_msgSend(r19, r22) + sign_extend_64(*(int32_t *)ivar_offset(data))) * 0x8 - 0x8;
            if (r26 <= r27) {
                    do {
                            r26 = r26 + 0x8;
                            [[r21 class] callDidLoadFromCCBForNodeGraph:r2];
                    } while (r26 < r27);
            }
    }
    r20 = @selector(respondsToSelector:);
    if (objc_msgSend(r19, r20) != 0x0) {
            [r19 performSelector:r2];
    }
    return;
}

-(void *)nodeGraphFromData:(void *)arg2 owner:(void *)arg3 parentSize:(struct CGSize)arg4 {
    memcpy(&r4, &arg4, 0x8);
    r0 = [self nodeGraphFromData:*(self + 0x10) owner:*(self + 0x58) parentSize:r4 pointScale:r5];
    return r0;
}

-(void *)loadCCBFromFile:(void *)arg2 owner:(void *)arg3 parentSize:(struct CGSize)arg4 pack:(void *)arg5 {
    r5 = arg5;
    memcpy(&r4, &arg4, 0x8);
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = r4;
    v8 = v1;
    v9 = v0;
    r19 = arg3;
    r22 = arg2;
    r20 = self;
    if (([r22 hasSuffix:r2] & 0x1) == 0x0) {
            r22 = [r22 stringByAppendingString:@".ccbi"];
    }
    r0 = [CCFileUtils sharedFileUtils];
    r0 = [r0 fullPathFromRelativePath:r22];
    if (r0 != 0x0) {
            r0 = [NSData dataWithContentsOfFile:r0];
            if (r0 != 0x0) {
                    r22 = r0;
                    if (r21 != 0x0) {
                            [[CCResourcePackManager sharedInstance] pointScaleForAssetOfPack:r21];
                    }
                    r0 = [r20 nodeGraphFromData:r22 owner:r19 parentSize:r4 pointScale:r5];
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)callCodeGenerationSelector:(void *)arg2 pScale:(float)arg3 owner:(void *)arg4 parentSize:(struct CGSize)arg5 ccbName:(void *)arg6 {
    memcpy(&r5, &arg5, 0x8);
    r3 = arg3;
    r31 = r31 - 0xb0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r19 = arg2;
    r20 = self;
    if (r3 == 0x0) {
            r3 = [NSNull null];
    }
    [NSValue value:&var_98 withObjCType:"{CGSize=dd}"];
    [NSNumber numberWithFloat:&var_98];
@(YES);
    r0 = *(r20 + 0xb8);
    if (r0 == 0x0) {
            r0 = [NSNull null];
    }
    var_38 = **___stack_chk_guard;
    r19 = [r20 performSelector:r19 withObject:[NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_88 count:0x5]];
    [CCBReader callDidLoadFromCCBForNodeGraph:r19];
    if (**___stack_chk_guard == var_38) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)nodeGraphFromData:(void *)arg2 owner:(void *)arg3 parentSize:(struct CGSize)arg4 pointScale:(float)arg5 {
    memcpy(&r4, &arg4, 0x8);
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
    v8 = v2;
    v9 = v1;
    v10 = v0;
    r20 = arg3;
    r19 = self;
    *(r19 + 0x10) = [arg2 retain];
    *(int128_t *)(r19 + 0x18) = [arg2 bytes];
    *(int128_t *)(r19 + 0x20) = 0x0;
    if (s8 > 0x0) {
            asm { fcsel      s0, s8, s0, gt };
    }
    *(int32_t *)(r19 + 0x28) = 0x3ff0000000000000;
    *(r19 + 0x58) = [r20 retain];
    [[r19 actionManager] setRootContainerSize:r2];
    [[r19 actionManager] setPointScale:r2];
    r0 = @class(NSMutableArray);
    r0 = [r0 alloc];
    r22 = @selector(init);
    *(r19 + 0x88) = objc_msgSend(r0, r22);
    *(r19 + 0x90) = objc_msgSend([NSMutableArray alloc], r22);
    *(r19 + 0x98) = objc_msgSend([NSMutableArray alloc], r22);
    *(r19 + 0xa0) = objc_msgSend([NSMutableArray alloc], r22);
    if (*(r19 + 0xb8) != 0x0) {
            r26 = 0x0;
    }
    else {
            r0 = [NSMutableDictionary dictionary];
            r3 = r0;
            *(r19 + 0xb8) = r0;
            r26 = 0x1;
    }
    r0 = [r19 readFileWithCleanUp:0x1 actionManagers:r3];
    var_158 = r0;
    if (r0 != 0x0 && [[r19 actionManager] autoPlaySequenceId] != -0x1) {
            [[r19 actionManager] runAnimationsForSequenceId:[[r19 actionManager] autoPlaySequenceId] tweenDuration:r3];
    }
    if (*(int8_t *)(r19 + 0x8) != 0x0) {
            r22 = @selector(init);
            *(r19 + 0xa8) = objc_msgSend([NSMutableArray alloc], r22);
            *(r19 + 0xb0) = objc_msgSend([NSMutableArray alloc], r22);
    }
    if (r26 != 0x0) {
            var_130 = q0;
            r0 = *(r19 + 0xb8);
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_150 = r1;
            var_148 = r0;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r23 = r0;
                    r22 = *var_130;
                    do {
                            r21 = 0x0;
                            do {
                                    if (*var_130 != r22) {
                                            objc_enumerationMutation(var_148);
                                    }
                                    r20 = *(var_138 + r21 * 0x8);
                                    r28 = [r20 pointerValue];
                                    r20 = [*(r19 + 0xb8) objectForKey:r20];
                                    [r28 setUserObject:r20];
                                    if (*(int8_t *)(r19 + 0x8) != 0x0) {
                                            [*(r19 + 0xa8) addObject:r2];
                                            objc_msgSend(*(r19 + 0xb0), r27);
                                    }
                                    r21 = r21 + 0x1;
                            } while (r21 < r23);
                            r0 = objc_msgSend(var_148, var_150);
                            r23 = r0;
                    } while (r0 != 0x0);
            }
    }
    r20 = var_158;
    if (*(int8_t *)(r19 + 0xc8) == 0x0) {
            [[r19 class] callDidLoadFromCCBForNodeGraph:r20];
            *(int8_t *)(r19 + 0xc8) = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)nodeGraphFromFile:(void *)arg2 owner:(void *)arg3 {
    [[CCDirector sharedDirector] winSize];
    r0 = [self nodeGraphFromFile:r2 owner:r3 parentSize:r4];
    return r0;
}

-(void *)nodeGraphFromFile:(void *)arg2 {
    [[CCDirector sharedDirector] winSize];
    r0 = [self nodeGraphFromFile:r2 owner:r3 parentSize:r4];
    return r0;
}

+(void *)reader {
    r0 = [self class];
    r0 = [r0 alloc];
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)nodeGraphFromFile:(void *)arg2 owner:(void *)arg3 {
    r21 = [self class];
    [[CCDirector sharedDirector] winSize];
    r0 = [r21 nodeGraphFromFile:r2 owner:r3 parentSize:r4];
    return r0;
}

+(void *)nodeGraphFromFile:(void *)arg2 owner:(void *)arg3 parentSize:(struct CGSize)arg4 {
    memcpy(&r4, &arg4, 0x8);
    r0 = [self class];
    r0 = [r0 reader];
    r0 = [r0 nodeGraphFromFile:r2 owner:r3 parentSize:r4];
    return r0;
}

+(void *)nodeGraphFromFile:(void *)arg2 {
    r0 = [self class];
    r0 = [r0 nodeGraphFromFile:r2 owner:r3];
    return r0;
}

+(void *)sceneWithNodeGraphFromFile:(void *)arg2 owner:(void *)arg3 {
    r21 = [self class];
    [[CCDirector sharedDirector] winSize];
    r0 = [r21 sceneWithNodeGraphFromFile:arg2 owner:arg3 parentSize:r4];
    return r0;
}

+(void *)sceneWithNodeGraphFromFile:(void *)arg2 owner:(void *)arg3 parentSize:(struct CGSize)arg4 {
    memcpy(&r4, &arg4, 0x8);
    r19 = [[self class] nodeGraphFromFile:arg2 owner:arg3 parentSize:r4];
    r0 = [CCScene node];
    [r0 addChild:r19 z:0x0 tag:0x539];
    r0 = r0;
    return r0;
}

+(void *)sceneWithNodeGraphFromFile:(void *)arg2 {
    r0 = [self class];
    r0 = [r0 sceneWithNodeGraphFromFile:arg2 owner:0x0];
    return r0;
}

+(void *)nodeGraphFromData:(void *)arg2 owner:(void *)arg3 parentSize:(struct CGSize)arg4 {
    memcpy(&r4, &arg4, 0x8);
    r0 = [self class];
    r0 = [r0 reader];
    r0 = [r0 nodeGraphFromData:arg2 owner:arg3 parentSize:r4];
    return r0;
}

+(void *)sceneWithNodeGraphFromData:(void *)arg2 owner:(void *)arg3 {
    r21 = [self class];
    [[CCDirector sharedDirector] winSize];
    r0 = [r21 sceneWithNodeGraphFromData:arg2 owner:arg3 parentSize:r4];
    return r0;
}

+(void *)sceneWithNodeGraphFromData:(void *)arg2 owner:(void *)arg3 parentSize:(struct CGSize)arg4 {
    memcpy(&r4, &arg4, 0x8);
    r19 = [[self class] nodeGraphFromData:arg2 owner:arg3 parentSize:r4];
    r0 = [CCScene node];
    [r0 addChild:r19 z:0x0 tag:0x539];
    r0 = r0;
    return r0;
}

+(void *)ccbDirectoryPath {
    r0 = NSSearchPathForDirectoriesInDomains(0x9, 0x1, 0x1);
    r0 = [r0 objectAtIndex:0x0];
    r0 = [r0 stringByAppendingPathComponent:@"ccb"];
    return r0;
}

+(void)setResolutionScale:(float)arg2 {
    *(int32_t *)0x1011e2dd8 = s0;
    return;
}

-(void *)nodeGraphFromFile:(void *)arg2 owner:(void *)arg3 parentSize:(struct CGSize)arg4 {
    memcpy(&r4, &arg4, 0x8);
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
    r31 = r31 + 0xffffffffffffff80 - 0x2b0;
    v8 = v1;
    v9 = v0;
    var_2B8 = arg3;
    r22 = arg2;
    r21 = self;
    if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] == 0x0) goto loc_10034cbec;

loc_10034cbc0:
    sub_1009d0950(&stack[-440]);
    var_1C0 = 0x0;
    if (r22 != 0x0) {
            r1 = [r22 UTF8String];
    }
    else {
            r1 = "";
    }
    r0 = sub_10034cab4(&var_1E0, r1);
    r8 = var_1C9;
    r10 = var_1D8;
    if (sign_extend_64(r8) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r8 = r8;
            }
            else {
                    r8 = r10;
            }
    }
    if (r8 != 0x0) {
            r0 = sub_10042ccfc(&var_1E0);
            r19 = &var_1F8;
            if ((sign_extend_64(var_1C9) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_1E0);
            }
            sub_10098f1a4(&var_1E0);
            r9 = var_1E1;
            r8 = sign_extend_64(r9);
            r10 = var_1F0;
            if (r8 < 0x0) {
                    if (!CPU_FLAGS & L) {
                            r9 = r9;
                    }
                    else {
                            r9 = r10;
                    }
            }
            if (r9 == 0x4) {
                    if (std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::compare() != 0x0) {
                            if (CPU_FLAGS & NE) {
                                    r20 = 0x1;
                            }
                    }
                    r4 = 0x4;
                    r3 = "ccbi";
                    r2 = 0xffffffffffffffff;
                    r8 = var_1E1;
            }
            else {
                    r20 = 0x1;
            }
            if ((sign_extend_64(r8) & 0xffffffff80000000) == 0x0) {
                    if (r20 != 0x0) {
                            r0 = sub_10098f4f4(&var_1E0);
                            sub_10034cab4(&var_228, "ccbi");
                            r0 = sub_10098f2e8(&var_210, &var_228);
                            if ((sign_extend_64(var_1C9) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_1E0);
                            }
                            if ((sign_extend_64(var_211) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_228);
                            }
                            if ((sign_extend_64(var_1F9) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_210);
                            }
                    }
            }
            else {
                    operator delete(var_1F8);
                    if (r20 != 0x0) {
                            r0 = sub_10098f4f4(&var_1E0);
                            sub_10034cab4(&var_228, "ccbi");
                            r0 = sub_10098f2e8(&var_210, &var_228);
                            if ((sign_extend_64(var_1C9) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_1E0);
                            }
                            if ((sign_extend_64(var_211) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_228);
                            }
                            if ((sign_extend_64(var_1F9) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_210);
                            }
                    }
            }
            r0 = sub_10042cbac(&var_1E0, &stack[-440], &var_1C0);
            if (var_198 != 0x0 && r0 != 0x0 && var_1A0 != 0x0) {
                    r19 = [NSData dataWithBytesNoCopy:r2 length:r3];
                    r0 = sub_10042cc88(&var_1C0);
                    r26 = [r21 nodeGraphFromData:r19 owner:var_2B8 parentSize:r4 pointScale:r5];
            }
            else {
                    r26 = 0x0;
            }
    }
    else {
            r26 = 0x0;
    }
    if ((sign_extend_64(var_1C9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1E0);
    }
    if ((sign_extend_64(var_1A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1C0);
    }
    sub_1009d0b44(&stack[-440]);
    goto loc_10034d214;

loc_10034d214:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r26;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10034cbec:
    r19 = [NSDate date];
    r0 = [r22 hasSuffix:r2];
    var_2C0 = r21;
    var_300 = r19;
    if ((r0 & 0x1) != 0x0 || [r22 hasSuffix:r2] != 0x0) {
            r22 = [r22 stringByDeletingPathExtension];
    }
    r0 = [CCResourcePackManager sharedInstance];
    r0 = [r0 getSufixSearchOrder];
    r25 = r0;
    var_260 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_2F8 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_10034cd44;

loc_10034ccb0:
    r21 = r0;
    r24 = *var_260;
    goto loc_10034ccc8;

loc_10034ccc8:
    r28 = 0x0;
    goto loc_10034ccd0;

loc_10034ccd0:
    if (*var_260 != r24) {
            objc_enumerationMutation(r25);
    }
    r27 = @selector(hasSuffix:);
    r19 = *(var_268 + r28 * 0x8);
    if (objc_msgSend(r22, r27) == 0x0 || ([r19 isEqualToString:r2] & 0x1) != 0x0) goto loc_10034cd18;

loc_10034cf08:
    [[CCResourcePackManager sharedInstance] pointScaleForAssetOfPack:r19];
    v10 = 0x0;
    [[r22 stringByReplacingOccurrencesOfString:@"-" withString:@"_"] lastPathComponent];
    r20 = NSSelectorFromString([NSString stringWithFormat:@"buildHierarchyFor%@:"]);
    r21 = var_2C0;
    if ([r21 respondsToSelector:r2] == 0x0) goto loc_10034d074;

loc_10034cfa0:
    r0 = r21;
    goto loc_10034d1d8;

loc_10034d1d8:
    r0 = [r0 callCodeGenerationSelector:r2 pScale:r3 owner:r4 parentSize:r5 ccbName:r6];
    goto loc_10034d1f0;

loc_10034d1f0:
    r26 = r0;
    [[NSDate date] timeIntervalSinceDate:var_300];
    goto loc_10034d214;

loc_10034d074:
    r0 = [r21 loadCCBFromFile:r22 owner:var_2B8 parentSize:r19 pack:r5];
    goto loc_10034d1f0;

loc_10034cd18:
    r28 = r28 + 0x1;
    if (r28 < r21) goto loc_10034ccd0;

loc_10034cd24:
    r0 = objc_msgSend(r25, var_2F8);
    r21 = r0;
    if (r0 != 0x0) goto loc_10034ccc8;

loc_10034cd44:
    v0 = 0x0;
    var_2A0 = q0;
    r0 = objc_msgSend(r25, var_2F8);
    var_2E0 = r0;
    if (r0 == 0x0) goto loc_10034d1c0;

loc_10034cd70:
    var_2E8 = *var_2A0;
    goto loc_10034cd98;

loc_10034cd98:
    r23 = 0x0;
    goto loc_10034cdc4;

loc_10034cdc4:
    if (*var_2A0 != var_2E8) {
            objc_enumerationMutation(r25);
    }
    r26 = *(var_2A8 + r23 * 0x8);
    [[CCResourcePackManager sharedInstance] pointScaleForAssetOfPack:r2];
    v10 = v0;
    r0 = @class(NSString);
    r0 = objc_msgSend(r0, r21);
    r0 = [r0 stringByReplacingOccurrencesOfString:r2 withString:r3];
    objc_msgSend(r0, r19);
    r28 = NSSelectorFromString(objc_msgSend(r28, r21));
    r24 = var_2C0;
    if (objc_msgSend(r24, r20) != 0x0) goto loc_10034d1c8;

loc_10034ce80:
    [r22 stringByAppendingString:r2];
    v0 = v9;
    r0 = objc_msgSend(r24, r27);
    if (r0 != 0x0) goto loc_10034d1f0;

loc_10034ceb4:
    r23 = r23 + 0x1;
    if (r23 < var_2E0) goto loc_10034cdc4;

loc_10034cec4:
    r0 = objc_msgSend(r25, var_2F8);
    var_2E0 = r0;
    if (r0 != 0x0) goto loc_10034cd98;

loc_10034cf04:
    r26 = 0x0;
    goto loc_10034d214;

loc_10034d1c8:
    r0 = r24;
    goto loc_10034d1d8;

loc_10034d1c0:
    r26 = 0x0;
    goto loc_10034d214;
}

-(void *)getLocalizedResourceNameFor:(void *)arg2 {
    r0 = arg2;
    return r0;
}

+(void *)dataFromFile:(void *)arg2 pointScale:(float *)arg3 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x270;
    r21 = arg3;
    r20 = arg2;
    if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] == 0x0) goto loc_10034c494;

loc_10034c468:
    sub_1009d0950(&stack[-408]);
    var_1A0 = 0x0;
    if (r20 != 0x0) {
            r1 = [r20 UTF8String];
    }
    else {
            r1 = "";
    }
    r0 = sub_10034cab4(&var_1C0, r1);
    r8 = var_1A9;
    r10 = var_1B8;
    if (sign_extend_64(r8) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r8 = r8;
            }
            else {
                    r8 = r10;
            }
    }
    if (r8 == 0x0) goto loc_10034c9a0;

loc_10034c7e8:
    r0 = sub_10042ccfc(&var_1C0);
    r19 = &var_1D8;
    if ((sign_extend_64(var_1A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1C0);
    }
    sub_10098f1a4(&var_1C0);
    r9 = var_1C1;
    r8 = sign_extend_64(r9);
    r10 = var_1D0;
    if (r8 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r9 = r9;
            }
            else {
                    r9 = r10;
            }
    }
    if (r9 == 0x4) {
            if (std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::compare() != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r20 = 0x1;
                    }
            }
            r8 = var_1C1;
    }
    else {
            r20 = 0x1;
    }
    if ((sign_extend_64(r8) & 0xffffffff80000000) == 0x0) {
            if (r20 != 0x0) {
                    r0 = sub_10098f4f4(&var_1C0);
                    sub_10034cab4(&var_208, "ccbi");
                    r0 = sub_10098f2e8(&var_1F0, &var_208);
                    if ((sign_extend_64(var_1A9) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_1C0);
                    }
                    var_1C1 = 0x0;
                    if ((sign_extend_64(var_1F1) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_208);
                    }
                    if ((sign_extend_64(var_1D9) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_1F0);
                    }
            }
    }
    else {
            operator delete(var_1D8);
            if (r20 != 0x0) {
                    r0 = sub_10098f4f4(&var_1C0);
                    sub_10034cab4(&var_208, "ccbi");
                    r0 = sub_10098f2e8(&var_1F0, &var_208);
                    if ((sign_extend_64(var_1A9) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_1C0);
                    }
                    var_1C1 = 0x0;
                    if ((sign_extend_64(var_1F1) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_208);
                    }
                    if ((sign_extend_64(var_1D9) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_1F0);
                    }
            }
    }
    r0 = sub_10042ccfc(&var_1C0);
    r0 = sub_10042cbac(&var_1D8, &stack[-408], &var_1A0);
    if (r0 == 0x0) goto loc_10034c980;

loc_10034c958:
    r8 = var_180;
    r9 = stack[-392];
    if (r8 == 0x0) {
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    if (r9 == 0x0) {
            if (CPU_FLAGS & E) {
                    r9 = 0x1;
            }
    }
    r19 = r8 | r9;
    if ((sign_extend_64(var_1C1) & 0xffffffff80000000) == 0x0) {
            if ((r19 & 0x1) == 0x0) {
                    r0 = sub_10042cc88(&var_1A0);
                    *(int32_t *)r21 = s0;
                    r24 = [NSData dataWithBytesNoCopy:var_180 length:stack[-392]];
            }
            else {
                    r24 = 0x0;
            }
    }
    else {
            operator delete(var_1D8);
            if ((r19 & 0x1) != 0x0) {
                    r24 = 0x0;
            }
            else {
                    r0 = sub_10042cc88(&var_1A0);
                    *(int32_t *)r21 = s0;
                    r24 = [NSData dataWithBytesNoCopy:var_180 length:stack[-392]];
            }
    }
    goto loc_10034c9a4;

loc_10034c9a4:
    if ((sign_extend_64(var_1A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1C0);
    }
    if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1A0);
    }
    sub_1009d0b44(&stack[-408]);
    goto loc_10034c9cc;

loc_10034c9cc:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r24;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10034c980:
    if ((sign_extend_64(var_1C1) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1D8);
    }
    goto loc_10034c9a0;

loc_10034c9a0:
    r24 = 0x0;
    goto loc_10034c9a4;

loc_10034c494:
    *(int32_t *)r21 = 0x3f800000;
    r0 = [r20 hasSuffix:r2];
    var_2B8 = r21;
    if ((r0 & 0x1) != 0x0 || [r20 hasSuffix:r2] != 0x0) {
            r20 = [r20 stringByDeletingPathExtension];
    }
    r0 = [CCResourcePackManager sharedInstance];
    r0 = [r0 getSufixSearchOrder];
    r23 = r0;
    var_240 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_2B0 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_10034c5d4;

loc_10034c540:
    r24 = r0;
    r26 = *var_240;
    goto loc_10034c558;

loc_10034c558:
    r28 = 0x0;
    goto loc_10034c560;

loc_10034c560:
    if (*var_240 != r26) {
            objc_enumerationMutation(r23);
    }
    r22 = @selector(hasSuffix:);
    r19 = *(var_248 + r28 * 0x8);
    if (objc_msgSend(r20, r22) == 0x0 || ([r19 isEqualToString:r2] & 0x1) != 0x0) goto loc_10034c5a8;

loc_10034c718:
    if (([r20 hasSuffix:r2] & 0x1) == 0x0) {
            r20 = [r20 stringByAppendingString:@".ccbi"];
    }
    r21 = var_2B8;
    r0 = [CCFileUtils sharedFileUtils];
    r0 = [r0 fullPathFromRelativePath:r20];
    if (r0 != 0x0) {
            [[CCResourcePackManager sharedInstance] pointScaleForAssetOfPack:r19];
            *(int32_t *)r21 = s0;
            r24 = [NSData dataWithContentsOfFile:r0];
    }
    else {
            r24 = 0x0;
    }
    goto loc_10034c9cc;

loc_10034c5a8:
    r28 = r28 + 0x1;
    if (r28 < r24) goto loc_10034c560;

loc_10034c5b4:
    r0 = objc_msgSend(r23, var_2B0);
    r24 = r0;
    if (r0 != 0x0) goto loc_10034c558;

loc_10034c5d4:
    var_280 = q0;
    r0 = objc_msgSend(r23, var_2B0);
    var_298 = r0;
    if (r0 == 0x0) goto loc_10034c86c;

loc_10034c600:
    var_2A0 = *var_280;
    goto loc_10034c624;

loc_10034c624:
    r21 = 0x0;
    goto loc_10034c63c;

loc_10034c63c:
    if (*var_280 != var_2A0) {
            objc_enumerationMutation(r23);
    }
    r22 = @selector(hasSuffix:);
    r26 = *(var_288 + r21 * 0x8);
    r0 = [r20 stringByAppendingString:r2];
    r24 = r0;
    if ((objc_msgSend(r0, r22) & 0x1) == 0x0) {
            r24 = [r24 stringByAppendingString:r2];
    }
    r0 = [CCFileUtils sharedFileUtils];
    r0 = [r0 fullPathFromRelativePath:r2];
    if (r0 == 0x0) goto loc_10034c6d0;

loc_10034c6b8:
    r0 = [NSData dataWithContentsOfFile:r2];
    if (r0 != 0x0) goto loc_10034c888;

loc_10034c6d0:
    r21 = r21 + 0x1;
    if (r21 < var_298) goto loc_10034c63c;

loc_10034c6e0:
    r0 = objc_msgSend(r23, var_2B0);
    var_298 = r0;
    if (r0 != 0x0) goto loc_10034c624;

loc_10034c714:
    r24 = 0x0;
    goto loc_10034c9cc;

loc_10034c888:
    r24 = r0;
    [[CCResourcePackManager sharedInstance] pointScaleForAssetOfPack:r26];
    *(int32_t *)var_2B8 = s0;
    goto loc_10034c9cc;

loc_10034c86c:
    r24 = 0x0;
    goto loc_10034c9cc;
}

-(void *)getLocalizedTextForTag:(void *)arg2 {
    r0 = arg2;
    return r0;
}

-(void)setActionManager:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)actionManager {
    r0 = *(self + 0x60);
    return r0;
}

-(void *)ownerOutletNames {
    r0 = *(self + 0x88);
    return r0;
}

-(void *)readNodeGraphParent:(void *)arg2 {
    r31 = r31 - 0x120;
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
    r24 = arg2;
    r19 = self;
    r20 = [self readCachedString];
    if (*(int32_t *)(r19 + 0x40) >= 0xc) {
            [r19 readCachedString];
    }
    if ([r20 isEqualToString:@"CCNodeColor"] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r20 = r20;
            }
            else {
                    r20 = @"MCColorNode";
            }
    }
    r21 = @selector(isEqualToString:);
    var_70 = r21;
    if (objc_msgSend(r20, r21) != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r21 = r20;
            }
            else {
                    r21 = @"CCNodeRGBA";
            }
    }
    if (*(int8_t *)(r19 + 0x8) != 0x0) {
            r20 = [r19 readCachedString];
    }
    else {
            r20 = 0x0;
    }
    r9 = *(r19 + 0x18);
    r8 = sign_extend_64(*(int32_t *)(r19 + 0x20));
    r9 = r9 + r8;
    r11 = *(int8_t *)r9;
    r10 = r9 + 0x1;
    r12 = r11 & 0x7f;
    if ((r11 & 0x80) != 0x0) {
            r10 = *(int8_t *)(r9 + 0x1);
            asm { bfi        w12, w10, #0x7, #0x7 };
            if ((r10 & 0x80) == 0x0) {
                    r10 = r9 + 0x2;
            }
            else {
                    r10 = *(int8_t *)(r9 + 0x2);
                    asm { bfi        w12, w10, #0xe, #0x7 };
                    if ((r10 & 0x80) == 0x0) {
                            r10 = r9 + 0x3;
                    }
                    else {
                            r10 = *(int8_t *)(r9 + 0x3);
                            asm { bfi        w12, w10, #0x15, #0x7 };
                            if ((r10 & 0x80) == 0x0) {
                                    r10 = r9 + 0x4;
                            }
                            else {
                                    r10 = r9 + 0x5;
                                    asm { bfi        w12, w11, #0x1c, #0x4 };
                            }
                    }
            }
    }
    *(int32_t *)(r19 + 0x20) = r8 + (r10 - r9);
    var_EC = r12;
    if (r12 != 0x0) {
            r22 = [r19 readCachedString];
    }
    else {
            r22 = 0x0;
    }
    r0 = NSClassFromString(r21);
    if (r0 == 0x0) goto loc_10034a5f8;

loc_10034a490:
    var_100 = r22;
    r0 = [r0 alloc];
    r0 = [r0 init];
    r0 = [r0 autorelease];
    r28 = r0;
    [r0 setTag:0x0];
    r0 = *(r19 + 0x60);
    r1 = @selector(rootNode);
    var_F8 = r1;
    if (objc_msgSend(r0, r1) == 0x0) {
            [*(r19 + 0x60) setRootNode:r28];
    }
    if ([*(r19 + 0x60) owner] == 0x0) {
            [*(int128_t *)(r19 + 0x60) setOwner:*(int128_t *)(r19 + 0x58)];
    }
    if (*(r19 + 0xc0) == 0x0) {
            *(r19 + 0xc0) = r28;
    }
    if ([*(r19 + 0x60) absoluteRootNode] == 0x0) {
            [*(r19 + 0x60) setAbsoluteRootNode:*(r19 + 0xc0)];
    }
    if (*(int8_t *)(r19 + 0x8) != 0x0 && objc_msgSend(*(r19 + 0x60), var_F8) == r28) {
            [*(r19 + 0x60) setDocumentControllerName:r20];
    }
    r20 = [NSMutableDictionary dictionary];
    *(r19 + 0x70) = [[NSMutableSet alloc] init];
    r8 = *(r19 + 0x18);
    r9 = sign_extend_64(*(int32_t *)(r19 + 0x20));
    r10 = r8 + r9;
    r12 = *(int8_t *)r10;
    r11 = r10 + 0x1;
    r13 = r12 & 0x7f;
    if ((r12 & 0x80) != 0x0) {
            r11 = *(int8_t *)(r10 + 0x1);
            asm { bfi        w13, w11, #0x7, #0x7 };
            if ((r11 & 0x80) == 0x0) {
                    r11 = r10 + 0x2;
            }
            else {
                    r11 = *(int8_t *)(r10 + 0x2);
                    asm { bfi        w13, w11, #0xe, #0x7 };
                    if ((r11 & 0x80) == 0x0) {
                            r11 = r10 + 0x3;
                    }
                    else {
                            r11 = *(int8_t *)(r10 + 0x3);
                            asm { bfi        w13, w11, #0x15, #0x7 };
                            if ((r11 & 0x80) == 0x0) {
                                    r11 = r10 + 0x4;
                            }
                            else {
                                    r11 = r10 + 0x5;
                                    asm { bfi        w13, w12, #0x1c, #0x4 };
                            }
                    }
            }
    }
    r9 = r9 + (r11 - r10);
    *(int32_t *)(r19 + 0x20) = r9;
    if (r13 < 0x1) goto loc_10034aa2c;

loc_10034a648:
    r12 = 0x0;
    var_C8 = r24;
    stack[-208] = r28;
    var_D0 = r20;
    var_D4 = r13;
    goto loc_10034a670;

loc_10034a670:
    r8 = r8 + sign_extend_64(r9);
    r11 = *(int8_t *)r8;
    r10 = r8 + 0x1;
    r13 = r11 & 0x7f;
    var_AC = r12;
    if ((r11 & 0x80) != 0x0) goto loc_10034a690;

loc_10034a688:
    var_B0 = r13;
    goto loc_10034a6d4;

loc_10034a6d4:
    *(int32_t *)(r19 + 0x20) = r9 + (r10 - r8);
    var_68 = [NSMutableDictionary dictionary];
    r9 = *(r19 + 0x18);
    r8 = sign_extend_64(*(int32_t *)(r19 + 0x20));
    r9 = r9 + r8;
    r11 = *(int8_t *)r9;
    r10 = r9 + 0x1;
    r12 = r11 & 0x7f;
    if ((r11 & 0x80) != 0x0) {
            r10 = *(int8_t *)(r9 + 0x1);
            asm { bfi        w12, w10, #0x7, #0x7 };
            if ((r10 & 0x80) == 0x0) {
                    r10 = r9 + 0x2;
            }
            else {
                    r10 = *(int8_t *)(r9 + 0x2);
                    asm { bfi        w12, w10, #0xe, #0x7 };
                    if ((r10 & 0x80) == 0x0) {
                            r10 = r9 + 0x3;
                    }
                    else {
                            r10 = *(int8_t *)(r9 + 0x3);
                            asm { bfi        w12, w10, #0x15, #0x7 };
                            if ((r10 & 0x80) == 0x0) {
                                    r10 = r9 + 0x4;
                            }
                            else {
                                    r10 = r9 + 0x5;
                                    asm { bfi        w12, w11, #0x1c, #0x4 };
                            }
                    }
            }
    }
    *(int32_t *)(r19 + 0x20) = r8 + (r10 - r9);
    if (r12 >= 0x1) {
            r27 = 0x0;
            var_74 = r12;
            do {
                    r28 = [[[CCBSequenceProperty alloc] init] autorelease];
                    [r28 setName:[r19 readCachedString]];
                    r9 = *(r19 + 0x18);
                    r8 = sign_extend_64(*(int32_t *)(r19 + 0x20));
                    r9 = r9 + r8;
                    r11 = *(int8_t *)r9;
                    r10 = r9 + 0x1;
                    r2 = r11 & 0x7f;
                    if ((r11 & 0x80) != 0x0) {
                            r10 = *(int8_t *)(r9 + 0x1);
                            asm { bfi        w2, w10, #0x7, #0x7 };
                            if ((r10 & 0x80) == 0x0) {
                                    r10 = r9 + 0x2;
                            }
                            else {
                                    r10 = *(int8_t *)(r9 + 0x2);
                                    asm { bfi        w2, w10, #0xe, #0x7 };
                                    if ((r10 & 0x80) == 0x0) {
                                            r10 = r9 + 0x3;
                                    }
                                    else {
                                            r10 = *(int8_t *)(r9 + 0x3);
                                            asm { bfi        w2, w10, #0x15, #0x7 };
                                            if ((r10 & 0x80) == 0x0) {
                                                    r10 = r9 + 0x4;
                                            }
                                            else {
                                                    r10 = r9 + 0x5;
                                                    asm { bfi        w2, w11, #0x1c, #0x4 };
                                            }
                                    }
                            }
                    }
                    *(int32_t *)(r19 + 0x20) = r8 + (r10 - r9);
                    [r28 setType:r2];
                    if (objc_msgSend([r28 name], var_70) != 0x0) {
                            [r28 setName:@"displayFrame"];
                    }
                    [*(r19 + 0x70) addObject:[r28 name]];
                    r9 = *(r19 + 0x18);
                    r8 = sign_extend_64(*(int32_t *)(r19 + 0x20));
                    r9 = r9 + r8;
                    r11 = *(int8_t *)r9;
                    r10 = r9 + 0x1;
                    r24 = r11 & 0x7f;
                    if ((r11 & 0x80) != 0x0) {
                            r10 = *(int8_t *)(r9 + 0x1);
                            asm { bfi        w24, w10, #0x7, #0x7 };
                            if ((r10 & 0x80) == 0x0) {
                                    r10 = r9 + 0x2;
                            }
                            else {
                                    r10 = *(int8_t *)(r9 + 0x2);
                                    asm { bfi        w24, w10, #0xe, #0x7 };
                                    if ((r10 & 0x80) == 0x0) {
                                            r10 = r9 + 0x3;
                                    }
                                    else {
                                            r10 = *(int8_t *)(r9 + 0x3);
                                            asm { bfi        w24, w10, #0x15, #0x7 };
                                            if ((r10 & 0x80) == 0x0) {
                                                    r10 = r9 + 0x4;
                                            }
                                            else {
                                                    r10 = r9 + 0x5;
                                                    asm { bfi        w24, w11, #0x1c, #0x4 };
                                            }
                                    }
                            }
                    }
                    *(int32_t *)(r19 + 0x20) = r8 + (r10 - r9);
                    if (r24 >= 0x1) {
                            do {
                                    [r28 type];
                                    [r28 name];
                                    [[r28 keyframes] addObject:[r19 readKeyframeOfType:r2 name:r3]];
                                    r24 = r24 - 0x1;
                            } while (r24 != 0x0);
                    }
                    [r28 name];
                    [var_68 setObject:r2 forKey:r3];
                    r27 = r27 + 0x1;
            } while (r27 != var_74);
    }
    [NSNumber numberWithInt:var_B0];
    r20 = var_D0;
    [r20 setObject:r2 forKey:r3];
    r12 = var_AC + 0x1;
    r24 = var_C8;
    r28 = stack[-208];
    if (r12 == var_D4) goto loc_10034aa2c;

loc_10034aa20:
    r8 = *(r19 + 0x18);
    r9 = *(int32_t *)(r19 + 0x20);
    goto loc_10034a670;

loc_10034aa2c:
    if ([r20 count] != 0x0) {
            [*(r19 + 0x60) addNode:r28 andSequences:r20];
    }
    r8 = *(r19 + 0x18);
    r9 = sign_extend_64(*(int32_t *)(r19 + 0x20));
    r10 = r8 + r9;
    r11 = r10 + 0x1;
    if ((sign_extend_64(*(int8_t *)r10) & 0xffffffff80000000) != 0x0) {
            if ((sign_extend_64(*(int8_t *)(r10 + 0x1)) & 0xffffffff80000000) == 0x0) {
                    r11 = r10 + 0x2;
            }
            else {
                    if ((sign_extend_64(*(int8_t *)(r10 + 0x2)) & 0xffffffff80000000) == 0x0) {
                            r11 = r10 + 0x3;
                    }
                    else {
                            if (sign_extend_64(*(int8_t *)(r10 + 0x3)) < 0x0) {
                                    asm { cinc       x11, x11, lt };
                            }
                            r11 = r10 + 0x4;
                    }
            }
    }
    r9 = r9 + (r11 - r10);
    *(int32_t *)(r19 + 0x20) = r9;
    r10 = r8 + sign_extend_64(r9);
    r12 = *(int8_t *)r10;
    r11 = r10 + 0x1;
    r21 = r12 & 0x7f;
    if ((r12 & 0x80) != 0x0) {
            r11 = *(int8_t *)(r10 + 0x1);
            asm { bfi        w21, w11, #0x7, #0x7 };
            if ((r11 & 0x80) == 0x0) {
                    r11 = r10 + 0x2;
            }
            else {
                    r11 = *(int8_t *)(r10 + 0x2);
                    asm { bfi        w21, w11, #0xe, #0x7 };
                    if ((r11 & 0x80) == 0x0) {
                            r11 = r10 + 0x3;
                    }
                    else {
                            r11 = *(int8_t *)(r10 + 0x3);
                            asm { bfi        w21, w11, #0x15, #0x7 };
                            if ((r11 & 0x80) == 0x0) {
                                    r11 = r10 + 0x4;
                            }
                            else {
                                    r11 = r10 + 0x5;
                                    asm { bfi        w21, w12, #0x1c, #0x4 };
                            }
                    }
            }
    }
    r9 = r9 + (r11 - r10);
    *(int32_t *)(r19 + 0x20) = r9;
    r8 = r8 + sign_extend_64(r9);
    r12 = *(int8_t *)r8;
    r11 = r8 + 0x1;
    r10 = r12 & 0x7f;
    if ((r12 & 0x80) != 0x0) {
            r11 = *(int8_t *)(r8 + 0x1);
            asm { bfi        w10, w11, #0x7, #0x7 };
            if ((r11 & 0x80) == 0x0) {
                    r11 = r8 + 0x2;
            }
            else {
                    r11 = *(int8_t *)(r8 + 0x2);
                    asm { bfi        w10, w11, #0xe, #0x7 };
                    if ((r11 & 0x80) == 0x0) {
                            r11 = r8 + 0x3;
                    }
                    else {
                            r11 = *(int8_t *)(r8 + 0x3);
                            asm { bfi        w10, w11, #0x15, #0x7 };
                            if ((r11 & 0x80) == 0x0) {
                                    r11 = r8 + 0x4;
                            }
                            else {
                                    r11 = r8 + 0x5;
                                    asm { bfi        w10, w12, #0x1c, #0x4 };
                            }
                    }
            }
    }
    *(int32_t *)(r19 + 0x20) = r9 + (r11 - r8);
    r22 = r10 + r21;
    if (r22 >= 0x1) {
            r23 = 0x0;
            do {
                    [r19 readPropertyForNode:r2 parent:r3 isExtraProp:r4];
                    r23 = r23 + 0x1;
            } while (r22 != r23);
    }
    r2 = [CCBFile class];
    if (([r28 isKindOfClass:r2] & 0x1) != 0x0) {
            r20 = [r28 ccbFile];
            [r28 position];
            [r20 setPosition:r2];
            [r28 rotation];
            [r20 setRotation:r2];
            [r28 scaleX];
            [r20 setScaleX:r2];
            [r28 scaleY];
            [r20 setScaleY:r2];
            [r28 tag];
            [r20 setTag:r2];
            [r20 setVisible:[r28 visible]];
            [*(r19 + 0x60) moveAnimationsFromNode:r28 toNode:r20];
            [r28 setCcbFile:0x0];
            r28 = r20;
    }
    if (*(int8_t *)(r19 + 0x8) == 0x0) goto loc_10034ad30;

loc_10034ad00:
    r8 = var_EC;
    if (r8 != 0x0) {
            if (r8 == 0x2) {
                    r0 = *(r19 + 0x88);
                    r20 = @selector(addObject:);
                    objc_msgSend(r0, r20);
                    r0 = *(r19 + 0x90);
            }
            else {
                    r0 = *(r19 + 0x60);
                    r0 = [r0 documentOutletNames];
                    r20 = @selector(addObject:);
                    objc_msgSend(r0, r20);
                    r0 = *(r19 + 0x60);
                    r0 = [r0 documentOutletNodes];
            }
            objc_msgSend(r0, r20);
    }
    goto loc_10034adb0;

loc_10034adb0:
    [*(r19 + 0x70) release];
    *(r19 + 0x70) = 0x0;
    r9 = *(r19 + 0x18);
    r8 = sign_extend_64(*(int32_t *)(r19 + 0x20));
    r8 = r8 + 0x1;
    *(int32_t *)(r19 + 0x20) = r8;
    r9 = r9 + r8;
    r11 = *(int8_t *)r9;
    r10 = r9 + 0x1;
    r27 = r11 & 0x7f;
    if ((r11 & 0x80) != 0x0) {
            r10 = *(int8_t *)(r9 + 0x1);
            asm { bfi        w27, w10, #0x7, #0x7 };
            if ((r10 & 0x80) == 0x0) {
                    r10 = r9 + 0x2;
            }
            else {
                    r10 = *(int8_t *)(r9 + 0x2);
                    asm { bfi        w27, w10, #0xe, #0x7 };
                    if ((r10 & 0x80) == 0x0) {
                            r10 = r9 + 0x3;
                    }
                    else {
                            r10 = *(int8_t *)(r9 + 0x3);
                            asm { bfi        w27, w10, #0x15, #0x7 };
                            if ((r10 & 0x80) == 0x0) {
                                    r10 = r9 + 0x4;
                            }
                            else {
                                    r10 = r9 + 0x5;
                                    asm { bfi        w27, w11, #0x1c, #0x4 };
                            }
                    }
            }
    }
    *(int32_t *)(r19 + 0x20) = r8 + (r10 - r9);
    if (r27 >= 0x1) {
            do {
                    r0 = [r19 readNodeGraphParent:r28];
                    if (r0 != 0x0) {
                            r26 = r0;
                            if (objc_msgSend(NSStringFromClass([r28 class]), var_70) != 0x0) {
                                    r23 = @selector(setZOrder:);
                                    [r28 zOrder] + 0x1;
                                    objc_msgSend(r26, r23);
                            }
                            [r28 addChild:r2];
                    }
                    r27 = r27 - 0x1;
            } while (r27 != 0x0);
    }
    goto loc_10034aed8;

loc_10034aed8:
    r0 = r28;
    return r0;

loc_10034ad30:
    r8 = var_EC;
    if (r8 == 0x0) goto loc_10034adb0;

loc_10034ad38:
    r8 = r8 - 0x1;
    if (r8 > 0x3) goto loc_10034adb0;

loc_10034ad44:
    r0 = (0x10034ad5c + *(int8_t *)(0x100bcd1ff + r8) * 0x4)();
    return r0;

loc_10034a690:
    r10 = *(int8_t *)(r8 + 0x1);
    asm { bfi        w13, w10, #0x7, #0x7 };
    if ((r10 & 0x80) != 0x0) goto loc_10034a6a8;

loc_10034a69c:
    var_B0 = r13;
    r10 = r8 + 0x2;
    goto loc_10034a6d4;

loc_10034a6a8:
    r10 = *(int8_t *)(r8 + 0x2);
    asm { bfi        w13, w10, #0xe, #0x7 };
    if ((r10 & 0x80) != 0x0) goto loc_10034a6c0;

loc_10034a6b4:
    var_B0 = r13;
    r10 = r8 + 0x3;
    goto loc_10034a6d4;

loc_10034a6c0:
    r10 = *(int8_t *)(r8 + 0x3);
    asm { bfi        w13, w10, #0x15, #0x7 };
    if ((r10 & 0x80) != 0x0) goto loc_10034a74c;

loc_10034a6cc:
    var_B0 = r13;
    r10 = r8 + 0x4;
    goto loc_10034a6d4;

loc_10034a74c:
    r10 = r8 + 0x5;
    asm { bfi        w13, w11, #0x1c, #0x4 };
    goto loc_10034a688;

loc_10034a5f8:
    r28 = 0x0;
    goto loc_10034aed8;
}

-(void *)ownerOutletNodes {
    r0 = *(self + 0x90);
    return r0;
}

-(void *)ownerCallbackNames {
    r0 = *(self + 0x98);
    return r0;
}

-(void *)ownerCallbackNodes {
    r0 = *(self + 0xa0);
    return r0;
}

-(void *)nodesWithAnimationManagers {
    r0 = *(self + 0xa8);
    return r0;
}

-(void *)animationManagersForNodes {
    r0 = *(self + 0xb0);
    return r0;
}

-(void *)animationManagers {
    r0 = *(self + 0xb8);
    return r0;
}

-(void)setAnimationManagers:(void *)arg2 {
    *(self + 0xb8) = arg2;
    return;
}

-(void *)absoluteRootNode {
    r0 = *(self + 0xc0);
    return r0;
}

-(void)setAbsoluteRootNode:(void *)arg2 {
    *(self + 0xc0) = arg2;
    return;
}

-(bool)skipDidLoadCall {
    r0 = *(int8_t *)(self + 0xc8);
    return r0;
}

-(void)setSkipDidLoadCall:(bool)arg2 {
    *(int8_t *)(self + 0xc8) = arg2;
    return;
}

@end