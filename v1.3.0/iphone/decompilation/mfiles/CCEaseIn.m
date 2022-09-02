@implementation CCEaseIn

-(void)update:(double)arg2 {
    r1 = _cmd;
    r0 = self;
    asm { fcvt       s0, d0 };
    powf(r0, r1);
    asm { fcvt       d0, s0 };
    [r19 update:r2];
    return;
}

@end