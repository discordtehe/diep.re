@implementation FBDisplayAdAdapterController

-(void)loadAdWithProvider:(void *)arg2 withEnvironment:(void *)arg3 withRewardData:(void *)arg4 {
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    [self setAdProvider:r22];
    [r22 release];
    r0 = [self adProvider];
    r0 = [r0 retain];
    [r0 setDelegate:self];
    [r0 release];
    [self setEnvironment:r21];
    [r21 release];
    [self setRewardData:r20];
    [r20 release];
    [self loadAdapter];
    [self loadAd];
    return;
}

-(void)refresh {
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/controllers/FBDisplayAdAdapterController.m" lineNumber:0x4f format:@"%s"];
    [self setRetryCount:0x0];
    [self retry];
    return;
}

-(void)dealloc {
    [self invalidateCurrentAd];
    [self invalidateInProgressAd];
    [self invalidateTimeoutTimer];
    [[&var_20 super] dealloc];
    return;
}

-(bool)updateRewardData:(void *)arg2 {
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
    r19 = [arg2 retain];
    [r21 setRewardData:r19];
    r0 = [r21 adapter];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r21 adapter];
            r0 = [r0 retain];
            r20 = [r0 setRewardData:r19];
            [r0 release];
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)startAdFromRootViewController:(void *)arg2 animated:(bool)arg3 {
    r22 = [arg2 retain];
    r0 = [self adapter];
    r0 = [r0 retain];
    r19 = [r0 startAdFromRootViewController:r22 animated:arg3];
    [r22 release];
    [r0 release];
    r0 = r19;
    return r0;
}

-(void)loadAdapter {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self environment];
    r0 = [r0 retain];
    r21 = [[r19 adapterForPlacementType:[r0 placementType]] retain];
    [r19 setAdapter:r21];
    [r21 release];
    [r0 release];
    r0 = [r19 adapter];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 adapter];
            r0 = [r0 retain];
            r20 = r0;
            [r0 setDelegate:r19];
    }
    else {
            [FBAdLogger logAtLevel:0x2 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/controllers/FBDisplayAdAdapterController.m" lineNumber:0x68 format:@"Failed to locate adapter"];
            r20 = [[r19 delegate] retain];
            r19 = [[FBAdError getNSError:0x7d1 description:@"Failed to locate adapter"] retain];
            [r20 loadDidFailWithAdapter:0x0 withError:r19];
            [r19 release];
    }
    [r20 release];
    return;
}

-(void)invalidateTimeoutTimer {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self adapterTimeoutTimer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 adapterTimeoutTimer];
            r0 = [r0 retain];
            [r0 invalidate];
            [r0 release];
            [r19 setAdapterTimeoutTimer:0x0];
    }
    return;
}

-(void)scheduleTimeout:(long long)arg2 {
    [self invalidateTimeoutTimer];
    objc_initWeak(&stack[-72], self);
    r19 = &var_60 + 0x20;
    asm { scvtf      d8, x21 };
    objc_copyWeak(r19, &stack[-72]);
    r0 = [r22 scheduledTimerWithTimeInterval:0x0 repeats:&var_60 block:r4];
    r21 = [r0 retain];
    [r20 setAdapterTimeoutTimer:r21];
    [r21 release];
    objc_destroyWeak(r19);
    objc_destroyWeak(&stack[-72]);
    return;
}

-(void)invalidateInProgressAd {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self adProvider];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 adProvider];
            r0 = [r0 retain];
            [r0 cancel];
            [r0 release];
            [r19 setAdProvider:0x0];
    }
    [r19 invalidateTimeoutTimer];
    return;
}

-(void)retry {
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/controllers/FBDisplayAdAdapterController.m" lineNumber:0xac format:@"%s"];
    [self invalidateInProgressAd];
    [self loadAd];
    return;
}

-(void)setInitialAdViewSize:(struct FBAdSize)arg2 {
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
    [self setAdSizeType:r2];
    v0 = v9;
    v1 = v8;
    if (([FBAdUtility isAdSizeType:r2 sameWith:r3] & 0x1) != 0x0) {
            r2 = 0x1;
    }
    else {
            v0 = v9;
            v1 = v8;
            r2 = [FBAdUtility isAdSizeType:r2 sameWith:r3];
    }
    [r19 setFlexibleAdSize:r2];
    r20 = @class(FBAdUtility);
    [FBAdScreen sizeInOrientation];
    r2 = [r19 isFlexibleAdSize];
    [r20 sizeThatFits:r2 isFlexibileAdSize:r3 actualAdSize:r4];
    [r19 setActualAdSize:r2];
    return;
}

