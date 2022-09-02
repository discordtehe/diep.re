@implementation CCParticleSystemQuad

-(void *)initWithTotalParticles:(unsigned long long)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithTotalParticles:arg2];
    r19 = r0;
    if (r0 != 0x0) {
            if (([r19 allocMemory] & 0x1) != 0x0) {
                    [r19 initIndices];
                    [r19 initVBOandVAO];
                    if ([[CCConfiguration sharedConfiguration] useNewRenderer] != 0x0) {
                            sub_100292530();
                            sub_1002d87cc(&var_38, [@"ShaderPositionTextureColor" UTF8String]);
                            r0 = sub_10037ec20(r20, &var_38);
                            r20 = (int64_t *)&r19->_mcRenderJob;
                            *(r20 + 0x140) = r0;
                            if ((sign_extend_64(var_21) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_38);
                            }
                            q0 = *(int128_t *)0x1011e2ea0;
                            q1 = *(int128_t *)0x1011e2eb0;
                            q2 = *(int128_t *)0x1011e2ec0;
                            q3 = *(int128_t *)0x1011e2ed0;
                            *(int128_t *)(r20 + 0x20) = q2;
                            *(int128_t *)(r20 + 0x30) = q3;
                            *(int128_t *)r20 = q0;
                            *(int128_t *)(r20 + 0x10) = q1;
                            *(int8_t *)(int64_t *)&r19->_mcRenderJobIsDirty = 0x1;
                    }
                    else {
                            [r19 setShaderProgram:[[CCShaderCache sharedShaderCache] programForKey:@"ShaderPositionTextureColor"]];
                    }
            }
            else {
                    [r19 release];
                    r19 = 0x0;
            }
    }
    r0 = r19;
    return r0;
}

-(bool)allocMemory {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_totalParticles));
    r8 = *(self + r8);
    r0 = calloc(r8 + r8 * 0x2 << 0x5, 0x1);
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_quads));
    *(r19 + r22) = r0;
    r0 = calloc(r8 + r8 * 0x2 << 0x2, 0x1);
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_indices));
    *(r19 + r21) = r0;
    r8 = *(r19 + r22);
    if (r0 != 0x0) {
            asm { ccmp       x8, #0x0, #0x4, ne };
    }
    r20 = 0x1;
    if (!CPU_FLAGS & NE) {
            if (r8 != 0x0) {
                    free(r8);
                    r0 = *(r19 + r21);
            }
            if (r0 != 0x0) {
                    free(r0);
            }
            r20 = 0x0;
    }
    r0 = r20;
    return r0;
}

-(void)setTotalParticles:(unsigned long long)arg2 {
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
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_allocatedParticles));
    if (*(self + r26) >= arg2) goto loc_1002d89e0;

loc_1002d8940:
    r22 = r20 * 0x78;
    r21 = r20 + r20 * 0x2 << 0x2;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_particles));
    r23 = realloc(*(r19 + r25), r22);
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_quads));
    r24 = realloc(*(r19 + r28), r20 + r20 * 0x2 << 0x5);
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_indices));
    r0 = *(r19 + r27);
    r0 = realloc(r0, r21);
    if (r23 != 0x0) {
            asm { ccmp       x24, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { ccmp       x0, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) goto loc_1002d89f4;

loc_1002d89ac:
    if (r23 != 0x0) {
            *(r19 + r25) = r23;
    }
    if (r24 != 0x0) {
            *(r19 + r28) = r24;
    }
    if (r0 != 0x0) {
            *(r19 + r27) = r0;
    }
    return;

loc_1002d89f4:
    *(r19 + r25) = r23;
    *(r19 + r28) = r24;
    *(r19 + r27) = r0;
    bzero(*(r19 + r25), r22);
    bzero(*(r19 + r27), r21);
    *(r19 + r26) = r20;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_totalParticles));
    *(r19 + r8) = r20;
    if (r19->_batchNode != 0x0) {
            r9 = 0x0;
            r10 = *(r19 + r25);
            r10 = r10 + 0x58;
            do {
                    *r10 = r9;
                    r10 = r10 + 0x78;
                    r9 = r9 + 0x1;
            } while (*(r19 + r8) > r9);
    }
    [r19 initIndices];
    glDeleteBuffers(0x2, (int64_t *)&r19->_buffersVBO);
    r19->_buffersVBO = 0x0;
    glDeleteVertexArraysOES();
    sub_10031a660(0x0);
    [r19 initVBOandVAO];
    goto loc_1002d8ab8;

loc_1002d8ab8:
    [r19 resetSystem];
    return;

loc_1002d89e0:
    r19->_totalParticles = r20;
    goto loc_1002d8ab8;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (self->_batchNode == 0x0) {
            free(r19->_quads);
            free(r19->_indices);
            glDeleteBuffers(0x2, (int64_t *)&r19->_buffersVBO);
            r19->_buffersVBO = 0x0;
            glDeleteVertexArraysOES();
            sub_10031a660(0x0);
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)initVBOandVAO {
    glGenVertexArraysOES();
    sub_10031a660(*(int32_t *)(int64_t *)&self->_VAOname);
    glGenBuffers(0x2, (int64_t *)&self->_buffersVBO);
    glBindBuffer(0x8892, *(int32_t *)(int64_t *)&self->_buffersVBO);
    r8 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_totalParticles)));
    glBufferData(0x8892, r8 + r8 * 0x2 << 0x5, self->_quads, 0x88e8);
    glEnableVertexAttribArray(0x0);
    glVertexAttribPointer(0x0, 0x2, 0x1406, 0x0, 0x18, 0x0);
    glEnableVertexAttribArray(0x1);
    glVertexAttribPointer(0x1, 0x4, 0x1401, 0x1, 0x18, 0xc);
    glEnableVertexAttribArray(0x2);
    glVertexAttribPointer(0x2, 0x2, 0x1406, 0x0, 0x18, 0x10);
    glBindBuffer(0x8893, *(int32_t *)((int64_t *)&self->_buffersVBO + 0x4));
    r8 = *(self + r21);
    glBufferData(0x8893, r8 + r8 * 0x2 << 0x2, self->_indices, 0x88e4);
    sub_10031a660(0x0);
    glBindBuffer(0x8893, 0x0);
    glBindBuffer(0x8892, 0x0);
    return;
}

-(void)initTexCoordsWithRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r21 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_texture));
    [*(self + r20) pixelsWide];
    [*(r21 + r20) pixelsHigh];
    r0 = r21->_batchNode;
    if (r0 != 0x0) {
            [[r0 textureAtlas] quads];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_atlasIndex));
            r8 = *(r21 + r8);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_totalParticles));
            r9 = *(r21 + r9);
            r9 = r9 + r8;
    }
    else {
            r8 = 0x0;
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_totalParticles));
            r9 = *(r21 + r9);
    }
    if (r8 < r9) {
            asm { fcvt       d0, s12 };
            asm { ucvtf      s1, x19 };
            asm { ucvtf      s2, x20 };
            asm { fcvt       d5, s1 };
            asm { fcvt       d2, s2 };
            asm { fdiv       d1, d3, d5 };
            asm { fdiv       d3, d4, d2 };
            asm { fcvt       s0, d1 };
            asm { fcvt       s1, d3 };
            asm { fcvt       d3, s0 };
            asm { fdiv       d4, d4, d5 };
            asm { fcvt       d5, s1 };
            asm { fdiv       d2, d6, d2 };
            asm { fcvt       s2, d3 };
            asm { fcvt       s3, d4 };
            r9 = r9 - r8;
            asm { madd       x8, x8, x10, x0 };
            r8 = r8 + 0x40;
            do {
                    *(int128_t *)(r8 + 0xffffffffffffffe8) = s0;
                    *(int128_t *)(r8 + 0xffffffffffffffec) = s3;
                    *(int128_t *)(r8 + 0x18) = s2;
                    *(int128_t *)(r8 + 0x1c) = s3;
                    *(int128_t *)(r8 + 0xffffffffffffffd0) = s0;
                    *(int128_t *)(r8 + 0xffffffffffffffd4) = s1;
                    *(int128_t *)r8 = s2;
                    *(int128_t *)(r8 + 0x4) = s1;
                    r8 = r8 + 0x60;
                    r9 = r9 - 0x1;
            } while (r9 != 0x0);
    }
    return;
}

