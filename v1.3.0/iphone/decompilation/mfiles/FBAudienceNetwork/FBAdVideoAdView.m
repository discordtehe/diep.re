@implementation FBAdVideoAdView

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [FBNativeAdDataModel new];
    r21 = [FBAdPlacementDefinition new];
    if (*qword_1011dd178 != -0x1) {
            dispatch_once_f(0x1011dd178, 0x1011c6238, 0x100a3d91c);
    }
    r0 = [FBAdViewControllerProxy viewController];
    r0 = [r0 retain];
    r20 = [r20 initWithPlacementID:@"" adDataModel:r19 placementDefinition:r21 videoReadyToDisplayBlock:0x100eac4f0 useNewLayout:0x0 useNewToolbar:0x0 showCta:0x0 isRewardedAd:&var_40 forcedViewTime:r0 rootViewController:stack[-88]];
    [r0 release];
    [r21 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [FBNativeAdDataModel new];
    r21 = [FBAdPlacementDefinition new];
    if (*qword_1011dd178 != -0x1) {
            dispatch_once_f(0x1011dd178, 0x1011c6238, 0x100a3d91c);
    }
    r0 = [FBAdViewControllerProxy viewController];
    r0 = [r0 retain];
    r20 = [r20 initWithPlacementID:@"" adDataModel:r19 placementDefinition:r21 videoReadyToDisplayBlock:0x100eac4b0 useNewLayout:0x0 useNewToolbar:0x0 showCta:0x0 isRewardedAd:&var_40 forcedViewTime:r0 rootViewController:stack[-88]];
    [r0 release];
    [r21 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)addVideoRendererProgressTimingObserver {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    objc_initWeak(&saved_fp - 0x28, r19);
    r0 = [r19 videoRendererView];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (*qword_1011dd1d8 != -0x1) {
            dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
    }
    (*0x1011dd1e0)(0x64, 0x7d0);
    [*__dispatch_main_q retain];
    objc_copyWeak(&var_50 + 0x20, r29 - 0x28);
    r22 = [[r20 addPeriodicTimeObserverForInterval:&stack[-120] queue:r22 usingBlock:&var_50] retain];
    [r19 setVideoProgressTimingObserver:r22];
    [r22 release];
    [*__dispatch_main_q release];
    [r20 release];
    objc_destroyWeak(&var_50 + 0x20);
    objc_destroyWeak(r29 - 0x28);
    return;
}

-(union ?)currentTime {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r8;
    r0 = [self videoRendererView];
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

-(union ?)duration {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r8;
    r0 = [self videoRendererView];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 duration];
    }
    else {
            if (*qword_1011dd148 != -0x1) {
                    dispatch_once_f(0x1011dd148, 0x1011c61f0, 0x100a3d91c);
            }
            r8 = *qword_1011dd150;
            q0 = *(int128_t *)r8;
            *(r19 + 0x10) = *(r8 + 0x10);
            *(int128_t *)r19 = q0;
    }
    r0 = [r20 release];
    return r0;
}

-(double)progressBarHeight {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self isUsingNewLayout];
    if (r0 != 0x0) {
            asm { fcsel      d0, d1, d0, ne };
    }
    return r0;
}

-(void)setupViewAndStartVideo:(bool)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self duration];
    r0 = [r19 progressBar];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 setDuration:&var_50];
    [r0 release];
    r22 = 0x1;
    [r19 updateView:0x1];
    [r19 setupNotifications];
    r21 = [[UITapGestureRecognizer alloc] initWithTarget:r19 action:@selector(backgroundTapped:)];
    [r19 addGestureRecognizer:r21];
    [r19 addVideoRendererProgressTimingObserver];
    if (arg2 != 0x0) {
            r0 = [r19 videoRendererView];
            r29 = r29;
            r0 = [r0 retain];
            [r0 playVideo];
            [r0 release];
            [r19 scheduleHideViews];
            r22 = 0x0;
    }
    r0 = [r19 playPauseButton];
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setHighlighted:r22];
    }
    [r19 release];
    [r21 release];
    return;
}

