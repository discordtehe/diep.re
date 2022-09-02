@implementation VungleVideoPlayer

+(void *)layerClass {
    r0 = [AVPlayerLayer class];
    return r0;
}

+(bool)requiresConstraintBasedLayout {
    return 0x1;
}

-(void)layoutSubviews {
    r31 = r31 - 0x90;
    var_70 = d15;
    stack[-120] = d14;
    var_60 = d13;
    stack[-104] = d12;
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
    r29 = &saved_fp;
    r19 = self;
    [[&var_80 super] layoutSubviews];
    if ([r19 respondsToSelector:r2] != 0x0) {
            r0 = [r19 layer];
            r0 = [r0 retain];
            [r0 frame];
            v8 = v0;
            v9 = v1;
            v10 = v2;
            v11 = v3;
            [r0 release];
            [r19 bounds];
            r0 = [r19 adViewController];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 view];
            r29 = r29;
            r0 = [r0 retain];
            [r0 frame];
            [r0 release];
            [r22 release];
            if (d13 > d14) {
                    [r19 safeAreaInsets];
                    if (d12 - d2 < d11) {
                            [r19 safeAreaInsets];
                    }
            }
            r0 = [r19 layer];
            r0 = [r0 retain];
            [r0 setFrame:r2];
            [r19 release];
    }
    return;
}

-(void)setAdViewController:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adViewController, [arg2 retain]);
    [self setQuartileIndex:0x0];
    objc_copyWeak(&saved_fp - 0x68, (int64_t *)&self->_adViewController);
    objc_initWeak(&saved_fp - 0x70, self);
    [[self player] retain];
    CMTimeMake(0x1, 0x10);
    objc_copyWeak(&var_98 + 0x20, &saved_fp - 0x70);
    r25 = [[r24 addPeriodicTimeObserverForInterval:&stack[-192] queue:0x0 usingBlock:&var_98] retain];
    [self setVideoTimerFineGrainObserver:r25];
    [r25 release];
    [r24 release];
    CMTimeMakeWithSeconds(0x2, @selector(setVideoTimerFineGrainObserver:));
    [[self player] retain];
    objc_copyWeak(&var_F8 + 0x20, &saved_fp - 0x70);
    objc_copyWeak(&var_F8 + 0x28, &saved_fp - 0x68);
    r23 = [[r25 addPeriodicTimeObserverForInterval:&var_110 queue:0x0 usingBlock:&var_F8] retain];
    [self setVideoTimerObserver:r23];
    [r23 release];
    [r25 release];
    [self addQuartileObserver];
    objc_destroyWeak(&var_F8 + 0x28);
    objc_destroyWeak(&var_F8 + 0x20);
    objc_destroyWeak(&var_98 + 0x20);
    objc_destroyWeak(&saved_fp - 0x70);
    objc_destroyWeak(&saved_fp - 0x68);
    [r19 release];
    return;
}

