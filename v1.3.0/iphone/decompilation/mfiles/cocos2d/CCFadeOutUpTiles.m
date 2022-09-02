@implementation CCFadeOutUpTiles

-(float)testFunc:(struct CGSize)arg2 time:(double)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r1 = _cmd;
    r0 = self;
    if (*((int64_t *)&r0->_gridSize + 0x8) * d2 != 0x0) {
            asm { fdiv       d0, d1, d0 };
            asm { fcvt       s0, d0 };
            r0 = powf(r0, r1);
    }
    return r0;
}

-(void)transformTile:(struct CGPoint)arg2 distance:(float)arg3 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xa0;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v1;
    v9 = v0;
    r19 = self;
    if (self != 0x0) {
            [r19 originalTile:r2];
    }
    else {
            var_50 = q0;
            var_40 = q0;
            var_60 = q0;
    }
    [[r19->_target grid] step];
    d0 = d1 * 0x3fe0000000000000;
    asm { fcvt       d1, s1 };
    d0 = d0 * d1;
    s1 = var_5C;
    asm { fcvt       d1, s1 };
    d1 = d0 + d1;
    asm { fcvt       s1, d1 };
    asm { fcvt       d1, s2 };
    d1 = d0 + d1;
    asm { fcvt       s1, d1 };
    asm { fcvt       d1, s1 };
    asm { fcvt       s1, d1 };
    asm { fcvt       d1, s2 };
    asm { fcvt       s0, d0 };
    [r19 setTile:&var_90 coords:r3];
    return;
}

@end