@implementation CCLabelTTF

+(void *)allocWithZone:(struct _NSZone *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if ([[CCConfiguration sharedConfiguration] useNewTTFAtlas] != 0x0 && [CCLabelTTF class] == r20) {
            r0 = NSClassFromString(@"CCLabelAtlasTTFFont");
            r0 = NSAllocateObject(r0, 0x0, 0x0);
    }
    else {
            r0 = [[&var_20 super] allocWithZone:r19];
    }
    return r0;
}

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

+(void *)labelWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 dimensions:(struct CGSize)arg5 hAlignment:(int)arg6 vAlignment:(int)arg7 lineBreakMode:(int)arg8 {
    memcpy(&r5, &arg5, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithString:arg2 fontName:arg3 fontSize:arg4 dimensions:r5 hAlignment:r6 vAlignment:r7 lineBreakMode:var_50];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r0 = [self initWithString:@"" fontName:@"Helvetica" fontSize:r4];
    return r0;
}

-(void *)initWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 {
    r0 = [self initWithString:arg2 fontName:arg3 fontSize:0x0 dimensions:0x0 hAlignment:0x0 vAlignment:r7 lineBreakMode:stack[0]];
    return r0;
}

-(void *)initWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 dimensions:(struct CGSize)arg5 hAlignment:(int)arg6 {
    memcpy(&r5, &arg5, 0x8);
    r0 = [self initWithString:arg2 fontName:arg3 fontSize:arg4 dimensions:0x0 hAlignment:0x0 vAlignment:r7 lineBreakMode:stack[0]];
    return r0;
}

-(void *)initWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 dimensions:(struct CGSize)arg5 hAlignment:(int)arg6 vAlignment:(int)arg7 {
    memcpy(&r5, &arg5, 0x8);
    r0 = [self initWithString:arg2 fontName:arg3 fontSize:arg4 dimensions:r5 hAlignment:0x0 vAlignment:r7 lineBreakMode:stack[0]];
    return r0;
}

-(void *)initWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 dimensions:(struct CGSize)arg5 hAlignment:(int)arg6 lineBreakMode:(int)arg7 {
    memcpy(&r5, &arg5, 0x8);
    r0 = [self initWithString:arg2 fontName:arg3 fontSize:arg4 dimensions:0x0 hAlignment:r5 vAlignment:r7 lineBreakMode:stack[0]];
    return r0;
}

-(void *)string {
    r0 = self->_string;
    return r0;
}

-(void)setString:(void *)arg2 {
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_string));
    r0 = *(self + r23);
    if (r0 != 0x0 && [r0 hash] == [r20 hash]) {
            if (([*(r19 + r23) isEqualToString:r2] & 0x1) == 0x0) {
                    [*(r19 + r23) release];
                    *(r19 + r23) = [r20 copy];
                    *(int8_t *)(int64_t *)&r19->_isTextureDirty = 0x1;
            }
    }
    else {
            [*(r19 + r23) release];
            *(r19 + r23) = [r20 copy];
            *(int8_t *)(int64_t *)&r19->_isTextureDirty = 0x1;
    }
    return;
}

-(void *)initWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 dimensions:(struct CGSize)arg5 hAlignment:(int)arg6 vAlignment:(int)arg7 lineBreakMode:(int)arg8 {
    memcpy(&r5, &arg5, 0x8);
    r31 = r31 - 0x70;
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
    r23 = r5;
    r24 = arg4;
    r22 = arg3;
    r19 = arg2;
    r0 = [[&var_60 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setShaderProgram:[[CCShaderCache sharedShaderCache] programForKey:@"ShaderPositionTextureColor"]];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_dimensions));
            *(r20 + r8) = d10;
            *(0x8 + r20 + r8) = d9;
            *(int32_t *)(int64_t *)&r20->_hAlignment = r24;
            *(int32_t *)(int64_t *)&r20->_vAlignment = r23;
            r20->_fontName = [[r20 getFontName:r22] copy];
            r20->_fontSize = d8;
            *(int32_t *)(int64_t *)&r20->_lineBreakMode = r21;
            *(int8_t *)(int64_t *)&r20->_isTextureDirty = 0x1;
            *(int32_t *)(int64_t *)&r20->_textFillColor = 0xffffff;
            *(int32_t *)(int64_t *)&r20->_strokeColor = 0x0;
            *(int32_t *)(int64_t *)&r20->_shadowColor = 0x0;
            [r20 setString:r2];
    }
    r0 = r20;
    return r0;
}

