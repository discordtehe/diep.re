@implementation CCMutableCellTable

-(void *)init:(struct CGPoint)arg2 numVisibleItems:(float)arg3 cellSize:(struct CGSize)arg4 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r2, &arg2, 0x8);
    return 0x0;
}

-(void *)init:(struct CGPoint)arg2 numVisibleItems:(float)arg3 cellSize:(struct CGSize)arg4 direction:(int)arg5 itemOffset:(float)arg6 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r2, &arg2, 0x8);
    return 0x0;
}

-(void *)init:(struct CGPoint)arg2 numVisibleItems:(float)arg3 cellSize:(struct CGSize)arg4 direction:(int)arg5 itemOffset:(float)arg6 springOffset:(float)arg7 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r2, &arg2, 0x8);
    return 0x0;
}

-(void *)init:(struct CGPoint)arg2 cellSize:(struct CGSize)arg3 visibleArea:(struct CGSize)arg4 direction:(int)arg5 itemOffset:(float)arg6 effectsDistanceFraction:(float)arg7 visibleAreaOffset:(struct CGPoint)arg8 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r0 = [self init:r2 cellSize:r3 visibleArea:r4 direction:r5 itemOffset:r6 springOffset:r7 effectsDistanceFraction:s7 visibleAreaOffset:arg8];
    return r0;
}

-(void *)init:(struct CGPoint)arg2 cellSize:(struct CGSize)arg3 visibleArea:(struct CGSize)arg4 direction:(int)arg5 itemOffset:(float)arg6 effectsDistanceFraction:(float)arg7 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r0 = [self init:r2 cellSize:r3 visibleArea:r4 direction:r5 itemOffset:r6 springOffset:r7 effectsDistanceFraction:s7 visibleAreaOffset:0x0];
    return r0;
}

-(void)addCellItem:(void *)arg2 tag:(void *)arg3 refresh:(bool)arg4 index:(int)arg5 {
    r19 = self;
    [[&var_40 super] addCellItem:arg2 tag:arg3 refresh:arg4 index:arg5];
    r0 = [r19 getCellItemByIndex:[r19 getNumElements] - 0x1];
    [r0 contentSize];
    [r0 contentSize];
    asm { fcvt       s0, d0 };
    *(int32_t *)(int64_t *)&r19->_lastCellDistance = s0;
    return;
}

-(void *)init:(struct CGPoint)arg2 cellSize:(struct CGSize)arg3 visibleArea:(struct CGSize)arg4 direction:(int)arg5 itemOffset:(float)arg6 springOffset:(float)arg7 effectsDistanceFraction:(float)arg8 visibleAreaOffset:(struct CGPoint)arg9 {
    r7 = arg7;
    r6 = arg6;
    r5 = arg5;
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xa0;
    var_50 = d15;
    stack[-88] = d14;
    var_40 = d13;
    stack[-72] = d12;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_58 = s6;
    var_54 = s7;
    r19 = r2;
    v8 = v5;
    v9 = v4;
    var_78 = d2;
    var_70 = d3;
    r20 = self;
    var_68 = arg9;
    d14 = arg_10;
    var_5C = arg8;
    d10 = *(int128_t *)*_CGPointZero;
    [self setPosition:r2];
    *(int8_t *)(int64_t *)&r20->_ignoreHorizontalPosition = 0x0;
    *(int8_t *)(int64_t *)&r20->_ignoreVerticalPosition = 0x0;
    d15 = d8 * 0x3fe0000000000000;
    if (r19 != 0x0) {
            asm { fcsel      d2, d13, d2, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { fcsel      d5, d10, d1, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { fcsel      d6, d11, d4, ne };
    }
    d11 = var_68;
    if (r19 == 0x1) {
            asm { fcsel      d2, d13, d2, eq };
    }
    if (CPU_FLAGS & E) {
            asm { fcsel      d3, d0, d12, eq };
    }
    if (CPU_FLAGS & E) {
            asm { fcsel      d4, d4, d5, eq };
    }
    if (CPU_FLAGS & E) {
            asm { fcsel      d5, d1, d6, eq };
    }
    r0 = [r20 init:r2 startPoint:r3 directionVector:r4 baseGridOffset:r5 springGridOffset:r6 effectsDistanceFraction:r7 visibleAreaOffset:var_5C];
    r19 = r0;
    if (r0 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mPoint));
            *(r19 + r8) = d13;
            *(0x8 + r19 + r8) = d12;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mCellSize));
            *(r19 + r8) = var_78;
            *(0x8 + r19 + r8) = var_70;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mPickRect));
            *(r19 + r8) = d13 - d11 - d9 * 0x3fe0000000000000;
            *(0x8 + r19 + r8) = d12 - d10 - d15;
            *(0x10 + r19 + r8) = d9;
            *(0x18 + r19 + r8) = d8;
            [r19 setPickRect:r2];
            [r19 setCellPickRect:r2];
            [r19 setClipRect:r2];
            [r19 setSnapEnabled:0x1];
    }
    r0 = r19;
    return r0;
}

-(void)removeCellItem:(void *)arg2 {
    r31 = r31 - 0x60;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r23 = [arg2 isEqual:[r19 getCellItemByIndex:[self getNumElements] - 0x1]];
    [[&var_50 super] removeCellItem:arg2];
    if (r23 != 0x0) {
            r0 = [r19 getCellItemByIndex:[r19 getNumElements] - 0x1];
            [r0 contentSize];
            [r0 contentSize];
            asm { fcvt       s0, d0 };
            *(int32_t *)(int64_t *)&r19->_lastCellDistance = s0;
    }
    return;
}

-(struct CGPoint)getCellPositionByIndex:(unsigned int)arg2 {
    r2 = arg2;
    r0 = self;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    asm { ucvtf      s0, w2 };
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mLastIndex));
    s1 = *(int32_t *)(r0 + r8);
    asm { fcvtzu     w8, s1 };
    if (s1 < s0) {
            if (!CPU_FLAGS & S) {
                    r20 = r2;
            }
            else {
                    r20 = r8;
            }
    }
    if (s1 >= 0x0) {
            r19 = r0;
            r21 = [r0 getCellItemByIndex:r20];
            [r19 getCellDistanceWhenSnapped:r20];
            r20 = (int64_t *)&r19->mStartPoint;
            d1 = *r20;
            asm { fcvt       d8, s0 };
            r0 = [r21 contentSize];
    }
    return r0;
}

-(float)getCellDistanceByIndex:(unsigned int)arg2 {
    r20 = self;
    r21 = [self getCellItemByIndex:r2];
    [r20 getComputedCellPositionByIndex:arg2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mStartPoint));
    d3 = *(int128_t *)(r20 + r8);
    d4 = *(int128_t *)(0x8 + r20 + r8);
    d0 = d0 - d3;
    asm { fcvt       d2, s2 };
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mVisibleArea));
    r19 = (int64_t *)&r20->mCellOffset;
    d0 = (d0 + *(int128_t *)(r20 + r8) * d2) * *(int128_t *)r19 + *(int128_t *)(r19 + 0x8) * ((d1 - d4) + *(int128_t *)(0x8 + r20 + r8) * d2);
    asm { fcvt       s8, d0 };
    r0 = [r21 contentSize];
    d0 = *r19 * d0;
    asm { fcvt       d1, s8 };
    asm { fcvt       s0, d0 };
    return r0;
}

-(float)getCellDistanceWhenSnapped:(unsigned int)arg2 {
    r2 = arg2;
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    asm { ucvtf      s0, w2 };
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mLastIndex));
    s1 = *(int32_t *)(r0 + r8);
    asm { fcvtzu     w8, s1 };
    if (s1 < s0) {
            if (!CPU_FLAGS & S) {
                    r2 = r2;
            }
            else {
                    r2 = r8;
            }
    }
    r0 = r0->computedDistances;
    r0 = [r0 objectAtIndex:r2];
    r0 = [r0 floatValue];
    return r0;
}

