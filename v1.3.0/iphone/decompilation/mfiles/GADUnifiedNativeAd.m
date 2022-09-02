@implementation GADUnifiedNativeAd

-(void *)initWithInternalNativeAd:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x1c0;
    r22 = arg2;
    r19 = [r22 retain];
    r20 = [[r29 - 0x70 super] init];
    if (r20 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_internalNativeAd, r22);
            r0 = [r19 metadata];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 adNetworkClassName];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adNetworkClassName));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r22 release];
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r21);
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_adObservers));
            r8 = *(r20 + r25);
            *(r20 + r25) = r0;
            [r8 release];
            r24 = [[r20 internalMediaContent] retain];
            r0 = [GADMediaContent alloc];
            r0 = objc_msgSend(r0, r21);
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_mediaContent));
            r8 = *(r20 + r22);
            *(r20 + r22) = r0;
            [r8 release];
            [*(r20 + r22) setInternalMediaContent:r24];
            r0 = [GADVideoController alloc];
            r0 = objc_msgSend(r0, r21);
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_videoController));
            r8 = *(r20 + r21);
            *(r20 + r21) = r0;
            [r8 release];
            r21 = *(r20 + r21);
            r23 = [[r24 videoController] retain];
            [r21 setInternalVideoController:r23];
            [r23 release];
            objc_initWeak(r29 - 0x78, r20);
            objc_copyWeak((r29 - 0xa0) + 0x20, r29 - 0x78);
            [r21 addObserverForName:*0x100e9c148 object:r19 queue:0x0 usingBlock:r29 - 0xa0];
            objc_copyWeak((r29 - 0xc8) + 0x20, r29 - 0x78);
            [r21 addObserverForName:*0x100e9c150 object:r19 queue:0x0 usingBlock:r29 - 0xc8];
            objc_copyWeak((r29 - 0xf0) + 0x20, r29 - 0x78);
            [r21 addObserverForName:*0x100e9c158 object:r19 queue:0x0 usingBlock:r29 - 0xf0];
            objc_copyWeak(&var_118 + 0x20, r29 - 0x78);
            [r21 addObserverForName:*0x100e9bfe8 object:r19 queue:0x0 usingBlock:&var_118];
            objc_copyWeak(&var_140 + 0x20, r29 - 0x78);
            [r21 addObserverForName:*0x100e9c0a8 object:r19 queue:0x0 usingBlock:&var_140];
            var_210 = r24;
            objc_copyWeak(&var_168 + 0x20, r29 - 0x78);
            [r21 addObserverForName:*0x100e9c0b0 object:r19 queue:0x0 usingBlock:&var_168];
            objc_copyWeak(&var_190 + 0x20, r29 - 0x78);
            [r23 addObserverForName:*0x100e9c0a0 object:r19 queue:0x0 usingBlock:&var_190];
            objc_copyWeak(&var_1B8 + 0x20, r29 - 0x78);
            [r24 addObserverForName:*0x100e9c0c0 object:r19 queue:0x0 usingBlock:&var_1B8];
            objc_copyWeak(&var_1E0 + 0x20, r29 - 0x78);
            [r22 addObserverForName:*0x100e9c0c8 object:r19 queue:0x0 usingBlock:&var_1E0];
            objc_destroyWeak(&var_1E0 + 0x20);
            objc_destroyWeak(&var_1B8 + 0x20);
            objc_destroyWeak(&var_190 + 0x20);
            objc_destroyWeak(&var_168 + 0x20);
            objc_destroyWeak(&var_140 + 0x20);
            objc_destroyWeak(&var_118 + 0x20);
            objc_destroyWeak((r29 - 0xf0) + 0x20);
            objc_destroyWeak((r29 - 0xc8) + 0x20);
            objc_destroyWeak((r29 - 0xa0) + 0x20);
            objc_destroyWeak(r29 - 0x78);
            [var_210 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)init {
    [self release];
    return 0x0;
}