-(void *)initWithPlacementID:(void *)arg2 adDataModel:(void *)arg3 placementDefinition:(void *)arg4 videoReadyToDisplayBlock:(void *)arg5 useNewLayout:(bool)arg6 useNewToolbar:(bool)arg7 showCta:(bool)arg8 isRewardedAd:(bool)arg9 forcedViewTime:(union ?)arg10 rootViewController:(void *)arg11 {
    var_8 = arg9;
    var_0 = arg8;
    r31 = r31 - 0xb0;
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
    r26 = arg7;
    r24 = arg6;
    r25 = arg3;
    r23 = self;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    r22 = [arg10 retain];
    if (arg2 != 0x0 && r22 != 0x0) {
            r0 = [[&var_60 super] initWithFrame:r2];
            r23 = r0;
            if (r0 != 0x0) {
                    var_A0 = r20;
                    r27 = arg_1;
                    *(int8_t *)(int64_t *)&r23->_showCta = var_0;
                    *(int8_t *)(int64_t *)&r23->_isUsingNewLayout = r24;
                    *(int8_t *)(int64_t *)&r23->_useNewToolbar = r26;
                    [FBAdScreen boundsInOrientation];
                    [r23 setFrame:r2];
                    objc_storeStrong((int64_t *)&r23->_adDataModel, r25);
                    *(int8_t *)(int64_t *)&r23->_adValid = 0x1;
                    objc_storeWeak((int64_t *)&r23->_rootViewController, r22);
                    *(int8_t *)(int64_t *)&r23->_endVideoDetailsAnimated = 0x0;
                    r8 = &@selector(setProductVC:);
                    r0 = objc_msgSend(r19, *(r8 + 0x1e8));
                    r29 = r29;
                    r0 = [r0 retain];
                    if (r0 != 0x0) {
                            r8 = &@selector(setProductVC:);
                            if (CPU_FLAGS & NE) {
                                    r8 = 0x1;
                            }
                    }
                    *(int8_t *)(int64_t *)&r23->_appInstall = r8;
                    [r0 release];
                    *(int8_t *)(int64_t *)&r23->_canPlayVideo = 0x1;
                    *(int8_t *)(int64_t *)&r23->_isExpanded = 0x1;
                    *(int8_t *)(int64_t *)&r23->_videoWasPlayingWhenAppActive = 0x0;
                    *(int8_t *)(int64_t *)&r23->_isRewardedAd = r27;
                    if (r24 != 0x0) {
                            r24 = [FBAdVideoRendererView alloc];
                            r0 = [r19 image];
                            r29 = r29;
                            r25 = [r0 retain];
                            r24 = [r24 initWithBackgroundImage:r25];
                            [r25 release];
                    }
                    else {
                            r24 = [FBAdVideoRendererView new];
                    }
                    r28 = var_8;
                    [r24 setDelegate:r23];
                    [r24 setVideoReadyToDisplay:r21];
                    if ([r19 audioMuted] != 0x0) {
                            asm { fcsel      s0, s1, s0, ne };
                    }
                    [r24 setVolume:r2];
                    objc_storeWeak((int64_t *)&r23->_videoRendererView, r24);
                    [r23 addSubview:r24];
                    r0 = [FBAdConfigManager sharedManager];
                    r29 = r29;
                    r0 = [r0 retain];
                    r27 = [r0 isRVMetadataEnabled];
                    [r0 release];
                    if (r27 != 0x0) {
                            [r23 addGradientView];
                            [r23 addAdDetailsViewAndCTAContainerView];
                    }
                    r0 = [FBAdConfigManager sharedManager];
                    r29 = r29;
                    r0 = [r0 retain];
                    r26 = [r0 isRVPlayPauseButtonEnabled];
                    [r0 release];
                    if (r26 != 0x0) {
                            [r23 addPlayPauseButton];
                    }
                    [r23 setForcedViewTime:&var_80];
                    [r23 addProgressBar];
                    [r23 addToolbarGradientView];
                    [r23 addToolbarView];
                    [r23 addAudioMuteButton];
                    [[r19 videoURL] retain];
                    r20 = var_A0;
                    [r20 videoTimePollingInterval];
                    sub_100a3e550(&stack[-168]);
                    r26 = [[r19 inlineClientToken] retain];
                    [r24 loadVideoURL:r25 pollingInterval:&stack[-168] clientToken:r26 autoplayEnabled:0x1];
                    [r26 release];
                    [r25 release];
                    [r24 release];
            }
            r0 = [r23 retain];
            r23 = r0;
            r24 = r0;
    }
    else {
            [FBAdDebugLogging logDebugEventWithType:r2 code:r3 description:r4];
            r24 = 0x0;
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [r23 release];
    r0 = r24;
    return r0;
}

-(bool)isAdValid {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*(int8_t *)(int64_t *)&r0->_adValid != 0x0) {
            r0 = [r0 adDataModel];
            r0 = [r0 retain];
            r20 = [r0 isValid];
            [r0 release];
            r0 = r20;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(unsigned long long)wantedAdDetailsAndCTAButtonContainerViewButtonStyle {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [self isUsingNewLayout];
    r0 = [FBAdScreen isPortrait];
    r8 = 0x5;
    if (r0 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = 0x5;
            }
            else {
                    r8 = 0x2;
            }
    }
    r9 = 0x3;
    if (CPU_FLAGS & NE) {
            if (!CPU_FLAGS & NE) {
                    r9 = 0x3;
            }
            else {
                    r9 = 0x0;
            }
    }
    if (r19 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = r9;
            }
            else {
                    r0 = r8;
            }
    }
    return r0;
}

-(void)dealloc {
    [self setDelegate:0x0];
    [self cancelAnimateViews];
    [self cleanLayout];
    [FBAdNotificationCenter removeAllObserversForObject:self];
    [[&var_20 super] dealloc];
    return;
}

-(void)layoutSubviews {
    r0 = [self layer];
    r0 = [r0 retain];
    [r0 removeAllAnimations];
    [r0 release];
    [self updateView:0x1];
    [[&var_20 super] layoutSubviews];
    return;
}

-(void)clearSubviews {
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
    var_100 = q0;
    r0 = [self subviews];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r21 = r0;
            r23 = *var_100;
            do {
                    r25 = 0x0;
                    do {
                            if (*var_100 != r23) {
                                    objc_enumerationMutation(r19);
                            }
                            [*(var_108 + r25 * 0x8) removeFromSuperview];
                            r25 = r25 + 0x1;
                    } while (r25 < r21);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r21 = r0;
            } while (r0 != 0x0);
    }
    var_48 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)addProgressBar {
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
    r20 = [[FBAdVideoProgressBar alloc] init];
    r22 = [[UIColor colorWithRed:r2 green:r3 blue:r4 alpha:r5] retain];
    r0 = @class(UIColor);
    r0 = [r0 blackColor];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if ([r19 isUsingNewLayout] != 0x0) {
            r24 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r22 release];
            r0 = @class(UIColor);
            r0 = [r0 colorWithUInt:0xffffff withAlpha:r3];
            r29 = r29;
            r22 = [r0 retain];
            [r21 release];
            [r20 setCornerRadius:0xffffff];
            r21 = r22;
            r22 = r24;
    }
    r0 = objc_retainAutorelease(r22);
    r22 = r0;
    [r20 setProgressColor:[r0 CGColor]];
    r0 = objc_retainAutorelease(r21);
    r21 = r0;
    r23 = [r0 CGColor];
    r0 = [r20 layer];
    r0 = [r0 retain];
    [r0 setBackgroundColor:r23];
    [r0 release];
    [r19 addSubview:r20];
    [r19 setProgressBar:r20];
    [r21 release];
    [r22 release];
    [r20 release];
    return;
}

