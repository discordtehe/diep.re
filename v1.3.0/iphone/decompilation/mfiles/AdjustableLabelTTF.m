@implementation AdjustableLabelTTF

+(void *)labelWithString:(void *)arg2 dimensions:(struct CGSize)arg3 alignment:(int)arg4 fontName:(void *)arg5 fontSize:(double)arg6 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self alloc];
    r0 = [r0 initAdjustableWithString:arg2 dimensions:r3 alignment:r4 fontName:r5 fontSize:r6];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initAdjustableWithString:(void *)arg2 dimensions:(struct CGSize)arg3 alignment:(int)arg4 fontName:(void *)arg5 fontSize:(double)arg6 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x60;
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
    r20 = r4;
    r19 = r3;
    r21 = arg2;
    r22 = self;
    r23 = (int64_t *)&self->configDimensions_;
    *r23 = d0;
    *(r23 + 0x8) = d1;
    *(int32_t *)(int64_t *)&self->adjustableLabelType_ = 0x1;
    *(int32_t *)(int64_t *)&self->minimumScale_ = 0x0;
    r0 = @class(NSNumber);
    asm { fcvt       s0, d2 };
    [r0 numberWithFloat:r2];
    r0 = [r22 fitDimensionForString:r21 dimensions:&var_48 fontSize:r20 fontName:r5];
    v8 = v0;
    v9 = v1;
    if (d8 == *(int128_t *)*_CGSizeZero) {
            asm { fccmp      d9, d1, #0x0, eq };
    }
    [var_48 floatValue];
    asm { fcvt       d0, s0 };
    r0 = [r22 initWithString:r2 fontName:r3 fontSize:r4 dimensions:r5 hAlignment:r6];
    return r0;
}

+(void *)labelWithString:(void *)arg2 dimensions:(struct CGSize)arg3 alignment:(int)arg4 vertAlignment:(int)arg5 lineBreakMode:(int)arg6 fontName:(void *)arg7 fontSize:(double)arg8 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self alloc];
    r0 = [r0 initAdjustableWithString:arg2 dimensions:r3 alignment:r4 vertAlignment:r5 lineBreakMode:r6 fontName:r7 fontSize:var_50];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initAdjustableWithString:(void *)arg2 dimensions:(struct CGSize)arg3 alignment:(int)arg4 vertAlignment:(int)arg5 lineBreakMode:(int)arg6 fontName:(void *)arg7 fontSize:(double)arg8 {
    memcpy(&r3, &arg3, 0x8);
    *(int32_t *)(int64_t *)&self->adjustableLabelType_ = 0x2;
    *(int32_t *)(int64_t *)&self->minimumScale_ = 0x0;
    r0 = [self initWithString:arg2 fontName:r6 fontSize:r3 dimensions:r4 hAlignment:r5 vAlignment:r7 lineBreakMode:arg8];
    return r0;
}

-(void *)initAdjustableWithString:(void *)arg2 dimensions:(struct CGSize)arg3 alignment:(int)arg4 vertAlignment:(int)arg5 lineBreakMode:(int)arg6 fontName:(void *)arg7 fontSize:(double)arg8 adjustableLabelType:(int)arg9 minimumScale:(float)arg10 {
    memcpy(&r3, &arg3, 0x8);
    *(int32_t *)(int64_t *)&self->adjustableLabelType_ = r7;
    *(int32_t *)(int64_t *)&self->minimumScale_ = s3;
    r0 = [self initWithString:arg2 fontName:r6 fontSize:r3 dimensions:r4 hAlignment:r5 vAlignment:r7 lineBreakMode:arg8];
    return r0;
}

+(void *)labelWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 width:(double)arg5 minimumScale:(double)arg6 {
    r0 = [self alloc];
    r0 = [r0 initWithString:arg2 fontName:arg3 fontSize:arg4 width:arg5 minimumScale:arg6];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 width:(double)arg5 minimumScale:(double)arg6 {
    r6 = arg6;
    r5 = arg5;
    r4 = arg4;
    r0 = self;
    r19 = arg3;
    r20 = arg2;
    *(int32_t *)(int64_t *)&r0->adjustableLabelType_ = 0x0;
    asm { fcvt       s0, d2 };
    *(int32_t *)(int64_t *)&r0->minimumScale_ = s0;
    r0 = [r0 initWithString:r2 fontName:r3 fontSize:r4];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_dimensions));
    *(r0 + r8) = d9;
    *(0x8 + r0 + r8) = 0xbff0000000000000;
    [r0 fitScaleforString:r20 fontName:r19 fontSize:r4 dimension:r5 minimumScale:r6];
    [r0 setScale:r2];
    r0 = r21;
    return r0;
}

+(void *)labelWithString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 dimensions:(struct CGSize)arg5 hAlignment:(int)arg6 {
    memcpy(&r5, &arg5, 0x8);
    r0 = [[&var_10 super] labelWithString:arg2 fontName:arg3 fontSize:arg4 dimensions:r5 hAlignment:r6];
    return r0;
}

