@implementation FBInterstitialAdBodyView

-(void)configureVolume:(double)arg2 {
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
    r29 = &saved_fp;
    r19 = r0;
    asm { fcvt       s9, d0 };
    r0 = [r0 mediaView];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    [r0 setVolume:r2];
    [r20 release];
    if (d8 > 0x0) {
            if (CPU_FLAGS & G) {
                    r20 = 0x1;
            }
    }
    r0 = [r19 audioMuteButton];
    r0 = [r0 retain];
    [r0 setSelected:r20];
    [r0 release];
    [r19 setNeedsLayout];
    return;
}

-(union ?)currentTime {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r8;
    r0 = [self mediaView];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 currentTime];
    }
    else {
            if (*qword_1011dd128 != -0x1) {
                    dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
            }
            r8 = *qword_1011dd130;
            q0 = *(int128_t *)r8;
            *(r19 + 0x10) = *(r8 + 0x10);
            *(int128_t *)r19 = q0;
    }
    r0 = [r20 release];
    return r0;
}

-(double)titleFontSize {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self isCarousel];
    if (r0 != 0x0) {
            r0 = [FBAdScreen isLandscape];
    }
    return r0;
}

-(double)subtitleFontSize {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self isCarousel];
    if (r0 != 0x0) {
            r0 = [FBAdScreen isLandscape];
    }
    return r0;
}

-(void *)callToActionButton {
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
    r20 = self;
    r19 = (int64_t *)&self->_callToActionButton;
    r0 = objc_loadWeakRetained(r19);
    r21 = r0;
    if (r0 == 0x0) {
            r21 = [FBAdCTAButton new];
            r0 = [r20 dataModel];
            r0 = [r0 retain];
            r23 = [[r0 callToAction] retain];
            [r21 setTitle:r23 forState:0x0];
            [r23 release];
            [r0 release];
            [r21 addTarget:r20 action:@selector(adClicked:withEvent:) forControlEvents:0x40];
            [r20 addSubview:r2];
            objc_storeWeak(r19, r21);
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)mediaViewShadowView {
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
    r29 = &saved_fp;
    r20 = self;
    r19 = (int64_t *)&self->_mediaViewShadowView;
    r0 = objc_loadWeakRetained(r19);
    r21 = r0;
    if (r0 == 0x0) {
            r21 = [UIView new];
            r0 = @class(UIColor);
            r0 = [r0 colorWithUInt:0xffffff withAlpha:r3];
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            r25 = r0;
            r26 = [r0 CGColor];
            r0 = [r21 layer];
            r0 = [r0 retain];
            [r0 setBackgroundColor:r26];
            [r0 release];
            [r25 release];
            r0 = [r21 layer];
            r0 = [r0 retain];
            [r0 setShadowRadius:r26];
            [r0 release];
            r0 = @class(UIColor);
            r0 = [r0 colorWithUInt:0x0 withAlpha:r3];
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            r23 = r0;
            r24 = [r0 CGColor];
            r0 = [r21 layer];
            r0 = [r0 retain];
            [r0 setShadowColor:r24];
            [r0 release];
            [r23 release];
            r0 = [r21 layer];
            r0 = [r0 retain];
            [r0 setShadowOffset:r24];
            [r0 release];
            r0 = [r21 layer];
            r0 = [r0 retain];
            [r0 setShadowOpacity:r24];
            [r0 release];
            r0 = [r21 layer];
            r0 = [r0 retain];
            [r0 setMasksToBounds:0x0];
            [r0 release];
            [r20 addSubview:r2];
            objc_storeWeak(r19, r21);
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)bottomGradientView {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = (int64_t *)&self->_bottomGradientView;
    r0 = objc_loadWeakRetained(r19);
    r22 = r0;
    if (r0 == 0x0) {
            r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [[UIColor colorWithUInt:0x0 withAlpha:r3] retain];
            r0 = [NSArray arrayWithObjects:&var_48 count:0x2];
            r24 = [r0 retain];
            r22 = [FBGradientView newWithColors:r24 locations:0x0 startPoint:r21 endPoint:r5 backgroundColor:r6 opacity:r7];
            [r24 release];
            [r20 addSubview:r2];
            objc_storeWeak(r19, r22);
            [r23 release];
            [r21 release];
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)topGradientView {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = (int64_t *)&self->_topGradientView;
    r0 = objc_loadWeakRetained(r19);
    r22 = r0;
    if (r0 == 0x0) {
            r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [[UIColor colorWithUInt:0x0 withAlpha:r3] retain];
            r0 = [NSArray arrayWithObjects:&var_48 count:0x2];
            r24 = [r0 retain];
            r22 = [FBGradientView newWithColors:r24 locations:0x0 startPoint:r21 endPoint:r5 backgroundColor:r6 opacity:r7];
            [r24 release];
            [r20 addSubview:r2];
            objc_storeWeak(r19, r22);
            [r23 release];
            [r21 release];
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)progressBarView {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = (int64_t *)&self->_progressBarView;
    r21 = objc_loadWeakRetained(r19);
    [r20 isVideoAd];
    if (r21 == 0x0) {
            asm { ccmp       w0, #0x0, #0x4, eq };
    }
    if (!CPU_FLAGS & E) {
            r21 = [FBAdVideoProgressBar new];
            r0 = [r20 mediaView];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            if (r0 != 0x0) {
                    r23 = &var_48;
                    [r22 duration];
            }
            else {
                    r23 = &var_48;
            }
            [r21 setDuration:&var_60];
            [r22 release];
            r0 = @class(UIColor);
            r0 = [r0 colorWithUInt:0xffffff withAlpha:r3];
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            [r21 setProgressColor:[r0 CGColor]];
            [r0 release];
            r22 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r21 setBackgroundColor:r22];
            [r22 release];
            [r20 addSubview:r2];
            objc_storeWeak(r19, r21);
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void *)audioMuteButton {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = (int64_t *)&self->_audioMuteButton;
    r21 = objc_loadWeakRetained(r19);
    if ([r20 isVideoAd] != 0x0) {
            [r20 videoAdHasAudio];
            if (r21 == 0x0) {
                    asm { ccmp       w0, #0x0, #0x4, eq };
            }
            if (!CPU_FLAGS & E) {
                    r0 = [FBAdAudioMuteButton audioMuteButton];
                    r0 = [r0 retain];
                    r21 = r0;
                    [r0 addTarget:r20 action:@selector(handleAudioMuteButtonTouch:) forControlEvents:0x40];
                    [r21 setContentEdgeInsets:r20];
                    r0 = [r20 mediaView];
                    r0 = [r0 retain];
                    r22 = r0;
                    [r0 volume];
                    if (s0 <= 0x0) {
                            if (CPU_FLAGS & LE) {
                                    r2 = 0x1;
                            }
                    }
                    [r21 setSelected:r2];
                    [r22 release];
                    [r20 addSubview:r2];
                    objc_storeWeak(r19, r21);
            }
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void)handleAudioMuteButtonTouch:(void *)arg2 {
    r2 = arg2;
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
    r0 = [self mediaView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    [r0 volume];
    if (s0 == 0x0) {
            asm { fcsel      d8, d1, d0, eq };
    }
    [r20 release];
    [r19 configureVolume:r2];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adDisplayableView:didChangeVolume:), r3] != 0x0) {
            [r20 adDisplayableView:r19 didChangeVolume:r3];
    }
    [r20 release];
    return;
}

-(void *)textContainerView {
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
    r20 = self;
    r19 = (int64_t *)&self->_textContainerView;
    r0 = objc_loadWeakRetained(r19);
    r21 = r0;
    if (r0 == 0x0) {
            r21 = [FBInterstitialAdTextView new];
            if ([r20 isCarousel] != 0x0) {
                    r0 = [r20 multiProductDataModel];
                    r0 = [r0 retain];
                    r22 = r0;
                    r23 = [[r0 title] retain];
                    [r21 setTitle:r23];
                    [r23 release];
                    r0 = [r22 body];
            }
            else {
                    r0 = [r20 dataModel];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 subtitle];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = r0;
                    if (r0 == 0x0) {
                            if (!CPU_FLAGS & E) {
                                    r2 = r0;
                            }
                            else {
                                    r2 = @"";
                            }
                    }
                    [r21 setTitle:r2];
                    [r23 release];
                    r0 = [r22 body];
            }
            r23 = [r0 retain];
            [r21 setSubtitle:r23];
            [r23 release];
            [r22 release];
            [r20 addSubview:r2];
            objc_storeWeak(r19, r21);
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void)adClicked:(void *)arg2 withEvent:(void *)arg3 {
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
    r0 = [r20 multiProductDataModel];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 commandURL];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 != 0x0) {
            r22 = [r23 retain];
    }
    else {
            r0 = [r20 dataModel];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 commandURL];
            r29 = r29;
            r22 = [r0 retain];
            [r24 release];
    }
    [r23 release];
    [r21 release];
    r0 = [r20 delegate];
    r0 = [r0 retain];
    [r0 adDisplayableViewDidClick:r20 withEvent:r19 withCommand:r22 skipAppStore:0x0 withPageNumber:0x0 withPageTotal:0x0];
    [r19 release];
    [r0 release];
    [r22 release];
    return;
}

-(void)loadAdFromDataModel:(void *)arg2 placementDefinition:(void *)arg3 {
    r20 = [arg2 retain];
    [arg3 retain];
    objc_storeWeak((int64_t *)&self->_dataModel, r20);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_placementDefinition));
    r22 = *(self + r8);
    *(self + r8) = r21;
    r21 = [r21 retain];
    [r22 release];
    *(int8_t *)(int64_t *)&self->_canPlayVideo = 0x1;
    [self setupMediaViewAndAddAsSubviewWithAudioMutedIfNil:[r20 audioMuted]];
    r0 = [self mediaView];
    r0 = [r0 retain];
    [r0 loadAdFromDataModel:r20 placementDefinition:r21];
    [r20 release];
    [r0 release];
    [self setupNotifications];
    [r21 release];
    return;
}

