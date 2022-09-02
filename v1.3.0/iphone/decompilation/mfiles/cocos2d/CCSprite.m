@implementation CCSprite

+(void *)spriteWithTexture:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithTexture:arg2];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)spriteWithTexture:(void *)arg2 rect:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithTexture:arg2 rect:r3];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)spriteWithFile:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithFile:arg2];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)spriteWithFile:(void *)arg2 rect:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithFile:arg2 rect:r3];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)spriteWithSpriteFrame:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithSpriteFrame:arg2];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)spriteWithSpriteFrameName:(void *)arg2 {
    r0 = [self spriteWithSpriteFrame:[[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName:arg2]];
    return r0;
}

-(void *)init {
    r0 = [self initWithTexture:0x0 rect:r3];
    return r0;
}

-(void *)initWithTexture:(void *)arg2 {
    [arg2 contentSize];
    r0 = [self initWithTexture:arg2 rect:r3];
    return r0;
}

-(void *)initWithTexture:(void *)arg2 rect:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self initWithTexture:arg2 rect:0x0 rotated:r4];
    return r0;
}

-(void *)initWithTexture:(void *)arg2 rect:(struct CGRect)arg3 rotated:(bool)arg4 {
    r4 = arg4;
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x80;
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
    r19 = r3;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r21 = arg2;
    r0 = [[&var_50 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            if ([[CCConfiguration sharedConfiguration] useNewRenderer] != 0x0) {
                    sub_100292530();
                    sub_1002c1c28(&var_68, [@"ShaderPositionTextureColor" UTF8String]);
                    r0 = sub_10037ec20(r22, &var_68);
                    r22 = (int64_t *)&r20->_mcRenderJob;
                    *(r22 + 0x140) = r0;
                    if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_68);
                    }
                    q0 = *(int128_t *)0x1011e2ec0;
                    q1 = *(int128_t *)0x1011e2ed0;
                    q2 = *(int128_t *)0x1011e2ea0;
                    q3 = *(int128_t *)0x1011e2eb0;
                    *(int128_t *)r22 = q2;
                    *(int128_t *)(r22 + 0x10) = q3;
                    *(int128_t *)(r22 + 0x20) = q0;
                    *(int128_t *)(r22 + 0x30) = q1;
                    *(r22 + 0x18) = *0x100ba3648;
                    *(int8_t *)(int64_t *)&r20->_mcRenderJobIsDirty = 0x1;
            }
            else {
                    [r20 setShaderProgram:[[CCShaderCache sharedShaderCache] programForKey:@"ShaderPositionTextureColor"]];
            }
            *(int8_t *)(int64_t *)&r20->_recursiveDirty = 0x0;
            *(int8_t *)(int64_t *)&r20->_dirty = 0x0;
            *(int8_t *)(int64_t *)&r20->_opacityModifyRGB = 0x1;
            r20->_blendFunc = *0x100ba3650;
            *(int8_t *)(int64_t *)&r20->_flipX = 0x0;
            *(int8_t *)(int64_t *)&r20->_flipY = 0x0;
            *(int128_t *)(int64_t *)&r20->_anchorPoint = q0;
            *(int128_t *)(int64_t *)&r20->_offsetPosition = *(int128_t *)*_CGPointZero;
            *(int8_t *)(int64_t *)&r20->_hasChildren = 0x0;
            r20->_batchNode = 0x0;
            bzero((int64_t *)&r20->_quad, 0x60);
            *(int32_t *)((int64_t *)&r20->_quad + 0x24) = 0xffffffffffffffff;
            *(int32_t *)((int64_t *)&r20->_quad + 0x54) = 0xffffffffffffffff;
            *(int32_t *)((int64_t *)&r20->_quad + 0xc) = 0xffffffffffffffff;
            *(int32_t *)((int64_t *)&r20->_quad + 0x3c) = 0xffffffffffffffff;
            [r20 setTexture:r21];
            [r20 setTextureRect:r19 rotated:r3 untrimmedSize:r4];
            r20->_emissionShaderName = @"ShaderPositionTextureColor_uEmission";
            [r20 setBatchNode:0x0];
    }
    r0 = r20;
    return r0;
}

-(void *)initWithFile:(void *)arg2 {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [CCTextureCache sharedTextureCache];
    r0 = [r0 addImage:arg2];
    if (r0 != 0x0) {
            [r0 contentSize];
            r0 = [r19 initWithTexture:r0 rect:r3];
    }
    else {
            [r19 release];
            r0 = 0x0;
    }
    return r0;
}

-(void *)initWithFile:(void *)arg2 rect:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    var_30 = d11;
    stack[-56] = d10;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r19 = self;
    r0 = [CCTextureCache sharedTextureCache];
    r0 = [r0 addImage:arg2];
    if (r0 != 0x0) {
            r0 = [r19 initWithTexture:r0 rect:r3];
    }
    else {
            [r19 release];
            r0 = 0x0;
    }
    return r0;
}

-(void *)initWithSpriteFrame:(void *)arg2 {
    r21 = [arg2 texture];
    [arg2 rect];
    r21 = [self initWithTexture:r21 rect:r3];
    [self setDisplayFrame:arg2];
    r0 = r21;
    return r0;
}

-(void *)initWithFileAssync:(void *)arg2 callbackToBeCalled:(void *)arg3 {
    r31 = r31 - 0xa0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = self;
    r20 = sub_100383410();
    sub_1002c1c28(&var_80, [arg2 UTF8String]);
    var_40 = 0x0;
    if (r21 != 0x0) {
            _Block_copy(r21);
            var_40 = &var_58;
    }
    r0 = sub_100384270(r20, &var_80, 0x1, &var_58);
    r0 = var_40;
    if (&var_58 == r0) goto loc_1002c1f50;

loc_1002c1f40:
    if (r0 == 0x0) goto loc_1002c1f5c;

loc_1002c1f44:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1002c1f58;

loc_1002c1f58:
    (r8)();
    goto loc_1002c1f5c;

loc_1002c1f5c:
    if ((sign_extend_64(var_69) & 0xffffffff80000000) != 0x0) {
            operator delete(var_80);
    }
    r20 = [CCTexture2D alloc];
    r9 = var_68;
    r8 = var_60;
    var_88 = r8;
    if (r8 != 0x0) {
            do {
                    asm { ldxr       x9, [x8] };
                    r9 = r9 + 0x1;
                    asm { stxr       w10, x9, [x8] };
            } while (r10 != 0x0);
    }
    [r20 initFromMCTexture:&var_90 textureScale:r3];
    r21 = var_88;
    if (r21 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r21 + 0x10))(r21);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    *(int8_t *)(int64_t *)&r20->_hasPremultipliedAlpha = 0x1;
    *(int32_t *)(int64_t *)&r20->_resolutionType = 0x0;
    [r20 contentSize];
    r19 = [r19 initWithTexture:r20 rect:r3];
    r20 = var_60;
    if (r20 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (0x1 == 0x0) {
                    (*(*r20 + 0x10))(r20);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1002c1f50:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1002c1f58;
}

-(void *)initWithSpriteFrameName:(void *)arg2 {
    r0 = [self initWithSpriteFrame:[[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName:arg2]];
    return r0;
}

-(void *)description {
    [self class];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_rect));
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([[CCConfiguration sharedConfiguration] useNewRenderer] & 0x1) != 0x0) {
            sub_1003830ac((int64_t *)&r19->_mcRenderJob + 0x40);
            *(int8_t *)(int64_t *)&r19->_mcRenderJobIsDirty = 0x1;
    }
    [r19->_texture release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)batchNode {
    r0 = self->_batchNode;
    return r0;
}

-(void)setTextureRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self setTextureRect:0x0 rotated:r3 untrimmedSize:r4];
    return;
}

-(void)setBatchNode:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    self->_batchNode = r2;
    *(int8_t *)(int64_t *)&self->_mcRenderJobIsDirty = 0x1;
    if (r2 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_transformToBatch));
            r9 = *_CGAffineTransformIdentity;
            q2 = *(int128_t *)(r9 + 0x10);
            q0 = *(int128_t *)(r9 + 0x20);
            *(int128_t *)(r19 + r8) = *(int128_t *)r9;
            *(int128_t *)(0x10 + r19 + r8) = q2;
            *(int128_t *)(0x20 + r19 + r8) = q0;
            r19->_textureAtlas = [r2 textureAtlas];
    }
    else {
            r19->_atlasIndex = 0xffffffffffffffff;
            r19->_textureAtlas = 0x0;
            *(int8_t *)(int64_t *)&r19->_recursiveDirty = 0x0;
            *(int8_t *)(int64_t *)&r19->_dirty = 0x0;
            asm { fcvtn      v0.2s, v0.2d };
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_rect));
            asm { fcvtl      v1.2d, v0.2s };
            asm { fcvtn      v1.2s, v1.2d };
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_quad));
            *(0x18 + r19 + r8) = d0;
            *(int32_t *)(0x20 + r19 + r8) = 0x0;
            *(0x48 + r19 + r8) = d2;
            *(int32_t *)(0x50 + r19 + r8) = 0x0;
            *(r19 + r8) = d0;
            *(int32_t *)(0x8 + r19 + r8) = 0x0;
            *(0x30 + r19 + r8) = d1;
            *(int32_t *)(0x38 + r19 + r8) = 0x0;
    }
    return;
}

