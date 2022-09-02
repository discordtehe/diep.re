@implementation FBAdEndCardScreenshotView

-(void)dealloc {
    [self setDelegate:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithPlacementID:(void *)arg2 adDataModel:(void *)arg3 rootViewController:(void *)arg4 toolbarView:(void *)arg5 useNewLayout:(bool)arg6 {
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
    r25 = arg6;
    r24 = arg3;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [r24 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    if (r19 != 0x0 && r21 != 0x0) {
            r0 = [[&var_50 super] initWithFrame:r2];
            r23 = r0;
            if (r0 != 0x0) {
                    *(int8_t *)(int64_t *)&r23->_isUsingNewLayout = r25;
                    r0 = [r19 copy];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_placementID));
                    r8 = *(r23 + r9);
                    *(r23 + r9) = r0;
                    [r8 release];
                    objc_storeStrong((int64_t *)&r23->_adDataModel, r24);
                    r0 = [FBAdCommandProcessor new];
                    r24 = sign_extend_64(*(int32_t *)ivar_offset(_commandHandler));
                    r8 = *(r23 + r24);
                    *(r23 + r24) = r0;
                    [r8 release];
                    [*(r23 + r24) setDelegate:r23];
                    objc_storeWeak((int64_t *)&r23->_rootViewController, r21);
                    r0 = [FBAdConfigManager sharedManager];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 rvAutoRotate];
                    r0 = [r0 retain];
                    *(int8_t *)(int64_t *)&r23->_isAutoRotateEnabled = [r0 isEqualToString:@"autorotate_enabled"];
                    [r0 release];
                    [r24 release];
                    *(int8_t *)(int64_t *)&r23->_endcardAnimated = 0x0;
                    r23->_firstImpressionTime = 0xbff0000000000000;
                    [r23 addBlurredBackgroundImageView];
                    [r23 loadScreenshots];
                    [r23 addScrollView];
                    [r23 addAdDetailsViewAndCTA];
                    [r23 addToolbarGradientView];
                    [r23 addToolbarView:r22];
                    r24 = [[FBAdFunnelLogging sharedFunnelLogger] retain];
                    r25 = [[r20 inlineClientToken] retain];
                    r26 = [[r24 funnelLoggerForToken:r25] retain];
                    [r23 setFunnelLoggerDelegate:r26];
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

-(void)didMoveToSuperview {
    [[&var_20 super] didMoveToSuperview];
    [self layoutSubviews];
    [self animateViews];
    return;
}

-(void)layoutSubviews {
    r31 = r31 - 0x70;
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
    r19 = self;
    [[&var_60 super] layoutSubviews];
    r0 = [r19 window];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r19 firstImpressionTime];
            [r20 release];
            if (d8 == 0xbff0000000000000) {
                    [NSDate timeIntervalSinceReferenceDate];
                    [r19 setFirstImpressionTime:r2];
            }
    }
    else {
            [r20 release];
    }
    sub_100aabe74();
    [r19 bounds];
    r20 = [FBAdScreen isPortrait];
    [r19 layoutBackgroundViewWithBounds:r2];
    [r19 layoutToolbarViewForOrientation:r20 withInsets:r3 withBounds:r4];
    [r19 layoutAdMetadataViewForOrientation:r20 withInsets:r3 withBounds:r4];
    [r19 layoutScreenshotViewForOrientation:r20 withInsets:r3 withBounds:r4];
    return;
}

-(void)layoutBackgroundViewWithBounds:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self blurredBackgroundImageView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r19 release];
    return;
}

