@implementation MCFramedSprite

+(void *)framedSpriteWithDescriptionFileName:(void *)arg2 {
    r0 = [MCFramedSprite alloc];
    r0 = [r0 initWithDescriptionFileName:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setAnchorPoint:r2];
            if ([[CCConfiguration sharedConfiguration] useNewRenderer] != 0x0) {
                    q0 = *(int128_t *)0x1011e2ea0;
                    q1 = *(int128_t *)0x1011e2eb0;
                    q2 = *(int128_t *)0x1011e2ec0;
                    q3 = *(int128_t *)0x1011e2ed0;
                    *(int128_t *)((int64_t *)&r19->_mcRenderJob + 0x20) = q2;
                    *(int128_t *)((int64_t *)&r19->_mcRenderJob + 0x30) = q3;
                    *(int128_t *)(int64_t *)&r19->_mcRenderJob = q0;
                    *(int128_t *)((int64_t *)&r19->_mcRenderJob + 0x10) = q1;
                    sub_100292530();
                    sub_10033c9b8(&var_48, [@"ShaderPositionTextureColor" UTF8String]);
                    r0 = sub_10037ec20(r20, &var_48);
                    *((int64_t *)&r19->_mcRenderJob + 0x140) = r0;
                    if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_48);
                    }
            }
            else {
                    [r19 setShaderProgram:[[CCShaderCache sharedShaderCache] programForKey:@"ShaderPositionTextureColor"]];
            }
            r8 = sign_extend_64(*(int32_t *)ivar_offset(tileColors));
            *(int128_t *)(r19 + r8) = q0;
            *(int128_t *)(0x10 + r19 + r8) = q0;
            *(int32_t *)(0x20 + r19 + r8) = 0xffffffffffffffff;
    }
    r0 = r19;
    return r0;
}

+(void *)framedSpriteWithSpriteSheetFileName:(void *)arg2 textureName:(void *)arg3 frameName:(void *)arg4 horizontalTiling:(bool)arg5 verticalTiling:(bool)arg6 leftMargin:(float)arg7 rightMargin:(float)arg8 bottomMargin:(float)arg9 topMargin:(float)arg10 lockHorizontalSize:(bool)arg11 lockVerticalSize:(float)arg12 {
    r0 = [MCFramedSprite alloc];
    r0 = [r0 initWithSpriteSheetFileName:arg2 textureName:arg3 frameName:arg4 horizontalTiling:arg5 verticalTiling:arg6 leftMargin:arg7 rightMargin:var_60 bottomMargin:stack[-104] topMargin:var_50 lockHorizontalSize:stack[-88] lockVerticalSize:var_40];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)setupWithProcessedValues:(void *)arg2 {
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
    r20 = arg2;
    r19 = self;
    r19->_atlasArray = [[NSMutableArray alloc] initWithCapacity:0x1];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_placeSprites));
    if (*(r19 + r8) == 0x0) {
            r23 = 0x0;
            r24 = r19 + r8;
            do {
                    r27 = 0x0;
                    do {
                            *(r24 + r27) = [[MCFramedSpriteTile alloc] init];
                            r27 = r27 + 0x8;
                    } while (r27 != 0x18);
                    r23 = r23 + 0x1;
                    r24 = r24 + 0x18;
            } while (r23 != 0x3);
    }
    r19->_blendFunc = *0x100ba3650;
    [r19 configWithProcessedValues:r20];
    [r19 contentSize];
    [r19 requestSize:*(int32_t *)(int64_t *)&r19->_roundType round:r3];
    r0 = r19;
    return r0;
}

-(void *)initWithDescriptionFileName:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [self init];
    if (r0 != 0x0) {
            r0->_descriptionName = [r20 retain];
            *(int32_t *)(int64_t *)&r0->_roundType = 0x0;
            *(int8_t *)(int64_t *)&r0->_hasBeenInitialized = 0x1;
            *(int8_t *)(int64_t *)&r0->_hasFinishedLoading = 0x1;
            r0 = [r0 startWithDescriptionFileName];
    }
    return r0;
}

-(void *)initWithSpriteSheetFileName:(void *)arg2 textureName:(void *)arg3 frameName:(void *)arg4 horizontalTiling:(bool)arg5 verticalTiling:(bool)arg6 leftMargin:(float)arg7 rightMargin:(float)arg8 bottomMargin:(float)arg9 topMargin:(float)arg10 lockHorizontalSize:(bool)arg11 lockVerticalSize:(float)arg12 {
    var_70 = d13;
    stack[-120] = d12;
    r31 = r31 + 0xffffffffffffff80;
    var_60 = d11;
    stack[-104] = d10;
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
    r20 = arg7;
    v9 = v3;
    v10 = v2;
    v11 = v1;
    v12 = v0;
    r21 = arg6;
    r22 = arg5;
    r23 = arg4;
    r24 = arg3;
    r25 = arg2;
    r0 = [self init];
    if (r0 != 0x0) {
            r19 = r0;
            r19->_spriteSheet = [r25 retain];
            r19->_textureName = [r24 retain];
            r19->_sourceFrame = [r23 retain];
            *(int8_t *)(int64_t *)&r19->_useHorizontalTiling = r22;
            *(int8_t *)(int64_t *)&r19->_useVerticalTiling = r21;
            [r19 clampValue:r2];
            *(int32_t *)(int64_t *)&r19->_leftMargin = s0;
            [r19 clampValue:r2];
            *(int32_t *)(int64_t *)&r19->_rightMargin = s0;
            [r19 clampValue:r2];
            *(int32_t *)(int64_t *)&r19->_bottomMargin = s0;
            [r19 clampValue:r2];
            *(int32_t *)(int64_t *)&r19->_topMargin = s0;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_lockHorizontalSize));
            *(int8_t *)(r19 + r8) = r20;
            if (s8 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r8 = 0x1;
                    }
            }
            *(int8_t *)(int64_t *)&r19->_lockVerticalSize = r8;
            *(int32_t *)(int64_t *)&r19->_roundType = 0x0;
            *(int8_t *)(int64_t *)&r19->_hasBeenInitialized = 0x1;
            *(int8_t *)(int64_t *)&r19->_hasFinishedLoading = 0x1;
            r0 = [r19 startWithParameters];
    }
    return r0;
}

-(void *)startWithParameters {
    r31 = r31 - 0x70;
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
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_spriteSheet));
    var_58 = r8;
    r2 = *(self + r8);
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_textureName));
    r3 = *(self + r24);
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_sourceFrame));
    r4 = *(self + r25);
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_leftMargin));
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_rightMargin));
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_bottomMargin));
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_topMargin));
    r23 = [self hashFromSpriteSheetName:r2 textureName:r3 frameName:r4 leftMargin:r5 rightMargin:r6 bottomMargin:r7 andTopMargin:var_60];
    r0 = [MCFramedSpriteCache sharedFramedSpriteCache];
    r0 = [r0 processedWithHash:r23];
    r22 = r0;
    if (r0 != 0x0) goto loc_10033e514;

loc_10033e4b4:
    var_60 = r23;
    r0 = [r19 processParametersWithSpriteSheetName:*(r19 + var_58) textureName:*(r19 + r24) sourceFrame:*(r19 + r25) leftMargin:r5 rightMargin:r6 bottomMargin:r7 topMargin:var_60];
    if (r0 == 0x0) goto loc_10033e544;

loc_10033e4ec:
    r22 = r0;
    [[MCFramedSpriteCache sharedFramedSpriteCache] addProcessedValues:r22 withHash:var_60];
    goto loc_10033e514;

loc_10033e514:
    r0 = [r19 setupWithProcessedValues:r22];
    return r0;

loc_10033e544:
    r0 = r19;
    return r0;
}

+(void)clearCache {
    [MCFramedSpriteCache clearCache];
    return;
}