-(void *)getFontName:(void *)arg2 {
    r0 = arg2;
    return r0;
}

-(void *)fontName {
    r0 = self->_fontName;
    return r0;
}

-(void)setFontName:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self getFontName:arg2];
    r20 = r0;
    r22 = [r0 hash];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_fontName));
    if (r22 != [*(r19 + r23) hash]) {
            [*(r19 + r23) release];
            *(r19 + r23) = [r20 copy];
            *(int8_t *)(int64_t *)&r19->_isTextureDirty = 0x1;
    }
    return;
}

-(void)setFontSize:(float)arg2 {
    r0 = self;
    asm { fcvt       d0, s0 };
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_fontSize));
    if (*(r0 + r8) != d0) {
            *(r0 + r8) = d0;
            *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
    }
    return;
}

-(void)setHorizontalAlignment:(int)arg2 {
    r2 = arg2;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_hAlignment));
    if (*(int32_t *)(r0 + r8) != r2) {
            *(int32_t *)(r0 + r8) = r2;
            *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
    }
    return;
}

-(float)fontSize {
    r0 = self;
    asm { fcvt       s0, d0 };
    return r0;
}

-(void)setDimensions:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_dimensions));
    r8 = r0 + r8;
    if (d0 != *r8 || d1 != *(r8 + 0x8)) {
            *r8 = d0;
            *(r8 + 0x8) = d1;
            *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
    }
    return;
}

-(struct CGSize)dimensions {
    r0 = self;
    return r0;
}

-(int)horizontalAlignment {
    r0 = *(int32_t *)(int64_t *)&self->_hAlignment;
    return r0;
}

-(void)setVerticalAlignment:(int)arg2 {
    r2 = arg2;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_vAlignment));
    if (*(int32_t *)(r0 + r8) != r2) {
            *(int32_t *)(r0 + r8) = r2;
            *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
    }
    return;
}

-(int)verticalAlignment {
    r0 = *(int32_t *)(int64_t *)&self->_vAlignment;
    return r0;
}

-(void)dealloc {
    [self->_string release];
    [self->_fontName release];
    [[&var_20 super] dealloc];
    return;
}

-(void)visit {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(int64_t *)&self->_isTextureDirty != 0x0) {
            [r19 updateTexture];
    }
    [[&var_20 super] visit];
    return;
}

-(void *)description {
    [self class];
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(bool)stringContainsEmoji:(void *)arg2 {
    [arg2 enumerateSubstringsInRange:0x0 options:[arg2 length] usingBlock:0x2];
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
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
                    [r0 updateTexture];
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

-(void *)initWithString:(void *)arg2 fontDefinition:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = arg2;
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setShaderProgram:[[CCShaderCache sharedShaderCache] programForKey:@"ShaderPositionTextureColor"]];
            [r21 dimensions];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_dimensions));
            *(r20 + r8) = d0;
            *(0x8 + r20 + r8) = d1;
            *(int32_t *)(int64_t *)&r20->_hAlignment = [r21 alignment];
            *(int32_t *)(int64_t *)&r20->_vAlignment = [r21 vertAlignment];
            r20->_fontName = [[r21 fontName] copy];
            [r21 fontSize];
            asm { scvtf      d0, w0 };
            r20->_fontSize = d0;
            *(int32_t *)(int64_t *)&r20->_lineBreakMode = [r21 lineBreakMode];
            if ([r21 shadowEnabled] != 0x0) {
                    [r21 shadowOffset];
                    [r21 shadowBlur];
                    [r20 enableShadowWithOffset:0x0 opacity:r3 blur:r4 updateImage:r5];
            }
            else {
                    [r20 disableShadowAndUpdateImage:0x0];
            }
            if ([r21 strokeEnabled] != 0x0) {
                    [r21 strokeColor];
                    [r21 strokeSize];
                    asm { fcvt       s0, d0 };
                    [r20 enableStrokeWithColor:r2 size:r3 updateImage:r4];
            }
            else {
                    [r20 disableStrokeAndUpdateImage:0x0];
            }
            [r20 setFontFillColor:[r21 fontFillColor] & 0xffffffff updateImage:0x0];
            *(int8_t *)(int64_t *)&r20->_isTextureDirty = 0x1;
            [r20 setString:r2];
    }
    r0 = r20;
    return r0;
}

