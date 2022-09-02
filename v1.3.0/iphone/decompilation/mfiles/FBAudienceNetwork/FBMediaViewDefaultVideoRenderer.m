@implementation FBMediaViewDefaultVideoRenderer

-(bool)shouldBlurWhitespace {
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r20 = [r0 blurWhitespaceInVideoRenderer];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)dealloc {
    [self removeAllObservers];
    [[&var_20 super] dealloc];
    return;
}

-(void *)init {
    r31 = r31 - 0xe0;
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
    r0 = [[&var_70 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            if (([r19 shouldBlurWhitespace] & 0x1) != 0x0) {
                    r0 = [UIColor clearColor];
                    r29 = r29;
            }
            else {
                    r0 = [UIColor blackColor];
                    r29 = r29;
            }
            r20 = [r0 retain];
            [r19 setBackgroundColor:r20];
            [r20 release];
            r0 = [NSMutableArray array];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r19->_playerIsPlaying = 0x0;
            objc_initWeak(&stack[-136], r19);
            [[NSNotificationCenter defaultCenter] retain];
            r0 = @class(NSOperationQueue);
            r0 = [r0 mainQueue];
            [r0 retain];
            objc_copyWeak(&var_A0 + 0x20, &stack[-136]);
            r26 = [[r21 addObserverForName:r24 object:0x0 queue:r25 usingBlock:&var_A0] retain];
            [r19 addObserver:r26];
            [r26 release];
            [r25 release];
            r0 = @class(NSOperationQueue);
            r0 = [r0 mainQueue];
            [r0 retain];
            objc_copyWeak(&var_C8 + 0x20, &stack[-136]);
            r0 = [r21 addObserverForName:r26 object:0x0 queue:r25 usingBlock:&var_C8];
            r22 = [r0 retain];
            [r19 addObserver:r22];
            [r22 release];
            [r25 release];
            objc_destroyWeak(&var_C8 + 0x20);
            objc_destroyWeak(&var_A0 + 0x20);
            [r21 release];
            objc_destroyWeak(&stack[-136]);
    }
    r0 = r19;
    return r0;
}

-(void)layoutSubviews {
    [[&var_20 super] layoutSubviews];
    [self setupView];
    return;
}

-(void)setFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[&var_20 super] setFrame:r2];
    [self setupView];
    return;
}

-(void)loadVideoURL:(void *)arg2 pollingInterval:(union ?)arg3 clientToken:(void *)arg4 autoplayEnabled:(bool)arg5 loadedBlock:(void *)arg6 failureBlock:(void *)arg7 {
    memcpy(&r3, &arg3, 0x8);
    r25 = [arg2 retain];
    r23 = [r4 retain];
    r22 = [r6 retain];
    r21 = [r7 retain];
    [self removeProgressTimeObserver];
    [[&var_70 super] loadVideoURL:r25 pollingInterval:&var_60 clientToken:r23 autoplayEnabled:r5 loadedBlock:r22 failureBlock:r21];
    [r21 release];
    [r22 release];
    [r23 release];
    [r25 release];
    [self setAutoplayEnabled:r5];
    return;
}

-(void)setHidden:(bool)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = [self viewabilityValidator];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r19 != 0x0) {
            r23 = [r21 isValid];
            [r21 release];
            r21 = [[r20 viewabilityValidator] retain];
            if ((r23 & 0x1) != 0x0) {
                    r8 = &@selector(stopViewabilityCheck);
            }
            else {
                    r8 = &@selector(scheduleViewabilityCheck);
            }
    }
    else {
            r8 = &@selector(scheduleViewabilityCheck);
    }
    objc_msgSend(r21, *r8);
    [r21 release];
    [[&var_40 super] setHidden:r19];
    return;
}

-(void)addGestureRecognizers {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self tapGestureRecognizer];
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r0 = [UITapGestureRecognizer alloc];
            r0 = [r0 initWithTarget:r19 action:@selector(tap:)];
            [r0 setNumberOfTapsRequired:0x1];
            [r19 addGestureRecognizer:r0];
            [r19 setTapGestureRecognizer:r0];
            [r0 release];
    }
    return;
}

