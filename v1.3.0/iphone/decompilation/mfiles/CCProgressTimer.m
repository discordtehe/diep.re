@implementation CCProgressTimer

+(void *)progressWithSprite:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithSprite:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r0 = [self initWithSprite:0x0];
    return r0;
}

-(void *)initWithSprite:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r19->_percentage = 0x0;
            r19->_vertexData = 0x0;
            *(int32_t *)(int64_t *)&r19->_vertexDataCount = 0x0;
            [r19 setAnchorPoint:r2];
            [r19 setType:0x0];
            [r19 setReverseDirection:0x0];
            [r19 setMidpoint:0x0];
            [r19 setBarChangeRate:0x0];
            [r19 setSprite:r20];
            if ([[CCConfiguration sharedConfiguration] useNewRenderer] != 0x0) {
                    *(int8_t *)(int64_t *)&r19->_mcRenderJobIsDirty = 0x1;
                    sub_100292530();
                    sub_1002ecb9c(&var_48, [@"ShaderPositionTextureColor" UTF8String]);
                    r0 = sub_10037ec20(r20, &var_48);
                    r20 = (int64_t *)&r19->_mcRenderJob;
                    *(r20 + 0x140) = r0;
                    if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_48);
                    }
                    q0 = *(int128_t *)0x1011e2ea0;
                    q1 = *(int128_t *)0x1011e2eb0;
                    q2 = *(int128_t *)0x1011e2ec0;
                    q3 = *(int128_t *)0x1011e2ed0;
                    *(int128_t *)(r20 + 0x20) = q2;
                    *(int128_t *)(r20 + 0x30) = q3;
                    *(int128_t *)r20 = q0;
                    *(int128_t *)(r20 + 0x10) = q1;
            }
            else {
                    [r19 setShaderProgram:[[CCShaderCache sharedShaderCache] programForKey:@"ShaderPositionTextureColor"]];
            }
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
    r0 = self->_vertexData;
    if (r0 != 0x0) {
            free(r0);
    }
    [r19->_sprite release];
    [[&var_20 super] dealloc];
    return;
}

-(void)setPercentage:(float)arg2 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_percentage));
    if (*(int32_t *)(r0 + r20) != s0) {
            sub_10031169c();
            *(int32_t *)(r19 + r20) = s0;
            [r19 updateProgress];
    }
    return;
}

-(void)setSprite:(void *)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_sprite));
    r0 = *(self + r21);
    if (r0 != r2) {
            [r0 release];
            r0 = [r2 retain];
            *(r19 + r21) = r0;
            [r0 contentSize];
            [r19 setContentSize:r2];
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_vertexData));
            r0 = *(r19 + r20);
            if (r0 != 0x0) {
                    free(r0);
                    *(r19 + r20) = 0x0;
                    *(int32_t *)(int64_t *)&r19->_vertexDataCount = 0x0;
            }
    }
    return;
}

-(void)setReverseDirection:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_reverseDirection));
    if (*(int8_t *)(r0 + r8) != r2) {
            r19 = r0;
            *(int8_t *)(r0 + r8) = r2;
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_vertexData));
            r0 = *(r0 + r20);
            if (r0 != 0x0) {
                    free(r0);
                    *(r19 + r20) = 0x0;
                    *(int32_t *)(int64_t *)&r19->_vertexDataCount = 0x0;
            }
    }
    return;
}

-(void)setType:(int)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_type));
    if (*(int32_t *)(r0 + r21) != r2) {
            r20 = r2;
            r19 = r0;
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_vertexData));
            r0 = *(r0 + r22);
            if (r0 != 0x0) {
                    free(r0);
                    *(r19 + r22) = 0x0;
                    *(int32_t *)(int64_t *)&r19->_vertexDataCount = 0x0;
            }
            *(int32_t *)(r19 + r21) = r20;
            [r19 updateProgress];
    }
    return;
}

-(void)setColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    [self->_sprite setColor:r2 & 0xffffffff];
    [self updateColor];
    return;
}

-(struct _ccColorThreeB)color {
    r0 = self->_sprite;
    r0 = [r0 color];
    r0 = r0 & 0xffffffff;
    return r0;
}

-(void)setOpacity:(unsigned char)arg2 {
    [self->_sprite setOpacity:arg2];
    [self updateColor];
    return;
}

-(unsigned char)opacity {
    r0 = self->_sprite;
    r0 = [r0 opacity];
    return r0;
}

-(struct _ccTex2F)textureCoordFromAlphaPoint:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xb0;
    var_40 = d13;
    stack[-72] = d12;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_sprite));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            [r0 quad];
            r0 = *(r19 + r20);
            asm { fcvt       d10, s0 };
            asm { fcvt       d11, s1 };
            asm { fcvt       d12, s2 };
            asm { fcvt       d13, s3 };
            r0 = [r0 textureRectRotated];
            if (r0 != 0x0) {
                    asm { fcsel      d0, d8, d9, ne };
            }
            if (CPU_FLAGS & NE) {
                    asm { fcsel      d1, d9, d8, ne };
            }
            asm { fcvt       s0, d0 };
            asm { fcvt       s1, d1 };
    }
    return r0;
}

-(struct _ccVertex2F)vertexFromAlphaPoint:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x80;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = self->_sprite;
    if (r0 != 0x0) {
            r0 = [r0 quad];
            asm { fcvt       d0, s0 };
            asm { fcvt       d1, s1 };
            asm { fcvt       d2, s2 };
            asm { fcvt       d3, s3 };
            asm { fcvt       s0, d0 };
            asm { fcvt       s1, d1 };
    }
    return r0;
}

-(void)updateProgress {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_type));
    r8 = *(int32_t *)(r0 + r8);
    if (r8 == 0x0) goto loc_1002ed158;

loc_1002ed144:
    if (r8 != 0x1) goto .l1;

loc_1002ed14c:
    r8 = &@selector(updateBar);
    goto loc_1002ed160;

loc_1002ed160:
    objc_msgSend(r0, *r8);
    return;

.l1:
    return;

loc_1002ed158:
    r8 = &@selector(updateRadial);
    goto loc_1002ed160;
}

