@implementation CCTable

-(void)simulateDragHorizontal:(float)arg2 {
    return;
}

-(void)simulateDragVertical:(float)arg2 {
    return;
}

-(void *)getAllItems {
    r0 = [NSArray array];
    return r0;
}

-(void *)init {
    [self release];
    return 0x0;
}

-(void *)initWithItems:(void *)arg2 vaList:(char *)arg3 {
    [self release];
    return 0x0;
}

-(void *)init:(struct CGPoint)arg2 numVisibleItems:(float)arg3 cellSize:(struct CGSize)arg4 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r0 = [self init:0x0 numVisibleItems:r3 cellSize:r4 direction:r5 itemOffset:r6];
    return r0;
}

-(void *)init:(struct CGPoint)arg2 numVisibleItems:(float)arg3 cellSize:(struct CGSize)arg4 direction:(int)arg5 itemOffset:(float)arg6 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r0 = [self init:r2 numVisibleItems:r3 cellSize:r4 direction:r5 itemOffset:r6 springOffset:r7];
    return r0;
}

-(void)setSpringOffset:(float)arg2 {
    *(int32_t *)(int64_t *)&self->mSpringGridOffset = s0;
    *(int32_t *)(int64_t *)&self->mSpringGridOffsetDistance = *(int32_t *)(int64_t *)&self->mCellOffsetDistance * s0;
    return;
}

-(void *)init:(struct CGPoint)arg2 numVisibleItems:(float)arg3 cellSize:(struct CGSize)arg4 direction:(int)arg5 itemOffset:(float)arg6 springOffset:(float)arg7 {
    r6 = arg6;
    r5 = arg5;
    memcpy(&r4, &arg4, 0x8);
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    var_30 = d11;
    stack[-56] = d10;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v16 = v4;
    v7 = v1;
    r19 = self;
    d0 = *(int128_t *)*_CGPointZero;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mCellSize));
    *(int128_t *)(self + r8) = d3;
    *(int128_t *)(0x8 + self + r8) = d16;
    if (r2 != 0x1) {
            if (r2 == 0x0) {
                    asm { fcvt       d0, s0 };
                    asm { fcvt       d0, s2 };
                    v11 = v16;
            }
    }
    else {
            asm { fcvt       d17, s17 };
            asm { fcvt       d17, s2 };
            v10 = v3;
    }
    r20 = [r19 init:r2 startPoint:r3 gridCellOffset:r4 baseGridOffset:r5 springGridOffset:r6];
    [r19 setPickRect:r2];
    [r19 setCellPickRect:r2];
    [r19 setClipRect:r2];
    [r19 setSnapEnabled:0x1];
    [r19 setScrollableTable:0x1];
    *(int8_t *)(int64_t *)&r19->_preventTouchesInMultipleMenus = 0x0;
    r0 = r20;
    return r0;
}

-(int)tableState {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    r8 = *(int32_t *)(r0 + r8);
    if (r8 != 0x1) {
            asm { csetm      w9, ne };
    }
    if (r8 != 0x0) {
            asm { csinc      w0, w9, wzr, ne };
    }
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
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mTableEntryList));
    r0 = *(self + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mTagDictionary));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mTableEntryDictionary));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentTouches));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mViewOffsetCallback));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mCellActivatedCallback));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mDragSwitchCallback));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mDragActions));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    [[&var_30 super] dealloc];
    return;
}

-(void)onEnterTransitionDidFinish {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] onEnterTransitionDidFinish];
    [r19 unscheduleUpdate];
    [r19 scheduleUpdate];
    [r19 cleanInputData];
    [r19 stopMovement];
    if (([r19 springStart] & 0x1) == 0x0) {
            [r19 snapStart];
    }
    return;
}

-(void *)init:(float)arg2 startPoint:(struct CGPoint)arg3 gridCellOffset:(struct CGPoint)arg4 baseGridOffset:(float)arg5 springGridOffset:(float)arg6 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0xb0;
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
    r0 = [[&var_B0 super] initWithArray:0x0];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setTouchEnabled:0x1];
            [r19 position];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mOriginalBasePosition));
            *(r19 + r8) = d0;
            *(0x8 + r19 + r8) = d1;
            r19->mTableEntryList = [[NSMutableArray arrayWithCapacity:0x1] retain];
            r19->mTagDictionary = [[NSMutableDictionary dictionaryWithCapacity:0x1] retain];
            r19->mTableEntryDictionary = [[NSMutableDictionary dictionaryWithCapacity:0x1] retain];
            r19->mCurrentTouches = [[NSMutableArray arrayWithCapacity:0x5] retain];
            r19->mViewOffsetCallback = [Callback new];
            r19->mCellActivatedCallback = [Callback new];
            r19->mDragSwitchCallback = [Callback new];
            *(int32_t *)(r19 + sign_extend_64(*(int32_t *)ivar_offset(mVisibleGridLength))) = s12;
            r25 = sign_extend_64(*(int32_t *)ivar_offset(mBaseGridOffset));
            *(int32_t *)(r19 + r25) = s11;
            r22 = sign_extend_64(*(int32_t *)ivar_offset(mSpringGridOffset));
            *(int32_t *)(r19 + r22) = s10;
            r19->mStartPoint = d14 - d0;
            *((int64_t *)&r19->mStartPoint + 0x8) = d13 - d1;
            r19->mCellOffset = d9;
            *((int64_t *)&r19->mCellOffset + 0x8) = d8;
            asm { fcvt       s0, d0 };
            sub_1005c3978();
            s2 = 0x3ff0000000000000;
            asm { fdiv       s0, s2, s0 };
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mCellOffsetDistance));
            *(int32_t *)(r19 + r8) = s0;
            d1 = *(int128_t *)r28;
            d3 = *(int128_t *)(r28 + 0x8);
            d4 = *(int128_t *)r27;
            d0 = *(int128_t *)(r27 + 0x8) + d3 * 0x3fe0000000000000;
            r9 = sign_extend_64(*(int32_t *)ivar_offset(mStartPivotPoint));
            *(r19 + r9) = d4 + d1 * 0x3fe0000000000000;
            *(0x8 + r19 + r9) = d0;
            asm { fcvt       d0, s0 };
            d1 = *(int128_t *)r28;
            d3 = *(int128_t *)(r28 + 0x8);
            d4 = *(int128_t *)r27;
            d5 = *(int128_t *)(r27 + 0x8);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(mEndPoint));
            *(r19 + r9) = d4 + d1 * d0;
            *(0x8 + r19 + r9) = d5 + d3 * d0;
            s0 = *(int32_t *)(r19 + r26);
            s0 = s0 * *(int32_t *)(r19 + r8);
            *(int32_t *)(int64_t *)&r19->mVisibleGridDistance = s0;
            if (*(int32_t *)(r19 + r26) >= s2) {
                    asm { frintm     s0, s1 };
                    s0 = s0 * *(int32_t *)(r19 + r8);
            }
            *(int32_t *)(int64_t *)&r19->mVisibleGridCappedDistance = s0;
            *(int32_t *)(int64_t *)&r19->mBaseGridOffsetDistance = *(int32_t *)(r19 + r25) * *(int32_t *)(r19 + r8);
            *(int32_t *)(int64_t *)&r19->mSpringGridOffsetDistance = *(int32_t *)(r19 + r22) * *(int32_t *)(r19 + r8);
            *(int32_t *)(int64_t *)&r19->mExtraCellsToKeepLoadedOffset = 0x0;
            *(int32_t *)(int64_t *)&r19->mSpringTime = 0x3f000000;
            *(int32_t *)(int64_t *)&r19->mSnapTime = 0x3e99999a;
            *(int32_t *)(int64_t *)&r19->mSnapGranularity = 0x1;
            *(int32_t *)(int64_t *)&r19->mMaxGridFallOff = 0x40a00000;
            *(int32_t *)(int64_t *)&r19->mFallOffMultiplier = 0x3f800000;
            *(int32_t *)(int64_t *)&r19->mFallOffTimeFactor = 0x40800000;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mPickRect));
            r10 = *_CGRectZero;
            q0 = *(int128_t *)r10;
            q1 = *(int128_t *)(r10 + 0x10);
            *(int128_t *)(r19 + r8) = q0;
            *(int128_t *)(0x10 + r19 + r8) = q1;
            *(int32_t *)(int64_t *)&r19->mDragFallOff = 0x3e19999a;
            *(int32_t *)(int64_t *)&r19->mSpringDragFactor = 0x3f000000;
            *(int32_t *)(int64_t *)&r19->mScrollHandleMaxCompression = 0x3dcccccd;
            *(int8_t *)(int64_t *)&r19->mIsCircular = 0x0;
            *(int8_t *)(int64_t *)&r19->mBlockDragInsideTolerance = 0x1;
            if ((sub_1005cb7c8(0x1) | 0x1) == 0x7) {
                    asm { fcsel      s0, s1, s0, eq };
            }
            *(int32_t *)(int64_t *)&r19->mTapTolerance = 0x4034000000000000;
            [r19 setDefaultSnapProgressCallback];
            [r19 setDefaultSpringProgressCallback];
            [r19 setDefaultDragFallOffProgressCallback];
            *(int32_t *)(int64_t *)&r19->mSpringForceDirection = 0x0;
            *(int8_t *)(int64_t *)&r19->mEnabled = 0x1;
            r19->mDragActions = [[NSMutableDictionary dictionaryWithCapacity:0x1] retain];
    }
    r0 = r19;
    return r0;
}

-(void)onExitTransitionDidStart {
    [[&var_20 super] onExitTransitionDidStart];
    [self unscheduleUpdate];
    [self cleanInputData];
    return;
}

-(void)enableScroll {
    [self setScrollableTable:0x1];
    return;
}

-(void)setTouchEnabled:(bool)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] setTouchEnabled:r2];
    if (arg2 != 0x0) {
            [r19 stopMovement];
            if (([r19 springStart] & 0x1) == 0x0) {
                    [r19 snapStart];
            }
    }
    else {
            [r19 cleanInputData];
    }
    return;
}

-(void)disableScroll {
    [self setScrollableTable:0x0];
    return;
}

-(void)setPickRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mPickRect));
    *(int128_t *)(self + r8) = q0;
    *(int128_t *)(0x10 + self + r8) = d2;
    *(int128_t *)(0x18 + self + r8) = d3;
    return;
}

-(struct CGRect)pickRect {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mPickRect));
    return r0;
}

-(void)removePickRect {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mPickRect));
    r9 = *_CGRectZero;
    q0 = *(int128_t *)r9;
    q1 = *(int128_t *)(r9 + 0x10);
    *(int128_t *)(self + r8) = q0;
    *(int128_t *)(0x10 + self + r8) = q1;
    return;
}

-(void)setCellPickRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mCellPickRect));
    *(int128_t *)(self + r8) = q0;
    *(int128_t *)(0x10 + self + r8) = d2;
    *(int128_t *)(0x18 + self + r8) = d3;
    return;
}

-(struct CGRect)cellPickRect {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mCellPickRect));
    return r0;
}

-(void)removeCellPickRect {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mCellPickRect));
    r9 = *_CGRectZero;
    q0 = *(int128_t *)r9;
    q1 = *(int128_t *)(r9 + 0x10);
    *(int128_t *)(self + r8) = q0;
    *(int128_t *)(0x10 + self + r8) = q1;
    return;
}

-(void)setSnapTime:(float)arg2 {
    *(int32_t *)(int64_t *)&self->mSnapTime = s0;
    return;
}

-(void)setSnapGranularity:(unsigned int)arg2 {
    *(int32_t *)(int64_t *)&self->mSnapGranularity = arg2;
    return;
}

-(void)setSpringTime:(float)arg2 {
    *(int32_t *)(int64_t *)&self->mSpringTime = s0;
    return;
}

-(void)setDragFallOff:(float)arg2 {
    *(int32_t *)(int64_t *)&self->mDragFallOff = s0;
    return;
}

-(void)setFallOffMultiplier:(float)arg2 {
    *(int32_t *)(int64_t *)&self->mFallOffMultiplier = s0;
    return;
}

-(void)setMaxGridFallOff:(float)arg2 {
    *(int32_t *)(int64_t *)&self->mMaxGridFallOff = s0;
    return;
}

-(void)setFallOffTimeFactor:(float)arg2 {
    *(int32_t *)(int64_t *)&self->mFallOffTimeFactor = s0;
    return;
}

-(void)setScrollHandleMaxCompression:(float)arg2 {
    *(int32_t *)(int64_t *)&self->mScrollHandleMaxCompression = s0;
    return;
}

-(void)addCellItem:(void *)arg2 tag:(void *)arg3 refresh:(bool)arg4 index:(int)arg5 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r23 = arg3;
    r21 = arg2;
    r19 = self;
    r22 = [TableEntry tableEntryWithCell:r2 tag:r3];
    r0 = r19->mTableEntryList;
    if (arg5 != -0x1) {
            asm { sxtw       x3, w24 };
            [r0 insertObject:r22 atIndex:r3];
            if (r23 != 0x0) {
                    [r19->mTagDictionary setObject:r2 forKey:r3];
            }
    }
    else {
            [r0 addObject:r2];
            if (r23 != 0x0) {
                    [r19->mTagDictionary setObject:r2 forKey:r3];
            }
    }
    r24 = @selector(setObject:forKey:);
    r23 = r19->mTableEntryDictionary;
    [NSNumber numberWithUnsignedInteger:r21];
    objc_msgSend(r23, r24);
    [r19 addChild:r21];
    if ([r21 respondsToSelector:@selector(onCellAdded:)] != 0x0) {
            [r21 onCellAdded:r19];
    }
    if (r20 != 0x0) {
            [r19 refresh];
    }
    return;
}

-(void)addCellItem:(void *)arg2 {
    [self addCellItem:arg2 tag:0x0 refresh:0x1 index:0xffffffffffffffff];
    return;
}

-(void)addCellItem:(void *)arg2 index:(int)arg3 {
    [self addCellItem:arg2 tag:0x0 refresh:0x1 index:arg3];
    return;
}

-(void)removeCellItem:(void *)arg2 {
    r31 = r31 - 0x1f0;
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
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    var_190 = q0;
    r27 = sign_extend_64(*(int32_t *)ivar_offset(mTagDictionary));
    r0 = *(self + r27);
    r0 = [r0 allKeys];
    r22 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1005cf4c4;

loc_1005cf42c:
    r23 = r0;
    r28 = *var_190;
    goto loc_1005cf43c;

loc_1005cf43c:
    r26 = 0x0;
    goto loc_1005cf444;

loc_1005cf444:
    if (*var_190 != r28) {
            objc_enumerationMutation(r22);
    }
    r24 = @selector(objectForKey:);
    r25 = *(var_198 + r26 * 0x8);
    if (objc_msgSend(*(r19 + r27), r24) == r20) goto loc_1005cf4b0;

loc_1005cf47c:
    r26 = r26 + 0x1;
    if (r26 < r23) goto loc_1005cf444;

loc_1005cf488:
    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r23 = r0;
    if (r0 != 0x0) goto loc_1005cf43c;

loc_1005cf4c4:
    r21 = @selector(countByEnumeratingWithState:objects:count:);
    var_1D0 = q0;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(mTableEntryList));
    r22 = *(r19 + r25);
    r0 = objc_msgSend(r22, r21);
    if (r0 != 0x0) {
            r24 = r0;
            r23 = 0x0;
            r26 = *var_1D0;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_1D0 != r26) {
                                    objc_enumerationMutation(r22);
                            }
                            r8 = *(var_1D8 + r27 * 0x8);
                            if (*(r8 + 0x10) == r20) {
                                    if (!CPU_FLAGS & E) {
                                            r23 = r23;
                                    }
                                    else {
                                            r23 = r8;
                                    }
                            }
                            r27 = r27 + 0x1;
                    } while (r27 < r24);
                    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r24 = r0;
            } while (r0 != 0x0);
            if (r23 != 0x0) {
                    [*(r19 + r25) removeObject:r23];
            }
    }
    [r19 removeChild:r20];
    if ([r20 respondsToSelector:@selector(onCellRemoved:)] != 0x0) {
            [r20 onCellRemoved:r19];
    }
    var_60 = **___stack_chk_guard;
    [r19->mTableEntryDictionary removeObjectForKey:[NSNumber numberWithUnsignedInteger:r20]];
    [r19 refresh];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;