-(void)addObserver:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            [r2 retain];
            r0 = [r0 observers];
            r0 = [r0 retain];
            [r0 addObject:r2];
            [r21 release];
            [r19 release];
    }
    return;
}

-(void)applicationDidBecomeActive {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self playbackSuspended] != 0x0) {
            [r19 playVideo];
    }
    [r19 setPlaybackSuspended:0x0];
    return;
}

-(void)applicationWillResignActive {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self playerIsPlaying] != 0x0) {
            [r19 setPlaybackSuspended:0x1];
            [r19 setVideoCurrentlyShownToUser:0x0];
            [r19 pauseVideo];
    }
    return;
}

-(void)addProgressTimeObserver {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [self removeProgressTimeObserver];
    objc_initWeak(r29 - 0x28, r19);
    if (*qword_1011dd1d8 != -0x1) {
            dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
    }
    (*0x1011dd1e0)(0xfa, 0x3e8);
    [*__dispatch_main_q retain];
    objc_copyWeak(&var_50 + 0x20, r29 - 0x28);
    r21 = [[r19 addPeriodicTimeObserverForInterval:&stack[-120] queue:r21 usingBlock:&var_50] retain];
    [r19 setProgressTimeObserver:r21];
    [r21 release];
    [*__dispatch_main_q release];
    objc_destroyWeak(&var_50 + 0x20);
    objc_destroyWeak(r29 - 0x28);
    return;
}

-(void)onVideoProgress {
    [self updateUserInterface];
    return;
}

-(void)enableCoverImageIfNeeded {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[self posterImageView] retain];
    r21 = [[r20 posterImage] retain];
    if (r19 != 0x0) {
            asm { ccmp       x0, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & NE) {
            [r21 release];
    }
    else {
            r20 = [r20 autoplayEnabled];
            [r21 release];
            if ((r20 & 0x1) == 0x0) {
                    [r19 setHidden:0x0];
            }
    }
    [r19 release];
    return;
}

-(void)disableCoverImageIfNeeded {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[self posterImageView] retain];
    r21 = [[r19 posterImage] retain];
    if (r20 != 0x0) {
            asm { ccmp       x0, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & NE) {
            [r21 release];
    }
    else {
            r22 = [r19 autoplayEnabled];
            [r21 release];
            if ((r22 & 0x1) == 0x0) {
                    [r20 setHidden:0x1];
                    [r19 sendSubviewToBack:r20];
            }
    }
    [r20 release];
    return;
}