-(struct CGPoint)getComputedCellPositionByIndex:(unsigned int)arg2 {
    r2 = arg2;
    r0 = self;
    var_50 = d9;
    stack[-88] = d8;
    r31 = r31 + 0xffffffffffffffa0;
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
    r19 = r0;
    asm { ucvtf      s0, w2 };
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mLastIndex));
    s1 = *(int32_t *)(r0 + r8);
    asm { fcvtzu     w8, s1 };
    COND = s1 < s0;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(mStartPoint));
    r10 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentViewOffset));
    d0 = *(int128_t *)(r0 + r9);
    d1 = *(int128_t *)(0x8 + r0 + r9);
    d2 = *(int128_t *)(r0 + r10);
    d3 = *(int128_t *)(0x8 + r0 + r10);
    d0 = d0 - d2;
    asm { fcvt       d2, s2 };
    r9 = sign_extend_64(*(int32_t *)ivar_offset(mVisibleArea));
    d4 = *(int128_t *)(r0 + r9);
    d5 = *(int128_t *)(0x8 + r0 + r9);
    r25 = (int64_t *)&r0->mCellOffset;
    d6 = *(int128_t *)r25;
    d7 = *(int128_t *)(r25 + 0x8);
    d9 = d0 - d6 * d4 * d2;
    d0 = d1 - d3;
    d1 = d5 * d2;
    if (COND) {
            if (!CPU_FLAGS & S) {
                    r21 = r2;
            }
            else {
                    r21 = r8;
            }
    }
    d8 = d0 - d1 * d7;
    if (r21 != 0x0) {
            r23 = 0x0;
            do {
                    r20 = @selector(contentSize);
                    r0 = [r19 getCellItemByIndex:r23];
                    objc_msgSend(r0, r20);
                    d9 = d9 + d0 * *r25;
                    objc_msgSend(r24, r20);
                    d0 = *(r25 + 0x8);
                    d0 = d1 * d0;
                    d8 = d8 - d0;
                    r23 = r23 + 0x1;
            } while (r21 != r23);
    }
    r20 = @selector(contentSize);
    r0 = [r19 getCellItemByIndex:r21];
    r0 = objc_msgSend(r0, r20);
    return r0;
}

-(float)getCurrentGridOffset {
    r0 = [self getGridOffsetFor:r2];
    return r0;
}

-(void *)init:(struct CGSize)arg2 startPoint:(struct CGPoint)arg3 directionVector:(struct CGPoint)arg4 baseGridOffset:(float)arg5 springGridOffset:(float)arg6 effectsDistanceFraction:(float)arg7 visibleAreaOffset:(struct CGPoint)arg8 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xc0;
    var_A0 = d15;
    stack[-152] = d14;
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
    r29 = &var_10;
    r0 = [[&var_B0 super] initWithArray:0x0];
    r19 = r0;
    if (r0 != 0x0) {
            d12 = *(r29 + 0x18);
            d13 = *(r29 + 0x20);
            var_B4 = *(int32_t *)(r29 + 0x10);
            [r19 setTouchEnabled:0x1];
            [r19 position];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mOriginalBasePosition));
            *(r19 + r8) = d0;
            *(0x8 + r19 + r8) = d1;
            r19->mVisibleArea = d9;
            *((int64_t *)&r19->mVisibleArea + 0x8) = d8;
            r9 = sign_extend_64(*(int32_t *)ivar_offset(mOriginalVisibleArea));
            *(r19 + r9) = d9;
            *(0x8 + r19 + r9) = d8;
            d15 = d15 - *(int128_t *)(r19 + r8);
            d14 = d14 - *(int128_t *)(0x8 + r19 + r8);
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mVisibleAreaOffset));
            *(r19 + r8) = d12;
            *(0x8 + r19 + r8) = d13;
            r19->computedDistances = [[NSMutableArray array] retain];
            r19->computedAreas = [[NSMutableArray array] retain];
            r19->mTableEntryList = [[NSMutableArray arrayWithCapacity:0x1] retain];
            r19->mTagDictionary = [[NSMutableDictionary dictionaryWithCapacity:0x1] retain];
            r19->mTableEntryDictionary = [[NSMutableDictionary dictionaryWithCapacity:0x1] retain];
            r19->mCurrentTouches = [[NSMutableArray arrayWithCapacity:0x5] retain];
            r19->mViewOffsetCallback = [Callback new];
            r19->mCellActivatedCallback = [Callback new];
            r19->mDragSwitchCallback = [Callback new];
            *(int32_t *)(int64_t *)&r19->mVisibleGridLength = 0x3f800000;
            *(int32_t *)(r19 + sign_extend_64(*(int32_t *)ivar_offset(mBaseGridOffset))) = s13;
            *(int32_t *)(r19 + sign_extend_64(*(int32_t *)ivar_offset(mSpringGridOffset))) = s12;
            r19->mStartPoint = d15;
            *((int64_t *)&r19->mStartPoint + 0x8) = d14;
            r19->mCellOffset = d11;
            *((int64_t *)&r19->mCellOffset + 0x8) = d10;
            asm { fcvt       s0, d0 };
            sub_1005c3978();
            r8 = 0x10116e000;
            asm { fdiv       s0, s10, s0 };
            *(int32_t *)(r19 + sign_extend_64(*(int32_t *)(r8 + 0x3f8))) = s0;
            *(int128_t *)(int64_t *)&r19->mStartPivotPoint = *(int128_t *)r24;
            d0 = *(int128_t *)r24;
            d1 = *(int128_t *)(r24 + 0x8);
            d0 = d9 + d0;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mEndPoint));
            *(r19 + r8) = d0;
            *(0x8 + r19 + r8) = d8 + d1;
            s0 = var_B4;
            asm { fcvt       d0, s0 };
            d1 = *(int128_t *)r25;
            d2 = *(int128_t *)r28;
            d3 = *(int128_t *)(r28 + 0x8);
            asm { fcvt       s0, d0 };
            *(int32_t *)(r19 + sign_extend_64(*(int32_t *)ivar_offset(mEffectsDistance))) = s0;
            asm { fcvt       s0, d0 };
            sub_1005c3978();
            asm { fdiv       s0, s10, s0 };
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mVisibleDistance));
            *(int32_t *)(r19 + r8) = s0;
            *(int32_t *)(int64_t *)&r19->mOriginalVisibleDistance = s0;
            r8 = *(int32_t *)(r19 + r8);
            *(int32_t *)(int64_t *)&r19->mVisibleGridDistance = r8;
            *(int32_t *)(int64_t *)&r19->mVisibleGridCappedDistance = r8;
            s0 = *(int32_t *)(r19 + r27);
            asm { fcvt       d0, s0 };
            r8 = 0x10116e000;
            asm { fcvt       s0, d0 };
            *(int32_t *)(r19 + sign_extend_64(*(int32_t *)(r8 + 0x40c))) = s0;
            *(int32_t *)(int64_t *)&r19->mSpringGridOffsetDistance = *(int32_t *)(r19 + r26) * *(int32_t *)(r19 + r24);
            *(int32_t *)(r19 + r23) = 0x0;
            *(int32_t *)(int64_t *)&r19->mExtraCellsToKeepLoadedOffset = 0x0;
            *(int32_t *)(int64_t *)&r19->mSpringTime = 0x3f000000;
            *(int32_t *)(int64_t *)&r19->mSnapTime = 0x3f000000;
            *(int32_t *)(int64_t *)&r19->mSnapGranularity = 0x1;
            *(int32_t *)(int64_t *)&r19->mMaxGridFallOff = 0x40a00000;
            *(int32_t *)(int64_t *)&r19->mFallOffMultiplier = r22;
            *(int32_t *)(int64_t *)&r19->mFallOffTimeFactor = 0x40800000;
            *(int32_t *)(int64_t *)&r19->mDragFallOff = 0x3e19999a;
            *(int32_t *)(int64_t *)&r19->mSpringDragFactor = 0x3f000000;
            *(int32_t *)(int64_t *)&r19->mScrollHandleMaxCompression = 0x3dcccccd;
            *(int8_t *)(int64_t *)&r19->mBlockDragInsideTolerance = 0x1;
            if ((sub_1005cb7c8(0x1) | 0x1) == 0x7) {
                    asm { fcsel      s0, s1, s0, eq };
            }
            *(int32_t *)(int64_t *)&r19->mTapTolerance = 0x4034000000000000;
            [r19 setDefaultSnapProgressCallback];
            [r19 setDefaultSpringProgressCallback];
            [r19 setDefaultDragFallOffProgressCallback];
            *(int8_t *)(int64_t *)&r19->mEnabled = 0x1;
            r19->mDragActions = [[NSMutableDictionary dictionaryWithCapacity:0x1] retain];
    }
    r0 = r19;
    return r0;
}

-(bool)setViewPositionByDistance:(float)arg2 {
    r2 = arg2;
    r0 = self;
    s1 = *(int32_t *)(int64_t *)&r0->mCurrentViewOffsetDistance;
    asm { fcvt       d0, s1 };
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mCellOffset));
    asm { fcvt       d1, s1 };
    r0 = [r0 applyViewOffset:r2];
    return r0;
}

-(float)getGridOffsetFor:(float)arg2 {
    r0 = self;
    r31 = r31 - 0x180;
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
    r29 = &var_10;
    r19 = r0;
    *(r29 + 0xffffffffffffff70) = **___stack_chk_guard;
    if (s0 < 0x0) {
            asm { fcsel      s9, s1, s0, mi };
    }
    var_150 = q0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mTableEntryList));
    var_180 = r8;
    r20 = *(r0 + r8);
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_178 = r1;
    r0 = objc_msgSend(r20, r1);
    s11 = 0x0;
    if (r0 == 0x0) goto loc_1005c8c08;

loc_1005c8b18:
    r22 = r0;
    r26 = 0x0;
    r27 = *var_150;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(mCellOffset));
    goto loc_1005c8b48;