-(void *)hashFromSpriteSheetName:(void *)arg2 textureName:(void *)arg3 frameName:(void *)arg4 leftMargin:(float)arg5 rightMargin:(float)arg6 bottomMargin:(float)arg7 andTopMargin:(float)arg8 {
    r31 = r31 - 0x90;
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
    r22 = @selector(UTF8String);
    r21 = objc_msgSend(arg2, r22);
    r20 = objc_msgSend(arg3, r22);
    r19 = objc_msgSend(arg4, r22);
    if (r21 != 0x0 && *(int8_t *)r21 != 0x0) {
            r22 = sub_100021280();
            if (r20 == 0x0) {
                    r23 = 0x0;
                    if (r19 != 0x0) {
                            if (*(int8_t *)r19 != 0x0) {
                                    r26 = sub_100021280();
                            }
                            else {
                                    r26 = 0x0;
                            }
                    }
                    else {
                            r26 = 0x0;
                    }
            }
            else {
                    if (*(int8_t *)r20 != 0x0) {
                            r23 = sub_100021280();
                            if (r19 == 0x0) {
                                    r26 = 0x0;
                            }
                            else {
                                    if (*(int8_t *)r19 != 0x0) {
                                            r26 = sub_100021280();
                                    }
                                    else {
                                            r26 = 0x0;
                                    }
                            }
                    }
                    else {
                            r23 = 0x0;
                            if (r19 != 0x0) {
                                    if (*(int8_t *)r19 != 0x0) {
                                            r26 = sub_100021280();
                                    }
                                    else {
                                            r26 = 0x0;
                                    }
                            }
                            else {
                                    r26 = 0x0;
                            }
                    }
            }
    }
    else {
            r22 = 0x0;
            if (r20 != 0x0) {
                    if (*(int8_t *)r20 != 0x0) {
                            r23 = sub_100021280();
                            if (r19 == 0x0) {
                                    r26 = 0x0;
                            }
                            else {
                                    if (*(int8_t *)r19 != 0x0) {
                                            r26 = sub_100021280();
                                    }
                                    else {
                                            r26 = 0x0;
                                    }
                            }
                    }
                    else {
                            r23 = 0x0;
                            if (r19 != 0x0) {
                                    if (*(int8_t *)r19 != 0x0) {
                                            r26 = sub_100021280();
                                    }
                                    else {
                                            r26 = 0x0;
                                    }
                            }
                            else {
                                    r26 = 0x0;
                            }
                    }
            }
            else {
                    r23 = 0x0;
                    if (r19 != 0x0) {
                            if (*(int8_t *)r19 != 0x0) {
                                    r26 = sub_100021280();
                            }
                            else {
                                    r26 = 0x0;
                            }
                    }
                    else {
                            r26 = 0x0;
                    }
            }
    }
    r24 = 0x10 + r26 + r22 + r23;
    r0 = malloc(r24);
    r25 = r0;
    r27 = r0;
    if (r22 != 0x0) {
            memcpy(r25, r21, r22);
            r27 = r25 + r22;
    }
    if (r23 != 0x0) {
            memcpy(r27, r20, r23);
            r27 = r27 + r23;
    }
    if (r26 != 0x0) {
            memcpy(r27, r19, r26);
            r27 = r27 + r26;
    }
    *(int128_t *)r27 = s11;
    *(int128_t *)(r27 + 0x4) = s10;
    *(int128_t *)(r27 + 0x8) = s9;
    *(int128_t *)(r27 + 0xc) = s8;
    crc32(0x0, r25, r24);
    free(r25);
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(struct _ccColor4B)tileColorHorizontal:(int)arg2 vertical:(int)arg3 {
    r3 = arg3;
    r19 = r3;
    asm { umaddl     x21, w2, w9, x8 };
    r20 = [*(r21 + r3 * 0x8) color];
    [*(r21 + r19 * 0x8) opacity];
    r8 = r20 & 0xffffff;
    asm { bfi        x8, x0, #0x18, #0x8 };
    r0 = r8;
    return r0;
}

-(void)setDescriptionName:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_descriptionName));
    r0 = *(self + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    *(r19 + r21) = [r20 retain];
    return;
}

-(void)dealloc {
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
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_descriptionName));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_spriteSheet));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_textureName));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_sourceFrame));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    r21 = 0x0;
    r22 = (int64_t *)&r19->_placeSprites;
    do {
            r23 = 0x0;
            do {
                    r0 = *(r22 + r23);
                    if (r0 != 0x0) {
                            [r0 release];
                            *(r22 + r23) = 0x0;
                    }
                    r23 = r23 + 0x8;
            } while (r23 != 0x18);
            r21 = r21 + 0x1;
            r22 = r22 + 0x18;
    } while (r21 != 0x3);
    var_110 = q0;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_atlasArray));
    r21 = *(r19 + r26);
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r27 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(r21);
                            }
                            r0 = *(var_118 + r28 * 0x8);
                            if (r0 != 0x0) {
                                    [r0 release];
                            }
                            r28 = r28 + 0x1;
                    } while (r28 < r23);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    r0 = *(r19 + r26);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r26) = 0x0;
    }
    var_60 = **___stack_chk_guard;
    [[&var_130 super] dealloc];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)updateDisplayedColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    [[&var_20 super] updateDisplayedColor:r2 & 0xffffffff];
    [self updateColorAndOpacity];
    return;
}

