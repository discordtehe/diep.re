@implementation CCWaves

+(void *)actionWithDuration:(double)arg2 size:(struct CGSize)arg3 waves:(unsigned long long)arg4 amplitude:(float)arg5 horizontal:(bool)arg6 vertical:(bool)arg7 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 size:r3 waves:r4 amplitude:r5 horizontal:r6 vertical:r7];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 size:(struct CGSize)arg3 waves:(unsigned long long)arg4 amplitude:(float)arg5 horizontal:(bool)arg6 vertical:(bool)arg7 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r4;
    r20 = r3;
    r21 = arg2;
    r0 = [[&var_40 super] initWithDuration:r2 size:r3];
    if (r0 != 0x0) {
            r0->_waves = r21;
            *(int32_t *)(int64_t *)&r0->_amplitude = s8;
            *(int32_t *)(int64_t *)&r0->_amplitudeRate = 0x3f800000;
            *(int8_t *)(int64_t *)&r0->_horizontal = r20;
            *(int8_t *)(int64_t *)&r0->_vertical = r19;
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 allocWithZone:arg2];
    r0 = [r0 initWithDuration:self->_waves size:*(int8_t *)(int64_t *)&self->_horizontal waves:*(int8_t *)(int64_t *)&self->_vertical amplitude:r5 horizontal:r6 vertical:r7];
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
            r9 = 0x0;
            d14 = d0 * *0x100b9b018;
            r24 = r0 + 0x8;
            d0 = *(r24 + r22);
            do {
                    if (d0 > 0xc010000000000000) {
                            var_A4 = r9;
                            r26 = 0x1;
                            do {
                                    r0 = [r19 originalVertex:r2];
                                    v11 = v8;
                                    v12 = v9;
                                    v10 = v2;
                                    if (*(int8_t *)(int64_t *)&r19->_vertical != 0x0) {
                                            r25 = 0x10116c000;
                                            r23 = 0x10116c000;
                                            d0 = r19->_waves;
                                            asm { ucvtf      d0, d0 };
                                            asm { fcvt       d1, s1 };
                                            asm { fcvt       s0, d0 };
                                            r0 = sinf(r0);
                                            s0 = *(int32_t *)(r19 + sign_extend_64(*(int32_t *)(r25 + 0x1dc))) * s0;
                                            s0 = *(int32_t *)(r19 + sign_extend_64(*(int32_t *)(r23 + 0x1e0))) * s0;
                                            s11 = s11 + s0;
                                    }
                                    if (*(int8_t *)(int64_t *)&r19->_horizontal != 0x0) {
                                            d0 = r19->_waves;
                                            asm { ucvtf      d0, d0 };
                                            asm { fcvt       d1, s1 };
                                            asm { fcvt       s0, d0 };
                                            sinf(r0);
                                            s0 = *(int32_t *)(r19 + sign_extend_64(*(int32_t *)(r25 + 0x1dc))) * s0;
                                            s0 = *(int32_t *)(r19 + sign_extend_64(*(int32_t *)(r23 + 0x1e0))) * s0;
                                            s12 = s12 + s0;
                                    }
                                    v2 = v11;
                                    [r19 setVertex:r2 vertex:r3];
                                    asm { scvtf      d9, w26 };
                                    d0 = *(r24 + r22);
                                    d1 = d0 + d13;
                                    r26 = r26 + 0x1;
                            } while (d1 > d9);
                            d1 = *(r19 + r22);
                            r9 = var_A4;
                    }
                    d13 = 0x3ff0000000000000;
                    d8 = 0x0;
                    r9 = r9 + 0x1;
                    asm { scvtf      d8, w9 };
            } while (d1 + d13 > d8);
    }
    return;
}

-(float)amplitudeRate {
    r0 = self;
    return r0;
}

-(void)setAmplitudeRate:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_amplitudeRate = s0;
    return;
}

+(void *)actionWithWaves:(int)arg2 amplitude:(float)arg3 horizontal:(bool)arg4 vertical:(bool)arg5 grid:(struct CGSize)arg6 duration:(double)arg7 {
    memcpy(&r6, &arg6, 0x8);
    r5 = arg5;
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    asm { sxtw       x2, w2 };
    r0 = [r0 actionWithDuration:r2 size:r3 waves:r4 amplitude:r5 horizontal:r6 vertical:r7];
    return r0;
}

-(void *)initWithWaves:(int)arg2 amplitude:(float)arg3 horizontal:(bool)arg4 vertical:(bool)arg5 grid:(struct CGSize)arg6 duration:(double)arg7 {
    memcpy(&r6, &arg6, 0x8);
    r5 = arg5;
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    asm { sxtw       x2, w2 };
    r0 = [r0 initWithDuration:r2 size:r3 waves:r4 amplitude:r5 horizontal:r6 vertical:r7];
    return r0;
}

@end