-(void)loadAdFromDataModel:(void *)arg2 placementDefinition:(void *)arg3 carouselPageNumber:(void *)arg4 totalPages:(void *)arg5 {
    r23 = [arg2 retain];
    [arg3 retain];
    r20 = [arg4 retain];
    [arg5 retain];
    r25 = [[r23 multiProductAdContent] retain];
    [[r25 objectAtIndexedSubscript:[r20 integerValue]] retain];
    [r25 release];
    objc_storeWeak((int64_t *)&self->_dataModel, r23);
    objc_storeWeak((int64_t *)&self->_multiProductDataModel, r22);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_placementDefinition));
    r25 = *(self + r8);
    *(self + r8) = r24;
    r24 = [r24 retain];
    [r25 release];
    *(int8_t *)(int64_t *)&self->_canPlayVideo = 0x1;
    [self setCarouselPageNumber:r20];
    [self setCarouselTotalPages:r21];
    r25 = [r23 audioMuted];
    [r23 release];
    [self setupMediaViewAndAddAsSubviewWithAudioMutedIfNil:r25];
    r0 = [self mediaView];
    r0 = [r0 retain];
    [r0 loadAdFromDataModel:r22 placementDefinition:r24 cardIndex:r20 cardCount:r21];
    [r21 release];
    [r20 release];
    [r0 release];
    [self setupNotifications];
    [r24 release];
    [r22 release];
    return;
}

-(void)setupMediaViewAndAddAsSubviewWithAudioMutedIfNil:(bool)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r0 = [self mediaView];
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            [[FBInterstitialAdMediaView alloc] initWithDelegate:r19 audioMuted:r20];
            objc_initWeak(&stack[-56], r19);
            objc_copyWeak(&var_50 + 0x20, &stack[-56]);
            [r20 setVideoReadyToDisplay:&var_50];
            [r19 addSubview:r20];
            objc_storeWeak((int64_t *)&r19->_mediaView, r20);
            objc_destroyWeak(&var_50 + 0x20);
            objc_destroyWeak(&stack[-56]);
            [r20 release];
    }
    return;
}

-(void)showAd {
    [self setupViewabilityValidationIfNeeded];
    r0 = [self mediaView];
    r0 = [r0 retain];
    [r0 willBePresented];
    [r0 release];
    return;
}

-(void)setupViewabilityValidationIfNeeded {
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
    r0 = [self viewabilityValidator];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 viewabilityValidator];
            r29 = r29;
            r0 = [r0 retain];
            [r0 stopViewabilityCheck];
            [r0 release];
    }
    r0 = [r19 placementDefinition];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r21 = [FBAdViewabilityValidator alloc];
            [r20 viewabilityCheckInterval];
            [r20 viewabilityCheckInitialDelay];
            r0 = [r21 initWithView:r19 withInterval:[r20 minViewabilityPercentage] withInitialDelay:[r20 minViewabilityTicks] withMinViewability:0x1 withTickDuration:r6 shouldObserveNotifications:r7];
            [r0 setDelegate:r19];
            [r0 scheduleViewabilityCheck];
            [r19 setViewabilityValidator:r0];
            [r0 release];
    }
    [r20 release];
    return;
}

-(void)destroyAd {
    r0 = [self mediaView];
    r0 = [r0 retain];
    [r0 terminateAd];
    [r0 release];
    return;
}

-(double)intrinsicCarouselCardHeightForWidth:(double)arg2 {
    r2 = arg2;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r21 = self;
    r0 = [self multiProductDataModel];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = [FBInterstitialAdTextView new];
            [r21 titleFontSize];
            asm { fcvtzs     x2, d0 };
            [r20 setTitleFontSize:r2];
            [r21 subtitleFontSize];
            asm { fcvtzs     x2, d0 };
            [r20 setSubtitleFontSize:r2];
            r22 = [[r19 title] retain];
            [r20 setTitle:r22];
            [r22 release];
            r0 = [r19 body];
            r29 = r29;
            r22 = [r0 retain];
            [r20 setSubtitle:r22];
            [r22 release];
            if (([r21 preventCarouselTextTruncationInPortrait] & 0x1) == 0x0) {
                    r0 = [r19 subtitle];
                    r0 = [r0 retain];
                    r21 = r0;
                    if (r0 == 0x0) {
                            asm { cinc       x2, x8, eq };
                    }
                    [r20 setMaxLinesForTitle:r2];
                    [r21 release];
                    [r20 setMaxLinesForSubtitle:0x1];
            }
            [r20 sizeThatFits:r2];
            [r20 release];
    }
    r0 = [r19 release];
    return r0;
}

