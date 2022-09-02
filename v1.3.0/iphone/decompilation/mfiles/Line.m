@implementation Line

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r19->mShape = 0x0;
            r19->mNumPoints = 0x0;
            r19->mPointProgress = 0x0;
            [r19 setOpacity:0xff];
            [r19 setColor:0xffffff];
            *(int32_t *)(int64_t *)&r19->mProgress = 0x3f800000;
            *(int32_t *)(int64_t *)&r19->mLineWidth = 0x3f800000;
            *(int32_t *)(int64_t *)&r19->mGradientRatio = 0x3f800000;
    }
    r0 = r19;
    return r0;
}

-(void *)initWithShape:(struct CGPoint *)arg2 numPoints:(unsigned long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    r0 = [self init];
    r22 = r0;
    if (r0 != 0x0) {
            [r21 setShape:r20 numPoints:r19];
    }
    r0 = r22;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mShape));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            operator delete[](r0);
            *(r19 + r20) = 0x0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mPointProgress));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            operator delete[](r0);
            *(r19 + r20) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)setLineWidth:(float)arg2 {
    r0 = self;
    if (s0 > 0x0) {
            *(int32_t *)(int64_t *)&r0->mLineWidth = s0;
    }
    return;
}

-(void)setProgress:(float)arg2 {
    sub_10035d730();
    sub_10035d724();
    *(int32_t *)(int64_t *)&self->mProgress = s0;
    return;
}

-(void)setGradientRatio:(float)arg2 {
    sub_10035d730();
    sub_10035d724();
    *(int32_t *)(int64_t *)&self->mGradientRatio = s0;
    return;
}

-(void)setShape:(struct CGPoint *)arg2 numPoints:(unsigned long long)arg3 {
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r20 = arg2;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(mShape));
    r0 = *(self + r22);
    if (r0 != 0x0) {
            operator delete[](r0);
            *(r19 + r22) = 0x0;
    }
    r23 = sign_extend_64(*(int32_t *)ivar_offset(mPointProgress));
    r0 = *(r19 + r23);
    if (r0 != 0x0) {
            operator delete[](r0);
            *(r19 + r23) = 0x0;
    }
    r24 = sign_extend_64(*(int32_t *)ivar_offset(mNumPoints));
    *(r19 + r24) = r21;
    if (reg_zero == r21 / 0x10000000) {
            asm { csinv      x0, x8, xzr, eq };
    }
    r0 = operator new[]();
    *(r19 + r22) = r0;
    if (r21 != 0x0) {
            *(int128_t *)r0 = *(int128_t *)r20;
            r10 = *(r19 + r24);
            if (r10 >= 0x2) {
                    r8 = 0x1;
                    r9 = 0x10;
                    do {
                            *(int128_t *)(*(r19 + r22) + r9) = *(int128_t *)(r20 + r9);
                            r8 = r8 + 0x1;
                            r10 = *(r19 + r24);
                            r9 = r9 + 0x10;
                    } while (r8 < r10);
            }
            if (r10 == 0x1) {
                    r20 = 0x1;
                    r8 = 0x1;
            }
            else {
                    r20 = 0x0;
                    r21 = 0x0;
                    do {
                            r8 = *(r19 + r22);
                            r21 = r21 + 0x1;
                            sub_1003115c4();
                            asm { fcvt       d1, s8 };
                            asm { fcvt       s8, d0 };
                            r8 = *(r19 + r24);
                            r20 = r20 + 0x10;
                    } while (r21 < r8 - 0x1);
                    if (r8 == 0x1) {
                            if (CPU_FLAGS & E) {
                                    r20 = 0x1;
                            }
                    }
            }
    }
    else {
            r20 = 0x0;
            r21 = 0x0;
            do {
                    r8 = *(r19 + r22);
                    r21 = r21 + 0x1;
                    sub_1003115c4();
                    asm { fcvt       d1, s8 };
                    asm { fcvt       s8, d0 };
                    r8 = *(r19 + r24);
                    r20 = r20 + 0x10;
            } while (r21 < r8 - 0x1);
            if (r8 == 0x1) {
                    if (CPU_FLAGS & E) {
                            r20 = 0x1;
                    }
            }
    }
    if (reg_zero == r8 / 0x40000000) {
            asm { csinv      x0, x9, xzr, eq };
    }
    r0 = operator new[]();
    *(r19 + r23) = r0;
    if ((r20 & 0x1) != 0x0) {
            r8 = 0x0;
    }
    else {
            r20 = 0x0;
            r21 = 0x0;
            do {
                    asm { fdiv       s0, s9, s8 };
                    *(int32_t *)(r0 + r21 * 0x4) = s0;
                    r8 = *(r19 + r22);
                    d0 = *(int128_t *)(r8 + r20);
                    d1 = *(int128_t *)(0x8 + r8 + r20);
                    r21 = r21 + 0x1;
                    sub_1003115c4();
                    r8 = *(r19 + r24);
                    r8 = r8 - 0x1;
                    if (r21 >= r8) {
                        break;
                    }
                    asm { fcvt       d1, s9 };
                    asm { fcvt       s9, d0 };
                    r0 = *(r19 + r23);
                    r20 = r20 + 0x10;
            } while (true);
            r0 = *(r19 + r23);
    }
    *(int32_t *)(r0 + r8 * 0x4) = 0x3f800000;
    return;
}