-(void)layoutToolbarViewForOrientation:(bool)arg2 withInsets:(struct UIEdgeInsets)arg3 withBounds:(struct CGRect)arg4 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x8);
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
    v11 = v7;
    v12 = v6;
    v13 = v5;
    v14 = v4;
    v10 = v3;
    v9 = v1;
    v8 = v0;
    r21 = arg2;
    r19 = [[self toolbarView] retain];
    r0 = [self toolbarGradientView];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            if ((r21 & 0x1) != 0x0) {
                    d0 = *(int128_t *)*_CGRectZero;
                    r0 = r20;
                    r1 = @selector(setFrame:);
            }
            else {
                    CGRectGetWidth(r0);
                    [r19 toolbarHeight];
                    d0 = 0x0;
                    r0 = r20;
                    r1 = @selector(setFrame:);
            }
            r0 = objc_msgSend(r0, r1);
    }
    CGRectGetWidth(r0);
    [r19 toolbarHeight];
    objc_msgSend(r19, r21);
    [r20 release];
    [r19 release];
    return;
}

-(void)layoutAdMetadataViewForOrientation:(bool)arg2 withInsets:(struct UIEdgeInsets)arg3 withBounds:(struct CGRect)arg4 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x70;
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
    v10 = v7;
    v11 = v6;
    v12 = v5;
    v13 = v4;
    v15 = v3;
    v8 = v1;
    r20 = self;
    r0 = [self adDetailsAndCTAButtonContainerView];
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [r20 marginForLayout];
            CGRectGetWidth([r19 setAdDetailsAndCTAButtonContainerViewButtonStyle:[r20 wantedAdDetailsAndCTAButtonContainerViewButtonStyle]]);
            [r19 sizeThatFits:r2];
            var_58 = d9;
            v9 = v12;
            r0 = [r20 isUsingNewLayout];
            if (r0 != 0x0) {
                    asm { fcsel      d8, d1, d0, ne };
            }
            CGRectGetHeight(r0);
            [r19 setFrame:r2];
    }
    [r19 release];
    return;
}

-(void)addToolbarGradientView {
    r31 = r31 - 0x70;
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
    r0 = [self toolbarGradientView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) {
            r22 = [[UIColor colorWithWhite:r2 alpha:r3] retain];
            r23 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            r0 = [NSArray arrayWithObjects:&var_58 count:0x2];
            r24 = [r0 retain];
            r21 = [FBGradientView newWithColors:r24];
            [r20 release];
            [r24 release];
            [r23 release];
            [r22 release];
            [r21 setAlpha:r24];
            [r19 addSubview:r21];
            [r19 setToolbarGradientView:r21];
            r20 = r21;
    }
    var_48 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)addToolbarView:(void *)arg2 {
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
    r29 = &saved_fp;
    r23 = self;
    r0 = [arg2 retain];
    r19 = r0;
    [r0 setDelegate:r23];
    [r23 setToolbarView:r19];
    [r23 addSubview:r19];
    if (([r19 translatesAutoresizingMaskIntoConstraints] & 0x1) == 0x0) {
            r0 = [r19 leadingAnchor];
            r0 = [r0 retain];
            var_78 = r0;
            r21 = [[r23 an_leadingSafeAnchor] retain];
            r24 = [[r0 constraintEqualToAnchor:r21] retain];
            r25 = [[r19 trailingAnchor] retain];
            r26 = [[r23 an_trailingSafeAnchor] retain];
            r27 = [[r25 constraintEqualToAnchor:r26] retain];
            r22 = [[r19 topAnchor] retain];
            r23 = [[r23 an_topSafeAnchor] retain];
            r28 = [[r22 constraintEqualToAnchor:r23] retain];
            r0 = [NSArray arrayWithObjects:&var_70 count:0x3];
            r20 = [r0 retain];
            [NSLayoutConstraint activateConstraints:r20];
            [r20 release];
            [r28 release];
            [r23 release];
            [r22 release];
            [r27 release];
            [r26 release];
            [r25 release];
            [r24 release];
            [r21 release];
            [var_78 release];
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)addBlurredBackgroundImageView {
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
    r0 = [self blurredBackgroundImageView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) {
            r0 = [r19 adDataModel];
            r0 = [r0 retain];
            r24 = [[r0 portraitBackgroundColor] retain];
            r25 = [[UIColor blackColor] retain];
            r21 = [sub_100b8cfdc(r24, r25) retain];
            [r25 release];
            [r24 release];
            [r0 release];
            r23 = [FBAdBlurredOverlayView alloc];
            r0 = [r19 adDataModel];
            r0 = [r0 retain];
            r24 = [[r0 image] retain];
            r23 = [r23 initWithBackgroundImage:r24 andOverlayColor:r21];
            [r20 release];
            [r24 release];
            [r0 release];
            [r19 addSubview:r23];
            [r19 setBlurredBackgroundImageView:r23];
            [r21 release];
            r20 = r23;
    }
    [r20 release];
    return;
}

-(void)addScrollView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self scrollView];
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            r20 = [UIScrollView new];
            [r21 release];
            [r20 setScrollEnabled:0x1];
            [r20 setShowsHorizontalScrollIndicator:0x0];
            [r20 setShowsVerticalScrollIndicator:0x0];
            [r20 setDecelerationRate:0x0];
            [r20 setBounces:0x1];
            [r20 setAlwaysBounceHorizontal:0x1];
            [r20 setClipsToBounds:0x0];
            [r20 setDelegate:r19];
            [r19 addSubview:r20];
            objc_storeWeak((int64_t *)&r19->_scrollView, r20);
            r21 = r20;
    }
    [r21 release];
    return;
}

