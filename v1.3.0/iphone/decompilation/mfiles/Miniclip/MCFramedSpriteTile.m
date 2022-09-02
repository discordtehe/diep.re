@implementation MCFramedSpriteTile

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r19->_useVerticalTiling = 0x0;
            *(int8_t *)(int64_t *)&r19->_useHorizontalTiling = 0x0;
            [r19 setRepetitionSize:r2];
            [r19 setAnchorPoint:r2];
            [r19 setColor:0xffffff];
            [r19 setOpacity:r2];
    }
    r0 = r19;
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
    if (*(int8_t *)(int64_t *)&r0->_useVerticalTiling == 0x0) {
            *(r9 + 0x8) = *(r8 + 0x8);
            *(r8 + 0x8) = 0x3ff0000000000000;
    }
    if (*(int8_t *)(int64_t *)&r0->_useHorizontalTiling == 0x0) {
            *r9 = *r8;
            *r8 = 0x3ff0000000000000;
    }
    return;
}

-(int)copyColorToQuad:(void *)arg2 atIndex:(int)arg3 fromStart:(bool)arg4 {
    r4 = arg4;
    r3 = arg3;
    r0 = self;
    r31 = r31 - 0xb0;
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
    r21 = arg2;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_displayedColor));
    r25 = *(int8_t *)(r0 + r8);
    r26 = *(int8_t *)(0x1 + r0 + r8);
    r27 = *(int8_t *)(0x2 + r0 + r8);
    r28 = *(int8_t *)(int64_t *)&r0->_displayedOpacity;
    if ((r4 & 0x1) != 0x0) {
            r10 = 0x0;
    }
    else {
            asm { fcvtzs     w10, d0 };
    }
    asm { scvtf      d8, w10 };
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_realReps));
    var_68 = r8;
    d0 = *(r0 + r8);
    r22 = 0x0;
    if (d0 <= d8) goto loc_10033c4d0;

loc_10033c33c:
    r22 = 0x0;
    var_70 = r0 + 0x8;
    r8 = @selector(capacity);
    var_78 = r8;
    asm { sxtw       x8, w3 };
    var_88 = r3;
    var_80 = r8;
    var_90 = r0;
    goto loc_10033c374;

loc_10033c374:
    asm { fcvtzs     w20, d1 };
    asm { scvtf      d9, w20 };
    if (*(var_70 + var_68) <= d9) goto loc_10033c4a0;

loc_10033c38c:
    var_94 = r10;
    r8 = var_80;
    r19 = r8 + sign_extend_64(r22);
    if (objc_msgSend(r21, var_78) == r19) goto loc_10033c4b8;

loc_10033c3ac:
    asm { sxtw       x8, w22 };
    r23 = var_80 + r8;
    asm { madd       x19, x23, x8, x9 };
    r20 = r20 + 0x1;
    r22 = r22 + 0x1;
    goto loc_10033c3cc;

loc_10033c3cc:
    r0 = [r21 quads];
    *(int8_t *)(0xffffffffffffffe8 + r0 + r19) = r25;
    *(int8_t *)(0xffffffffffffffe9 + r0 + r19) = r26;
    *(int8_t *)(0xffffffffffffffea + r0 + r19) = r27;
    *(int8_t *)(0xffffffffffffffeb + r0 + r19) = r28;
    r0 = [r21 quads];
    *(int8_t *)(0x18 + r0 + r19) = r25;
    *(int8_t *)(0x19 + r0 + r19) = r26;
    *(int8_t *)(0x1a + r0 + r19) = r27;
    *(int8_t *)(0x1b + r0 + r19) = r28;
    r0 = [r21 quads];
    *(int8_t *)(0xffffffffffffffd0 + r0 + r19) = r25;
    *(int8_t *)(0xffffffffffffffd1 + r0 + r19) = r26;
    *(int8_t *)(0xffffffffffffffd2 + r0 + r19) = r27;
    *(int8_t *)(0xffffffffffffffd3 + r0 + r19) = r28;
    r0 = [r21 quads];
    *(int8_t *)(r0 + r19) = r25;
    *(int8_t *)(0x1 + r0 + r19) = r26;
    *(int8_t *)(0x2 + r0 + r19) = r27;
    *(int8_t *)(0x3 + r0 + r19) = r28;
    asm { scvtf      d9, w20 };
    if (*(var_70 + var_68) <= d9) goto loc_10033c488;

loc_10033c460:
    r0 = objc_msgSend(r21, var_78);
    r19 = r19 + 0x60;
    r20 = r20 + 0x1;
    r22 = r22 + 0x1;
    r23 = r23 + 0x1;
    if (r23 != r0) goto loc_10033c3cc;

loc_10033c4b8:
    r22 = 0x0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_internalLoopIndexes));
    r0 = var_90;
    r3 = var_88;
    *(int128_t *)(r0 + r8) = d8;
    *(int128_t *)(0x8 + r0 + r8) = d9;
    goto loc_10033c4d0;

loc_10033c4d0:
    *(int32_t *)(int64_t *)&r0->_startIndex = r3;
    r0 = r22;
    return r0;

loc_10033c488:
    r0 = var_90;
    r3 = var_88;
    d0 = *(r0 + var_68);
    r10 = var_94;
    goto loc_10033c4a0;