-(void)buildLayout {
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
    r29 = &saved_fp;
    r19 = self;
    if (([self layoutBuilt] & 0x1) == 0x0) {
            [r19 setLayoutBuilt:0x1];
            r0 = [FBAdVideoPlayButton videoPlayButton];
            r0 = [r0 retain];
            var_90 = r0;
            [r0 addTarget:r19 action:@selector(startStopAction:) forControlEvents:0x40];
            r2 = [r19 autoplayEnabled] ^ 0x1;
            [r0 setHighlighted:r2];
            [r0 setAlpha:r2];
            objc_storeWeak((int64_t *)&r19->_playPauseButton, r0);
            [r19 addSubview:r20];
            r21 = [UILabel new];
            r23 = [[UIColor clearColor] retain];
            [r21 setBackgroundColor:r23];
            [r23 release];
            r23 = [[UIColor whiteColor] retain];
            [r21 setTextColor:r23];
            [r23 release];
            [r21 setAdjustsFontSizeToFitWidth:0x1];
            [r21 setTextAlignment:0x1];
            [r21 setAlpha:0x1];
            [r19 addSubview:r21];
            objc_storeWeak((int64_t *)&r19->_timeRemainingLabel, r21);
            r0 = [FBAdVideoScrubber new];
            [r0 setAlpha:r21];
            [r0 setMinimumValue:r21];
            [r0 setValue:r21];
            [r19 addSubview:r0];
            objc_storeWeak((int64_t *)&r19->_videoScrubber, r0);
            [r23 addTarget:r19 action:@selector(videoScrubberChanged:) forControlEvents:0x1000];
            [r23 addTarget:r19 action:@selector(videoScrubberTouchDown:) forControlEvents:0x1];
            [r23 addTarget:r19 action:@selector(videoScrubberTouchComplete:) forControlEvents:0x1c0];
            r0 = [FBAdVideoPlayerAudioMeters new];
            [r0 setHidesWhenStopped:0x1];
            [r19 addSubview:r0];
            objc_storeWeak((int64_t *)&r19->_audioMetersView, r0);
            r26 = [[UIColor colorWithWhite:r25 alpha:@selector(videoScrubberTouchComplete:)] retain];
            r28 = [[UIColor clearColor] retain];
            r20 = [[UIColor clearColor] retain];
            r24 = [[UIColor colorWithWhite:r25 alpha:@selector(videoScrubberTouchComplete:)] retain];
            r0 = [NSArray arrayWithObjects:&var_88 count:0x4];
            r22 = [r0 retain];
            r27 = [FBGradientView newWithColors:r22];
            [r22 release];
            [r24 release];
            [r20 release];
            [r28 release];
            [r26 release];
            [r19 addSubview:r27];
            objc_storeWeak((int64_t *)&r19->_gradientView, r27);
            [r19 addGestureRecognizers];
            [r19 setInlineMode:0x1];
            [r27 release];
            [r25 release];
            [r23 release];
            [r21 release];
            [var_90 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)onVideoStopped {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [self setPlayerIsPlaying:0x0];
    r0 = [self playPauseButton];
    r0 = [r0 retain];
    r0 = [r0 retain];
    r19 = r0;
    var_40 = r0;
    dispatch_async(*__dispatch_main_q, &var_60);
    r0 = [self gradientView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [NSArray arrayWithObjects:&var_30 count:0x1];
            r22 = [r0 retain];
            [FBAdUtility animateWithFadeIn:r22 completion:0x0];
            [r22 release];
    }
    var_28 = **___stack_chk_guard;
    [r20 release];
    [var_40 release];
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void *)remainingTimeLabelFromDate:(void *)arg2 duration:(double)arg3 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self class];
    r0 = [r0 dateFormatter];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (d8 < *0x100ba1fb0) {
    }
    [r20 setDateFormat:r2];
    r21 = [[r20 stringFromDate:r19] retain];
    [r19 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)removeProgressTimeObserver {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self progressTimeObserver];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r20 = [[r19 progressTimeObserver] retain];
            [r19 removeTimeObserver:r20];
            [r20 release];
    }
    return;
}

-(void)removeGestureRecognizers {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self tapGestureRecognizer];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r19 removeGestureRecognizer:r20];
            [r19 setTapGestureRecognizer:0x0];
    }
    [r20 release];
    return;
}

-(void)removeAllObservers {
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
    r20 = self;
    r19 = [[NSNotificationCenter defaultCenter] retain];
    var_110 = q0;
    r0 = [r20 observers];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r24 = r0;
            r26 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r26) {
                                    objc_enumerationMutation(r22);
                            }
                            [r19 removeObserver:r2];
                            r28 = r28 + 0x1;
                    } while (r28 < r24);
                    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r24 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r22 release];
    r0 = [r20 observers];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r0 release];
    [r19 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)setAutoplayEnabled:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if (arg2 == 0x0) {
            [r20 setupCoverImage];
    }
    *(int8_t *)(int64_t *)&r20->_autoplayEnabled = r19;
    return;
}

-(void)setPosterImage:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = [arg2 retain];
    r20 = r0;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_posterImage));
    r21 = *(r19 + r22);
    if (r21 != r0) {
            r0 = [r19 posterImageView];
            r0 = [r0 retain];
            [r0 setImage:0x0];
            [r0 setNeedsDisplay];
            [r19 setupBgImageView];
            [r0 release];
            r21 = *(r19 + r22);
    }
    *(r19 + r22) = r20;
    r20 = [r20 retain];
    [r21 release];
    [r19 updateCoverImage];
    [r20 release];
    return;
}

