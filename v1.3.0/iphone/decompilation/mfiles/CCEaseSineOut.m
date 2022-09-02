@implementation CCEaseSineOut

-(void)update:(double)arg2 {
    r0 = self;
    asm { fcvt       s0, d0 };
    sinf(r0);
    asm { fcvt       d0, s0 };
    [r19 update:r2];
    return;
}

-(void *)reverse {
    [self->_inner reverse];
    r0 = [CCEaseSineIn actionWithAction:r2];
    return r0;
}

@end