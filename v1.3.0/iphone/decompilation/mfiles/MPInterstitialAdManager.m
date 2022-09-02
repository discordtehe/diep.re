@implementation MPInterstitialAdManager

-(void *)initWithDelegate:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r21 = [objc_alloc() initWithDelegate:r20];
            [r20 setCommunicator:r21];
            [r21 release];
            [r20 setDelegate:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)dealloc {
    r0 = [self communicator];
    r0 = [r0 retain];
    [r0 cancel];
    [r0 release];
    r0 = [self communicator];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    [self setAdapter:0x0];
    [[&var_30 super] dealloc];
    return;
}

-(void)setAdapter:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r21 = self;
    r20 = [arg2 retain];
    r0 = [r21 adapter];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != r20) {
            r0 = [r21 adapter];
            r0 = [r0 retain];
            [r0 unregisterDelegate];
            [r0 release];
            objc_storeStrong(r21 + 0x18, r19);
    }
    [r20 release];
    return;
}

-(void)loadAdWithURL:(void *)arg2 {
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
    if ([r20 loading] != 0x0) {
            r21 = [[NSError adAlreadyLoading] retain];
            r23 = [[MPLogEvent error:r21 message:0x0] retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r20 class]];
            [r23 release];
    }
    else {
            [r20 setLoading:0x1];
            r0 = [r20 communicator];
            r0 = [r0 retain];
            r21 = r0;
            [r0 loadURL:r19];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)loadInterstitialWithAdUnitID:(void *)arg2 targeting:(void *)arg3 {
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
    r20 = [arg3 retain];
    r0 = [MPLogEvent adLoadAttempt];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [MPLogging logEvent:r23 source:r19 fromClass:[r21 class]];
    [r23 release];
    if ([r21 ready] != 0x0) {
            r0 = [r21 delegate];
            r0 = [r0 retain];
            r22 = r0;
            r1 = @selector(managerDidLoadInterstitial:);
    }
    else {
            [r21 setTargeting:r20];
            r22 = [[MPAdServerURLBuilder URLWithAdUnitID:r19 targeting:r20] retain];
            r1 = @selector(loadAdWithURL:);
            r0 = r21;
    }
    objc_msgSend(r0, r1);
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)location {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 location] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)presentInterstitialFromViewController:(void *)arg2 {
    var_50 = r28;
    stack[-88] = r27;
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
    r20 = self;
    r19 = [arg2 retain];
    r23 = [[MPLogEvent adShowAttempt] retain];
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 interstitialAdController];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 adUnitId];
    r29 = &saved_fp;
    r27 = [r0 retain];
    [MPLogging logEvent:r23 source:r27 fromClass:[r20 class]];
    [r27 release];
    [r26 release];
    [r25 release];
    [r23 release];
    if (([r20 ready] & 0x1) != 0x0) {
            r0 = [r20 adapter];
            r0 = [r0 retain];
            r23 = r0;
            [r0 showInterstitialFromViewController:r19];
    }
    else {
            r23 = [[NSString stringWithFormat:@"Interstitial ad view is not ready to be shown"] retain];
            r25 = [[MPLogEvent eventWithMessage:r23 level:0x1e] retain];
            [MPLogging logEvent:r25 source:0x0 fromClass:[r20 class]];
            [r25 release];
    }
    [r23 release];
    [r19 release];
    return;
}

-(void *)interstitialAdController {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 interstitialAdController] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)interstitialDelegate {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 interstitialDelegate] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)communicatorDidFailWithError:(void *)arg2 {
    r21 = [arg2 retain];
    [self setReady:0x0];
    [self setLoading:0x0];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 manager:self didFailToLoadInterstitialWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)communicatorDidReceiveAdConfigurations:(void *)arg2 {
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
    r19 = self;
    r20 = [[NSMutableArray arrayWithArray:arg2] retain];
    [r19 setRemainingConfigurations:r20];
    [r20 release];
    r0 = [r19 remainingConfigurations];
    r0 = [r0 retain];
    r22 = [[r0 removeFirst] retain];
    [r19 setRequestingConfiguration:r22];
    [r22 release];
    [r0 release];
    r0 = [r19 remainingConfigurations];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 count] != 0x0) {
            [r20 release];
            r20 = [[r19 requestingConfiguration] retain];
            [r19 fetchAdWithConfiguration:r20];
    }
    else {
            r0 = [r19 requestingConfiguration];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r20 release];
            if (r0 != 0x0) {
                    r20 = [[r19 requestingConfiguration] retain];
                    [r19 fetchAdWithConfiguration:r20];
            }
            else {
                    r0 = [r19 delegate];
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = [r0 interstitialAdController];
                    r0 = [r0 retain];
                    r27 = [[r0 adUnitId] retain];
                    r25 = [[NSString stringWithFormat:*0x100e7f420] retain];
                    r24 = [[MPLogEvent eventWithMessage:r25 level:0x1e] retain];
                    [MPLogging logEvent:r24 source:0x0 fromClass:[r19 class]];
                    [r24 release];
                    [r25 release];
                    [r27 release];
                    [r0 release];
                    [r21 release];
                    [r19 setLoading:0x0];
                    r20 = [[r19 delegate] retain];
                    r21 = [[NSError errorWithCode:0x0] retain];
                    [r20 manager:r19 didFailToLoadInterstitialWithError:r21];
                    [r21 release];
            }
    }
    [r20 release];
    return;
}

