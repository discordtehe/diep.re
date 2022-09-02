@implementation FBAdPlayableView

-(void)removeToolbarTimer {
    r0 = [self toolbarTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    [self setToolbarTimer:0x0];
    return;
}

-(void)dealloc {
    [self setDelegate:0x0];
    r0 = [self contentContainer];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    r0 = [self commandHandler];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    [self setToolbarTimer:0x0];
    [self disableViewabilityValidation];
    [FBAdNotificationCenter removeAllObserversForObject:self];
    [[&var_30 super] dealloc];
    return;
}

-(void)setupToolbarTimer {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self forcedTimeFinished] & 0x1) == 0x0) {
            objc_initWeak(&stack[-56], r19);
            objc_copyWeak(&var_50 + 0x20, &stack[-56]);
            r0 = [FBAdTimer scheduledTimerWithTimeInterval:0x1 repeats:&var_50 block:r4];
            r21 = [r0 retain];
            [r19 setToolbarTimer:r21];
            [r21 release];
            objc_destroyWeak(&var_50 + 0x20);
            objc_destroyWeak(&stack[-56]);
    }
    return;
}

-(void *)initWithPlacementID:(void *)arg2 adData:(void *)arg3 placementDefinition:(void *)arg4 rootViewController:(void *)arg5 {
    r31 = r31 - 0x60;
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
    r25 = arg3;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [r25 retain];
    r21 = [r24 retain];
    r22 = [arg5 retain];
    if (r19 != 0x0 && r22 != 0x0) {
            r0 = [[&var_50 super] initWithFrame:r2];
            r23 = r0;
            if (r0 != 0x0) {
                    r0 = [r19 copy];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_placementID));
                    r8 = *(r23 + r9);
                    *(r23 + r9) = r0;
                    [r8 release];
                    objc_storeStrong((int64_t *)&r23->_nativeAdDataModel, r25);
                    r0 = [FBAdCommandProcessor new];
                    r25 = sign_extend_64(*(int32_t *)ivar_offset(_commandHandler));
                    r8 = *(r23 + r25);
                    *(r23 + r25) = r0;
                    [r8 release];
                    [*(r23 + r25) setDelegate:r23];
                    objc_storeStrong((int64_t *)&r23->_placementDefinition, r24);
                    objc_storeWeak((int64_t *)&r23->_rootViewController, r22);
                    *(int8_t *)(int64_t *)&r23->_impressionSent = 0x0;
                    *(int8_t *)(int64_t *)&r23->_ctaClicked = 0x0;
                    r23->_elapsedTime = 0x0;
                    r23->_callToActionButtonShownTime = 0xbff0000000000000;
                    r24 = [[UIColor colorWithUInt:0x23272e withAlpha:r3] retain];
                    [r23 setBackgroundColor:r24];
                    [r24 release];
                    [r23 addWebView];
                    [r23 addToolbarView];
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

-(void)layoutToolbarViewWithInsets:(struct UIEdgeInsets)arg2 withBounds:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x90;
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
    v11 = v7;
    v12 = v6;
    v13 = v5;
    v14 = v4;
    v10 = v3;
    v8 = v1;
    v9 = v0;
    r20 = self;
    r0 = [self toolbarView];
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            CGRectGetWidth(r0);
            [r19 toolbarHeight];
            [r19 setFrame:r2];
            [r20 currentTime];
            [r19 setCurrentTime:&var_80];
    }
    [r19 release];
    return;
}

-(void)layoutSubviews {
    sub_100aabe74();
    [self bounds];
    [self layoutToolbarViewWithInsets:r2 withBounds:r3];
    [self layoutWebViewWithInsets:r2 withBounds:r3];
    [self layoutCallToActionButtonWithInsets:r2 withBounds:r3];
    [self layoutMetadataViewWithInsets:r2 withBounds:r3];
    return;
}

-(void)layoutWebViewWithInsets:(struct UIEdgeInsets)arg2 withBounds:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r0 = [self toolbarView];
    r0 = [r0 retain];
    r0 = CGRectGetWidth(r0);
    CGRectGetHeight(r0);
    [r19 toolbarHeight];
    [r19 toolbarHeight];
    r0 = [self contentContainer];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r20 release];
    [r19 release];
    return;
}