-(void)updateColorAndOpacity {
    r31 = r31 - 0xc0;
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
    r19 = self;
    r22 = 0x0;
    r23 = 0x0;
    r20 = 0x0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_displayedColor));
    r0 = *(int8_t *)(int64_t *)&self->_displayedOpacity;
    asm { ucvtf      s8, s0 };
    s0 = 0x437f0000;
    asm { fdiv       s0, s8, s0 };
    asm { ucvtf      s1, s1 };
    s1 = s0 * s1;
    asm { fcvtzs     w9, s1 };
    asm { ucvtf      s1, s1 };
    s1 = s0 * s1;
    asm { fcvtzs     w10, s1 };
    asm { ucvtf      s1, s1 };
    s0 = s0 * s1;
    asm { fcvtzs     w8, s0 };
    r11 = sign_extend_64(*(int32_t *)ivar_offset(tileColors));
    r11 = r0 + r11;
    asm { ucvtf      s9, w9 };
    asm { ucvtf      s10, w10 };
    asm { ucvtf      s11, w8 };
    var_98 = (int64_t *)&r0->_placeSprites;
    var_90 = r11;
    do {
            r24 = 0x0;
            var_A8 = r22;
            do {
                    var_A0 = @selector(setColor:);
                    var_80 = @selector(setOpacity:);
                    var_88 = @selector(visible);
                    r28 = 0x437f0000;
                    r8 = var_90;
                    r9 = 0xc;
                    asm { madd       x8, x22, x9, x8 };
                    asm { ucvtf      s0, s0 };
                    asm { fdiv       s0, s0, s1 };
                    asm { ucvtf      s2, s2 };
                    s2 = s0 * s2;
                    asm { fcvtzs     w9, s2 };
                    asm { ucvtf      s2, s2 };
                    s2 = s0 * s2;
                    asm { fcvtzs     w10, s2 };
                    asm { ucvtf      s2, s2 };
                    s2 = s0 * s2;
                    asm { fcvtzs     w8, s2 };
                    asm { ucvtf      s2, w9 };
                    asm { fdiv       s2, s2, s1 };
                    s2 = s2 * s9;
                    asm { fcvtzs     w9, s2 };
                    asm { ucvtf      s2, w10 };
                    asm { fdiv       s2, s2, s1 };
                    s2 = s2 * s10;
                    asm { fcvtzs     w10, s2 };
                    asm { ucvtf      s2, w8 };
                    asm { fdiv       s1, s2, s1 };
                    asm { fcvtzs     w8, s1 };
                    s0 = s0 * s8;
                    asm { fcvtzs     w27, s0 };
                    asm { bfi        w9, w10, #0x8, #0x8 };
                    asm { bfi        w9, w8, #0x10, #0x8 };
                    asm { bfi        w9, w8, #0x18, #0x8 };
                    r1 = var_A0;
                    r8 = var_98;
                    asm { madd       x8, x22, x10, x8 };
                    r21 = r8 + r24 * 0x8;
                    var_78 = r11 & 0xffffffff00000000 | r9;
                    objc_msgSend(*r21, r1);
                    objc_msgSend(*r21, var_80);
                    if (objc_msgSend(*r21, var_88) != 0x0) {
                            r25 = @selector(objectAtIndex:);
                            r22 = sign_extend_64(*(int32_t *)ivar_offset(_atlasArray));
                            r0 = *(r19 + r22);
                            asm { sxtw       x27, w23 };
                            objc_msgSend(r0, r25);
                            r0 = objc_msgSend(r28, r26);
                            if (r0 == 0x0) {
                                    r20 = r27 + 0x1;
                                    do {
                                            r27 = *r21;
                                            [*(r19 + r22) objectAtIndex:r20];
                                            r0 = [r27 copyColorToQuad:r2 atIndex:r3 fromStart:r4];
                                            r23 = r23 + 0x1;
                                            r20 = r20 + 0x1;
                                    } while (r0 == 0x0);
                                    r20 = 0x0;
                            }
                            r22 = var_A8;
                            r11 = var_78;
                            r20 = r0 + r20;
                    }
                    else {
                            r11 = var_78;
                    }
                    r24 = r24 + 0x1;
            } while (r24 != 0x3);
            r22 = r22 + 0x1;
    } while (r22 != 0x3);
    return;
}

-(void)updateDisplayedOpacity:(unsigned char)arg2 {
    [[&var_20 super] updateDisplayedOpacity:arg2];
    [self updateColorAndOpacity];
    return;
}

-(void *)startWithDescriptionFileName {
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
    r19 = self;
    if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] != 0x0 && [[CCConfiguration sharedConfiguration] useNewPlistSerialization] != 0x0) {
            r0 = [r19 startWithDescriptionFileNameNew];
    }
    else {
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_descriptionName));
            r0 = *(r19 + r27);
            if (r0 != 0x0 && ([r0 isEqualToString:r2] & 0x1) == 0x0) {
                    r0 = *(r19 + r27);
                    r0 = [r0 pathExtension];
                    if (r0 != 0x0) {
                            if ([r0 isEqualToString:r2] != 0x0) {
                                    [*(r19 + r27) release];
                                    *(r19 + r27) = [[*(r19 + r27) stringByAppendingPathExtension:@"plist"] retain];
                            }
                    }
                    else {
                            [*(r19 + r27) release];
                            *(r19 + r27) = [[*(r19 + r27) stringByAppendingPathExtension:@"plist"] retain];
                    }
                    r0 = [MCFramedSpriteCache sharedFramedSpriteCache];
                    r0 = [r0 fileNameInCachedFiles:*(r19 + r27)];
                    var_A0 = @selector(useNewResourceManagement);
                    if (r0 != 0x0) {
                            r24 = r0;
                            if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
                                    r0 = [CCConfiguration sharedConfiguration];
                                    r0 = [r0 useNewResourceManagement];
                                    var_90 = r27;
                                    if (r0 != 0x0) {
                                            r0 = *(r19 + r27);
                                            if (r0 != 0x0) {
                                                    r1 = [r0 UTF8String];
                                            }
                                            else {
                                                    r1 = "";
                                            }
                                            sub_10033c9b8(&var_70, r1);
                                            r0 = sub_10042ccfc(&var_70);
                                            if ((sign_extend_64(var_59) & 0xffffffff80000000) != 0x0) {
                                                    operator delete(var_70);
                                            }
                                            r0 = sub_100316658(&var_70, 0x0);
                                            r24 = r0;
                                            if ((sign_extend_64(var_59) & 0xffffffff80000000) != 0x0) {
                                                    operator delete(var_70);
                                            }
                                    }
                                    else {
                                            r24 = [NSDictionary dictionaryWithContentsOfFile:[[CCFileUtils sharedFileUtils] fullPathForFilename:*(r19 + r27)]];
                                    }
                                    r23 = @selector(objectForKey:);
                                    [objc_msgSend(r24, r23) floatValue];
                                    *(int32_t *)(r19 + sign_extend_64(*(int32_t *)ivar_offset(_leftMargin))) = s0;
                                    [objc_msgSend(r24, r23) floatValue];
                                    *(int32_t *)(r19 + sign_extend_64(*(int32_t *)ivar_offset(_rightMargin))) = s0;
                                    [objc_msgSend(r24, r23) floatValue];
                                    *(int32_t *)(r19 + sign_extend_64(*(int32_t *)ivar_offset(_bottomMargin))) = s0;
                                    [objc_msgSend(r24, r23) floatValue];
                                    *(int32_t *)(r19 + sign_extend_64(*(int32_t *)ivar_offset(_topMargin))) = s0;
                                    r25 = objc_msgSend(r24, r23);
                                    r25 = [r19 hashFromSpriteSheetName:r25 textureName:objc_msgSend(r24, r23) frameName:objc_msgSend(r24, r23) leftMargin:r5 rightMargin:r6 bottomMargin:r7 andTopMargin:var_A0];
                                    r28 = @selector(sharedFramedSpriteCache);
                                    r0 = objc_msgSend(@class(MCFramedSpriteCache), r28);
                                    r0 = [r0 processedWithHash:r25];
                                    r23 = r0;
                                    if (r0 == 0x0) {
                                            r23 = [r19 processDictionary:r24 withHash:r25];
                                    }
                                    r0 = objc_msgSend(@class(MCFramedSpriteCache), r28);
                                    r27 = var_90;
                                    [r0 updateCachedFilesForFileName:*(r19 + r27) withHash:r25];
                            }
                            else {
                                    r28 = @selector(sharedFramedSpriteCache);
                                    r0 = objc_msgSend(@class(MCFramedSpriteCache), r28);
                                    r0 = [r0 processedWithHash:r24];
                                    r23 = r0;
                                    [r0 leftMargin];
                                    *(int32_t *)(int64_t *)&r19->_leftMargin = s0;
                                    [r23 rightMargin];
                                    *(int32_t *)(int64_t *)&r19->_rightMargin = s0;
                                    [r23 bottomMargin];
                                    *(int32_t *)(int64_t *)&r19->_bottomMargin = s0;
                                    [r23 topMargin];
                                    r24 = 0x0;
                                    *(int32_t *)(int64_t *)&r19->_topMargin = s0;
                            }
                    }
                    else {
                            r0 = [CCConfiguration sharedConfiguration];
                            r0 = [r0 useNewResourceManagement];
                            var_90 = r27;
                            if (r0 != 0x0) {
                                    r0 = *(r19 + r27);
                                    if (r0 != 0x0) {
                                            r1 = [r0 UTF8String];
                                    }
                                    else {
                                            r1 = "";
                                    }
                                    sub_10033c9b8(&var_70, r1);
                                    r0 = sub_10042ccfc(&var_70);
                                    if ((sign_extend_64(var_59) & 0xffffffff80000000) != 0x0) {
                                            operator delete(var_70);
                                    }
                                    r0 = sub_100316658(&var_70, 0x0);
                                    r24 = r0;
                                    if ((sign_extend_64(var_59) & 0xffffffff80000000) != 0x0) {
                                            operator delete(var_70);
                                    }
                            }
                            else {
                                    r24 = [NSDictionary dictionaryWithContentsOfFile:[[CCFileUtils sharedFileUtils] fullPathForFilename:*(r19 + r27)]];
                            }
                            r23 = @selector(objectForKey:);
                            [objc_msgSend(r24, r23) floatValue];
                            *(int32_t *)(r19 + sign_extend_64(*(int32_t *)ivar_offset(_leftMargin))) = s0;
                            [objc_msgSend(r24, r23) floatValue];
                            *(int32_t *)(r19 + sign_extend_64(*(int32_t *)ivar_offset(_rightMargin))) = s0;
                            [objc_msgSend(r24, r23) floatValue];
                            *(int32_t *)(r19 + sign_extend_64(*(int32_t *)ivar_offset(_bottomMargin))) = s0;
                            [objc_msgSend(r24, r23) floatValue];
                            *(int32_t *)(r19 + sign_extend_64(*(int32_t *)ivar_offset(_topMargin))) = s0;
                            r25 = objc_msgSend(r24, r23);
                            r25 = [r19 hashFromSpriteSheetName:r25 textureName:objc_msgSend(r24, r23) frameName:objc_msgSend(r24, r23) leftMargin:r5 rightMargin:r6 bottomMargin:r7 andTopMargin:var_A0];
                            r28 = @selector(sharedFramedSpriteCache);
                            r0 = objc_msgSend(@class(MCFramedSpriteCache), r28);
                            r0 = [r0 processedWithHash:r25];
                            r23 = r0;
                            if (r0 == 0x0) {
                                    r23 = [r19 processDictionary:r24 withHash:r25];
                            }
                            r0 = objc_msgSend(@class(MCFramedSpriteCache), r28);
                            r27 = var_90;
                            [r0 updateCachedFilesForFileName:*(r19 + r27) withHash:r25];
                    }
                    r0 = objc_msgSend(@class(MCFramedSpriteCache), r28);
                    r0 = [r0 fileNameInCachedValues:*(r19 + r27)];
                    if (r0 != 0x0) {
                            *(int8_t *)(int64_t *)&r19->_lockHorizontalSize = [r0 lockHorizontalSize];
                            *(int8_t *)(int64_t *)&r19->_lockVerticalSize = [r0 lockVerticalSize];
                            *(int8_t *)(int64_t *)&r19->_useHorizontalTiling = [r0 useHorizontalTiling];
                            *(int8_t *)(int64_t *)&r19->_useVerticalTiling = [r0 useVerticalTiling];
                    }
                    else {
                            if (r24 == 0x0 || [r24 count] == 0x0) {
                                    if (objc_msgSend([CCConfiguration sharedConfiguration], var_A0) != 0x0) {
                                            r0 = *(r19 + r27);
                                            if (r0 != 0x0) {
                                                    r1 = [r0 UTF8String];
                                            }
                                            else {
                                                    r1 = "";
                                            }
                                            sub_10033c9b8(&var_70, r1);
                                            r0 = sub_10042ccfc(&var_70);
                                            if ((sign_extend_64(var_59) & 0xffffffff80000000) != 0x0) {
                                                    operator delete(var_70);
                                            }
                                            r0 = sub_100316658(&var_70, 0x0);
                                            r24 = r0;
                                            if ((sign_extend_64(var_59) & 0xffffffff80000000) != 0x0) {
                                                    operator delete(var_70);
                                            }
                                    }
                                    else {
                                            r24 = [NSDictionary dictionaryWithContentsOfFile:[[CCFileUtils sharedFileUtils] fullPathForFilename:*(r19 + r27)]];
                                    }
                            }
                            r21 = @selector(objectForKey:);
                            r0 = objc_msgSend(r24, r21);
                            r0 = [r0 boolValue];
                            r20 = sign_extend_64(*(int32_t *)ivar_offset(_lockHorizontalSize));
                            *(int8_t *)(r19 + r20) = r0;
                            r0 = objc_msgSend(r24, r21);
                            r0 = [r0 boolValue];
                            r25 = sign_extend_64(*(int32_t *)ivar_offset(_lockVerticalSize));
                            *(int8_t *)(r19 + r25) = r0;
                            r0 = objc_msgSend(r24, r21);
                            r0 = [r0 boolValue];
                            r26 = sign_extend_64(*(int32_t *)ivar_offset(_useHorizontalTiling));
                            *(int8_t *)(r19 + r26) = r0;
                            r0 = objc_msgSend(r24, r21);
                            r0 = [r0 boolValue];
                            r22 = sign_extend_64(*(int32_t *)ivar_offset(_useVerticalTiling));
                            *(int8_t *)(r19 + r22) = r0;
                            r0 = [MCFSCachedValues alloc];
                            r0 = [r0 init];
                            r21 = r0;
                            [r0 setLockHorizontalSize:*(int8_t *)(r19 + r20)];
                            [r21 setLockVerticalSize:*(int8_t *)(r19 + r25)];
                            [r21 setUseHorizontalTiling:*(int8_t *)(r19 + r26)];
                            [r21 setUseVerticalTiling:*(int8_t *)(r19 + r22)];
                            [objc_msgSend(@class(MCFramedSpriteCache), r28) updateCachedValuesForFileName:*(r19 + r27) withValues:r21];
                            if (r21 != 0x0) {
                                    [r21 release];
                            }
                    }
                    r19 = [r19 setupWithProcessedValues:r23];
            }
            r0 = r19;
    }
    return r0;
}

-(void)setTileColor:(struct _ccColor4B)arg2 horizontal:(int)arg3 vertical:(int)arg4 {
    memcpy(&r2, &arg2, 0x4);
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(tileColors));
    r8 = r0 + r8;
    asm { umaddl     x8, w3, w9, x8 };
    *(int32_t *)(r8 + r4 * 0x4) = r2;
    [r0 updateColorAndOpacity];
    return;
}

-(void)setColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    r0 = self;
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_hasFinishedLoading != 0x0) {
            [[&var_10 super] setColor:r2];
    }
    else {
            *(int32_t *)(int64_t *)&r0->_importedColor = r2;
    }
    return;
}

