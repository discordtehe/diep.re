@implementation CCLabelAtlasTTFFont

+(void *)labelWithString:(void *)arg2 fontDefinition:(void *)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithString:arg2 fontDefinition:arg3];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)labelWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithString:arg2 fontName:arg3 fontSize:arg4];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)labelWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 dimensions:(struct CGSize)arg5 hAlignment:(int)arg6 {
    memcpy(&r5, &arg5, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithString:arg2 fontName:arg3 fontSize:arg4 dimensions:0x0 hAlignment:0x0 vAlignment:r7 lineBreakMode:var_40];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)labelWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 dimensions:(struct CGSize)arg5 hAlignment:(int)arg6 vAlignment:(int)arg7 {
    memcpy(&r5, &arg5, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithString:arg2 fontName:arg3 fontSize:arg4 dimensions:r5 hAlignment:r6 vAlignment:r7];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)labelWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 dimensions:(struct CGSize)arg5 hAlignment:(int)arg6 lineBreakMode:(int)arg7 {
    memcpy(&r5, &arg5, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithString:arg2 fontName:arg3 fontSize:arg4 dimensions:0x0 hAlignment:r5 vAlignment:r7 lineBreakMode:var_40];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r0 = [self initWithString:@"" fontName:@"Helvetica" fontSize:r4];
    return r0;
}

+(void *)labelWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 dimensions:(struct CGSize)arg5 hAlignment:(int)arg6 vAlignment:(int)arg7 lineBreakMode:(int)arg8 {
    memcpy(&r5, &arg5, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithString:arg2 fontName:arg3 fontSize:arg4 dimensions:r5 hAlignment:r6 vAlignment:r7 lineBreakMode:var_50];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 dimensions:(struct CGSize)arg5 hAlignment:(int)arg6 {
    memcpy(&r5, &arg5, 0x8);
    r0 = [self initWithString:arg2 fontName:arg3 fontSize:arg4 dimensions:0x0 hAlignment:0x0 vAlignment:r7 lineBreakMode:stack[0]];
    return r0;
}

-(void *)initWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 {
    r0 = [self initWithString:arg2 fontName:arg3 fontSize:0x0 dimensions:0x0 hAlignment:0x0 vAlignment:r7 lineBreakMode:stack[0]];
    return r0;
}

-(void *)initWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 dimensions:(struct CGSize)arg5 hAlignment:(int)arg6 lineBreakMode:(int)arg7 {
    memcpy(&r5, &arg5, 0x8);
    r0 = [self initWithString:arg2 fontName:arg3 fontSize:arg4 dimensions:0x0 hAlignment:r5 vAlignment:r7 lineBreakMode:stack[0]];
    return r0;
}

-(void *)initWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 dimensions:(struct CGSize)arg5 hAlignment:(int)arg6 vAlignment:(int)arg7 {
    memcpy(&r5, &arg5, 0x8);
    r0 = [self initWithString:arg2 fontName:arg3 fontSize:arg4 dimensions:r5 hAlignment:0x0 vAlignment:r7 lineBreakMode:stack[0]];
    return r0;
}

-(void)visit {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(int64_t *)&self->_isTextureDirty != 0x0) {
            [r19 updateQuads];
    }
    [[&var_20 super] visit];
    return;
}

-(void *)initWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 dimensions:(struct CGSize)arg5 hAlignment:(int)arg6 vAlignment:(int)arg7 lineBreakMode:(int)arg8 {
    memcpy(&r5, &arg5, 0x8);
    r31 = r31 - 0xc0;
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
    r21 = r6;
    r22 = r5;
    r23 = arg4;
    v8 = v2;
    v9 = v1;
    r24 = arg3;
    r20 = arg2;
    r0 = [[&var_60 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setString:r20];
            r0 = [r24 UTF8String];
            r0 = sub_10034fe14(&var_78, r0);
            r24 = (int64_t *)&r19->_fontName;
            if ((sign_extend_64(*(int8_t *)(r24 + 0x17)) & 0xffffffff80000000) != 0x0) {
                    operator delete(*r24);
            }
            *(r24 + 0x10) = var_68;
            *(int128_t *)r24 = var_78;
            asm { fcvt       s0, d10 };
            [r19 setFontSize:r2];
            [r19 setDimensions:r2];
            [r19 setHorizontalAlignment:r23];
            [r19 setVerticalAlignment:r22];
            [r19 setLineBreakMode:r21];
            *(int32_t *)(int64_t *)&r19->_textFillColor = 0xffffff;
            *(int32_t *)(int64_t *)&r19->_strokeColor = 0x0;
            *(int32_t *)(int64_t *)&r19->_shadowColor = 0x0;
            *(int8_t *)(int64_t *)&r19->_shadowEnabled = 0x0;
            *(int32_t *)(int64_t *)&r19->_shadowOpacity = 0x0;
            *(int32_t *)(int64_t *)&r19->_shadowBlur = 0x0;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_shadowOffset));
            q0 = *(int128_t *)*_CGSizeZero;
            *(int128_t *)(r19 + r8) = q0;
            *(int8_t *)(int64_t *)&r19->_strokeEnabled = 0x0;
            *(int32_t *)(int64_t *)&r19->_strokeSize = 0x0;
            *(int8_t *)(int64_t *)&r19->_isTextureDirty = 0x1;
            *(int128_t *)(int64_t *)&r19->_anchorPoint = q0;
            *(int8_t *)(int64_t *)&r19->_opacityModifyRGB = 0x1;
            r19->_emissionShaderName = @"ShaderPositionTextureColor_uEmission";
            if ([[CCConfiguration sharedConfiguration] useNewRenderer] != 0x0) {
                    sub_100292530();
                    sub_10034fe14(&var_90, [@"ShaderPositionTextureA8Color" UTF8String]);
                    r0 = sub_10037ec20(r21, &var_90);
                    r22 = sign_extend_64(*(int32_t *)ivar_offset(_mcShader8));
                    *(r19 + r22) = r0;
                    if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_90);
                    }
                    sub_100292530();
                    sub_10034fe14(&var_A8, [@"ShaderPositionTextureColor" UTF8String]);
                    r0 = sub_10037ec20(r21, &var_A8);
                    r19->_mcShader32 = r0;
                    if ((sign_extend_64(var_91) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_A8);
                    }
                    r8 = *(r19 + r22);
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_mcRenderJob));
                    *(0x140 + r19 + r9) = r8;
                    q0 = *(int128_t *)0x1011e2ec0;
                    q1 = *(int128_t *)0x1011e2ed0;
                    q2 = *(int128_t *)0x1011e2ea0;
                    q3 = *(int128_t *)0x1011e2eb0;
                    *(int128_t *)(r19 + r9) = q2;
                    *(int128_t *)(0x10 + r19 + r9) = q3;
                    *(int128_t *)(0x20 + r19 + r9) = q0;
                    *(int128_t *)(0x30 + r19 + r9) = q1;
                    *(0x18 + r19 + r9) = *0x100bd14f0;
            }
            else {
                    r19->_8BitShaderProgram = [[CCShaderCache sharedShaderCache] programForKey:@"ShaderPositionTextureA8Color"];
                    r19->_32BitShaderProgram = [[CCShaderCache sharedShaderCache] programForKey:@"ShaderPositionTextureColor"];
                    [r19 setShaderProgram:[[CCShaderCache sharedShaderCache] programForKey:@"ShaderPositionTextureA8Color"]];
            }
    }
    r0 = r19;
    return r0;
}

-(void *)string {
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_renderData));
    r2 = 0x10 + self + r9;
    r0 = [NSString stringWithUTF8String:r2];
    return r0;
}

-(void)setString:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r1 = [r2 UTF8String];
    r22 = &var_38;
    r0 = sub_10034fe14(&var_38, r1);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_renderData));
    r20 = 0x10 + r19 + r8;
    r9 = *(int8_t *)(0x27 + r19 + r8);
    r10 = *(0x18 + r19 + r8);
    if (sign_extend_64(r9) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r2 = r9;
            }
            else {
                    r2 = r10;
            }
    }
    r10 = var_21;
    r21 = sign_extend_64(r10);
    r11 = var_30;
    if (r21 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r10 = r10;
            }
            else {
                    r10 = r11;
            }
    }
    if (r2 != r10) goto loc_10035138c;

