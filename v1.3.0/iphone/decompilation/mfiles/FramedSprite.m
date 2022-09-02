@implementation FramedSprite

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setShaderProgram:[[CCShaderCache sharedShaderCache] programForKey:@"ShaderPositionTextureColor"]];
            [r19 setColor:0xffffff];
            [r19 setOpacity:0xff];
            r19->_blendFunc = *0x100ba3650;
            *(int8_t *)(int64_t *)&r19->_shouldFix = 0x1;
    }
    r0 = r19;
    return r0;
}

-(void)updateDisplayedColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    r31 = r31 - 0x60;
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
    [[&var_50 super] updateDisplayedColor:r2 & 0xffffffff];
    r22 = 0x0;
    r23 = (int64_t *)&r19->_placeSprites;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_displayedColor));
    do {
            r25 = 0x0;
            do {
                    r0 = *(r23 + r25);
                    r21 = r21 & 0xffffffff00000000 | *(int32_t *)(r19 + r24);
                    [r0 updateDisplayedColor:r21];
                    r25 = r25 + 0x8;
            } while (r25 != 0x18);
            r22 = r22 + 0x1;
            r23 = r23 + 0x18;
    } while (r22 != 0x3);
    return;
}

-(void)updateDisplayedOpacity:(unsigned char)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_40 super] updateDisplayedOpacity:arg2];
    r21 = 0x0;
    r22 = (int64_t *)&r19->_placeSprites;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_displayedOpacity));
    do {
            r24 = 0x0;
            do {
                    [*(r22 + r24) updateDisplayedOpacity:*(int8_t *)(r19 + r23)];
                    r24 = r24 + 0x8;
            } while (r24 != 0x18);
            r21 = r21 + 0x1;
            r22 = r22 + 0x18;
    } while (r21 != 0x3);
    return;
}

-(struct _ccColorThreeB)color {
    r0 = [[&var_10 super] color];
    r0 = r0 & 0xffffffff;
    return r0;
}

-(unsigned char)opacity {
    r0 = [[&var_10 super] opacity];
    return r0;
}

+(void *)framedSpriteWithContentsOfFile:(void *)arg2 {
    r0 = [FramedSprite alloc];
    r0 = [r0 init];
    [r0 setupWithContentsOfFile:arg2];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)framedSpriteWithDictionary:(void *)arg2 {
    r0 = [FramedSprite alloc];
    r0 = [r0 init];
    [r0 setupWithDictionary:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void)setupWithContentsOfFile:(void *)arg2 {
    [self setDescriptionName:r2];
    [self setupWithDictionary:[NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:arg2 ofType:@"plist"]]];
    return;
}

+(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >)placeToString:(int)arg2 :(int)arg3 {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r21 = arg2;
    r19 = r8;
    r0 = sub_100312338(&var_48, "Left");
    if (r21 != 0x2) {
            if (r21 == 0x1) {
                    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
            }
    }
    else {
            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
    }
    r0 = sub_100312338(&var_60, "Top");
    if (r20 != 0x0) {
            if (r20 == 0x1) {
                    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
            }
    }
    else {
            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
    }
    var_78 = 0x0;
    r8 = var_49;
    r10 = var_60;
    r11 = stack[-104];
    if (sign_extend_64(r8) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r20 = r8;
            }
            else {
                    r20 = r11;
            }
    }
    r8 = &var_60;
    if (CPU_FLAGS & L) {
            if (!CPU_FLAGS & L) {
                    r21 = r8;
            }
            else {
                    r21 = r10;
            }
    }
    r8 = r20 + 0x1;
    if (r8 < -0x10) {
            if (r8 < 0x17) {
                    r22 = &var_78;
                    var_61 = r20;
                    if (r20 != 0x0) {
                            memcpy(r22, r21, r20);
                    }
            }
            else {
                    r0 = operator new();
                    r22 = r0;
                    var_78 = r0;
                    memcpy(r22, r21, r20);
            }
            *(int8_t *)(r22 + r20) = 0x0;
            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::append();
            r8 = var_31;
            r10 = var_48;
            r11 = stack[-80];
            r9 = &var_48;
            r0 = std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::append();
            q0 = *(int128_t *)r0;
            *(r19 + 0x10) = *(r0 + 0x10);
            *(int128_t *)r19 = q0;
            *(int128_t *)(r0 + 0x8) = 0x0;
            *(int128_t *)(r0 + 0x10) = 0x0;
            *r0 = 0x0;
            if ((sign_extend_64(var_61) & 0xffffffff80000000) != 0x0) {
                    r0 = operator delete(var_78);
            }
            if ((sign_extend_64(var_49) & 0xffffffff80000000) != 0x0) {
                    r0 = operator delete(var_60);
            }
            if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
                    r0 = operator delete(var_48);
            }
    }
    else {
            r0 = std::__1::__basic_string_common<true>::__throw_length_error();
    }
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self setDescriptionName:0x0];
    r21 = 0x0;
    r22 = (int64_t *)&r19->_placeSprites;
    do {
            r23 = 0x0;
            do {
                    [*(r22 + r23) release];
                    r23 = r23 + 0x8;
            } while (r23 != 0x18);
            r21 = r21 + 0x1;
            r22 = r22 + 0x18;
    } while (r21 != 0x3);
    [r19->_atlas release];
    [[&var_40 super] dealloc];
    return;
}

