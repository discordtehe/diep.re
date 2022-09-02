@implementation FBAdChooseYourOwnAdViewController

-(void *)initWithModel:(void *)arg2 delegate:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg2;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            objc_storeWeak((int64_t *)&r21->_delegate, r20);
            objc_storeStrong((int64_t *)&r21->_model, r22);
            r21->_previewImpressionTime = 0xbff0000000000000;
            [r21 setupWithModel:r19];
            [r21 prefetchVideosAndImagesForDataModel:r19];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)dealloc {
    [self removeObservers];
    [self stopTimer];
    [[&var_20 super] dealloc];
    return;
}

-(long long)secondsLeft {
    r0 = [self model];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 config];
    r0 = [r0 retain];
    r22 = [r0 countdownTimeMs];
    [r0 release];
    [r20 release];
    r0 = [self msPassed];
    r8 = (r22 - r0 & !((r22 - r0) / 0xffffffff80000000)) >> 0x3;
    asm { umulh      x8, x8, x9 };
    r0 = r8 >> 0x4;
    return r0;
}

-(void)updateCountdownLabelText {
    r22 = [self secondsLeft];
    r19 = [[self countdownLabel] retain];
    r0 = [self model];
    r0 = [r0 retain];
    r20 = [[r0 config] retain];
    [r0 release];
    r21 = [[r20 timerTextTranslation] retain];
    r23 = [[r20 secondsKey] retain];
    r0 = [NSNumber numberWithInteger:r22];
    r0 = [r0 retain];
    r24 = [[r0 stringValue] retain];
    r25 = [[r21 stringByReplacingOccurrencesOfString:r23 withString:r24] retain];
    [r19 setText:r25];
    [r25 release];
    [r24 release];
    [r0 release];
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)handleTimeout {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self hasTimedOut] & 0x1) == 0x0) {
            r21 = [r19 msPassed];
            r0 = [r19 model];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 config];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 countdownTimeMs];
            [r0 release];
            [r22 release];
            if (r21 >= r24) {
                    [r19 setHasTimedOut:0x1];
                    [r19 stopTimerAndCardAnimations];
                    r0 = [r19 defaultAdIndexOrFirstNonReported];
                    if (r0 <= 0x7ffffffffffffffe) {
                            r21 = r0;
                            r0 = [r19 cards];
                            r29 = r29;
                            r0 = [r0 retain];
                            r24 = [r0 count];
                            [r0 release];
                            if (r24 >= r21) {
                                    r0 = [r19 cards];
                                    r0 = [r0 retain];
                                    r24 = [[r0 objectAtIndexedSubscript:r21] retain];
                                    [r19 setChosenCard:r24];
                                    [r24 release];
                                    [r0 release];
                                    [r19 removeObservers];
                                    r0 = [r19 model];
                                    r0 = [r0 retain];
                                    r23 = r0;
                                    r0 = [r0 choosableAds];
                                    r0 = [r0 retain];
                                    r20 = [[r0 objectAtIndexedSubscript:r21] retain];
                                    [r0 release];
                                    [r23 release];
                                    r21 = [[FBAdFunnelLogging sharedFunnelLogger] retain];
                                    r22 = [[r20 inlineClientToken] retain];
                                    r23 = [[r21 funnelLoggerForToken:r22] retain];
                                    [r22 release];
                                    [r21 release];
                                    [r23 logAdSelectionTimeoutWithData:0x0];
                                    [r19 tellDelegateModelWasChosen:r20 touchData:0x0];
                                    [r23 release];
                                    [r20 release];
                            }
                            else {
                                    [r19 dismissViewControllerAnimated:0x1 completion:0x0];
                            }
                    }
                    else {
                            [r19 dismissViewControllerAnimated:0x1 completion:0x0];
                    }
            }
    }
    return;
}

-(long long)defaultAdIndexOrFirstNonReported {
    var_40 = r26;
    stack[-72] = r25;
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
    r0 = [self model];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 config];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = [r0 defaultAdIndex];
    [r0 release];
    [r22 release];
    if ((r20 & 0xffffffff80000000) == 0x0) {
            r0 = [r19 model];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 choosableAds];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 count];
            [r0 release];
            [r23 release];
            if (r20 < r25) {
                    r23 = [[r19 reportedAds] retain];
                    r0 = [r19 model];
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = [r0 choosableAds];
                    r0 = [r0 retain];
                    r24 = [[r0 objectAtIndexedSubscript:r20] retain];
                    r25 = [r23 containsObject:r2];
                    [r24 release];
                    [r0 release];
                    [r21 release];
                    [r23 release];
                    if (r25 != 0x0) {
                            r0 = [r19 firstNonReportedIndex];
                    }
                    else {
                            r0 = r20;
                    }
            }
            else {
                    r20 = 0x7fffffffffffffff;
                    r0 = r20;
            }
    }
    else {
            r20 = 0x7fffffffffffffff;
            r0 = r20;
    }
    return r0;
}