-(void)addToolbarGradientView {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self toolbarGradientView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) {
            if (([r19 isUsingNewLayout] & 0x1) != 0x0) {
                    r0 = [UIColor colorWithUInt:r2 withAlpha:r3];
                    r29 = r29;
                    r21 = [r0 retain];
            }
            else {
                    r0 = [UIColor colorWithWhite:r2 alpha:r3];
                    r29 = r29;
                    r21 = [r0 retain];
            }
            r22 = [[UIColor colorWithUInt:r2 withAlpha:r3] retain];
            r0 = [NSArray arrayWithObjects:&var_48 count:0x2];
            r24 = [r0 retain];
            r23 = [FBGradientView newWithColors:r24];
            [r20 release];
            [r24 release];
            [r22 release];
            [r19 addSubview:r23];
            [r19 setToolbarGradientView:r23];
            [r21 release];
            r20 = r23;
    }
    var_38 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)addAdDetailsViewAndCTAContainerView {
    r31 = r31 - 0xe0;
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
    r0 = [self adDetailsAndCTAButtonContainerView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            if ([r19 showCta] != 0x0) {
                    r0 = [r19 adDataModel];
                    r0 = [r0 retain];
                    r20 = r0;
                    r0 = [r0 callToAction];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r20 release];
            }
            else {
                    r23 = 0x0;
            }
            var_58 = r23;
            if ([r19 isUsingNewLayout] != 0x0) {
                    r0 = [r19 adDataModel];
                    r0 = [r0 retain];
                    r20 = r0;
                    r0 = [r0 adCreativeType];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = [r0 isEqualToString:r2] ^ 0x1;
                    [r0 release];
                    [r20 release];
            }
            else {
                    r24 = 0x0;
            }
            var_70 = [FBAdDetailsAndCTAButtonContainerView alloc];
            r0 = [r19 adDataModel];
            r0 = [r0 retain];
            var_60 = r0;
            r0 = [r0 title];
            r0 = [r0 retain];
            r23 = r0;
            var_A8 = r0;
            r0 = [r19 adDataModel];
            r0 = [r0 retain];
            var_68 = r0;
            var_80 = [[r0 subtitle] retain];
            r0 = [r19 adDataModel];
            r0 = [r0 retain];
            var_78 = r0;
            r25 = [[r0 iconURL] retain];
            r0 = [r19 adDataModel];
            r0 = [r0 retain];
            var_88 = r0;
            r26 = [[r0 body] retain];
            r0 = [r19 adDataModel];
            r0 = [r0 retain];
            var_90 = r0;
            var_A0 = [[r0 socialContext] retain];
            r0 = [r19 adDataModel];
            r0 = [r0 retain];
            var_98 = r0;
            r28 = [[r0 starRatingValue] retain];
            r0 = [r19 adDataModel];
            r0 = [r0 retain];
            r27 = [[r0 starRatingCount] retain];
            r22 = [var_70 initWithTitle:r23 subtitle:var_80 iconURL:r25 bodyText:r26 socialContext:var_A0 callToActionText:var_58 ratingValue:r28 ratingCount:r27 style:[r19 wantedAdDetailsAndCTAButtonContainerViewButtonStyle] iconStyle:r24];
            [r21 release];
            [r27 release];
            [r0 release];
            [r28 release];
            [var_98 release];
            [var_A0 release];
            [var_90 release];
            [r26 release];
            [var_88 release];
            [r25 release];
            [var_78 release];
            [var_80 release];
            [var_68 release];
            [var_A8 release];
            [var_60 release];
            r0 = [r22 callToActionButton];
            r0 = [r0 retain];
            [r0 addTarget:r19 action:@selector(didTouchCTA:withEvent:) forControlEvents:0x40];
            [r0 release];
            [r19 addSubview:r22];
            [r19 setAdDetailsAndCTAButtonContainerView:r22];
            [var_58 release];
            r21 = r22;
    }
    [r21 release];
    return;
}