-(int)calAproximatedSize:(float)arg2 withPreference:(int)arg3 andUnit:(float)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (s0 < 0x0) {
            r0 = [r0 calAproximatedSize:r2 withPreference:r3 andUnit:r4];
            asm { neg        w0, w0 };
    }
    else {
            if (r2 != 0x2) {
                    if (r2 != 0x1) {
                            if (r2 == 0x0) {
                                    asm { fdiv       s0, s0, s1 };
                            }
                    }
                    else {
                            asm { fdiv       s0, s0, s1 };
                            s1 = 0x3fe0000000000000;
                    }
            }
            else {
                    asm { fdiv       s0, s0, s1 };
                    s1 = *(int32_t *)0x100bc1fdc;
            }
            asm { fcvtzs     w0, s0 };
    }
    return r0;
}

-(void)draw {
    sub_10031a6c4();
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_shaderProgram));
    [*(self + r20) use];
    [*(self + r20) setUniformsForBuiltins];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_blendFunc));
    sub_10031a4a8(*(int128_t *)(self + r8), *(int128_t *)(0x4 + self + r8));
    [self->_atlas drawQuads];
    return;
}

-(void)setupWithDictionary:(void *)arg2 {
    r31 = r31 - 0xe0;
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
    var_98 = arg2;
    r0 = [arg2 objectForKey:r2];
    if (r0 != 0x0) {
            r20 = sub_10034dd34([r0 stringByAppendingString:@".png"]);
            r19->_atlas = [[CCTextureAtlas alloc] initWithTexture:r20 capacity:0x9];
            if (([r20 hasPremultipliedAlpha] & 0x1) == 0x0) {
                    r19->_blendFunc = *0x100ba36a8;
            }
            r21 = @selector(objectForKey:);
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_allowVerticalScale));
            *(int8_t *)(r19 + r23) = 0x0;
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_allowHorizontalScale));
            *(int8_t *)(r19 + r24) = 0x0;
            r22 = objc_msgSend(var_98, r21);
            r20 = objc_msgSend(var_98, r21);
            if (r22 != 0x0) {
                    *(int8_t *)(r19 + r24) = [r22 boolValue];
            }
            var_C8 = r24;
            if (r20 != 0x0) {
                    *(int8_t *)(r19 + r23) = [r20 boolValue];
            }
            var_C0 = r23;
            var_B0 = 0x0;
            r25 = r19;
            do {
                    r28 = 0x0;
                    do {
                            r0 = [r19 class];
                            if (r0 != 0x0) {
                                    r2 = var_B0;
                                    [r0 placeToString:r2 :r28];
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
                            }
                            else {
                                    r2 = &var_68;
                                    var_68 = 0x0;
                            }
                            r21 = @selector(objectForKey:);
                            [NSString stringWithUTF8String:r2];
                            r0 = objc_msgSend(var_98, r21);
                            r24 = sub_10034dba0(0x0, objc_msgSend(r0, r21), 0x0);
                            r26 = [objc_msgSend(r0, r21) boolValue];
                            [objc_msgSend(r0, r21) boolValue];
                            r0 = [FramedSpriteTile alloc];
                            r0 = [r0 initWithFramedSprite:r19];
                            r22 = sign_extend_64(*(int32_t *)ivar_offset(_placeSprites));
                            *(r28 * 0x8 + r25 + r22) = r0;
                            [r0 setDisplayFrame:r24];
                            [*(r28 * 0x8 + r25 + r22) setFlipX:r26];
                            [*(r28 * 0x8 + r25 + r22) setFlipY:r2];
                            if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_68);
                            }
                            r28 = r28 + 0x1;
                    } while (r28 != 0x3);
                    r8 = var_B0 + 0x1;
                    r25 = r25 + 0x18;
                    var_B0 = r8;
            } while (r8 != 0x3);
            r22 = r19 + r22;
            r20 = *(int8_t *)(r19 + var_C8);
            [*(r22 + 0x28) setAllowHorizontalScale:r20];
            [*(r22 + 0x20) setAllowHorizontalScale:r20];
            [*(r22 + 0x18) setAllowHorizontalScale:r20];
            r19 = *(int8_t *)(r19 + var_C0);
            [*(r22 + 0x38) setAllowVerticalScale:r19];
            [*(r22 + 0x20) setAllowVerticalScale:r19];
            [*(r22 + 0x8) setAllowVerticalScale:r19];
    }
    return;
}