-(void)setTexture:(void *)arg2 {
    [arg2 contentSize];
    [self setTexture:arg2 withRect:r3];
    return;
}

-(void)setTexture:(void *)arg2 withRect:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x60;
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
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r20 = arg2;
    r19 = self;
    if ([arg2 name] != [r19->_texture name]) {
            r2 = r20;
            [[&var_50 super] setTexture:r2];
    }
    [r19 initTexCoordsWithRect:r2];
    return;
}

-(void)setDisplayFrame:(void *)arg2 {
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
    if ([[arg2 texture] name] != [r19->_texture name]) {
            [r20 texture];
            [r19 setTexture:r2];
    }
    return;
}

-(void)initIndices {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_totalParticles));
    r8 = *(r0 + r8);
    if (r8 != 0x0) {
            r9 = 0x0;
            r10 = sign_extend_64(*(int32_t *)ivar_offset(_indices));
            r10 = *(r0 + r10);
            r10 = r10 + 0x6;
            do {
                    *(int16_t *)(r10 + 0xfffffffffffffffa) = r9 << 0x2;
                    r11 = 0x1;
                    asm { bfi        w11, w9, #0x2, #0x1e };
                    *(int16_t *)(r10 + 0xfffffffffffffffc) = r11;
                    r12 = 0x2;
                    asm { bfi        w12, w9, #0x2, #0x1e };
                    *(int16_t *)(r10 + 0xfffffffffffffffe) = r12;
                    *(int16_t *)(r10 + 0x4) = r11;
                    *(int16_t *)(r10 + 0x2) = r12;
                    r11 = 0x3;
                    asm { bfi        w11, w9, #0x2, #0x1e };
                    *(int16_t *)r10 = r11;
                    r10 = r10 + 0xc;
                    r9 = r9 + 0x1;
            } while (r9 < r8);
    }
    return;
}

-(void)updateQuadWithParticle:(struct sCCParticle *)arg2 newPosition:(struct CGPoint)arg3 {
    memcpy(&r3, &arg3, 0x8);
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
    v8 = v1;
    r19 = arg2;
    r20 = self;
    r0 = self->_batchNode;
    if (r0 != 0x0) {
            r0 = [r0 textureAtlas];
            r0 = [r0 quads];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_atlasIndex));
            r9 = 0x60;
            asm { madd       x21, x8, x9, x0 };
    }
    else {
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_particleIdx));
            r9 = *(r20 + r9);
            r10 = 0x60;
            asm { madd       x21, x9, x10, x8 };
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_opacityModifyRGB));
    r8 = *(int8_t *)(r20 + r8);
    s0 = *(int32_t *)(r19 + 0x20);
    if (r8 != 0x0) {
            s3 = *(int128_t *)(r19 + 0x28);
            s1 = *(int128_t *)(r19 + 0x2c);
            s0 = s0 * s1;
            s2 = *(int32_t *)(r19 + 0x24);
            s2 = s1 * s2;
            s3 = s1 * s3;
    }
    else {
            s2 = *(int128_t *)(r19 + 0x24);
            s3 = *(int128_t *)(r19 + 0x28);
            s1 = *(int32_t *)(r19 + 0x2c);
    }
    r8 = 0x437f0000;
    s4 = r8;
    s3 = s3 * s4;
    s2 = s2 * s4;
    asm { fcvtzs     w8, s1 };
    asm { fcvtzs     w9, s3 };
    asm { fcvtzs     w10, s2 };
    asm { fcvtzs     w11, s0 };
    *(int8_t *)(r21 + 0x24) = r11;
    *(int8_t *)(r21 + 0x25) = r10;
    *(int8_t *)(r21 + 0x26) = r9;
    *(int8_t *)(r21 + 0x27) = r8;
    *(int8_t *)(r21 + 0x54) = r11;
    *(int8_t *)(r21 + 0x55) = r10;
    *(int8_t *)(r21 + 0x56) = r9;
    *(int8_t *)(r21 + 0x57) = r8;
    *(int8_t *)(r21 + 0xc) = r11;
    *(int8_t *)(r21 + 0xd) = r10;
    *(int8_t *)(r21 + 0xe) = r9;
    *(int8_t *)(r21 + 0xf) = r8;
    *(int8_t *)(r21 + 0x3c) = r11;
    *(int8_t *)(r21 + 0x3d) = r10;
    *(int8_t *)(r21 + 0x3e) = r9;
    *(int8_t *)(r21 + 0x3f) = r8;
    s1 = 0x3fe0000000000000;
    s10 = *(int32_t *)(r19 + 0x40) * s1;
    s0 = *(int32_t *)(r19 + 0x48);
    if (s0 != 0x0) {
            asm { fcvt       s12, d9 };
            asm { fcvt       s13, d8 };
            sinf(cosf(r0));
            s16 = s0 * s11;
            s1 = (s9 * s11 - s16) + s12;
            s2 = s13 + s16 + s9 * s11;
            s3 = (s10 * s9 - s16) + s12;
            s7 = s10 * s0;
            s0 = s13 + s7 + s9 * s11;
            s5 = (s10 * s9 - s7) + s12;
            s6 = s13 + s7 + s10 * s9;
            s7 = (s9 * s11 - s7) + s12;
            s4 = s13 + s16 + s10 * s9;
    }
    else {
            asm { fcvt       d0, s10 };
            asm { fcvt       s1, d1 };
            asm { fcvt       s2, d2 };
            asm { fcvt       s3, d3 };
            asm { fcvt       s4, d0 };
    }
    *(int32_t *)(r21 + 0x18) = s1;
    *(int32_t *)(r21 + 0x1c) = s2;
    *(int32_t *)(r21 + 0x48) = s3;
    *(int32_t *)(r21 + 0x4c) = s0;
    *(int32_t *)r21 = s7;
    *(int32_t *)(r21 + 0x4) = s4;
    *(int32_t *)(r21 + 0x30) = s5;
    *(int32_t *)(r21 + 0x34) = s6;
    return;
}