-(void)setupCoverImage {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self posterImageView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            r20 = [FBAdBlurredImageView new];
            [r21 release];
            [r19 updateCoverImage];
            r0 = [r19 videoContainerView];
            r0 = [r0 retain];
            [r0 bounds];
            [r20 setFrame:r2];
            [r0 release];
            r0 = [r19 videoContainerView];
            r0 = [r0 retain];
            [r0 addSubview:r20];
            [r0 release];
            objc_storeWeak((int64_t *)&r19->_posterImageView, r20);
            r21 = r20;
    }
    [r21 release];
    return;
}

-(void)setupBgImageView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self shouldBlurWhitespace] != 0x0) {
            r0 = [r19 bgImageView];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (r0 == 0x0) {
                    r20 = [FBAdBlurredImageView new];
                    [r21 release];
                    [r20 setShowBlurImageOnly:0x1];
                    r0 = [r19 videoContainerView];
                    r0 = [r0 retain];
                    [r0 bounds];
                    [r20 setFrame:0x1];
                    [r0 release];
                    [r20 setAutoresizingMask:0x12];
                    [r19 addSubview:r20];
                    [r19 sendSubviewToBack:r20];
                    objc_storeStrong((int64_t *)&r19->_bgImageView, r20);
                    r21 = r20;
            }
            [r21 release];
    }
    return;
}

-(void)setInlineMode:(bool)arg2 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r0;
    *(int8_t *)(int64_t *)&r0->_inlineMode = arg2;
    if (arg2 != 0x0) {
            [r0 setTapEnabled:r2];
            [r19 setControlSizeMultiplier:0x1];
            [r19 setScrubberEnabled:0x0];
            [r19 setPlayPauseButtonEnabled:0x1];
            [r19 setVolume:0x1];
    }
    else {
            [r0 setTapEnabled:r2];
            [r19 setControlSizeMultiplier:r2];
            [r19 setScrubberEnabled:0x1];
            [r19 setPlayPauseButtonEnabled:0x1];
    }
    return;
}

-(void)setTapEnabled:(bool)arg2 {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    *(int8_t *)(int64_t *)&r0->_tapEnabled = arg2;
    r8 = &@selector(removeGestureRecognizers);
    if (arg2 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = &@selector(removeGestureRecognizers);
            }
            else {
                    r8 = &@selector(addGestureRecognizers);
            }
    }
    objc_msgSend(r0, *r8);
    return;
}

-(void)startStopAction:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r8 = &@selector(playVideo);
    if ([self playerIsPlaying] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = &@selector(playVideo);
            }
            else {
                    r8 = &@selector(pauseVideo);
            }
    }
    objc_msgSend(r19, *r8);
    return;
}

-(void)tap:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 defaultVideoRendererWasTapped:self];
    [r0 release];
    return;
}

-(void)updateCoverImage {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    [self enableCoverImageIfNeeded];
    r0 = [r21 posterImage];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [NSMutableArray arrayWithCapacity:0x1];
            r0 = [r0 retain];
            [r0 addObject:r19];
            objc_initWeak(&stack[-56], r21);
            objc_copyWeak(&var_50 + 0x20, &stack[-56]);
            [FBAdImage loadImagesAsync:r20 withBlock:&var_50];
            objc_destroyWeak(&var_50 + 0x20);
            objc_destroyWeak(&stack[-56]);
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)videoDidChangeVolume {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self volumeWasSet] != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            r20 = r0;
            if ([r0 respondsToSelector:@selector(defaultVideoRenderer:volumeDidChange:), r3] != 0x0) {
                    [r19 volume];
                    [r20 defaultVideoRenderer:r19 volumeDidChange:r3];
            }
            [r20 release];
    }
    [r19 setVolumeWasSet:0x1];
    return;
}