-(void)prefetchVideosAndImagesForDataModel:(void *)arg2 {
    r31 = r31 - 0x1d0;
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
    r24 = self;
    r0 = [arg2 retain];
    r22 = r0;
    r0 = [r0 choosableAds];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 count];
    [r0 release];
    if (r21 != 0x0) {
            r21 = dispatch_group_create();
            var_120 = q0;
            r0 = [r22 choosableAds];
            r29 = r29;
            r0 = [r0 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_1B0 = r1;
            var_1A8 = r0;
            r0 = objc_msgSend(r0, r1);
            var_198 = r0;
            if (r0 != 0x0) {
                    var_1C0 = r24;
                    stack[-456] = r22;
                    var_1A0 = *var_120;
                    do {
                            r24 = 0x0;
                            do {
                                    if (*var_120 != var_1A0) {
                                            objc_enumerationMutation(var_1A8);
                                    }
                                    r23 = *(var_128 + r24 * 0x8);
                                    r19 = [NSMutableArray new];
                                    r0 = [r23 imageURL];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 release];
                                    if (r0 != 0x0) {
                                            r0 = [r23 imageURL];
                                            r29 = r29;
                                            r22 = [r0 retain];
                                            [r19 addObject:r22];
                                            [r22 release];
                                    }
                                    r0 = [r23 iconURL];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 release];
                                    if (r0 != 0x0) {
                                            r0 = [r23 iconURL];
                                            r29 = r29;
                                            r22 = [r0 retain];
                                            [r19 addObject:r22];
                                            [r22 release];
                                    }
                                    dispatch_group_enter(r21);
                                    r23 = [r21 retain];
                                    objc_msgSend(@class(FBAdUtility), r20);
                                    [r0 release];
                                    [r19 release];
                                    r24 = r24 + 0x1;
                            } while (r24 < var_198);
                            r0 = objc_msgSend(var_1A8, var_1B0);
                            var_198 = r0;
                    } while (r0 != 0x0);
                    r24 = var_1C0;
                    r22 = stack[-456];
            }
            else {
                    r23 = r21;
            }
            [var_1A8 release];
            objc_initWeak(&stack[-376], r24);
            objc_copyWeak(&var_190 + 0x20, &stack[-376]);
            dispatch_group_notify(r21, *__dispatch_main_q, &var_190);
            objc_destroyWeak(&var_190 + 0x20);
            objc_destroyWeak(&stack[-376]);
            r0 = r23;
    }
    else {
            r0 = [r24 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r19 = r0;
            if ([r0 respondsToSelector:@selector(chooseYourOwnAdViewController:didFailWithError:), r3] != 0x0) {
                    r21 = [[FBAdError getNSError:0x7d0] retain];
                    [r19 chooseYourOwnAdViewController:r24 didFailWithError:r21];
                    [r21 release];
            }
            r0 = r19;
    }
    var_70 = **___stack_chk_guard;
    [r0 release];
    [r22 release];
    if (**___stack_chk_guard != var_70) {
            __stack_chk_fail();
    }
    return;
}

-(long long)firstNonReportedIndex {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self model];
    r0 = [r0 retain];
    r24 = [[r0 choosableAds] retain];
    r19 = [[NSMutableSet setWithArray:r24] retain];
    [r24 release];
    [r0 release];
    r23 = [[r20 reportedAds] retain];
    [r19 minusSet:r23];
    [r23 release];
    r0 = [r19 anyObject];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 != 0x0) {
            r0 = [r20 model];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 choosableAds];
            r0 = [r0 retain];
            r20 = [r0 indexOfObject:r23];
            [r0 release];
            [r21 release];
    }
    else {
            r20 = 0x7fffffffffffffff;
    }
    [r23 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)tellDelegateModelWasChosen:(void *)arg2 touchData:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r21 delegate];
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 respondsToSelector:@selector(chooseYourOwnAdViewController:didSelectAd:touchData:), r3, r4] != 0x0) {
            [r22 chooseYourOwnAdViewController:r21 didSelectAd:r19 touchData:r20];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)startTimerAndCardAnimations {
    [self startTimer];
    [self startCardAnimations];
    return;
}

-(void)stopTimerAndCardAnimations {
    [self stopTimer];
    [self stopCardAnimations];
    return;
}

-(void)stopTimer {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self countdownTimer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 countdownTimer];
            r0 = [r0 retain];
            [r0 invalidate];
            [r0 release];
            [r19 setCountdownTimer:0x0];
    }
    return;
}

-(void)startTimer {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self hasTimedOut] & 0x1) == 0x0) {
            r0 = [r19 countdownTimer];
            r29 = r29;
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    [r0 release];
            }
            else {
                    r0 = [r19 chosenCard];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 == 0x0) {
                            [r19 stopTimer];
                            objc_initWeak(&stack[-56], r19);
                            objc_copyWeak(&var_50 + 0x20, &stack[-56]);
                            r0 = [FBAdTimer scheduledTimerWithTimeInterval:0x1 repeats:&var_50 block:r4];
                            r21 = [r0 retain];
                            [r19 setCountdownTimer:r21];
                            [r21 release];
                            objc_destroyWeak(&var_50 + 0x20);
                            objc_destroyWeak(&stack[-56]);
                    }
            }
    }
    return;
}

-(void)stopCardAnimations {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self cards];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 count];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [r19 cards];
            r0 = [r0 retain];
            [r0 enumerateObjectsUsingBlock:0x100ea8650];
            [r0 release];
    }
    return;
}

-(void)startCardAnimations {
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
    r31 = r31 + 0xffffffffffffffb0 - 0x300;
    r19 = self;
    r0 = [self cards];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 count] != 0x2) goto loc_100a23ca4;

loc_100a23c74:
    r23 = @selector(count);
    r0 = [r19 reportedAds];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (objc_msgSend(r0, r23) == 0x0) goto loc_100a23cc4;

loc_100a23c9c:
    [r22 release];
    goto loc_100a23ca4;

loc_100a23ca4:
    [r21 release];
    return;

