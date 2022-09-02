@implementation GameState

-(bool)isRootState {
    return 0x1;
}

-(bool)occupiesFullScreen {
    return 0x1;
}

-(void)injectParameters:(void *)arg2 {
    return;
}

-(void)setupWithStateId:(unsigned long long)arg2 parameters:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = self;
    [[&var_30 super] setupWithStateId:arg2 parameters:r3];
    *(int32_t *)(int64_t *)&r19->_storedAngle = 0xffffffffbf800000;
    r19->_storedDate = 0x0;
    *(int8_t *)(int64_t *)&r19->_isDying = 0x0;
    r19->mHudNode = 0x0;
    r19->mJoystickMove = 0x0;
    r19->mJoystickAimShoot = 0x0;
    r19->mAllTouches = [[NSMutableArray arrayWithCapacity:0x6] retain];
    r19->mJoystickMoveTouches = [[NSMutableArray arrayWithCapacity:0x3] retain];
    r19->mJoystickAimShootTouches = [[NSMutableArray arrayWithCapacity:0x3] retain];
    *(int32_t *)(int64_t *)&r19->mUseDynamicJoystickReposition = 0x0;
    *(int8_t *)(int64_t *)&r19->mAutoPoint = 0x0;
    [[NSDate date] timeIntervalSince1970];
    asm { fcvt       s0, d0 };
    *(int32_t *)(int64_t *)&r19->mUpdateRate = s0;
    r19->mInputDispatcher = [objc_alloc() initWithListener:r19 delay:r3 minDistance:r4 maxDistance:r5];
    [r19 setupArenaWithInitialState];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_isReconnectGame));
    if (*(int8_t *)(r19 + r21) == 0x0) {
            *(int8_t *)(r19 + r21) = sub_1005d84b0([r20 objectForKey:r2], 0x0);
    }
    return;
}

-(double)enterWithPreviousState:(unsigned long long)arg2 fromStack:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [Application sharedApplication];
    r0 = [r0 registerInputDelegate:r2];
    if (arg2 != 0x9) {
            [[[CCDirector sharedDirector] scheduler] unscheduleUpdateForTarget:r19];
            [[[CCDirector sharedDirector] scheduler] scheduleUpdateForTarget:r19 priority:0x0 paused:0x0];
            *(int32_t *)(int64_t *)&r19->mUpdateRate = 0x0;
            r19->mLastUpdateTimeStamp = 0x0;
            *(int32_t *)(int64_t *)&r19->mLatestUpdateOrder = 0x0;
            [r19 setupHUD];
            r0 = [r19 setupControls];
    }
    *(int8_t *)(int64_t *)&r19->_isReconnectGame = 0x0;
    return r0;
}

-(void)destroy {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_storedDate));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mJoystickMove));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mJoystickAimShoot));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mInputDispatcher));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    [[Application sharedApplication] removeInputDelegate:r19];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mAllTouches));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mJoystickMoveTouches));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mJoystickAimShootTouches));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    [[[CCDirector sharedDirector] scheduler] unscheduleUpdateForTarget:r19];
    [[&var_20 super] destroy];
    return;
}

-(double)leaveWithNewState:(unsigned long long)arg2 toStack:(bool)arg3 {
    [[Application sharedApplication] removeInputDelegate:self];
    [self->mAllTouches removeAllObjects];
    [self->mJoystickMoveTouches removeAllObjects];
    r0 = self->mJoystickAimShootTouches;
    r0 = [r0 removeAllObjects];
    return r0;
}

-(void)disableInput {
    [[&var_20 super] disableInput];
    [self->mMenu setTouchEnabled:0x0];
    [self->mBottomMenu setTouchEnabled:0x0];
    [self->mJoystickMove setEnabled:0x0];
    [self->mJoystickAimShoot setEnabled:0x0];
    [self->mInputDispatcher disable];
    return;
}

-(void)enableInput {
    r0 = self;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_isDying == 0x0) {
            [[&var_20 super] enableInput];
            [r0->mHudNode setVisible:0x1];
            [r0->mMenu setTouchEnabled:0x1];
            [r0->mBottomMenu setTouchEnabled:0x1];
            [r0->mJoystickMove setEnabled:0x1];
            [r0->mJoystickAimShoot setEnabled:0x1];
            [r0->mInputDispatcher enable];
    }
    return;
}

-(void)processContextEvent:(void *)arg2 withData:(void *)arg3 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r2;
            r19 = r0;
            if (([r20 isEqualToString:r2] & 0x1) == 0x0 && [r20 isEqualToString:r2] != 0x0) {
                    if ([r19 isBackButtonEnabled] != 0x0) {
                            [r19 showMenuPause];
                    }
            }
    }
    return;
}

-(void)showMenuPause {
    r23 = sign_extend_64(*(int32_t *)ivar_offset(mJoystickMove));
    [*(self + r23) clearTouches];
    [self getDefaultLeftJoystickPosition];
    [*(self + r23) setPosition:r2];
    [*(self + r23) position];
    [*(self + r23) setJoystickFollowTarget:r2];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(mJoystickAimShoot));
    [*(self + r24) clearTouches];
    [self getDefaultRightJoystickPosition];
    [*(self + r24) setPosition:r2];
    [*(self + r24) position];
    [*(self + r24) setJoystickFollowTarget:r2];
    [[[Application sharedApplication] stateMachine] goToApplicationState:r2];
    return;
}