loc_1005cf4b0:
    [*(r19 + r27) removeObjectForKey:r2];
    goto loc_1005cf4c4;
}

-(void)addCellItem:(void *)arg2 tag:(void *)arg3 {
    [self addCellItem:arg2 tag:arg3 refresh:0x1 index:0xffffffffffffffff];
    return;
}

-(void)addCellItem:(void *)arg2 tag:(void *)arg3 refresh:(bool)arg4 {
    [self addCellItem:arg2 tag:arg3 refresh:arg4 index:0xffffffffffffffff];
    return;
}

-(struct CGPoint)getCellPositionByIndex:(unsigned int)arg2 {
    r0 = self;
    asm { fcvt       d0, s0 };
    asm { ucvtf      d3, w2 };
    return r0;
}

-(void)removeAllCellItems {
    r31 = r31 - 0x140;
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
    var_110 = q0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mTableEntryList));
    var_128 = r8;
    r20 = *(self + r8);
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r27 = *var_110;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(r20);
                            }
                            r25 = @selector(respondsToSelector:);
                            r28 = *(var_118 + r26 * 0x8);
                            [r19 removeChild:*(r28 + 0x10) cleanup:0x1];
                            if (objc_msgSend(*(r28 + 0x10), r25, @selector(onCellRemoved:)) != 0x0) {
                                    [*(r28 + 0x10) onCellRemoved:r19];
                            }
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [*(r19 + var_128) removeAllObjects];
    [r19->mTableEntryDictionary removeAllObjects];
    [r19->mTagDictionary removeAllObjects];
    [r19 cleanInputData];
    *(int128_t *)(int64_t *)&r19->mCurrentViewOffset = *(int128_t *)*_CGPointZero;
    *(int32_t *)(int64_t *)&r19->mCurrentViewOffsetDistance = 0x0;
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void *)getCellItemByIndex:(unsigned int)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mTableEntryList));
    if ([*(self + r21) count] >= zero_extend_64(r20)) {
            r0 = *(r19 + r21);
            r0 = [r0 objectAtIndex:r2];
            if (r0 != 0x0) {
                    r0 = *(r0 + 0x10);
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)getCellItemByTag:(void *)arg2 {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (arg2 != 0x0) {
            r0 = r0->mTagDictionary;
            r0 = [r0 objectForKey:r2];
            if (r0 != 0x0) {
                    r0 = *(r0 + 0x10);
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(unsigned int)getNumElements {
    r0 = self->mTableEntryList;
    r0 = [r0 count];
    return r0;
}

-(float)getCurrentGridOffset {
    r0 = self;
    asm { fdiv       s0, s0, s1 };
    return r0;
}

-(bool)setViewPositionByDistance:(float)arg2 {
    r2 = arg2;
    r0 = self;
    asm { fdiv       s0, s0, s1 };
    asm { fcvt       d1, s0 };
    r0 = [r0 applyViewOffset:r2];
    return r0;
}

-(unsigned int)getNumElementsExcludingHidden {
    r0 = self;
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
    if (*(int8_t *)(int64_t *)&r0->mKeepDisabledCellsVisible != 0x0) {
            r21 = [r0->mTableEntryList count];
    }
    else {
            var_110 = q0;
            r19 = r0->mTableEntryList;
            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r22 = r0;
                    r21 = 0x0;
                    r24 = *var_110;
                    do {
                            r26 = 0x0;
                            do {
                                    if (*var_110 != r24) {
                                            objc_enumerationMutation(r19);
                                    }
                                    r21 = r21 + [*(*(var_118 + r26 * 0x8) + 0x10) isEnabled];
                                    r26 = r26 + 0x1;
                            } while (r26 < r22);
                            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r22 = r0;
                    } while (r0 != 0x0);
            }
            else {
                    r21 = 0x0;
            }
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)setViewPositionByGridOffset:(float)arg2 {
    r2 = arg2;
    r0 = self;
    asm { fdiv       s0, s0, s1 };
    asm { fcvt       d1, s0 };
    r0 = [r0 applyViewOffset:r2];
    return r0;
}

-(void)refresh {
    [self applyViewOffset:r2];
    return;
}

-(bool)applyViewOffset:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self applyViewOffset:r2 scaleFactor:r3];
    return r0;
}

-(void)snapToCellItem:(void *)arg2 {
    r2 = arg2;
    r0 = self;
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
    if (r2 == 0x0) goto loc_1005cfcf0;

loc_1005cfbd8:
    r20 = r2;
    r19 = r0;
    var_110 = q0;
    r21 = r0->mTableEntryList;
    r2 = &var_120;
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1005cfccc;

loc_1005cfc1c:
    r23 = r0;
    r25 = 0x0;
    r26 = *var_110;
    goto loc_1005cfc30;

loc_1005cfc30:
    r28 = 0x0;
    goto loc_1005cfc38;

loc_1005cfc38:
    if (*var_110 != r26) {
            objc_enumerationMutation(r21);
    }
    r0 = *(*(var_118 + r28 * 0x8) + 0x10);
    if (r0 == r20) goto loc_1005cfca0;

loc_1005cfc64:
    r25 = r25 + [r0 isEnabled];
    r28 = r28 + 0x1;
    if (r28 < r23) goto loc_1005cfc38;

loc_1005cfc7c:
    r2 = &var_120;
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r23 = r0;
    if (r0 != 0x0) goto loc_1005cfc30;

loc_1005cfccc:
    asm { ucvtf      s0, w25 };
    [r19 setViewPositionByDistance:r2];
    goto loc_1005cfcf0;

loc_1005cfcf0:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_1005cfca0:
    if (([r20 isEnabled] & 0x1) == 0x0) {
            r2 = 0x1;
            [r20 setIsEnabled:r2];
    }
    goto loc_1005cfccc;
}

-(void)setKeepDisabledCellsVisible:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mKeepDisabledCellsVisible));
    if (*(int8_t *)(r0 + r8) != r2) {
            *(int8_t *)(r0 + r8) = r2;
            [r0 refresh];
    }
    return;
}

-(void)setKeepAllCellsLoaded:(bool)arg2 {
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
    r19 = self;
    *(int8_t *)(int64_t *)&self->mKeepAllCellsLoaded = arg2;
    if (arg2 != 0x0) {
            var_110 = q0;
            r20 = r19->mTableEntryList;
            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r22 = r0;
                    r24 = *var_110;
                    do {
                            r26 = 0x0;
                            do {
                                    if (*var_110 != r24) {
                                            objc_enumerationMutation(r20);
                                    }
                                    r8 = *(var_118 + r26 * 0x8);
                                    if (*(int8_t *)(r8 + 0x18) != 0x0 && *(int8_t *)(r8 + 0x19) != 0x0) {
                                            [*(r8 + 0x10) loadData];
                                    }
                                    r26 = r26 + 0x1;
                            } while (r26 < r22);
                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r22 = r0;
                    } while (r0 != 0x0);
            }
    }
    var_58 = **___stack_chk_guard;
    [r19 refresh];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)setCircularAspectWithRadius:(float)arg2 {
    *(int8_t *)(int64_t *)&self->mIsCircular = 0x1;
    *(int32_t *)(int64_t *)&self->mCircularRadius = s0;
    return;
}

-(void)unloadAllCells {
    r0 = self;
    r31 = r31 - 0x120;
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
    if (*(int8_t *)(int64_t *)&r0->mKeepAllCellsLoaded == 0x0) {
            var_100 = q0;
            r19 = r0->mTableEntryList;
            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r21 = r0;
                    r23 = *var_100;
                    do {
                            r25 = 0x0;
                            do {
                                    if (*var_100 != r23) {
                                            objc_enumerationMutation(r19);
                                    }
                                    r8 = *(var_108 + r25 * 0x8);
                                    if (*(int8_t *)(r8 + 0x18) != 0x0 && *(int8_t *)(r8 + 0x19) != 0x0) {
                                            [*(r8 + 0x10) unloadData];
                                    }
                                    r25 = r25 + 0x1;
                            } while (r25 < r21);
                            r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r21 = r0;
                    } while (r0 != 0x0);
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)setClipRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(int8_t *)(int64_t *)&self->mClip = 0x1;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mClipRect));
    *(int128_t *)(self + r8) = q0;
    *(int128_t *)(0x10 + self + r8) = d2;
    *(int128_t *)(0x18 + self + r8) = d3;
    return;
}

-(struct CGRect)clipRect {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mClipRect));
    return r0;
}

-(void *)getCellForCurrentOffset {
    r31 = r31 - 0x160;
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
    [self getCurrentGridOffset];
    if (s0 > 0x0) {
            [r19 getCurrentGridOffset];
    }
    var_130 = q0;
    r0 = r19->mTableEntryList;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_150 = r1;
    var_148 = r0;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r22 = r0;
            r25 = 0x0;
            r26 = 0x0;
            r27 = 0x0;
            r28 = *var_130;
            r21 = sign_extend_64(*(int32_t *)ivar_offset(mKeepDisabledCellsVisible));
            do {
                    r20 = 0x0;
                    do {
                            if (*var_130 != r28) {
                                    objc_enumerationMutation(var_148);
                            }
                            r24 = *(*(var_138 + r20 * 0x8) + 0x10);
                            r8 = *(int8_t *)(r19 + r21);
                            if (r8 != 0x0 || [r24 isEnabled] != 0x0) {
                                    s8 = 0x0;
                                    asm { ucvtf      s0, w27 };
                                    if (s8 >= s0) {
                                            s1 = 0x0 - s0;
                                            if (r25 != 0x0) {
                                                    if (CPU_FLAGS & NE) {
                                                            r8 = 0x1;
                                                    }
                                            }
                                            if (0x0 < s1) {
                                                    if (CPU_FLAGS & L) {
                                                            r9 = 0x1;
                                                    }
                                            }
                                            if ((r8 & r9) != 0x0) {
                                                    asm { fcsel      s9, s9, s1, ne };
                                            }
                                            if (CPU_FLAGS & NE) {
                                                    if (!CPU_FLAGS & NE) {
                                                            r25 = r24;
                                                    }
                                                    else {
                                                            r25 = r25;
                                                    }
                                            }
                                    }
                                    if (0x0 <= s0) {
                                            s0 = s0 - 0x0;
                                            if (r26 != 0x0) {
                                                    if (CPU_FLAGS & NE) {
                                                            r8 = 0x1;
                                                    }
                                            }
                                            if (0x0 > s0) {
                                                    if (CPU_FLAGS & A) {
                                                            r9 = 0x1;
                                                    }
                                            }
                                            if ((r8 & r9) != 0x0) {
                                                    asm { fcsel      s10, s10, s0, ne };
                                            }
                                            if (CPU_FLAGS & NE) {
                                                    if (!CPU_FLAGS & NE) {
                                                            r26 = r24;
                                                    }
                                                    else {
                                                            r26 = r26;
                                                    }
                                            }
                                    }
                                    r27 = r27 + 0x1;
                            }
                            r20 = r20 + 0x1;
                    } while (r20 < r22);
                    r0 = objc_msgSend(var_148, var_150);
                    r22 = r0;
            } while (r0 != 0x0);
            if (r25 != 0x0 && r26 != 0x0) {
                    if (0x0 > 0x0) {
                            if (!CPU_FLAGS & A) {
                                    r0 = r25;
                            }
                            else {
                                    r0 = r26;
                            }
                    }
            }
            else {
                    if (r25 != 0x0) {
                            if (!CPU_FLAGS & NE) {
                                    r0 = r26;
                            }
                            else {
                                    r0 = r25;
                            }
                    }
            }
            if (**___stack_chk_guard != **___stack_chk_guard) {
                    r0 = __stack_chk_fail();
            }
    }
    else {
            if (**___stack_chk_guard == **___stack_chk_guard) {
                    r0 = 0x0;
            }
            else {
                    r0 = __stack_chk_fail();
            }
    }
    return r0;
}

-(void)removeClipRect {
    *(int8_t *)(int64_t *)&self->mClip = 0x0;
    return;
}

-(float)defaultSnapProgressCallback:(float)arg2 {
    var_10 = d9;
    stack[-24] = d8;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = exp2f(self);
    if (s8 == 0x3ff0000000000000) {
            asm { fcsel      s0, s1, s0, eq };
    }
    return r0;
}

-(void)visit {
    r31 = r31 - 0xa0;
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
    r19 = self;
    if ([self visible] != 0x0) {
            if (*(int8_t *)(int64_t *)&r19->mClip != 0x0) {
                    [[&var_60 super] convertToWorldSpaceAR:r2];
                    d0 = *(int128_t *)(int64_t *)&r19->mClipRect;
                    d1 = *(int128_t *)((int64_t *)&r19->mClipRect + 0x8);
                    [[&var_70 super] convertToWorldSpaceAR:r2];
                    [r19 contentSize];
                    [r19 anchorPoint];
                    [r19 contentSize];
                    [r19 anchorPoint];
                    [r19 contentSize];
                    [r19 anchorPoint];
                    [r19 contentSize];
                    [r19 anchorPoint];
                    sub_100367c74();
                    [[&var_80 super] visit];
                    sub_100367dc0();
            }
            else {
                    [[&var_90 super] visit];
            }
    }
    return;
}

-(float)defaultSpringProgressCallback:(float)arg2 {
    var_10 = d9;
    stack[-24] = d8;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = exp2f(self);
    if (s8 == 0x3ff0000000000000) {
            asm { fcsel      s0, s1, s0, eq };
    }
    return r0;
}

-(float)defaultDragFallOffProgressCallback:(float)arg2 {
    var_10 = d9;
    stack[-24] = d8;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = exp2f(self);
    if (s8 == 0x3ff0000000000000) {
            asm { fcsel      s0, s1, s0, eq };
    }
    return r0;
}

-(float)defaultBouncySnapProgressCallback:(float)arg2 {
    r0 = self;
    return r0;
}

-(float)defaultBouncySpringProgressCallback:(float)arg2 {
    r0 = self;
    return r0;
}

-(float)defaultBouncyDragFallOffProgressCallback:(float)arg2 {
    r0 = self;
    return r0;
}

-(void)setSnapProgressCallback:(void *)arg2 selector:(void *)arg3 {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mSnapProgressCallbackTarget));
    *(self + r8) = arg2;
    self->mSnapProgressCallbackSelector = arg3;
    self->mSnapProgressCallback = [*(self + r8) methodForSelector:arg3];
    return;
}

-(void)setSpringProgressCallback:(void *)arg2 selector:(void *)arg3 {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mSpringProgressCallbackTarget));
    *(self + r8) = arg2;
    self->mSpringProgressCallbackSelector = arg3;
    self->mSpringProgressCallback = [*(self + r8) methodForSelector:arg3];
    return;
}