-(void *)initWithAdPart:(void *)arg2 configController:(void *)arg3 playOptionsProvider:(void *)arg4 viewabilityEnabled:(bool)arg5 isMuted:(bool)arg6 {
    r31 = r31 - 0x80;
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
    r24 = arg6;
    r22 = arg5;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [UIScreen mainScreen];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 bounds];
    [r0 release];
    r0 = [[&var_70 super] initWithFrame:r2];
    r23 = r0;
    if (r0 != 0x0) {
            [r23 setAutoresizingMask:0x12];
            r0 = [UIColor blackColor];
            r29 = r29;
            r25 = [r0 retain];
            [r23 setBackgroundColor:r25];
            [r25 release];
            [r23 setUserInteractionEnabled:0x1];
            r0 = dispatch_queue_create("com.vungle.vunglevideoplayer.observation", 0x0);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_quartileObserverQueue));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            objc_storeWeak((int64_t *)&r23->_configController, r20);
            if ([r21 startMuted] != 0x0) {
                    *(int8_t *)(int64_t *)&r23->_muted = [r21 startMuted];
            }
            else {
                    *(int8_t *)(int64_t *)&r23->_muted = r24;
            }
            *(int8_t *)(int64_t *)&r23->_firstPlay = 0x1;
            r0 = [r19 isLocal];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_isLocal));
            *(int8_t *)(r23 + r24) = r0;
            *(int8_t *)(int64_t *)&r23->_isPaused = 0x0;
            if ([r19 type] == 0x1) {
                    if (*(int8_t *)(r23 + r24) != 0x0) {
                            r0 = [r19 parentAdUnit];
                            r0 = [r0 retain];
                            r26 = [[r0 cacheKey] retain];
                            r27 = [[VNGPersistenceManager URLForAdKey:r26] retain];
                            [r26 release];
                            [r0 release];
                            r25 = [[r19 filename] retain];
                            r0 = [r27 URLByAppendingPathComponent:r25];
                            r29 = r29;
                            r24 = [r0 retain];
                            [r27 release];
                    }
                    else {
                            r25 = [[r19 remotePath] retain];
                            r0 = [NSURL URLWithString:r2];
                            r29 = r29;
                            r24 = [r0 retain];
                    }
                    [r25 release];
                    r0 = objc_alloc();
                    r0 = [r0 initWithURL:r24];
                    r25 = sign_extend_64(*(int32_t *)ivar_offset(_playerItem));
                    r8 = *(r23 + r25);
                    *(r23 + r25) = r0;
                    [r8 release];
                    r0 = objc_alloc();
                    r0 = [r0 initWithPlayerItem:*(r23 + r25)];
                    r26 = sign_extend_64(*(int32_t *)ivar_offset(_player));
                    r8 = *(r23 + r26);
                    *(r23 + r26) = r0;
                    [r8 release];
                    r0 = [r23 layer];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 setPlayer:*(r23 + r26)];
                    [r0 release];
                    [r24 release];
            }
            r24 = @selector(parentAdUnit);
            r0 = objc_msgSend(r19, r24);
            r0 = [r0 retain];
            [r0 closeDelay];
            *(int32_t *)(int64_t *)&r23->_closeDelay = s0;
            [r0 release];
            r0 = objc_msgSend(r19, r24);
            r0 = [r0 retain];
            [r0 closeDelayIncentivized];
            *(int32_t *)(int64_t *)&r23->_closeDelayIncentivized = s0;
            [r0 release];
            r0 = objc_msgSend(r19, r24);
            r29 = r29;
            r0 = [r0 retain];
            r25 = r0;
            [r0 countdownDelay];
            asm { scvtf      s0, w0 };
            *(int32_t *)(int64_t *)&r23->_countdownDelay = s0;
            [r25 release];
            r0 = objc_msgSend(r19, r24);
            r29 = r29;
            r0 = [r0 retain];
            r25 = r0;
            [r0 ctaButtonClickArea];
            if (s0 > 0x0) {
                    if (CPU_FLAGS & G) {
                            r27 = 0x1;
                    }
            }
            [r25 release];
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_ctaEnabled));
            *(int8_t *)(r23 + r26) = r27;
            r0 = [r19 parentAdUnit];
            r29 = r29;
            r0 = [r0 retain];
            r25 = r0;
            if ([r0 ctaEnabled] != 0x0) {
                    r8 = *(int8_t *)(r23 + r26);
            }
            else {
                    r8 = 0x0;
            }
            *(int8_t *)(int64_t *)&r23->_ctaImageWillShow = r8;
            [r25 release];
            r0 = [r19 parentAdUnit];
            r0 = [r0 retain];
            *(int8_t *)(int64_t *)&r23->_ctaDisplayOntouch = [r0 ctaDisplayOntouch];
            [r0 release];
            *(int32_t *)(int64_t *)&r23->_ctaButtonClickArea = 0x42c80000;
            [r23 setPlayOptionsProvider:r21];
            *(int128_t *)(int64_t *)&r23->_originalCTAButtonSize = q0;
            [r23 createUIElements];
            [r23 setupUIConstraints];
            r0 = objc_loadWeakRetained((int64_t *)&r23->_ctaButton);
            [r0 setEnabled:*(int8_t *)(r23 + r26)];
            [r0 release];
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            r23->_startTime = 0x0;
            [r0 release];
            r0 = objc_alloc();
            r0 = [r0 init];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_eventsPlayed));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            r0 = [NSNotificationCenter defaultCenter];
            r29 = r29;
            r0 = [r0 retain];
            r4 = **_AVPlayerItemDidPlayToEndTimeNotification;
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_playerItem));
            [r0 addObserver:r23 selector:@selector(playerEnded:) name:r4 object:*(r23 + r26)];
            [r0 release];
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_player));
            [*(r23 + r27) addObserver:r23 forKeyPath:@"status" options:0x0 context:0x0];
            [*(r23 + r27) addObserver:r23 forKeyPath:@"rate" options:0x0 context:0x0];
            [*(r23 + r26) addObserver:r23 forKeyPath:@"playbackLikelyToKeepUp" options:0x0 context:0x0];
            [*(r23 + r26) addObserver:r23 forKeyPath:@"status" options:0x0 context:0x0];
            *(int8_t *)(int64_t *)&r23->_observerSet = 0x1;
            *(int8_t *)(int64_t *)&r23->_moatTrackingStarted = 0x0;
            *(int8_t *)(int64_t *)&r23->_viewabilityEnabled = r22;
            if (r22 != 0x0) {
                    r0 = [VNGMoatVideoTracker trackerWithPartnerCode:@"vunglenativevideo893259554489"];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_moatTracker));
                    r8 = *(r23 + r9);
                    *(r23 + r9) = r0;
                    [r8 release];
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void)updateQuartile {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [NSArray arrayWithObjects:&var_60 count:0x5];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if ([r19 firstPlay] != 0x0 && [r19 quartileIndex] < [r20 count]) {
            r23 = [[r19 adViewController] retain];
            r0 = [r20 objectAtIndexedSubscript:[r19 quartileIndex]];
            r29 = r29;
            r24 = [r0 retain];
            [r23 dispatchEventNamed:@"play_percentage" subCategory:r24 max:0x1];
            [r24 release];
            [r23 release];
            if ([r19 quartileIndex] == 0x3) {
                    r0 = [r19 adViewController];
                    r0 = [r0 retain];
                    [r0 sendReportIncentivized];
                    [r0 release];
            }
            [r19 setQuartileIndex:[r19 quartileIndex] + 0x1];
    }
    var_38 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)addQuartileObserver {
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
    r19 = self;
    r24 = &stack[-280];
    r8 = *_kCMTimeZero;
    var_60 = *(r8 + 0x10);
    var_70 = *(int128_t *)r8;
    r0 = [self playerItem];
    r0 = [r0 retain];
    r20 = r0;
    r1 = @selector(asset);
    r0 = objc_msgSend(r0, r1);
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r1 = @selector(duration);
            objc_msgSend(r21, r1);
    }
    CMTimeMultiplyByFloat64(r29 - 0xa0, r1);
    [r21 release];
    [r20 release];
    CMTimeMultiplyByFloat64(r29 - 0xd0, r1);
    r22 = [[NSValue valueWithCMTime:&var_F0] retain];
    r0 = [NSMutableArray arrayWithObject:r22];
    r29 = r29;
    r20 = [r0 retain];
    [r22 release];
    r26 = 0x3;
    do {
            CMTimeAdd(&var_120, &var_140);
            var_60 = var_F8;
            var_70 = *(int128_t *)r24;
            r0 = @class(NSValue);
            r0 = [r0 valueWithCMTime:&var_160];
            r29 = r29;
            [r0 retain];
            r1 = r22;
            objc_msgSend(r20, r1);
            [r23 release];
            r26 = r26 - 0x1;
    } while (r26 != 0x0);
    CMTimeMakeWithSeconds(var_80, r1);
    CMTimeSubtract(&var_190, &stack[-392]);
    [[NSValue valueWithCMTime:&var_1B0] retain];
    objc_msgSend(r20, r22);
    [r21 release];
    objc_initWeak(&stack[-456], r19);
    [[r19 player] retain];
    [[r19 quartileObserverQueue] retain];
    objc_copyWeak(&var_1E0 + 0x20, &stack[-456]);
    r0 = [r21 addBoundaryTimeObserverForTimes:r20 queue:r23 usingBlock:&var_1E0];
    r24 = [r0 retain];
    [r19 setVideoQuartileObserver:r24];
    [r24 release];
    [r23 release];
    [r21 release];
    objc_destroyWeak(&var_1E0 + 0x20);
    objc_destroyWeak(&stack[-456]);
    [r20 release];
    return;
}

-(void)timeObservanceHandler:(union ?)arg2 delegate:(void *)arg3 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x90;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [r3 retain];
    CMTimeGetSeconds(&var_50);
    if ([r20 quartileIndex] == 0x0) {
            [r20 setQuartileIndex:[r20 quartileIndex] + 0x1];
            [r19 dispatchEventNamed:@"play_percentage" subCategory:@"0.0" max:0x1];
    }
    [r19 updateReportAd];
    if ([r19 videoIsPlaying] != 0x0) {
            [r19 updateLatestPlayInfo];
    }
    if ([r19 incentivized] == 0x0) goto loc_10064d748;

loc_10064d714:
    [r20 closeDelayIncentivized];
    asm { fcvt       d0, s0 };
    if (d8 < d0) goto loc_10064d7a8;

loc_10064d730:
    r0 = [r20 closeButton];
    goto loc_10064d778;

loc_10064d778:
    r0 = [r0 retain];
    [r0 alpha];
    [r0 release];
    if (d8 == 0x0) {
            r8 = 0x1;
    }
    else {
            r8 = 0x0;
    }
    goto loc_10064d7ac;

loc_10064d7ac:
    [UIView animateWithDuration:&var_80 animations:r3];
    [r19 release];
    return;

