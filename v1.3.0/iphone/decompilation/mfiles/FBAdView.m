@implementation FBAdView

-(void *)initWithCoder:(void *)arg2 {
    r0 = [self initWithPlacementID:@"" adSize:0x0 rootViewController:r4];
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self initWithPlacementID:@"" adSize:0x0 rootViewController:r4];
    return r0;
}

-(void *)initWithPlacementID:(void *)arg2 bidPayload:(void *)arg3 rootViewController:(void *)arg4 error:(void * *)arg5 {
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
    r22 = arg5;
    r20 = self;
    r19 = [arg2 retain];
    r24 = [arg3 retain];
    r21 = [arg4 retain];
    r23 = [FBAdBidPayload adTemplateIdWithJsonData:r24];
    [r24 release];
    r0 = [FBAdUtility isValidAdTemplateIdValue:r23];
    if (r22 != 0x0 && r0 == 0x0) {
            r0 = [FBAdError getNSError:0xfa2 description:@"Could not get a valid template ID from bid payload"];
            r0 = [r0 retain];
            r0 = [r0 autorelease];
            r23 = 0x0;
            *r22 = r0;
    }
    else {
            [FBAdUtility adSizeForAdTemplateID:r23];
            r0 = [r20 initWithPlacementID:r19 adSize:r21 rootViewController:r4];
            r0 = [r0 retain];
            r20 = r0;
            r23 = r0;
    }
    [r21 release];
    [r19 release];
    [r20 release];
    r0 = r23;
    return r0;
}

-(void *)initWithPlacementID:(void *)arg2 adSize:(struct FBAdSize)arg3 rootViewController:(void *)arg4 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = r3;
    v8 = v1;
    v9 = v0;
    r21 = arg2;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [FBAdViewControllerProxy proxyWithViewController:r22];
            r29 = r29;
            r22 = [r0 retain];
            [r20 setRootViewController:r22];
            [r22 release];
            r0 = [[&var_40 super] initWithFrame:r22];
            r20 = r0;
            if (r0 != 0x0) {
                    [FBAdUtility initializeAudienceNetwork];
                    objc_storeStrong((int64_t *)&r20->_placementID, r21);
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adSize));
                    *(int128_t *)(r20 + r8) = d9;
                    *(int128_t *)(0x8 + r20 + r8) = d8;
                    r0 = [FBDisplayAdController new];
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_adController));
                    r8 = *(r20 + r21);
                    *(r20 + r21) = r0;
                    [r8 release];
                    [*(r20 + r21) setDelegate:r20];
                    [r20 setClipsToBounds:0x1];
                    r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
                    [r20 setBackgroundColor:r21];
                    [r21 release];
                    [r20 updateInitialAdViewSize:r21];
            }
            r0 = [r20 retain];
            r20 = r0;
            r21 = r0;
    }
    else {
            [FBAdDebugLogging logDebugEventWithType:@"wrong_api_call" code:0x2 description:@"FBAdView: placementID cannot be nil"];
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)tellDelegateThatWeDidFailWithError:(void *)arg2 {
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

-(void)doLoadAd:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    if (([r20 isInitialized] & 0x1) != 0x0) {
            [FBAdDebugLogging logDebugEventWithType:@"wrong_api_call" code:0x0 description:@"FBAdView: loadAd can only be called once"];
            r0 = [FBAdConfigManager sharedManager];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 isLoadAdOldBehaviourDisabled];
            [r0 release];
            if (r22 != 0x0) {
                    r21 = [[FBAdError getNSError:0x1b5a] retain];
                    [r20 tellDelegateThatWeDidFailWithError:r21];
                    r0 = r21;
            }
            else {
                    r0 = [r20 adController];
                    r0 = [r0 retain];
                    [r0 refresh];
                    r0 = r20;
            }
            [r0 release];
    }
    else {
            r21 = [[r20 adController] retain];
            r22 = [[r20 placementID] retain];
            r23 = @class(FBAdUtility);
            [r20 adSize];
            r23 = [r23 getTemplateID:r2];
            [r20 adSize];
            [r21 loadAdWithPlacementId:r22 withPlacementType:0x1 withTemplateID:r23 withAdSize:0x0 withAdProvider:0x0 withRewardData:r19 withBidPayload:var_40];
            [r22 release];
            [r21 release];
            [r20 setInitialized:0x1];
            [FBAdUtility markView:r20];
    }
    [r19 release];
    return;
}

-(void)loadAd {
    [self doLoadAd:0x0];
    return;
}

-(void)loadAdWithBidPayload:(void *)arg2 {
    [self doLoadAd:arg2];
    return;
}

-(void)disableAutoRefresh {
    return;
}

-(bool)isAdValid {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self adController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (([r0 adExpired] & 0x1) != 0x0) {
            r20 = 0x0;
    }
    else {
            r0 = [r20 adView];
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r20 = 0x1;
                    }
            }
            [r0 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)layoutSubviews {
    r31 = r31 - 0x80;
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
    [r19 isMemberOfClass:[FBAdView class]];
    [r19 frame];
    if (r20 != 0x0) {
            [[&var_50 super] setFrame:r2];
            [r19 bounds];
            r0 = [r19 adView];
            r0 = [r0 retain];
            [r0 setFrame:r2];
            [r0 release];
    }
    else {
            [[&var_60 super] setFrame:r2];
    }
    [[&var_70 super] layoutSubviews];
    return;
}

