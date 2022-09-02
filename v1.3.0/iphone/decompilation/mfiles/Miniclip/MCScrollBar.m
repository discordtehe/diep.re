@implementation MCScrollBar

-(void)scrollCallback:(float)arg2 andUpdateLength:(float)arg3 {
    [self updateHandleLength:arg2];
    [self scrollCallback:arg2];
    *(int32_t *)(int64_t *)&self->mCurrentProgress = *(int32_t *)(int64_t *)&self->mNewProgress;
    return;
}

-(void)scaleScrollbarActiveAreaWithXScale:(float)arg2 withYScale:(float)arg3 {
    r2 = arg2;
    r0 = self;
    var_50 = d13;
    stack[-88] = d12;
    r31 = r31 + 0xffffffffffffffa0;
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
    r19 = r0->mScrollbarFrameButton;
    if (r19 != 0x0) {
            [*(r0 + sign_extend_64(*(int32_t *)ivar_offset(mScrollbarFrame))) contentSize];
            asm { fcvt       d11, s9 };
            objc_msgSend(*(r20 + r22), r21);
            asm { fcvt       d12, s8 };
            objc_msgSend(*(r20 + r22), r21);
            objc_msgSend(*(r20 + r22), r21);
            [r19 setActiveArea:r2];
    }
    return;
}

-(void)scrollCallback:(float)arg2 {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mNewProgress));
    *(int32_t *)(self + r8) = s0;
    s1 = 0x0;
    if (s0 >= 0x0) {
            s1 = 0x3ff0000000000000;
            if (s0 > s1) {
                    *(int32_t *)(r19 + r8) = s1;
            }
    }
    else {
            *(int32_t *)(r19 + r8) = s1;
    }
    asm { fcvt       d8, s0 };
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mScrollbarHandle));
    [*(r19 + r20) position];
    [*(r19 + r20) setPosition:r2];
    return;
}

-(void)updateHandleLength:(float)arg2 {
    r2 = arg2;
    r0 = self;
    s0 = *(int32_t *)(int64_t *)&r0->mScrollbarFrameLength * s0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mScrollbarHandleLength));
    if (s0 != *(int32_t *)(r0 + r8)) {
            *(int32_t *)(r0 + r8) = s0;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mScrollbarHandle));
            r8 = *(r0 + r8);
            asm { fcvt       d0, s0 };
            asm { fcvt       d1, s1 };
            [r8 changeSize:r2];
    }
    return;
}

-(void)setInteractiveScrollBar:(void *)arg2 arrow1Sprite:(void *)arg3 arrow2Sprite:(void *)arg4 withCellSize:(struct CGSize)arg5 {
    memcpy(&r5, &arg5, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mForcedCellSize));
    *(self + r8) = d0;
    *(0x8 + self + r8) = d1;
    [self setInteractiveScrollBar:arg2 arrow1Sprite:arg3 arrow2Sprite:arg4];
    return;
}

-(void)pressedArrowUp {
    [self calculateProgressIncrement];
    sub_10031169c();
    *(int32_t *)(int64_t *)&self->mNewProgress = s0;
    [self updateTableToProgress];
    return;
}

-(float)calculateProgressIncrement {
    var_30 = d11;
    stack[-56] = d10;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self calculateCellSize];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mCellSize));
    *(int128_t *)(r19 + r8) = d0;
    *(int128_t *)(0x8 + r19 + r8) = d1;
    s10 = *(int32_t *)(int64_t *)&r19->mScrollbarRotation;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mTable));
    [*(r19 + r20) getNumElements];
    asm { ucvtf      d0, w0 };
    if (s10 == 0x0) {
            asm { fcsel      d1, d8, d9, eq };
    }
    asm { fcvt       s8, d0 };
    [*(r19 + r20) visibleGridDistance];
    asm { fdiv       s0, s0, s8 };
    r0 = sub_10031169c();
    return r0;
}

