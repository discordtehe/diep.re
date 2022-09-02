@implementation GADBannerView

+(void *)bannerViewClass {
    r0 = [GADInternalBannerView class];
    return r0;
}

-(void *)initWithAdSize:(struct GADAdSize)arg2 origin:(struct CGPoint)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r2;
    sub_100845b10(&var_40);
    r0 = [[&var_50 super] initWithFrame:r2];
    r20 = r0;
    if (r20 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_adSize));
            *(0x10 + r20 + r8) = *(r19 + 0x10);
            *(int128_t *)(r20 + r8) = *(int128_t *)r19;
            [r20 commonInit];
    }
    r0 = r20;
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithCoder:arg2];
    r19 = r0;
    if (r19 != 0x0) {
            CGRectStandardize([r19 frame]);
            sub_100845a5c();
            *((int64_t *)&r19->_adSize + 0x10) = var_28;
            *(int128_t *)(int64_t *)&r19->_adSize = var_38;
            [r19 commonInit];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithAdSize:(struct GADAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self initWithAdSize:&var_20 origin:r3];
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    sub_100845a5c();
    r0 = [self initWithAdSize:&stack[-72] origin:r3];
    return r0;
}

-(void)commonInit {
    r0 = [self class];
    r0 = [r0 bannerViewClass];
    r0 = [r0 alloc];
    r0 = [r0 initWithAdSize:&var_50 origin:r3];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_bannerView));
    r8 = *(self + r23);
    *(self + r23) = r0;
    [r8 release];
    [*(self + r23) setDelegate:self];
    [*(self + r23) setAdSizeDelegate:self];
    [*(self + r23) setAutoresizingMask:0x12];
    [self addSubview:*(self + r23)];
    r0 = [GADObserverCollection alloc];
    r0 = [r0 init];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    objc_initWeak(&stack[-104], self);
    objc_copyWeak(&var_80 + 0x20, &stack[-104]);
    [r21 addObserverForName:*0x100e9c050 object:r23 queue:0x0 usingBlock:&var_80];
    r21 = [[UIColor clearColor] retain];
    [self setBackgroundColor:r21];
    [r21 release];
    [self setClipsToBounds:0x1];
    *(int8_t *)(int64_t *)&self->_hasInitialized = 0x1;
    objc_destroyWeak(&var_80 + 0x20);
    objc_destroyWeak(&stack[-104]);
    return;
}

-(struct CGSize)intrinsicContentSize {
    r31 = r31 - 0x70;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = sub_100845b10(&var_40);
    v8 = v1;
    r0 = sub_10081d080(r0);
    asm { scvtf      d9, x0 };
    sub_10081d080(r0);
    asm { scvtf      d8, x0 };
    r0 = sub_100845df4(&var_60);
    if (r0 != 0x0) {
            asm { fcsel      d0, d0, d9, ne };
    }
    return r0;
}

-(void)setBounds:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [[&var_40 super] setBounds:r2];
    CGRectStandardize(r0);
    [self adSizeForSize:r2];
    [self setAdSize:&var_70];
    return;
}

-(void)setFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xa0;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    CGRectStandardize([[&saved_fp - 0x40 super] setFrame:r2]);
    v8 = v2;
    v9 = v3;
    sub_100845b10(&var_60);
    if (d8 == d0) {
            asm { fccmp      d9, d1, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            [r19 adSizeForSize:r2];
            [r19 setAdSize:&var_90];
    }
    return;
}

-(struct CGSize)effectiveContentSize {
    r0 = self->_bannerView;
    r0 = [r0 intrinsicContentSize];
    return r0;
}

-(void *)adUnitID {
    r0 = self->_bannerView;
    r0 = [r0 adUnitID];
    return r0;
}

-(void)setAdUnitID:(void *)arg2 {
    [self->_bannerView setAdUnitID:arg2];
    return;
}

