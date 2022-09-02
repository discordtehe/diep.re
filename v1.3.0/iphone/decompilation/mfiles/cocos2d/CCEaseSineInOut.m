@implementation CCEaseSineInOut

-(void)update:(double)arg2 {
    r0 = self;
    asm { fcvt       s0, d0 };
    cosf(r0);
    asm { fcvt       d0, s0 };
    [r19 update:r2];
    return;
}

@end