loc_100351324:
    r11 = sign_extend_64(r9);
    r10 = *r20;
    if (r11 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r0 = r20;
            }
            else {
                    r0 = r10;
            }
    }
    r12 = var_38;
    if (r21 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r1 = r22;
            }
            else {
                    r1 = r12;
            }
    }
    if ((r11 & 0xffffffff80000000) != 0x0) goto loc_100351380;

loc_100351344:
    if (r2 == 0x0) goto loc_1003513ac;

loc_100351348:
    if (*(int8_t *)r1 != zero_extend_64(r10)) goto loc_10035138c;

loc_100351354:
    r9 = r9 - 0x1;
    r8 = 0x11 + r8 + r19;
    r10 = r1 + 0x1;
    goto loc_100351364;

loc_100351364:
    if (r9 == 0x0) goto loc_1003513ac;

loc_100351368:
    r11 = *(int8_t *)r8;
    r8 = r8 + 0x1;
    r12 = *(int8_t *)r10;
    r10 = r10 + 0x1;
    r9 = r9 - 0x1;
    if (r11 == r12) goto loc_100351364;

loc_10035138c:
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::operator=();
    *(int8_t *)(int64_t *)&r19->_isTextureDirty = 0x1;
    r21 = var_21;
    goto loc_1003513ac;

loc_1003513ac:
    if ((sign_extend_64(r21) & 0xffffffff80000000) != 0x0) {
            operator delete(var_38);
    }
    return;

loc_100351380:
    if (r2 != 0x0 && memcmp(r0, r1, r2) != 0x0) {
            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::operator=();
            *(int8_t *)(int64_t *)&r19->_isTextureDirty = 0x1;
            r21 = var_21;
    }
    goto loc_1003513ac;
}

-(void *)fontName {
    r2 = (int64_t *)&self->_fontName;
    r0 = [NSString stringWithUTF8String:r2];
    return r0;
}

-(void)setFontName:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r1 = [r2 UTF8String];
    r0 = sub_10034fe14(&var_38, r1);
    r8 = var_21;
    r21 = sign_extend_64(r8);
    r9 = var_30;
    if (r21 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r2 = r8;
            }
            else {
                    r2 = r9;
            }
    }
    if (r2 == 0x0) goto loc_100351514;

loc_100351470:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_fontName));
    r20 = r19 + r8;
    r9 = *(int8_t *)(r20 + 0x17);
    r10 = sign_extend_64(r9);
    r11 = *(r20 + 0x8);
    if (r10 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r10 = r9;
            }
            else {
                    r10 = r11;
            }
    }
    if (r10 != r2) goto loc_1003514f4;

loc_100351498:
    r10 = sign_extend_64(r9);
    r0 = *r20;
    r11 = var_38;
    r12 = &var_38;
    if (r21 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r1 = r12;
            }
            else {
                    r1 = r11;
            }
    }
    if ((r10 & 0xffffffff80000000) != 0x0) goto loc_1003514ec;

loc_1003514b4:
    if (*(int8_t *)r1 != zero_extend_64(r0)) goto loc_1003514f4;

loc_1003514c0:
    r9 = r9 - 0x1;
    r8 = 0x1 + r8 + r19;
    r10 = r1 + 0x1;
    goto loc_1003514d0;

loc_1003514d0:
    if (r9 == 0x0) goto loc_100351514;

loc_1003514d4:
    r11 = *(int8_t *)r8;
    r8 = r8 + 0x1;
    r12 = *(int8_t *)r10;
    r10 = r10 + 0x1;
    r9 = r9 - 0x1;
    if (r11 == r12) goto loc_1003514d0;

loc_1003514f4:
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::operator=();
    *(int8_t *)(int64_t *)&r19->_isTextureDirty = 0x1;
    r21 = var_21;
    goto loc_100351514;

loc_100351514:
    if ((sign_extend_64(r21) & 0xffffffff80000000) != 0x0) {
            operator delete(var_38);
    }
    return;

loc_1003514ec:
    if (memcmp(r0, r1, r2) != 0x0) {
            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::operator=();
            *(int8_t *)(int64_t *)&r19->_isTextureDirty = 0x1;
            r21 = var_21;
    }
    goto loc_100351514;
}

-(void *)initWithString:(void *)arg2 fontDefinition:(void *)arg3 {
    r31 = r31 - 0xe0;
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
    r20 = arg3;
    r21 = arg2;
    r0 = [[&var_70 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setString:r21];
            r0 = [r20 fontName];
            r0 = [r0 UTF8String];
            r0 = sub_10034fe14(&var_88, r0);
            r21 = (int64_t *)&r19->_fontName;
            if ((sign_extend_64(*(int8_t *)(r21 + 0x17)) & 0xffffffff80000000) != 0x0) {
                    operator delete(*r21);
            }
            q0 = var_88;
            *(r21 + 0x10) = var_78;
            *(int128_t *)r21 = q0;
            [r20 fontSize];
            asm { scvtf      s0, w0 };
            [r19 setFontSize:r2];
            [r20 dimensions];
            [r19 setDimensions:r2];
            [r19 setHorizontalAlignment:[r20 alignment]];
            [r19 setVerticalAlignment:[r20 vertAlignment]];
            [r19 setLineBreakMode:[r20 lineBreakMode]];
            *(int8_t *)(int64_t *)&r19->_shadowEnabled = [r20 shadowEnabled];
            [r20 shadowOpacity];
            *(int32_t *)(int64_t *)&r19->_shadowOpacity = s0;
            [r20 shadowBlur];
            *(int32_t *)(int64_t *)&r19->_shadowBlur = s0;
            [r20 shadowOffset];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_shadowOffset));
            *(int128_t *)(r19 + r8) = d0;
            *(int128_t *)(0x8 + r19 + r8) = d1;
            *(int32_t *)(int64_t *)&r19->_shadowColor = [r20 strokeColor];
            r8 = &@selector(getVSZTexture:);
            r22 = *(r8 + 0x608);
            objc_msgSend(r20, r22);
            if (d0 != 0x0) {
                    r8 = &@selector(getVSZTexture:);
                    if (CPU_FLAGS & NE) {
                            r8 = 0x1;
                    }
            }
            *(int8_t *)(int64_t *)&r19->_strokeEnabled = r8;
            *(int32_t *)(int64_t *)&r19->_strokeColor = [r20 strokeColor];
            objc_msgSend(r20, r22);
            asm { fcvt       s0, d0 };
            *(int32_t *)(int64_t *)&r19->_strokeSize = s0;
            *(int32_t *)(int64_t *)&r19->_textFillColor = [r20 fontFillColor];
            *(int128_t *)(int64_t *)&r19->_anchorPoint = q0;
            *(int8_t *)(int64_t *)&r19->_opacityModifyRGB = 0x1;
            r19->_emissionShaderName = @"ShaderPositionTextureColor_uEmission";
            if ([[CCConfiguration sharedConfiguration] useNewRenderer] != 0x0) {
                    sub_100292530();
                    sub_10034fe14(&var_A0, [@"ShaderPositionTextureA8Color" UTF8String]);
                    r0 = sub_10037ec20(r28, &var_A0);
                    r25 = sign_extend_64(*(int32_t *)ivar_offset(_mcShader8));
                    *(r19 + r25) = r0;
                    if ((sign_extend_64(var_89) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_A0);
                    }
                    sub_100292530();
                    sub_10034fe14(&var_B8, [@"ShaderPositionTextureColor" UTF8String]);
                    r0 = sub_10037ec20(r28, &var_B8);
                    r19->_mcShader32 = r0;
                    if ((sign_extend_64(var_A1) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_B8);
                    }
                    r8 = *(r19 + r25);
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_mcRenderJob));
                    *(0x140 + r19 + r9) = r8;
                    q0 = *(int128_t *)0x1011e2ec0;
                    q1 = *(int128_t *)0x1011e2ed0;
                    q2 = *(int128_t *)0x1011e2ea0;
                    q3 = *(int128_t *)0x1011e2eb0;
                    *(int128_t *)(r19 + r9) = q2;
                    *(int128_t *)(0x10 + r19 + r9) = q3;
                    *(int128_t *)(0x20 + r19 + r9) = q0;
                    *(int128_t *)(0x30 + r19 + r9) = q1;
                    *(0x18 + r19 + r9) = *0x100bd14f0;
            }
            else {
                    r19->_8BitShaderProgram = [[CCShaderCache sharedShaderCache] programForKey:@"ShaderPositionTextureA8Color"];
                    r19->_32BitShaderProgram = [[CCShaderCache sharedShaderCache] programForKey:@"ShaderPositionTextureColor"];
                    [r19 setShaderProgram:[[CCShaderCache sharedShaderCache] programForKey:@"ShaderPositionTextureA8Color"]];
            }
            if ([r20 shadowEnabled] != 0x0) {
                    [r20 shadowOffset];
                    [r20 shadowBlur];
                    [r19 enableShadowWithOffset:0x0 opacity:r3 blur:r4 updateImage:r5];
            }
            else {
                    [r19 disableShadowAndUpdateImage:0x0];
            }
            if ([r20 strokeEnabled] != 0x0) {
                    [r20 strokeColor];
                    objc_msgSend(r20, r22);
                    asm { fcvt       s0, d0 };
                    [r19 enableStrokeWithColor:r2 size:r3 updateImage:r4];
            }
            else {
                    [r19 disableStrokeAndUpdateImage:0x0];
            }
            [r19 setFontFillColor:[r20 fontFillColor] & 0xffffffff updateImage:0x0];
            *(int8_t *)(int64_t *)&r19->_isTextureDirty = 0x1;
    }
    r0 = r19;
    return r0;
}

