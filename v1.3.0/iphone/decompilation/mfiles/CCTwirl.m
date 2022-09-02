@implementation CCTwirl

+(void *)actionWithDuration:(double)arg2 size:(struct CGSize)arg3 position:(struct CGPoint)arg4 twirls:(unsigned long long)arg5 amplitude:(float)arg6 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x8);
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 size:r3 position:r4 twirls:r5 amplitude:r6];
    r0 = [r0 autorelease];
    return r0;
}

-(void)setPosition:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_position));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(void *)initWithDuration:(double)arg2 size:(struct CGSize)arg3 position:(struct CGPoint)arg4 twirls:(unsigned long long)arg5 amplitude:(float)arg6 {
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
    v9 = v4;
    v10 = v3;
    r0 = [[&var_40 super] initWithDuration:r2 size:r3];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setPosition:r2];
            r20->_twirls = r19;
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

-(float)amplitude {
    r0 = self;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 allocWithZone:arg2];
    r0 = [r0 initWithDuration:self->_twirls size:r3 position:r4 twirls:r5 amplitude:r6];
    return r0;
}

-(void)setAmplitude:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_amplitude = s0;
    return;
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
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_gridSize));
    d1 = *(r0 + r22);
    if (d1 > 0xc010000000000000) {
            r19 = r0;
            r23 = 0x0;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_position));
            d4 = *(int128_t *)(r0 + r8);
            d5 = *(int128_t *)(0x8 + r0 + r8);
            d6 = d0 * *0x100b9b018;
            r24 = r0 + 0x8;
            d0 = *(r24 + r22);
            var_B8 = d5;
            stack[-176] = d4;
            var_C0 = d6;
            do {
                    if (d0 > 0xc010000000000000) {
                            r25 = 0x1;
                            do {
                                    var_C8 = *0x100b9e2b8;
                                    [r19 originalVertex:r2];
                                    d0 = *(r19 + r22);
                                    d0 = 0x0 - d0 * 0x3fe0000000000000;
                                    r0 = sub_1003115a8();
                                    asm { fcvt       d14, s0 };
                                    asm { ucvtf      d0, d1 };
                                    d0 = var_C8 + var_C0 * d0 + var_C0 * d0;
                                    asm { fcvt       s0, d0 };
                                    r0 = cosf(r0);
                                    asm { fcvt       d0, s0 };
                                    asm { fcvt       s13, d0 };
                                    sinf(cosf(r0));
                                    asm { fcvt       d0, s0 };
                                    asm { fcvt       d1, s12 };
                                    d6 = stack[-176];
                                    d1 = d1 - var_B8;
                                    asm { fcvt       d3, s14 };
                                    v14 = v8;
                                    asm { fcvt       d4, s11 };
                                    d4 = d4 - d6;
                                    asm { fcvt       s2, d1 };
                                    asm { fcvt       s3, d0 };
                                    objc_msgSend(r19, r21);
                                    d3 = 0x3ff0000000000000;
                                    asm { scvtf      d9, w25 };
                                    d0 = *(r24 + r22);
                                    r25 = r25 + 0x1;
                            } while (d0 + d3 > d9);
                            d1 = *(r19 + r22);
                    }
                    d10 = 0x0;
                    d3 = 0x3ff0000000000000;
                    r23 = r23 + 0x1;
                    asm { scvtf      d10, w23 };
            } while (d1 + d3 > d10);
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

+(void *)actionWithPosition:(struct CGPoint)arg2 twirls:(int)arg3 amplitude:(float)arg4 grid:(struct CGSize)arg5 duration:(double)arg6 {
    memcpy(&r5, &arg5, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    asm { sxtw       x2, w2 };
    r0 = [r0 actionWithDuration:r2 size:r3 position:r4 twirls:r5 amplitude:r6];
    return r0;
}

-(void *)initWithPosition:(struct CGPoint)arg2 twirls:(int)arg3 amplitude:(float)arg4 grid:(struct CGSize)arg5 duration:(double)arg6 {
    memcpy(&r5, &arg5, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    asm { sxtw       x2, w2 };
    r0 = [r0 initWithDuration:r2 size:r3 position:r4 twirls:r5 amplitude:r6];
    return r0;
}

@end