-(void)setPlaying:(bool)arg2 forced:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg3;
    r22 = arg2;
    r19 = self;
    if ([self isVideoAd] != 0x0) {
            r20 = [[r19 mediaView] retain];
            if (r22 != 0x0) {
                    if ([r19 canPlayVideo] != 0x0) {
                            if (([r19 videoPlaybackInterrupted] & 0x1) != 0x0 || (r21 & 0x1) != 0x0) {
                                    [r20 playVideo];
                                    [r19 setVideoPlaybackInterrupted:0x0];
                                    [r19 setPreventCarouselVideoAutoplay:0x0];
                            }
                    }
                    else {
                            if (r21 != 0x0) {
                                    [r20 playVideo];
                                    [r19 setVideoPlaybackInterrupted:0x0];
                                    [r19 setPreventCarouselVideoAutoplay:0x0];
                            }
                    }
            }
            else {
                    if ([r20 isVideoStopped] != 0x0) {
                            asm { ccmp       w21, #0x0, #0x0, ne };
                    }
                    if (!CPU_FLAGS & E) {
                            [r19 setVideoPlaybackInterrupted:0x1];
                    }
                    [r20 pauseVideo];
            }
            [r20 release];
    }
    return;
}

-(void)layoutMediaViewShadowView {
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
    r19 = [[self mediaViewShadowView] retain];
    r0 = [r20 mediaView];
    r0 = [r0 retain];
    r21 = r0;
    [r0 frame];
    [r19 setFrame:r2];
    [r21 bounds];
    r0 = [UIBezierPath bezierPathWithRoundedRect:r2 cornerRadius:r3];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r22 = r0;
    r23 = [r0 CGPath];
    r0 = [r19 layer];
    r0 = [r0 retain];
    [r0 setShadowPath:r23];
    [r0 release];
    [r22 release];
    if (([r20 isMediaViewFullscreen] & 0x1) != 0x0) {
            r2 = 0x1;
    }
    else {
            r2 = [r20 isCarousel];
    }
    [r19 setHidden:r2];
    [r21 release];
    [r19 release];
    return;
}

-(bool)isCallToActionPresent {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self dataModel];
    r0 = [r0 retain];
    r19 = r0;
    r20 = [[r0 callToAction] retain];
    r21 = [[NSCharacterSet whitespaceCharacterSet] retain];
    r22 = [[r20 stringByTrimmingCharactersInSet:r21] retain];
    [r21 release];
    [r20 release];
    if ([r22 length] != 0x0) {
            if (CPU_FLAGS & NE) {
                    r20 = 0x1;
            }
    }
    [r22 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)layoutMediaView {
    var_60 = d15;
    stack[-104] = d14;
    r31 = r31 + 0xffffffffffffff90;
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
    [self bounds];
    v8 = v0;
    v9 = v1;
    v11 = v2;
    v10 = v3;
    [r19 contentInset];
    r21 = [[r19 mediaView] retain];
    r0 = [FBAdScreen isPortrait];
    if (r0 != 0x0) {
            r0 = CGRectGetMinY(r0);
            v0 = v8;
            CGRectGetWidth(r0);
            r22 = @selector(setFrame:);
            objc_msgSend(r21, r22);
            [r21 applyNaturalHeight];
    }
    else {
            [r19 bounds];
            r22 = @selector(setFrame:);
            objc_msgSend(r21, r22);
    }
    if ([r19 isCarousel] != 0x0) {
            CGRectGetWidth([r19 bounds]);
            CGRectGetWidth([r19 bounds]);
            objc_msgSend(r21, r22);
    }
    [r21 release];
    return;
}

-(void)layoutCTAForceCondensedLayout:(bool)arg2 {
    r31 = r31 - 0x80;
    var_60 = d15;
    stack[-104] = d14;
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
    r22 = arg2;
    r20 = self;
    sub_100aabe74();
    v15 = v2;
    v13 = v3;
    r19 = [[r20 callToActionButton] retain];
    [r20 bounds];
    v8 = v0;
    v9 = v1;
    v10 = v2;
    CGRectGetHeight(CGRectGetMinY([r20 contentInset]));
    var_68 = d14 + d0 + d2 + 0x8078000000000000;
    [r19 sizeThatFits:r2];
    v14 = v12;
    r0 = [FBAdScreen isPortrait];
    if (r0 != 0x0 && (r22 & 0x1) == 0x0) {
            CGRectGetWidth(r0);
            v14 = v12;
            if ([r20 isCarousel] != 0x0) {
                    r0 = [r20 bounds];
                    r0 = CGRectGetHeight(r0);
                    d0 = 0x4037ffffffffffff;
                    CGRectGetWidth(r0);
            }
            else {
                    d0 = 0xc040000000000000;
            }
    }
    else {
            v11 = v15;
            CGRectGetMaxX(r0);
            if ([r20 isCarousel] != 0x0) {
                    d0 = 0x7fefffffffffffff;
                    CGRectGetWidth(CGRectGetHeight([r20 bounds]));
                    v14 = v12;
            }
            else {
                    d0 = var_68;
            }
    }
    r0 = [r20 isCallToActionPresent];
    if ((r0 & 0x1) == 0x0) {
            CGRectGetMaxX(r0);
            [r19 setHidden:0x1];
    }
    [r19 setFrame:r2];
    [r19 release];
    return;
}

-(void)layoutGradients {
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
    r23 = self;
    r19 = [[self topGradientView] retain];
    r20 = [[r23 bottomGradientView] retain];
    r0 = [r23 mediaView];
    r0 = [r0 retain];
    r21 = r0;
    CGRectGetWidth([r0 bounds]);
    v8 = v0;
    CGRectGetHeight([r21 bounds]);
    v9 = v0;
    [r23 bounds];
    CGRectEqualToRect([r21 frame], @selector(frame));
    [r21 frame];
    r0 = [r23 textContainerView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 frame];
    v4 = v0;
    r26 = CGRectContainsRect(r0, @selector(frame));
    [r27 release];
    CGRectGetMinX([r21 frame]);
    v10 = v0;
    CGRectGetMinY([r21 frame]);
    d9 = d9 * *0x100b9b498;
    if (r25 != 0x0) {
            asm { fcsel      d0, d2, d0, ne };
    }
    [r19 setFrame:r2];
    CGRectGetMinX([r21 frame]);
    CGRectGetMaxY([r21 frame]);
    objc_msgSend(r20, r25);
    if (r26 == 0x0) goto loc_100add788;

loc_100add664:
    if (([r23 isCarousel] & 0x1) == 0x0) {
            r25 = @selector(setFrame:);
            [r20 bounds];
            [[UIBezierPath bezierPathWithRoundedRect:0xc byRoundingCorners:r3 cornerRadii:r4] retain];
            r26 = [[CAShapeLayer layer] retain];
            [r20 bounds];
            objc_msgSend(r26, r25);
            r0 = objc_retainAutorelease(r23);
            r22 = r0;
            [r26 setPath:[r0 CGPath]];
            r0 = [r20 layer];
            r0 = [r0 retain];
            [r0 setMask:r26];
            [r0 release];
            [r26 release];
            [r22 release];
    }
    [r19 setAlpha:r2];
    r0 = r20;
    r1 = r22;
    goto loc_100add7b4;

loc_100add7b4:
    objc_msgSend(r0, r1);
    goto loc_100add7b8;

loc_100add7b8:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_100add788:
    if (r19 == 0x0 || r20 == 0x0) goto loc_100add7b8;

loc_100add790:
    [r19 setAlpha:r2];
    r0 = r20;
    r1 = r22;
    goto loc_100add7b4;
}