-(void)loadAd {
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
    r0 = [self adProvider];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 adProvider];
            r0 = [r0 retain];
            r20 = r0;
            [r0 loadAdWithEnvironmentData:0x0];
    }
    else {
            [r19 invalidateInProgressAd];
            r21 = [FBAdProvider new];
            [r19 setAdProvider:r21];
            [r21 release];
            r0 = [r19 adProvider];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setDelegate:r19];
            [r0 release];
            if ([r19 retryCount] > 0x0) {
                    if (CPU_FLAGS & G) {
                            r22 = 0x1;
                    }
            }
            r0 = [r19 environment];
            r0 = [r0 retain];
            [r0 setRetryForPodPosition:r22];
            [r0 release];
            r0 = [r19 environment];
            r0 = [r0 retain];
            [r0 adSize];
            [r19 setInitialAdViewSize:r22];
            [r0 release];
            r20 = [[r19 adProvider] retain];
            r19 = [[r19 environment] retain];
            [r20 loadAdWithEnvironmentData:r19];
            [r19 release];
    }
    [r20 release];
    return;
}

-(void)invalidateCurrentAd {
    r0 = [self adapter];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    [self setAdapter:0x0];
    [self invalidateTimeoutTimer];
    return;
}

-(bool)loadWithAdCandidate:(void *)arg2 {
    r31 = r31 - 0xa0;
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
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 adapter];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r21 = 0x0;
    if (r19 == 0x0) goto loc_100acdb30;

loc_100acd79c:
    r21 = 0x0;
    if (r22 == 0x0) goto loc_100acdb30;

loc_100acd7a0:
    r0 = [r20 placementDefinition];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    if (r0 == 0x0) goto loc_100acdb68;

loc_100acd7d0:
    [r20 setAdCandidate:r19];
    [r20 setAdProvider:0x0];
    r24 = [[r20 adapter] retain];
    [FBAdLogger logAtLevel:0x5 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/controllers/FBDisplayAdAdapterController.m" lineNumber:0xc6 format:@"Loading adapter: %@"];
    [r24 release];
    r0 = [r20 placementDefinition];
    r29 = r29;
    r0 = [r0 retain];
    [r0 placementSize];
    v8 = v0;
    v9 = v1;
    [r0 release];
    v0 = v8;
    v1 = v9;
    if ([FBAdUtility isAdSizeType:0x5 sameWith:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/controllers/FBDisplayAdAdapterController.m"] != 0x0) {
            [r20 adSizeType];
            v8 = v0;
            v9 = v1;
    }
    r23 = @selector(adapter);
    r21 = @selector(placementDefinition);
    r0 = objc_msgSend(r20, r21);
    r0 = [r0 retain];
    r22 = r0;
    [r0 requestTimeout];
    r8 = 0x20c49ba5e353f7cf;
    asm { smulh      x8, x0, x8 };
    [r20 scheduleTimeout:(SAR(r8, 0x7)) + r8 / 0xffffffff80000000];
    [r22 release];
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [r20 setAdapterLoadTime:(SAR(r8, 0x7)) + r8 / 0xffffffff80000000];
    [r0 release];
    r22 = [objc_msgSend(r20, r23) retain];
    r0 = [r20 adCandidate];
    r0 = [r0 retain];
    var_68 = r0;
    r26 = [[r0 data] retain];
    r0 = [r20 environment];
    r0 = [r0 retain];
    var_70 = r0;
    var_80 = [r0 initOrientation];
    r0 = [r20 environment];
    r0 = [r0 retain];
    var_78 = r0;
    r27 = [[r0 placementID] retain];
    r21 = [objc_msgSend(r20, r21) retain];
    r0 = [r20 adCandidate];
    r0 = [r0 retain];
    r28 = r0;
    r24 = [[r0 dataModelType] retain];
    r25 = [[r20 rewardData] retain];
    r0 = [r20 environment];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 extraHint];
    r0 = [r0 retain];
    [r22 loadAdData:r26 forSize:var_80 forOrientation:r27 forPlacement:r21 placementDefinition:r24 dataModelType:r25 rewardData:r0 extraHint:stack[-152]];
    [r0 release];
    [r20 release];
    [r25 release];
    [r24 release];
    [r28 release];
    [r21 release];
    [r27 release];
    [var_78 release];
    [var_70 release];
    [r26 release];
    [var_68 release];
    r21 = 0x1;
    goto loc_100acdb30;

loc_100acdb30:
    [r22 release];
    goto loc_100acdb38;

loc_100acdb38:
    [r19 release];
    r0 = r21;
    return r0;

loc_100acdb68:
    r21 = 0x0;
    goto loc_100acdb38;
}

-(void *)adapterForPlacementType:(long long)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r2 <= 0x2) goto loc_100acdc20;

loc_100acdbf8:
    if (r2 < 0x5) goto loc_100acdc3c;

loc_100acdc04:
    if (r2 == 0x5) goto loc_100acdc48;

loc_100acdc0c:
    r0 = 0x0;
    if (r2 != 0x6) goto loc_100acdc78;