-(void)setDragFallOffProgressCallback:(void *)arg2 selector:(void *)arg3 {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mDragFallOffProgressCallbackTarget));
    *(self + r8) = arg2;
    self->mDragFallOffProgressCallbackSelector = arg3;
    self->mDragFallOffProgressCallback = [*(self + r8) methodForSelector:arg3];
    return;
}

-(void)setDefaultSnapProgressCallback {
    [self setSnapProgressCallback:self selector:@selector(defaultSnapProgressCallback:)];
    return;
}

-(void)setDefaultSpringProgressCallback {
    [self setSpringProgressCallback:self selector:@selector(defaultSpringProgressCallback:)];
    return;
}

-(void)setDefaultDragFallOffProgressCallback {
    [self setDragFallOffProgressCallback:self selector:@selector(defaultDragFallOffProgressCallback:)];
    return;
}

-(void)setDefaultBouncySnapProgressCallback {
    [self setSnapProgressCallback:self selector:@selector(defaultBouncySnapProgressCallback:)];
    return;
}

-(void)setDefaultBouncySpringProgressCallback {
    [self setSpringProgressCallback:self selector:@selector(defaultBouncySpringProgressCallback:)];
    return;
}

-(void)setDefaultBouncyDragFallOffProgressCallback {
    [self setDragFallOffProgressCallback:self selector:@selector(defaultBouncyDragFallOffProgressCallback:)];
    return;
}

-(void)reEnableButtons {
    return;
}

-(void)stopMovement {
    *(int32_t *)(int64_t *)&self->mMovementType = 0x0;
    *(int32_t *)(int64_t *)&self->mMovementTotalTime = 0x0;
    *(int32_t *)(int64_t *)&self->mMovementCurrentTime = 0x0;
    *(int32_t *)(int64_t *)&self->mMovementStartDistance = 0x0;
    *(int32_t *)(int64_t *)&self->mMovementEndDistance = 0x0;
    return;
}

-(bool)springStart {
    r1 = _cmd;
    r0 = self;
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mSpringNeeded));
    if (*(int8_t *)(r0 + r20) != 0x0) {
            r19 = r0;
            if (*(int8_t *)(int64_t *)&r0->mDragMode != 0x0) {
                    r0 = 0x0;
            }
            else {
                    if (*(int8_t *)(int64_t *)&r19->mSnapEnabled != 0x0) {
                            s0 = *(int32_t *)(int64_t *)&r19->mSpringEndDistance;
                            r21 = sign_extend_64(*(int32_t *)ivar_offset(mCellOffsetDistance));
                            asm { fdiv       s8, s0, s1 };
                            r0 = modff(&var_34, r1);
                            if (s0 < 0x0) {
                                    asm { fccmp      s8, s1, #0x0, mi };
                            }
                            if (CPU_FLAGS & S) {
                                    asm { fcsel      s9, s1, s0, mi };
                            }
                            r0 = [r19 getNumElementsExcludingHidden];
                            if (r0 != 0x0) {
                                    r9 = sign_extend_64(*(int32_t *)ivar_offset(mSnapGranularity));
                                    r9 = *(int32_t *)(r19 + r9);
                                    asm { udiv       w10, w0, w9 };
                                    r10 = r0 - r10 * r9;
                                    if (r10 > 0x0) {
                                            if (!CPU_FLAGS & G) {
                                                    r9 = r9;
                                            }
                                            else {
                                                    r9 = r10;
                                            }
                                    }
                                    r22 = r0 - r9;
                            }
                            else {
                                    r22 = 0x0;
                            }
                            if (s9 != 0x0) {
                                    if (s8 < 0x0) {
                                            s0 = var_34;
                                            if (s9 >= 0x3fe0000000000000) {
                                                    asm { fcsel      s0, s1, s0, ge };
                                            }
                                    }
                                    else {
                                            s0 = var_34;
                                            if (s9 < 0x3fe0000000000000) {
                                                    asm { fcsel      s0, s0, s1, ls };
                                            }
                                    }
                            }
                            else {
                                    s0 = var_34;
                            }
                            r8 = 0x10116e000;
                            asm { fcvtzs     w9, s0 };
                            r8 = sign_extend_64(*(int32_t *)(r8 + 0x420));
                            r8 = *(int32_t *)(r19 + r8);
                            if (r8 != 0x1) {
                                    if (r9 < 0x0) {
                                            asm { cneg       w10, w9, mi };
                                    }
                                    asm { udiv       w11, w10, w8 };
                                    r11 = r10 - r11 * r8;
                                    if (r11 != 0x0) {
                                            r9 = r10 - r11;
                                            r8 = r9 + r8;
                                            r10 = r8 - r10;
                                            if (r10 < 0x0) {
                                                    asm { cneg       w10, w10, mi };
                                            }
                                            if (s8 < 0x0) {
                                                    asm { cneg       w9, w8, mi };
                                            }
                                    }
                            }
                            asm { scvtf      s0, w9 };
                            if ((r22 & 0xffffffff80000000) == 0x0) {
                                    sub_10035d730();
                                    asm { scvtf      s1, w22 };
                            }
                            else {
                                    asm { scvtf      s1, w22 };
                                    sub_10035d730();
                            }
                            sub_10035d724();
                            asm { fcvtzs     w8, s0 };
                            *(int8_t *)(r19 + r20) = 0x0;
                            *(int32_t *)(int64_t *)&r19->mMovementStartDistance = *(int32_t *)(int64_t *)&r19->mSpringStartDistance;
                            asm { scvtf      s0, w8 };
                            *(int32_t *)(int64_t *)&r19->mMovementEndDistance = *(int32_t *)(r19 + r21) * s0;
                    }
                    else {
                            *(int32_t *)(int64_t *)&r19->mMovementStartDistance = *(int32_t *)(int64_t *)&r19->mSpringStartDistance;
                            *(int32_t *)(int64_t *)&r19->mMovementEndDistance = *(int32_t *)(int64_t *)&r19->mSpringEndDistance;
                    }
                    *(int32_t *)(int64_t *)&r19->mMovementTotalTime = *(int32_t *)(int64_t *)&r19->mSpringTime;
                    *(int32_t *)(int64_t *)&r19->mMovementCurrentTime = 0x0;
                    *(int32_t *)(int64_t *)&r19->mMovementType = 0x2;
                    r0 = 0x1;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)snapStart {
    r1 = _cmd;
    r0 = self;
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->mSnapEnabled != 0x0) {
            r19 = r0;
            if (*(int8_t *)(int64_t *)&r0->mDragMode != 0x0) {
                    r0 = 0x0;
            }
            else {
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentViewOffsetDistance));
                    s0 = *(int32_t *)(r19 + r21);
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(mCellOffsetDistance));
                    asm { fdiv       s8, s0, s1 };
                    r0 = modff(&var_34, r1);
                    if (s0 < 0x0) {
                            asm { fccmp      s8, s1, #0x0, mi };
                    }
                    if (CPU_FLAGS & S) {
                            asm { fcsel      s9, s1, s0, mi };
                    }
                    r0 = [r19 getNumElementsExcludingHidden];
                    if (r0 != 0x0) {
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(mSnapGranularity));
                            r9 = *(int32_t *)(r19 + r9);
                            asm { udiv       w10, w0, w9 };
                            r10 = r0 - r10 * r9;
                            if (r10 > 0x0) {
                                    if (!CPU_FLAGS & G) {
                                            r9 = r9;
                                    }
                                    else {
                                            r9 = r10;
                                    }
                            }
                            r22 = r0 - r9;
                    }
                    else {
                            r22 = 0x0;
                    }
                    if (s9 != 0x0) {
                            if (s8 < 0x0) {
                                    s0 = var_34;
                                    if (s9 >= 0x3fe0000000000000) {
                                            asm { fcsel      s0, s1, s0, ge };
                                    }
                            }
                            else {
                                    s0 = var_34;
                                    if (s9 < 0x3fe0000000000000) {
                                            asm { fcsel      s0, s0, s1, ls };
                                    }
                            }
                            asm { fcvtzs     w9, s0 };
                            r10 = 0x1;
                    }
                    else {
                            s0 = var_34;
                            asm { fcvtzs     w9, s0 };
                            r11 = r9 >> 0x1f;
                            if (r9 < 0x0) {
                                    if (!CPU_FLAGS & L) {
                                            r12 = r9;
                                    }
                                    else {
                                            r12 = 0x0;
                                    }
                            }
                            if (r22 < r9) {
                                    if (!CPU_FLAGS & L) {
                                            r9 = r12;
                                    }
                                    else {
                                            r9 = r22;
                                    }
                            }
                            r10 = 0x1;
                            if (CPU_FLAGS & L) {
                                    if (!CPU_FLAGS & L) {
                                            r10 = r11;
                                    }
                                    else {
                                            r10 = 0x1;
                                    }
                            }
                    }
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(mSnapGranularity));
                    r8 = *(int32_t *)(r19 + r8);
                    if (r8 != 0x1) {
                            if (r9 < 0x0) {
                                    asm { cneg       w11, w9, mi };
                            }
                            asm { udiv       w12, w11, w8 };
                            r12 = r11 - r12 * r8;
                            if (r12 != 0x0) {
                                    r9 = r11 - r12;
                                    r8 = r9 + r8;
                                    r10 = r8 - r11;
                                    if (r10 < 0x0) {
                                            asm { cneg       w10, w10, mi };
                                    }
                                    if (s8 < 0x0) {
                                            asm { cneg       w9, w8, mi };
                                    }
                                    asm { scvtf      s0, w9 };
                                    if ((r22 & 0xffffffff80000000) == 0x0) {
                                            sub_10035d730();
                                            asm { scvtf      s1, w22 };
                                    }
                                    else {
                                            asm { scvtf      s1, w22 };
                                            sub_10035d730();
                                    }
                                    sub_10035d724();
                                    asm { fcvtzs     w8, s0 };
                                    *(int32_t *)(int64_t *)&r19->mMovementStartDistance = *(int32_t *)(r19 + r21);
                                    asm { scvtf      s0, w8 };
                                    *(int32_t *)(int64_t *)&r19->mMovementEndDistance = *(int32_t *)(r19 + r20) * s0;
                                    *(int32_t *)(int64_t *)&r19->mMovementTotalTime = *(int32_t *)(int64_t *)&r19->mSnapTime;
                                    *(int32_t *)(int64_t *)&r19->mMovementCurrentTime = 0x0;
                                    r0 = 0x1;
                                    *(int32_t *)(int64_t *)&r19->mMovementType = r0;
                            }
                            else {
                                    if (r10 != 0x0) {
                                            asm { scvtf      s0, w9 };
                                            if ((r22 & 0xffffffff80000000) == 0x0) {
                                                    sub_10035d730();
                                                    asm { scvtf      s1, w22 };
                                            }
                                            else {
                                                    asm { scvtf      s1, w22 };
                                                    sub_10035d730();
                                            }
                                            sub_10035d724();
                                            asm { fcvtzs     w8, s0 };
                                            *(int32_t *)(int64_t *)&r19->mMovementStartDistance = *(int32_t *)(r19 + r21);
                                            asm { scvtf      s0, w8 };
                                            *(int32_t *)(int64_t *)&r19->mMovementEndDistance = *(int32_t *)(r19 + r20) * s0;
                                            *(int32_t *)(int64_t *)&r19->mMovementTotalTime = *(int32_t *)(int64_t *)&r19->mSnapTime;
                                            *(int32_t *)(int64_t *)&r19->mMovementCurrentTime = 0x0;
                                            r0 = 0x1;
                                            *(int32_t *)(int64_t *)&r19->mMovementType = r0;
                                    }
                                    else {
                                            r0 = 0x0;
                                    }
                            }
                    }
                    else {
                            if (r10 != 0x0) {
                                    asm { scvtf      s0, w9 };
                                    if ((r22 & 0xffffffff80000000) == 0x0) {
                                            sub_10035d730();
                                            asm { scvtf      s1, w22 };
                                    }
                                    else {
                                            asm { scvtf      s1, w22 };
                                            sub_10035d730();
                                    }
                                    sub_10035d724();
                                    asm { fcvtzs     w8, s0 };
                                    *(int32_t *)(int64_t *)&r19->mMovementStartDistance = *(int32_t *)(r19 + r21);
                                    asm { scvtf      s0, w8 };
                                    *(int32_t *)(int64_t *)&r19->mMovementEndDistance = *(int32_t *)(r19 + r20) * s0;
                                    *(int32_t *)(int64_t *)&r19->mMovementTotalTime = *(int32_t *)(int64_t *)&r19->mSnapTime;
                                    *(int32_t *)(int64_t *)&r19->mMovementCurrentTime = 0x0;
                                    r0 = 0x1;
                                    *(int32_t *)(int64_t *)&r19->mMovementType = r0;
                            }
                            else {
                                    r0 = 0x0;
                            }
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)dragFallOffMultiplierReset {
    *(int32_t *)(int64_t *)&self->mDragFallOffMultiplier = 0x3f800000;
    return;
}

-(void)dragFallOffMultiplierEnd {
    *(int32_t *)(int64_t *)&self->mDragFallOffMultiplier = 0x0;
    return;
}

-(void)dragFallOffMultiplierStart {
    [self dragFallOffMultiplierReset];
    return;
}

-(bool)isAnimatingMovement {
    r0 = self;
    if (*(int32_t *)(int64_t *)&r0->mMovementType != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)offsetCells:(int)arg2 {
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
    r20 = arg2;
    r19 = self;
    [self stopMovement];
    s0 = *(int32_t *)(int64_t *)&r19->mCurrentViewOffsetDistance;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mCellOffsetDistance));
    asm { fdiv       s8, s0, s1 };
    r0 = modff(&var_44, r1);
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
            s0 = var_44;
    }
    asm { fcvtzs     w8, s0 };
    r8 = [r19 getNumElementsExcludingHidden] - 0x1;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mSnapGranularity));
    r9 = *(int32_t *)(r19 + r20);
    asm { udiv       w8, w8, w9 };
    r22 = r8 * r9;
    asm { scvtf      s0, w23 };
    if ((r22 & 0xffffffff80000000) == 0x0) {
            sub_10035d730();
            asm { scvtf      s1, w22 };
    }
    else {
            asm { scvtf      s1, w22 };
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

-(void)nextCells {
    [self offsetCells:*(int32_t *)(int64_t *)&self->mSnapGranularity];
    return;
}

-(void)previousCells {
    r0 = self;
    asm { neg        w2, w8 };
    [r0 offsetCells:r2];
    return;
}

-(bool)dragFallOffStart:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r1 = _cmd;
    r31 = r31 - 0x70;
    var_50 = d11;
    stack[-88] = d10;
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
    if (d0 < 0x0) {
            asm { fcsel      d3, d2, d0, mi };
    }
    if (d3 > 0x3ff0000000000000) goto loc_1005d25b0;

loc_1005d259c:
    d3 = -d1;
    if (d1 < 0x0) {
            asm { fcsel      d3, d3, d1, mi };
    }
    if (d3 <= 0x3ff0000000000000) goto loc_1005d2618;

loc_1005d25b0:
    if (d0 != 0x0 || d1 != 0x0) goto loc_1005d25c0;

loc_1005d2618:
    r0 = 0x0;
    return r0;

loc_1005d25c0:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mCellOffset));
    d2 = *(int128_t *)(r19 + r8);
    d3 = *(int128_t *)(0x8 + r19 + r8);
    if (d2 == 0x0) {
            asm { fdiv       d0, d1, d3 };
    }
    else {
            if (d3 == 0x0) {
                    asm { fdiv       d0, d0, d2 };
            }
            else {
                    asm { fdiv       d0, d0, d1 };
            }
    }
    asm { fcvt       s0, d0 };
    if (s0 != 0x0) goto loc_1005d263c;
    goto loc_1005d2618;