loc_100a23cc4:
    r0 = [r19 chosenCard];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    [r21 release];
    if (r0 == 0x0) {
            r0 = [r19 model];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 config];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 pulseAnimationDuration];
            if (r0 == 0x0) {
            }
            r20 = @selector(cards);
            asm { ucvtf      d0, x8 };
            asm { fdiv       d8, d0, d1 };
            [r22 release];
            [r21 release];
            r0 = objc_msgSend(r19, r20);
            r0 = [r0 retain];
            [[r0 objectAtIndexedSubscript:0x0] retain];
            [r0 release];
            r0 = objc_msgSend(r19, r20);
            r0 = [r0 retain];
            [[r0 objectAtIndexedSubscript:0x0] retain];
            CATransform3DMakeScale(CATransform3DMakeScale([r0 release], @selector(objectAtIndexedSubscript:), 0x1), @selector(objectAtIndexedSubscript:), 0x1);
            [r19 animateCard:r21 animationDuration:&var_1C0 startTransform:&var_240 endTransform:r5];
            [r19 animateCard:r20 animationDuration:&var_2C0 startTransform:&var_340 endTransform:r5];
            [r20 release];
            [r21 release];
    }
    return;
}

-(void)animateCard:(void *)arg2 animationDuration:(double)arg3 startTransform:(struct CATransform3D)arg4 endTransform:(struct CATransform3D)arg5 {
    memcpy(&r5, &arg5, 0x8);
    memcpy(&r4, &arg4, 0x8);
    [arg2 retain];
    objc_initWeak(&saved_fp - 0x78, self);
    [r23 retain];
    q0 = *(int128_t *)arg3;
    q1 = *(int128_t *)(arg3 + 0x10);
    q2 = *(int128_t *)(arg3 + 0x20);
    *(int128_t *)(&var_120 + 0x58) = *(int128_t *)(arg3 + 0x30);
    *(int128_t *)(&var_120 + 0x48) = q2;
    *(int128_t *)(&var_120 + 0x38) = q1;
    *(int128_t *)(&var_120 + 0x28) = q0;
    q0 = *(int128_t *)(arg3 + 0x40);
    q1 = *(int128_t *)(arg3 + 0x50);
    q2 = *(int128_t *)(arg3 + 0x60);
    *(int128_t *)(&var_120 + 0x98) = *(int128_t *)(arg3 + 0x70);
    *(int128_t *)(&var_120 + 0x88) = q2;
    *(int128_t *)(&var_120 + 0x78) = q1;
    *(int128_t *)(&var_120 + 0x68) = q0;
    objc_copyWeak(&var_258 + 0x28, &saved_fp - 0x78);
    [r23 retain];
    q0 = *(int128_t *)(r4 + 0x40);
    q1 = *(int128_t *)(r4 + 0x50);
    q2 = *(int128_t *)(r4 + 0x60);
    q3 = *(int128_t *)(r4 + 0x70);
    *(int128_t *)(&var_258 + 0x118) = q2;
    *(int128_t *)(&var_258 + 0x128) = q3;
    *(int128_t *)(&var_258 + 0x108) = q1;
    q1 = *(int128_t *)r4;
    q2 = *(int128_t *)(r4 + 0x10);
    q3 = *(int128_t *)(r4 + 0x20);
    *(int128_t *)(&var_258 + 0xe8) = *(int128_t *)(r4 + 0x30);
    *(int128_t *)(&var_258 + 0xd8) = q3;
    *(int128_t *)(&var_258 + 0xc8) = q2;
    *(int128_t *)(&var_258 + 0xb8) = q1;
    *(int128_t *)(&var_258 + 0xf8) = q0;
    [UIView animateWithDuration:r2 delay:r3 options:r4 animations:r5 completion:r6];
    [r0 release];
    objc_destroyWeak(&var_258 + 0x28);
    [r0 release];
    objc_destroyWeak(&saved_fp - 0x78);
    [r23 release];
    return;
}

-(void)firstTimeVisibleActions {
    r31 = r31 - 0x70;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [NSDate timeIntervalSinceReferenceDate];
    [r19 setPreviewImpressionTime:r2];
    r0 = [r19 cards];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 count];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [r19 cards];
            r0 = [r0 retain];
            [r0 enumerateObjectsUsingBlock:&var_60];
            [r0 release];
    }
    return;
}