-(bool)isVideoCarouselPage {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self isCarousel];
    if (r0 != 0x0) {
            r0 = [r19 isVideoAd];
    }
    return r0;
}

-(void)layoutProgressBar {
    r31 = r31 - 0x100;
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
    r20 = self;
    sub_100aabe74();
    var_100 = d1;
    v9 = v2;
    [r20 bounds];
    var_F0 = d1;
    var_E8 = d0;
    var_E0 = d2;
    var_D8 = d3;
    [r20 contentInset];
    v8 = v0;
    v10 = v1;
    var_F8 = d2;
    v15 = v3;
    r0 = [r20 mediaView];
    r0 = [r0 retain];
    [r0 frame];
    v14 = v0;
    v13 = v1;
    v12 = v2;
    v11 = v3;
    [r0 release];
    r0 = [r20 callToActionButton];
    r29 = &var_10;
    r0 = [r0 retain];
    r19 = r0;
    [r0 frame];
    var_C0 = d1;
    stack[-184] = d0;
    var_D0 = d3;
    stack[-200] = d2;
    [r19 release];
    var_B0 = d9;
    if (d9 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    r27 = r19 & [r20 isMediaViewFullscreen];
    r0 = [r20 progressBarView];
    r29 = r29;
    r19 = [r0 retain];
    r0 = [FBAdScreen isPortrait];
    if ((r0 & 0x1) == 0x0) {
            r0 = [r20 isCarousel];
            if (r0 != 0x0) {
                    r0 = CGRectGetMinX(r0);
                    d9 = d0 + 0x0;
                    r0 = CGRectGetMinY(r0);
                    r0 = CGRectGetHeight(r0);
                    d15 = 0xc010000000000000 + d8 + d0;
                    CGRectGetWidth(r0);
                    v10 = v14;
                    r0 = @class(UIColor);
                    r0 = [r0 colorWithUInt:0xffffff withAlpha:r3];
                    r0 = [r0 retain];
                    r0 = objc_retainAutorelease(r0);
                    [r19 setProgressColor:[r0 CGColor]];
                    [r0 release];
                    r0 = @class(UIColor);
                    r0 = [r0 colorWithUInt:0xffffff withAlpha:r3];
                    r29 = r29;
                    r2 = [r0 retain];
                    [r19 setBackgroundColor:r2];
                    [r26 release];
                    if (r27 != 0x0) {
                            [r19 setCornerRadius:r2];
                    }
                    if ([r20 isMediaViewFullscreen] != 0x0) {
                            r0 = @class(UIColor);
                            r0 = [r0 colorWithUInt:0xffffff withAlpha:r3];
                            r0 = [r0 retain];
                            r0 = objc_retainAutorelease(r0);
                            [r19 setProgressColor:[r0 CGColor]];
                            [r0 release];
                            [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
                            [r19 setBackgroundColor:r2];
                            [r20 release];
                    }
            }
            else {
                    [r19 setCornerRadius:r2];
                    r0 = @class(UIColor);
                    r0 = [r0 colorWithUInt:0xffffff withAlpha:r3];
                    r0 = [r0 retain];
                    r0 = objc_retainAutorelease(r0);
                    [r19 setProgressColor:[r0 CGColor]];
                    [r0 release];
                    r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
                    [r19 setBackgroundColor:r21];
                    r0 = [r21 release];
                    d8 = var_E0 - d10 + d15;
                    r0 = CGRectGetMinY(r0);
                    r0 = CGRectGetHeight(r0);
                    d0 = stack[-184];
                    CGRectGetMinX(r0);
                    if ((r27 & 0x1) == 0x0) {
                            CGRectGetWidth(CGRectGetMaxY([r19 setCornerRadius:r2]));
                            v10 = v14;
                    }
            }
    }
    else {
            r0 = CGRectGetMinX(r0);
            d9 = d0 + 0x0;
            r0 = CGRectGetMinY(r0);
            r0 = CGRectGetHeight(r0);
            d15 = 0xc010000000000000 + d8 + d0;
            CGRectGetWidth(r0);
            v10 = v14;
            r0 = @class(UIColor);
            r0 = [r0 colorWithUInt:0xffffff withAlpha:r3];
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            [r19 setProgressColor:[r0 CGColor]];
            [r0 release];
            r0 = @class(UIColor);
            r0 = [r0 colorWithUInt:0xffffff withAlpha:r3];
            r29 = r29;
            r2 = [r0 retain];
            [r19 setBackgroundColor:r2];
            [r26 release];
            if (r27 != 0x0) {
                    [r19 setCornerRadius:r2];
            }
            if ([r20 isMediaViewFullscreen] != 0x0) {
                    r0 = @class(UIColor);
                    r0 = [r0 colorWithUInt:0xffffff withAlpha:r3];
                    r0 = [r0 retain];
                    r0 = objc_retainAutorelease(r0);
                    [r19 setProgressColor:[r0 CGColor]];
                    [r0 release];
                    [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
                    [r19 setBackgroundColor:r2];
                    [r20 release];
            }
    }
    [r19 setFrame:r2];
    [r19 release];
    return;
}

-(bool)isVideoAd {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self multiProductDataModel];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            if ([r19 type] == 0x2) {
                    if (CPU_FLAGS & E) {
                            r21 = 0x1;
                    }
            }
    }
    else {
            r0 = [r20 dataModel];
            r0 = [r0 retain];
            r20 = r0;
            if (r0 != 0x0) {
                    if ([r20 type] == 0x2) {
                            if (CPU_FLAGS & E) {
                                    r21 = 0x1;
                            }
                    }
            }
            else {
                    r21 = 0x0;
            }
            [r20 release];
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)layoutAudioMuteButton {
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
    r21 = self;
    r19 = [[self mediaView] retain];
    r20 = [[r21 audioMuteButton] retain];
    r0 = [r21 callToActionButton];
    r0 = [r0 retain];
    [r0 frame];
    v11 = v0;
    v10 = v1;
    v9 = v2;
    v8 = v3;
    [r0 release];
    [r19 frame];
    v15 = v0;
    v14 = v1;
    v13 = v2;
    v12 = v3;
    r0 = [FBAdScreen isPortrait];
    if ((r0 & 0x1) == 0x0) {
            r0 = [r21 isCarousel];
            if (r0 != 0x0) {
                    var_78 = d8;
                    r0 = CGRectGetMaxX(r0);
                    v8 = v15;
                    v2 = v13;
                    CGRectGetMinY(r0);
                    v12 = v15;
                    if ([r21 isMediaViewFullscreen] != 0x0) {
                            r0 = sub_100aabe74();
                            v2 = v9;
                            CGRectGetMaxX(r0);
                    }
            }
            else {
                    r0 = CGRectGetMaxX(r0);
                    v2 = v13;
                    CGRectGetMinY(r0);
                    if ([r21 isCallToActionPresent] != 0x0) {
                            asm { fcsel      d8, d8, d0, ne };
                    }
            }
    }
    else {
            var_78 = d8;
            r0 = CGRectGetMaxX(r0);
            v8 = v15;
            v2 = v13;
            CGRectGetMinY(r0);
            v12 = v15;
            if ([r21 isMediaViewFullscreen] != 0x0) {
                    r0 = sub_100aabe74();
                    v2 = v9;
                    CGRectGetMaxX(r0);
            }
    }
    [r19 volume];
    if (s0 == 0x3ff0000000000000) {
            if (CPU_FLAGS & E) {
                    r2 = 0x1;
            }
    }
    [r20 setSelected:r2];
    [r20 setFrame:r2];
    [r20 release];
    [r19 release];
    return;
}

-(bool)videoAdHasAudio {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self multiProductDataModel];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r21 = [r19 videoHasAudio];
    }
    else {
            r0 = [r20 dataModel];
            r0 = [r0 retain];
            r20 = r0;
            if (r0 != 0x0) {
                    r21 = [r20 videoHasAudio];
            }
            else {
                    r21 = 0x0;
            }
            [r20 release];
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)dealloc {
    [self setDelegate:0x0];
    [FBAdNotificationCenter removeAllObserversForObject:self];
    [[&var_20 super] dealloc];
    return;
}

-(void)setupNotifications {
    [FBAdNotificationCenter removeAllObserversForObject:self];
    objc_initWeak(&stack[-104], self);
    [[NSOperationQueue mainQueue] retain];
    [[FBAdNotificationCenter notificationCenterForObject:self] retain];
    objc_copyWeak(&var_80 + 0x20, &stack[-104]);
    [r21 addNotificationWithName:r23 object:0x0 queue:r19 block:&var_80];
    objc_copyWeak(&var_A8 + 0x20, &stack[-104]);
    [r21 addNotificationWithName:r24 object:0x0 queue:r19 block:&var_A8];
    objc_destroyWeak(&var_A8 + 0x20);
    objc_destroyWeak(&var_80 + 0x20);
    [r21 release];
    [r19 release];
    objc_destroyWeak(&stack[-104]);
    return;
}

-(bool)isMediaViewFullscreen {
    r0 = [self mediaView];
    r0 = [r0 retain];
    [r0 frame];
    [r0 release];
    r0 = [self bounds];
    r0 = CGRectEqualToRect(r0, @selector(bounds));
    return r0;
}

-(void)bringSubViewsToFront {
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
    r21 = [[self mediaView] retain];
    [r19 bringSubviewToFront:r21];
    [r21 release];
    r0 = [r19 topGradientView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 == 0x0) goto loc_100adf43c;

loc_100adf3b4:
    r0 = [r19 bottomGradientView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 == 0x0) goto loc_100adf444;

loc_100adf3e4:
    r22 = [[r19 topGradientView] retain];
    [r19 bringSubviewToFront:r22];
    [r22 release];
    r0 = [r19 bottomGradientView];
    r29 = r29;
    r23 = [r0 retain];
    [r19 bringSubviewToFront:r23];
    goto loc_100adf43c;

loc_100adf43c:
    [r23 release];
    goto loc_100adf444;

loc_100adf444:
    r0 = [r19 textContainerView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 textContainerView];
            r29 = r29;
            r21 = [r0 retain];
            [r19 bringSubviewToFront:r21];
            [r21 release];
    }
    r0 = [r19 progressBarView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 progressBarView];
            r29 = r29;
            r21 = [r0 retain];
            [r19 bringSubviewToFront:r21];
            [r21 release];
    }
    r0 = [r19 audioMuteButton];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 audioMuteButton];
            r29 = r29;
            r21 = [r0 retain];
            [r19 bringSubviewToFront:r21];
            [r21 release];
    }
    r21 = [[r19 callToActionButton] retain];
    [r19 bringSubviewToFront:r21];
    [r21 release];
    return;
}