-(void)setBatchNode:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_batchNode));
    r20 = *(r0 + r22);
    if (r20 != r2) {
            r19 = r0;
            [[&var_30 super] setBatchNode:r2];
            if (r2 != 0x0) {
                    if (r20 == 0x0) {
                            r0 = *(r19 + r22);
                            r0 = [r0 textureAtlas];
                            r0 = [r0 quads];
                            r10 = 0x10116b000;
                            r20 = sign_extend_64(*(int32_t *)(r10 + 0xc64));
                            r1 = *(r19 + r20);
                            asm { madd       x0, x8, x9, x0 };
                            r8 = sign_extend_64(*(int32_t *)(r10 + 0xc14));
                            r8 = *(r19 + r8);
                            memcpy(r0, r1, r8 + r8 * 0x2 << 0x5);
                            r0 = *(r19 + r20);
                            if (r0 != 0x0) {
                                    free(r0);
                            }
                            *(r19 + r20) = 0x0;
                            r20 = sign_extend_64(*(int32_t *)ivar_offset(_indices));
                            r0 = *(r19 + r20);
                            if (r0 != 0x0) {
                                    free(r0);
                            }
                            *(r19 + r20) = 0x0;
                            glDeleteBuffers(0x2, (int64_t *)&r19->_buffersVBO);
                            r19->_buffersVBO = 0x0;
                            glDeleteVertexArraysOES();
                            sub_10031a660(0x0);
                    }
            }
            else {
                    [r19 allocMemory];
                    [r19 initIndices];
                    [r19 setTexture:[r20 texture]];
                    [r19 initVBOandVAO];
            }
    }
    return;
}

-(void)postStep {
    r0 = self;
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
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_particleCount));
    var_100 = r8;
    if (*(r0 + r8) == 0x0) goto .l91;

loc_1002d930c:
    r19 = r0;
    r0 = [CCConfiguration sharedConfiguration];
    r0 = [r0 useNewRenderer];
    if (r0 == 0x0) goto loc_1002d9a40;

loc_1002d9338:
    var_80 = q0;
    var_70 = q0;
    var_A0 = q0;
    var_C0 = q0;
    var_E0 = q0;
    var_D0 = q0;
    if (*(r19 + var_100) == 0x0) goto loc_1002d9ad4;

loc_1002d9364:
    r8 = 0x0;
    r9 = 0x0;
    r11 = &var_E8;
    var_110 = r11 + 0x30;
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_quads));
    var_108 = r11 + 0x78;
    var_118 = r11 + 0x60;
    var_F8 = 0x1;
    goto loc_1002d93a0;

loc_1002d93a0:
    r10 = *(r19 + r28);
    asm { madd       x10, x27, x21, x10 };
    r26 = *(int128_t *)r10;
    r20 = *(int128_t *)(r10 + 0x4);
    if (r9 >= r8) goto loc_1002d93c4;

loc_1002d93b4:
    *(int128_t *)r9 = r26;
    *(int128_t *)(r9 + 0x4) = r20;
    r22 = r9 + 0x8;
    goto loc_1002d9460;

loc_1002d9460:
    r8 = *(r19 + r28);
    asm { madd       x8, x27, x21, x8 };
    r26 = *(int128_t *)(r8 + 0x18);
    r20 = *(int128_t *)(r8 + 0x1c);
    r8 = var_A8;
    if (r22 >= r8) goto loc_1002d9484;

loc_1002d9478:
    *(int128_t *)r22 = r26;
    *(int128_t *)(r22 + 0x4) = r20;
    r22 = r22 + 0x8;
    goto loc_1002d9520;

loc_1002d9520:
    r8 = *(r19 + r28);
    asm { madd       x8, x27, x21, x8 };
    r26 = *(int128_t *)(r8 + 0x30);
    r20 = *(int128_t *)(r8 + 0x34);
    r8 = var_A8;
    if (r22 >= r8) goto loc_1002d9544;

loc_1002d9538:
    *(int128_t *)r22 = r26;
    *(int128_t *)(r22 + 0x4) = r20;
    r22 = r22 + 0x8;
    goto loc_1002d95e0;

loc_1002d95e0:
    r8 = *(r19 + r28);
    asm { madd       x8, x27, x21, x8 };
    r26 = *(int128_t *)(r8 + 0x48);
    r20 = *(int128_t *)(r8 + 0x4c);
    r8 = var_A8;
    if (r22 >= r8) goto loc_1002d9608;

loc_1002d95f8:
    *(int128_t *)r22 = r26;
    *(int128_t *)(r22 + 0x4) = r20;
    var_B0 = r22 + 0x8;
    goto loc_1002d96a0;

loc_1002d96a0:
    asm { madd       x8, x27, x21, x8 };
    sub_1002d9eac(var_108, &var_F0);
    asm { madd       x8, x27, x21, x8 };
    sub_1002d9eac(r20, &var_F0);
    asm { madd       x8, x27, x21, x8 };
    sub_1002d9eac(r20, &var_F0);
    asm { madd       x8, x27, x21, x8 };
    sub_1002d9eac(r20, &var_F0);
    r8 = *(r19 + r28);
    asm { madd       x8, x27, x21, x8 };
    r20 = *(int128_t *)(r8 + 0x10);
    r26 = *(int128_t *)(r8 + 0x14);
    r9 = var_80;
    r8 = var_78;
    if (r9 >= r8) goto loc_1002d973c;

loc_1002d972c:
    *(int128_t *)r9 = r20;
    *(int128_t *)(r9 + 0x4) = r26;
    r22 = r9 + 0x8;
    goto loc_1002d97d8;

loc_1002d97d8:
    r8 = *(r19 + r28);
    asm { madd       x8, x27, x21, x8 };
    r26 = *(int128_t *)(r8 + 0x28);
    r20 = *(int128_t *)(r8 + 0x2c);
    r8 = var_78;
    if (r22 >= r8) goto loc_1002d97fc;

loc_1002d97f0:
    *(int128_t *)r22 = r26;
    *(int128_t *)(r22 + 0x4) = r20;
    r22 = r22 + 0x8;
    goto loc_1002d9898;

loc_1002d9898:
    r8 = *(r19 + r28);
    asm { madd       x8, x27, x21, x8 };
    r26 = *(int128_t *)(r8 + 0x40);
    r20 = *(int128_t *)(r8 + 0x44);
    r8 = var_78;
    if (r22 >= r8) goto loc_1002d98bc;

loc_1002d98b0:
    *(int128_t *)r22 = r26;
    *(int128_t *)(r22 + 0x4) = r20;
    r22 = r22 + 0x8;
    goto loc_1002d9958;

loc_1002d9958:
    r8 = *(r19 + r28);
    asm { madd       x8, x27, x21, x8 };
    r26 = *(int128_t *)(r8 + 0x58);
    r20 = *(int128_t *)(r8 + 0x5c);
    r8 = var_78;
    if (r22 >= r8) goto loc_1002d9980;

loc_1002d9970:
    *(int128_t *)r22 = r26;
    *(int128_t *)(r22 + 0x4) = r20;
    var_80 = r22 + 0x8;
    goto loc_1002d9a18;

loc_1002d9a18:
    r10 = var_F8;
    if (*(r19 + var_100) < zero_extend_64(r10)) goto loc_1002d9ad4;

loc_1002d9a2c:
    r9 = var_B0;
    r8 = var_A8;
    var_F8 = r10 + 0x1;
    goto loc_1002d93a0;

loc_1002d9ad4:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_particleIdx));
    var_108 = r8;
    r25 = *(r19 + r8);
    if (r25 + r25 * 0x2 << 0x1 == 0x0) goto loc_1002d9be8;

loc_1002d9af4:
    r28 = 0x0;
    var_110 = &var_E8 + 0x8;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_indices));
    r27 = 0x1;
    var_100 = r22;
    goto loc_1002d9b14;

loc_1002d9b14:
    r20 = *(r19 + r22);
    r9 = var_D8;
    r8 = var_D0;
    if (r9 == r8) goto loc_1002d9b34;

loc_1002d9b24:
    *(int16_t *)r9 = *(int16_t *)(r20 + r28 * 0x2);
    r9 = r9 + 0x2;
    var_D8 = r9;
    goto loc_1002d9bd0;