-(void)setExtraHint:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self adController];
    r0 = [r0 retain];
    [r0 setExtraHint:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void *)extraHint {
    r0 = [self adController];
    r0 = [r0 retain];
    r20 = [[r0 extraHint] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
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

-(void)updateInitialAdViewSize:(struct FBAdSize)arg2 {
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
    v8 = v1;
    v9 = v0;
    r19 = self;
    if (([FBAdUtility isAdSizeType:r2 sameWith:r3] & 0x1) != 0x0) {
            r20 = 0x1;
    }
    else {
            v0 = v9;
            v1 = v8;
            r20 = [FBAdUtility isAdSizeType:r2 sameWith:r3];
    }
    [FBAdScreen sizeInOrientation];
    [FBAdUtility sizeThatFits:r20 isFlexibileAdSize:r3 actualAdSize:r4];
    [r19 setActualAdSize:r20];
    [r19 frame];
    [r19 frame];
    [r19 actualAdSize];
    [r19 actualAdSize];
    [r19 setFrame:r2];
    return;
}

-(void)displayAdControllerStopped:(void *)arg2 {
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBAdView.m" lineNumber:0xf6 format:@"%s"];
    r0 = [self adView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    [self setAdView:0x0];
    return;
}

-(void)displayAdControllerLoaded:(void *)arg2 {
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBAdView.m" lineNumber:0xf0 format:@"%s"];
    r20 = [[self adController] retain];
    r19 = [[self rootViewController] retain];
    [r20 startAdFromRootViewController:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void)displayAdController:(void *)arg2 didFailWithError:(void *)arg3 {
    r22 = [arg3 retain];
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBAdView.m" lineNumber:0xfd format:@"%s"];
    [self tellDelegateThatWeDidFailWithError:r22];
    [r22 release];
    return;
}

-(void)displayAdController:(void *)arg2 presentedView:(void *)arg3 {
    r31 = r31 - 0x50;
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
    r19 = [arg3 retain];
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBAdView.m" lineNumber:0xd8 format:@"%s"];
    [r20 clearSubviews];
    [r20 setAdView:r19];
    if (r19 != 0x0) {
            r0 = [r20 bounds];
            if ((CGRectEqualToRect(r0, @selector(bounds)) & 0x1) == 0x0) {
                    [r20 bounds];
                    [r19 setFrame:r2];
            }
            [r20 addSubview:r19];
            r21 = [r19 retain];
            r23 = [[r20 placementID] retain];
            [FBAdDebugOverlay addToSuperview:r21 withPlacementID:r23];
            [r21 release];
            [r23 release];
            r22 = [FBAdMediationOverlay alloc];
            r0 = [r20 extraHint];
            r0 = [r0 retain];
            r24 = [[r0 mediationData] retain];
            r22 = [r22 initWithString:r24];
            [r24 release];
            [r0 release];
            [r22 attachToView:r21];
            r0 = [r20 delegate];
            r0 = [r0 retain];
            r21 = r0;
            if ([r0 respondsToSelector:@selector(adViewDidLoad:)] != 0x0) {
                    [r21 adViewDidLoad:r20];
            }
            [r21 release];
            [r22 release];
    }
    [r19 release];
    return;
}

-(void)displayAdControllerClickThrough:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBAdView.m" lineNumber:0x10c format:@"%s"];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adViewDidClick:)] != 0x0) {
            [r20 adViewDidClick:r19];
    }
    [r20 release];
    return;
}

-(void)displayAdControllerImpression:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBAdView.m" lineNumber:0x103 format:@"%s"];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adViewWillLogImpression:)] != 0x0) {
            [r20 adViewWillLogImpression:r19];
    }
    [r20 release];
    return;
}

-(void)displayAdControllerUserClosed:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBAdView.m" lineNumber:0x115 format:@"%s"];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adViewDidFinishHandlingClick:)] != 0x0) {
            [r20 adViewDidFinishHandlingClick:r19];
    }
    [r20 release];
    return;
}

-(void *)placementID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementID)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adapter, 0x0);
    objc_storeStrong((int64_t *)&self->_adController, 0x0);
    objc_destroyWeak((int64_t *)&self->_adView);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_destroyWeak((int64_t *)&self->_rootViewController);
    objc_storeStrong((int64_t *)&self->_placementID, 0x0);
    return;
}

-(void *)rootViewController {
    r0 = objc_loadWeakRetained((int64_t *)&self->_rootViewController);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setPlacementID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
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

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)adView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAdView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adView, arg2);
    return;
}

-(void *)adController {
    r0 = self->_adController;
    return r0;
}

-(void)setAdController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adController, arg2);
    return;
}

-(struct FBAdSize)adSize {
    r0 = self;
    return r0;
}

-(void)setAdSize:(struct FBAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adSize));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(bool)isInitialized {
    r0 = *(int8_t *)(int64_t *)&self->_initialized;
    return r0;
}

-(void *)adapter {
    r0 = self->_adapter;
    return r0;
}

-(void)setInitialized:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_initialized = arg2;
    return;
}

-(void)setAdapter:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adapter, arg2);
    return;
}

-(struct CGSize)actualAdSize {
    r0 = self;
    return r0;
}

-(void)setActualAdSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_actualAdSize));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

@end