-(struct CGSize)calcSizeForRepetition:(struct CGSize)arg2 round:(int)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    var_60 = d13;
    stack[-104] = d12;
    r31 = r31 + 0xffffffffffffff90;
    var_50 = d11;
    stack[-88] = d10;
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
    r19 = r2;
    r20 = r0;
    if (d0 < 0x0) {
            asm { fcsel      d9, d2, d0, mi };
    }
    if (d1 < 0x0) {
            asm { fcsel      d10, d2, d1, mi };
    }
    [r0->_placeSprites contentSize];
    asm { fcvt       s8, d0 };
    objc_msgSend(*r23, r21);
    asm { fcvt       s11, d1 };
    asm { fcvt       d12, s8 };
    asm { fcvt       s0, d9 };
    [r20 calAproximatedSize:r2 withPreference:r3 andUnit:r4];
    asm { scvtf      d0, w0 };
    asm { fcvt       s9, d0 };
    asm { fcvt       d11, s11 };
    asm { fcvt       s0, d10 };
    objc_msgSend(r20, r22);
    asm { scvtf      d0, w0 };
    asm { fcvt       s10, d0 };
    asm { fcvt       d8, s9 };
    objc_msgSend(*(r23 + 0x30), r21);
    asm { fcvt       d9, s10 };
    r0 = *(r23 + 0x10);
    r0 = objc_msgSend(r0, r21);
    return r0;
}

-(void *)texture {
    r0 = self->_atlas;
    r0 = [r0 texture];
    return r0;
}