-(void)updateColor {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = self->_sprite;
    if (r0 != 0x0) {
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_vertexData));
            if (*(r19 + r20) != 0x0) {
                    [r0 quad];
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_vertexDataCount));
                    if (*(int32_t *)(r19 + r8) >= 0x1) {
                            r9 = 0x0;
                            r10 = var_64;
                            r11 = 0x8;
                            do {
                                    *(int32_t *)(*(r19 + r20) + r11) = r10;
                                    r9 = r9 + 0x1;
                                    r11 = r11 + 0x14;
                            } while (r9 < sign_extend_64(*(int32_t *)(r19 + r8)));
                    }
            }
    }
    return;
}

-(void)setAnchorPoint:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[&var_10 super] setAnchorPoint:r2];
    return;
}

-(struct CGPoint)midpoint {
    r0 = self;
    return r0;
}

-(void)setMidpoint:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    sub_1003116bc();
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_midpoint));
    *(self + r8) = d0;
    *(0x8 + self + r8) = d1;
    return;
}

-(struct CGPoint)boundaryTexCoord:(char)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 <= 0x3) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_reverseDirection));
            r8 = *(int8_t *)(r0 + r8);
            asm { scvtf      d0, w12 };
            asm { scvtf      d1, w12 };
            asm { scvtf      d2, w9 };
            asm { scvtf      d3, w9 };
            if (r8 == 0x0) {
                    asm { fcsel      d0, d0, d2, eq };
            }
            if (CPU_FLAGS & E) {
                    asm { fcsel      d1, d1, d3, eq };
            }
    }
    return r0;
}

-(float)percentage {
    r0 = self;
    return r0;
}

-(void *)sprite {
    r0 = self->_sprite;
    return r0;
}

-(int)type {
    r0 = *(int32_t *)(int64_t *)&self->_type;
    return r0;
}

-(void)updateBar {
    r0 = self;
    var_50 = d13;
    stack[-88] = d12;
    r31 = r31 + 0xffffffffffffffa0;
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
    if (r0->_sprite != 0x0) {
            r19 = r0;
            s0 = *(int32_t *)(int64_t *)&r0->_percentage;
            asm { fdiv       s0, s0, s1 };
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_barChangeRate));
            d1 = 0x3ff0000000000000;
            d2 = *(int128_t *)(r0 + r8);
            d3 = *(int128_t *)(0x8 + r0 + r8);
            d4 = d1 - d2;
            asm { fcvt       d0, s0 };
            d2 = (d4 + d2 * d0) * 0x3fe0000000000000;
            d0 = ((d1 - d3) + d3 * d0) * 0x3fe0000000000000;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_midpoint));
            d3 = *(int128_t *)(r0 + r8);
            d4 = *(int128_t *)(0x8 + r0 + r8);
            d5 = d3 - d2;
            d6 = d4 - d0;
            d2 = d3 + d2;
            d0 = d4 + d0;
            if (d5 < 0x0) {
                    asm { fcsel      d2, d3, d2, mi };
            }
            d1 = 0x3ff0000000000000;
            asm { fmax       d4, d5, d3 };
            asm { fmin       d8, d2, d1 };
            if (d2 > d1) {
                    asm { fcsel      d11, d7, d4, gt };
            }
            d2 = d0 - d6;
            if (d6 < 0x0) {
                    asm { fcsel      d0, d2, d0, mi };
            }
            d1 = 0x3ff0000000000000;
            asm { fmax       d2, d6, d3 };
            asm { fmin       d10, d0, d1 };
            if (d0 > d1) {
                    asm { fcsel      d9, d3, d2, gt };
            }
            r9 = *(int8_t *)(int64_t *)&r0->_reverseDirection;
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_vertexData));
            r8 = *(r0 + r22);
            if (r9 != 0x0) {
                    if (r8 == 0x0) {
                            *(int32_t *)(int64_t *)&r19->_vertexDataCount = 0x8;
                            *(r19 + r22) = malloc(0xa0);
                            [r19 textureCoordFromAlphaPoint:r2];
                            r8 = *(r19 + r22);
                            *(int32_t *)(r8 + 0xc) = s0;
                            *(int32_t *)(r8 + 0x10) = 0x42c80000;
                            [r19 vertexFromAlphaPoint:r2];
                            r8 = *(r19 + r22);
                            *(int32_t *)r8 = s0;
                            *(int32_t *)(r8 + 0x4) = 0x42c80000;
                            objc_msgSend(r19, r20);
                            r8 = *(r19 + r22);
                            *(int32_t *)(r8 + 0x20) = s0;
                            *(int32_t *)(r8 + 0x24) = 0x42c80000;
                            objc_msgSend(r19, r21);
                            r8 = *(r19 + r22);
                            *(int32_t *)(r8 + 0x14) = s0;
                            *(int32_t *)(r8 + 0x18) = 0x42c80000;
                            objc_msgSend(r19, r20);
                            r8 = *(r19 + r22);
                            *(int32_t *)(r8 + 0x84) = s0;
                            *(int32_t *)(r8 + 0x88) = 0x42c80000;
                            objc_msgSend(r19, r21);
                            r8 = *(r19 + r22);
                            *(int32_t *)(r8 + 0x78) = s0;
                            *(int32_t *)(r8 + 0x7c) = 0x42c80000;
                            objc_msgSend(r19, r20);
                            r8 = *(r19 + r22);
                            *(int32_t *)(r8 + 0x98) = s0;
                            *(int32_t *)(r8 + 0x9c) = 0x42c80000;
                            objc_msgSend(r19, r21);
                            r8 = *(r19 + r22);
                            *(int32_t *)(r8 + 0x8c) = s0;
                            *(int32_t *)(r8 + 0x90) = 0x42c80000;
                    }
                    [r19 textureCoordFromAlphaPoint:r2];
                    r8 = *(r19 + r22);
                    *(int32_t *)(r8 + 0x34) = s0;
                    *(int32_t *)(r8 + 0x38) = 0x42c80000;
                    [r19 vertexFromAlphaPoint:r2];
                    r8 = *(r19 + r22);
                    *(int32_t *)(r8 + 0x28) = s0;
                    *(int32_t *)(r8 + 0x2c) = 0x42c80000;
                    [r19 textureCoordFromAlphaPoint:r2];
                    r8 = *(r19 + r22);
                    *(int32_t *)(r8 + 0x48) = s0;
                    *(int32_t *)(r8 + 0x4c) = 0x42c80000;
                    [r19 vertexFromAlphaPoint:r2];
                    r8 = *(r19 + r22);
                    *(int32_t *)(r8 + 0x3c) = s0;
                    *(int32_t *)(r8 + 0x40) = 0x42c80000;
                    [r19 textureCoordFromAlphaPoint:r2];
                    r8 = *(r19 + r22);
                    *(int32_t *)(r8 + 0x5c) = s0;
                    *(int32_t *)(r8 + 0x60) = 0x42c80000;
                    [r19 vertexFromAlphaPoint:r2];
                    r8 = *(r19 + r22);
                    *(int32_t *)(r8 + 0x50) = s0;
                    *(int32_t *)(r8 + 0x54) = 0x42c80000;
                    [r19 textureCoordFromAlphaPoint:r2];
                    r8 = *(r19 + r22);
                    *(int32_t *)(r8 + 0x70) = s0;
                    *(int32_t *)(r8 + 0x74) = 0x42c80000;
                    [r19 vertexFromAlphaPoint:r2];
                    r8 = *(r19 + r22);
                    *(int32_t *)(r8 + 0x64) = s0;
                    r8 = r8 + 0x68;
            }
            else {
                    if (r8 == 0x0) {
                            *(int32_t *)(int64_t *)&r19->_vertexDataCount = 0x4;
                            *(r19 + r22) = malloc(0x50);
                    }
                    [r19 textureCoordFromAlphaPoint:r2];
                    r8 = *(r19 + r22);
                    *(int128_t *)(r8 + 0xc) = s0;
                    *(int128_t *)(r8 + 0x10) = 0x42c80000;
                    [r19 vertexFromAlphaPoint:r2];
                    r8 = *(r19 + r22);
                    *(int128_t *)r8 = s0;
                    *(int128_t *)(r8 + 0x4) = 0x42c80000;
                    [r19 textureCoordFromAlphaPoint:r2];
                    r8 = *(r19 + r22);
                    *(int128_t *)(r8 + 0x20) = s0;
                    *(int128_t *)(r8 + 0x24) = 0x42c80000;
                    [r19 vertexFromAlphaPoint:r2];
                    r8 = *(r19 + r22);
                    *(int128_t *)(r8 + 0x14) = s0;
                    *(int128_t *)(r8 + 0x18) = 0x42c80000;
                    [r19 textureCoordFromAlphaPoint:r2];
                    r8 = *(r19 + r22);
                    *(int128_t *)(r8 + 0x34) = s0;
                    *(int128_t *)(r8 + 0x38) = 0x42c80000;
                    [r19 vertexFromAlphaPoint:r2];
                    r8 = *(r19 + r22);
                    *(int128_t *)(r8 + 0x28) = s0;
                    *(int128_t *)(r8 + 0x2c) = 0x42c80000;
                    [r19 textureCoordFromAlphaPoint:r2];
                    r8 = *(r19 + r22);
                    *(int128_t *)(r8 + 0x48) = s0;
                    *(int128_t *)(r8 + 0x4c) = 0x42c80000;
                    [r19 vertexFromAlphaPoint:r2];
                    r8 = *(r19 + r22);
                    *(int32_t *)(r8 + 0x3c) = s0;
                    r8 = r8 + 0x40;
            }
            *(int32_t *)r8 = 0x42c80000;
            [r19 updateColor];
    }
    return;
}