-(void *)initWithScrollHandlePlistName:(void *)arg2 scrollHandleFrameName:(void *)arg3 handleLengthPercent:(float)arg4 handleLeftMargin:(float)arg5 handleRightMargin:(float)arg6 handleWidth:(float)arg7 scrollFramePlistName:(void *)arg8 scrollFrameFrameName:(void *)arg9 frameLength:(float)arg10 frameLeftMargin:(float)arg11 frameRightMargin:(float)arg12 frameWidth:(float)arg13 position:(struct CGPoint)arg14 orientation:(struct CGPoint)arg15 {
    r31 = r31 - 0x120;
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
    v10 = v6;
    v11 = v5;
    r27 = arg5;
    r21 = arg4;
    v12 = v3;
    v8 = v2;
    v9 = v1;
    r24 = arg3;
    r25 = arg2;
    r0 = [[&var_B8 super] init];
    r19 = r0;
    if (r0 == 0x0) goto loc_1005bbcbc;

loc_1005bb834:
    var_108 = s11;
    var_100 = s10;
    var_C4 = s9;
    var_F0 = s8;
    d11 = *(int128_t *)(r29 + 0x10);
    d10 = *(int128_t *)(r29 + 0x18);
    d8 = *(int128_t *)(r29 + 0x20);
    d9 = *(int128_t *)(r29 + 0x28);
    r0 = [MCMenuInputCallback menuWithItems:0x0];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(mMenu));
    *(r19 + r23) = r0;
    [r0 setCallback:r19];
    [*(r19 + r23) setPosition:r19];
    r0 = *(r19 + r23);
    r0 = [r0 setAnchorPoint:r19];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(mScrollbarFrameLength));
    *(int32_t *)(r19 + r22) = s15;
    r28 = sign_extend_64(*(int32_t *)ivar_offset(mScrollbarFrameWidth));
    *(int32_t *)(r19 + r28) = s13;
    s0 = *(int32_t *)(r19 + r22);
    s0 = s0 * s14;
    r10 = sign_extend_64(*(int32_t *)ivar_offset(mScrollbarHandleLength));
    *(int32_t *)(r19 + r10) = s0;
    r11 = sign_extend_64(*(int32_t *)ivar_offset(mScrollbarHandleWidth));
    *(int32_t *)(r19 + r11) = s12;
    r19->mScrollbarPosition = d11;
    *((int64_t *)&r19->mScrollbarPosition + 0x8) = d10;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mScrollbarOrientation));
    *(r19 + r8) = d8;
    *(0x8 + r19 + r8) = d9;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(mScrollbarRotation));
    *(int32_t *)(r19 + r26) = 0x0;
    var_D8 = r25;
    var_D0 = (int64_t *)&r19->mScrollbarPosition;
    var_E8 = r10;
    var_F8 = r11;
    if (d8 == 0x0 || d9 == 0x0) goto loc_1005bb968;

loc_1005bb948:
    r25 = r24;
    asm { fdiv       d0, d9, d8 };
    atan(r0);
    asm { fcvt       s0, d0 };
    goto loc_1005bb988;

loc_1005bb988:
    *(int32_t *)(r19 + r26) = s0;
    goto loc_1005bb98c;

