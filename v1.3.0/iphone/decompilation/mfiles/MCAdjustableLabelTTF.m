@implementation MCAdjustableLabelTTF

+(void *)allocWithZone:(struct _NSZone *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if ([[CCConfiguration sharedConfiguration] useNewTTFAtlas] != 0x0 && [MCAdjustableLabelTTF class] == r20) {
            r0 = NSClassFromString(@"MCAdjustableLabelAtlasTTF");
            r0 = NSAllocateObject(r0, 0x0, 0x0);
    }
    else {
            r0 = [[&var_20 super] allocWithZone:r19];
    }
    return r0;
}

+(void)setMaxIterations:(unsigned int)arg2 {
    *(int32_t *)0x1011bcf5c = arg2;
    return;
}

+(void)setStabilizationAceptableError:(float)arg2 {
    *(int32_t *)0x1011bcf60 = s0;
    return;
}

+(void *)labelWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 dimensions:(struct CGSize)arg5 hAlignment:(int)arg6 vAlignment:(int)arg7 lineBreakMode:(int)arg8 singleLine:(bool)arg9 {
    memcpy(&r5, &arg5, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithString:arg2 fontName:arg3 fontSize:arg4 dimensions:r5 hAlignment:r6 vAlignment:r7 lineBreakMode:var_50 singleLine:stack[-88]];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 dimensions:(struct CGSize)arg5 hAlignment:(int)arg6 vAlignment:(int)arg7 lineBreakMode:(int)arg8 {
    memcpy(&r5, &arg5, 0x8);
    r0 = [self initWithString:arg2 fontName:arg3 fontSize:arg4 dimensions:r5 hAlignment:r6 vAlignment:0x0 lineBreakMode:arg8 singleLine:stack[8]];
    return r0;
}

-(void *)initWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 dimensions:(struct CGSize)arg5 hAlignment:(int)arg6 vAlignment:(int)arg7 lineBreakMode:(int)arg8 singleLine:(bool)arg9 {
    memcpy(&r5, &arg5, 0x8);
    self->_maxFontSize = d0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_requestedDimensions));
    *(int128_t *)(self + r8) = d1;
    *(int128_t *)(0x8 + self + r8) = d2;
    *(int8_t *)(int64_t *)&self->_forceSingleLine = r7;
    var_10 = self;
    r0 = [[&var_10 super] initWithString:arg2 fontName:arg3 fontSize:arg4 dimensions:r5 hAlignment:r6 vAlignment:r7 lineBreakMode:var_10];
    return r0;
}

-(bool)updateTexture {
    r0 = self;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_isTextureDirty != 0x0) {
            r19 = r0;
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_string));
            r0 = *(r0 + r21);
            if (r0 != 0x0) {
                    r0 = [r0 copy];
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_stringToRender));
                    *(r19 + r20) = r0;
                    [r19 fitDimentions];
                    r22 = *(r19 + r21);
                    *(r19 + r21) = *(r19 + r20);
                    r0 = [[&var_30 super] updateTexture];
                    r20 = r0;
                    [*(r19 + r21) release];
                    *(r19 + r21) = r22;
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    r0 = r20;
    return r0;
}

-(void)setFontSize:(float)arg2 {
    r0 = self;
    r31 = r31 - 0x20;
    asm { fcvt       d1, s0 };
    r0->_maxFontSize = d1;
    [[&var_10 super] setFontSize:r2];
    return;
}

