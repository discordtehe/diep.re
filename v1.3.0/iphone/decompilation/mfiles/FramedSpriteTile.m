@implementation FramedSpriteTile

-(void *)initWithFramedSprite:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [self init];
    if (r0 != 0x0) {
            r0->_framedSprite = r19;
            *(int8_t *)(int64_t *)&r0->_allowVerticalScale = 0x0;
            *(int8_t *)(int64_t *)&r0->_allowHorizontalScale = 0x0;
    }
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r19->_allowHorizontalScale = 0x0;
            *(int8_t *)(int64_t *)&r19->_allowVerticalScale = 0x0;
            [r19 setRepetitionSize:r2];
            [r19 setAnchorPoint:r2];
    }
    r0 = r19;
    return r0;
}

-(struct CGSize)repetitionSize {
    r0 = self;
    return r0;
}

-(void)setRepetitionSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    r0->_repetition = d0;
    *((int64_t *)&r0->_repetition + 0x8) = d1;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_realReps));
    r8 = r0 + r8;
    q0 = *(int128_t *)(int64_t *)&r0->_repetition;
    *(int128_t *)r8 = q0;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_scales));
    r9 = r0 + r9;
    *(int128_t *)r9 = q0;
    if (*(int8_t *)(int64_t *)&r0->_allowVerticalScale != 0x0) {
            *(r9 + 0x8) = *(r8 + 0x8);
            *(r8 + 0x8) = 0x3ff0000000000000;
    }
    if (*(int8_t *)(int64_t *)&r0->_allowHorizontalScale != 0x0) {
            *r9 = *r8;
            *r8 = 0x3ff0000000000000;
    }
    return;
}

-(void)setColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    [[&var_20 super] setColor:r2 & 0xffffffff];
    [self populateAtlas:[self->_framedSprite atlas] atIndex:*(int32_t *)(int64_t *)&self->_startIndex];
    return;
}

-(int)populateAtlas:(void *)arg2 atIndex:(int)arg3 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0xa0;
    var_60 = d9;
    stack[-104] = d8;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_realReps));
    d0 = *(r0 + r25);
    var_88 = arg3;
    if (d0 > 0x0) {
            r21 = r2;
            r10 = 0x0;
            r9 = 0x0;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_position));
            d8 = *(int128_t *)(r0 + r8);
            d9 = *(int128_t *)(0x8 + r0 + r8);
            var_78 = r0 + 0x10;
            r8 = &@selector(getVSZTexture:);
            r23 = *(r8 + 0x798);
            r28 = r0 + 0x8;
            d1 = *(r28 + r25);
            asm { sxtw       x8, w3 };
            var_80 = r8;
            var_70 = r0;
            do {
                    if (d1 > 0x0) {
                            var_68 = r9;
                            r19 = 0x0;
                            r24 = (int64_t *)&r0->_quad;
                            r22 = (int64_t *)&var_78->_rect;
                            r20 = (int64_t *)&r0->_scales;
                            var_64 = r10;
                            r26 = var_80 + sign_extend_64(r10);
                            do {
                                    r27 = *_CGPointZero;
                                    d0 = *(int128_t *)r27;
                                    d1 = *(int128_t *)(r27 + 0x8);
                                    asm { fcvt       s2, d0 };
                                    *(int32_t *)(r24 + 0x18) = s2;
                                    *(int32_t *)r24 = s2;
                                    asm { fcvt       s0, d0 };
                                    *(int32_t *)(r24 + 0x48) = s0;
                                    *(int32_t *)(r24 + 0x30) = s0;
                                    d0 = d9 + d1;
                                    asm { fcvt       s1, d0 };
                                    *(int32_t *)(r24 + 0x4c) = s1;
                                    *(int32_t *)(r24 + 0x1c) = s1;
                                    d1 = *(r22 + 0x8);
                                    d2 = *(r20 + 0x8);
                                    asm { fcvt       s0, d0 };
                                    *(int32_t *)(r24 + 0x34) = s0;
                                    *(int32_t *)(r24 + 0x4) = s0;
                                    objc_msgSend(r21, r23);
                                    r19 = r19 + 0x1;
                                    asm { scvtf      d0, w19 };
                                    d1 = *(r28 + r25);
                            } while (d1 > d0);
                            r9 = var_68;
                            r10 = var_64 + r19;
                            r0 = var_70;
                            d0 = *(r0 + r25);
                    }
                    r9 = r9 + 0x1;
                    asm { scvtf      d2, w9 };
            } while (d0 > d2);
    }
    else {
            r10 = 0x0;
    }
    *(int32_t *)(int64_t *)&r0->_startIndex = var_88;
    r0 = r10;
    return r0;
}

-(void)setOpacity:(unsigned char)arg2 {
    [[&var_20 super] setOpacity:arg2];
    [self populateAtlas:[self->_framedSprite atlas] atIndex:*(int32_t *)(int64_t *)&self->_startIndex];
    return;
}

-(void)updateDisplayedColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    [[&var_20 super] updateDisplayedColor:r2 & 0xffffffff];
    [self populateAtlas:[self->_framedSprite atlas] atIndex:*(int32_t *)(int64_t *)&self->_startIndex];
    return;
}

-(void *)description {
    [self contentSize];
    [self contentSize];
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void)updateDisplayedOpacity:(unsigned char)arg2 {
    [[&var_20 super] updateDisplayedOpacity:arg2];
    [self populateAtlas:[self->_framedSprite atlas] atIndex:*(int32_t *)(int64_t *)&self->_startIndex];
    return;
}

-(bool)allowVerticalScale {
    r0 = *(int8_t *)(int64_t *)&self->_allowVerticalScale;
    return r0;
}

-(void)setAllowVerticalScale:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_allowVerticalScale = arg2;
    return;
}

-(bool)allowHorizontalScale {
    r0 = *(int8_t *)(int64_t *)&self->_allowHorizontalScale;
    return r0;
}

-(void)setAllowHorizontalScale:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_allowHorizontalScale = arg2;
    return;
}

-(struct CGSize)realRepetitionSize {
    r0 = self;
    return r0;
}

@end