-(void)updateView:(bool)arg2 {
    r31 = r31 - 0xf0;
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
    v14 = v0;
    var_B0 = d1;
    var_A8 = d3;
    v8 = v2;
    r19 = [[r20 videoRendererView] retain];
    [r20 bounds];
    var_C0 = d1;
    stack[-184] = d0;
    var_D0 = d3;
    stack[-200] = d2;
    [r19 setFrame:arg2];
    r0 = [r20 toolbarView];
    r29 = &var_10;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            CGRectGetWidth([r20 bounds]);
            d12 = var_B0;
            d0 = d0 - d12;
            d13 = d0 - var_A8;
            [r21 toolbarHeight];
            v0 = v12;
            v2 = v13;
            [r21 setFrame:r2];
    }
    r0 = [r20 toolbarGradientView];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            CGRectGetWidth([r20 bounds]);
            v13 = v0;
            [r21 toolbarHeight];
            d3 = d14 + d0;
            d0 = 0x0;
            v2 = v13;
            [r22 setFrame:r2];
    }
    var_D8 = r22;
    r0 = [r20 progressBar];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    var_E0 = d8;
    if (r0 != 0x0) {
            v12 = v8;
            CGRectGetWidth(r0);
            d8 = var_B0;
            var_E8 = d14;
            r0 = [r20 progressBarHeight];
            v13 = v9;
            v0 = v9;
            v2 = v11;
            CGRectGetHeight(r0);
            d15 = d0 - d8 - d13 - d12;
            r0 = [r20 isUsingNewLayout];
            d3 = 0x0;
            d2 = (d0 - d8 - var_A8) + 0xc038000000000000;
            d0 = d8 + 0x4028000000000000;
            if (r0 == 0x0) {
                    asm { fcsel      d1, d15, d1, eq };
            }
            if (CPU_FLAGS & E) {
                    asm { fcsel      d0, d8, d0, eq };
            }
            if (CPU_FLAGS & E) {
                    asm { fcsel      d2, d14, d2, eq };
            }
            d14 = var_E8;
            if (CPU_FLAGS & E) {
                    asm { fcsel      d8, d3, d4, eq };
            }
            [r24 setFrame:r2];
            [r24 setHidden:0x0];
    }
    else {
            d8 = 0x0;
    }
    r0 = [r20 playPauseButton];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if (r0 != 0x0) {
            [r19 frame];
            v12 = v14;
            d14 = *0x100bfcb78;
            d15 = 0x3fe0000000000000;
            objc_msgSend(r19, r26);
            d0 = d3 + d14;
            d2 = *0x100bfcb80;
            v0 = v13;
            [r25 setFrame:r2];
    }
    r0 = [r20 audioMuteButton];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    if (r0 != 0x0) {
            [r20 bounds];
            [r21 toolbarHeight];
            d0 = d14 + (d2 - var_A8) + 0xc028000000000000;
            v0 = v13;
            [r26 setFrame:r2];
            [r19 volume];
            if (s0 == 0x3ff0000000000000) {
                    if (CPU_FLAGS & E) {
                            r2 = 0x1;
                    }
            }
            [r26 setSelected:r2];
    }
    r0 = [r20 adDetailsAndCTAButtonContainerView];
    r29 = r29;
    r0 = [r0 retain];
    r27 = r0;
    if (r0 != 0x0) {
            if (objc_msgSend(r20, *(&@selector(setProductVC:) + 0x190)) != 0x0) {
                    asm { fcsel      d15, d9, d0, ne };
            }
            r2 = [r20 wantedAdDetailsAndCTAButtonContainerViewButtonStyle];
            CGRectGetWidth([r27 setAdDetailsAndCTAButtonContainerViewButtonStyle:r2]);
            r0 = [r27 sizeThatFits:r2];
            v0 = v9;
            CGRectGetHeight(r0);
            d0 = var_B0 + d15;
            [r27 setFrame:r2];
    }
    else {
            d14 = 0x0;
    }
    r0 = [r20 gradientView];
    r29 = r29;
    r0 = [r0 retain];
    r28 = r0;
    if (r0 != 0x0) {
            r0 = objc_msgSend(r20, *(&@selector(setProductVC:) + 0x190));
            if (r0 != 0x0) {
                    r0 = CGRectGetHeight(r0);
                    d12 = d0 * 0x3fe0000000000000;
            }
            else {
                    r0 = [r20 progressBarHeight];
                    d0 = d14 + d0;
                    d12 = d0 + 0x4040000000000000;
            }
            r0 = CGRectGetHeight(r0);
            v0 = v8;
            CGRectGetWidth(r0);
            [r28 setFrame:r2];
    }
    r23 = [[r20 waitingToast] retain];
    if (r21 != 0x0 && r23 != 0x0) {
            CGRectGetMaxY([r21 frame]);
            [r20 setOffsetAndPositionForToast:r23 position:0x0 offset:r4];
    }
    [r23 release];
    [r28 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [var_D8 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)addGradientView {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r22 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    r21 = [[UIColor colorWithUInt:0x0 withAlpha:r3] retain];
    r0 = [NSArray arrayWithObjects:&var_48 count:0x2];
    r23 = [r0 retain];
    r20 = [FBGradientView newWithColors:r23];
    [r23 release];
    [r21 release];
    [r22 release];
    [self addSubview:r20];
    [self setGradientView:r20];
    [r20 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)addPlayPauseButton {
    r0 = [FBAdVideoPlayPauseButton videoPlayPauseButton];
    r0 = [r0 retain];
    [r0 setStyle:0x1];
    [r0 addTarget:self action:@selector(playPauseButtonTapped:) forControlEvents:0x40];
    [self addSubview:r0];
    [self setPlayPauseButton:r0];
    [r0 release];
    return;
}

-(void)addAudioMuteButton {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self audioMuteButton];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            r20 = [[FBAdAudioMuteButton audioMuteButton] retain];
            [r21 release];
            [r20 addTarget:r19 action:@selector(handleAudioMuteButtonTouch:) forControlEvents:0x40];
            [r20 setContentEdgeInsets:r19];
            r0 = [r19 videoRendererView];
            r0 = [r0 retain];
            r21 = r0;
            [r0 volume];
            if (s0 <= 0x0) {
                    if (CPU_FLAGS & LE) {
                            r2 = 0x1;
                    }
            }
            [r20 setSelected:r2];
            [r21 release];
            [r19 addSubview:r20];
            [r19 setAudioMuteButton:r20];
            r21 = r20;
    }
    [r21 release];
    return;
}

-(void)playPauseButtonTapped:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self funnelLogPlayPauseButtonTapped];
    r8 = &@selector(pauseVideoIfNeeded);
    if ([r19 paused] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = &@selector(pauseVideoIfNeeded);
            }
            else {
                    r8 = &@selector(resumeVideo);
            }
    }
    objc_msgSend(r19, *r8);
    return;
}

-(void)removeVideoRendererProgressTimingObserver {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self videoProgressTimingObserver];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [[r19 videoRendererView] retain];
            r20 = [[r19 videoProgressTimingObserver] retain];
            [r21 removeTimeObserver:r20];
            [r20 release];
            [r21 release];
            [r19 setVideoProgressTimingObserver:0x0];
    }
    return;
}

