@implementation MPAdWebViewAgent

-(void)dealloc {
    r0 = [self viewabilityTracker];
    r0 = [r0 retain];
    [r0 stopTracking];
    [r0 release];
    r0 = [self userInteractionRecognizer];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    r0 = [self userInteractionRecognizer];
    r0 = [r0 retain];
    [r0 removeTarget:self action:0x0];
    [r0 release];
    r0 = [self destinationDisplayAgent];
    r0 = [r0 retain];
    [r0 cancel];
    [r0 release];
    r0 = [self destinationDisplayAgent];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    r0 = [self view];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    [[&var_30 super] dealloc];
    return;
}

-(void)handleInteraction:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([arg2 state] == 0x3) {
            [r19 setUserInteractedWithWebView:0x1];
    }
    return;
}

-(bool)gestureRecognizer:(void *)arg2 shouldRecognizeSimultaneouslyWithGestureRecognizer:(void *)arg3 {
    return 0x1;
}

-(void *)initWithAdWebViewFrame:(struct CGRect)arg2 delegate:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
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
    r19 = [r2 retain];
    r0 = [[&var_60 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            *(int128_t *)(r20 + 0x48) = d11;
            *(int128_t *)(r20 + 0x50) = d10;
            *(int128_t *)(r20 + 0x58) = d9;
            *(int128_t *)(r20 + 0x60) = d8;
            r21 = [[MPAdDestinationDisplayAgent agentWithDelegate:r20] retain];
            [r20 setDestinationDisplayAgent:r21];
            [r21 release];
            [r20 setDelegate:r19];
            [r20 setShouldHandleRequests:0x1];
            [r20 setDidFireClickImpression:0x0];
            r0 = [MPCoreInstanceProvider sharedProvider];
            r0 = [r0 retain];
            r23 = [[r0 buildMPAdAlertManagerWithDelegate:r20] retain];
            [r20 setAdAlertManager:r23];
            [r23 release];
            [r0 release];
            r22 = [objc_alloc() initWithTarget:r20 action:@selector(handleInteraction:)];
            [r20 setUserInteractionRecognizer:r22];
            [r22 release];
            r0 = [r20 userInteractionRecognizer];
            r0 = [r0 retain];
            [r0 setCancelsTouchesInView:0x0];
            [r0 release];
            r0 = [r20 userInteractionRecognizer];
            r0 = [r0 retain];
            [r0 setDelegate:r20];
            [r0 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)viewControllerForPresentingMailVC {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 viewControllerForPresentingModalView] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)adAlertManagerDidTriggerAlert:(void *)arg2 {
    r0 = [self adAlertManager];
    r0 = [r0 retain];
    [r0 processAdAlertOnce];
    [r0 release];
    return;
}

-(void)invokeJavaScriptForEvent:(unsigned long long)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (r2 == 0x1) goto loc_100512170;

loc_100512118:
    if (r2 != 0x0) goto .l1;

loc_10051211c:
    if (([r19 shouldStartViewabilityDuringInitialization] & 0x1) == 0x0) {
            [r19 startViewabilityTracker];
    }
    r0 = [r19 view];
    r0 = [r0 retain];
    r19 = r0;
    goto loc_10051219c;

loc_10051219c:
    [[[r0 stringByEvaluatingJavaScriptFromString:r2] retain] release];
    [r19 release];
    return;

.l1:
    return;

loc_100512170:
    r0 = [r19 view];
    r0 = [r0 retain];
    r19 = r0;
    goto loc_10051219c;
}

-(void)startViewabilityTracker {
    r0 = [self viewabilityTracker];
    r0 = [r0 retain];
    [r0 startTracking];
    [r0 release];
    return;
}

-(void)disableRequestHandling {
    [self setShouldHandleRequests:0x0];
    r0 = [self destinationDisplayAgent];
    r0 = [r0 retain];
    [r0 cancel];
    [r0 release];
    return;
}