loc_1005c8b48:
    r21 = 0x0;
    goto loc_1005c8b54;

loc_1005c8b54:
    if (*var_150 != r27) {
            objc_enumerationMutation(r20);
    }
    [*(*(var_158 + r21 * 0x8) + sign_extend_64(*(int32_t *)ivar_offset(cell))) contentSize];
    objc_msgSend(r24, r23);
    v0 = v1;
    asm { fcvtn      v0.2s, v0.2d };
    asm { fcvtl      v0.2d, v0.2s };
    q1 = *(int128_t *)(r19 + r25);
    asm { faddp      d0, v0.2d };
    asm { fcvt       s0, d0 };
    r0 = sub_1005c3978();
    asm { fdiv       s0, s10, s0 };
    s11 = s12 + s0;
    if (s11 > s9) goto loc_1005c8c2c;

loc_1005c8bd0:
    r21 = r21 + 0x1;
    if (r21 < r22) goto loc_1005c8b54;

loc_1005c8be0:
    r0 = objc_msgSend(r20, var_178);
    r22 = r0;
    r26 = r26 + r21;
    if (r0 != 0x0) goto loc_1005c8b48;

loc_1005c8c08:
    if (s9 >= s11) {
            r0 = *(r19 + var_180);
            r0 = [r0 count];
            asm { ucvtf      s8, x0 };
    }
    goto loc_1005c8c40;

loc_1005c8c40:
    if (**___stack_chk_guard != *(r29 + 0xffffffffffffff70)) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1005c8c2c:
    asm { scvtf      s2, w8 };
    asm { fdiv       s0, s1, s0 };
    goto loc_1005c8c40;
}

-(struct CGPoint)getStartPoint {
    r0 = self;
    return r0;
}

-(struct CGPoint)getMPoint {
    r0 = self;
    return r0;
}

-(void)snapToCellItem:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r20 = arg2;
    r19 = self;
    if (([arg2 isEnabled] & 0x1) == 0x0) {
            [r20 setIsEnabled:r2];
    }
    var_110 = q0;
    r21 = r19->mTableEntryList;
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1005c8dfc;

loc_1005c8d74:
    r23 = r0;
    r8 = 0x0;
    r24 = *var_110;
    goto loc_1005c8d8c;

loc_1005c8d8c:
    r26 = 0x0;
    r27 = r8;
    goto loc_1005c8d94;

loc_1005c8d94:
    if (*var_110 != r24) {
            objc_enumerationMutation(r21);
    }
    if (*(*(var_118 + r26 * 0x8) + sign_extend_64(*(int32_t *)ivar_offset(cell))) == r20) goto loc_1005c8df4;

loc_1005c8dc4:
    r26 = r26 + 0x1;
    if (r26 < r23) goto loc_1005c8d94;

loc_1005c8dd0:
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r23 = r0;
    r8 = r27 + r26;
    if (r0 != 0x0) goto loc_1005c8d8c;

loc_1005c8df4:
    r2 = r27 + r26;
    goto loc_1005c8e00;

loc_1005c8e00:
    var_58 = **___stack_chk_guard;
    [r19 getCellPositionByIndex:r2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mCellOffset));
    d2 = *(int128_t *)(r19 + r8);
    d3 = *(int128_t *)(0x8 + r19 + r8);
    d1 = d1 * d3;
    asm { fcvt       s0, d0 };
    asm { fcvt       d1, s1 };
    asm { fcvt       d0, s0 };
    asm { fcvt       s0, d0 };
    [r19 setViewPositionByDistance:r2];
    [r19 snapStart];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1005c8dfc:
    r2 = 0x0;
    goto loc_1005c8e00;
}

-(struct CGSize)getVisibleArea {
    r0 = self;
    return r0;
}

-(float)getDistanceOfVisibleObjects {
    r0 = self;
    if (*(int32_t *)(int64_t *)&r0->mOriginalVisibleDistance < *(int32_t *)(int64_t *)&r0->mMaximumTableDistance) {
            asm { fcsel      s0, s0, s1, mi };
    }
    return r0;
}

-(float)getMaximumTableDistance {
    r0 = self;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(mLastIndex));
    if (*(int32_t *)(r0 + r22) >= 0x0) {
            r19 = r0;
            r20 = sign_extend_64(*(int32_t *)ivar_offset(computedDistances));
            r0 = *(r0 + r20);
            if (r0 != 0x0) {
                    r0 = [r0 count];
                    if (r0 != 0x0) {
                            s8 = 0x0;
                            r0 = *(r19 + r20);
                            asm { fcvtzu     x2, s0 };
                            r0 = [r0 objectAtIndex:r2];
                            [r0 floatValue];
                            v8 = v0;
                            [r0 floatValue];
                            if (s8 < 0x0) {
                                    asm { fcsel      s8, s1, s0, mi };
                            }
                            asm { fcvtzu     w2, s0 };
                            r0 = [r19 getCellItemByIndex:r2];
                            [r0 contentSize];
                            d1 = r19->mCellOffset;
                            d9 = d0 * d1;
                            r0 = [r0 contentSize];
                            d0 = *((int64_t *)&r19->mCellOffset + 0x8);
                            asm { fcvt       d1, s8 };
                            asm { fcvt       s8, d0 };
                    }
            }
    }
    return r0;
}

-(struct CGSize)getAreaOfVisibleObjects {
    var_10 = d9;
    stack[-24] = d8;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mOriginalVisibleArea));
    d8 = *(int128_t *)(self + r8);
    d9 = *(int128_t *)(0x8 + self + r8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(computedAreas));
    r8 = *(self + r8);
    asm { fcvtzu     x2, s0 };
    r0 = [r8 objectAtIndex:r2];
    r0 = [r0 CGSizeValue];
    if (d0 < d8) {
            asm { fcsel      d0, d0, d8, mi };
    }
    if (d1 < d9) {
            asm { fcsel      d1, d1, d9, mi };
    }
    return r0;
}

-(bool)applyViewOffset:(struct CGPoint)arg2 reload:(bool)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self applyViewOffset:r2 reload:r3 scaleFactor:r4];
    return r0;
}

-(bool)applyViewOffset:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self applyViewOffset:0x0 reload:r3];
    return r0;
}

-(bool)applyViewOffset:(struct CGPoint)arg2 scaleFactor:(float)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self applyViewOffset:0x0 reload:r3 scaleFactor:r4];
    return r0;
}

-(void)forceBottomSnap:(float)arg2 {
    *(int8_t *)(int64_t *)&self->mForceBottomSnap = 0x1;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mForceBottomSnapOffset));
    *(int32_t *)(self + r8) = *(int32_t *)(self + r8) + s0;
    return;
}

-(void)update:(double)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mMovementType));
    r8 = *(int32_t *)(r0 + r20);
    if (r8 == 0x0) goto .l5;

loc_1005c9954:
    r19 = r0;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mMovementCurrentTime));
    asm { fcvt       d1, s1 };
    d1 = d1 + d0;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(mMovementTotalTime));
    s0 = *(int32_t *)(r0 + r22);
    asm { fcvt       d2, s0 };
    if (d1 < d2) {
            asm { fcvt       s0, d1 };
            *(int32_t *)(r19 + r21) = s0;
    }
    *(int32_t *)(r19 + r21) = s0;
    if (r8 == 0x3) goto loc_1005c9a08;

loc_1005c99a0:
    if (r8 == 0x2) goto loc_1005c99dc;

loc_1005c99a8:
    if (r8 != 0x1) goto loc_1005c9a40;

loc_1005c99b0:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mSnapProgressCallback));
    r8 = *(r19 + r8);
    r0 = r19->mSnapProgressCallbackTarget;
    r9 = 0x10116e4bc;
    goto loc_1005c9a30;

loc_1005c9a30:
    (r8)(r0);
    goto loc_1005c9a44;

loc_1005c9a44:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mMovementStartDistance));
    r0 = [r19 setViewPositionByDistance:r2];
    r8 = *(int32_t *)(r19 + r20);
    s0 = *(int32_t *)(r19 + r21);
    s1 = *(int32_t *)(r19 + r22);
    if (r8 == 0x3) {
            if (s0 != s1) {
                    if (CPU_FLAGS & NE) {
                            r8 = 0x1;
                    }
            }
            if ((r8 & !r0 & 0x1) == 0x0) {
                    *(int32_t *)(r19 + r20) = 0x0;
                    if (([r19 springStart] & 0x1) == 0x0) {
                            [r19 snapStart];
                    }
            }
    }
    else {
            if (s0 == s1) {
                    *(int32_t *)(r19 + r20) = 0x0;
            }
    }
    return;

.l5:
    return;

loc_1005c9a40:
    s0 = 0x3ff0000000000000;
    goto loc_1005c9a44;

loc_1005c99dc:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mSpringProgressCallback));
    r8 = *(r19 + r8);
    r0 = r19->mSpringProgressCallbackTarget;
    r9 = 0x10116e4c8;
    goto loc_1005c9a30;