loc_1002d9bd0:
    r28 = r27;
    COND = r25 + r25 * 0x2 << 0x1 > zero_extend_64(r27);
    r27 = r27 + 0x1;
    if (COND) goto loc_1002d9b14;

loc_1002d9be8:
    *(int8_t *)(int64_t *)&r19->_mcRenderJobIsDirty = 0x0;
    sub_100382ea4((int64_t *)&r19->_mcRenderJob + 0x40, &var_E8);
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
    r19 = var_C0;
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
    r0 = var_E0;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    return;

.l91:
    return;

loc_1002d9b34:
    r21 = var_E0;
    r22 = r9 - r21;
    if (r22 <= -0x3) goto loc_1002d9d68;

loc_1002d9b44:
    r24 = SAR(r22, 0x1);
    r9 = r24 + 0x1;
    r8 = r8 - r21;
    if (r8 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r8;
            }
            else {
                    r9 = r9;
            }
    }
    if (0x3fffffffffffffff > r8 / 0x2) {
            if (!CPU_FLAGS & A) {
                    r26 = 0x7fffffffffffffff;
            }
            else {
                    r26 = r9;
            }
    }
    var_F8 = r25;
    if (r26 == 0x0) goto loc_1002d9b84;

loc_1002d9b70:
    if ((r26 & 0xffffffff80000000) != 0x0) goto loc_1002d9db4;

loc_1002d9b74:
    r23 = operator new();
    goto loc_1002d9b88;

loc_1002d9b88:
    r25 = r23 + r24 * 0x2;
    r24 = r23 + r26 * 0x2;
    *(int16_t *)r25 = *(int16_t *)(r20 + r28 * 0x2);
    r25 = r25 + 0x2;
    if (r22 >= 0x1) {
            memcpy(r23, r21, r22);
    }
    var_E0 = r23;
    var_D8 = r25;
    var_D0 = r24;
    r22 = var_100;
    r25 = var_F8;
    if (r21 != 0x0) {
            operator delete(r21);
            r25 = *(r19 + var_108);
    }
    goto loc_1002d9bd0;

loc_1002d9db4:
    sub_1002dafe0();
    return;

loc_1002d9b84:
    r23 = 0x0;
    goto loc_1002d9b88;

loc_1002d9d68:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002d9980:
    r23 = var_88;
    r24 = r22 - r23;
    r22 = SAR(r24, 0x3);
    r9 = r22 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_1002d9d5c;

loc_1002d9998:
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
    r21 = 0x60;
    if (0xfffffffffffffff > r8 / 0x8) {
            if (!CPU_FLAGS & A) {
                    r21 = 0x1fffffffffffffff;
            }
            else {
                    r21 = r9;
            }
    }
    if (r21 == 0x0) goto loc_1002d99d4;

loc_1002d99bc:
    if (r21 >> 0x3d != 0x0) goto loc_1002d9dac;

loc_1002d99c4:
    r25 = operator new();
    goto loc_1002d99d8;

loc_1002d99d8:
    r21 = r25 + r21 * 0x8;
    *(int128_t *)(r25 + r22 * 0x8) = r26;
    *(int128_t *)(0x4 + r25 + r22 * 0x8) = r20;
    r20 = 0x8 + r25 + r22 * 0x8;
    if (r24 >= 0x1) {
            memcpy(r25, r23, r24);
    }
    var_88 = r25;
    var_80 = r20;
    var_78 = r21;
    if (r23 != 0x0) {
            operator delete(r23);
    }
    goto loc_1002d9a18;

loc_1002d9dac:
    sub_1002dafe0();
    return;

loc_1002d99d4:
    r25 = 0x0;
    goto loc_1002d99d8;

loc_1002d9d5c:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002d98bc:
    r23 = var_88;
    r24 = r22 - r23;
    r22 = SAR(r24, 0x3);
    r9 = r22 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_1002d9d50;

loc_1002d98d4:
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
    r21 = 0x60;
    if (0xfffffffffffffff > r8 / 0x8) {
            if (!CPU_FLAGS & A) {
                    r21 = 0x1fffffffffffffff;
            }
            else {
                    r21 = r9;
            }
    }
    if (r21 == 0x0) goto loc_1002d9910;

loc_1002d98f8:
    if (r21 >> 0x3d != 0x0) goto loc_1002d9da4;

loc_1002d9900:
    r25 = operator new();
    goto loc_1002d9914;

loc_1002d9914:
    r21 = r25 + r21 * 0x8;
    *(int128_t *)(r25 + r22 * 0x8) = r26;
    *(int128_t *)(0x4 + r25 + r22 * 0x8) = r20;
    r22 = 0x8 + r25 + r22 * 0x8;
    if (r24 >= 0x1) {
            memcpy(r25, r23, r24);
    }
    var_88 = r25;
    var_80 = r22;
    var_78 = r21;
    if (r23 != 0x0) {
            operator delete(r23);
            r22 = var_80;
    }
    goto loc_1002d9958;

loc_1002d9da4:
    sub_1002dafe0();
    return;

loc_1002d9910:
    r25 = 0x0;
    goto loc_1002d9914;

loc_1002d9d50:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002d97fc:
    r23 = var_88;
    r24 = r22 - r23;
    r22 = SAR(r24, 0x3);
    r9 = r22 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_1002d9d44;

loc_1002d9814:
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
    r21 = 0x60;
    if (0xfffffffffffffff > r8 / 0x8) {
            if (!CPU_FLAGS & A) {
                    r21 = 0x1fffffffffffffff;
            }
            else {
                    r21 = r9;
            }
    }
    if (r21 == 0x0) goto loc_1002d9850;

loc_1002d9838:
    if (r21 >> 0x3d != 0x0) goto loc_1002d9d9c;

loc_1002d9840:
    r25 = operator new();
    goto loc_1002d9854;

loc_1002d9854:
    r21 = r25 + r21 * 0x8;
    *(int128_t *)(r25 + r22 * 0x8) = r26;
    *(int128_t *)(0x4 + r25 + r22 * 0x8) = r20;
    r22 = 0x8 + r25 + r22 * 0x8;
    if (r24 >= 0x1) {
            memcpy(r25, r23, r24);
    }
    var_88 = r25;
    var_80 = r22;
    var_78 = r21;
    if (r23 != 0x0) {
            operator delete(r23);
            r22 = var_80;
    }
    goto loc_1002d9898;

loc_1002d9d9c:
    sub_1002dafe0();
    return;

loc_1002d9850:
    r25 = 0x0;
    goto loc_1002d9854;

loc_1002d9d44:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002d973c:
    r23 = var_88;
    r24 = r9 - r23;
    r22 = SAR(r24, 0x3);
    r9 = r22 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_1002d9d38;

loc_1002d9754:
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
    r21 = 0x60;
    if (0xfffffffffffffff > r8 / 0x8) {
            if (!CPU_FLAGS & A) {
                    r21 = 0x1fffffffffffffff;
            }
            else {
                    r21 = r9;
            }
    }
    if (r21 == 0x0) goto loc_1002d9790;

loc_1002d9778:
    if (r21 >> 0x3d != 0x0) goto loc_1002d9d94;

loc_1002d9780:
    r25 = operator new();
    goto loc_1002d9794;

loc_1002d9794:
    r21 = r25 + r21 * 0x8;
    *(int128_t *)(r25 + r22 * 0x8) = r20;
    *(int128_t *)(0x4 + r25 + r22 * 0x8) = r26;
    r22 = 0x8 + r25 + r22 * 0x8;
    if (r24 >= 0x1) {
            memcpy(r25, r23, r24);
    }
    var_88 = r25;
    var_80 = r22;
    var_78 = r21;
    if (r23 != 0x0) {
            operator delete(r23);
            r22 = var_80;
    }
    goto loc_1002d97d8;

