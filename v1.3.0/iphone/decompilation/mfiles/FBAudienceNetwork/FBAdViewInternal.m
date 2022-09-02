@implementation FBAdViewInternal

-(void *)initWithAdData:(void *)arg2 placementDefinition:(void *)arg3 adSize:(struct FBAdSize)arg4 rootViewController:(void *)arg5 {
    memcpy(&r4, &arg4, 0x8);
    r31 = r31 - 0x60;
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
    v8 = v1;
    v9 = v0;
    r22 = arg3;
    r19 = [arg2 retain];
    r20 = [r22 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 setHidden:0x1];
            r0 = [UIColor colorWithUInt:0xffffff withAlpha:r3];
            r29 = r29;
            r8 = &@selector(dispatchAsyncWithQueue:withBlock:);
            r2 = [r0 retain];
            objc_msgSend(r21, *(r8 + 0x4d8));
            [r23 release];
            if (d9 == 0x0) {
                    r8 = &@selector(dispatchAsyncWithQueue:withBlock:);
                    if (CPU_FLAGS & E) {
                            r8 = 0x1;
                    }
            }
            if (d8 == 0x0) {
                    if (CPU_FLAGS & E) {
                            r9 = 0x1;
                    }
            }
            *(int8_t *)(int64_t *)&r21->_isInterstitial = r8 & r9;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_adSizeType));
            *(int128_t *)(r21 + r8) = d9;
            *(int128_t *)(0x8 + r21 + r8) = d8;
            [r21 updateInitialAdViewSize:r2];
            r0 = @class(FBAdCommandProcessor);
            r0 = [r0 new];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_commandHandler));
            r8 = *(r21 + r23);
            *(r21 + r23) = r0;
            [r8 release];
            [*(r21 + r23) setDelegate:r21];
            r23 = [[FBHTMLAdDataModel alloc] initWithMetadata:r19];
            if ([FBAdCommandProcessor shouldInvalidate:r23] != 0x0) {
                    [r23 release];
                    r23 = 0x0;
            }
            r0 = [r23 isVideo];
            r29 = r29;
            r0 = [r0 retain];
            [r21 setForceUIWebView:[r0 boolValue]];
            [r0 release];
            [r21 createAdContentContainer];
            objc_storeStrong((int64_t *)&r21->_placementDefinition, r22);
            *(int8_t *)(int64_t *)&r21->_isImpressionSent = 0x0;
            *(int8_t *)(int64_t *)&r21->_adValid = [r23 isValid];
            if ([r23 isValid] != 0x0) {
                    r22 = [[r21 adContentContainer] retain];
                    [r22 loadAdData:r23 minViewability:[r20 minViewabilityPercentage]];
                    [r22 release];
            }
            [r23 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
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
            r0 = [r0 offsiteAd];
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r19 = 0x1;
                    }
            }
            [r0 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)loadAd {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self adDidLoad];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adViewDidLoad:)] != 0x0) {
            [r20 adViewDidLoad:r19];
    }
    [r20 release];
    return;
}

-(void)dealloc {
    r0 = [self adContentContainer];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    r0 = [self commandHandler];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    [self disableViewabilityValidation];
    [[&var_30 super] dealloc];
    return;
}

-(void)setFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self validRectForFrame:r2];
    [[&var_30 super] setFrame:r2];
    r21 = [[self adContentContainer] retain];
    [self bounds];
    [r21 setFrame:r2];
    [r21 release];
    return;
}

-(void)setBounds:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self validRectForFrame:r2];
    [[&var_20 super] setBounds:r2];
    r20 = [[self adContentContainer] retain];
    [self bounds];
    [r20 setFrame:r2];
    [r20 release];
    return;
}

-(void)createAdContentContainer {
    [self actualAdSize];
    [self adSizeType];
    r20 = [sub_100a303cc(self, [self forceUIWebView], 0x0) retain];
    [self setAdContentContainer:r20];
    [r20 release];
    r0 = [self adContentContainer];
    r0 = [r0 retain];
    [r0 setDelegate:self];
    [r0 release];
    r0 = [self adContentContainer];
    r0 = [r0 retain];
    r22 = [[r0 getView] retain];
    [self addSubview:r22];
    [r22 release];
    [r0 release];
    r20 = [[self adContentContainer] retain];
    [self bounds];
    [r20 setFrame:r2];
    [r20 release];
    return;
}