-(bool)updateTexture {
    r0 = self;
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_isTextureDirty));
    if (*(int8_t *)(r0 + r8) != 0x0) {
            r19 = r0;
            *(int8_t *)(r0 + r8) = 0x0;
            if (*(int8_t *)(int64_t *)&r0->_shadowEnabled == 0x0 && *(int8_t *)(int64_t *)&r19->_strokeEnabled == 0x0) {
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_string));
                    if ([r19 stringContainsEmoji:*(r19 + r20)] != 0x0) {
                            r20 = [r19 prepareFontDefinitionAndAdjustForResolution:0x1];
                            r0 = [CCTexture2D alloc];
                            r0 = [r0 initWithString:r19->_string fontDef:r20];
                    }
                    else {
                            r21 = (int64_t *)&r19->_dimensions;
                            if (*r21 != 0x0 && *(r21 + 0x8) != 0x0) {
                                    r0 = [CCTexture2D alloc];
                                    r2 = *(r19 + r20);
                                    r3 = r19->_fontName;
                                    asm { fcvt       d2, s1 };
                                    r0 = [r0 initWithString:r2 fontName:r3 fontSize:*(int32_t *)(int64_t *)&r19->_hAlignment dimensions:*(int32_t *)(int64_t *)&r19->_vAlignment hAlignment:*(int32_t *)(int64_t *)&r19->_lineBreakMode vAlignment:r7 lineBreakMode:var_40];
                            }
                            else {
                                    r0 = [CCTexture2D alloc];
                                    r2 = *(r19 + r20);
                                    r3 = r19->_fontName;
                                    asm { fcvt       d1, s1 };
                                    r0 = [r0 initWithString:r2 fontName:r3 fontSize:r4];
                            }
                    }
            }
            else {
                    r20 = [r19 prepareFontDefinitionAndAdjustForResolution:0x1];
                    r0 = [CCTexture2D alloc];
                    r0 = [r0 initWithString:r19->_string fontDef:r20];
            }
            r20 = r0;
            if (r0 != 0x0) {
                    r21 = [r20 pixelFormat];
                    r0 = [CCShaderCache sharedShaderCache];
                    if (r21 == 0x5) {
                            if (!CPU_FLAGS & E) {
                                    r2 = @"ShaderPositionTextureColor";
                            }
                            else {
                                    r2 = @"ShaderPositionTextureA8Color";
                            }
                    }
                    [r19 setShaderProgram:[r0 programForKey:r2]];
                    if (([[UIDevice currentDevice] respondsToSelector:r2] & 0x1) != 0x0) {
                            if ([[UIDevice currentDevice] userInterfaceIdiom] == 0x1) {
                                    r0 = r20;
                            }
                            else {
                                    r0 = r20;
                            }
                    }
                    else {
                            r0 = r20;
                    }
                    [r0 setResolutionType:r2];
                    [r19 setTexture:r20];
                    [r20 release];
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_texture));
                    [*(r19 + r21) contentSize];
                    [r19 setTextureRect:r20];
                    [*(r19 + r21) contentSize];
                    [r19 setContentSize:r2];
                    r0 = 0x1;
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
                    [r0 updateTexture];
            }
    }
    else {
            if (r8 != 0x0) {
                    *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
                    if (r3 != 0x0) {
                            [r0 updateTexture];
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
                    [r0 updateTexture];
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
                    [r0 updateTexture];
            }
    }
    return;
}

-(void *)getFontDefinition {
    r0 = [self prepareFontDefinitionAndAdjustForResolution:0x0];
    return r0;
}

