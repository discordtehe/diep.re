@implementation CCMotionStreak

+(void *)streakWithFade:(float)arg2 minSeg:(float)arg3 width:(float)arg4 color:(struct _ccColorThreeB)arg5 textureFilename:(void *)arg6 {
    memcpy(&r5, &arg5, 0x4);
    r0 = [self alloc];
    r0 = [r0 initWithFade:arg2 & 0xffffffff minSeg:arg3 width:arg4 color:r5 textureFilename:r6];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)streakWithFade:(float)arg2 minSeg:(float)arg3 width:(float)arg4 color:(struct _ccColorThreeB)arg5 texture:(void *)arg6 {
    memcpy(&r5, &arg5, 0x4);
    r0 = [self alloc];
    r0 = [r0 initWithFade:arg2 & 0xffffffff minSeg:arg3 width:arg4 color:r5 texture:r6];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithFade:(float)arg2 minSeg:(float)arg3 width:(float)arg4 color:(struct _ccColorThreeB)arg5 textureFilename:(void *)arg6 {
    memcpy(&r5, &arg5, 0x4);
    r0 = [self initWithFade:arg2 & 0xffffffff minSeg:[[CCTextureCache sharedTextureCache] addImage:arg3] width:arg4 color:r5 texture:r6];
    return r0;
}

-(void)setPosition:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(int8_t *)(int64_t *)&self->_startingPositionInitialized = 0x1;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_positionR));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(void *)initWithFade:(float)arg2 minSeg:(float)arg3 width:(float)arg4 color:(struct _ccColorThreeB)arg5 texture:(void *)arg6 {
    memcpy(&r5, &arg5, 0x4);
    r31 = r31 - 0xa0;
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
    r21 = arg3;
    r19 = arg2;
    r0 = [[&var_60 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r23 = *_CGPointZero;
            [[&var_70 super] setPosition:r2];
            [r20 setAnchorPoint:r2];
            [r20 setIgnoreAnchorPointForPosition:0x1];
            *(int8_t *)(int64_t *)&r20->_startingPositionInitialized = 0x0;
            *(int128_t *)(int64_t *)&r20->_positionR = *(int128_t *)r23;
            *(int8_t *)(int64_t *)&r20->_fastMode = 0x1;
            asm { fdiv       s0, s9, s0 };
            if (s10 == 0xbff0000000000000) {
                    asm { fcsel      s0, s0, s10, eq };
            }
            *(int32_t *)(int64_t *)&r20->_minSeg = 0x0;
            *(int32_t *)(int64_t *)&r20->_stroke = s9;
            s0 = 0x3ff0000000000000;
            asm { fdiv       s0, s0, s8 };
            *(int32_t *)(int64_t *)&r20->_fadeDelta = s0;
            r8 = 0x42700000;
            asm { fcvtzs     w8, s0 };
            r8 = r8 + 0x2;
            asm { sxtw       x8, w8 };
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_maxPoints));
            *(r20 + r22) = r8;
            r20->_previousNuPoints = 0x0;
            r20->_nuPoints = 0x0;
            r20->_pointState = malloc(*(r20 + r22) << 0x2);
            r20->_pointVertexes = malloc(*(r20 + r22) << 0x4);
            r20->_vertices = malloc(*(r20 + r22) << 0x4);
            r20->_texCoords = malloc(*(r20 + r22) << 0x4);
            r20->_colorPointer = malloc(*(r20 + r22) << 0x3);
            r20->_blendFunc = *0x100ba36a8;
            if ([[CCConfiguration sharedConfiguration] useNewRenderer] != 0x0) {
                    sub_100292530();
                    sub_1002eb8bc(&var_88, [@"ShaderPositionTextureColor" UTF8String]);
                    r0 = sub_10037ec20(r22, &var_88);
                    *((int64_t *)&r20->_mcRenderJob + 0x140) = r0;
                    if ((sign_extend_64(var_71) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_88);
                    }
                    *(int8_t *)(int64_t *)&r20->_mcRenderJobIsDirty = 0x1;
            }
            else {
                    [r20 setShaderProgram:[[CCShaderCache sharedShaderCache] programForKey:@"ShaderPositionTextureColor"]];
            }
            [r20 setTexture:r21];
            [r20 setColor:r19 & 0xffffffff];
            [r20 scheduleUpdate];
    }
    r0 = r20;
    return r0;
}

