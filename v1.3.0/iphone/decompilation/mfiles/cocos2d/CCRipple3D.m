@implementation CCRipple3D

+(void *)actionWithDuration:(double)arg2 size:(struct CGSize)arg3 position:(struct CGPoint)arg4 radius:(float)arg5 waves:(long long)arg6 amplitude:(float)arg7 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 size:r3 position:r4 radius:r5 waves:r6 amplitude:r7];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 size:(struct CGSize)arg3 position:(struct CGPoint)arg4 radius:(float)arg5 waves:(long long)arg6 amplitude:(float)arg7 {
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
    r19 = arg2;
    v10 = v4;
    v11 = v3;
    r0 = [[&var_40 super] initWithDuration:r2 size:r3];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setPosition:r2];
            *(int32_t *)(int64_t *)&r20->_radius = s9;
            r20->_waves = r19;
            *(int32_t *)(int64_t *)&r20->_amplitude = s8;
            *(int32_t *)(int64_t *)&r20->_amplitudeRate = 0x3f800000;
    }
    r0 = r20;
    return r0;
}

-(struct CGPoint)position {
    r0 = self;
    return r0;
}

-(void)setPosition:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_position));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 allocWithZone:arg2];
    r0 = [r0 initWithDuration:self->_waves size:r3 position:r4 radius:r5 waves:r6 amplitude:r7];
    return r0;
}

-(float)amplitude {
    r0 = self;
    return r0;
}

-(void)setAmplitude:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_amplitude = s0;
    return;
}

-(float)amplitudeRate {
    r0 = self;
    return r0;
}

-(void)update:(double)arg2 {
    r2 = arg2;
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
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_gridSize));
    d1 = *(r0 + r22);
    if (d1 > 0xc010000000000000) {
            r19 = r0;
            r23 = 0x0;
            var_A8 = d0 * *0x100b9b018;
            r24 = r0 + 0x8;
            d0 = *(r24 + r22);
            do {
                    d2 = d0 + 0x3ff0000000000000;
                    if (d2 > 0x0) {
                            r25 = 0x1;
                            do {
                                    r27 = 0x10116c000;
                                    [r19 originalVertex:r2];
                                    v10 = v8;
                                    v11 = v9;
                                    v12 = v2;
                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_position));
                                    d0 = *(int128_t *)(r19 + r8);
                                    d1 = *(int128_t *)(0x8 + r19 + r8);
                                    asm { fcvt       d2, s10 };
                                    asm { fcvt       d3, s11 };
                                    d0 = d0 - d2;
                                    d1 = d1 - d3;
                                    r0 = sub_1003115a8();
                                    s1 = *(int32_t *)(r19 + sign_extend_64(*(int32_t *)(r27 + 0x1b0)));
                                    asm { fcvt       d1, s1 };
                                    if (d0 < d1) {
                                            d15 = *0x100b9b7b0;
                                            d0 = d1 - d0;
                                            asm { fdiv       d1, d0, d1 };
                                            asm { fcvt       s1, d1 };
                                            asm { fcvt       d14, s1 };
                                            d1 = r19->_waves;
                                            asm { ucvtf      d1, d1 };
                                            d2 = var_A8;
                                            asm { fcvt       s0, d0 };
                                            sinf(r0);
                                            s0 = *(int32_t *)(int64_t *)&r19->_amplitude * s0;
                                            s0 = *(int32_t *)(r19 + sign_extend_64(*(int32_t *)(r28 + 0x1bc))) * s0;
                                            asm { fcvt       d0, s0 };
                                            asm { fcvt       d1, s12 };
                                            asm { fcvt       s12, d0 };
                                    }
                                    v2 = v10;
                                    [r19 setVertex:r2 vertex:r3];
                                    asm { scvtf      d9, w25 };
                                    d0 = *(r24 + r22);
                                    r25 = r25 + 0x1;
                            } while (d0 + d13 > d9);
                            d1 = *(r19 + r22);
                    }
                    d13 = 0x3ff0000000000000;
                    d8 = 0x0;
                    r23 = r23 + 0x1;
                    asm { scvtf      d8, w23 };
            } while (d1 + d13 > d8);
    }
    return;
}

-(void)setAmplitudeRate:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_amplitudeRate = s0;
    return;
}

+(void *)actionWithPosition:(struct CGPoint)arg2 radius:(float)arg3 waves:(int)arg4 amplitude:(float)arg5 grid:(struct CGSize)arg6 duration:(double)arg7 {
    memcpy(&r6, &arg6, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    asm { sxtw       x2, w2 };
    r0 = [r0 actionWithDuration:r2 size:r3 position:r4 radius:r5 waves:r6 amplitude:r7];
    return r0;
}

-(void *)initWithPosition:(struct CGPoint)arg2 radius:(float)arg3 waves:(int)arg4 amplitude:(float)arg5 grid:(struct CGSize)arg6 duration:(double)arg7 {
    memcpy(&r6, &arg6, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    asm { sxtw       x2, w2 };
    r0 = [r0 initWithDuration:r2 size:r3 position:r4 radius:r5 waves:r6 amplitude:r7];
    return r0;
}

@end