@implementation CCDrawNode

-(void)ensureCapacity:(unsigned long long)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r10 = sign_extend_64(*(int32_t *)(int64_t *)&r0->_bufferCount) + r2;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_bufferCapacity));
    r9 = *(r0 + r8);
    if (r10 >= r9) {
            r19 = r0;
            if (r9 > r2) {
                    if (!CPU_FLAGS & A) {
                            r10 = r2;
                    }
                    else {
                            r10 = r9;
                    }
            }
            *(r0 + r8) = r10 + r9;
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_buffer));
            *(r19 + r20) = realloc(*(r0 + r20), (r10 + r9) * 0x4 + r10 + r9 << 0x2);
    }
    return;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setBlendFunc:0x30300000001];
            [r19 setShaderProgram:[[CCShaderCache sharedShaderCache] programForKey:@"ShaderPositionLengthTextureColor"]];
            [r19 ensureCapacity:0x200];
            glGenVertexArraysOES();
            sub_10031a660(*(int32_t *)(int64_t *)&r19->_vao);
            glEnableVertexAttribArray(0x0);
            glEnableVertexAttribArray(0x1);
            glEnableVertexAttribArray(0x2);
            glGenBuffers(0x1, (int64_t *)&r19->_vbo);
            glBindBuffer(0x8892, *(int32_t *)(int64_t *)&r19->_vbo);
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_bufferCapacity));
            r8 = *(r19 + r8);
            glBufferData(0x8892, r8 + r8 * 0x4 << 0x2, r19->_buffer, 0x88e0);
            glVertexAttribPointer(0x0, 0x2, 0x1406, 0x0, 0x14, 0x0);
            glVertexAttribPointer(0x1, 0x4, 0x1401, 0x1, 0x14, 0x8);
            glVertexAttribPointer(0x2, 0x2, 0x1406, 0x0, 0x14, 0xc);
            glBindBuffer(0x8892, 0x0);
            sub_10031a660(0x0);
            glGetError();
            *(int8_t *)(int64_t *)&r19->_dirty = 0x1;
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    free(*(self + sign_extend_64(*(int32_t *)ivar_offset(_buffer))));
    *(self + r20) = 0x0;
    glDeleteBuffers(0x1, (int64_t *)&self->_vbo);
    *(int32_t *)(int64_t *)&self->_vbo = 0x0;
    glDeleteVertexArraysOES();
    *(int32_t *)(int64_t *)&self->_vao = 0x0;
    sub_10031a660(0x0);
    [[&var_20 super] dealloc];
    return;
}

-(void)render {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_dirty));
    if (*(int8_t *)(self + r20) != 0x0) {
            glBindBuffer(0x8892, *(int32_t *)(int64_t *)&r19->_vbo);
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_bufferCapacity));
            r8 = *(r19 + r8);
            glBufferData(0x8892, r8 + r8 * 0x4 << 0x2, r19->_buffer, 0x88e0);
            glBindBuffer(0x8892, 0x0);
            *(int8_t *)(r19 + r20) = 0x0;
    }
    sub_10031a660(*(int32_t *)(int64_t *)&r19->_vao);
    glDrawArrays(0x4, 0x0, *(int32_t *)(int64_t *)&r19->_bufferCount);
    sub_10031a660(0x0);
    *0x1011e2dd0 = *0x1011e2dd0 + 0x1;
    glGetError();
    return;
}

-(void)draw {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_blendFunc));
    sub_10031a4a8(*(int128_t *)(self + r8), *(int128_t *)(0x4 + self + r8));
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_shaderProgram));
    [*(self + r20) use];
    [*(self + r20) setUniformsForBuiltins];
    [self render];
    return;
}