-(void)tintWithColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r2;
    r20 = self;
    [self setColor:r2 & 0xffffffff];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_nuPoints));
    if ((*(r20 + r8) & 0x7fffffffffffffff) != 0x0) {
            r9 = 0x0;
            r10 = 0x0;
            r11 = sign_extend_64(*(int32_t *)ivar_offset(_colorPointer));
            do {
                    *(int32_t *)(*(r20 + r11) + (r9 & 0xfffffffc)) = r19;
                    r10 = r10 + 0x1;
                    r9 = r9 + 0x4;
            } while (r10 < *(r20 + r8) * 0x2);
    }
    return;
}

-(void)setOpacity:(unsigned char)arg2 {
    return;
}

-(unsigned char)opacity {
    return 0x0;
}

-(void)reset {
    self->_nuPoints = 0x0;
    return;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self->_texture release];
    free(r19->_pointState);
    free(r19->_pointVertexes);
    free(r19->_vertices);
    free(r19->_colorPointer);
    free(r19->_texCoords);
    if ([[CCConfiguration sharedConfiguration] useNewRenderer] != 0x0) {
            sub_1003830ac((int64_t *)&r19->_mcRenderJob + 0x40);
    }
    [[&var_20 super] dealloc];
    return;
}

-(void *)texture {
    r0 = self->_texture;
    return r0;
}

-(void)setTexture:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
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