-(void)setTextureRect:(struct CGRect)arg2 rotated:(bool)arg3 untrimmedSize:(struct CGSize)arg4 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r2, &arg2, 0x8);
    var_30 = d11;
    stack[-56] = d10;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    *(int8_t *)(int64_t *)&self->_mcRenderJobIsDirty = 0x1;
    *(int8_t *)(int64_t *)&self->_rectRotated = r2;
    [self setContentSize:r2];
    [r19 setVertexRect:r2];
    [r19 setTextureCoords:r2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_unflippedOffsetPositionFromCenter));
    d0 = *(int128_t *)(r19 + r8);
    d1 = *(int128_t *)(0x8 + r19 + r8);
    d2 = -d0;
    if (*(int8_t *)(int64_t *)&r19->_flipX == 0x0) {
            asm { fcsel      d2, d0, d2, eq };
    }
    if (*(int8_t *)(int64_t *)&r19->_flipY == 0x0) {
            asm { fcsel      d3, d1, d0, eq };
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_contentSize));
    d1 = *(r19 + r8);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_rect));
    d0 = *(0x10 + r19 + r9);
    r10 = sign_extend_64(*(int32_t *)ivar_offset(_offsetPosition));
    *(r19 + r10) = d2 + (d1 - d0) * 0x3fe0000000000000;
    d5 = *(0x8 + r19 + r8);
    d1 = *(0x18 + r19 + r9);
    d4 = (d5 - d1) * 0x3fe0000000000000;
    *(0x8 + r19 + r10) = d3 + d4;
    if (r19->_batchNode != 0x0) {
            *(int8_t *)(int64_t *)&r19->_dirty = 0x1;
    }
    else {
            asm { fcvt       s2, d2 };
            asm { fcvt       s3, d3 };
            asm { fcvt       d4, s2 };
            asm { fcvt       s0, d0 };
            asm { fcvt       d4, s3 };
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_quad));
            r8 = r19 + r8;
            *(int128_t *)(r8 + 0x18) = s2;
            *(int128_t *)(r8 + 0x1c) = s3;
            *(int32_t *)(r8 + 0x20) = 0x0;
            asm { fcvt       s1, d1 };
            *(int128_t *)(r8 + 0x48) = s0;
            *(int128_t *)(r8 + 0x4c) = s3;
            *(int32_t *)(r8 + 0x50) = 0x0;
            *(int128_t *)r8 = s2;
            *(int128_t *)(r8 + 0x4) = s1;
            *(int32_t *)(r8 + 0x8) = 0x0;
            *(int128_t *)(r8 + 0x30) = s0;
            *(int128_t *)(r8 + 0x34) = s1;
            *(int32_t *)(r8 + 0x38) = 0x0;
    }
    return;
}

-(void)setVertexRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(int8_t *)(int64_t *)&self->_mcRenderJobIsDirty = 0x1;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_rect));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    *(int128_t *)(0x10 + self + r8) = d2;
    *(int128_t *)(0x18 + self + r8) = d3;
    return;
}

-(void)calculateCustomShaderUniform {
    return;
}

-(void)setTextureCoords:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_40 = d13;
    stack[-72] = d12;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    *(int8_t *)(int64_t *)&self->_mcRenderJobIsDirty = 0x1;
    if (self->_batchNode != 0x0) {
            r20 = [r19->_textureAtlas texture];
            if (r20 != 0x0) {
                    asm { fcvt       d0, s12 };
                    d11 = d11 * d0;
                    d10 = d10 * d0;
                    d9 = d9 * d0;
                    d8 = d8 * d0;
                    [r20 pixelsWide];
                    asm { ucvtf      s12, x0 };
                    [r20 pixelsHigh];
                    asm { ucvtf      s1, x0 };
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_rectRotated));
                    r8 = *(int8_t *)(r19 + r8);
                    asm { fcvt       d2, s12 };
                    asm { fdiv       d0, d11, d2 };
                    asm { fcvt       s0, d0 };
                    if (r8 != 0x0) {
                            asm { fdiv       d2, d3, d2 };
                            asm { fcvt       s2, d2 };
                            asm { fcvt       d1, s1 };
                            asm { fdiv       d3, d10, d1 };
                            asm { fcvt       s4, d3 };
                            asm { fdiv       d1, d3, d1 };
                            asm { fcvt       s1, d1 };
                            if (*(int8_t *)(int64_t *)&r19->_flipX == 0x0) {
                                    asm { fcsel      s3, s1, s4, eq };
                            }
                            if (CPU_FLAGS & E) {
                                    asm { fcsel      s1, s4, s1, eq };
                            }
                            if (*(int8_t *)(int64_t *)&r19->_flipY == 0x0) {
                                    asm { fcsel      s4, s2, s0, eq };
                            }
                            if (CPU_FLAGS & E) {
                                    asm { fcsel      s0, s0, s2, eq };
                            }
                    }
                    else {
                            asm { fdiv       d2, d3, d2 };
                            asm { fcvt       s3, d2 };
                            asm { fcvt       d1, s1 };
                            asm { fdiv       d2, d10, d1 };
                            asm { fcvt       s4, d2 };
                            asm { fdiv       d1, d2, d1 };
                            asm { fcvt       s5, d1 };
                            if (*(int8_t *)(int64_t *)&r19->_flipX == 0x0) {
                                    asm { fcsel      s2, s3, s0, eq };
                            }
                            if (CPU_FLAGS & E) {
                                    asm { fcsel      s0, s0, s3, eq };
                            }
                            if (*(int8_t *)(int64_t *)&r19->_flipY == 0x0) {
                                    asm { fcsel      s1, s5, s4, eq };
                            }
                            if (CPU_FLAGS & E) {
                                    asm { fcsel      s5, s4, s5, eq };
                            }
                    }
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_quad));
                    *(int128_t *)(0x28 + r19 + r8) = s0;
                    *(int128_t *)(0x2c + r19 + r8) = s1;
                    *(int128_t *)(0x58 + r19 + r8) = s2;
                    *(int128_t *)(0x5c + r19 + r8) = s3;
                    *(int128_t *)(0x10 + r19 + r8) = s4;
                    *(int128_t *)(0x14 + r19 + r8) = s5;
                    *(int128_t *)(0x40 + r19 + r8) = s6;
                    *(int128_t *)(0x44 + r19 + r8) = s7;
            }
    }
    else {
            r20 = r19->_texture;
            if (r20 != 0x0) {
                    asm { fcvt       d0, s12 };
                    d11 = d11 * d0;
                    d10 = d10 * d0;
                    d9 = d9 * d0;
                    d8 = d8 * d0;
                    [r20 pixelsWide];
                    asm { ucvtf      s12, x0 };
                    [r20 pixelsHigh];
                    asm { ucvtf      s1, x0 };
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_rectRotated));
                    r8 = *(int8_t *)(r19 + r8);
                    asm { fcvt       d2, s12 };
                    asm { fdiv       d0, d11, d2 };
                    asm { fcvt       s0, d0 };
                    if (r8 != 0x0) {
                            asm { fdiv       d2, d3, d2 };
                            asm { fcvt       s2, d2 };
                            asm { fcvt       d1, s1 };
                            asm { fdiv       d3, d10, d1 };
                            asm { fcvt       s4, d3 };
                            asm { fdiv       d1, d3, d1 };
                            asm { fcvt       s1, d1 };
                            if (*(int8_t *)(int64_t *)&r19->_flipX == 0x0) {
                                    asm { fcsel      s3, s1, s4, eq };
                            }
                            if (CPU_FLAGS & E) {
                                    asm { fcsel      s1, s4, s1, eq };
                            }
                            if (*(int8_t *)(int64_t *)&r19->_flipY == 0x0) {
                                    asm { fcsel      s4, s2, s0, eq };
                            }
                            if (CPU_FLAGS & E) {
                                    asm { fcsel      s0, s0, s2, eq };
                            }
                    }
                    else {
                            asm { fdiv       d2, d3, d2 };
                            asm { fcvt       s3, d2 };
                            asm { fcvt       d1, s1 };
                            asm { fdiv       d2, d10, d1 };
                            asm { fcvt       s4, d2 };
                            asm { fdiv       d1, d2, d1 };
                            asm { fcvt       s5, d1 };
                            if (*(int8_t *)(int64_t *)&r19->_flipX == 0x0) {
                                    asm { fcsel      s2, s3, s0, eq };
                            }
                            if (CPU_FLAGS & E) {
                                    asm { fcsel      s0, s0, s3, eq };
                            }
                            if (*(int8_t *)(int64_t *)&r19->_flipY == 0x0) {
                                    asm { fcsel      s1, s5, s4, eq };
                            }
                            if (CPU_FLAGS & E) {
                                    asm { fcsel      s5, s4, s5, eq };
                            }
                    }
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_quad));
                    *(int128_t *)(0x28 + r19 + r8) = s0;
                    *(int128_t *)(0x2c + r19 + r8) = s1;
                    *(int128_t *)(0x58 + r19 + r8) = s2;
                    *(int128_t *)(0x5c + r19 + r8) = s3;
                    *(int128_t *)(0x10 + r19 + r8) = s4;
                    *(int128_t *)(0x14 + r19 + r8) = s5;
                    *(int128_t *)(0x40 + r19 + r8) = s6;
                    *(int128_t *)(0x44 + r19 + r8) = s7;
            }
    }
    return;
}