-(struct CGSize)requestSize:(struct CGSize)arg2 round:(int)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xb0;
    var_90 = d15;
    stack[-136] = d14;
    var_80 = d13;
    stack[-120] = d12;
    var_70 = d11;
    stack[-104] = d10;
    var_60 = d9;
    stack[-88] = d8;
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
    v8 = v0;
    r19 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_placeSprites));
    r24 = self + r23;
    [*r24 contentSize];
    asm { fcvt       s13, d0 };
    objc_msgSend(*(r24 + 0x30), r20);
    asm { fcvt       s0, d0 };
    objc_msgSend(*(r24 + 0x20), r20);
    asm { fcvt       s8, d0 };
    objc_msgSend(*r24, r20);
    asm { fcvt       s11, d1 };
    objc_msgSend(*(r24 + 0x10), r20);
    d0 = d9 - d1;
    asm { fcvt       s0, d0 };
    v14 = v11;
    var_B0 = s11;
    objc_msgSend(*(r24 + 0x20), r20);
    asm { fcvt       s11, d1 };
    [r19 calAproximatedSize:r2 withPreference:r3 andUnit:r4];
    asm { scvtf      s12, w0 };
    r2 = r21;
    objc_msgSend(r19, r22);
    asm { scvtf      s0, w0 };
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_allowHorizontalScale));
    r8 = *(int8_t *)(r19 + r8);
    asm { fdiv       s1, s10, s8 };
    if (r8 == 0x0) {
            asm { fcsel      s1, s12, s1, eq };
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_allowVerticalScale));
    r8 = *(int8_t *)(r19 + r8);
    asm { fdiv       s2, s9, s11 };
    if (r8 == 0x0) {
            asm { fcsel      s0, s0, s2, eq };
    }
    if (s1 >= 0x0) {
            asm { fcsel      s15, s1, s2, ge };
    }
    if (s0 >= 0x0) {
            asm { fcsel      s1, s0, s2, ge };
    }
    r20 = @selector(contentSize);
    asm { fcvt       d8, s0 };
    objc_msgSend(*(r24 + 0x30), r20);
    asm { fcvt       d9, s9 };
    var_A8 = d9;
    objc_msgSend(*(r24 + 0x10), r20);
    var_A0 = d1 + d9;
    stack[-152] = d10;
    [r19 setContentSize:r2];
    r8 = *_CGPointZero;
    d12 = *(int128_t *)r8;
    [*r24 setPosition:r2];
    asm { fcvt       d0, s13 };
    objc_msgSend(*(r24 + 0x18), r20);
    asm { fcvt       d11, s15 };
    [*(r24 + 0x18) setRepetitionSize:r2];
    objc_msgSend(*(r24 + 0x30), r20);
    asm { fcvt       d0, s0 };
    objc_msgSend(*(r24 + 0x8), r20);
    asm { fcvt       d8, s0 };
    objc_msgSend(*(r24 + 0x8), r21);
    objc_msgSend(*(r24 + 0x20), r20);
    objc_msgSend(*(r24 + 0x20), r21);
    objc_msgSend(*(r24 + 0x38), r20);
    objc_msgSend(*(r24 + 0x38), r21);
    d8 = d9 + var_A8;
    objc_msgSend(*(r24 + 0x10), r20);
    objc_msgSend(*(r24 + 0x28), r20);
    objc_msgSend(*(r24 + 0x28), r21);
    v0 = v13;
    objc_msgSend(*(r24 + 0x40), r20);
    r22 = 0x0;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_frameCount));
    *(int32_t *)(r19 + r21) = 0x0;
    do {
            r25 = 0x0;
            do {
                    [*(r24 + r25) realRepetitionSize];
                    objc_msgSend(*(r24 + r25), r20);
                    r8 = *(int32_t *)(r19 + r21);
                    asm { scvtf      d1, w8 };
                    asm { fcvtzs     w8, d0 };
                    *(int32_t *)(r19 + r21) = r8;
                    r25 = r25 + 0x8;
            } while (r25 != 0x18);
            r22 = r22 + 0x1;
            r24 = r24 + 0x18;
    } while (r22 != 0x3);
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_atlas));
    [*(r19 + r22) removeAllQuads];
    [*(r19 + r22) resizeCapacity:sign_extend_64(*(int32_t *)(r19 + r21))];
    r24 = 0x0;
    r20 = 0x0;
    r23 = r19 + r23;
    do {
            r25 = 0x0;
            do {
                    r0 = *(r23 + r25);
                    r0 = [r0 populateAtlas:r2 atIndex:r3];
                    r20 = r0 + r20;
                    r25 = r25 + 0x8;
            } while (r25 != 0x18);
            r24 = r24 + 0x1;
            r23 = r23 + 0x18;
    } while (r24 != 0x3);
    return r0;
}

