@implementation CCFadeOutDownTiles

-(float)testFunc:(struct CGSize)arg2 time:(double)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r1 = _cmd;
    r0 = self;
    if (d1 != 0x0) {
            asm { fdiv       d0, d0, d1 };
            asm { fcvt       s0, d0 };
            r0 = powf(r0, r1);
    }
    return r0;
}

@end