loc_1002d9d94:
    sub_1002dafe0();
    return;

loc_1002d9790:
    r25 = 0x0;
    goto loc_1002d9794;

loc_1002d9d38:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002d9608:
    r23 = var_B8;
    r24 = r22 - r23;
    r22 = SAR(r24, 0x3);
    r9 = r22 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_1002d9d2c;

loc_1002d9620:
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
    r21 = 0x60;
    if (0xfffffffffffffff > r8 / 0x8) {
            if (!CPU_FLAGS & A) {
                    r21 = 0x1fffffffffffffff;
            }
            else {
                    r21 = r9;
            }
    }
    if (r21 == 0x0) goto loc_1002d965c;

loc_1002d9644:
    if (r21 >> 0x3d != 0x0) goto loc_1002d9d8c;

loc_1002d964c:
    r25 = operator new();
    goto loc_1002d9660;

loc_1002d9660:
    r21 = r25 + r21 * 0x8;
    *(int128_t *)(r25 + r22 * 0x8) = r26;
    *(int128_t *)(0x4 + r25 + r22 * 0x8) = r20;
    r20 = 0x8 + r25 + r22 * 0x8;
    if (r24 >= 0x1) {
            memcpy(r25, r23, r24);
    }
    var_B8 = r25;
    var_B0 = r20;
    var_A8 = r21;
    if (r23 != 0x0) {
            operator delete(r23);
    }
    goto loc_1002d96a0;

loc_1002d9d8c:
    sub_1002dafe0();
    return;

loc_1002d965c:
    r25 = 0x0;
    goto loc_1002d9660;

loc_1002d9d2c:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002d9544:
    r23 = var_B8;
    r24 = r22 - r23;
    r22 = SAR(r24, 0x3);
    r9 = r22 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_1002d9d20;

loc_1002d955c:
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
    r21 = 0x60;
    if (0xfffffffffffffff > r8 / 0x8) {
            if (!CPU_FLAGS & A) {
                    r21 = 0x1fffffffffffffff;
            }
            else {
                    r21 = r9;
            }
    }
    if (r21 == 0x0) goto loc_1002d9598;

loc_1002d9580:
    if (r21 >> 0x3d != 0x0) goto loc_1002d9d84;

loc_1002d9588:
    r25 = operator new();
    goto loc_1002d959c;

loc_1002d959c:
    r21 = r25 + r21 * 0x8;
    *(int128_t *)(r25 + r22 * 0x8) = r26;
    *(int128_t *)(0x4 + r25 + r22 * 0x8) = r20;
    r22 = 0x8 + r25 + r22 * 0x8;
    if (r24 >= 0x1) {
            memcpy(r25, r23, r24);
    }
    var_B8 = r25;
    var_B0 = r22;
    var_A8 = r21;
    if (r23 != 0x0) {
            operator delete(r23);
            r22 = var_B0;
    }
    goto loc_1002d95e0;

loc_1002d9d84:
    sub_1002dafe0();
    return;

loc_1002d9598:
    r25 = 0x0;
    goto loc_1002d959c;

loc_1002d9d20:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002d9484:
    r23 = var_B8;
    r24 = r22 - r23;
    r22 = SAR(r24, 0x3);
    r9 = r22 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_1002d9d14;

loc_1002d949c:
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
    r21 = 0x60;
    if (0xfffffffffffffff > r8 / 0x8) {
            if (!CPU_FLAGS & A) {
                    r21 = 0x1fffffffffffffff;
            }
            else {
                    r21 = r9;
            }
    }
    if (r21 == 0x0) goto loc_1002d94d8;

loc_1002d94c0:
    if (r21 >> 0x3d != 0x0) goto loc_1002d9d7c;

loc_1002d94c8:
    r25 = operator new();
    goto loc_1002d94dc;

loc_1002d94dc:
    r21 = r25 + r21 * 0x8;
    *(int128_t *)(r25 + r22 * 0x8) = r26;
    *(int128_t *)(0x4 + r25 + r22 * 0x8) = r20;
    r22 = 0x8 + r25 + r22 * 0x8;
    if (r24 >= 0x1) {
            memcpy(r25, r23, r24);
    }
    var_B8 = r25;
    var_B0 = r22;
    var_A8 = r21;
    if (r23 != 0x0) {
            operator delete(r23);
            r22 = var_B0;
    }
    goto loc_1002d9520;

loc_1002d9d7c:
    sub_1002dafe0();
    return;

loc_1002d94d8:
    r25 = 0x0;
    goto loc_1002d94dc;

loc_1002d9d14:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002d93c4:
    r23 = var_B8;
    r24 = r9 - r23;
    r22 = SAR(r24, 0x3);
    r9 = r22 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_1002d9d08;

loc_1002d93dc:
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
    r21 = 0x60;
    if (0xfffffffffffffff > r8 / 0x8) {
            if (!CPU_FLAGS & A) {
                    r21 = 0x1fffffffffffffff;
            }
            else {
                    r21 = r9;
            }
    }
    if (r21 == 0x0) goto loc_1002d9418;

loc_1002d9400:
    if (r21 >> 0x3d != 0x0) goto loc_1002d9d74;

loc_1002d9408:
    r25 = operator new();
    goto loc_1002d941c;

loc_1002d941c:
    r21 = r25 + r21 * 0x8;
    *(int128_t *)(r25 + r22 * 0x8) = r26;
    *(int128_t *)(0x4 + r25 + r22 * 0x8) = r20;
    r22 = 0x8 + r25 + r22 * 0x8;
    if (r24 >= 0x1) {
            memcpy(r25, r23, r24);
    }
    var_B8 = r25;
    var_B0 = r22;
    var_A8 = r21;
    if (r23 != 0x0) {
            operator delete(r23);
            r22 = var_B0;
    }
    goto loc_1002d9460;

loc_1002d9d74:
    sub_1002dafe0();
    return;

loc_1002d9418:
    r25 = 0x0;
    goto loc_1002d941c;

loc_1002d9d08:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002d9a40:
    sub_10031a660(r0);
    glBindBuffer(0x8892, *(int32_t *)(int64_t *)&r19->_buffersVBO);
    if ([[CCConfiguration sharedConfiguration] supportsMapBuffer] != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_totalParticles));
            r8 = *(r19 + r8);
            glBufferData(0x8892, r8 + r8 * 0x2 << 0x5, 0x0, 0x88e8);
            r0 = glMapBufferOES();
            r1 = r19->_quads;
            r8 = *(r19 + var_100);
            memcpy(r0, r1, r8 + r8 * 0x2 << 0x5);
            glUnmapBufferOES();
    }
    else {
            r8 = *(r19 + var_100);
            glBufferSubData(0x8892, 0x0, r8 + r8 * 0x2 << 0x5, r19->_quads);
    }
    glBindBuffer(0x8892, 0x0);
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
    r31 = r31 + 0xffffffffffffffa0 - 0x250;
    if (r0->_particleCount == 0x0) goto .l91;

loc_1002da05c:
    r20 = r0;
    if ([[CCConfiguration sharedConfiguration] useNewRenderer] == 0x0) goto loc_1002da874;