-(void)setupArenaWithInitialState {
    self->mArenaView = [[objc_alloc() initWithBackground:[OptimizedArenaBackground node]] autorelease];
    [self->mBaseNode addChild:r2 z:r3];
    return;
}

-(void)update:(double)arg2 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self->mJoystickMove update:arg2];
    [r19->mJoystickAimShoot update:arg2];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mHudNode));
    if (*(r19 + r21) == 0x0) goto .l1;

loc_100024100:
    r9 = *0x1011dea68;
    r8 = *(r9 + 0x830);
    if (r8 == *(r9 + 0x838)) goto .l1;

loc_10002411c:
    r8 = *r8;
    if (r8 == 0x0) goto .l1;

loc_100024124:
    r20 = *(int32_t *)sub_100077dd0(*(int32_t *)(r8 + 0x224));
    r0 = *(int32_t *)(**(*0x1011dea68 + 0x830) + 0x224);
    r0 = sub_100077dd0(r0);
    if (r20 != 0x24 && *(int32_t *)r0 != 0x26) {
            r0 = r19->mJoystickAimShootView;
            r1 = @selector(setVisible:);
    }
    else {
            r0 = r19->mJoystickAimShootView;
            r1 = @selector(setVisible:);
    }
    objc_msgSend(r0, r1);
    if (*(int8_t *)(sub_100077dd0(*(int32_t *)(**(*0x1011dea68 + 0x830) + 0x224)) + 0x86) == 0x0) goto loc_10002424c;

loc_1000241c8:
    r20 = @selector(setVisible:);
    r22 = *(int8_t *)(int64_t *)&r19->mShootJoystickOnRight;
    r0 = *(r19 + r21);
    r0 = [r0 zoomButton];
    r1 = r20;
    if (r22 == 0x0) goto loc_100024278;

loc_1000241ec:
    objc_msgSend(r0, r1);
    objc_msgSend([*(r19 + r21) zoomButtonRight], r20);
    r22 = *(int8_t *)0x1011dea89;
    r0 = *(r19 + r21);
    r0 = [r0 zoomInImage];
    r1 = r20;
    if (r22 == 0x0) goto loc_1000242e4;

loc_100024234:
    objc_msgSend(r0, r1);
    r0 = *(r19 + r21);
    r1 = @selector(zoomOutImage);
    goto loc_1000242d4;

loc_1000242d4:
    r20 = @selector(setVisible:);
    r0 = objc_msgSend(r0, r1);
    r1 = r20;
    goto loc_10002431c;

loc_10002431c:
    objc_msgSend(r0, r1);
    return;

.l1:
    return;

loc_1000242e4:
    objc_msgSend(r0, r1);
    r0 = *(r19 + r21);
    r1 = @selector(zoomOutImage);
    goto loc_100024310;

loc_100024310:
    r20 = @selector(setVisible:);
    r0 = objc_msgSend(r0, r1);
    r1 = r20;
    goto loc_10002431c;

loc_100024278:
    objc_msgSend(r0, r1);
    objc_msgSend([*(r19 + r21) zoomButtonRight], r20);
    r22 = *(int8_t *)0x1011dea89;
    r0 = *(r19 + r21);
    r0 = [r0 zoomInImageRight];
    r1 = r20;
    if (r22 == 0x0) goto loc_1000242fc;

loc_1000242c0:
    objc_msgSend(r0, r1);
    r0 = *(r19 + r21);
    r1 = @selector(zoomOutImageRight);
    goto loc_1000242d4;

loc_1000242fc:
    objc_msgSend(r0, r1);
    r0 = *(r19 + r21);
    r1 = @selector(zoomOutImageRight);
    goto loc_100024310;

loc_10002424c:
    [[*(r19 + r21) zoomButton] setVisible:r2];
    r0 = *(r19 + r21);
    r1 = @selector(zoomButtonRight);
    goto loc_100024310;
}

-(void)toggleLeaderboardButtonCallback {
    [[[self->mHudNode hudDiep] hudScoreboard] toggleLeaderboard];
    return;
}

-(void)arrangeButtonForFixedDpi:(void *)arg2 inches:(float)arg3 {
    r3 = arg3;
    r2 = arg2;
    if (r2 != 0x0) {
            var_50 = d13;
            stack[-72] = d12;
            r31 = r31 + 0xffffffffffffffb0;
            var_40 = d11;
            stack[-56] = d10;
            var_30 = d9;
            stack[-40] = d8;
            var_20 = r20;
            stack[-24] = r19;
            var_10 = r29;
            stack[-8] = r30;
            r19 = r2;
            [[CCDirector sharedDirector] winSize];
            [r19 setInchHeight:0x1 proportional:r3];
            [r19 position];
            objc_msgSend(r19, r20);
            if (d11 > d8 * 0x3fe0000000000000) {
                    [r19 position];
                    [r19 scale];
                    asm { fcvt       d0, s0 };
            }
            else {
                    [r19 scale];
                    asm { fcvt       d1, s0 };
            }
            [r19 setPosition:r2];
    }
    return;
}

-(void)pauseButtonCallback {
    [self onInputAxisChangedCallback:0x2 priority:r3];
    [self->mHudNode setVisible:0x0];
    [self->mMenu setTouchEnabled:0x0];
    [self->mBottomMenu setTouchEnabled:0x0];
    [self->mJoystickMove setEnabled:0x0];
    [self showMenuPause];
    return;
}

-(void)upgradeButtonCallback {
    return;
}