loc_1005c9a08:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mDragFallOffProgressCallback));
    r8 = *(r19 + r8);
    r0 = r19->mDragFallOffProgressCallbackTarget;
    r9 = 0x10116e4d4;
    goto loc_1005c9a30;
}

-(bool)springStart {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mSpringNeeded));
    if (*(int8_t *)(r0 + r8) != 0x0 && *(int8_t *)(int64_t *)&r0->mDragMode == 0x0) {
            if (*(int8_t *)(int64_t *)&r0->mSnapEnabled != 0x0) {
                    *(int8_t *)(r0 + r8) = 0x0;
            }
            *(int32_t *)(int64_t *)&r0->mMovementStartDistance = *(int32_t *)(int64_t *)&r0->mSpringStartDistance;
            *(int32_t *)(int64_t *)&r0->mMovementEndDistance = *(int32_t *)(int64_t *)&r0->mSpringEndDistance;
            *(int32_t *)(int64_t *)&r0->mMovementTotalTime = *(int32_t *)(int64_t *)&r0->mSpringTime;
            *(int32_t *)(int64_t *)&r0->mMovementCurrentTime = 0x0;
            *(int32_t *)(int64_t *)&r0->mMovementType = 0x2;
            r0 = 0x1;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)loadOperationsSinceIndex:(int)arg2 toIndex:(int)arg3 {
    r31 = r31 - 0x90;
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
    r20 = arg3;
    r19 = self;
    r22 = *(int32_t *)(int64_t *)&self->mExtraCellsToKeepLoadedOffset;
    r27 = arg2 & !(arg2 / 0xffffffff80000000);
    r28 = sign_extend_64(*(int32_t *)ivar_offset(mTableEntryList));
    r0 = *(self + r28);
    r0 = [r0 count];
    r8 = r0 - 0x1;
    if (r0 > 0x0) {
            if (!CPU_FLAGS & G) {
                    r8 = 0x0;
            }
            else {
                    r8 = r8;
            }
    }
    if (r8 < r20) {
            if (!CPU_FLAGS & L) {
                    r24 = r20;
            }
            else {
                    r24 = r8;
            }
    }
    if ((r8 & 0xffffffff80000000) != 0x0) goto loc_1005c98f0;

loc_1005c9794:
    r20 = 0x0;
    r10 = r24 + r22;
    r11 = @selector(loadData);
    var_70 = r11;
    asm { sxtw       x11, w24 };
    asm { sxtw       x10, w10 };
    var_60 = r10;
    asm { sxtw       x22, w9 };
    r23 = r8 + 0x1;
    var_80 = r27;
    stack[-136] = r11;
    goto loc_1005c97e8;

loc_1005c97e8:
    r0 = *(r19 + r28);
    r0 = [r0 objectAtIndex:r20];
    r26 = r0;
    r25 = r0->cell;
    if (r20 < r22 || r27 != r24 && r20 > var_60) goto loc_1005c9828;

loc_1005c9880:
    if (*(int8_t *)(int64_t *)&r26->isTableCell == 0x0) goto loc_1005c98e4;

loc_1005c9894:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(respondsToLoadMethods));
    r8 = *(int8_t *)(r26 + r8);
    if (r8 == 0x0) goto loc_1005c98e4;

loc_1005c98a8:
    if (r27 == r24) {
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    r9 = var_80;
    r10 = stack[-136];
    if (r20 >= r9) {
            if (CPU_FLAGS & NB) {
                    r9 = 0x1;
            }
    }
    if (r20 <= r10) {
            if (CPU_FLAGS & LE) {
                    r10 = 0x1;
            }
    }
    [r25 setVisible:r8 | r10 & r9];
    r0 = r25;
    r1 = var_70;
    goto loc_1005c98e0;

loc_1005c98e0:
    objc_msgSend(r0, r1);
    goto loc_1005c98e4;

loc_1005c98e4:
    r20 = r20 + 0x1;
    if (r23 != r20) goto loc_1005c97e8;

loc_1005c98f0:
    *(int32_t *)(int64_t *)&r19->mStartVisibleIndex = r27;
    *(int32_t *)(int64_t *)&r19->mEndVisibleIndex = r24;
    return;

loc_1005c9828:
    if (*(int8_t *)(int64_t *)&r19->mKeepDisabledCellsVisible != 0x0) goto loc_1005c98e4;

loc_1005c983c:
    [r25 setVisible:0x0];
    if (*(int8_t *)(int64_t *)&r26->isTableCell == 0x0 || *(int8_t *)(int64_t *)&r26->respondsToLoadMethods == 0x0) goto loc_1005c98e4;

loc_1005c9874:
    r0 = r25;
    r1 = @selector(unloadData);
    goto loc_1005c98e0;
}

-(bool)snapStart {
    r0 = self;
    r31 = r31 - 0x70;
    var_50 = d13;
    stack[-88] = d12;
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
    if (*(int8_t *)(int64_t *)&r0->mSnapEnabled == 0x0) goto loc_1005c9b7c;

loc_1005c9b50:
    r19 = r0;
    if (*(int8_t *)(int64_t *)&r0->mDragMode != 0x0 || *(int32_t *)(int64_t *)&r19->mForceBottomSnapOffset != 0x0) goto loc_1005c9b7c;

loc_1005c9ba0:
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mMovementEndDistance));
    s0 = *(int32_t *)(r19 + r21);
    if (s0 == 0x0) goto loc_1005c9c08;

loc_1005c9bb8:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mForceBottomSnap));
    r9 = *(int8_t *)(r19 + r8);
    if (r9 == 0x0) goto loc_1005c9c08;

loc_1005c9bc8:
    *(int8_t *)(r19 + r8) = 0x0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mCellOffset));
    r8 = r19 + r8;
    if (*r8 == 0x0) {
            s1 = *(int32_t *)(int64_t *)&r19->mLastIndxDistance;
            if (s0 < s1) {
                    *(int32_t *)(r19 + r21) = s1;
            }
            else {
                    if (s0 > 0x0) {
                            *(int32_t *)(r19 + r21) = 0x0;
                            s0 = 0x0;
                    }
            }
    }
    if (*(r8 + 0x8) == 0x0) {
            s1 = *(int32_t *)(int64_t *)&r19->mLastIndxDistance;
            if (s0 > s1) {
                    *(int32_t *)(r19 + r21) = s1;
            }
            else {
                    if (s0 < 0x0) {
                            *(int32_t *)(r19 + r21) = 0x0;
                    }
            }
    }
    goto loc_1005c9dc8;

loc_1005c9dc8:
    *(int32_t *)(int64_t *)&r19->mMovementTotalTime = *(int32_t *)(int64_t *)&r19->mSnapTime;
    *(int32_t *)(int64_t *)&r19->mMovementCurrentTime = 0x0;
    r0 = 0x1;
    *(int32_t *)(int64_t *)&r19->mMovementType = r0;
    return r0;

loc_1005c9c08:
    r22 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentViewOffsetDistance));
    s0 = *(int32_t *)(r19 + r22);
    [r19 getGridOffsetFor:r2];
    r0 = modff(&var_54, @selector(getGridOffsetFor:));
    s12 = *(int32_t *)(r19 + r22);
    [r19 getDistanceOfVisibleObjects];
    s13 = *(int32_t *)(r19 + r22);
    [r19 getDistanceOfVisibleObjects];
    [r19 getMaximumTableDistance];
    if (s9 == 0x0) goto loc_1005c9b7c;

loc_1005c9c80:
    s1 = s13 - s11;
    if (s12 < s10) {
            asm { fcsel      s1, s3, s1, mi };
    }
    r8 = &@selector(renderNativeAdForAdConfiguration:completionHandler:);
    if (s1 < s0) goto loc_1005c9cb0;

loc_1005c9c9c:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mInputOnTable));
    r8 = *(int8_t *)(r19 + r8);
    if (r8 != 0x0) goto loc_1005c9b7c;

loc_1005c9cb0:
    if (s8 < 0x0) {
            if (CPU_FLAGS & S) {
                    r8 = 0x1;
            }
    }
    if (s9 < 0x0) {
            if (CPU_FLAGS & S) {
                    r9 = 0x1;
            }
    }
    s0 = -s9;
    if ((r8 | r9) != 0x0) {
            asm { fcsel      s0, s0, s9, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { fcsel      s1, s2, s1, ne };
    }
    if (s0 < 0x3fe0000000000000) {
            asm { fcsel      s0, s2, s1, mi };
    }
    asm { fcvtzs     w2, s0 };
    *(int32_t *)(int64_t *)&r19->mMovementStartDistance = *(int32_t *)(r19 + r22);
    asm { scvtf      s0, w2 };
    if (*(int32_t *)(int64_t *)&r19->mLastIndex == s0) {
            s0 = *(int32_t *)(int64_t *)&r19->mLastIndxDistance;
    }
    else {
            [r19 getCellDistanceWhenSnapped:r2];
            if (s0 < *(int32_t *)(int64_t *)&r19->mLastIndxDistance) {
                    asm { fcsel      s0, s1, s0, mi };
            }
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mCellOffset));
            asm { fcvt       d0, s0 };
            asm { fcvt       s0, d0 };
    }
    *(int32_t *)(r19 + r21) = s0;
    goto loc_1005c9dc8;

