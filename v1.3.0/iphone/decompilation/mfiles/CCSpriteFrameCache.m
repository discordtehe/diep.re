@implementation CCSpriteFrameCache

+(void *)sharedSpriteFrameCache {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011d3098;
    if (r0 == 0x0) {
            r0 = [CCSpriteFrameCache alloc];
            r0 = [r0 init];
            *0x1011d3098 = r0;
    }
    return r0;
}

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
            *(r19 + 0x8) = [[NSMutableDictionary alloc] initWithCapacity:0x64];
            *(r19 + 0x10) = [[NSMutableDictionary alloc] initWithCapacity:0xa];
            *(r19 + 0x18) = [[NSMutableSet alloc] initWithCapacity:0x1e];
    }
    r0 = r19;
    return r0;
}

+(void *)alloc {
    r0 = [[&var_10 super] alloc];
    return r0;
}

+(void)purgeSharedSpriteFrameCache {
    [*0x1011d3098 release];
    *0x1011d3098 = 0x0;
    return;
}

-(void *)description {
    [self class];
    r0 = *(self + 0x8);
    [r0 count];
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void)dealloc {
    [*(self + 0x8) release];
    [*(self + 0x10) release];
    [*(self + 0x18) release];
    [[&var_20 super] dealloc];
    return;
}

-(void)addSpriteFramesWithDictionary:(void *)arg2 textureReference:(void *)arg3 {
    [self addSpriteFramesWithDictionary:arg2 textureReference:arg3 scale:r4];
    return;
}

-(void)addSpriteFramesWithDictionary:(void *)arg2 textureFilename:(void *)arg3 {
    [self addSpriteFramesWithDictionary:arg2 textureReference:arg3 scale:r4];
    return;
}

-(void)addSpriteFramesWithDictionary:(void *)arg2 texture:(void *)arg3 {
    [self addSpriteFramesWithDictionary:arg2 textureReference:arg3 scale:r4];
    return;
}

-(void)addSpriteFramesWithDictionary:(void *)arg2 textureFilename:(void *)arg3 scale:(float)arg4 {
    [self addSpriteFramesWithDictionary:arg2 textureReference:arg3 scale:arg4];
    return;
}

-(void)addSpriteFramesWithDictionary:(void *)arg2 texture:(void *)arg3 scale:(float)arg4 {
    [self addSpriteFramesWithDictionary:arg2 textureReference:arg3 scale:arg4];
    return;
}

-(void)addSpriteFramesWithFile:(void *)arg2 textureReference:(void *)arg3 {
    r31 = r31 - 0xa0;
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
    r20 = arg3;
    r22 = arg2;
    r19 = self;
    if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] == 0x0) goto loc_1002ceeac;

loc_1002cee90:
    if (r22 != 0x0) {
            r1 = [r22 UTF8String];
    }
    else {
            r1 = "";
    }
    sub_1002cde24(&var_80, r1);
    r0 = sub_10042ccfc(&var_80);
    if ((sign_extend_64(var_69) & 0xffffffff80000000) != 0x0) {
            operator delete(var_80);
    }
    r9 = var_68;
    r8 = &var_68;
    if (sign_extend_64(var_51) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r2 = r8;
            }
            else {
                    r2 = r9;
            }
    }
    r22 = [NSString stringWithUTF8String:r2];
    if ([*(r19 + 0x18) member:r22] != 0x0) goto loc_1002cf0c4;

loc_1002cefd8:
    if ([[CCConfiguration sharedConfiguration] useNewPlistSerialization] == 0x0) goto loc_1002cf06c;

loc_1002ceffc:
    r0 = sub_100316830(&var_68, &var_80, 0x0);
    if (var_88 == 0x0) goto loc_1002cf1dc;

loc_1002cf018:
    r0 = sub_10042cc50(&var_80);
    v8 = v0;
    if (sub_10032c03c() != 0x0) {
            sub_10042cc74();
            asm { fdiv       s0, s8, s0 };
    }
    [r19 addSpriteFramesWithValue:&stack[-160] textureReference:r20 scale:r4];
    sub_1009ca77c(&stack[-160]);
    goto loc_1002cf0a0;

loc_1002cf0a0:
    [*(r19 + 0x18) addObject:r2];
    goto loc_1002cf0b4;

loc_1002cf0b4:
    if ((sign_extend_64(var_69) & 0xffffffff80000000) != 0x0) {
            operator delete(var_80);
    }
    goto loc_1002cf0c4;

loc_1002cf0c4:
    if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
            operator delete(var_68);
    }
    return;

loc_1002cf1dc:
    sub_1009ca77c(&stack[-160]);
    goto loc_1002cf0b4;

loc_1002cf06c:
    r0 = sub_1003166c4(&var_68, &var_80, 0x0);
    r21 = r0;
    r0 = sub_10042cc50(&var_80);
    [r19 addSpriteFramesWithDictionary:r21 texture:r20 scale:r4];
    goto loc_1002cf0a0;