-(void)setupControls {
    var_50 = r28;
    stack[-88] = r27;
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
    r19 = self;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(mJoystickMove));
    r0 = *(self + r26);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r26) = 0x0;
    }
    [r19->mAllTouches removeAllObjects];
    [r19->mJoystickMoveTouches removeAllObjects];
    [r19->mJoystickAimShootTouches removeAllObjects];
    *(int8_t *)(int64_t *)&r19->mAutoPoint = 0x0;
    *(int32_t *)(int64_t *)&r19->mUseDynamicJoystickReposition = [[[[Application sharedApplication] userData] settings] fixedJoysticks] ^ 0x1;
    *(int8_t *)(int64_t *)&r19->mShootJoystickOnRight = [[[[Application sharedApplication] userData] settings] shootJoystickOnRight];
    [r19 getDefaultLeftJoystickPosition];
    [*(r19 + r26) setJoystickFollowTarget:r2];
    [r19 getDefaultRightJoystickPosition];
    r28 = sign_extend_64(*(int32_t *)ivar_offset(mJoystickAimShoot));
    [*(r19 + r28) setJoystickFollowTarget:r2];
    [r19 createJoystick];
    [r19 createAimShootJoystick];
    [*(r19 + r26) setStopOnRelease:[[[[Application sharedApplication] userData] settings] stopOnRelease]];
    [*(r19 + r26) setShootOnRelease:[[[[Application sharedApplication] userData] settings] shootOnRelease]];
    [*(r19 + r28) setStopOnRelease:[[[[Application sharedApplication] userData] settings] stopOnRelease]];
    [*(r19 + r28) setShootOnRelease:[[[[Application sharedApplication] userData] settings] shootOnRelease]];
    return;
}

-(void)setupHUD {
    var_50 = r28;
    stack[-88] = r27;
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
    r19 = self;
    r27 = sign_extend_64(*(int32_t *)ivar_offset(mHudNode));
    r0 = *(self + r27);
    if (r0 != 0x0) {
            [r0 removeFromParentAndCleanup:r2];
            *(r19 + r27) = 0x0;
    }
    r0 = [LocalizedCCBReader reader];
    r0 = [r0 nodeGraphFromFile:@"DiepGameHUDTest.ccbi" owner:r19];
    *(r19 + r27) = r0;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(mBaseNode));
    [*(r19 + r26) addChild:r0 z:0x1];
    [*(r19 + r27) moveJoystickPosition];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mDefaultLeftJoystickPosition));
    *(int128_t *)(r19 + r8) = d0;
    *(int128_t *)(0x8 + r19 + r8) = d1;
    [*(r19 + r27) aimShootJoystickPosition];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mDefaultRightJoystickPosition));
    *(int128_t *)(r19 + r8) = d0;
    *(int128_t *)(0x8 + r19 + r8) = d1;
    r0 = sub_100089a40(0x1011e2cb8);
    r8 = *(int8_t *)(r0 + 0x17);
    r10 = *(r0 + 0x8);
    if (sign_extend_64(r8) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r8 = r8;
            }
            else {
                    r8 = r10;
            }
    }
    if (r8 == 0x3 && std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::compare() == 0x0) {
            [[*(r19 + r27) scoreboardButton] setVisible:0x0];
            [[[*(r19 + r27) hudDiep] hudScoreboard] setVisible:0x0];
    }
    r19->mMenu = sub_1005d8554([*(r19 + r27) menu], [CCMenu class], 0x0);
    r19->mBottomMenu = sub_1005d8554([*(r19 + r27) bottomMenu], [CCMenu class], 0x0);
    r0 = [Application sharedApplication];
    r0 = [r0 userData];
    r0 = [r0 settings];
    r23 = r0;
    if ([r0 showTutorial] >= 0x1) {
            [r23 setShowTutorial:[r23 showTutorial] - 0x1];
            [*(r19 + r26) addChild:[[LocalizedCCBReader reader] nodeGraphFromFile:@"TutorialInGame.ccbi" owner:r19] z:0x2];
            [r23 writeToDisk];
    }
    return;
}

-(void)zoomButtonCallback {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mShootJoystickOnRight));
    r8 = *(int8_t *)(self + r8);
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mHudNode));
    r0 = *(self + r21);
    if (r8 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = &@selector(zoomInImage);
            }
            else {
                    r8 = &@selector(zoomInImageRight);
            }
    }
    r1 = *r8;
    if (CPU_FLAGS & E) {
            if (!CPU_FLAGS & E) {
                    r22 = &@selector(zoomOutImage);
            }
            else {
                    r22 = &@selector(zoomOutImageRight);
            }
    }
    r19 = objc_msgSend(r0, r1);
    r0 = *(r20 + r21);
    r0 = objc_msgSend(r0, *r22);
    if (r19 != 0x0) {
            asm { ccmp       x0, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            [r19 setVisible:[r19 visible] ^ 0x1];
            [r0 setVisible:[r0 visible] ^ 0x1];
            *(int8_t *)0x1011dea89 = [r19 visible] ^ 0x1;
    }
    return;
}

-(void)onInputAxisChangedCallback:(struct CGPoint)arg2 priority:(int)arg3 {
    memcpy(&r2, &arg2, 0x8);
    return;
}

-(void)onDeath {
    *(int8_t *)(int64_t *)&self->_isDying = 0x1;
    [self performSelector:@selector(fallbackMenuMain) withObject:0x0 afterDelay:r4];
    [self->mHudNode setVisible:r2];
    return;
}