-(bool)reverseDirection {
    r0 = *(int8_t *)(int64_t *)&self->_reverseDirection;
    return r0;
}

-(void)updateRadial {
    r0 = self;
    r31 = r31 - 0xb0;
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
    if (r0->_sprite == 0x0) goto .l20;

loc_1002ed23c:
    r19 = r0;
    asm { fdiv       s9, s0, s1 };
    s0 = 0x3ff0000000000000 - s9;
    if (*(int8_t *)(int64_t *)&r0->_reverseDirection == 0x0) {
            asm { fcsel      s0, s0, s9, eq };
    }
    s1 = *(int32_t *)0x100b9b67c;
    r21 = (int64_t *)&r0->_midpoint;
    v0 = v8;
    v1 = v12;
    sub_100311718();
    if (s9 != 0x0) goto loc_1002ed2b8;

loc_1002ed2ac:
    r23 = 0x0;
    v10 = v8;
    goto loc_1002ed2cc;

loc_1002ed2cc:
    v11 = v12;
    goto loc_1002ed2d0;

loc_1002ed2d0:
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_vertexDataCount));
    r8 = *(int32_t *)(r19 + r24);
    r20 = r23 + 0x3;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_vertexData));
    r0 = *(r19 + r25);
    if (r8 == r20) {
            if (r0 == 0x0) {
                    *(int32_t *)(r19 + r24) = r20;
                    asm { smull      x0, w20, w8 };
                    *(r19 + r25) = malloc(r0);
            }
            [r19 updateColor];
    }
    else {
            if (r0 != 0x0) {
                    r0 = free(r0);
                    *(r19 + r25) = 0x0;
                    *(int32_t *)(r19 + r24) = 0x0;
            }
            *(int32_t *)(r19 + r24) = r20;
            asm { smull      x0, w20, w8 };
            *(r19 + r25) = malloc(r0);
            [r19 updateColor];
            [r19 textureCoordFromAlphaPoint:r2];
            r8 = *(r19 + r25);
            *(int128_t *)(r8 + 0xc) = s0;
            *(int128_t *)(r8 + 0x10) = s1;
            [r19 vertexFromAlphaPoint:r2];
            r8 = *(r19 + r25);
            *(int128_t *)r8 = s0;
            *(int128_t *)(r8 + 0x4) = s1;
            objc_msgSend(r19, r20);
            r8 = *(r19 + r25);
            *(int128_t *)(r8 + 0x20) = s0;
            *(int128_t *)(r8 + 0x24) = s1;
            v0 = v8;
            v1 = v12;
            objc_msgSend(r19, r21);
            r8 = *(r19 + r25);
            *(int128_t *)(r8 + 0x14) = s0;
            *(int128_t *)(r8 + 0x18) = s1;
            if (r23 > 0x0) {
                    r26 = 0x0;
                    r27 = 0x0;
                    r23 = r23;
                    do {
                            [r19 boundaryTexCoord:r2];
                            objc_msgSend(r19, r20);
                            r8 = *(r19 + r25);
                            *(int32_t *)(0x34 + r8 + r26) = s0;
                            *(int32_t *)(0x38 + r8 + r26) = s1;
                            v0 = v0;
                            v1 = v1;
                            objc_msgSend(r19, r21);
                            r8 = *(r19 + r25);
                            *(int32_t *)(0x28 + r8 + r26) = s0;
                            *(int32_t *)(0x2c + r8 + r26) = s1;
                            r27 = r27 + 0x1;
                            r26 = r26 + 0x14;
                    } while (r23 != r27);
            }
    }
    [r19 textureCoordFromAlphaPoint:r2];
    r8 = *(r19 + r25);
    asm { madd       x8, x9, x20, x8 };
    *(int128_t *)(r8 + 0xfffffffffffffff8) = s0;
    *(int128_t *)(r8 + 0xfffffffffffffffc) = s1;
    objc_msgSend(r19, r21);
    r8 = *(r19 + r25);
    asm { madd       x8, x9, x20, x8 };
    *(int128_t *)(r8 + 0xffffffffffffffec) = s0;
    *(int128_t *)(r8 + 0xfffffffffffffff0) = s1;
    return;