-(void)updateUserInterface {
    r31 = r31 - 0xb0;
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
    r29 = &saved_fp;
    r19 = self;
    [self duration];
    if ((var_4C & 0x1) != 0x0) {
            [r19 duration];
            if ((var_64 & 0x10) == 0x0) {
                    [r19 currentTime];
                    sub_100a3e4dc(&stack[-152]);
                    [r19 duration];
                    sub_100a3e4dc(&stack[-176]);
                    asm { frintp     d10, d0 };
                    r20 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:r2];
                    r21 = [[r19 remainingTimeLabelFromDate:r20 duration:r3] retain];
                    r0 = [r19 timeRemainingLabel];
                    r0 = [r0 retain];
                    r2 = r21;
                    [r0 setText:r2];
                    [r0 release];
                    [r21 release];
                    r0 = [r19 videoScrubber];
                    r0 = [r0 retain];
                    r19 = r0;
                    asm { fcvt       s0, d9 };
                    [r0 setMaximumValue:r2];
                    [r19 setPlayableDuration:r2];
                    asm { fcvt       s0, d8 };
                    [r19 setValue:0x1 animated:r3];
                    [r19 release];
                    [r20 release];
            }
    }
    else {
            [r19 currentTime];
            sub_100a3e4dc(&stack[-152]);
            [r19 duration];
            sub_100a3e4dc(&stack[-176]);
            asm { frintp     d10, d0 };
            r20 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:r2];
            r21 = [[r19 remainingTimeLabelFromDate:r20 duration:r3] retain];
            r0 = [r19 timeRemainingLabel];
            r0 = [r0 retain];
            r2 = r21;
            [r0 setText:r2];
            [r0 release];
            [r21 release];
            r0 = [r19 videoScrubber];
            r0 = [r0 retain];
            r19 = r0;
            asm { fcvt       s0, d9 };
            [r0 setMaximumValue:r2];
            [r19 setPlayableDuration:r2];
            asm { fcvt       s0, d8 };
            [r19 setValue:0x1 animated:r3];
            [r19 release];
            [r20 release];
    }
    return;
}