-(void)layoutScreenshotViewForOrientation:(bool)arg2 withInsets:(struct UIEdgeInsets)arg3 withBounds:(struct CGRect)arg4 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x8);
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
    v10 = v7;
    v11 = v6;
    v12 = v5;
    v13 = v4;
    v9 = v0;
    r26 = arg2;
    r22 = self;
    r19 = [[self toolbarView] retain];
    r0 = [r22 scrollView];
    r29 = &var_10;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            var_110 = d9;
            r0 = [r22 screenshotViewArray];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 firstObject];
            r29 = r29;
            r21 = [r0 retain];
            [r24 release];
            if (r21 != 0x0) {
                    r0 = [r21 image];
                    r29 = r29;
                    r0 = [r0 retain];
                    r27 = r0;
                    [r0 size];
                    if (d0 == **_CGSizeZero) {
                            d9 = *(*_CGSizeZero + 0x8);
                            [r27 release];
                            if (d15 == d9) {
                                    r22 = [[NSString stringWithFormat:@"FBRewardedVideoAdNativeScreenshotView: firstScreenshot image is corrupted: %@"] retain];
                                    [FBAdDebugLogging logDebugEventWithType:@"internal_error" code:0x2 description:r22];
                                    [r22 release];
                            }
                            else {
                                    r0 = [r22 marginForLayout];
                                    d0 = d8 + d0;
                                    var_118 = d0;
                                    d8 = d14 + d15;
                                    if (r26 != 0x0) {
                                            r0 = [r19 toolbarHeight];
                                            d9 = var_110 + d0;
                                    }
                                    else {
                                            d0 = 0x4030000000000000;
                                            asm { fmaxnm     d9, d1, d0 };
                                    }
                                    r0 = CGRectGetHeight(r0);
                                    CGRectGetWidth(r0);
                                    d10 = d0 - var_118 - d8;
                                    r0 = [r22 adDetailsAndCTAButtonContainerView];
                                    r0 = [r0 retain];
                                    CGRectGetMinY([r0 frame]);
                                    d0 = (d14 - d15 - d14) + (d0 - var_118);
                                    d11 = d0 - d9;
                                    [r26 release];
                                    r0 = [r21 image];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 size];
                                    v12 = v13;
                                    [r0 release];
                                    asm { fdiv       d0, d12, d13 };
                                    d1 = d11 * d0;
                                    asm { fdiv       d0, d10, d0 };
                                    if (d1 > d10) {
                                            asm { fcsel      d13, d10, d1, gt };
                                    }
                                    var_B8 = &var_C0;
                                    if (CPU_FLAGS & G) {
                                            asm { fcsel      d14, d0, d11, gt };
                                    }
                                    d1 = *0x100ba1e10;
                                    r0 = [r22 screenshotViewArray];
                                    r0 = [r0 retain];
                                    r24 = r0;
                                    [r0 count];
                                    r0 = [r22 screenshotViewArray];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r27 = r0;
                                    [r0 count];
                                    asm { ucvtf      d0, x25 };
                                    d0 = d13 * d0;
                                    asm { ucvtf      d1, x8 };
                                    d12 = d0 + d1 * 0x4020000000000000;
                                    [r27 release];
                                    [r24 release];
                                    if (d12 < d10) {
                                            *(var_B8 + 0x18) = (d10 - d12) * 0x3fe0000000000000;
                                    }
                                    r23 = [[r22 screenshotViewArray] retain];
                                    r0 = [r20 retain];
                                    [r23 enumerateObjectsUsingBlock:&var_108];
                                    [r23 release];
                                    [r0 setContentSize:&var_108];
                                    [r0 setFrame:r2];
                                    [r0 release];
                                    _Block_object_dispose(&var_C0, 0x8);
                            }
                    }
                    else {
                            [r27 release];
                            r0 = [r22 marginForLayout];
                            d0 = d8 + d0;
                            var_118 = d0;
                            d8 = d14 + d15;
                            if (r26 != 0x0) {
                                    r0 = [r19 toolbarHeight];
                                    d9 = var_110 + d0;
                            }
                            else {
                                    d0 = 0x4030000000000000;
                                    asm { fmaxnm     d9, d1, d0 };
                            }
                            r0 = CGRectGetHeight(r0);
                            CGRectGetWidth(r0);
                            d10 = d0 - var_118 - d8;
                            r0 = [r22 adDetailsAndCTAButtonContainerView];
                            r0 = [r0 retain];
                            CGRectGetMinY([r0 frame]);
                            d0 = (d14 - d15 - d14) + (d0 - var_118);
                            d11 = d0 - d9;
                            [r26 release];
                            r0 = [r21 image];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 size];
                            v12 = v13;
                            [r0 release];
                            asm { fdiv       d0, d12, d13 };
                            d1 = d11 * d0;
                            asm { fdiv       d0, d10, d0 };
                            if (d1 > d10) {
                                    asm { fcsel      d13, d10, d1, gt };
                            }
                            var_B8 = &var_C0;
                            if (CPU_FLAGS & G) {
                                    asm { fcsel      d14, d0, d11, gt };
                            }
                            d1 = *0x100ba1e10;
                            r0 = [r22 screenshotViewArray];
                            r0 = [r0 retain];
                            r24 = r0;
                            [r0 count];
                            r0 = [r22 screenshotViewArray];
                            r29 = r29;
                            r0 = [r0 retain];
                            r27 = r0;
                            [r0 count];
                            asm { ucvtf      d0, x25 };
                            d0 = d13 * d0;
                            asm { ucvtf      d1, x8 };
                            d12 = d0 + d1 * 0x4020000000000000;
                            [r27 release];
                            [r24 release];
                            if (d12 < d10) {
                                    *(var_B8 + 0x18) = (d10 - d12) * 0x3fe0000000000000;
                            }
                            r23 = [[r22 screenshotViewArray] retain];
                            r0 = [r20 retain];
                            [r23 enumerateObjectsUsingBlock:&var_108];
                            [r23 release];
                            [r0 setContentSize:&var_108];
                            [r0 setFrame:r2];
                            [r0 release];
                            _Block_object_dispose(&var_C0, 0x8);
                    }
            }
            else {
                    r22 = [[NSString stringWithFormat:@"FBRewardedVideoAdNativeScreenshotView: firstScreenshot image is corrupted: %@"] retain];
                    [FBAdDebugLogging logDebugEventWithType:@"internal_error" code:0x2 description:r22];
                    [r22 release];
            }
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)loadScreenshots {
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
    r19 = self;
    r0 = [self adDataModel];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 screenshots];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    if (r0 != 0x0) {
            r0 = [r19 screenshotViewArray];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r22 = [NSMutableArray new];
                    [r19 setScreenshotViewArray:r22];
                    [r22 release];
            }
            var_120 = q0;
            r0 = [r19 adDataModel];
            r0 = [r0 retain];
            r20 = [[r0 screenshots] retain];
            [r0 release];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_160 = r1;
            r0 = objc_msgSend(r20, r1);
            if (r0 != 0x0) {
                    r22 = r0;
                    r24 = *var_120;
                    do {
                            r21 = 0x0;
                            do {
                                    if (*var_120 != r24) {
                                            objc_enumerationMutation(r20);
                                    }
                                    [FBAdUtility loadRemoteImageWithURL:r2 withBlock:r3];
                                    r21 = r21 + 0x1;
                            } while (r21 < r22);
                            r0 = objc_msgSend(r20, var_160);
                            r22 = r0;
                    } while (r0 != 0x0);
            }
            [r20 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)processCommand:(void *)arg2 withExtraData:(void *)arg3 {
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
    r29 = &saved_fp;
    r21 = arg3;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r21 = [r21 retain];
            r22 = [[r20 commandHandler] retain];
            r23 = [r19 retain];
            r0 = [r20 adDataModel];
            r0 = [r0 retain];
            r25 = [[r0 inlineClientToken] retain];
            [r22 processCommand:r23 withExtraData:r21 inlineClientToken:r25 skipAppStore:0x0 completionHandler:0x100ea9208];
            [r21 release];
            [r25 release];
            [r0 release];
            [r23 release];
            [r22 release];
            [r20 adDidLogClick];
    }
    [r19 release];
    return;
}

