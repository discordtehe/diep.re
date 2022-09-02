@implementation MRController

-(void)dealloc {
    r0 = [self viewabilityTracker];
    r0 = [r0 retain];
    [r0 stopTracking];
    [r0 release];
    [*(self + 0x98) setDelegate:*(self + 0x70)];
    [*(self + 0x60) invalidate];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithAdViewFrame:(struct CGRect)arg2 supportedOrientations:(unsigned long long)arg3 adPlacementType:(unsigned long long)arg4 delegate:(void *)arg5 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x80;
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
    r29 = &saved_fp;
    r22 = r3;
    r21 = r2;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r19 = [r4 retain];
    r0 = [[&var_60 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            *(int8_t *)(r20 + 0x10) = 0x1;
            *(r20 + 0x68) = r22;
            *(r20 + 0x88) = 0x1;
            *(r20 + 0xb8) = sub_1004afa94();
            *(int8_t *)(r20 + 0xb) = 0x0;
            *(int8_t *)(r20 + 0xf) = 0x0;
            q0 = *(int128_t *)*_CGSizeZero;
            var_70 = q0;
            *(int128_t *)(r20 + 0xd8) = q0;
            *(int8_t *)(r20 + 0x8) = 0x0;
            *(int128_t *)(r20 + 0x108) = d11;
            *(int128_t *)(r20 + 0x110) = d10;
            *(int128_t *)(r20 + 0x118) = d9;
            *(int128_t *)(r20 + 0x120) = d8;
            r0 = [MPTimer timerWithTimeInterval:r20 target:@selector(updateMRAIDProperties) selector:0x1 repeats:**_NSRunLoopCommonModes runLoopMode:r6];
            r0 = [r0 retain];
            r8 = *(r20 + 0x60);
            *(r20 + 0x60) = r0;
            [r8 release];
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r20 selector:@selector(viewEnteredBackground) name:**_UIApplicationDidEnterBackgroundNotification object:0x0];
            [r0 release];
            r0 = objc_alloc();
            r0 = [r0 initWithFrame:r20];
            r8 = *(r20 + 0x58);
            *(r20 + 0x58) = r0;
            [r8 release];
            r21 = [[UIColor clearColor] retain];
            [*(r20 + 0x58) setBackgroundColor:r21];
            [r21 release];
            r0 = [MPAdDestinationDisplayAgent agentWithDelegate:r20];
            r0 = [r0 retain];
            r8 = *(r20 + 0xa0);
            *(r20 + 0xa0) = r0;
            [r8 release];
            r0 = @class(MPCoreInstanceProvider);
            r0 = [r0 sharedProvider];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 buildMPAdAlertManagerWithDelegate:r20];
            r0 = [r0 retain];
            r8 = *(r20 + 0xa8);
            *(r20 + 0xa8) = r0;
            [r8 release];
            [r22 release];
            r0 = @class(MPCoreInstanceProvider);
            r0 = [r0 sharedProvider];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 buildMPAdAlertManagerWithDelegate:r20];
            r0 = [r0 retain];
            r8 = *(r20 + 0xb0);
            *(r20 + 0xb0) = r0;
            [r8 release];
            [r21 release];
            objc_storeWeak(r20 + 0x28, r19);
            r9 = *_CGRectNull;
            q0 = *(int128_t *)r9;
            q1 = *(int128_t *)(r9 + 0x10);
            *(int128_t *)(r20 + 0x148) = q0;
            *(int128_t *)(r20 + 0x158) = q1;
            *(int128_t *)(r20 + 0x168) = q0;
            *(int128_t *)(r20 + 0x178) = q1;
            *(int128_t *)(r20 + 0xe8) = var_70;
            *(int128_t *)(r20 + 0xf8) = var_70;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)handleMRAIDInterstitialWillPresentWithViewController:(void *)arg2 {
    [self setInterstitialViewController:arg2];
    [self updateOrientation];
    [self willBeginAnimatingAdSize];
    return;
}

-(void)handleMRAIDInterstitialDidPresentWithViewController:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [self setInterstitialViewController:arg2];
    [r19 didEndAnimatingAdSize];
    [r19 updateMRAIDProperties];
    [r19 updateOrientation];
    if (([r19 shouldStartViewabilityDuringInitialization] & 0x1) == 0x0) {
            r0 = [r19 viewabilityTracker];
            r0 = [r0 retain];
            [r0 startTracking];
            [r0 release];
    }
    return;
}

-(void)disableRequestHandling {
    r0 = [self mraidBridge];
    r0 = [r0 retain];
    [r0 setShouldHandleRequests:0x0];
    [r0 release];
    r0 = [self mraidBridgeTwoPart];
    r0 = [r0 retain];
    [r0 setShouldHandleRequests:0x0];
    [r0 release];
    r0 = [self destinationDisplayAgent];
    r0 = [r0 retain];
    [r0 cancel];
    [r0 release];
    return;
}

-(void)enableRequestHandling {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self mraidBridge];
    r0 = [r0 retain];
    [r0 setShouldHandleRequests:0x1];
    [r0 release];
    r0 = [r19 mraidBridgeTwoPart];
    r0 = [r0 retain];
    [r0 setShouldHandleRequests:0x1];
    [r0 release];
    r0 = [r19 forceOrientationAfterAnimationBlock];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 forceOrientationAfterAnimationBlock];
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r20 release];
            [r19 setForceOrientationAfterAnimationBlock:0x0];
    }
    return;
}

-(void)loadAdWithConfiguration:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    [r20 setAdConfiguration:r19];
    [r20 setIsAdLoading:0x1];
    [r20 setAdRequiresPrecaching:[r19 precacheRequired]];
    [r20 setIsAdVastVideoPlayer:[r19 isVastVideoPlayer]];
    [r20 setShouldUseUIWebView:[r20 isAdVastVideoPlayer]];
    [r20 mraidDefaultAdFrame];
    r22 = [[r20 buildMRAIDWebViewWithFrame:[r20 shouldUseUIWebView] forceUIWebView:r3] retain];
    [r20 setMraidWebView:r22];
    [r22 release];
    r23 = [r20 isInterstitialAd];
    r0 = [r20 mraidWebView];
    r0 = [r0 retain];
    [r0 setShouldConformToSafeArea:r23];
    [r0 release];
    r23 = objc_alloc();
    r24 = [[r20 mraidWebView] retain];
    r23 = [r23 initWithWebView:r24 delegate:r20];
    [r20 setMraidBridge:r23];
    [r23 release];
    [r24 release];
    r23 = objc_alloc();
    [r20 mraidDefaultAdFrame];
    r0 = [r20 mraidWebView];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r22 = [r23 initWithFrame:r21 webView:r20 delegate:r4];
    [r20 setMraidAdView:r22];
    [r22 release];
    [r21 release];
    if ([r20 placementType] == 0x1) {
            r0 = [r20 mraidAdView];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setAutoresizingMask:0x12];
            [r0 release];
    }
    r23 = [[r20 adAlertManager] retain];
    r0 = [r20 mraidAdView];
    r29 = r29;
    r24 = [r0 retain];
    [r20 initAdAlertManager:r23 forAdView:r24];
    [r24 release];
    [r23 release];
    if ([r20 placementType] == 0x0) goto loc_10047ab70;

loc_10047ab34:
    if ([r20 placementType] != 0x1) goto loc_10047aba0;

loc_10047ab48:
    r0 = [r20 mraidAdView];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    goto loc_10047ab94;

loc_10047ab94:
    [r0 setCloseButtonType:r2];
    [r21 release];
    goto loc_10047aba0;

loc_10047aba0:
    [r20 init3rdPartyViewabilityTrackers];
    r21 = [[r19 adResponseHTMLString] retain];
    r20 = [[r20 mraidBridge] retain];
    r23 = [[MPAPIEndpoints baseURL] retain];
    r22 = [[NSURL URLWithString:r23] retain];
    [r20 loadHTMLString:r21 baseURL:r22];
    [r22 release];
    [r23 release];
    [r20 release];
    [r21 release];
    [r19 release];
    return;

loc_10047ab70:
    r0 = [r20 mraidAdView];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    goto loc_10047ab94;
}