-(void)setupView {
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
    r19 = self;
    if ([self inlineMode] != 0x0) {
            r8 = *_UIEdgeInsetsZero;
            d15 = *(int128_t *)(r8 + 0x8);
            d9 = *(int128_t *)(r8 + 0x10);
            d0 = *(r8 + 0x18);
            var_B0 = d0;
    }
    else {
            sub_100aabe74();
            v15 = v1;
            v9 = v2;
            var_B0 = d3;
    }
    [r19 controlSizeMultiplier];
    d11 = d0 * 0x4038000000000000;
    [r19 controlSizeMultiplier];
    r0 = [r19 playPauseButton];
    r29 = r29;
    r20 = [r0 retain];
    if (([r19 isPlayPauseButtonEnabled] & 0x1) != 0x0) {
            CGRectGetHeight([r19 bounds]);
            d0 = 0x0 - d14 * 0x403e000000000000;
            v10 = v12;
    }
    v14 = v9;
    [r20 setFrame:r2];
    CGRectGetWidth(objc_msgSend(r19, r22));
    asm { fdiv       d9, d11, d1 };
    var_A8 = d15;
    CGRectGetHeight(objc_msgSend(r19, r22));
    var_B8 = d14;
    r0 = [r19 timeRemainingLabel];
    r0 = [r0 retain];
    r21 = r0;
    objc_msgSend(r0, r24);
    objc_msgSend(r19, r25);
    d0 = (d0 - d9 - d11) * 0x4024000000000000;
    r25 = [[UIFont boldSystemFontOfSize:r2] retain];
    [r21 setFont:r25];
    [r25 release];
    d8 = *(int128_t *)(r27 + 0x18);
    r0 = [r19 videoScrubber];
    r29 = r29;
    r25 = [r0 retain];
    if ([r19 isScrubberEnabled] != 0x0) {
            [r25 playableDuration];
            if (d0 > 0x0) {
                    CGRectGetHeight([r19 bounds]);
                    r0 = objc_msgSend(r19, r22);
                    r0 = CGRectGetWidth(r0);
                    d8 = (d11 + d9 - d11) + d11 * 0xbfe0000000000000 - d11 + d11;
                    CGRectGetWidth(r0);
                    d0 = d8 - (d11 + d9 - d11) + d11 * 0xbfe0000000000000 - var_A8;
                    v8 = v11;
            }
    }
    [r25 setFrame:r2];
    r0 = [r19 audioMetersView];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    [r0 sizeToFit];
    CGRectGetWidth([r19 bounds]);
    CGRectGetWidth(objc_msgSend(r26, r22));
    CGRectGetHeight(objc_msgSend(r19, r22));
    CGRectGetHeight(objc_msgSend(r26, r22));
    CGRectGetWidth(objc_msgSend(r26, r22));
    CGRectGetHeight(objc_msgSend(r26, r22));
    [r26 setFrame:r2];
    if ([r19 playerIsPlaying] != 0x0 && ([r19 inlineMode] & 0x1) != 0x0) {
            r8 = &@selector(startAnimating);
    }
    else {
            r8 = &@selector(stopAnimating);
    }
    objc_msgSend(r26, *r8);
    r0 = [r19 gradientView];
    r29 = r29;
    r23 = [r0 retain];
    if ([r19 playerIsPlaying] != 0x0) {
            [r23 setAlpha:r2];
    }
    [r19 bounds];
    [r23 setFrame:r2];
    r27 = [[r19 posterImageView] retain];
    r0 = [r19 videoContainerView];
    r0 = [r0 retain];
    [r0 bounds];
    [r27 setFrame:r2];
    [r28 release];
    r22 = [[r19 posterImage] retain];
    if (r27 != 0x0 && r22 != 0x0) {
            r24 = [r19 autoplayEnabled];
            [r22 release];
            if ((r24 & 0x1) == 0x0) {
                    [r19 bringSubviewToFront:r27];
            }
    }
    else {
            [r22 release];
    }
    [r19 bringSubviewToFront:r23];
    [r19 bringSubviewToFront:r21];
    [r19 bringSubviewToFront:r25];
    [r19 bringSubviewToFront:r20];
    [r27 release];
    [r23 release];
    [r26 release];
    [r25 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)videoDidLoad {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self updateUserInterface];
    [r19 setVideoCurrentlyShownToUser:0x0];
    [r19 addProgressTimeObserver];
    r0 = [r19 viewabilityValidator];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 viewabilityValidator];
            r0 = [r0 retain];
            [r0 stopViewabilityCheck];
            [r0 release];
            r0 = [r19 viewabilityValidator];
            r0 = [r0 retain];
            [r0 setDelegate:r2];
            [r21 release];
            [r19 setViewabilityValidator:r2];
    }
    [[FBAdViewabilityValidator alloc] initWithView:r19 withMinViewability:0x32 shouldObserveNotifications:0x1];
    [r19 setViewabilityValidator:r2];
    [r22 setDelegate:r2];
    [r22 scheduleViewabilityCheckWithInterval:r19 withInitialDelay:0x32];
    [r19 buildLayout];
    [r22 release];
    return;
}

-(void)videoDidPause {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self onVideoStopped];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(defaultVideoRendererDidPause:)] != 0x0) {
            [r20 defaultVideoRendererDidPause:r19];
    }
    [r20 release];
    return;
}

-(void)videoDidPlay {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self setPlayerIsPlaying:0x1];
    dispatch_async(*__dispatch_main_q, &var_58);
    r0 = [r19 gradientView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [NSArray arrayWithObjects:&var_30 count:0x1];
            r29 = r29;
            r22 = [r0 retain];
            [FBAdUtility animateWithFadeOut:r22 completion:0x0];
            [r22 release];
    }
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 respondsToSelector:@selector(defaultVideoRendererDidPlay:)] != 0x0) {
            [r21 defaultVideoRendererDidPlay:r19];
    }
    var_28 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)videoDidSeek {
    return;
}