-(void)setFontSize:(float)arg2 {
    r0 = self;
    s0 = *(int32_t *)0x1011bcc00 * s0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_renderData));
    r8 = r0 + r8;
    s1 = *(int32_t *)(r8 + 0x28);
    asm { ucvtf      s1, s1 };
    if (s0 != s1) {
            asm { fcvtzu     w9, s0 };
            *(int32_t *)(r8 + 0x28) = r9;
            *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
    }
    return;
}

-(float)fontSize {
    r0 = [self updateQuads];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_renderData));
    asm { ucvtf      s2, s2 };
    asm { ucvtf      s1, s1 };
    asm { fdiv       s2, s2, s1 };
    asm { fdiv       s0, s0, s1 };
    return r0;
}

-(void)setDimensions:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    asm { fcvt       d3, s2 };
    d2 = d0 * d3;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_renderData));
    r8 = r0 + r8;
    asm { ucvtf      d4, d4 };
    d3 = d1 * d3;
    if (d2 == d4) {
            asm { ucvtf      d4, d4 };
            if (d3 != d4) {
                    asm { fcvtzu     w9, d2 };
                    if (d0 > 0x0) {
                            asm { csinv      w9, w9, wzr, gt };
                    }
                    asm { fcvtzu     w10, d3 };
                    if (d1 > 0x0) {
                            asm { csinv      w10, w10, wzr, gt };
                    }
                    *(int128_t *)(r8 + 0x3c) = r9;
                    *(int128_t *)(r8 + 0x40) = r10;
                    *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
            }
    }
    else {
            asm { fcvtzu     w9, d2 };
            if (d0 > 0x0) {
                    asm { csinv      w9, w9, wzr, gt };
            }
            asm { fcvtzu     w10, d3 };
            if (d1 > 0x0) {
                    asm { csinv      w10, w10, wzr, gt };
            }
            *(int128_t *)(r8 + 0x3c) = r9;
            *(int128_t *)(r8 + 0x40) = r10;
            *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
    }
    return;
}

-(struct CGSize)dimensions {
    r0 = self;
    asm { ld1r       {v1.2s}, [x9] };
    asm { ucvtf      v0.2s, v0.2s };
    asm { fdiv       v0.2s, v0.2s, v1.2s };
    asm { fcvtl      v0.2d, v0.2s };
    return r0;
}