-(void)loadConfiguration:(void *)arg2 {
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
    r20 = [arg2 retain];
    [r19 setConfiguration:r20];
    r0 = [r19 view];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 view];
            r0 = [r0 retain];
            [r0 setDelegate:r2];
            [r22 release];
            r0 = objc_msgSend(r19, r21);
            r29 = r29;
            r0 = [r0 retain];
            [r0 removeFromSuperview];
            [r0 release];
            r2 = 0x0;
            [r19 setView:r2];
    }
    r25 = objc_alloc();
    [r19 frame];
    [r25 initWithFrame:r2];
    [r19 setView:r2];
    [r25 release];
    r24 = [r19 isInterstitialAd];
    r0 = objc_msgSend(r19, r21);
    r0 = [r0 retain];
    [r0 setShouldConformToSafeArea:r24];
    [r0 release];
    r0 = objc_msgSend(r19, r21);
    r0 = [r0 retain];
    [r0 setDelegate:r2];
    [r24 release];
    r23 = [objc_msgSend(r19, r21) retain];
    r0 = [r19 userInteractionRecognizer];
    r29 = r29;
    r24 = [r0 retain];
    [r23 addGestureRecognizer:r24];
    [r24 release];
    [r23 release];
    if ([r20 adType] != 0x1 && [r20 hasPreferredSize] != 0x0) {
            r0 = [r19 view];
            r0 = [r0 retain];
            [r0 frame];
            [r0 release];
            [r20 preferredSize];
            [r20 preferredSize];
            r0 = [r19 view];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setFrame:r2];
            [r22 release];
    }
    r0 = [r19 view];
    r0 = [r0 retain];
    [r0 mp_setScrollable:0x0];
    [r0 release];
    r0 = [r19 view];
    r0 = [r0 retain];
    [r0 disableJavaScriptDialogs];
    [r0 release];
    [r19 init3rdPartyViewabilityTrackers];
    r21 = [[r19 view] retain];
    r22 = [[r20 adResponseHTMLString] retain];
    r24 = [[MPAPIEndpoints baseURL] retain];
    r23 = [[NSURL URLWithString:r24] retain];
    [r21 loadHTMLString:r22 baseURL:r23];
    [r23 release];
    [r24 release];
    [r22 release];
    [r21 release];
    [r19 initAdAlertManager];
    [r20 release];
    return;
}

-(void)enableRequestHandling {
    [self setShouldHandleRequests:0x1];
    return;
}