-(struct CGRect)insetBounds {
    [self bounds];
    r0 = [self contentInset];
    return r0;
}

-(bool)isCarousel {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self dataModel];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 type] == 0x3) {
            if (CPU_FLAGS & E) {
                    r20 = 0x1;
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)toggleAdDetailsForceShow:(bool)arg2 {
    r31 = r31 - 0x90;
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
    r0 = [self onRequestToggleOverlayViews];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 onRequestToggleOverlayViews];
            r29 = r29;
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r21 release];
    }
    r21 = [[r19 textContainerView] retain];
    r22 = [[r19 callToActionButton] retain];
    r23 = [[r19 audioMuteButton] retain];
    r24 = [[r19 progressBarView] retain];
    r25 = [NSMutableArray new];
    if (r21 != 0x0) {
            [r25 addObject:r2];
    }
    if (r22 != 0x0) {
            [r25 addObject:r2];
    }
    if (r23 != 0x0) {
            [r25 addObject:r2];
    }
    if (r24 != 0x0) {
            [r25 addObject:r2];
    }
    r20 = [r25 retain];
    [FBAdUtility animateWithStandardAnimations:&var_78 completion:0x0];
    [r25 release];
    [r20 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    return;
}

-(bool)shouldAutoplayCarousel {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self isVideoCarouselPage] != 0x0) {
            r0 = [r19 mediaView];
            r0 = [r0 retain];
            r20 = r0;
            if ([r0 isVideoStopped] != 0x0) {
                    r19 = [r19 preventCarouselVideoAutoplay] ^ 0x1;
            }
            else {
                    r19 = 0x0;
            }
            [r20 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = r19;
    return r0;
}

-(bool)isAutoplay {
    r0 = [self dataModel];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 videoAutoplayEnabled];
    r0 = [r0 retain];
    r21 = [r0 boolValue];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)layoutSubviews {
    r31 = r31 - 0x140;
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
    r24 = [self isCarousel];
    r27 = [FBAdScreen isPortrait];
    [FBAdScreen isLandscape];
    sub_100aabe74();
    var_120 = d1;
    [r19 bounds];
    var_108 = d1;
    var_100 = d0;
    v13 = v2;
    var_E8 = d3;
    [r19 contentInset];
    v8 = v0;
    v9 = v1;
    var_118 = d3;
    var_110 = d2;
    [r19 layoutCTAForceCondensedLayout:r20];
    var_EC = r20;
    r2 = r20;
    [r19 styleCTAForceCondensedLayout:r2];
    r20 = [[r19 mediaView] retain];
    r0 = [r19 textContainerView];
    r29 = &var_10;
    r22 = [r0 retain];
    if ([FBAdScreen isLandscape] != 0x0) {
            asm { fcsel      d0, d1, d0, ne };
    }
    [r22 setVerticalTextSpacing:r2];
    [r19 titleFontSize];
    asm { fcvtzs     x2, d0 };
    [r22 setTitleFontSize:r2];
    [r19 subtitleFontSize];
    asm { fcvtzs     x2, d0 };
    [r22 setSubtitleFontSize:r2];
    if (r24 != 0x0) {
            r0 = [r19 dataModel];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 subtitle];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (r0 == 0x0) {
                    asm { cinc       x2, x8, eq };
            }
            [r22 setMaxLinesForTitle:r2];
            [r21 release];
            [r23 release];
            r2 = 0x1;
            [r22 setMaxLinesForSubtitle:r2];
            if ((r27 & [r19 preventCarouselTextTruncationInPortrait]) == 0x1) {
                    [r22 setMaxLinesForTitle:0x2];
                    r2 = 0x2;
                    [r22 setMaxLinesForSubtitle:r2];
            }
    }
    [r19 layoutMediaView];
    r28 = r20;
    [r20 frame];
    v15 = v0;
    v12 = v1;
    var_D0 = d2;
    v11 = v3;
    r0 = [r19 callToActionButton];
    r29 = r29;
    r0 = [r0 retain];
    [r0 frame];
    v10 = v0;
    v14 = v1;
    var_E0 = d2;
    stack[-216] = d3;
    r0 = [r23 release];
    if ((r24 | r27) != 0x1) goto loc_100adeaa0;

