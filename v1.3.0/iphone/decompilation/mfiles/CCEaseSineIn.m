@implementation CCEaseSineIn

-(void)update:(double)arg2 {
    r0 = self;
    asm { fcvt       s0, d0 };
    cosf(r0);
    asm { fcvt       d0, s0 };
    [r19 update:r2];
    return;
}

-(void *)reverse {
    [self->_inner reverse];
    r0 = [CCEaseSineOut actionWithAction:r2];
    return r0;
}

@end