-(void)fallbackMenuMain {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (([[[Application sharedApplication] stateMachine] receivedGameOver] & 0x1) == 0x0) {
            if (([[[Application sharedApplication] stateMachine] isStateOnTop:r2] & 0x1) != 0x0 || [[[Application sharedApplication] stateMachine] isStateOnTop:r2] != 0x0) {
                    [[[Application sharedApplication] stateMachine] markToShowAd];
                    [[[Application sharedApplication] stateMachine] goToApplicationState:r2];
            }
    }
    return;
}

-(void)gameOverTransition {
    [self->mHudNode animateFadeAfter:r2];
    [self performSelector:r2 withObject:r3 afterDelay:r4];
    return;
}

-(void)auxiliarGoToMain {
    [[[Application sharedApplication] stateMachine] goToApplicationState:r2];
    return;
}

-(struct CGPoint)getDefaultZoomPosition {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [CCDirector sharedDirector];
    r0 = [r0 winSize];
    if (*(int8_t *)(int64_t *)&self->mShootJoystickOnRight == 0x0) {
            asm { fcsel      d0, d0, d1, eq };
    }
    return r0;
}

-(void)dismissTutorial {
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
    var_110 = q0;
    r0 = self->mBaseNode;
    r0 = [r0 children];
    r19 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r21 = r0;
            r26 = *var_110;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_110 != r26) {
                                    objc_enumerationMutation(r19);
                            }
                            r25 = *(var_118 + r27 * 0x8);
                            if ([r25 isKindOfClass:[TutorialInGame class]] != 0x0) {
                                    [r25 fadeOut];
                            }
                            r27 = r27 + 0x1;
                    } while (r27 < r21);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r21 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(struct CGPoint)getDefaultLeftJoystickPosition {
    r0 = self;
    if (*(int32_t *)(int64_t *)&r0->mUseDynamicJoystickReposition == 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mShootJoystickOnRight));
            r8 = *(int8_t *)(r0 + r8);
            if (r8 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r8 = 0x10116996c;
                    }
                    else {
                            r8 = 0x101169970;
                    }
            }
    }
    return r0;
}

-(struct CGPoint)getDefaultZoomAnchorpoint {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [CCDirector sharedDirector];
    r0 = [r0 winSize];
    if (*(int8_t *)(int64_t *)&self->mShootJoystickOnRight == 0x0) {
            asm { fcsel      d0, d1, d0, eq };
    }
    return r0;
}

-(struct CGPoint)getDefaultRightJoystickPosition {
    r0 = self;
    if (*(int32_t *)(int64_t *)&r0->mUseDynamicJoystickReposition == 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(mShootJoystickOnRight));
            r8 = *(int8_t *)(r0 + r8);
            if (r8 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r8 = 0x101169970;
                    }
                    else {
                            r8 = 0x10116996c;
                    }
            }
    }
    return r0;
}

-(void)followJoystick:(void *)arg2 withPoint:(struct CGPoint)arg3 factor:(float)arg4 {
    memcpy(&r3, &arg3, 0x8);
    [arg2 position];
    [arg2 position];
    [arg2 setJoystickFollowTarget:r2];
    return;
}

-(void)createJoystick {
    r31 = r31 - 0x90;
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
    r0 = objc_alloc();
    r0 = [r0 initWithEaseFactor:0x0 withCross:r3];
    r0 = [r0 autorelease];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(mJoystickMoveView));
    *(r19 + r22) = r0;
    [r19->mBaseNode addChild:r0 z:0x2];
    [*(r19 + r22) getBackgroundRadius];
    v8 = v0;
    r21 = objc_alloc();
    [r19 getDefaultLeftJoystickPosition];
    v9 = v0;
    v10 = v1;
    [[GameplaySettings sharedGameplaySettings] minDPadRadiusFactor];
    r22 = *(r19 + r22);
    if (*(int32_t *)(int64_t *)&r19->mUseDynamicJoystickReposition == 0x0) {
            [[GameplaySettings sharedGameplaySettings] maxDPadDetectionRadiusFactor];
    }
    r0 = [r21 initWithPosition:r22 minRadius:0x0 maxRadius:&var_78 viewDelegate:r5 joystickType:r6 updateBlock:r7 maxDetectionFactor:stack[-144]];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mJoystickMove));
    *(r19 + r21) = r0;
    [[GameplaySettings sharedGameplaySettings] aimMinVariationStep];
    [*(r19 + r21) setMinAxisVariationStep:r22];
    [[GameplaySettings sharedGameplaySettings] aimMinAngleVariationStep];
    [*(r19 + r21) setMinAngleVariationStep:r22];
    [*(r19 + r21) setJoystickType:0x0];
    return;
}

-(void)touchesBegan:(void *)arg2 withEvent:(void *)arg3 {
    [self->mInputDispatcher touchesBegan:arg2];
    return;
}

-(void)createAimShootJoystick {
    r31 = r31 - 0x90;
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
    r0 = objc_alloc();
    r0 = [r0 initWithEaseFactor:0x1 withCross:r3];
    r0 = [r0 autorelease];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(mJoystickAimShootView));
    *(r19 + r22) = r0;
    [r19->mBaseNode addChild:r0 z:0x2];
    [*(r19 + r22) getBackgroundRadius];
    v8 = v0;
    r21 = objc_alloc();
    [r19 getDefaultRightJoystickPosition];
    v9 = v0;
    v10 = v1;
    [[GameplaySettings sharedGameplaySettings] minDPadRadiusFactor];
    r22 = *(r19 + r22);
    if (*(int32_t *)(int64_t *)&r19->mUseDynamicJoystickReposition == 0x0) {
            [[GameplaySettings sharedGameplaySettings] maxDPadDetectionRadiusFactor];
    }
    r0 = [r21 initWithPosition:r22 minRadius:0x1 maxRadius:&var_78 viewDelegate:r5 joystickType:r6 updateBlock:r7 maxDetectionFactor:stack[-144]];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mJoystickAimShoot));
    *(r19 + r21) = r0;
    [[GameplaySettings sharedGameplaySettings] aimMinVariationStep];
    [*(r19 + r21) setMinAxisVariationStep:r22];
    [[GameplaySettings sharedGameplaySettings] aimMinAngleVariationStep];
    [*(r19 + r21) setMinAngleVariationStep:r22];
    [*(r19 + r21) setJoystickType:0x1];
    return;
}