loc_1002da094:
    r8 = r20->_texture;
    r10 = 0x10116b000;
    r22 = r20 + sign_extend_64(*(int32_t *)(r10 + 0x860));
    r23 = r22 + 0x40;
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
    r21 = *(r23 + 0xf0);
    *(int128_t *)(r23 + 0xe8) = r9;
    *(int128_t *)(r23 + 0xf0) = r8;
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
    *(int32_t *)(r22 + 0x18) = sub_1003812ec();
    *(int32_t *)(r22 + 0x1c) = sub_1003812ec();
    if (*(int8_t *)(int64_t *)&r20->_mcRenderJobIsDirty == 0x0) goto loc_1002daae0;

loc_1002da148:
    var_290 = r22;
    var_288 = r23;
    *(int128_t *)((r29 - 0xe8) + 0x78) = q0;
    *(int128_t *)((r29 - 0xe8) + 0x68) = q0;
    *(int128_t *)((r29 - 0xe8) + 0x58) = q0;
    *(int128_t *)((r29 - 0xe8) + 0x48) = q0;
    *(int128_t *)((r29 - 0xe8) + 0x38) = q0;
    *(int128_t *)((r29 - 0xe8) + 0x28) = q0;
    *(int128_t *)((r29 - 0xe8) + 0x18) = q0;
    *(int128_t *)((r29 - 0xe8) + 0x8) = q0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_totalParticles));
    var_278 = r8;
    if (*(r20 + r8) == 0x0) goto loc_1002da930;

loc_1002da198:
    r8 = 0x0;
    r9 = 0x0;
    r11 = r29 - 0xe8;
    var_298 = r11 + 0x30;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_quads));
    var_280 = r11 + 0x78;
    var_2A0 = r11 + 0x60;
    var_270 = 0x1;
    goto loc_1002da1d4;

loc_1002da1d4:
    r10 = *(r20 + r22);
    asm { madd       x10, x21, x25, x10 };
    r28 = *(int128_t *)r10;
    r19 = *(int128_t *)(r10 + 0x4);
    if (r9 >= r8) goto loc_1002da1f8;

loc_1002da1e8:
    *(int128_t *)r9 = r28;
    *(int128_t *)(r9 + 0x4) = r19;
    r23 = r9 + 0x8;
    goto loc_1002da294;

loc_1002da294:
    r8 = *(r20 + r22);
    asm { madd       x8, x21, x25, x8 };
    r28 = *(int128_t *)(r8 + 0x18);
    r19 = *(int128_t *)(r8 + 0x1c);
    r8 = var_A8;
    if (r23 >= r8) goto loc_1002da2b8;

loc_1002da2ac:
    *(int128_t *)r23 = r28;
    *(int128_t *)(r23 + 0x4) = r19;
    r23 = r23 + 0x8;
    goto loc_1002da354;

loc_1002da354:
    r8 = *(r20 + r22);
    asm { madd       x8, x21, x25, x8 };
    r28 = *(int128_t *)(r8 + 0x30);
    r19 = *(int128_t *)(r8 + 0x34);
    r8 = var_A8;
    if (r23 >= r8) goto loc_1002da378;

loc_1002da36c:
    *(int128_t *)r23 = r28;
    *(int128_t *)(r23 + 0x4) = r19;
    r23 = r23 + 0x8;
    goto loc_1002da414;

loc_1002da414:
    r8 = *(r20 + r22);
    asm { madd       x8, x21, x25, x8 };
    r28 = *(int128_t *)(r8 + 0x48);
    r19 = *(int128_t *)(r8 + 0x4c);
    r8 = var_A8;
    if (r23 >= r8) goto loc_1002da43c;

loc_1002da42c:
    *(int128_t *)r23 = r28;
    *(int128_t *)(r23 + 0x4) = r19;
    var_B0 = r23 + 0x8;
    goto loc_1002da4d4;

loc_1002da4d4:
    asm { madd       x8, x21, x25, x8 };
    sub_1002d9eac(var_280, r29 - 0xf0);
    asm { madd       x8, x21, x25, x8 };
    sub_1002d9eac(r19, r29 - 0xf0);
    asm { madd       x8, x21, x25, x8 };
    sub_1002d9eac(r19, r29 - 0xf0);
    asm { madd       x8, x21, x25, x8 };
    sub_1002d9eac(r19, r29 - 0xf0);
    r8 = *(r20 + r22);
    asm { madd       x8, x21, x25, x8 };
    r28 = *(int128_t *)(r8 + 0x10);
    r19 = *(int128_t *)(r8 + 0x14);
    r9 = var_80;
    r8 = var_78;
    if (r9 >= r8) goto loc_1002da570;

loc_1002da560:
    *(int128_t *)r9 = r28;
    *(int128_t *)(r9 + 0x4) = r19;
    r23 = r9 + 0x8;
    goto loc_1002da60c;

loc_1002da60c:
    r8 = *(r20 + r22);
    asm { madd       x8, x21, x25, x8 };
    r28 = *(int128_t *)(r8 + 0x28);
    r19 = *(int128_t *)(r8 + 0x2c);
    r8 = var_78;
    if (r23 >= r8) goto loc_1002da630;

loc_1002da624:
    *(int128_t *)r23 = r28;
    *(int128_t *)(r23 + 0x4) = r19;
    r23 = r23 + 0x8;
    goto loc_1002da6cc;

loc_1002da6cc:
    r8 = *(r20 + r22);
    asm { madd       x8, x21, x25, x8 };
    r28 = *(int128_t *)(r8 + 0x40);
    r19 = *(int128_t *)(r8 + 0x44);
    r8 = var_78;
    if (r23 >= r8) goto loc_1002da6f0;

loc_1002da6e4:
    *(int128_t *)r23 = r28;
    *(int128_t *)(r23 + 0x4) = r19;
    r23 = r23 + 0x8;
    goto loc_1002da78c;

loc_1002da78c:
    r8 = *(r20 + r22);
    asm { madd       x8, x21, x25, x8 };
    r21 = *(int128_t *)(r8 + 0x58);
    r19 = *(int128_t *)(r8 + 0x5c);
    r8 = var_78;
    if (r23 >= r8) goto loc_1002da7b4;

loc_1002da7a4:
    *(int128_t *)r23 = r21;
    *(int128_t *)(r23 + 0x4) = r19;
    var_80 = r23 + 0x8;
    goto loc_1002da84c;

loc_1002da84c:
    r10 = var_270;
    if (*(r20 + var_278) < zero_extend_64(r10)) goto loc_1002da930;

loc_1002da860:
    r9 = var_B0;
    r8 = var_A8;
    var_270 = r10 + 0x1;
    goto loc_1002da1d4;

loc_1002da930:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_particleIdx));
    var_280 = r8;
    r25 = *(r20 + r8);
    if (r25 + r25 * 0x2 << 0x1 == 0x0) goto loc_1002daa44;

loc_1002da950:
    r28 = 0x0;
    var_298 = (r29 - 0xe8) + 0x8;
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_indices));
    r27 = 0x1;
    var_278 = r19;
    goto loc_1002da970;

loc_1002da970:
    r21 = *(r20 + r19);
    r9 = var_D8;
    r8 = var_D0;
    if (r9 == r8) goto loc_1002da990;

loc_1002da980:
    *(int16_t *)r9 = *(int16_t *)(r21 + r28 * 0x2);
    r9 = r9 + 0x2;
    var_D8 = r9;
    goto loc_1002daa2c;

loc_1002daa2c:
    r28 = r27;
    COND = r25 + r25 * 0x2 << 0x1 > zero_extend_64(r27);
    r27 = r27 + 0x1;
    if (COND) goto loc_1002da970;