loc_1002ceeac:
    r23 = [[CCFileUtils sharedFileUtils] fullPathForFilename:r22 resolutionType:&var_80 andResourcePack:&var_68];
    r22 = [CCFileUtils sharedFileUtils];
    r22 = [r22 removeSuffixFromFile:[[CCFileUtils sharedFileUtils] fullPathToRelativePath:r23]];
    if ([*(r19 + 0x18) member:r22] == 0x0) {
            r23 = [NSDictionary dictionaryWithContentsOfFile:r23];
            if (var_80 != 0x0) {
                    r0 = [CCConfiguration sharedConfiguration];
                    r0 = [r0 runningDevice];
                    if (r0 < 0x5) {
                            if (var_80 == 0x1) {
                                    asm { fcsel      s8, s0, s8, eq };
                            }
                    }
                    else {
                            if (r0 == 0x5) {
                                    r8 = var_80;
                                    if (r8 == 0x1) {
                                            asm { fcsel      s0, s0, s8, eq };
                                    }
                                    if (r8 < 0x6) {
                                            asm { fcsel      s8, s1, s0, lo };
                                    }
                            }
                    }
            }
            else {
                    if (([var_68 isEqualToString:r2] & 0x1) == 0x0) {
                            [[CCResourcePackManager sharedInstance] scaleForAssetOfPack:r2];
                            v8 = v0;
                    }
                    if (var_80 != 0x0) {
                            r0 = [CCConfiguration sharedConfiguration];
                            r0 = [r0 runningDevice];
                            if (r0 < 0x5) {
                                    if (var_80 == 0x1) {
                                            asm { fcsel      s8, s0, s8, eq };
                                    }
                            }
                            else {
                                    if (r0 == 0x5) {
                                            r8 = var_80;
                                            if (r8 == 0x1) {
                                                    asm { fcsel      s0, s0, s8, eq };
                                            }
                                            if (r8 < 0x6) {
                                                    asm { fcsel      s8, s1, s0, lo };
                                            }
                                    }
                            }
                    }
            }
            [r19 addSpriteFramesWithDictionary:r23 texture:r20 scale:r4];
            [*(r19 + 0x18) addObject:r2];
    }
    return;
}

-(void)addSpriteFramesWithFile:(void *)arg2 textureFilename:(void *)arg3 {
    [self addSpriteFramesWithFile:arg2 textureReference:arg3];
    return;
}

-(void)addSpriteFramesWithFile:(void *)arg2 texture:(void *)arg3 {
    [self addSpriteFramesWithFile:arg2 textureReference:arg3];
    return;
}

-(void)addSpriteFramesWithFile:(void *)arg2 {
    [self addSpriteFramesWithFile:arg2 assumeSD:0x1];
    return;
}

-(void)addSpriteFrame:(void *)arg2 name:(void *)arg3 {
    [*(self + 0x8) setObject:r2 forKey:r3];
    return;
}

-(void)removeSpriteFrames {
    [*(self + 0x8) removeAllObjects];
    objc_msgSend(*(self + 0x10), r20);
    objc_msgSend(*(self + 0x18), r20);
    return;
}

-(void)addSpriteFramesWithValue:(struct Value *)arg2 textureReference:(void *)arg3 scale:(float)arg4 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
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
    r29 = &saved_fp;
    if (*(int32_t *)(r2 + 0x8) != 0x6) goto .l15;

loc_1002ce938:
    v8 = v0;
    r19 = r3;
    r20 = r0;
    r22 = *r2;
    sub_1002cde24(r29 - 0xa0, "metadata");
    r21 = sub_1002c1520(r22, r29 - 0xa0);
    if ((sign_extend_64(var_89) & 0xffffffff80000000) != 0x0) goto loc_1002ce988;

loc_1002ce980:
    if (r21 != 0x0) goto loc_1002ce994;

loc_1002cea60:
    sub_1002cde24(r29 - 0xa0, "frames");
    r22 = sub_1002c1520(r22, r29 - 0xa0);
    if ((sign_extend_64(var_89) & 0xffffffff80000000) != 0x0) goto loc_1002cea90;

loc_1002cea88:
    if (r22 != 0x0) goto loc_1002cea9c;

.l15:
    return;

loc_1002cea9c:
    if (*(int32_t *)(r22 + 0x30) != 0x6) goto .l15;

loc_1002ceaa8:
    r28 = *(*(r22 + 0x28) + 0x10);
    if (r28 == 0x0) goto .l15;

loc_1002ceab4:
    var_120 = r21 - 0x1;
    goto loc_1002ceb34;

loc_1002ceb34:
    if (*(int32_t *)(r28 + 0x30) != 0x6) goto loc_1002ced70;

loc_1002ceb40:
    r0 = [NSString alloc];
    r2 = r28 + 0x10;
    if ((sign_extend_64(*(int8_t *)(r28 + 0x27)) & 0xffffffff80000000) != 0x0) {
            r2 = *r2;
    }
    r23 = [r0 initWithUTF8String:r2];
    r0 = 0x1011e6e48;
    if (*(int32_t *)(r28 + 0x30) == 0x6) {
            r0 = *(r28 + 0x28);
    }
    if (var_120 >= 0x2) {
            if (r21 != 0x3) {
                    if (r21 == 0x0) {
                            r0 = sub_1002cdec0(r0, r29 - 0xa0, r29 - 0xa1, &var_B8, &var_C8);
                    }
            }
            else {
                    r5 = r23;
                    r0 = sub_1002ce4e0(r0, r29 - 0xa0, r29 - 0xa1, &var_B8, &var_C8, r5, *(r20 + 0x10));
            }
    }
    else {
            if (r21 == 0x2) {
                    if (CPU_FLAGS & E) {
                            r5 = 0x1;
                    }
            }
            r0 = sub_1002ce244(r0, r29 - 0xa0, r29 - 0xa1, &var_B8, &var_C8, r5);
    }
    r2 = [NSString class];
    if (([r19 isKindOfClass:r2] & 0x1) == 0x0) goto loc_1002cecd0;

loc_1002cec18:
    if (r19 == 0x0) goto loc_1002cecfc;