loc_1005bb98c:
    var_C0 = @selector(setPosition:);
    var_E0 = @selector(setAnchorPoint:);
    var_100 = @selector(length);
    r2 = [r27 length] - 0x4;
    var_108 = @selector(substringToIndex:);
    r20 = [r27 substringToIndex:r2];
    var_110 = @selector(splitFrame:frameName:leftX:rightX:);
    [HorizontalStretchFrame splitFrame:r21 frameName:r27 leftX:r4 rightX:r5];
    r0 = @class(HorizontalStretchFrame);
    var_118 = @selector(horizontalStretchFrameWithPrefix:);
    r0 = [r0 horizontalStretchFrameWithPrefix:r20];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mScrollbarFrame));
    *(r19 + r21) = r0;
    [r0 setTag:0x1];
    r0 = *(r19 + r21);
    r8 = *_CGPointZero;
    asm { fcvt       d4, s2 };
    asm { fcvt       d5, s2 };
    [r0 setupPosition:r2 anchorPoint:r3 parent:r4 size:r5 z:r6];
    objc_msgSend(*(r19 + r21), var_E0);
    r0 = [MCMenuItemNodeRGBAStatic alloc];
    r0 = [r0 initFromNormalNode:*(r19 + r21) selectedNode:0x0 disabledNode:0x0 target:r19 selector:0x0];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(mScrollbarFrameButton));
    *(r19 + r24) = r0;
    [*(r19 + r24) setSelectedColor:[r0 normalColor] & 0xffffffff];
    [*(r19 + r21) contentSize];
    objc_msgSend(*(r19 + r21), r22);
    objc_msgSend(*(r19 + r21), r22);
    objc_msgSend(*(r19 + r21), r22);
    [r20 setActiveArea:r2];
    [*(r19 + r23) addChild:r2 z:r3];
    objc_msgSend(r25, var_100) - 0x4;
    objc_msgSend(r25, var_108);
    objc_msgSend(*(r27 + 0x690), var_110);
    r0 = *(r27 + 0x690);
    r0 = objc_msgSend(r0, var_118);
    *(r19 + sign_extend_64(*(int32_t *)ivar_offset(mScrollbarHandle))) = r0;
    asm { fcvt       d4, s2 };
    asm { fcvt       d5, s2 };
    objc_msgSend(r0, r28);
    objc_msgSend(*(r19 + r24), r26);
    *(int8_t *)(int64_t *)&r19->mInteractiveScrollBar = 0x0;
    *(int128_t *)(int64_t *)&r19->mForcedCellSize = *(int128_t *)*_CGSizeZero;
    objc_msgSend(r19, r20);
    objc_msgSend(r19, r20);
    objc_msgSend(*(r19 + r21), r22);
    [r19 setContentSize:r2];
    [r19 setRotation:r2];
    objc_msgSend(r19, var_C0);
    [r19 scrollCallback:r2];
    goto loc_1005bbcbc;

loc_1005bbcbc:
    r0 = r19;
    return r0;

loc_1005bb968:
    r25 = r24;
    if (d8 != 0x0) goto loc_1005bb98c;

loc_1005bb980:
    s0 = 0x42b40000;
    goto loc_1005bb988;
}

-(void)pressedArrowDown {
    [self calculateProgressIncrement];
    sub_10031169c();
    *(int32_t *)(int64_t *)&self->mNewProgress = s0;
    [self updateTableToProgress];
    return;
}

-(void)ccTouchBegan:(void *)arg2 withEvent:(void *)arg3 {
    [self updateTableUsingScrollBarTouch:arg2];
    return;
}

-(void)setInteractiveScrollBar:(void *)arg2 arrow1Sprite:(void *)arg3 arrow2Sprite:(void *)arg4 {
    *(int8_t *)(int64_t *)&self->mInteractiveScrollBar = 0x1;
    self->mTable = arg2;
    [*(self + sign_extend_64(*(int32_t *)ivar_offset(mScrollbarFrame))) contentSize];
    sub_1005cb618();
    s0 = *(int32_t *)0x1011c07c4;
    s0 = s0 * 0xffffffffc2480000;
    asm { fcvt       d0, s0 };
    asm { fcvt       s0, d0 };
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mScrollbarFrameLength));
    var_98 = r8;
    *(int32_t *)(r19 + r8) = s0;
    asm { fcvt       d8, s0 };
    objc_msgSend(*(r19 + r28), r22);
    asm { fdiv       d0, d8, d0 };
    asm { fcvt       s0, d0 };
    [r20 setScaleX:r2];
    r0 = [CCMenu menuWithArray:0x0];
    r23 = *_CGPointZero;
    var_A0 = @selector(setPosition:);
    [r0 setPosition:0x0];
    [r0 setAnchorPoint:0x0];
    [r25 setAnchorPoint:0x0];
    [r24 setAnchorPoint:0x0];
    r0 = @class(CCMenuItemSprite);
    r0 = [r0 itemWithNormalSprite:r25 selectedSprite:0x0 target:r19 selector:@selector(pressedArrowUp)];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(mArrow1));
    *(r19 + r23) = r0;
    r0 = @class(CCMenuItemSprite);
    r0 = [r0 itemWithNormalSprite:r24 selectedSprite:0x0 target:r19 selector:@selector(pressedArrowDown)];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(mArrow2));
    *(r19 + r27) = r0;
    [*(r19 + r23) setAnchorPoint:r24];
    [*(r19 + r27) setAnchorPoint:r24];
    objc_msgSend(*(r19 + r23), r22);
    objc_msgSend(*(r19 + r23), r22);
    objc_msgSend(*(r19 + r23), r22);
    objc_msgSend(*(r19 + r23), r22);
    [r24 setActiveArea:r2];
    objc_msgSend(*(r19 + r27), r22);
    objc_msgSend(*(r19 + r27), r22);
    objc_msgSend(*(r19 + r27), r22);
    objc_msgSend(*(r19 + r27), r22);
    [r24 setActiveArea:r2];
    [*(r19 + r27) setScaleX:r2];
    sub_1005cb618();
    asm { fcvt       d8, s0 };
    [*(r19 + r28) position];
    objc_msgSend(*(r19 + r23), var_A0);
    sub_1005cb618();
    asm { fcvt       d8, s0 };
    objc_msgSend(*(r19 + r28), r22);
    objc_msgSend(*(r19 + r27), r25);
    [r20 addChild:*(r19 + r23)];
    [r20 addChild:*(r19 + r27)];
    [r19 addChild:r20 z:0xf];
    [r19 scrollCallback:r20];
    return;
}