-(void)layoutCallToActionButtonWithInsets:(struct UIEdgeInsets)arg2 withBounds:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
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
    r0 = [self callToActionButton];
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 frame];
            [r19 setFrame:r2];
    }
    [r19 release];
    return;
}

-(void)setFrameOnShow:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r19 = self;
    r0 = [self nativeAdDataModel];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 playableAdDataModel];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 playableURI];
    r0 = [r0 retain];
    [r0 release];
    [r21 release];
    [r20 release];
    if (r0 != 0x0) {
            [r19 setFrame:r2];
            r8 = &@selector(setupNotifications);
    }
    else {
            r8 = &@selector(adDidTerminate);
    }
    objc_msgSend(r19, *r8);
    return;
}

-(void)setMarkup:(void *)arg2 {
    r20 = [arg2 retain];
    r0 = [self contentContainer];
    r0 = [r0 retain];
    [r0 loadAdMarkup:r20 activationCommand:@""];
    [r0 release];
    [r20 release];
    return;
}

-(void)layoutMetadataViewWithInsets:(struct UIEdgeInsets)arg2 withBounds:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
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
    v0 = v4;
    v8 = v3;
    v9 = v1;
    r20 = self;
    CGRectGetWidth(self);
    d0 = d0 - d9;
    d8 = d0 - d8;
    r0 = [r20 callToActionButton];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            CGRectGetWidth([r19 frame]);
    }
    r0 = [r20 adDetailsView];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            v0 = v9;
            [r21 setFrame:r2];
    }
    r0 = [r20 titleView];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            [r22 setFrame:r2];
            CGRectGetHeight([r22 frame]);
    }
    r0 = [r20 subtitleView];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setFrame:r2];
    }
    [r20 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)updateWaitingTime {
    r31 = r31 - 0x90;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self currentTime];
    r0 = [r19 toolbarView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 forcedViewTime];
    }
    sub_100a3e440(r29 - 0x38, &stack[-96], &var_68);
    [r20 release];
    sub_100a3e4dc(&var_80);
    asm { fcvtzs     w22, d0 };
    r0 = [r19 waitingToast];
    r0 = [r0 retain];
    r20 = r0;
    r2 = 0x1;
    r0 = objc_msgSend(r0, *(&@selector(setProductVC:) + 0xea8));
    r21 = [r0 retain];
    [r20 release];
    asm { neg        w8, w22 };
    asm { sxtw       x2, w8 };
    r19 = [[r19 getDelayClickText:r2] retain];
    [r21 setText:r19];
    [r19 release];
    [r21 release];
    return;
}

-(union ?)currentTime {
    [self elapsedTime];
    r0 = sub_100a3e550(r8);
    return r0;
}

-(void)updateElapsedTime {
    [self elapsedTime];
    [self setElapsedTime:r2];
    return;
}

-(void *)getDelayClickText:(long long)arg2 {
    r0 = [self nativeAdDataModel];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 playableAdDataModel];
    r0 = [r0 retain];
    r22 = [[r0 localizedDelayClickText] retain];
    [r0 release];
    [r20 release];
    r0 = [NSNumber numberWithInteger:arg2];
    r0 = [r0 retain];
    r20 = [[r0 stringValue] retain];
    r21 = [[r22 stringByReplacingOccurrencesOfString:@"[secs]" withString:r20] retain];
    [r22 release];
    [r20 release];
    [r0 release];
    r0 = [r21 autorelease];
    return r0;
}

-(bool)forcedTimeFinished {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [self currentTime];
    r0 = [self toolbarView];
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 forcedViewTime];
    }
    r0 = sub_100a3e318(&stack[-56], &var_40);
    [r19 release];
    r0 = (r0 ^ 0xffffffff) >> 0x1f;
    return r0;
}