-(void)setOpacity:(unsigned char)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_hasFinishedLoading != 0x0) {
            [[&var_10 super] setOpacity:r2];
    }
    else {
            *(int8_t *)(int64_t *)&r0->_importedOpacity = r2;
    }
    return;
}

-(void)setContentSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    r31 = r31 - 0x50;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v1;
    v9 = v0;
    if (d9 == *(int128_t *)*_CGSizeZero) {
            asm { fccmp      d8, d1, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            r19 = r0;
            if (*(int8_t *)(int64_t *)&r0->_hasFinishedLoading != 0x0) {
                    r9 = *(int8_t *)(int64_t *)&r19->_lockHorizontalSize;
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_lockVerticalSize));
                    r8 = *(int8_t *)(r19 + r8);
                    if (r9 != 0x0) {
                            if (r8 == 0x0) {
                                    [r19 resizeTilesIfNeeded:r2];
                                    [r19 requestSize:*(int32_t *)(int64_t *)&r19->_roundType round:r3];
                                    [[&var_40 super] setContentSize:r2];
                            }
                    }
                    else {
                            [r19 resizeTilesIfNeeded:r2];
                            [r19 requestSize:*(int32_t *)(int64_t *)&r19->_roundType round:r3];
                            [[&var_40 super] setContentSize:r2];
                    }
            }
            else {
                    [[&var_30 super] setContentSize:r2];
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_importedSize));
                    *(r19 + r8) = d9;
                    *(0x8 + r19 + r8) = d8;
            }
    }
    return;
}

-(void)setBlendFunc:(struct _ccBlendFunc)arg2 {
    memcpy(&r2, &arg2, 0x8);
    self->_blendFunc = r2;
    return;
}

+(void *)placeToString:(int)arg2 :(int)arg3 {
    r3 = arg3;
    r8 = 0x100e79170;
    asm { smaddl     x8, w2, w9, x8 };
    r0 = *(r8 + r3 * 0x8);
    return r0;
}

-(void)resizeMarginsLeft:(float *)arg2 right:(float *)arg3 newLenght:(float)arg4 andOriginalLenght:(float)arg5 {
    r3 = arg3;
    r2 = arg2;
    s2 = *(int32_t *)r2;
    s3 = *(int32_t *)r3;
    s3 = s2 + s3;
    if (s3 * s1 >= s0) {
            s0 = s0 + 0xbff0000000000000;
            asm { fdiv       s0, s0, s1 };
            *(int32_t *)r2 = s2 - (s3 - s0) * 0x3fe0000000000000;
            *(int32_t *)r3 = *(int32_t *)r3 - (s3 - s0) * 0x3fe0000000000000;
    }
    return;
}

-(void)checkMarginsLeft:(float *)arg2 right:(float *)arg3 andLenght:(float)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    s1 = *(int32_t *)r2;
    if (s1 + *(int32_t *)r3 >= 0x3ff0000000000000) {
            if (!CPU_FLAGS & LE) {
                    *(int32_t *)r2 = 0x3ff0000000000000 - s1;
                    *(int32_t *)r3 = 0x3ff0000000000000 - *(int32_t *)r3;
                    [r0 checkMarginsLeft:r2 right:r3 andLenght:r4];
            }
            else {
                    asm { fdiv       s0, s2, s0 };
                    *(int32_t *)r2 = s1 - s0 * 0x3fe0000000000000;
                    *(int32_t *)r3 = *(int32_t *)r3 - s0 * 0x3fe0000000000000;
            }
    }
    return;
}

-(float)clampValue:(float)arg2 {
    r0 = self;
    var_10 = d9;
    stack[-24] = d8;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    if (s0 >= 0x0) {
            asm { fccmp      s8, s0, #0x0, pl };
    }
    if (!CPU_FLAGS & LE) {
            loc_10098a5e8("-[MCFramedSprite clampValue:]");
            r0 = sub_10031169c();
    }
    return r0;
}

-(void *)processDictionary:(void *)arg2 withHash:(void *)arg3 {
    [[arg2 objectForKey:@"Left_Margin"] floatValue];
    [self clampValue:@"Left_Margin"];
    [[arg2 objectForKey:@"Right_Margin"] floatValue];
    [self clampValue:@"Right_Margin"];
    [[arg2 objectForKey:@"Bottom_Margin"] floatValue];
    [self clampValue:@"Bottom_Margin"];
    [[arg2 objectForKey:@"Top_Margin"] floatValue];
    [self clampValue:@"Top_Margin"];
    r20 = [self processParametersWithSpriteSheetName:[arg2 objectForKey:@"Sprite_Sheet"] textureName:[arg2 objectForKey:@"Texture"] sourceFrame:[arg2 objectForKey:@"Source_Frame"] leftMargin:r5 rightMargin:r6 bottomMargin:r7 topMargin:var_50];
    [[MCFramedSpriteCache sharedFramedSpriteCache] addProcessedValues:r20 withHash:arg3];
    r0 = r20;
    return r0;
}

-(int)calAproximatedSize:(float)arg2 withPreference:(int)arg3 andUnit:(float)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (s1 == 0x0) {
            r0 = 0x0;
    }
    else {
            if (s0 < 0x0) {
                    r0 = [r0 calAproximatedSize:r2 withPreference:r3 andUnit:r4];
                    asm { neg        w0, w0 };
            }
            else {
                    asm { fcvt       d0, s0 };
                    asm { fcvt       d1, s1 };
                    asm { fcvtzs     w8, d0 };
                    asm { scvtf      s0, w8 };
                    asm { fcvtzs     w8, d1 };
                    asm { scvtf      s1, w8 };
                    if (r2 != 0x2) {
                            asm { fdiv       s1, s0, s1 };
                            if (r2 != 0x0) {
                                    asm { fcsel      s0, s0, s1, ne };
                            }
                            if (r2 == 0x1) {
                                    asm { fcsel      s0, s2, s0, eq };
                            }
                    }
                    else {
                            asm { fdiv       s0, s0, s1 };
                    }
                    asm { fcvtzs     w0, s0 };
            }
    }
    return r0;
}

-(void)configWithProcessedValues:(void *)arg2 {
    r31 = r31 - 0xc0;
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
    r19 = arg2;
    r20 = self;
    r0 = [arg2 textureName];
    if (r0 != 0x0) {
            var_A0 = r19;
            r21 = sub_10034dd34(r0);
            [r20->_atlasArray addObject:[[CCTextureAtlas alloc] initWithTexture:r21 capacity:0x9]];
            if (([r21 hasPremultipliedAlpha] & 0x1) == 0x0) {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_blendFunc));
                    d0 = *0x100ba36a8;
                    *(r20 + r8) = d0;
            }
            r9 = 0x0;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_placeSprites));
            var_98 = r8;
            stack[-160] = r20;
            var_88 = r20;
            r22 = r20;
            r19 = var_A0;
            r21 = r8;
            do {
                    r25 = 0x0;
                    r24 = r9;
                    r26 = var_88;
                    do {
                            r23 = [r19 valueForKey:[[r22 class] placeToString:r24 :r25]];
                            r2 = r23;
                            [*(r25 * 0x8 + r26 + r21) setDisplayFrame:r2];
                            [r23 rect];
                            asm { fcvt       d0, s9 };
                            d0 = d3 + d0;
                            asm { fcvt       s9, d0 };
                            r25 = r25 + 0x1;
                    } while (r25 != 0x3);
                    [r23 rect];
                    d0 = 0x0 + d2;
                    asm { fcvt       s0, d0 };
                    r24 = r24 + 0x1;
                    asm { fcvt       d8, s0 };
                    if (r24 == 0x3) {
                        break;
                    }
                    r9 = r24;
                    var_88 = var_88 + 0x18;
            } while (true);
            d8 = 0x0;
            r23 = stack[-160];
            r22 = r23 + var_98;
            asm { fdiv       s0, s9, s0 };
            asm { fcvt       d9, s0 };
            [[&var_70 super] setContentSize:r2];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_originalSize));
            *(int128_t *)(r23 + r8) = d8;
            *(int128_t *)(0x8 + r23 + r8) = d9;
            r20 = *(int8_t *)(int64_t *)&r23->_useHorizontalTiling;
            [*(r22 + 0x28) setUseHorizontalTiling:r20];
            [*(r22 + 0x20) setUseHorizontalTiling:r20];
            [*(r22 + 0x18) setUseHorizontalTiling:r20];
            r19 = *(int8_t *)(int64_t *)&r23->_useVerticalTiling;
            [*(r22 + 0x38) setUseVerticalTiling:r19];
            [*(r22 + 0x20) setUseVerticalTiling:r19];
            [*(r22 + 0x8) setUseVerticalTiling:r19];
    }
    return;
}