-(void)ccTouchMoved:(void *)arg2 withEvent:(void *)arg3 {
    [self updateTableUsingScrollBarTouch:arg2];
    return;
}

-(void)ccTouchEnded:(void *)arg2 withEvent:(void *)arg3 {
    return;
}

-(void)ccTouchCancelled:(void *)arg2 withEvent:(void *)arg3 {
    return;
}

-(void)updateTableUsingScrollBarTouch:(void *)arg2 {
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
    if (*(int8_t *)(int64_t *)&r0->mInteractiveScrollBar != 0x0) {
            r20 = r2;
            r2 = [r2 view];
            [r20 locationInView:r2];
            [[CCDirector sharedDirector] convertToGL:r2];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(mScrollbarFrameButton));
            [*(r0 + r21) convertToNodeSpace:r2];
            [r0 calculateCellSize];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mCellSize));
            *(r0 + r8) = d0;
            *(0x8 + r0 + r8) = d1;
            [*(r0 + r21) activeArea];
            [*(r0 + r21) activeArea];
            asm { fdiv       d0, d8, d2 };
            asm { fcvt       s0, d0 };
            sub_10031169c();
            *(int32_t *)(int64_t *)&r19->mNewProgress = s0;
            [r19 updateTableToProgress];
    }
    return;
}

-(struct CGSize)calculateCellSize {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mForcedCellSize));
    d0 = *(int128_t *)(r0 + r8);
    d1 = *(int128_t *)(0x8 + r0 + r8);
    if (d0 == 0x0 && d1 == 0x0) {
            r0 = r0->mTable;
            r0 = [r0 getCellItemByIndex:0x0];
            if (r0 != 0x0) {
                    r0 = [r0 contentSize];
            }
    }
    return r0;
}