-(void)setString:(void *)arg2 {
    [self setString:arg2 andAdjust:0x1];
    return;
}

-(float)fitScaleforString:(void *)arg2 fontName:(void *)arg3 fontSize:(double)arg4 dimension:(struct CGSize)arg5 minimumScale:(double)arg6 {
    memcpy(&r5, &arg5, 0x8);
    var_30 = d11;
    stack[-56] = d10;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r1 = arg3;
    r0 = arg2;
    asm { fcvt       s0, d0 };
    asm { fcvt       d0, s0 };
    r19 = *_CGSizeZero;
    d1 = *(int128_t *)r19;
    r0 = sub_100340ea8(r0, r1, 0x0);
    if (d0 == *(int128_t *)r19) {
            asm { fccmp      d1, d3, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            if (d10 > 0x0) {
                    asm { fccmp      d0, d10, #0x4, gt };
            }
            if (!CPU_FLAGS & LE) {
                    asm { fdiv       d0, d10, d0 };
                    asm { fcvt       s3, d0 };
            }
            if (d9 > 0x0 && d1 > d9) {
                    asm { fdiv       d0, d9, d1 };
                    asm { fcvt       s2, d0 };
            }
            if (s3 < 0x3ff0000000000000) {
                    asm { fcsel      s0, s3, s2, ls };
            }
            asm { fcvt       d1, s0 };
            asm { fcvt       s2, d8 };
            if (d1 < d8) {
                    asm { fcsel      s0, s2, s0, mi };
            }
    }
    return r0;
}

-(void)setString:(void *)arg2 andAdjust:(bool)arg3 {
    r3 = arg3;
    r31 = r31 - 0x80;
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
    r8 = sign_extend_64(*(int32_t *)ivar_offset(adjustableLabelType_));
    r8 = *(int32_t *)(self + r8);
    if (r8 == 0x1) goto loc_10035a80c;

loc_10035a744:
    if (r8 != 0x0) goto loc_10035a8dc;

loc_10035a748:
    r22 = (int64_t *)&r19->_dimensions;
    var_40 = *(int128_t *)r22;
    *(int128_t *)r22 = *(int128_t *)*_CGSizeZero;
    [[&var_50 super] setString:r20];
    [r19 updateTexture];
    *(int128_t *)r22 = var_40;
    if (r3 != 0x0) {
            r3 = r19->_fontName;
            asm { fcvt       d3, s3 };
            [r19 fitScaleforString:r20 fontName:r3 fontSize:r4 dimension:r5 minimumScale:r6];
            [r19 setScale:r2];
    }
    return;

loc_10035a8dc:
    r0 = &var_70;
    goto loc_10035a8f4;

loc_10035a8f4:
    [[r0 super] setString:r2];
    [r19 updateTexture];
    return;

loc_10035a80c:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(originalFontSize_));
    d0 = *(r19 + r8);
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_fontSize));
    d1 = *(r19 + r21);
    if (d0 <= d1) {
            *(r19 + r8) = d1;
            v0 = v1;
    }
    r0 = @class(NSNumber);
    asm { fcvt       s0, d0 };
    [r0 numberWithFloat:r2];
    d0 = *(int128_t *)(r19 + sign_extend_64(*(int32_t *)ivar_offset(configDimensions_)));
    [r19 fitDimensionForString:r20 dimensions:&var_40 fontSize:r19->_fontName fontName:r5];
    [var_40 floatValue];
    asm { fcvt       d0, s0 };
    *(r19 + r21) = d0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_dimensions));
    *(int128_t *)(r19 + r8) = d8;
    *(int128_t *)(0x8 + r19 + r8) = d9;
    r0 = &var_60;
    goto loc_10035a8f4;
}