-(void)spawnJoystick:(void *)arg2 withTouch:(void *)arg3 withLocation:(struct CGPoint)arg4 {
    memcpy(&r4, &arg4, 0x8);
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
    v8 = v1;
    v9 = v0;
    r22 = r3;
    r19 = r2;
    if (*(int32_t *)(int64_t *)&r0->mUseDynamicJoystickReposition != 0x0) {
            r20 = r0;
            if (*(int8_t *)(r0 + sign_extend_64(*(int32_t *)ivar_offset(mAutoPoint))) == 0x0) {
                    asm { fcsel      s12, s0, s1, eq };
            }
            [[CCDirector sharedDirector] convertToGL:r2];
            v10 = v9;
            v11 = v8;
            loc_10031164c([r19 axis], @selector(axis), r2, r3, r4);
            [r19 setPosition:r2];
            [r19 touchBegan:r22 point:r3];
            v2 = v12;
            [r20 followJoystick:r19 withPoint:r3 factor:r4];
            [r19 position];
            [r19 joystickFollowTarget];
            if (d12 == 0x0) {
                    asm { fccmp      d13, d1, #0x0, eq };
            }
            if (!CPU_FLAGS & E) {
                    [r19 joystickFollowTarget];
            }
            [r19 setPosition:r2];
            [r19 position];
            [r19 setJoystickFollowTarget:r2];
            [r19 touchMoved:r22 point:r3];
            [r19 axis];
            sub_1003115a8();
            if (0x0 <= *0x100b9b600) {
                    sub_1005c39ac();
                    [r19 setAxis:r2];
                    [r20 onInputAxisChangedCallback:0x2 priority:r3];
            }
            r0 = [r19 axis];
            r29 = saved_fp;
            r30 = stack[-8];
            r31 = r31 + 0x80;
            r1 = @selector(axis);
            asm { fcvt       s2, d1 };
            asm { fcvt       s1, d0 };
            atan2f(r0, r1);
            asm { fcvt       d0, s0 };
    }
    else {
            [r19 touchBegan:r22 point:r3];
    }
    return;
}

-(void)touchesMoved:(void *)arg2 withEvent:(void *)arg3 {
    [self->mInputDispatcher touchesMoved:arg2];
    return;
}

-(void)touchesEnded:(void *)arg2 withEvent:(void *)arg3 {
    [self->mInputDispatcher touchesEnded:arg2];
    return;
}

-(void)touchesCancelled:(void *)arg2 withEvent:(void *)arg3 {
    [self->mInputDispatcher touchesCancelled:arg2];
    return;
}

-(void)touchesBegan:(void *)arg2 currentNumTouches:(unsigned int)arg3 {
    [self onTouchesBegan:arg2 original:0x1];
    return;
}

-(void)onTouchesBegan:(void *)arg2 original:(bool)arg3 {
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
    r20 = self;
    [[CCDirector sharedDirector] winSize];
    [r20 dismissTutorial];
    v0 = 0x0;
    var_130 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_150 = arg2;
    var_168 = r1;
    r0 = objc_msgSend(arg2, r1);
    if (r0 == 0x0) goto loc_100025ae4;

loc_100025948:
    r22 = r0;
    r27 = *var_130;
    d10 = d8 * 0x3fe0000000000000;
    r19 = sign_extend_64(*(int32_t *)ivar_offset(mShootJoystickOnRight));
    goto loc_100025964;

loc_100025964:
    r26 = 0x0;
    goto loc_1000259a4;

loc_1000259a4:
    if (*var_130 != r27) {
            objc_enumerationMutation(var_150);
    }
    r21 = *(var_138 + r26 * 0x8);
    [r21 locationInView:[r21 view]];
    v9 = v0;
    v8 = v1;
    r8 = *(int8_t *)(r20 + r19);
    if (0x3fe0000000000000 < d10) {
            if (CPU_FLAGS & BE) {
                    r9 = 0x1;
            }
    }
    if (CPU_FLAGS & G) {
            if (CPU_FLAGS & G) {
                    r10 = 0x1;
            }
    }
    if (r8 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r9;
            }
            else {
                    r8 = r10;
            }
    }
    if (r8 != 0x1) goto loc_100025a40;

loc_100025a08:
    r28 = sign_extend_64(*(int32_t *)ivar_offset(mJoystickMoveTouches));
    if ([*(r20 + r28) count] != 0x0) goto loc_100025ab8;

loc_100025a20:
    if (([*(r20 + r28) containsObject:r2] & 0x1) != 0x0) goto loc_100025aa0;

loc_100025a34:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mJoystickMove));
    goto loc_100025a74;