-(void)animateViews {
    r31 = r31 - 0xa0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self isEndcardAnimated] & 0x1) == 0x0) {
            [r19 setEndcardAnimated:0x1];
            r0 = [r19 scrollView];
            r0 = [r0 retain];
            [r0 frame];
            *(&var_50 + 0x20) = *(int128_t *)(&var_50 + 0x20) + 0x4059000000000000;
            [r0 setFrame:0x1];
            [r0 setAlpha:0x1];
            r0 = [r0 retain];
            [FBAdUtility animateWithStandardAnimations:&var_88 duration:0x0 completion:r4];
            [r0 release];
            _Block_object_dispose(&var_50, 0x8);
            [r19 release];
    }
    return;
}

-(void)addAdDetailsViewAndCTA {
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
    if (r0 == 0x0) {
            var_90 = r0;
            if ([r19 isUsingNewLayout] != 0x0) {
                    r0 = [r19 adDataModel];
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = [r0 adCreativeType];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = [r0 isEqualToString:r2] ^ 0x1;
                    [r0 release];
                    [r21 release];
            }
            else {
                    r23 = 0x0;
            }
            r25 = [FBAdDetailsAndCTAButtonContainerView alloc];
            r0 = [r19 adDataModel];
            r0 = [r0 retain];
            var_60 = r0;
            var_58 = [[r0 title] retain];
            r0 = [r19 adDataModel];
            r0 = [r0 retain];
            var_68 = r0;
            var_80 = [[r0 subtitle] retain];
            r0 = [r19 adDataModel];
            r0 = [r0 retain];
            var_70 = r0;
            r27 = [[r0 iconURL] retain];
            r0 = [r19 adDataModel];
            r0 = [r0 retain];
            var_78 = r0;
            r28 = [[r0 body] retain];
            r0 = [r19 adDataModel];
            r0 = [r0 retain];
            var_88 = r0;
            var_A0 = [[r0 socialContext] retain];
            r0 = [r19 adDataModel];
            r0 = [r0 retain];
            var_98 = r0;
            var_B0 = [[r0 callToAction] retain];
            r0 = [r19 adDataModel];
            r0 = [r0 retain];
            var_A8 = r0;
            r26 = [[r0 starRatingValue] retain];
            r0 = [r19 adDataModel];
            r0 = [r0 retain];
            r22 = [[r0 starRatingCount] retain];
            r24 = [r25 initWithTitle:var_58 subtitle:var_80 iconURL:r27 bodyText:r28 socialContext:var_A0 callToActionText:var_B0 ratingValue:r26 ratingCount:r22 style:[r19 wantedAdDetailsAndCTAButtonContainerViewButtonStyle] iconStyle:r23];
            [var_90 release];
            [r22 release];
            [r0 release];
            [r26 release];
            [var_A8 release];
            [var_B0 release];
            [var_98 release];
            [var_A0 release];
            [var_88 release];
            [r28 release];
            [var_78 release];
            [r27 release];
            [var_70 release];
            [var_80 release];
            [var_68 release];
            [var_58 release];
            [var_60 release];
            [r19 addSubview:r24];
            [r19 setAdDetailsAndCTAButtonContainerView:r24];
            r0 = [r24 callToActionButton];
            r0 = [r0 retain];
            [r0 addTarget:r19 action:@selector(adClicked:withEvent:) forControlEvents:0x40];
            [r0 release];
            r0 = r24;
    }
    [r0 release];
    return;
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

-(void)adClicked:(void *)arg2 withEvent:(void *)arg3 {
    r31 = r31 - 0xd0;
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
    r23 = self;
    var_B0 = [arg2 retain];
    r20 = [arg3 retain];
    [r23 firstImpressionTime];
    if (d0 != 0xbff0000000000000) {
            [NSDate timeIntervalSinceReferenceDate];
            [r23 firstImpressionTime];
            r0 = [NSNumber numberWithDouble:r2];
            r29 = r29;
    }
    else {
            r0 = [NSNumber numberWithInt:r2];
            r29 = r29;
    }
    var_C0 = [r0 retain];
    var_B8 = r20;
    r22 = [[FBAdUtility touchDictionaryForEvent:r20 delayTime:r3] retain];
    r24 = [[FBAdUtility getJSONStringFromObject:r22] retain];
    r0 = [r23 funnelLoggerDelegate];
    r29 = r29;
    r0 = [r0 retain];
    [r0 logCTAClickedWithData:0x0];
    [r0 release];
    if (r24 != 0x0) {
            r4 = 0x1;
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r29 = r29;
            r25 = [r0 retain];
    }
    else {
            r25 = 0x0;
    }
    [r23 firstImpressionTime];
    r0 = [r23 adDataModel];
    r0 = [r0 retain];
    r28 = r0;
    r0 = [r0 inlineClientToken];
    r29 = r29;
    r20 = [r0 retain];
    r19 = [FBAdUtility enforceAdClickguard:r20 withToken:r25 withExtraData:r4];
    [r20 release];
    [r28 release];
    if ((r19 & 0x1) == 0x0) {
            if ([FBAdUtility enforceTwoStepConfirmation] != 0x0) {
                    objc_initWeak(&stack[-144], r23);
                    [[r23 rootViewController] retain];
                    r0 = [r23 adDataModel];
                    r0 = [r0 retain];
                    [[r0 inlineClientToken] retain];
                    objc_copyWeak(&var_A8 + 0x20, &stack[-144]);
                    [r28 showTwoStepConfirmationDialogFrom:r19 withToken:r26 withExtraData:r25 completionHandler:&var_A8];
                    [r26 release];
                    [r27 release];
                    [r19 release];
                    objc_destroyWeak(&var_A8 + 0x20);
                    objc_destroyWeak(&stack[-144]);
            }
            else {
                    r0 = [r23 adDataModel];
                    r0 = [r0 retain];
                    r20 = [[r0 commandURL] retain];
                    [r23 processCommand:r20 withExtraData:r25];
                    [r20 release];
                    [r0 release];
            }
    }
    var_68 = **___stack_chk_guard;
    [r24 release];
    [r25 release];
    [r22 release];
    [var_C0 release];
    [var_B8 release];
    [var_B0 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void)scrollViewWillEndDragging:(void *)arg2 withVelocity:(struct CGPoint)arg3 targetContentOffset:(struct CGPoint *)arg4 {
    memcpy(&r3, &arg3, 0x8);
    var_60 = d13;
    stack[-104] = d12;
    r31 = r31 + 0xffffffffffffff90;
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
    r19 = r3;
    r22 = self;
    r20 = [arg2 retain];
    r0 = [r22 screenshotViewArray];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 firstObject];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r24 release];
    if (r21 != 0x0) {
            CGRectGetWidth([r21 bounds]);
            d11 = d9 + 0x4020000000000000;
            CGRectGetWidth(objc_msgSend(r20, r24));
            d13 = 0x0;
            d0 = *r19;
            d0 = d0 + d13;
            asm { fdiv       d0, d0, d11 };
            asm { frintp     d1, d0 };
            asm { frintm     d0, d0 };
            if (d8 > 0x0) {
                    asm { fcsel      d0, d1, d0, gt };
            }
            r24 = @selector(bounds);
            asm { fcvtzs     x24, d0 };
            if (r24 >= 0x1) {
                    r0 = [r22 screenshotViewArray];
                    r0 = [r0 retain];
                    r23 = [r0 count];
                    [r0 release];
                    if (r23 > @selector(bounds)) {
                            d12 = 0x3fe0000000000000;
                            asm { scvtf      d0, x24 };
                            d0 = d9 * d12 + (d11 * d0 - d13);
                    }
                    else {
                            [r20 contentSize];
                            d0 = d0 - d10;
                    }
            }
            else {
                    d0 = 0x0;
            }
            *r19 = d0;
    }
    [r21 release];
    [r20 release];
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

-(void)willPresentViewController:(void *)arg2 {
    return;
}

-(void)viewControllerDismissed:(void *)arg2 {
    return;
}

-(void *)commandProcessorTouchInformation:(void *)arg2 {
    return 0x0;
}

-(void)adDidLogClick {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 endCardScreenshotViewClicked:self];
    [r0 release];
    return;
}