.l20:
    return;

loc_1002ed2b8:
    if (s9 != 0x3ff0000000000000) goto loc_1002ed4dc;

loc_1002ed2c0:
    r23 = 0x4;
    v10 = v8;
    goto loc_1002ed2cc;

loc_1002ed4dc:
    v10 = v0;
    v11 = v1;
    r23 = 0x0;
    r22 = 0x0;
    do {
            [r19 boundaryTexCoord:r22 & 0x3];
            v12 = v0;
            v13 = v1;
            r8 = r22 - 0x1;
            [r19 boundaryTexCoord:r8 & 0x3];
            v14 = v0;
            v15 = v1;
            if (r22 != 0x4) {
                    if (r22 == 0x0) {
                            asm { fcvt       s4, d0 };
                            sub_100311670();
                            v14 = v12;
                            v15 = v13;
                    }
            }
            else {
                    asm { fcvt       s4, d0 };
                    sub_100311670();
                    v12 = v12;
                    v13 = v13;
            }
            d4 = *(int128_t *)r21;
            v0 = v12;
            v1 = v13;
            r0 = sub_1003117a0(&var_A4, &var_A8);
            if (r0 != 0x0) {
                    if ((r22 & 0x7ffffffb) == 0x0) {
                            s0 = var_A4;
                            s1 = 0x3ff0000000000000;
                            if (s0 >= 0x0) {
                                    asm { fccmp      s0, s1, #0x2, ge };
                            }
                            if (!CPU_FLAGS & A) {
                                    s0 = var_A8;
                                    if (s0 >= 0x0) {
                                            if (CPU_FLAGS & GE) {
                                                    r8 = 0x1;
                                            }
                                    }
                                    if (s0 < 0x7f7fffff) {
                                            if (CPU_FLAGS & S) {
                                                    r9 = 0x1;
                                            }
                                    }
                                    if ((r8 & r9) != 0x0) {
                                            asm { fcsel      s9, s0, s9, ne };
                                    }
                                    if (CPU_FLAGS & NE) {
                                            if (!CPU_FLAGS & NE) {
                                                    r23 = r23;
                                            }
                                            else {
                                                    r23 = r22;
                                            }
                                    }
                            }
                    }
                    else {
                            s0 = var_A8;
                            if (s0 >= 0x0) {
                                    if (CPU_FLAGS & GE) {
                                            r8 = 0x1;
                                    }
                            }
                            if (s0 < 0x7f7fffff) {
                                    if (CPU_FLAGS & S) {
                                            r9 = 0x1;
                                    }
                            }
                            if ((r8 & r9) != 0x0) {
                                    asm { fcsel      s9, s0, s9, ne };
                            }
                            if (CPU_FLAGS & NE) {
                                    if (!CPU_FLAGS & NE) {
                                            r23 = r23;
                                    }
                                    else {
                                            r23 = r22;
                                    }
                            }
                    }
            }
            r22 = r22 + 0x1;
    } while (r22 != 0x5);
    asm { fcvt       d4, s9 };
    goto loc_1002ed2d0;
}

-(struct CGPoint)barChangeRate {
    r0 = self;
    return r0;
}

-(void)setBarChangeRate:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_barChangeRate));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(struct _ccV2F_C4B_T2F *)vertexData {
    r0 = self->_vertexData;
    return r0;
}

-(int)vertexDataCount {
    r0 = *(int32_t *)(int64_t *)&self->_vertexDataCount;
    return r0;
}

-(void)draw {
    r0 = self;
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
    r31 = r31 + 0xffffffffffffffa0 - 0x6b0;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_vertexData));
    if (*(r0 + r26) == 0x0) goto .l39;

loc_1002edba4:
    r24 = r0;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_sprite));
    if (*(r0 + r20) == 0x0) goto .l39;

loc_1002edbb8:
    if ([[CCConfiguration sharedConfiguration] useNewRenderer] == 0x0) goto loc_1002edefc;

loc_1002edbdc:
    var_6D0 = r24;
    if (*(int8_t *)(int64_t *)&r24->_mcRenderJobIsDirty == 0x0) goto loc_1002ee14c;