loc_10064d7a8:
    r8 = 0x0;
    goto loc_10064d7ac;

loc_10064d748:
    [r20 closeDelay];
    asm { fcvt       d0, s0 };
    if (d8 < d0) goto loc_10064d7a8;

loc_10064d764:
    r0 = [r20 closeButton];
    goto loc_10064d778;
}

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    [self removeObservers];
    [[&var_20 super] dealloc];
    return;
}

-(void)playerEnded:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self setFirstPlay:0x0];
    r0 = [r19 incentivizedAlertController];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 presentingViewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 dismissViewControllerAnimated:0x1 completion:0x0];
    [r0 release];
    [r20 release];
    if ([r19 viewabilityEnabled] != 0x0) {
            r0 = [r19 moatTracker];
            r29 = r29;
            r0 = [r0 retain];
            [r0 stopTracking];
            [r0 release];
    }
    if ([r19 quartileIndex] <= 0x3) {
            [r19 updateQuartile];
    }
    r0 = [r19 adViewController];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) goto loc_10064da34;

loc_10064da04:
    r22 = [r19 finishCallbackExecuted];
    [r21 release];
    if ((r22 & 0x1) == 0x0) goto loc_10064da3c;

.l1:
    return;

loc_10064da3c:
    [r19 setFinishCallbackExecuted:0x1];
    [r19 setIsPaused:0x1];
    r0 = [r19 adViewController];
    r0 = [r0 retain];
    [r0 videoActionButtonClicked:r19 withName:@"close"];
    [r0 release];
    r0 = [r19 adViewController];
    r0 = [r0 retain];
    [r0 addClickSequenceToReport:@"close"];
    [r0 release];
    r0 = [r19 adViewController];
    r0 = [r0 retain];
    [r0 dispatchEventNamed:@"video_close" subCategory:0x0 max:0x1];
    [r0 release];
    r0 = [r19 adViewController];
    r0 = [r0 retain];
    [r0 resetTpatEventCount:@"postroll_click" subCategory:0x0];
    [r0 release];
    r0 = [r19 adViewController];
    r0 = [r0 retain];
    [r0 vungleVideoPlayerDidFinish:r19];
    r0 = r0;
    goto loc_10064db70;

loc_10064db70:
    [r0 release];
    return;

loc_10064da34:
    r0 = r21;
    goto loc_10064db70;
}

-(void)waitForStreaming {
    r0 = self;
    r31 = r31 - 0x60;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    *(int8_t *)0x1011da918 = 0x0;
    if ((*(int8_t *)0x1011da919 & 0x1) == 0x0) {
            r19 = r0;
            if (([r0 isLocal] & 0x1) == 0x0) {
                    *(int8_t *)0x1011da919 = 0x1;
                    r0 = [r19 configController];
                    r0 = [r0 retain];
                    [r0 streamingBufferTimeout];
                    [r0 release];
                    objc_initWeak(&stack[-56], r19);
                    r19 = &var_50 + 0x20;
                    asm { fcvtzs     x1, d0 };
                    dispatch_time(0x0, r1);
                    objc_copyWeak(r19, &stack[-56]);
                    dispatch_after(r20, *__dispatch_main_q, &var_50);
                    objc_destroyWeak(r19);
                    objc_destroyWeak(&stack[-56]);
            }
    }
    return;
}

-(void)createUIElements {
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
    r20 = self;
    r22 = [objc_alloc() init];
    r0 = [VungleUIFactory callToActionButtonImage];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (([r20 ctaImageWillShow] & 0x1) == 0x0) {
            [r19 release];
            r19 = 0x0;
    }
    r24 = &@class(MPVASTModel);
    r0 = *(r24 + 0x808);
    r21 = r20 + sign_extend_64(*(int32_t *)ivar_offset(_originalCTAButtonSize));
    asm { fcvt       d2, s0 };
    var_60 = r19;
    r0 = [r0 vungleCTAButtonWithImage:r19 originalSize:r3 clickArea:r4];
    r0 = [r0 retain];
    r23 = r0;
    [r0 setAccessibilityIdentifier:@"Legacy_CTA_button_identifier"];
    [r23 addTarget:r20 action:@selector(callToActionButtonTouchUpInside:) forControlEvents:0x40];
    [r23 setAccessibilityLabel:@"ctaButton"];
    [r23 setAlpha:@"ctaButton"];
    [r20 addSubview:r23];
    var_58 = r22;
    [r20 addSubview:r22];
    r25 = [[*(r24 + 0x808) muteOnButtonImage] retain];
    r2 = [[*(r24 + 0x808) muteOffButtonImage] retain];
    r0 = *(r24 + 0x808);
    var_78 = r2;
    r0 = [r0 vungleCTAButtonWithImage:r2 originalSize:@selector(callToActionButtonTouchUpInside:) clickArea:0x40];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    [r0 setAccessibilityIdentifier:@"Legacy_mute_button_identifier"];
    [r22 addTarget:r20 action:@selector(muteButtonTouchUpInside:) forControlEvents:0x40];
    [r20 addSubview:r22];
    var_70 = r25;
    [r22 setImage:r25 forState:0x4];
    if (*(int8_t *)(int64_t *)&r20->_muted != 0x0) {
            [r22 setSelected:r2];
    }
    r25 = [[VungleUIFactory closeButtonImage] retain];
    r26 = [[VungleUIFactory vungleCTAButtonWithImage:r25 originalSize:0x4 clickArea:0x40] retain];
    [r25 release];
    [r26 setAccessibilityIdentifier:@"Legacy_close_button_identifier"];
    [r26 addTarget:r20 action:@selector(closeButtonTouchUpInside:) forControlEvents:0x40];
    [r26 setAlpha:r2];
    [r20 addSubview:r26];
    r19 = [objc_alloc() init];
    [r20 addSubview:r19];
    [r20 setMuteButton:r22];
    [r20 setCloseButton:r26];
    [r20 setCtaButton:r23];
    [r20 setProgressBar:r19];
    [r20 resetButtons];
    [r19 release];
    [r26 release];
    [r22 release];
    [var_78 release];
    [var_70 release];
    [r23 release];
    [var_60 release];
    [var_58 release];
    return;
}

-(void)touchesEnded:(void *)arg2 withEvent:(void *)arg3 {
    r3 = arg3;
    r31 = r31 - 0x60;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self player];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 rate];
    [r0 release];
    if (s8 == 0x0) {
            [r19 setIsPaused:0x0];
            [r19 startMoatTrackingAndPlay];
    }
    else {
            if ([r19 ctaEnabled] != 0x0 && [r19 ctaDisplayOntouch] != 0x0) {
                    r0 = [r19 ctaButton];
                    r0 = [r0 retain];
                    [r0 alpha];
                    [r0 release];
                    if (d8 == 0x0) {
                            [UIView animateWithDuration:&var_48 animations:r3];
                    }
            }
    }
    return;
}