loc_1005d263c:
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mCellOffsetDistance));
    s1 = *(int32_t *)(r19 + r20);
    s0 = s1 * -s0;
    s2 = *(int32_t *)(int64_t *)&r19->mDragFallOff;
    asm { fdiv       s2, s3, s2 };
    s0 = *(int32_t *)(int64_t *)&r19->mFallOffMultiplier * s0 * s2;
    s2 = *(int32_t *)(int64_t *)&r19->mMaxGridFallOff;
    if (s1 * s2 < s1 * -s2) {
            asm { fcsel      s1, s2, s3, mi };
    }
    if (CPU_FLAGS & S) {
            asm { fcsel      s8, s3, s2, mi };
    }
    sub_10035d730();
    sub_10035d724();
    s1 = *(int32_t *)(int64_t *)&r19->mCurrentViewOffsetDistance;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mMovementStartDistance));
    *(int32_t *)(r19 + r21) = s1;
    s0 = s0 + s1;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(mMovementEndDistance));
    *(int32_t *)(r19 + r22) = s0;
    if (*(int8_t *)(int64_t *)&r19->mSnapEnabled == 0x0) goto loc_1005d28a4;

loc_1005d26e4:
    asm { fdiv       s8, s0, s1 };
    r0 = modff(&var_54, r1);
    if (s0 < 0x0) {
            asm { fccmp      s8, s9, #0x0, mi };
    }
    if (CPU_FLAGS & S) {
            asm { fcsel      s11, s1, s0, mi };
    }
    r8 = &@selector(renderNativeAdForAdConfiguration:completionHandler:);
    r1 = *(r8 + 0x6f0);
    r0 = objc_msgSend(r19, r1);
    if (r0 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mSnapGranularity));
            r8 = *(int32_t *)(r19 + r8);
            asm { udiv       w9, w0, w8 };
            r9 = r0 - r9 * r8;
            if (r9 > 0x0) {
                    if (!CPU_FLAGS & G) {
                            r8 = r8;
                    }
                    else {
                            r8 = r9;
                    }
            }
            r8 = r0 - r8;
            asm { scvtf      s9, w8 };
    }
    if (s11 != 0x0) {
            if (s8 < 0x0) {
                    if (s11 >= 0x3fe0000000000000) {
                            asm { fcsel      s0, s1, s0, ge };
                    }
            }
            else {
                    if (s11 < 0x3fe0000000000000) {
                            asm { fcsel      s0, s0, s1, ls };
                    }
            }
    }
    asm { fcvtzs     w24, s0 };
    s0 = *(int32_t *)(r19 + r21);
    asm { fdiv       s8, s0, s1 };
    r0 = modff(&var_54, r1);
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
            s0 = var_54;
    }
    asm { fcvtzs     w8, s0 };
    if (r8 == r24) goto loc_1005d2618;

loc_1005d2810:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mSnapGranularity));
    r8 = *(int32_t *)(r19 + r8);
    if (r8 != 0x1) {
            if (r24 < 0x0) {
                    asm { cneg       w9, w24, mi };
            }
            asm { udiv       w10, w9, w8 };
            r10 = r9 - r10 * r8;
            if (r10 != 0x0) {
                    r11 = r9 - r10;
                    r8 = r11 + r8;
                    r9 = r8 - r9;
                    if (r9 < 0x0) {
                            asm { cneg       w9, w9, mi };
                    }
                    if (s8 < 0x0) {
                            asm { cneg       w24, w8, mi };
                    }
            }
    }
    s9 = 0x0;
    asm { scvtf      s0, w24 };
    s1 = *(int32_t *)(int64_t *)&r19->mBaseGridOffset;
    s3 = *(int32_t *)(int64_t *)&r19->mSpringGridOffset;
    if (s3 + s9 + s1 < -s1 - s3) {
            asm { fcsel      s1, s3, s2, mi };
    }
    if (CPU_FLAGS & S) {
            asm { fcsel      s8, s2, s3, mi };
    }
    sub_10035d730();
    sub_10035d724();
    s0 = s0 * *(int32_t *)(r19 + r20);
    *(int32_t *)(r19 + r22) = s0;
    goto loc_1005d28a4;

loc_1005d28a4:
    s0 = s0 - *(int32_t *)(r19 + r21);
    asm { fdiv       s0, s0, s1 };
    if (s0 < 0x0) {
            asm { fcsel      s0, s1, s0, mi };
    }
    r0 = 0x0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mMovementTotalTime));
    *(int32_t *)(r19 + r8) = s0;
    *(int32_t *)(int64_t *)&r19->mMovementCurrentTime = 0x0;
    if (*(int32_t *)(r19 + r8) != 0x0) {
            *(int32_t *)(int64_t *)&r19->mMovementType = 0x3;
            r0 = 0x1;
    }
    return r0;
}

-(void *)tableEntryForTouchLocation:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x180;
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
    v8 = v1;
    v9 = v0;
    var_130 = q0;
    var_158 = self;
    r20 = self->mTableEntryList;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r2 = &var_140;
    var_168 = r1;
    r0 = objc_msgSend(r20, r1);
    if (r0 == 0x0) goto loc_1005d2cdc;

loc_1005d2b94:
    r23 = r0;
    var_160 = 0x0;
    r19 = *var_130;
    var_150 = 0xffffffff80000000;
    goto loc_1005d2bac;

loc_1005d2bac:
    r24 = 0x0;
    goto loc_1005d2bdc;

loc_1005d2bdc:
    if (*var_130 != r19) {
            objc_enumerationMutation(r20);
    }
    r21 = *(var_138 + r24 * 0x8);
    r22 = *(r21 + 0x10);
    if ([r22 visible] == 0x0 || [r22 isEnabled] == 0x0) goto loc_1005d2ca4;

loc_1005d2c20:
    [r22 convertToNodeSpace:r2];
    r0 = [r22 activeArea];
    if (CGRectContainsPoint(r0, @selector(activeArea)) == 0x0) goto loc_1005d2ca4;

loc_1005d2c64:
    if (*(int8_t *)(int64_t *)&var_158->mIsCircular == 0x0) goto loc_1005d2cd4;

loc_1005d2c78:
    if ([r22 zOrder] > sign_extend_64(var_150)) {
            var_150 = [r22 zOrder];
            var_160 = r21;
    }
    goto loc_1005d2ca4;

loc_1005d2ca4:
    r24 = r24 + 0x1;
    if (r24 < r23) goto loc_1005d2bdc;

loc_1005d2cb0:
    r2 = &var_140;
    r0 = objc_msgSend(r20, var_168);
    r23 = r0;
    if (r0 != 0x0) goto loc_1005d2bac;

loc_1005d2ce0:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = var_160;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1005d2cd4:
    var_160 = r21;
    goto loc_1005d2ce0;

loc_1005d2cdc:
    var_160 = 0x0;
    goto loc_1005d2ce0;
}

-(bool)isTouchInsidePickRect:(void *)arg2 {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r2 = [arg2 view];
    [arg2 locationInView:r2];
    r0 = [CCDirector sharedDirector];
    v0 = v0;
    v1 = v1;
    [r0 convertToGL:r2];
    r0 = [self convertToNodeSpace:r2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mPickRect));
    r8 = self + r8;
    if (*(r8 + 0x10) > 0x0 && *(r8 + 0x18) > 0x0) {
            r0 = CGRectContainsPoint(r0, @selector(convertToNodeSpace:));
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)itemForTouchLocation:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    r31 = r31 - 0xa0;
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
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_children));
    r8 = *(r0 + r8);
    if (r8 == 0x0) goto loc_1005d2e80;

loc_1005d2d64:
    r8 = r8->data;
    r9 = *r8;
    if (r9 == 0x0) goto loc_1005d2e80;

loc_1005d2d7c:
    r28 = *(r8 + 0x10);
    r24 = r28 + r9 * 0x8 - 0x8;
    if (r28 > r24) goto loc_1005d2e80;

loc_1005d2d90:
    v8 = v1;
    v9 = v0;
    r19 = r0;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(mTableEntryDictionary));
    goto loc_1005d2de4;

loc_1005d2de4:
    r26 = *r28;
    r27 = *(r19 + r25);
    r2 = [NSNumber numberWithUnsignedInteger:r26];
    if ([r27 objectForKey:r2] != 0x0 || [r26 visible] == 0x0 || [r26 isEnabled] == 0x0) goto loc_1005d2e74;

loc_1005d2e30:
    [r26 convertToNodeSpace:r2];
    r0 = [r26 activeArea];
    if ((CGRectContainsPoint(r0, @selector(activeArea)) & 0x1) != 0x0) goto loc_1005d2e84;

loc_1005d2e74:
    r28 = r28 + 0x8;
    if (r28 < r24) goto loc_1005d2de4;

loc_1005d2e80:
    r26 = 0x0;
    goto loc_1005d2e84;

loc_1005d2e84:
    r0 = r26;
    return r0;
}

-(void)cleanInputData {
    self->_selectedItem = 0x0;
    self->mSelectedTableEntry = 0x0;
    *(int32_t *)(int64_t *)&self->mNumCurrentTouches = 0x0;
    *(int8_t *)(int64_t *)&self->mValidTap = 0x0;
    *(int8_t *)(int64_t *)&self->mInputOnTable = 0x0;
    [self->mCurrentTouches removeAllObjects];
    *(int32_t *)(int64_t *)&self->_state = 0x0;
    return;
}

-(void)startDrag:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mDragMode));
    if (*(int8_t *)(r0 + r8) == 0x0) {
            r20 = r0;
            *(int8_t *)(r0 + r8) = 0x1;
            r0 = [r0->mTableEntryDictionary objectForKey:[NSNumber numberWithUnsignedInteger:r2]];
            r20->mDragEntry = r0;
            *(int32_t *)(int64_t *)&r20->mDragEntryIndex = [r20->mTableEntryList indexOfObject:r0];
            *(int32_t *)(int64_t *)&r20->mDragEntryZ = [r2 zOrder];
            [r20 reorderChild:r2 z:0x3e7];
    }
    return;
}

-(void)stopDrag {
    r0 = self;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mDragEntry));
    r8 = *(r0 + r8);
    if (r8 != 0x0) {
            r19 = *(r8 + 0x10);
            if (r19 != 0x0) {
                    r2 = *(int32_t *)(int64_t *)&r0->mDragEntryIndex;
                    [r0 getCellPositionByIndex:r2];
                    r22 = [CCMoveTo actionWithDuration:r2 position:r3];
                    [CCCallFunc actionWithTarget:r0 selector:@selector(cellFinishedDrag)];
                    [CCSequence actions:r22];
                    [r19 runAction:r2];
            }
    }
    return;
}

-(void)cellFinishedDrag {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    *(int8_t *)(int64_t *)&self->mDragMode = 0x0;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mDragEntry));
    r8 = *(self + r20);
    if (r8 != 0x0) {
            if (*(r8 + 0x10) != 0x0) {
                    [r19 reorderChild:r2 z:sign_extend_64(*(int32_t *)(int64_t *)&r19->mDragEntryZ)];
            }
            *(r19 + r20) = 0x0;
    }
    *(int32_t *)(int64_t *)&r19->mMovementType = 0x0;
    if (([r19 springStart] & 0x1) == 0x0) {
            [r19 snapStart];
    }
    return;
}

-(void)cellFinishedMove:(void *)arg2 {
    [self->mDragActions removeObjectForKey:r2];
    return;
}

-(bool)ccTouchBegan:(void *)arg2 withEvent:(void *)arg3 {
    r0 = [self ccTouchBegan:arg2 withEvent:arg3 ignoreCells:0x0 ignoreMenuItems:0x0];
    return r0;
}

-(void)ccTouchMoved:(void *)arg2 withEvent:(void *)arg3 allowApplyViewOffset:(bool)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    var_70 = d13;
    stack[-120] = d12;
    r31 = r31 + 0xffffffffffffff80;
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
    if (*(int32_t *)(int64_t *)&r0->_state == 0x1) {
            r19 = r0;
            if (*(int8_t *)(int64_t *)&r0->mEnabled != 0x0) {
                    r22 = r4;
                    r20 = r3;
                    r21 = r2;
                    if ([r19->mCurrentTouches objectAtIndex:r2] == r21) {
                            r8 = *_CGPointZero;
                            d10 = *(int128_t *)r8;
                            d11 = *(int128_t *)(r8 + 0x8);
                            r2 = [r21 view];
                            [r21 locationInView:r2];
                            v8 = v0;
                            v9 = v1;
                            [[CCDirector sharedDirector] convertToGL:r2];
                            d8 = d10 + d0;
                            d9 = d11 + d1;
                            r8 = sign_extend_64(*(int32_t *)ivar_offset(mDragMode));
                            r8 = *(int8_t *)(r19 + r8);
                            r23 = sign_extend_64(*(int32_t *)ivar_offset(mPreviousTouchPoint));
                            if (r8 == 0x0) {
                                    r25 = r19 + r23;
                                    sub_1003115c4();
                                    r8 = 0x10116e000;
                                    r24 = sign_extend_64(*(int32_t *)(r8 + 0x514));
                                    asm { fcvt       d1, s1 };
                                    asm { fcvt       s0, d0 };
                                    *(int32_t *)(r19 + r24) = s0;
                                    if (*(int8_t *)(r19 + sign_extend_64(*(int32_t *)(r8 + 0x50c))) != 0x0) {
                                            if (r22 != 0x0 && (*(int8_t *)(int64_t *)&r19->mBlockDragInsideTolerance == 0x0 || *(int32_t *)(int64_t *)&r19->mTapTolerance < s0)) {
                                                    [r19 scaleX];
                                                    asm { fcvt       d0, s0 };
                                                    [r19 scaleY];
                                                    asm { fcvt       d0, s0 };
                                                    [r19 applyViewOffset:r2 scaleFactor:r3];
                                            }
                                            [r19 dragFallOffMultiplierReset];
                                    }
                                    r22 = sign_extend_64(*(int32_t *)ivar_offset(_selectedItem));
                                    if (*(r19 + r22) != 0x0) {
                                            r25 = sign_extend_64(*(int32_t *)ivar_offset(mSelectedTableEntry));
                                            if (*(r19 + r25) != 0x0) {
                                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(mValidTap));
                                                    if (*(int8_t *)(r19 + r8) != 0x0 && *(int32_t *)(r19 + r24) > *(int32_t *)(int64_t *)&r19->mTapTolerance) {
                                                            *(int8_t *)(r19 + r8) = 0x0;
                                                            if (*(int8_t *)(int64_t *)&r19->mShowStateChangeOnSelectedCell != 0x0) {
                                                                    [*(r19 + r22) unselected];
                                                            }
                                                    }
                                                    r8 = *(r19 + r25);
                                                    if (r8 != 0x0 && *(int8_t *)(r8 + 0x1b) != 0x0) {
                                                            [*(r8 + 0x10) ccTouchMoved:r21 withEvent:r20];
                                                    }
                                            }
                                            else {
                                                    r20 = [r19 itemForTouchLocation:r2];
                                                    r0 = *(r19 + r22);
                                                    if (r20 != r0) {
                                                            [r0 unselected];
                                                            *(r19 + r22) = r20;
                                                            [r20 selected];
                                                    }
                                            }
                                    }
                            }
                            *(int128_t *)(int64_t *)&r19->mPrevious2TouchPoint = *(int128_t *)(r19 + r23);
                            *(r19 + r23) = d8;
                            *(0x8 + r19 + r23) = d9;
                    }
            }
    }
    return;
}