loc_1005c9b7c:
    r0 = 0x0;
    return r0;
}

-(void)stopMovement {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentViewOffsetDistance));
    s8 = *(int32_t *)(self + r20);
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mForceBottomSnapOffset));
    s9 = *(int32_t *)(self + r21);
    [[&var_40 super] stopMovement];
    if (*(int32_t *)(r19 + r21) != 0x0) {
            *(int32_t *)(r19 + r21) = 0x0;
            *(int32_t *)(int64_t *)&r19->mMovementStartDistance = *(int32_t *)(r19 + r20);
            *(int32_t *)(int64_t *)&r19->mMovementEndDistance = s8 + s9;
    }
    return;
}

-(void)offsetCells:(int)arg2 {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    [self stopMovement];
    s0 = *(int32_t *)(int64_t *)&r19->mCurrentViewOffsetDistance;
    [r19 getGridOffsetFor:r2];
    r0 = modff(&var_34, @selector(getGridOffsetFor:));
    if (s0 < 0x0) {
            asm { fccmp      s8, s1, #0x0, mi };
    }
    if (CPU_FLAGS & S) {
            asm { fcsel      s0, s1, s0, mi };
    }
    if (s0 != 0x0) {
            if (s8 < 0x0) {
                    if (s0 >= 0x3fe0000000000000) {
                            asm { fcsel      s0, s2, s1, ge };
                    }
            }
            else {
                    if (s0 < 0x3fe0000000000000) {
                            asm { fcsel      s0, s1, s2, ls };
                    }
            }
    }
    else {
            s0 = var_34;
    }
    asm { fcvtzs     w8, s0 };
    r8 = [r19 getNumElementsExcludingHidden] - 0x1;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mSnapGranularity));
    r9 = *(int32_t *)(r19 + r20);
    asm { udiv       w8, w8, w9 };
    r21 = r8 * r9;
    asm { scvtf      s0, w22 };
    if ((r21 & 0xffffffff80000000) == 0x0) {
            sub_10035d730();
            asm { scvtf      s1, w21 };
    }
    else {
            asm { scvtf      s1, w21 };
            sub_10035d730();
    }
    sub_10035d724();
    asm { fcvtzs     w8, s0 };
    r9 = *(int32_t *)(r19 + r20);
    if (r9 != 0x1) {
            if (r8 < 0x0) {
                    asm { cneg       w10, w8, mi };
            }
            asm { udiv       w11, w10, w9 };
            r11 = r10 - r11 * r9;
            if (r11 != 0x0) {
                    r8 = r10 - r11;
                    r9 = r8 + r9;
                    r10 = r9 - r10;
                    if (r10 < 0x0) {
                            asm { cneg       w10, w10, mi };
                    }
                    if (s8 < 0x0) {
                            asm { cneg       w8, w8, mi };
                    }
            }
    }
    asm { scvtf      s0, w8 };
    [r19 setViewPositionByDistance:r2];
    return;
}

-(void)computeDistances {
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
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(computedDistances));
    var_68 = r8;
    [*(self + r8) removeAllObjects];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(computedAreas));
    [*(r19 + r22) removeAllObjects];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mLastIndex));
    var_70 = r8;
    s0 = *(int32_t *)(r19 + r8);
    if (s0 >= 0x0) {
            r20 = 0x0;
            r24 = (int64_t *)&r19->mCellOffset;
            r28 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentViewOffsetDistance));
            do {
                    var_80 = @selector(numberWithFloat:);
                    var_88 = @selector(getCellItemByIndex:);
                    [r19 getCellDistanceByIndex:r20];
                    asm { fcvt       d0, s0 };
                    asm { fcvt       d1, s1 };
                    d0 = d0 - *(int128_t *)r24 * d1;
                    d1 = *(int128_t *)(r24 + 0x8) * d1;
                    d0 = d1 + d0;
                    asm { fcvt       s0, d0 };
                    objc_msgSend(@class(NSNumber), var_80);
                    objc_msgSend(r21, r23);
                    r2 = r20;
                    r21 = objc_msgSend(r19, var_88);
                    r25 = *(r19 + r22);
                    if (r20 != 0x0) {
                            r2 = r20 - 0x1;
                            [[r25 objectAtIndex:r2] CGSizeValue];
                            v8 = v0;
                            r25 = *(r19 + r22);
                            [r21 contentSize];
                            d1 = *r24;
                            d8 = d8 + d0 * d1;
                            [r21 contentSize];
                            d0 = *(r24 + 0x8);
                            d0 = d1 * d0;
                            d1 = d9 + d0;
                    }
                    else {
                            [r21 contentSize];
                            v8 = v0;
                            [r21 contentSize];
                    }
                    v0 = v8;
                    [r25 addObject:[NSValue valueWithCGSize:r2]];
                    r20 = r20 + 0x1;
                    asm { scvtf      s0, w20 };
            } while (*(int32_t *)(r19 + var_70) >= s0);
    }
    return;
}

-(unsigned long long)length {
    r0 = self->mTableEntryList;
    if (r0 != 0x0) {
            r0 = [r0 count];
    }
    return r0;
}