-(void)update:(double)arg2 {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_startingPositionInitialized != 0x0) {
            r19 = r0;
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_nuPoints));
            r17 = *(r0 + r20);
            if (r17 != 0x0) {
                    r9 = 0x0;
                    r10 = 0x0;
                    r8 = 0x0;
                    asm { fcvt       d1, s1 };
                    d0 = d1 * d0;
                    r11 = 0x6;
                    r12 = sign_extend_64(*(int32_t *)ivar_offset(_pointState));
                    do {
                            r0 = *(r19 + r12);
                            s1 = *(int32_t *)(r0 + r10 * 0x4);
                            asm { fcvt       d1, s1 };
                            d1 = d1 - d0;
                            asm { fcvt       s1, d1 };
                            *(int32_t *)(r0 + r10 * 0x4) = s1;
                            if (s1 >= 0x0) {
                                    if (r8 != 0x0) {
                                            *(int32_t *)((r0 - r8 * 0x4) + r10 * 0x4) = s1;
                                            r17 = sign_extend_64(*(int32_t *)ivar_offset(_pointVertexes));
                                            r17 = *(r19 + r17);
                                            *(int128_t *)((r17 - r8 * 0x10) + r9) = *(int128_t *)(r17 + r9);
                                            r17 = sign_extend_64(*(int32_t *)ivar_offset(_vertices));
                                            r0 = *(r19 + r17);
                                            *((r0 - r8 * 0x10) + r9) = *(r0 + r9);
                                            r17 = *(r19 + r17);
                                            *(0x8 + (r17 - r8 * 0x10) + r9) = *(0x8 + r17 + r9);
                                            r17 = sign_extend_64(*(int32_t *)ivar_offset(_colorPointer));
                                            r0 = *(r19 + r17);
                                            *(int8_t *)(0xfffffffffffffffa + (r0 - r8 * 0x8) + r11) = *(int8_t *)(0xfffffffffffffffa + r0 + r11);
                                            r0 = *(r19 + r17);
                                            *(int8_t *)(0xfffffffffffffffb + (r0 - r8 * 0x8) + r11) = *(int8_t *)(0xfffffffffffffffb + r0 + r11);
                                            r0 = *(r19 + r17);
                                            *(int8_t *)(0xfffffffffffffffc + (r0 - r8 * 0x8) + r11) = *(int8_t *)(0xfffffffffffffffc + r0 + r11);
                                            r0 = *(r19 + r17);
                                            *(int8_t *)(0xfffffffffffffffe + (r0 - r8 * 0x8) + r11) = *(int8_t *)(0xfffffffffffffffe + r0 + r11);
                                            r0 = *(r19 + r17);
                                            *(int8_t *)(0xffffffffffffffff + (r0 - r8 * 0x8) + r11) = *(int8_t *)(0xffffffffffffffff + r0 + r11);
                                            r0 = *(r19 + r17);
                                            r1 = r10 - r8 << 0x3;
                                            *(int8_t *)((r0 - r8 * 0x8) + r11) = *(int8_t *)(r0 + r11);
                                            r0 = *(r19 + r12);
                                    }
                                    else {
                                            r1 = r11 - r8 * 0x8 - 0x6;
                                            r17 = sign_extend_64(*(int32_t *)ivar_offset(_colorPointer));
                                    }
                                    r0 = r0 - r8 * 0x4;
                                    asm { fcvtzs     w0, s1 };
                                    *(int8_t *)(*(r19 + r17) + (r1 | 0x3)) = r0;
                                    *(int8_t *)(*(r19 + r17) + (r1 | 0x7)) = r0;
                                    r17 = *(r19 + r20);
                            }
                            else {
                                    r8 = r8 + 0x1;
                            }
                            r10 = r10 + 0x1;
                            r11 = r11 + 0x8;
                            r9 = r9 + 0x10;
                    } while (r10 < r17);
            }
            else {
                    r8 = 0x0;
            }
            r3 = r17 - r8;
            *(r19 + r20) = r3;
            if (r3 < r19->_maxPoints) {
                    if (r3 != 0x0) {
                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_pointVertexes));
                            r8 = r19 + r8;
                            r9 = *r8;
                            r11 = r9 + r3 * 0x10;
                            d0 = *(int128_t *)(r11 + 0xfffffffffffffff0);
                            d1 = *(int128_t *)(r11 + 0xfffffffffffffff8);
                            r10 = sign_extend_64(*(int32_t *)ivar_offset(_positionR));
                            d2 = *(int128_t *)(r19 + r10);
                            d3 = *(int128_t *)(0x8 + r19 + r10);
                            d1 = (d1 - d3) * (d1 - d3);
                            d0 = (d0 - d2) * (d0 - d2) + d1;
                            s4 = *(int32_t *)(int64_t *)&r19->_minSeg;
                            asm { fcvt       d1, s4 };
                            if (r3 == 0x1) {
                                    r11 = 0x0;
                            }
                            else {
                                    d5 = *(int128_t *)(r11 + 0xffffffffffffffe0);
                                    d6 = *(int128_t *)(r11 + 0xffffffffffffffe8);
                                    d3 = (d6 - d3) * (d6 - d3);
                                    d2 = (d5 - d2) * (d5 - d2) + d3;
                                    asm { fcvt       d3, s3 };
                                    if (d2 < d3) {
                                            if (CPU_FLAGS & S) {
                                                    r11 = 0x1;
                                            }
                                    }
                            }
                            if (d0 >= d1 && (r11 & 0x1) == 0x0) {
                                    *(int128_t *)(r9 + r3 * 0x10) = *(int128_t *)(r19 + r10);
                                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_pointState));
                                    r9 = *(r19 + r9);
                                    r10 = *(r19 + r20);
                                    *(int32_t *)(r9 + r10 * 0x4) = 0x3f800000;
                                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_displayedColor));
                                    r11 = sign_extend_64(*(int32_t *)ivar_offset(_colorPointer));
                                    *(int32_t *)(*(r19 + r11) + (r10 << 0x3)) = *(int32_t *)(r19 + r9);
                                    *(int32_t *)(0x4 + *(r19 + r11) + r10 * 0x8) = *(int32_t *)(r19 + r9);
                                    r9 = *(r19 + r11);
                                    r12 = 0x3;
                                    asm { bfi        x12, x10, #0x3, #0x3d };
                                    r13 = 0xff;
                                    *(int8_t *)(r9 + r12) = r13;
                                    r9 = *(r19 + r11);
                                    r11 = 0x7;
                                    asm { bfi        x11, x10, #0x3, #0x3d };
                                    *(int8_t *)(r9 + r11) = r13;
                                    r2 = *(r19 + r20);
                                    if (r2 != 0x0 && *(int8_t *)(int64_t *)&r19->_fastMode != 0x0) {
                                            s0 = *(int32_t *)(int64_t *)&r19->_stroke;
                                            r0 = *r8;
                                            r1 = r19->_vertices;
                                            if (r2 >= 0x2) {
                                                    r3 = 0x1;
                                            }
                                            else {
                                                    r2 = 0x0;
                                                    r3 = 0x2;
                                            }
                                            sub_100310db8(r0, r1, r2, r3);
                                    }
                                    r3 = *(r19 + r20) + 0x1;
                                    *(r19 + r20) = r3;
                            }
                    }
                    else {
                            r10 = sign_extend_64(*(int32_t *)ivar_offset(_positionR));
                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_pointVertexes));
                            r8 = r19 + r8;
                            r9 = *r8;
                            *(int128_t *)(r9 + r3 * 0x10) = *(int128_t *)(r19 + r10);
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_pointState));
                            r9 = *(r19 + r9);
                            r10 = *(r19 + r20);
                            *(int32_t *)(r9 + r10 * 0x4) = 0x3f800000;
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_displayedColor));
                            r11 = sign_extend_64(*(int32_t *)ivar_offset(_colorPointer));
                            *(int32_t *)(*(r19 + r11) + (r10 << 0x3)) = *(int32_t *)(r19 + r9);
                            *(int32_t *)(0x4 + *(r19 + r11) + r10 * 0x8) = *(int32_t *)(r19 + r9);
                            r9 = *(r19 + r11);
                            r12 = 0x3;
                            asm { bfi        x12, x10, #0x3, #0x3d };
                            r13 = 0xff;
                            *(int8_t *)(r9 + r12) = r13;
                            r9 = *(r19 + r11);
                            r11 = 0x7;
                            asm { bfi        x11, x10, #0x3, #0x3d };
                            *(int8_t *)(r9 + r11) = r13;
                            r2 = *(r19 + r20);
                            if (r2 != 0x0 && *(int8_t *)(int64_t *)&r19->_fastMode != 0x0) {
                                    s0 = *(int32_t *)(int64_t *)&r19->_stroke;
                                    r0 = *r8;
                                    r1 = r19->_vertices;
                                    if (r2 >= 0x2) {
                                            r3 = 0x1;
                                    }
                                    else {
                                            r2 = 0x0;
                                            r3 = 0x2;
                                    }
                                    sub_100310db8(r0, r1, r2, r3);
                            }
                            r3 = *(r19 + r20) + 0x1;
                            *(r19 + r20) = r3;
                    }
            }
            if (*(int8_t *)(int64_t *)&r19->_fastMode == 0x0) {
                    r0 = r19->_pointVertexes;
                    s0 = *(int32_t *)(int64_t *)&r19->_stroke;
                    sub_100310db8(r0, r19->_vertices, 0x0, r3);
                    r3 = *(r19 + r20);
            }
            if (r3 != 0x0) {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_previousNuPoints));
                    if (*(r19 + r8) != r3) {
                            r9 = 0x0;
                            r10 = 0x0;
                            asm { ucvtf      s0, x3 };
                            s1 = 0x3ff0000000000000;
                            asm { fdiv       s0, s1, s0 };
                            r11 = sign_extend_64(*(int32_t *)ivar_offset(_texCoords));
                            do {
                                    r12 = 0x3f800000;
                                    asm { ucvtf      s1, x10 };
                                    s1 = s0 * s1;
                                    r13 = *(r19 + r11);
                                    *(int32_t *)(r13 + r9) = 0x0;
                                    *(int32_t *)(0x4 + r13 + r9) = s1;
                                    r13 = *(r19 + r11);
                                    *(int32_t *)(0x8 + r13 + r9) = r12;
                                    *(int32_t *)(0xc + r13 + r9) = s1;
                                    r10 = r10 + 0x1;
                                    r13 = *(r19 + r20);
                                    r9 = r9 + 0x10;
                            } while (r10 < r13);
                            *(r19 + r8) = r13;
                    }
            }
    }
    return;
}