-(bool)isTerminated {
    r0 = [self contentContainer];
    r0 = [r0 retain];
    r20 = [r0 isTerminated];
    [r0 release];
    r0 = r20;
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
    r19 = self;
    r20 = (int64_t *)&self->_callToActionButton;
    r0 = objc_loadWeakRetained(r20);
    r21 = r0;
    if (r0 == 0x0) {
            r21 = [FBAdVideoCallToActionButton alloc];
            r0 = [r19 nativeAdDataModel];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 callToAction];
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
            r21 = [r21 initWithText:r2];
            [r23 release];
            [r22 release];
            [r21 addTarget:r19 action:@selector(adNativeCTAClick:withEvent:) forControlEvents:0x40];
            r0 = [r21 layer];
            r0 = [r0 retain];
            [r0 setBorderWidth:r19];
            [r0 release];
            r0 = [r21 layer];
            r0 = [r0 retain];
            [r0 setCornerRadius:r19];
            [r0 release];
            r22 = [[UIColor colorWithUInt:0xffffff withAlpha:@selector(adNativeCTAClick:withEvent:)] retain];
            [r21 setBackgroundColor:r22];
            [r22 release];
            [r21 setAlpha:r22];
            objc_storeWeak(r20, r21);
            [r19 addSubview:r2];
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void)addWebView {
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
    r20 = [[self toolbarView] retain];
    r0 = [r19 contentContainer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            sub_100aabe74();
            CGRectGetWidth([r19 bounds]);
            CGRectGetHeight([r19 bounds]);
            [r20 toolbarHeight];
            r22 = [sub_100a303cc(r19, 0x1, 0x1) retain];
            [r19 setContentContainer:r22];
            [r22 release];
            r0 = [r19 contentContainer];
            r0 = [r0 retain];
            [r0 setDelegate:r19];
            [r0 release];
            r22 = [[r19 contentContainer] retain];
            r23 = [[r19 nativeAdDataModel] retain];
            [r22 loadAdData:r23 minViewability:0x64];
            [r23 release];
            [r22 release];
            r0 = [r19 contentContainer];
            r0 = [r0 retain];
            r21 = [[r0 getView] retain];
            [r0 release];
            [r21 setHidden:0x0];
            r0 = [r21 scrollView];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 layer];
            r0 = [r0 retain];
            [r0 setCornerRadius:0x0];
            [r0 release];
            [r22 release];
            r0 = [r21 layer];
            r0 = [r0 retain];
            [r0 setCornerRadius:0x0];
            [r0 release];
            [r19 addSubview:r2];
            [r21 release];
    }
    [r20 release];
    return;
}

-(void)addToolbarView {
    r31 = r31 - 0xd0;
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
    r21 = self;
    r0 = [self toolbarView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            r20 = r22;
    }
    else {
            r19 = [[r21 nativeAdDataModel] retain];
            r20 = [[FBInterstitialAdToolbarView oldDesign] retain];
            [r22 release];
            [r20 setDelegate:r21];
            r0 = [r21 nativeAdDataModel];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            if (r0 != 0x0) {
                    r23 = &var_88;
                    [r22 forcedViewTime];
            }
            else {
                    r23 = &var_88;
            }
            [r20 setForcedViewTime:&var_A0];
            [r22 release];
            [r20 setAdIconType:[FBInterstitialAdToolbarView toolbarIconTypeForDataModel:r19]];
            r22 = [[r20 adChoicesButton] retain];
            r23 = [[r19 adChoicesText] retain];
            r24 = [[r19 localizedCancelText] retain];
            r25 = [[r19 adChoicesLinkURL] retain];
            r26 = [[r19 inlineClientToken] retain];
            r0 = [r21 viewControllerForPresentingModalView];
            r29 = r29;
            r27 = [r0 retain];
            [r22 configureWithText:r23 cancelText:r24 url:r25 inlineClientToken:r26 rootViewController:r27];
            [r27 release];
            [r26 release];
            [r25 release];
            [r24 release];
            [r23 release];
            [r22 release];
            [r20 setAlpha:r23];
            [r20 configureToolbarColorsForType:0x0];
            [r21 setToolbarView:r20];
            [r21 addSubview:r20];
            if (([r20 translatesAutoresizingMaskIntoConstraints] & 0x1) == 0x0) {
                    r0 = [r20 leadingAnchor];
                    r0 = [r0 retain];
                    r22 = r0;
                    var_A8 = r0;
                    r0 = [r21 an_leadingSafeAnchor];
                    r0 = [r0 retain];
                    var_B0 = r0;
                    r25 = [[r22 constraintEqualToAnchor:r0] retain];
                    r26 = [[r20 trailingAnchor] retain];
                    r27 = [[r21 an_trailingSafeAnchor] retain];
                    r28 = [[r26 constraintEqualToAnchor:r27] retain];
                    r22 = [[r20 topAnchor] retain];
                    r21 = [[r21 an_topSafeAnchor] retain];
                    r24 = [[r22 constraintEqualToAnchor:r21] retain];
                    r0 = [NSArray arrayWithObjects:&var_70 count:0x3];
                    r23 = [r0 retain];
                    [NSLayoutConstraint activateConstraints:r23];
                    [r23 release];
                    [r24 release];
                    [r21 release];
                    [r22 release];
                    [r28 release];
                    [r27 release];
                    [r26 release];
                    [r25 release];
                    [var_B0 release];
                    [var_A8 release];
            }
            [r19 release];
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)animateAppearance {
    [UIView setAnimationsEnabled:r2];
    r0 = [self contentContainer];
    r0 = [r0 retain];
    r19 = [[r0 getView] retain];
    [r0 release];
    CGRectOffset([r19 frame], @selector(frame), 0x0);
    [r19 setFrame:r2];
    r22 = [[self titleView] retain];
    r23 = [[self subtitleView] retain];
    [r22 frame];
    [r23 frame];
    r0 = [r22 superview];
    r0 = [r0 retain];
    [r0 frame];
    CGRectOffset([r0 release], @selector(frame), 0x0);
    CGRectOffset([r22 setFrame:r2], @selector(setFrame:), 0x0);
    [r23 setFrame:r2];
    [UIView setAnimationsEnabled:0x1];
    [r19 setFrame:0x1];
    [r22 setFrame:0x1];
    [r23 setFrame:0x1];
    [r23 release];
    [r22 release];
    [r19 release];
    return;
}

-(void *)adDetailsView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = (int64_t *)&self->_adDetailsView;
    r0 = objc_loadWeakRetained(r19);
    r21 = r0;
    if (r0 == 0x0) {
            r21 = [UIView new];
            [r20 addSubview:r2];
            objc_storeWeak(r19, r21);
    }
    r0 = [r21 autorelease];
    return r0;
}