-(void)ccTouchMoved:(void *)arg2 withEvent:(void *)arg3 {
    [self ccTouchMoved:arg2 withEvent:arg3 allowApplyViewOffset:*(int8_t *)(int64_t *)&self->mScrollableTable];
    return;
}

-(bool)ccTouchBegan:(void *)arg2 withEvent:(void *)arg3 ignoreCells:(bool)arg4 ignoreMenuItems:(bool)arg5 {
    r5 = arg5;
    r4 = arg4;
    r3 = arg3;
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
    if (*(int8_t *)(int64_t *)&r0->mEnabled == 0x0) goto loc_1005d34a4;

loc_1005d3038:
    r19 = r0;
    if (*(int8_t *)(int64_t *)&r0->_visible == 0x0) goto loc_1005d34a4;

loc_1005d3050:
    r22 = r5;
    r23 = r4;
    r21 = r3;
    r20 = r2;
    r0 = [r19 canTouchNewCCMenu];
    if (r0 == 0x0) goto .l17;

loc_1005d3074:
    r0 = [r19 parent];
    if (r0 == 0x0) goto loc_1005d30bc;

loc_1005d308c:
    r25 = r0;
    goto loc_1005d3098;

loc_1005d3098:
    r0 = [r25 visible];
    if (r0 == 0x0) goto .l17;

loc_1005d30a8:
    r0 = [r25 parent];
    r25 = r0;
    if (r0 != 0x0) goto loc_1005d3098;

loc_1005d30bc:
    r25 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentTouches));
    if ([*(r19 + r25) count] == 0x0) goto loc_1005d30f8;

loc_1005d30dc:
    [*(r19 + r25) addObject:r2];
    r0 = 0x1;
    return r0;

.l17:
    return r0;

loc_1005d30f8:
    r24 = @selector(count);
    r26 = sign_extend_64(*(int32_t *)ivar_offset(mNumCurrentTouches));
    r28 = *(int32_t *)(r19 + r26);
    [*(r19 + r25) addObject:r20];
    r0 = *(r19 + r25);
    r0 = objc_msgSend(r0, r24);
    var_90 = r26;
    *(int32_t *)(r19 + r26) = r0;
    r26 = (int64_t *)&r19->mPreviousTouchPoint;
    q0 = *(int128_t *)*_CGPointZero;
    *(int128_t *)r26 = q0;
    r2 = [r20 view];
    [r20 locationInView:r2];
    [[CCDirector sharedDirector] convertToGL:r2];
    *(int128_t *)r26 = q0;
    *(int128_t *)(int64_t *)&r19->mPrevious2TouchPoint = *(int128_t *)r26;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(mInputOnTable));
    *(int8_t *)(r19 + r24) = 0x0;
    r0 = [r19 convertToNodeSpace:r2];
    v8 = v2 + v1;
    v9 = v1;
    r8 = 0x1;
    *(int8_t *)(r19 + r24) = r8;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(mPickRect));
    r9 = r19 + r9;
    if (*(r9 + 0x10) > 0x0) {
            if (*(r9 + 0x18) > 0x0) {
                    r0 = CGRectContainsPoint(r0, @selector(convertToNodeSpace:));
                    if (r0 != 0x0) {
                            r8 = *(int8_t *)(r19 + r24);
                            if (r8 != 0x0) {
                                    if (CPU_FLAGS & NE) {
                                            r8 = 0x1;
                                    }
                            }
                    }
                    else {
                            r8 = 0x0;
                    }
                    *(int8_t *)(r19 + r24) = r8;
            }
            else {
                    r8 = 0x1;
            }
    }
    if (r8 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r27 = 0x1;
            }
    }
    r9 = sign_extend_64(*(int32_t *)ivar_offset(mCellPickRect));
    r9 = r19 + r9;
    if (*(r9 + 0x10) > 0x0 && *(r9 + 0x18) > 0x0) {
            if (r8 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r25 = 0x1;
                    }
            }
            r27 = r25 & CGRectContainsPoint(r0, @selector(convertToNodeSpace:));
    }
    if (r28 == 0x0) {
            if (*(int8_t *)(r19 + r24) != 0x0) {
                    [r19 stopMovement];
                    [r19 dragFallOffMultiplierStart];
            }
    }
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_selectedItem));
    *(r19 + r28) = 0x0;
    r25 = (int64_t *)&r19->mSelectedTableEntry;
    *r25 = 0x0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mValidTap));
    var_88 = r8;
    *(int8_t *)(r19 + r8) = 0x0;
    if (*(int8_t *)(r19 + r24) != 0x0) {
            [r19 applyViewOffset:r2];
            if ((r23 & 0x1) == 0x0 && *(int8_t *)(r19 + r24) != 0x0 && ((r27 ^ 0x1) & 0x1) == 0x0) {
                    r0 = [r19 tableEntryForTouchLocation:r2];
                    *r25 = r0;
            }
            else {
                    r0 = *r25;
            }
    }
    else {
            r0 = *r25;
    }
    if (r0 != 0x0) {
            if (*(int8_t *)(int64_t *)&r19->_preventTouchesInMultipleMenus != 0x0) {
                    [[&var_70 super] setCurrentSelectedMenu:r19];
                    r0 = *r25;
            }
            *(r19 + r28) = *(r0 + 0x10);
            if (*(int32_t *)(int64_t *)&r19->mMovementType == 0x3) {
                    r8 = 0x0;
            }
            else {
                    r8 = *(int32_t *)(r19 + var_90);
                    if (r8 == 0x1) {
                            if (CPU_FLAGS & E) {
                                    r8 = 0x1;
                            }
                    }
            }
            *(int8_t *)(r19 + var_88) = r8;
            r8 = *r25;
            if (*(int8_t *)(r8 + 0x1b) != 0x0) {
                    [*(r8 + 0x10) ccTouchBegan:r20 withEvent:r21];
            }
            r0 = *(r19 + r28);
    }
    else {
            if ((r22 & 0x1) == 0x0) {
                    r0 = [r19 itemForTouchLocation:r2];
                    *(r19 + r28) = r0;
            }
            else {
                    r0 = *(r19 + r28);
            }
    }
    if (r0 == 0x0) goto loc_1005d3468;

loc_1005d3404:
    if (*r25 == 0x0 || *(int8_t *)(int64_t *)&r19->mShowStateChangeOnSelectedCell != 0x0 && *(int8_t *)(r19 + var_88) != 0x0) {
            if (*(int8_t *)(int64_t *)&r19->_preventTouchesInMultipleMenus != 0x0) {
                    [[&var_80 super] setCurrentSelectedMenu:r19];
                    r0 = *(r19 + r28);
            }
            [r0 selected];
    }
    goto loc_1005d3470;

loc_1005d3470:
    *(int32_t *)(int64_t *)&r19->mTouchMovementAccum = 0x0;
    r0 = 0x1;
    *(int32_t *)(int64_t *)&r19->_state = r0;
    return r0;

loc_1005d3468:
    if (*(int8_t *)(r19 + r24) == 0x0) goto loc_1005d3494;
    goto loc_1005d3470;

loc_1005d3494:
    [r19 cleanInputData];
    goto loc_1005d34a4;

loc_1005d34a4:
    r0 = 0x0;
    return r0;
}

-(void)ccTouchEnded:(void *)arg2 withEvent:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x90;
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
    if (*(int32_t *)(int64_t *)&r0->_state != 0x1) goto .l5;

loc_1005d3ae8:
    r20 = r3;
    r21 = r2;
    r19 = r0;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentTouches));
    [*(r0 + r22) removeObject:r2];
    r0 = *(r19 + r22);
    r0 = [r0 count];
    *(int32_t *)(int64_t *)&r19->mNumCurrentTouches = r0;
    if (*(int8_t *)(int64_t *)&r19->mEnabled == 0x0) goto loc_1005d3be8;

loc_1005d3b38:
    if (r0 == 0x0) goto loc_1005d3c80;

loc_1005d3b3c:
    r0 = *(r19 + r22);
    r0 = [r0 objectAtIndex:0x0];
    r2 = [r0 view];
    [r0 locationInView:r2];
    [[CCDirector sharedDirector] convertToGL:r2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mPreviousTouchPoint));
    *(int128_t *)(r19 + r8) = d0;
    *(int128_t *)(0x8 + r19 + r8) = d1;
    [r19 ccTouchMoved:r0 withEvent:0x0 allowApplyViewOffset:0x0];
    return;

.l5:
    return;

loc_1005d3c80:
    r0 = [[&var_70 super] currentSelectedMenu];
    if (r0 == r19) {
            [[&var_80 super] setCurrentSelectedMenu:0x0];
    }
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_selectedItem));
    r0 = *(r19 + r22);
    if (r0 == 0x0) goto loc_1005d3d68;

loc_1005d3cd4:
    r23 = sign_extend_64(*(int32_t *)ivar_offset(mSelectedTableEntry));
    if (*(r19 + r23) == 0x0) goto loc_1005d3d4c;

loc_1005d3ce4:
    if (*(int8_t *)(int64_t *)&r19->mValidTap == 0x0) goto loc_1005d3d7c;

loc_1005d3cf4:
    if (*(int8_t *)(int64_t *)&r19->mShowStateChangeOnSelectedCell != 0x0) {
            [r0 unselected];
    }
    r0 = [r19 tableEntryForTouchLocation:r2];
    r9 = *(r19 + r22);
    if (r9 == 0x0) goto loc_1005d3d80;

loc_1005d3d38:
    r8 = *(r19 + r23);
    if (r8 == r0) goto loc_1005d3d70;

loc_1005d3d44:
    r9 = 0x0;
    goto loc_1005d3d84;

loc_1005d3d84:
    if (r9 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r22 = 0x1;
            }
    }
    if (r8 != 0x0) {
            if (*(int8_t *)(r8 + 0x1b) != 0x0) {
                    r2 = r21;
                    [*(r8 + 0x10) ccTouchEnded:r2 withEvent:r3];
            }
    }
    goto loc_1005d3db0;

loc_1005d3db0:
    if (*(int8_t *)(int64_t *)&r19->mInputOnTable != 0x0) {
            if (*(int8_t *)(int64_t *)&r19->mIsOnSpring != 0x0) {
                    s8 = *(int32_t *)(int64_t *)&r19->mSpringDragFactor * (0x3ff0000000000000 - *(int32_t *)(int64_t *)&r19->mSpringPenetration);
            }
            else {
                    s8 = 0x3ff0000000000000;
            }
            [r19 stopMovement];
            if (*(int32_t *)(int64_t *)&r19->mMovementEndDistance == 0x0) {
                    if (*(int8_t *)(int64_t *)&r19->mScrollableTable != 0x0 && (r22 & 0x1) == 0x0 && (*(int8_t *)(int64_t *)&r19->mBlockDragInsideTolerance == 0x0 || *(int32_t *)(int64_t *)&r19->mTouchMovementAccum >= *(int32_t *)(int64_t *)&r19->mTapTolerance)) {
                            r8 = sign_extend_64(*(int32_t *)ivar_offset(mPreviousTouchPoint));
                            d0 = *(int128_t *)(r19 + r8);
                            d1 = *(int128_t *)(0x8 + r19 + r8);
                            r8 = sign_extend_64(*(int32_t *)ivar_offset(mPrevious2TouchPoint));
                            asm { fcvt       d2, s2 };
                            if (([r19 dragFallOffStart:r2] & 0x1) == 0x0) {
                                    if (([r19 springStart] & 0x1) == 0x0) {
                                            [r19 snapStart];
                                    }
                            }
                    }
                    else {
                            if (([r19 springStart] & 0x1) == 0x0) {
                                    [r19 snapStart];
                            }
                    }
            }
            else {
                    [r19 snapStart];
            }
            [r19 dragFallOffMultiplierEnd];
    }
    goto loc_1005d3ef0;

loc_1005d3ef0:
    [r19 cleanInputData];
    return;

loc_1005d3d70:
    if (r9 != *(r0 + 0x10)) {
            r9 = 0x0;
    }
    else {
            [[NSNotificationCenter defaultCenter] postNotificationName:@"TestableCCItemPressed" object:*(r19 + r22)];
            [*(r19 + r22) activate];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(mCellActivatedCallback));
            if ([*(r19 + r24) target] != 0x0) {
                    r22 = @selector(setParameter:);
                    objc_msgSend(*(r19 + r24), r22);
                    [*(r19 + r24) execute];
                    r2 = 0x0;
                    objc_msgSend(*(r19 + r24), r22);
            }
            r9 = 0x1;
    }
    goto loc_1005d3d80;

loc_1005d3d80:
    r8 = *(r19 + r23);
    goto loc_1005d3d84;

loc_1005d3d7c:
    r9 = 0x0;
    goto loc_1005d3d80;

loc_1005d3d4c:
    [r0 unselected];
    [*(r19 + r22) activate];
    goto loc_1005d3d68;

loc_1005d3d68:
    r22 = 0x0;
    goto loc_1005d3db0;

loc_1005d3be8:
    if (r0 != 0x0) goto .l5;

loc_1005d3bec:
    r0 = r19->_selectedItem;
    if (r0 != 0x0 && (r19->mSelectedTableEntry == 0x0 || *(int8_t *)(int64_t *)&r19->mValidTap != 0x0 && *(int8_t *)(int64_t *)&r19->mShowStateChangeOnSelectedCell != 0x0)) {
            [r0 unselected];
    }
    r0 = [[&var_50 super] currentSelectedMenu];
    if (r0 == r19) {
            [[&var_60 super] setCurrentSelectedMenu:0x0];
    }
    goto loc_1005d3ef0;
}

-(void)ccTouchCancelled:(void *)arg2 withEvent:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int32_t *)(int64_t *)&r0->_state != 0x0) {
            r19 = r0;
            if (*(int8_t *)(int64_t *)&r0->mEnabled != 0x0) {
                    r0 = r19->_selectedItem;
                    if (r0 != 0x0) {
                            r22 = sign_extend_64(*(int32_t *)ivar_offset(mSelectedTableEntry));
                            r8 = *(r19 + r22);
                            if (r8 != 0x0) {
                                    r20 = r3;
                                    r21 = r2;
                                    if (*(int8_t *)(int64_t *)&r19->mValidTap != 0x0 && *(int8_t *)(int64_t *)&r19->mShowStateChangeOnSelectedCell != 0x0) {
                                            [r0 unselected];
                                            r8 = *(r19 + r22);
                                            if (r8 != 0x0) {
                                                    if (*(int8_t *)(r8 + 0x1b) != 0x0) {
                                                            [*(r8 + 0x10) ccTouchCancelled:r21 withEvent:r20];
                                                    }
                                            }
                                    }
                                    else {
                                            if (*(int8_t *)(r8 + 0x1b) != 0x0) {
                                                    [*(r8 + 0x10) ccTouchCancelled:r21 withEvent:r20];
                                            }
                                    }
                            }
                            else {
                                    [r0 unselected];
                            }
                    }
                    if (*(int8_t *)(int64_t *)&r19->mInputOnTable != 0x0) {
                            [r19 stopMovement];
                            if (*(int8_t *)(int64_t *)&r19->mBlockDragInsideTolerance != 0x0 && *(int32_t *)(int64_t *)&r19->mTouchMovementAccum < *(int32_t *)(int64_t *)&r19->mTapTolerance) {
                                    if (([r19 springStart] & 0x1) == 0x0) {
                                            [r19 snapStart];
                                    }
                            }
                            else {
                                    if (*(int8_t *)(int64_t *)&r19->mScrollableTable != 0x0) {
                                            r8 = sign_extend_64(*(int32_t *)ivar_offset(mPreviousTouchPoint));
                                            d0 = *(int128_t *)(r19 + r8);
                                            d1 = *(int128_t *)(0x8 + r19 + r8);
                                            r8 = sign_extend_64(*(int32_t *)ivar_offset(mPrevious2TouchPoint));
                                            asm { fcvt       d2, s2 };
                                            if (([r19 dragFallOffStart:r2] & 0x1) == 0x0) {
                                                    if (([r19 springStart] & 0x1) == 0x0) {
                                                            [r19 snapStart];
                                                    }
                                            }
                                    }
                                    else {
                                            if (([r19 springStart] & 0x1) == 0x0) {
                                                    [r19 snapStart];
                                            }
                                    }
                            }
                            [r19 dragFallOffMultiplierEnd];
                    }
            }
            [r19 cleanInputData];
    }
    return;
}