-(void)addToolbarView {
    r31 = r31 - 0x120;
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
    r19 = [[self adDataModel] retain];
    r0 = [r20 toolbarView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            r21 = r22;
    }
    else {
            if (([r20 useNewToolbar] & 0x1) != 0x0) {
                    r0 = [FBInterstitialAdToolbarView newDesign];
                    r29 = r29;
                    r0 = [r0 retain];
            }
            else {
                    r0 = [FBInterstitialAdToolbarView oldDesign];
                    r29 = r29;
                    r0 = [r0 retain];
                    r0 = [r0 retain];
            }
            r21 = r0;
            [r22 release];
            [r21 release];
            [r21 setDelegate:r20];
            if (([r20 isAppInstall] & 0x1) == 0x0 && ([r20 isUsingNewLayout] & 0x1) == 0x0) {
                    r22 = [[r19 icon] retain];
                    [r21 setIcon:r22];
                    [r22 release];
                    r0 = [r19 advertiserName];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = r0;
                    if (r0 == 0x0) {
                            if (!CPU_FLAGS & E) {
                                    r2 = r0;
                            }
                            else {
                                    r2 = @"";
                            }
                    }
                    [r21 setTitle:r2];
                    [r22 release];
                    r0 = [r19 localizedSponsoredText];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r21 setSubtitle:r22];
                    [r22 release];
            }
            r22 = [[r19 localizedSkipText] retain];
            [r21 setSkipText:r22];
            [r22 release];
            r22 = [[r19 localizedRewardInText] retain];
            [r21 setRewardInFormat:r22];
            [r22 release];
            [r20 forcedViewTime];
            [r21 setForcedViewTime:&var_B0];
            [r21 setAdIconType:[FBInterstitialAdToolbarView toolbarIconTypeForDataModel:r19]];
            [r21 setIsRewardedAd:[r20 isRewardedAd]];
            [r21 configureToolbarColorsForType:0x0];
            r22 = [[r21 adChoicesButton] retain];
            r24 = [[r19 adChoicesText] retain];
            r25 = [[r19 localizedCancelText] retain];
            r26 = [[r19 adChoicesLinkURL] retain];
            r27 = [[r19 inlineClientToken] retain];
            r28 = [[r20 viewControllerForPresentingModalView] retain];
            [r22 configureWithText:r24 cancelText:r25 url:r26 inlineClientToken:r27 rootViewController:r28];
            [r28 release];
            [r27 release];
            [r26 release];
            [r25 release];
            [r24 release];
            [r22 release];
            objc_initWeak(&stack[-200], r20);
            var_E8 = &var_E0 + 0x20;
            objc_copyWeak(&var_E0 + 0x20, &stack[-200]);
            r0 = [r21 adChoicesButton];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setViewControllerDismissed:&var_E0];
            [r0 release];
            if ([r19 showEndCard] != 0x0) {
                    r0 = [FBAdConfigManager sharedManager];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r21 setCloseButtonStyle:[r0 useArrowsInsteadOfXAsSkipButton]];
                    [r0 release];
            }
            else {
                    [r21 setCloseButtonStyle:0x0];
            }
            [r20 addSubview:r21];
            if (([r21 translatesAutoresizingMaskIntoConstraints] & 0x1) == 0x0) {
                    var_F0 = [[r21 leadingAnchor] retain];
                    var_100 = [[r20 an_leadingSafeAnchor] retain];
                    var_108 = [[var_F0 constraintEqualToAnchor:r2] retain];
                    r27 = [[r21 trailingAnchor] retain];
                    r28 = [[r20 an_trailingSafeAnchor] retain];
                    r25 = [[r27 constraintEqualToAnchor:r28] retain];
                    r24 = [[r21 topAnchor] retain];
                    r22 = [[r20 an_topSafeAnchor] retain];
                    r23 = [[r24 constraintEqualToAnchor:r22] retain];
                    r26 = [[NSArray arrayWithObjects:r29 - 0x78 count:0x3] retain];
                    [NSLayoutConstraint activateConstraints:r26];
                    [r26 release];
                    [r23 release];
                    [r22 release];
                    [r24 release];
                    [r25 release];
                    [r28 release];
                    [r27 release];
                    [var_108 release];
                    [var_100 release];
                    [var_F0 release];
                    [r20 layoutIfNeeded];
            }
            [r20 setToolbarView:r21];
            objc_destroyWeak(var_E8);
            objc_destroyWeak(&stack[-200]);
    }
    var_60 = **___stack_chk_guard;
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)skipVideo {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    [self cleanLayout];
    r0 = [r20 videoRendererView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 currentTime];
    }
    sub_100a3e4dc(&var_48);
    r0 = [FBAdVideoLoggingEvent loggingEventWithAction:0x1 targetView:r19 autoplay:0x1 currentTime:0x0 cardIndex:0x0 cardCount:r7];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r22 = [[FBAdEventManager sharedManager] retain];
            r0 = [r20 adDataModel];
            r0 = [r0 retain];
            r23 = [[r0 inlineClientToken] retain];
            r24 = [[r21 loggingParams] retain];
            [r22 logVideoEventForToken:r23 withExtraData:r24];
            [r24 release];
            [r23 release];
            [r0 release];
            [r22 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(bool)videoIsDoneOrSkippable {
    r31 = r31 - 0x60;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*qword_1011dd128 != -0x1) {
            dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
    }
    [r19 timeUntilSkipOrEnd];
    r0 = sub_100a3e318(&var_30, &stack[-88]);
    r0 = (r0 ^ 0xffffffff) >> 0x1f;
    return r0;
}

-(void)cleanLayout {
    [self removeVideoRendererProgressTimingObserver];
    r0 = [self playPauseButton];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    r0 = [self gradientView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    r0 = [self progressBar];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    r0 = [self videoRendererView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    r0 = [self toolbarView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    r0 = [self audioMuteButton];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    [FBAdNotificationCenter removeAllObserversForObject:self];
    return;
}

-(void)handleAudioMuteButtonTouch:(void *)arg2 {
    r2 = arg2;
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[self videoRendererView] retain];
    [r19 funnelLogMuteButtonTapped];
    [r20 volume];
    r8 = &@selector(funnelLogUnMute);
    if (s0 > 0x0) {
            if (!CPU_FLAGS & G) {
                    r8 = &@selector(funnelLogUnMute);
            }
            else {
                    r8 = &@selector(funnelLogMute);
            }
    }
    if (CPU_FLAGS & G) {
            asm { fcsel      s8, s1, s0, gt };
    }
    objc_msgSend(r19, *r8);
    [r20 setVolume:r2];
    [r19 setNeedsLayout];
    [r20 release];
    return;
}

-(bool)hasForcedViewTime {
    r31 = r31 - 0x60;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (*qword_1011dd128 != -0x1) {
            dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
    }
    r0 = [r19 adDataModel];
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 forcedViewTime];
    }
    r0 = sub_100a3e318(&var_30, &var_48);
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r20 = 0x1;
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)didTouchCTA:(void *)arg2 withEvent:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg3 retain];
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 videoAdView:r20 didTouchCTAWithEvent:r19];
    }
    [r21 release];
    [r19 release];
    return;
}

-(union ?)timeUntilSkipOrEnd {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r8;
    [self currentTime];
    [self duration];
    r0 = [self adDataModel];
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 forcedViewTime];
    }
    [FBAdUtility timeUntilSkipOrEndForTime:&stack[-72] duration:&stack[-96] forcedViewTime:&var_68];
    r0 = [r21 release];
    return r0;
}

-(void)updateToastWithCurrentTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [self timeUntilSkipOrEnd];
    sub_100a3e4dc(&var_60);
    asm { fcvtzu     x20, d0 };
    r0 = [r21 waitingToast];
    r0 = [r0 retain];
    r19 = [[r0 viewWithTag:0x1] retain];
    [r0 release];
    r0 = [r21 adDataModel];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 localizedDelayClickText];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r0;
            }
            else {
                    r0 = @"[secs]";
            }
    }
    r24 = [r0 retain];
    [r22 release];
    [r21 release];
    r0 = [NSNumber numberWithUnsignedLong:r20];
    r0 = [r0 retain];
    r21 = [[r0 stringValue] retain];
    r22 = [[r24 stringByReplacingOccurrencesOfString:@"[secs]" withString:r21] retain];
    [r24 release];
    [r21 release];
    [r0 release];
    [r19 setText:r22];
    [r22 release];
    [r19 release];
    return;
}