-(void)willPresentViewController:(void *)arg2 {
    return;
}

-(void *)titleView {
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
    r19 = (int64_t *)&self->_titleView;
    r21 = objc_loadWeakRetained(r19);
    r0 = [r20 nativeAdDataModel];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 title];
    r29 = &saved_fp;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_100a7216c;

loc_100a72068:
    [r0 release];
    [r22 release];
    if (r21 != 0x0) goto loc_100a72178;

loc_100a72078:
    r21 = [FBAdLabel alloc];
    r0 = [r20 nativeAdDataModel];
    r0 = [r0 retain];
    r23 = [[r0 title] retain];
    [FBAdFont fontSizeSmall];
    r24 = [[FBAdFont sfuiDisplaySemiboldWithSize:r2] retain];
    r21 = [r21 initWithText:r23 numberOfLines:0x1 font:r24];
    [r24 release];
    [r23 release];
    [r0 release];
    r0 = [r20 adDetailsView];
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            [r22 addSubview:r2];
    }
    objc_storeWeak(r19, r21);
    goto loc_100a72170;

loc_100a72170:
    [r22 release];
    goto loc_100a72178;

loc_100a72178:
    r0 = [r21 autorelease];
    return r0;

loc_100a7216c:
    [r0 release];
    goto loc_100a72170;
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

-(void *)subtitleView {
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
    r19 = (int64_t *)&self->_subtitleView;
    r21 = objc_loadWeakRetained(r19);
    r0 = [r20 nativeAdDataModel];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 subtitle];
    r29 = &saved_fp;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_100a72300;

loc_100a721fc:
    [r0 release];
    [r22 release];
    if (r21 != 0x0) goto loc_100a7230c;

loc_100a7220c:
    r21 = [FBAdLabel alloc];
    r0 = [r20 nativeAdDataModel];
    r0 = [r0 retain];
    r23 = [[r0 subtitle] retain];
    [FBAdFont fontSizeExtraSmall];
    r24 = [[FBAdFont sfuiTextRegularWithSize:r2] retain];
    r21 = [r21 initWithText:r23 numberOfLines:0x1 font:r24];
    [r24 release];
    [r23 release];
    [r0 release];
    r0 = [r20 adDetailsView];
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            [r22 addSubview:r2];
    }
    objc_storeWeak(r19, r21);
    goto loc_100a72304;