-(void)setupWithModel:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x230;
    r0 = [arg2 retain];
    self->_msPassed = 0x0;
    r26 = [[r0 config] retain];
    r27 = [FBAdTouchRecordingView new];
    r19 = [[r26 backgroundColor] retain];
    r20 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    r21 = [sub_100b8cfdc(r19, r20) retain];
    [r27 setBackgroundColor:r21];
    [r21 release];
    [r20 release];
    [r19 release];
    [r27 setUserInteractionEnabled:0x1];
    [r27 setTouchRecordingViewDelegate:self];
    r0 = [self view];
    r0 = [r0 retain];
    [r0 addSubview:r27];
    [r0 release];
    var_1B8 = self;
    var_230 = r27;
    objc_storeStrong((int64_t *)&self->_offTargetClickView, r27);
    var_228 = r26;
    r19 = [[r26 timerTextColor] retain];
    r20 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    r24 = [sub_100b8cfdc(r19, r20) retain];
    [r20 release];
    [r19 release];
    r19 = [FBAdCloseButton alloc];
    var_1B0 = r23;
    r0 = [r23 config];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    r21 = [r0 countdownTimeMs];
    if (*qword_1011dd1d8 != -0x1) {
            dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
    }
    (*0x1011dd1e0)(r21, 0x3e8);
    r21 = [r19 initWithForcedViewTime:&stack[-280] style:0x2];
    [r20 release];
    [r21 setProgressColor:r24];
    [r21 setUserInteractionEnabled:r2];
    [r21 setFillup:0x0];
    r22 = @selector(view);
    r27 = var_1B8;
    r0 = objc_msgSend(r27, r22);
    r0 = [r0 retain];
    r25 = @selector(addSubview:);
    objc_msgSend(r0, r25);
    [r19 release];
    var_258 = r21;
    objc_storeStrong((int64_t *)&r27->_countdownCircle, r21);
    r0 = [UILabel new];
    var_250 = r24;
    [r0 setTextColor:r24];
    r21 = [[FBAdFont sfuiTextRegularWithSize:r24] retain];
    [r0 setFont:r21];
    [r21 release];
    [r0 setUserInteractionEnabled:r2];
    r0 = objc_msgSend(r27, r22);
    r0 = [r0 retain];
    r2 = r28;
    objc_msgSend(r0, r25);
    [r21 release];
    var_260 = r28;
    objc_storeStrong((int64_t *)&r27->_countdownLabel, r28);
    [r27 updateCountdownLabelText];
    r0 = [UILabel new];
    r26 = r0;
    [r0 setNumberOfLines:0x0];
    r28 = var_228;
    r21 = [[r28 titleTextColor] retain];
    r23 = [[UIColor blackColor] retain];
    r24 = [sub_100b8cfdc(r21, r23) retain];
    [r26 setTextColor:r24];
    [r24 release];
    [r23 release];
    [r21 release];
    r0 = [r28 titleTranslation];
    r29 = r29;
    r20 = [r0 retain];
    [r26 setText:r20];
    [r20 release];
    [FBAdScreen size];
    if (0x402c000000000000 > 0x4074000000000000) {
            asm { fcsel      d0, d0, d1, gt };
    }
    r20 = [[FBAdFont sfuiDisplaySemiboldWithSize:r2] retain];
    [r26 setFont:r20];
    [r20 release];
    [r26 setUserInteractionEnabled:r2];
    r0 = objc_msgSend(r27, r22);
    r0 = [r0 retain];
    objc_msgSend(r0, r25);
    [r19 release];
    var_268 = r26;
    objc_storeStrong((int64_t *)&r27->_titleLabel, r26);
    r0 = [NSMutableArray new];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_cards));
    r8 = *(r27 + r9);
    var_1E0 = r9;
    *(r27 + r9) = r0;
    [r8 release];
    r21 = var_1B0;
    r0 = [r21 choosableAds];
    r0 = [r0 retain];
    var_1E8 = [r0 count];
    [r0 release];
    var_140 = q0;
    r0 = [r21 choosableAds];
    r29 = r29;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_208 = r0;
    var_220 = r1;
    r0 = objc_msgSend(r0, r1);
    var_160 = r0;
    if (r0 != 0x0) {
            var_1F0 = *var_140;
            do {
                    r20 = 0x0;
                    do {
                            if (*var_140 != var_1F0) {
                                    objc_enumerationMutation(var_208);
                            }
                            r19 = *(var_148 + r20 * 0x8);
                            r0 = [r19 adCreativeType];
                            r29 = r29;
                            r0 = [r0 retain];
                            r23 = r0;
                            r22 = [r0 isEqualToString:@"contextual_app"];
                            [r23 release];
                            if ([r19 iconType] == 0x1) {
                                    asm { csinc      x21, x8, xzr, eq };
                            }
                            r0 = [var_1B0 config];
                            r29 = r29;
                            r0 = [r0 retain];
                            r24 = r0;
                            r0 = [r0 shouldShowRating];
                            var_158 = r21;
                            if ((r0 & 0x1) != 0x0) {
                                    r0 = [r19 starRatingValue];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 release];
                                    [r24 release];
                                    if (r0 != 0x0) {
                                            r0 = [r19 starRatingValue];
                                            r0 = [r0 retain];
                                            r27 = [[r0 stringValue] retain];
                                            [r0 release];
                                            r0 = [r19 category];
                                            r29 = r29;
                                            r24 = [r0 retain];
                                            r28 = 0x2;
                                    }
                                    else {
                                            if (r22 == 0x0) {
                                                    asm { cinc       x28, x8, eq };
                                            }
                                            r0 = [r19 destinationTitle];
                                            r29 = r29;
                                            r27 = [r0 retain];
                                            r24 = 0x0;
                                    }
                            }
                            else {
                                    [r24 release];
                                    if (r22 == 0x0) {
                                            asm { cinc       x28, x8, eq };
                                    }
                                    r0 = [r19 destinationTitle];
                                    r29 = r29;
                                    r27 = [r0 retain];
                                    r24 = 0x0;
                            }
                            r21 = r22;
                            if (var_1E8 > 0x2) {
                                    if (CPU_FLAGS & A) {
                                            r23 = 0x1;
                                    }
                            }
                            r25 = [FBAdChooseYourOwnAdCard alloc];
                            r22 = [[r19 imageURL] retain];
                            r26 = [[r19 iconURL] retain];
                            r0 = [r19 advertiserName];
                            r0 = [r0 retain];
                            r21 = [r25 initWithDelegate:var_1B8 imageUrl:r22 iconUrl:r26 iconStyle:r21 adOptionsIconStyle:var_158 smallIconStyle:r28 title:r0 firstSubtitle:r27 secondSubtitle:r24 playIconOnTopInLandscape:r23];
                            [r0 release];
                            [r26 release];
                            [r22 release];
                            r0 = [var_1B8 view];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 addSubview:r2];
                            [r19 release];
                            [*(var_1B8 + var_1E0) addObject:r21];
                            [r21 release];
                            [r24 release];
                            [r27 release];
                            r20 = r20 + 0x1;
                    } while (r20 < var_160);
                    r0 = objc_msgSend(var_208, var_220);
                    var_160 = r0;
            } while (r0 != 0x0);
    }
    var_70 = **___stack_chk_guard;
    [var_208 release];
    [sub_100b8cfdc([[var_228 backgroundColor] retain], [[UIColor colorWithUInt:r2 withAlpha:r3] retain]) retain];
    r0 = [var_1B8 view];
    r0 = [r0 retain];
    [r0 setBackgroundColor:r2];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [var_1B8 addObservers];
    [var_268 release];
    [var_260 release];
    [var_258 release];
    [var_250 release];
    [var_230 release];
    [var_228 release];
    [var_1B0 release];
    if (**___stack_chk_guard != var_70) {
            __stack_chk_fail();
    }
    return;
}