-(void)draw {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1d0;
    r19 = self;
    if (*(int8_t *)(int64_t *)&self->_isTextureDirty != 0x0) {
            [r19 updateQuads];
    }
    if ([[CCConfiguration sharedConfiguration] useNewRenderer] != 0x0) {
            r27 = (int64_t *)&r19->Meshes;
            r8 = *(int128_t *)r27;
            if (*(int128_t *)(r27 + 0x8) != r8) {
                    r28 = 0x0;
                    r21 = (int64_t *)&r19->_mcRenderJob;
                    r22 = r21 + 0x140;
                    r23 = r21 + 0x40;
                    var_1E8 = sign_extend_64(*(int32_t *)ivar_offset(_mcShader8));
                    var_208 = &var_1D0 + 0x14;
                    var_210 = r21 + 0x14;
                    r20 = &var_1D0 + 0x40;
                    var_218 = &var_1D0 + 0x140;
                    r24 = &var_1D0 + 0x150;
                    var_220 = r21 + 0x150;
                    var_200 = &var_1D0 + 0xe8;
                    r10 = &var_1D0 + 0xb0;
                    var_1F8 = r10;
                    var_1F0 = &var_1D0 + 0x78;
                    do {
                            *r22 = *(r19 + var_1E8);
                            if (sub_10037ef00(*(0xe8 + r8 + r28 * 0x100)) == 0x5) {
                                    *r22 = *(r19 + var_1E8);
                            }
                            if (sub_10037ef00(*(0xe8 + *r27 + r28 * 0x100)) == 0x0) {
                                    *r22 = r19->_mcShader32;
                            }
                            r25 = r22;
                            r22 = *r27;
                            q0 = *(int128_t *)(r22 + r28 * 0x100);
                            q1 = *(int128_t *)(0x10 + r22 + r28 * 0x100);
                            q2 = *(int128_t *)(0x20 + r22 + r28 * 0x100);
                            *(int128_t *)(r23 + 0x10) = q1;
                            *(int128_t *)(r23 + 0x20) = q2;
                            *(int128_t *)r23 = q0;
                            q0 = *(int128_t *)(0x30 + r22 + r28 * 0x100);
                            q1 = *(int128_t *)(0x40 + r22 + r28 * 0x100);
                            q2 = *(int128_t *)(0x50 + r22 + r28 * 0x100);
                            q3 = *(int128_t *)(0x60 + r22 + r28 * 0x100);
                            *(int128_t *)(r23 + 0x50) = q2;
                            *(int128_t *)(r23 + 0x60) = q3;
                            *(int128_t *)(r23 + 0x30) = q0;
                            *(int128_t *)(r23 + 0x40) = q1;
                            q0 = *(int128_t *)(0x70 + r22 + r28 * 0x100);
                            q1 = *(int128_t *)(0x80 + r22 + r28 * 0x100);
                            q2 = *(int128_t *)(0x90 + r22 + r28 * 0x100);
                            q3 = *(int128_t *)(0xa0 + r22 + r28 * 0x100);
                            *(int128_t *)(r23 + 0x90) = q2;
                            *(int128_t *)(r23 + 0xa0) = q3;
                            *(int128_t *)(r23 + 0x70) = q0;
                            *(int128_t *)(r23 + 0x80) = q1;
                            q0 = *(int128_t *)(0xb0 + r22 + r28 * 0x100);
                            q1 = *(int128_t *)(0xc0 + r22 + r28 * 0x100);
                            q2 = *(int128_t *)(0xd0 + r22 + r28 * 0x100);
                            *(int32_t *)(r23 + 0xe0) = *(int32_t *)(0xe0 + r22 + r28 * 0x100);
                            *(int128_t *)(r23 + 0xc0) = q1;
                            *(int128_t *)(r23 + 0xd0) = q2;
                            *(int128_t *)(r23 + 0xb0) = q0;
                            r9 = *(int128_t *)(0xe8 + r22 + r28 * 0x100);
                            r8 = *(int128_t *)(0xf0 + r22 + r28 * 0x100);
                            if (r8 != 0x0) {
                                    r10 = r8 + 0x8;
                                    do {
                                            asm { ldxr       x11, [x10] };
                                            r11 = r11 + 0x1;
                                            asm { stxr       w12, x11, [x10] };
                                    } while (r12 != 0x0);
                            }
                            r26 = *(r23 + 0xf0);
                            *(int128_t *)(r23 + 0xe8) = r9;
                            *(int128_t *)(r23 + 0xf0) = r8;
                            if (r26 != 0x0) {
                                    do {
                                            asm { ldaxr      x9, [x8] };
                                            r10 = r9 - 0x1;
                                            asm { stlxr      w11, x10, [x8] };
                                    } while (r11 != 0x0);
                                    if (r9 == 0x0) {
                                            (*(*r26 + 0x10))(r26);
                                            std::__1::__shared_weak_count::__release_weak();
                                    }
                            }
                            r8 = *(int32_t *)(0xf8 + r22 + r28 * 0x100);
                            *(int32_t *)(r21 + 0x138) = r8;
                            q0 = *(int128_t *)var_210;
                            q1 = *(int128_t *)(var_210 + 0x10);
                            *(int128_t *)(var_208 + 0x1c) = *(int128_t *)(var_210 + 0x1c);
                            *(int128_t *)var_208 = q0;
                            *(int128_t *)(var_208 + 0x10) = q1;
                            q0 = *(int128_t *)(r23 + 0x30);
                            q1 = *(int128_t *)(r23 + 0x40);
                            q2 = *(int128_t *)(r23 + 0x50);
                            q3 = *(int128_t *)(r23 + 0x60);
                            *(int128_t *)(r20 + 0x50) = q2;
                            *(int128_t *)(r20 + 0x60) = q3;
                            *(int128_t *)(r20 + 0x30) = q0;
                            *(int128_t *)(r20 + 0x40) = q1;
                            q0 = *(int128_t *)(r23 + 0x70);
                            q1 = *(int128_t *)(r23 + 0x80);
                            q2 = *(int128_t *)(r23 + 0x90);
                            q3 = *(int128_t *)(r23 + 0xa0);
                            *(int128_t *)(r20 + 0x90) = q2;
                            *(int128_t *)(r20 + 0xa0) = q3;
                            *(int128_t *)(r20 + 0x70) = q0;
                            *(int128_t *)(r20 + 0x80) = q1;
                            q0 = *(int128_t *)(r23 + 0xb0);
                            q1 = *(int128_t *)(r23 + 0xc0);
                            q2 = *(int128_t *)(r23 + 0xd0);
                            *(int32_t *)(r20 + 0xe0) = *(int32_t *)(r23 + 0xe0);
                            *(int128_t *)(r20 + 0xc0) = q1;
                            *(int128_t *)(r20 + 0xd0) = q2;
                            *(int128_t *)(r20 + 0xb0) = q0;
                            q0 = *(int128_t *)r23;
                            q1 = *(int128_t *)(r23 + 0x10);
                            q2 = *(int128_t *)(r23 + 0x20);
                            *(int128_t *)(r20 + 0x10) = q1;
                            *(int128_t *)(r20 + 0x20) = q2;
                            *(int128_t *)r20 = q0;
                            r9 = *(r21 + 0x130);
                            var_A0 = r9;
                            if (r9 != 0x0) {
                                    r22 = r25;
                                    do {
                                            asm { ldxr       x9, [x8] };
                                            r9 = r9 + 0x1;
                                            asm { stxr       w10, x9, [x8] };
                                    } while (r10 != 0x0);
                                    r8 = *(int32_t *)(r21 + 0x138);
                            }
                            else {
                                    r22 = r25;
                            }
                            r1 = var_220;
                            *(int128_t *)var_218 = *(int128_t *)r22;
                            sub_1002c5700(r24, r1);
                            sub_1003805bc(&var_1D0);
                            sub_1002c59fc(r24);
                            r26 = var_A0;
                            if (r26 != 0x0) {
                                    do {
                                            asm { ldaxr      x9, [x8] };
                                            r10 = r9 - 0x1;
                                            asm { stlxr      w11, x10, [x8] };
                                    } while (r11 != 0x0);
                                    if (r9 == 0x0) {
                                            (*(*r26 + 0x10))(r26);
                                            std::__1::__shared_weak_count::__release_weak();
                                    }
                            }
                            loc_100381804(var_200, r1);
                            loc_100381804(var_1F8, r1);
                            loc_100381804(var_1F0, r1);
                            loc_100381804(r20, r1);
                            r28 = r28 + 0x1;
                            r8 = *(int128_t *)r27;
                    } while (r28 < (*(int128_t *)(r27 + 0x8) - r8) / 0x100);
            }
    }
    else {
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_glServerState));
            sub_10031a6c4();
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_shaderProgram));
            [*(r19 + r26) use];
            [*(r19 + r26) setUniformsForBuiltins];
            sub_10031a4a8(0x302, 0x303);
            sub_10031a6f0(0x7);
            do {
            } while (glGetError() != 0x0);
            r27 = (int64_t *)&r19->Meshes;
            if (*(int128_t *)(r27 + 0x8) != *(int128_t *)r27) {
                    r28 = 0x0;
                    do {
                            r0 = sub_100383410();
                            r8 = *r27;
                            r9 = *(0xe8 + r8 + r28 * 0x100);
                            r8 = *(0xf0 + r8 + r28 * 0x100);
                            var_1D8 = r8;
                            if (r8 != 0x0) {
                                    do {
                                            asm { ldxr       x9, [x8] };
                                            r9 = r9 + 0x1;
                                            asm { stxr       w10, x9, [x8] };
                                    } while (r10 != 0x0);
                            }
                            sub_100385670(r0, &var_1E0, 0x0);
                            r24 = var_1D8;
                            if (r24 != 0x0) {
                                    do {
                                            asm { ldaxr      x9, [x8] };
                                            r10 = r9 - 0x1;
                                            asm { stlxr      w11, x10, [x8] };
                                    } while (r11 != 0x0);
                                    if (r9 == 0x0) {
                                            (*(*r24 + 0x10))(r24);
                                            std::__1::__shared_weak_count::__release_weak();
                                    }
                            }
                            if (sub_10037ef00(*(0xe8 + *r27 + r28 * 0x100)) == 0x5 && [r19 shaderProgram] != r19->_8BitShaderProgram) {
                                    [r19 setShaderProgram:r2];
                            }
                            if (sub_10037ef00(*(0xe8 + *r27 + r28 * 0x100)) == 0x0 && [r19 shaderProgram] != r19->_32BitShaderProgram) {
                                    [r19 setShaderProgram:r2];
                            }
                            sub_10031a6c4();
                            [*(r19 + r26) use];
                            objc_msgSend(*(r19 + r26), r21);
                            sub_10031a4a8(0x302, 0x303);
                            sub_10031a6f0(0x7);
                            glBindBuffer(0x8892, sub_1003819c4(0x38 + *r27 + r28 * 0x100));
                            glEnableVertexAttribArray(0x0);
                            glVertexAttribPointer(0x0, 0x2, 0x1406, 0x0, 0x0, 0x0);
                            glBindBuffer(0x8892, sub_1003819c4(0x70 + *r27 + r28 * 0x100));
                            glEnableVertexAttribArray(0x2);
                            glVertexAttribPointer(0x2, 0x2, 0x1406, 0x0, 0x0, 0x0);
                            glBindBuffer(0x8892, sub_1003819c4(0xa8 + *r27 + r28 * 0x100));
                            glEnableVertexAttribArray(0x1);
                            glVertexAttribPointer(0x1, 0x4, 0x1401, 0x1, 0x0, 0x0);
                            glBindBuffer(0x8893, sub_1003819c4(*r27 + r28 * 0x100));
                            glDrawElements(0x4, *(int32_t *)(0xf8 + *r27 + r28 * 0x100), 0x1403, 0x0);
                            r28 = r28 + 0x1;
                    } while (r28 < (*(int128_t *)(r27 + 0x8) - *(int128_t *)r27) / 0x100);
            }
            glBindBuffer(0x8893, 0x0);
            glBindBuffer(0x8892, 0x0);
            do {
            } while (glGetError() != 0x0);
    }
    return;
}

-(struct CGSize)requestedDimensions {
    r0 = self;
    asm { ld1r       {v1.2s}, [x9] };
    asm { ucvtf      v0.2s, v0.2s };
    asm { fdiv       v0.2s, v0.2s, v1.2s };
    asm { fcvtl      v0.2d, v0.2s };
    return r0;
}

-(void)setRequestedDimensions:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    asm { fcvt       d3, s2 };
    d2 = d0 * d3;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_renderData));
    r8 = r0 + r8;
    asm { ucvtf      d4, d4 };
    d3 = d1 * d3;
    if (d2 == d4) {
            asm { ucvtf      d4, d4 };
            if (d3 != d4) {
                    asm { fcvtzu     w9, d2 };
                    if (d0 > 0x0) {
                            asm { csinv      w9, w9, wzr, gt };
                    }
                    asm { fcvtzu     w10, d3 };
                    if (d1 > 0x0) {
                            asm { csinv      w10, w10, wzr, gt };
                    }
                    *(int128_t *)(r8 + 0x34) = r9;
                    *(int128_t *)(r8 + 0x38) = r10;
                    *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
            }
    }
    else {
            asm { fcvtzu     w9, d2 };
            if (d0 > 0x0) {
                    asm { csinv      w9, w9, wzr, gt };
            }
            asm { fcvtzu     w10, d3 };
            if (d1 > 0x0) {
                    asm { csinv      w10, w10, wzr, gt };
            }
            *(int128_t *)(r8 + 0x34) = r9;
            *(int128_t *)(r8 + 0x38) = r10;
            *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
    }
    return;
}