-(void)observeValueForKeyPath:(void *)arg2 ofObject:(void *)arg3 change:(void *)arg4 context:(void *)arg5 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r21 player];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == r20) goto loc_10064f684;

loc_10064f5d8:
    r0 = [r21 playerItem];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != r20) goto loc_10064f820;

loc_10064f604:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_10064f798;

loc_10064f624:
    r0 = [r21 playerItem];
    r0 = [r0 retain];
    r23 = [r0 isPlaybackLikelyToKeepUp];
    [r0 release];
    if ((r23 & 0x1) == 0x0) goto loc_10064f784;

loc_10064f658:
    *(int8_t *)0x1011da918 = 0x1;
    if (([r21 isPaused] & 0x1) != 0x0) goto loc_10064f820;

loc_10064f678:
    r1 = @selector(startMoatTrackingAndPlay);
    goto loc_10064f78c;

loc_10064f78c:
    objc_msgSend(r21, r1);
    goto loc_10064f820;

loc_10064f820:
    [r20 release];
    [r19 release];
    return;

loc_10064f784:
    r1 = @selector(waitForStreaming);
    goto loc_10064f78c;

loc_10064f798:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_10064f820;

loc_10064f7b0:
    r0 = [r21 playerItem];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 status];
    [r0 release];
    if (r24 != 0x2) goto loc_10064f820;

loc_10064f7e8:
    r0 = [r21 player];
    r0 = [r0 retain];
    [r0 rate];
    [r0 release];
    if (s8 > 0x0) goto loc_10064f714;
    goto loc_10064f820;

loc_10064f714:
    r1 = @selector(stop);
    goto loc_10064f78c;

loc_10064f684:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_10064f720;

loc_10064f6a4:
    if ([r21 muted] != 0x0) {
            [r21 muteAd:[r21 muted]];
    }
    r0 = [r21 player];
    r0 = [r0 retain];
    r23 = [r0 status];
    [r0 release];
    if (r23 != 0x2) goto loc_10064f820;
    goto loc_10064f714;

loc_10064f720:
    if ([r19 isEqualToString:r2] == 0x0 || ([r21 isPaused] & 0x1) != 0x0) goto loc_10064f820;

loc_10064f74c:
    r0 = [r21 playerItem];
    r0 = [r0 retain];
    r23 = [r0 isPlaybackLikelyToKeepUp];
    [r0 release];
    if ((r23 & 0x1) != 0x0) goto loc_10064f820;
}

-(void)resetButtons {
    [UIView animateWithDuration:&var_28 animations:r3];
    return;
}

-(bool)canPlay {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self player];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 status] == 0x2) {
            r20 = 0x0;
    }
    else {
            r0 = [r20 playerItem];
            r0 = [r0 retain];
            r22 = r0;
            if ([r0 status] != 0x2) {
                    if (CPU_FLAGS & NE) {
                            r20 = 0x1;
                    }
            }
            [r22 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)skipAction:(void *)arg2 {
    r31 = r31 - 0xc0;
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
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 adViewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 incentivized];
    [r0 release];
    if (r22 != 0x0) {
            objc_initWeak(&stack[-104], r20);
            [[r20 playOptionsProvider] retain];
            objc_copyWeak(&var_80 + 0x20, &stack[-104]);
            objc_copyWeak(&var_A8 + 0x20, &stack[-104]);
            r25 = [[r24 incentivizedAlertControllerWithOKBlock:&var_80 cancelBlock:&var_A8] retain];
            [r20 setIncentivizedAlertController:r25];
            [r25 release];
            [r24 release];
            [r20 pause];
            r0 = [r20 adViewController];
            r0 = [r0 retain];
            [r0 setDefinesPresentationContext:0x1];
            [r0 release];
            r0 = [r20 incentivizedAlertController];
            r0 = [r0 retain];
            [r0 setModalPresentationStyle:0x6];
            [r0 release];
            r23 = [[r20 adViewController] retain];
            r20 = [[r20 incentivizedAlertController] retain];
            [r23 presentViewController:r20 animated:0x1 completion:0x0];
            [r20 release];
            [r23 release];
            objc_destroyWeak(&var_A8 + 0x20);
            objc_destroyWeak(&var_80 + 0x20);
            objc_destroyWeak(&stack[-104]);
    }
    else {
            [r20 doSkip];
    }
    [r19 release];
    return;
}

-(void)ctaAction:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self pause];
    r0 = [r19 adViewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 adViewController];
            r0 = [r0 retain];
            [r0 dispatchEventNamed:@"postroll_click" subCategory:0x0 max:0x1];
            [r0 release];
            r0 = [r19 adViewController];
            r0 = [r0 retain];
            [r0 dispatchEventNamed:@"video_click" subCategory:0x0 max:0x1];
            [r0 release];
            r0 = [r19 adViewController];
            r0 = [r0 retain];
            [r0 addClickSequenceToReport:@"cta"];
            [r0 release];
            r0 = [r19 adViewController];
            r0 = [r0 retain];
            [r0 videoCTAClicked:r19];
            [r0 release];
    }
    return;
}

-(void)doSkip {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self setFirstPlay:0x0];
    [r19 pause];
    r0 = [r19 adViewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 adViewController];
            r0 = [r0 retain];
            [r0 videoActionButtonClicked:r19 withName:@"close"];
            [r0 release];
            r0 = [r19 adViewController];
            r0 = [r0 retain];
            [r0 addClickSequenceToReport:@"close"];
            [r0 release];
            r0 = [r19 adViewController];
            r0 = [r0 retain];
            [r0 dispatchEventNamed:@"video_close" subCategory:0x0 max:0x1];
            [r0 release];
            r0 = [r19 adViewController];
            r29 = r29;
            r0 = [r0 retain];
            [r0 resetTpatEventCount:@"postroll_click" subCategory:0x0];
            [r0 release];
    }
    r0 = [r19 adViewController];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) goto loc_10064fff8;

loc_10064ffc8:
    r22 = [r19 finishCallbackExecuted];
    [r21 release];
    if ((r22 & 0x1) == 0x0) goto loc_100650000;

.l1:
    return;

loc_100650000:
    [r19 setFinishCallbackExecuted:0x1];
    r0 = [r19 adViewController];
    r0 = [r0 retain];
    [r0 vungleVideoPlayerDidFinish:r19];
    r0 = r0;
    goto loc_100650040;

loc_100650040:
    [r0 release];
    return;

loc_10064fff8:
    r0 = r21;
    goto loc_100650040;
}

-(void)muteAd:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self player];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 setMuted:arg2];
    r0 = [r0 release];
    if (arg2 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = @"unmute";
            }
            else {
                    r0 = @"mute";
            }
    }
    r20 = [r0 retain];
    r0 = [r19 adViewController];
    r0 = [r0 retain];
    [r0 dispatchEventNamed:r20 subCategory:0x0 max:0x1];
    [r0 release];
    r0 = [r19 adViewController];
    r0 = [r0 retain];
    [r0 videoActionButtonClicked:r19 withName:r20];
    [r0 release];
    r0 = [r19 adViewController];
    r0 = [r0 retain];
    [r0 addClickSequenceToReport:r20];
    [r20 release];
    [r0 release];
    return;
}