-(void)viewWillDisappear:(bool)arg2 {
    [[&var_20 super] viewWillDisappear:arg2];
    [self stopTimerAndCardAnimations];
    return;
}

-(void)viewDidAppear:(bool)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] viewDidAppear:arg2];
    [r19 previewImpressionTime];
    if (d0 == 0xbff0000000000000) {
            [r19 firstTimeVisibleActions];
    }
    [r19 startTimerAndCardAnimations];
    return;
}

-(void)touchRecordingView:(void *)arg2 didUpdateLastTouchData:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg3 retain];
    r0 = [r20 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 respondsToSelector:@selector(chooseYourOwnAdViewController:offTargetTouch:forModel:), r3, r4] != 0x0) {
            r23 = [[r20 model] retain];
            [r21 chooseYourOwnAdViewController:r20 offTargetTouch:r19 forModel:r23];
            [r23 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)applicationWillResignActive:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self isPresentingReportFlow] & 0x1) == 0x0) {
            [r19 stopTimerAndCardAnimations];
    }
    return;
}

-(void)applicationDidBecomeActive:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self isPresentingReportFlow] & 0x1) == 0x0) {
            [r19 startTimerAndCardAnimations];
    }
    return;
}

-(void)removeObservers {
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self name:**_UIApplicationWillResignActiveNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self name:**_UIApplicationDidBecomeActiveNotification object:0x0];
    [r0 release];
    return;
}

-(void)addObservers {
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(applicationWillResignActive:) name:**_UIApplicationWillResignActiveNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(applicationDidBecomeActive:) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
    [r0 release];
    return;
}

-(bool)prefersStatusBarHidden {
    return 0x1;
}

-(void)didExitReportFlow {
    [self startTimerAndCardAnimations];
    [self setIsPresentingReportFlow:0x0];
    [self setPotentialReportedCard:0x0];
    return;
}

-(void *)dataModelForCard:(void *)arg2 {
    var_40 = r26;
    stack[-72] = r25;
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
    r21 = [arg2 retain];
    r0 = [r19 cards];
    r0 = [r0 retain];
    r20 = [r0 indexOfObject:r21];
    [r21 release];
    [r0 release];
    r0 = [r19 model];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 choosableAds];
    r0 = [r0 retain];
    r25 = @selector(count);
    r26 = objc_msgSend(r0, r25);
    [r0 release];
    [r21 release];
    r0 = [r19 model];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 choosableAds];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = r0;
    r0 = objc_msgSend(r0, r25);
    r25 = 0x0;
    if (r20 < r26) {
            r25 = 0x0;
            if (r20 != 0x7fffffffffffffff) {
                    r25 = 0x0;
                    if (r0 != 0x0) {
                            r0 = [r19 model];
                            r0 = [r0 retain];
                            r19 = r0;
                            r0 = [r0 choosableAds];
                            r0 = [r0 retain];
                            r20 = [[r0 objectAtIndexedSubscript:r20] retain];
                            [r0 release];
                            [r19 release];
                            r25 = [r20 autorelease];
                    }
            }
    }
    [r24 release];
    [r21 release];
    r0 = r25;
    return r0;
}

-(bool)allAdsAreReported {
    r0 = [self model];
    r0 = [r0 retain];
    r22 = [[r0 choosableAds] retain];
    r20 = [[NSSet setWithArray:r22] retain];
    r19 = [[self reportedAds] retain];
    r23 = [r20 isSubsetOfSet:r19];
    [r19 release];
    [r20 release];
    [r22 release];
    [r0 release];
    r0 = r23;
    return r0;
}

