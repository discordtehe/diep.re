@implementation CCPageTurn3D

-(void)update:(double)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0xb0;
    var_90 = d15;
    stack[-136] = d14;
    var_80 = d13;
    stack[-120] = d12;
    var_70 = d11;
    stack[-104] = d10;
    var_60 = d9;
    stack[-88] = d8;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    v10 = v0;
    r19 = r0;
    asm { fcvt       s0, d0 };
    asm { fsqrt      s0, s0 };
    s0 = s0 * *(int32_t *)0x100b9b680;
    cosf(sinf(r0));
    v12 = v9;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_gridSize));
    d0 = *(r19 + r22);
    if (d0 >= 0x0) {
            s1 = *(int32_t *)0x100b9b680;
            r23 = 0x0;
            d8 = 0x0;
            asm { fmax       d1, d1, d8 };
            asm { fcvt       s1, d1 };
            s1 = 0xffffffffc3fa0000 * s1 * s1;
            s9 = s1 + 0xffffffffc2c80000;
            r24 = r19 + 0x8;
            d1 = *(r24 + r22);
            var_A4 = s14;
            do {
                    if (d1 >= 0x0) {
                            r26 = 0x1;
                            var_A0 = d8;
                            do {
                                    r0 = [r19 originalVertex:r2];
                                    v8 = v9;
                                    asm { fsqrt      s9, s1 };
                                    s15 = s14 * s9;
                                    asm { fdiv       s0, s0, s9 };
                                    r0 = asinf(r0);
                                    v13 = v10;
                                    v10 = v12;
                                    asm { fdiv       s12, s0, s14 };
                                    r0 = cosf(r0);
                                    var_94 = s0;
                                    asm { fcvt       d14, s12 };
                                    v12 = v10;
                                    v10 = v13;
                                    sinf(r0);
                                    if (d14 > d10) {
                                            asm { fcsel      s2, s13, s0, hi };
                                    }
                                    r21 = @selector(setVertex:vertex:);
                                    v9 = v8;
                                    d8 = var_A0;
                                    s14 = var_A4;
                                    s1 = (0x3ff0000000000000 - var_94) * s15;
                                    s0 = s12 * s1;
                                    asm { fdiv       s0, s0, s4 };
                                    asm { fmax       s4, s0, s5 };
                                    objc_msgSend(r19, r21);
                                    asm { scvtf      d11, w26 };
                                    d1 = *(r24 + r22);
                                    r26 = r26 + 0x1;
                            } while (d1 >= d11);
                            d0 = *(r19 + r22);
                    }
                    r23 = r23 + 0x1;
                    asm { scvtf      d8, w23 };
            } while (d0 >= d8);
    }
    return;
}

@end