-(void *)prepareFontDefinitionAndAdjustForResolution:(unsigned char)arg2 {
    r2 = arg2;
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r2;
    r21 = self;
    d0 = self->_fontSize;
    asm { fcvt       d1, s1 };
    d1 = d0 * d1;
    if (r2 != 0x0) {
            asm { fcsel      d0, d1, d0, ne };
    }
    asm { fcvtzs     w19, d0 };
    r0 = [CCFontDefinition alloc];
    r0 = [r0 initWithFontName:r21->_fontName fontSize:r19];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 autorelease];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_lineBreakMode));
            [r19 setLineBreakMode:*(int32_t *)(r21 + r24)];
            [r19 setAlignment:*(int32_t *)(int64_t *)&r21->_hAlignment];
            [r19 setVertAlignment:*(int32_t *)(int64_t *)&r21->_vAlignment];
            [r19 setLineBreakMode:*(int32_t *)(r21 + r24)];
            r2 = *(int32_t *)(int64_t *)&r21->_textFillColor;
            [r19 setFontFillColor:r2];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_dimensions));
            r8 = r21 + r8;
            asm { fcvt       d1, s0 };
            d1 = *(int128_t *)(r8 + 0x8) * d1;
            [r19 setDimensions:r2];
            r0 = r19;
            if (*(int8_t *)(int64_t *)&r21->_strokeEnabled != 0x0) {
                    [r0 enableStroke:r2];
                    [r19 setStrokeColor:*(int32_t *)(int64_t *)&r21->_strokeColor];
                    s0 = *(int32_t *)(int64_t *)&r21->_strokeSize;
                    asm { fcvt       d0, s0 };
                    [r19 setStrokeSize:r2];
            }
            else {
                    [r0 enableStroke:r2];
            }
            r0 = r19;
            if (*(int8_t *)(int64_t *)&r21->_shadowEnabled != 0x0) {
                    [r0 enableShadow:r2];
                    [r19 setShadowBlur:0x1];
                    r2 = *(int32_t *)(int64_t *)&r21->_shadowColor;
                    [r19 setShadowColor:r2];
                    [r19 setShadowOpacity:r2];
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_shadowOffset));
                    r8 = r21 + r8;
                    d0 = *r8;
                    if (r20 != 0x0) {
                            asm { fcvt       d1, s1 };
                    }
                    [r19 setShadowOffset:r2];
            }
            else {
                    [r0 enableShadow:r2];
            }
    }
    r0 = r19;
    return r0;
}

-(void)didLoadFromCCB {
    *(int8_t *)(int64_t *)&self->_isTextureDirty = 0x1;
    return;
}

-(struct CGSize)contentSize {
    r0 = [self updateTexture];
    return r0;
}

-(void)setFontDefinition:(void *)arg2 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_fontName));
    r0 = *(self + r21);
    if (r0 != 0x0) {
            [r0 release];
    }
    [r20 dimensions];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_dimensions));
    *(int128_t *)(r19 + r8) = d0;
    *(int128_t *)(0x8 + r19 + r8) = d1;
    *(int32_t *)(int64_t *)&r19->_hAlignment = [r20 alignment];
    *(int32_t *)(int64_t *)&r19->_vAlignment = [r20 vertAlignment];
    *(r19 + r21) = [[r20 fontName] copy];
    [r20 fontSize];
    asm { scvtf      d0, w0 };
    r19->_fontSize = d0;
    *(int32_t *)(int64_t *)&r19->_lineBreakMode = [r20 lineBreakMode];
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

-(struct _ccV3F_C4B_T2F_Quad)quad {
    r20 = r8;
    r0 = [self updateTexture];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_quad));
    q0 = *(int128_t *)(self + r8);
    q1 = *(int128_t *)(0x10 + self + r8);
    *(int128_t *)r20 = q0;
    *(int128_t *)(r20 + 0x10) = q1;
    q0 = *(int128_t *)(0x20 + self + r8);
    q1 = *(int128_t *)(0x30 + self + r8);
    q2 = *(int128_t *)(0x40 + self + r8);
    q3 = *(int128_t *)(0x50 + self + r8);
    *(int128_t *)(r20 + 0x40) = q2;
    *(int128_t *)(r20 + 0x50) = q3;
    *(int128_t *)(r20 + 0x20) = q0;
    *(int128_t *)(r20 + 0x30) = q1;
    return r0;
}

-(struct CGRect)textureRect {
    r0 = [self updateTexture];
    return r0;
}

-(bool)textureRectRotated {
    [self updateTexture];
    r0 = *(int8_t *)(int64_t *)&self->_rectRotated;
    return r0;
}

-(void *)textureAtlas {
    [self updateTexture];
    r0 = self->_textureAtlas;
    return r0;
}