loc_100ade908:
    CGRectOffset(r0, @selector(frame), r2);
    var_120 = d1;
    var_138 = d2;
    var_130 = d3;
    r0 = [r22 sizeThatFits:r2];
    v13 = v11;
    v2 = v9;
    r0 = CGRectGetHeight(r0);
    var_E8 = d15;
    d15 = d13 + 0x8070000000000000;
    v0 = v10;
    r0 = CGRectGetMinY(r0);
    v9 = v0;
    d0 = var_100 + d9;
    r0 = CGRectGetMinY(r0);
    d8 = var_D0 - d0;
    if (d15 < d8) goto loc_100adeb4c;

loc_100ade9dc:
    var_108 = d10;
    var_100 = d13;
    var_128 = d14;
    v3 = v11;
    d10 = stack[-216];
    v0 = v15;
    v1 = v12;
    v9 = v3;
    r0 = CGRectGetHeight(r0);
    if (d0 <= d8) goto loc_100adebe4;

loc_100adea0c:
    r0 = [r28 layer];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setCornerRadius:r2];
    [r0 release];
    r0 = [r19 bounds];
    v15 = v0;
    v14 = v1;
    v8 = v2;
    r20 = var_EC;
    v13 = v11;
    d9 = var_100;
    if (r24 != 0x0) {
            CGRectGetWidth(r0);
            v12 = v15;
            [r19 layoutCTAForceCondensedLayout:0x1];
            r2 = 0x1;
            r0 = [r19 styleCTAForceCondensedLayout:r2];
    }
    else {
            v12 = v3;
    }
    CGRectGetWidth(CGRectGetMinY(r0));
    var_E8 = (0x0 - d9) + 0xc040000000000000;
    r0 = [r19 isCallToActionPresent];
    d0 = (0x0 - d9) + 0x80000000000000;
    if (r0 != 0x0) {
            asm { fcsel      d0, d9, d0, ne };
    }
    if (r20 != 0x0) {
            asm { fcsel      d1, d1, d2, ne };
    }
    if (r24 == 0x0) {
            asm { fcsel      d13, d3, d2, eq };
    }
    if (CPU_FLAGS & E) {
            asm { fcsel      d10, d0, d1, eq };
    }
    v11 = v8;
    goto loc_100aded70;

loc_100aded70:
    CGRectIntegral(r0);
    r0 = [r22 setFrame:r2];
    v2 = v11;
    CGRectIntegral(r0);
    [r28 setFrame:r2];
    [r19 styleMediaView];
    [r19 styleToolbar];
    [r19 styleTextView];
    [r19 layoutGradients];
    [r19 layoutProgressBar];
    [r19 styleProgressBar];
    [r19 layoutAudioMuteButton];
    if (r24 != 0x0) {
            [r19 bringSubViewsToFront];
            r0 = &var_B8;
    }
    else {
            if (r20 != 0x0) {
                    sub_100aabe74();
                    r21 = [r19 isMediaViewFullscreen];
                    r0 = [r19 progressBarView];
                    r0 = [r0 retain];
                    r24 = r0;
                    if (r24 != 0x0 && r21 != 0x0 && d8 != 0x0) {
                            CGRectIntegral(r0);
                            [r22 setFrame:r2];
                    }
                    [r24 release];
            }
            [r19 bringSubViewsToFront];
            [r19 layoutMediaViewShadowView];
            [r19 styleCTAForceCondensedLayout:r2];
            [r19 toggleAdDetailsForceShow:0x1];
            r0 = &var_C8;
    }
    *(r0 + 0x8) = *0x101169188;
    [[r0 super] layoutSubviews];
    [r22 release];
    [r28 release];
    return;

loc_100adebe4:
    r0 = CGRectGetHeight(r0);
    r0 = CGRectGetWidth(r0);
    d8 = 0xc040000000000000;
    CGRectGetHeight(r0);
    r0 = [r22 sizeThatFits:r2];
    v9 = v15;
    v3 = v11;
    r0 = CGRectOffset(r0, @selector(sizeThatFits:), r2);
    v15 = v15;
    v14 = v12;
    v11 = v10;
    v12 = v3;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMaxY(r0);
    d10 = (d0 - d0 + d8) + 0xc030000000000000;
    r0 = CGRectGetWidth(r0);
    var_E8 = (d0 - d0 + d8) + d8;
    goto loc_100adeb44;

loc_100adeb44:
    r20 = var_EC;
    goto loc_100aded70;

loc_100adeb4c:
    r20 = var_EC;
    if (r20 != 0x0) {
            asm { fcsel      d1, d1, d2, ne };
    }
    if (r24 == 0x0) {
            asm { fcsel      d8, d0, d3, eq };
    }
    if (CPU_FLAGS & E) {
            asm { fcsel      d9, d3, d1, eq };
    }
    if (CPU_FLAGS & E) {
            asm { fcsel      d13, d4, d2, eq };
    }
    v1 = v12;
    v3 = v11;
    r0 = CGRectOffset(r0, @selector(sizeThatFits:), r2);
    v15 = v0;
    v14 = v1;
    v11 = v2;
    v12 = v3;
    r0 = CGRectOffset(r0, @selector(sizeThatFits:), r2);
    v13 = v0;
    v10 = v1;
    var_E8 = var_D0;
    v9 = v3;
    goto loc_100aded70;

loc_100adeaa0:
    r0 = CGRectGetMinX(r0);
    v14 = v12;
    v12 = v11;
    CGRectGetHeight(r0);
    v1 = v15;
    r0 = [r22 sizeThatFits:r2];
    var_E8 = 0x60000000000000 - var_120;
    v15 = v15;
    v9 = v1;
    r0 = CGRectGetMaxY(r0);
    d10 = 0x4030000000000000 - d9;
    goto loc_100adeb44;
}

-(void)styleMediaView {
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
    r0 = [self mediaView];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 layer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 setCornerRadius:r2];
    [r0 release];
    if ([FBAdScreen isPortrait] != 0x0 && ([r21 isCarousel] & 0x1) == 0x0) {
            if (([r21 isMediaViewFullscreen] & 0x1) == 0x0) {
                    [r19 setClipsToBounds:0x1];
                    r0 = [r19 layer];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 setCornerRadius:0x1];
                    [r0 release];
            }
    }
    if ([r21 isCarousel] != 0x0) {
            [r19 frame];
            r23 = [[UIBezierPath bezierPathWithRoundedRect:0x3 byRoundingCorners:r3 cornerRadii:r4] retain];
            r21 = [[CAShapeLayer layer] retain];
            [r19 frame];
            [r21 setFrame:0x3];
            r0 = objc_retainAutorelease(r23);
            r22 = r0;
            [r21 setPath:[r0 CGPath]];
            r0 = [r19 layer];
            r0 = [r0 retain];
            [r0 setMask:r21];
            [r0 release];
            [r21 release];
            [r22 release];
    }
    [r19 release];
    return;
}