loc_100acdc14:
    r0 = @class(FBANInstreamAdAdapter);
    goto loc_100acdc5c;

loc_100acdc5c:
    r0 = [r0 alloc];
    r0 = [r0 initWithDelegate:r19];
    goto loc_100acdc78;

loc_100acdc78:
    r0 = [r0 autorelease];
    return r0;

loc_100acdc48:
    r0 = @class(FBANRewardedVideoAdAdapter);
    goto loc_100acdc5c;

loc_100acdc3c:
    r0 = @class(FBANNativeAdAdapter);
    goto loc_100acdc5c;

loc_100acdc20:
    if (r2 == 0x1) goto loc_100acdc54;

loc_100acdc28:
    r0 = 0x0;
    if (r2 != 0x2) goto loc_100acdc78;

loc_100acdc30:
    r0 = @class(FBANInterstitialAdAdapter);
    goto loc_100acdc5c;

loc_100acdc54:
    r0 = @class(FBANBannerAdAdapter);
    goto loc_100acdc5c;
}

-(void)onAdRequestError:(void *)arg2 {
    r21 = [arg2 retain];
    [self invalidateInProgressAd];
    [self invalidateCurrentAd];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 loadDidFailWithAdapter:0x0 withError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)onAdRequestSuccess:(void *)arg2 {
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 adPlacement];
    r0 = [r0 retain];
    r23 = [[r0 definition] retain];
    [r20 setPlacementDefinition:r23];
    [r23 release];
    [r0 release];
    r0 = [r19 adPlacement];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 adCandidates];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 count];
    [r0 release];
    [r23 release];
    if (r25 != 0x0) {
            r0 = [r19 adPlacement];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 adCandidates];
            r0 = [r0 retain];
            r23 = [[r0 firstObject] retain];
            [r20 loadWithAdCandidate:r23];
            [r23 release];
            [r0 release];
    }
    else {
            r21 = [[FBAdError getNSError:0x3e9] retain];
            [r20 onAdRequestError:r21];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)adapterDidClick:(void *)arg2 url:(void *)arg3 playerHandles:(bool)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 loadedAdDidClickWithAdapter:r22 withURL:r20 playerHandles:arg4];
    [r20 release];
    [r22 release];
    [r0 release];
    return;
}

-(void)logAdapterFailureWithAdapter:(void *)arg2 error:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[r21 nativeAdData] retain];
    [r21 release];
    r21 = [[r20 requestId] retain];
    r0 = [FBDisplayAdAdapterController adFormatWithPlacementType:[r20 placementType]];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [FBAdUtility isStringEmpty:r21];
    if (r22 != 0x0) {
            asm { ccmp       w0, #0x0, #0x0, ne };
    }
    if (!CPU_FLAGS & NE) {
            r24 = [[r19 debugDescription] retain];
            [FBAdDebugLogging logAdapterFailedForAdFormat:r22 requestId:r21 reason:r24];
            [r24 release];
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)adapterDidLoad:(void *)arg2 {
    r31 = r31 - 0x60;
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
    r19 = [arg2 retain];
    [r20 setRetryCount:0x0];
    [r20 adapterLoadTime];
    if (d0 > 0x0) {
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            [r20 adapterLoadTime];
            asm { fcvtzs     x21, d0 };
            [r22 release];
            [r20 setAdapterLoadTime:r2];
            r0 = [NSString stringWithFormat:@"%ld"];
            r0 = [r0 retain];
            r22 = [[NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_48 count:0x1] retain];
            [r0 release];
            r0 = [r20 adCandidate];
            r29 = r29;
            r0 = [r0 retain];
            [r0 fireTrackers:0x1 withExtraData:r22];
            [r0 release];
            [r22 release];
    }
    var_38 = **___stack_chk_guard;
    [r20 invalidateTimeoutTimer];
    r0 = [r20 delegate];
    r0 = [r0 retain];
    [r0 adWithAdapter:r19 performAction:0x0];
    [r19 release];
    [r0 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)adapter:(void *)arg2 didFailWithError:(void *)arg3 {
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
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    [FBAdLogger logAtLevel:0x2 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/controllers/FBDisplayAdAdapterController.m" lineNumber:0x12f format:@"Adapter failed with error:%@"];
    [r21 adapterLoadTime];
    if (d0 > 0x0) {
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            [r21 adapterLoadTime];
            asm { fcvtzs     x22, d0 };
            [r23 release];
            [r21 setAdapterLoadTime:r2];
            r22 = [[NSString stringWithFormat:@"%ld"] retain];
            r24 = @class(NSString);
            [r20 code];
            r23 = [[r24 stringWithFormat:@"%lld"] retain];
            r0 = [r20 description];
            r0 = [r0 retain];
            r25 = [[NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_88 count:0x3] retain];
            [r0 release];
            [r23 release];
            [r22 release];
            r0 = [r21 adCandidate];
            r29 = r29;
            r0 = [r0 retain];
            [r0 fireTrackers:0x1 withExtraData:r25];
            [r0 release];
            [r25 release];
    }
    r0 = [r21 retryCount];
    r22 = r0;
    [r21 setRetryCount:r0 + 0x1];
    r0 = [r21 placementDefinition];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 clientMaxRetryCount];
    [r0 release];
    if (r22 < r24) {
            [r21 retry];
    }
    else {
            if (r19 != 0x0) {
                    [r21 logAdapterFailureWithAdapter:r19 error:r20];
            }
            [r21 invalidateInProgressAd];
            [r21 invalidateCurrentAd];
            r0 = [r21 delegate];
            r0 = [r0 retain];
            [r0 loadDidFailWithAdapter:0x0 withError:r20];
            [r0 release];
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)adapterWillLogImpression:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adWithAdapter:r21 performAction:0x1];
    [r21 release];
    [r0 release];
    return;
}

-(void)adapterDidFinishHandlingClick:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adWithAdapter:r21 performAction:0x2];
    [r21 release];
    [r0 release];
    return;
}