-(void)setStrokeColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_strokeColor));
    r8 = r0 + r8;
    r9 = r2 >> 0x8;
    r10 = r2 >> 0x10;
    if (*(int8_t *)r8 == zero_extend_64(r2) && *(int8_t *)(r8 + 0x1) == zero_extend_64(r9)) {
            if (*(int8_t *)(r8 + 0x2) != zero_extend_64(r10)) {
                    *(int8_t *)r8 = r2;
                    *(int8_t *)(r8 + 0x1) = r9;
                    *(int8_t *)(r8 + 0x2) = r10;
                    *(int8_t *)(r8 + 0x3) = r2 >> 0x18;
                    *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
            }
    }
    else {
            *(int8_t *)r8 = r2;
            *(int8_t *)(r8 + 0x1) = r9;
            *(int8_t *)(r8 + 0x2) = r10;
            *(int8_t *)(r8 + 0x3) = r2 >> 0x18;
            *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
    }
    return;
}

-(void)setStrokeEnabled:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_strokeEnabled));
    if (*(int8_t *)(r0 + r8) != r2) {
            *(int8_t *)(r0 + r8) = r2;
            *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
    }
    return;
}

-(void)setTextFillColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_textFillColor));
    r8 = r0 + r8;
    r9 = r2 >> 0x8;
    r10 = r2 >> 0x10;
    if (*(int8_t *)r8 == zero_extend_64(r2) && *(int8_t *)(r8 + 0x1) == zero_extend_64(r9)) {
            if (*(int8_t *)(r8 + 0x2) != zero_extend_64(r10)) {
                    *(int8_t *)r8 = r2;
                    *(int8_t *)(r8 + 0x1) = r9;
                    *(int8_t *)(r8 + 0x2) = r10;
                    *(int8_t *)(r8 + 0x3) = r2 >> 0x18;
                    *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
            }
    }
    else {
            *(int8_t *)r8 = r2;
            *(int8_t *)(r8 + 0x1) = r9;
            *(int8_t *)(r8 + 0x2) = r10;
            *(int8_t *)(r8 + 0x3) = r2 >> 0x18;
            *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
    }
    return;
}

-(void)setStrokeSize:(float)arg2 {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_strokeSize));
    if (*(int32_t *)(r0 + r8) != s0) {
            *(int32_t *)(r0 + r8) = s0;
            *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
    }
    return;
}

-(void)setLineBreakMode:(int)arg2 {
    r2 = arg2;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_lineBreakMode));
    if (*(int32_t *)(r0 + r8) != r2) {
            *(int32_t *)(r0 + r8) = r2;
            *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
    }
    return;
}

-(void)setShadowEnabled:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_shadowEnabled));
    if (*(int8_t *)(r0 + r8) != r2) {
            *(int8_t *)(r0 + r8) = r2;
            *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
    }
    return;
}

-(void)setShadowOpacity:(float)arg2 {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_shadowOpacity));
    if (*(int32_t *)(r0 + r8) != s0) {
            *(int32_t *)(r0 + r8) = s0;
            *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
    }
    return;
}

-(void)setShadowBlur:(float)arg2 {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_shadowBlur));
    if (*(int32_t *)(r0 + r8) != s0) {
            *(int32_t *)(r0 + r8) = s0;
            *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
    }
    return;
}

-(void)setShadowOffset:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_shadowOffset));
    r8 = r0 + r8;
    if (*r8 != d0 || *(r8 + 0x8) != d1) {
            *r8 = d0;
            *(r8 + 0x8) = d1;
            *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
    }
    return;
}

-(void)setShadowColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_shadowColor));
    r8 = r0 + r8;
    r9 = r2 >> 0x8;
    r10 = r2 >> 0x10;
    if (*(int8_t *)r8 == zero_extend_64(r2) && *(int8_t *)(r8 + 0x1) == zero_extend_64(r9)) {
            if (*(int8_t *)(r8 + 0x2) != zero_extend_64(r10)) {
                    *(int8_t *)r8 = r2;
                    *(int8_t *)(r8 + 0x1) = r9;
                    *(int8_t *)(r8 + 0x2) = r10;
                    *(int8_t *)(r8 + 0x3) = r2 >> 0x18;
                    *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
            }
    }
    else {
            *(int8_t *)r8 = r2;
            *(int8_t *)(r8 + 0x1) = r9;
            *(int8_t *)(r8 + 0x2) = r10;
            *(int8_t *)(r8 + 0x3) = r2 >> 0x18;
            *(int8_t *)(int64_t *)&r0->_isTextureDirty = 0x1;
    }
    return;
}