-(void)updateTransform {
    r31 = r31 - 0xb0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    *(int8_t *)(int64_t *)&self->_mcRenderJobIsDirty = 0x1;
    if ([self dirty] != 0x0) {
            if (*(int8_t *)(int64_t *)&r19->_visible != 0x0) {
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_parent));
                    r11 = *(r19 + r20);
                    if (r11 != 0x0 && r11 != r19->_batchNode) {
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_shouldBeHidden));
                            if (*(int8_t *)(r11 + r9) == 0x0) {
                                    *(int8_t *)(int64_t *)&r19->_shouldBeHidden = 0x0;
                                    r9 = *(r19 + r20);
                                    if (r9 != 0x0) {
                                            if (r9 != r19->_batchNode) {
                                                    [r19 nodeToParentTransform];
                                                    r8 = *(r19 + r20);
                                                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_transformToBatch));
                                                    CGAffineTransformConcat(&stack[-128], &var_A0);
                                                    *(int128_t *)(0x10 + r19 + r20) = var_30;
                                                    *(int128_t *)(0x20 + r19 + r20) = var_20;
                                                    *(int128_t *)(r19 + r20) = var_40;
                                            }
                                            else {
                                                    [r19 nodeToParentTransform];
                                                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_transformToBatch));
                                                    *(int128_t *)(r19 + r20) = var_40;
                                                    *(int128_t *)(0x10 + r19 + r20) = var_30;
                                                    *(int128_t *)(0x20 + r19 + r20) = var_20;
                                            }
                                    }
                                    else {
                                            [r19 nodeToParentTransform];
                                            r20 = sign_extend_64(*(int32_t *)ivar_offset(_transformToBatch));
                                            *(int128_t *)(r19 + r20) = var_40;
                                            *(int128_t *)(0x10 + r19 + r20) = var_30;
                                            *(int128_t *)(0x20 + r19 + r20) = var_20;
                                    }
                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_rect));
                                    asm { fcvt       s2, d2 };
                                    asm { fcvt       s3, d3 };
                                    asm { fcvt       d4, s2 };
                                    asm { fcvt       s0, d0 };
                                    asm { fcvt       d4, s3 };
                                    asm { fcvt       s1, d1 };
                                    asm { fcvt       s4, d4 };
                                    asm { fcvt       s5, d5 };
                                    asm { fcvt       s6, d6 };
                                    asm { fcvt       s7, d7 };
                                    asm { fcvt       s17, d17 };
                                    asm { fcvt       s16, d16 };
                                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_vertexZ));
                                    r10 = *(int32_t *)(r19 + r9);
                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_quad));
                                    *(int32_t *)(0x18 + r19 + r8) = (s2 * s6 - s3 * -s16) + s4;
                                    *(int32_t *)(0x1c + r19 + r8) = s5 + s2 * s7 + s3 * s17;
                                    *(int32_t *)(0x20 + r19 + r8) = r10;
                                    r10 = *(int32_t *)(r19 + r9);
                                    *(int32_t *)(0x48 + r19 + r8) = (s0 * s6 - s3 * -s16) + s4;
                                    *(int32_t *)(0x4c + r19 + r8) = s5 + s0 * s7 + s3 * s17;
                                    *(int32_t *)(0x50 + r19 + r8) = r10;
                                    r10 = *(int32_t *)(r19 + r9);
                                    *(int32_t *)(r19 + r8) = (s2 * s6 - s1 * -s16) + s4;
                                    *(int32_t *)(0x4 + r19 + r8) = s5 + s2 * s7 + s1 * s17;
                                    *(int32_t *)(0x8 + r19 + r8) = r10;
                                    r9 = *(int32_t *)(r19 + r9);
                                    *(int32_t *)(0x30 + r19 + r8) = (s0 * s6 - s1 * -s16) + s4;
                                    *(int32_t *)(0x34 + r19 + r8) = s5 + s0 * s7 + s1 * s17;
                                    *(int32_t *)(0x38 + r19 + r8) = r9;
                            }
                            else {
                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_quad));
                                    *(0x18 + r19 + r8) = 0x0;
                                    *(int32_t *)(0x20 + r19 + r8) = 0x0;
                                    *(int32_t *)(0x38 + r19 + r8) = 0x0;
                                    r11 = *(0x18 + r19 + r8);
                                    *(0x30 + r19 + r8) = r11;
                                    *(int32_t *)(0x8 + r19 + r8) = 0x0;
                                    *(r19 + r8) = r11;
                                    *(int32_t *)(0x50 + r19 + r8) = 0x0;
                                    *(0x48 + r19 + r8) = r11;
                                    *(int8_t *)(r19 + r9) = 0x1;
                            }
                    }
                    else {
                            *(int8_t *)(int64_t *)&r19->_shouldBeHidden = 0x0;
                            r9 = *(r19 + r20);
                            if (r9 != 0x0) {
                                    if (r9 != r19->_batchNode) {
                                            [r19 nodeToParentTransform];
                                            r8 = *(r19 + r20);
                                            r20 = sign_extend_64(*(int32_t *)ivar_offset(_transformToBatch));
                                            CGAffineTransformConcat(&stack[-128], &var_A0);
                                            *(int128_t *)(0x10 + r19 + r20) = var_30;
                                            *(int128_t *)(0x20 + r19 + r20) = var_20;
                                            *(int128_t *)(r19 + r20) = var_40;
                                    }
                                    else {
                                            [r19 nodeToParentTransform];
                                            r20 = sign_extend_64(*(int32_t *)ivar_offset(_transformToBatch));
                                            *(int128_t *)(r19 + r20) = var_40;
                                            *(int128_t *)(0x10 + r19 + r20) = var_30;
                                            *(int128_t *)(0x20 + r19 + r20) = var_20;
                                    }
                            }
                            else {
                                    [r19 nodeToParentTransform];
                                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_transformToBatch));
                                    *(int128_t *)(r19 + r20) = var_40;
                                    *(int128_t *)(0x10 + r19 + r20) = var_30;
                                    *(int128_t *)(0x20 + r19 + r20) = var_20;
                            }
                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_rect));
                            asm { fcvt       s2, d2 };
                            asm { fcvt       s3, d3 };
                            asm { fcvt       d4, s2 };
                            asm { fcvt       s0, d0 };
                            asm { fcvt       d4, s3 };
                            asm { fcvt       s1, d1 };
                            asm { fcvt       s4, d4 };
                            asm { fcvt       s5, d5 };
                            asm { fcvt       s6, d6 };
                            asm { fcvt       s7, d7 };
                            asm { fcvt       s17, d17 };
                            asm { fcvt       s16, d16 };
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_vertexZ));
                            r10 = *(int32_t *)(r19 + r9);
                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_quad));
                            *(int32_t *)(0x18 + r19 + r8) = (s2 * s6 - s3 * -s16) + s4;
                            *(int32_t *)(0x1c + r19 + r8) = s5 + s2 * s7 + s3 * s17;
                            *(int32_t *)(0x20 + r19 + r8) = r10;
                            r10 = *(int32_t *)(r19 + r9);
                            *(int32_t *)(0x48 + r19 + r8) = (s0 * s6 - s3 * -s16) + s4;
                            *(int32_t *)(0x4c + r19 + r8) = s5 + s0 * s7 + s3 * s17;
                            *(int32_t *)(0x50 + r19 + r8) = r10;
                            r10 = *(int32_t *)(r19 + r9);
                            *(int32_t *)(r19 + r8) = (s2 * s6 - s1 * -s16) + s4;
                            *(int32_t *)(0x4 + r19 + r8) = s5 + s2 * s7 + s1 * s17;
                            *(int32_t *)(0x8 + r19 + r8) = r10;
                            r9 = *(int32_t *)(r19 + r9);
                            *(int32_t *)(0x30 + r19 + r8) = (s0 * s6 - s1 * -s16) + s4;
                            *(int32_t *)(0x34 + r19 + r8) = s5 + s0 * s7 + s1 * s17;
                            *(int32_t *)(0x38 + r19 + r8) = r9;
                    }
            }
            else {
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_shouldBeHidden));
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_quad));
                    *(0x18 + r19 + r8) = 0x0;
                    *(int32_t *)(0x20 + r19 + r8) = 0x0;
                    *(int32_t *)(0x38 + r19 + r8) = 0x0;
                    r11 = *(0x18 + r19 + r8);
                    *(0x30 + r19 + r8) = r11;
                    *(int32_t *)(0x8 + r19 + r8) = 0x0;
                    *(r19 + r8) = r11;
                    *(int32_t *)(0x50 + r19 + r8) = 0x0;
                    *(0x48 + r19 + r8) = r11;
                    *(int8_t *)(r19 + r9) = 0x1;
            }
            [r19->_textureAtlas updateQuad:r19 + r8 atIndex:r19->_atlasIndex];
            *(int8_t *)(int64_t *)&r19->_recursiveDirty = 0x0;
            *(int8_t *)(int64_t *)&r19->_dirty = 0x0;
    }
    if (*(int8_t *)(int64_t *)&r19->_hasChildren != 0x0) {
            [r19->_children makeObjectsPerformSelector:@selector(updateTransform)];
    }
    return;
}

-(void)addChild:(void *)arg2 z:(long long)arg3 tag:(long long)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r21 = arg3;
    r22 = arg2;
    r19 = self;
    r0 = self->_batchNode;
    if (r0 != 0x0) {
            [r0 appendChild:r22];
            if (*(int8_t *)(int64_t *)&r19->_isReorderChildDirty == 0x0) {
                    [r19 setReorderChildDirtyRecursively];
            }
    }
    [[&var_30 super] addChild:r22 z:r21 tag:r20];
    *(int8_t *)(int64_t *)&r19->_hasChildren = 0x1;
    return;
}

-(void)reorderChild:(void *)arg2 z:(long long)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    if ([arg2 zOrder] != r19) {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_batchNode));
            if (*(r21 + r22) != 0x0 && *(int8_t *)(int64_t *)&r21->_isReorderChildDirty == 0x0) {
                    [r21 setReorderChildDirtyRecursively];
                    [*(r21 + r22) reorderBatch:0x1];
            }
            [[&var_30 super] reorderChild:r20 z:r19];
    }
    return;
}