-(void *)reportedAds {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = (int64_t *)&self->_reportedAds;
    r0 = *r19;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) {
            r21 = [NSMutableSet new];
            [r20 release];
            objc_storeStrong(r19, r21);
            r20 = r21;
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void)viewWillLayoutSubviews {
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
    r31 = r31 + 0xffffffffffffff60 - 0x1a0;
    r20 = self;
    *(&var_10 + 0xffffffffffffff60) = **___stack_chk_guard;
    [[self view] retain];
    sub_100aabe74();
    v8 = v0;
    v9 = v1;
    [r21 release];
    r0 = [r20 view];
    r29 = &var_10;
    r0 = [r0 retain];
    [r0 bounds];
    d10 = d9 + d0;
    d12 = d8 + d1;
    d9 = d2 - d9 + d13;
    d8 = d3 - d8 + d11;
    [r0 release];
    if (sub_100aab508() == 0x0) goto loc_100a24bcc;

loc_100a24704:
    r0 = [r20 offTargetClickView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r21 release];
    d14 = d10 + 0x4030000000000000;
    r0 = [r20 countdownCircle];
    r0 = [r0 retain];
    objc_msgSend(r0, r19);
    [r21 release];
    asm { frintm     d15, d0 };
    d10 = (d9 - d15) + 0xc030000000000000;
    r0 = [r20 countdownLabel];
    r0 = [r0 retain];
    [r0 sizeThatFits:r2];
    [r23 release];
    asm { frintm     d13, d0 };
    r0 = objc_msgSend(r20, r22);
    r0 = [r0 retain];
    v11 = v14;
    objc_msgSend(r0, r19);
    r0 = [r22 release];
    CGRectGetMaxY(r0);
    asm { frintm     d12, d0 };
    asm { frintm     d9, d0 };
    r0 = [r20 titleLabel];
    r0 = [r0 retain];
    objc_msgSend(r0, r21);
    v10 = v1;
    [r23 release];
    r0 = [r20 titleLabel];
    r0 = [r0 retain];
    objc_msgSend(r0, r19);
    [r21 release];
    r0 = [r20 cards];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    asm { fcvtzs     x27, d0 };
    asm { scvtf      d12, x27 };
    asm { fcvtzs     x24, d0 };
    if ([r0 count] != 0x0) {
            asm { csinc      x20, x0, xzr, ne };
    }
    r0 = [FBAdScreen isPortrait];
    d9 = d14 + 0xc040000000000000;
    if (r0 == 0x0) goto loc_100a24a88;

loc_100a2496c:
    var_1E0 = q0;
    r0 = [r22 retain];
    r21 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_238 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_100a24bbc;

loc_100a249a0:
    d8 = 0x4030000000000000;
    r23 = r0;
    var_240 = r22;
    asm { scvtf      d0, x8 };
    asm { fcvtzs     x8, d0 };
    r28 = *var_1E0;
    asm { scvtf      d10, x8 };
    d12 = d10 + d8;
    do {
            r22 = 0x0;
            do {
                    if (*var_1E0 != r28) {
                            objc_enumerationMutation(r21);
                    }
                    r19 = @selector(setFrame:);
                    r26 = *(var_1E8 + r22 * 0x8);
                    asm { scvtf      d11, x27 };
                    objc_msgSend(r26, r19);
                    r0 = *(r20 + 0x700);
                    r0 = objc_msgSend(r0, r24);
                    r29 = r29;
                    [r0 retain];
                    objc_msgSend(r26, r25);
                    [r27 release];
                    asm { fcvtzs     x27, d0 };
                    r22 = r22 + 0x1;
            } while (r22 < r23);
            r0 = objc_msgSend(r21, var_238);
            r23 = r0;
    } while (r0 != 0x0);
    goto loc_100a24bb8;

loc_100a24bb8:
    r22 = var_240;
    goto loc_100a24bbc;

loc_100a24bbc:
    [r21 release];
    [r22 release];
    goto loc_100a24bcc;

loc_100a24bcc:
    if (**___stack_chk_guard != *(r29 + 0xffffffffffffff60)) {
            __stack_chk_fail();
    }
    return;

loc_100a24a88:
    var_220 = q0;
    r0 = [r22 retain];
    r21 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_238 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_100a24bbc;

loc_100a24abc:
    d0 = 0xc040000000000000;
    d13 = 0xc030000000000000;
    d8 = 0x4030000000000000;
    r23 = r0;
    var_240 = r22;
    asm { scvtf      d0, x8 };
    asm { scvtf      d1, x20 };
    asm { fdiv       d9, d0, d1 };
    asm { scvtf      d0, x24 };
    asm { fcvtzs     x8, d0 };
    asm { fcvtzs     x27, d11 };
    r28 = *var_220;
    asm { scvtf      d10, x8 };
    d11 = d9 + d8;
    do {
            r22 = 0x0;
            do {
                    if (*var_220 != r28) {
                            objc_enumerationMutation(r21);
                    }
                    r19 = @selector(setFrame:);
                    r26 = *(var_228 + r22 * 0x8);
                    asm { scvtf      d8, x27 };
                    objc_msgSend(r26, r19);
                    r0 = *(r20 + 0x700);
                    r0 = objc_msgSend(r0, r24);
                    r29 = r29;
                    [r0 retain];
                    objc_msgSend(r26, r25);
                    [r27 release];
                    asm { fcvtzs     x27, d0 };
                    r22 = r22 + 0x1;
            } while (r22 < r23);
            r0 = objc_msgSend(r21, var_238);
            r23 = r0;
    } while (r0 != 0x0);
    goto loc_100a24bb8;
}