-(bool)isFastMode {
    r0 = *(int8_t *)(int64_t *)&self->_fastMode;
    return r0;
}

-(void)setFastMode:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_fastMode = arg2;
    return;
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
    r31 = r31 + 0xffffffffffffffa0 - 0x240;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_nuPoints));
    if (*(r0 + r26) < 0x2) goto .l32;

loc_1002ebe7c:
    r19 = r0;
    r0 = [CCConfiguration sharedConfiguration];
    r1 = @selector(useNewRenderer);
    if (objc_msgSend(r0, r1) == 0x0) goto loc_1002ebf60;

loc_1002ebea4:
    if (*(int8_t *)(int64_t *)&r19->_mcRenderJobIsDirty == 0x0) goto loc_1002ec400;

loc_1002ebebc:
    var_60 = 0x0;
    *(int128_t *)((r29 - 0xe8) + 0x78) = q0;
    *(int128_t *)((r29 - 0xe8) + 0x68) = q0;
    *(int128_t *)((r29 - 0xe8) + 0x58) = q0;
    *(int128_t *)((r29 - 0xe8) + 0x48) = q0;
    *(int128_t *)((r29 - 0xe8) + 0x38) = q0;
    *(int128_t *)((r29 - 0xe8) + 0x28) = q0;
    *(int128_t *)((r29 - 0xe8) + 0x18) = q0;
    *(int128_t *)((r29 - 0xe8) + 0x8) = q0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_texture));
    r8 = *(r19 + r8);
    r9 = *(int128_t *)(int64_t *)&r8->MCTexturePointer;
    r8 = *(int128_t *)((int64_t *)&r8->MCTexturePointer + 0x8);
    if (r8 != 0x0) {
            r10 = r8 + 0x8;
            do {
                    asm { ldxr       x11, [x10] };
                    r11 = r11 + 0x1;
                    asm { stxr       w12, x11, [x10] };
            } while (r12 != 0x0);
            r20 = var_C0;
            var_C0 = r8;
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
    else {
            var_C0 = r8;
    }
    if ((*(r19 + r26) & 0x7fffffffffffffff) == 0x0) goto loc_1002ec354;

loc_1002ec07c:
    r28 = 0x0;
    var_270 = r19;
    var_268 = sign_extend_64(*(int32_t *)ivar_offset(_colorPointer));
    var_278 = (r29 - 0xe8) + 0x78;
    var_288 = (r29 - 0xe8) + 0x60;
    var_280 = (r29 - 0xe8) + 0x30;
    goto loc_1002ec0a4;

loc_1002ec0a4:
    r8 = *(r19 + var_268);
    r25 = *(int8_t *)(r8 + (r28 << 0x2 << r1));
    r22 = *(int8_t *)(r8 + (r28 << 0x2 | 0x1));
    r10 = r28 << 0x2 | 0x2;
    r27 = *(int8_t *)(r8 + r10);
    r21 = *(int8_t *)(r8 + (r28 << 0x2 | 0x3));
    r23 = var_68;
    r8 = var_60;
    if (r23 >= r8) goto loc_1002ec0f4;

loc_1002ec0d8:
    *(int8_t *)r23 = r25;
    *(int8_t *)(r23 + 0x1) = r22;
    *(int8_t *)(r23 + 0x2) = r27;
    *(int8_t *)(r23 + 0x3) = r21;
    var_68 = r23 + 0x4;
    goto loc_1002ec1bc;

loc_1002ec1bc:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_vertices));
    r8 = *(r19 + r8);
    r22 = *(int128_t *)(r8 + r28 * 0x8);
    r21 = *(int128_t *)(0x4 + r8 + r28 * 0x8);
    r9 = var_B0;
    r8 = var_A8;
    if (r9 >= r8) goto loc_1002ec1ec;

