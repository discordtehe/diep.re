@implementation CCEaseElasticIn

-(void *)reverse {
    r0 = [CCEaseElasticOut actionWithAction:[self->_inner reverse] period:r3];
    return r0;
}

-(void)update:(double)arg2 {
    r0 = self;
    var_30 = d11;
    stack[-56] = d10;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r0;
    if (d0 != 0x0) {
            asm { fccmp      d0, d1, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            asm { fcvt       s0, d0 };
            r0 = exp2f(r0);
            asm { fcvt       d0, s10 };
            asm { fcvt       d1, s9 };
            asm { fdiv       d0, d0, d1 };
            asm { fcvt       s0, d0 };
            sinf(r0);
            asm { fcvt       d0, s0 };
    }
    [r19->_inner update:r2];
    return;
}

@end