-(void)update:(double)arg2 {
    r2 = arg2;
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
    r31 = r31 + 0xffffffffffffff80 - 0x190;
    v8 = v0;
    r21 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mMovementType));
    r8 = *(int32_t *)(self + r20);
    if (r8 == 0x0) goto loc_1005d180c;

loc_1005d169c:
    r9 = sign_extend_64(*(int32_t *)ivar_offset(mMovementCurrentTime));
    s0 = *(int32_t *)(r21 + r9);
    asm { fcvt       d0, s0 };
    asm { fcvt       s0, d0 };
    *(int32_t *)(r21 + r9) = s0;
    r10 = sign_extend_64(*(int32_t *)ivar_offset(mMovementTotalTime));
    s1 = *(int32_t *)(r21 + r10);
    if (s1 >= s0) {
            asm { fdiv       s9, s0, s1 };
    }
    else {
            s9 = 0x3ff0000000000000;
            *(int32_t *)(r21 + r9) = s1;
    }
    if (r8 == 0x3) goto loc_1005d1718;

loc_1005d16e4:
    if (r8 == 0x2) goto loc_1005d173c;

loc_1005d16ec:
    if (r8 != 0x1) goto loc_1005d17a4;

loc_1005d16f4:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mSnapProgressCallback));
    r8 = *(r21 + r8);
    r0 = r21->mSnapProgressCallbackTarget;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(mSnapProgressCallbackSelector));
    goto loc_1005d175c;

loc_1005d175c:
    v0 = v9;
    (r8)(r0);
    goto loc_1005d17a4;

loc_1005d17a4:
    r0 = [r21 setViewPositionByDistance:r2];
    r8 = *(int32_t *)(r21 + r20);
    if (r8 == 0x3) {
            s10 = 0x3ff0000000000000;
            if (s9 != s10) {
                    if (CPU_FLAGS & NE) {
                            r8 = 0x1;
                    }
            }
            if ((r8 & (r0 ^ 0x1) & 0x1) == 0x0) {
                    *(int32_t *)(r21 + r20) = 0x0;
                    if (([r21 springStart] & 0x1) == 0x0) {
                            [r21 snapStart];
                    }
            }
    }
    else {
            s10 = 0x3ff0000000000000;
            if (s9 == s10) {
                    *(int32_t *)(r21 + r20) = 0x0;
            }
    }
    goto loc_1005d180c;

loc_1005d180c:
    r19 = sign_extend_64(*(int32_t *)ivar_offset(mDragFallOffMultiplier));
    s0 = *(int32_t *)(r21 + r19);
    if (s0 > 0x0) {
            asm { fdiv       d0, d8, d0 };
            asm { fcvt       s0, d0 };
            sub_10035d730();
            sub_10035d724();
            s1 = *(int32_t *)(r21 + r19);
            *(int32_t *)(r21 + r19) = s1 - s0;
            if (s1 < s0) {
                    *(int32_t *)(r21 + r19) = 0x0;
            }
    }
    var_148 = r21;
    if (*(int8_t *)(int64_t *)&r21->mDragMode == 0x0) goto loc_1005d1d4c;

loc_1005d186c:
    r19 = sign_extend_64(*(int32_t *)ivar_offset(mDragEntry));
    if ([*(*(var_148 + r19) + 0x10) numberOfRunningActions] != 0x0) goto loc_1005d1d4c;

loc_1005d1890:
    r27 = var_148;
    var_1D0 = r19;
    r21 = *(*(r27 + r19) + 0x10);
    r19 = (int64_t *)&r27->mPreviousTouchPoint;
    d1 = *(int128_t *)r19;
    d0 = *(int128_t *)(r19 + 0x8);
    r23 = (int64_t *)&r27->mDragPreviousPoint;
    if (d1 == *(int128_t *)r23) {
            asm { fccmp      d0, d3, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            r22 = 0x101137000;
            d0 = d0 - *((int64_t *)&r27->mPrevious2TouchPoint + 0x8);
            asm { fcvt       s9, d0 };
            r20 = *(r22 + 0x270);
            objc_msgSend(r21, r20);
            v8 = v0;
            objc_msgSend(r21, r20);
            asm { fcvt       d0, s9 };
            v0 = v8;
            [r21 setPosition:r2];
            q0 = *(int128_t *)r19;
            *(int128_t *)r23 = q0;
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mPickRect));
    r9 = sign_extend_64(*(int32_t *)ivar_offset(mVisibleGridLength));
    asm { fcvt       d0, s0 };
    asm { fdiv       d0, d1, d0 };
    d9 = d0 * 0x3fe0000000000000;
    r19 = (int64_t *)&r27->mStartPoint + 0x8;
    asm { fcvtzs     w20, d0 };
    r23 = (int64_t *)&r27->mEndPoint + 0x8;
    d0 = *r23;
    d8 = d9 + d0;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentScrollProgress));
    s0 = *(int32_t *)(r27 + r24);
    if (s0 > 0x0) {
            [r21 position];
            asm { scvtf      d0, w20 };
            if (d1 >= d0) {
                    if (CPU_FLAGS & GE) {
                            r25 = 0x1;
                    }
            }
            s0 = *(int32_t *)(r27 + r24);
    }
    else {
            r25 = 0x0;
    }
    asm { fcvtzs     w26, d8 };
    if (s0 < 0x3ff0000000000000) {
            [r21 position];
            asm { scvtf      d0, w26 };
            if (d1 < d0) {
                    if (CPU_FLAGS & BE) {
                            r24 = 0x1;
                    }
            }
    }
    else {
            r24 = 0x0;
    }
    r8 = r25 | r24;
    if (r8 == 0x1) {
            if (r25 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r8 = r26;
                    }
                    else {
                            r8 = r20;
                    }
            }
            asm { scvtf      s8, w8 };
            if (CPU_FLAGS & NE) {
                    if (!CPU_FLAGS & NE) {
                            r8 = r23;
                    }
                    else {
                            r8 = r19;
                    }
            }
            r22 = 0x101137000;
            asm { fcvt       s10, d0 };
            objc_msgSend(r21, *(r22 + 0x270));
            asm { fcvt       d0, s8 };
            d0 = d1 - d0;
            asm { fcvt       d1, s1 };
            asm { fdiv       d0, d0, d1 };
            asm { fcvt       s8, d0 };
            s10 = s8 * 0x4016000000000000;
            [r27 scaleX];
            if (r24 != 0x0) {
                    asm { fcsel      s10, s10, s1, ne };
            }
            asm { fcvt       d8, s0 };
            [r27 scaleY];
            asm { fcvt       d1, s0 };
            v0 = v8;
            [r27 applyViewOffset:r2];
            [r27 dragFallOffMultiplierReset];
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mStartVisibleIndex));
    var_150 = r8;
    r20 = sign_extend_64(*(int32_t *)(r27 + r8));
    r28 = sign_extend_64(*(int32_t *)ivar_offset(mEndVisibleIndex));
    if (r20 > *(int32_t *)(r27 + r28)) goto loc_1005d1c14;

loc_1005d1ae8:
    r2 = r20;
    r0 = [r27 getCellItemByIndex:r2];
    if (r21 == r0) goto loc_1005d1bfc;

loc_1005d1b00:
    r27 = r0;
    if ([r0 visible] == 0x0 || [r27 isEnabled] == 0x0) goto loc_1005d1bfc;

loc_1005d1b20:
    [r21 position];
    objc_msgSend(r27, r22);
    if (d8 < 0x3fe0000000000000) {
            r19 = 0x0;
    }
    else {
            r9 = var_150;
            if (r20 == *(int32_t *)(var_148 + r9)) {
                    r19 = 0x1;
            }
            else {
                    [r21 position];
                    objc_msgSend(r27, r22);
                    d0 = d9 + 0x3fe0000000000000;
                    if (d8 < d0) {
                            if (CPU_FLAGS & BE) {
                                    r19 = 0x1;
                            }
                    }
            }
    }
    [r21 position];
    v8 = v1;
    objc_msgSend(r27, r22);
    if (d8 >= 0x3fe0000000000000) goto loc_1005d1bec;

loc_1005d1bb0:
    r8 = *(int32_t *)(var_148 + r28);
    if (r20 == r8) goto loc_1005d1d8c;

loc_1005d1bc0:
    [r21 position];
    v8 = v1;
    objc_msgSend(r27, r22);
    d0 = 0x3fe0000000000000 - d9;
    if (d8 >= d0) {
            if (CPU_FLAGS & GE) {
                    r8 = 0x1;
            }
    }
    goto loc_1005d1bf0;

loc_1005d1bf0:
    if ((r19 | r8) == 0x1) goto loc_1005d1d8c;

loc_1005d1bfc:
    r27 = var_148;
    r20 = r20 + 0x1;
    r9 = r20 - 0x1;
    if (r9 < *(int32_t *)(r27 + r28)) goto loc_1005d1ae8;

loc_1005d1c14:
    v0 = 0x0;
    var_130 = q0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mDragActions));
    var_150 = r8;
    r0 = *(r27 + r8);
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_158 = r0;
    var_168 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r22 = r0;
            r20 = *var_130;
            r19 = var_148;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_130 != r20) {
                                    objc_enumerationMutation(var_158);
                            }
                            r28 = *(var_138 + r27 * 0x8);
                            r21 = [r28 intValue];
                            r28 = [*(r19 + var_150) objectForKey:r28];
                            [r19 getCellPositionByIndex:r21];
                            v8 = v0;
                            v9 = v1;
                            [r28 getEndPosition];
                            if (d0 == d8) {
                                    asm { fccmp      d1, d9, #0x0, eq };
                            }
                            if (!CPU_FLAGS & E) {
                                    v0 = v8;
                                    v1 = v9;
                                    [r28 setEndPosition:r2];
                            }
                            r27 = r27 + 0x1;
                    } while (r27 < r22);
                    r0 = objc_msgSend(var_158, var_168);
                    r22 = r0;
            } while (r0 != 0x0);
    }
    goto loc_1005d1d4c;

loc_1005d1d4c:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_1005d1d8c:
    r11 = @selector(realPosition);
    r24 = sign_extend_64(*(int32_t *)ivar_offset(mDragEntryIndex));
    r27 = var_148;
    r22 = *(int32_t *)(r27 + r24);
    if (r20 <= r22) {
            asm { cneg       w8, w8, le };
    }
    r8 = 0x1 + r22;
    if (r8 <= r20) {
            if (CPU_FLAGS & LE) {
                    r9 = 0x1;
            }
    }
    if (CPU_FLAGS & GE) {
            if (CPU_FLAGS & GE) {
                    r10 = 0x1;
            }
    }
    if (r20 > r22) {
            if (!CPU_FLAGS & G) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mTableEntryList));
    r0 = *(r27 + r21);
    if ((r9 & 0x1) != 0x0) {
            r25 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
            r23 = 0x101137000;
            r10 = 0x10116e000;
            var_1D8 = r24;
            var_188 = *(r23 + 0x2d0);
            d8 = *0x100b9b498;
            var_1C8 = r11;
            var_1C0 = sign_extend_64(*(int32_t *)ivar_offset(mDragActions));
            do {
                    if (r20 <= r22) {
                            asm { csinc      w10, w9, w8, le };
                    }
                    var_150 = r10;
                    if (r10 <= r20) {
                            if (CPU_FLAGS & LE) {
                                    r10 = 0x1;
                            }
                    }
                    if (CPU_FLAGS & GE) {
                            if (CPU_FLAGS & GE) {
                                    r11 = 0x1;
                            }
                    }
                    COND = r20 > r22;
                    asm { sxtw       x2, w8 };
                    if (COND) {
                            asm { csinc      w23, w9, w8, gt };
                    }
                    if (CPU_FLAGS & G) {
                            if (!CPU_FLAGS & G) {
                                    r8 = r11;
                            }
                            else {
                                    r8 = r10;
                            }
                    }
                    var_178 = @selector(stopAllActions);
                    var_180 = @selector(actionWithDuration:position:);
                    var_190 = @selector(setObject:forKey:);
                    var_198 = @selector(actionWithAction:rate:);
                    var_1A8 = @selector(actionWithTarget:selector:object:);
                    var_1B0 = @selector(actions:);
                    var_1B8 = @selector(runAction:);
                    r19 = @selector(replaceObjectAtIndex:withObject:);
                    var_158 = r8;
                    r0 = [r0 objectAtIndex:r2];
                    r28 = *(r0 + 0x10);
                    [r27 getCellPositionByIndex:r23];
                    [r28 setRealPosition:r23];
                    r0 = *(r27 + r21);
                    asm { sxtw       x2, w23 };
                    objc_msgSend(r0, r19);
                    objc_msgSend(r28, var_178);
                    objc_msgSend(r28, var_1C8);
                    v1 = v0;
                    objc_msgSend(@class(CCMoveToFollow), var_180);
                    r23 = objc_msgSend(*(r25 + 0xfc0), var_188);
                    objc_msgSend(*(r27 + var_1C0), var_190);
                    v0 = v9;
                    objc_msgSend(@class(CCEaseInOut), var_198);
                    objc_msgSend(@class(CCCallFuncO), var_1A8);
                    r25 = r25;
                    r21 = r26;
                    r2 = objc_msgSend(@class(CCSequence), var_1B0);
                    objc_msgSend(r28, var_1B8);
                    r0 = *(r27 + r26);
                    r8 = var_150;
            } while ((var_158 & 0x1) != 0x0);
            r24 = var_1D8;
    }
    else {
            r25 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
    }
    [r0 replaceObjectAtIndex:r2 withObject:r3];
    r19 = sign_extend_64(*(int32_t *)ivar_offset(mDragSwitchCallback));
    if ([*(r27 + r19) target] != 0x0) {
            r0 = *(r25 + 0xfc0);
            r22 = @selector(numberWithInt:);
            r23 = objc_msgSend(r0, r22);
            r0 = *(r25 + 0xfc0);
            objc_msgSend(r0, r22);
            [*(r27 + r19) setParameter:[NSDictionary dictionaryWithObjectsAndKeys:r23]];
            [*(r27 + r19) execute];
    }
    *(int32_t *)(r27 + r24) = r20;
    goto loc_1005d1c14;

loc_1005d1bec:
    r8 = 0x0;
    goto loc_1005d1bf0;

loc_1005d173c:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mSpringProgressCallback));
    r8 = *(r21 + r8);
    r0 = r21->mSpringProgressCallbackTarget;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(mSpringProgressCallbackSelector));
    goto loc_1005d175c;