-(void)styleProgressBar {
    var_50 = d11;
    stack[-88] = d10;
    r31 = r31 + 0xffffffffffffffa0;
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
    [self bounds];
    v9 = v1;
    r0 = [r19 mediaView];
    r0 = [r0 retain];
    r21 = CGRectEqualToRect([r0 frame], @selector(frame));
    [r0 release];
    sub_100aabe74();
    r20 = [[r19 progressBarView] retain];
    r0 = @class(UIColor);
    r0 = [r0 colorWithUInt:0x3c7cff withAlpha:r3];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    [r20 setProgressColor:[r0 CGColor]];
    [r0 release];
    r22 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r20 setBackgroundColor:r22];
    [r22 release];
    if (d8 != 0x0 || r21 == 0x0) {
            if ([r19 isVideoAd] != 0x0) {
                    ([r19 isCarousel] & 0x1) == 0x0;
            }
    }
    [r20 setCornerRadius:r2];
    [r20 release];
    return;
}

-(void)styleTextView {
    var_40 = d11;
    stack[-72] = d10;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[self textContainerView] retain];
    r0 = [r20 mediaView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 frame];
    v8 = v0;
    r22 = CGRectContainsRect(objc_msgSend(r19, r22), r22);
    [r21 release];
    if (r22 != 0x0) {
            r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r19 setTitleTextColor:r21];
            [r21 release];
            r20 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r19 setSubtitleTextColor:r20];
            [r20 release];
            r2 = 0x0;
    }
    else {
            r21 = [[UIColor colorWithRed:r2 green:r3 blue:r4 alpha:r5] retain];
            [r19 setTitleTextColor:r21];
            [r21 release];
            r21 = [[UIColor colorWithUInt:0x616671 withAlpha:r3] retain];
            [r19 setSubtitleTextColor:r21];
            [r21 release];
            r2 = [r20 isCarousel] ^ 0x1;
    }
    [r19 setAlignment:r2];
    [r19 release];
    return;
}

-(void)styleCTAForceCondensedLayout:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[self callToActionButton] retain];
    if ((arg2 & 0x1) == 0x0 && ([r20 isMediaViewFullscreen] & 0x1) == 0x0) {
            if ([r20 isCarousel] != 0x0) {
                    if (([FBAdScreen isLandscape] & 0x1) != 0x0) {
                            r2 = 0x1;
                    }
                    else {
                            r2 = 0x0;
                    }
            }
            else {
                    r2 = 0x0;
            }
    }
    else {
            r2 = 0x1;
    }
    [r19 setCtaButtonStyle:r2];
    [r19 release];
    return;
}

-(void)styleToolbar {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r22 = [self isMediaViewFullscreen];
    r0 = [r20 preferredOverlayTextColorTypeChanged];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r20 preferredOverlayTextColorTypeChanged];
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r20 release];
    }
    [r19 release];
    return;
}

-(bool)criteriasForLoggingImpressionForVideoIsMet {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self isAutoplay] & 0x1) == 0x0) {
            r0 = [FBAdConfigManager sharedManager];
            r0 = [r0 retain];
            r21 = [r0 clickToPlayShouldFireImpressionOnVideoStart];
            [r0 release];
            if (r21 != 0x0) {
                    r0 = [r19 videoHasStartedPlaying];
            }
            else {
                    r0 = 0x1;
            }
    }
    else {
            r0 = [r19 videoHasStartedPlaying];
    }
    return r0;
}

-(void)interstitialAdMediaViewDidLoad:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adDisplayableViewDidLoad:self];
    [r0 release];
    [self setNeedsLayout];
    return;
}

-(void)logImpressionIfCriteriasAreFulfilled {
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
    r0 = [self viewabilityValidator];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r19 impressionSent];
    if (r20 != 0x0) {
            asm { ccmp       w0, #0x0, #0x0, ne };
    }
    if (!CPU_FLAGS & NE && [r20 currentStatus] == 0x1) {
            r0 = [r19 dataModel];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if ([r0 type] == 0x2) {
                    r22 = [r19 criteriasForLoggingImpressionForVideoIsMet];
                    [r21 release];
                    if (r22 != 0x0) {
                            r21 = [[r19 delegate] retain];
                            r22 = [[r19 carouselPageNumber] retain];
                            r23 = [[r19 carouselTotalPages] retain];
                            [r21 adDisplayableViewDidLogImpression:r19 withViewabilityValidator:r20 withPageNumber:r22 withPageTotal:r23];
                            [r23 release];
                            [r22 release];
                            [r21 release];
                            [r19 setImpressionSent:0x1];
                    }
            }
            else {
                    [r21 release];
                    r21 = [[r19 delegate] retain];
                    r22 = [[r19 carouselPageNumber] retain];
                    r23 = [[r19 carouselTotalPages] retain];
                    [r21 adDisplayableViewDidLogImpression:r19 withViewabilityValidator:r20 withPageNumber:r22 withPageTotal:r23];
                    [r23 release];
                    [r22 release];
                    [r21 release];
                    [r19 setImpressionSent:0x1];
            }
    }
    [r20 release];
    return;
}

-(void)interstitialAdMediaViewDidStartVideo:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adDisplayableViewDidStartVideo:cardIndex:), r3] != 0x0) {
            r22 = [[r19 carouselPageNumber] retain];
            [r20 adDisplayableViewDidStartVideo:r19 cardIndex:r22];
            [r22 release];
    }
    [r20 release];
    return;
}

-(void)interstitialAdMediaViewDidPauseVideo:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adDisplayableViewDidPauseVideo:cardIndex:), r3] != 0x0) {
            r22 = [[r19 carouselPageNumber] retain];
            [r20 adDisplayableViewDidPauseVideo:r19 cardIndex:r22];
            [r22 release];
    }
    [r20 release];
    return;
}

-(void)interstitialAdMediaViewDidEnd:(void *)arg2 {
    [self setVideoPlaybackInterrupted:0x0];
    [self setPreventCarouselVideoAutoplay:0x1];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adDisplayableViewDidEnd:self];
    [r0 release];
    return;
}

-(void)interstitialAdMediaViewDidProgress:(void *)arg2 {
    r31 = r31 - 0x90;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 progressBarView];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r19 != 0x0) {
            r22 = r29 - 0x38;
            [r19 duration];
    }
    else {
            r22 = r29 - 0x38;
    }
    [r21 setDuration:&var_50];
    if (r19 != 0x0) {
            r22 = &var_68;
            [r19 currentTime];
    }
    else {
            r22 = &var_68;
    }
    [r21 setCurrentTime:&var_80];
    r0 = [r20 delegate];
    r0 = [r0 retain];
    [r0 adDisplayableViewDidProgress:r20];
    [r0 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)interstitialAdMediaViewDidHidePlayButton:(void *)arg2 {
    var_40 = d11;
    stack[-72] = d10;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self bounds];
    r0 = [r19 mediaView];
    r0 = [r0 retain];
    r1 = @selector(frame);
    r21 = CGRectEqualToRect(objc_msgSend(r0, r1), r1);
    [r0 release];
    if (r21 != 0x0) {
            [r19 toggleAdDetailsForceShow:0x0];
    }
    return;
}

