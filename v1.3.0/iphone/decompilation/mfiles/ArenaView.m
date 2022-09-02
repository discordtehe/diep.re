@implementation ArenaView

-(struct CGPoint)cameraTargetFromMassCenter:(struct CGPoint)arg2 angle:(float)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    return r0;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(void *)initWithBackground:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r21 = arg2;
    r0 = [[&var_70 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = sign_extend_64(*(int32_t *)ivar_offset(mBackground));
            *(r19 + r20) = r21;
            [r21 removeFromParentAndCleanup:0x0];
            if (*(r19 + r20) != 0x0) {
                    [r19 addChild:r2 z:r3];
            }
            r20 = @selector(addChild:z:);
            r2 = [GameView node];
            [r19 addChild:r2];
            [[CCDirector sharedDirector] winSize];
            r0 = @class(CCNode);
            r0 = [r0 node];
            r25 = sign_extend_64(*(int32_t *)ivar_offset(mArrowNode));
            *(r19 + r25) = r0;
            r0 = sub_1005d7410(@"ingameUI.png", @"ingameUI.plist", @"direction_arrow.png", 0x0);
            [r0 setAnchorPoint:r2];
            [r0 setTag:0x1];
            [*(r19 + r25) addChild:r0];
            r0 = @class(CCNode);
            r0 = [r0 node];
            [r0 addChild:*(r19 + r25)];
            objc_msgSend(r19, r20);
            [*(r19 + r25) setVisible:0x0];
            *(int32_t *)(int64_t *)&r19->mArrowTargetAngle = 0x0;
            [r21 setPosition:0x0];
            *(int8_t *)(int64_t *)&r19->mShowArrow = [[[[Application sharedApplication] userData] settings] showArrow];
            [r19 scheduleUpdateWithPriority:r2];
    }
    r0 = r19;
    return r0;
}

-(void)update:(double)arg2 {
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
    r23 = *0x1011dea68 + 0x24cae8;
    r21 = *(r23 + 0x8);
    r10 = *(int32_t *)r21;
    r9 = *(int8_t *)r23;
    var_54 = r9 ^ r10;
    r10 = 0x1;
    r13 = &var_54;
    do {
            r14 = *(int8_t *)(r13 + r10);
            asm { madd       w9, w9, w11, w12 };
            *(int8_t *)(r13 + r10) = r9 ^ r14;
            r10 = r10 + 0x1;
    } while (r10 != 0x4);
    r20 = *0x1011dea68 + 0x24cab0;
    r22 = var_54;
    *(r23 + 0x8) = operator new[]();
    operator delete[](r21);
    r8 = 0x0;
    r9 = *(r23 + 0x8);
    *(int32_t *)r9 = r22;
    r11 = *(int8_t *)r23;
    asm { madd       w11, w11, w12, w10 };
    *(int8_t *)r23 = r11;
    do {
            *(int8_t *)(r9 + r8) = *(int8_t *)(r9 + r8) ^ r11;
            asm { madd       w11, w11, w12, w10 };
            r8 = r8 + 0x1;
    } while (r8 != 0x4);
    sub_10001d7f0(r20);
    sub_10001d994(r20);
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mBackground));
    r0 = *(r19 + r21);
    if ([r0 respondsToSelector:r2] != 0x0) {
            r20 = @selector(onCameraChanged:scale:);
            asm { fdiv       s1, s10, s2 };
            asm { fdiv       s0, s9, s2 };
            r0 = *(r19 + r21);
            asm { fcvt       d0, s0 };
            asm { fcvt       d1, s1 };
            objc_msgSend(r0, r20);
    }
    if (*(int8_t *)(int64_t *)&r19->mShowArrow != 0x0) {
            asm { fcvt       s0, d8 };
            [r19 updateArrow:r2];
    }
    return;
}

-(struct CGPoint)cameraWorldPosition {
    r0 = [CCDirector sharedDirector];
    r0 = [r0 winSize];
    return r0;
}

-(void)aimArrowToAxis:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self aimArrowToAxis:r2 imediate:r3];
    return;
}

-(void *)background {
    r0 = self->mBackground;
    return r0;
}