loc_1002cec1c:
    sub_1002cde24(&var_110, [r19 UTF8String]);
    r0 = sub_10098f664(&var_110);
    r0 = sub_10042ccfc(&var_F8);
    r9 = var_E0;
    r8 = &var_E0;
    if (sign_extend_64(var_C9) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r2 = r8;
            }
            else {
                    r2 = r9;
            }
    }
    r27 = [NSString stringWithUTF8String:r2];
    if ((sign_extend_64(var_C9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_E0);
    }
    if ((sign_extend_64(var_E1) & 0xffffffff80000000) != 0x0) {
            operator delete(var_F8);
    }
    if ((sign_extend_64(var_F9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_110);
    }
    r0 = [CCSpriteFrame alloc];
    r1 = @selector(initWithTextureFilename:rectInPixels:rotated:offset:originalSize:);
    goto loc_1002ced28;

loc_1002ced28:
    r0 = objc_msgSend(r0, r1);
    [r0 setSpritesheetSize:r2];
    [*(r20 + 0x8) setObject:r2 forKey:r3];
    objc_msgSend(r27, r26);
    objc_msgSend(r23, r26);
    goto loc_1002ced70;

loc_1002ced70:
    r28 = *r28;
    if (r28 != 0x0) goto loc_1002ceb34;
    goto .l15;

loc_1002cecfc:
    r27 = 0x0;
    goto loc_1002ced00;

loc_1002ced00:
    r0 = [CCSpriteFrame alloc];
    r1 = @selector(initWithTexture:rectInPixels:rotated:offset:originalSize:);
    goto loc_1002ced28;

loc_1002cecd0:
    r27 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
    if ([r19 isKindOfClass:[CCTexture2D class]] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r27 = 0x0;
            }
            else {
                    r27 = r19;
            }
    }
    goto loc_1002ced00;

loc_1002cea90:
    operator delete(var_A0);
    if (r22 == 0x0) goto .l15;
    goto loc_1002cea9c;

loc_1002ce994:
    if (*(int32_t *)(r21 + 0x30) != 0x6) goto .l15;

loc_1002ce9a0:
    r21 = *(r21 + 0x28);
    sub_1002cde24(r29 - 0xa0, "size");
    r23 = sub_1002c1520(r21, r29 - 0xa0);
    if ((sign_extend_64(var_89) & 0xffffffff80000000) != 0x0) {
            operator delete(var_A0);
    }
    if (r23 != 0x0 && *(int32_t *)(r23 + 0x30) == 0x4) {
            r0 = *(r23 + 0x28);
            if ((sign_extend_64(*(int8_t *)(r0 + 0x17)) & 0xffffffff80000000) != 0x0) {
                    r0 = *r0;
            }
            sscanf(r0, "{%lg, %lg}");
    }
    sub_1002cde24(r29 - 0xa0, "format");
    r21 = sub_1002c1520(r21, r29 - 0xa0);
    if ((sign_extend_64(var_89) & 0xffffffff80000000) != 0x0) goto loc_1002cea3c;

loc_1002cea34:
    if (r21 != 0x0) goto loc_1002cea48;
    goto loc_1002cea60;

loc_1002cea48:
    r0 = sub_1009caf88(r21 + 0x28, 0x0);
    r21 = r0;
    if (r0 > 0x3) goto .l15;
    goto loc_1002cea60;

loc_1002cea3c:
    operator delete(var_A0);
    if (r21 == 0x0) goto loc_1002cea60;
    goto loc_1002cea48;

loc_1002ce988:
    operator delete(var_A0);
    if (r21 == 0x0) goto loc_1002cea60;
}

-(void)removeUnusedSpriteFrames {
    r31 = r31 - 0x140;
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
    r0 = *(self + 0x8);
    r0 = [r0 allKeys];
    r20 = r0;
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r22 = r0;
            r28 = 0x0;
            r27 = *var_110;
            do {
                    r21 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(r20);
                            }
                            r26 = *(var_118 + r21 * 0x8);
                            if ([[*(r19 + 0x8) objectForKey:r26] retainCount] == 0x1) {
                                    [*(r19 + 0x8) removeObjectForKey:r2];
                                    r28 = 0x1;
                            }
                            r21 = r21 + 0x1;
                    } while (r21 < r22);
                    r0 = objc_msgSend(r20, var_128);
                    r22 = r0;
            } while (r0 != 0x0);
            if ((r28 & 0x1) != 0x0) {
                    [*(r19 + 0x18) removeAllObjects];
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)removeSpriteFrameByName:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            var_30 = r22;
            stack[-40] = r21;
            r31 = r31 + 0xffffffffffffffd0;
            var_20 = r20;
            stack[-24] = r19;
            var_10 = r29;
            stack[-8] = r30;
            r20 = r2;
            r19 = r0;
            r2 = [*(r0 + 0x10) objectForKey:r2];
            r0 = *(r19 + 0x8);
            if (r2 != 0x0) {
                    [r0 removeObjectForKey:r2];
                    r0 = *(r19 + 0x10);
            }
            [r0 removeObjectForKey:r2];
            [*(r19 + 0x18) removeAllObjects];
    }
    return;
}