-(void)draw {
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffc0 - 0x20;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mProgress));
    s8 = *(int32_t *)(self + r21);
    if (s8 == 0x0) goto loc_1005bb6a4;

loc_1005bb510:
    r20 = [r19 color];
    if (s8 != 0x3ff0000000000000) goto loc_1005bb590;

loc_1005bb530:
    r21 = r19->mShape;
    r22 = r19->mNumPoints;
    [r19 opacity];
    r2 = r20 & 0xffffff;
    asm { bfi        x2, x0, #0x18, #0x8 };
    sub_10029c490(r21, r22, r2, 0x0, 0x1);
    goto loc_1005bb6a4;

loc_1005bb6a4:
    var_38 = **___stack_chk_guard;
    var_48 = r19;
    [[r29 - 0x48 super] draw];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;

loc_1005bb590:
    [r19 opacity];
    r2 = r20 & 0xffffff;
    asm { bfi        x2, x0, #0x18, #0x8 };
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mNumPoints));
    r8 = *(r19 + r8);
    r8 = r8 - 0x1;
    r12 = 0xffffffffffffffff;
    goto loc_1005bb5c0;

loc_1005bb5c0:
    r9 = r12 + 0x1;
    if (r8 < r9) goto loc_1005bb6a4;

loc_1005bb5cc:
    s0 = *(int32_t *)(r19 + r21);
    r10 = sign_extend_64(*(int32_t *)ivar_offset(mPointProgress));
    s1 = *(int32_t *)(*(r19 + r10) + (r12 + 0x2) * 0x4);
    r12 = r9;
    if (s0 >= s1) goto loc_1005bb5c0;

loc_1005bb5ec:
    r20 = &var_50;
    r8 = r9 + 0x1;
    r1 = r9 + 0x2;
    r11 = r9;
    r0 = r31 - zero_extend_64(r1) * 0x10;
    r13 = 0x0;
    r12 = sign_extend_64(*(int32_t *)ivar_offset(mShape));
    r12 = *(r19 + r12);
    do {
            *(int128_t *)(r0 + r13 * 0x10) = *(int128_t *)(r12 + r13 * 0x10);
            r13 = r13 + 0x1;
    } while (r13 < r9);
    r9 = *(r19 + r10);
    asm { fdiv       s0, s1, s0 };
    d1 = *(int128_t *)(r12 + r11 * 0x10);
    d2 = *(int128_t *)(0x8 + r12 + r11 * 0x10);
    d3 = *(int128_t *)(r12 + r8 * 0x10);
    d4 = *(int128_t *)(0x8 + r12 + r8 * 0x10);
    asm { fcvt       d0, s0 };
    *(r0 + r8 * 0x10) = d1 + (d3 - d1) * d0;
    *(0x8 + r0 + r8 * 0x10) = d2 + (d4 - d2) * d0;
    sub_10029c490(r0, r1, r2, 0x0, 0x1);
    goto loc_1005bb6a4;
}

-(float)progress {
    r0 = self;
    return r0;
}

-(float)lineWidth {
    r0 = self;
    return r0;
}

-(float)gradientRatio {
    r0 = self;
    return r0;
}

@end