loc_1002daa44:
    r23 = var_288;
    sub_100382ea4(r23, r29 - 0xe8);
    r0 = var_70;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    r0 = var_88;
    r22 = var_290;
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
    goto loc_1002daae0;

loc_1002daae0:
    r8 = &var_268;
    q2 = *(int128_t *)(r23 + 0x90);
    q3 = *(int128_t *)(r23 + 0xa0);
    *(int128_t *)(&stack[-679] + 0xff) = q2;
    *(int128_t *)(&stack[-663] + 0xff) = q3;
    q0 = *(int128_t *)(r23 + 0xb0);
    q1 = *(int128_t *)(r23 + 0xc0);
    *(int128_t *)(&stack[-615] + 0xff) = *(int128_t *)(r23 + 0xd0);
    *(int128_t *)(&stack[-647] + 0xff) = q0;
    *(int128_t *)(&stack[-631] + 0xff) = q1;
    *(r8 + 0x128) = *(r22 + 0x128);
    r9 = *(r22 + 0x130);
    var_138 = r9;
    if (r9 != 0x0) {
            do {
                    asm { ldxr       x10, [x9] };
                    r10 = r10 + 0x1;
                    asm { stxr       w11, x10, [x9] };
            } while (r11 != 0x0);
    }
    r9 = &stack[-567];
    *(int128_t *)(r9 + 0xff) = *(int128_t *)(r22 + 0x140);
    r1 = r22 + 0x150;
    sub_1002c5700(r8 + 0x150, r1);
    sub_1003805bc(&var_268);
    sub_1002c59fc(&var_268 + 0x150);
    r19 = var_138;
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
    loc_100381804(&var_268 + 0xe8, r1);
    loc_100381804(&var_268 + 0xb0, r1);
    loc_100381804(&var_268 + 0x78, r1);
    loc_100381804(&var_268 + 0x40, r1);
    return;

.l91:
    return;

loc_1002da990:
    r22 = var_E0;
    r23 = r9 - r22;
    if (r23 <= -0x3) goto loc_1002dacc0;

loc_1002da9a0:
    r19 = SAR(r23, 0x1);
    r9 = r19 + 0x1;
    r8 = r8 - r22;
    if (r8 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r8;
            }
            else {
                    r9 = r9;
            }
    }
    if (0x3fffffffffffffff > r8 / 0x2) {
            if (!CPU_FLAGS & A) {
                    r26 = 0x7fffffffffffffff;
            }
            else {
                    r26 = r9;
            }
    }
    var_270 = r25;
    if (r26 == 0x0) goto loc_1002da9e0;

loc_1002da9cc:
    if ((r26 & 0xffffffff80000000) != 0x0) goto loc_1002dad0c;

loc_1002da9d0:
    r24 = operator new();
    goto loc_1002da9e4;

loc_1002da9e4:
    r25 = r24 + r19 * 0x2;
    r19 = r24 + r26 * 0x2;
    *(int16_t *)r25 = *(int16_t *)(r21 + r28 * 0x2);
    r25 = r25 + 0x2;
    if (r23 >= 0x1) {
            memcpy(r24, r22, r23);
    }
    r10 = 0x3fffffffffffffff;
    var_E0 = r24;
    var_D8 = r25;
    var_D0 = r19;
    r19 = var_278;
    r25 = var_270;
    if (r22 != 0x0) {
            r10 = 0x3fffffffffffffff;
            operator delete(r22);
            r25 = *(r20 + var_280);
    }
    goto loc_1002daa2c;

loc_1002dad0c:
    sub_1002dafe0();
    return;

loc_1002da9e0:
    r24 = 0x0;
    goto loc_1002da9e4;

loc_1002dacc0:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002da7b4:
    r24 = var_88;
    r25 = r23 - r24;
    r23 = SAR(r25, 0x3);
    r9 = r23 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_1002dacb4;

loc_1002da7cc:
    r8 = r8 - r24;
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
                    r27 = 0x1fffffffffffffff;
            }
            else {
                    r27 = r9;
            }
    }
    if (r27 == 0x0) goto loc_1002da808;

loc_1002da7f0:
    if (r27 >> 0x3d != 0x0) goto loc_1002dad04;

loc_1002da7f8:
    r26 = operator new();
    goto loc_1002da80c;

loc_1002da80c:
    r8 = r26 + r23 * 0x8;
    r23 = r26 + r27 * 0x8;
    *(int128_t *)r8 = r21;
    *(int128_t *)(r8 + 0x4) = r19;
    r19 = r8 + 0x8;
    if (r25 >= 0x1) {
            memcpy(r26, r24, r25);
    }
    var_88 = r26;
    var_80 = r19;
    var_78 = r23;
    if (r24 != 0x0) {
            operator delete(r24);
    }
    goto loc_1002da84c;

loc_1002dad04:
    sub_1002dafe0();
    return;

loc_1002da808:
    r26 = 0x0;
    goto loc_1002da80c;

loc_1002dacb4:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002da6f0:
    r24 = var_88;
    r25 = r23 - r24;
    r23 = SAR(r25, 0x3);
    r9 = r23 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_1002daca8;

loc_1002da708:
    r8 = r8 - r24;
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
                    r27 = 0x1fffffffffffffff;
            }
            else {
                    r27 = r9;
            }
    }
    if (r27 == 0x0) goto loc_1002da744;

loc_1002da72c:
    if (r27 >> 0x3d != 0x0) goto loc_1002dacfc;

loc_1002da734:
    r26 = operator new();
    goto loc_1002da748;

loc_1002da748:
    r27 = r26 + r27 * 0x8;
    *(int128_t *)(r26 + r23 * 0x8) = r28;
    *(int128_t *)(0x4 + r26 + r23 * 0x8) = r19;
    r23 = 0x8 + r26 + r23 * 0x8;
    if (r25 >= 0x1) {
            memcpy(r26, r24, r25);
    }
    var_88 = r26;
    var_80 = r23;
    var_78 = r27;
    if (r24 != 0x0) {
            operator delete(r24);
            r23 = var_80;
    }
    goto loc_1002da78c;

loc_1002dacfc:
    sub_1002dafe0();
    return;

loc_1002da744:
    r26 = 0x0;
    goto loc_1002da748;

loc_1002daca8:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002da630:
    r24 = var_88;
    r25 = r23 - r24;
    r23 = SAR(r25, 0x3);
    r9 = r23 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_1002dac9c;

loc_1002da648:
    r8 = r8 - r24;
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
                    r27 = 0x1fffffffffffffff;
            }
            else {
                    r27 = r9;
            }
    }
    if (r27 == 0x0) goto loc_1002da684;

loc_1002da66c:
    if (r27 >> 0x3d != 0x0) goto loc_1002dacf4;

loc_1002da674:
    r26 = operator new();
    goto loc_1002da688;

loc_1002da688:
    r27 = r26 + r27 * 0x8;
    *(int128_t *)(r26 + r23 * 0x8) = r28;
    *(int128_t *)(0x4 + r26 + r23 * 0x8) = r19;
    r23 = 0x8 + r26 + r23 * 0x8;
    if (r25 >= 0x1) {
            memcpy(r26, r24, r25);
    }
    var_88 = r26;
    var_80 = r23;
    var_78 = r27;
    if (r24 != 0x0) {
            operator delete(r24);
            r23 = var_80;
    }
    goto loc_1002da6cc;

loc_1002dacf4:
    sub_1002dafe0();
    return;

loc_1002da684:
    r26 = 0x0;
    goto loc_1002da688;