loc_1002ec1dc:
    *(int128_t *)r9 = r22;
    *(int128_t *)(r9 + 0x4) = r21;
    var_B0 = r9 + 0x8;
    goto loc_1002ec280;

loc_1002ec280:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_texCoords));
    r8 = *(r19 + r8);
    r22 = *(int128_t *)(r8 + r28 * 0x8);
    r21 = *(int128_t *)(0x4 + r8 + r28 * 0x8);
    r9 = var_80;
    r8 = var_78;
    if (r9 >= r8) goto loc_1002ec2b0;

loc_1002ec2a0:
    *(int128_t *)r9 = r22;
    *(int128_t *)(r9 + 0x4) = r21;
    var_80 = r9 + 0x8;
    goto loc_1002ec344;

loc_1002ec344:
    r28 = r28 + 0x1;
    if (r28 < *(r19 + r26) * 0x2) goto loc_1002ec0a4;

loc_1002ec354:
    sub_100382ea4((int64_t *)&r19->_mcRenderJob + 0x40, r29 - 0xe8);
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
                    r10 = r9 - 0x1;
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
    goto loc_1002ec400;

loc_1002ec400:
    r0 = sub_1003812ec();
    r19 = (int64_t *)&r19->_mcRenderJob;
    *(int32_t *)(r19 + 0x18) = r0;
    *(int32_t *)(r19 + 0x1c) = sub_1003812ec();
    r8 = &var_260;
    *(r8 + 0x128) = *(r19 + 0x128);
    r9 = *(r19 + 0x130);
    var_130 = r9;
    if (r9 != 0x0) {
            do {
                    asm { ldxr       x10, [x9] };
                    r10 = r10 + 0x1;
                    asm { stxr       w11, x10, [x9] };
            } while (r11 != 0x0);
    }
    r9 = *(int32_t *)(r19 + 0x138);
    r1 = r19 + 0x150;
    sub_1002c5700(r8 + 0x150, r1);
    sub_1003805bc(&var_260);
    sub_1002c59fc(&var_260 + 0x150);
    r19 = var_130;
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
    loc_100381804(&var_260 + 0xe8, r1);
    loc_100381804(&var_260 + 0xb0, r1);
    loc_100381804(&var_260 + 0x78, r1);
    loc_100381804(&var_260 + 0x40, r1);
    return;