-(void)updateTableToProgress {
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
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mCellSize));
    r8 = self + r8;
    d8 = *r8;
    if (d8 == 0x0) {
            d0 = *(r8 + 0x8);
            if (d0 != 0x0) {
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(mScrollbarRotation));
                    s0 = *(int32_t *)(r19 + r20);
                    if (s0 != 0x0) {
                            d8 = *(r8 + 0x8);
                    }
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(mTable));
                    [*(r19 + r21) getNumElements];
                    asm { ucvtf      d0, w0 };
                    asm { fcvt       s8, d0 };
                    [*(r19 + r21) visibleGridDistance];
                    r22 = sign_extend_64(*(int32_t *)ivar_offset(mNewProgress));
                    r23 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentProgress));
                    r0 = *(r19 + r21);
                    s3 = *(int32_t *)(r19 + r20);
                    asm { fnmul      s0, s0, s1 };
                    asm { fcvt       d0, s0 };
                    asm { fcvt       d1, s2 };
                    if (s3 == 0x0) {
                            asm { fcsel      d1, d2, d1, eq };
                    }
                    if (CPU_FLAGS & E) {
                            asm { fcsel      d0, d0, d2, eq };
                    }
                    [r0 applyViewOffset:r2];
                    *(int32_t *)(r19 + r23) = *(int32_t *)(r19 + r22);
            }
    }
    else {
            r20 = sign_extend_64(*(int32_t *)ivar_offset(mScrollbarRotation));
            s0 = *(int32_t *)(r19 + r20);
            if (s0 != 0x0) {
                    d8 = *(r8 + 0x8);
            }
            r21 = sign_extend_64(*(int32_t *)ivar_offset(mTable));
            [*(r19 + r21) getNumElements];
            asm { ucvtf      d0, w0 };
            asm { fcvt       s8, d0 };
            [*(r19 + r21) visibleGridDistance];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(mNewProgress));
            r23 = sign_extend_64(*(int32_t *)ivar_offset(mCurrentProgress));
            r0 = *(r19 + r21);
            s3 = *(int32_t *)(r19 + r20);
            asm { fnmul      s0, s0, s1 };
            asm { fcvt       d0, s0 };
            asm { fcvt       d1, s2 };
            if (s3 == 0x0) {
                    asm { fcsel      d1, d2, d1, eq };
            }
            if (CPU_FLAGS & E) {
                    asm { fcsel      d0, d0, d2, eq };
            }
            [r0 applyViewOffset:r2];
            *(int32_t *)(r19 + r23) = *(int32_t *)(r19 + r22);
    }
    return;
}

-(float)calculateNumVisibleElements {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self calculateCellSize];
    r20 = (int64_t *)&r19->mCellSize;
    *r20 = d0;
    r21 = r20 + 0x8;
    *r21 = d1;
    r0 = r19->mTable;
    r0 = [r0 visibleGridDistance];
    asm { fcvt       d0, s0 };
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mScrollbarRotation));
    if (*(int32_t *)(r19 + r8) == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r21;
            }
            else {
                    r8 = r20;
            }
    }
    asm { fdiv       d0, d0, d1 };
    asm { fcvt       s0, d0 };
    return r0;
}

-(void *)menu {
    r0 = self->mMenu;
    return r0;
}

-(void)fadeIn:(float)arg2 {
    r31 = r31 - 0x170;
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
    v8 = v0;
    r0 = [NSArray alloc];
    r2 = self->mScrollbarFrameButton;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mArrow1));
    r9 = sign_extend_64(*(int32_t *)ivar_offset(mArrow2));
    r0 = [r0 initWithObjects:r2];
    r19 = r0;
    var_120 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r21 = r0;
            r27 = *var_120;
            asm { fcvt       d8, s8 };
            do {
                    r20 = 0x0;
                    do {
                            if (*var_120 != r27) {
                                    objc_enumerationMutation(r19);
                            }
                            [*(var_128 + r20 * 0x8) setVisible:r2];
                            objc_msgSend(r26, r23);
                            objc_msgSend(@class(CCFadeTo), r24);
                            objc_msgSend(r26, r25);
                            r20 = r20 + 0x1;
                    } while (r20 < r21);
                    r0 = objc_msgSend(r19, var_138);
                    r21 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)fadeOut:(float)arg2 {
    r31 = r31 - 0x180;
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
    v8 = v0;
    r0 = [NSArray alloc];
    r2 = self->mScrollbarFrameButton;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mArrow1));
    r9 = sign_extend_64(*(int32_t *)ivar_offset(mArrow2));
    r0 = [r0 initWithObjects:r2];
    var_120 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_148 = r1;
    var_140 = r0;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r21 = r0;
            var_138 = *var_120;
            asm { fcvt       d8, s8 };
            do {
                    r19 = 0x0;
                    do {
                            if (*var_120 != var_138) {
                                    objc_enumerationMutation(var_140);
                            }
                            [*(var_128 + r19 * 0x8) stopAllActions];
                            objc_msgSend(@class(CCFadeTo), r23);
                            objc_msgSend(@class(CCHide), r24);
                            objc_msgSend(@class(CCSequence), r25);
                            objc_msgSend(r27, r26);
                            r19 = r19 + 0x1;
                    } while (r19 < r21);
                    r0 = objc_msgSend(var_140, var_148);
                    r21 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

@end