-(void)setHorizontalAlignment:(int)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    if ([self horizontalAlignment] != r20) {
            if (r20 <= 0x2) {
                    *(int32_t *)(int64_t *)&r19->_renderData = r20;
            }
            *(int8_t *)(int64_t *)&r19->_isTextureDirty = 0x1;
    }
    return;
}

-(void)setVerticalAlignment:(int)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    if ([self verticalAlignment] != r20) {
            if (r20 <= 0x2) {
                    *(int32_t *)((int64_t *)&r19->_renderData + 0x4) = r20;
            }
            *(int8_t *)(int64_t *)&r19->_isTextureDirty = 0x1;
    }
    return;
}

-(int)verticalAlignment {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_renderData));
    r8 = *(int32_t *)(0x4 + r0 + r8);
    if (r8 == 0x1) {
            if (CPU_FLAGS & E) {
                    r9 = 0x1;
            }
    }
    if (r8 == 0x2) {
            if (!CPU_FLAGS & E) {
                    r0 = r9;
            }
            else {
                    r0 = r8;
            }
    }
    return r0;
}

-(int)horizontalAlignment {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_renderData));
    r8 = *(int32_t *)(r0 + r8);
    if (r8 == 0x1) {
            if (CPU_FLAGS & E) {
                    r9 = 0x1;
            }
    }
    if (r8 == 0x2) {
            if (!CPU_FLAGS & E) {
                    r0 = r9;
            }
            else {
                    r0 = r8;
            }
    }
    return r0;
}

-(void)setLineBreakMode:(int)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    if ([self lineBreakMode] != r20) {
            if (r20 <= 0x5) {
                    *(int32_t *)((int64_t *)&r19->_renderData + 0x8) = r20;
            }
            *(int8_t *)(int64_t *)&r19->_isTextureDirty = 0x1;
    }
    return;
}

-(int)lineBreakMode {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_renderData));
    r8 = *(int32_t *)(0x8 + r0 + r8);
    if (r8 < 0x6) {
            if (!CPU_FLAGS & B) {
                    r0 = 0x0;
            }
            else {
                    r0 = r8;
            }
    }
    return r0;
}

-(void)setForceSingleLine:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_renderData));
    r8 = r0 + r8;
    if (*(int8_t *)(r8 + 0xc) != r2) {
            *(int8_t *)(r8 + 0xc) = r2;
            *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
    }
    return;
}

-(bool)forceSingleLine {
    r0 = *(int8_t *)((int64_t *)&self->_renderData + 0xc);
    return r0;
}

-(void)setAnchorPoint:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[&var_20 super] setAnchorPoint:r2];
    *(int8_t *)(int64_t *)&self->_isTextureDirty = 0x1;
    return;
}

-(struct CGSize)contentSize {
    r0 = [self updateQuads];
    return r0;
}

-(void)disableShadowAndUpdateImage:(unsigned char)arg2 {
    r2 = arg2;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_shadowEnabled));
    if (*(int8_t *)(r0 + r8) != 0x0) {
            *(int8_t *)(r0 + r8) = 0x0;
            *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
            if (r2 != 0x0) {
                    [r0 updateQuads];
            }
    }
    return;
}

-(void)enableShadowWithOffset:(struct CGSize)arg2 opacity:(float)arg3 blur:(float)arg4 updateImage:(unsigned char)arg5 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_shadowEnabled));
    if (*(int8_t *)(r0 + r9) != 0x0) {
            r8 = 0x0;
    }
    else {
            r8 = 0x1;
            *(int8_t *)(r0 + r9) = r8;
    }
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_shadowOffset));
    r9 = r0 + r9;
    if (*r9 != d0 || *(r9 + 0x8) != d1) {
            *(int128_t *)r9 = d0;
            *(int128_t *)(r9 + 0x8) = d1;
            r8 = 0x1;
    }
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_shadowOpacity));
    if (*(int32_t *)(r0 + r9) != s2) {
            *(int32_t *)(r0 + r9) = s2;
            r8 = 0x1;
    }
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_shadowBlur));
    if (*(int32_t *)(r0 + r9) != s3) {
            *(int32_t *)(r0 + r9) = s3;
            *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
    }
    else {
            if (r8 != 0x0) {
                    *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
            }
    }
    return;
}

-(void)enableStrokeWithColor:(struct _ccColorThreeB)arg2 size:(float)arg3 updateImage:(unsigned char)arg4 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x4);
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_strokeEnabled));
    if (*(int8_t *)(r0 + r9) != 0x0) {
            r8 = 0x0;
    }
    else {
            r8 = 0x1;
            *(int8_t *)(r0 + r9) = r8;
    }
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_strokeColor));
    r9 = r0 + r9;
    r10 = r2 >> 0x8;
    r11 = r2 >> 0x10;
    if (*(int8_t *)(r9 + 0x2) != zero_extend_64(r11) || *(int8_t *)r9 != zero_extend_64(r2) || *(int8_t *)(r9 + 0x1) != zero_extend_64(r10)) {
            *(int8_t *)r9 = r2;
            *(int8_t *)(r9 + 0x1) = r10;
            *(int8_t *)(r9 + 0x2) = r11;
            *(int8_t *)(r9 + 0x3) = r2 >> 0x18;
            r8 = 0x1;
    }
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_strokeSize));
    if (*(int32_t *)(r0 + r9) != s0) {
            *(int32_t *)(r0 + r9) = s0;
            *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
            if (r3 != 0x0) {
                    [r0 updateQuads];
            }
    }
    else {
            if (r8 != 0x0) {
                    *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
                    if (r3 != 0x0) {
                            [r0 updateQuads];
                    }
            }
    }
    return;
}

-(void)disableStrokeAndUpdateImage:(unsigned char)arg2 {
    r2 = arg2;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_strokeEnabled));
    if (*(int8_t *)(r0 + r8) != 0x0) {
            *(int8_t *)(r0 + r8) = 0x0;
            *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
            if (r2 != 0x0) {
                    [r0 updateQuads];
            }
    }
    return;
}

-(void)setFontFillColor:(struct _ccColorThreeB)arg2 updateImage:(unsigned char)arg3 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x4);
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_textFillColor));
    r8 = r0 + r8;
    r9 = r2 >> 0x8;
    r10 = r2 >> 0x10;
    if (*(int8_t *)(r8 + 0x2) != zero_extend_64(r10) || *(int8_t *)r8 != zero_extend_64(r2) || *(int8_t *)(r8 + 0x1) != zero_extend_64(r9)) {
            *(int8_t *)r8 = r2;
            *(int8_t *)(r8 + 0x1) = r9;
            *(int8_t *)(r8 + 0x2) = r10;
            *(int8_t *)(r8 + 0x3) = r2 >> 0x18;
            *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
            if (r3 != 0x0) {
                    [r0 updateQuads];
            }
    }
    return;
}

-(void *)getFontDefinition {
    r0 = [self prepareFontDefinitionAndAdjustForResolution:0x0];
    return r0;
}

-(void *)prepareFontDefinitionAndAdjustForResolution:(unsigned char)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r21 = *(int32_t *)((int64_t *)&self->_renderData + 0x28);
    if (arg2 == 0x0) {
            asm { ucvtf      s0, w21 };
            asm { fdiv       s0, s0, s1 };
            asm { fcvtzs     w21, s0 };
    }
    r22 = [CCFontDefinition alloc];
    r2 = (int64_t *)&r20->_fontName;
    if ((sign_extend_64(*(int8_t *)(r2 + 0x17)) & 0xffffffff80000000) != 0x0) {
            r2 = *r2;
    }
    r0 = [r22 initWithFontName:[NSString stringWithUTF8String:r2] fontSize:r21];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 autorelease];
            [r21 setLineBreakMode:[r20 lineBreakMode]];
            [r21 setAlignment:[r20 horizontalAlignment]];
            [r21 setVertAlignment:[r20 verticalAlignment]];
            [r21 setLineBreakMode:[r20 lineBreakMode]];
            r2 = *(int32_t *)(int64_t *)&r20->_textFillColor;
            [r21 setFontFillColor:r2];
            [r20 dimensions];
            [r21 setDimensions:r2];
            r0 = r21;
            if (*(int8_t *)(int64_t *)&r20->_strokeEnabled != 0x0) {
                    [r0 enableStroke:r2];
                    [r21 setStrokeColor:*(int32_t *)(int64_t *)&r20->_strokeColor];
                    s0 = *(int32_t *)(int64_t *)&r20->_strokeSize;
                    asm { fcvt       d0, s0 };
                    [r21 setStrokeSize:r2];
            }
            else {
                    [r0 enableStroke:r2];
            }
            r0 = r21;
            if (*(int8_t *)(int64_t *)&r20->_shadowEnabled != 0x0) {
                    [r0 enableShadow:r2];
                    [r21 setShadowBlur:0x1];
                    r2 = *(int32_t *)(int64_t *)&r20->_shadowColor;
                    [r21 setShadowColor:r2];
                    [r21 setShadowOpacity:r2];
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_shadowOffset));
                    r8 = r20 + r8;
                    d0 = *r8;
                    if (r19 != 0x0) {
                            asm { fcvt       d1, s1 };
                    }
                    [r21 setShadowOffset:r2];
            }
            else {
                    [r0 enableShadow:r2];
            }
    }
    r0 = r21;
    return r0;
}