loc_100025a74:
    v0 = v9;
    v1 = v8;
    [r20 spawnJoystick:*(r20 + r8) withTouch:r21 withLocation:0x10];
    [*(r20 + r28) addObject:r2];
    goto loc_100025aa0;

loc_100025aa0:
    [r20->mAllTouches addObject:r2];
    goto loc_100025ab8;

loc_100025ab8:
    r26 = r26 + 0x1;
    if (r26 < r22) goto loc_1000259a4;

loc_100025ac4:
    r0 = objc_msgSend(var_150, var_168);
    r22 = r0;
    if (r0 != 0x0) goto loc_100025964;

loc_100025ae4:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100025a40:
    r28 = sign_extend_64(*(int32_t *)ivar_offset(mJoystickAimShootTouches));
    if ([*(r20 + r28) count] != 0x0) goto loc_100025ab8;

loc_100025a58:
    if (([*(r20 + r28) containsObject:r2] & 0x1) != 0x0) goto loc_100025aa0;

loc_100025a6c:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mJoystickAimShoot));
    goto loc_100025a74;
}

-(void)resetControls {
    *(int128_t *)0x1011dea78 = 0x0;
    *(int128_t *)0x1011dea80 = 0x0;
    *(int16_t *)0x1011dea88 = 0x0;
    return;
}

-(void)touchesCancelled:(void *)arg2 currentNumTouches:(unsigned int)arg3 {
    [self touchesEnded:arg2 currentNumTouches:arg3];
    return;
}

-(void)touchesMoved:(void *)arg2 currentNumTouches:(unsigned int)arg3 {
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
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffff90 - 0x1f0;
    r19 = self;
    r2 = [self->mJoystickMoveTouches lastObject];
    var_1F8 = r2;
    r2 = [NSValue valueWithPointer:r2];
    var_238 = arg2;
    r0 = [arg2 objectForKey:r2];
    v0 = 0x0;
    var_1A0 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r2 = &var_1B0;
    r3 = r29 - 0xf0;
    var_230 = r1;
    var_228 = r0;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r27 = r0;
            r22 = *var_1A0;
            r23 = sign_extend_64(*(int32_t *)ivar_offset(mUseDynamicJoystickReposition));
            do {
                    r24 = 0x0;
                    do {
                            if (*var_1A0 != r22) {
                                    objc_enumerationMutation(var_228);
                            }
                            r25 = *(var_1A8 + r24 * 0x8);
                            if (*(int32_t *)(r19 + r23) != 0x0) {
                                    r28 = [CCDirector sharedDirector];
                                    [r25 touchPoint];
                                    [r28 convertToGL:r2];
                                    r20 = sign_extend_64(*(int32_t *)ivar_offset(mJoystickMove));
                                    r28 = *(r19 + r20);
                                    [[GameplaySettings sharedGameplaySettings] maxDPadDetectionRadiusFactor];
                                    v0 = v0;
                                    v1 = v1;
                                    [r19 followJoystick:r28 withPoint:r3 factor:0x10];
                            }
                            else {
                                    r20 = sign_extend_64(*(int32_t *)ivar_offset(mJoystickMove));
                            }
                            r28 = *(r19 + r20);
                            [r25 touchPoint];
                            r2 = var_1F8;
                            [r28 touchMoved:r2 point:r3];
                            r24 = r24 + 0x1;
                    } while (r24 < r27);
                    r2 = &var_1B0;
                    r3 = r29 - 0xf0;
                    r0 = objc_msgSend(var_228, var_230);
                    r27 = r0;
            } while (r0 != 0x0);
    }
    var_1F8 = [r19->mJoystickAimShootTouches lastObject];
    [NSValue valueWithPointer:r2];
    r0 = [var_238 objectForKey:r2];
    v0 = 0x0;
    var_1E0 = q0;
    r2 = &var_1F0;
    r3 = &stack[-384];
    var_228 = r0;
    r0 = objc_msgSend(r0, var_230);
    if (r0 != 0x0) {
            r23 = r0;
            r25 = *var_1E0;
            r26 = sign_extend_64(*(int32_t *)ivar_offset(mUseDynamicJoystickReposition));
            r27 = sign_extend_64(*(int32_t *)ivar_offset(mJoystickAimShoot));
            do {
                    r28 = 0x0;
                    do {
                            if (*var_1E0 != r25) {
                                    objc_enumerationMutation(var_228);
                            }
                            r24 = *(var_1E8 + r28 * 0x8);
                            if (*(int32_t *)(r19 + r26) != 0x0) {
                                    r22 = [CCDirector sharedDirector];
                                    [r24 touchPoint];
                                    [r22 convertToGL:r2];
                                    r22 = *(r19 + r27);
                                    [[GameplaySettings sharedGameplaySettings] maxDPadDetectionRadiusFactor];
                                    v0 = v0;
                                    v1 = v1;
                                    [r19 followJoystick:r22 withPoint:r3 factor:0x10];
                            }
                            r22 = *(r19 + r27);
                            [r24 touchPoint];
                            r2 = var_1F8;
                            [r22 touchMoved:r2 point:r3];
                            r28 = r28 + 0x1;
                    } while (r28 < r23);
                    r2 = &var_1F0;
                    r3 = &stack[-384];
                    r0 = objc_msgSend(var_228, var_230);
                    r23 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)touchEndedForJoystick:(void *)arg2 withTouches:(void *)arg3 currentNumTouches:(unsigned int)arg4 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1c0;
    var_1F8 = arg2;
    r24 = self;
    r23 = (int64_t *)&self->mJoystickAimShootTouches;
    r0 = *r23;
    r0 = [r0 lastObject];
    var_1F0 = arg3;
    var_1E8 = r0;
    var_190 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_200 = r1;
    r0 = objc_msgSend(arg3, r1);
    if (r0 == 0x0) goto loc_1000262b0;

loc_100026028:
    r25 = r0;
    r21 = 0x0;
    r19 = *var_190;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mAllTouches));
    do {
            r22 = 0x0;
            do {
                    if (*var_190 != r19) {
                            objc_enumerationMutation(var_1F0);
                    }
                    r28 = *(var_198 + r22 * 0x8);
                    r0 = *r23;
                    r0 = [r0 count];
                    r8 = var_1E8;
                    if (r28 == r8) {
                            if (CPU_FLAGS & E) {
                                    r8 = 0x1;
                            }
                    }
                    r8 = r21 | r8;
                    if (r0 == 0x0) {
                            if (!CPU_FLAGS & E) {
                                    r21 = r8;
                            }
                            else {
                                    r21 = r21;
                            }
                    }
                    [*r23 removeObject:r2];
                    objc_msgSend(*(r24 + r20), r27);
                    r22 = r22 + 0x1;
            } while (r22 < r25);
            r2 = &var_1A0;
            r0 = objc_msgSend(var_1F0, var_200);
            r25 = r0;
    } while (r0 != 0x0);
    if ((r21 & 0x1) == 0x0) goto loc_1000262b0;