-(void *)headline {
    r0 = self->_internalNativeAd;
    r0 = [r0 assetForKey:*0x100e96720];
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (*(int8_t *)(int64_t *)&r19->_mediaContentStatusReported != 0x0 && *(int8_t *)(int64_t *)&r19->_mediaContentRendered == 0x0) {
            r0 = [GADNativeAdSettings sharedInstance];
            r0 = [r0 retain];
            [r0 mediaViewUnavailableToRenderMediaContentForAdType:*0x100e978d0];
            [r0 release];
    }
    [[&var_20 super] dealloc];
    return;
}

-(void *)callToAction {
    r0 = self->_internalNativeAd;
    r0 = [r0 assetForKey:*0x100e96728];
    return r0;
}

-(void *)icon {
    r0 = self->_internalNativeAd;
    r0 = [r0 assetForKey:*0x100e96730];
    return r0;
}

-(void *)body {
    r0 = self->_internalNativeAd;
    r0 = [r0 assetForKey:*0x100e96738];
    return r0;
}

-(void *)store {
    r0 = self->_internalNativeAd;
    r0 = [r0 assetForKey:*0x100e96740];
    return r0;
}

-(void *)price {
    r0 = self->_internalNativeAd;
    r0 = [r0 assetForKey:*0x100e96748];
    return r0;
}

-(void *)advertiser {
    r0 = self->_internalNativeAd;
    r0 = [r0 assetForKey:*0x100e96778];
    return r0;
}

-(void *)muteThisAdReasons {
    r0 = self->_internalNativeAd;
    r0 = [r0 assetForKey:*0x100e96780];
    return r0;
}

-(void *)images {
    r0 = self->_internalNativeAd;
    r0 = [r0 assetForKey:*0x100e96750];
    return r0;
}

-(void *)starRating {
    r0 = self->_internalNativeAd;
    r0 = [r0 assetForKey:*0x100e96768];
    return r0;
}

-(void *)adChoicesIcon {
    r0 = self->_internalNativeAd;
    r0 = [r0 adChoicesIcon];
    return r0;
}

-(bool)isCustomMuteThisAdAvailable {
    r0 = self->_internalNativeAd;
    r0 = [r0 customMuteThisAdAvailable];
    return r0;
}

-(void)reportIsMediaContentRendered:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_mediaContentStatusReported = 0x1;
    *(int8_t *)(int64_t *)&self->_mediaContentRendered = arg2;
    return;
}

-(void *)internalMediaContent {
    r0 = self->_internalNativeAd;
    r0 = [r0 assetForKey:*0x100e96758];
    return r0;
}

-(void *)extraAssets {
    r0 = self->_internalNativeAd;
    r0 = [r0 assetForKey:*0x100e967a0];
    return r0;
}

-(void)setRootViewController:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_rootViewController, arg2);
    var_18 = [self retain];
    sub_100860a80();
    [var_18 release];
    return;
}

-(void *)adChoicesContentView {
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
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_adChoicesContentView));
    r0 = *(r19 + r22);
    if (r0 != 0x0) {
            r19 = [r0 retain];
    }
    else {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_internalNativeAd));
            r0 = *(r19 + r23);
            r0 = [r0 assetForKey:r2];
            r29 = r29;
            r20 = [r0 retain];
            if (r20 != 0x0) {
                    r0 = [GADNativeAdAttributionView alloc];
                    r0 = [r0 initWithAttribution:r20];
                    r8 = *(r19 + r22);
                    *(r19 + r22) = r0;
                    [r8 release];
            }
            r0 = *(r19 + r22);
            if (r0 == 0x0) {
                    r0 = *(r19 + r23);
                    r0 = [r0 assetForKey:r2];
                    r0 = [r0 retain];
                    r8 = *(r19 + r22);
                    *(r19 + r22) = r0;
                    [r8 release];
                    r0 = *(r19 + r22);
            }
            r19 = [r0 retain];
            [r20 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void)postDidReceiveUnapprovedClickNotificationWithUserInfo:(void *)arg2 {
    sub_1008833e8(*0x100e9c098, self->_internalNativeAd, arg2);
    return;
}