-(void)updateArrow:(float)arg2 {
    var_60 = d11;
    stack[-104] = d10;
    r31 = r31 + 0xffffffffffffff90;
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
    r19 = self;
    r21 = *0x1011dea68;
    r8 = *(r21 + 0x830);
    if (r8 != *(r21 + 0x838)) {
            r8 = *r8;
            if (r8 != 0x0) {
                    r20 = sub_100035e48(r8 + 0x218);
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    if (r20 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    r9 = 0x100b9a000;
    if (*(int32_t *)0x1011dea80 > *(int32_t *)(r9 + 0xfac)) {
            r9 = 0x100b9a000;
            if (CPU_FLAGS & G) {
                    r9 = 0x1;
            }
    }
    r24 = sign_extend_64(*(int32_t *)ivar_offset(mArrowNode));
    [*(r19 + r24) setVisible:r8 & r9];
    if ([*(r19 + r24) visible] != 0x0) {
            r21 = *0x1011dea68;
            r21 = r21 + 0x24cab0;
            s0 = *(int32_t *)0x1011dea78;
            s0 = s0 * *(int32_t *)0x100b9b4c8;
            r25 = sign_extend_64(*(int32_t *)ivar_offset(mArrowTargetAngle));
            s1 = *(int32_t *)(r19 + r25);
            asm { fabd       s2, s0, s1 };
            if (s2 > 0x43340000) {
                    do {
                            if (s0 > s1) {
                                    asm { fcsel      s2, s3, s2, gt };
                            }
                            s2 = 0x43b40000;
                            r10 = 0x43340000;
                            s0 = s0 + s2;
                            asm { fabd       s2, s0, s1 };
                    } while (s2 > r10);
            }
            *(int32_t *)(r19 + r25) = s0;
            sub_10002e09c(*(r20 + 0x68));
            sub_10001d7f0(r21);
            v9 = v0;
            [[*(&@class(MCConfigurationData) + 0x10) sharedDirector] winSize];
            v10 = v1;
            sub_10002e09c(r23);
            s0 = *(int32_t *)(r23 + 0xa0);
            sub_10001d994(r21);
            asm { fcvt       d0, s0 };
            asm { fcvt       s10, d0 };
            asm { fcvt       d9, s9 };
            objc_msgSend(objc_msgSend(*(r26 + 0x10), r20), r22);
            asm { fcvt       d10, s10 };
            objc_msgSend(objc_msgSend(*(r26 + 0x10), r20), r22);
            asm { scvtf      v0.2s, v0.2s };
            asm { fdiv       v0.2s, v0.2s, v1.2s };
            if (s0 < v0) {
                    asm { fcsel      s0, s1, s0, mi };
            }
            [[CCDirector sharedDirector] winSize];
            asm { fcvt       s2, d0 };
            sub_10031169c();
            [[GameplaySettings sharedGameplaySettings] aimSnapRate];
            [*(r19 + r24) getChildByTag:0x1];
            [*(r19 + r24) setPosition:r2];
            [r20 position];
            asm { fcvt       d2, s2 };
            asm { fcvt       d3, s8 };
            objc_msgSend(r20, r21);
            [*(r19 + r24) rotation];
            [*(r19 + r24) setRotation:r2];
            objc_msgSend(*(r19 + r24), r21);
    }
    return;
}

-(bool)showArrow {
    r0 = *(int8_t *)(int64_t *)&self->mShowArrow;
    return r0;
}

-(void)aimArrowToAxis:(struct CGPoint)arg2 imediate:(bool)arg3 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r2;
    v8 = v1;
    v9 = v0;
    r19 = self;
    r9 = *0x1011dea68;
    r8 = *(r9 + 0x830);
    if (r8 != *(r9 + 0x838)) {
            r8 = *r8;
            if (r8 != 0x0) {
                    if (sub_100035e48(r8 + 0x218) == 0x0) {
                            if (CPU_FLAGS & E) {
                                    r8 = 0x1;
                            }
                    }
            }
            else {
                    r8 = 0x1;
            }
    }
    else {
            r8 = 0x1;
    }
    r9 = *_CGPointZero;
    d0 = *(int128_t *)r9;
    d1 = *(int128_t *)(r9 + 0x8);
    if (d9 == d0) {
            r9 = *_CGPointZero;
            if (CPU_FLAGS & E) {
                    r9 = 0x1;
            }
    }
    if (d8 == d1) {
            if (CPU_FLAGS & E) {
                    r10 = 0x1;
            }
    }
    if ((r8 & 0x1) == 0x0 && (r9 & r10 & 0x1) == 0x0) {
            if (*(int8_t *)(int64_t *)&r19->mShowArrow != 0x0) {
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(mArrowNode));
                    loc_10031164c([*(r19 + r21) setVisible:r2], @selector(setVisible:), 0x1, r3, r4);
                    asm { fcvt       s8, d0 };
                    r22 = sign_extend_64(*(int32_t *)ivar_offset(mArrowTargetAngle));
                    s0 = *(int32_t *)(r19 + r22);
                    if (s0 == 0xffffffffcf000000) {
                            *(int32_t *)(r19 + r22) = s8;
                            [*(r19 + r21) setRotation:r2];
                    }
                    else {
                            s1 = 0xffffffffcf000000;
                            asm { fabd       s1, s8, s0 };
                            if (s1 > 0x43340000) {
                                    do {
                                            if (s8 > s0) {
                                                    asm { fcsel      s1, s2, s1, gt };
                                            }
                                            s1 = 0x43b40000;
                                            r10 = 0x43340000;
                                            s8 = s8 + s1;
                                            asm { fabd       s1, s8, s0 };
                                    } while (s1 > r10);
                            }
                            if (r20 != 0x0) {
                                    [*(r19 + r21) setRotation:r2];
                            }
                            *(int32_t *)(r19 + r22) = s8;
                    }
            }
            else {
                    *(int32_t *)(int64_t *)&r19->mArrowTargetAngle = 0x0;
            }
    }
    return;
}

-(void)setShowArrow:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->mShowArrow = arg2;
    return;
}

@end