-(void)addSpriteFramesWithDictionary:(void *)arg2 textureReference:(void *)arg3 scale:(float)arg4 {
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
    r31 = r31 + 0xffffffffffffff60 - 0x2b0;
    var_2BC = s0;
    r23 = arg3;
    r20 = self;
    *(r29 + 0xffffffffffffff60) = **___stack_chk_guard;
    r21 = @selector(objectForKey:);
    r19 = objc_msgSend(arg2, r21);
    r27 = objc_msgSend(arg2, r21);
    var_2B0 = r19;
    if (r19 != 0x0) {
            r28 = [[r19 objectForKey:r2] intValue];
    }
    else {
            r28 = 0x0;
    }
    v0 = 0x0;
    var_1E0 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_268 = r1;
    r0 = objc_msgSend(r27, r1);
    var_280 = r0;
    if (r0 == 0x0) goto loc_1002cdda0;

loc_1002cd600:
    var_2CC = r28 - 0x1;
    var_2B8 = *var_1E0;
    asm { fcvt       d14, s0 };
    var_340 = r27;
    stack[-824] = r23;
    var_344 = r28;
    goto loc_1002cd624;

loc_1002cd624:
    r19 = 0x0;
    r25 = @selector(class);
    var_2D8 = r25;
    goto loc_1002cd6fc;

loc_1002cd6fc:
    if (*var_1E0 != var_2B8) {
            objc_enumerationMutation(r27);
    }
    r21 = @selector(objectForKey:);
    r26 = *(var_1E8 + r19 * 0x8);
    r24 = objc_msgSend(r27, r21);
    if (r28 != 0x0) {
            if (var_2CC <= 0x1) {
                    [r24 objectForKey:r2];
                    CGRectFromString();
                    v8 = v0;
                    v15 = v2;
                    if (r28 == 0x2) {
                            var_26C = [[r24 objectForKey:r2] boolValue];
                    }
                    else {
                            var_26C = 0x0;
                    }
                    [r24 objectForKey:r2];
                    CGPointFromString();
                    v11 = v0;
                    v13 = v1;
                    objc_msgSend(r24, r21);
                    CGSizeFromString();
                    d2 = d8 * d14;
                    if (var_2BC == 0x3ff0000000000000) {
                            asm { fcsel      d0, d0, d16, eq };
                    }
                    if (CPU_FLAGS & E) {
                            asm { fcsel      d10, d1, d17, eq };
                    }
                    if (CPU_FLAGS & E) {
                            asm { fcsel      d11, d11, d6, eq };
                    }
                    if (CPU_FLAGS & E) {
                            asm { fcsel      d13, d13, d7, eq };
                    }
                    if (CPU_FLAGS & E) {
                            asm { fcsel      d1, d8, d2, eq };
                    }
                    if (CPU_FLAGS & E) {
                            asm { fcsel      d2, d12, d3, eq };
                    }
                    var_278 = d2;
                    v12 = v1;
                    if (CPU_FLAGS & E) {
                            asm { fcsel      d15, d15, d4, eq };
                    }
                    if (CPU_FLAGS & E) {
                            asm { fcsel      d8, d9, d5, eq };
                    }
                    v9 = v0;
            }
            else {
                    if (r28 == 0x3) {
                            [r24 objectForKey:r2];
                            CGSizeFromString();
                            v13 = v0;
                            var_318 = d1;
                            objc_msgSend(r24, r21);
                            CGPointFromString();
                            v11 = v0;
                            v12 = v1;
                            objc_msgSend(r24, r21);
                            CGSizeFromString();
                            v9 = v0;
                            v10 = v1;
                            objc_msgSend(r24, r21);
                            CGRectFromString();
                            v8 = v0;
                            v15 = v1;
                            var_26C = [objc_msgSend(r24, r21) boolValue];
                            r0 = objc_msgSend(r24, r21);
                            r24 = r0;
                            var_220 = q0;
                            r0 = objc_msgSend(r0, var_268);
                            if (r0 != 0x0) {
                                    r27 = r0;
                                    r23 = *var_220;
                                    do {
                                            r25 = 0x0;
                                            do {
                                                    if (*var_220 != r23) {
                                                            objc_enumerationMutation(r24);
                                                    }
                                                    r21 = @selector(objectForKey:);
                                                    objc_msgSend(*(r20 + 0x10), r21);
                                                    objc_msgSend(*(r20 + 0x10), r22);
                                                    r25 = r25 + 0x1;
                                            } while (r25 < r27);
                                            r0 = objc_msgSend(r24, var_268);
                                            r27 = r0;
                                    } while (r0 != 0x0);
                            }
                            d0 = d13 * d14;
                            d2 = d11 * d14;
                            if (var_2BC == 0x3ff0000000000000) {
                                    asm { fcsel      d9, d9, d4, eq };
                            }
                            if (CPU_FLAGS & E) {
                                    asm { fcsel      d10, d10, d5, eq };
                            }
                            if (CPU_FLAGS & E) {
                                    asm { fcsel      d11, d11, d2, eq };
                            }
                            if (CPU_FLAGS & E) {
                                    asm { fcsel      d13, d12, d3, eq };
                            }
                            if (CPU_FLAGS & E) {
                                    asm { fcsel      d12, d8, d6, eq };
                            }
                            if (CPU_FLAGS & E) {
                                    asm { fcsel      d2, d15, d7, eq };
                            }
                            var_278 = d2;
                            if (CPU_FLAGS & E) {
                                    asm { fcsel      d15, d4, d0, eq };
                            }
                            if (CPU_FLAGS & E) {
                                    asm { fcsel      d8, d16, d1, eq };
                            }
                            r27 = var_340;
                            r23 = stack[-824];
                            r28 = var_344;
                            r25 = var_2D8;
                    }
            }
    }
    else {
            r21 = @selector(objectForKey:);
            var_2E8 = @selector(intValue);
            [objc_msgSend(r24, r21) floatValue];
            v8 = v0;
            [objc_msgSend(r24, r21) floatValue];
            v9 = v0;
            [objc_msgSend(r24, r21) floatValue];
            v10 = v0;
            [objc_msgSend(r24, r21) floatValue];
            v11 = v0;
            [objc_msgSend(r24, r21) floatValue];
            v13 = v0;
            [objc_msgSend(r24, r21) floatValue];
            r22 = objc_msgSend(objc_msgSend(r24, r21), var_2E8);
            r0 = objc_msgSend(r24, r21);
            r0 = objc_msgSend(r0, var_2E8);
            if (r22 < 0x0) {
                    asm { cneg       w8, w22, mi };
            }
            if (r0 < 0x0) {
                    asm { cneg       w9, w0, mi };
            }
            s1 = var_2BC;
            if (s1 != 0x3ff0000000000000) {
                    s0 = 0x3ff0000000000000;
                    s8 = s8 * s1;
                    s9 = s9 * s1;
                    s10 = s10 * s1;
                    s11 = s11 * s1;
                    s13 = s13 * s1;
                    asm { scvtf      s0, w8 };
                    asm { fcvtzs     w8, s0 };
                    s12 = s12 * s1;
                    asm { scvtf      s0, w9 };
                    asm { fcvtzs     w9, s0 };
            }
            r25 = var_2D8;
            var_26C = 0x0;
            asm { fcvt       d0, s8 };
            asm { fcvt       d1, s9 };
            var_278 = d1;
            asm { fcvt       d15, s10 };
            asm { fcvt       d8, s11 };
            asm { fcvt       d11, s13 };
            asm { fcvt       d13, s12 };
            v12 = v0;
            asm { scvtf      d9, w8 };
            asm { scvtf      d10, w9 };
    }
    r2 = objc_msgSend(@class(NSString), r25);
    r22 = @selector(isKindOfClass:);
    if ((objc_msgSend(r23, r22) & 0x1) == 0x0) goto loc_1002cdbf8;

loc_1002cdbb0:
    if (r23 == 0x0) goto loc_1002cdc24;

loc_1002cdbb4:
    if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] != 0x0) {
            r0 = [r23 lastPathComponent];
            if (r0 != 0x0) {
                    r1 = [r0 UTF8String];
            }
            else {
                    r1 = "";
            }
            sub_1002cde24(&var_260, r1);
            r0 = sub_10042ccfc(&var_260);
            r9 = var_248;
            r8 = &var_248;
            if (sign_extend_64(var_231) < 0x0) {
                    if (!CPU_FLAGS & L) {
                            r2 = r8;
                    }
                    else {
                            r2 = r9;
                    }
            }
            r22 = [NSString stringWithUTF8String:r2];
            if ((sign_extend_64(var_231) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_248);
            }
            if ((sign_extend_64(var_249) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_260);
            }
    }
    else {
            r22 = [CCFileUtils sharedFileUtils];
            r22 = [r22 removeSuffixFromFile:[r23 lastPathComponent]];
    }
    r0 = [CCSpriteFrame alloc];
    r1 = @selector(initWithTextureFilename:rectInPixels:rotated:offset:originalSize:);
    goto loc_1002cdcfc;