-(void)showWaitingToast {
    r31 = r31 - 0xa0;
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
    r0 = [self waitingToast];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r0 = [FBToastStyle alloc];
            r0 = [r0 init];
            r20 = r0;
            [r0 setMessageNumberOfLines:0x1];
            [r20 setMessageAlignment:0x1];
            [r20 setMaxWidthPercentage:0x1];
            [r20 setMessageNumberOfLines:0x2];
            r0 = [r19 adDataModel];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 localizedDelayClickText];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            if (r0 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r0 = r0;
                    }
                    else {
                            r0 = @"[secs]";
                    }
            }
            r21 = [r0 retain];
            [r24 release];
            [r23 release];
            r23 = [[r19 makeToast:r21 style:r20] retain];
            [r19 setWaitingToast:r23];
            [r23 release];
            r0 = [r19 progressBar];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if (r0 != 0x0) {
                    [r23 currentTime];
            }
            [r19 updateToastWithCurrentTime:&var_58];
            [r23 release];
            objc_initWeak(&stack[-112], r19);
            [[r19 waitingToast] retain];
            r0 = [r19 toolbarView];
            r0 = [r0 retain];
            CGRectGetMaxY([r0 frame]);
            objc_copyWeak(&var_88 + 0x20, &stack[-112]);
            [r19 showToast:r22 position:0x0 offset:&var_88 completion:r5];
            [r23 release];
            [r22 release];
            objc_destroyWeak(&var_88 + 0x20);
            objc_destroyWeak(&stack[-112]);
            [r21 release];
            [r20 release];
    }
    return;
}

-(void)tellDelegateThatWeAreSkippableIfWeAreAndHaveNotYet {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r19 videoIsDoneOrSkippable] != 0x0 && r0 != 0x0 && [r19 hasForcedViewTime] != 0x0) {
            if (([r19 hasToldDelegateThatWereSkippable] & 0x1) == 0x0) {
                    [r19 setHasToldDelegateThatWereSkippable:0x1];
                    [r20 videoAdViewIsSkippable:r19];
            }
    }
    [r20 release];
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

-(void)prepareViewToBecomeInactive {
    [self setVideoWasPlayingWhenAppActive:[self paused] ^ 0x1];
    [self pauseVideoIfNeeded];
    return;
}

-(void)prepareViewToBecomeActive {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self videoWasPlayingWhenAppActive] != 0x0) {
            [r19 resumeVideo];
    }
    return;
}

-(void)dispatchVideoEndedWithError:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 videoAdView:r20 didEndWithError:r19];
    }
    [r20 removeVideoRendererProgressTimingObserver];
    [FBAdNotificationCenter removeAllObserversForObject:r20];
    [r21 release];
    [r19 release];
    return;
}

-(void)animateAdDetailsOnVideoEnd:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = r2;
    r19 = self;
    if (([self endVideoDetailsAnimated] & 0x1) == 0x0) {
            if (*qword_1011dd128 != -0x1) {
                    dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
            }
            [r19 duration];
            sub_100a3e440(r29 - 0x58, &stack[-128], &var_90);
            sub_100a3e3a4(r29 - 0x28, r29 - 0x40, r29 - 0x58);
            [FBAdVideoAdView animateAdDetailsEndVideo];
            r0 = sub_100a3e318(&var_C0, &stack[-184]);
            if (r0 <= 0x0 && ([r19 paused] & 0x1) == 0x0) {
                    [r19 setEndVideoDetailsAnimated:0x1];
                    [r19 animateShowViews];
            }
    }
    return;
}

-(void)backgroundTapped:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self paused] & 0x1) == 0x0) {
            [r19 toggleAllViews];
    }
    return;
}

-(void)cancelAnimateViews {
    r0 = [self toggleViewsTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    [self setToggleViewsTimer:0x0];
    return;
}

-(void)scheduleHideViews {
    [self cancelAnimateViews];
    objc_initWeak(&stack[-56], self);
    objc_copyWeak(&var_50 + 0x20, &stack[-56]);
    r0 = [FBAdTimer scheduledTimerWithTimeInterval:0x0 repeats:&var_50 block:r4];
    r21 = [r0 retain];
    [self setToggleViewsTimer:r21];
    [r21 release];
    objc_destroyWeak(&var_50 + 0x20);
    objc_destroyWeak(&stack[-56]);
    return;
}

-(void)animateShowViews {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self animating] & 0x1) == 0x0) {
            if ([r19 isUsingNewLayout] != 0x0) {
                    [r19 animateShowViewsForNewLayout];
            }
            else {
                    r0 = [r19 viewsToAnimate];
                    r0 = [r0 retain];
                    r20 = r0;
                    if ([r0 count] != 0x0) {
                            [r19 cancelAnimateViews];
                            [r19 setAnimating:0x1];
                            [FBAdUtility animateWithFadeIn:r20 duration:&var_38 completion:r4];
                    }
                    [r20 release];
            }
    }
    return;
}

-(void)animateHideViews {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self animating] & 0x1) == 0x0) {
            if ([r19 isUsingNewLayout] != 0x0) {
                    [r19 animateHideViewsForNewLayout];
            }
            else {
                    r0 = [r19 viewsToAnimate];
                    r0 = [r0 retain];
                    r20 = r0;
                    if ([r0 count] != 0x0) {
                            [r19 cancelAnimateViews];
                            [r19 setAnimating:0x1];
                            [FBAdUtility animateWithFadeOut:r20 duration:&var_38 completion:r4];
                    }
                    [r20 release];
            }
    }
    return;
}

-(void)animateHideViewsForNewLayout {
    [self setAnimating:0x1];
    r0 = [self adDetailsAndCTAButtonContainerView];
    r0 = [r0 retain];
    [r0 hideBodyAndDimButtonWithBodyAnimationDuration:0x1 adDetailsViewAnimationDuration:r3];
    [r0 release];
    [UIView animateWithDuration:&stack[-88] animations:&var_70 completion:r4];
    return;
}