-(void)play {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self isPaused] != 0x0) {
            [r19 setIsPaused:0x0];
            [r19 startMoatTrackingAndPlay];
    }
    return;
}

-(void)pause {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self isPaused] & 0x1) == 0x0) {
            [r19 setIsPaused:0x1];
            r0 = [r19 player];
            r0 = [r0 retain];
            [r0 pause];
            [r0 release];
    }
    return;
}

-(void)stop {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self player];
    r0 = [r0 retain];
    [r0 pause];
    [r0 release];
    [r19 removeObservers];
    r0 = [r19 adViewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 adViewController];
            r0 = [r0 retain];
            [r0 videoActionButtonClicked:r19 withName:@"close"];
            [r0 release];
            r0 = [r19 adViewController];
            r0 = [r0 retain];
            [r0 addClickSequenceToReport:@"close"];
            [r0 release];
            r0 = [r19 adViewController];
            r0 = [r0 retain];
            [r0 dispatchEventNamed:@"video_close" subCategory:0x0 max:0x1];
            [r0 release];
            r0 = [r19 adViewController];
            r0 = [r0 retain];
            [r0 resetTpatEventCount:@"postroll_click" subCategory:0x0];
            [r0 release];
            r0 = [r19 adViewController];
            r0 = [r0 retain];
            [r0 vungleVideoPlayerDidFinish:r19];
            [r0 release];
    }
    return;
}

-(double)videoLength {
    r31 = r31 - 0x80;
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
    r0 = [self playerItem];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            [r22 duration];
            r0 = [r22 release];
            if ((var_4C & 0x1d) == 0x1) {
                    r0 = [r19 playerItem];
                    r0 = [r0 retain];
                    r19 = r0;
                    if (r0 != 0x0) {
                            [r19 duration];
                    }
                    CMTimeGetSeconds(&var_70);
                    v8 = v0;
                    r0 = [r19 release];
            }
    }
    else {
            r0 = [r22 release];
    }
    return r0;
}

-(double)currentPosition {
    r31 = r31 - 0x80;
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
    r0 = [self player];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            [r22 currentTime];
            r0 = [r22 release];
            if ((var_4C & 0x1d) == 0x1) {
                    r0 = [r19 player];
                    r0 = [r0 retain];
                    r19 = r0;
                    if (r0 != 0x0) {
                            [r19 currentTime];
                    }
                    CMTimeGetSeconds(&var_70);
                    v8 = v0;
                    r0 = [r19 release];
            }
    }
    else {
            r0 = [r22 release];
    }
    return r0;
}

-(void)removeObservers {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = [[self player] retain];
    r23 = [[r19 videoTimerObserver] retain];
    [r22 removeTimeObserver:r23];
    [r23 release];
    [r22 release];
    [r19 setVideoTimerObserver:0x0];
    r22 = [[r19 player] retain];
    r23 = [[r19 videoTimerFineGrainObserver] retain];
    [r22 removeTimeObserver:r23];
    [r23 release];
    [r22 release];
    [r19 setVideoTimerFineGrainObserver:0x0];
    r22 = [[r19 player] retain];
    r0 = [r19 videoQuartileObserver];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r22 removeTimeObserver:r23];
    [r23 release];
    [r22 release];
    [r19 setVideoQuartileObserver:0x0];
    if ([r19 observerSet] != 0x0) {
            r0 = [r19 player];
            r0 = [r0 retain];
            [r0 removeObserver:r19 forKeyPath:@"status"];
            [r0 release];
            r0 = [r19 player];
            r0 = [r0 retain];
            [r0 removeObserver:r19 forKeyPath:@"rate"];
            [r0 release];
            r0 = [r19 playerItem];
            r0 = [r0 retain];
            [r0 removeObserver:r19 forKeyPath:@"playbackLikelyToKeepUp"];
            [r0 release];
            r0 = [r19 playerItem];
            r0 = [r0 retain];
            [r0 removeObserver:r19 forKeyPath:@"status"];
            [r0 release];
            [r19 setObserverSet:0x0];
    }
    return;
}

-(void)hideCTAButtonOnTap {
    [self setCtaEnabled:0x0];
    r0 = [self ctaButton];
    r0 = [r0 retain];
    [r0 setEnabled:0x0];
    [r0 release];
    [UIView animateWithDuration:&var_38 animations:r3];
    return;
}

-(void)rewindAndPlay {
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [self setStartTime:r2];
    [r0 release];
    [self setFinishCallbackExecuted:0x0];
    [self resetButtons];
    [self setIsPaused:0x0];
    r0 = [self player];
    r0 = [r0 retain];
    [r0 seekToTime:&var_30];
    [r0 release];
    [self startMoatTrackingAndPlay];
    return;
}

-(void)prepareMoatAdIdentifiers:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 viewabilityEnabled] != 0x0 && ([r20 isMoatTrackingStarted] & 0x1) == 0x0) {
            [r20 setMoatAdIdentifiers:r19];
    }
    [r19 release];
    return;
}

-(void)muteButtonTouchUpInside:(void *)arg2 {
    r22 = [arg2 retain];
    [self setMuted:[self muted] ^ 0x1];
    [arg2 setSelected:[self muted]];
    [r22 release];
    [self muteAd:[self muted]];
    return;
}

-(void)startMoatTrackingAndPlay {
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
    if ([self viewabilityEnabled] != 0x0 && ([r19 isMoatTrackingStarted] & 0x1) == 0x0) {
            r0 = [r19 moatTracker];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    [r19 setMoatTrackingStarted:0x1];
                    r20 = [[r19 moatTracker] retain];
                    r21 = [[r19 moatAdIdentifiers] retain];
                    r22 = [[r19 player] retain];
                    r0 = [r19 layer];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r20 trackVideoAd:r21 usingAVMoviePlayer:r22 withLayer:r23 withContainingView:r19];
                    [r23 release];
                    [r22 release];
                    [r21 release];
                    [r20 release];
            }
    }
    r0 = [r19 player];
    r0 = [r0 retain];
    [r0 play];
    [r0 release];
    return;
}

-(void)closeButtonTouchUpInside:(void *)arg2 {
    [self skipAction:0x0];
    return;
}

-(void)callToActionButtonTouchUpInside:(void *)arg2 {
    [self ctaAction:0x0];
    return;
}

-(bool)muted {
    r0 = *(int8_t *)(int64_t *)&self->_muted;
    return r0;
}

-(void)setMuted:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_muted = arg2;
    return;
}

-(void)setStartTime:(double)arg2 {
    self->_startTime = d0;
    return;
}

-(float)closeDelay {
    r0 = self;
    return r0;
}

-(double)startTime {
    r0 = self;
    return r0;
}