-(void)loadTwoPartCreativeFromURL:(void *)arg2 {
    r19 = [arg2 retain];
    [self setIsAdLoading:0x1];
    [[MPURLRequest requestWithURL:r19] retain];
    objc_initWeak(&stack[-104], self);
    objc_copyWeak(&var_80 + 0x20, &stack[-104]);
    objc_copyWeak(&var_A8 + 0x20, &stack[-104]);
    r0 = [MPHTTPNetworkSession startTaskWithHttpRequest:r21 responseHandler:&var_80 errorHandler:&var_A8];
    r24 = [r0 retain];
    [self setTask:r24];
    [r24 release];
    objc_destroyWeak(&var_A8 + 0x20);
    objc_destroyWeak(&var_80 + 0x20);
    objc_destroyWeak(&stack[-104]);
    [r21 release];
    [r19 release];
    return;
}

-(void)didFailWithError:(void *)arg2 {
    [self setIsAdLoading:0x0];
    r0 = [self expansionContentView];
    r0 = [r0 retain];
    [r0 setCloseButtonType:0x2];
    [r0 release];
    r0 = [self mraidBridge];
    r0 = [r0 retain];
    [r0 fireErrorEventForAction:@"expand" withMessage:@"Could not load URL."];
    [r0 release];
    return;
}

-(void)connectionDidFinishLoadingData:(void *)arg2 withResponse:(void *)arg3 fromRequestUrl:(void *)arg4 {
    r22 = [arg2 retain];
    r24 = [arg3 retain];
    r20 = [arg4 retain];
    r0 = [r24 allHeaderFields];
    r0 = [r0 retain];
    r19 = r0;
    r23 = [[r0 objectForKey:*0x100e7ee38] retain];
    r25 = [r24 stringEncodingFromContentType:r23];
    [r24 release];
    r24 = [objc_alloc() initWithData:r22 encoding:r25];
    [r22 release];
    r0 = [self mraidBridgeTwoPart];
    r0 = [r0 retain];
    [r0 loadHTMLString:r24 baseURL:r20];
    [r20 release];
    [r0 release];
    [r24 release];
    [r23 release];
    [r19 release];
    return;
}

-(bool)shouldStartViewabilityDuringInitialization {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self adConfiguration];
    r0 = [r0 retain];
    r21 = [r0 visibleImpressionTrackingEnabled];
    [r0 release];
    if ((r21 & 0x1) != 0x0) {
            r0 = 0x0;
    }
    else {
            r0 = [r19 isInterstitialAd];
            r0 = r0 ^ 0x1;
    }
    return r0;
}

-(bool)isInterstitialAd {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self placementType];
    if (r0 == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)init3rdPartyViewabilityTrackers {
    r20 = objc_alloc();
    r21 = [[self mraidWebView] retain];
    r20 = [r20 initWithAdView:r21 isVideo:[self isAdVastVideoPlayer] startTrackingImmediately:[self shouldStartViewabilityDuringInitialization]];
    [self setViewabilityTracker:r20];
    [r20 release];
    [r21 release];
    r20 = [[self viewabilityTracker] retain];
    r0 = [self mraidAdView];
    r0 = [r0 retain];
    r21 = [[r0 closeButton] retain];
    [r20 registerFriendlyObstructionView:r21];
    [r21 release];
    [r0 release];
    [r20 release];
    return;
}

-(void)initAdAlertManager:(void *)arg2 forAdView:(void *)arg3 {
    r19 = [arg2 retain];
    r22 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r24 = [[r0 adConfiguration] retain];
    [r19 setAdConfiguration:r24];
    [r24 release];
    [r0 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    r24 = [[r0 adUnitId] retain];
    [r19 setAdUnitId:r24];
    [r24 release];
    [r0 release];
    [r19 setTargetAdView:r22];
    [r22 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    r21 = [[r0 location] retain];
    [r19 setLocation:r21];
    [r21 release];
    [r0 release];
    [r19 beginMonitoringAlerts];
    [r19 release];
    return;
}

-(void *)activeView {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r8 = &@selector(expansionContentView);
    if ([self currentState] == 0x2) {
            if (!CPU_FLAGS & E) {
                    r8 = &@selector(mraidAdView);
            }
            else {
                    r8 = &@selector(expansionContentView);
            }
    }
    r0 = objc_msgSend(r19, *r8);
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)bridgeForAdView:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [arg2 retain];
    r0 = [r19 mraidAdViewTwoPart];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    [r20 release];
    r8 = &@selector(mraidBridgeTwoPart);
    if (r20 == r21) {
            if (!CPU_FLAGS & E) {
                    r8 = &@selector(mraidBridge);
            }
            else {
                    r8 = &@selector(mraidBridgeTwoPart);
            }
    }
    r0 = objc_msgSend(r19, *r8);
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)adViewForBridge:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [arg2 retain];
    r0 = [r19 mraidBridgeTwoPart];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    [r20 release];
    r8 = &@selector(mraidAdViewTwoPart);
    if (r20 == r21) {
            if (!CPU_FLAGS & E) {
                    r8 = &@selector(mraidAdView);
            }
            else {
                    r8 = &@selector(mraidAdViewTwoPart);
            }
    }
    r0 = objc_msgSend(r19, *r8);
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)bridgeForActiveAdView {
    r20 = [[self activeView] retain];
    r19 = [[self bridgeForAdView:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)fireChangeEventToBothBridgesForProperty:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self mraidBridge];
    r0 = [r0 retain];
    [r0 fireChangeEventForProperty:r21];
    [r0 release];
    r0 = [self mraidBridgeTwoPart];
    r0 = [r0 retain];
    [r0 fireChangeEventForProperty:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void *)buildMRAIDWebViewWithFrame:(struct CGRect)arg2 forceUIWebView:(bool)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r0 = objc_alloc();
    r0 = [r0 initWithFrame:r2 forceUIWebView:r3];
    [r0 setAutoresizingMask:0x12];
    r20 = [[UIColor clearColor] retain];
    [r0 setBackgroundColor:r20];
    [r20 release];
    [r0 setClipsToBounds:0x1];
    [r0 setOpaque:0x0];
    [r0 mp_setScrollable:0x0];
    r0 = [r0 autorelease];
    return r0;
}

-(void)orientationDidChange:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sub_1004aec08();
    if (r20 != [r19 currentInterfaceOrientation]) {
            [r19 updateMRAIDProperties];
            if ([r19 currentState] == 0x3) {
                    [r19 close];
            }
            [r19 setCurrentInterfaceOrientation:r20];
    }
    return;
}

-(void)configureMraidEnvironmentToShowAdForBridge:(void *)arg2 {
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
    var_48 = **___stack_chk_guard;
    r20 = [arg2 retain];
    r23 = [[NSString stringWithFormat:@"Injecting initial JavaScript state."] retain];
    r22 = [[MPLogEvent eventWithMessage:r23 level:0x14] retain];
    [MPLogging logEvent:r22 source:0x0 fromClass:[self class]];
    [r22 release];
    [r23 release];
    r21 = [[MRHostSDKVersionProperty defaultProperty] retain];
    r22 = [[MRPlacementTypeProperty propertyWithType:[self placementType]] retain];
    r23 = [[MRSupportsProperty defaultProperty] retain];
    r24 = [[MRStateProperty propertyWithState:[self currentState]] retain];
    r0 = [NSArray arrayWithObjects:&var_68 count:0x4];
    r25 = [r0 retain];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 fireChangeEventsForProperties:r25];
    [self updateMRAIDProperties];
    [r20 fireReadyEvent];
    [r20 release];
    [r25 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

+(bool)isValidCloseButtonPlacement:(long long)arg2 inAdFrame:(struct CGRect)arg3 inApplicationSafeArea:(struct CGRect)arg4 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r3, &arg3, 0x8);
    r0 = sub_1004c470c();
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectOffset(r0, _cmd, arg2);
    r0 = CGRectContainsRect(r0, _cmd);
    return r0;
}

+(bool)isValidResizeFrame:(struct CGRect)arg2 inApplicationSafeArea:(struct CGRect)arg3 allowOffscreen:(bool)arg4 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r1 = _cmd;
    var_50 = d15;
    stack[-88] = d14;
    r31 = r31 + 0xffffffffffffffa0;
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
    r19 = r2;
    v8 = v7;
    v10 = v6;
    v12 = v5;
    v14 = v4;
    v9 = v3;
    v11 = v2;
    v13 = v1;
    v15 = v0;
    r0 = CGRectGetWidth(self);
    if (d0 < *0x100be3f60) {
            r0 = 0x0;
    }
    else {
            r0 = CGRectGetHeight(r0);
            if (d0 >= *0x100be3f68) {
                    if (CPU_FLAGS & NS) {
                            r0 = 0x1;
                    }
            }
            if (!CPU_FLAGS & S && (r19 & 0x1) == 0x0) {
                    r0 = CGRectContainsRect(r0, r1);
            }
    }
    return r0;
}