-(void)setAdSize:(struct GADAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x1a0;
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
    r21 = r2;
    r19 = self;
    if (*(int8_t *)(int64_t *)&r19->_hasInitialized != 0x0) {
            r23 = (int64_t *)&r19->_adSize;
            if ((sub_100845ac0(r29 - 0x90, r29 - 0xb0) & 0x1) == 0x0) {
                    r0 = sub_10084640c(&var_D0, r29 - 0xb8);
                    r20 = [0x0 retain];
                    if ((r0 & 0x1) != 0x0) {
                            r9 = *0x100bf45f0;
                            r0 = sub_100845ac0(&var_F0, &var_110);
                            if (r0 != 0x0) {
                                    CGRectStandardize([r19 bounds]);
                                    v0 = v2;
                                    v1 = v3;
                                    sub_100845ab0();
                                    *(r21 + 0x10) = var_118;
                                    *(int128_t *)r21 = var_128;
                            }
                            *(r23 + 0x10) = *(r21 + 0x10);
                            *(int128_t *)r23 = *(int128_t *)r21;
                            [r19 frame];
                            v8 = v0;
                            v9 = v1;
                            [r19 sizeForAdSize:&var_140];
                            [[&var_150 super] setFrame:&var_140];
                            [r19 invalidateIntrinsicContentSize];
                            [r19 layoutIfNeeded];
                            r25 = sign_extend_64(*(int32_t *)ivar_offset(_bannerView));
                            r0 = *(r19 + r25);
                            if (r0 != 0x0) {
                                    r8 = &var_168;
                                    r0 = [r0 adSize];
                            }
                            else {
                                    r8 = 0x101170000;
                                    var_160 = 0x0;
                                    var_158 = 0x0;
                            }
                            d8 = *(int128_t *)r21;
                            d9 = *(int128_t *)(r21 + 0x8);
                            r26 = *(r21 + 0x10);
                            r0 = sub_10081d080(r0);
                            r22 = r0;
                            r0 = sub_10081d080(r0);
                            r23 = r0;
                            r27 = var_158;
                            r0 = sub_10081d080(r0);
                            r24 = r0;
                            r0 = sub_10081d080(r0);
                            if (r23 != r0) {
                                    if (CPU_FLAGS & NE) {
                                            r8 = 0x1;
                                    }
                            }
                            if (r22 != r24) {
                                    if (CPU_FLAGS & NE) {
                                            r9 = 0x1;
                                    }
                            }
                            r8 = r9 | r8;
                            if (r24 != 0x0 && r0 != 0x0) {
                                    r22 = 0x0;
                                    if (r8 == 0x0) {
                                            r22 = 0x0;
                                            if (r22 != 0x0) {
                                                    [*(r19 + r25) setAdSize:&var_180];
                                                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_lastRequest));
                                                    if (*(r19 + r21) != 0x0) {
                                                            [*(r19 + r25) setHidden:0x1];
                                                            [*(r19 + r21) setRequestOrigin:*0x100e95b90];
                                                            [r19 loadRequest:*(r19 + r21)];
                                                    }
                                            }
                                    }
                                    else {
                                            if ((sub_100845df4(r29 - 0x78) & 0x1) != 0x0) {
                                                    if (r22 != 0x0) {
                                                            [*(r19 + r25) setAdSize:&var_180];
                                                            r21 = sign_extend_64(*(int32_t *)ivar_offset(_lastRequest));
                                                            if (*(r19 + r21) != 0x0) {
                                                                    [*(r19 + r25) setHidden:0x1];
                                                                    [*(r19 + r21) setRequestOrigin:*0x100e95b90];
                                                                    [r19 loadRequest:*(r19 + r21)];
                                                            }
                                                    }
                                            }
                                            else {
                                                    [*(r19 + r25) setAdSize:&var_180];
                                                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_lastRequest));
                                                    if (*(r19 + r21) != 0x0) {
                                                            [*(r19 + r25) setHidden:0x1];
                                                            [*(r19 + r21) setRequestOrigin:*0x100e95b90];
                                                            [r19 loadRequest:*(r19 + r21)];
                                                    }
                                            }
                                    }
                            }
                            else {
                                    if (r27 != r26) {
                                            if (CPU_FLAGS & NE) {
                                                    r22 = 0x1;
                                            }
                                    }
                                    if (r8 != 0x0) {
                                            if ((sub_100845df4(r29 - 0x78) & 0x1) != 0x0) {
                                                    if (r22 != 0x0) {
                                                            [*(r19 + r25) setAdSize:&var_180];
                                                            r21 = sign_extend_64(*(int32_t *)ivar_offset(_lastRequest));
                                                            if (*(r19 + r21) != 0x0) {
                                                                    [*(r19 + r25) setHidden:0x1];
                                                                    [*(r19 + r21) setRequestOrigin:*0x100e95b90];
                                                                    [r19 loadRequest:*(r19 + r21)];
                                                            }
                                                    }
                                            }
                                            else {
                                                    [*(r19 + r25) setAdSize:&var_180];
                                                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_lastRequest));
                                                    if (*(r19 + r21) != 0x0) {
                                                            [*(r19 + r25) setHidden:0x1];
                                                            [*(r19 + r21) setRequestOrigin:*0x100e95b90];
                                                            [r19 loadRequest:*(r19 + r21)];
                                                    }
                                            }
                                    }
                                    else {
                                            if (r22 != 0x0) {
                                                    [*(r19 + r25) setAdSize:&var_180];
                                                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_lastRequest));
                                                    if (*(r19 + r21) != 0x0) {
                                                            [*(r19 + r25) setHidden:0x1];
                                                            [*(r19 + r21) setRequestOrigin:*0x100e95b90];
                                                            [r19 loadRequest:*(r19 + r21)];
                                                    }
                                            }
                                    }
                            }
                    }
                    else {
                            [[r20 localizedDescription] retain];
                            NSLog(@"<Google> Unable to set adSize property. %@", @selector(localizedDescription));
                            [r19 release];
                    }
                    [r20 release];
            }
    }
    return;
}