-(void)setCloseDelay:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_closeDelay = s0;
    return;
}

-(void)setCloseDelayIncentivized:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_closeDelayIncentivized = s0;
    return;
}

-(float)closeDelayIncentivized {
    r0 = self;
    return r0;
}

-(void)setCountdownDelay:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_countdownDelay = s0;
    return;
}

-(float)countdownDelay {
    r0 = self;
    return r0;
}

-(bool)ctaEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_ctaEnabled;
    return r0;
}

-(void)setCtaEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_ctaEnabled = arg2;
    return;
}

-(bool)ctaDisplayOntouch {
    r0 = *(int8_t *)(int64_t *)&self->_ctaDisplayOntouch;
    return r0;
}

-(void)setCtaDisplayOntouch:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_ctaDisplayOntouch = arg2;
    return;
}

-(float)ctaShowDelay {
    r0 = self;
    return r0;
}

-(void)setCtaShowDelay:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_ctaShowDelay = s0;
    return;
}

-(float)ctaButtonClickArea {
    r0 = self;
    return r0;
}

-(void)setCtaButtonClickArea:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_ctaButtonClickArea = s0;
    return;
}

-(void *)incentivizedAlertController {
    r0 = self->_incentivizedAlertController;
    return r0;
}

-(void)setIncentivizedAlertController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_incentivizedAlertController, arg2);
    return;
}

-(bool)finishCallbackExecuted {
    r0 = *(int8_t *)(int64_t *)&self->_finishCallbackExecuted;
    return r0;
}

-(void *)adViewController {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adViewController);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setFinishCallbackExecuted:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_finishCallbackExecuted = arg2;
    return;
}

-(bool)observerSet {
    r0 = *(int8_t *)(int64_t *)&self->_observerSet;
    return r0;
}

-(void)setObserverSet:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_observerSet = arg2;
    return;
}

-(bool)ctaImageWillShow {
    r0 = *(int8_t *)(int64_t *)&self->_ctaImageWillShow;
    return r0;
}

