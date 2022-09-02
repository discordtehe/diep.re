@implementation CCLens3D

+(void *)actionWithDuration:(double)arg2 size:(struct CGSize)arg3 position:(struct CGPoint)arg4 radius:(float)arg5 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 size:r3 position:r4 radius:r5];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 size:(struct CGSize)arg3 position:(struct CGPoint)arg4 radius:(float)arg5 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x50;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v9 = v4;
    v10 = v3;
    r0 = [[&var_40 super] initWithDuration:arg2 size:r3];
    r19 = r0;
    if (r0 != 0x0) {
            *(int128_t *)(int64_t *)&r19->_position = q0;
            [r19 setPosition:r2];
            *(int32_t *)(int64_t *)&r19->_radius = s8;
            *(int32_t *)(int64_t *)&r19->_lensEffect = 0x3f333333;
            *(int8_t *)(int64_t *)&r19->_dirty = 0x1;
    }
    r0 = r19;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 allocWithZone:arg2];
    r0 = [r0 initWithDuration:arg2 size:r3 position:r4 radius:r5];
    return r0;
}

-(struct CGPoint)position {
    r0 = self;
    return r0;
}

-(void)setPosition:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_position));
    r8 = r0 + r8;
    if (d0 == *(int128_t *)r8) {
            asm { fccmp      d1, d3, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            *(int128_t *)r8 = d0;
            *(int128_t *)(r8 + 0x8) = d1;
            *(int8_t *)(int64_t *)&r0->_dirty = 0x1;
    }
    return;
}

-(float)lensEffect {
    r0 = self;
    return r0;
}

-(void)update:(double)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0xd0;
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
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_dirty));
    if (*(int8_t *)(r0 + r9) != 0x0) {
            r19 = r0;
            var_C8 = r9;
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_gridSize));
            d0 = *(r0 + r23);
            if (d0 > 0xc010000000000000) {
                    r24 = 0x0;
                    r25 = r19 + 0x8;
                    d1 = *(r25 + r23);
                    d8 = 0x0;
                    do {
                            d2 = d1 + 0x3ff0000000000000;
                            if (d2 > 0x0) {
                                    r26 = 0x1;
                                    var_B0 = d8;
                                    do {
                                            [r19 originalVertex:r2];
                                            v11 = v9;
                                            v10 = v2;
                                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_position));
                                            var_A4 = s0;
                                            asm { fcvt       d2, s0 };
                                            asm { fcvt       d3, s11 };
                                            v0 = v13;
                                            sub_1003115a8();
                                            s8 = *(int32_t *)(r19 + sign_extend_64(*(int32_t *)(r28 + 0x1a4)));
                                            asm { fcvt       d12, s8 };
                                            if (d0 < d12) {
                                                    r22 = sign_extend_64(*(int32_t *)ivar_offset(_lensEffect));
                                                    s0 = *(int32_t *)(r19 + r22);
                                                    var_B4 = s0;
                                                    r0 = sub_1003115a8();
                                                    if (d0 > 0x0) {
                                                            var_C0 = *0x100b9b5b8;
                                                            d0 = d12 - d15;
                                                            asm { fdiv       d0, d0, d12 };
                                                            d1 = var_C0;
                                                            if (d0 == 0x0) {
                                                                    asm { fcsel      d0, d1, d0, eq };
                                                            }
                                                            asm { fcvt       s0, d0 };
                                                            r0 = logf(r0);
                                                            s0 = s0 * var_B4;
                                                            expf(r0);
                                                            sub_1003115e8();
                                                            asm { fcvt       d2, s8 };
                                                            sub_1003115a8();
                                                            asm { fcvt       d1, s1 };
                                                            asm { fcvt       d1, s10 };
                                                            asm { fcvt       s10, d0 };
                                                    }
                                            }
                                            d8 = var_B0;
                                            [r19 setVertex:r2 vertex:r3];
                                            asm { scvtf      d9, w26 };
                                            d1 = *(r25 + r23);
                                            d0 = d1 + 0x3ff0000000000000;
                                            r26 = r26 + 0x1;
                                    } while (d0 > d9);
                                    d0 = *(r19 + r23);
                            }
                            d3 = 0x3ff0000000000000;
                            r24 = r24 + 0x1;
                            asm { scvtf      d8, w24 };
                    } while (d0 + d3 > d8);
            }
            *(int8_t *)(r19 + var_C8) = 0x0;
    }
    return;
}

-(void)setLensEffect:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_lensEffect = s0;
    return;
}

+(void *)actionWithPosition:(struct CGPoint)arg2 radius:(float)arg3 grid:(struct CGSize)arg4 duration:(double)arg5 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r0 = [self actionWithDuration:r2 size:r3 position:r4 radius:r5];
    return r0;
}

-(void *)initWithPosition:(struct CGPoint)arg2 radius:(float)arg3 grid:(struct CGSize)arg4 duration:(double)arg5 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r0 = [self initWithDuration:r2 size:r3 position:r4 radius:r5];
    return r0;
}

@end