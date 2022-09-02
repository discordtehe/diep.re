@implementation CCEasePolynomialInOut

-(void)update:(double)arg2 {
    r1 = _cmd;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r0;
    if (d0 < 0x3fe0000000000000) {
            asm { fcvt       s0, d0 };
            asm { ucvtf      s1, x8 };
            powf(r0, r1);
    }
    else {
            asm { fcvt       s0, d0 };
            asm { ucvtf      s1, x8 };
            powf(r0, r1);
            if (r20 == 0x0) {
                    asm { fcsel      s0, s2, s0, eq };
            }
    }
    r0 = r19->_inner;
    asm { fcvt       d0, s0 };
    [r0 update:r2];
    return;
}

@end