-(void)setupUIConstraints {
    r31 = r31 - 0x1f0;
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
    r19 = self;
    *(&var_10 + 0xffffffffffffff60) = **___stack_chk_guard;
    [self originalCTAButtonSize];
    v8 = v0;
    [r19 ctaButtonClickArea];
    asm { fcvt       d2, s0 };
    [r22 adjustedButtonSize:r2 clickArea:r3];
    v12 = v8;
    objc_msgSend(r19, r20);
    var_198 = d8;
    [r23 adjustedButtonPadding:r2 originalSize:r3 adjustedSize:r4];
    v13 = v10;
    objc_msgSend(r19, r20);
    [r23 adjustedButtonSize:r2 clickArea:r3];
    v15 = v10;
    v14 = v8;
    objc_msgSend(r19, r20);
    [r23 adjustedButtonPadding:r2 originalSize:r3 adjustedSize:r4];
    v8 = v10;
    objc_msgSend(r19, r20);
    [r23 adjustedButtonSize:r2 clickArea:r3];
    objc_msgSend(r19, r20);
    var_190 = d11;
    var_188 = d9;
    [r21 adjustedButtonPadding:r2 originalSize:r3 adjustedSize:r4];
    v10 = v10;
    r20 = [r19 respondsToSelector:@selector(safeAreaLayoutGuide)];
    r0 = [r19 closeButton];
    r29 = r29;
    r28 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r28 topAnchor];
            r0 = [r0 retain];
            r27 = r28;
            r23 = r0;
            r0 = [r19 safeAreaLayoutGuide];
            r0 = [r0 retain];
            r24 = r0;
            r28 = [[r0 topAnchor] retain];
            r0 = [r23 constraintEqualToAnchor:r28 constant:r3];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r28 release];
            [r24 release];
            [r23 release];
            [r27 release];
            r0 = [r19 closeButton];
            r0 = [r0 retain];
            r22 = r0;
            r23 = [[r0 leftAnchor] retain];
            r0 = [r19 safeAreaLayoutGuide];
            r0 = [r0 retain];
            r28 = r0;
            r24 = [[r0 leftAnchor] retain];
            r0 = [r23 constraintEqualToAnchor:r24 constant:r3];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r24 release];
            [r28 release];
            [r23 release];
            [r22 release];
            r0 = [r19 closeButton];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 heightAnchor];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 constraintEqualToConstant:0x1];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r24 release];
            [r22 release];
            r0 = [r19 closeButton];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 widthAnchor];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 constraintEqualToConstant:0x1];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r24 release];
            [r22 release];
            r0 = [r19 ctaButton];
            r0 = [r0 retain];
            r25 = r0;
            r24 = [[r0 bottomAnchor] retain];
            r0 = [r19 safeAreaLayoutGuide];
            r0 = [r0 retain];
            r27 = r0;
            r28 = [[r0 bottomAnchor] retain];
            r0 = [r24 constraintEqualToAnchor:r28 constant:r3];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r28 release];
            [r27 release];
            [r24 release];
            [r25 release];
            r0 = [r19 ctaButton];
            r0 = [r0 retain];
            r25 = r0;
            r23 = [[r0 leftAnchor] retain];
            r0 = [r19 safeAreaLayoutGuide];
            r0 = [r0 retain];
            r24 = r0;
            r27 = [[r0 leftAnchor] retain];
            r0 = [r23 constraintEqualToAnchor:r27 constant:r3];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r27 release];
            [r24 release];
            [r23 release];
            [r25 release];
            r0 = [r19 ctaButton];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 heightAnchor];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 constraintEqualToConstant:0x1];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r24 release];
            [r23 release];
            r0 = [r19 ctaButton];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 widthAnchor];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 constraintEqualToConstant:0x1];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r23 release];
            [r22 release];
            r0 = [r19 muteButton];
            r0 = [r0 retain];
            r25 = r0;
            r23 = [[r0 topAnchor] retain];
            r0 = [r19 safeAreaLayoutGuide];
            r0 = [r0 retain];
            r24 = r0;
            r27 = [[r0 topAnchor] retain];
            r0 = [r23 constraintEqualToAnchor:r27 constant:r3];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r27 release];
            [r24 release];
            [r23 release];
            [r25 release];
            r0 = [r19 muteButton];
            r0 = [r0 retain];
            r25 = r0;
            r23 = [[r0 rightAnchor] retain];
            r0 = [r19 safeAreaLayoutGuide];
            r0 = [r0 retain];
            r24 = r0;
            r28 = [[r0 rightAnchor] retain];
            r0 = [r23 constraintEqualToAnchor:r28 constant:r3];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r28 release];
            [r24 release];
            [r23 release];
            [r25 release];
            r0 = [r19 muteButton];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 heightAnchor];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 constraintEqualToConstant:0x1];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r24 release];
            [r23 release];
            r0 = [r19 muteButton];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 widthAnchor];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 constraintEqualToConstant:0x1];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r23 release];
            [r22 release];
            r0 = [r19 progressBar];
            r0 = [r0 retain];
            r25 = r0;
            r23 = [[r0 rightAnchor] retain];
            r0 = [r19 safeAreaLayoutGuide];
            r0 = [r0 retain];
            r24 = r0;
            r27 = [[r0 rightAnchor] retain];
            r0 = [r23 constraintEqualToAnchor:r27];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r27 release];
            [r24 release];
            [r23 release];
            [r25 release];
            r0 = [r19 progressBar];
            r0 = [r0 retain];
            r25 = r0;
            r23 = [[r0 leftAnchor] retain];
            r0 = [r19 safeAreaLayoutGuide];
            r0 = [r0 retain];
            r24 = r0;
            r27 = [[r0 leftAnchor] retain];
            r0 = [r23 constraintEqualToAnchor:r27];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r27 release];
            [r24 release];
            [r23 release];
            [r25 release];
            r0 = [r19 progressBar];
            r0 = [r0 retain];
            r24 = r0;
            r23 = [[r0 bottomAnchor] retain];
            r0 = [r19 safeAreaLayoutGuide];
            r0 = [r0 retain];
            r21 = r0;
            r25 = [[r0 bottomAnchor] retain];
            r0 = [r23 constraintEqualToAnchor:r25];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r25 release];
            [r21 release];
            [r23 release];
            [r24 release];
            r0 = [r19 progressBar];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 heightAnchor];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 constraintEqualToConstant:0x1];
            r0 = [r0 retain];
            [r0 setActive:0x1];
            [r0 release];
            [r21 release];
            if (**___stack_chk_guard == *(r29 + 0xffffffffffffff60)) {
                    [r19 release];
            }
            else {
                    __stack_chk_fail();
            }
    }
    else {
            var_1B8 = [[r19 ctaButton] retain];
            var_1B0 = [[r19 muteButton] retain];
            var_1C8 = [[r19 progressBar] retain];
            *(r29 + 0xffffffffffffff40) = @"padding";
            r0 = @class(NSNumber);
            r0 = [r0 numberWithDouble:r2];
            r0 = [r0 retain];
            r20 = r0;
            *(int128_t *)(r29 + 0xffffffffffffff48) = @"width";
            *(int128_t *)(r29 + 0xffffffffffffff50) = r0;
            r0 = @class(NSNumber);
            r0 = [r0 numberWithDouble:r2];
            r0 = [r0 retain];
            *(r29 + 0xffffffffffffff58) = r0;
            r22 = [[NSDictionary dictionaryWithObjects:r29 - 0xb0 forKeys:r29 - 0xc0 count:0x2] retain];
            r23 = [_NSDictionaryOfVariableBindings(@"closeButton", r28) retain];
            r25 = [[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-padding-[closeButton(width)]" options:0x0 metrics:r22 views:r23] retain];
            [r19 addConstraints:r25];
            [r25 release];
            [r23 release];
            [r22 release];
            [r0 release];
            [r20 release];
            *(r29 + 0xffffffffffffff20) = @"padding";
            r0 = @class(NSNumber);
            r0 = [r0 numberWithDouble:r25];
            r0 = [r0 retain];
            r20 = r0;
            *(int128_t *)(r29 + 0xffffffffffffff28) = @"height";
            *(int128_t *)(r29 + 0xffffffffffffff30) = r0;
            r0 = @class(NSNumber);
            r0 = [r0 numberWithDouble:r25];
            r0 = [r0 retain];
            *(r29 + 0xffffffffffffff38) = r0;
            r22 = [[NSDictionary dictionaryWithObjects:r29 - 0xd0 forKeys:r29 - 0xe0 count:0x2] retain];
            r25 = [_NSDictionaryOfVariableBindings(@"closeButton", r28) retain];
            r23 = [[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-padding-[closeButton(height)]" options:0x0 metrics:r22 views:r25] retain];
            [r19 addConstraints:r23];
            [r23 release];
            [r25 release];
            [r22 release];
            [r0 release];
            [r20 release];
            r20 = [[NSNumber numberWithDouble:r23] retain];
            r21 = [[NSNumber numberWithDouble:r23] retain];
            r22 = [[NSDictionary dictionaryWithObjects:&stack[-256] forKeys:&var_110 count:0x2] retain];
            r25 = [_NSDictionaryOfVariableBindings(@"ctaButton", var_1B8) retain];
            r23 = [[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-padding-[ctaButton(width)]" options:0x0 metrics:r22 views:r25] retain];
            [r19 addConstraints:r23];
            [r23 release];
            [r25 release];
            [r22 release];
            [r21 release];
            [r20 release];
            r20 = [[NSNumber numberWithDouble:r23] retain];
            r21 = [[NSNumber numberWithDouble:r23] retain];
            r22 = [[NSDictionary dictionaryWithObjects:&stack[-288] forKeys:&var_130 count:0x2] retain];
            r25 = [_NSDictionaryOfVariableBindings(@"ctaButton", var_1B8) retain];
            r23 = [[NSLayoutConstraint constraintsWithVisualFormat:@"V:[ctaButton(height)]-padding-|" options:0x0 metrics:r22 views:r25] retain];
            [r19 addConstraints:r23];
            [r23 release];
            [r25 release];
            [r22 release];
            [r21 release];
            [r20 release];
            r20 = [[NSNumber numberWithDouble:r23] retain];
            r21 = [[NSNumber numberWithDouble:r23] retain];
            r22 = [[NSDictionary dictionaryWithObjects:&stack[-320] forKeys:&var_150 count:0x2] retain];
            r25 = [_NSDictionaryOfVariableBindings(@"muteButton", var_1B0) retain];
            r23 = [[NSLayoutConstraint constraintsWithVisualFormat:@"H:[muteButton(width)]-padding-|" options:0x0 metrics:r22 views:r25] retain];
            [r19 addConstraints:r23];
            [r23 release];
            [r25 release];
            [r22 release];
            [r21 release];
            [r20 release];
            r20 = [[NSNumber numberWithDouble:r23] retain];
            r21 = [[NSNumber numberWithDouble:r23] retain];
            r22 = [[NSDictionary dictionaryWithObjects:&stack[-352] forKeys:&var_170 count:0x2] retain];
            r25 = [_NSDictionaryOfVariableBindings(@"muteButton", var_1B0) retain];
            r23 = [[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-padding-[muteButton(height)]" options:0x0 metrics:r22 views:r25] retain];
            [r19 addConstraints:r23];
            [r23 release];
            [r25 release];
            [r22 release];
            [r21 release];
            [r20 release];
            r20 = @class(NSLayoutConstraint);
            r21 = [[r19 progressBar] retain];
            r20 = [[r20 constraintWithItem:r21 attribute:0x7 relatedBy:0x0 toItem:r19 attribute:0x7 multiplier:r7 constant:0x0] retain];
            [r19 addConstraint:r20];
            [r20 release];
            [r21 release];
            r21 = @class(NSLayoutConstraint);
            r22 = [_NSDictionaryOfVariableBindings(@"progressBar", var_1C8) retain];
            r21 = [[r21 constraintsWithVisualFormat:@"H:|[progressBar]" options:0x0 metrics:0x0 views:r22] retain];
            [r19 addConstraints:r21];
            [r21 release];
            [r22 release];
            r22 = @class(NSLayoutConstraint);
            r21 = [[NSNumber numberWithDouble:r21] retain];
            r23 = [[NSDictionary dictionaryWithObjects:&var_178 forKeys:&var_180 count:0x1] retain];
            r20 = [_NSDictionaryOfVariableBindings(@"progressBar", var_1C8) retain];
            r22 = [[r22 constraintsWithVisualFormat:@"V:[progressBar(height)]|" options:0x0 metrics:r23 views:r20] retain];
            [r19 addConstraints:r22];
            [r22 release];
            [r20 release];
            [r23 release];
            [r21 release];
            [var_1C8 release];
            [var_1B0 release];
            [var_1B8 release];
            [r28 release];
            if (**___stack_chk_guard != *(r29 + 0xffffffffffffff60)) {
                    __stack_chk_fail();
            }
    }
    return;
}

-(void)setCtaImageWillShow:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_ctaImageWillShow = arg2;
    return;
}

-(void *)player {
    r0 = self->_player;
    return r0;
}

-(void)setPlayer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_player, arg2);
    return;
}

-(void *)videoTimerObserver {
    r0 = self->_videoTimerObserver;
    return r0;
}

-(void)setVideoTimerObserver:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_videoTimerObserver, arg2);
    return;
}

-(void *)videoTimerFineGrainObserver {
    r0 = self->_videoTimerFineGrainObserver;
    return r0;
}

-(void)setVideoTimerFineGrainObserver:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_videoTimerFineGrainObserver, arg2);
    return;
}