-(void)updateColor {
    *(int8_t *)(int64_t *)&self->_isTextureDirty = 0x1;
    return;
}

-(void)setFontDefinition:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r0 = [arg2 fontName];
    r0 = [r0 UTF8String];
    r0 = sub_10034fe14(&var_48, r0);
    r21 = (int64_t *)&r19->_fontName;
    if ((sign_extend_64(*(int8_t *)(r21 + 0x17)) & 0xffffffff80000000) != 0x0) {
            operator delete(*r21);
    }
    *(r21 + 0x10) = var_38;
    *(int128_t *)r21 = var_48;
    [r20 dimensions];
    [r19 setDimensions:r2];
    [r19 setHorizontalAlignment:[r20 alignment]];
    r2 = [r20 vertAlignment];
    [r19 setVerticalAlignment:r2];
    [r20 fontSize];
    asm { scvtf      s0, w0 };
    [r19 setFontSize:r2];
    [r19 setLineBreakMode:[r20 lineBreakMode]];
    if ([r20 shadowEnabled] != 0x0) {
            [r20 shadowOffset];
            [r20 shadowBlur];
            [r19 enableShadowWithOffset:0x0 opacity:r3 blur:r4 updateImage:r5];
    }
    else {
            [r19 disableShadowAndUpdateImage:0x0];
    }
    if ([r20 strokeEnabled] != 0x0) {
            [r20 strokeColor];
            [r20 strokeSize];
            asm { fcvt       s0, d0 };
            [r19 enableStrokeWithColor:r2 size:r3 updateImage:r4];
    }
    else {
            [r19 disableStrokeAndUpdateImage:0x0];
    }
    [r19 setFontFillColor:[r20 fontFillColor] & 0xffffffff updateImage:0x0];
    *(int8_t *)(int64_t *)&r19->_isTextureDirty = 0x1;
    return;
}

-(void)setColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    [[&var_20 super] setColor:r2 & 0xffffffff];
    [self updateColor];
    return;
}

-(void)updateDisplayedColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    [[&var_20 super] updateDisplayedColor:r2 & 0xffffffff];
    [self updateColor];
    return;
}

-(void)setOpacity:(unsigned char)arg2 {
    [[&var_20 super] setOpacity:arg2];
    [self updateColor];
    return;
}

-(void)setOpacityModifyRGB:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_opacityModifyRGB));
    if (*(int8_t *)(r0 + r8) != r2) {
            *(int8_t *)(r0 + r8) = r2;
            [r0 updateColor];
    }
    return;
}

-(bool)doesOpacityModifyRGB {
    r0 = *(int8_t *)(int64_t *)&self->_opacityModifyRGB;
    return r0;
}

-(void)updateDisplayedEmission:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    [[&var_20 super] updateDisplayedEmission:r2 & 0xffffffff];
    [self updateEmission];
    return;
}

-(void)updateDisplayedOpacity:(unsigned char)arg2 {
    [[&var_20 super] updateDisplayedOpacity:arg2];
    [self updateColor];
    return;
}

-(void)setEmission:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    [[&var_20 super] setEmission:r2 & 0xffffffff];
    [self updateEmission];
    return;
}

-(void)updateEmission {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = (int64_t *)&self->_displayedEmission;
    r0 = *(int8_t *)r20;
    asm { ucvtf      s0, s0 };
    asm { fdiv       s0, s0, s1 };
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_emissionColor));
    r8 = r0 + r8;
    *(int32_t *)r8 = s0;
    asm { ucvtf      s0, s0 };
    asm { fdiv       s0, s0, s1 };
    *(int32_t *)(r8 + 0x4) = s0;
    asm { ucvtf      s0, s0 };
    asm { fdiv       s0, s0, s1 };
    *(int32_t *)(r8 + 0x8) = s0;
    *(int32_t *)(r8 + 0xc) = 0x0;
    r0 = [CCConfiguration sharedConfiguration];
    r0 = [r0 useNewRenderer];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_emissionEnabled));
    r10 = *(int8_t *)(r19 + r8);
    r9 = *(int8_t *)r20;
    if (r0 != 0x0) {
            if (r10 != 0x0) {
                    if (r9 != 0x0 && *(int8_t *)(r20 + 0x1) != 0x0) {
                            if (*(int8_t *)(r20 + 0x2) == 0x0) {
                                    *(int8_t *)(r19 + r8) = 0x0;
                                    *((int64_t *)&r19->_mcRenderJob + 0x140) = r19->_mcEmissionOldShader;
                            }
                    }
                    else {
                            *(int8_t *)(r19 + r8) = 0x0;
                            *((int64_t *)&r19->_mcRenderJob + 0x140) = r19->_mcEmissionOldShader;
                    }
            }
            else {
                    if (*(int8_t *)(r20 + 0x2) != 0x0 || r9 != 0x0 || *(int8_t *)(r20 + 0x1) != 0x0) {
                            *(int8_t *)(r19 + r8) = 0x1;
                            r21 = (int64_t *)&r19->_mcRenderJob;
                            r19->_mcEmissionOldShader = *(r21 + 0x140);
                            sub_100292530();
                            sub_10034fe14(&var_38, [r19->_emissionShaderName UTF8String]);
                            r0 = sub_10037ec20(r20, &var_38);
                            r20 = r0;
                            *(r21 + 0x140) = r0;
                            if ((sign_extend_64(var_21) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_38);
                                    r20 = *(r21 + 0x140);
                            }
                            sub_10034fe14(&var_50, "u_emission");
                            r0 = sub_100382990(r20, &var_50);
                            r19->_mcEmissionUniform = r0;
                            if ((sign_extend_64(var_39) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_50);
                            }
                    }
            }
    }
    else {
            if (r10 != 0x0) {
                    if (*(int8_t *)(r20 + 0x2) == 0x0 || r9 == 0x0 || *(int8_t *)(r20 + 0x1) == 0x0) {
                            *(int8_t *)(r19 + r8) = 0x0;
                            r20 = sign_extend_64(*(int32_t *)ivar_offset(_emissionOldShaderProgram));
                            [r19 setShaderProgram:*(r19 + r20)];
                            [*(r19 + r20) release];
                    }
            }
            else {
                    if (*(int8_t *)(r20 + 0x2) != 0x0 || r9 != 0x0 || *(int8_t *)(r20 + 0x1) != 0x0) {
                            *(int8_t *)(r19 + r8) = 0x1;
                            r0 = [r19 shaderProgram];
                            r19->_emissionOldShaderProgram = r0;
                            [r0 retain];
                            [r19 setShaderProgram:[[CCShaderCache sharedShaderCache] programForKey:r19->_emissionShaderName]];
                            *(int32_t *)(int64_t *)&r19->_emissionUniform = glGetUniformLocation([r19->_shaderProgram program], "u_emission");
                    }
            }
    }
    return;
}

-(void)dealloc {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = (int64_t *)&self->Meshes;
    r20 = *(int128_t *)r22;
    r21 = *(int128_t *)(r22 + 0x8);
    if (r20 != r21) {
            do {
                    sub_1003830ac(r20);
                    r20 = r20 + 0x100;
            } while (r21 != r20);
            r20 = *(int128_t *)r22;
            r21 = *(int128_t *)(r22 + 0x8);
            if (r21 != r20) {
                    do {
                            r21 = r21 - 0x100;
                            sub_100352c3c(r21);
                    } while (r20 != r21);
            }
    }
    *(r22 + 0x8) = r20;
    [[&var_30 super] dealloc];
    return;
}