loc_10033c4a0:
    r10 = r10 + 0x1;
    asm { scvtf      d8, w10 };
    r4 = 0x1;
    if (d0 > d8) goto loc_10033c374;
}

-(struct CGSize)repetitionSize {
    r0 = self;
    return r0;
}

-(bool)useVerticalTiling {
    r0 = *(int8_t *)(int64_t *)&self->_useVerticalTiling;
    return r0;
}

-(int)populateAtlas:(void *)arg2 atIndex:(int)arg3 fromStart:(bool)arg4 {
    r4 = arg4;
    r3 = arg3;
    r31 = r31 - 0xd0;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
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
    r21 = arg2;
    r26 = self;
    if (r4 != 0x0) {
            r25 = 0x0;
            r8 = (int64_t *)&r26->_position;
    }
    else {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_internalTilePosition));
            r8 = r26 + r8;
            asm { fcvtzs     w25, d0 };
    }
    asm { scvtf      d10, w25 };
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_realReps));
    d0 = *(r26 + r28);
    r22 = 0x0;
    if (d0 <= d10) goto loc_10033c79c;

loc_10033c58c:
    r22 = 0x0;
    d8 = *(int128_t *)r8;
    d9 = *(int128_t *)(r8 + 0x8);
    r19 = r26 + 0x8;
    var_A8 = r3;
    var_A0 = r26 + 0x18;
    r8 = r26 + 0x10;
    asm { sxtw       x27, w3 };
    var_B0 = r26;
    var_C8 = r27;
    var_C0 = r8;
    goto loc_10033c5c0;

loc_10033c5c0:
    if ((r4 & 0x1) == 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_internalLoopIndexes));
    }
    asm { fcvtzs     w23, d1 };
    asm { scvtf      d13, w23 };
    if (*(r19 + r28) <= d13) goto loc_10033c724;

loc_10033c5e4:
    if ([r21 capacity] == r27 + sign_extend_64(r22)) goto loc_10033c774;

loc_10033c600:
    var_B4 = r25;
    asm { fcvt       s12, d8 };
    asm { sxtw       x8, w22 };
    r25 = (int64_t *)&r26->_quad;
    r20 = (int64_t *)&r26->_contentSize;
    r10 = r27;
    r27 = (int64_t *)&r26->_scales;
    r26 = r10 + r8;
    r23 = r23 + 0x1;
    r22 = r22 + 0x1;
    goto loc_10033c648;

loc_10033c648:
    r24 = @selector(updateQuad:atIndex:);
    *(int32_t *)(r25 + 0x18) = s12;
    *(int32_t *)r25 = s12;
    asm { fcvt       s0, d0 };
    *(int32_t *)(r25 + 0x48) = s0;
    *(int32_t *)(r25 + 0x30) = s0;
    asm { fcvt       s0, d9 };
    *(int32_t *)(r25 + 0x4c) = s0;
    *(int32_t *)(r25 + 0x1c) = s0;
    asm { fcvt       s0, d0 };
    *(int32_t *)(r25 + 0x34) = s0;
    *(int32_t *)(r25 + 0x4) = s0;
    objc_msgSend(r21, r24);
    d0 = *(r19 + r28);
    if (d0 > d11) {
            d9 = d9 + var_A0->_rect * *(r27 + 0x8);
    }
    asm { scvtf      d13, w23 };
    if (d0 <= d13) goto loc_10033c704;

loc_10033c6e0:
    r0 = [r21 capacity];
    r26 = r26 + 0x1;
    r23 = r23 + 0x1;
    r22 = r22 + 0x1;
    if (r26 != r0) goto loc_10033c648;

loc_10033c774:
    r22 = 0x0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_internalTilePosition));
    r26 = var_B0;
    r3 = var_A8;
    *(int128_t *)(r26 + r8) = d8;
    *(int128_t *)(0x8 + r26 + r8) = d9;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_internalLoopIndexes));
    *(int128_t *)(r26 + r8) = d10;
    *(int128_t *)(0x8 + r26 + r8) = d13;
    goto loc_10033c79c;

loc_10033c79c:
    *(int32_t *)(int64_t *)&r26->_startIndex = r3;
    r0 = r22;
    return r0;

loc_10033c704:
    r26 = var_B0;
    r3 = var_A8;
    d0 = *(r26 + r28);
    r25 = var_B4;
    r27 = var_C8;
    goto loc_10033c724;

loc_10033c724:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_position));
    d9 = *(r19 + r8);
    if (d0 > 0x3ff0000000000000) {
            d1 = var_C0->_rect;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_scales));
            d8 = d8 + d1 * *(r26 + r8);
    }
    r25 = r25 + 0x1;
    asm { scvtf      d10, w25 };
    r4 = 0x1;
    if (d0 > d10) goto loc_10033c5c0;
}

-(void)setUseVerticalTiling:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_useVerticalTiling = arg2;
    return;
}

-(bool)useHorizontalTiling {
    r0 = *(int8_t *)(int64_t *)&self->_useHorizontalTiling;
    return r0;
}

-(void)setUseHorizontalTiling:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_useHorizontalTiling = arg2;
    return;
}

-(struct CGSize)realRepetitionSize {
    r0 = self;
    return r0;
}

@end