-(void)setUpAdapterWithConfiguration:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 communicator];
    r0 = [r0 retain];
    [r0 sendBeforeLoadUrlWithConfiguration:r19];
    [r0 release];
    r0 = [NSDate now];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [r20 setAdapterLoadStartTimestamp:r19];
    [r0 release];
    if ([r19 customEventClass] != 0x0) {
            r21 = [objc_alloc() initWithDelegate:r20];
            [r20 setAdapter:r21];
            r22 = [[r20 adapter] retain];
            r20 = [[r20 targeting] retain];
            [r22 _getAdWithConfiguration:r19 targeting:r20];
            [r20 release];
            [r22 release];
            [r21 release];
    }
    else {
            [r20 adapter:0x0 didFailToLoadAdWithError:0x0];
    }
    [r19 release];
    return;
}

-(unsigned long long)adTypeForAdServerCommunicator:(void *)arg2 {
    return 0x1;
}

-(void)fetchAdWithConfiguration:(void *)arg2 {
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
    r0 = [arg2 retain];
    r26 = r0;
    r27 = [[r0 networkType] retain];
    r28 = [[NSString stringWithFormat:@"Interstitial ad view is fetching ad network type: %@"] retain];
    r0 = [MPLogEvent eventWithMessage:r28 level:0x1e];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r21 = self;
    [MPLogging logEvent:r19 source:0x0 fromClass:[self class]];
    [r19 release];
    [r28 release];
    [r27 release];
    if ([r26 adUnitWarmingUp] == 0x0) goto loc_1004b2fd8;

loc_1004b2e60:
    r27 = r21;
    r0 = [r21 delegate];
    r0 = [r0 retain];
    var_60 = r26;
    r26 = r0;
    r0 = [r0 interstitialAdController];
    r0 = [r0 retain];
    r25 = [[r0 adUnitId] retain];
    r21 = [[NSString stringWithFormat:r2] retain];
    r19 = [[MPLogEvent eventWithMessage:r21 level:0x1e] retain];
    [MPLogging logEvent:r19 source:0x0 fromClass:[r27 class]];
    [r19 release];
    [r21 release];
    [r25 release];
    [r0 release];
    r0 = r26;
    r26 = var_60;
    [r0 release];
    [r27 setLoading:0x0];
    r19 = [[r27 delegate] retain];
    r21 = [[NSError errorWithCode:0x1] retain];
    r0 = r19;
    goto loc_1004b3194;

loc_1004b3194:
    [r0 manager:r2 didFailToLoadInterstitialWithError:r3];
    [r21 release];
    [r19 release];
    goto loc_1004b31c4;

loc_1004b31c4:
    [r26 release];
    return;

loc_1004b2fd8:
    r28 = r21;
    r20 = @selector(stringWithFormat:);
    r0 = [r26 networkType];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 isEqualToString:r2];
    [r0 release];
    if (r21 == 0x0) goto loc_1004b31b0;

loc_1004b3028:
    r0 = [r28 delegate];
    r0 = [r0 retain];
    var_60 = r26;
    r26 = r0;
    r0 = [r0 interstitialAdController];
    r0 = [r0 retain];
    r25 = [[r0 adUnitId] retain];
    r21 = [objc_msgSend(@class(NSString), r20) retain];
    r19 = [[MPLogEvent eventWithMessage:r21 level:0x1e] retain];
    [MPLogging logEvent:r19 source:0x0 fromClass:[r28 class]];
    [r19 release];
    [r21 release];
    [r25 release];
    [r0 release];
    r0 = r26;
    r26 = var_60;
    [r0 release];
    [r28 setLoading:0x0];
    r19 = [[r28 delegate] retain];
    r21 = [[NSError errorWithCode:0x0] retain];
    r0 = r19;
    goto loc_1004b3194;

loc_1004b31b0:
    [r28 setUpAdapterWithConfiguration:r26];
    goto loc_1004b31c4;
}