-(void)setTexture:(void *)arg2 {
    return;
}

-(void *)texture {
    return 0x0;
}

-(bool)strokeEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_strokeEnabled;
    return r0;
}

-(void)setStrokeEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_strokeEnabled = arg2;
    return;
}

-(struct _ccColorThreeB)strokeColor {
    r0 = *(int32_t *)(int64_t *)&self->_strokeColor;
    return r0;
}

-(void)setStrokeColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    *(int32_t *)(int64_t *)&self->_strokeColor = r2;
    return;
}

-(struct _ccColorThreeB)textFillColor {
    r0 = *(int32_t *)(int64_t *)&self->_textFillColor;
    return r0;
}

-(float)strokeSize {
    r0 = self;
    return r0;
}

-(void)setTextFillColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    *(int32_t *)(int64_t *)&self->_textFillColor = r2;
    return;
}

-(void)setStrokeSize:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_strokeSize = s0;
    return;
}

-(bool)shadowEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_shadowEnabled;
    return r0;
}

-(void)setShadowEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shadowEnabled = arg2;
    return;
}

-(float)shadowOpacity {
    r0 = self;
    return r0;
}

-(void)setShadowOpacity:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_shadowOpacity = s0;
    return;
}

-(float)shadowBlur {
    r0 = self;
    return r0;
}

-(void)setShadowBlur:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_shadowBlur = s0;
    return;
}

-(struct CGSize)shadowOffset {
    r0 = self;
    return r0;
}

-(void)setShadowOffset:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_shadowOffset));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(struct _ccColorThreeB)shadowColor {
    r0 = *(int32_t *)(int64_t *)&self->_shadowColor;
    return r0;
}

-(void)setShadowColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    *(int32_t *)(int64_t *)&self->_shadowColor = r2;
    return;
}

-(void *)emissionShaderName {
    r0 = self->_emissionShaderName;
    return r0;
}

-(void)setEmissionShaderName:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void).cxx_destruct {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_fontName));
    r8 = self + r8;
    if ((sign_extend_64(*(int8_t *)(r8 + 0x17)) & 0xffffffff80000000) != 0x0) {
            operator delete(*r8);
    }
    sub_100352d90((int64_t *)&r19->Meshes);
    r19 = (int64_t *)&r19->_renderData;
    sub_100352a00(r19 + 0x90);
    sub_100352af4(r19 + 0x78);
    sub_100352af4(r19 + 0x60);
    sub_100352bd4(r19 + 0x48);
    if ((sign_extend_64(*(int8_t *)(r19 + 0x27)) & 0xffffffff80000000) != 0x0) {
            operator delete(*(r19 + 0x10));
    }
    return;
}

-(void *).cxx_construct {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_renderData));
    *(int128_t *)(0x18 + r0 + r8) = 0x0;
    *(int128_t *)(0x20 + r0 + r8) = 0x0;
    *(0x10 + r0 + r8) = 0x0;
    *(int128_t *)(0x48 + r0 + r8) = q0;
    *(int128_t *)(0x58 + r0 + r8) = q0;
    *(int128_t *)(0x68 + r0 + r8) = q0;
    *(int128_t *)(0x78 + r0 + r8) = q0;
    *(int128_t *)(0x88 + r0 + r8) = q0;
    *(int128_t *)(0x98 + r0 + r8) = q0;
    *(0xa8 + r0 + r8) = 0x0;
    *(0x34 + r0 + r8) = 0xffffffffffffffff;
    *(0x3c + r0 + r8) = 0xffffffffffffffff;
    *(r0 + r8) = 0x0;
    *(0x5 + r0 + r8) = 0x0;
    *(int32_t *)(0xb0 + r0 + r8) = 0xffffffffffffffff;
    *(int32_t *)(0x30 + r0 + r8) = 0x3f800000;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(Meshes));
    *(int128_t *)(0x8 + r0 + r8) = 0x0;
    *(int128_t *)(0x10 + r0 + r8) = 0x0;
    *(r0 + r8) = 0x0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_fontName));
    *(int128_t *)(r0 + r8) = 0x0;
    *(int128_t *)(0x8 + r0 + r8) = 0x0;
    *(0x10 + r0 + r8) = 0x0;
    return r0;
}

-(void)updateQuads {
    r0 = self;
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
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffff80 - 0x1a0;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_isTextureDirty));
    if (*(int8_t *)(r0 + r26) == 0x0) goto .l13;

loc_1003504a8:
    r25 = r0;
    s0 = *(int32_t *)(int64_t *)&r0->_strokeSize;
    r28 = 0x1011bcc00;
    asm { fmax       s1, s0, s1 };
    s2 = *(int32_t *)r28;
    COND = s0 != 0x0;
    s0 = 0x0;
    if (COND) {
            asm { fcsel      s8, s1, s0, ne };
    }
    r20 = (int64_t *)&r0->Meshes;
    r21 = *(int128_t *)r20;
    r19 = *(int128_t *)(r20 + 0x8);
    if (r21 != r19) {
            do {
                    sub_1003830ac(r21);
                    r21 = r21 + 0x100;
            } while (r19 != r21);
            r21 = *(int128_t *)r20;
            r22 = *(int128_t *)(r20 + 0x8);
            if (r22 != r21) {
                    do {
                            r22 = r22 - 0x100;
                            sub_100352c3c(r22);
                    } while (r21 != r22);
            }
    }
    *(r20 + 0x8) = r21;
    r21 = (int64_t *)&r25->_renderData;
    r22 = r21 + 0x90;
    sub_100352a38(r22);
    r19 = *(int8_t *)(int64_t *)&r25->_displayedOpacity;
    if (*(int8_t *)(int64_t *)&r25->_opacityModifyRGB != 0x0) {
            s0 = 0x0;
            asm { ucvtf      s0, w19 };
            s1 = 0x437f0000;
            asm { fdiv       s0, s0, s1 };
            asm { ucvtf      s1, w8 };
            s1 = s0 * s1;
            asm { fcvtzs     w8, s1 };
            asm { ucvtf      s1, w9 };
            s1 = s0 * s1;
            asm { fcvtzs     w9, s1 };
            asm { ucvtf      s1, w10 };
            s0 = s0 * s1;
            asm { fcvtzs     w10, s0 };
    }
    r11 = sign_extend_64(*(int32_t *)ivar_offset(_strokeEnabled));
    r11 = *(int8_t *)(r25 + r11);
    asm { ucvtf      s11, w8 };
    asm { ucvtf      s10, w9 };
    asm { ucvtf      s9, w10 };
    var_1F0 = q3;
    if (r11 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_strokeColor));
            r8 = r25 + r8;
            asm { ucvtf      s0, s0 };
            r9 = 0x437f0000;
            s1 = r9;
            asm { fdiv       s2, s11, s1 };
            s0 = s2 * s0;
            asm { fcvtzs     w9, s0 };
            *(int8_t *)(r21 + 0xb0) = r9;
            asm { ucvtf      s0, s0 };
            asm { fdiv       s2, s10, s1 };
            s0 = s2 * s0;
            asm { fcvtzs     w9, s0 };
            *(int8_t *)(r21 + 0xb1) = r9;
            asm { ucvtf      s0, s0 };
            asm { fdiv       s1, s9, s1 };
            s0 = s1 * s0;
            asm { fcvtzs     w8, s0 };
            *(int8_t *)(r21 + 0xb2) = r8;
            *(int8_t *)(r21 + 0xb3) = r19;
            asm { fcvtzu     w23, s3 };
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_fontName));
            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
            r1 = 0xff00;
            asm { bfi        x1, x23, #0x20, #0x20 };
            r23 = sub_10036e504(r29 - 0xb8, r1, r21);
            if ((sign_extend_64(var_A1) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_B8);
            }
            sub_100372140(r23, r21);
    }
    else {
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_fontName));
    }
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r23 = sub_10036e504(r29 - 0xd0, 0xff, r21);
    var_208 = r26;
    if ((sign_extend_64(var_B9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_D0);
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_textFillColor));
    r8 = r25 + r8;
    asm { ucvtf      s0, s0 };
    r9 = 0x437f0000;
    asm { fdiv       s2, s11, s1 };
    s0 = s2 * s0;
    asm { fcvtzs     w9, s0 };
    *(int8_t *)(r21 + 0xb0) = r9;
    asm { ucvtf      s0, s0 };
    asm { fdiv       s2, s10, s1 };
    asm { fcvtzs     w9, s0 };
    *(int8_t *)(r21 + 0xb1) = r9;
    asm { ucvtf      s0, s0 };
    asm { fdiv       s1, s9, s1 };
    asm { fcvtzs     w8, s0 };
    *(int8_t *)(r21 + 0xb2) = r8;
    *(int8_t *)(r21 + 0xb3) = r19;
    sub_100372140(r23, r21);
    q0 = var_1F0;
    asm { dup        v0.2s, v0.s[0] };
    v0 = v0 + v1;
    asm { ld1r       {v1.2s}, [x28] };
    asm { fdiv       v0.2s, v0.2s, v1.2s };
    asm { fcvtl      v0.2d, v0.2s };
    *(int128_t *)(int64_t *)&r25->_meshSize = q0;
    var_200 = r25;
    [[r29 - 0xe0 super] setContentSize:r2];
    r8 = *(int128_t *)(r21 + 0x90);
    if (*(int128_t *)(r21 + 0x98) == r8) goto loc_100350a94;