loc_1002edbf0:
    var_60 = 0x0;
    *(int128_t *)((r29 - 0xe8) + 0x78) = q0;
    *(int128_t *)((r29 - 0xe8) + 0x68) = q0;
    *(int128_t *)((r29 - 0xe8) + 0x58) = q0;
    *(int128_t *)((r29 - 0xe8) + 0x48) = q0;
    *(int128_t *)((r29 - 0xe8) + 0x38) = q0;
    *(int128_t *)((r29 - 0xe8) + 0x28) = q0;
    *(int128_t *)((r29 - 0xe8) + 0x18) = q0;
    *(int128_t *)((r29 - 0xe8) + 0x8) = q0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_vertexDataCount));
    var_6E0 = r20;
    var_6D8 = r8;
    if (*(int32_t *)(r24 + r8) == 0x0) goto loc_1002ee024;

loc_1002edc30:
    r8 = 0x0;
    r9 = 0x0;
    r20 = 0x0;
    var_6E8 = (r29 - 0xe8) + 0x30;
    r11 = (r29 - 0xe8) + 0x60;
    var_6F8 = (r29 - 0xe8) + 0x78;
    var_6F0 = r11;
    goto loc_1002edc58;

loc_1002edc58:
    r10 = *(r24 + r26);
    asm { madd       x10, x20, x19, x10 };
    r27 = *(int128_t *)r10;
    r22 = *(int128_t *)(r10 + 0x4);
    if (r9 >= r8) goto loc_1002edc7c;

loc_1002edc6c:
    *(int128_t *)r9 = r27;
    *(int128_t *)(r9 + 0x4) = r22;
    var_B0 = r9 + 0x8;
    goto loc_1002edd18;

loc_1002edd18:
    r8 = *(r24 + r26);
    asm { madd       x8, x20, x19, x8 };
    r27 = *(int128_t *)(r8 + 0xc);
    r22 = *(int128_t *)(r8 + 0x10);
    r9 = var_80;
    r8 = var_78;
    if (r9 >= r8) goto loc_1002edd40;

loc_1002edd30:
    *(int128_t *)r9 = r27;
    *(int128_t *)(r9 + 0x4) = r22;
    var_80 = r9 + 0x8;
    goto loc_1002edddc;

loc_1002edddc:
    r8 = *(r24 + r26);
    asm { madd       x8, x20, x19, x8 };
    r28 = *(int8_t *)(r8 + 0x8);
    r22 = *(int8_t *)(r8 + 0x9);
    r27 = *(int8_t *)(r8 + 0xa);
    r25 = *(int8_t *)(r8 + 0xb);
    r23 = var_68;
    r8 = var_60;
    if (r23 >= r8) goto loc_1002ede1c;

loc_1002ede00:
    *(int8_t *)r23 = r28;
    *(int8_t *)(r23 + 0x1) = r22;
    *(int8_t *)(r23 + 0x2) = r27;
    *(int8_t *)(r23 + 0x3) = r25;
    var_68 = r23 + 0x4;
    goto loc_1002edee0;

loc_1002edee0:
    r20 = r20 + 0x1;
    if (r20 >= *(int32_t *)(r24 + var_6D8)) goto loc_1002ee024;

loc_1002edef4:
    r9 = var_B0;
    r8 = var_A8;
    goto loc_1002edc58;

loc_1002ee024:
    r0 = *(r24 + var_6E0);
    r0 = [r0 texture];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(MCTexturePointer));
    r9 = *(int128_t *)(r0 + r8);
    r8 = *(int128_t *)(0x8 + r0 + r8);
    if (r8 != 0x0) {
            do {
                    asm { ldxr       x11, [x10] };
                    r11 = r11 + 0x1;
                    asm { stxr       w12, x11, [x10] };
            } while (r12 != 0x0);
    }
    r20 = var_C0;
    var_C0 = r8;
    if (r20 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r20 + 0x10))(r20);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    sub_100382ea4((int64_t *)&r24->_mcRenderJob + 0x40, r29 - 0xe8);
    r0 = var_70;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    r0 = var_88;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    r0 = var_A0;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    r0 = var_B8;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    r20 = var_C0;
    if (r20 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r20 + 0x10))(r20);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    r0 = var_E0;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    goto loc_1002ee14c;

loc_1002ee14c:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_type));
    r8 = *(int32_t *)(r24 + r8);
    if (r8 == 0x0) goto loc_1002ee4dc;

loc_1002ee15c:
    if (r8 != 0x1) goto .l39;