loc_1000260e8:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mUseDynamicJoystickReposition));
    r8 = *(int32_t *)(r24 + r8);
    r0 = *r23;
    if (r8 == 0x0) goto loc_100026168;

loc_1000260fc:
    if ([r0 count] == 0x0) goto loc_10002625c;

loc_100026108:
    [r24->mJoystickMove clearTouches];
    [r24 onTouchesBegan:[NSSet setWithObject:[*r23 lastObject]] original:0x0];
    r8 = &@selector(removeLastObject);
    goto loc_100026184;

loc_100026184:
    objc_msgSend(*r23, *r8);
    var_1D0 = q0;
    r0 = objc_msgSend(var_1F0, var_200);
    if (r0 != 0x0) {
            r22 = r0;
            r19 = *var_1D0;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_1D0 != r19) {
                                    objc_enumerationMutation(var_1F0);
                            }
                            [*(var_1D8 + r28 * 0x8) view];
                            objc_msgSend(r26, r24);
                            objc_msgSend(var_1F8, r25);
                            r28 = r28 + 0x1;
                    } while (r28 < r22);
                    r0 = objc_msgSend(var_1F0, var_200);
                    r22 = r0;
            } while (r0 != 0x0);
    }
    goto loc_1000262b0;

loc_1000262b0:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_10002625c:
    [var_1F8 clearTouches];
    [r24 getDefaultLeftJoystickPosition];
    [var_1F8 setPosition:r2];
    [var_1F8 position];
    [var_1F8 setJoystickFollowTarget:r2];
    goto loc_1000262b0;

loc_100026168:
    [r0 lastObject];
    r23 = (int64_t *)&r24->mJoystickAimShoot;
    r8 = &@selector(clearTouches);
    goto loc_100026184;
}

-(void)touchesEnded:(void *)arg2 currentNumTouches:(unsigned int)arg3 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x450;
    r20 = self;
    var_310 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_430 = r1;
    var_428 = arg2;
    r0 = objc_msgSend(arg2, r1);
    var_440 = r0;
    if (r0 == 0x0) goto loc_100026928;

loc_100026358:
    var_448 = *var_310;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(mJoystickMoveTouches));
    var_458 = r23;
    goto loc_100026370;

loc_100026370:
    r19 = 0x0;
    r21 = @selector(containsObject:);
    var_450 = r21;
    goto loc_1000263ec;

loc_1000263ec:
    if (*var_310 != var_448) {
            objc_enumerationMutation(var_428);
    }
    var_438 = r19;
    r25 = *(var_318 + r19 * 0x8);
    if (objc_msgSend(*(r20 + r23), r21) == 0x0) goto loc_100026588;

loc_100026428:
    r26 = [*(r20 + r23) lastObject];
    var_350 = q0;
    r0 = objc_msgSend(var_428, var_430);
    if (r0 == 0x0) goto loc_100026928;

loc_10002645c:
    r28 = r0;
    r22 = 0x0;
    r19 = *var_350;
    do {
            r21 = 0x0;
            do {
                    if (*var_350 != r19) {
                            objc_enumerationMutation(var_428);
                    }
                    r8 = var_358;
                    r24 = *(r8 + r21 * 0x8);
                    r0 = *(r20 + r23);
                    r0 = [r0 count];
                    if (r24 == r26) {
                            if (CPU_FLAGS & E) {
                                    r8 = 0x1;
                            }
                    }
                    r8 = r22 | r8;
                    if (r0 == 0x0) {
                            if (!CPU_FLAGS & E) {
                                    r22 = r8;
                            }
                            else {
                                    r22 = r22;
                            }
                    }
                    [*(r20 + r23) removeObject:r2];
                    objc_msgSend(r20->mAllTouches, r25);
                    r21 = r21 + 0x1;
            } while (r21 < r28);
            r0 = objc_msgSend(var_428, var_430);
            r28 = r0;
    } while (r0 != 0x0);
    if ((r22 & 0x1) == 0x0) goto loc_100026928;

loc_100026514:
    if (*(int32_t *)(int64_t *)&r20->mUseDynamicJoystickReposition == 0x0) goto loc_100026704;