-(bool)dragFallOffStart:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x90;
    var_70 = d13;
    stack[-120] = d12;
    var_60 = d11;
    stack[-104] = d10;
    var_50 = d9;
    stack[-88] = d8;
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
    v9 = v1;
    r19 = self;
    if (d10 < 0x0) {
            asm { fcsel      d1, d0, d10, mi };
    }
    if (d1 <= 0x3ff0000000000000) {
            d1 = -d9;
            if (d9 < 0x0) {
                    asm { fcsel      d1, d1, d9, mi };
            }
            if (d1 > 0x3ff0000000000000) {
                    [r19 getCurrentGridOffset];
                    v8 = v0;
                    if (d10 == 0x0 && d9 == 0x0) {
                            r0 = 0x0;
                    }
                    else {
                            r22 = (int64_t *)&r19->mCellOffset;
                            asm { fcvt       s0, d0 };
                            sub_1005c3978();
                            asm { fdiv       s0, s12, s0 };
                            if (s0 != 0x0) {
                                    d1 = *(int128_t *)r22;
                                    d2 = *(int128_t *)(r22 + 0x8);
                                    d2 = d9 * d2;
                                    d1 = d10 * d1;
                                    asm { fcvt       d0, s0 };
                                    asm { fdiv       d0, d3, d0 };
                                    asm { fcvt       s9, d0 };
                                    d0 = d2 - d1;
                                    asm { fcvt       s0, d0 };
                                    [r19 getGridOffsetFor:r2];
                                    s10 = s0 * s9;
                                    if (s10 == 0x0) {
                                            r0 = 0x0;
                                    }
                                    else {
                                            r21 = sign_extend_64(*(int32_t *)ivar_offset(mEffectsDistance));
                                            s1 = *(int32_t *)(r19 + r21);
                                            s0 = s1 * -s10;
                                            s2 = *(int32_t *)(int64_t *)&r19->mDragFallOff;
                                            asm { fdiv       s2, s3, s2 };
                                            s0 = *(int32_t *)(int64_t *)&r19->mFallOffMultiplier * s0 * s2;
                                            s2 = *(int32_t *)(int64_t *)&r19->mMaxGridFallOff;
                                            if (s1 * s2 < s1 * -s2) {
                                                    asm { fcsel      s1, s2, s3, mi };
                                            }
                                            if (CPU_FLAGS & S) {
                                                    asm { fcsel      s9, s3, s2, mi };
                                            }
                                            sub_10035d730();
                                            r0 = sub_10035d724();
                                            s1 = *(int32_t *)(int64_t *)&r19->mCurrentViewOffsetDistance;
                                            r23 = sign_extend_64(*(int32_t *)ivar_offset(mMovementStartDistance));
                                            *(int32_t *)(r19 + r23) = s1;
                                            asm { fcvt       d1, s1 };
                                            asm { fcvt       d0, s0 };
                                            d1 = d1 - *(int128_t *)r22 * d0;
                                            d0 = d1 + *(int128_t *)(r22 + 0x8) * d0;
                                            asm { fcvt       s0, d0 };
                                            r24 = sign_extend_64(*(int32_t *)ivar_offset(mMovementEndDistance));
                                            *(int32_t *)(r19 + r24) = s0;
                                            if (*(int8_t *)(int64_t *)&r19->mSnapEnabled != 0x0) {
                                                    r25 = sign_extend_64(*(int32_t *)ivar_offset(mFirstIndxDistance));
                                                    s1 = *(int32_t *)(r19 + r25);
                                                    if (s1 >= s0) {
                                                            r26 = sign_extend_64(*(int32_t *)ivar_offset(mLastIndxDistance));
                                                            if (*(int32_t *)(r19 + r26) >= s0) {
                                                                    if (s1 < s0) {
                                                                            r8 = sign_extend_64(*(int32_t *)ivar_offset(mFirstIndxSpringDistance));
                                                                    }
                                                                    else {
                                                                            r8 = sign_extend_64(*(int32_t *)ivar_offset(mLastIndxSpringDistance));
                                                                    }
                                                                    r8 = *(int32_t *)(r19 + r8);
                                                                    *(int32_t *)(r19 + r24) = r8;
                                                                    s0 = r8;
                                                            }
                                                            else {
                                                                    [r19 getGridOffsetFor:r2];
                                                                    r0 = modff(&var_74, @selector(getGridOffsetFor:));
                                                                    r0 = modff(&stack[-136], @selector(getGridOffsetFor:));
                                                                    if (s10 < 0x0) {
                                                                            asm { fcsel      s0, s11, s10, mi };
                                                                    }
                                                                    s1 = var_74;
                                                                    if (s1 < 0x0) {
                                                                            s1 = 0x0;
                                                                    }
                                                                    else {
                                                                            if (s9 > 0x3fe0000000000000) {
                                                                                    asm { fdiv       s0, s10, s0 };
                                                                                    asm { fcvt       d0, s0 };
                                                                                    d0 = *(int128_t *)(r22 + 0x8) * d0 - *(int128_t *)r22 * d0;
                                                                                    asm { fcvt       d1, s1 };
                                                                                    d0 = d0 + d1;
                                                                                    asm { fcvt       s1, d0 };
                                                                            }
                                                                    }
                                                                    s0 = *(int32_t *)(r19 + r24);
                                                                    if (!OVERFLOW(s1 - s1) && s0 <= *(int32_t *)(r19 + r25) && s0 >= *(int32_t *)(r19 + r26)) {
                                                                            asm { fcvtzu     w2, s1 };
                                                                            r0 = [r19 getCellDistanceWhenSnapped:r2];
                                                                            asm { fcvt       d0, s0 };
                                                                            asm { fcvt       s0, d0 };
                                                                            *(int32_t *)(r19 + r24) = s0;
                                                                    }
                                                            }
                                                    }
                                                    else {
                                                            if (s1 < s0) {
                                                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(mFirstIndxSpringDistance));
                                                            }
                                                            else {
                                                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(mLastIndxSpringDistance));
                                                            }
                                                            r8 = *(int32_t *)(r19 + r8);
                                                            *(int32_t *)(r19 + r24) = r8;
                                                            s0 = r8;
                                                    }
                                            }
                                            r8 = sign_extend_64(*(int32_t *)ivar_offset(mMovementType));
                                            *(int32_t *)(r19 + r8) = 0x3;
                                            s0 = s0 - *(int32_t *)(r19 + r23);
                                            asm { fdiv       s0, s0, s1 };
                                            if (s0 < 0x0) {
                                                    asm { fcsel      s0, s1, s0, mi };
                                            }
                                            r10 = sign_extend_64(*(int32_t *)ivar_offset(mMovementTotalTime));
                                            *(int32_t *)(r19 + r10) = s0;
                                            *(int32_t *)(int64_t *)&r19->mMovementCurrentTime = 0x0;
                                            if (*(int32_t *)(r19 + r10) != 0x0) {
                                                    if (CPU_FLAGS & NE) {
                                                            r0 = 0x1;
                                                    }
                                            }
                                            r9 = 0x3;
                                            if (CPU_FLAGS & E) {
                                                    if (!CPU_FLAGS & E) {
                                                            r9 = 0x3;
                                                    }
                                                    else {
                                                            r9 = 0x0;
                                                    }
                                            }
                                            *(int32_t *)(r19 + r8) = r9;
                                    }
                            }
                            else {
                                    r0 = 0x0;
                            }
                    }
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            [r19 getCurrentGridOffset];
            v8 = v0;
            if (d10 == 0x0 && d9 == 0x0) {
                    r0 = 0x0;
            }
            else {
                    r22 = (int64_t *)&r19->mCellOffset;
                    asm { fcvt       s0, d0 };
                    sub_1005c3978();
                    asm { fdiv       s0, s12, s0 };
                    if (s0 != 0x0) {
                            d1 = *(int128_t *)r22;
                            d2 = *(int128_t *)(r22 + 0x8);
                            d2 = d9 * d2;
                            d1 = d10 * d1;
                            asm { fcvt       d0, s0 };
                            asm { fdiv       d0, d3, d0 };
                            asm { fcvt       s9, d0 };
                            d0 = d2 - d1;
                            asm { fcvt       s0, d0 };
                            [r19 getGridOffsetFor:r2];
                            s10 = s0 * s9;
                            if (s10 == 0x0) {
                                    r0 = 0x0;
                            }
                            else {
                                    r21 = sign_extend_64(*(int32_t *)ivar_offset(mEffectsDistance));
                                    s1 = *(int32_t *)(r19 + r21);
                                    s0 = s1 * -s10;
                                    s2 = *(int32_t *)(int64_t *)&r19->mDragFallOff;
                                    asm { fdiv       s2, s3, s2 };
                                    s0 = *(int32_t *)(int64_t *)&r19->mFallOffMultiplier * s0 * s2;
                                    s2 = *(int32_t *)(int64_t *)&r19->mMaxGridFallOff;
                                    if (s1 * s2 < s1 * -s2) {
                                            asm { fcsel      s1, s2, s3, mi };
                                    }
                                    if (CPU_FLAGS & S) {
                                            asm { fcsel      s9, s3, s2, mi };
                                    }
                                    sub_10035d730();
                                    r0 = sub_10035d724();
                                    s1 = *(int32_t *)(int64_t *)&r19->mCurrentViewOffsetDistance;
                                    r23 = sign_extend_64(*(int32_t *)ivar_offset(mMovementStartDistance));
                                    *(int32_t *)(r19 + r23) = s1;
                                    asm { fcvt       d1, s1 };
                                    asm { fcvt       d0, s0 };
                                    d1 = d1 - *(int128_t *)r22 * d0;
                                    d0 = d1 + *(int128_t *)(r22 + 0x8) * d0;
                                    asm { fcvt       s0, d0 };
                                    r24 = sign_extend_64(*(int32_t *)ivar_offset(mMovementEndDistance));
                                    *(int32_t *)(r19 + r24) = s0;
                                    if (*(int8_t *)(int64_t *)&r19->mSnapEnabled != 0x0) {
                                            r25 = sign_extend_64(*(int32_t *)ivar_offset(mFirstIndxDistance));
                                            s1 = *(int32_t *)(r19 + r25);
                                            if (s1 >= s0) {
                                                    r26 = sign_extend_64(*(int32_t *)ivar_offset(mLastIndxDistance));
                                                    if (*(int32_t *)(r19 + r26) >= s0) {
                                                            if (s1 < s0) {
                                                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(mFirstIndxSpringDistance));
                                                            }
                                                            else {
                                                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(mLastIndxSpringDistance));
                                                            }
                                                            r8 = *(int32_t *)(r19 + r8);
                                                            *(int32_t *)(r19 + r24) = r8;
                                                            s0 = r8;
                                                    }
                                                    else {
                                                            [r19 getGridOffsetFor:r2];
                                                            r0 = modff(&var_74, @selector(getGridOffsetFor:));
                                                            r0 = modff(&stack[-136], @selector(getGridOffsetFor:));
                                                            if (s10 < 0x0) {
                                                                    asm { fcsel      s0, s11, s10, mi };
                                                            }
                                                            s1 = var_74;
                                                            if (s1 < 0x0) {
                                                                    s1 = 0x0;
                                                            }
                                                            else {
                                                                    if (s9 > 0x3fe0000000000000) {
                                                                            asm { fdiv       s0, s10, s0 };
                                                                            asm { fcvt       d0, s0 };
                                                                            d0 = *(int128_t *)(r22 + 0x8) * d0 - *(int128_t *)r22 * d0;
                                                                            asm { fcvt       d1, s1 };
                                                                            d0 = d0 + d1;
                                                                            asm { fcvt       s1, d0 };
                                                                    }
                                                            }
                                                            s0 = *(int32_t *)(r19 + r24);
                                                            if (!OVERFLOW(s1 - s1) && s0 <= *(int32_t *)(r19 + r25) && s0 >= *(int32_t *)(r19 + r26)) {
                                                                    asm { fcvtzu     w2, s1 };
                                                                    r0 = [r19 getCellDistanceWhenSnapped:r2];
                                                                    asm { fcvt       d0, s0 };
                                                                    asm { fcvt       s0, d0 };
                                                                    *(int32_t *)(r19 + r24) = s0;
                                                            }
                                                    }
                                            }
                                            else {
                                                    if (s1 < s0) {
                                                            r8 = sign_extend_64(*(int32_t *)ivar_offset(mFirstIndxSpringDistance));
                                                    }
                                                    else {
                                                            r8 = sign_extend_64(*(int32_t *)ivar_offset(mLastIndxSpringDistance));
                                                    }
                                                    r8 = *(int32_t *)(r19 + r8);
                                                    *(int32_t *)(r19 + r24) = r8;
                                                    s0 = r8;
                                            }
                                    }
                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(mMovementType));
                                    *(int32_t *)(r19 + r8) = 0x3;
                                    s0 = s0 - *(int32_t *)(r19 + r23);
                                    asm { fdiv       s0, s0, s1 };
                                    if (s0 < 0x0) {
                                            asm { fcsel      s0, s1, s0, mi };
                                    }
                                    r10 = sign_extend_64(*(int32_t *)ivar_offset(mMovementTotalTime));
                                    *(int32_t *)(r19 + r10) = s0;
                                    *(int32_t *)(int64_t *)&r19->mMovementCurrentTime = 0x0;
                                    if (*(int32_t *)(r19 + r10) != 0x0) {
                                            if (CPU_FLAGS & NE) {
                                                    r0 = 0x1;
                                            }
                                    }
                                    r9 = 0x3;
                                    if (CPU_FLAGS & E) {
                                            if (!CPU_FLAGS & E) {
                                                    r9 = 0x3;
                                            }
                                            else {
                                                    r9 = 0x0;
                                            }
                                    }
                                    *(int32_t *)(r19 + r8) = r9;
                            }
                    }
                    else {
                            r0 = 0x0;
                    }
            }
    }
    return r0;
}