-(void *)adUnitIDForAdServerCommunicator:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 adUnitId] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)adapterDidFinishLoadingAd:(void *)arg2 {
    [self setRemainingConfigurations:0x0];
    [self setReady:0x1];
    [self setLoading:0x0];
    r0 = [NSDate now];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [self adapterLoadStartTimestamp];
    [r0 release];
    r20 = [[self communicator] retain];
    r21 = [[self requestingConfiguration] retain];
    [r20 sendAfterLoadUrlWithConfiguration:r21 adapterLoadDuration:0x1 adapterLoadResult:r4];
    [r21 release];
    [r20 release];
    r21 = [[MPLogEvent adDidLoad] retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 interstitialAdController];
    r0 = [r0 retain];
    r25 = [[r0 adUnitId] retain];
    [MPLogging logEvent:r21 source:r25 fromClass:[self class]];
    [r25 release];
    [r0 release];
    [r23 release];
    [r21 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 managerDidLoadInterstitial:self];
    [r0 release];
    return;
}

-(void)interstitialWillAppearForAdapter:(void *)arg2 {
    r21 = [[MPLogEvent adWillAppear] retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 interstitialAdController];
    r0 = [r0 retain];
    r25 = [[r0 adUnitId] retain];
    [MPLogging logEvent:r21 source:r25 fromClass:[self class]];
    [r25 release];
    [r0 release];
    [r23 release];
    [r21 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 managerWillPresentInterstitial:self];
    [r0 release];
    return;
}

-(void)interstitialDidAppearForAdapter:(void *)arg2 {
    r21 = [[MPLogEvent adDidAppear] retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 interstitialAdController];
    r0 = [r0 retain];
    r25 = [[r0 adUnitId] retain];
    [MPLogging logEvent:r21 source:r25 fromClass:[self class]];
    [r25 release];
    [r0 release];
    [r23 release];
    [r21 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 managerDidPresentInterstitial:self];
    [r0 release];
    return;
}

-(void)interstitialWillDisappearForAdapter:(void *)arg2 {
    r21 = [[MPLogEvent adWillDisappear] retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 interstitialAdController];
    r0 = [r0 retain];
    r25 = [[r0 adUnitId] retain];
    [MPLogging logEvent:r21 source:r25 fromClass:[self class]];
    [r25 release];
    [r0 release];
    [r23 release];
    [r21 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 managerWillDismissInterstitial:self];
    [r0 release];
    return;
}

-(void)interstitialDidDisappearForAdapter:(void *)arg2 {
    [self setReady:0x0];
    r21 = [[MPLogEvent adDidDisappear] retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 interstitialAdController];
    r0 = [r0 retain];
    r25 = [[r0 adUnitId] retain];
    [MPLogging logEvent:r21 source:r25 fromClass:[self class]];
    [r25 release];
    [r0 release];
    [r23 release];
    [r21 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 managerDidDismissInterstitial:self];
    [r0 release];
    return;
}

-(void)adapter:(void *)arg2 didFailToLoadAdWithError:(void *)arg3 {
    r3 = arg3;
    r31 = r31 - 0x80;
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
    r19 = self;
    if (arg2 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r23 = 0x1;
            }
    }
    r21 = @selector(now);
    r22 = [r3 retain];
    r0 = objc_msgSend(@class(NSDate), r21);
    r29 = r29;
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    v8 = v0;
    [r19 adapterLoadStartTimestamp];
    [r0 release];
    r20 = [r22 isAdRequestTimedOutError];
    [r22 release];
    r8 = r23 << 0x1;
    if (r20 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r21 = r8;
            }
            else {
                    r21 = 0x3;
            }
    }
    r22 = [[r19 communicator] retain];
    r23 = [[r19 requestingConfiguration] retain];
    [r22 sendAfterLoadUrlWithConfiguration:r23 adapterLoadDuration:r21 adapterLoadResult:r4];
    [r23 release];
    [r22 release];
    r0 = [r19 remainingConfigurations];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 count];
    [r0 release];
    r0 = r19;
    if (r23 != 0x0) {
            r0 = [r0 remainingConfigurations];
            r0 = [r0 retain];
            r22 = [[r0 removeFirst] retain];
            [r19 setRequestingConfiguration:r22];
            [r22 release];
            [r0 release];
            r21 = [[r19 requestingConfiguration] retain];
            [r19 fetchAdWithConfiguration:r21];
    }
    else {
            r0 = [r0 requestingConfiguration];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 nextURL];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r21 release];
            [r19 setReady:0x0];
            [r19 setLoading:0x0];
            if (r0 != 0x0) {
                    r0 = [r19 requestingConfiguration];
                    r0 = [r0 retain];
                    r21 = r0;
                    r20 = [[r0 nextURL] retain];
                    [r19 loadAdWithURL:r20];
            }
            else {
                    r0 = [r19 delegate];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 interstitialAdController];
                    r0 = [r0 retain];
                    r28 = [[r0 adUnitId] retain];
                    r25 = [[NSString stringWithFormat:*0x100e7f420] retain];
                    r21 = [[NSError errorWithCode:0x0 localizedDescription:r25] retain];
                    [r25 release];
                    [r28 release];
                    [r0 release];
                    [r24 release];
                    r24 = [[MPLogEvent adFailedToLoadWithError:r21] retain];
                    r0 = [r19 delegate];
                    r0 = [r0 retain];
                    r26 = r0;
                    r0 = [r0 interstitialAdController];
                    r0 = [r0 retain];
                    r23 = [[r0 adUnitId] retain];
                    [MPLogging logEvent:r24 source:r23 fromClass:[r19 class]];
                    [r23 release];
                    [r0 release];
                    [r26 release];
                    [r24 release];
                    r0 = [r19 delegate];
                    r0 = [r0 retain];
                    r20 = r0;
                    [r0 manager:r19 didFailToLoadInterstitialWithError:r21];
            }
            [r20 release];
    }
    [r21 release];
    return;
}