-(void)adDidTerminate {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 endCardScreenshotViewDidTerminate:self];
    [r0 release];
    return;
}

-(void)interstitialAdToolbarDidClose:(void *)arg2 withTouchData:(void *)arg3 {
    r20 = [arg3 retain];
    r0 = [self funnelLoggerDelegate];
    r0 = [r0 retain];
    [r0 logAdCloseClickedWithData:0x0];
    [r0 release];
    r21 = [[FBAdEventManager sharedManager] retain];
    r0 = [self adDataModel];
    r0 = [r0 retain];
    r23 = [[r0 inlineClientToken] retain];
    [r21 logCloseEventForToken:r23 withExtraData:r20];
    [r20 release];
    [r23 release];
    [r0 release];
    [r21 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 endCardScreenshotViewWillClose:self];
    [r0 release];
    return;
}

-(void)interstitialAdToolbarDidTapAdChoices:(void *)arg2 {
    r0 = [self funnelLoggerDelegate];
    r0 = [r0 retain];
    [r0 logAdChoicesTappedWithData:0x0];
    [r0 release];
    return;
}

-(void)interstitialAdToolbarDidCloseAdChoices:(void *)arg2 {
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
    r0 = [self funnelLoggerDelegate];
    r0 = [r0 retain];
    [r0 logAdReportTappedWithData:0x0];
    [r0 release];
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

-(double)marginForLayout {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self isUsingNewLayout];
    if (r0 != 0x0) {
            asm { fcsel      d0, d1, d0, ne };
    }
    return r0;
}

