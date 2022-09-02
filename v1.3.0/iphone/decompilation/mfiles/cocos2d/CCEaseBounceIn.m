@implementation CCEaseBounceIn

-(void)update:(double)arg2 {
    r2 = arg2;
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (d0 != 0x0) {
            asm { fccmp      d0, d8, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            [r19 bounceTime:r2];
    }
    [r19->_inner update:r2];
    return;
}

-(void *)reverse {
    [self->_inner reverse];
    r0 = [CCEaseBounceOut actionWithAction:r2];
    return r0;
}

@end