-(void)didLoadFromCCB {
    r20 = [self valueForKey:@"descriptionName"];
    [[FramedSpriteCache sharedFramedSpriteCache] processDictionary:[NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:r20 ofType:@"plist"]] withName:r20];
    [self position];
    [self contentSize];
    [self requestSize:0x2 round:r20];
    [self setPosition:0x2];
    [self anchorPoint];
    [self setAnchorPoint:0x2];
    *(int8_t *)(int64_t *)&self->_shouldFix = 0x0;
    [[&var_40 super] didLoadFromCCB];
    return;
}

-(void)setDescriptionName:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            r0->_descriptionName = r2;
            [r0 setupWithDictionary:[[FramedSpriteCache sharedFramedSpriteCache] descriptionWithName:r2]];
            [r0 contentSize];
            [r0 requestSize:0x0 round:r3];
    }
    return;
}

-(void)visit {
    r0 = self;
    r31 = r31 - 0x60;
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
    if (*(int8_t *)(int64_t *)&r0->_visible != 0x0) {
            r19 = r0;
            if (*(int8_t *)(int64_t *)&r0->_shouldFix != 0x0) {
                    sub_1003575dc();
                    [r19 transform];
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_children));
                    r8 = *(r19 + r8);
                    if (r8 != 0x0) {
                            r23 = r8->data;
                            if (*r23 != 0x0) {
                                    sub_1003575dc();
                                    asm { fcvt       s0, d0 };
                                    asm { fcvt       s1, d1 };
                                    r0 = sub_10035771c();
                                    if (*r23 != 0x0) {
                                            r24 = 0x0;
                                            do {
                                                    r20 = @selector(zOrder);
                                                    r22 = *(*(r23 + 0x10) + r24 * 0x8);
                                                    r1 = r20;
                                                    r0 = objc_msgSend(r22, r1);
                                                    if ((r0 & 0xffffffff80000000) == 0x0) {
                                                        break;
                                                    }
                                                    r1 = @selector(visit);
                                                    r0 = objc_msgSend(r22, r1);
                                                    r24 = r24 + 0x1;
                                            } while (r24 < *r23);
                                    }
                                    else {
                                            r1 = @selector(transform);
                                            r24 = 0x0;
                                    }
                                    loc_100357620(r0, r1);
                            }
                            else {
                                    r24 = 0x0;
                            }
                            r1 = @selector(draw);
                            r0 = objc_msgSend(r19, r1);
                            if (*r23 != 0x0) {
                                    r1 = @selector(draw);
                                    sub_1003575dc();
                                    asm { fcvt       s0, d0 };
                                    asm { fcvt       s1, d1 };
                                    r0 = sub_10035771c();
                                    if (r24 < *r23) {
                                            do {
                                                    r19 = @selector(visit);
                                                    r0 = *(*(r23 + 0x10) + r24 * 0x8);
                                                    r1 = r19;
                                                    r0 = objc_msgSend(r0, r1);
                                                    r24 = r24 + 0x1;
                                            } while (r24 < *r23);
                                    }
                                    r0 = loc_100357620(r0, r1);
                            }
                    }
                    else {
                            r1 = @selector(draw);
                            r0 = objc_msgSend(r19, r1);
                    }
                    loc_100357620(r0, r1);
            }
            else {
                    [[&var_50 super] visit];
            }
    }
    return;
}

-(void)setAnchorPoint:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_anchorPoint));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    *(int128_t *)(int64_t *)&self->_anchorPointInPoints = q0;
    *(int8_t *)(int64_t *)&self->_isInverseDirty = 0x1;
    *(int8_t *)(int64_t *)&self->_isTransformDirty = 0x1;
    return;
}

-(void)setBlendFunc:(struct _ccBlendFunc)arg2 {
    memcpy(&r2, &arg2, 0x8);
    self->_blendFunc = r2;
    return;
}

-(void *)atlas {
    r0 = self->_atlas;
    return r0;
}

-(void *)descriptionName {
    r0 = self->_descriptionName;
    return r0;
}

@end