-(void)removeAllChildrenWithCleanup:(bool)arg2 {
    r31 = r31 - 0x50;
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
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_batchNode));
    r0 = *(self + r22);
    if (r0 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_children));
            r8 = *(r19 + r8);
            if (r8 != 0x0) {
                    r8 = r8->data;
                    r23 = *r8;
                    if (r23 != 0x0 && r23 >= 0x1) {
                            r24 = *(r8 + 0x10);
                            [r0 removeSpriteFromAtlas:r2];
                            if (r23 != 0x1) {
                                    r23 = r24 + r23 * 0x8 - 0x8;
                                    r24 = r24 + 0x8;
                                    do {
                                            r24 = r24 + 0x8;
                                            [*(r19 + r22) removeSpriteFromAtlas:r2];
                                    } while (r24 < r23);
                            }
                    }
            }
    }
    [[&var_40 super] removeAllChildrenWithCleanup:r20];
    *(int8_t *)(int64_t *)&r19->_hasChildren = 0x0;
    return;
}

-(void)removeChild:(void *)arg2 cleanup:(bool)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r21 = arg2;
    r19 = self;
    r0 = self->_batchNode;
    if (r0 != 0x0) {
            [r0 removeSpriteFromAtlas:r21];
    }
    [[&var_30 super] removeChild:r21 cleanup:r20];
    r8 = 0x101137000;
    if (objc_msgSend(r19->_children, *(r8 + 0x410)) != 0x0) {
            r8 = 0x101137000;
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    *(int8_t *)(int64_t *)&r19->_hasChildren = r8;
    return;
}

-(void)setReorderChildDirtyRecursively {
    r0 = self;
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_isReorderChildDirty));
    if (*(int8_t *)(r0 + r8) == 0x0) {
            r19 = r0;
            *(int8_t *)(r0 + r8) = 0x1;
            r20 = r0->_parent;
            if (r20 != 0x0) {
                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_batchNode));
                    do {
                            if (r20 == *(r19 + r23)) {
                                break;
                            }
                            r22 = @selector(parent);
                            [r20 setReorderChildDirtyRecursively];
                            r0 = objc_msgSend(r20, r22);
                            r20 = r0;
                    } while (r0 != 0x0);
            }
    }
    return;
}

-(void)sortAllChildren {
    r0 = self;
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
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_isReorderChildDirty));
    if (*(int8_t *)(r0 + r9) == 0x0) goto .l1;

loc_1002c40dc:
    var_70 = r9;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_children));
    var_68 = r0;
    var_78 = r8;
    r8 = *(r0 + r8);
    r8 = r8->data;
    r9 = *r8;
    var_58 = r9;
    if (r9 < 0x2) goto loc_1002c41fc;

loc_1002c4118:
    r9 = *(r8 + 0x10);
    r24 = 0x1;
    r26 = 0x2;
    r19 = r9;
    var_60 = r9;
    goto loc_1002c4134;

loc_1002c4134:
    r21 = *(r9 + r24 * 0x8);
    r27 = r19;
    r25 = r26;
    r28 = r24;
    goto loc_1002c414c;

loc_1002c414c:
    r20 = @selector(zOrder);
    if (objc_msgSend(r21, r20) < objc_msgSend(*r27, r20)) goto loc_1002c41b8;

loc_1002c4170:
    r20 = @selector(zOrder);
    if (objc_msgSend(r21, r20) != objc_msgSend(*r27, r20)) goto loc_1002c41dc;

loc_1002c4194:
    if ([r21 orderOfArrival] >= [*r27 orderOfArrival]) goto loc_1002c41e0;

loc_1002c41b8:
    r28 = r28 - 0x1;
    *(r27 + 0x8) = *r27;
    r25 = r25 - 0x1;
    r27 = r27 - 0x8;
    if (r25 > 0x1) goto loc_1002c414c;

loc_1002c41d4:
    r28 = 0x0;
    goto loc_1002c41e0;

loc_1002c41e0:
    r9 = var_60;
    *(r9 + r28 * 0x8) = r21;
    r24 = r24 + 0x1;
    r26 = r26 + 0x1;
    r19 = r19 + 0x8;
    if (r24 != var_58) goto loc_1002c4134;

loc_1002c41fc:
    r19 = var_68;
    if (r19->_batchNode != 0x0) {
            [*(r19 + var_78) makeObjectsPerformSelector:@selector(sortAllChildren)];
    }
    *(int8_t *)(r19 + var_70) = 0x0;
    return;

.l1:
    return;

loc_1002c41dc:
    r28 = r25 - 0x1;
    goto loc_1002c41e0;
}

-(void)setPosition:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] setPosition:r2];
    if (r19->_batchNode != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_recursiveDirty));
            if (*(int8_t *)(r19 + r8) == 0x0) {
                    *(int8_t *)(r19 + r8) = 0x1;
                    *(int8_t *)(int64_t *)&r19->_dirty = 0x1;
                    if (*(int8_t *)(int64_t *)&r19->_hasChildren != 0x0) {
                            [r19 setDirtyRecursively:0x1];
                    }
            }
    }
    return;
}

-(void)setDirtyRecursively:(bool)arg2 {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    *(int8_t *)(int64_t *)&r0->_recursiveDirty = arg2;
    *(int8_t *)(int64_t *)&r0->_dirty = arg2;
    if (*(int8_t *)(int64_t *)&r0->_hasChildren != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_children));
            r8 = *(r0 + r8);
            if (r8 != 0x0) {
                    r8 = r8->data;
                    r9 = *r8;
                    if (r9 != 0x0) {
                            r20 = *(r8 + 0x10);
                            r21 = r20 + r9 * 0x8 - 0x8;
                            if (r20 <= r21) {
                                    do {
                                            r0 = *r20;
                                            r20 = r20 + 0x8;
                                            [r0 setDirtyRecursively:r2];
                                    } while (r20 < r21);
                            }
                    }
            }
    }
    return;
}

-(void)setRotation:(float)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] setRotation:arg2];
    if (r19->_batchNode != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_recursiveDirty));
            if (*(int8_t *)(r19 + r8) == 0x0) {
                    *(int8_t *)(r19 + r8) = 0x1;
                    *(int8_t *)(int64_t *)&r19->_dirty = 0x1;
                    if (*(int8_t *)(int64_t *)&r19->_hasChildren != 0x0) {
                            [r19 setDirtyRecursively:0x1];
                    }
            }
    }
    return;
}

-(void)setRotationX:(float)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] setRotationX:arg2];
    if (r19->_batchNode != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_recursiveDirty));
            if (*(int8_t *)(r19 + r8) == 0x0) {
                    *(int8_t *)(r19 + r8) = 0x1;
                    *(int8_t *)(int64_t *)&r19->_dirty = 0x1;
                    if (*(int8_t *)(int64_t *)&r19->_hasChildren != 0x0) {
                            [r19 setDirtyRecursively:0x1];
                    }
            }
    }
    return;
}

-(void)setRotationY:(float)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] setRotationY:arg2];
    if (r19->_batchNode != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_recursiveDirty));
            if (*(int8_t *)(r19 + r8) == 0x0) {
                    *(int8_t *)(r19 + r8) = 0x1;
                    *(int8_t *)(int64_t *)&r19->_dirty = 0x1;
                    if (*(int8_t *)(int64_t *)&r19->_hasChildren != 0x0) {
                            [r19 setDirtyRecursively:0x1];
                    }
            }
    }
    return;
}

-(void)setSkewX:(float)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] setSkewX:arg2];
    if (r19->_batchNode != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_recursiveDirty));
            if (*(int8_t *)(r19 + r8) == 0x0) {
                    *(int8_t *)(r19 + r8) = 0x1;
                    *(int8_t *)(int64_t *)&r19->_dirty = 0x1;
                    if (*(int8_t *)(int64_t *)&r19->_hasChildren != 0x0) {
                            [r19 setDirtyRecursively:0x1];
                    }
            }
    }
    return;
}

-(void)setScaleX:(float)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] setScaleX:arg2];
    if (r19->_batchNode != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_recursiveDirty));
            if (*(int8_t *)(r19 + r8) == 0x0) {
                    *(int8_t *)(r19 + r8) = 0x1;
                    *(int8_t *)(int64_t *)&r19->_dirty = 0x1;
                    if (*(int8_t *)(int64_t *)&r19->_hasChildren != 0x0) {
                            [r19 setDirtyRecursively:0x1];
                    }
            }
    }
    return;
}

-(void)setSkewY:(float)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] setSkewY:arg2];
    if (r19->_batchNode != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_recursiveDirty));
            if (*(int8_t *)(r19 + r8) == 0x0) {
                    *(int8_t *)(r19 + r8) = 0x1;
                    *(int8_t *)(int64_t *)&r19->_dirty = 0x1;
                    if (*(int8_t *)(int64_t *)&r19->_hasChildren != 0x0) {
                            [r19 setDirtyRecursively:0x1];
                    }
            }
    }
    return;
}

-(void)setScaleY:(float)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] setScaleY:arg2];
    if (r19->_batchNode != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_recursiveDirty));
            if (*(int8_t *)(r19 + r8) == 0x0) {
                    *(int8_t *)(r19 + r8) = 0x1;
                    *(int8_t *)(int64_t *)&r19->_dirty = 0x1;
                    if (*(int8_t *)(int64_t *)&r19->_hasChildren != 0x0) {
                            [r19 setDirtyRecursively:0x1];
                    }
            }
    }
    return;
}

-(void)setScale:(float)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] setScale:arg2];
    if (r19->_batchNode != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_recursiveDirty));
            if (*(int8_t *)(r19 + r8) == 0x0) {
                    *(int8_t *)(r19 + r8) = 0x1;
                    *(int8_t *)(int64_t *)&r19->_dirty = 0x1;
                    if (*(int8_t *)(int64_t *)&r19->_hasChildren != 0x0) {
                            [r19 setDirtyRecursively:0x1];
                    }
            }
    }
    return;
}

-(void)setVertexZ:(float)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] setVertexZ:arg2];
    if (r19->_batchNode != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_recursiveDirty));
            if (*(int8_t *)(r19 + r8) == 0x0) {
                    *(int8_t *)(r19 + r8) = 0x1;
                    *(int8_t *)(int64_t *)&r19->_dirty = 0x1;
                    if (*(int8_t *)(int64_t *)&r19->_hasChildren != 0x0) {
                            [r19 setDirtyRecursively:0x1];
                    }
            }
    }
    return;
}