-(void)didReportAdForCard:(void *)arg2 reason:(void *)arg3 flowType:(long long)arg4 {
    r31 = r31 - 0xc0;
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
    r24 = arg4;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0) {
            r0 = [r21 cards];
            r29 = r29;
            r22 = [r0 retain];
            r23 = [r19 retain];
            r25 = [r22 indexOfObject:r23];
            [r23 release];
            [r22 release];
            if (r25 != 0x7fffffffffffffff) {
                    r0 = [r21 dataModelForCard:r23];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = r0;
                    if (r0 != 0x0) {
                            r0 = [r21 reportedAds];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 addObject:r22];
                            [r0 release];
                            if ([r21 allAdsAreReported] != 0x0) {
                                    [r21 dismissViewControllerAnimated:0x1 completion:0x0];
                            }
                            else {
                                    r25 = [FBAdHiddenContentView alloc];
                                    r26 = [[r22 icon] retain];
                                    r24 = [r25 initWithReason:r20 logoImage:r26 flowType:r24];
                                    [r26 release];
                                    [r24 setLayoutType:0x1];
                                    [r23 bounds];
                                    [r24 setFrame:0x1];
                                    r25 = [[UIColor colorWithUInt:0xffffff withAlpha:r26] retain];
                                    [r24 setBackgroundColor:r25];
                                    [r25 release];
                                    r0 = [r23 layer];
                                    r0 = [r0 retain];
                                    r26 = r0;
                                    [r0 cornerRadius];
                                    r0 = [r24 layer];
                                    r0 = [r0 retain];
                                    [r0 setCornerRadius:r25];
                                    [r0 release];
                                    [r26 release];
                                    r0 = [r24 layer];
                                    r0 = [r0 retain];
                                    [r0 setMasksToBounds:0x1];
                                    [r0 release];
                                    [r24 setAutoresizingMask:0x12];
                                    objc_initWeak(&stack[-120], r21);
                                    objc_initWeak(&stack[-128], r22);
                                    var_88 = [r22 retain];
                                    objc_copyWeak(&var_B0 + 0x30, &stack[-120]);
                                    objc_copyWeak(&var_B0 + 0x38, &stack[-128]);
                                    [r24 setOnManageAdSettings:&var_B0];
                                    [r23 addSubview:r24];
                                    r0 = [r21 view];
                                    r0 = [r0 retain];
                                    [r0 setNeedsLayout];
                                    [r0 release];
                                    objc_destroyWeak(&var_B0 + 0x38);
                                    objc_destroyWeak(&var_B0 + 0x30);
                                    [var_88 release];
                                    objc_destroyWeak(&stack[-128]);
                                    objc_destroyWeak(&stack[-120]);
                                    [r24 release];
                            }
                    }
                    [r22 release];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)didSelectCard:(void *)arg2 touchData:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    [r20 setChosenCard:r22];
    [r20 removeObservers];
    r0 = [r20 dataModelForCard:r22];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    if (r21 != 0x0) {
            r0 = [r20 reportedAds];
            r0 = [r0 retain];
            r23 = [r0 containsObject:r2];
            [r0 release];
            if ((r23 & 0x1) == 0x0) {
                    [r20 tellDelegateModelWasChosen:r21 touchData:r19];
            }
    }
    [r21 release];
    [r19 release];
    return;
}

-(void *)generateLoggingDataWithExtraData:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [NSMutableDictionary new];
    if (r19 != 0x0) {
            [r20 addEntriesFromDictionary:r19];
    }
    var_58 = r19;
    r23 = [[FBAdUtility stringValueForBool:[r22 hasTimedOut]] retain];
    [r20 setObject:r23 forKeyedSubscript:@"is_timeout"];
    [r23 release];
    r0 = [r22 model];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 choosableAds];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [NSNumber numberWithUnsignedInteger:[r0 count]];
    r0 = [r0 retain];
    r19 = [[r0 stringValue] retain];
    [r20 setObject:r19 forKeyedSubscript:@"ad_count"];
    [r19 release];
    [r0 release];
    [r27 release];
    [r26 release];
    r0 = [r22 model];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 config];
    r0 = [r0 retain];
    r28 = r0;
    r0 = [NSNumber numberWithUnsignedInteger:[r0 defaultAdIndex]];
    r0 = [r0 retain];
    r25 = [[r0 stringValue] retain];
    [r20 setObject:r25 forKeyedSubscript:@"default_ad_index"];
    [r25 release];
    [r0 release];
    [r28 release];
    [r27 release];
    r19 = @class(NSNumber);
    r0 = [r22 model];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 config];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r19 numberWithInteger:[r0 countdownTimeMs]];
    r0 = [r0 retain];
    r27 = [[r0 stringValue] retain];
    [r20 setObject:r27 forKeyedSubscript:@"countdown_time_ms"];
    [r27 release];
    [r0 release];
    [r26 release];
    [r25 release];
    r0 = [r22 countdownCircle];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    [r0 currentTimeMs];
    if (d0 == 0x0) {
            asm { fcsel      d0, d1, d0, eq };
    }
    r0 = [NSNumber numberWithDouble:r2];
    r0 = [r0 retain];
    r26 = [[r0 stringValue] retain];
    [r20 setObject:r26 forKeyedSubscript:@"elapsed_time_from_timer_ms"];
    [r26 release];
    [r0 release];
    [r25 release];
    r0 = [r22 chosenCard];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if (r0 == 0x0) goto loc_100a25784;

loc_100a256c4:
    r19 = [[r22 cards] retain];
    r0 = [r22 chosenCard];
    r29 = r29;
    r26 = [r0 retain];
    r22 = [r19 indexOfObject:r26];
    [r26 release];
    [r19 release];
    [r25 release];
    if (r22 == 0x7fffffffffffffff) goto loc_100a2578c;

loc_100a25734:
    r0 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
    r0 = [r0 numberWithInteger:r22];
    r0 = [r0 retain];
    r25 = r0;
    r19 = [[r0 stringValue] retain];
    [r20 setObject:r19 forKeyedSubscript:@"selected_ad_index"];
    [r19 release];
    goto loc_100a25784;

loc_100a25784:
    [r25 release];
    goto loc_100a2578c;

loc_100a2578c:
    [var_58 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)adReportingCoordinatorDidCompleteFlow:(void *)arg2 reason:(void *)arg3 flowType:(long long)arg4 {
    r22 = [arg3 retain];
    r21 = [[self potentialReportedCard] retain];
    [self didReportAdForCard:r21 reason:r22 flowType:arg4];
    [r22 release];
    [r21 release];
    [self didExitReportFlow];
    return;
}

-(void)adReportingCoordinatorDidCancelFlow:(void *)arg2 {
    [self didExitReportFlow];
    return;
}