-(void)postDidMakeImpressionNotificationWithUserInfo:(void *)arg2 {
    sub_1008833e8(*0x100e9c078, self->_internalNativeAd, arg2);
    return;
}

-(void)reportTouchEventWithData:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = self->_internalNativeAd;
    r0 = [r0 nativeAdFeatures];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 publisherTouchReportingAllowed];
    [r0 release];
    if ((r21 & 0x1) == 0x0) goto loc_100861ed0;

loc_100861db4:
    if (r19 == 0x0) goto loc_100861edc;

loc_100861db8:
    r20 = [[r19 objectForKeyedSubscript:*0x100e916a0] retain];
    r21 = [[r19 objectForKeyedSubscript:*0x100e916a8] retain];
    r22 = [[r19 objectForKeyedSubscript:*0x100e916b8] retain];
    if (r20 != 0x0) {
            asm { ccmp       x21, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { ccmp       x22, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            objc_msgSend(r20, *(&@selector(alloc) + 0xf28));
            asm { fcvtas     w24, s0 };
            objc_msgSend(r21, r23);
            asm { fcvtas     w25, s0 };
            objc_msgSend(r22, r23);
            asm { fcvtas     w8, s0 };
            sub_100860a80();
    }
    [r22 release];
    [r21 release];
    [r20 release];
    goto loc_100861ee8;

loc_100861ee8:
    [r19 release];
    return;

loc_100861edc:
    r0 = @"<Google> touchData cannot be nil.";
    goto loc_100861ee4;

loc_100861ee4:
    NSLog(r0);
    goto loc_100861ee8;

loc_100861ed0:
    r0 = @"<Google> This feature has not been enabled for your account and is a no-op. If you are interested in using this feature, reach out to your account manager.";
    goto loc_100861ee4;
}

-(void)performClickWithData:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r0 = r20->_internalNativeAd;
    r0 = [r0 nativeAdFeatures];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 publisherClickReportingAllowed];
    [r0 release];
    if ((r22 & 0x1) == 0x0) goto loc_100861cf0;

loc_100861bc0:
    if (r19 == 0x0) goto loc_100861cfc;

loc_100861bc4:
    r0 = [r19 objectForKeyedSubscript:*0x100e91698];
    r0 = [r0 retain];
    r21 = r0;
    r22 = [[r0 objectForKeyedSubscript:*0x100e916b0] retain];
    r23 = [r19 copy];
    r25 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1] retain];
    [r23 release];
    r0 = @class(NSDictionary);
    r0 = [r0 dictionaryWithObjects:&var_68 forKeys:&var_78 count:0x2];
    r23 = [r0 retain];
    [r20 postDidReceiveUnapprovedClickNotificationWithUserInfo:r23];
    [r23 release];
    [r25 release];
    [r22 release];
    [r21 release];
    goto loc_100861d08;

loc_100861d08:
    var_48 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;

loc_100861cfc:
    r0 = @"<Google> clickData cannot be nil.";
    goto loc_100861d04;

loc_100861d04:
    NSLog(r0);
    goto loc_100861d08;

loc_100861cf0:
    r0 = @"<Google> This feature has not been enabled for your account and is a no-op. If you are interested in using this feature, reach out to your account manager.";
    goto loc_100861d04;
}

-(bool)recordImpressionWithData:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r0 = r20->_internalNativeAd;
    r0 = [r0 nativeAdFeatures];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 publisherImpressionReportingAllowed];
    [r0 release];
    if ((r22 & 0x1) == 0x0) goto loc_100862058;

loc_100861f98:
    if (r19 == 0x0) goto loc_100862064;

loc_100861f9c:
    r22 = [r19 copy];
    r21 = 0x1;
    r24 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1] retain];
    [r22 release];
    r0 = @class(NSDictionary);
    r0 = [r0 dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1];
    r22 = [r0 retain];
    [r20 postDidMakeImpressionNotificationWithUserInfo:r22];
    [r22 release];
    [r24 release];
    goto loc_100862074;