-(void)drawDot:(struct CGPoint)arg2 radius:(double)arg3 color:(struct _ccColor4F)arg4 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r19 = self;
    [self ensureCapacity:0x6];
    asm { fcvt       s0, d0 };
    asm { fcvt       s1, d1 };
    r8 = 0x437f0000;
    s2 = r8;
    asm { fcvtzs     w8, s3 };
    asm { fcvtzs     w9, s3 };
    asm { fcvtzs     w10, s3 };
    s2 = s8 * s2;
    asm { fcvtzs     w11, s2 };
    asm { bfi        w8, w10, #0x10, #0x8 };
    asm { bfi        w8, w11, #0x18, #0x8 };
    asm { bfi        w8, w9, #0x8, #0x8 };
    asm { fcvt       s2, d2 };
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_buffer));
    r9 = *(r19 + r9);
    r10 = sign_extend_64(*(int32_t *)ivar_offset(_bufferCount));
    asm { madd       x9, x11, x12, x9 };
    *(int128_t *)r9 = s0;
    *(int128_t *)(r9 + 0x4) = s1;
    *(int32_t *)(r9 + 0x8) = r8;
    *(r9 + 0xc) = d3;
    *(int128_t *)(r9 + 0x14) = s0;
    *(int128_t *)(r9 + 0x18) = s2;
    asm { fcvt       s4, d4 };
    *(int32_t *)(r9 + 0x1c) = r8;
    *(r9 + 0x20) = *0x100ba36f0;
    *(int128_t *)(r9 + 0x28) = s4;
    *(int128_t *)(r9 + 0x2c) = s2;
    *(int32_t *)(r9 + 0x30) = r8;
    *(r9 + 0x34) = *0x100ba36f0;
    *(int128_t *)(r9 + 0x3c) = s0;
    *(int128_t *)(r9 + 0x40) = s1;
    *(int32_t *)(r9 + 0x44) = r8;
    *(r9 + 0x48) = d3;
    *(int128_t *)(r9 + 0x50) = s4;
    *(int128_t *)(r9 + 0x54) = s2;
    *(int32_t *)(r9 + 0x58) = r8;
    *(r9 + 0x5c) = *0x100ba36f0;
    *(int128_t *)(r9 + 0x64) = s4;
    *(int128_t *)(r9 + 0x68) = s1;
    *(int32_t *)(r9 + 0x6c) = r8;
    *(r9 + 0x70) = *0x100ba36f8;
    *(int32_t *)(r19 + r10) = *(int32_t *)(r19 + r10) + 0x6;
    *(int8_t *)(int64_t *)&r19->_dirty = 0x1;
    return;
}

-(void)clear {
    *(int32_t *)(int64_t *)&self->_bufferCount = 0x0;
    *(int8_t *)(int64_t *)&self->_dirty = 0x1;
    return;
}

