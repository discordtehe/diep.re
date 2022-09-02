@implementation CCJumpTiles3D

+(void *)actionWithDuration:(double)arg2 size:(struct CGSize)arg3 jumps:(unsigned long long)arg4 amplitude:(float)arg5 {
    memcpy(&r3, &arg3, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 size:r3 jumps:r4 amplitude:r5];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 size:(struct CGSize)arg3 jumps:(unsigned long long)arg4 amplitude:(float)arg5 {
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
            r0->_jumps = r19;
            *(int32_t *)(int64_t *)&r0->_amplitude = s8;
            *(int32_t *)(int64_t *)&r0->_amplitudeRate = 0x3f800000;
    }
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 allocWithZone:arg2];
    r0 = [r0 initWithDuration:self->_jumps size:r3 jumps:r4 amplitude:r5];
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
    r0 = self;
    r31 = r31 - 0xe0;
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
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r0;
    asm { ucvtf      d11, d1 };
    asm { fcvt       s0, d0 };
    r0 = sinf(r0);
    s12 = *(int32_t *)(int64_t *)&r19->_amplitude;
    s13 = *(int32_t *)(int64_t *)&r19->_amplitudeRate;
    asm { fcvt       s0, d0 };
    sinf(r0);
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_gridSize));
    d0 = *(r19 + r22);
    if (d0 > 0x0) {
            r23 = 0x0;
            r24 = r19 + 0x8;
            d1 = *(r24 + r22);
            do {
                    if (d1 > 0x0) {
                            r26 = 0x1;
                            do {
                                    [r19 originalTile:r2];
                                    if ((r23 + r26 - 0x1 & 0x1) == 0x0) {
                                            asm { fcsel      s0, s8, s9, eq };
                                    }
                                    var_98 = s13 * s12 * s0 + var_98;
                                    var_8C = s13 * s12 * s0 + var_8C;
                                    var_80 = s13 * s12 * s0 + var_80;
                                    s0 = s13 * s12 * s0 + var_74;
                                    var_74 = s0;
                                    [r19 setTile:r2 coords:r3];
                                    asm { scvtf      d11, w26 };
                                    d1 = *(r24 + r22);
                                    r26 = r26 + 0x1;
                            } while (d1 > d11);
                            d0 = *(r19 + r22);
                    }
                    d10 = 0x0;
                    r23 = r23 + 0x1;
                    asm { scvtf      d10, w23 };
            } while (d0 > d10);
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

-(void *)initWithJumps:(int)arg2 amplitude:(float)arg3 grid:(struct CGSize)arg4 duration:(double)arg5 {
    memcpy(&r4, &arg4, 0x8);
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    asm { sxtw       x2, w2 };
    r0 = [r0 initWithDuration:r2 size:r3 jumps:r4 amplitude:r5];
    return r0;
}

+(void *)actionWithJumps:(int)arg2 amplitude:(float)arg3 grid:(struct CGSize)arg4 duration:(double)arg5 {
    memcpy(&r4, &arg4, 0x8);
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    asm { sxtw       x2, w2 };
    r0 = [r0 actionWithDuration:r2 size:r3 jumps:r4 amplitude:r5];
    return r0;
}

@end