-(void)resizeTilesIfNeeded:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x90;
    var_60 = d15;
    stack[-104] = d14;
    var_50 = d13;
    stack[-88] = d12;
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
    v8 = v1;
    v9 = v0;
    r19 = self;
    r21 = (int64_t *)&self->_placeSprites;
    [*r21 contentSize];
    asm { fcvt       s0, d0 };
    var_74 = s0;
    objc_msgSend(*(r21 + 0x30), r20);
    asm { fcvt       s13, d0 };
    objc_msgSend(*r21, r20);
    v10 = v1;
    objc_msgSend(*(r21 + 0x10), r20);
    v11 = v1;
    objc_msgSend(*(r21 + 0x18), r20);
    asm { fcvt       s0, d0 };
    var_78 = s0;
    objc_msgSend(*(r21 + 0x8), r20);
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_cutVerticalCentralTile));
    *(int8_t *)(r19 + r22) = 0x0;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_cutHorizontalCentralTile));
    *(int8_t *)(r19 + r9) = 0x0;
    r20 = (int64_t *)&r19->_originalSize;
    d1 = *(int128_t *)r20;
    d0 = *(int128_t *)(r20 + 0x8);
    d2 = d1 - d9;
    asm { fcvt       s2, d2 };
    d0 = d0 - d8;
    asm { fcvt       s14, d0 };
    asm { fcvt       d0, s2 };
    if (d0 > *0x100bc5908) {
            if (*(int8_t *)(int64_t *)&r19->_useHorizontalTiling != 0x0) {
                    var_7C = s13;
                    r8 = 0x0;
                    *(int8_t *)(r19 + r9) = 0x1;
            }
            else {
                    asm { fcvt       s0, d9 };
                    asm { fcvt       s1, d1 };
                    [r19 resizeMarginsLeft:&var_64 right:&var_68 newLenght:r4 andOriginalLenght:r5];
                    asm { fcvt       d0, s0 };
                    d1 = *r20;
                    d0 = d1 * d0;
                    asm { fcvt       s2, d0 };
                    s0 = var_68;
                    asm { fcvt       d0, s0 };
                    d0 = d1 * d0;
                    asm { fcvt       s1, d0 };
                    asm { fcvt       d0, s2 };
                    d0 = d9 - d0;
                    var_7C = s1;
                    asm { fcvt       d1, s1 };
                    d0 = d0 - d1;
                    asm { fcvt       s0, d0 };
                    var_78 = s0;
                    var_74 = s2;
                    r8 = 0x1;
            }
    }
    else {
            r8 = 0x0;
            var_7C = s13;
    }
    d15 = *0x100bc5908;
    asm { fcvt       s0, d10 };
    asm { fcvt       s13, d11 };
    asm { fcvt       s12, d12 };
    asm { fcvt       d1, s14 };
    if (d1 > d15) {
            if (*(int8_t *)(int64_t *)&r19->_useVerticalTiling != 0x0) {
                    *(int8_t *)(r19 + r22) = 0x1;
                    if ((r8 & 0x1) != 0x0) {
                            asm { fcvt       d8, s1 };
                            asm { fcvt       d9, s0 };
                            [*r21 setContentSize:r2];
                            asm { fcvt       d10, s0 };
                            objc_msgSend(*(r21 + 0x18), r19);
                            asm { fcvt       d11, s0 };
                            objc_msgSend(*(r21 + 0x30), r19);
                            asm { fcvt       d9, s12 };
                            objc_msgSend(*(r21 + 0x8), r19);
                            objc_msgSend(*(r21 + 0x20), r19);
                            objc_msgSend(*(r21 + 0x38), r19);
                            asm { fcvt       d9, s13 };
                            objc_msgSend(*(r21 + 0x10), r19);
                            objc_msgSend(*(r21 + 0x28), r19);
                            objc_msgSend(*(r21 + 0x40), r19);
                    }
            }
            else {
                    asm { fcvt       s0, d8 };
                    asm { fcvt       s1, d1 };
                    [r19 resizeMarginsLeft:&var_6C right:&var_70 newLenght:r4 andOriginalLenght:r5];
                    asm { fcvt       d0, s0 };
                    d1 = *(r20 + 0x8);
                    asm { fcvt       s0, d0 };
                    asm { fcvt       d2, s2 };
                    d1 = d1 * d2;
                    asm { fcvt       s13, d1 };
                    asm { fcvt       d1, s0 };
                    asm { fcvt       d2, s13 };
                    asm { fcvt       s12, d1 };
                    asm { fcvt       d8, s1 };
                    asm { fcvt       d9, s0 };
                    [*r21 setContentSize:r2];
                    asm { fcvt       d10, s0 };
                    objc_msgSend(*(r21 + 0x18), r19);
                    asm { fcvt       d11, s0 };
                    objc_msgSend(*(r21 + 0x30), r19);
                    asm { fcvt       d9, s12 };
                    objc_msgSend(*(r21 + 0x8), r19);
                    objc_msgSend(*(r21 + 0x20), r19);
                    objc_msgSend(*(r21 + 0x38), r19);
                    asm { fcvt       d9, s13 };
                    objc_msgSend(*(r21 + 0x10), r19);
                    objc_msgSend(*(r21 + 0x28), r19);
                    objc_msgSend(*(r21 + 0x40), r19);
            }
    }
    else {
            if (r8 != 0x0) {
                    asm { fcvt       d8, s1 };
                    asm { fcvt       d9, s0 };
                    [*r21 setContentSize:r2];
                    asm { fcvt       d10, s0 };
                    objc_msgSend(*(r21 + 0x18), r19);
                    asm { fcvt       d11, s0 };
                    objc_msgSend(*(r21 + 0x30), r19);
                    asm { fcvt       d9, s12 };
                    objc_msgSend(*(r21 + 0x8), r19);
                    objc_msgSend(*(r21 + 0x20), r19);
                    objc_msgSend(*(r21 + 0x38), r19);
                    asm { fcvt       d9, s13 };
                    objc_msgSend(*(r21 + 0x10), r19);
                    objc_msgSend(*(r21 + 0x28), r19);
                    objc_msgSend(*(r21 + 0x40), r19);
            }
    }
    return;
}

-(void *)processParametersWithSpriteSheetName:(void *)arg2 textureName:(void *)arg3 sourceFrame:(void *)arg4 leftMargin:(float)arg5 rightMargin:(float)arg6 bottomMargin:(float)arg7 topMargin:(float)arg8 {
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
    r21 = arg4;
    r23 = arg2;
    r22 = self;
    var_A0 = s1;
    stack[-172] = s0;
    var_A8 = s3;
    stack[-180] = s2;
    r0 = [MCFSProcessedValues alloc];
    r0 = [r0 init];
    r0 = [r0 autorelease];
    [r0 setSpriteSheet:r23];
    [r0 setTextureName:arg3];
    [r0 setSourceFrame:r21];
    [r0 setLeftMargin:r21];
    [r0 setRightMargin:r21];
    [r0 setBottomMargin:r21];
    var_B0 = r0;
    v0 = v3;
    [r0 setTopMargin:r21];
    var_B8 = sub_10034dd34(arg3);
    if (r23 != 0x0) {
            r0 = [r23 isEqualToString:r2];
            r24 = 0x0;
            if (r21 != 0x0) {
                    r24 = 0x0;
                    if ((r0 & 0x1) == 0x0) {
                            if (([r21 isEqualToString:r2] & 0x1) != 0x0) {
                                    r24 = 0x0;
                            }
                            else {
                                    r24 = sub_10034dba0(r23, r21, 0x0);
                            }
                    }
            }
    }
    else {
            r24 = 0x0;
    }
    if (var_B8 == 0x0 && r24 == 0x0) {
            var_B0 = 0x0;
    }
    else {
            if (r24 != 0x0) {
                    [r24 rect];
                    r27 = [r24 rotated];
            }
            else {
                    [var_B8 contentSize];
                    r27 = 0x0;
            }
            asm { fcvt       s0, d10 };
            [r22 checkMarginsLeft:r2 right:r3 andLenght:r4];
            asm { fcvt       s0, d8 };
            objc_msgSend(r22, r23);
            s1 = var_A0;
            s0 = stack[-172];
            asm { fcvt       d0, s0 };
            d0 = d10 * d0;
            asm { fcvt       s0, d0 };
            asm { fcvt       d1, s1 };
            d1 = d10 * d1;
            asm { fcvt       s1, d1 };
            asm { fcvt       d2, s2 };
            d2 = d8 * d2;
            asm { fcvt       s2, d2 };
            asm { fcvt       d3, s3 };
            d3 = d8 * d3;
            asm { fcvt       s3, d3 };
            if (r27 != 0x0) {
                    asm { fcsel      d4, d11, d9, ne };
            }
            asm { fcvt       s4, d4 };
            s0 = s4 + s0;
            asm { fcvt       d0, s4 };
            d0 = d10 + d0;
            asm { fcvt       d1, s1 };
            d1 = d0 - d1;
            asm { fcvt       s1, d1 };
            asm { fcvt       s0, d0 };
            if (CPU_FLAGS & NE) {
                    asm { fcsel      d0, d9, d11, ne };
            }
            asm { fcvt       s0, d0 };
            if (CPU_FLAGS & NE) {
                    asm { fcsel      s1, s2, s3, ne };
            }
            s1 = s1 + s0;
            asm { fcvt       d0, s0 };
            if (CPU_FLAGS & NE) {
                    asm { fcsel      s1, s3, s2, ne };
            }
            r22 = 0x0;
            asm { fcvt       d1, s1 };
            d1 = (d8 - d1) + d0;
            asm { fcvt       s1, d1 };
            asm { fcvt       s0, d0 };
            do {
                    r26 = 0x0;
                    r21 = r22 + 0x1;
                    do {
                            r19 = r27;
                            if (r27 != 0x0) {
                                    r20 = *_CGPointZero;
                                    r24 = @selector(placeToString::);
                                    r23 = @selector(frameWithTexture:rectInPixels:rotated:offset:originalSize:);
                                    r8 = &var_98;
                                    asm { fcvt       d1, s0 };
                                    asm { fcvt       d3, s2 };
                                    r28 = r26 + 0x1;
                                    asm { fcvt       d2, s2 };
                                    asm { fcvt       d4, s0 };
                                    r0 = @class(CCSpriteFrame);
                                    asm { fcvt       d5, s0 };
                                    d1 = d3 * d5;
                                    d2 = d2 * d5;
                                    d3 = d4 * d5;
                                    d4 = *(int128_t *)r20;
                                    d5 = *(int128_t *)(r20 + 0x8);
                                    r27 = objc_msgSend(r0, r23);
                                    r1 = r24;
                            }
                            else {
                                    r20 = *_CGPointZero;
                                    r24 = @selector(placeToString::);
                                    r23 = @selector(frameWithTexture:rectInPixels:rotated:offset:originalSize:);
                                    asm { fcvt       d1, s0 };
                                    r8 = &var_98;
                                    asm { fcvt       d3, s2 };
                                    r28 = r26 + 0x1;
                                    asm { fcvt       d5, s0 };
                                    asm { fcvt       d4, s0 };
                                    r0 = @class(CCSpriteFrame);
                                    asm { fcvt       d6, s0 };
                                    d1 = d3 * d6;
                                    d2 = d5 * d6;
                                    d3 = d4 * d6;
                                    d4 = *(int128_t *)r20;
                                    d5 = *(int128_t *)(r20 + 0x8);
                                    r27 = objc_msgSend(r0, r23);
                                    r1 = r24;
                            }
                            objc_msgSend(@class(MCFramedSprite), r1);
                            r26 = r28;
                            objc_msgSend(var_B0, r25);
                            r27 = r19;
                    } while (r28 != 0x3);
                    r22 = r21;
            } while (r21 != 0x3);
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = var_B0;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)draw {
    r31 = r31 - 0x1f0;
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
    r20 = self;
    if ([[CCConfiguration sharedConfiguration] useNewRenderer] != 0x0) {
            r0 = sub_1003812ec();
            r19 = (int64_t *)&r20->_mcRenderJob;
            *(int32_t *)(r19 + 0x18) = r0;
            *(int32_t *)(r19 + 0x1c) = sub_1003812ec();
            var_190 = q0;
            r20 = r20->_atlasArray;
            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r22 = r0;
                    r26 = *var_190;
                    do {
                            r27 = 0x0;
                            do {
                                    if (*var_190 != r26) {
                                            objc_enumerationMutation(r20);
                                    }
                                    [*(var_198 + r27 * 0x8) totalQuads];
                                    objc_msgSend(r25, r24);
                                    r27 = r27 + 0x1;
                            } while (r27 < r22);
                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r22 = r0;
                    } while (r0 != 0x0);
            }
    }
    else {
            sub_10031a6c4();
            r19 = sign_extend_64(*(int32_t *)ivar_offset(_shaderProgram));
            [*(r20 + r19) use];
            [*(r20 + r19) setUniformsForBuiltins];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_blendFunc));
            sub_10031a4a8(*(int128_t *)(r20 + r8), *(int128_t *)(0x4 + r20 + r8));
            var_1D0 = q0;
            r19 = r20->_atlasArray;
            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r21 = r0;
                    r23 = *var_1D0;
                    do {
                            r25 = 0x0;
                            do {
                                    if (*var_1D0 != r23) {
                                            objc_enumerationMutation(r19);
                                    }
                                    [*(var_1D8 + r25 * 0x8) drawQuads];
                                    r25 = r25 + 0x1;
                            } while (r25 < r21);
                            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r21 = r0;
                    } while (r0 != 0x0);
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void *)texture {
    r0 = self->_atlasArray;
    r0 = [r0 objectAtIndex:0x0];
    r0 = [r0 texture];
    return r0;
}