+(struct CGRect)adjustedFrameForFrame:(struct CGRect)arg2 toFitIntoApplicationSafeArea:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
    var_40 = d15;
    stack[-72] = d14;
    var_30 = d13;
    stack[-56] = d12;
    var_20 = d11;
    stack[-40] = d10;
    var_10 = d9;
    stack[-24] = d8;
    saved_fp = r29;
    stack[-8] = r30;
    v13 = v6;
    v14 = v5;
    v15 = v4;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    var_48 = d7;
    r0 = CGRectContainsRect(self, _cmd);
    if ((r0 & 0x1) == 0x0) {
            r0 = CGRectGetWidth(r0);
            r0 = CGRectGetWidth(r0);
            if (d12 <= d0) {
                    r0 = CGRectGetHeight(r0);
                    r0 = CGRectGetHeight(r0);
                    if (d12 <= d0) {
                            r0 = CGRectGetMinX(r0);
                            r0 = CGRectGetMinX(r0);
                            if (d12 < d0) {
                                    r0 = CGRectGetMinX(r0);
                                    v11 = v15;
                            }
                            else {
                                    r0 = CGRectGetMaxX(r0);
                                    r0 = CGRectGetMaxX(r0);
                                    if (d12 < d0) {
                                            r0 = CGRectGetMaxX(r0);
                                            r0 = CGRectGetWidth(r0);
                                    }
                            }
                            r0 = CGRectGetMinY(r0);
                            r0 = CGRectGetMinY(r0);
                            if (d12 < d0) {
                                    r0 = CGRectGetMinY(r0);
                                    v10 = v15;
                            }
                            else {
                                    r0 = CGRectGetMaxY(r0);
                                    r0 = CGRectGetMaxY(r0);
                                    if (d12 < d0) {
                                            r0 = CGRectGetMaxY(r0);
                                            r0 = CGRectGetHeight(r0);
                                    }
                            }
                    }
            }
    }
    return r0;
}

-(long long)adCloseButtonLocationFromString:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
            r20 = 0x1;
    }
    else {
            if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                    r20 = 0x2;
            }
            else {
                    if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                            r20 = 0x4;
                    }
                    else {
                            if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                                    r20 = 0x5;
                            }
                            else {
                                    if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                                            r20 = 0x3;
                                    }
                                    else {
                                            r20 = @selector(isEqualToString:);
                                            if (objc_msgSend(r19, r20) != 0x0) {
                                                    if (!CPU_FLAGS & NE) {
                                                            r20 = 0x0;
                                                    }
                                                    else {
                                                            r20 = 0x6;
                                                    }
                                            }
                                    }
                            }
                    }
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)animateViewFromDefaultStateToResizedState:(void *)arg2 withFrame:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    [self willBeginAnimatingAdSize];
    [UIView animateWithDuration:&var_78 animations:&var_A0 completion:r4];
    return;
}

-(void)presentExpandModalViewControllerWithView:(void *)arg2 animated:(bool)arg3 {
    [self presentExpandModalViewControllerWithView:arg2 animated:arg3 completion:0x0];
    return;
}

-(void)willBeginAnimatingAdSize {
    [self setIsAnimatingAdSize:0x1];
    [self disableRequestHandling];
    return;
}

-(void)didEndAnimatingAdSize {
    [self setIsAnimatingAdSize:0x0];
    [self enableRequestHandling];
    return;
}

-(void)presentExpandModalViewControllerWithView:(void *)arg2 animated:(bool)arg3 completion:(void *)arg4 {
    r23 = [arg2 retain];
    r21 = [arg4 retain];
    [self willBeginAnimatingAdSize];
    r22 = objc_alloc();
    r22 = [r22 initWithOrientationMask:[self forceOrientationMask]];
    [self setExpandModalViewController:r22];
    [r22 release];
    r0 = [self expandModalViewController];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 view];
    r0 = [r0 retain];
    [r0 addSubview:r23];
    [r0 release];
    [r24 release];
    r0 = [self expandModalViewController];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 view];
    r0 = [r0 retain];
    [r0 bounds];
    [r23 setFrame:r23];
    [r0 release];
    [r24 release];
    [r23 setAutoresizingMask:0x12];
    [r23 release];
    r0 = [self expandModalViewController];
    r0 = [r0 retain];
    [r0 setModalTransitionStyle:0x2];
    [r0 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    r24 = [[r0 viewControllerForPresentingModalView] retain];
    r22 = [[self expandModalViewController] retain];
    var_48 = r21;
    r21 = [r21 retain];
    [r24 presentViewController:r22 animated:arg3 completion:&var_70];
    [r22 release];
    [r24 release];
    [r0 release];
    [var_48 release];
    [r21 release];
    return;
}

-(void)close {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r8 = [self currentState] - 0x1;
    if (r8 <= 0x2) {
            objc_msgSend(r19, **(0x100e7e5e8 + r8 * 0x8));
    }
    return;
}

-(void)closeFromDefaultState {
    [self adWillClose];
    r0 = [self mraidAdView];
    r0 = [r0 retain];
    [r0 setHidden:0x1];
    [r0 release];
    [self changeStateTo:0x0];
    [self adDidClose];
    return;
}

-(void)closeFromExpandedState {
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
    r19 = self;
    r0 = [self mraidAdView];
    r0 = [r0 retain];
    [r0 setCloseButtonType:0x0];
    [r0 release];
    r21 = [[r19 originalSuperview] retain];
    r22 = [[r19 mraidAdView] retain];
    [r21 addSubview:r22];
    [r22 release];
    [r21 release];
    [r19 mraidDefaultAdFrame];
    r0 = [r19 mraidAdView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 setFrame:r22];
    [r0 release];
    if ([r19 placementType] != 0x1) {
            r0 = [r19 mraidAdView];
            r0 = [r0 retain];
            [r0 setAutoresizingMask:0x0];
            [r0 release];
    }
    [r19 willBeginAnimatingAdSize];
    objc_initWeak(&stack[-88], r19);
    [[r19 expandModalViewController] retain];
    objc_copyWeak(&var_70 + 0x20, &stack[-88]);
    [r20 dismissViewControllerAnimated:0x1 completion:&var_70];
    [r20 release];
    objc_destroyWeak(&var_70 + 0x20);
    objc_destroyWeak(&stack[-88]);
    return;
}

-(bool)hasUserInteractedWithWebViewForBridge:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 placementType] != 0x1 && [r20 currentState] != 0x2) {
            r0 = [r20 adViewForBridge:r19];
            r0 = [r0 retain];
            r20 = [r0 wasTapped];
            [r0 release];
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)closeFromResizedState {
    r0 = [self mraidAdView];
    r0 = [r0 retain];
    [r0 setCloseButtonType:0x0];
    [r0 release];
    [self willBeginAnimatingAdSize];
    objc_initWeak(&saved_fp - 0x38, self);
    objc_copyWeak(&var_60 + 0x20, &saved_fp - 0x38);
    objc_copyWeak(&var_88 + 0x20, &saved_fp - 0x38);
    [UIView animateWithDuration:&var_60 animations:&var_88 completion:r4];
    objc_destroyWeak(&var_88 + 0x20);
    objc_destroyWeak(&var_60 + 0x20);
    objc_destroyWeak(&saved_fp - 0x38);
    return;
}

-(bool)isLoadingAd {
    r0 = [self isAdLoading];
    return r0;
}

-(void)nativeCommandWillPresentModalView {
    [self adWillPresentModalViewByExpanding:0x0];
    return;
}

-(void *)viewControllerForPresentingModalView {
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
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 viewControllerForPresentingModalView] retain];
    [r0 release];
    r0 = [r19 expandModalViewController];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 presentingViewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    if (r0 != 0x0) {
            r0 = [r19 expandModalViewController];
            r0 = [r0 retain];
    }
    else {
            r0 = [r20 retain];
    }
    [r20 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void)nativeCommandDidDismissModalView {
    [self adDidDismissModalView];
    return;
}

