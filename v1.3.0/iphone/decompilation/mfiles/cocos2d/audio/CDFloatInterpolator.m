@implementation CDFloatInterpolator

-(void *)init:(int)arg2 startVal:(float)arg3 endVal:(float)arg4 {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_30 super] init];
    if (r0 != 0x0) {
            *(int128_t *)(r0 + 0x8) = s9;
            *(int128_t *)(r0 + 0xc) = s8;
            *(int32_t *)(r0 + 0x14) = r19;
    }
    return r0;
}

-(float)interpolate:(float)arg2 {
    r0 = self;
    var_20 = d11;
    stack[-40] = d10;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    if (s0 < 0x3ff0000000000000) {
            r8 = *(int32_t *)(r0 + 0x14);
            if (r8 != 0x2) {
                    if (r8 != 0x1) {
                    }
                    else {
                            asm { fcvt       d0, s0 };
                            asm { fcvt       d1, s8 };
                            asm { fcvt       s0, d0 };
                    }
            }
            else {
                    s9 = *(int128_t *)(r0 + 0x8);
                    s10 = *(int128_t *)(r0 + 0xc);
                    if (s10 > s9) {
                            r0 = exp2f(r0);
                            s0 = (s8 + 0xbff0000000000000) * 0x4024000000000000 + *(int32_t *)0x100bc572c;
                            if (s8 == 0x0) {
                                    asm { fcsel      s0, s1, s0, eq };
                            }
                    }
                    else {
                            r0 = exp2f(r0);
                            s0 = 0x3ff0000000000000 - s8 * 0xc024000000000000;
                    }
            }
    }
    return r0;
}

-(float)start {
    r0 = self;
    return r0;
}

-(void)setStart:(float)arg2 {
    *(int32_t *)(self + 0x8) = s0;
    return;
}

-(float)end {
    r0 = self;
    return r0;
}

-(void)setEnd:(float)arg2 {
    *(int32_t *)(self + 0xc) = s0;
    return;
}

-(int)interpolationType {
    r0 = *(int32_t *)(self + 0x14);
    return r0;
}

-(void)setInterpolationType:(int)arg2 {
    *(int32_t *)(self + 0x14) = arg2;
    return;
}

@end