loc_1002cdcfc:
    r21 = @selector(objectForKey:);
    v0 = v12;
    d1 = var_278;
    v2 = v15;
    v3 = v8;
    objc_msgSend(r0, r1);
    objc_msgSend(var_2B0, r21);
    CGSizeFromString();
    [r24 setSpritesheetSize:@"size"];
    [*(r20 + 0x8) setObject:r24 forKey:r26];
    [r24 release];
    r19 = r19 + 0x1;
    if (r19 < var_280) goto loc_1002cd6fc;

loc_1002cdd7c:
    r0 = objc_msgSend(r27, var_268);
    var_280 = r0;
    if (r0 != 0x0) goto loc_1002cd624;

loc_1002cdda0:
    if (**___stack_chk_guard != *(r29 + 0xffffffffffffff60)) {
            __stack_chk_fail();
    }
    return;

loc_1002cdc24:
    r22 = 0x0;
    goto loc_1002cdc28;

loc_1002cdc28:
    r0 = [CCSpriteFrame alloc];
    r1 = @selector(initWithTexture:rectInPixels:rotated:offset:originalSize:);
    goto loc_1002cdcfc;

loc_1002cdbf8:
    objc_msgSend(@class(CCTexture2D), r25);
    if (objc_msgSend(r23, r22) != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r22 = 0x0;
            }
            else {
                    r22 = r23;
            }
    }
    goto loc_1002cdc28;
}

-(void)removeSpriteFramesFromDictionary:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r21 = [arg2 objectForKey:r2];
    r22 = [NSMutableArray array];
    var_110 = q0;
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r24 = r0;
            r27 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(r21);
                            }
                            r20 = @selector(objectForKey:);
                            r26 = *(var_118 + r28 * 0x8);
                            if (objc_msgSend(*(r19 + 0x8), r20) != 0x0) {
                                    [r22 addObject:r2];
                            }
                            r28 = r28 + 0x1;
                    } while (r28 < r24);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r24 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [*(r19 + 0x8) removeObjectsForKeys:r22];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)removeSpriteFramesFromFile:(void *)arg2 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = self;
    if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] == 0x0) goto loc_1002cfd4c;

loc_1002cfd30:
    if (r21 != 0x0) {
            r1 = [r21 UTF8String];
    }
    else {
            r1 = "";
    }
    sub_1002cde24(&var_60, r1);
    r0 = sub_10042ccfc(&var_60);
    if ((sign_extend_64(var_49) & 0xffffffff80000000) != 0x0) {
            operator delete(var_60);
    }
    if ([[CCConfiguration sharedConfiguration] useNewPlistSerialization] == 0x0) goto loc_1002cfea4;