-(int)roundType {
    r0 = *(int32_t *)(int64_t *)&self->_roundType;
    return r0;
}

-(void)didLoadFromCCB {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    *(int8_t *)(int64_t *)&r0->_hasFinishedLoading = 0x1;
    if (*(int8_t *)(int64_t *)&r0->_hasBeenInitialized == 0x0) {
            r19 = r0;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_dataType));
            r8 = *(int32_t *)(r0 + r8);
            if (r8 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r8 = &@selector(startWithParameters);
                    }
                    else {
                            r8 = &@selector(startWithDescriptionFileName);
                    }
            }
            objc_msgSend(r0, *r8);
            [r19 setContentSize:r2];
            [r19 setColor:*(int32_t *)(int64_t *)&r19->_importedColor];
            [r19 setOpacity:r2];
    }
    return;
}

-(void)setRoundType:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_roundType = arg2;
    return;
}

-(struct _ccBlendFunc)blendFunc {
    r0 = self->_blendFunc;
    return r0;
}

-(void *)startWithDescriptionFileNameNew {
    r31 = r31 - 0x100;
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
    r19 = self;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_descriptionName));
    r0 = *(self + r25);
    if (r0 == 0x0 || ([r0 isEqualToString:r2] & 0x1) != 0x0) goto loc_10033da7c;

loc_10033d0bc:
    r0 = *(r19 + r25);
    r0 = [r0 pathExtension];
    if (r0 != 0x0) {
            if ([r0 isEqualToString:r2] != 0x0) {
                    [*(r19 + r25) release];
                    *(r19 + r25) = [[*(r19 + r25) stringByAppendingPathExtension:@"plist"] retain];
            }
    }
    else {
            [*(r19 + r25) release];
            *(r19 + r25) = [[*(r19 + r25) stringByAppendingPathExtension:@"plist"] retain];
    }
    r0 = [MCFramedSpriteCache sharedFramedSpriteCache];
    r28 = r0;
    r2 = *(r19 + r25);
    r0 = [r0 fileNameInCachedFiles:r2];
    r23 = r0;
    if (r0 == 0x0) goto loc_10033d170;

loc_10033d158:
    r2 = @"";
    if (([r23 isEqualToString:r2] & 0x1) == 0x0) goto loc_10033d18c;

loc_10033d170:
    r0 = *(r19 + r25);
    if (r0 != 0x0) {
            r1 = [r0 UTF8String];
    }
    else {
            r1 = "";
    }
    sub_10033c9b8(&var_90, r1);
    r0 = sub_10042ccfc(&var_90);
    if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
            operator delete(var_90);
    }
    q0 = var_A8;
    r0 = sub_1003167cc(&var_90, 0x0);
    loc_1009ca82c(&var_78, &var_A8, r2);
    r0 = sub_1009ca77c(&var_A8);
    if (0x0 != 0x6) goto loc_10033d2b4;

loc_10033d290:
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
    if (0x0 == 0x6) {
            r20 = &var_78;
    }
    else {
            r20 = 0x1011abed0;
            sub_1002d06c0(*r20);
    }
    r21 = *r20;
    sub_10033c9b8(&var_A8, "Left_Margin");
    r0 = sub_1002c1520(r21, &var_A8);
    r22 = r0;
    if ((sign_extend_64(var_91) & 0xffffffff80000000) != 0x0) {
            operator delete(var_A8);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
            asm { fmin       s0, s0, s8 };
            asm { fmaxnm     s0, s0, s9 };
    }
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_leftMargin));
    *(int32_t *)(r19 + r23) = 0x0;
    sub_10033c9b8(&var_A8, "Right_Margin");
    r0 = sub_1002c1520(r21, &var_A8);
    r22 = r0;
    if ((sign_extend_64(var_91) & 0xffffffff80000000) != 0x0) {
            operator delete(var_A8);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
            asm { fmin       s0, s0, s8 };
            asm { fmaxnm     s0, s0, s9 };
    }
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_rightMargin));
    *(int32_t *)(r19 + r24) = 0x0;
    sub_10033c9b8(&var_A8, "Bottom_Margin");
    r0 = sub_1002c1520(r21, &var_A8);
    r22 = r0;
    if ((sign_extend_64(var_91) & 0xffffffff80000000) != 0x0) {
            operator delete(var_A8);
    }
    var_E0 = r28;
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
            asm { fmin       s0, s0, s8 };
            asm { fmaxnm     s0, s0, s9 };
    }
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_bottomMargin));
    *(int32_t *)(r19 + r26) = 0x0;
    sub_10033c9b8(&var_A8, "Top_Margin");
    r0 = sub_1002c1520(r21, &var_A8);
    r22 = r0;
    if ((sign_extend_64(var_91) & 0xffffffff80000000) != 0x0) {
            operator delete(var_A8);
    }
    if (r22 != 0x0) {
            sub_1009cafd0(r22 + 0x28);
            asm { fmin       s0, s0, s8 };
            asm { fmaxnm     s0, s0, s9 };
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_topMargin));
    var_E8 = r8;
    *(int32_t *)(r19 + r8) = 0x0;
    sub_10033c9b8(&var_A8, "Sprite_Sheet");
    r0 = sub_1002c1520(r21, &var_A8);
    r22 = r0;
    if ((sign_extend_64(var_91) & 0xffffffff80000000) != 0x0) {
            operator delete(var_A8);
    }
    if (r22 != 0x0 && *(int32_t *)(r22 + 0x30) == 0x4) {
            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    }
    else {
            sub_10033c9b8(&var_A8, "");
    }
    sub_10033c9b8(&var_C0, "Texture");
    r0 = sub_1002c1520(r21, &var_C0);
    r22 = r0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if (r22 != 0x0 && *(int32_t *)(r22 + 0x30) == 0x4) {
            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    }
    else {
            sub_10033c9b8(&var_C0, "");
    }
    sub_10033c9b8(&var_D8, "Source_Frame");
    r0 = sub_1002c1520(r21, &var_D8);
    r21 = r0;
    if ((sign_extend_64(var_C1) & 0xffffffff80000000) != 0x0) {
            operator delete(var_D8);
    }
    if (r21 != 0x0 && *(int32_t *)(r21 + 0x30) == 0x4) {
            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    }
    else {
            sub_10033c9b8(&var_D8, "");
    }
    r27 = r23;
    r28 = r24;
    r20 = r26;
    r0 = sub_10033cef0(&var_A8, &var_C0, &var_D8);
    r22 = r0;
    r0 = [var_E0 processedWithHash:r22];
    r21 = r0;
    if (r0 != 0x0) goto loc_10033d694;