loc_100a72304:
    [r22 release];
    goto loc_100a7230c;

loc_100a7230c:
    r0 = [r21 autorelease];
    return r0;

loc_100a72300:
    [r0 release];
    goto loc_100a72304;
}

-(void)viewControllerDismissed:(void *)arg2 {
    return;
}

-(void *)commandProcessorTouchInformation:(void *)arg2 {
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
    r0 = [self contentContainer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r0 = [r0 retain];
    r19 = r0;
    [r0 lastTouchStartLocation];
    v8 = v0;
    v9 = v1;
    [r19 lastTouchCurrentLocation];
    v11 = v0;
    v10 = v1;
    d0 = *(int128_t *)*_CGPointZero;
    if (d8 == d0) {
            asm { fccmp      d9, d1, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            if (d11 == d0) {
                    asm { fccmp      d10, d1, #0x0, eq };
            }
            if (!CPU_FLAGS & E) {
                    [r19 lastTouchRadius];
                    v13 = v0;
                    [r19 lastTouchPressure];
                    v15 = v0;
                    [r19 lastTouchStartTimestamp];
                    var_78 = d0;
                    [r19 lastTouchCurrentTimestamp];
                    v14 = v0;
                    [r19 firstImpressionTime];
                    if (d0 != 0xbff0000000000000) {
                            [NSDate timeIntervalSinceReferenceDate];
                            [r19 firstImpressionTime];
                            r0 = [NSNumber numberWithDouble:r2];
                            r29 = r29;
                            r20 = [r0 retain];
                    }
                    else {
                            r0 = @(0xffffffffffffffff);
                            r29 = r29;
                            r20 = [r0 retain];
                    }
                    r23 = [[NSNumber numberWithDouble:r2] retain];
                    r24 = [[NSNumber numberWithDouble:r2] retain];
                    r21 = [[FBAdUtility touchDictionaryWithStartLocation:r23 currentLocation:r24 endLocation:r20 startTime:r5 endTime:r6 touchForce:r7 touchRadius:stack[-144] delayTime:var_78] retain];
                    [r24 release];
                    [r23 release];
                    [r20 release];
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)disableViewabilityValidation {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
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
            r0 = [r0 retain];
            [r0 stopViewabilityCheck];
            [r0 release];
            r0 = [r19 viewabilityValidator];
            r0 = [r0 retain];
            [r0 setDelegate:0x0];
            [r0 release];
    }
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

-(void)ensureViewabilityValidation {
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
    r29 = &saved_fp;
    r19 = self;
    if (([self isImpressionSent] & 0x1) == 0x0) {
            r0 = [r19 superview];
            r29 = r29;
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    r20 = r0;
                    r0 = [r19 nativeAdDataModel];
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = [r0 playableAdDataModel];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = [r0 isValid];
                    [r0 release];
                    [r21 release];
                    [r20 release];
                    if (r23 != 0x0) {
                            r0 = [r19 viewabilityValidator];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    r0 = [r19 viewabilityValidator];
                            }
                            else {
                                    [r19 disableViewabilityValidation];
                                    r0 = [r19 viewabilityValidator];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 release];
                                    if (r0 == 0x0) {
                                            r22 = [FBAdViewabilityValidator alloc];
                                            r0 = [r19 placementDefinition];
                                            r0 = [r0 retain];
                                            r21 = r0;
                                            [r0 viewabilityCheckInterval];
                                            r0 = [r19 placementDefinition];
                                            r0 = [r0 retain];
                                            r23 = r0;
                                            [r0 viewabilityCheckInitialDelay];
                                            r0 = [r19 placementDefinition];
                                            r0 = [r0 retain];
                                            r25 = r0;
                                            r26 = [r0 minViewabilityPercentage];
                                            r0 = [r19 placementDefinition];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r22 = [r22 initWithView:r19 withInterval:r26 withInitialDelay:[r0 minViewabilityTicks] withMinViewability:0x1 withTickDuration:r6 shouldObserveNotifications:r7];
                                            [r19 setViewabilityValidator:r22];
                                            [r22 release];
                                            [r0 release];
                                            [r25 release];
                                            [r23 release];
                                            [r21 release];
                                    }
                                    r0 = [r19 viewabilityValidator];
                                    r0 = [r0 retain];
                                    [r0 setDelegate:r19];
                                    [r0 release];
                                    r0 = [r19 viewabilityValidator];
                            }
                            r0 = [r0 retain];
                            [r0 scheduleViewabilityCheck];
                            [r0 release];
                    }
            }
    }
    return;
}

-(void)adDidLoad {
    return;
}

-(void)adWillLogImpression {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 playableViewWillLogImpression:self];
    [r0 release];
    return;
}

-(bool)viewabilityValidator:(void *)arg2 checkedWithStatus:(long long)arg3 {
    r0 = self;
    if (arg3 == 0x1) {
            var_30 = r22;
            stack[-40] = r21;
            r31 = r31 + 0xffffffffffffffd0;
            var_20 = r20;
            stack[-24] = r19;
            var_10 = r29;
            stack[-8] = r30;
            r29 = &var_10;
            r19 = r0;
            if (([r0 isImpressionSent] & 0x1) == 0x0) {
                    r0 = [r19 contentContainer];
                    r0 = [r0 retain];
                    [r19 setImpressionSent:[r0 logImpression]];
                    [r0 release];
            }
            r0 = [r19 isImpressionSent];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)adCTAClick {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1] retain];
    r0 = [r19 contentContainer];
    r0 = [r0 retain];
    [r0 firstImpressionTime];
    r22 = [r19 processAccidentalClicksWithExtraData:r20 withFirstImpressionTime:&var_38];
    [r0 release];
    if ((r22 & 0x1) == 0x0) {
            [r19 adCTAClick:r20];
    }
    var_28 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)adCTAClick:(void *)arg2 {
    r21 = [arg2 retain];
    [self processCtaClick:[self forcedTimeFinished] ^ 0x1 extraData:r21];
    [r21 release];
    [self setCtaClicked:0x1];
    [self adDidLogClick];
    return;
}