loc_10035078c:
    r1 = @selector(setContentSize:);
    r27 = 0x0;
    var_1F8 = r20 + 0x10;
    r25 = &var_1E0 + 0xa8;
    r24 = &var_1E0 + 0x70;
    r9 = &var_1E0 + 0x38;
    var_1F0 = r9;
    goto loc_1003507b0;

loc_1003507b0:
    asm { madd       x9, x27, x19, x8 };
    r10 = *(int128_t *)(r9 + 0x30);
    if (*(int128_t *)(r9 + 0x38) != r10) {
            r9 = 0x0;
            r10 = 0x1;
            do {
                    s0 = *(int32_t *)(r21 + 0xac);
                    r11 = r27 + r27 * 0x8;
                    r8 = *(0x30 + r8 + r11 * 0x10);
                    *(int32_t *)(0x4 + r8 + r9 * 0x8) = s0 + *(int32_t *)(0x4 + r8 + r9 * 0x8);
                    r8 = *(r21 + 0x90);
                    r8 = *(0x30 + r8 + r11 * 0x10);
                    *(int32_t *)(r8 + (r9 << 0x3)) = s8 + *(int32_t *)(r8 + (r9 << 0x3));
                    r8 = *(r21 + 0x90);
                    r8 = *(0x30 + r8 + r11 * 0x10);
                    *(int32_t *)(0x4 + r8 + r9 * 0x8) = s8 + *(int32_t *)(0x4 + r8 + r9 * 0x8);
                    r8 = *(r21 + 0x90);
                    r8 = *(0x30 + r8 + r11 * 0x10);
                    d0 = *(r8 + r9 * 0x8);
                    asm { ld1r       {v1.2s}, [x28] };
                    asm { fdiv       v0.2s, v0.2s, v1.2s };
                    *(r8 + r9 * 0x8) = d0;
                    r9 = r10;
                    r8 = *(r21 + 0x90);
                    r12 = *(int128_t *)(0x30 + r8 + r11 * 0x10);
                    r11 = *(int128_t *)(0x38 + r8 + r11 * 0x10);
                    r11 = r11 - r12;
                    r10 = r10 + 0x1;
            } while (r9 < r11 / 0x8);
    }
    sub_100382ea0(&var_1E0);
    asm { madd       x1, x27, x19, x8 };
    r0 = sub_100382ea4(&var_1E0, r1);
    r8 = *(int128_t *)(r20 + 0x8);
    r9 = *(int128_t *)(r20 + 0x10);
    if (r8 == r9) goto loc_100350904;

loc_100350880:
    *(int128_t *)(r8 + 0x10) = var_1D0;
    *(int128_t *)(r8 + 0x20) = var_1C0;
    *(int128_t *)r8 = var_1E0;
    *(int128_t *)(r8 + 0x50) = var_190;
    *(int128_t *)(r8 + 0x60) = stack[-400];
    *(int128_t *)(r8 + 0x30) = var_1B0;
    *(int128_t *)(r8 + 0x40) = stack[-432];
    *(int128_t *)(r8 + 0x90) = var_150;
    *(int128_t *)(r8 + 0xa0) = stack[-336];
    *(int128_t *)(r8 + 0x70) = var_170;
    *(int128_t *)(r8 + 0x80) = stack[-368];
    *(int32_t *)(r8 + 0xe0) = var_100;
    *(int128_t *)(r8 + 0xc0) = stack[-304];
    *(int128_t *)(r8 + 0xd0) = var_110;
    *(int128_t *)(r8 + 0xb0) = var_130;
    *(r8 + 0xe8) = var_F8;
    r9 = var_F0;
    *(r8 + 0xf0) = r9;
    if (r9 != 0x0) {
            do {
                    asm { ldxr       x10, [x9] };
                    r10 = r10 + 0x1;
                    asm { stxr       w11, x10, [x9] };
            } while (r11 != 0x0);
    }
    r9 = var_E8;
    *(int32_t *)(r8 + 0xf8) = r9;
    *(r20 + 0x8) = r8 + 0x100;
    goto loc_100350a10;

loc_100350a10:
    r26 = var_F0;
    if (r26 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r26 + 0x10))(r26);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    loc_100381804(r25, r1);
    loc_100381804(r24, r1);
    loc_100381804(var_1F0, r1);
    loc_100381804(&var_1E0, r1);
    r27 = r27 + 0x1;
    r8 = *(int128_t *)r22;
    r9 = *(int128_t *)(r22 + 0x8);
    r9 = (SAR(r9 - r8, 0x4)) * 0x8e38e38e38e38e39;
    if (r9 > r27) goto loc_1003507b0;

loc_100350a94:
    *(int8_t *)(var_200 + var_208) = 0x0;
    return;

.l13:
    return;

loc_100350904:
    r10 = *r20;
    r26 = SAR(r8 - r10, 0x8);
    r8 = r26 + 0x1;
    r11 = r8 >> 0x38;
    if (r11 != 0x0) goto loc_100350ac4;

loc_10035091c:
    r9 = r9 - r10;
    r10 = SAR(r9, 0x7);
    if (r10 < r8) {
            if (!CPU_FLAGS & B) {
                    r8 = r10;
            }
            else {
                    r8 = r8;
            }
    }
    if (0x7fffffffffffff > r9 / 0x100) {
            if (!CPU_FLAGS & A) {
                    r23 = 0xffffffffffffff;
            }
            else {
                    r23 = r8;
            }
    }
    if (r23 == 0x0) goto loc_10035095c;

loc_100350948:
    if (r23 >> 0x38 != 0x0) goto loc_100350ad0;

loc_100350950:
    r0 = operator new();
    goto loc_100350960;

loc_100350960:
    r8 = r0 + r26 * 0x100;
    var_90 = r8;
    *(int128_t *)(r8 + 0x10) = var_1D0;
    *(int128_t *)(r8 + 0x20) = var_1C0;
    *(int128_t *)(r8 + 0x50) = var_190;
    *(int128_t *)(r8 + 0x60) = stack[-400];
    *(int128_t *)(r8 + 0x30) = var_1B0;
    *(int128_t *)(r8 + 0x40) = stack[-432];
    *(int128_t *)(r8 + 0x90) = var_150;
    *(int128_t *)(r8 + 0xa0) = stack[-336];
    *(int128_t *)(r8 + 0x70) = var_170;
    *(int128_t *)(r8 + 0x80) = stack[-368];
    *(int32_t *)(r8 + 0xe0) = var_100;
    *(int128_t *)(r8 + 0xc0) = stack[-304];
    *(int128_t *)(r8 + 0xd0) = var_110;
    *(int128_t *)(r8 + 0xb0) = var_130;
    *(int128_t *)r8 = var_1E0;
    *(r8 + 0xe8) = var_F8;
    r9 = var_F0;
    *(r8 + 0xf0) = r9;
    if (r9 != 0x0) {
            r10 = 0x7fffffffffffff;
            do {
                    asm { ldxr       x10, [x9] };
                    r10 = r10 + 0x1;
                    asm { stxr       w11, x10, [x9] };
            } while (r11 != 0x0);
            r9 = var_90;
    }
    else {
            r9 = r8;
    }
    *(int32_t *)(r8 + 0xf8) = var_E8;
    r1 = r29 - 0xa0;
    sub_100352c7c(r20, r1);
    sub_100352d44(r29 - 0xa0);
    goto loc_100350a10;

loc_100350ad0:
    sub_100352988();
    return;

loc_10035095c:
    r0 = 0x0;
    goto loc_100350960;

loc_100350ac4:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;
}

@end