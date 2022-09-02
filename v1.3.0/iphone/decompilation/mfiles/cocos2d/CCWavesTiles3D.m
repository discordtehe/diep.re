@implementation CCWavesTiles3D

+(void *)actionWithDuration:(double)arg2 size:(struct CGSize)arg3 waves:(unsigned long long)arg4 amplitude:(float)arg5 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 size:r3 waves:r4 amplitude:r5];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 size:(struct CGSize)arg3 waves:(unsigned long long)arg4 amplitude:(float)arg5 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_30 super] initWithDuration:r2 size:r3];
    if (r0 != 0x0) {
            r0->_waves = r19;
            *(int32_t *)(int64_t *)&r0->_amplitude = s8;
            *(int32_t *)(int64_t *)&r0->_amplitudeRate = 0x3f800000;
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 allocWithZone:arg2];
    r0 = [r0 initWithDuration:self->_waves size:r3 waves:r4 amplitude:r5];
    return r0;
}

-(float)amplitude {
    r0 = self;
    return r0;
}

-(void)update:(double)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0xe0;
    var_70 = d11;
    stack[-120] = d10;
    var_60 = d9;
    stack[-104] = d8;
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
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_gridSize));
    d1 = *(r0 + r22);
    if (d1 > 0x0) {
            r19 = r0;
            r23 = 0x0;
            d10 = d0 * *0x100b9b018;
            r24 = r0 + 0x8;
            d0 = *(r24 + r22);
            do {
                    if (d0 > 0x0) {
                            r25 = 0x1;
                            do {
                                    r0 = [r19 originalTile:r2];
                                    d0 = r19->_waves;
                                    asm { ucvtf      d0, d0 };
                                    asm { fcvt       d1, s1 };
                                    asm { fcvt       s0, d0 };
                                    sinf(r0);
                                    s0 = *(int32_t *)(r19 + sign_extend_64(*(int32_t *)(r28 + 0x174))) * *(int32_t *)(r19 + sign_extend_64(*(int32_t *)(r27 + 0x170))) * s0;
                                    r2 = &var_D0;
                                    objc_msgSend(r19, r21);
                                    asm { scvtf      d9, w25 };
                                    d0 = *(r24 + r22);
                                    r25 = r25 + 0x1;
                            } while (d0 > d9);
                            d1 = *(r19 + r22);
                    }
                    d8 = 0x0;
                    r23 = r23 + 0x1;
                    asm { scvtf      d8, w23 };
            } while (d1 > d8);
    }
    return;
}

-(void)setAmplitude:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_amplitude = s0;
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

-(void *)initWithWaves:(int)arg2 amplitude:(float)arg3 grid:(struct CGSize)arg4 duration:(double)arg5 {
    memcpy(&r4, &arg4, 0x8);
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    asm { sxtw       x2, w2 };
    r0 = [r0 initWithDuration:r2 size:r3 waves:r4 amplitude:r5];
    return r0;
}

+(void *)actionWithWaves:(int)arg2 amplitude:(float)arg3 grid:(struct CGSize)arg4 duration:(double)arg5 {
    memcpy(&r4, &arg4, 0x8);
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    asm { sxtw       x2, w2 };
    r0 = [r0 actionWithDuration:r2 size:r3 waves:r4 amplitude:r5];
    return r0;
}

@end