-(bool)strokeEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_strokeEnabled;
    return r0;
}

-(struct _ccColorThreeB)strokeColor {
    r0 = *(int32_t *)(int64_t *)&self->_strokeColor;
    return r0;
}

-(struct _ccColorThreeB)textFillColor {
    r0 = *(int32_t *)(int64_t *)&self->_textFillColor;
    return r0;
}

-(float)strokeSize {
    r0 = self;
    return r0;
}

-(int)lineBreakMode {
    r0 = *(int32_t *)(int64_t *)&self->_lineBreakMode;
    return r0;
}

-(bool)shadowEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_shadowEnabled;
    return r0;
}

-(float)shadowOpacity {
    r0 = self;
    return r0;
}

-(float)shadowBlur {
    r0 = self;
    return r0;
}

-(struct CGSize)shadowOffset {
    r0 = self;
    return r0;
}

-(struct _ccColorThreeB)shadowColor {
    r0 = *(int32_t *)(int64_t *)&self->_shadowColor;
    return r0;
}

+(void *)labelWithString:(void *)arg2 dimensions:(struct CGSize)arg3 alignment:(int)arg4 fontName:(void *)arg5 fontSize:(double)arg6 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self labelWithString:arg2 fontName:r4 fontSize:r3 dimensions:r5 hAlignment:r6];
    return r0;
}

+(void *)labelWithString:(void *)arg2 dimensions:(struct CGSize)arg3 alignment:(int)arg4 lineBreakMode:(int)arg5 fontName:(void *)arg6 fontSize:(double)arg7 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self labelWithString:arg2 fontName:r5 fontSize:r3 dimensions:r4 hAlignment:r6 lineBreakMode:r7];
    return r0;
}

+(void *)labelWithString:(void *)arg2 dimensions:(struct CGSize)arg3 hAlignment:(int)arg4 fontName:(void *)arg5 fontSize:(double)arg6 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self labelWithString:arg2 fontName:r4 fontSize:r3 dimensions:r5 hAlignment:r6];
    return r0;
}

+(void *)labelWithString:(void *)arg2 dimensions:(struct CGSize)arg3 hAlignment:(int)arg4 lineBreakMode:(int)arg5 fontName:(void *)arg6 fontSize:(double)arg7 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self labelWithString:arg2 fontName:r5 fontSize:r3 dimensions:r4 hAlignment:r6 lineBreakMode:r7];
    return r0;
}

+(void *)labelWithString:(void *)arg2 dimensions:(struct CGSize)arg3 hAlignment:(int)arg4 vAlignment:(int)arg5 lineBreakMode:(int)arg6 fontName:(void *)arg7 fontSize:(double)arg8 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self labelWithString:arg2 fontName:r6 fontSize:r3 dimensions:r4 hAlignment:r5 vAlignment:r7 lineBreakMode:arg8];
    return r0;
}

+(void *)labelWithString:(void *)arg2 dimensions:(struct CGSize)arg3 hAlignment:(int)arg4 vAlignment:(int)arg5 fontName:(void *)arg6 fontSize:(double)arg7 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self labelWithString:arg2 fontName:r5 fontSize:r3 dimensions:r4 hAlignment:r6 vAlignment:r7];
    return r0;
}

-(void *)initWithString:(void *)arg2 dimensions:(struct CGSize)arg3 alignment:(int)arg4 fontName:(void *)arg5 fontSize:(double)arg6 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self initWithString:r2 fontName:r3 fontSize:r4 dimensions:r5 hAlignment:r6];
    return r0;
}

-(void *)initWithString:(void *)arg2 dimensions:(struct CGSize)arg3 alignment:(int)arg4 lineBreakMode:(int)arg5 fontName:(void *)arg6 fontSize:(double)arg7 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self initWithString:arg2 fontName:r5 fontSize:r3 dimensions:r4 hAlignment:r6 lineBreakMode:r7];
    return r0;
}

@end