-(void)processCtaClick:(bool)arg2 extraData:(void *)arg3 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r21 = self;
    r19 = [arg3 retain];
    r0 = [r21 nativeAdDataModel];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 commandURL];
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    if (r0 != 0x0) {
            if (r20 != 0x0) {
                    [r21 showWaitingToast];
            }
            var_40 = [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_68);
            [var_40 release];
    }
    [r19 release];
    return;
}

-(void)adNativeCTAClick:(void *)arg2 withEvent:(void *)arg3 {
    r2 = arg2;
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
    r21 = [arg3 retain];
    r0 = [r19 contentContainer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 firstImpressionTime];
    [r0 release];
    if (d8 != 0xbff0000000000000) {
            [NSDate timeIntervalSinceReferenceDate];
            r0 = [NSNumber numberWithDouble:r2];
            r29 = r29;
    }
    else {
            r0 = [NSNumber numberWithInt:r2];
            r29 = r29;
    }
    r20 = [r0 retain];
    r22 = [[FBAdUtility touchDictionaryForEvent:r21 delayTime:r20] retain];
    [r21 release];
    r0 = [NSMutableDictionary new];
    r21 = r0;
    [r0 setObject:@"native_click" forKeyedSubscript:@"click_origin"];
    r0 = @class(FBAdUtility);
    r0 = [r0 getJSONStringFromObject:r22];
    r0 = [r0 retain];
    r23 = r0;
    if (r0 != 0x0) {
            r3 = @"click_origin";
            [r21 setObject:r23 forKeyedSubscript:@"touch"];
    }
    [r19 callToActionButtonShownTime];
    if (([r19 processAccidentalClicksWithExtraData:r21 withFirstImpressionTime:r3] & 0x1) == 0x0) {
            [r19 adCTAClick:r21];
    }
    [r23 release];
    [r21 release];
    [r22 release];
    [r20 release];
    return;
}