-(void)openAdChoicesURL:(void *)arg2 adDataModel:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[self rootViewController] retain];
    r22 = @class(FBAdSafariViewController);
    r23 = [[r19 inlineClientToken] retain];
    [r19 release];
    [r22 presentSafariViewControllerWithURL:r21 withRootViewController:r20 withInlineClientToken:r23 withHandlerTime:[FBAdSafariViewController currentTimeMs] withDelegate:0x0];
    [r21 release];
    [r23 release];
    [r20 release];
    return;
}

-(struct CGRect)validRectForFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    v8 = v1;
    v9 = v0;
    r0 = [self adContentContainer];
    r0 = [r0 retain];
    [r0 minimumSize];
    [r0 release];
    r0 = [self adContentContainer];
    r0 = [r0 retain];
    [r0 maximumSize];
    v12 = v1;
    r0 = [r0 release];
    r8 = *_CGSizeZero;
    d0 = *(int128_t *)r8;
    d1 = *(int128_t *)(r8 + 0x8);
    if (d13 == d0) {
            r8 = *_CGSizeZero;
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    if (d12 == d1) {
            if (CPU_FLAGS & E) {
                    r9 = 0x1;
            }
    }
    r8 = r8 & r9;
    if (d11 < d14) {
            asm { fcsel      d2, d14, d11, mi };
    }
    if (d10 >= d15) {
            asm { fcsel      d3, d10, d15, pl };
    }
    if (d14 == d0) {
            asm { fccmp      d15, d1, #0x0, eq };
    }
    if (CPU_FLAGS & E) {
            asm { fcsel      d2, d11, d2, eq };
    }
    if (CPU_FLAGS & E) {
            asm { fcsel      d3, d10, d3, eq };
    }
    if ((r8 & 0x1) == 0x0) {
            if (d11 > d13) {
                    asm { fcsel      d2, d13, d2, gt };
            }
    }
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
                    r21 = [r19 isAdValid];
                    [r0 release];
                    if (r21 != 0x0) {
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

-(void *)offsiteAd {
    r0 = [self adContentContainer];
    r0 = [r0 retain];
    r20 = [[r0 offsiteAd] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(long long)orientation {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_orientation));
    r8 = *(r0 + r8);
    if (r8 != 0x0) {
            r0 = r8;
    }
    else {
            r0 = [r0 offsiteAd];
            r0 = [r0 retain];
            r20 = [r0 orientation];
            [r0 release];
            r0 = r20;
    }
    return r0;
}

-(void)loadAdFromMarkup:(void *)arg2 activationCommand:(void *)arg3 orientation:(long long)arg4 {
    r22 = [arg2 retain];
    *(int8_t *)(int64_t *)&self->_adValid = 0x1;
    r20 = [arg3 retain];
    [self setOrientation:arg4];
    [self setIsImpressionSent:0x1];
    r0 = [self adContentContainer];
    r0 = [r0 retain];
    [r0 loadAdMarkup:r22 activationCommand:r20];
    [r20 release];
    [r22 release];
    [r0 release];
    return;
}

-(void)didMoveToSuperview {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self superview];
    r0 = [r0 retain];
    [r0 release];
    r8 = &@selector(ensureViewabilityValidation);
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = &@selector(ensureViewabilityValidation);
            }
            else {
                    r8 = &@selector(disableViewabilityValidation);
            }
    }
    objc_msgSend(r19, *r8);
    return;
}