-(void)animateShowViewsForNewLayout {
    [self setAnimating:0x1];
    r0 = [self adDetailsAndCTAButtonContainerView];
    r0 = [r0 retain];
    [r0 showBodyAndDimButtonWithBodyAnimationDuration:0x1 adDetailsViewAnimationDuration:r3 bodyTextAnimationDelay:r4];
    [r0 release];
    [UIView animateWithDuration:&stack[-88] animations:&var_70 completion:r4];
    return;
}

-(void)toggleAllViews {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r8 = &@selector(animateShowViews);
    if ([self isExpanded] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = &@selector(animateShowViews);
            }
            else {
                    r8 = &@selector(animateHideViews);
            }
    }
    objc_msgSend(r19, *r8);
    return;
}

-(void *)viewControllerForPresentingModalView {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self rootViewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r19 retain];
    }
    else {
            r0 = [FBAdViewControllerProxy viewController];
            r0 = [r0 retain];
    }
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)viewsToAnimate {
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
    r19 = [NSMutableArray new];
    r0 = [r21 playPauseButton];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r19 addObject:r2];
    }
    r0 = [r21 adDetailsAndCTAButtonContainerView];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            [r19 addObject:r2];
    }
    r0 = [r21 gradientView];
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r19 addObject:r2];
    }
    [r21 release];
    [r22 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)videoViewDidLoad:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 videoAdViewDidLoad:r19];
    }
    [r20 release];
    return;
}

-(void)videoViewDidEnd:(void *)arg2 {
    [self dispatchVideoEndedWithError:0x0];
    return;
}

-(void)videoView:(void *)arg2 didFailWithError:(void *)arg3 {
    [self dispatchVideoEndedWithError:arg3];
    return;
}

-(void)interstitialAdToolbarDidTapAdChoices:(void *)arg2 {
    [self setCanPlayVideo:0x0];
    [self funnelLogAdChoicesTapped];
    [self pauseVideoIfNeeded];
    return;
}

-(void)interstitialAdToolbarDidClose:(void *)arg2 withTouchData:(void *)arg3 {
    r21 = [arg3 retain];
    [self funnelLogVideoSkipped];
    [self skipVideo];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 videoAdView:self skippedWithTouchData:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)interstitialAdToolbarDidCloseAdChoices:(void *)arg2 {
    [self setCanPlayVideo:0x1];
    [self resumeVideo];
    return;
}

-(void)interstitialAdToolbarDidTapAdInfo:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self funnelLogAdInfoTapped];
    [r19 pauseVideoIfNeeded];
    r0 = [r19 onInfo];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 onInfo];
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r19 release];
    }
    [r20 release];
    return;
}

-(void)resumeVideo {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self paused] != 0x0 && [r19 canPlayVideo] != 0x0) {
            r0 = [r19 videoRendererView];
            r0 = [r0 retain];
            r20 = r0;
            [r0 playVideo];
            [r19 setPaused:0x0];
            r0 = [r19 playPauseButton];
            r0 = [r0 retain];
            r21 = r0;
            if (r0 != 0x0) {
                    [r21 setHighlighted:0x0];
                    [r19 toggleAllViews];
            }
            [r21 release];
            [r20 release];
    }
    return;
}

-(void)pauseVideoIfNeeded {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self paused] & 0x1) == 0x0) {
            r0 = [r19 videoRendererView];
            r0 = [r0 retain];
            r20 = r0;
            [r0 pauseVideo];
            [r19 setPaused:0x1];
            r0 = [r19 playPauseButton];
            r0 = [r0 retain];
            r21 = r0;
            if (r0 != 0x0) {
                    var_28 = [r21 retain];
                    dispatch_async(*__dispatch_main_q, &var_48);
                    [r19 cancelAnimateViews];
                    [var_28 release];
            }
            [r21 release];
            [r20 release];
    }
    return;
}

-(void *)videoDataForFunnelLogging {
    r0 = [self videoRendererView];
    [r0 retain];
    [NSMutableDictionary new];
    [self currentTime];
    sub_100a3e4dc(&stack[-104]);
    [r19 volume];
    r24 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
    r0 = *(r24 + 0xfa8);
    asm { fcvt       d0, s0 };
    r22 = [[r0 stringWithFormat:@"%f"] retain];
    [r20 setObject:r22 forKeyedSubscript:@"volume"];
    [r22 release];
    r21 = [[*(r24 + 0xfa8) stringWithFormat:@"%lf"] retain];
    [r20 setObject:r21 forKeyedSubscript:@"video_time"];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)funnelLogPlayPauseButtonTapped {
    r20 = [[self funnelLoggingDelegate] retain];
    r19 = [[self videoDataForFunnelLogging] retain];
    [r20 logVideoPlayPauseButtonTappedWithData:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void)funnelLogMute {
    r20 = [[self funnelLoggingDelegate] retain];
    r19 = [[self videoDataForFunnelLogging] retain];
    [r20 logVideoDidMuteWithData:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void)funnelLogMuteButtonTapped {
    r20 = [[self funnelLoggingDelegate] retain];
    r19 = [[self videoDataForFunnelLogging] retain];
    [r20 logSoundButtonPressedWithData:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void)funnelLogUnMute {
    r20 = [[self funnelLoggingDelegate] retain];
    r19 = [[self videoDataForFunnelLogging] retain];
    [r20 logVideoDidUnMuteWithData:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void)funnelLogVideoSkipped {
    r20 = [[self funnelLoggingDelegate] retain];
    r19 = [[self videoDataForFunnelLogging] retain];
    [r20 logVideoDidSkipWithData:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void)funnelLogAdInfoTapped {
    r20 = [[self funnelLoggingDelegate] retain];
    r19 = [[self videoDataForFunnelLogging] retain];
    [r20 logAdReportTappedWithData:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void)funnelLogAdChoicesTapped {
    r20 = [[self funnelLoggingDelegate] retain];
    r19 = [[self videoDataForFunnelLogging] retain];
    [r20 logAdChoicesTappedWithData:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void)funnelLogLeaveApp {
    r20 = [[self funnelLoggingDelegate] retain];
    r19 = [[self videoDataForFunnelLogging] retain];
    [r20 logLeaveAppWithData:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void)funnelLogBackToApp {
    r20 = [[self funnelLoggingDelegate] retain];
    r19 = [[self videoDataForFunnelLogging] retain];
    [r20 logBackToAppWithData:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void *)adDetailsAndCTAButtonContainerView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adDetailsAndCTAButtonContainerView);
    r0 = [r0 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_waitingToast, 0x0);
    objc_destroyWeak((int64_t *)&self->_audioMuteButton);
    objc_destroyWeak((int64_t *)&self->_toolbarGradientView);
    objc_destroyWeak((int64_t *)&self->_gradientView);
    objc_destroyWeak((int64_t *)&self->_progressBar);
    objc_destroyWeak((int64_t *)&self->_playPauseButton);
    objc_storeStrong((int64_t *)&self->_toggleViewsTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_videoProgressTimingObserver, 0x0);
    objc_destroyWeak((int64_t *)&self->_funnelLoggingDelegate);
    objc_destroyWeak((int64_t *)&self->_toolbarView);
    objc_destroyWeak((int64_t *)&self->_videoRendererView);
    objc_storeStrong((int64_t *)&self->_onInfo, 0x0);
    objc_storeStrong((int64_t *)&self->_adDataModel, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_destroyWeak((int64_t *)&self->_rootViewController);
    objc_destroyWeak((int64_t *)&self->_adDetailsAndCTAButtonContainerView);
    return;
}

-(void)setAdDetailsAndCTAButtonContainerView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adDetailsAndCTAButtonContainerView, arg2);
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

-(void *)rootViewController {
    r0 = objc_loadWeakRetained((int64_t *)&self->_rootViewController);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setRootViewController:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_rootViewController, arg2);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)adDataModel {
    r0 = self->_adDataModel;
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)onInfo {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_onInfo)), 0x0);
    return r0;
}

-(void)setOnInfo:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)videoRendererView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_videoRendererView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setVideoRendererView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_videoRendererView, arg2);
    return;
}