loc_1005d1718:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mDragFallOffProgressCallback));
    r8 = *(r21 + r8);
    r0 = r21->mDragFallOffProgressCallbackTarget;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(mDragFallOffProgressCallbackSelector));
    goto loc_1005d175c;
}

-(bool)isDragging {
    r0 = self;
    if (*(int32_t *)(int64_t *)&r0->mTouchMovementAccum > *(int32_t *)(int64_t *)&r0->mTapTolerance) {
            if (CPU_FLAGS & G) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)cellActivatedCallback {
    r0 = self->mCellActivatedCallback;
    return r0;
}

-(void *)viewChangedCallback {
    r0 = self->mViewOffsetCallback;
    return r0;
}

-(void *)dragSwitchCallback {
    r0 = self->mDragSwitchCallback;
    return r0;
}

-(bool)enabled {
    r0 = *(int8_t *)(int64_t *)&self->mEnabled;
    return r0;
}

-(bool)dragMode {
    r0 = *(int8_t *)(int64_t *)&self->mDragMode;
    return r0;
}

-(void)setEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->mEnabled = arg2;
    return;
}

-(void)setDragMode:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->mDragMode = arg2;
    return;
}

-(struct CGSize)cellSize {
    r0 = objc_copyStruct(&var_10, (int64_t *)&self->mCellSize, 0x10, 0x1, 0x0);
    return r0;
}

-(bool)snapEnabled {
    r0 = *(int8_t *)(int64_t *)&self->mSnapEnabled;
    return r0;
}

-(void)setSnapEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->mSnapEnabled = arg2;
    return;
}

-(float)snapTime {
    r0 = self;
    return r0;
}

-(unsigned int)snapGranularity {
    r0 = *(int32_t *)(int64_t *)&self->mSnapGranularity;
    return r0;
}

-(float)springTime {
    r0 = self;
    return r0;
}

-(float)dragFallOff {
    r0 = self;
    return r0;
}

-(float)springDragFactor {
    r0 = self;
    return r0;
}

-(void)setSpringDragFactor:(float)arg2 {
    *(int32_t *)(int64_t *)&self->mSpringDragFactor = s0;
    return;
}

-(float)fallOffMultiplier {
    r0 = self;
    return r0;
}

-(float)fallOffTimeFactor {
    r0 = self;
    return r0;
}

-(float)maxGridFallOff {
    r0 = self;
    return r0;
}

-(bool)keepDisabledCellsVisible {
    r0 = *(int8_t *)(int64_t *)&self->mKeepDisabledCellsVisible;
    return r0;
}

-(unsigned int)extraCellsToKeepLoadedOffset {
    r0 = *(int32_t *)(int64_t *)&self->mExtraCellsToKeepLoadedOffset;
    return r0;
}

-(bool)keepAllCellsLoaded {
    r0 = *(int8_t *)(int64_t *)&self->mKeepAllCellsLoaded;
    return r0;
}

-(void)setExtraCellsToKeepLoadedOffset:(unsigned int)arg2 {
    *(int32_t *)(int64_t *)&self->mExtraCellsToKeepLoadedOffset = arg2;
    return;
}

-(void)setShowStateChangeOnSelectedCell:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->mShowStateChangeOnSelectedCell = arg2;
    return;
}

-(bool)showStateChangeOnSelectedCell {
    r0 = *(int8_t *)(int64_t *)&self->mShowStateChangeOnSelectedCell;
    return r0;
}

-(void)setBlockDragInsideTolerance:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->mBlockDragInsideTolerance = arg2;
    return;
}

-(float)tapTolerance {
    r0 = self;
    return r0;
}

-(bool)blockDragInsideTolerance {
    r0 = *(int8_t *)(int64_t *)&self->mBlockDragInsideTolerance;
    return r0;
}

-(void)setTapTolerance:(float)arg2 {
    *(int32_t *)(int64_t *)&self->mTapTolerance = s0;
    return;
}

-(float)visibleGridDistance {
    r0 = self;
    return r0;
}

-(float)scrollHandleMaxCompression {
    r0 = self;
    return r0;
}

-(float)currentScrollHandleRecommendedSize {
    r0 = self;
    return r0;
}

-(float)currentScrollProgress {
    r0 = self;
    return r0;
}

-(bool)shouldShowNextButton {
    r0 = *(int8_t *)(int64_t *)&self->mShouldShowNextButton;
    return r0;
}

-(bool)shouldShowPreviousButton {
    r0 = *(int8_t *)(int64_t *)&self->mShouldShowPreviousButton;
    return r0;
}

-(bool)shouldShowScrollBar {
    r0 = *(int8_t *)(int64_t *)&self->mShouldShowScrollBar;
    return r0;
}

-(bool)buttonsHavePriorityOverCells {
    r0 = *(int8_t *)(int64_t *)&self->mButtonsHavePriorityOverCells;
    return r0;
}

-(void)setButtonsHavePriorityOverCells:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->mButtonsHavePriorityOverCells = arg2;
    return;
}

-(bool)applyViewOffset:(struct CGPoint)arg2 scaleFactor:(float)arg3 {
    memcpy(&r2, &arg2, 0x8);
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
    r31 = r31 + 0xffffffffffffff60 - 0x1e0;
    r19 = self;
    *(r29 + 0xffffffffffffff60) = **___stack_chk_guard;
    if (d0 != 0x0 || d1 != 0x0) {
            q3 = *(int128_t *)(int64_t *)&r19->mCellOffset;
            d4 = v3;
            if (d3 == 0x0) {
                    asm { fdiv       d0, d1, d4 };
            }
            else {
                    if (d4 == 0x0) {
                            asm { fdiv       d0, d0, d3 };
                    }
                    else {
                            d0 = d0 * d3 + d1 * d4;
                            asm { fdiv       d0, d0, d1 };
                    }
            }
            r25 = 0x10116e000;
            asm { fcvt       s0, d0 };
            r8 = sign_extend_64(*(int32_t *)(r25 + 0x468));
            r8 = *(int8_t *)(r19 + r8);
            if (r8 != 0x0) {
                    if (s0 < 0x0) {
                            if (CPU_FLAGS & S) {
                                    r8 = 0x1;
                            }
                    }
                    if (r8 == *(int32_t *)(int64_t *)&r19->mSpringForceDirection / 0xffffffff80000000) {
                            asm { fcsel      s2, s10, s2, eq };
                    }
            }
            r21 = 0x10116e000;
            r20 = 0x10116e000;
            s0 = s2 * s0;
            asm { fcvt       d1, s0 };
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentViewOffset));
            q2 = *(int128_t *)(r19 + r8);
            v1 = v2 - v3 * v1;
            *(int128_t *)(r19 + r8) = q1;
            s0 = s0 * *(int32_t *)(r19 + sign_extend_64(*(int32_t *)(r20 + 0x3f8)));
            r8 = sign_extend_64(*(int32_t *)(r21 + 0x460));
            *(int32_t *)(r19 + r8) = *(int32_t *)(r19 + r8) - s0;
    }
    r22 = [r19 getNumElementsExcludingHidden];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mTableEntryList));
    var_188 = r8;
    var_240 = [*(r19 + r8) count];
    if (*(int8_t *)(int64_t *)&r19->mSnapEnabled != 0x0) {
            if (*(int32_t *)(int64_t *)&r19->mSnapGranularity >= 0x1) {
                    r8 = 0x10116e408;
            }
            else {
                    r8 = 0x10116e404;
            }
    }
    else {
            r8 = 0x10116e404;
    }
    r20 = 0x10116e000;
    s9 = *(int32_t *)(r19 + sign_extend_64(*(int32_t *)r8));
    asm { ucvtf      s11, w22 };
    r12 = sign_extend_64(*(int32_t *)(r20 + 0x3f8));
    s12 = *(int32_t *)(r19 + r12) * s11;
    if (s12 > s9) {
            asm { fcsel      s14, s12, s9, gt };
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mMovementType));
    var_190 = r8;
    r8 = *(int32_t *)(r19 + r8);
    if (r8 != 0x2) {
            *(int32_t *)(int64_t *)&r19->mSpringStartDistance = 0x0;
            r10 = sign_extend_64(*(int32_t *)ivar_offset(mSpringEndDistance));
            *(int32_t *)(r19 + r10) = 0x0;
    }
    r9 = sign_extend_64(*(int32_t *)ivar_offset(mSnapGranularity));
    r9 = *(int32_t *)(r19 + r9);
    asm { udiv       w10, w22, w9 };
    r10 = r22 - r10 * r9;
    r11 = sign_extend_64(*(int32_t *)ivar_offset(mVisibleGridLength));
    var_268 = r11;
    s0 = *(int32_t *)(r19 + r11);
    s13 = 0x0;
    if (r10 != 0x0) {
            asm { fccmp      s0, s11, #0x0, ne };
    }
    if (!CPU_FLAGS & NS) {
            asm { ucvtf      s0, w9 };
            s13 = *(int32_t *)(r19 + r12) * s0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mBaseGridOffsetDistance));
    s2 = *(int32_t *)(r19 + r20);
    r26 = sign_extend_64(*(int32_t *)ivar_offset(mSpringGridOffsetDistance));
    s1 = *(int32_t *)(r19 + r26);
    s0 = -s2 - s1;
    if (s12 < s9) {
            s1 = s1 - s2;
            s3 = 0x0;
            if (s12 > 0x0) {
                    s3 = *(int32_t *)(r19 + r12);
                    s3 = s12 - s3;
            }
            s1 = s1 + s3;
    }
    else {
            s1 = s13 + (s1 + s14 + s2 - s9);
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentViewOffsetDistance));
    s3 = *(int32_t *)(r19 + r21);
    s8 = s3 - s2;
    var_230 = r12;
    if (s8 >= s0) goto loc_1005d022c;

loc_1005d01e8:
    *(int32_t *)(r19 + r21) = s3 + (s0 - s8);
    asm { fdiv       s1, s1, s2 };
    asm { fcvt       d1, s1 };
    r10 = sign_extend_64(*(int32_t *)ivar_offset(mCellOffset));
    r9 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentViewOffset));
    r9 = r19 + r9;
    q2 = *(int128_t *)r9;
    v2 = v2 * v1 + v2;
    v1 = v0;
    goto loc_1005d0270;

loc_1005d0270:
    *(int128_t *)r9 = q2;
    r23 = 0x1;
    goto loc_1005d0284;

loc_1005d0284:
    r25 = sign_extend_64(*(int32_t *)ivar_offset(mIsOnSpring));
    *(int8_t *)(r19 + r25) = 0x0;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(mSpringForceDirection));
    *(int32_t *)(r19 + r24) = 0x0;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(mSpringPenetration));
    var_258 = r9;
    *(int32_t *)(r19 + r9) = 0x0;
    r9 = 0x10116e000;
    r27 = sign_extend_64(*(int32_t *)(r9 + 0x480));
    *(int8_t *)(r19 + r27) = 0x0;
    if (*(int32_t *)(r19 + r26) != 0x0) {
            r9 = 0x10116e000;
            s1 = *(int32_t *)(r19 + r20);
            if (s8 < -s1) {
                    r9 = 0x10116e000;
                    if (r8 != 0x2) {
                            r8 = *(int32_t *)(r19 + r21);
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(mSpringStartDistance));
                            *(int32_t *)(r19 + r9) = r8;
                            *(int32_t *)(int64_t *)&r19->mSpringEndDistance = 0x0;
                            *(int8_t *)(r19 + r27) = 0x1;
                    }
                    *(int8_t *)(r19 + r25) = 0x1;
                    *(int32_t *)(r19 + r24) = 0xffffffffffffffff;
                    if (s8 + s1 < 0x0) {
                            asm { fcsel      s2, s3, s2, mi };
                    }
                    s0 = s0 + s1;
                    if (s0 < 0x0) {
                            asm { fcsel      s0, s1, s0, mi };
                    }
                    asm { fdiv       s0, s2, s0 };
                    sub_10035d730();
                    sub_10035d724();
                    *(int32_t *)(r19 + var_258) = s0;
            }
    }
    r1 = @selector(count);
    r28 = var_230;
    asm { fdiv       s0, s8, s0 };
    modff(&var_134, r1);
    v8 = v0;
    s2 = *(int32_t *)(r19 + r20);
    s3 = *(int32_t *)(r19 + r26);
    s0 = s13 + s3 + s14 + s2;
    s1 = *(int32_t *)(r19 + r21);
    s4 = s9 + s1;
    s14 = s4 - s2;
    if (s14 <= s0) goto loc_1005d03cc;

loc_1005d0388:
    s1 = (s1 - s14) + s0;
    *(int32_t *)(r19 + r21) = s1;
    asm { fdiv       s2, s2, s3 };
    asm { fcvt       d2, s2 };
    r9 = sign_extend_64(*(int32_t *)ivar_offset(mCellOffset));
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentViewOffset));
    r8 = r19 + r8;
    q3 = *(int128_t *)r8;
    v3 = v3 - v3 * v2;
    v2 = v0;
    goto loc_1005d0420;

loc_1005d0420:
    *(int128_t *)r8 = q3;
    r28 = 0x1;
    goto loc_1005d0434;

loc_1005d0434:
    if (*(int32_t *)(r19 + r26) != 0x0) {
            s2 = *(int32_t *)(r19 + r20);
            s2 = s13 + s12 + s2;
            if (s14 > s2) {
                    if (*(int32_t *)(r19 + var_190) != 0x2) {
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(mSpringStartDistance));
                            s3 = *(int32_t *)(r19 + r9);
                            r8 = sign_extend_64(*(int32_t *)ivar_offset(mSpringEndDistance));
                            if (s3 == 0x0 && *(int32_t *)(r19 + r8) == 0x0) {
                                    *(int32_t *)(r19 + r9) = s1;
                                    *(int32_t *)(r19 + r8) = (*(int32_t *)(r19 + r21) - s14) + s13 + s12 + *(int32_t *)(r19 + r20);
                                    *(int8_t *)(r19 + r27) = 0x1;
                            }
                            else {
                                    *(int32_t *)(r19 + r9) = 0x0;
                                    *(int32_t *)(r19 + r8) = 0x0;
                            }
                    }
                    *(int8_t *)(r19 + r25) = 0x1;
                    *(int32_t *)(r19 + r24) = 0x1;
                    if (s14 < s2) {
                            asm { fcsel      s1, s3, s1, mi };
                    }
                    s0 = s0 - s2;
                    if (s0 < 0x0) {
                            asm { fcsel      s0, s2, s0, mi };
                    }
                    asm { fdiv       s0, s1, s0 };
                    sub_10035d730();
                    sub_10035d724();
                    *(int32_t *)(r19 + var_258) = s0;
            }
    }
    r1 = @selector(count);
    asm { fcvtzs     w25, s15 };
    r23 = sign_extend_64(*(int32_t *)ivar_offset(mVisibleGridDistance));
    s0 = *(int32_t *)(r19 + r23);
    s0 = s14 + (s0 - s9);
    r24 = var_230;
    asm { fdiv       s0, s0, s1 };
    modff(&var_138, r1);
    s1 = var_138;
    asm { fcvtzs     w8, s1 };
    if (s8 == 0x0 && s0 == 0x0) {
            r27 = 0x10116dfff;
    }
    else {
            if (s1 == 0x0) {
                    if (CPU_FLAGS & E) {
                            r9 = 0x1;
                    }
            }
            if (s0 < 0x0) {
                    if (CPU_FLAGS & S) {
                            r10 = 0x1;
                    }
            }
            r27 = 0x10116e000 - (r10 & r9);
    }
    if (r22 <= r25 || (r27 & 0xffffffff80000000) != 0x0) goto loc_1005d0aa8;