-(bool)ignoreHorizontalPosition {
    r0 = *(int8_t *)(int64_t *)&self->_ignoreHorizontalPosition & 0x1;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(computedDistances));
    [*(self + r22) removeAllObjects];
    r0 = *(r19 + r22);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r22) = 0x0;
    }
    r20 = @selector(removeAllObjects);
    r22 = sign_extend_64(*(int32_t *)ivar_offset(computedAreas));
    objc_msgSend(*(r19 + r22), r20);
    r0 = *(r19 + r22);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r22) = 0x0;
    }
    [[&var_30 super] dealloc];
    return;
}

-(void)setIgnoreHorizontalPosition:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_ignoreHorizontalPosition = arg2;
    return;
}

-(bool)ignoreVerticalPosition {
    r0 = *(int8_t *)(int64_t *)&self->_ignoreVerticalPosition & 0x1;
    return r0;
}

-(void)setIgnoreVerticalPosition:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_ignoreVerticalPosition = arg2;
    return;
}

-(struct CGPoint)visibleAreaOffset {
    r0 = objc_copyStruct(&var_10, (int64_t *)&self->mVisibleAreaOffset, 0x10, 0x1, 0x0);
    return r0;
}

-(void)refresh {
    var_80 = d13;
    stack[-136] = d12;
    r31 = r31 + 0xffffffffffffff70;
    var_70 = d11;
    stack[-120] = d10;
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
    r19 = self;
    r0 = self->mTableEntryList;
    r0 = [r0 count];
    if (r0 > 0x0) {
            r23 = 0x10116e3f4;
            r21 = &@selector(renderNativeAdForAdConfiguration:completionHandler:);
            asm { scvtf      s0, w8 };
            r27 = sign_extend_64(*(int32_t *)ivar_offset(mLastIndex));
            *(int32_t *)(r19 + r27) = s0;
            [r19 computeDistances];
            r19->mStartPoint = r19->mStartPivotPoint;
            s0 = *(int32_t *)(r19 + r27);
            asm { fcvtzu     w2, s0 };
            r21 = objc_msgSend(r19, *(r21 + 0x658));
            [r19 getMaximumTableDistance];
            r26 = sign_extend_64(*(int32_t *)ivar_offset(mMaximumTableDistance));
            *(int32_t *)(r19 + r26) = s0;
            [r19 getDistanceOfVisibleObjects];
            r25 = sign_extend_64(*(int32_t *)ivar_offset(mVisibleDistance));
            *(int32_t *)(r19 + r25) = s0;
            [r19 getAreaOfVisibleObjects];
            r22 = (int64_t *)&r19->mVisibleArea;
            *(int128_t *)r22 = d0;
            *(int128_t *)(r22 + 0x8) = d1;
            r28 = r19 + sign_extend_64(*(int32_t *)r23);
            asm { fcvt       s0, d0 };
            sub_1005c3978();
            r8 = 0x10116e000;
            asm { fdiv       s0, s8, s0 };
            *(int32_t *)(r19 + sign_extend_64(*(int32_t *)(r8 + 0x404))) = s0;
            *(int32_t *)(int64_t *)&r19->mVisibleGridCappedDistance = s0;
            [r19 getCellDistanceWhenSnapped:r2];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(mFirstIndxDistance));
            asm { fcvt       d0, s0 };
            d1 = *(int128_t *)r28;
            d1 = d1 * d0;
            asm { fcvt       s0, d0 };
            *(int32_t *)(r19 + r23) = s0;
            s0 = *(int32_t *)(r19 + r27);
            asm { fcvtzu     w2, s0 };
            objc_msgSend(r19, r20);
            s1 = -s0;
            if (s0 < 0x0) {
                    asm { fcsel      s1, s1, s0, mi };
            }
            s9 = s1 + *(int32_t *)(int64_t *)&r19->_lastCellDistance;
            asm { fcvt       d10, s0 };
            d0 = *r22;
            [r21 contentSize];
            d11 = (d10 - d0) + d0;
            d12 = *r28;
            d10 = *(r22 + 0x8) + d10;
            [r21 contentSize];
            d0 = *(r28 + 0x8) * (d10 - d1) - d12 * d11;
            asm { fcvt       s0, d0 };
            r21 = sign_extend_64(*(int32_t *)ivar_offset(mLastIndxDistance));
            *(int32_t *)(r19 + r21) = s0;
            s0 = *(int32_t *)(r19 + r23);
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mSpringGridOffsetDistance));
            *(int32_t *)(int64_t *)&r19->mFirstIndxSpringDistance = s0 + *(int32_t *)(r19 + r8);
            *(int32_t *)(int64_t *)&r19->mLastIndxSpringDistance = *(int32_t *)(r19 + r21) - *(int32_t *)(r19 + r8);
            s0 = 0x0;
            if (*(int32_t *)(r19 + r26) > 0x0) {
                    s0 = *(int32_t *)(int64_t *)&r19->mCurrentViewOffsetDistance;
                    asm { fdiv       s0, s0, s1 };
                    sub_10035d730();
                    sub_10035d724();
            }
            *(int32_t *)(int64_t *)&r19->mCurrentScrollProgress = s0;
            s0 = *(int32_t *)(r19 + r25);
            asm { fdiv       s1, s0, s9 };
            if (s9 > s0) {
                    asm { fcsel      s0, s1, s8, gt };
            }
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentScrollHandleRecommendedSize));
            *(int32_t *)(r19 + r8) = s0;
            s1 = *(int32_t *)(int64_t *)&r19->mSpringPenetration;
            if (s1 > 0x0) {
                    *(int32_t *)(r19 + r8) = s0 * ((0x3ff0000000000000 - s1) * (*(int32_t *)(int64_t *)&r19->mScrollHandleMaxCompression + 0xbff0000000000000) + 0x3ff0000000000000);
            }
            s0 = *(int32_t *)(r19 + r21);
            if (s0 < 0x0) {
                    asm { fcsel      s0, s1, s0, mi };
            }
            if (s0 > *(int32_t *)(r19 + r25)) {
                    if (CPU_FLAGS & G) {
                            r8 = 0x1;
                    }
            }
            r20 = @selector(contentSize);
            *(int8_t *)(int64_t *)&r19->mShouldShowScrollBar = r8;
    }
    else {
            r20 = @selector(contentSize);
    }
    [r19 getNumElements] - 0x1;
    r0 = [r19 getCellItemByIndex:r2];
    objc_msgSend(r0, r20);
    objc_msgSend(r21, r20);
    asm { fcvt       s0, d0 };
    *(int32_t *)(r19 + sign_extend_64(*(int32_t *)(r24 + 0x2f0))) = s0;
    [r19 applyViewOffset:0x1 reload:r3];
    *(int32_t *)(int64_t *)&r19->mMovementType = 0x0;
    [r19 snapStart];
    return;
}

-(bool)applyViewOffset:(struct CGPoint)arg2 reload:(bool)arg3 scaleFactor:(float)arg4 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xc0;
    var_A0 = d15;
    stack[-152] = d14;
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
    r22 = r2;
    r19 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(mTableEntryList));
    r0 = *(self + r23);
    r0 = [r0 count];
    if (r0 == 0x0) goto .l29;