-(void)handleClickWithExtraData:(void *)arg2 {
    [self adDidLogClick];
    return;
}

-(bool)processFBAdSchemeLink:(void *)arg2 adDataModel:(void *)arg3 withExtraData:(void *)arg4 {
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
    r29 = &saved_fp;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if ([FBAdUtility isFBAdScheme:r19] != 0x0) {
            objc_initWeak(&stack[-88], r22);
            [[r22 commandHandler] retain];
            [[r20 inlineClientToken] retain];
            objc_copyWeak(&var_78 + 0x28, &stack[-88]);
            var_58 = [r21 retain];
            r24 = [r23 processCommand:r19 inlineClientToken:r25 completionHandler:&var_78];
            [r25 release];
            [r23 release];
            [var_58 release];
            objc_destroyWeak(&var_78 + 0x28);
            objc_destroyWeak(&stack[-88]);
    }
    else {
            r24 = 0x0;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r24;
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_funnelLoggerDelegate);
    objc_storeStrong((int64_t *)&self->_adDataModel, 0x0);
    objc_destroyWeak((int64_t *)&self->_toolbarGradientView);
    objc_destroyWeak((int64_t *)&self->_toolbarView);
    objc_storeStrong((int64_t *)&self->_commandHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_screenshotViewArray, 0x0);
    objc_destroyWeak((int64_t *)&self->_blurredBackgroundImageView);
    objc_destroyWeak((int64_t *)&self->_scrollView);
    objc_storeStrong((int64_t *)&self->_placementID, 0x0);
    objc_storeStrong((int64_t *)&self->_onInfo, 0x0);
    objc_destroyWeak((int64_t *)&self->_rootViewController);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_destroyWeak((int64_t *)&self->_adDetailsAndCTAButtonContainerView);
    return;
}