loc_1002cfe6c:
    r0 = sub_1003167cc(&var_48, 0x0);
    if (var_58 == 0x0) goto loc_1002cff1c;

loc_1002cfe84:
    [r19 removeSpriteFramesFromValue:&var_60];
    sub_1009ca77c(&var_60);
    goto loc_1002cfec4;

loc_1002cfec4:
    r9 = var_48;
    r8 = &var_48;
    if (sign_extend_64(var_31) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r2 = r8;
            }
            else {
                    r2 = r9;
            }
    }
    r2 = [NSString stringWithUTF8String:r2];
    r0 = *(r19 + 0x18);
    r0 = [r0 member:r2];
    r2 = r0;
    if (r0 != 0x0) {
            [*(r19 + 0x18) removeObject:r2];
    }
    goto loc_1002cff24;

loc_1002cff24:
    if ((sign_extend_64(*(int8_t *)(&var_48 + 0x17)) & 0xffffffff80000000) != 0x0) {
            operator delete(var_48);
    }
    return;

loc_1002cff1c:
    sub_1009ca77c(&var_60);
    goto loc_1002cff24;

loc_1002cfea4:
    r0 = sub_100316658(&var_48, 0x0);
    [r19 removeSpriteFramesFromDictionary:r0];
    goto loc_1002cfec4;

loc_1002cfd4c:
    r21 = [[CCFileUtils sharedFileUtils] fullPathForFilename:r21];
    [r19 removeSpriteFramesFromDictionary:[NSDictionary dictionaryWithContentsOfFile:r21]];
    r22 = [CCFileUtils sharedFileUtils];
    r2 = [[CCFileUtils sharedFileUtils] fullPathToRelativePath:r21];
    r2 = [r22 removeSuffixFromFile:r2];
    r0 = *(r19 + 0x18);
    r0 = [r0 member:r2];
    if (r0 != 0x0) {
            [*(r19 + 0x18) removeObject:r0];
    }
    return;
}

-(void)removeSpriteFramesFromValue:(struct Value *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int32_t *)(r2 + 0x8) == 0x6) {
            r19 = r0;
            sub_1002cde24(&var_48, "frames");
            r0 = sub_1002c1520(r20, &var_48);
            r20 = r0;
            if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_48);
            }
            if (r20 != 0x0) {
                    if (*(int32_t *)(r20 + 0x30) == 0x6) {
                            r8 = *(r20 + 0x28);
                    }
                    else {
                            r8 = 0x1011e6e48;
                    }
                    r23 = *(r8 + 0x10);
                    if (r23 != 0x0) {
                            do {
                                    r22 = *(r19 + 0x8);
                                    r2 = r23 + 0x10;
                                    r20 = @selector(stringWithUTF8String:);
                                    objc_msgSend(@class(NSString), r20);
                                    objc_msgSend(r22, r21);
                                    r23 = *r23;
                            } while (r23 != 0x0);
                    }
            }
    }
    return;
}

-(void)purgeFilenamesCache {
    [*(self + 0x18) removeAllObjects];
    return;
}

-(void)removeSpriteFramesFromTexture:(void *)arg2 {
    r31 = r31 - 0x140;
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
    r20 = arg2;
    r19 = self;
    var_128 = [NSMutableArray array];
    var_110 = q0;
    r22 = *(r19 + 0x8);
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r1;
    r0 = objc_msgSend(r22, r1);
    if (r0 != 0x0) {
            r24 = r0;
            r23 = *var_110;
            do {
                    r21 = 0x0;
                    do {
                            if (*var_110 != r23) {
                                    objc_enumerationMutation(r22);
                            }
                            r26 = @selector(texture);
                            r28 = *(var_118 + r21 * 0x8);
                            if (objc_msgSend([*(r19 + 0x8) valueForKey:r28], r26) == r20) {
                                    [var_128 addObject:r2];
                            }
                            r21 = r21 + 0x1;
                    } while (r21 < r24);
                    r0 = objc_msgSend(r22, var_130);
                    r24 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [*(r19 + 0x8) removeObjectsForKeys:var_128];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void *)spriteFrameByName:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = self;
    r0 = *(self + 0x8);
    r0 = [r0 objectForKey:r2];
    if (r0 == 0x0) {
            [*(r19 + 0x10) objectForKey:r2];
            r0 = *(r19 + 0x8);
            r0 = objc_msgSend(r0, r20);
    }
    return r0;
}

-(void)removeSpriteFramesByTextureFilename:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x180;
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
    var_158 = self;
    if (r2 != 0x0) {
            r20 = r2;
            if ([r2 length] != 0x0) {
                    if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] != 0x0) {
                            sub_1002cde24(&var_110, [r20 UTF8String]);
                            r19 = &var_F8;
                            r0 = sub_10042ccfc(&var_110);
                            r9 = var_F8;
                            if (sign_extend_64(var_E1) < 0x0) {
                                    if (!CPU_FLAGS & L) {
                                            r2 = r19;
                                    }
                                    else {
                                            r2 = r9;
                                    }
                            }
                            r20 = [NSString stringWithUTF8String:r2];
                            if ((sign_extend_64(var_E1) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_F8);
                            }
                            if ((sign_extend_64(var_F9) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_110);
                            }
                    }
                    else {
                            r20 = [[CCFileUtils sharedFileUtils] removeSuffixFromFile:r20];
                    }
                    var_160 = [NSMutableArray array];
                    var_140 = q0;
                    r22 = *(var_158 + 0x8);
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_168 = r1;
                    r0 = objc_msgSend(r22, r1);
                    if (r0 != 0x0) {
                            r24 = r0;
                            r21 = *var_140;
                            do {
                                    r19 = 0x0;
                                    do {
                                            if (*var_140 != r21) {
                                                    objc_enumerationMutation(r22);
                                            }
                                            r27 = @selector(isEqualToString:);
                                            r23 = *(var_148 + r19 * 0x8);
                                            if (objc_msgSend([[*(var_158 + 0x8) valueForKey:r23] textureFilename], r27) != 0x0) {
                                                    [var_160 addObject:r2];
                                            }
                                            r19 = r19 + 0x1;
                                    } while (r19 < r24);
                                    r0 = objc_msgSend(r22, var_168);
                                    r24 = r0;
                            } while (r0 != 0x0);
                    }
                    [*(var_158 + 0x8) removeObjectsForKeys:var_160];
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)addSpriteFramesWithFile:(void *)arg2 assumeSD:(bool)arg3 {
    r31 = r31 - 0x120;
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
    r24 = arg3;
    r22 = arg2;
    r19 = self;
    if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] == 0x0) goto loc_1002cf2ec;