-(void)setAnchorPoint:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] setAnchorPoint:r2];
    if (r19->_batchNode != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_recursiveDirty));
            if (*(int8_t *)(r19 + r8) == 0x0) {
                    *(int8_t *)(r19 + r8) = 0x1;
                    *(int8_t *)(int64_t *)&r19->_dirty = 0x1;
                    if (*(int8_t *)(int64_t *)&r19->_hasChildren != 0x0) {
                            [r19 setDirtyRecursively:0x1];
                    }
            }
    }
    return;
}

-(void)setIgnoreAnchorPointForPosition:(bool)arg2 {
    [[&var_10 super] setIgnoreAnchorPointForPosition:arg2];
    return;
}

-(bool)flipX {
    r0 = *(int8_t *)(int64_t *)&self->_flipX;
    return r0;
}

-(void)setVisible:(bool)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] setVisible:arg2];
    if (r19->_batchNode != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_recursiveDirty));
            if (*(int8_t *)(r19 + r8) == 0x0) {
                    *(int8_t *)(r19 + r8) = 0x1;
                    *(int8_t *)(int64_t *)&r19->_dirty = 0x1;
                    if (*(int8_t *)(int64_t *)&r19->_hasChildren != 0x0) {
                            [r19 setDirtyRecursively:0x1];
                    }
            }
    }
    return;
}

-(void)setFlipX:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_flipX));
    if (*(int8_t *)(r0 + r8) != r2) {
            *(int8_t *)(r0 + r8) = r2;
            r2 = *(int8_t *)(int64_t *)&r0->_rectRotated;
            [r0 setTextureRect:r2 rotated:r3 untrimmedSize:r4];
    }
    return;
}

-(void)setFlipY:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_flipY));
    if (*(int8_t *)(r0 + r8) != r2) {
            *(int8_t *)(r0 + r8) = r2;
            r2 = *(int8_t *)(int64_t *)&r0->_rectRotated;
            [r0 setTextureRect:r2 rotated:r3 untrimmedSize:r4];
    }
    return;
}

-(bool)flipY {
    r0 = *(int8_t *)(int64_t *)&self->_flipY;
    return r0;
}

-(void)setColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    [[&var_20 super] setColor:r2 & 0xffffffff];
    [self updateColor];
    return;
}

-(void)updateColor {
    r0 = self;
    *(int8_t *)(int64_t *)&r0->_mcRenderJobIsDirty = 0x1;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_displayedColor));
    r11 = *(int8_t *)(r0 + r8);
    r10 = *(int8_t *)(0x1 + r0 + r8);
    r9 = *(int8_t *)(0x2 + r0 + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_displayedOpacity));
    r8 = *(int8_t *)(r0 + r8);
    if (*(int8_t *)(int64_t *)&r0->_opacityModifyRGB != 0x0) {
            asm { ucvtf      s0, w8 };
            s1 = 0x437f0000;
            asm { fdiv       s0, s0, s1 };
            asm { ucvtf      s1, w11 };
            s1 = s0 * s1;
            asm { fcvtzs     w11, s1 };
            asm { ucvtf      s1, w10 };
            asm { fcvtzs     w10, s1 };
            asm { ucvtf      s1, w9 };
            asm { fcvtzs     w9, s0 };
    }
    r12 = sign_extend_64(*(int32_t *)ivar_offset(_quad));
    *(int8_t *)(0x24 + r0 + r12) = r11;
    *(int8_t *)(0x25 + r0 + r12) = r10;
    *(int8_t *)(0x26 + r0 + r12) = r9;
    *(int8_t *)(0x27 + r0 + r12) = r8;
    *(int8_t *)(0x54 + r0 + r12) = r11;
    *(int8_t *)(0x55 + r0 + r12) = r10;
    *(int8_t *)(0x56 + r0 + r12) = r9;
    *(int8_t *)(0x57 + r0 + r12) = r8;
    *(int8_t *)(0xc + r0 + r12) = r11;
    *(int8_t *)(0xd + r0 + r12) = r10;
    *(int8_t *)(0xe + r0 + r12) = r9;
    *(int8_t *)(0xf + r0 + r12) = r8;
    *(int8_t *)(0x3c + r0 + r12) = r11;
    *(int8_t *)(0x3d + r0 + r12) = r10;
    *(int8_t *)(0x3e + r0 + r12) = r9;
    *(int8_t *)(0x3f + r0 + r12) = r8;
    if (r0->_batchNode != 0x0) {
            if (r0->_atlasIndex == 0xffffffffffffffff) {
                    *(int8_t *)(int64_t *)&r0->_dirty = 0x1;
            }
            else {
                    [r0->_textureAtlas updateQuad:r2 atIndex:r3];
            }
    }
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

-(void)updateDisplayedEmission:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    [[&var_20 super] updateDisplayedEmission:r2 & 0xffffffff];
    [self updateEmission];
    return;
}

-(void)updateEmission {
    r31 = r31 - 0x50;
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
                            r19->_mcEmissionOldShader = *((int64_t *)&r19->_mcRenderJob + 0x140);
                            sub_100292530();
                            sub_1002c1c28(&var_38, [r19->_emissionShaderName UTF8String]);
                            r0 = sub_10037ec20(r20, &var_38);
                            *((int64_t *)&r19->_mcRenderJob + 0x140) = r0;
                            if ((sign_extend_64(var_21) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_38);
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

-(void)setDisplayFrame:(void *)arg2 {
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
    r20 = arg2;
    r19 = self;
    [arg2 offset];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_unflippedOffsetPositionFromCenter));
    *(r19 + r8) = d0;
    *(0x8 + r19 + r8) = d1;
    r0 = [r20 texture];
    r21 = r0;
    if ([r0 name] != [r19->_texture name]) {
            [r19 setTexture:r2];
    }
    r0 = [r20 rotated];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_rectRotated));
    *(int8_t *)(r19 + r21) = r0;
    [r20 rect];
    r21 = *(int8_t *)(r19 + r21);
    [r20 originalSize];
    [r19 setTextureRect:r21 rotated:r3 untrimmedSize:r4];
    return;
}

-(void)setDisplayFrameWithAnimationName:(void *)arg2 index:(int)arg3 {
    r21 = self;
    r0 = [CCAnimationCache sharedAnimationCache];
    r2 = arg2;
    r0 = [r0 animationByName:r2];
    r0 = [r0 frames];
    asm { sxtw       x2, w19 };
    [r21 setDisplayFrame:[[r0 objectAtIndex:r2] spriteFrame]];
    return;
}

-(bool)isFrameDisplayed:(void *)arg2 {
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
    r0 = [arg2 rect];
    r0 = CGRectEqualToRect(r0, @selector(rect));
    if (r0 != 0x0) {
            if ([[r20 texture] name] == [[r19 texture] name]) {
                    [r20 offset];
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_unflippedOffsetPositionFromCenter));
                    r8 = r19 + r8;
                    d2 = *(int128_t *)r8;
                    d3 = *(int128_t *)(r8 + 0x8);
                    if (d0 == d2) {
                            if (CPU_FLAGS & E) {
                                    r8 = 0x1;
                            }
                    }
                    if (d1 == d3) {
                            if (CPU_FLAGS & E) {
                                    r9 = 0x1;
                            }
                    }
                    r0 = r8 & r9;
            }
            else {
                    r0 = 0x0;
            }
    }
    return r0;
}

-(void *)displayFrame {
    r0 = self;
    r8 = @class(CCSpriteFrame);
    r2 = r0->_texture;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_rect));
    r9 = r0 + r9;
    asm { fcvt       d7, s0 };
    r3 = *(int8_t *)(int64_t *)&r0->_rectRotated;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_unflippedOffsetPositionFromCenter));
    r0 = [r8 frameWithTexture:r2 rectInPixels:r3 rotated:r4 offset:r5 originalSize:r6];
    return r0;
}

-(void)setTexture:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r0->_batchNode == 0x0) {
            r20 = r2;
            r19 = r0;
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_texture));
            r0 = *(r0 + r21);
            if (r0 != r2) {
                    [r0 release];
                    *(r19 + r21) = [r20 retain];
                    [r19 updateBlendFunc];
            }
    }
    return;
}

-(void)updateBlendFunc {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = self->_texture;
    if (r0 != 0x0) {
            r0 = [r0 hasPremultipliedAlpha];
            r2 = r0;
            if (r0 == 0x0) {
                    asm { csinc      w20, w20, wzr, eq };
            }
    }
    else {
            r2 = 0x0;
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_blendFunc));
    *(int128_t *)(r19 + r8) = 0x302;
    *(int128_t *)(0x4 + r19 + r8) = 0x303;
    [r19 setOpacityModifyRGB:r2];
    return;
}

-(void *)texture {
    r0 = self->_texture;
    return r0;
}

-(bool)dirty {
    r0 = *(int8_t *)(int64_t *)&self->_dirty;
    return r0;
}

-(void)setDirty:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_dirty = arg2;
    return;
}

-(struct _ccV3F_C4B_T2F_Quad)quad {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_quad));
    q0 = *(int128_t *)(r0 + r9);
    q1 = *(int128_t *)(0x10 + r0 + r9);
    *(int128_t *)r8 = q0;
    *(int128_t *)(r8 + 0x10) = q1;
    q0 = *(int128_t *)(0x20 + r0 + r9);
    q1 = *(int128_t *)(0x30 + r0 + r9);
    q2 = *(int128_t *)(0x40 + r0 + r9);
    q3 = *(int128_t *)(0x50 + r0 + r9);
    *(int128_t *)(r8 + 0x40) = q2;
    *(int128_t *)(r8 + 0x50) = q3;
    *(int128_t *)(r8 + 0x20) = q0;
    *(int128_t *)(r8 + 0x30) = q1;
    return r0;
}