-(void)setRootViewController:(void *)arg2 {
    [self->_bannerView setRootViewController:arg2];
    return;
}

-(void *)rootViewController {
    r0 = self->_bannerView;
    r0 = [r0 rootViewController];
    return r0;
}

-(void)setAutoloadEnabled:(bool)arg2 {
    r2 = arg2;
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_autoloadEnabled));
    if (*(int8_t *)(r0 + r8) != r2) {
            *(int8_t *)(r0 + r8) = r2;
            if (r2 != 0x0) {
                    var_18 = [r0 retain];
                    dispatch_async(*__dispatch_main_q, &var_38);
                    [var_18 release];
            }
    }
    return;
}

-(void *)adNetworkClassName {
    r0 = self->_bannerView;
    r0 = [r0 adNetworkClassName];
    return r0;
}

-(struct GADAdSize)adSizeForSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = sub_100845df4(&var_40);
    if (r0 != 0x0) {
            r0 = sub_100845ab0();
    }
    else {
            r0 = sub_100845a5c();
    }
    return r0;
}

-(struct CGSize)sizeForAdSize:(struct GADAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r2;
    r19 = self;
    r0 = sub_100845ac0(&saved_fp - 0x30, &var_50);
    if (r0 != 0x0) {
            r0 = [r19 bounds];
            r0 = CGRectStandardize(r0);
    }
    else {
            r0 = sub_100845b10(&var_70);
    }
    return r0;
}

-(void *)mediatedAdView {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = self->_bannerView;
    r0 = [r0 bannerAd];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 adView];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r20 release];
    [GADContainerAdView class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r22 = @selector(isKindOfClass:);
            r0 = [r19 retain];
            r20 = r0;
            r24 = [[r0 view] retain];
            [GADCroppingAdView class];
            r22 = objc_msgSend(r24, r22);
            [r24 release];
            r0 = [r20 view];
            r29 = r29;
            r21 = [r0 retain];
            if ((r22 & 0x1) != 0x0) {
                    r0 = [r21 subviews];
                    r0 = [r0 retain];
                    r22 = [[r0 firstObject] retain];
                    [r0 release];
                    [r21 release];
            }
            else {
                    sub_1007ce06c(0x0, @"Container view contains a view of an unexpected class.\nContainer view: %@\nContained view: %@");
                    [r21 release];
                    r22 = 0x0;
            }
            [r20 release];
    }
    else {
            r22 = 0x0;
    }
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void)resize:(struct GADAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_bannerView));
    [*(self + r22) setAdSize:&var_40];
    [*(self + r22) resize:&var_60];
    [self setAdSize:&var_80];
    return;
}

-(void)loadRequest:(void *)arg2 {
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
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r21 = [r19 copy];
            r24 = 0x0;
            r23 = 0x1;
    }
    else {
            r21 = [[GADRequest request] retain];
            r23 = 0x0;
            r24 = 0x1;
    }
    r22 = (int64_t *)&r20->_lastRequest;
    objc_storeStrong(r22, r21);
    if (r24 != 0x0) {
            [r21 release];
    }
    if (r23 != 0x0) {
            [r21 release];
    }
    *(int8_t *)(int64_t *)&r20->_hasAutoRefreshed = 0x0;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_bannerView));
    r0 = *(r20 + r21);
    [r0 setAdSize:&var_50];
    [*(r20 + r21) loadRequest:*r22];
    [r19 release];
    return;
}

-(void)adViewDidReceiveAd:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [r19->_bannerView setHidden:0x0];
    [r19 updateReceivedAdSizeWithPublicUpdate:0x1];
    r0 = objc_loadWeakRetained((int64_t *)&r19->_delegate);
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adViewDidReceiveAd:)] != 0x0) {
            [r20 adViewDidReceiveAd:r19];
    }
    [r20 release];
    return;
}

