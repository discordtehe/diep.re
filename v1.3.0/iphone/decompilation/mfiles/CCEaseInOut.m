@implementation CCEaseInOut

-(void)update:(double)arg2 {
    r1 = _cmd;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    d0 = d0 + d0;
    r19 = r0->_inner;
    if (d0 < 0x3ff0000000000000) {
            asm { fcvt       s0, d0 };
            powf(r0, r1);
    }
    else {
            asm { fcvt       s0, d0 };
            powf(r0, r1);
    }
    asm { fcvt       d0, s0 };
    [r19 update:r2];
    return;
}

-(void *)reverse {
    r20 = [self class];
    [self->_inner reverse];
    r0 = [r20 actionWithAction:r2 rate:r3];
    return r0;
}

@end