-(void)bridge:(void *)arg2 didFinishLoadingWebView:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 isAdLoading] != 0x0) {
            [r20 setIsAdLoading:0x0];
            if (([r20 adRequiresPrecaching] & 0x1) == 0x0) {
                    r0 = [r20 mraidBridge];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != r19) {
                            r0 = [r20 mraidBridgeTwoPart];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 == r19) {
                                    if ([r20 isViewable] != 0x0) {
                                            r21 = [[r20 mraidBridgeTwoPart] retain];
                                            r22 = [[MRViewableProperty propertyWithViewable:0x1] retain];
                                            [r21 fireChangeEventForProperty:r22];
                                            [r22 release];
                                            [r21 release];
                                    }
                                    else {
                                            [r20 updateViewabilityWithBool:0x1];
                                    }
                                    [r20 configureMraidEnvironmentToShowAdForBridge:r19];
                            }
                    }
                    else {
                            [r20 adDidLoad];
                    }
            }
    }
    [r19 release];
    return;
}

-(void)bridge:(void *)arg2 didFailLoadingWebView:(void *)arg3 error:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    [r20 setIsAdLoading:0x0];
    r0 = [r20 mraidBridge];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != r19) {
            r0 = [r20 mraidBridgeTwoPart];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == r19) {
                    r0 = [r20 expansionContentView];
                    r0 = [r0 retain];
                    [r0 setCloseButtonType:0x2];
                    [r0 release];
                    r0 = [r20 mraidBridge];
                    r0 = [r0 retain];
                    [r0 fireErrorEventForAction:@"expand" withMessage:@"Could not load URL."];
                    [r0 release];
            }
    }
    else {
            [r20 adDidFailToLoad];
    }
    [r19 release];
    return;
}

-(void)handleNativeCommandCloseWithBridge:(void *)arg2 {
    [self close];
    return;
}

-(void)bridge:(void *)arg2 performActionForMoPubSpecificURL:(void *)arg3 {
    r31 = r31 - 0x70;
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
    r19 = [arg3 retain];
    r26 = [[NSString stringWithFormat:@"MRController - loading MoPub URL: %@"] retain];
    r0 = [MPLogEvent eventWithMessage:r26 level:0x14];
    r29 = &saved_fp;
    r27 = [r0 retain];
    [MPLogging logEvent:r27 source:0x0 fromClass:[r20 class]];
    [r27 release];
    [r26 release];
    r0 = [r19 mp_mopubHostCommand];
    if (r0 == 0x3) goto loc_10047d604;

loc_10047d524:
    if (r0 == 0x5) goto loc_10047d618;

loc_10047d52c:
    if (r0 != 0x4 || [r20 adRequiresPrecaching] == 0x0) goto loc_10047d554;

loc_10047d548:
    r1 = @selector(adDidLoad);
    goto loc_10047d60c;

loc_10047d60c:
    objc_msgSend(r20, r1);
    goto loc_10047d648;

loc_10047d648:
    [r19 release];
    return;

loc_10047d554:
    r28 = [[r19 absoluteString] retain];
    r21 = [[NSString stringWithFormat:@"MRController - unsupported MoPub URL: %@"] retain];
    r22 = [[MPLogEvent eventWithMessage:r21 level:0x1e] retain];
    [MPLogging logEvent:r22 source:0x0 fromClass:[r20 class]];
    [r22 release];
    [r21 release];
    r0 = r28;
    goto loc_10047d644;

loc_10047d644:
    [r0 release];
    goto loc_10047d648;

loc_10047d618:
    r0 = [r20 delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoEnded];
    r0 = r0;
    goto loc_10047d644;

loc_10047d604:
    r1 = @selector(adDidFailToLoad);
    goto loc_10047d60c;
}

-(void)bridge:(void *)arg2 handleNativeCommandUseCustomClose:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg3;
    r20 = self;
    if ([self placementType] == 0x1) {
            r21 = [[r20 mraidAdView] retain];
            [r20 configureCloseButtonForView:r21 forUseCustomClose:r19];
            [r21 release];
    }
    return;
}

-(void)bridge:(void *)arg2 handleDisplayForDestinationURL:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [r20 hasUserInteractedWithWebViewForBridge:r21];
    [r21 release];
    if (r22 != 0x0) {
            r0 = [r20 destinationDisplayAgent];
            r0 = [r0 retain];
            [r0 displayDestinationForURL:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)configureCloseButtonForView:(void *)arg2 forUseCustomClose:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (arg3 != 0x0) {
            if ([r20 isAdVastVideoPlayer] != 0x0) {
                    r0 = r19;
            }
            else {
                    r0 = r19;
            }
    }
    else {
            r0 = r19;
    }
    [r0 setCloseButtonType:r2];
    [r19 release];
    return;
}

-(void)bridge:(void *)arg2 handleNativeCommandSetOrientationPropertiesWithForceOrientationMask:(unsigned long long)arg3 {
    r31 = r31 - 0xe0;
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
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [UIApplication sharedApplication];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 mp_supportsOrientationMask:r20];
    [r0 release];
    if (r24 != 0x0) {
            r0 = [r21 currentState];
            r23 = r0;
            if (r0 == 0x2) {
                    if (CPU_FLAGS & E) {
                            r25 = 0x1;
                    }
            }
            if (!CPU_FLAGS & E && [r21 placementType] != 0x1) {
                    [r21 setForceOrientationMask:r20];
            }
            else {
                    if (([r19 shouldHandleRequests] & 0x1) != 0x0) {
                            [r21 setForceOrientationAfterAnimationBlock:0x0];
                            [r21 setForceOrientationMask:r20];
                            r0 = @class(UIApplication);
                            r0 = [r0 sharedApplication];
                            r29 = r29;
                            r22 = [r0 retain];
                            r24 = [r22 mp_doesOrientation:sub_1004aec08() matchOrientationMask:r20];
                            [r22 release];
                            if (r23 == 0x2) {
                                    r0 = [r21 expandModalViewController];
                                    r29 = r29;
                            }
                            else {
                                    r0 = [r21 interstitialViewController];
                                    r29 = r29;
                            }
                            r22 = [r0 retain];
                            if (r24 != 0x0) {
                                    [r22 setSupportedOrientationMask:r20];
                            }
                            else {
                                    [r21 willBeginAnimatingAdSize];
                                    [[r22 presentingViewController] retain];
                                    objc_initWeak(r29 - 0x48, r21);
                                    objc_copyWeak(&var_C8 + 0x30, r29 - 0x48);
                                    r0 = [r22 retain];
                                    r24 = r0;
                                    var_A8 = r0;
                                    r0 = [r23 retain];
                                    [r24 dismissViewControllerAnimated:0x0 completion:&var_C8];
                                    [r0 release];
                                    [var_A8 release];
                                    objc_destroyWeak(&var_C8 + 0x30);
                                    objc_destroyWeak(r29 - 0x48);
                                    [r20 release];
                            }
                            [r22 release];
                    }
                    else {
                            objc_initWeak(r29 - 0x48, r21);
                            objc_copyWeak(&var_80 + 0x28, r29 - 0x48);
                            var_60 = [r19 retain];
                            [r21 setForceOrientationAfterAnimationBlock:&var_80];
                            [var_60 release];
                            objc_destroyWeak(&var_80 + 0x28);
                            objc_destroyWeak(r29 - 0x48);
                    }
            }
    }
    [r19 release];
    return;
}

-(void)closeButtonPressed:(void *)arg2 {
    [self close];
    return;
}

