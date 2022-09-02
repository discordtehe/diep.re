@implementation CCEasePolynomialIn

-(void)update:(double)arg2 {
    r1 = _cmd;
    r0 = self;
    asm { fcvt       s0, d0 };
    asm { ucvtf      s1, x8 };
    powf(r0, r1);
    asm { fcvt       d0, s0 };
    [r19 update:r2];
    return;
}

-(void *)reverse {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [CCEasePolynomialOut actionWithAction:[self->_inner reverse]];
    if (self->_polynomialOrder != 0x6) {
            [r19 setPolynomialOrder:r2];
    }
    r0 = r19;
    return r0;
}

@end