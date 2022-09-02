@implementation SimpleJoystickView

-(void *)initWithMaxRadius:(float)arg2 easeFactor:(float)arg3 {
    r31 = r31 - 0x30;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r0->mMaxRadius = s9;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mAxis));
            r9 = *_CGPointZero;
            *(int128_t *)(r0 + r8) = *(int128_t *)r9;
            *(int128_t *)(int64_t *)&r0->mStickPosition = *(int128_t *)r9;
            *(int32_t *)(int64_t *)&r0->mEaseFactor = s8;
            *(int8_t *)(int64_t *)&r0->mEnabled = 0x1;
    }
    return r0;
}

-(void)onSetEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->mEnabled = arg2;
    return;
}

-(void)onDesiredAxisChanged:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mAxis));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(void)onPositionChanged:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self setPosition:r2];
    return;
}

-(void)onCleanup {
    [self removeFromParentAndCleanup:r2];
    return;
}

-(void)customDraw {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mAxis));
    d0 = *(int128_t *)(r0 + r8);
    d1 = *(int128_t *)(0x8 + r0 + r8);
    asm { fcvt       d2, s2 };
    d0 = d0 * d2;
    d1 = d1 * d2;
    r19 = (int64_t *)&r0->mStickPosition;
    d2 = *(int128_t *)r19;
    d3 = *(int128_t *)(r19 + 0x8);
    asm { fcvt       d4, s4 };
    *r19 = d2 + (d0 - d2) * d4;
    *(r19 + 0x8) = d3 + (d1 - d3) * d4;
    loc_10029c4cc(0x20, 0x64966464);
    loc_10029c4cc(0x10, 0xc8c88c32);
    return;
}

-(void)draw {
    r0 = self;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->mEnabled != 0x0) {
            [r0 customDraw];
            [[&var_20 super] draw];
    }
    return;
}

@end