loc_1005d054c:
    var_190 = 0x0;
    var_198 = r25 & !(r25 / 0xffffffff80000000);
    r8 = r22 - 0x1;
    var_1F0 = *(int128_t *)(int64_t *)&r19->mStartPivotPoint;
    var_200 = *(int128_t *)(int64_t *)&r19->mCurrentViewOffset;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(mCellOffset));
    var_1C8 = r9;
    q0 = *(int128_t *)(r19 + r9);
    var_210 = q0;
    s8 = *(int32_t *)(r19 + r21);
    s9 = *(int32_t *)(r19 + r20);
    if (r27 < r22) {
            if (!CPU_FLAGS & L) {
                    r27 = r8;
            }
            else {
                    r27 = r27;
            }
    }
    s14 = *(int32_t *)(r19 + r23);
    s12 = *(int32_t *)(r19 + r24);
    r22 = var_240 - 0x1;
    var_26C = r28;
    var_1B0 = r27;
    if (r22 < 0x0 || r25 < 0x1) goto loc_1005d0708;

loc_1005d05d0:
    r23 = 0x0;
    var_190 = 0x0;
    r8 = &@selector(menu);
    asm { sxtw       x24, w9 };
    r27 = 0x1;
    var_1E0 = *(r8 + 0xac0);
    r28 = sign_extend_64(*(int32_t *)ivar_offset(mKeepDisabledCellsVisible));
    goto loc_1005d0620;

loc_1005d0620:
    r0 = *(r19 + var_188);
    r0 = [r0 objectAtIndex:r27 - 0x1];
    r26 = r0;
    r25 = *(r0 + 0x10);
    [r25 setVisible:0x0];
    if (*(int8_t *)(r19 + r28) != 0x0) {
            r9 = var_198;
    }
    else {
            r8 = var_190;
            if (([r25 isEnabled] & 0x1) == 0x0) {
                    asm { cinc       w8, w8, eq };
            }
            var_190 = r8;
            r8 = var_1B0;
            if (CPU_FLAGS & E) {
                    asm { cinc       w8, w8, eq };
            }
            var_1B0 = r8;
            r9 = var_198;
            if (CPU_FLAGS & E) {
                    asm { cinc       w9, w9, eq };
            }
    }
    r8 = *(int8_t *)(r26 + 0x18);
    var_198 = r9;
    if (r8 == 0x0) goto loc_1005d06e8;

loc_1005d0698:
    r8 = *(int8_t *)(r26 + 0x19);
    if (r8 == 0x0) goto loc_1005d06e8;

loc_1005d06a0:
    r8 = r9 + r23;
    if (r8 < *(int32_t *)(int64_t *)&r19->mExtraCellsToKeepLoadedOffset) goto loc_1005d06d8;

loc_1005d06b8:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mKeepAllCellsLoaded));
    r8 = *(int8_t *)(r19 + r8);
    if (r8 != 0x0) goto loc_1005d06e8;

loc_1005d06cc:
    r0 = r25;
    r1 = var_1E0;
    goto loc_1005d06e0;

loc_1005d06e0:
    objc_msgSend(r0, r1);
    goto loc_1005d06e8;

loc_1005d06e8:
    if (r27 >= r24) goto loc_1005d0708;

loc_1005d06f0:
    asm { sxtw       x8, w9 };
    r23 = r23 - 0x1;
    COND = r27 < r8;
    r27 = r27 + 0x1;
    if (COND) goto loc_1005d0620;

loc_1005d0708:
    r9 = var_198;
    if (r9 < var_240) {
            r27 = var_1B0;
            if (r9 <= r27) {
                    asm { fcvt       d0, s13 };
                    v2 = v2 - v3;
                    s1 = s12 * 0x3fe0000000000000;
                    v0 = v2 + v3 * v0;
                    var_1E0 = q0;
                    s9 = s9 - s8;
                    s12 = s14 * 0x3fe0000000000000 - s1;
                    asm { sxtw       x23, w9 };
                    asm { sxtw       x25, w8 };
                    r26 = sign_extend_64(*(int32_t *)ivar_offset(mKeepDisabledCellsVisible));
                    r28 = var_26C;
                    r24 = var_230;
                    do {
                            r0 = *(r19 + var_188);
                            r0 = [r0 objectAtIndex:r23];
                            r21 = r0;
                            r20 = *(r0 + 0x10);
                            if (*(int8_t *)(r19 + r26) == 0x0 && ([r20 isEnabled] & 0x1) == 0x0) {
                                    [r20 setVisible:0x0];
                                    r27 = r27 + 0x1;
                                    var_190 = var_190 + 0x1;
                                    if (*(int8_t *)(int64_t *)&r19->mKeepAllCellsLoaded == 0x0 && *(int8_t *)(r21 + 0x18) != 0x0 && *(int8_t *)(r21 + 0x19) != 0x0) {
                                            [r20 unloadData];
                                    }
                            }
                            else {
                                    [r20 setVisible:0x1];
                                    [r20 position];
                                    var_1B0 = q1;
                                    [[CCDirector sharedDirector] winSize];
                                    if (*(int8_t *)(int64_t *)&r19->mIsCircular != 0x0) {
                                            asm { scvtf      d2, w8 };
                                            asm { fcvt       s2, d1 };
                                            asm { fcvt       d3, s3 };
                                            asm { fcvt       s4, d1 };
                                            d0 = d0 * d3;
                                            asm { fcvt       s0, d0 };
                                            if (s0 < s4) {
                                                    asm { fcsel      s1, s0, s4, mi };
                                            }
                                            if (CPU_FLAGS & S) {
                                                    asm { fcsel      s8, s4, s0, mi };
                                            }
                                            sub_10035d730();
                                            v1 = v8;
                                            sub_10035d724();
                                            asm { fcvt       d0, s0 };
                                            q1 = var_1B0;
                                            v0 = v1;
                                    }
                                    else {
                                            asm { scvtf      d0, w8 };
                                            q1 = var_1E0;
                                            v0 = v1 + v1 * v0;
                                    }
                                    var_1B0 = q0;
                                    if (*(int8_t *)(int64_t *)&r19->mDragMode != 0x0) {
                                            r8 = sign_extend_64(*(int32_t *)ivar_offset(mDragEntry));
                                            r8 = *(r19 + r8);
                                            if (r8 != 0x0) {
                                                    r2 = 0x1;
                                                    if (r8 != r21) {
                                                            r2 = 0x1;
                                                            r0 = [r20 numberOfRunningActions];
                                                            q0 = var_1B0;
                                                            if (r0 == 0x0) {
                                                                    v1 = v8;
                                                                    [r20 setPosition:0x1];
                                                                    r2 = [CCMenuItemDraggable class];
                                                                    r0 = [r20 isKindOfClass:r2];
                                                                    q0 = var_1B0;
                                                                    if (r0 != 0x0) {
                                                                            v1 = v8;
                                                                            [r20 setRealPosition:r2];
                                                                    }
                                                            }
                                                    }
                                            }
                                            else {
                                                    v1 = v8;
                                                    [r20 setPosition:0x1];
                                                    r2 = [CCMenuItemDraggable class];
                                                    r0 = [r20 isKindOfClass:r2];
                                                    q0 = var_1B0;
                                                    if (r0 != 0x0) {
                                                            v1 = v8;
                                                            [r20 setRealPosition:r2];
                                                    }
                                            }
                                    }
                                    else {
                                            v1 = v8;
                                            [r20 setPosition:0x1];
                                            r2 = [CCMenuItemDraggable class];
                                            r0 = [r20 isKindOfClass:r2];
                                            q0 = var_1B0;
                                            if (r0 != 0x0) {
                                                    v1 = v8;
                                                    [r20 setRealPosition:r2];
                                            }
                                    }
                                    s0 = *(int32_t *)(r19 + r24);
                                    asm { scvtf      s1, w8 };
                                    s0 = s12 + s0;
                                    asm { fdiv       s0, s1, s0 };
                                    if (s0 < 0x0) {
                                            asm { fcsel      s0, s1, s0, mi };
                                    }
                                    s0 = s0 * 0x42c80000;
                                    asm { frintm     s0, s0 };
                                    asm { fdiv       s0, s0, s1 };
                                    s1 = -s0;
                                    if (CPU_FLAGS & S) {
                                            asm { fcsel      s8, s1, s0, mi };
                                    }
                                    if (*(int8_t *)(r21 + 0x18) != 0x0) {
                                            if (*(int8_t *)(r21 + 0x19) != 0x0) {
                                                    [r20 loadData];
                                            }
                                            if (*(int8_t *)(r21 + 0x1a) != 0x0) {
                                                    v0 = v8;
                                                    [r20 updateDistanceRatio:r2];
                                            }
                                    }
                            }
                            r8 = r23 + 0x1;
                            if (r8 >= r25) {
                                break;
                            }
                            asm { sxtw       x9, w27 };
                            COND = r23 < r9;
                            r23 = r8;
                    } while (COND);
            }
            else {
                    r28 = var_26C;
            }
    }
    else {
            r28 = var_26C;
            r27 = var_1B0;
    }
    if (r27 + 0x1 < var_240) {
            r24 = *(int32_t *)(int64_t *)&r19->mExtraCellsToKeepLoadedOffset;
            asm { sxtw       x25, w8 };
            do {
                    r28 = r27;
                    r0 = *(r19 + var_188);
                    r0 = [r0 objectAtIndex:r25];
                    r27 = r0;
                    r26 = *(r0 + 0x10);
                    [r26 setVisible:0x0];
                    if (*(int8_t *)(r27 + 0x18) != 0x0 && *(int8_t *)(r27 + 0x19) != 0x0) {
                            r0 = [r26 isEnabled];
                            r27 = r28;
                            if ((r0 & 0x1) != 0x0) {
                                    if (r24 != 0x0) {
                                            [r26 loadData];
                                            r24 = r24 - 0x1;
                                    }
                                    else {
                                            if (*(int8_t *)(int64_t *)&r19->mKeepAllCellsLoaded == 0x0) {
                                                    [r26 unloadData];
                                            }
                                            r24 = 0x0;
                                    }
                            }
                            else {
                                    [r26 unloadData];
                            }
                    }
                    else {
                            r27 = r28;
                    }
                    r25 = r25 + 0x1;
                    r22 = r22 - 0x1;
            } while (r27 != r22);
            r28 = var_26C;
    }
    r9 = var_198;
    goto loc_1005d0cd4;

loc_1005d0cd4:
    *(int32_t *)(int64_t *)&r19->mStartVisibleIndex = r9;
    *(int32_t *)(int64_t *)&r19->mEndVisibleIndex = r27;
    r20 = var_268;
    s0 = *(int32_t *)(r19 + r20);
    s0 = s11 - s0;
    asm { fmaxnm     s8, s0, s9 };
    [r19 getCurrentGridOffset];
    if (s8 == 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentScrollProgress));
            if (s0 > 0x0) {
                    asm { fcsel      s0, s10, s9, hi };
            }
    }
    else {
            asm { fminnm     s1, s8, s9 };
            sub_10035d730();
            sub_10035d724();
            asm { fdiv       s0, s0, s8 };
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentScrollProgress));
    }
    *(int32_t *)(r19 + r8) = s0;
    if (0x0 > 0x0) {
            if (CPU_FLAGS & G) {
                    r8 = 0x1;
            }
    }
    *(int8_t *)(int64_t *)&r19->mShouldShowPreviousButton = r8;
    if (0x0 < s8) {
            if (CPU_FLAGS & S) {
                    r8 = 0x1;
            }
    }
    *(int8_t *)(int64_t *)&r19->mShouldShowNextButton = r8;
    s0 = *(int32_t *)(r19 + r20);
    asm { fdiv       s1, s0, s11 };
    if (s0 < s11) {
            asm { fcsel      s0, s1, s10, mi };
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentScrollHandleRecommendedSize));
    *(int32_t *)(r19 + r8) = s0;
    s1 = *(int32_t *)(r19 + var_258);
    if (s1 > 0x0) {
            *(int32_t *)(r19 + r8) = s0 * (s1 * (*(int32_t *)(int64_t *)&r19->mScrollHandleMaxCompression + 0xbff0000000000000) + 0x3ff0000000000000);
    }
    if (*(int32_t *)(r19 + r20) < s11) {
            if (CPU_FLAGS & S) {
                    r8 = 0x1;
            }
    }
    *(int8_t *)(int64_t *)&r19->mShouldShowScrollBar = r8;
    [r19 reEnableButtons];
    [r19->mViewOffsetCallback execute];
    if (**___stack_chk_guard == *(r29 + 0xffffffffffffff60)) {
            r0 = r28;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1005d06d8:
    r0 = r25;
    r1 = @selector(loadData);
    goto loc_1005d06e0;

loc_1005d0aa8:
    v0 = 0x0;
    var_170 = q0;
    r20 = *(r19 + var_188);
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_188 = r1;
    r0 = objc_msgSend(r20, r1);
    if (r0 != 0x0) {
            r22 = r0;
            var_190 = r25;
            var_1B0 = r27;
            var_26C = r28;
            r27 = *var_170;
            r28 = sign_extend_64(*(int32_t *)ivar_offset(mKeepAllCellsLoaded));
            do {
                    r26 = 0x0;
                    do {
                            if (*var_170 != r27) {
                                    objc_enumerationMutation(r20);
                            }
                            r21 = *(var_178 + r26 * 0x8);
                            r25 = *(r21 + 0x10);
                            [r25 setVisible:0x0];
                            if (*(int8_t *)(r19 + r28) == 0x0) {
                                    if (*(int8_t *)(r21 + 0x18) != 0x0 && *(int8_t *)(r21 + 0x19) != 0x0) {
                                            [r25 unloadData];
                                    }
                            }
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r0 = objc_msgSend(r20, var_188);
                    r22 = r0;
            } while (r0 != 0x0);
            r9 = var_190;
            r28 = var_26C;
            r27 = var_1B0;
    }
    else {
            r9 = r25;
    }
    goto loc_1005d0cd4;

loc_1005d03cc:
    s2 = s9 + (-s2 - s3);
    if (s14 >= s2) goto loc_1005d0430;

loc_1005d03e0:
    s1 = s1 + (s2 - s14);
    *(int32_t *)(r19 + r21) = s1;
    s4 = *(int32_t *)(r19 + var_230);
    asm { fdiv       s3, s3, s4 };
    asm { fcvt       d3, s3 };
    r9 = sign_extend_64(*(int32_t *)ivar_offset(mCellOffset));
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentViewOffset));
    r8 = r19 + r8;
    v3 = v4 * v3 + v4;
    goto loc_1005d0420;

loc_1005d0430:
    r28 = r23;
    goto loc_1005d0434;

loc_1005d022c:
    if (s8 <= s1) goto loc_1005d0280;

loc_1005d0234:
    *(int32_t *)(r19 + r21) = (s3 - s8) + s1;
    asm { fdiv       s2, s2, s3 };
    asm { fcvt       d2, s2 };
    r10 = sign_extend_64(*(int32_t *)ivar_offset(mCellOffset));
    r9 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentViewOffset));
    r9 = r19 + r9;
    q3 = *(int128_t *)r9;
    v2 = v3 - v3 * v2;
    goto loc_1005d0270;

loc_1005d0280:
    r23 = 0x0;
    goto loc_1005d0284;
}

-(bool)scrollableTable {
    r0 = *(int8_t *)(int64_t *)&self->mScrollableTable;
    return r0;
}

-(void)setScrollableTable:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->mScrollableTable = arg2;
    return;
}

@end