-(void *)viewControllerForPresentingModalView {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 viewControllerForPresentingModalView] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)displayAgentWillLeaveApplication {
    r20 = [[self delegate] retain];
    r19 = [[self view] retain];
    [r20 adActionWillLeaveApplication:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void)displayAgentWillPresentModal {
    r20 = [[self delegate] retain];
    r19 = [[self view] retain];
    [r20 adActionWillBegin:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void)displayAgentDidDismissModal {
    r20 = [[self delegate] retain];
    r19 = [[self view] retain];
    [r20 adActionDidFinish:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void *)adConfiguration {
    r0 = [self configuration];
    return r0;
}

-(void)webViewDidStartLoad:(void *)arg2 {
    r0 = [self view];
    r0 = [r0 retain];
    [r0 disableJavaScriptDialogs];
    [r0 release];
    return;
}

-(bool)webView:(void *)arg2 shouldStartLoadWithRequest:(void *)arg3 navigationType:(long long)arg4 {
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
    r22 = arg4;
    r21 = self;
    r19 = [arg3 retain];
    if ([r21 shouldHandleRequests] == 0x0) goto loc_100512490;

loc_100512458:
    r0 = [r19 URL];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 mp_isMoPubScheme] == 0x0) goto loc_100512498;

loc_100512484:
    r1 = @selector(performActionForMoPubSpecificURL:);
    goto loc_1005124d4;

loc_1005124d4:
    objc_msgSend(r21, r1);
    goto loc_1005124e0;

loc_1005124e0:
    r21 = 0x0;
    goto loc_1005124e4;

loc_1005124e4:
    [r20 release];
    goto loc_1005124ec;

loc_1005124ec:
    [r19 release];
    r0 = r21;
    return r0;

loc_100512498:
    r22 = [r21 shouldIntercept:r20 navigationType:r22];
    r0 = [r21 userInteractedWithWebView];
    if (r22 == 0x0) goto loc_10051250c;

loc_1005124c8:
    if ((r0 & 0x1) == 0x0) goto loc_100512518;

loc_1005124cc:
    r1 = @selector(interceptURL:);
    goto loc_1005124d4;

loc_100512518:
    r24 = [[NSString stringWithFormat:@"Redirect without user interaction detected"] retain];
    r23 = [[MPLogEvent eventWithMessage:r24 level:0x1e] retain];
    [MPLogging logEvent:r23 source:0x0 fromClass:[r21 class]];
    [r23 release];
    [r24 release];
    goto loc_1005124e0;

loc_10051250c:
    if ((r0 & 0x1) != 0x0) {
            r21 = 0x1;
    }
    else {
            r21 = [r20 mp_isSafeForLoadingWithoutUserAction];
    }
    goto loc_1005124e4;

loc_100512490:
    r21 = 0x0;
    goto loc_1005124ec;
}

-(bool)shouldIntercept:(void *)arg2 navigationType:(long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r21 != 0x0 && ([r0 mp_hasTelephoneScheme] & 0x1) == 0x0 && ([r19 mp_hasTelephonePromptScheme] & 0x1) == 0x0) {
            if (r21 == 0x5) {
                    if (([r20 userInteractedWithWebView] & 0x1) != 0x0) {
                            r20 = 0x1;
                    }
                    else {
                            r20 = 0x0;
                    }
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)performActionForMoPubSpecificURL:(void *)arg2 {
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
    r19 = [arg2 retain];
    r26 = [[NSString stringWithFormat:@"MPAdWebView - loading MoPub URL: %@"] retain];
    r0 = [MPLogEvent eventWithMessage:r26 level:0x14];
    r29 = &saved_fp;
    r27 = [r0 retain];
    [MPLogging logEvent:r27 source:0x0 fromClass:[r20 class]];
    [r27 release];
    [r26 release];
    r0 = [r19 mp_mopubHostCommand];
    if (r0 == 0x3) goto loc_100512754;

loc_100512700:
    if (r0 == 0x2) goto loc_100512798;

loc_100512708:
    if (r0 != 0x1) goto loc_1005127e8;

loc_100512710:
    r21 = [[r20 delegate] retain];
    r22 = [[r20 view] retain];
    r1 = @selector(adDidClose:);
    goto loc_1005127d8;

loc_1005127d8:
    objc_msgSend(r21, r1);
    goto loc_100512888;

loc_100512888:
    [r22 release];
    [r21 release];
    [r19 release];
    return;

loc_1005127e8:
    r21 = [[r19 absoluteString] retain];
    r22 = [[NSString stringWithFormat:@"MPAdWebView - unsupported MoPub URL: %@"] retain];
    r23 = [[MPLogEvent eventWithMessage:r22 level:0x1e] retain];
    [MPLogging logEvent:r23 source:0x0 fromClass:[r20 class]];
    [r23 release];
    goto loc_100512888;

loc_100512798:
    r21 = [[r20 delegate] retain];
    r22 = [[r20 view] retain];
    r1 = @selector(adDidFinishLoadingAd:);
    goto loc_1005127d8;

loc_100512754:
    r21 = [[r20 delegate] retain];
    r22 = [[r20 view] retain];
    r1 = @selector(adDidFailToLoadAd:);
    goto loc_1005127d8;
}

-(void)init3rdPartyViewabilityTrackers {
    r20 = objc_alloc();
    r21 = [[self view] retain];
    r0 = [self configuration];
    r0 = [r0 retain];
    r20 = [r20 initWithAdView:r21 isVideo:[r0 isVastVideoPlayer] startTrackingImmediately:[self shouldStartViewabilityDuringInitialization]];
    [self setViewabilityTracker:r20];
    [r20 release];
    [r0 release];
    [r21 release];
    return;
}

-(void)interceptURL:(void *)arg2 {
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
    r20 = self;
    r19 = [[arg2 retain] retain];
    r0 = [r20 configuration];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 clickTrackingURL];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = r0;
    if (r0 == 0x0) goto loc_100512af8;

loc_1005129bc:
    r26 = [r20 didFireClickImpression];
    [r25 release];
    [r21 release];
    r24 = r19;
    if ((r26 & 0x1) != 0x0) goto loc_100512b0c;

loc_1005129e8:
    [r20 setDidFireClickImpression:0x1];
    r0 = [r20 configuration];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 clickTrackingURL];
    r0 = [r0 retain];
    r23 = r0;
    r25 = [[r0 absoluteString] retain];
    r0 = [r19 absoluteString];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 mp_URLEncodedString];
    r0 = [r0 retain];
    r21 = [[NSString stringWithFormat:@"%@&r=%@"] retain];
    [r0 release];
    [r24 release];
    [r25 release];
    [r23 release];
    [r22 release];
    r0 = [NSURL URLWithString:r2];
    r29 = r29;
    r24 = [r0 retain];
    r25 = r19;
    goto loc_100512afc;