-(void)interstitialDidExpireForAdapter:(void *)arg2 {
    [self setReady:0x0];
    [MPConstants adsExpirationInterval];
    r22 = [[MPLogEvent adExpiredWithTimeInterval:0x0] retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 interstitialAdController];
    r0 = [r0 retain];
    r25 = [[r0 adUnitId] retain];
    [MPLogging logEvent:r22 source:r25 fromClass:[self class]];
    [r25 release];
    [r0 release];
    [r23 release];
    [r22 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 managerDidExpireInterstitial:self];
    [r0 release];
    return;
}

-(void)interstitialDidReceiveTapEventForAdapter:(void *)arg2 {
    r21 = [[MPLogEvent adWillPresentModal] retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 interstitialAdController];
    r0 = [r0 retain];
    r25 = [[r0 adUnitId] retain];
    [MPLogging logEvent:r21 source:r25 fromClass:[self class]];
    [r25 release];
    [r0 release];
    [r23 release];
    [r21 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 managerDidReceiveTapEventFromInterstitial:self];
    [r0 release];
    return;
}

-(void)interstitialWillLeaveApplicationForAdapter:(void *)arg2 {
    r19 = [[MPLogEvent adWillLeaveApplication] retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 interstitialAdController];
    r0 = [r0 retain];
    r24 = [[r0 adUnitId] retain];
    [MPLogging logEvent:r19 source:r24 fromClass:[self class]];
    [r24 release];
    [r0 release];
    [r22 release];
    [r19 release];
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x10);
    r0 = [r0 autorelease];
    return r0;
}

-(void)interstitialDidReceiveImpressionEventForAdapter:(void *)arg2 {
    r20 = [[self delegate] retain];
    r0 = [self requestingConfiguration];
    r0 = [r0 retain];
    r22 = [[r0 impressionData] retain];
    [r20 interstitialAdManager:self didReceiveImpressionEventWithImpressionData:r22];
    [r22 release];
    [r0 release];
    [r20 release];
    return;
}

-(bool)ready {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x10, arg2);
    return;
}

-(void)setReady:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(bool)loading {
    r0 = *(int8_t *)(self + 0x9);
    return r0;
}

-(void)setLoading:(bool)arg2 {
    *(int8_t *)(self + 0x9) = arg2;
    return;
}

-(void *)communicator {
    r0 = *(self + 0x20);
    return r0;
}

-(void *)adapter {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setCommunicator:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void *)remainingConfigurations {
    r0 = *(self + 0x30);
    return r0;
}

-(void *)requestingConfiguration {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setRequestingConfiguration:(void *)arg2 {
    objc_storeStrong(self + 0x28, arg2);
    return;
}

-(void)setRemainingConfigurations:(void *)arg2 {
    objc_storeStrong(self + 0x30, arg2);
    return;
}

-(void)setAdapterLoadStartTimestamp:(double)arg2 {
    *(self + 0x38) = d0;
    return;
}

-(void *)targeting {
    r0 = *(self + 0x40);
    return r0;
}

-(double)adapterLoadStartTimestamp {
    r0 = self;
    return r0;
}

-(void)setTargeting:(void *)arg2 {
    objc_storeStrong(self + 0x40, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x40, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_destroyWeak(self + 0x10);
    return;
}

@end