loc_1002cf2d0:
    if (r22 != 0x0) {
            r1 = [r22 UTF8String];
    }
    else {
            r1 = "";
    }
    sub_1002cde24(&var_90, r1);
    r0 = sub_10042ccfc(&var_90);
    if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
            operator delete(var_90);
    }
    r9 = var_78;
    r8 = r29 - 0x78;
    if (sign_extend_64(var_61) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r2 = r8;
            }
            else {
                    r2 = r9;
            }
    }
    r20 = [NSString stringWithUTF8String:r2];
    if ([*(r19 + 0x18) member:r20] != 0x0) goto loc_1002cf958;

loc_1002cf458:
    if ([[CCConfiguration sharedConfiguration] useNewPlistSerialization] == 0x0) goto loc_1002cf52c;

loc_1002cf47c:
    r0 = sub_100316830(r29 - 0x78, &var_90, 0x0);
    if (var_98 == 0x0) goto loc_1002cf5d4;

loc_1002cf498:
    r0 = sub_10042cc50(&var_90);
    v8 = v0;
    if (sub_10032c03c() != 0x0) {
            sub_10042cc74();
            asm { fdiv       s0, s8, s0 };
    }
    if (var_98 != 0x6) goto loc_1002cf5d4;

loc_1002cf4d0:
    r8 = 0x1011abed8;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    r0 = operator new();
                    *(int128_t *)r0 = q0;
                    *(int128_t *)(r0 + 0x10) = q0;
                    *(int32_t *)(r0 + 0x20) = 0x3f800000;
                    *0x1011abed0 = r0;
                    __cxa_guard_release();
            }
    }
    if (var_98 == 0x6) {
            r22 = &stack[-176];
    }
    else {
            r22 = 0x1011abed0;
            sub_1002d06c0(*r22);
    }
    r0 = sub_1002cde24(&var_C0, "");
    sub_1002cde24(&var_D8, "metadata");
    r0 = sub_1002c1520(r22, &var_D8);
    r22 = r0;
    if ((sign_extend_64(var_C1) & 0xffffffff80000000) != 0x0) {
            operator delete(var_D8);
    }
    if (r22 == 0x0) goto loc_1002cf844;

loc_1002cf758:
    if (*(int32_t *)(r22 + 0x30) != 0x6) goto loc_1002cf7c8;

loc_1002cf764:
    sub_1002cde24(&var_D8, "textureFileName");
    r0 = sub_1002c1520(r22, &var_D8);
    r22 = r0;
    if ((sign_extend_64(var_C1) & 0xffffffff80000000) != 0x0) {
            operator delete(var_D8);
    }
    if (r22 != 0x0 && *(int32_t *)(r22 + 0x30) == 0x4) {
            sub_10098f750(r29 - 0x78);
            if (*(int32_t *)(r22 + 0x30) == 0x4) {
                    r1 = *(r22 + 0x28);
            }
            else {
                    r1 = 0x1011e6e18;
            }
            if ((sign_extend_64(*(int8_t *)(r1 + 0x17)) & 0xffffffff80000000) != 0x0) {
                    r1 = *r1;
            }
            sub_1002cde24(&var_108, r1);
            r0 = sub_10098f860(&var_F0, &var_108);
            if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_C0);
            }
            var_C0 = var_D8;
            var_D8 = 0x0;
            if ((sign_extend_64(var_F1) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_108);
            }
            if ((sign_extend_64(var_D9) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_F0);
            }
    }
    goto loc_1002cf844;

loc_1002cf844:
    r9 = var_A9;
    r8 = sign_extend_64(r9);
    r10 = var_B8;
    if (r8 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r9 = r9;
            }
            else {
                    r9 = r10;
            }
    }
    if (r9 == 0x0) {
            sub_10098f4f4(r29 - 0x78);
            sub_1002cde24(&var_108, "png");
            r0 = sub_10098f2e8(&var_F0, &var_108);
            if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_C0);
            }
            var_C0 = var_D8;
            if ((sign_extend_64(var_F1) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_108);
            }
            if ((sign_extend_64(var_D9) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_F0);
            }
            r8 = var_A9;
    }
    r2 = 0x0;
    r9 = var_C0;
    COND = sign_extend_64(r8) < 0x0;
    r8 = &var_C0;
    if (COND) {
            if (!CPU_FLAGS & L) {
                    r2 = r8;
            }
            else {
                    r2 = r9;
            }
    }
    [r19 addSpriteFramesWithValue:&stack[-176] textureReference:[NSString stringWithUTF8String:r2] scale:r4];
    r21 = 0x0;
    goto loc_1002cf914;