-(void)bridge:(void *)arg2 handleNativeCommandExpandWithURL:(void *)arg3 useCustomClose:(bool)arg4 {
    r31 = r31 - 0xd0;
    var_60 = d11;
    stack[-104] = d10;
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
    r21 = arg4;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([r22 placementType] != 0x0) {
            [r19 fireErrorEventForAction:@"expand" withMessage:@"Cannot expand from interstitial ads."];
    }
    else {
            if ([r22 currentState] == 0x3) {
                    r0 = [r22 resizeBackgroundView];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 removeFromSuperview];
                    [r0 release];
            }
            else {
                    r0 = [r22 mraidAdView];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 frame];
                    [r22 setMraidDefaultAdFrame:r2];
                    [r25 release];
                    [r22 adWillPresentModalViewByExpanding:0x1];
            }
            r0 = [r22 mraidAdView];
            r29 = r29;
            r25 = [r0 retain];
            if (r20 != 0x0) {
                    [r25 frame];
                    [r25 release];
                    r23 = [[r22 buildMRAIDWebViewWithFrame:[r22 shouldUseUIWebView] forceUIWebView:r3] retain];
                    r24 = [objc_alloc() initWithWebView:r23 delegate:r22];
                    [r22 setMraidBridgeTwoPart:r24];
                    [r24 release];
                    r24 = [objc_alloc() initWithFrame:r23 webView:r22 delegate:r4];
                    [r22 setMraidAdViewTwoPart:r24];
                    [r24 release];
                    [r22 setIsAdLoading:0x1];
                    r24 = [[r22 mraidAdViewTwoPart] retain];
                    [r22 setExpansionContentView:r24];
                    [r24 release];
                    r0 = [r22 expansionContentView];
                    r29 = r29;
                    r25 = [r0 retain];
                    var_68 = [r20 retain];
                    [r22 presentExpandModalViewControllerWithView:r25 animated:0x1 completion:&var_90];
                    [r25 release];
                    [var_68 release];
            }
            else {
                    r23 = @selector(currentState);
                    [r22 setExpansionContentView:r25];
                    [r25 release];
                    if (objc_msgSend(r22, r23) != 0x3) {
                            r0 = [r22 mraidAdView];
                            r0 = [r0 retain];
                            r23 = r0;
                            r0 = [r0 superview];
                            r29 = r29;
                            r24 = [r0 retain];
                            [r22 setOriginalSuperview:r24];
                            [r24 release];
                            [r23 release];
                    }
                    r0 = [r22 expansionContentView];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r22 presentExpandModalViewControllerWithView:r23 animated:0x1 completion:&var_B8];
            }
            [r23 release];
            r23 = [[r22 expansionContentView] retain];
            [r22 configureCloseButtonForView:r23 forUseCustomClose:r21];
            [r23 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)closableView:(void *)arg2 didMoveToWindow:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = self;
    r22 = [arg2 retain];
    r0 = [r19 bridgeForAdView:r22];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r22 release];
    if (([r19 didConfigureOrientationNotificationObservers] & 0x1) == 0x0) {
            r0 = [r19 mraidBridge];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            [r0 release];
            if (r21 != 0x0 && r20 == r22) {
                    r0 = @class(NSNotificationCenter);
                    r0 = [r0 defaultCenter];
                    r0 = [r0 retain];
                    r23 = **_UIDeviceOrientationDidChangeNotification;
                    [r0 removeObserver:r19 name:r23 object:0x0];
                    [r0 release];
                    [r19 setCurrentInterfaceOrientation:sub_1004aec08()];
                    r0 = @class(NSNotificationCenter);
                    r0 = [r0 defaultCenter];
                    r0 = [r0 retain];
                    [r0 addObserver:r19 selector:@selector(orientationDidChange:) name:r23 object:0x0];
                    [r0 release];
                    r0 = [r19 adPropertyUpdateTimer];
                    r0 = [r0 retain];
                    [r0 scheduleNow];
                    [r0 release];
                    [r19 setDidConfigureOrientationNotificationObservers:0x1];
            }
    }
    [r20 release];
    return;
}

-(void)displayAgentWillPresentModal {
    [self adWillPresentModalViewByExpanding:0x0];
    return;
}

-(void)displayAgentDidDismissModal {
    [self adDidDismissModalView];
    return;
}

-(void)displayAgentWillLeaveApplication {
    return;
}

-(void)updateMRAIDProperties {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self isAnimatingAdSize] & 0x1) == 0x0) {
            [r19 updateCurrentPosition];
            [r19 updateDefaultPosition];
            [r19 updateScreenSize];
            [r19 updateMaxSize];
            [r19 updateEventSizeChange];
            [r19 checkViewability];
    }
    return;
}

-(struct CGRect)activeAdFrameInScreenSpace {
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
    r29 = &saved_fp;
    r21 = self;
    if ([self placementType] != 0x0) {
            r20 = 0x0;
    }
    else {
            if ([r21 currentState] == 0x2) {
                    if (CPU_FLAGS & E) {
                            r20 = 0x1;
                    }
            }
    }
    r0 = [r21 placementType];
    if ((r20 & 0x1) == 0x0 && r0 != 0x1) {
            r0 = [r21 placementType];
            if (r0 == 0x0) {
                    r19 = [sub_1004aec5c() retain];
                    r0 = [r21 mraidAdView];
                    r0 = [r0 retain];
                    r20 = r0;
                    r22 = [[r0 superview] retain];
                    r0 = [r21 mraidAdView];
                    r0 = [r0 retain];
                    r21 = r0;
                    [r0 frame];
                    r0 = [r19 rootViewController];
                    r0 = [r0 retain];
                    r24 = [[r0 view] retain];
                    [r22 convertRect:r24 toView:r3];
                    v8 = v0;
                    v9 = v1;
                    v10 = v2;
                    v11 = v3;
                    [r24 release];
                    [r0 release];
                    [r21 release];
                    [r22 release];
                    [r20 release];
                    r0 = [r19 release];
            }
    }
    else {
            r0 = [r21 includeSafeAreaInsetsInCalculations];
            r0 = sub_1004aed94(r0);
            v8 = v0;
            v9 = v1;
            v10 = v2;
            v11 = v3;
    }
    return r0;
}

-(void)updateCurrentPosition {
    r31 = r31 - 0x70;
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
    r29 = &saved_fp;
    [self activeAdFrameInScreenSpace];
    v8 = v0;
    v9 = v1;
    v10 = v2;
    v11 = v3;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if ((CGRectEqualToRect([r19 previousCurrentPosition], @selector(previousCurrentPosition)) & 0x1) == 0x0) {
            [r19 setPreviousCurrentPosition:r2];
            r0 = [r19 bridgeForActiveAdView];
            r0 = [r0 retain];
            [r0 fireSetCurrentPositionWithPositionRect:r2];
            r22 = [NSStringFromCGRect() retain];
            r23 = [[NSString stringWithFormat:@"Current Position: %@"] retain];
            r24 = [[MPLogEvent eventWithMessage:r23 level:0x14] retain];
            [MPLogging logEvent:r24 source:0x0 fromClass:[r19 class]];
            [r24 release];
            [r23 release];
            [r22 release];
            [r0 release];
    }
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(struct CGRect)defaultAdFrameInScreenSpace {
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
    r29 = &saved_fp;
    r22 = self;
    if ([self placementType] == 0x0) goto loc_10047f0e8;

loc_10047f098:
    r0 = [r22 placementType];
    if (r0 != 0x1) goto .l1;

loc_10047f0ac:
    r0 = [r22 mraidAdView];
    r0 = [r0 retain];
    r19 = r0;
    [r0 frame];
    v8 = v0;
    v9 = v1;
    v10 = v2;
    v11 = v3;
    goto loc_10047f2fc;

loc_10047f2fc:
    r0 = [r19 release];
    return r0;

.l1:
    return r0;

loc_10047f0e8:
    r19 = [sub_1004aec5c() retain];
    r20 = [[r22 expansionContentView] retain];
    r0 = [r22 mraidAdViewTwoPart];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r20 release];
    if (r20 != r0) {
            r20 = [[r22 originalSuperview] retain];
            [r22 mraidDefaultAdFrame];
            r0 = [r19 rootViewController];
            r0 = [r0 retain];
            r21 = r0;
            r22 = [[r0 view] retain];
            [r20 convertRect:r22 toView:r3];
            v8 = v0;
            v9 = v1;
            v10 = v2;
            v11 = v3;
    }
    else {
            r0 = [r22 mraidAdView];
            r0 = [r0 retain];
            r20 = r0;
            r21 = [[r0 superview] retain];
            r0 = [r22 mraidAdView];
            r0 = [r0 retain];
            r22 = r0;
            [r0 frame];
            r0 = [r19 rootViewController];
            r0 = [r0 retain];
            r24 = [[r0 view] retain];
            [r21 convertRect:r24 toView:r3];
            v8 = v0;
            v9 = v1;
            v10 = v2;
            v11 = v3;
            [r24 release];
            [r0 release];
    }
    [r22 release];
    [r21 release];
    [r20 release];
    goto loc_10047f2fc;
}