loc_100512afc:
    [r25 release];
    [r21 release];
    goto loc_100512b0c;

loc_100512b0c:
    r0 = [r20 destinationDisplayAgent];
    r0 = [r0 retain];
    [r0 displayDestinationForURL:r24];
    [r0 release];
    [r24 release];
    [r19 release];
    return;

loc_100512af8:
    r24 = r19;
    goto loc_100512afc;
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

-(void)rotateToOrientation:(long long)arg2 {
    [self forceRedraw];
    return;
}

-(bool)isInterstitialAd {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self configuration];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 adType] == 0x1) {
            if (CPU_FLAGS & E) {
                    r20 = 0x1;
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)setView:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void)initAdAlertManager {
    r21 = [[self configuration] retain];
    r0 = [self adAlertManager];
    r0 = [r0 retain];
    [r0 setAdConfiguration:r21];
    [r0 release];
    [r21 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    r22 = r0;
    r23 = [[r0 adUnitId] retain];
    r0 = [self adAlertManager];
    r0 = [r0 retain];
    [r0 setAdUnitId:r23];
    [r0 release];
    [r23 release];
    [r22 release];
    r22 = [[self view] retain];
    r0 = [self adAlertManager];
    r0 = [r0 retain];
    [r0 setTargetAdView:r22];
    [r0 release];
    [r22 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    r21 = r0;
    r22 = [[r0 location] retain];
    r0 = [self adAlertManager];
    r0 = [r0 retain];
    [r0 setLocation:r22];
    [r0 release];
    [r22 release];
    [r21 release];
    r0 = [self adAlertManager];
    r0 = [r0 retain];
    [r0 beginMonitoringAlerts];
    [r0 release];
    return;
}

-(void)forceRedraw {
    r0 = self;
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
    d0 = **_NSFoundationVersionNumber;
    asm { frintm     d0, d0 };
    if (d0 > *0x100be0110) {
            r19 = r0;
            r0 = [r0 view];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 respondsToSelector:r2];
            [r0 release];
            if (r23 != 0x0) {
                    r0 = [r19 view];
                    r0 = [r0 retain];
                    r20 = [[r0 scrollView] retain];
                    [r0 release];
                    [r20 contentInset];
                    [r20 setContentInset:@selector(scrollView)];
                    [r20 setContentInset:@selector(scrollView)];
                    [r20 release];
            }
    }
    return;
}

-(void *)view {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x18, arg2);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x18);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)viewabilityTracker {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setConfiguration:(void *)arg2 {
    objc_storeStrong(self + 0x28, arg2);
    return;
}

-(void)setViewabilityTracker:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void *)configuration {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setDestinationDisplayAgent:(void *)arg2 {
    objc_storeStrong(self + 0x30, arg2);
    return;
}

-(void)setShouldHandleRequests:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void *)destinationDisplayAgent {
    r0 = *(self + 0x30);
    return r0;
}

-(bool)shouldHandleRequests {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setUserInteractedWithWebView:(bool)arg2 {
    *(int8_t *)(self + 0x9) = arg2;
    return;
}

-(bool)userInteractedWithWebView {
    r0 = *(int8_t *)(self + 0x9);
    return r0;
}

-(void)setAdAlertManager:(void *)arg2 {
    objc_storeStrong(self + 0x38, arg2);
    return;
}

-(void *)userInteractionRecognizer {
    r0 = *(self + 0x40);
    return r0;
}

-(void *)adAlertManager {
    r0 = *(self + 0x38);
    return r0;
}

-(struct CGRect)frame {
    r0 = self;
    return r0;
}

-(void)setUserInteractionRecognizer:(void *)arg2 {
    objc_storeStrong(self + 0x40, arg2);
    return;
}

-(bool)didFireClickImpression {
    r0 = *(int8_t *)(self + 0xa);
    return r0;
}

-(void)setFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    *(self + 0x48) = d0;
    *(self + 0x50) = d1;
    *(self + 0x58) = d2;
    *(self + 0x60) = d3;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x40, 0x0);
    objc_storeStrong(self + 0x38, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_destroyWeak(self + 0x18);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

-(void)setDidFireClickImpression:(bool)arg2 {
    *(int8_t *)(self + 0xa) = arg2;
    return;
}

@end