-(unsigned long long)atlasIndex {
    r0 = self->_atlasIndex;
    return r0;
}

-(void)setAtlasIndex:(unsigned long long)arg2 {
    self->_atlasIndex = arg2;
    return;
}

-(bool)textureRectRotated {
    r0 = *(int8_t *)(int64_t *)&self->_rectRotated;
    return r0;
}

-(struct CGRect)textureRect {
    r0 = self;
    return r0;
}

-(struct _ccBlendFunc)blendFunc {
    r0 = self->_blendFunc;
    return r0;
}

-(void)setBlendFunc:(struct _ccBlendFunc)arg2 {
    memcpy(&r2, &arg2, 0x8);
    self->_blendFunc = r2;
    return;
}

-(void *)textureAtlas {
    r0 = self->_textureAtlas;
    return r0;
}

-(void)setTextureAtlas:(void *)arg2 {
    self->_textureAtlas = arg2;
    return;
}

-(struct CGPoint)offsetPosition {
    r0 = self;
    return r0;
}

-(void *)emissionShaderName {
    r0 = self->_emissionShaderName;
    return r0;
}

-(void)setEmissionShaderName:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

+(void *)spriteWithBatchNode:(void *)arg2 rect:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self spriteWithTexture:[arg2 texture] rect:r3];
    [r0 setBatchNode:arg2];
    r0 = r0;
    return r0;
}

-(void *)initWithBatchNode:(void *)arg2 rect:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self initWithTexture:[arg2 texture] rect:r3];
    [r0 setBatchNode:arg2];
    r0 = r0;
    return r0;
}

-(void *)displayedFrame {
    r0 = [self displayFrame];
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
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffa0 - 0x250;
    r19 = self;
    if ([[CCConfiguration sharedConfiguration] useNewRenderer] == 0x0) goto loc_1002c2d10;

loc_1002c2c10:
    r0 = sub_1003812ec();
    r24 = (int64_t *)&r19->_mcRenderJob;
    *(int32_t *)(r24 + 0x18) = r0;
    *(int32_t *)(r24 + 0x1c) = sub_1003812ec();
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_mcRenderJobIsDirty));
    if (*(int8_t *)(r19 + r8) == 0x0) goto loc_1002c3534;

loc_1002c2c50:
    *(int8_t *)(r19 + r8) = 0x0;
    *(int128_t *)((r29 - 0xf0) + 0x78) = q0;
    *(int128_t *)((r29 - 0xf0) + 0x68) = q0;
    *(int128_t *)((r29 - 0xf0) + 0x58) = q0;
    *(int128_t *)((r29 - 0xf0) + 0x48) = q0;
    *(int128_t *)((r29 - 0xf0) + 0x38) = q0;
    *(int128_t *)((r29 - 0xf0) + 0x28) = q0;
    *(int128_t *)((r29 - 0xf0) + 0x18) = q0;
    *(int128_t *)((r29 - 0xf0) + 0x8) = q0;
    r25 = (int64_t *)&r19->_quad;
    sub_1002c3ae0((r29 - 0xf0) + 0x78, r29 - 0x100);
    sub_1002c3ae0((r29 - 0xf0) + 0x78, r29 - 0x100);
    sub_1002c3ae0((r29 - 0xf0) + 0x78, r29 - 0x100);
    sub_1002c3ae0((r29 - 0xf0) + 0x78, r29 - 0x100);
    var_298 = (r29 - 0xf0) + 0x60;
    r28 = *(int128_t *)(r25 + 0x10);
    r27 = *(int128_t *)(r25 + 0x14);
    r9 = var_88;
    r8 = var_80;
    if (r9 >= r8) goto loc_1002c2e54;

loc_1002c2d00:
    *(int128_t *)r9 = r28;
    *(int128_t *)(r9 + 0x4) = r27;
    r20 = r9 + 0x8;
    goto loc_1002c2eec;

loc_1002c2eec:
    r28 = *(int128_t *)(r25 + 0x28);
    r27 = *(int128_t *)(r25 + 0x2c);
    r8 = var_80;
    if (r20 >= r8) goto loc_1002c2f08;

loc_1002c2efc:
    *(int128_t *)r20 = r28;
    *(int128_t *)(r20 + 0x4) = r27;
    r20 = r20 + 0x8;
    goto loc_1002c2fa0;

loc_1002c2fa0:
    r28 = *(int128_t *)(r25 + 0x40);
    r27 = *(int128_t *)(r25 + 0x44);
    r8 = var_80;
    if (r20 >= r8) goto loc_1002c2fbc;

loc_1002c2fb0:
    *(int128_t *)r20 = r28;
    *(int128_t *)(r20 + 0x4) = r27;
    r20 = r20 + 0x8;
    goto loc_1002c3054;

loc_1002c3054:
    r27 = *(int128_t *)(r25 + 0x58);
    r23 = *(int128_t *)(r25 + 0x5c);
    r8 = var_80;
    if (r20 >= r8) goto loc_1002c3074;

loc_1002c3064:
    *(int128_t *)r20 = r27;
    *(int128_t *)(r20 + 0x4) = r23;
    goto loc_1002c3108;

loc_1002c3108:
    r20 = (r29 - 0xf0) + 0x8;
    r27 = var_E0;
    r26 = var_D8;
    if (r27 >= r26) goto loc_1002c3128;

loc_1002c311c:
    *(int16_t *)r27 = 0x0;
    r27 = r27 + 0x2;
    goto loc_1002c31b4;

loc_1002c31b4:
    if (r27 >= r26) goto loc_1002c31cc;

loc_1002c31bc:
    *(int16_t *)r27 = 0x1;
    r27 = r27 + 0x2;
    goto loc_1002c325c;

loc_1002c325c:
    if (r27 >= r26) goto loc_1002c3274;

loc_1002c3264:
    *(int16_t *)r27 = 0x2;
    r27 = r27 + 0x2;
    goto loc_1002c3304;

loc_1002c3304:
    if (r27 >= r26) goto loc_1002c331c;

loc_1002c330c:
    *(int16_t *)r27 = 0x3;
    goto loc_1002c33a8;

loc_1002c33a8:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_texture));
    r8 = *(r19 + r8);
    if (r8 != 0x0) {
            r9 = *(int128_t *)(int64_t *)&r8->MCTexturePointer;
            r8 = *(int128_t *)((int64_t *)&r8->MCTexturePointer + 0x8);
            if (r8 != 0x0) {
                    r10 = r8 + 0x8;
                    do {
                            asm { ldxr       x11, [x10] };
                            r11 = r11 + 0x1;
                            asm { stxr       w12, x11, [x10] };
                    } while (r12 != 0x0);
            }
            r20 = var_C8;
            var_C8 = r8;
            if (r20 != 0x0) {
                    do {
                            asm { ldaxr      x9, [x8] };
                            r10 = r9 - 0x1;
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r20 + 0x10))(r20);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
    }
    sub_1002c3c5c((r29 - 0xf0) + 0x48, r29 - 0x100);
    sub_1002c3c5c((r29 - 0xf0) + 0x48, r29 - 0x100);
    sub_1002c3c5c((r29 - 0xf0) + 0x48, r29 - 0x100);
    r9 = *(int32_t *)(r25 + 0x50);
    sub_1002c3c5c((r29 - 0xf0) + 0x48, r29 - 0x100);
    sub_100382ea4(r24 + 0x40, r29 - 0xf0);
    r0 = var_78;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    r0 = var_90;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    r0 = var_A8;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    r0 = var_C0;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    r20 = var_C8;
    if (r20 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    r10 = r9 - 0x1;
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r20 + 0x10))(r20);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    r0 = var_E8;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    goto loc_1002c3534;

loc_1002c3534:
    var_F0 = q0;
    var_E0 = q0;
    if (*(int8_t *)(int64_t *)&r19->_emissionEnabled == 0x0) goto loc_1002c377c;

loc_1002c3554:
    r20 = *(r24 + 0x140);
    r0 = sub_1002c1c28(&var_118, "u_emission");
    r1 = &var_118;
    r0 = sub_100382990(r20, r1);
    r21 = r0;
    r10 = ((r21 << 0x3) + 0x8 ^ r0 / 0x1) * 0x9ddfea08eb382d69 ^ r0 / 0x1;
    r23 = ((r10 ^ ((r21 << 0x3) + 0x8 ^ r0 / 0x1) * 0x9ddfea08eb382d69 / 0x8000) * 0x9ddfea08eb382d69 ^ (r10 ^ ((r21 << 0x3) + 0x8 ^ r0 / 0x1) * 0x9ddfea08eb382d69 / 0x8000) * 0x9ddfea08eb382d69 / 0x8000) * 0x9ddfea08eb382d69;
    r22 = var_E8;
    if (r22 == 0x0) goto loc_1002c364c;

loc_1002c35b4:
    asm { cnt        v0.8b, v0.8b };
    asm { uaddlv     h0, v0.8b };
    r8 = s0;
    if (r8 >= 0x1) {
            r25 = r23;
            if (r23 >= r22) {
                    r9 = 0x9ddfea08eb382d69;
                    asm { udiv       x9, x23, x22 };
                    r25 = r23 - r9 * r22;
            }
    }
    else {
            r25 = r22 - 0x1 & r23;
    }
    r9 = *(var_F0 + r25 * 0x8);
    if (r9 == 0x0) goto loc_1002c364c;

loc_1002c35fc:
    r10 = r22 - 0x1;
    goto loc_1002c3600;

loc_1002c3600:
    r9 = *r9;
    if (r9 == 0x0) goto loc_1002c364c;