loc_1002ee164:
    r22 = (int64_t *)&r24->_mcRenderJob;
    *(int32_t *)(r22 + 0x120) = 0x5;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_reverseDirection));
    r8 = *(int8_t *)(r24 + r8);
    r23 = r22 + 0x40;
    *(int32_t *)(r22 + 0x148) = 0x0;
    r10 = r24;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_vertexDataCount));
    r9 = *(int32_t *)(r10 + r24);
    if (r8 != 0x0) {
            r8 = &var_260;
            if (r9 < 0x0) {
                    asm { cinc       w9, w9, lt };
            }
            *(int32_t *)(r22 + 0x14c) = SAR(r9, 0x1);
            *(int128_t *)(r8 + 0x4) = *(int128_t *)(r22 + 0x4);
            q0 = *(int128_t *)(r22 + 0x14);
            q1 = *(int128_t *)(r22 + 0x24);
            *(int128_t *)(r8 + 0x30) = *(int128_t *)(r22 + 0x30);
            *(int128_t *)(r8 + 0x24) = q1;
            *(int128_t *)(r8 + 0x14) = q0;
            r9 = &var_260;
            q0 = *(int128_t *)(r23 + 0x30);
            q1 = *(int128_t *)(r23 + 0x40);
            q2 = *(int128_t *)(r23 + 0x50);
            q3 = *(int128_t *)(r23 + 0x60);
            *(int128_t *)(r8 + 0x90) = q2;
            *(int128_t *)(r8 + 0xa0) = q3;
            *(int128_t *)(r8 + 0x70) = q0;
            *(int128_t *)(r8 + 0x80) = q1;
            q0 = *(int128_t *)(r23 + 0x70);
            q1 = *(int128_t *)(r23 + 0x80);
            q2 = *(int128_t *)(r23 + 0x90);
            q3 = *(int128_t *)(r23 + 0xa0);
            *(int128_t *)(r8 + 0xd0) = q2;
            *(int128_t *)(r8 + 0xe0) = q3;
            *(int128_t *)(r8 + 0xb0) = q0;
            *(int128_t *)(r8 + 0xc0) = q1;
            q0 = *(int128_t *)(r23 + 0xb0);
            q1 = *(int128_t *)(r23 + 0xc0);
            q2 = *(int128_t *)(r23 + 0xd0);
            *(int128_t *)(r8 + 0x100) = q1;
            *(int128_t *)(r8 + 0x110) = q2;
            *(int128_t *)(r8 + 0xf0) = q0;
            q0 = *(int128_t *)r23;
            q1 = *(int128_t *)(r23 + 0x10);
            q2 = *(int128_t *)(r23 + 0x20);
            *(int128_t *)(r8 + 0x50) = q1;
            *(int128_t *)(r8 + 0x60) = q2;
            *(int128_t *)(r8 + 0x40) = q0;
            *(r9 + 0x128) = *(r22 + 0x128);
            r10 = *(r22 + 0x130);
            var_130 = r10;
            if (r10 != 0x0) {
                    do {
                            asm { ldxr       x11, [x10] };
                            r11 = r11 + 0x1;
                            asm { stxr       w12, x11, [x10] };
                    } while (r12 != 0x0);
            }
            r10 = *(int32_t *)(r22 + 0x138);
            *(int128_t *)(r8 + 0x140) = *(int128_t *)(r22 + 0x140);
            r20 = r22 + 0x150;
            r1 = r20;
            sub_1002c5700(r9 + 0x150, r1);
            sub_1003805bc(&var_260);
            r26 = &var_3D8;
            r27 = r22 + 0x14;
            sub_1002c59fc(&var_260 + 0x150);
            r21 = var_130;
            if (r21 != 0x0) {
                    do {
                            asm { ldaxr      x9, [x8] };
                            r10 = r9 - 0x1;
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r21 + 0x10))(r21);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
            r25 = r22 + 0x140;
            loc_100381804(&var_260 + 0xe8, r1);
            loc_100381804(&var_260 + 0xb0, r1);
            loc_100381804(&var_260 + 0x78, r1);
            loc_100381804(&var_260 + 0x40, r1);
            *(int32_t *)(r22 + 0x148) = 0x4;
            r8 = *(int32_t *)(var_6D0 + r24);
            if (r8 < 0x0) {
                    asm { cinc       w8, w8, lt };
            }
            *(int32_t *)(r22 + 0x14c) = SAR(r8, 0x1);
            *(int128_t *)(r26 + 0x4) = *(int128_t *)(r22 + 0x4);
            q0 = *(int128_t *)r27;
            q1 = *(int128_t *)(r27 + 0x10);
            *(int128_t *)(&stack[-1207] + 0xff) = *(int128_t *)(r27 + 0x1c);
            *(int128_t *)(r26 + 0x24) = q1;
            *(int128_t *)(r26 + 0x14) = q0;
            r8 = &var_3D8;
            q0 = *(int128_t *)(r23 + 0x30);
            q1 = *(int128_t *)(r23 + 0x40);
            q2 = *(int128_t *)(r23 + 0x50);
            q3 = *(int128_t *)(r23 + 0x60);
            *(int128_t *)(&stack[-1111] + 0xff) = q2;
            *(int128_t *)(&stack[-1095] + 0xff) = q3;
            *(int128_t *)(&stack[-1143] + 0xff) = q0;
            *(int128_t *)(&stack[-1127] + 0xff) = q1;
            q0 = *(int128_t *)(r23 + 0x70);
            q1 = *(int128_t *)(r23 + 0x80);
            q2 = *(int128_t *)(r23 + 0x90);
            q3 = *(int128_t *)(r23 + 0xa0);
            *(int128_t *)(&stack[-1047] + 0xff) = q2;
            *(int128_t *)(&stack[-1031] + 0xff) = q3;
            *(int128_t *)(&stack[-1079] + 0xff) = q0;
            *(int128_t *)(&stack[-1063] + 0xff) = q1;
            q0 = *(int128_t *)(r23 + 0xb0);
            q1 = *(int128_t *)(r23 + 0xc0);
            *(int128_t *)(&stack[-983] + 0xff) = *(int128_t *)(r23 + 0xd0);
            *(int128_t *)(&stack[-1015] + 0xff) = q0;
            *(int128_t *)(&stack[-999] + 0xff) = q1;
            q0 = *(int128_t *)r23;
            q1 = *(int128_t *)(r23 + 0x10);
            *(int128_t *)(&stack[-1159] + 0xff) = *(int128_t *)(r23 + 0x20);
            *(int128_t *)(&stack[-1191] + 0xff) = q0;
            *(int128_t *)(&stack[-1175] + 0xff) = q1;
            *(r8 + 0x128) = *(r22 + 0x128);
            r9 = *(r22 + 0x130);
            var_2A8 = r9;
            if (r9 != 0x0) {
                    do {
                            asm { ldxr       x10, [x9] };
                            r10 = r10 + 0x1;
                            asm { stxr       w11, x10, [x9] };
                    } while (r11 != 0x0);
            }
            r9 = &stack[-935];
            *(int128_t *)(r9 + 0xff) = *(int128_t *)r25;
            r1 = r20;
            sub_1002c5700(r8 + 0x150, r1);
            sub_1003805bc(&var_3D8);
            sub_1002c59fc(&var_3D8 + 0x150);
            r19 = var_2A8;
            if (r19 != 0x0) {
                    do {
                            asm { ldaxr      x9, [x8] };
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r19 + 0x10))(r19);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
            r20 = &var_3D8;
    }
    else {
            r8 = &var_550;
            *(int32_t *)(r22 + 0x14c) = r9;
            *(int128_t *)(r8 + 0x4) = *(int128_t *)(r22 + 0x4);
            q0 = *(int128_t *)(r22 + 0x14);
            q1 = *(int128_t *)(r22 + 0x24);
            *(int128_t *)(r8 + 0x30) = *(int128_t *)(r22 + 0x30);
            *(int128_t *)(r8 + 0x24) = q1;
            *(int128_t *)(r8 + 0x14) = q0;
            r9 = &var_550;
            q0 = *(int128_t *)(r23 + 0x30);
            q1 = *(int128_t *)(r23 + 0x40);
            q2 = *(int128_t *)(r23 + 0x50);
            q3 = *(int128_t *)(r23 + 0x60);
            *(int128_t *)(r8 + 0x90) = q2;
            *(int128_t *)(r8 + 0xa0) = q3;
            *(int128_t *)(r8 + 0x70) = q0;
            *(int128_t *)(r8 + 0x80) = q1;
            q0 = *(int128_t *)(r23 + 0x70);
            q1 = *(int128_t *)(r23 + 0x80);
            q2 = *(int128_t *)(r23 + 0x90);
            q3 = *(int128_t *)(r23 + 0xa0);
            *(int128_t *)(r8 + 0xd0) = q2;
            *(int128_t *)(r8 + 0xe0) = q3;
            *(int128_t *)(r8 + 0xb0) = q0;
            *(int128_t *)(r8 + 0xc0) = q1;
            q0 = *(int128_t *)(r23 + 0xb0);
            q1 = *(int128_t *)(r23 + 0xc0);
            q2 = *(int128_t *)(r23 + 0xd0);
            *(int128_t *)(r8 + 0x100) = q1;
            *(int128_t *)(r8 + 0x110) = q2;
            *(int128_t *)(r8 + 0xf0) = q0;
            q0 = *(int128_t *)r23;
            q1 = *(int128_t *)(r23 + 0x10);
            q2 = *(int128_t *)(r23 + 0x20);
            *(int128_t *)(r8 + 0x50) = q1;
            *(int128_t *)(r8 + 0x60) = q2;
            *(int128_t *)(r8 + 0x40) = q0;
            *(r9 + 0x128) = *(r22 + 0x128);
            r10 = *(r22 + 0x130);
            var_420 = r10;
            if (r10 != 0x0) {
                    do {
                            asm { ldxr       x11, [x10] };
                            r11 = r11 + 0x1;
                            asm { stxr       w12, x11, [x10] };
                    } while (r12 != 0x0);
            }
            *(int128_t *)(r8 + 0x140) = *(int128_t *)(r22 + 0x140);
            r1 = r22 + 0x150;
            sub_1002c5700(r9 + 0x150, r1);
            sub_1003805bc(&var_550);
            sub_1002c59fc(&var_550 + 0x150);
            r19 = var_420;
            if (r19 != 0x0) {
                    do {
                            asm { ldaxr      x9, [x8] };
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r19 + 0x10))(r19);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
            r20 = &var_550;
    }
    goto loc_1002ee778;