-(void)setAdDetailsAndCTAButtonContainerView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adDetailsAndCTAButtonContainerView, arg2);
    return;
}

-(void *)adDetailsAndCTAButtonContainerView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adDetailsAndCTAButtonContainerView);
    r0 = [r0 autorelease];
    return r0;
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

-(void *)rootViewController {
    r0 = objc_loadWeakRetained((int64_t *)&self->_rootViewController);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setRootViewController:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_rootViewController, arg2);
    return;
}

-(bool)isModalViewPresenting {
    r0 = *(int8_t *)(int64_t *)&self->_modalViewPresenting;
    return r0;
}

-(void)setModalViewPresenting:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_modalViewPresenting = arg2;
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

-(void *)placementID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementID)), 0x0);
    return r0;
}

-(void)setPlacementID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)scrollView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_scrollView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setScrollView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_scrollView, arg2);
    return;
}

-(void *)blurredBackgroundImageView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_blurredBackgroundImageView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setBlurredBackgroundImageView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_blurredBackgroundImageView, arg2);
    return;
}

-(void *)screenshotViewArray {
    r0 = self->_screenshotViewArray;
    return r0;
}

-(void)setScreenshotViewArray:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_screenshotViewArray, arg2);
    return;
}

-(void *)commandHandler {
    r0 = self->_commandHandler;
    return r0;
}

-(void)setCommandHandler:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_commandHandler, arg2);
    return;
}

-(bool)isAutoRotateEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_isAutoRotateEnabled;
    return r0;
}

-(void)setIsAutoRotateEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isAutoRotateEnabled = arg2;
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

-(void *)toolbarView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_toolbarView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setToolbarView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_toolbarView, arg2);
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

-(bool)isEndcardAnimated {
    r0 = *(int8_t *)(int64_t *)&self->_endcardAnimated;
    return r0;
}

-(void)setEndcardAnimated:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_endcardAnimated = arg2;
    return;
}

-(double)firstImpressionTime {
    r0 = self;
    return r0;
}

-(void)setFirstImpressionTime:(double)arg2 {
    self->_firstImpressionTime = d0;
    return;
}

-(void *)adDataModel {
    r0 = self->_adDataModel;
    return r0;
}

-(void *)funnelLoggerDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_funnelLoggerDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setFunnelLoggerDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_funnelLoggerDelegate, arg2);
    return;
}

@end