-(void)adView:(void *)arg2 didFailToReceiveAdWithError:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg3 retain];
    r0 = objc_loadWeakRetained((int64_t *)&r20->_delegate);
    r21 = r0;
    if ([r0 respondsToSelector:@selector(adView:didFailToReceiveAdWithError:), r3] != 0x0) {
            [r21 adView:r20 didFailToReceiveAdWithError:r19];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)updateReceivedAdSizeWithPublicUpdate:(bool)arg2 {
    r31 = r31 - 0x100;
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
    r20 = arg2;
    r19 = self;
    [self effectiveContentSize];
    v9 = v0;
    v8 = v1;
    if (d9 == **_UIViewNoIntrinsicMetric) {
            asm { fccmp      d8, d0, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            if (d9 == **_UIViewNoIntrinsicMetric) {
                    CGRectGetWidth([r19 bounds]);
                    v9 = v0;
                    r22 = 0x1;
            }
            else {
                    r22 = 0x0;
            }
            r21 = sub_10081d0c8([r19 sizeForAdSize:r29 - 0x60]);
            r0 = sub_100845df4(&var_80);
            if (r22 != r0 || (r21 ^ 0x1) != 0x0) {
                    if (r22 != 0x0) {
                            sub_100845ab0();
                    }
                    else {
                            sub_100845a5c();
                    }
                    [r19->_bannerView setAdSize:r2];
                    if (r20 != 0x0) {
                            r0 = objc_loadWeakRetained((int64_t *)&r19->_adSizeDelegate);
                            r20 = r0;
                            if ([r0 respondsToSelector:@selector(adView:willChangeAdSizeTo:), r3] != 0x0) {
                                    [r20 adView:r19 willChangeAdSizeTo:&var_D0];
                            }
                            [r19 setAdSize:r2];
                            [r20 release];
                    }
            }
    }
    return;
}

-(void)adViewWillPresentScreen:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = objc_loadWeakRetained((int64_t *)&r19->_delegate);
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adViewWillPresentScreen:)] != 0x0) {
            [r20 adViewWillPresentScreen:r19];
    }
    [r20 release];
    return;
}

-(void)adViewWillDismissScreen:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = objc_loadWeakRetained((int64_t *)&r19->_delegate);
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adViewWillDismissScreen:)] != 0x0) {
            [r20 adViewWillDismissScreen:r19];
    }
    [r20 release];
    return;
}

-(void)adViewDidDismissScreen:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = objc_loadWeakRetained((int64_t *)&r19->_delegate);
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adViewDidDismissScreen:)] != 0x0) {
            [r20 adViewDidDismissScreen:r19];
    }
    [r20 release];
    return;
}

-(void)adViewWillLeaveApplication:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = objc_loadWeakRetained((int64_t *)&r19->_delegate);
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adViewWillLeaveApplication:)] != 0x0) {
            [r20 adViewWillLeaveApplication:r19];
    }
    [r20 release];
    return;
}

-(void)adViewIntrinsicContentSizeDidChange:(void *)arg2 {
    r0 = sub_100845df4(&var_30);
    [self updateReceivedAdSizeWithPublicUpdate:r0];
    return;
}

-(void)adView:(void *)arg2 willChangeAdSizeTo:(struct GADAdSize)arg3 {
    memcpy(&r3, &arg3, 0x8);
    return;
}

-(struct GADAdSize)adSize {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adSize));
    *(r8 + 0x10) = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
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

-(void *)adSizeDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adSizeDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAdSizeDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adSizeDelegate, arg2);
    return;
}

-(bool)isAutoloadEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_autoloadEnabled;
    return r0;
}

-(bool)hasAutoRefreshed {
    r0 = *(int8_t *)(int64_t *)&self->_hasAutoRefreshed;
    return r0;
}

-(void *)inAppPurchaseDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_inAppPurchaseDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setInAppPurchaseDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_inAppPurchaseDelegate, arg2);
    return;
}

-(void *)bannerView {
    r0 = self->_bannerView;
    return r0;
}

-(void *)correlator {
    r0 = self->_correlator;
    return r0;
}

-(void)setCorrelator:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_correlator, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_correlator, 0x0);
    objc_storeStrong((int64_t *)&self->_bannerView, 0x0);
    objc_destroyWeak((int64_t *)&self->_inAppPurchaseDelegate);
    objc_destroyWeak((int64_t *)&self->_adSizeDelegate);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_lastRequest, 0x0);
    return;
}

@end