loc_1002ee778:
    loc_100381804(r20 + 0xe8, r1);
    loc_100381804(r20 + 0xb0, r1);
    loc_100381804(r20 + 0x78, r1);
    loc_100381804(r20 + 0x40, r1);
    return;

.l39:
    return;

loc_1002ee4dc:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_mcRenderJob));
    r8 = r24 + r8;
    *(int32_t *)(r8 + 0x148) = 0x0;
    *(int32_t *)(r8 + 0x14c) = *(int32_t *)(int64_t *)&r24->_vertexDataCount;
    *(int32_t *)(r8 + 0x120) = 0x6;
    r9 = &var_6C8;
    q2 = *(int128_t *)(r8 + 0xd0);
    q3 = *(int128_t *)(r8 + 0xe0);
    *(int128_t *)(&stack[-1799] + 0xff) = q2;
    *(int128_t *)(&stack[-1783] + 0xff) = q3;
    q0 = *(int128_t *)(r8 + 0xf0);
    q1 = *(int128_t *)(r8 + 0x100);
    *(int128_t *)(&stack[-1735] + 0xff) = *(int128_t *)(r8 + 0x110);
    *(int128_t *)(&stack[-1767] + 0xff) = q0;
    *(int128_t *)(&stack[-1751] + 0xff) = q1;
    *(r9 + 0x128) = *(r8 + 0x128);
    r10 = *(r8 + 0x130);
    var_598 = r10;
    if (r10 != 0x0) {
            do {
                    asm { ldxr       x11, [x10] };
                    r11 = r11 + 0x1;
                    asm { stxr       w12, x11, [x10] };
            } while (r12 != 0x0);
    }
    *(int128_t *)(&stack[-1687] + 0xff) = *(int128_t *)(r8 + 0x140);
    r1 = r8 + 0x150;
    sub_1002c5700(r9 + 0x150, r1);
    sub_1003805bc(&var_6C8);
    sub_1002c59fc(&var_6C8 + 0x150);
    r19 = var_598;
    if (r19 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r19 + 0x10))(r19);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    r20 = &var_6C8;
    goto loc_1002ee778;

loc_1002ede1c:
    r24 = var_70;
    r21 = SAR(r23 - r24, 0x2);
    r9 = r21 + 0x1;
    if (r9 >> 0x3e != 0x0) goto loc_1002ee7d4;

loc_1002ede34:
    r8 = r8 - r24;
    r10 = SAR(r8, 0x1);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    r19 = 0x14;
    if (0x1fffffffffffffff > r8 / 0x4) {
            if (!CPU_FLAGS & A) {
                    r19 = 0x3fffffffffffffff;
            }
            else {
                    r19 = r9;
            }
    }
    if (r19 == 0x0) goto loc_1002ede6c;

loc_1002ede58:
    if (r19 >> 0x3e != 0x0) goto loc_1002ee7f0;

loc_1002ede60:
    r0 = operator new();
    goto loc_1002ede70;

loc_1002ede70:
    r8 = r0 + r21 * 0x4;
    *(int8_t *)r8 = r28;
    *(int8_t *)(r8 + 0x1) = r22;
    r9 = r0 + r19 * 0x4;
    *(int8_t *)(r8 + 0x2) = r27;
    *(int8_t *)(r8 + 0x3) = r25;
    r10 = r8 + 0x4;
    if (r23 != r24) {
            do {
                    r23 = r23 + 0xfffffffffffffffc;
                    *(int8_t *)(r8 + 0xfffffffffffffffc) = *(int8_t *)r23;
                    *(int8_t *)(r8 + 0xfffffffffffffffd) = *(int8_t *)(r23 + 0x1);
                    *(int8_t *)(r8 + 0xfffffffffffffffe) = *(int8_t *)(r23 + 0x2);
                    r11 = *(int8_t *)(r23 + 0x3);
                    *(int8_t *)(r8 + 0xffffffffffffffff) = r11;
                    r8 = r8 - 0x4;
            } while (r24 != r23);
            r23 = var_70;
    }
    var_70 = r8;
    var_68 = r10;
    var_60 = r9;
    r24 = var_6D0;
    if (r23 != 0x0) {
            operator delete(r23);
    }
    goto loc_1002edee0;

