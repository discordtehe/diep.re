@implementation CCEaseExponentialIn

-(void)update:(double)arg2 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r0->_inner;
    if (d0 != 0x0) {
            asm { fcvt       s0, d0 };
            exp2f(r0);
            asm { fcvt       d1, s0 };
    }
    [r19 update:r2];
    return;
}

-(void *)reverse {
    [self->_inner reverse];
    r0 = [CCEaseExponentialOut actionWithAction:r2];
    return r0;
}

@end