.l32:
    return;

loc_1002ec2b0:
    r23 = var_88;
    r24 = r9 - r23;
    r27 = SAR(r24, 0x3);
    r9 = r27 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_1002ec594;

loc_1002ec2c8:
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
    if (0xfffffffffffffff > r8 / 0x8) {
            if (!CPU_FLAGS & A) {
                    r20 = 0x1fffffffffffffff;
            }
            else {
                    r20 = r9;
            }
    }
    if (r20 == 0x0) goto loc_1002ec304;

loc_1002ec2ec:
    if (r20 >> 0x3d != 0x0) goto loc_1002ec5b0;

loc_1002ec2f4:
    r25 = operator new();
    goto loc_1002ec308;

loc_1002ec308:
    r20 = r25 + r20 * 0x8;
    *(int128_t *)(r25 + r27 * 0x8) = r22;
    *(int128_t *)(0x4 + r25 + r27 * 0x8) = r21;
    r21 = 0x8 + r25 + r27 * 0x8;
    if (r24 >= 0x1) {
            r1 = r23;
            memcpy(r25, r1, r24);
    }
    r10 = 0xfffffffffffffff;
    var_88 = r25;
    var_80 = r21;
    var_78 = r20;
    if (r23 != 0x0) {
            r10 = 0xfffffffffffffff;
            operator delete(r23);
    }
    goto loc_1002ec344;

loc_1002ec5b0:
    sub_1002ec804();
    return;

loc_1002ec304:
    r25 = 0x0;
    goto loc_1002ec308;