-(void)updateDefaultPosition {
    r31 = r31 - 0x70;
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
    r29 = &saved_fp;
    [self defaultAdFrameInScreenSpace];
    v8 = v0;
    v9 = v1;
    v10 = v2;
    v11 = v3;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if ((CGRectEqualToRect([r19 previousDefaultPosition], @selector(previousDefaultPosition)) & 0x1) == 0x0) {
            [r19 setPreviousDefaultPosition:r2];
            r0 = [r19 mraidBridge];
            r0 = [r0 retain];
            [r0 fireSetDefaultPositionWithPositionRect:r2];
            [r0 release];
            r0 = [r19 mraidBridgeTwoPart];
            r0 = [r0 retain];
            [r0 fireSetDefaultPositionWithPositionRect:r2];
            [r0 release];
            r21 = [NSStringFromCGRect() retain];
            r22 = [[NSString stringWithFormat:@"Default Position: %@"] retain];
            r23 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r19 class]];
            [r23 release];
            [r22 release];
            [r21 release];
    }
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)bridge:(void *)arg2 handleNativeCommandResizeWithParameters:(void *)arg3 {
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
    r22 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    r0 = [r0 allKeys];
    r29 = &var_10;
    r21 = [r0 retain];
    if ([r22 currentState] != 0x2) goto loc_10047e310;

loc_10047e500:
    [r19 fireErrorEventForAction:r2 withMessage:r3];
    goto loc_10047e508;

loc_10047e508:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_10047e310:
    if ([r22 placementType] == 0x0) goto loc_10047e340;
    goto loc_10047e500;

loc_10047e340:
    if (([r21 containsObject:r2] & 0x1) == 0x0 || [r21 containsObject:r2] == 0x0 || [r21 containsObject:r2] == 0x0 || [r21 containsObject:r2] == 0x0) goto loc_10047e500;

loc_10047e3a8:
    r0 = [r20 objectForKey:@"width"];
    r0 = [r0 retain];
    [r0 floatValue];
    [r0 release];
    r0 = [r20 objectForKey:@"height"];
    r0 = [r0 retain];
    [r0 floatValue];
    [r0 release];
    r0 = [r20 objectForKey:@"offsetX"];
    r0 = [r0 retain];
    [r0 floatValue];
    v10 = v0;
    [r0 release];
    r0 = [r20 objectForKey:@"offsetY"];
    r0 = [r0 retain];
    [r0 floatValue];
    v11 = v0;
    [r0 release];
    r0 = [r20 objectForKey:@"allowOffscreen"];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    if (r0 != 0x0) {
            r0 = [r20 objectForKey:@"allowOffscreen"];
            r29 = r29;
            r0 = [r0 retain];
            var_A8 = [r0 boolValue];
            [r0 release];
    }
    else {
            var_A8 = 0x1;
    }
    [r26 release];
    r0 = [r20 objectForKey:@"customClosePosition"];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    if ([r0 length] != 0x0) {
            r0 = [r20 objectForKey:@"customClosePosition"];
            r29 = r29;
            r25 = [r0 retain];
    }
    else {
            r25 = @"top-right";
    }
    r24 = @selector(currentState);
    r23 = var_A8;
    asm { fcvt       d10, s10 };
    asm { fcvt       d11, s11 };
    [r26 release];
    if (objc_msgSend(r22, r24) == 0x1) {
            r0 = [r22 mraidAdView];
            r0 = [r0 retain];
            var_B0 = r0;
            var_C0 = [[r0 superview] retain];
            r0 = [r22 mraidAdView];
            r0 = [r0 retain];
            var_B8 = r0;
            [r0 frame];
            v9 = v10;
            v8 = v11;
            r0 = sub_1004aec5c();
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 rootViewController];
            r0 = [r0 retain];
            r27 = r25;
            r25 = r0;
            r0 = [r0 view];
            r29 = r29;
            r26 = [r0 retain];
            v0 = v0;
            v10 = v9;
            v1 = v1;
            v11 = v8;
            v2 = v2;
            v3 = v3;
            [var_C0 convertRect:r26 toView:r3];
            [r22 setMraidDefaultAdFrameInKeyWindow:r26];
            [r26 release];
            r0 = r25;
            r25 = r27;
            [r0 release];
            r0 = r23;
            r23 = var_A8;
            [r0 release];
            [var_B8 release];
            [var_C0 release];
            [var_B0 release];
    }
    asm { fcvt       d8, s14 };
    asm { fcvt       d9, s15 };
    r27 = [r22 adCloseButtonLocationFromString:r25];
    r0 = [r22 includeSafeAreaInsetsInCalculations];
    r0 = sub_1004aed94(r0);
    v12 = v0;
    v13 = v1;
    v14 = v2;
    v15 = v3;
    CGRectGetMinY(CGRectGetMinX(r0));
    if ((r23 & 0x1) == 0x0) {
            [[r22 class] adjustedFrameForFrame:@"customClosePosition" toFitIntoApplicationSafeArea:r3];
            v10 = v10;
            v11 = v11;
            v8 = v8;
            v9 = v9;
    }
    if (([[r22 class] isValidResizeFrame:r23 inApplicationSafeArea:r3 allowOffscreen:r4] & 0x1) == 0x0) goto loc_10047eb94;

loc_10047e80c:
    r0 = [r22 class];
    v0 = v10;
    v1 = v11;
    v2 = v8;
    v3 = v9;
    if (([r0 isValidCloseButtonPlacement:r27 inAdFrame:r3 inApplicationSafeArea:r4] & 0x1) == 0x0) goto loc_10047ebcc;

loc_10047e84c:
    r24 = @selector(currentState);
    r0 = [r22 mraidAdView];
    r0 = [r0 retain];
    [r0 setCloseButtonType:0x1];
    [r0 release];
    r0 = [r22 mraidAdView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setCloseButtonLocation:r27];
    [r0 release];
    if (objc_msgSend(r22, r24) == 0x1) {
            r0 = [r22 mraidAdView];
            r0 = [r0 retain];
            [r0 frame];
            [r22 setMraidDefaultAdFrame:@"customClosePosition"];
            [r0 release];
            r0 = [r22 mraidAdView];
            r0 = [r0 retain];
            r24 = [[r0 superview] retain];
            [r22 setOriginalSuperview:r24];
            [r24 release];
            [r0 release];
            [r22 mraidDefaultAdFrameInKeyWindow];
            r0 = [r22 mraidAdView];
            r0 = [r0 retain];
            [r0 setFrame:r24];
            [r0 release];
            sub_1004aed94([r22 includeSafeAreaInsetsInCalculations]);
            r0 = [r22 resizeBackgroundView];
            r0 = [r0 retain];
            [r0 setFrame:r24];
            [r0 release];
            r0 = sub_1004aec5c();
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 rootViewController];
            r0 = [r0 retain];
            r28 = r0;
            r0 = [r0 view];
            r0 = [r0 retain];
            var_A8 = r25;
            r24 = [[r22 resizeBackgroundView] retain];
            [r0 addSubview:r24];
            [r24 release];
            [r0 release];
            [r28 release];
            [r23 release];
            r0 = sub_1004aec5c();
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 rootViewController];
            r0 = [r0 retain];
            r24 = r0;
            r25 = [[r0 view] retain];
            r0 = [r22 mraidAdView];
            r29 = r29;
            r26 = [r0 retain];
            [r25 addSubview:r26];
            [r26 release];
            r0 = r25;
            r25 = var_A8;
            [r0 release];
            [r24 release];
            [r23 release];
            [r22 adWillPresentModalViewByExpanding:0x1];
    }
    r24 = [[r22 mraidAdView] retain];
    [r22 animateViewFromDefaultStateToResizedState:r24 withFrame:r3];
    goto loc_10047ec04;

loc_10047ec04:
    [r24 release];
    [r25 release];
    goto loc_10047e508;

loc_10047ebcc:
    r0 = [r22 mraidBridge];
    r0 = [r0 retain];
    r24 = r0;
    goto loc_10047ec00;

loc_10047ec00:
    [r0 fireErrorEventForAction:r2 withMessage:r3];
    goto loc_10047ec04;

loc_10047eb94:
    r0 = [r22 mraidBridge];
    r0 = [r0 retain];
    r24 = r0;
    goto loc_10047ec00;
}