-(void)setMinimumScale:(float)arg2 {
    *(int32_t *)(int64_t *)&self->minimumScale_ = s0;
    return;
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
                    r20 = (int64_t *)&r19->_dimensions;
                    if (*r20 != 0x0 && *(r20 + 0x8) != 0x0) {
                            r0 = [CCTexture2D alloc];
                            r2 = r19->_string;
                            r3 = r19->_fontName;
                            asm { fcvt       d2, s1 };
                            r0 = [r0 initWithString:r2 fontName:r3 fontSize:*(int32_t *)(int64_t *)&r19->_hAlignment dimensions:*(int32_t *)(int64_t *)&r19->_vAlignment hAlignment:*(int32_t *)(int64_t *)&r19->_lineBreakMode vAlignment:r7 lineBreakMode:var_40];
                    }
                    else {
                            r0 = [CCTexture2D alloc];
                            r2 = r19->_string;
                            r3 = r19->_fontName;
                            asm { fcvt       d1, s1 };
                            r0 = [r0 initWithString:r2 fontName:r3 fontSize:r4];
                    }
            }
            else {
                    r20 = [r19 prepareFontDefinitionAndAdjustForResolution:0x1];
                    r0 = [CCTexture2D alloc];
                    r0 = [r0 initWithString:r19->_string fontDef:r20];
            }
            r20 = r0;
            if (r0 != 0x0) {
                    if (([[UIDevice currentDevice] respondsToSelector:r2] & 0x1) != 0x0 && [[UIDevice currentDevice] userInterfaceIdiom] == 0x1) {
                            r0 = r20;
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

-(void)setConfigDimensions:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(configDimensions_));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(void)setAdjustableLabelType:(int)arg2 {
    *(int32_t *)(int64_t *)&self->adjustableLabelType_ = arg2;
    [self setString:self->_string andAdjust:0x1];
    return;
}

-(struct CGSize)fitDimensionForString:(void *)arg2 dimensions:(struct CGSize)arg3 fontSize:(void * *)arg4 fontName:(void *)arg5 {
    memcpy(&r3, &arg3, 0x8);
    var_70 = d15;
    stack[-120] = d14;
    r31 = r31 + 0xffffffffffffff80;
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
    r20 = r4;
    r19 = r3;
    r21 = arg2;
    [*r3 floatValue];
    v8 = v0;
    [[CCDirector sharedDirector] winSize];
    v11 = v1;
    if (d10 > 0x0) {
            if (CPU_FLAGS & G) {
                    r22 = 0x1;
            }
    }
    if (CPU_FLAGS & G) {
            asm { fcsel      d12, d10, d0, gt };
    }
    asm { fcvt       d0, s8 };
    sub_100340ea8(r21, r20, 0x0);
    r8 = *_CGSizeZero;
    d2 = *(int128_t *)r8;
    d3 = *(int128_t *)(r8 + 0x8);
    if (d0 == d2) {
            r8 = *_CGSizeZero;
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    if (d1 == d3) {
            if (CPU_FLAGS & E) {
                    r9 = 0x1;
            }
    }
    if ((r8 & r9) != 0x0) {
            asm { fcsel      d13, d10, d0, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { fcsel      d14, d9, d1, ne };
    }
    if (d9 > 0x0) {
            if (CPU_FLAGS & G) {
                    r8 = 0x1;
            }
    }
    if (d13 > d10) {
            if (CPU_FLAGS & G) {
                    r9 = 0x1;
            }
    }
    r10 = r22 & r9;
    if (d14 > d9) {
            if (CPU_FLAGS & G) {
                    r9 = 0x1;
            }
    }
    if ((r10 & 0x1) == 0x0) {
            r8 = r8 & r9;
            if (r8 != 0x0) {
                    do {
                            if (d9 > 0x0) {
                                    if (CPU_FLAGS & G) {
                                            r22 = 0x1;
                                    }
                            }
                            if (d10 > 0x0) {
                                    if (CPU_FLAGS & G) {
                                            r23 = 0x1;
                                    }
                            }
                            s8 = s8 + 0xbff0000000000000;
                            asm { fcvt       d0, s8 };
                            v1 = v12;
                            sub_100340ea8(r21, r20, 0x0);
                            if (d0 > d10) {
                                    if (CPU_FLAGS & G) {
                                            r8 = 0x1;
                                    }
                            }
                            r9 = r23 & r8;
                            if (d1 > d9) {
                                    if (CPU_FLAGS & G) {
                                            r8 = 0x1;
                                    }
                            }
                            r8 = r22 & r8;
                    } while ((r9 & 0x1) != 0x0 || (r8 & 0x1) != 0x0);
                    v13 = v0;
                    v14 = v1;
            }
    }
    else {
            do {
                    if (d9 > 0x0) {
                            if (CPU_FLAGS & G) {
                                    r22 = 0x1;
                            }
                    }
                    if (d10 > 0x0) {
                            if (CPU_FLAGS & G) {
                                    r23 = 0x1;
                            }
                    }
                    s8 = s8 + 0xbff0000000000000;
                    asm { fcvt       d0, s8 };
                    v1 = v12;
                    sub_100340ea8(r21, r20, 0x0);
                    if (d0 > d10) {
                            if (CPU_FLAGS & G) {
                                    r8 = 0x1;
                            }
                    }
                    r9 = r23 & r8;
                    if (d1 > d9) {
                            if (CPU_FLAGS & G) {
                                    r8 = 0x1;
                            }
                    }
                    r8 = r22 & r8;
            } while ((r9 & 0x1) != 0x0 || (r8 & 0x1) != 0x0);
            v13 = v0;
            v14 = v1;
    }
    r0 = [NSNumber numberWithFloat:r2];
    *r19 = r0;
    return r0;
}

-(float)minimumFontScale {
    r0 = self;
    return r0;
}

-(int)adjustableLabelType {
    r0 = *(int32_t *)(int64_t *)&self->adjustableLabelType_;
    return r0;
}

-(struct CGSize)configDimensions {
    r0 = self;
    return r0;
}

-(void)setMinimumFontScale:(float)arg2 {
    *(int32_t *)(int64_t *)&self->minimumScale_ = s0;
    return;
}

@end