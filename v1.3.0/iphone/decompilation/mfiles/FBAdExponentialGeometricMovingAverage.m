@implementation FBAdExponentialGeometricMovingAverage

-(void *)initWithDecayConstant:(double)arg2 {
    r31 = r31 - 0x30;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    if (r0 != 0x0) {
            asm { fminnm     d1, d8, d0 };
            r0->_average = 0xbff0000000000000;
            asm { fmaxnm     d1, d1, d2 };
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_decayConstant));
            *(r0 + r8) = d1;
            if (d1 == 0x0) {
                    r8 = 0xffffffffffffffff;
            }
            else {
                    asm { fdiv       d0, d0, d1 };
                    asm { fcvtpu     x8, d0 };
            }
            r0->_cutOver = r8;
            r0->_count = 0x0;
    }
    return r0;
}

-(void)addMeasurement:(double)arg2 weight:(double)arg3 {
    r0 = self;
    var_40 = d11;
    stack[-72] = d10;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (d0 != 0x0) {
            v8 = v0;
            asm { fminnm     d1, d1, d0 };
            asm { fmaxnm     d1, d1, d2 };
            if (d1 != 0x0) {
                    r19 = r0;
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_count));
                    r21 = *(r0 + r20);
                    if (r21 != 0x0) {
                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_cutOver));
                            r8 = *(r19 + r8);
                            d9 = d1 * r19->_decayConstant;
                            if (r21 <= r8) {
                                    asm { ucvtf      d1, x21 };
                                    asm { fdiv       d9, d2, d1 };
                            }
                            exp(log(log(r0)));
                            *(r19 + r22) = d0 * d9 + (0x3ff0000000000000 - d9) * d0;
                    }
                    else {
                            r19->_average = d8;
                    }
                    *(r19 + r20) = r21 + 0x1;
            }
    }
    return;
}

-(void)addMeasurement:(double)arg2 {
    [self addMeasurement:arg2 weight:r3];
    return;
}

-(bool)hasOneOrMoreMeasurements {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (r0->_count != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)reset {
    self->_average = 0xbff0000000000000;
    self->_count = 0x0;
    return;
}

-(double)average {
    r0 = self;
    return r0;
}

-(unsigned long long)count {
    r0 = self->_count;
    return r0;
}

@end