loc_1002cf914:
    if ((sign_extend_64(*(int8_t *)(&var_C0 + 0x17)) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    goto loc_1002cf928;

loc_1002cf928:
    sub_1009ca77c(&stack[-176]);
    if (r21 == 0x0) {
            [*(r19 + 0x18) addObject:r2];
    }
    goto loc_1002cf948;

loc_1002cf948:
    if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
            operator delete(var_90);
    }
    goto loc_1002cf958;

loc_1002cf958:
    if ((sign_extend_64(var_61) & 0xffffffff80000000) != 0x0) {
            operator delete(var_78);
    }
    return;

.l24:
    return;

loc_1002cf7c8:
    r21 = 0x1;
    goto loc_1002cf914;

loc_1002cf5d4:
    r21 = 0x1;
    goto loc_1002cf928;

loc_1002cf52c:
    r0 = sub_1003166c4(r29 - 0x78, &var_90, 0x0);
    r21 = r0;
    r0 = sub_10042cc50(&var_90);
    v8 = v0;
    r0 = [r21 objectForKey:r2];
    if (r0 != 0x0) {
            r0 = [r0 objectForKey:r2];
            r23 = r0;
            if (r0 != 0x0) {
                    r0 = [r22 stringByDeletingLastPathComponent];
                    r0 = [r0 stringByAppendingPathComponent:r23];
            }
            else {
                    r0 = [r22 stringByDeletingPathExtension];
                    r0 = [r0 stringByAppendingPathExtension:@"png"];
            }
    }
    else {
            r0 = [r22 stringByDeletingPathExtension];
            r0 = [r0 stringByAppendingPathExtension:@"png"];
    }
    [r19 addSpriteFramesWithDictionary:r21 textureFilename:r0 scale:r4];
    [*(r19 + 0x18) addObject:r2];
    goto loc_1002cf948;

loc_1002cf2ec:
    r21 = [[CCFileUtils sharedFileUtils] fullPathForFilename:r22 resolutionType:&var_90 andResourcePack:r29 - 0x78];
    r20 = [[CCFileUtils sharedFileUtils] removeSuffixFromFile:[[CCFileUtils sharedFileUtils] fullPathToRelativePath:r21]];
    [*(r19 + 0x18) member:r20];
    if (r20 != 0x0) {
            asm { ccmp       x0, #0x0, #0x0, ne };
    }
    if (CPU_FLAGS & NE) goto .l24;

loc_1002cf384:
    r21 = [NSDictionary dictionaryWithContentsOfFile:r21];
    if (var_90 == 0x0) goto loc_1002cf4f4;

loc_1002cf3ac:
    r0 = [CCConfiguration sharedConfiguration];
    r0 = [r0 runningDevice];
    if (r0 < 0x5) {
            if (var_90 == 0x1) {
                    asm { fcsel      s8, s0, s8, eq };
            }
    }
    else {
            if (r0 == 0x5) {
                    r8 = var_90;
                    if (r8 == 0x1) {
                            asm { fcsel      s0, s0, s8, eq };
                    }
                    if (r8 < 0x6) {
                            asm { fcsel      s8, s1, s0, lo };
                    }
            }
    }
    goto loc_1002cf650;

loc_1002cf650:
    r0 = [r21 objectForKey:r2];
    if (r0 != 0x0) {
            r0 = [r0 objectForKey:r2];
            if (r0 != 0x0) {
                    r0 = [r22 stringByDeletingLastPathComponent];
                    r1 = @selector(stringByAppendingPathComponent:);
            }
            else {
                    r0 = [r22 stringByDeletingPathExtension];
                    r1 = @selector(stringByAppendingPathExtension:);
            }
    }
    else {
            r0 = [r22 stringByDeletingPathExtension];
            r1 = @selector(stringByAppendingPathExtension:);
    }
    [r19 addSpriteFramesWithDictionary:r21 textureFilename:objc_msgSend(r0, r1) scale:r4];
    [*(r19 + 0x18) addObject:r2];
    return;

loc_1002cf4f4:
    if (([var_78 isEqualToString:r2] & 0x1) == 0x0) goto loc_1002cf620;

loc_1002cf510:
    r8 = var_90;
    if (r8 != 0x0 || r24 == 0x0) goto loc_1002cf64c;

loc_1002cf520:
    var_90 = 0x1;
    goto loc_1002cf3ac;

loc_1002cf64c:
    if (r8 != 0x0) {
            r0 = [CCConfiguration sharedConfiguration];
            r0 = [r0 runningDevice];
            if (r0 < 0x5) {
                    if (var_90 == 0x1) {
                            asm { fcsel      s8, s0, s8, eq };
                    }
            }
            else {
                    if (r0 == 0x5) {
                            r8 = var_90;
                            if (r8 == 0x1) {
                                    asm { fcsel      s0, s0, s8, eq };
                            }
                            if (r8 < 0x6) {
                                    asm { fcsel      s8, s1, s0, lo };
                            }
                    }
            }
    }
    goto loc_1002cf650;

loc_1002cf620:
    [[CCResourcePackManager sharedInstance] scaleForAssetOfPack:var_78];
    v8 = v0;
    r8 = var_90;
    goto loc_1002cf64c;
}

-(void)addSpriteFramesWithDictionary:(void *)arg2 textureFile:(void *)arg3 {
    return;
}

-(void)addSpriteFramesWithFile:(void *)arg2 textureFile:(void *)arg3 {
    [self addSpriteFramesWithFile:arg2 textureFilename:arg3];
    return;
}

@end