-(bool)processAccidentalClicksWithExtraData:(void *)arg2 withFirstImpressionTime:(double)arg3 {
    r31 = r31 - 0xa0;
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
    r0 = [r20 nativeAdDataModel];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 inlineClientToken];
    r29 = &saved_fp;
    r25 = [r0 retain];
    r23 = [FBAdUtility enforceAdClickguard:r25 withToken:r19 withExtraData:r4];
    [r25 release];
    [r24 release];
    if ((r23 & 0x1) != 0x0) {
            r20 = 0x1;
    }
    else {
            if ([FBAdUtility enforceTwoStepConfirmation] != 0x0) {
                    objc_initWeak(&stack[-104], r20);
                    if ([r20 ctaClicked] != 0x0 && ([r20 forcedTimeFinished] & 0x1) == 0x0) {
                            r20 = 0x0;
                    }
                    else {
                            [[FBAdUtility viewControllerFromView:r20] retain];
                            r0 = [r20 nativeAdDataModel];
                            r0 = [r0 retain];
                            [[r0 inlineClientToken] retain];
                            objc_copyWeak(&var_88 + 0x28, &stack[-104]);
                            r0 = [r19 retain];
                            [FBAdUtility showTwoStepConfirmationDialogFrom:r24 withToken:r21 withExtraData:r0 completionHandler:&var_88];
                            [r21 release];
                            [r22 release];
                            [r24 release];
                            [r0 release];
                            objc_destroyWeak(&var_88 + 0x28);
                            r20 = 0x1;
                    }
                    objc_destroyWeak(&stack[-104]);
            }
            else {
                    r20 = 0x0;
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)showWaitingToast {
    r31 = r31 - 0x80;
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
    r0 = [self waitingToast];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r0 = [r19 contentContainer];
            r0 = [r0 retain];
            r21 = [[r0 getView] retain];
            [r0 release];
            r0 = [FBToastStyle alloc];
            r0 = [r0 init];
            r22 = r0;
            [r0 setMessageNumberOfLines:0x1];
            [r22 setMessageAlignment:0x1];
            [r22 setMaxWidthPercentage:0x1];
            [r22 setMessageNumberOfLines:0x2];
            r0 = [r19 nativeAdDataModel];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 playableAdDataModel];
            r0 = [r0 retain];
            r25 = [[r0 localizedDelayClickText] retain];
            r26 = [[r21 makeToast:r25 style:r22] retain];
            [r19 setWaitingToast:r26];
            [r26 release];
            [r25 release];
            [r0 release];
            [r23 release];
            [r19 updateWaitingTime];
            r20 = [[r19 waitingToast] retain];
            [r21 showToast:r20 position:0x0 completion:&var_68];
            [r20 release];
            [r22 release];
            [r21 release];
    }
    return;
}

-(void)showCallToActionButton {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self callToActionButton];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [NSArray arrayWithObjects:&var_30 count:0x1];
            r22 = [r0 retain];
            [FBAdUtility animateWithFadeIn:r22 completion:0x0];
            [r22 release];
            [r19 callToActionButtonShownTime];
            if (d0 < 0x3cb0000000000000) {
                    [NSDate timeIntervalSinceReferenceDate];
                    [r19 setCallToActionButtonShownTime:r2];
            }
    }
    var_28 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)adDidLogClick {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 playableViewClicked:self];
    [r0 release];
    return;
}

-(void)adDidFailToLoadWithError:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 playableView:self didFailWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void *)contentContainerViewabilityValidator {
    r0 = [self viewabilityValidator];
    return r0;
}

-(void)adDidTerminate {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 playableViewDidTerminate:self];
    [r0 release];
    return;
}

-(bool)processRequestURL:(void *)arg2 adDataModel:(void *)arg3 withExtraData:(void *)arg4 {
    return 0x0;
}

-(void)interstitialAdToolbarDidClose:(void *)arg2 withTouchData:(void *)arg3 {
    r22 = [arg3 retain];
    r20 = [[FBAdEventManager sharedManager] retain];
    r0 = [self nativeAdDataModel];
    r0 = [r0 retain];
    r23 = [[r0 inlineClientToken] retain];
    [r20 logCloseEventForToken:r23 withExtraData:r22];
    [r22 release];
    [r23 release];
    [r0 release];
    [r20 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 playableViewWillClose:self];
    [r0 release];
    return;
}