-(void)videoDidEngageSeek {
    return;
}

-(void)videoDidDisengageSeek {
    return;
}

-(void)videoDidEnd {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self videoScrubber];
    r0 = [r0 retain];
    [r0 setValue:0x0 animated:r3];
    [r0 release];
    [r19 onVideoProgress];
    [r19 onVideoStopped];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(defaultVideoRendererVideoDidComplete:)] != 0x0) {
            [r20 defaultVideoRendererVideoDidComplete:r19];
    }
    [r20 release];
    return;
}

-(void)videoDidFailWithError:(void *)arg2 {
    [self setPlayerIsPlaying:0x0];
    return;
}

-(bool)viewabilityValidator:(void *)arg2 checkedWithStatus:(long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (arg3 != 0x1) goto loc_100aff128;

loc_100aff0c8:
    if (([r20 videoCurrentlyShownToUser] & 0x1) != 0x0 || ([r20 playbackSuspended] & 0x1) != 0x0) goto loc_100aff160;

loc_100aff0f0:
    if ([r20 autoplayEnabled] != 0x0) {
            [r20 playVideo];
    }
    r0 = r20;
    goto loc_100aff15c;

loc_100aff15c:
    [r0 setVideoCurrentlyShownToUser:r2];
    goto loc_100aff160;

loc_100aff160:
    [r19 release];
    return 0x0;

loc_100aff128:
    if ([r20 playerIsPlaying] == 0x0) goto loc_100aff160;

loc_100aff13c:
    [r20 pauseVideo];
    r0 = r20;
    goto loc_100aff15c;
}

-(void)videoScrubberChanged:(void *)arg2 {
    r31 = r31 - 0x50;
    [self engageVideoSeek];
    r0 = [self videoScrubber];
    r0 = [r0 retain];
    [r0 value];
    asm { fcvt       d0, s0 };
    sub_100a3e550(&var_28);
    [r20 release];
    [r19 seekVideoToTime:&var_40];
    return;
}

-(void)videoScrubberTouchDown:(void *)arg2 {
    [self engageVideoSeek];
    return;
}

-(void)videoScrubberTouchComplete:(void *)arg2 {
    [self disengageVideoSeek];
    return;
}

-(void)setScrubberEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_scrubberEnabled = arg2;
    [self setNeedsLayout];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_bgImageView, 0x0);
    objc_storeStrong((int64_t *)&self->_viewabilityValidator, 0x0);
    objc_destroyWeak((int64_t *)&self->_videoScrubber);
    objc_storeStrong((int64_t *)&self->_videoFullscreenController, 0x0);
    objc_destroyWeak((int64_t *)&self->_timeRemainingLabel);
    objc_destroyWeak((int64_t *)&self->_tapGestureRecognizer);
    objc_storeStrong((int64_t *)&self->_progressTimeObserver, 0x0);
    objc_destroyWeak((int64_t *)&self->_posterImageView);
    objc_destroyWeak((int64_t *)&self->_playPauseButton);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_destroyWeak((int64_t *)&self->_gradientView);
    objc_destroyWeak((int64_t *)&self->_audioMetersView);
    objc_storeStrong((int64_t *)&self->_posterImageDidLoadCompletionBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_posterImage, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(bool)inlineMode {
    r0 = *(int8_t *)(int64_t *)&self->_inlineMode;
    return r0;
}

-(void *)posterImage {
    r0 = self->_posterImage;
    return r0;
}

-(void *)posterImageDidLoadCompletionBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_posterImageDidLoadCompletionBlock)), 0x0);
    return r0;
}

-(void)setPosterImageDidLoadCompletionBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)audioMetersView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_audioMetersView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAudioMetersView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_audioMetersView, arg2);
    return;
}

-(bool)autoplayEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_autoplayEnabled;
    return r0;
}