-(bool)processRequestURL:(void *)arg2 adDataModel:(void *)arg3 withExtraData:(void *)arg4 {
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if ([FBAdUtility isFBAdScheme:r19] != 0x0) {
            r22 = [r22 processFBAdSchemeLink:r19 adDataModel:r20 withExtraData:r21];
    }
    else {
            r0 = [r19 absoluteString];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 containsString:@"facebook.com/ads/ad_choices"];
            [r0 release];
            if (r24 != 0x0) {
                    [r22 handleClickWithExtraData:r21];
                    [r22 openAdChoicesURL:r19 adDataModel:r20];
                    [r22 finishHandlingClick];
            }
            else {
                    r0 = [UIApplication sharedApplication];
                    r0 = [r0 retain];
                    r23 = [r0 openURL:r19];
                    [r0 release];
                    r24 = [[r20 inlineClientToken] retain];
                    [FBAdUserReturnHandler moveOutOfApp:r23 withToken:r24];
                    [r24 release];
            }
            r22 = 0x1;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)handleClickWithExtraData:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self adContentContainer];
    r0 = [r0 retain];
    [r0 logClickWithExtraData:r21];
    [r21 release];
    [r0 release];
    [self adDidLogClick];
    return;
}

-(void)finishHandlingClick {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adViewDidFinishHandlingClick:)] != 0x0) {
            [r20 adViewDidFinishHandlingClick:r19];
    }
    [r20 release];
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
                    r0 = [r19 adContentContainer];
                    r0 = [r0 retain];
                    [r19 setIsImpressionSent:[r0 logImpression]];
                    [r0 release];
            }
            r0 = [r19 isImpressionSent];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)processFBAdSchemeLink:(void *)arg2 adDataModel:(void *)arg3 withExtraData:(void *)arg4 {
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
    r23 = self;
    r19 = [arg2 retain];
    r24 = [arg3 retain];
    r21 = [arg4 retain];
    if ([FBAdUtility isFBAdScheme:r19] != 0x0) {
            objc_initWeak(&stack[-104], r23);
            var_98 = r24;
            if (r21 != 0x0) {
                    r0 = [r21 mutableCopy];
            }
            else {
                    r0 = [NSMutableDictionary dictionary];
                    r29 = r29;
                    r0 = [r0 retain];
            }
            r22 = r0;
            r0 = [r23 viewabilityValidator];
            r0 = [r0 retain];
            var_90 = [[r0 viewabilityHistoryJSON] retain];
            [r0 release];
            r0 = [r23 viewabilityValidator];
            r0 = [r0 retain];
            r28 = r0;
            r0 = [NSNumber numberWithInteger:[r0 currentStatus]];
            r0 = [r0 retain];
            r24 = [[r0 stringValue] retain];
            [r22 setObject:r24 forKeyedSubscript:@"vrc"];
            [r24 release];
            [r0 release];
            [r28 release];
            r0 = [r23 viewabilityValidator];
            r0 = [r0 retain];
            r25 = r0;
            [r0 lastViewabilityPercentage];
            r0 = [NSNumber numberWithDouble:r24];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 stringValue];
            r29 = r29;
            r24 = [r0 retain];
            [r22 setObject:r24 forKeyedSubscript:@"vp"];
            [r24 release];
            [r20 release];
            [r25 release];
            r8 = *___NSDictionary0__;
            r8 = *r8;
            r9 = var_90;
            if (r9 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r2 = r9;
                    }
                    else {
                            r2 = r8;
                    }
            }
            [r22 setObject:r2 forKeyedSubscript:@"vh"];
            r0 = [r23 commandHandler];
            r24 = var_98;
            [r0 retain];
            [[r24 inlineClientToken] retain];
            objc_copyWeak(&var_88 + 0x28, &stack[-104]);
            var_68 = [r21 retain];
            r26 = [r25 processCommand:r19 withExtraData:r22 inlineClientToken:r27 skipAppStore:0x0 completionHandler:&var_88];
            [r27 release];
            [r25 release];
            [var_68 release];
            objc_destroyWeak(&var_88 + 0x28);
            [var_90 release];
            [r22 release];
            objc_destroyWeak(&stack[-104]);
    }
    else {
            r26 = 0x0;
    }
    [r21 release];
    [r24 release];
    [r19 release];
    r0 = r26;
    return r0;
}

-(void)willPresentViewController:(void *)arg2 {
    return;
}

-(void)viewControllerDismissed:(void *)arg2 {
    [self finishHandlingClick];
    return;
}

