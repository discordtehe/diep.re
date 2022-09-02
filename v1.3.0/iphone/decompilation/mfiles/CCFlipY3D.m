@implementation CCFlipY3D

-(void)update:(double)arg2 {
    r2 = arg2;
    r0 = self;
    var_50 = d13;
    stack[-88] = d12;
    r31 = r31 + 0xffffffffffffffa0;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r0;
    asm { fcvt       s0, d8 };
    r0 = sinf(r0);
    asm { fcvt       d12, s0 };
    asm { fcvt       s0, d0 };
    cosf(r0);
    asm { fcvt       d13, s0 };
    v0 = v8;
    [r19 originalVertex:r2];
    v10 = v8;
    objc_msgSend(r19, r20);
    if (s10 > s1) {
            asm { fcsel      d9, d8, d11, gt };
    }
    if (CPU_FLAGS & G) {
            asm { fcsel      d11, d11, d8, gt };
    }
    if (CPU_FLAGS & G) {
            asm { fcsel      s0, s10, s1, gt };
    }
    r20 = @selector(originalVertex:);
    asm { fcvt       d0, s0 };
    asm { fcvt       s10, d1 };
    asm { fcvt       s0, d0 };
    asm { frintm     s0, s0 };
    objc_msgSend(r19, r20);
    [r19 setVertex:r2 vertex:r3];
    objc_msgSend(r19, r20);
    [r19 setVertex:r2 vertex:r3];
    objc_msgSend(r19, r20);
    [r19 setVertex:r2 vertex:r3];
    objc_msgSend(r19, r20);
    [r19 setVertex:r2 vertex:r3];
    return;
}

@end