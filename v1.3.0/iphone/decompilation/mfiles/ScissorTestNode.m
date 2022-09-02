@implementation ScissorTestNode

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r0->_adjustToRotation = 0x1;
    }
    return r0;
}

-(struct CGRect)clipRect {
    r0 = self;
    return r0;
}

-(bool)adjustToRotation {
    r0 = *(int8_t *)(int64_t *)&self->_adjustToRotation;
    return r0;
}

-(void)setAdjustToRotation:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_adjustToRotation = arg2;
    return;
}

-(void)visit {
    r31 = r31 - 0x80;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self visible] != 0x0) {
            if (r19 != 0x0) {
                    [r19 nodeToWorldTransform];
                    d5 = var_60;
                    d3 = stack[-104];
                    d4 = var_50;
                    d2 = stack[-88];
                    d1 = var_40;
                    d0 = stack[-72];
            }
            else {
                    d0 = 0x0;
                    d1 = 0x0;
                    d2 = 0x0;
                    d4 = 0x0;
                    d3 = 0x0;
                    d5 = 0x0;
            }
            r8 = *_CGPointZero;
            d6 = *(int128_t *)r8;
            d7 = *(int128_t *)(r8 + 0x8);
            d16 = d1 + d6 * d5 + d7 * d4;
            d6 = d0 + d6 * d3 + d7 * d2;
            r20 = (int64_t *)&r19->_contentSize;
            d7 = *(int128_t *)r20;
            d17 = *(int128_t *)(r20 + 0x8);
            d20 = d4 * d17;
            d19 = d1 + d5 * 0x0 + d20;
            d17 = d2 * d17;
            d21 = d0 + d3 * 0x0 + d17;
            d4 = d1 + d4 * 0x0 + d5 * d7;
            d2 = d0 + d2 * 0x0 + d3 * d7;
            d5 = d20 + d5 * d7;
            d1 = d1 + d5;
            d3 = d17 + d3 * d7;
            d0 = d0 + d3;
            if (d2 < d0) {
                    asm { fcsel      d3, d2, d0, mi };
            }
            if (CPU_FLAGS & G) {
                    asm { fcsel      d0, d2, d0, gt };
            }
            if (d6 < d21) {
                    asm { fcsel      d2, d6, d21, mi };
            }
            if (CPU_FLAGS & G) {
                    asm { fcsel      d5, d6, d21, gt };
            }
            if (d4 < d1) {
                    asm { fcsel      d6, d4, d1, mi };
            }
            if (CPU_FLAGS & G) {
                    asm { fcsel      d1, d4, d1, gt };
            }
            if (d16 < d19) {
                    asm { fcsel      d4, d16, d19, mi };
            }
            if (CPU_FLAGS & G) {
                    asm { fcsel      d7, d16, d19, gt };
            }
            if (d4 < d6) {
                    asm { fcsel      d8, d4, d6, mi };
            }
            if (d2 < d3) {
                    asm { fcsel      d9, d2, d3, mi };
            }
            if (d7 > d1) {
                    asm { fcsel      d11, d7, d1, gt };
            }
            if (d5 > d0) {
                    asm { fcsel      d10, d5, d0, gt };
            }
            if (([r19 adjustToRotation] & 0x1) == 0x0) {
                    d0 = d11 - d8;
                    asm { fcvt       s0, d0 };
                    d1 = d10 - d9;
                    asm { fcvt       s1, d1 };
                    asm { fcvt       d0, s0 };
                    d2 = *(int128_t *)r20;
                    d3 = *(int128_t *)(r20 + 0x8);
                    asm { fdiv       d0, d0, d2 };
                    d4 = 0x3ff0000000000000;
                    d0 = d4 - d0;
                    asm { fcvt       s0, d0 };
                    asm { fcvt       d1, s1 };
                    asm { fdiv       d1, d1, d3 };
                    d1 = d4 - d1;
                    asm { fcvt       s1, d1 };
                    asm { fcvt       d0, s0 };
                    d0 = d2 * d0;
                    d2 = 0x3fe0000000000000;
                    d0 = d0 * d2;
                    asm { fcvt       s0, d0 };
                    asm { fcvt       d1, s1 };
                    d1 = d2 * d3 * d1;
                    asm { fcvt       s1, d1 };
                    asm { fcvt       d0, s0 };
                    d8 = d8 - d0;
                    asm { fcvt       d1, s1 };
                    d9 = d9 - d1;
                    d11 = d11 + d0;
                    d10 = d10 + d1;
            }
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_clipRect));
            *(int128_t *)(r19 + r8) = d8;
            *(int128_t *)(0x8 + r19 + r8) = d9;
            *(int128_t *)(0x10 + r19 + r8) = d11 - d8;
            *(int128_t *)(0x18 + r19 + r8) = d10 - d9;
            sub_100367c74();
            [[&var_70 super] visit];
            sub_100367dc0();
    }
    return;
}

@end