-(double)controlSizeMultiplier {
    r0 = self;
    return r0;
}

-(void)setControlSizeMultiplier:(double)arg2 {
    self->_controlSizeMultiplier = d0;
    return;
}

-(void *)gradientView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_gradientView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setGradientView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_gradientView, arg2);
    return;
}

-(bool)layoutBuilt {
    r0 = *(int8_t *)(int64_t *)&self->_layoutBuilt;
    return r0;
}

-(void)setLayoutBuilt:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_layoutBuilt = arg2;
    return;
}

-(void *)observers {
    r0 = self->_observers;
    return r0;
}

-(void)setObservers:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_observers, arg2);
    return;
}

-(bool)playbackSuspended {
    r0 = *(int8_t *)(int64_t *)&self->_playbackSuspended;
    return r0;
}

-(void)setPlaybackSuspended:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_playbackSuspended = arg2;
    return;
}

-(bool)playerIsPlaying {
    r0 = *(int8_t *)(int64_t *)&self->_playerIsPlaying;
    return r0;
}

-(void)setPlayerIsPlaying:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_playerIsPlaying = arg2;
    return;
}

-(void *)playPauseButton {
    r0 = objc_loadWeakRetained((int64_t *)&self->_playPauseButton);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setPlayPauseButton:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_playPauseButton, arg2);
    return;
}

-(bool)isPlayPauseButtonEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_playPauseButtonEnabled;
    return r0;
}

-(void)setPlayPauseButtonEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_playPauseButtonEnabled = arg2;
    return;
}

-(void *)posterImageView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_posterImageView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setPosterImageView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_posterImageView, arg2);
    return;
}

-(void *)progressTimeObserver {
    r0 = self->_progressTimeObserver;
    return r0;
}

-(void)setProgressTimeObserver:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_progressTimeObserver, arg2);
    return;
}

-(bool)isScrubberEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_scrubberEnabled;
    return r0;
}

-(bool)isTapEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_tapEnabled;
    return r0;
}

-(void *)tapGestureRecognizer {
    r0 = objc_loadWeakRetained((int64_t *)&self->_tapGestureRecognizer);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setTapGestureRecognizer:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_tapGestureRecognizer, arg2);
    return;
}

-(void *)timeRemainingLabel {
    r0 = objc_loadWeakRetained((int64_t *)&self->_timeRemainingLabel);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setTimeRemainingLabel:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_timeRemainingLabel, arg2);
    return;
}

-(bool)videoCurrentlyShownToUser {
    r0 = *(int8_t *)(int64_t *)&self->_videoCurrentlyShownToUser;
    return r0;
}

-(void)setVideoCurrentlyShownToUser:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_videoCurrentlyShownToUser = arg2;
    return;
}

-(void *)videoFullscreenController {
    r0 = self->_videoFullscreenController;
    return r0;
}

-(void)setVideoFullscreenController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_videoFullscreenController, arg2);
    return;
}

-(void *)videoScrubber {
    r0 = objc_loadWeakRetained((int64_t *)&self->_videoScrubber);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setVideoScrubber:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_videoScrubber, arg2);
    return;
}

-(bool)volumeWasSet {
    r0 = *(int8_t *)(int64_t *)&self->_volumeWasSet;
    return r0;
}

-(void *)viewabilityValidator {
    r0 = self->_viewabilityValidator;
    return r0;
}

-(void)setViewabilityValidator:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_viewabilityValidator, arg2);
    return;
}

-(void)setVolumeWasSet:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_volumeWasSet = arg2;
    return;
}

-(void *)bgImageView {
    r0 = self->_bgImageView;
    return r0;
}

-(void)setBgImageView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_bgImageView, arg2);
    return;
}

+(void *)dateFormatter {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_retainBlock(0x100eadf38);
    if (*qword_1011ddc88 != -0x1) {
            dispatch_once(0x1011ddc88, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011ddc90);
    [r19 release];
    r0 = r20;
    return r0;
}

@end