loc_1002ee7f0:
    sub_1002eea5c();
    return;

loc_1002ede6c:
    r0 = 0x0;
    goto loc_1002ede70;

loc_1002ee7d4:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002edd40:
    r23 = var_88;
    r24 = r9 - r23;
    r28 = SAR(r24, 0x3);
    r9 = r28 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_1002ee7c8;

loc_1002edd58:
    r8 = r8 - r23;
    r10 = SAR(r8, 0x2);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    r19 = 0x14;
    if (0xfffffffffffffff > r8 / 0x8) {
            if (!CPU_FLAGS & A) {
                    r19 = 0x1fffffffffffffff;
            }
            else {
                    r19 = r9;
            }
    }
    if (r19 == 0x0) goto loc_1002edd94;

loc_1002edd7c:
    if (r19 >> 0x3d != 0x0) goto loc_1002ee7e8;

loc_1002edd84:
    r25 = operator new();
    goto loc_1002edd98;

loc_1002edd98:
    r19 = r25 + r19 * 0x8;
    *(int128_t *)(r25 + r28 * 0x8) = r27;
    *(int128_t *)(0x4 + r25 + r28 * 0x8) = r22;
    r21 = 0x8 + r25 + r28 * 0x8;
    if (r24 >= 0x1) {
            memcpy(r25, r23, r24);
    }
    var_88 = r25;
    var_80 = r21;
    var_78 = r19;
    r24 = var_6D0;
    if (r23 != 0x0) {
            operator delete(r23);
    }
    goto loc_1002edddc;

loc_1002ee7e8:
    sub_1002eea5c();
    return;

loc_1002edd94:
    r25 = 0x0;
    goto loc_1002edd98;

loc_1002ee7c8:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002edc7c:
    r23 = var_B8;
    r24 = r9 - r23;
    r28 = SAR(r24, 0x3);
    r9 = r28 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_1002ee7bc;

loc_1002edc94:
    r8 = r8 - r23;
    r10 = SAR(r8, 0x2);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    r19 = 0x14;
    if (0xfffffffffffffff > r8 / 0x8) {
            if (!CPU_FLAGS & A) {
                    r19 = 0x1fffffffffffffff;
            }
            else {
                    r19 = r9;
            }
    }
    if (r19 == 0x0) goto loc_1002edcd0;

loc_1002edcb8:
    if (r19 >> 0x3d != 0x0) goto loc_1002ee7e0;

loc_1002edcc0:
    r25 = operator new();
    goto loc_1002edcd4;

loc_1002edcd4:
    r19 = r25 + r19 * 0x8;
    *(int128_t *)(r25 + r28 * 0x8) = r27;
    *(int128_t *)(0x4 + r25 + r28 * 0x8) = r22;
    r21 = 0x8 + r25 + r28 * 0x8;
    if (r24 >= 0x1) {
            memcpy(r25, r23, r24);
    }
    var_B8 = r25;
    var_B0 = r21;
    var_A8 = r19;
    r24 = var_6D0;
    if (r23 != 0x0) {
            operator delete(r23);
    }
    goto loc_1002edd18;

loc_1002ee7e0:
    sub_1002eea5c();
    return;

loc_1002edcd0:
    r25 = 0x0;
    goto loc_1002edcd4;

loc_1002ee7bc:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002edefc:
    sub_10031a6c4();
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_shaderProgram));
    [*(r24 + r19) use];
    [*(r24 + r19) setUniformsForBuiltins];
    sub_10031a4a8([*(r24 + r20) blendFunc], [*(r24 + r20) blendFunc] >> 0x20);
    sub_10031a6f0(0x7);
    [[*(r24 + r20) texture] bind];
    glVertexAttribPointer(0x0, 0x2, 0x1406, 0x0, 0x14, *(r24 + r26));
    glVertexAttribPointer(0x2, 0x2, 0x1406, 0x0, 0x14, *(r24 + r26) + 0xc);
    glVertexAttribPointer(0x1, 0x4, 0x1401, 0x1, 0x14, *(r24 + r26) + 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_type));
    r8 = *(int32_t *)(r24 + r8);
    if (r8 == 0x1) goto loc_1002ee47c;

loc_1002ee00c:
    if (r8 != 0x0) goto loc_1002ee654;

loc_1002ee010:
    r2 = *(int32_t *)(int64_t *)&r24->_vertexDataCount;
    r0 = 0x6;
    goto loc_1002ee64c;

loc_1002ee64c:
    glDrawArrays(r0, 0x0, r2);
    goto loc_1002ee654;

loc_1002ee654:
    *0x1011e2dd0 = *0x1011e2dd0 + 0x1;
    return;

loc_1002ee47c:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_reverseDirection));
    r8 = *(int8_t *)(r24 + r8);
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_vertexDataCount));
    r2 = *(int32_t *)(r24 + r19);
    if (r8 == 0x0) goto loc_1002ee648;

loc_1002ee498:
    if (r2 < 0x0) {
            asm { cinc       w8, w2, lt };
    }
    glDrawArrays(0x5, 0x0, SAR(r8, 0x1));
    r8 = *(int32_t *)(r24 + r19);
    if (r8 < 0x0) {
            asm { cinc       w8, w8, lt };
    }
    glDrawArrays(0x5, 0x4, SAR(r8, 0x1));
    *0x1011e2dd0 = *0x1011e2dd0 + 0x1;
    goto loc_1002ee654;

loc_1002ee648:
    r0 = 0x5;
    goto loc_1002ee64c;
}

@end