loc_100862074:
    var_48 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100862064:
    r0 = @"<Google> impressionData cannot be nil.";
    goto loc_10086206c;

loc_10086206c:
    NSLog(r0);
    r21 = 0x0;
    goto loc_100862074;

loc_100862058:
    r0 = @"<Google> This feature has not been enabled for your account and is a no-op. If you are interested in using this feature, reach out to your account manager.";
    goto loc_10086206c;
}

-(void)muteThisAdWithReason:(void *)arg2 {
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
    r19 = [arg2 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_internalNativeAd));
    if ([*(r20 + r22) customMuteThisAdAvailable] != 0x0) {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_adMutedReported));
            if (*(int8_t *)(r20 + r23) == 0x0) {
                    r0 = [GADEventContext rootContext];
                    r29 = r29;
                    r21 = [r0 retain];
                    if (r19 != 0x0) {
                            r0 = [r19 muteThisAdURL];
                    }
                    else {
                            r0 = *(r20 + r22);
                            r0 = [r0 assetForKey:*0x100e96788];
                    }
                    r0 = [r0 retain];
                    sub_10084cc54(r0, r21);
                    [r22 release];
                    *(int8_t *)(r20 + r23) = 0x1;
                    [r20 adIsMuted];
                    [r21 release];
            }
    }
    [r19 release];
    return;
}

-(void)registerAdView:(void *)arg2 clickableAssetViews:(void *)arg3 nonclickableAssetViews:(void *)arg4 {
    r31 = r31 - 0xa0;
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_internalNativeAd));
    r0 = *(r22 + r25);
    r0 = [r0 nativeAdFeatures];
    r0 = [r0 retain];
    r24 = [r0 publisherOwnedAdViewAllowed];
    [r0 release];
    if ((r24 & 0x1) == 0x0) goto loc_1008622cc;

loc_100862240:
    [GADNativeAppInstallAdView class];
    if (([r19 isKindOfClass:r2] & 0x1) != 0x0) goto loc_1008622bc;

loc_100862274:
    r24 = @selector(isKindOfClass:);
    [GADNativeContentAdView class];
    if ((objc_msgSend(r19, r24) & 0x1) != 0x0) goto loc_1008622bc;

loc_100862298:
    r24 = @selector(isKindOfClass:);
    [GADUnifiedNativeAdView class];
    if (objc_msgSend(r19, r24) == 0x0) goto loc_10086230c;

loc_1008622bc:
    r0 = @"<Google> Not allowed to register AdMob native ad view: %@";
    goto loc_1008622d4;

loc_1008622d4:
    NSLog(r0);
    goto loc_1008622d8;

loc_1008622d8:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_10086230c:
    [*(r22 + r25) setViewAwareAPIUsed:0x1];
    var_60 = [r20 retain];
    var_58 = [r21 retain];
    var_50 = [r19 retain];
    var_48 = [r22 retain];
    sub_100860a80();
    [var_48 release];
    [var_50 release];
    [var_58 release];
    [var_60 release];
    goto loc_1008622d8;

loc_1008622cc:
    r0 = @"<Google> Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account. In the meantime, this method is a no-op.";
    goto loc_1008622d4;
}

-(void)updateMediaView:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    [GADMediaView class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            [r19 setMediaContent:r20->_mediaContent];
    }
    [r19 release];
    return;
}

-(void)updateAdChoicesView:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    [GADAdChoicesView class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r20 = [[r20 adChoicesContentView] retain];
            [r19 setAdChoicesContentView:r20];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)unregisterAdView {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = r19->_internalNativeAd;
    r0 = [r0 nativeAdFeatures];
    r0 = [r0 retain];
    r21 = [r0 publisherOwnedAdViewAllowed];
    [r0 release];
    if ((r21 & 0x1) != 0x0) {
            var_28 = [r19 retain];
            sub_100860a80();
            [var_28 release];
    }
    else {
            NSLog(@"<Google> Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account. In the meantime, this method is a no-op.");
    }
    return;
}