loc_1002ec594:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002ec1ec:
    r23 = var_B8;
    r24 = r9 - r23;
    r27 = SAR(r24, 0x3);
    r9 = r27 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_1002ec588;

loc_1002ec204:
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
    if (0xfffffffffffffff > r8 / 0x8) {
            if (!CPU_FLAGS & A) {
                    r20 = 0x1fffffffffffffff;
            }
            else {
                    r20 = r9;
            }
    }
    if (r20 == 0x0) goto loc_1002ec240;

loc_1002ec228:
    if (r20 >> 0x3d != 0x0) goto loc_1002ec5a8;

loc_1002ec230:
    r25 = operator new();
    goto loc_1002ec244;

loc_1002ec244:
    r20 = r25 + r20 * 0x8;
    *(int128_t *)(r25 + r27 * 0x8) = r22;
    *(int128_t *)(0x4 + r25 + r27 * 0x8) = r21;
    r21 = 0x8 + r25 + r27 * 0x8;
    if (r24 >= 0x1) {
            r1 = r23;
            memcpy(r25, r1, r24);
    }
    r10 = 0xfffffffffffffff;
    var_B8 = r25;
    var_B0 = r21;
    var_A8 = r20;
    if (r23 != 0x0) {
            r10 = 0xfffffffffffffff;
            operator delete(r23);
    }
    goto loc_1002ec280;

loc_1002ec5a8:
    sub_1002ec804();
    return;

loc_1002ec240:
    r25 = 0x0;
    goto loc_1002ec244;

loc_1002ec588:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002ec0f4:
    r24 = var_70;
    r20 = SAR(r23 - r24, 0x2);
    r9 = r20 + 0x1;
    if (r9 >> 0x3e != 0x0) goto loc_1002ec57c;

loc_1002ec10c:
    r19 = r26;
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
    if (0x1fffffffffffffff > r8 / 0x4) {
            if (!CPU_FLAGS & A) {
                    r26 = 0x3fffffffffffffff;
            }
            else {
                    r26 = r9;
            }
    }
    if (r26 == 0x0) goto loc_1002ec148;

loc_1002ec134:
    if (r26 >> 0x3e != 0x0) goto loc_1002ec5a0;

loc_1002ec13c:
    r0 = operator new();
    goto loc_1002ec14c;

loc_1002ec14c:
    r8 = r0 + r20 * 0x4;
    *(int8_t *)r8 = r25;
    *(int8_t *)(r8 + 0x1) = r22;
    r9 = r0 + r26 * 0x4;
    *(int8_t *)(r8 + 0x2) = r27;
    *(int8_t *)(r8 + 0x3) = r21;
    r10 = r8 + 0x4;
    r26 = r19;
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
    r19 = var_270;
    var_70 = r8;
    var_68 = r10;
    var_60 = r9;
    if (r23 != 0x0) {
            operator delete(r23);
    }
    goto loc_1002ec1bc;

loc_1002ec5a0:
    sub_1002ec804();
    return;

loc_1002ec148:
    r0 = 0x0;
    goto loc_1002ec14c;

loc_1002ec57c:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002ebf60:
    sub_10031a6c4();
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_shaderProgram));
    [*(r19 + r20) use];
    [*(r19 + r20) setUniformsForBuiltins];
    sub_10031a6f0(0x7);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_blendFunc));
    sub_10031a4a8(*(int128_t *)(r19 + r8), *(int128_t *)(0x4 + r19 + r8));
    [r19->_texture bind];
    glVertexAttribPointer(0x0, 0x2, 0x1406, 0x0, 0x0, r19->_vertices);
    glVertexAttribPointer(0x2, 0x2, 0x1406, 0x0, 0x0, r19->_texCoords);
    glVertexAttribPointer(0x1, 0x4, 0x1401, 0x1, 0x0, r19->_colorPointer);
    glDrawArrays(0x5, 0x0, *(int32_t *)(r19 + r26) << 0x1);
    *0x1011e2dd0 = *0x1011e2dd0 + 0x1;
    return;
}

@end