loc_100026524:
    r24 = [*(r20 + r23) count];
    r21 = *(int32_t *)ivar_offset(mJoystickMove);
    [*(r20 + (r21 << @selector(count))) clearTouches];
    if (r24 == 0x0) goto loc_1000267e4;

loc_10002654c:
    r24 = [NSSet setWithArray:*(r20 + r23)];
    [*(r20 + r23) removeAllObjects];
    [r20 onTouchesBegan:r24 original:0x0];
    goto loc_100026718;

loc_100026718:
    var_390 = q0;
    r0 = objc_msgSend(var_428, var_430);
    if (r0 != 0x0) {
            r26 = r0;
            r19 = *var_390;
            asm { sxtw       x21, w21 };
            do {
                    r23 = 0x0;
                    do {
                            if (*var_390 != r19) {
                                    objc_enumerationMutation(var_428);
                            }
                            r24 = *(var_398 + r23 * 0x8);
                            [r24 view];
                            objc_msgSend(r24, r27);
                            objc_msgSend(r22, r28);
                            r23 = r23 + 0x1;
                    } while (r23 < r26);
                    r0 = objc_msgSend(var_428, var_430);
                    r26 = r0;
            } while (r0 != 0x0);
    }
    goto loc_1000268f8;

loc_1000268f8:
    r19 = var_438 + 0x1;
    r23 = var_458;
    r21 = var_450;
    if (r19 < var_440) goto loc_1000263ec;

loc_10002690c:
    r0 = objc_msgSend(var_428, var_430);
    var_440 = r0;
    if (r0 != 0x0) goto loc_100026370;

loc_100026928:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_1000267e4:
    var_4A0 = @selector(setJoystickFollowTarget:);
    var_488 = @selector(getDefaultLeftJoystickPosition);
    var_490 = @selector(setPosition:);
    var_498 = @selector(position);
    asm { sxtw       x19, w21 };
    objc_msgSend(r20, var_488);
    objc_msgSend(*(r20 + r19), var_490);
    objc_msgSend(*(r20 + r19), var_498);
    objc_msgSend(*(r20 + r19), var_4A0);
    goto loc_1000268f8;

loc_100026704:
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mJoystickMove));
    [*(r20 + r21) clearTouches];
    goto loc_100026718;

loc_100026588:
    r24 = sign_extend_64(*(int32_t *)ivar_offset(mJoystickAimShootTouches));
    if (objc_msgSend(*(r20 + r24), r21) == 0x0) goto loc_1000268f8;

loc_1000265a4:
    r26 = [*(r20 + r24) lastObject];
    var_3D0 = q0;
    r0 = objc_msgSend(var_428, var_430);
    if (r0 == 0x0) goto loc_100026928;

loc_1000265d8:
    r28 = r0;
    r21 = 0x0;
    r19 = *var_3D0;
    do {
            r23 = 0x0;
            do {
                    if (*var_3D0 != r19) {
                            objc_enumerationMutation(var_428);
                    }
                    r8 = var_3D8;
                    r22 = *(r8 + r23 * 0x8);
                    r0 = *(r20 + r24);
                    r0 = [r0 count];
                    if (r22 == r26) {
                            if (CPU_FLAGS & E) {
                                    r8 = 0x1;
                            }
                    }
                    r8 = r21 | r8;
                    if (r0 == 0x0) {
                            if (!CPU_FLAGS & E) {
                                    r21 = r8;
                            }
                            else {
                                    r21 = r21;
                            }
                    }
                    [*(r20 + r24) removeObject:r2];
                    objc_msgSend(r20->mAllTouches, r25);
                    r23 = r23 + 0x1;
            } while (r23 < r28);
            r0 = objc_msgSend(var_428, var_430);
            r28 = r0;
    } while (r0 != 0x0);
    if ((r21 & 0x1) == 0x0) goto loc_100026928;

loc_100026690:
    if (*(int32_t *)(int64_t *)&r20->mUseDynamicJoystickReposition == 0x0) goto loc_10002681c;

loc_1000266a0:
    r22 = [*(r20 + r24) count];
    r21 = *(int32_t *)ivar_offset(mJoystickAimShoot);
    [*(r20 + (r21 << @selector(count))) clearTouches];
    if (r22 == 0x0) goto loc_1000267e4;

loc_1000266c8:
    r22 = [NSSet setWithArray:*(r20 + r24)];
    [*(r20 + r24) removeAllObjects];
    [r20 onTouchesBegan:r22 original:0x0];
    goto loc_100026830;

loc_100026830:
    var_410 = q0;
    r0 = objc_msgSend(var_428, var_430);
    if (r0 != 0x0) {
            r26 = r0;
            r19 = *var_410;
            asm { sxtw       x21, w21 };
            do {
                    r23 = 0x0;
                    do {
                            if (*var_410 != r19) {
                                    objc_enumerationMutation(var_428);
                            }
                            r22 = *(var_418 + r23 * 0x8);
                            [r22 view];
                            objc_msgSend(r22, r27);
                            objc_msgSend(r24, r28);
                            r23 = r23 + 0x1;
                    } while (r23 < r26);
                    r0 = objc_msgSend(var_428, var_430);
                    r26 = r0;
            } while (r0 != 0x0);
    }
    goto loc_1000268f8;

loc_10002681c:
    r21 = sign_extend_64(*(int32_t *)ivar_offset(mJoystickAimShoot));
    [*(r20 + r21) clearTouches];
    goto loc_100026830;
}

@end