-(void)fitDimentions {
    r31 = r31 - 0x130;
    var_70 = d13;
    stack[-120] = d12;
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
    r29 = &saved_fp;
    r19 = self;
    if ([self->_string isEqualToString:r2] != 0x0) {
            *(int128_t *)(int64_t *)&r19->_dimensions = *(int128_t *)*_CGSizeZero;
            *(int8_t *)(int64_t *)&r19->_isTextureDirty = 0x1;
    }
    else {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_maxFontSize));
            if (*(r19 + r23) > 0x0) {
                    asm { fcsel      d13, d0, d1, hi };
            }
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_requestedDimensions));
            d10 = *(int128_t *)(r19 + r8);
            d9 = *(int128_t *)(0x8 + r19 + r8);
            sub_100380a90();
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_hAlignment));
            r8 = *(int32_t *)(r19 + r8);
            if (r8 != 0x2) {
                    asm { cneg       x9, x9, ne };
            }
            if (r8 == 0x1) {
                    if (!CPU_FLAGS & E) {
                            r8 = 0x1;
                    }
                    else {
                            r8 = 0x0;
                    }
            }
            if (r8 >= 0x3) {
                    asm { csinc      w21, wzr, w8, hs };
            }
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_forceSingleLine));
            r8 = *(int8_t *)(r19 + r24);
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_stringToRender));
            if (r8 != 0x0) {
                    r0 = [*(r19 + r25) componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
                    r22 = r0;
                    if ([r0 count] >= 0x2) {
                            [*(r19 + r25) release];
                            *(r19 + r25) = [[r22 componentsJoinedByString:@" "] retain];
                    }
            }
            sub_1003659c4(r29 - 0x88, [*(r19 + r25) UTF8String]);
            sub_100331aac(r19->_fontName);
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_lineBreakMode));
            r8 = *(int32_t *)(r19 + r8);
            asm { fcvt       d12, s11 };
            if (r8 < 0x6) {
                    if (!CPU_FLAGS & B) {
                            r4 = 0x0;
                    }
                    else {
                            r4 = r8;
                    }
            }
            asm { fcvt       s0, d0 };
            sub_1004550e4(&stack[-288], r29 - 0x88, &var_90, r21, r4);
            sub_100455160(&stack[-288]);
            sub_100455198(&stack[-288], *(int8_t *)(int64_t *)&r19->_shadowEnabled);
            sub_100455190(&stack[-288]);
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_shadowOffset));
            d1 = *(int128_t *)(0x8 + r19 + r8);
            asm { fcvt       s0, d0 };
            asm { fcvt       s1, d1 };
            sub_100455184(&stack[-288]);
            r0 = sub_10045522c();
            asm { scvtf      d0, w20 };
            asm { fdiv       d0, d0, d12 };
            asm { fcvt       s1, d0 };
            d0 = *(r19 + r23);
            asm { fcvt       s0, d0 };
            r6 = *(int8_t *)(r19 + r24);
            asm { fcvt       s2, d2 };
            asm { fcvt       s3, d3 };
            sub_10045597c(r0, &stack[-288], &stack[-292], &var_118, &var_119, &var_120, r6, *(int32_t *)0x1011bcf5c);
            asm { fcvt       d0, s0 };
            asm { fdiv       d0, d0, d12 };
            asm { frintp     d0, d0 };
            asm { fcvt       d1, s1 };
            asm { fdiv       d1, d1, d12 };
            asm { frintp     d1, d1 };
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_dimensions));
            *(int128_t *)(r19 + r8) = d0;
            *(int128_t *)(0x8 + r19 + r8) = d1;
            asm { fcvt       d0, s0 };
            asm { fdiv       d0, d0, d12 };
            r19->_fontSize = d0;
            *(int8_t *)(int64_t *)&r19->_isTextureDirty = var_119;
            sub_100455134(&stack[-288]);
            if ((sign_extend_64(var_71) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_88);
            }
    }
    return;
}

-(void)setDimensions:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_requestedDimensions));
    r8 = r0 + r8;
    if (*(r8 + 0x8) == 0xbff0000000000000 && *r8 == 0xbff0000000000000) {
            *(int128_t *)r8 = d0;
            *(int128_t *)(r8 + 0x8) = d1;
    }
    [[&var_10 super] setDimensions:r2];
    return;
}

-(struct CGSize)requestedDimensions {
    r0 = objc_copyStruct(&var_10, (int64_t *)&self->_requestedDimensions, 0x10, 0x1, 0x0);
    return r0;
}

-(void)setRequestedDimensions:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    objc_copyStruct((int64_t *)&self->_requestedDimensions, &var_10, 0x10, 0x1, 0x0);
    return;
}

-(void)updateTextureAsync {
    r0 = self;
    r31 = r31 - 0xe0;
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
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_isTextureDirty));
    if (*(int8_t *)(r0 + r8) == 0x0) goto loc_100365eac;

loc_100365af0:
    r19 = r0;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_string));
    if (*(r0 + r9) == 0x0) goto loc_100365eac;

