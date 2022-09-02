@implementation CCEaseExponentialInOut

-(void)update:(double)arg2 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r0;
    if (d0 != 0x3ff0000000000000 && d0 != 0x0) {
            d2 = d0 + d0;
            d0 = d2 + 0xbff0000000000000;
            if (d2 < 0x3ff0000000000000) {
                    asm { fcvt       s0, d0 };
                    exp2f(r0);
            }
            else {
                    asm { fcvt       s0, d0 };
                    exp2f(r0);
                    s0 = 0x4000000000000000 - s0;
            }
            asm { fcvt       d0, s0 };
    }
    [r19->_inner update:r2];
    return;
}

@end