-(void)adIsMuted {
    var_8 = [self retain];
    dispatch_async(*__dispatch_main_q, &var_28);
    [var_8 release];
    return;
}

-(void)didCancelUnconfirmedClick {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = r19->_unconfirmedClickDelegate;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(nativeAdDidCancelUnconfirmedClick:)] != 0x0) {
            [r20 nativeAdDidCancelUnconfirmedClick:r19];
    }
    [r20 release];
    return;
}

-(void)registerClickConfirmingView:(void *)arg2 {
    r0 = self->_internalNativeAd;
    if (arg2 != 0x0) {
            [r0 registerClickConfirmingView:r2];
    }
    else {
            [r0 unregisterClickConfirmingView];
    }
    return;
}

-(void)cancelUnconfirmedClick {
    [self->_internalNativeAd resetUnconfirmedClick];
    var_18 = [self retain];
    sub_100860a80();
    [var_18 release];
    return;
}

-(void *)unconfirmedClickDelegate {
    r0 = self->_unconfirmedClickDelegate;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)setUnconfirmedClickDelegate:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    objc_storeStrong((int64_t *)&self->_unconfirmedClickDelegate, arg2);
    r19 = [arg2 retain];
    r0 = self->_internalNativeAd;
    if (r19 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r2 = 0x1;
            }
    }
    [r0 setCustomOnePointFiveClickImplementedByPublisher:r2];
    [r19 release];
    return;
}

-(void)enableCustomClickGestures {
    *(int8_t *)(int64_t *)&self->_customClickGestureEnabledByPublisher = 0x1;
    [self->_internalNativeAd setCustomClickGestureEnabledByPublisher:0x1];
    return;
}

-(bool)isCustomClickGestureEnabled {
    r0 = self->_internalNativeAd;
    r0 = [r0 isCustomClickGestureEnabled];
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)recordCustomClickGesture {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_internalNativeAd));
    r0 = *(r19 + r22);
    r0 = [r0 nativeAdFeatures];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 customClickGestureAllowed];
    [r0 release];
    if ((r21 & 0x1) == 0x0) goto loc_100862c30;

loc_100862b70:
    if (*(int8_t *)(int64_t *)&r19->_customClickGestureEnabledByPublisher == 0x0) goto loc_100862c3c;

loc_100862b80:
    r20 = [@(0x2) retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_38 forKeys:&var_48 count:0x2];
    r21 = [r0 retain];
    [r20 release];
    sub_1008833e8(*0x100e9c0d8, *(r19 + r22), r21);
    [r21 release];
    goto loc_100862c48;

loc_100862c48:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100862c3c:
    r0 = @"<Google> You must enable custom click gesture in order to use this feature. Otherwise, this method is a no-op.";
    goto loc_100862c44;

loc_100862c44:
    NSLog(r0);
    goto loc_100862c48;

loc_100862c30:
    r0 = @"<Google> The custom click gesture feature is not enabled for your AdMob account. Talk to your account manager to request this feature for your account. In the meantime, this method is a no-op.";
    goto loc_100862c44;
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

-(void *)adNetworkClassName {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adNetworkClassName)), 0x0);
    return r0;
}

-(void *)mediaContent {
    r0 = self->_mediaContent;
    return r0;
}

-(void *)videoController {
    r0 = self->_videoController;
    return r0;
}

-(void *)internalNativeAd {
    r0 = self->_internalNativeAd;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_internalNativeAd, 0x0);
    objc_storeStrong((int64_t *)&self->_videoController, 0x0);
    objc_storeStrong((int64_t *)&self->_mediaContent, 0x0);
    objc_storeStrong((int64_t *)&self->_adNetworkClassName, 0x0);
    objc_destroyWeak((int64_t *)&self->_rootViewController);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_unconfirmedClickDelegate, 0x0);
    objc_storeStrong((int64_t *)&self->_adChoicesContentView, 0x0);
    objc_storeStrong((int64_t *)&self->_adObservers, 0x0);
    return;
}

@end