-(void)interstitialAdToolbarDidCloseAdChoices:(void *)arg2 {
    [self setupToolbarTimer];
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
    r20 = self;
    [self removeToolbarTimer];
    r0 = [r20 onInfo];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r20 onInfo];
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)interstitialAdToolbarDidTapAdChoices:(void *)arg2 {
    [self removeToolbarTimer];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_callToActionButton);
    objc_destroyWeak((int64_t *)&self->_titleView);
    objc_destroyWeak((int64_t *)&self->_subtitleView);
    objc_destroyWeak((int64_t *)&self->_adDetailsView);
    objc_storeStrong((int64_t *)&self->_waitingToast, 0x0);
    objc_destroyWeak((int64_t *)&self->_toolbarView);
    objc_storeStrong((int64_t *)&self->_placementDefinition, 0x0);
    objc_storeStrong((int64_t *)&self->_viewabilityValidator, 0x0);
    objc_storeStrong((int64_t *)&self->_toolbarTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_contentContainer, 0x0);
    objc_storeStrong((int64_t *)&self->_commandHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_placementID, 0x0);
    objc_storeStrong((int64_t *)&self->_onInfo, 0x0);
    objc_destroyWeak((int64_t *)&self->_rootViewController);
    objc_storeStrong((int64_t *)&self->_nativeAdDataModel, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
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

-(void *)nativeAdDataModel {
    r0 = self->_nativeAdDataModel;
    return r0;
}

-(void *)rootViewController {
    r0 = objc_loadWeakRetained((int64_t *)&self->_rootViewController);
    r0 = [r0 autorelease];
    return r0;
}

-(bool)isModalViewPresenting {
    r0 = *(int8_t *)(int64_t *)&self->_modalViewPresenting;
    return r0;
}

-(void)setRootViewController:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_rootViewController, arg2);
    return;
}

-(void)setModalViewPresenting:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_modalViewPresenting = arg2;
    return;
}

-(bool)isMarkupImpressionEventReceived {
    r0 = *(int8_t *)(int64_t *)&self->_markupImpressionEventReceived;
    return r0;
}

-(void *)placementID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementID)), 0x0);
    return r0;
}

-(void *)onInfo {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_onInfo)), 0x0);
    return r0;
}

-(void)setOnInfo:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setPlacementID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)isImpressionSent {
    r0 = *(int8_t *)(int64_t *)&self->_impressionSent;
    return r0;
}

-(void)setImpressionSent:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_impressionSent = arg2;
    return;
}

-(bool)ctaClicked {
    r0 = *(int8_t *)(int64_t *)&self->_ctaClicked;
    return r0;
}

-(void)setCtaClicked:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_ctaClicked = arg2;
    return;
}

-(void *)commandHandler {
    r0 = self->_commandHandler;
    return r0;
}

-(void *)contentContainer {
    r0 = self->_contentContainer;
    return r0;
}

-(void)setCommandHandler:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_commandHandler, arg2);
    return;
}

-(void)setContentContainer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_contentContainer, arg2);
    return;
}

-(void *)toolbarTimer {
    r0 = self->_toolbarTimer;
    return r0;
}

-(void *)viewabilityValidator {
    r0 = self->_viewabilityValidator;
    return r0;
}

-(void)setToolbarTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_toolbarTimer, arg2);
    return;
}

-(void)setViewabilityValidator:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_viewabilityValidator, arg2);
    return;
}

-(void *)placementDefinition {
    r0 = self->_placementDefinition;
    return r0;
}

-(void *)toolbarView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_toolbarView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setPlacementDefinition:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_placementDefinition, arg2);
    return;
}

-(void)setToolbarView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_toolbarView, arg2);
    return;
}

-(void)setElapsedTime:(double)arg2 {
    self->_elapsedTime = d0;
    return;
}

-(double)elapsedTime {
    r0 = self;
    return r0;
}

-(void *)waitingToast {
    r0 = self->_waitingToast;
    return r0;
}

-(void)setAdDetailsView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adDetailsView, arg2);
    return;
}

-(void)setWaitingToast:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_waitingToast, arg2);
    return;
}

-(void)setSubtitleView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_subtitleView, arg2);
    return;
}

-(void)setTitleView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_titleView, arg2);
    return;
}

-(double)callToActionButtonShownTime {
    r0 = self;
    return r0;
}

-(void)setCallToActionButtonShownTime:(double)arg2 {
    self->_callToActionButtonShownTime = d0;
    return;
}

-(void)setCallToActionButton:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_callToActionButton, arg2);
    return;
}

@end