-(void)didSelectReportAdForCard:(void *)arg2 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 dataModelForCard:r19];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r21 reportedAds];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 containsObject:r2];
            [r0 release];
            if ((r23 & 0x1) == 0x0) {
                    [r21 stopTimerAndCardAnimations];
                    [r21 setIsPresentingReportFlow:0x1];
                    r0 = [FBAdReportingConfig sharedConfig];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = [r0 isReadyForFullscreen];
                    [r0 release];
                    if (r23 != 0x0) {
                            [r21 setPotentialReportedCard:r19];
                            r22 = [[FBAdReportingCoordinator alloc] initWithData:r20 viewController:r21];
                            [r21 setReportingCoordinator:r22];
                            [r22 release];
                            r0 = [r21 reportingCoordinator];
                            r0 = [r0 retain];
                            [r0 setDelegate:r21];
                            [r0 release];
                            r0 = [r21 reportingCoordinator];
                            r0 = [r0 retain];
                            [r0 startAdReportingFlow];
                            r0 = r0;
                    }
                    else {
                            r22 = @class(FBAdSafariViewController);
                            r23 = [[r20 adChoicesLinkURL] retain];
                            r24 = [[r20 inlineClientToken] retain];
                            [r22 presentSafariViewControllerWithURL:r23 withRootViewController:r21 withInlineClientToken:r24 withHandlerTime:[FBAdSafariViewController currentTimeMs] withDelegate:0x0];
                            [r24 release];
                            r0 = r23;
                    }
                    [r0 release];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)adReportingCoordinatorDidCloseWhyAmISeeingThis:(void *)arg2 {
    [self didExitReportFlow];
    return;
}

-(void)viewControllerDismissed:(void *)arg2 {
    [self didExitReportFlow];
    return;
}

-(void *)mainView {
    r0 = [self view];
    return r0;
}

-(void *)targetImage {
    r0 = [self chosenCard];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 imageView];
    r0 = [r0 retain];
    r21 = [[r0 image] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)targetView {
    r0 = [self chosenCard];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_offTargetClickView, 0x0);
    objc_storeStrong((int64_t *)&self->_reportedAds, 0x0);
    objc_storeStrong((int64_t *)&self->_potentialReportedCard, 0x0);
    objc_storeStrong((int64_t *)&self->_reportingCoordinator, 0x0);
    objc_storeStrong((int64_t *)&self->_chosenCard, 0x0);
    objc_storeStrong((int64_t *)&self->_countdownTimer, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_cards, 0x0);
    objc_storeStrong((int64_t *)&self->_titleLabel, 0x0);
    objc_storeStrong((int64_t *)&self->_countdownLabel, 0x0);
    objc_storeStrong((int64_t *)&self->_countdownCircle, 0x0);
    objc_storeStrong((int64_t *)&self->_model, 0x0);
    return;
}

-(struct CGRect)targetFrame {
    r0 = [self chosenCard];
    r0 = [r0 retain];
    r19 = r0;
    r23 = [[r0 imageView] retain];
    r0 = [self chosenCard];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 imageView];
    r0 = [r0 retain];
    [r0 frame];
    [r23 convertRect:0x0 toView:r3];
    [r0 release];
    [r20 release];
    [r23 release];
    r0 = [r19 release];
    return r0;
}

-(void *)model {
    r0 = self->_model;
    return r0;
}

-(void)setModel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_model, arg2);
    return;
}

-(void *)countdownLabel {
    r0 = self->_countdownLabel;
    return r0;
}

-(void *)countdownCircle {
    r0 = self->_countdownCircle;
    return r0;
}

-(void)setCountdownCircle:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_countdownCircle, arg2);
    return;
}

-(void)setCountdownLabel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_countdownLabel, arg2);
    return;
}

-(void *)titleLabel {
    r0 = self->_titleLabel;
    return r0;
}

-(void *)cards {
    r0 = self->_cards;
    return r0;
}

-(void)setTitleLabel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_titleLabel, arg2);
    return;
}

-(void)setCards:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_cards, arg2);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)countdownTimer {
    r0 = self->_countdownTimer;
    return r0;
}

-(void)setCountdownTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_countdownTimer, arg2);
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void)setHasTimedOut:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasTimedOut = arg2;
    return;
}

-(long long)msPassed {
    r0 = self->_msPassed;
    return r0;
}

-(void)setMsPassed:(long long)arg2 {
    self->_msPassed = arg2;
    return;
}

-(bool)hasTimedOut {
    r0 = *(int8_t *)(int64_t *)&self->_hasTimedOut;
    return r0;
}

-(bool)isPresentingReportFlow {
    r0 = *(int8_t *)(int64_t *)&self->_isPresentingReportFlow;
    return r0;
}

-(void)setIsPresentingReportFlow:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isPresentingReportFlow = arg2;
    return;
}

-(void)setChosenCard:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_chosenCard, arg2);
    return;
}

-(void *)chosenCard {
    r0 = self->_chosenCard;
    return r0;
}

-(void *)reportingCoordinator {
    r0 = self->_reportingCoordinator;
    return r0;
}

-(void)setReportingCoordinator:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_reportingCoordinator, arg2);
    return;
}

-(void *)potentialReportedCard {
    r0 = self->_potentialReportedCard;
    return r0;
}

-(void)setPotentialReportedCard:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_potentialReportedCard, arg2);
    return;
}

-(void)setReportedAds:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_reportedAds, arg2);
    return;
}

-(double)previewImpressionTime {
    r0 = self;
    return r0;
}

-(void)setPreviewImpressionTime:(double)arg2 {
    self->_previewImpressionTime = d0;
    return;
}

-(void *)offTargetClickView {
    r0 = self->_offTargetClickView;
    return r0;
}

-(void)setOffTargetClickView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_offTargetClickView, arg2);
    return;
}

@end