-(void)drawSegmentFrom:(struct CGPoint)arg2 to:(struct CGPoint)arg3 radius:(double)arg4 color:(struct _ccColor4F)arg5 {
    memcpy(&r5, &arg5, 0x8);
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    [self ensureCapacity:0x12];
    asm { fcvt       s12, d12 };
    asm { fcvt       s11, d11 };
    asm { fcvt       s10, d10 };
    asm { fcvt       s9, d9 };
    asm { fcvt       d0, s0 };
    asm { fcvt       d1, s1 };
    sub_1003115e8();
    r10 = r19->_buffer;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_bufferCount));
    r9 = 0x437f0000;
    s2 = r9;
    asm { fcvtzs     w9, s3 };
    asm { fcvtzs     w12, s3 };
    asm { madd       x10, x11, x13, x10 };
    s3 = s14 * s2;
    asm { fcvtzs     w11, s3 };
    s2 = s13 * s2;
    asm { fcvtzs     w13, s2 };
    asm { fcvt       s2, d0 };
    asm { fcvt       s0, d1 };
    s1 = -s0;
    asm { fcvt       s3, d3 };
    s5 = s3 * s2;
    s6 = s3 * s0;
    s7 = s3 * s1;
    s16 = s5 + s7;
    s17 = s6 + s5;
    *(int128_t *)r10 = s10 - s16;
    *(int128_t *)(r10 + 0x4) = s9 - s17;
    asm { bfi        w9, w11, #0x10, #0x8 };
    asm { bfi        w9, w13, #0x18, #0x8 };
    asm { bfi        w9, w12, #0x8, #0x8 };
    *(int32_t *)(r10 + 0x8) = r9;
    *(int128_t *)(r10 + 0xc) = -(s2 - s0);
    *(int128_t *)(r10 + 0x10) = -(s0 + s2);
    *(int128_t *)(r10 + 0x14) = (s5 - s7) + s10;
    *(int128_t *)(r10 + 0x18) = (s6 - s5) + s9;
    *(int32_t *)(r10 + 0x1c) = r9;
    *(int128_t *)(r10 + 0x20) = s0 + s2;
    *(int128_t *)(r10 + 0x24) = s0 - s2;
    *(int128_t *)(r10 + 0x28) = s10 - s5;
    *(int128_t *)(r10 + 0x2c) = s9 - s6;
    *(int32_t *)(r10 + 0x30) = r9;
    *(int128_t *)(r10 + 0x34) = -s2;
    *(int128_t *)(r10 + 0x38) = s1;
    *(int128_t *)(r10 + 0x3c) = s5 + s10;
    *(int128_t *)(r10 + 0x40) = s6 + s9;
    *(int32_t *)(r10 + 0x44) = r9;
    *(int128_t *)(r10 + 0x48) = s2;
    *(int128_t *)(r10 + 0x4c) = s0;
    *(int128_t *)(r10 + 0x50) = (s5 - s7) + s10;
    *(int128_t *)(r10 + 0x54) = (s6 - s5) + s9;
    *(int32_t *)(r10 + 0x58) = r9;
    *(int128_t *)(r10 + 0x5c) = s0 + s2;
    *(int128_t *)(r10 + 0x60) = s0 - s2;
    *(int128_t *)(r10 + 0x64) = s10 - s5;
    *(int128_t *)(r10 + 0x68) = s9 - s6;
    *(int32_t *)(r10 + 0x6c) = r9;
    *(int128_t *)(r10 + 0x70) = -s2;
    *(int128_t *)(r10 + 0x74) = s1;
    *(int128_t *)(r10 + 0x78) = s5 + s10;
    *(int128_t *)(r10 + 0x7c) = s6 + s9;
    *(int32_t *)(r10 + 0x80) = r9;
    *(int128_t *)(r10 + 0x84) = s2;
    *(int128_t *)(r10 + 0x88) = s0;
    *(int128_t *)(r10 + 0x8c) = s12 - s5;
    *(int128_t *)(r10 + 0x90) = s11 - s6;
    *(int32_t *)(r10 + 0x94) = r9;
    *(int128_t *)(r10 + 0x98) = -s2;
    *(int128_t *)(r10 + 0x9c) = s1;
    *(int128_t *)(r10 + 0xa0) = s10 - s5;
    *(int128_t *)(r10 + 0xa4) = s9 - s6;
    *(int32_t *)(r10 + 0xa8) = r9;
    *(int128_t *)(r10 + 0xac) = -s2;
    *(int128_t *)(r10 + 0xb0) = s1;
    *(int128_t *)(r10 + 0xb4) = s5 + s10;
    *(int128_t *)(r10 + 0xb8) = s6 + s9;
    *(int32_t *)(r10 + 0xbc) = r9;
    *(int128_t *)(r10 + 0xc0) = s2;
    *(int128_t *)(r10 + 0xc4) = s0;
    *(int128_t *)(r10 + 0xc8) = s12 - s5;
    *(int128_t *)(r10 + 0xcc) = s11 - s6;
    *(int32_t *)(r10 + 0xd0) = r9;
    *(int128_t *)(r10 + 0xd4) = -s2;
    *(int128_t *)(r10 + 0xd8) = s1;
    *(int128_t *)(r10 + 0xdc) = s5 + s12;
    *(int128_t *)(r10 + 0xe0) = s6 + s11;
    *(int32_t *)(r10 + 0xe4) = r9;
    *(int128_t *)(r10 + 0xe8) = s2;
    *(int128_t *)(r10 + 0xec) = s0;
    *(int128_t *)(r10 + 0xf0) = (s12 - s5) + s7;
    *(int128_t *)(r10 + 0xf4) = (s11 - s6) + s5;
    *(int32_t *)(r10 + 0xf8) = r9;
    *(int128_t *)(r10 + 0xfc) = s1 - s2;
    *(int128_t *)(r10 + 0x100) = s2 - s0;
    *(int32_t *)(r10 + 0x104) = s12 - s5;
    *(int32_t *)(r10 + 0x108) = s11 - s6;
    *(int32_t *)(r10 + 0x10c) = r9;
    *(int32_t *)(r10 + 0x110) = -s2;
    *(int32_t *)(r10 + 0x114) = s1;
    *(int32_t *)(r10 + 0x118) = s5 + s12;
    *(int32_t *)(r10 + 0x11c) = s6 + s11;
    *(int32_t *)(r10 + 0x120) = r9;
    *(int32_t *)(r10 + 0x124) = s2;
    *(int32_t *)(r10 + 0x128) = s0;
    *(int32_t *)(r10 + 0x12c) = (s12 - s5) + s7;
    *(int32_t *)(r10 + 0x130) = (s11 - s6) + s5;
    *(int32_t *)(r10 + 0x134) = r9;
    *(int32_t *)(r10 + 0x138) = s1 - s2;
    *(int32_t *)(r10 + 0x13c) = s2 - s0;
    *(int32_t *)(r10 + 0x140) = s16 + s12;
    *(int32_t *)(r10 + 0x144) = s17 + s11;
    *(int32_t *)(r10 + 0x148) = r9;
    *(int32_t *)(r10 + 0x14c) = s2 - s0;
    *(int32_t *)(r10 + 0x150) = s0 + s2;
    *(int32_t *)(r10 + 0x154) = s5 + s12;
    *(int32_t *)(r10 + 0x158) = s6 + s11;
    *(int32_t *)(r10 + 0x15c) = r9;
    *(int32_t *)(r10 + 0x160) = s2;
    *(int32_t *)(r10 + 0x164) = s0;
    *(int32_t *)(r19 + r8) = *(int32_t *)(r19 + r8) + 0x12;
    *(int8_t *)(int64_t *)&r19->_dirty = 0x1;
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

-(void)drawPolyWithVerts:(struct CGPoint *)arg2 count:(unsigned long long)arg3 fillColor:(struct _ccColor4F)arg4 borderWidth:(double)arg5 borderColor:(struct _ccColor4F)arg6 {
    memcpy(&r6, &arg6, 0x8);
    memcpy(&r4, &arg4, 0x8);
    var_80 = d15;
    stack[-136] = d14;
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
    r29 = &saved_fp;
    var_90 = d4;
    var_98 = s2;
    stack[-164] = s3;
    var_A0 = s0;
    stack[-172] = s1;
    r20 = arg3;
    r21 = arg2;
    r19 = self;
    s8 = arg_C;
    r8 = &var_A0;
    r22 = r8 - arg3 * 0x10;
    bzero(r22, arg3 << 0x4);
    if (r20 != 0x0) {
            r23 = 0x0;
            r24 = r21 + 0x8;
            r25 = r22 + 0x8;
            do {
                    asm { udiv       x9, x8, x20 };
                    asm { fcvt       s0, d0 };
                    asm { fcvt       s15, d2 };
                    asm { fcvt       s9, d3 };
                    r23 = r23 + 0x1;
                    r8 = r23 & 0xffffffff;
                    asm { fcvt       s1, d1 };
                    asm { udiv       x9, x8, x20 };
                    r8 = r21 + (r8 - r9 * r20) * 0x10;
                    d3 = *(int128_t *)(r8 + 0x8);
                    asm { fcvt       s10, d2 };
                    asm { fcvt       s11, d3 };
                    asm { fcvt       d1, s0 };
                    asm { fcvt       d0, s2 };
                    sub_1003115e8();
                    asm { fcvt       s12, d0 };
                    asm { fcvt       s13, d1 };
                    s1 = s10 - s15;
                    s0 = -(s11 - s9);
                    asm { fcvt       d0, s0 };
                    asm { fcvt       d1, s1 };
                    sub_1003115e8();
                    asm { fcvt       s0, d0 };
                    asm { fcvt       s1, d1 };
                    s2 = s12 + s0;
                    s3 = s13 + s1;
                    s4 = s12 * s0 + s13 * s1;
                    asm { fcvt       d4, s4 };
                    d4 = d4 + d14;
                    asm { fdiv       d4, d14, d4 };
                    asm { fcvt       s4, d4 };
                    *(int128_t *)(r25 + 0xfffffffffffffff8) = s2 * s4;
                    *(int128_t *)(r25 + 0xfffffffffffffffc) = s3 * s4;
                    *(int128_t *)r25 = s0;
                    *(int128_t *)(r25 + 0x4) = s1;
                    r25 = r25 + 0x10;
                    r24 = r24 + 0x10;
            } while (r20 != r23);
    }
    if (s8 > 0x0) {
            if (CPU_FLAGS & G) {
                    r8 = 0x1;
            }
    }
    if (var_90 > 0x0) {
            if (CPU_FLAGS & G) {
                    r9 = 0x1;
            }
    }
    r24 = r9 & r8;
    r23 = r20 + r20 * 0x8 - 0x6;
    [r19 ensureCapacity:r23];
    r9 = r19->_buffer;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_bufferCount));
    asm { madd       x9, x10, x11, x9 };
    r10 = r20 - 0x2;
    if (r10 != 0x0) {
            r11 = r22 + 0x20;
            COND = r24 != 0x0;
            s18 = var_A0;
            s17 = stack[-172];
            asm { fcvtzs     w12, s3 };
            asm { fcvtzs     w13, s3 };
            s16 = var_98;
            s7 = stack[-164];
            asm { fcvtzs     w14, s3 };
            if (COND) {
                    asm { fcsel      s3, s3, s0, ne };
            }
            asm { dup        v0.2s, v3.s[0] };
            asm { fcvtzs     w15, s2 };
            v1 = v1 * v3;
            asm { bfi        w12, w14, #0x10, #0x8 };
            asm { bfi        w12, w15, #0x18, #0x8 };
            asm { bfi        w12, w13, #0x8, #0x8 };
            r13 = r21 + 0x20;
            do {
                    d2 = 0x0;
                    r12 = 0x437f0000;
                    asm { fcvtn      v3.2s, v3.2d };
                    v3 = v3 - v1;
                    asm { fcvtn      v4.2s, v4.2d };
                    d5 = *(r11 + 0xfffffffffffffff0);
                    v5 = v0 * v5;
                    v4 = v4 - v5;
                    r13 = r13 + 0x10;
                    asm { fcvtn      v5.2s, v5.2d };
                    r11 = r11 + 0x10;
                    v6 = v0 * v6;
                    v5 = v5 - v6;
                    r14 = r9 + 0x3c;
                    *r9 = d3;
                    *(int32_t *)(r9 + 0x8) = r12;
                    *(r9 + 0xc) = d2;
                    *(r9 + 0x14) = d4;
                    *(int32_t *)(r9 + 0x1c) = r12;
                    *(int128_t *)(r9 + 0x20) = d2;
                    *(int128_t *)(r9 + 0x28) = d5;
                    *(int32_t *)(r9 + 0x30) = r12;
                    *(r9 + 0x34) = d2;
                    r9 = r14;
                    r10 = r10 - 0x1;
            } while (r10 != 0x0);
            r9 = r14;
            if (r20 != 0x0) {
                    r12 = 0x0;
                    asm { fcvtzs     w10, s4 };
                    asm { fcvtzs     w11, s4 };
                    asm { fcvtzs     w13, s4 };
                    asm { fcvtzs     w14, s4 };
                    asm { bfi        w10, w13, #0x10, #0x8 };
                    asm { bfi        w10, w14, #0x18, #0x8 };
                    asm { bfi        w10, w11, #0x8, #0x8 };
                    asm { fcvt       s4, d8 };
                    asm { fcvtzs     w11, s1 };
                    asm { fcvtzs     w13, s1 };
                    asm { fcvtzs     w14, s0 };
                    asm { bfi        w11, w14, #0x10, #0x8 };
                    asm { fcvtzs     w14, s0 };
                    asm { bfi        w11, w14, #0x18, #0x8 };
                    asm { bfi        w11, w13, #0x8, #0x8 };
                    asm { dup        v0.2s, v4.s[0] };
                    r13 = r22 + 0xc;
                    r14 = r20 - 0x1;
                    do {
                            if (r14 == r12) {
                                    asm { csinc      x15, xzr, x12, eq };
                            }
                            asm { fcvtn      v3.2s, v3.2d };
                            r15 = r15 << 0x4;
                            asm { fcvtn      v4.2s, v4.2d };
                            s5 = *(int128_t *)(r13 + 0xfffffffffffffffc);
                            s6 = *(int128_t *)r13;
                            v7 = v7 * v0;
                            if (r24 == 0x0) {
                                    asm { fcsel      d7, d17, d7, eq };
                            }
                            *r9 = d17;
                            if (CPU_FLAGS & E) {
                                    if (!CPU_FLAGS & E) {
                                            r15 = r11;
                                    }
                                    else {
                                            r15 = 0x437f0000;
                                    }
                            }
                            *(int32_t *)(r9 + 0x8) = r15;
                            s19 = -s5;
                            if (CPU_FLAGS & E) {
                                    asm { fcsel      s19, s2, s19, eq };
                            }
                            *(int32_t *)(r9 + 0xc) = s19;
                            s20 = -s6;
                            if (CPU_FLAGS & E) {
                                    asm { fcsel      s20, s2, s20, eq };
                            }
                            *(int32_t *)(r9 + 0x10) = s20;
                            v16 = v16 * v0;
                            if (CPU_FLAGS & E) {
                                    asm { fcsel      d16, d18, d16, eq };
                            }
                            *(r9 + 0x14) = d18;
                            r16 = r12 + 0x1;
                            *(int32_t *)(r9 + 0x1c) = r15;
                            v4 = v16 + v4;
                            v3 = v7 + v3;
                            *(int32_t *)(r9 + 0x20) = s19;
                            *(int32_t *)(r9 + 0x24) = s20;
                            *(r9 + 0x28) = d4;
                            *(int32_t *)(r9 + 0x30) = r15;
                            *(int32_t *)(r9 + 0x34) = s5;
                            *(int32_t *)(r9 + 0x38) = s6;
                            *(r9 + 0x3c) = d17;
                            *(int32_t *)(r9 + 0x44) = r15;
                            *(int32_t *)(r9 + 0x48) = s19;
                            *(int32_t *)(r9 + 0x4c) = s20;
                            *(r9 + 0x50) = d3;
                            *(int32_t *)(r9 + 0x58) = r15;
                            *(int32_t *)(r9 + 0x5c) = s5;
                            *(int32_t *)(r9 + 0x60) = s6;
                            *(r9 + 0x64) = d4;
                            *(int32_t *)(r9 + 0x6c) = r15;
                            *(int32_t *)(r9 + 0x70) = s5;
                            *(int32_t *)(r9 + 0x74) = s6;
                            r13 = r13 + 0x10;
                            r9 = r9 + 0x78;
                            r12 = r16;
                    } while (r20 != r16);
            }
    }
    else {
            r11 = 0x14;
            s16 = var_98;
            s7 = stack[-164];
            s18 = var_A0;
            s17 = stack[-172];
            if (r20 != 0x0) {
                    r12 = 0x0;
                    asm { fcvtzs     w10, s4 };
                    asm { fcvtzs     w11, s4 };
                    asm { fcvtzs     w13, s4 };
                    asm { fcvtzs     w14, s4 };
                    asm { bfi        w10, w13, #0x10, #0x8 };
                    asm { bfi        w10, w14, #0x18, #0x8 };
                    asm { bfi        w10, w11, #0x8, #0x8 };
                    asm { fcvt       s4, d8 };
                    asm { fcvtzs     w11, s1 };
                    asm { fcvtzs     w13, s1 };
                    asm { fcvtzs     w14, s0 };
                    asm { bfi        w11, w14, #0x10, #0x8 };
                    asm { fcvtzs     w14, s0 };
                    asm { bfi        w11, w14, #0x18, #0x8 };
                    asm { bfi        w11, w13, #0x8, #0x8 };
                    asm { dup        v0.2s, v4.s[0] };
                    r13 = r22 + 0xc;
                    r14 = r20 - 0x1;
                    do {
                            if (r14 == r12) {
                                    asm { csinc      x15, xzr, x12, eq };
                            }
                            asm { fcvtn      v3.2s, v3.2d };
                            r15 = r15 << 0x4;
                            asm { fcvtn      v4.2s, v4.2d };
                            s5 = *(int128_t *)(r13 + 0xfffffffffffffffc);
                            s6 = *(int128_t *)r13;
                            v7 = v7 * v0;
                            if (r24 == 0x0) {
                                    asm { fcsel      d7, d17, d7, eq };
                            }
                            *r9 = d17;
                            if (CPU_FLAGS & E) {
                                    if (!CPU_FLAGS & E) {
                                            r15 = r11;
                                    }
                                    else {
                                            r15 = 0x437f0000;
                                    }
                            }
                            *(int32_t *)(r9 + 0x8) = r15;
                            s19 = -s5;
                            if (CPU_FLAGS & E) {
                                    asm { fcsel      s19, s2, s19, eq };
                            }
                            *(int32_t *)(r9 + 0xc) = s19;
                            s20 = -s6;
                            if (CPU_FLAGS & E) {
                                    asm { fcsel      s20, s2, s20, eq };
                            }
                            *(int32_t *)(r9 + 0x10) = s20;
                            v16 = v16 * v0;
                            if (CPU_FLAGS & E) {
                                    asm { fcsel      d16, d18, d16, eq };
                            }
                            *(r9 + 0x14) = d18;
                            r16 = r12 + 0x1;
                            *(int32_t *)(r9 + 0x1c) = r15;
                            v4 = v16 + v4;
                            v3 = v7 + v3;
                            *(int32_t *)(r9 + 0x20) = s19;
                            *(int32_t *)(r9 + 0x24) = s20;
                            *(r9 + 0x28) = d4;
                            *(int32_t *)(r9 + 0x30) = r15;
                            *(int32_t *)(r9 + 0x34) = s5;
                            *(int32_t *)(r9 + 0x38) = s6;
                            *(r9 + 0x3c) = d17;
                            *(int32_t *)(r9 + 0x44) = r15;
                            *(int32_t *)(r9 + 0x48) = s19;
                            *(int32_t *)(r9 + 0x4c) = s20;
                            *(r9 + 0x50) = d3;
                            *(int32_t *)(r9 + 0x58) = r15;
                            *(int32_t *)(r9 + 0x5c) = s5;
                            *(int32_t *)(r9 + 0x60) = s6;
                            *(r9 + 0x64) = d4;
                            *(int32_t *)(r9 + 0x6c) = r15;
                            *(int32_t *)(r9 + 0x70) = s5;
                            *(int32_t *)(r9 + 0x74) = s6;
                            r13 = r13 + 0x10;
                            r9 = r9 + 0x78;
                            r12 = r16;
                    } while (r20 != r16);
            }
    }
    var_88 = **___stack_chk_guard;
    *(int32_t *)(r19 + r8) = *(int32_t *)(r19 + r8) + r23;
    *(int8_t *)(int64_t *)&r19->_dirty = 0x1;
    if (**___stack_chk_guard != var_88) {
            __stack_chk_fail();
    }
    return;
}

@end