-(void *)videoQuartileObserver {
    r0 = self->_videoQuartileObserver;
    return r0;
}

-(void)setVideoQuartileObserver:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_videoQuartileObserver, arg2);
    return;
}

-(unsigned long long)quartileIndex {
    r0 = self->_quartileIndex;
    return r0;
}

-(void)setQuartileIndex:(unsigned long long)arg2 {
    self->_quartileIndex = arg2;
    return;
}

-(void *)eventsPlayed {
    r0 = self->_eventsPlayed;
    return r0;
}

-(void)setEventsPlayed:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_eventsPlayed, arg2);
    return;
}

-(bool)firstPlay {
    r0 = *(int8_t *)(int64_t *)&self->_firstPlay;
    return r0;
}

-(void)setFirstPlay:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_firstPlay = arg2;
    return;
}

-(void *)quartileObserverQueue {
    r0 = self->_quartileObserverQueue;
    return r0;
}

-(void)setQuartileObserverQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_quartileObserverQueue, arg2);
    return;
}

-(bool)isLocal {
    r0 = *(int8_t *)(int64_t *)&self->_isLocal;
    return r0;
}

-(void)setIsLocal:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isLocal = arg2;
    return;
}

-(bool)isPaused {
    r0 = *(int8_t *)(int64_t *)&self->_isPaused;
    return r0;
}

-(void)setIsPaused:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isPaused = arg2;
    return;
}

-(void *)playerItem {
    r0 = self->_playerItem;
    return r0;
}

-(void)setPlayerItem:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_playerItem, arg2);
    return;
}

-(void *)incentivizedMetaData {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_incentivizedMetaData)), 0x0);
    return r0;
}

-(void)setIncentivizedMetaData:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)configController {
    r0 = objc_loadWeakRetained((int64_t *)&self->_configController);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setConfigController:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_configController, arg2);
    return;
}

-(struct CGSize)originalCTAButtonSize {
    r0 = self;
    return r0;
}

-(void)setOriginalCTAButtonSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_originalCTAButtonSize));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(void *)playOptionsProvider {
    r0 = objc_loadWeakRetained((int64_t *)&self->_playOptionsProvider);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setPlayOptionsProvider:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_playOptionsProvider, arg2);
    return;
}

-(void *)moatTracker {
    r0 = self->_moatTracker;
    return r0;
}

-(void *)moatAdIdentifiers {
    r0 = self->_moatAdIdentifiers;
    return r0;
}

-(void)setMoatTracker:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_moatTracker, arg2);
    return;
}

-(void)setMoatAdIdentifiers:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_moatAdIdentifiers, arg2);
    return;
}

-(bool)viewabilityEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_viewabilityEnabled;
    return r0;
}

-(bool)isMoatTrackingStarted {
    r0 = *(int8_t *)(int64_t *)&self->_moatTrackingStarted;
    return r0;
}

-(void)setViewabilityEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_viewabilityEnabled = arg2;
    return;
}

-(void)setMoatTrackingStarted:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_moatTrackingStarted = arg2;
    return;
}

-(void)setMuteButton:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_muteButton, arg2);
    return;
}

-(void *)muteButton {
    r0 = objc_loadWeakRetained((int64_t *)&self->_muteButton);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)ctaButton {
    r0 = objc_loadWeakRetained((int64_t *)&self->_ctaButton);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setCtaButton:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_ctaButton, arg2);
    return;
}

-(void)setCloseButton:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_closeButton, arg2);
    return;
}

-(void *)progressBar {
    r0 = objc_loadWeakRetained((int64_t *)&self->_progressBar);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)closeButton {
    r0 = objc_loadWeakRetained((int64_t *)&self->_closeButton);
    r0 = [r0 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_progressBar);
    objc_destroyWeak((int64_t *)&self->_closeButton);
    objc_destroyWeak((int64_t *)&self->_ctaButton);
    objc_destroyWeak((int64_t *)&self->_muteButton);
    objc_storeStrong((int64_t *)&self->_moatAdIdentifiers, 0x0);
    objc_storeStrong((int64_t *)&self->_moatTracker, 0x0);
    objc_destroyWeak((int64_t *)&self->_playOptionsProvider);
    objc_destroyWeak((int64_t *)&self->_configController);
    objc_storeStrong((int64_t *)&self->_incentivizedMetaData, 0x0);
    objc_storeStrong((int64_t *)&self->_playerItem, 0x0);
    objc_storeStrong((int64_t *)&self->_quartileObserverQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_eventsPlayed, 0x0);
    objc_storeStrong((int64_t *)&self->_videoQuartileObserver, 0x0);
    objc_storeStrong((int64_t *)&self->_videoTimerFineGrainObserver, 0x0);
    objc_storeStrong((int64_t *)&self->_videoTimerObserver, 0x0);
    objc_storeStrong((int64_t *)&self->_player, 0x0);
    objc_destroyWeak((int64_t *)&self->_adViewController);
    objc_storeStrong((int64_t *)&self->_incentivizedAlertController, 0x0);
    return;
}

-(void)setProgressBar:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_progressBar, arg2);
    return;
}

@end