-(void)interstitialAdMediaViewDidShowPlayButton:(void *)arg2 {
    var_40 = d11;
    stack[-72] = d10;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self bounds];
    r0 = [r19 mediaView];
    r0 = [r0 retain];
    r1 = @selector(frame);
    r21 = CGRectEqualToRect(objc_msgSend(r0, r1), r1);
    [r0 release];
    if (r21 != 0x0) {
            [r19 toggleAdDetailsForceShow:0x0];
    }
    return;
}

-(void)interstitialAdMediaView:(void *)arg2 didFailWithError:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adDisplayableView:self didFailWithError:r21];
    [r21 release];
    [r0 release];
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
    r19 = [[self mediaView] retain];
    if (arg3 != 0x1) goto loc_100ae08f8;

loc_100ae0870:
    if (([r20 impressionSent] & 0x1) == 0x0) {
            [r20 logImpressionIfCriteriasAreFulfilled];
            if ([r20 isAutoplay] != 0x0 && ([r20 isVideoCarouselPage] & 0x1) == 0x0) {
                    [r20 setPlaying:0x1 forced:0x1];
            }
    }
    r0 = [r20 shouldAutoplayCarousel];
    r21 = &@selector(didBecomeVisible);
    if (r0 == 0x0) goto loc_100ae0918;

loc_100ae08f0:
    r21 = &@selector(didBecomeVisible);
    r2 = 0x1;
    goto loc_100ae0904;

loc_100ae0904:
    [r20 setPlaying:r2 forced:0x0];
    goto loc_100ae0918;

loc_100ae0918:
    objc_msgSend(r19, *r21);
    [r19 release];
    return 0x0;

loc_100ae08f8:
    r2 = 0x0;
    r21 = &@selector(didBecomeInvisible);
    goto loc_100ae0904;
}

-(struct UIEdgeInsets)contentInset {
    r0 = self;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_carouselTotalPages, 0x0);
    objc_storeStrong((int64_t *)&self->_carouselPageNumber, 0x0);
    objc_storeStrong((int64_t *)&self->_viewabilityValidator, 0x0);
    objc_destroyWeak((int64_t *)&self->_mediaViewMaskLayer);
    objc_destroyWeak((int64_t *)&self->_mediaViewShadowView);
    objc_destroyWeak((int64_t *)&self->_progressBarView);
    objc_destroyWeak((int64_t *)&self->_bottomGradientView);
    objc_destroyWeak((int64_t *)&self->_topGradientView);
    objc_destroyWeak((int64_t *)&self->_mediaView);
    objc_destroyWeak((int64_t *)&self->_textContainerView);
    objc_destroyWeak((int64_t *)&self->_callToActionButton);
    objc_destroyWeak((int64_t *)&self->_audioMuteButton);
    objc_storeStrong((int64_t *)&self->_placementDefinition, 0x0);
    objc_destroyWeak((int64_t *)&self->_multiProductDataModel);
    objc_destroyWeak((int64_t *)&self->_dataModel);
    objc_storeStrong((int64_t *)&self->_onRequestToggleOverlayViews, 0x0);
    objc_storeStrong((int64_t *)&self->_preferredOverlayTextColorTypeChanged, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void)setContentInset:(struct UIEdgeInsets)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_contentInset));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    *(int128_t *)(0x10 + self + r8) = d2;
    *(int128_t *)(0x18 + self + r8) = d3;
    return;
}

-(bool)preventCarouselTextTruncationInPortrait {
    r0 = *(int8_t *)(int64_t *)&self->_preventCarouselTextTruncationInPortrait;
    return r0;
}

-(void)setPreventCarouselTextTruncationInPortrait:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_preventCarouselTextTruncationInPortrait = arg2;
    return;
}

-(bool)preventCarouselVideoAutoplay {
    r0 = *(int8_t *)(int64_t *)&self->_preventCarouselVideoAutoplay;
    return r0;
}

-(void)setPreventCarouselVideoAutoplay:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_preventCarouselVideoAutoplay = arg2;
    return;
}

-(bool)canPlayVideo {
    r0 = *(int8_t *)(int64_t *)&self->_canPlayVideo;
    return r0;
}

-(void)setCanPlayVideo:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_canPlayVideo = arg2;
    return;
}

-(void *)preferredOverlayTextColorTypeChanged {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_preferredOverlayTextColorTypeChanged)), 0x0);
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setOnRequestToggleOverlayViews:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setPreferredOverlayTextColorTypeChanged:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)dataModel {
    r0 = objc_loadWeakRetained((int64_t *)&self->_dataModel);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)onRequestToggleOverlayViews {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_onRequestToggleOverlayViews)), 0x0);
    return r0;
}

-(void *)multiProductDataModel {
    r0 = objc_loadWeakRetained((int64_t *)&self->_multiProductDataModel);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)placementDefinition {
    r0 = self->_placementDefinition;
    return r0;
}

-(void)setAudioMuteButton:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_audioMuteButton, arg2);
    return;
}

-(void)setCallToActionButton:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_callToActionButton, arg2);
    return;
}

-(void)setTextContainerView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_textContainerView, arg2);
    return;
}

-(void *)mediaView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_mediaView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setTopGradientView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_topGradientView, arg2);
    return;
}

-(void)setMediaView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_mediaView, arg2);
    return;
}

-(void)setBottomGradientView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_bottomGradientView, arg2);
    return;
}

-(void)setMediaViewShadowView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_mediaViewShadowView, arg2);
    return;
}

-(void)setProgressBarView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_progressBarView, arg2);
    return;
}

-(void *)mediaViewMaskLayer {
    r0 = objc_loadWeakRetained((int64_t *)&self->_mediaViewMaskLayer);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setMediaViewMaskLayer:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_mediaViewMaskLayer, arg2);
    return;
}

-(void)setViewabilityValidator:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_viewabilityValidator, arg2);
    return;
}

-(void *)viewabilityValidator {
    r0 = self->_viewabilityValidator;
    return r0;
}

-(bool)impressionSent {
    r0 = *(int8_t *)(int64_t *)&self->_impressionSent;
    return r0;
}

-(void)setImpressionSent:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_impressionSent = arg2;
    return;
}

-(void *)carouselPageNumber {
    r0 = self->_carouselPageNumber;
    return r0;
}

-(void)setCarouselPageNumber:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_carouselPageNumber, arg2);
    return;
}

-(void)setCarouselTotalPages:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_carouselTotalPages, arg2);
    return;
}

-(void *)carouselTotalPages {
    r0 = self->_carouselTotalPages;
    return r0;
}

-(bool)videoPlaybackInterrupted {
    r0 = *(int8_t *)(int64_t *)&self->_videoPlaybackInterrupted;
    return r0;
}

-(void)setVideoPlaybackInterrupted:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_videoPlaybackInterrupted = arg2;
    return;
}

-(bool)videoHasStartedPlaying {
    r0 = *(int8_t *)(int64_t *)&self->_videoHasStartedPlaying;
    return r0;
}

-(void)setVideoHasStartedPlaying:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_videoHasStartedPlaying = arg2;
    return;
}

@end