loc_1005c9140:
    [r19 getCurrentGridOffset];
    v8 = v0;
    r21 = objc_msgSend(*(r19 + r23), r21);
    if ((r22 & 0x1) == 0x0 && d11 == 0x0 && d9 == 0x0) {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentViewOffsetDistance));
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mLastIndxDistance));
            s0 = *(int32_t *)(r19 + r8);
            r9 = 0x10116e000;
            r22 = sign_extend_64(*(int32_t *)(r9 + 0x31c));
    }
    else {
            r25 = (int64_t *)&r19->mCellOffset;
            d1 = *(int128_t *)(r25 + 0x8) * d9 * d9;
            asm { fcvt       s0, d0 };
            sub_1005c3978();
            asm { fdiv       s0, s13, s0 };
            if (s0 != 0x0) {
                    d1 = *(int128_t *)r25;
                    d1 = d9 * *(int128_t *)(r25 + 0x8) - d11 * d1;
                    asm { fcvt       d2, s0 };
                    asm { fdiv       d1, d1, d2 };
                    asm { fcvt       s1, d1 };
            }
            else {
                    s1 = 0x0;
            }
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mIsOnSpring));
            r10 = *(int8_t *)(r19 + r8);
            if (r10 != 0x0) {
                    if (s1 < 0x0) {
                            if (CPU_FLAGS & S) {
                                    r10 = 0x1;
                            }
                    }
                    if (r10 == *(int32_t *)(int64_t *)&r19->mSpringForceDirection / 0xffffffff80000000) {
                            asm { fcsel      s10, s13, s10, eq };
                    }
            }
            s14 = s0 * s1 * s10;
            r23 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentViewOffsetDistance));
            s15 = *(int32_t *)(r19 + r23) - s14;
            r22 = sign_extend_64(*(int32_t *)ivar_offset(mFirstIndxDistance));
            s0 = *(int32_t *)(r19 + r22);
            if (s15 > s0) {
                    r11 = 0x1;
                    r10 = 0x1;
            }
            else {
                    s0 = *(int32_t *)(int64_t *)&r19->mLastIndxDistance;
                    if (s15 < s0) {
                            r10 = 0xffffffffffffffff;
                            r11 = 0x1;
                    }
                    else {
                            r11 = 0x0;
                            r10 = 0x0;
                            *(int32_t *)(int64_t *)&r19->mSpringPenetration = 0x0;
                            v0 = v15;
                    }
            }
            *(int8_t *)(r19 + r8) = r11;
            *(int32_t *)(int64_t *)&r19->mSpringForceDirection = r10;
            if (*(int32_t *)(int64_t *)&r19->mSpringGridOffsetDistance != 0x0) {
                    s2 = -s15;
                    if (s15 < 0x0) {
                            asm { fcsel      s2, s2, s15, mi };
                    }
                    if (s0 < 0x0) {
                            asm { fcsel      s0, s3, s0, mi };
                    }
                    asm { fdiv       s0, s0, s1 };
                    sub_10035d730();
                    sub_10035d724();
                    *(int32_t *)(r19 + sign_extend_64(*(int32_t *)r24)) = s0;
            }
            if (s15 < *(int32_t *)(int64_t *)&r19->mFirstIndxSpringDistance && s15 > *(int32_t *)(int64_t *)&r19->mLastIndxSpringDistance) {
                    d0 = -d11;
                    asm { fcvt       d1, s10 };
                    d0 = *r25 * d0 * d1;
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentViewOffset));
                    d2 = *(int128_t *)(r19 + r8);
                    d3 = *(int128_t *)(0x8 + r19 + r8);
                    *(r19 + r8) = d0 + d2;
                    *(0x8 + r19 + r8) = d3 - *(r25 + 0x8) * d9 * d1;
                    *(int32_t *)(r19 + r23) = *(int32_t *)(r19 + r23) - s14;
            }
            s0 = 0x0;
            if (*(int32_t *)(int64_t *)&r19->mMaximumTableDistance > 0x0) {
                    s0 = *(int32_t *)(r19 + r23);
                    asm { fdiv       s0, s0, s1 };
                    sub_10035d730();
                    sub_10035d724();
            }
            *(int32_t *)(int64_t *)&r19->mCurrentScrollProgress = s0;
            s0 = *(int32_t *)(int64_t *)&r19->mLastIndex;
            asm { fcvtzu     w2, s0 };
            [r19 getCellDistanceWhenSnapped:r2];
            if (s0 < 0x0) {
                    asm { fcsel      s0, s1, s0, mi };
            }
            s0 = s0 + *(int32_t *)(int64_t *)&r19->_lastCellDistance;
            r9 = sign_extend_64(*(int32_t *)ivar_offset(mVisibleDistance));
            s1 = *(int32_t *)(r19 + r9);
            asm { fdiv       s2, s1, s0 };
            if (s0 > s1) {
                    asm { fcsel      s0, s2, s13, gt };
            }
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentScrollHandleRecommendedSize));
            *(int32_t *)(r19 + r8) = s0;
            *(int32_t *)(r19 + r8) = s0 * ((*(int32_t *)(int64_t *)&r19->mScrollHandleMaxCompression + 0xbff0000000000000) * *(int32_t *)(int64_t *)&r19->mSpringPenetration + 0x3ff0000000000000);
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mLastIndxDistance));
            s0 = *(int32_t *)(r19 + r8);
            s1 = -s0;
            if (s0 < 0x0) {
                    asm { fcsel      s1, s1, s0, mi };
            }
            if (s1 > *(int32_t *)(r19 + r9)) {
                    if (CPU_FLAGS & G) {
                            r9 = 0x1;
                    }
            }
            *(int8_t *)(int64_t *)&r19->mShouldShowScrollBar = r9;
    }
    s1 = *(int32_t *)(r19 + r23);
    if (s1 < 0x0) {
            if (CPU_FLAGS & S) {
                    r9 = 0x1;
            }
    }
    r10 = sign_extend_64(*(int32_t *)ivar_offset(mShouldShowPreviousButton));
    *(int8_t *)(r19 + r10) = r9;
    if (s1 > s0) {
            if (CPU_FLAGS & G) {
                    r10 = 0x1;
            }
    }
    *(int8_t *)(int64_t *)&r19->mShouldShowNextButton = r10;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(mSpringNeeded));
    *(int8_t *)(r19 + r9) = 0x0;
    r10 = r19 + r22;
    if (s1 > *(int32_t *)r10) goto loc_1005c94f8;

loc_1005c94ec:
    if (s1 >= s0) goto loc_1005c9530;

loc_1005c94f4:
    r10 = r19 + r8;
    goto loc_1005c94f8;

loc_1005c94f8:
    var_BC = 0x1;
    *(int8_t *)(r19 + r9) = 0x1;
    *(int32_t *)(int64_t *)&r19->mSpringStartDistance = s1;
    *(int32_t *)(int64_t *)&r19->mSpringEndDistance = *(int32_t *)r10;
    goto loc_1005c9534;

loc_1005c9534:
    [r19 getCurrentGridOffset];
    s10 = *(int32_t *)(r19 + r23);
    [r19 getDistanceOfVisibleObjects];
    s0 = s10 - s0;
    [r19 getGridOffsetFor:r2];
    modff(&var_A4, @selector(getGridOffsetFor:));
    v0 = v0;
    r0 = modff(&var_A8, @selector(getGridOffsetFor:));
    s11 = var_A4;
    if (s9 != 0x0) {
    }
    asm { ucvtf      s1, x21 };
    if (s0 == 0x0) {
            var_A8 = var_A8 + 0xbff0000000000000;
    }
    r20 = @selector(getCurrentGridOffset);
    asm { fcvtzs     w20, s1 };
    if ((r20 & 0xffffffff80000000) == 0x0) {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_ignoreHorizontalPosition));
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_ignoreVerticalPosition));
            do {
                    r28 = [r19 getCellItemByIndex:r20];
                    [r19 getCellPositionByIndex:r20];
                    v10 = v1;
                    if (*(int8_t *)(r19 + r22) != 0x0) {
                            [r28 position];
                    }
                    v9 = v0;
                    if (*(int8_t *)(r19 + r27) != 0x0) {
                            [r28 position];
                            v10 = v1;
                    }
                    v0 = v9;
                    v1 = v10;
                    [r28 setPosition:r2];
                    if (([r28 isEnabled] & 0x1) == 0x0) {
                            [r28 setIsEnabled:0x1];
                    }
                    COND = r20 > 0x0;
                    r20 = r20 - 0x1;
            } while (COND);
    }
    asm { fcvtzs     w2, s11 };
    asm { fcvtzs     w3, s0 };
    [r19 loadOperationsSinceIndex:r2 toIndex:r3];
    modff(&stack[-172], @selector(loadOperationsSinceIndex:toIndex:));
    [r19->mViewOffsetCallback execute];
    r0 = var_BC;
    return r0;

.l29:
    return r0;

loc_1005c9530:
    var_BC = 0x0;
    goto loc_1005c9534;
}

@end