-(void)updateScreenSize {
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
    sub_1004aeee4();
    v9 = v2;
    v8 = v3;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    [r19 previousScreenSize];
    if (d9 == d0) {
            asm { fccmp      d8, d1, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            [r19 setPreviousScreenSize:r2];
            r0 = [r19 mraidBridge];
            r0 = [r0 retain];
            [r0 fireSetScreenSize:r2];
            [r0 release];
            r0 = [r19 mraidBridgeTwoPart];
            r0 = [r0 retain];
            [r0 fireSetScreenSize:r2];
            [r0 release];
            r21 = [NSStringFromCGSize() retain];
            r22 = [[NSString stringWithFormat:@"Screen Size: %@"] retain];
            r23 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r19 class]];
            [r23 release];
            [r22 release];
            [r21 release];
    }
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)updateMaxSize {
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
    sub_1004aed94([self includeSafeAreaInsetsInCalculations]);
    v9 = v2;
    v8 = v3;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    [r19 previousMaxSize];
    if (d9 == d0) {
            asm { fccmp      d8, d1, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            [r19 setPreviousMaxSize:r2];
            r0 = [r19 mraidBridge];
            r0 = [r0 retain];
            [r0 fireSetMaxSize:r2];
            [r0 release];
            r0 = [r19 mraidBridgeTwoPart];
            r0 = [r0 retain];
            [r0 fireSetMaxSize:r2];
            [r0 release];
            r21 = [NSStringFromCGSize() retain];
            r22 = [[NSString stringWithFormat:@"Max Size: %@"] retain];
            r23 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r19 class]];
            [r23 release];
            [r22 release];
            [r21 release];
    }
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)updateOrientation {
    r21 = [self forceOrientationMask];
    r0 = [self expandModalViewController];
    r0 = [r0 retain];
    [r0 setSupportedOrientationMask:r21];
    [r0 release];
    r21 = [self forceOrientationMask];
    r0 = [self interstitialViewController];
    r0 = [r0 retain];
    [r0 setSupportedOrientationMask:r21];
    [r0 release];
    [self forceOrientationMask];
    r20 = [[NSString stringWithFormat:@"Orientation: %ud"] retain];
    r22 = [[MPLogEvent eventWithMessage:r20 level:0x14] retain];
    [MPLogging logEvent:r22 source:0x0 fromClass:[self class]];
    [r22 release];
    [r20 release];
    return;
}

-(void)changeStateTo:(unsigned long long)arg2 {
    [self setCurrentState:arg2];
    [self updateMRAIDProperties];
    r20 = [[MRStateProperty propertyWithState:[self currentState]] retain];
    [self fireChangeEventToBothBridgesForProperty:r20];
    [r20 release];
    return;
}

-(void)viewEnteredBackground {
    [self updateViewabilityWithBool:0x0];
    return;
}

-(void)updateEventSizeChange {
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
    r19 = self;
    [self activeAdFrameInScreenSpace];
    v8 = v2;
    v9 = v3;
    [r19 currentAdSize];
    if (d8 == d0) {
            asm { fccmp      d9, d1, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            [[r19 bridgeForActiveAdView] retain];
            [r19 setCurrentAdSize:r2];
            [r19 currentAdSize];
            r22 = [NSStringFromCGSize() retain];
            r24 = [[NSString stringWithFormat:@"Ad Size (Size Event): %@"] retain];
            r23 = [[MPLogEvent eventWithMessage:r24 level:0x14] retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r19 class]];
            [r23 release];
            [r24 release];
            [r22 release];
            [r20 fireSizeChangeEvent:r23];
            [r20 release];
    }
    return;
}

-(void)checkViewability {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self activeView];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (sub_1004af3b4() != 0x0) {
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            r22 = r0;
            if ([r0 applicationState] == 0x0) {
                    if (CPU_FLAGS & E) {
                            r21 = 0x1;
                    }
            }
            [r22 release];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 updateViewabilityWithBool:r21];
    return;
}

-(void *)viewControllerForPresentingMailVC {
    r0 = [self viewControllerForPresentingModalView];
    return r0;
}

-(void)updateViewabilityWithBool:(bool)arg2 {
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
    r21 = arg2;
    r19 = self;
    if (([self isViewable] ^ r21) == 0x1) {
            r8 = @"NO";
            if (r21 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r8 = @"NO";
                    }
                    else {
                            r8 = @"YES";
                    }
            }
            r24 = [[NSString stringWithFormat:r2] retain];
            r23 = [[MPLogEvent eventWithMessage:r24 level:0x14] retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r19 class]];
            [r23 release];
            [r24 release];
            [r19 setIsViewable:r21];
            r20 = [[MRViewableProperty propertyWithViewable:[r19 isViewable]] retain];
            [r19 fireChangeEventToBothBridgesForProperty:r20];
            [r20 release];
    }
    return;
}

-(void)adAlertManagerDidTriggerAlert:(void *)arg2 {
    [arg2 processAdAlertOnce];
    return;
}

-(void)adDidLoad {
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
    r20 = [[self mraidBridge] retain];
    [r19 configureMraidEnvironmentToShowAdForBridge:r20];
    [r20 release];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(adDidLoad:)];
    [r0 release];
    if (r23 != 0x0) {
            r21 = [[r19 delegate] retain];
            r19 = [[r19 mraidAdView] retain];
            [r21 adDidLoad:r19];
            [r19 release];
            [r21 release];
    }
    return;
}

-(void)adDidFailToLoad {
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
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(adDidFailToLoad:)];
    [r0 release];
    if (r23 != 0x0) {
            r21 = [[r19 delegate] retain];
            r19 = [[r19 mraidAdView] retain];
            [r21 adDidFailToLoad:r19];
            [r19 release];
            [r21 release];
    }
    return;
}

-(void)adWillClose {
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
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(adWillClose:)];
    [r0 release];
    if (r23 != 0x0) {
            r21 = [[r19 delegate] retain];
            r19 = [[r19 mraidAdView] retain];
            [r21 adWillClose:r19];
            [r19 release];
            [r21 release];
    }
    return;
}

-(void)adDidClose {
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
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(adDidClose:)];
    [r0 release];
    if (r23 != 0x0) {
            r21 = [[r19 delegate] retain];
            r19 = [[r19 mraidAdView] retain];
            [r21 adDidClose:r19];
            [r19 release];
            [r21 release];
    }
    return;
}

-(void)adWillPresentModalViewByExpanding:(bool)arg2 {
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
    r20 = arg2;
    r19 = self;
    [r19 setModalViewCount:[self modalViewCount] + 0x1];
    if ([r19 modalViewCount] != 0x0 && (r20 & 0x1) == 0x0) {
            [r19 appShouldSuspend];
    }
    if (r20 != 0x0) {
            r0 = [r19 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 respondsToSelector:@selector(adWillExpand:)];
            [r0 release];
            if (r23 != 0x0) {
                    r21 = [[r19 delegate] retain];
                    r19 = [[r19 mraidAdView] retain];
                    [r21 adWillExpand:r19];
                    [r19 release];
                    [r21 release];
            }
    }
    return;
}

-(void)adDidDismissModalView {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [r19 setModalViewCount:[self modalViewCount] - 0x1];
    if ([r19 modalViewCount] == 0x0) {
            [r19 appShouldResume];
    }
    return;
}

-(void)appShouldSuspend {
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
    if (([self isAppSuspended] & 0x1) == 0x0) {
            [r19 setIsAppSuspended:0x1];
            r0 = [r19 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 respondsToSelector:@selector(appShouldSuspendForAd:)];
            [r0 release];
            if (r23 != 0x0) {
                    r21 = [[r19 delegate] retain];
                    r19 = [[r19 mraidAdView] retain];
                    [r21 appShouldSuspendForAd:r19];
                    [r19 release];
                    [r21 release];
            }
    }
    return;
}

-(void *)mraidWebView {
    r0 = *(self + 0x18);
    return r0;
}

-(void)appShouldResume {
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
    if ([self isAppSuspended] != 0x0) {
            [r19 setIsAppSuspended:0x0];
            r0 = [r19 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 respondsToSelector:@selector(appShouldResumeFromAd:)];
            [r0 release];
            if (r23 != 0x0) {
                    r21 = [[r19 delegate] retain];
                    r19 = [[r19 mraidAdView] retain];
                    [r21 appShouldResumeFromAd:r19];
                    [r19 release];
                    [r21 release];
            }
    }
    return;
}

-(void)setMraidWebView:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void *)viewabilityTracker {
    r0 = *(self + 0x20);
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x28);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setViewabilityTracker:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x28, arg2);
    return;
}