-(void *)viewControllerForPresentingModalView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self delegate] retain];
    r22 = [[self rootViewControllerInternal] retain];
    r0 = [FBAdViewControllerProxy proxyWithViewController:r22];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r22 release];
    if ([r19 respondsToSelector:r2] != 0x0) {
            r0 = [r19 viewControllerForPresentingModalView];
            r0 = [r0 retain];
            r22 = r0;
            if (r0 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r0 = r0;
                    }
                    else {
                            r0 = r20;
                    }
            }
            r21 = [r0 retain];
            [r22 release];
    }
    else {
            r21 = [r20 retain];
    }
    [r20 release];
    [r19 release];
    [r21 autorelease];
    r0 = r21;
    return r0;
}

-(void)adDidLoad {
    [self setHidden:0x0];
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
    r0 = [self adContentContainer];
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

-(void)adWillLogImpression {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adViewWillLogImpression:)] != 0x0) {
            [r20 adViewWillLogImpression:r19];
    }
    [r20 release];
    return;
}

-(void)adDidLogClick {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adViewDidClick:)] != 0x0) {
            [r20 adViewDidClick:r19];
    }
    [r20 release];
    return;
}

-(void)adDidFinishHandlingClick {
    [self finishHandlingClick];
    return;
}

-(void)adDidFailToLoadWithError:(void *)arg2 {
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
    if ([r0 respondsToSelector:@selector(adView:didFailWithError:), r3] != 0x0) {
            [r21 adView:r20 didFailWithError:r19];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void *)contentContainerViewabilityValidator {
    r0 = [self viewabilityValidator];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adContentContainer, 0x0);
    objc_storeStrong((int64_t *)&self->_placementDefinition, 0x0);
    objc_storeStrong((int64_t *)&self->_viewabilityValidator, 0x0);
    objc_storeStrong((int64_t *)&self->_commandHandler, 0x0);
    objc_destroyWeak((int64_t *)&self->_rootViewControllerInternal);
    objc_destroyWeak((int64_t *)&self->_internalDelegate);
    return;
}

-(void *)internalDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_internalDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setInternalDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_internalDelegate, arg2);
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

-(void)setMarkupImpressionEventReceived:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_markupImpressionEventReceived = arg2;
    return;
}

-(bool)isMarkupImpressionEventReceived {
    r0 = *(int8_t *)(int64_t *)&self->_markupImpressionEventReceived;
    return r0;
}

-(void)setOrientation:(long long)arg2 {
    self->_orientation = arg2;
    return;
}

-(void *)rootViewControllerInternal {
    r0 = objc_loadWeakRetained((int64_t *)&self->_rootViewControllerInternal);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setRootViewControllerInternal:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_rootViewControllerInternal, arg2);
    return;
}

-(bool)isInterstitial {
    r0 = *(int8_t *)(int64_t *)&self->_isInterstitial;
    return r0;
}

-(void)setIsInterstitial:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isInterstitial = arg2;
    return;
}

-(bool)forceUIWebView {
    r0 = *(int8_t *)(int64_t *)&self->_forceUIWebView;
    return r0;
}

-(void)setForceUIWebView:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_forceUIWebView = arg2;
    return;
}

-(bool)isImpressionSent {
    r0 = *(int8_t *)(int64_t *)&self->_isImpressionSent;
    return r0;
}

-(void)setIsImpressionSent:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isImpressionSent = arg2;
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

-(void *)viewabilityValidator {
    r0 = self->_viewabilityValidator;
    return r0;
}

-(void *)placementDefinition {
    r0 = self->_placementDefinition;
    return r0;
}

-(void)setViewabilityValidator:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_viewabilityValidator, arg2);
    return;
}

-(void)setPlacementDefinition:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_placementDefinition, arg2);
    return;
}

-(void *)adContentContainer {
    r0 = self->_adContentContainer;
    return r0;
}

-(void)setAdContentContainer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adContentContainer, arg2);
    return;
}

-(struct FBAdSize)adSizeType {
    r0 = self;
    return r0;
}

-(void)setAdSizeType:(struct FBAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adSizeType));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

@end