loc_10033d5d0:
    r9 = var_A8;
    r8 = &var_A8;
    if (sign_extend_64(var_91) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r2 = r8;
            }
            else {
                    r2 = r9;
            }
    }
    r21 = [NSString stringWithUTF8String:r2];
    r9 = var_C0;
    r8 = &var_C0;
    if (sign_extend_64(var_A9) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r2 = r8;
            }
            else {
                    r2 = r9;
            }
    }
    r24 = [NSString stringWithUTF8String:r2];
    r9 = var_D8;
    r8 = &var_D8;
    if (sign_extend_64(var_C1) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r2 = r8;
            }
            else {
                    r2 = r9;
            }
    }
    r0 = [r19 processParametersWithSpriteSheetName:r21 textureName:r24 sourceFrame:[NSString stringWithUTF8String:r2] leftMargin:r5 rightMargin:r6 bottomMargin:r7 topMargin:stack[-256]];
    r21 = r0;
    if (r0 == 0x0) goto loc_10033d7b0;

loc_10033d67c:
    [var_E0 addProcessedValues:r21 withHash:r22];
    goto loc_10033d694;

loc_10033d694:
    [var_E0 updateCachedFilesForFileName:*(r19 + r25) withHash:r22];
    r20 = 0x0;
    r8 = &var_D8;
    goto loc_10033d6b4;

loc_10033d6b4:
    if ((sign_extend_64(*(int8_t *)(r8 + 0x17)) & 0xffffffff80000000) != 0x0) {
            operator delete(var_D8);
    }
    r28 = var_E0;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if ((sign_extend_64(var_91) & 0xffffffff80000000) != 0x0) {
            operator delete(var_A8);
    }
    goto loc_10033d6e8;

loc_10033d6e8:
    if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
            operator delete(var_90);
    }
    if (r20 != 0x0) goto loc_10033da74;

loc_10033d6fc:
    r2 = *(r19 + r25);
    r0 = [r28 fileNameInCachedValues:r2];
    r22 = r0;
    if (r0 == 0x0) goto loc_10033d78c;

loc_10033d718:
    *(int8_t *)(int64_t *)&r19->_lockHorizontalSize = [r22 lockHorizontalSize];
    *(int8_t *)(int64_t *)&r19->_lockVerticalSize = [r22 lockVerticalSize];
    *(int8_t *)(int64_t *)&r19->_useHorizontalTiling = [r22 useHorizontalTiling];
    *(int8_t *)(int64_t *)&r19->_useVerticalTiling = [r22 useVerticalTiling];
    goto loc_10033da5c;

loc_10033da5c:
    r19 = [r19 setupWithProcessedValues:r21];
    goto loc_10033da74;

loc_10033da74:
    sub_1009ca77c(&var_78);
    goto loc_10033da7c;

loc_10033da7c:
    r0 = r19;
    return r0;

loc_10033d78c:
    if (0x0 != 0x0) goto loc_10033d838;

loc_10033d794:
    r0 = *(r19 + r25);
    if (r0 != 0x0) {
            r1 = [r0 UTF8String];
    }
    else {
            r1 = "";
    }
    sub_10033c9b8(&var_90, r1);
    r0 = sub_10042ccfc(&var_90);
    if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
            operator delete(var_90);
    }
    q0 = var_A8;
    r0 = sub_1003167cc(&var_90, 0x0);
    loc_1009ca82c(&var_78, &var_A8, r2);
    sub_1009ca77c(&var_A8);
    if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
            operator delete(var_90);
    }
    if (0x0 != 0x6) goto loc_10033da74;

loc_10033d838:
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
    if (0x0 == 0x6) {
            r20 = &var_78;
    }
    else {
            r20 = 0x1011abed0;
            sub_1002d06c0(*r20);
    }
    r22 = *r20;
    sub_10033c9b8(&var_90, "Lock_Horizontal_Size");
    r0 = sub_1002c1520(r22, &var_90);
    r23 = r0;
    if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
            operator delete(var_90);
    }
    if (r23 != 0x0) {
            r0 = sub_1009cb068(r23 + 0x28, 0x0);
    }
    else {
            r0 = 0x0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_lockHorizontalSize));
    *(int8_t *)(r19 + r20) = r0;
    sub_10033c9b8(&var_90, "Lock_Vertical_Size");
    r0 = sub_1002c1520(r22, &var_90);
    r23 = r0;
    if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
            operator delete(var_90);
    }
    if (r23 != 0x0) {
            r0 = sub_1009cb068(r23 + 0x28, 0x0);
    }
    else {
            r0 = 0x0;
    }
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_lockVerticalSize));
    *(int8_t *)(r19 + r24) = r0;
    sub_10033c9b8(&var_90, "Use_Horizontal_Tiling");
    r0 = sub_1002c1520(r22, &var_90);
    r23 = r0;
    if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
            operator delete(var_90);
    }
    if (r23 != 0x0) {
            r0 = sub_1009cb068(r23 + 0x28, 0x0);
    }
    else {
            r0 = 0x0;
    }
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_useHorizontalTiling));
    *(int8_t *)(r19 + r23) = r0;
    sub_10033c9b8(&var_90, "Use_Vertical_Tiling");
    r0 = sub_1002c1520(r22, &var_90);
    r22 = r0;
    if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
            operator delete(var_90);
    }
    if (r22 != 0x0) {
            r0 = sub_1009cb068(r22 + 0x28, 0x0);
    }
    else {
            r0 = 0x0;
    }
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_useVerticalTiling));
    *(int8_t *)(r19 + r26) = r0;
    r0 = [MCFSCachedValues alloc];
    r0 = [r0 init];
    r22 = r0;
    [r0 setLockHorizontalSize:*(int8_t *)(r19 + r20)];
    [r22 setLockVerticalSize:*(int8_t *)(r19 + r24)];
    [r22 setUseHorizontalTiling:*(int8_t *)(r19 + r23)];
    [r22 setUseVerticalTiling:*(int8_t *)(r19 + r26)];
    [r28 updateCachedValuesForFileName:*(r19 + r25) withValues:r22];
    if (r22 != 0x0) {
            [r22 release];
    }
    goto loc_10033da5c;

loc_10033d7b0:
    r8 = &var_D8;
    r20 = 0x1;
    goto loc_10033d6b4;

loc_10033d2b4:
    r21 = 0x0;
    r20 = 0x1;
    goto loc_10033d6e8;

loc_10033d18c:
    r0 = [MCFramedSpriteCache sharedFramedSpriteCache];
    r0 = [r0 processedWithHash:r23];
    r21 = r0;
    if (r0 == 0x0) goto loc_10033da74;

loc_10033d1b0:
    [r21 leftMargin];
    *(int32_t *)(int64_t *)&r19->_leftMargin = s0;
    [r21 rightMargin];
    *(int32_t *)(int64_t *)&r19->_rightMargin = s0;
    [r21 bottomMargin];
    *(int32_t *)(int64_t *)&r19->_bottomMargin = s0;
    [r21 topMargin];
    *(int32_t *)(int64_t *)&r19->_topMargin = s0;
    goto loc_10033d6fc;
}