loc_1002c3608:
    r11 = *(r9 + 0x8);
    if (r11 == r23) goto loc_1002c363c;

loc_1002c3614:
    if (r8 >= 0x1) {
            if (r11 >= r22) {
                    asm { udiv       x12, x11, x22 };
                    r11 = r11 - r12 * r22;
            }
    }
    else {
            r11 = r11 & r10;
    }
    if (r11 != r25) goto loc_1002c364c;

loc_1002c363c:
    r11 = *(r9 + 0x10);
    if (r11 != r21) goto loc_1002c3600;

loc_1002c376c:
    if ((sign_extend_64(var_101) & 0xffffffff80000000) != 0x0) {
            operator delete(var_118);
    }
    goto loc_1002c377c;

loc_1002c377c:
    r8 = &var_290;
    *(r8 + 0x128) = *(r24 + 0x128);
    r9 = *(r24 + 0x130);
    var_160 = r9;
    if (r9 != 0x0) {
            do {
                    asm { ldxr       x10, [x9] };
                    r10 = r10 + 0x1;
                    asm { stxr       w11, x10, [x9] };
            } while (r11 != 0x0);
    }
    r9 = *(int32_t *)(r24 + 0x138);
    r1 = r24 + 0x150;
    sub_1002c5700(r8 + 0x150, r1);
    sub_1003805bc(&var_290);
    sub_1002c59fc(&var_290 + 0x150);
    r19 = var_160;
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
    loc_100381804(&var_290 + 0xe8, r1);
    loc_100381804(&var_290 + 0xb0, r1);
    loc_100381804(&var_290 + 0x78, r1);
    loc_100381804(&var_290 + 0x40, r1);
    sub_1002c59fc(r29 - 0xf0);
    return;