-(void *)adConfiguration {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setAdConfiguration:(void *)arg2 {
    objc_storeStrong(self + 0x30, arg2);
    return;
}

-(void *)mraidBridge {
    r0 = *(self + 0x38);
    return r0;
}

-(void)setMraidBridge:(void *)arg2 {
    objc_storeStrong(self + 0x38, arg2);
    return;
}

-(void *)mraidBridgeTwoPart {
    r0 = *(self + 0x40);
    return r0;
}

-(void *)mraidAdView {
    r0 = *(self + 0x48);
    return r0;
}

-(void)setMraidBridgeTwoPart:(void *)arg2 {
    objc_storeStrong(self + 0x40, arg2);
    return;
}

-(void)setMraidAdView:(void *)arg2 {
    objc_storeStrong(self + 0x48, arg2);
    return;
}

-(void *)mraidAdViewTwoPart {
    r0 = *(self + 0x50);
    return r0;
}

-(void)setMraidAdViewTwoPart:(void *)arg2 {
    objc_storeStrong(self + 0x50, arg2);
    return;
}

-(void *)adPropertyUpdateTimer {
    r0 = *(self + 0x60);
    return r0;
}

-(void *)resizeBackgroundView {
    r0 = *(self + 0x58);
    return r0;
}

-(void)setResizeBackgroundView:(void *)arg2 {
    objc_storeStrong(self + 0x58, arg2);
    return;
}

-(unsigned long long)placementType {
    r0 = *(self + 0x68);
    return r0;
}

-(void)setPlacementType:(unsigned long long)arg2 {
    *(self + 0x68) = arg2;
    return;
}

-(void)setAdPropertyUpdateTimer:(void *)arg2 {
    objc_storeStrong(self + 0x60, arg2);
    return;
}

-(void *)expandModalViewController {
    r0 = *(self + 0x70);
    return r0;
}

-(void)setExpandModalViewController:(void *)arg2 {
    objc_storeStrong(self + 0x70, arg2);
    return;
}

-(void *)interstitialViewController {
    r0 = objc_loadWeakRetained(self + 0x78);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setInterstitialViewController:(void *)arg2 {
    objc_storeWeak(self + 0x78, arg2);
    return;
}

-(struct CGRect)mraidDefaultAdFrame {
    r0 = self;
    return r0;
}

-(void)setMraidDefaultAdFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0x108) = d0;
    *(self + 0x110) = d1;
    *(self + 0x118) = d2;
    *(self + 0x120) = d3;
    return;
}

-(struct CGRect)mraidDefaultAdFrameInKeyWindow {
    r0 = self;
    return r0;
}

-(void)setMraidDefaultAdFrameInKeyWindow:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0x128) = d0;
    *(self + 0x130) = d1;
    *(self + 0x138) = d2;
    *(self + 0x140) = d3;
    return;
}

-(struct CGSize)currentAdSize {
    r0 = self;
    return r0;
}

-(void)setCurrentAdSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0xd8) = d0;
    *(self + 0xe0) = d1;
    return;
}

-(unsigned long long)modalViewCount {
    r0 = *(self + 0x80);
    return r0;
}

-(void)setModalViewCount:(unsigned long long)arg2 {
    *(self + 0x80) = arg2;
    return;
}

-(unsigned long long)currentState {
    r0 = *(self + 0x88);
    return r0;
}

-(bool)isAppSuspended {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(bool)shouldUseUIWebView {
    r0 = *(int8_t *)(self + 0x9);
    return r0;
}

-(void)setCurrentState:(unsigned long long)arg2 {
    *(self + 0x88) = arg2;
    return;
}

-(void)setIsAppSuspended:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void)setShouldUseUIWebView:(bool)arg2 {
    *(int8_t *)(self + 0x9) = arg2;
    return;
}

-(bool)isViewable {
    r0 = *(int8_t *)(self + 0xa);
    return r0;
}

-(void *)originalSuperview {
    r0 = objc_loadWeakRetained(self + 0x90);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setOriginalSuperview:(void *)arg2 {
    objc_storeWeak(self + 0x90, arg2);
    return;
}

-(void)setIsViewable:(bool)arg2 {
    *(int8_t *)(self + 0xa) = arg2;
    return;
}

-(bool)isAnimatingAdSize {
    r0 = *(int8_t *)(self + 0xb);
    return r0;
}

-(void)setIsAnimatingAdSize:(bool)arg2 {
    *(int8_t *)(self + 0xb) = arg2;
    return;
}

-(bool)isAdLoading {
    r0 = *(int8_t *)(self + 0xc);
    return r0;
}

-(void)setIsAdLoading:(bool)arg2 {
    *(int8_t *)(self + 0xc) = arg2;
    return;
}

-(bool)adRequiresPrecaching {
    r0 = *(int8_t *)(self + 0xd);
    return r0;
}

-(void)setAdRequiresPrecaching:(bool)arg2 {
    *(int8_t *)(self + 0xd) = arg2;
    return;
}

-(bool)isAdVastVideoPlayer {
    r0 = *(int8_t *)(self + 0xe);
    return r0;
}

-(void)setIsAdVastVideoPlayer:(bool)arg2 {
    *(int8_t *)(self + 0xe) = arg2;
    return;
}

-(void *)expansionContentView {
    r0 = *(self + 0x98);
    return r0;
}

-(bool)didConfigureOrientationNotificationObservers {
    r0 = *(int8_t *)(self + 0xf);
    return r0;
}

-(void)setDidConfigureOrientationNotificationObservers:(bool)arg2 {
    *(int8_t *)(self + 0xf) = arg2;
    return;
}

-(void)setExpansionContentView:(void *)arg2 {
    objc_storeStrong(self + 0x98, arg2);
    return;
}

-(void)setDestinationDisplayAgent:(void *)arg2 {
    objc_storeStrong(self + 0xa0, arg2);
    return;
}

-(void *)destinationDisplayAgent {
    r0 = *(self + 0xa0);
    return r0;
}

-(void *)adAlertManager {
    r0 = *(self + 0xa8);
    return r0;
}

-(void)setAdAlertManager:(void *)arg2 {
    objc_storeStrong(self + 0xa8, arg2);
    return;
}

-(void *)adAlertManagerTwoPart {
    r0 = *(self + 0xb0);
    return r0;
}

-(void)setAdAlertManagerTwoPart:(void *)arg2 {
    objc_storeStrong(self + 0xb0, arg2);
    return;
}

-(unsigned long long)forceOrientationMask {
    r0 = *(self + 0xb8);
    return r0;
}

-(void)setForceOrientationMask:(unsigned long long)arg2 {
    *(self + 0xb8) = arg2;
    return;
}

-(long long)currentInterfaceOrientation {
    r0 = *(self + 0xc0);
    return r0;
}

-(void)setCurrentInterfaceOrientation:(long long)arg2 {
    *(self + 0xc0) = arg2;
    return;
}

-(void *)forceOrientationAfterAnimationBlock {
    r0 = objc_getProperty(self, _cmd, 0xc8, 0x0);
    return r0;
}

-(void)setForceOrientationAfterAnimationBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setTask:(void *)arg2 {
    objc_storeStrong(self + 0xd0, arg2);
    return;
}

-(void *)task {
    r0 = *(self + 0xd0);
    return r0;
}

-(struct CGRect)previousCurrentPosition {
    r0 = self;
    return r0;
}

-(void)setPreviousCurrentPosition:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0x148) = d0;
    *(self + 0x150) = d1;
    *(self + 0x158) = d2;
    *(self + 0x160) = d3;
    return;
}

-(struct CGRect)previousDefaultPosition {
    r0 = self;
    return r0;
}

-(void)setPreviousDefaultPosition:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0x168) = d0;
    *(self + 0x170) = d1;
    *(self + 0x178) = d2;
    *(self + 0x180) = d3;
    return;
}

-(struct CGSize)previousScreenSize {
    r0 = self;
    return r0;
}

-(void)setPreviousScreenSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0xe8) = d0;
    *(self + 0xf0) = d1;
    return;
}

-(bool)includeSafeAreaInsetsInCalculations {
    r0 = *(int8_t *)(self + 0x10);
    return r0;
}

-(struct CGSize)previousMaxSize {
    r0 = self;
    return r0;
}

-(void)setPreviousMaxSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0xf8) = d0;
    *(self + 0x100) = d1;
    return;
}

-(void)setIncludeSafeAreaInsetsInCalculations:(bool)arg2 {
    *(int8_t *)(self + 0x10) = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0xd0, 0x0);
    objc_storeStrong(self + 0xc8, 0x0);
    objc_storeStrong(self + 0xb0, 0x0);
    objc_storeStrong(self + 0xa8, 0x0);
    objc_storeStrong(self + 0xa0, 0x0);
    objc_storeStrong(self + 0x98, 0x0);
    objc_destroyWeak(self + 0x90);
    objc_destroyWeak(self + 0x78);
    objc_storeStrong(self + 0x70, 0x0);
    objc_storeStrong(self + 0x60, 0x0);
    objc_storeStrong(self + 0x58, 0x0);
    objc_storeStrong(self + 0x50, 0x0);
    objc_storeStrong(self + 0x48, 0x0);
    objc_storeStrong(self + 0x40, 0x0);
    objc_storeStrong(self + 0x38, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_destroyWeak(self + 0x28);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    return;
}

@end