-(void *)toolbarView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_toolbarView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setToolbarView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_toolbarView, arg2);
    return;
}

-(void *)funnelLoggingDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_funnelLoggingDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setFunnelLoggingDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_funnelLoggingDelegate, arg2);
    return;
}

-(bool)animating {
    r0 = *(int8_t *)(int64_t *)&self->_animating;
    return r0;
}

-(void)setAnimating:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_animating = arg2;
    return;
}

-(void *)videoProgressTimingObserver {
    r0 = self->_videoProgressTimingObserver;
    return r0;
}

-(void)setVideoProgressTimingObserver:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_videoProgressTimingObserver, arg2);
    return;
}

-(void)setToggleViewsTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_toggleViewsTimer, arg2);
    return;
}

-(void *)toggleViewsTimer {
    r0 = self->_toggleViewsTimer;
    return r0;
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

-(void)setProgressBar:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_progressBar, arg2);
    return;
}

-(void *)progressBar {
    r0 = objc_loadWeakRetained((int64_t *)&self->_progressBar);
    r0 = [r0 autorelease];
    return r0;
}

-(union ?)forcedViewTime {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_forcedViewTime));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(void)setForcedViewTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_forcedViewTime));
    r9 = *(r2 + 0x10);
    *(int128_t *)(self + r8) = *(int128_t *)r2;
    *(0x10 + self + r8) = r9;
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

-(bool)paused {
    r0 = *(int8_t *)(int64_t *)&self->_paused;
    return r0;
}

-(void)setPaused:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_paused = arg2;
    return;
}

-(bool)endVideoDetailsAnimated {
    r0 = *(int8_t *)(int64_t *)&self->_endVideoDetailsAnimated;
    return r0;
}

-(void)setEndVideoDetailsAnimated:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_endVideoDetailsAnimated = arg2;
    return;
}

-(bool)hasToldDelegateThatWereSkippable {
    r0 = *(int8_t *)(int64_t *)&self->_hasToldDelegateThatWereSkippable;
    return r0;
}

-(void)setHasToldDelegateThatWereSkippable:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasToldDelegateThatWereSkippable = arg2;
    return;
}

-(bool)isUsingNewLayout {
    r0 = *(int8_t *)(int64_t *)&self->_isUsingNewLayout;
    return r0;
}

-(void)setIsUsingNewLayout:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isUsingNewLayout = arg2;
    return;
}

-(bool)useNewToolbar {
    r0 = *(int8_t *)(int64_t *)&self->_useNewToolbar;
    return r0;
}

-(void)setUseNewToolbar:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_useNewToolbar = arg2;
    return;
}

-(bool)showCta {
    r0 = *(int8_t *)(int64_t *)&self->_showCta;
    return r0;
}

-(void)setShowCta:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_showCta = arg2;
    return;
}

-(void *)toolbarGradientView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_toolbarGradientView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setToolbarGradientView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_toolbarGradientView, arg2);
    return;
}

-(bool)isAppInstall {
    r0 = *(int8_t *)(int64_t *)&self->_appInstall;
    return r0;
}

-(bool)isExpanded {
    r0 = *(int8_t *)(int64_t *)&self->_isExpanded;
    return r0;
}

-(void)setIsExpanded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isExpanded = arg2;
    return;
}

-(void *)audioMuteButton {
    r0 = objc_loadWeakRetained((int64_t *)&self->_audioMuteButton);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAudioMuteButton:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_audioMuteButton, arg2);
    return;
}

-(void *)waitingToast {
    r0 = self->_waitingToast;
    return r0;
}

-(void)setWaitingToast:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_waitingToast, arg2);
    return;
}

-(bool)videoWasPlayingWhenAppActive {
    r0 = *(int8_t *)(int64_t *)&self->_videoWasPlayingWhenAppActive;
    return r0;
}

-(void)setVideoWasPlayingWhenAppActive:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_videoWasPlayingWhenAppActive = arg2;
    return;
}

-(bool)isRewardedAd {
    r0 = *(int8_t *)(int64_t *)&self->_isRewardedAd;
    return r0;
}

-(void)setIsRewardedAd:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isRewardedAd = arg2;
    return;
}

+(union ?)animateAdDetailsEndVideo {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r8;
    if (*qword_1011dd1d8 != -0x1) {
            dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
    }
    r2 = *0x1011dd1e0;
    r0 = (r2)(0x7d0, 0x3e8, r2);
    return r0;
}

@end