loc_1002c364c:
    var_D0 = 0x3f800000;
    r0 = operator new();
    r20 = r0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_emissionColor));
    *(int128_t *)(r0 + 0x10) = r21;
    *(int128_t *)(r0 + 0x18) = r19 + r8;
    *(int128_t *)r0 = 0x0;
    *(int128_t *)(r0 + 0x8) = r23;
    r8 = var_D8 + 0x1;
    asm { ucvtf      s0, x8 };
    s1 = var_D0;
    if (r22 != 0x0) {
            asm { ucvtf      s2, x22 };
            if (s1 * s2 < s0) {
                    if (r22 < 0x3) {
                            if (CPU_FLAGS & B) {
                                    r8 = 0x1;
                            }
                    }
                    r9 = r22 - 0x1;
                    if ((r22 & r9) != 0x0) {
                            if (CPU_FLAGS & NE) {
                                    r9 = 0x1;
                            }
                    }
                    r8 = r8 | r9;
                    asm { bfi        x8, x22, #0x1, #0x3f };
                    asm { fdiv       s0, s0, s1 };
                    asm { fcvtpu     x9, s0 };
                    if (r8 < r9) {
                            if (!CPU_FLAGS & B) {
                                    r1 = r8;
                            }
                            else {
                                    r1 = r9;
                            }
                    }
                    sub_10029941c(r29 - 0xf0, r1);
                    r22 = var_E8;
                    r8 = r22 - 0x1;
                    if ((r22 & r8) != 0x0) {
                            if (r23 < r22) {
                                    r25 = r23;
                            }
                            else {
                                    asm { udiv       x8, x23, x22 };
                                    r25 = r23 - r8 * r22;
                            }
                    }
                    else {
                            r25 = r8 & r23;
                    }
            }
    }
    else {
            if (r22 < 0x3) {
                    if (CPU_FLAGS & B) {
                            r8 = 0x1;
                    }
            }
            r9 = r22 - 0x1;
            if ((r22 & r9) != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r9 = 0x1;
                    }
            }
            r8 = r8 | r9;
            asm { bfi        x8, x22, #0x1, #0x3f };
            asm { fdiv       s0, s0, s1 };
            asm { fcvtpu     x9, s0 };
            if (r8 < r9) {
                    if (!CPU_FLAGS & B) {
                            r1 = r8;
                    }
                    else {
                            r1 = r9;
                    }
            }
            sub_10029941c(r29 - 0xf0, r1);
            r22 = var_E8;
            r8 = r22 - 0x1;
            if ((r22 & r8) != 0x0) {
                    if (r23 < r22) {
                            r25 = r23;
                    }
                    else {
                            asm { udiv       x8, x23, x22 };
                            r25 = r23 - r8 * r22;
                    }
            }
            else {
                    r25 = r8 & r23;
            }
    }
    r9 = var_F0;
    r8 = *(r9 + r25 * 0x8);
    if (r8 == 0x0) goto loc_1002c370c;

loc_1002c3700:
    *r20 = *r8;
    goto loc_1002c375c;

loc_1002c375c:
    *r8 = r20;
    goto loc_1002c376c;

loc_1002c370c:
    r10 = var_E0;
    *r20 = r10;
    *(r9 + r25 * 0x8) = (r29 - 0xf0) + 0x10;
    r8 = *r20;
    if (r8 == 0x0) goto loc_1002c376c;

loc_1002c372c:
    r8 = *(r8 + 0x8);
    r9 = r22 - 0x1;
    if ((r22 & r9) != 0x0) {
            if (r8 >= r22) {
                    asm { udiv       x9, x8, x22 };
                    r8 = r8 - r9 * r22;
            }
    }
    else {
            r8 = r8 & r9;
    }
    r8 = var_F0 + r8 * 0x8;
    goto loc_1002c375c;

loc_1002c331c:
    r21 = var_E8;
    r22 = r27 - r21;
    if (r22 <= -0x3) goto loc_1002c3928;

loc_1002c332c:
    r23 = SAR(r22, 0x1);
    r8 = r23 + 0x1;
    r9 = r26 - r21;
    if (r9 < r8) {
            if (!CPU_FLAGS & B) {
                    r8 = r9;
            }
            else {
                    r8 = r8;
            }
    }
    if (0x3fffffffffffffff > r9 / 0x2) {
            if (!CPU_FLAGS & A) {
                    r26 = 0x7fffffffffffffff;
            }
            else {
                    r26 = r8;
            }
    }
    if (r26 == 0x0) goto loc_1002c3368;

loc_1002c3354:
    if ((r26 & 0xffffffff80000000) != 0x0) goto loc_1002c396c;

loc_1002c3358:
    r20 = operator new();
    goto loc_1002c336c;

loc_1002c336c:
    r27 = r20 + r23 * 0x2;
    r23 = r20 + r26 * 0x2;
    *(int16_t *)r27 = 0x3;
    r27 = r27 + 0x2;
    if (r22 >= 0x1) {
            memcpy(r20, r21, r22);
    }
    r10 = 0x3fffffffffffffff;
    var_E8 = r20;
    var_D8 = r23;
    if (r21 != 0x0) {
            r10 = 0x3fffffffffffffff;
            operator delete(r21);
    }
    goto loc_1002c33a8;

loc_1002c396c:
    sub_1002c5984();
    return;

loc_1002c3368:
    r20 = 0x0;
    goto loc_1002c336c;

loc_1002c3928:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002c3274:
    r21 = var_E8;
    r22 = r27 - r21;
    if (r22 <= -0x3) goto loc_1002c391c;

loc_1002c3284:
    r27 = SAR(r22, 0x1);
    r8 = r27 + 0x1;
    r9 = r26 - r21;
    if (r9 < r8) {
            if (!CPU_FLAGS & B) {
                    r8 = r9;
            }
            else {
                    r8 = r8;
            }
    }
    if (0x3fffffffffffffff > r9 / 0x2) {
            if (!CPU_FLAGS & A) {
                    r26 = 0x7fffffffffffffff;
            }
            else {
                    r26 = r8;
            }
    }
    if (r26 == 0x0) goto loc_1002c32c0;

loc_1002c32ac:
    if ((r26 & 0xffffffff80000000) != 0x0) goto loc_1002c3964;

loc_1002c32b0:
    r23 = operator new();
    goto loc_1002c32c4;

loc_1002c32c4:
    r26 = r23 + r26 * 0x2;
    *(int16_t *)(r23 + r27 * 0x2) = 0x2;
    r27 = 0x2 + r23 + r27 * 0x2;
    if (r22 >= 0x1) {
            memcpy(r23, r21, r22);
    }
    r10 = 0x3fffffffffffffff;
    var_E8 = r23;
    var_E0 = r27;
    var_D8 = r26;
    if (r21 != 0x0) {
            r10 = 0x3fffffffffffffff;
            operator delete(r21);
            r27 = var_E0;
            r26 = var_D8;
    }
    goto loc_1002c3304;

loc_1002c3964:
    sub_1002c5984();
    return;

loc_1002c32c0:
    r23 = 0x0;
    goto loc_1002c32c4;

loc_1002c391c:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002c31cc:
    r21 = var_E8;
    r22 = r27 - r21;
    if (r22 <= -0x3) goto loc_1002c3910;

loc_1002c31dc:
    r27 = SAR(r22, 0x1);
    r8 = r27 + 0x1;
    r9 = r26 - r21;
    if (r9 < r8) {
            if (!CPU_FLAGS & B) {
                    r8 = r9;
            }
            else {
                    r8 = r8;
            }
    }
    if (0x3fffffffffffffff > r9 / 0x2) {
            if (!CPU_FLAGS & A) {
                    r26 = 0x7fffffffffffffff;
            }
            else {
                    r26 = r8;
            }
    }
    if (r26 == 0x0) goto loc_1002c3218;

loc_1002c3204:
    if ((r26 & 0xffffffff80000000) != 0x0) goto loc_1002c395c;

loc_1002c3208:
    r23 = operator new();
    goto loc_1002c321c;

loc_1002c321c:
    r26 = r23 + r26 * 0x2;
    *(int16_t *)(r23 + r27 * 0x2) = 0x1;
    r27 = 0x2 + r23 + r27 * 0x2;
    if (r22 >= 0x1) {
            memcpy(r23, r21, r22);
    }
    r10 = 0x3fffffffffffffff;
    var_E8 = r23;
    var_E0 = r27;
    var_D8 = r26;
    if (r21 != 0x0) {
            r10 = 0x3fffffffffffffff;
            operator delete(r21);
            r27 = var_E0;
            r26 = var_D8;
    }
    goto loc_1002c325c;

loc_1002c395c:
    sub_1002c5984();
    return;

loc_1002c3218:
    r23 = 0x0;
    goto loc_1002c321c;

loc_1002c3910:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002c3128:
    r21 = var_E8;
    r22 = r27 - r21;
    if (r22 <= -0x3) goto loc_1002c3904;

loc_1002c3138:
    r27 = SAR(r22, 0x1);
    r8 = r27 + 0x1;
    r9 = r26 - r21;
    if (r9 < r8) {
            if (!CPU_FLAGS & B) {
                    r8 = r9;
            }
            else {
                    r8 = r8;
            }
    }
    if (0x3fffffffffffffff > r9 / 0x2) {
            if (!CPU_FLAGS & A) {
                    r26 = 0x7fffffffffffffff;
            }
            else {
                    r26 = r8;
            }
    }
    if (r26 == 0x0) goto loc_1002c3174;

loc_1002c3160:
    if ((r26 & 0xffffffff80000000) != 0x0) goto loc_1002c3954;

loc_1002c3164:
    r23 = operator new();
    goto loc_1002c3178;

loc_1002c3178:
    r26 = r23 + r26 * 0x2;
    *(int16_t *)(r23 + r27 * 0x2) = 0x0;
    r27 = 0x2 + r23 + r27 * 0x2;
    if (r22 >= 0x1) {
            memcpy(r23, r21, r22);
    }
    r10 = 0x3fffffffffffffff;
    var_E8 = r23;
    var_E0 = r27;
    var_D8 = r26;
    if (r21 != 0x0) {
            r10 = 0x3fffffffffffffff;
            operator delete(r21);
            r27 = var_E0;
            r26 = var_D8;
    }
    goto loc_1002c31b4;

loc_1002c3954:
    sub_1002c5984();
    return;

loc_1002c3174:
    r23 = 0x0;
    goto loc_1002c3178;

loc_1002c3904:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002c3074:
    r21 = var_90;
    r22 = r20 - r21;
    r28 = SAR(r22, 0x3);
    r9 = r28 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_1002c38f8;

loc_1002c308c:
    r8 = r8 - r21;
    r10 = SAR(r8, 0x2);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    if (0xfffffffffffffff > r8 / 0x8) {
            if (!CPU_FLAGS & A) {
                    r26 = 0x1fffffffffffffff;
            }
            else {
                    r26 = r9;
            }
    }
    if (r26 == 0x0) goto loc_1002c30c8;

loc_1002c30b0:
    if (r26 >> 0x3d != 0x0) goto loc_1002c394c;

loc_1002c30b8:
    r20 = operator new();
    goto loc_1002c30cc;

loc_1002c30cc:
    r26 = r20 + r26 * 0x8;
    *(int128_t *)(r20 + r28 * 0x8) = r27;
    *(int128_t *)(0x4 + r20 + r28 * 0x8) = r23;
    r23 = 0x8 + r20 + r28 * 0x8;
    if (r22 >= 0x1) {
            memcpy(r20, r21, r22);
    }
    r10 = 0xfffffffffffffff;
    var_90 = r20;
    if (r21 != 0x0) {
            r10 = 0xfffffffffffffff;
            operator delete(r21);
    }
    goto loc_1002c3108;

loc_1002c394c:
    sub_1002c5984();
    return;

loc_1002c30c8:
    r20 = 0x0;
    goto loc_1002c30cc;

loc_1002c38f8:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002c2fbc:
    r21 = var_90;
    r22 = r20 - r21;
    r20 = SAR(r22, 0x3);
    r9 = r20 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_1002c38ec;

loc_1002c2fd4:
    r8 = r8 - r21;
    r10 = SAR(r8, 0x2);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    if (0xfffffffffffffff > r8 / 0x8) {
            if (!CPU_FLAGS & A) {
                    r26 = 0x1fffffffffffffff;
            }
            else {
                    r26 = r9;
            }
    }
    if (r26 == 0x0) goto loc_1002c3010;

loc_1002c2ff8:
    if (r26 >> 0x3d != 0x0) goto loc_1002c3944;

loc_1002c3000:
    r23 = operator new();
    goto loc_1002c3014;

loc_1002c3014:
    r26 = r23 + r26 * 0x8;
    *(int128_t *)(r23 + r20 * 0x8) = r28;
    *(int128_t *)(0x4 + r23 + r20 * 0x8) = r27;
    r20 = 0x8 + r23 + r20 * 0x8;
    if (r22 >= 0x1) {
            memcpy(r23, r21, r22);
    }
    r10 = 0xfffffffffffffff;
    var_90 = r23;
    var_88 = r20;
    var_80 = r26;
    if (r21 != 0x0) {
            r10 = 0xfffffffffffffff;
            operator delete(r21);
            r20 = var_88;
    }
    goto loc_1002c3054;

loc_1002c3944:
    sub_1002c5984();
    return;

loc_1002c3010:
    r23 = 0x0;
    goto loc_1002c3014;

loc_1002c38ec:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002c2f08:
    r21 = var_90;
    r22 = r20 - r21;
    r20 = SAR(r22, 0x3);
    r9 = r20 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_1002c38e0;

loc_1002c2f20:
    r8 = r8 - r21;
    r10 = SAR(r8, 0x2);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    if (0xfffffffffffffff > r8 / 0x8) {
            if (!CPU_FLAGS & A) {
                    r26 = 0x1fffffffffffffff;
            }
            else {
                    r26 = r9;
            }
    }
    if (r26 == 0x0) goto loc_1002c2f5c;

loc_1002c2f44:
    if (r26 >> 0x3d != 0x0) goto loc_1002c393c;

loc_1002c2f4c:
    r23 = operator new();
    goto loc_1002c2f60;

loc_1002c2f60:
    r26 = r23 + r26 * 0x8;
    *(int128_t *)(r23 + r20 * 0x8) = r28;
    *(int128_t *)(0x4 + r23 + r20 * 0x8) = r27;
    r20 = 0x8 + r23 + r20 * 0x8;
    if (r22 >= 0x1) {
            memcpy(r23, r21, r22);
    }
    r10 = 0xfffffffffffffff;
    var_90 = r23;
    var_88 = r20;
    var_80 = r26;
    if (r21 != 0x0) {
            r10 = 0xfffffffffffffff;
            operator delete(r21);
            r20 = var_88;
    }
    goto loc_1002c2fa0;

loc_1002c393c:
    sub_1002c5984();
    return;

loc_1002c2f5c:
    r23 = 0x0;
    goto loc_1002c2f60;

loc_1002c38e0:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002c2e54:
    r21 = var_90;
    r22 = r9 - r21;
    r20 = SAR(r22, 0x3);
    r9 = r20 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_1002c38d4;

loc_1002c2e6c:
    r8 = r8 - r21;
    r10 = SAR(r8, 0x2);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    if (0xfffffffffffffff > r8 / 0x8) {
            if (!CPU_FLAGS & A) {
                    r26 = 0x1fffffffffffffff;
            }
            else {
                    r26 = r9;
            }
    }
    if (r26 == 0x0) goto loc_1002c2ea8;

loc_1002c2e90:
    if (r26 >> 0x3d != 0x0) goto loc_1002c3934;

loc_1002c2e98:
    r23 = operator new();
    goto loc_1002c2eac;

loc_1002c2eac:
    r26 = r23 + r26 * 0x8;
    *(int128_t *)(r23 + r20 * 0x8) = r28;
    *(int128_t *)(0x4 + r23 + r20 * 0x8) = r27;
    r20 = 0x8 + r23 + r20 * 0x8;
    if (r22 >= 0x1) {
            memcpy(r23, r21, r22);
    }
    r10 = 0xfffffffffffffff;
    var_90 = r23;
    var_88 = r20;
    var_80 = r26;
    if (r21 != 0x0) {
            r10 = 0xfffffffffffffff;
            operator delete(r21);
            r20 = var_88;
    }
    goto loc_1002c2eec;

loc_1002c3934:
    sub_1002c5984();
    return;

loc_1002c2ea8:
    r23 = 0x0;
    goto loc_1002c2eac;

loc_1002c38d4:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002c2d10:
    sub_10031a6c4();
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_shaderProgram));
    [*(r19 + r21) use];
    [*(r19 + r21) setUniformsForBuiltins];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_blendFunc));
    sub_10031a4a8(*(int128_t *)(r19 + r8), *(int128_t *)(0x4 + r19 + r8));
    [r19->_texture bind];
    sub_10031a6f0(0x7);
    glVertexAttribPointer(0x0, 0x3, 0x1406, 0x0, 0x18, (int64_t *)&r19->_quad);
    glVertexAttribPointer(0x2, 0x2, 0x1406, 0x0, 0x18, (int64_t *)&r19->_quad + 0x10);
    glVertexAttribPointer(0x1, 0x4, 0x1401, 0x1, 0x18, (int64_t *)&r19->_quad + 0xc);
    if (*(int8_t *)(int64_t *)&r19->_emissionEnabled != 0x0) {
            [*(r19 + r21) setUniformLocation:r2 with4fv:r3 count:r4];
    }
    [r19 calculateCustomShaderUniform];
    glDrawArrays(0x5, 0x0, 0x4);
    *0x1011e2dd0 = *0x1011e2dd0 + 0x1;
    return;
}

@end