loc_1002dac9c:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002da570:
    r24 = var_88;
    r25 = r9 - r24;
    r23 = SAR(r25, 0x3);
    r9 = r23 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_1002dac90;

loc_1002da588:
    r8 = r8 - r24;
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
                    r27 = 0x1fffffffffffffff;
            }
            else {
                    r27 = r9;
            }
    }
    if (r27 == 0x0) goto loc_1002da5c4;

loc_1002da5ac:
    if (r27 >> 0x3d != 0x0) goto loc_1002dacec;

loc_1002da5b4:
    r26 = operator new();
    goto loc_1002da5c8;

loc_1002da5c8:
    r27 = r26 + r27 * 0x8;
    *(int128_t *)(r26 + r23 * 0x8) = r28;
    *(int128_t *)(0x4 + r26 + r23 * 0x8) = r19;
    r23 = 0x8 + r26 + r23 * 0x8;
    if (r25 >= 0x1) {
            memcpy(r26, r24, r25);
    }
    var_88 = r26;
    var_80 = r23;
    var_78 = r27;
    if (r24 != 0x0) {
            operator delete(r24);
            r23 = var_80;
    }
    goto loc_1002da60c;

loc_1002dacec:
    sub_1002dafe0();
    return;

loc_1002da5c4:
    r26 = 0x0;
    goto loc_1002da5c8;

loc_1002dac90:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002da43c:
    r24 = var_B8;
    r25 = r23 - r24;
    r23 = SAR(r25, 0x3);
    r9 = r23 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_1002dac84;

loc_1002da454:
    r8 = r8 - r24;
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
                    r27 = 0x1fffffffffffffff;
            }
            else {
                    r27 = r9;
            }
    }
    if (r27 == 0x0) goto loc_1002da490;

loc_1002da478:
    if (r27 >> 0x3d != 0x0) goto loc_1002dace4;

loc_1002da480:
    r26 = operator new();
    goto loc_1002da494;

loc_1002da494:
    r8 = r26 + r23 * 0x8;
    r23 = r26 + r27 * 0x8;
    *(int128_t *)r8 = r28;
    *(int128_t *)(r8 + 0x4) = r19;
    r19 = r8 + 0x8;
    if (r25 >= 0x1) {
            memcpy(r26, r24, r25);
    }
    var_B8 = r26;
    var_B0 = r19;
    var_A8 = r23;
    if (r24 != 0x0) {
            operator delete(r24);
    }
    goto loc_1002da4d4;

loc_1002dace4:
    sub_1002dafe0();
    return;

loc_1002da490:
    r26 = 0x0;
    goto loc_1002da494;

loc_1002dac84:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002da378:
    r24 = var_B8;
    r25 = r23 - r24;
    r23 = SAR(r25, 0x3);
    r9 = r23 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_1002dac78;

loc_1002da390:
    r8 = r8 - r24;
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
                    r27 = 0x1fffffffffffffff;
            }
            else {
                    r27 = r9;
            }
    }
    if (r27 == 0x0) goto loc_1002da3cc;

loc_1002da3b4:
    if (r27 >> 0x3d != 0x0) goto loc_1002dacdc;

loc_1002da3bc:
    r26 = operator new();
    goto loc_1002da3d0;

loc_1002da3d0:
    r27 = r26 + r27 * 0x8;
    *(int128_t *)(r26 + r23 * 0x8) = r28;
    *(int128_t *)(0x4 + r26 + r23 * 0x8) = r19;
    r23 = 0x8 + r26 + r23 * 0x8;
    if (r25 >= 0x1) {
            memcpy(r26, r24, r25);
    }
    var_B8 = r26;
    var_B0 = r23;
    var_A8 = r27;
    if (r24 != 0x0) {
            operator delete(r24);
            r23 = var_B0;
    }
    goto loc_1002da414;

loc_1002dacdc:
    sub_1002dafe0();
    return;

loc_1002da3cc:
    r26 = 0x0;
    goto loc_1002da3d0;

loc_1002dac78:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002da2b8:
    r24 = var_B8;
    r25 = r23 - r24;
    r23 = SAR(r25, 0x3);
    r9 = r23 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_1002dac6c;

loc_1002da2d0:
    r8 = r8 - r24;
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
                    r27 = 0x1fffffffffffffff;
            }
            else {
                    r27 = r9;
            }
    }
    if (r27 == 0x0) goto loc_1002da30c;

loc_1002da2f4:
    if (r27 >> 0x3d != 0x0) goto loc_1002dacd4;

loc_1002da2fc:
    r26 = operator new();
    goto loc_1002da310;

loc_1002da310:
    r27 = r26 + r27 * 0x8;
    *(int128_t *)(r26 + r23 * 0x8) = r28;
    *(int128_t *)(0x4 + r26 + r23 * 0x8) = r19;
    r23 = 0x8 + r26 + r23 * 0x8;
    if (r25 >= 0x1) {
            memcpy(r26, r24, r25);
    }
    var_B8 = r26;
    var_B0 = r23;
    var_A8 = r27;
    if (r24 != 0x0) {
            operator delete(r24);
            r23 = var_B0;
    }
    goto loc_1002da354;

loc_1002dacd4:
    sub_1002dafe0();
    return;

loc_1002da30c:
    r26 = 0x0;
    goto loc_1002da310;

loc_1002dac6c:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002da1f8:
    r24 = var_B8;
    r25 = r9 - r24;
    r23 = SAR(r25, 0x3);
    r9 = r23 + 0x1;
    if (r9 >> 0x3d != 0x0) goto loc_1002dac60;

loc_1002da210:
    r8 = r8 - r24;
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
                    r27 = 0x1fffffffffffffff;
            }
            else {
                    r27 = r9;
            }
    }
    if (r27 == 0x0) goto loc_1002da24c;

loc_1002da234:
    if (r27 >> 0x3d != 0x0) goto loc_1002daccc;

loc_1002da23c:
    r26 = operator new();
    goto loc_1002da250;

loc_1002da250:
    r27 = r26 + r27 * 0x8;
    *(int128_t *)(r26 + r23 * 0x8) = r28;
    *(int128_t *)(0x4 + r26 + r23 * 0x8) = r19;
    r23 = 0x8 + r26 + r23 * 0x8;
    if (r25 >= 0x1) {
            memcpy(r26, r24, r25);
    }
    var_B8 = r26;
    var_B0 = r23;
    var_A8 = r27;
    if (r24 != 0x0) {
            operator delete(r24);
            r23 = var_B0;
    }
    goto loc_1002da294;

loc_1002daccc:
    sub_1002dafe0();
    return;

loc_1002da24c:
    r26 = 0x0;
    goto loc_1002da250;

loc_1002dac60:
    std::__1::__vector_base_common<true>::__throw_length_error();
    return;

loc_1002da874:
    sub_10031a6c4();
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_shaderProgram));
    [*(r20 + r22) use];
    [*(r20 + r22) setUniformsForBuiltins];
    [r20->_texture bind];
    sub_10031a4a8(*(int128_t *)(int64_t *)&r20->_blendFunc, *(int128_t *)((int64_t *)&r20->_blendFunc + 0x4));
    sub_10031a660(*(int32_t *)(int64_t *)&r20->_VAOname);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_particleIdx));
    r8 = *(int32_t *)(r20 + r8);
    glDrawElements(0x4, r8 + r8 * 0x2 << 0x1, 0x1403, 0x0);
    sub_10031a660(0x0);
    *0x1011e2dd0 = *0x1011e2dd0 + 0x1;
    return;
}

@end