-(struct CGSize)requestSize:(struct CGSize)arg2 round:(int)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x100;
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
    r21 = r2;
    v11 = v1;
    v8 = v0;
    r28 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_placeSprites));
    r19 = self + r23;
    [*r19 contentSize];
    asm { fcvt       s12, d0 };
    objc_msgSend(*(r19 + 0x30), r20);
    asm { fcvt       s10, d0 };
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_cutHorizontalCentralTile));
    if (*(int8_t *)(r28 + r24) == 0x0) {
            [*(r19 + 0x20) contentSize];
            asm { fcvt       s9, d0 };
    }
    [*r19 contentSize];
    asm { fcvt       s15, d1 };
    objc_msgSend(*(r19 + 0x10), r20);
    d0 = d11 - d1;
    asm { fcvt       s0, d0 };
    s11 = s0 - s15;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_cutVerticalCentralTile));
    if (*(int8_t *)(r28 + r25) == 0x0) {
            [*(r19 + 0x20) contentSize];
            asm { fcvt       s8, d1 };
    }
    [r28 calAproximatedSize:r2 withPreference:r3 andUnit:r4];
    asm { scvtf      s13, w0 };
    r2 = r21;
    objc_msgSend(r28, r22);
    asm { scvtf      s0, w0 };
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_useHorizontalTiling));
    r8 = *(int8_t *)(r28 + r8);
    asm { fdiv       s1, s10, s9 };
    if (r8 == 0x0) {
            asm { fcsel      s1, s1, s13, eq };
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_useVerticalTiling));
    r8 = *(int8_t *)(r28 + r8);
    asm { fdiv       s2, s11, s8 };
    if (r8 == 0x0) {
            asm { fcsel      s0, s2, s0, eq };
    }
    r20 = @selector(contentSize);
    asm { fmax       s13, s1, s2 };
    asm { fmax       s11, s0, s2 };
    asm { fcvt       d8, s0 };
    objc_msgSend(*(r19 + 0x30), r20);
    var_B0 = d0;
    asm { fcvt       d10, s9 };
    objc_msgSend(*(r19 + 0x10), r20);
    var_B8 = d1;
    [*r19 setPosition:r2];
    asm { fcvt       d12, s12 };
    objc_msgSend(*(r19 + 0x18), r20);
    asm { fcvt       d13, s13 };
    r21 = @selector(setRepetitionSize:);
    objc_msgSend(*(r19 + 0x18), r21);
    d1 = 0x0;
    objc_msgSend(*(r19 + 0x30), r20);
    asm { fcvt       d15, s15 };
    objc_msgSend(*(r19 + 0x8), r20);
    asm { fcvt       d9, s11 };
    objc_msgSend(*(r19 + 0x8), r21);
    objc_msgSend(*(r19 + 0x20), r20);
    objc_msgSend(*(r19 + 0x20), r21);
    objc_msgSend(*(r19 + 0x38), r20);
    objc_msgSend(*(r19 + 0x38), r21);
    objc_msgSend(*(r19 + 0x10), r20);
    objc_msgSend(*(r19 + 0x28), r20);
    objc_msgSend(*(r19 + 0x28), r21);
    v0 = v8;
    objc_msgSend(*(r19 + 0x40), r20);
    if (*(int8_t *)(r28 + r25) == 0x0) {
            r21 = @selector(setRepetitionSize:);
            if (CPU_FLAGS & E) {
                    r21 = 0x1;
            }
    }
    [*(r19 + 0x38) setVisible:r21];
    [*(r19 + 0x8) setVisible:r21];
    if (*(int8_t *)(r28 + r24) == 0x0) {
            if (CPU_FLAGS & E) {
                    r21 = 0x1;
            }
    }
    [*(r19 + 0x28) setVisible:r21];
    var_100 = r19;
    [*(r19 + 0x18) setVisible:r21];
    if (*(int8_t *)(r28 + r25) != 0x0) {
            r2 = 0x0;
    }
    else {
            if (*(int8_t *)(r28 + r24) == 0x0) {
                    if (CPU_FLAGS & E) {
                            r2 = 0x1;
                    }
            }
    }
    d0 = var_B8;
    [*(var_100 + 0x20) setVisible:r2];
    r19 = 0x0;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_frameCount));
    *(int32_t *)(r28 + r25) = 0x0;
    r20 = r28 + r23;
    do {
            r23 = 0x0;
            do {
                    if ([*(r20 + r23) visible] != 0x0) {
                            [*(r20 + r23) realRepetitionSize];
                            objc_msgSend(*(r20 + r23), r21);
                            r8 = *(int32_t *)(r28 + r25);
                            asm { scvtf      d0, w8 };
                            d1 = d10 * d1;
                            d0 = d1 + d0;
                            asm { fcvtzs     w8, d0 };
                            *(int32_t *)(r28 + r25) = r8;
                    }
                    r23 = r23 + 0x8;
            } while (r23 != 0x18);
            r19 = r19 + 0x1;
            r20 = r20 + 0x18;
    } while (r19 != 0x3);
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_atlasArray));
    r21 = *(r28 + r22);
    [r21 count] - 0x1;
    [r21 removeObjectsInRange:0x1];
    [[*(r28 + r22) objectAtIndex:0x0] removeAllQuads];
    r0 = *(r28 + r22);
    r0 = [r0 objectAtIndex:0x0];
    var_D8 = r25;
    r8 = *(int32_t *)(r28 + r25);
    r24 = @selector(visible);
    r20 = @selector(objectAtIndex:);
    r2 = 0x0;
    asm { sxtw       x2, w8 };
    [r0 resizeCapacity:r2];
    r19 = 0x0;
    r23 = 0x0;
    r27 = 0x0;
    r9 = var_100;
    var_F0 = r24;
    do {
            r10 = 0x0;
            r8 = @selector(populateAtlas:atIndex:fromStart:);
            var_E8 = r8;
            var_F8 = r19;
            do {
                    r21 = r9;
                    asm { madd       x8, x19, x25, x9 };
                    var_E0 = r10;
                    r8 = r8 + r10 * 0x8;
                    var_B0 = r8;
                    r0 = *r8;
                    r0 = objc_msgSend(r0, r24);
                    if (r0 != 0x0) {
                            r8 = var_B0;
                            r0 = *(r28 + r22);
                            asm { sxtw       x24, w27 };
                            objc_msgSend(r0, r20);
                            r0 = r25;
                            r25 = var_E8;
                            r0 = objc_msgSend(r0, r25);
                            if (r0 != 0x0) {
                                    r24 = var_F0;
                                    r9 = r21;
                            }
                            else {
                                    r8 = r27 - r27 * 0x4000;
                                    r27 = r25;
                                    r25 = r20;
                                    r21 = r8 + 0xffffffffffffc001;
                                    do {
                                            r0 = *(r28 + r22);
                                            r0 = objc_msgSend(r0, r25);
                                            r23 = r28;
                                            r24 = r24 + 0x1;
                                            r20 = [CCTextureAtlas alloc];
                                            r28 = r23;
                                            [r0 texture];
                                            r8 = *(int32_t *)(r23 + var_D8);
                                            r8 = r21 + r8;
                                            var_C8 = @selector(initWithTexture:capacity:);
                                            var_D0 = @selector(addObject:);
                                            asm { sxtw       x3, w8 };
                                            objc_msgSend(r20, var_C8);
                                            objc_msgSend(*(r23 + r22), var_D0);
                                            objc_msgSend(*(r23 + r22), r25);
                                            r0 = objc_msgSend(r20, r27);
                                            r21 = r21 + 0xffffffffffffc001;
                                    } while (r0 == 0x0);
                                    r8 = 0xffffffffffffc001;
                                    r23 = 0x0;
                                    r27 = r24;
                                    r9 = var_100;
                                    r19 = var_F8;
                                    r24 = var_F0;
                                    r20 = r25;
                            }
                            r10 = var_E0;
                            r23 = r0 + r23;
                    }
                    else {
                            r9 = r21;
                            r10 = var_E0;
                    }
                    r10 = r10 + 0x1;
            } while (r10 != 0x3);
            r19 = r19 + 0x1;
    } while (r19 != 0x3);
    return r0;
}

-(void)setLeftMargin:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_leftMargin = s0;
    return;
}

-(void)setRightMargin:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_rightMargin = s0;
    return;
}

-(void)setTopMargin:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_topMargin = s0;
    return;
}

-(void)setUseHorizontalTiling:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_useHorizontalTiling = arg2;
    return;
}

-(void)setBottomMargin:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_bottomMargin = s0;
    return;
}

-(void)setUseVerticalTiling:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_useVerticalTiling = arg2;
    return;
}

-(void)setLockHorizontalSize:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_lockHorizontalSize = arg2;
    return;
}

-(void)setLockVerticalSize:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_lockVerticalSize = arg2;
    return;
}

-(void)setSpriteSheet:(void *)arg2 {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_spriteSheet));
    [*(self + r21) release];
    *(self + r21) = [arg2 retain];
    return;
}

-(void)setTextureName:(void *)arg2 {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_textureName));
    [*(self + r21) release];
    *(self + r21) = [arg2 retain];
    return;
}

-(void)setSourceFrame:(void *)arg2 {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_sourceFrame));
    [*(self + r21) release];
    *(self + r21) = [arg2 retain];
    return;
}

-(void)setDescriptionName:(void *)arg2 {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_descriptionName));
    [*(self + r21) release];
    *(self + r21) = [arg2 retain];
    return;
}

-(void)setDataType:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_dataType = arg2;
    return;
}

-(void)setTopLeftColor:(struct _ccColor4B)arg2 {
    memcpy(&r2, &arg2, 0x4);
    *(int32_t *)((int64_t *)&self->tileColors + 0x8) = r2;
    return;
}

-(void)setTopRightColor:(struct _ccColor4B)arg2 {
    memcpy(&r2, &arg2, 0x4);
    *(int32_t *)((int64_t *)&self->tileColors + 0x20) = r2;
    return;
}

-(void)setSpriteFrame:(void *)arg2 {
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
    r20 = arg2;
    r19 = self;
    sub_10034369c(&var_68, [[arg2 lastPathComponent] UTF8String]);
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_spriteSheet));
    [*(r19 + r27) release];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_sourceFrame));
    [*(r19 + r25) release];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_textureName));
    [*(r19 + r26) release];
    r0 = sub_1009d07d0(0x0, &var_68);
    if (r0 != 0x0) {
            *(r19 + r27) = @"";
            *(r19 + r25) = @"";
            *(r19 + r26) = [[r20 lastPathComponent] retain];
    }
    else {
            *(r19 + r27) = [[[[r20 stringByDeletingLastPathComponent] lastPathComponent] stringByAppendingPathExtension:@"plist"] retain];
            *(r19 + r26) = [[[[r20 stringByDeletingLastPathComponent] lastPathComponent] stringByAppendingPathExtension:@"png"] retain];
            *(r19 + r25) = [[r20 lastPathComponent] retain];
    }
    if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
            operator delete(var_68);
    }
    return;
}

-(void)setTopCenterColor:(struct _ccColor4B)arg2 {
    memcpy(&r2, &arg2, 0x4);
    *(int32_t *)((int64_t *)&self->tileColors + 0x14) = r2;
    return;
}

-(void)setCenterLeftColor:(struct _ccColor4B)arg2 {
    memcpy(&r2, &arg2, 0x4);
    *(int32_t *)((int64_t *)&self->tileColors + 0x4) = r2;
    return;
}

-(void)setCenterColor:(struct _ccColor4B)arg2 {
    memcpy(&r2, &arg2, 0x4);
    *(int32_t *)((int64_t *)&self->tileColors + 0x10) = r2;
    return;
}

-(void)setCenterRightColor:(struct _ccColor4B)arg2 {
    memcpy(&r2, &arg2, 0x4);
    *(int32_t *)((int64_t *)&self->tileColors + 0x1c) = r2;
    return;
}

-(void)setBottomLeftColor:(struct _ccColor4B)arg2 {
    memcpy(&r2, &arg2, 0x4);
    *(int32_t *)(int64_t *)&self->tileColors = r2;
    return;
}

-(void)setBottomCenterColor:(struct _ccColor4B)arg2 {
    memcpy(&r2, &arg2, 0x4);
    *(int32_t *)((int64_t *)&self->tileColors + 0xc) = r2;
    return;
}

-(void)setBottomRightColor:(struct _ccColor4B)arg2 {
    memcpy(&r2, &arg2, 0x4);
    *(int32_t *)((int64_t *)&self->tileColors + 0x18) = r2;
    return;
}

@end