loc_100365b08:
    *(int8_t *)(r19 + r8) = 0x0;
    sub_1003659c4(&var_B0, [*(r19 + r9) UTF8String]);
    sub_100331aac(r19->_fontName);
    r11 = *(int8_t *)(0x1 + r19 + sign_extend_64(*(int32_t *)ivar_offset(_strokeColor)));
    r21 = sub_100331e5c();
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_hAlignment));
    r8 = *(int32_t *)(r19 + r8);
    if (r8 != 0x2) {
            asm { cneg       x9, x9, ne };
    }
    if (r8 == 0x1) {
            if (!CPU_FLAGS & E) {
                    r22 = 0x1;
            }
            else {
                    r22 = 0x0;
            }
    }
    r23 = *(int32_t *)(int64_t *)&r19->_lineBreakMode;
    r0 = operator new();
    r20 = r0;
    asm { fcvt       d8, s9 };
    asm { ucvtf      s0, s13 };
    asm { fdiv       s1, s0, s13 };
    asm { ucvtf      s0, s15 };
    asm { fdiv       s2, s0, s13 };
    asm { ucvtf      s3, s14 };
    if (r23 < 0x6) {
            if (!CPU_FLAGS & B) {
                    r4 = 0x0;
            }
            else {
                    r4 = r23;
            }
    }
    if (r22 >= 0x3) {
            asm { csinc      w3, wzr, w22, hs };
    }
    d0 = r19->_fontSize;
    d0 = d0 * d8;
    asm { fcvt       s0, d0 };
    asm { fdiv       s3, s3, s13 };
    r0 = sub_1004550e4(r0, &var_B0, &var_B8, r3, r4);
    sub_100455158(r20, 0x0);
    if (*(int8_t *)(int64_t *)&r19->_strokeEnabled != 0x0) {
            asm { fcvt       d0, s0 };
    }
    asm { fcvt       s0, d0 };
    sub_100455160(r20);
    sub_100455168(r20, r21);
    asm { ucvtf      s0, s10 };
    asm { ucvtf      s1, s11 };
    asm { ucvtf      s2, s12 };
    asm { fdiv       s0, s0, s13 };
    asm { fdiv       s1, s1, s13 };
    asm { fdiv       s2, s2, s13 };
    sub_100455170(r20);
    sub_100455198(r20, *(int8_t *)(int64_t *)&r19->_shadowEnabled);
    s0 = *(int32_t *)(int64_t *)&r19->_shadowBlur;
    s0 = s9 * s0;
    sub_100455190(r20);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_shadowOffset));
    asm { fcvt       s0, d0 };
    asm { fcvt       s1, d1 };
    sub_100455184(r20);
    sub_100380a90();
    if (*(int8_t *)(int64_t *)&r19->_forceSingleLine != 0x0) {
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_stringToRender));
            r0 = [*(r19 + r24) componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
            r22 = r0;
            if ([r0 count] >= 0x2) {
                    [*(r19 + r24) release];
                    *(r19 + r24) = [[r22 componentsJoinedByString:r2] retain];
            }
    }
    [r19 retain];
    r0 = operator new();
    r22 = r0;
    *(int128_t *)(r0 + 0x8) = 0x0;
    *(int128_t *)(r0 + 0x10) = 0x0;
    *r0 = 0x100e662d8;
    r0 = operator new();
    asm { scvtf      d0, w21 };
    asm { fdiv       d0, d0, d8 };
    *(int128_t *)r0 = 0x100e79548;
    *(int128_t *)(r0 + 0x8) = r20;
    asm { fcvt       s0, d0 };
    *(int32_t *)(r0 + 0x10) = s0;
    *(r0 + 0x18) = d8;
    r20 = r22 + 0x18;
    *(r0 + 0x20) = r19;
    sub_1009d1d28(r20, &stack[-168]);
    r0 = r0;
    if (&stack[-168] == r0) goto loc_100365e3c;

loc_100365e2c:
    if (r0 == 0x0) goto loc_100365e48;

loc_100365e30:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100365e44;

loc_100365e44:
    (r8)();
    goto loc_100365e48;

loc_100365e48:
    sub_10097a1e8(0x1, &var_C8, 0x0, 0x0, 0x10);
    r19 = r22;
    if (r19 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (0x1 == 0x0) {
                    (*(*r19 + 0x10))(r19);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    if ((sign_extend_64(var_99) & 0xffffffff80000000) != 0x0) {
            operator delete(var_B0);
    }
    goto loc_100365eac;

loc_100365eac:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100365e3c:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100365e44;
}

-(double)maxFontSize {
    r0 = self;
    return r0;
}

-(void)setMaxFontSize:(double)arg2 {
    self->_maxFontSize = d0;
    return;
}

-(bool)forceSingleLine {
    r0 = *(int8_t *)(int64_t *)&self->_forceSingleLine;
    return r0;
}

-(void)setForceSingleLine:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_forceSingleLine = arg2;
    return;
}

@end