-(void)adapterWillUnload:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adWithAdapter:r21 performAction:0x3];
    [r21 release];
    [r0 release];
    return;
}

-(void)adapterDidUnload:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adWithAdapter:r21 performAction:0x4];
    [r21 release];
    [r0 release];
    return;
}

-(void)adapterVideoDidComplete:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adWithAdapter:r21 performAction:0x5];
    [r21 release];
    [r0 release];
    return;
}

-(void)adapterServerRewardSuccess:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adWithAdapter:r21 performAction:0x6];
    [r21 release];
    [r0 release];
    return;
}

-(void)adapterServerRewardFailed:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adWithAdapter:r21 performAction:0x7];
    [r21 release];
    [r0 release];
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_rewardData, 0x0);
    objc_storeStrong((int64_t *)&self->_adapterTimeoutTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_environment, 0x0);
    objc_storeStrong((int64_t *)&self->_adProvider, 0x0);
    objc_storeStrong((int64_t *)&self->_placementDefinition, 0x0);
    objc_storeStrong((int64_t *)&self->_adCandidate, 0x0);
    objc_storeStrong((int64_t *)&self->_adapter, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)adapter {
    r0 = self->_adapter;
    return r0;
}

-(void *)adCandidate {
    r0 = self->_adCandidate;
    return r0;
}

-(void)setAdapter:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adapter, arg2);
    return;
}

-(void *)placementDefinition {
    r0 = self->_placementDefinition;
    return r0;
}

-(void)setAdCandidate:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adCandidate, arg2);
    return;
}

-(void)setPlacementDefinition:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_placementDefinition, arg2);
    return;
}

-(void *)adProvider {
    r0 = self->_adProvider;
    return r0;
}

-(void *)environment {
    r0 = self->_environment;
    return r0;
}

-(void)setAdProvider:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adProvider, arg2);
    return;
}

-(void)setEnvironment:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_environment, arg2);
    return;
}

-(void *)adapterTimeoutTimer {
    r0 = self->_adapterTimeoutTimer;
    return r0;
}

-(bool)isFlexibleAdSize {
    r0 = *(int8_t *)(int64_t *)&self->_flexibleAdSize;
    return r0;
}

-(void)setAdapterTimeoutTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adapterTimeoutTimer, arg2);
    return;
}

-(void)setFlexibleAdSize:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_flexibleAdSize = arg2;
    return;
}

-(void *)rewardData {
    r0 = self->_rewardData;
    return r0;
}

-(void)setRewardData:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rewardData, arg2);
    return;
}

-(struct CGSize)actualAdSize {
    r0 = self;
    return r0;
}

-(struct FBAdSize)adSizeType {
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

-(void)setAdSizeType:(struct FBAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adSizeType));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(double)adapterLoadTime {
    r0 = self;
    return r0;
}

-(void)setAdapterLoadTime:(double)arg2 {
    self->_adapterLoadTime = d0;
    return;
}

-(long long)retryCount {
    r0 = self->_retryCount;
    return r0;
}

-(void)setRetryCount:(long long)arg2 {
    self->_retryCount = arg2;
    return;
}

+(void *)adFormatWithPlacementType:(long long)arg2 {
    r20 = [[FBDisplayAdAdapterController placementTypeToAdFormatMap] retain];
    r19 = [[NSNumber numberWithInteger:arg2] retain];
    r21 = [[r20 objectForKeyedSubscript:r19] retain];
    [r19 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)placementTypeToAdFormatMap {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011ddc78 != -0x1) {
            dispatch_once(0x1011ddc78, 0x100eacde0);
    }
    r0 = *0x1011ddc80;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

@end