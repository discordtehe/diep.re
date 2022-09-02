@implementation MPBannerAdManager

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    r0 = [self communicator];
    r0 = [r0 retain];
    [r0 cancel];
    [r0 release];
    r0 = [self communicator];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    r0 = [self refreshTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    r0 = [self onscreenAdapter];
    r0 = [r0 retain];
    [r0 unregisterDelegate];
    [r0 release];
    r0 = [self requestingAdapter];
    r0 = [r0 retain];
    [r0 unregisterDelegate];
    [r0 release];
    [[&var_30 super] dealloc];
    return;
}

-(void *)initWithDelegate:(void *)arg2 {
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_60 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setDelegate:r19];
            r21 = [objc_alloc() initWithDelegate:r20];
            [r20 setCommunicator:r21];
            [r21 release];
            r22 = [[NSNotificationCenter defaultCenter] retain];
            r24 = **_UIApplicationWillEnterForegroundNotification;
            r26 = [[UIApplication sharedApplication] retain];
            [r22 addObserver:r20 selector:@selector(applicationWillEnterForeground) name:r24 object:r26];
            [r26 release];
            [r22 release];
            r21 = [[NSNotificationCenter defaultCenter] retain];
            r23 = **_UIApplicationDidEnterBackgroundNotification;
            r24 = [[UIApplication sharedApplication] retain];
            [r21 addObserver:r20 selector:@selector(applicationDidEnterBackground) name:r23 object:r24];
            [r24 release];
            [r21 release];
            [r20 setAutomaticallyRefreshesContents:0x1];
            [r20 setCurrentOrientation:sub_1004aec08()];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)loading {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self communicator];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (([r0 loading] & 0x1) != 0x0) {
            r20 = 0x1;
    }
    else {
            r0 = [r20 requestingAdapter];
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

-(void)loadAdWithTargeting:(void *)arg2 {
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
    r24 = [[MPLogEvent adLoadAttempt] retain];
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 adUnitId];
    r29 = &saved_fp;
    r26 = [r0 retain];
    [MPLogging logEvent:r24 source:r26 fromClass:[r20 class]];
    [r26 release];
    [r25 release];
    [r24 release];
    if (([r20 hasRequestedAtLeastOneAd] & 0x1) == 0x0) {
            [r20 setHasRequestedAtLeastOneAd:0x1];
    }
    if ([r20 loading] != 0x0) {
            r25 = [[NSError adAlreadyLoading] retain];
            r24 = [[MPLogEvent error:r25 message:0x0] retain];
            [MPLogging logEvent:r24 source:0x0 fromClass:[r20 class]];
            [r24 release];
            [r25 release];
    }
    else {
            [r20 setTargeting:r19];
            [r20 loadAdWithURL:0x0];
    }
    [r19 release];
    return;
}

-(void)forceRefreshAd {
    [self loadAdWithURL:0x0];
    return;
}

-(void)applicationDidEnterBackground {
    [self pauseRefreshTimer];
    return;
}

-(void)applicationWillEnterForeground {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self automaticallyRefreshesContents] != 0x0 && [r19 hasRequestedAtLeastOneAd] != 0x0) {
            [r19 loadAdWithURL:0x0];
    }
    return;
}

-(void)resumeRefreshTimer {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self refreshTimer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isValid];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [r19 refreshTimer];
            r0 = [r0 retain];
            [r0 resume];
            [r0 release];
    }
    return;
}

-(void)pauseRefreshTimer {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self refreshTimer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isValid];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [r19 refreshTimer];
            r0 = [r0 retain];
            [r0 pause];
            [r0 release];
    }
    return;
}

-(void)stopAutomaticallyRefreshingContents {
    [self setAutomaticallyRefreshesContents:0x0];
    [self pauseRefreshTimer];
    return;
}

-(void)startAutomaticallyRefreshingContents {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self setAutomaticallyRefreshesContents:0x1];
    r0 = [r19 refreshTimer];
    r0 = [r0 retain];
    r22 = [r0 isValid];
    [r0 release];
    r20 = [[r19 refreshTimer] retain];
    if (r22 != 0x0) {
            [r20 resume];
            [r20 release];
    }
    else {
            [r20 release];
            if (r20 != 0x0) {
                    [r19 scheduleRefreshTimer];
            }
    }
    return;
}

-(void)rotateToOrientation:(long long)arg2 {
    [self setCurrentOrientation:r2];
    r0 = [self requestingAdapter];
    r0 = [r0 retain];
    [r0 rotateToOrientation:arg2];
    [r0 release];
    r0 = [self onscreenAdapter];
    r0 = [r0 retain];
    [r0 rotateToOrientation:arg2];
    [r0 release];
    return;
}

-(bool)isMraidAd {
    r0 = [self requestingConfiguration];
    r0 = [r0 retain];
    r20 = [r0 isMraidAd];
    [r0 release];
    r0 = r20;
    return r0;
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
    r19 = self;
    r20 = [arg2 copy];
    [r19 setRequestingConfiguration:0x0];
    r0 = [r19 requestingAdapter];
    r0 = [r0 retain];
    [r0 unregisterDelegate];
    [r0 release];
    [r19 setRequestingAdapter:0x0];
    [r19 setRequestingAdapterAdContentView:0x0];
    r0 = [r19 communicator];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 cancel];
    [r0 release];
    if (r20 == 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            r22 = r0;
            r23 = [[r0 adUnitId] retain];
            r24 = [[r19 targeting] retain];
            r0 = [MPAdServerURLBuilder URLWithAdUnitID:r23 targeting:r24];
            r29 = r29;
            r20 = [r0 retain];
            [r24 release];
            [r23 release];
            [r22 release];
    }
    r0 = [r19 communicator];
    r0 = [r0 retain];
    [r0 loadURL:r20];
    [r0 release];
    [r20 release];
    return;
}

-(void)refreshTimerDidFire {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self loading] & 0x1) == 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            r21 = [[r0 adTargeting] retain];
            [r19 loadAdWithTargeting:r21];
            [r21 release];
            [r0 release];
    }
    return;
}

-(void)scheduleRefreshTimer {
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
    r19 = self;
    r0 = [self refreshTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    r0 = [r19 requestingConfiguration];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r0 = [r19 requestingConfiguration];
            r29 = r29;
            r0 = [r0 retain];
            [r0 refreshInterval];
            v8 = v0;
            [r0 release];
    }
    else {
            d8 = 0x404e000000000000;
    }
    [r21 release];
    r0 = [r19 automaticallyRefreshesContents];
    if (d8 > 0x0 && r0 != 0x0) {
            r21 = [[MPTimer timerWithTimeInterval:r19 target:@selector(refreshTimerDidFire) selector:0x0 repeats:r5] retain];
            [r19 setRefreshTimer:r21];
            [r21 release];
            r0 = [r19 refreshTimer];
            r0 = [r0 retain];
            [r0 scheduleNow];
            [r0 release];
            r20 = [[r19 refreshTimer] retain];
            r23 = [[NSString stringWithFormat:@"Scheduled the autorefresh timer to fire in %.1f seconds (%p)."] retain];
            r22 = [[MPLogEvent eventWithMessage:r23 level:0x14] retain];
            [MPLogging logEvent:r22 source:0x0 fromClass:[r19 class]];
            [r22 release];
            [r23 release];
            [r20 release];
    }
    return;
}

-(bool)shouldScheduleTimerOnImpressionDisplay {
    r0 = [self requestingConfiguration];
    r0 = [r0 retain];
    r20 = [r0 visibleImpressionTrackingEnabled];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)communicatorDidFailWithError:(void *)arg2 {
    [self didFailToLoadAdapterWithError:arg2];
    return;
}

-(void)didFailToLoadAdapterWithError:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 managerDidFailToLoadAdWithError:r21];
    [r21 release];
    [r0 release];
    [self scheduleRefreshTimer];
    return;
}

-(void)communicatorDidReceiveAdConfigurations:(void *)arg2 {
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
    r19 = self;
    r20 = [arg2 mutableCopy];
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
            r1 = @selector(fetchAdWithConfiguration:);
    }
    else {
            r0 = [r19 requestingConfiguration];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r20 release];
            if (r0 != 0x0) {
                    r20 = [[r19 requestingConfiguration] retain];
                    r1 = @selector(fetchAdWithConfiguration:);
            }
            else {
                    r0 = [r19 delegate];
                    r0 = [r0 retain];
                    r25 = [[r0 adUnitId] retain];
                    r23 = [[NSString stringWithFormat:*0x100e7f420] retain];
                    r22 = [[MPLogEvent eventWithMessage:r23 level:0x1e] retain];
                    [MPLogging logEvent:r22 source:0x0 fromClass:[r19 class]];
                    [r22 release];
                    [r23 release];
                    [r25 release];
                    [r0 release];
                    r20 = [[NSError errorWithCode:0x0] retain];
                    r1 = @selector(didFailToLoadAdapterWithError:);
            }
    }
    objc_msgSend(r19, r1);
    [r20 release];
    return;
}

-(void)fetchAdWithConfiguration:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r23 = self;
    r0 = [arg2 retain];
    r26 = r0;
    r27 = [[r0 networkType] retain];
    r28 = [[NSString stringWithFormat:@"Banner ad view is fetching ad network type: %@"] retain];
    r0 = [MPLogEvent eventWithMessage:r28 level:0x1e];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r4 = [r23 class];
    [MPLogging logEvent:r19 source:0x0 fromClass:r4];
    [r19 release];
    [r28 release];
    [r27 release];
    if ([r26 adUnitWarmingUp] == 0x0) goto loc_10045f748;

loc_10045f640:
    r0 = [r23 delegate];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 adUnitId];
    r0 = [r0 retain];
    r24 = [[NSString stringWithFormat:*0x100e7f428] retain];
    r19 = [[MPLogEvent eventWithMessage:r24 level:0x1e] retain];
    [MPLogging logEvent:r19 source:0x0 fromClass:[r23 class]];
    [r19 release];
    [r24 release];
    r26 = r26;
    [r0 release];
    [r25 release];
    r0 = [NSError errorWithCode:0x1];
    goto loc_10045f88c;

loc_10045f88c:
    r19 = [r0 retain];
    [r23 didFailToLoadAdapterWithError:r19];
    goto loc_10045f8a8;

loc_10045f8a8:
    [r19 release];
    goto loc_10045f8b0;

loc_10045f8b0:
    [r26 release];
    return;

loc_10045f748:
    r0 = [r26 networkType];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 isEqualToString:r2];
    [r0 release];
    if (r25 == 0x0) goto loc_10045f8d4;

loc_10045f790:
    r0 = [r23 delegate];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 adUnitId];
    r0 = [r0 retain];
    r24 = [[NSString stringWithFormat:*0x100e7f420] retain];
    r19 = [[MPLogEvent eventWithMessage:r24 level:0x1e] retain];
    [MPLogging logEvent:r19 source:0x0 fromClass:[r23 class]];
    [r19 release];
    [r24 release];
    r26 = r26;
    [r0 release];
    [r25 release];
    r0 = [NSError errorWithCode:0x0];
    goto loc_10045f88c;

loc_10045f8d4:
    r0 = [r23 communicator];
    r0 = [r0 retain];
    [r0 sendBeforeLoadUrlWithConfiguration:r26];
    [r0 release];
    r0 = [NSDate now];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [r23 setAdapterLoadStartTimestamp:r26];
    [r0 release];
    r19 = [objc_alloc() initWithConfiguration:r26 delegate:r23];
    [r23 setRequestingAdapter:r19];
    [r19 release];
    r0 = [r23 requestingAdapter];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10045fa3c;

loc_10045f9b4:
    r19 = [[r23 requestingAdapter] retain];
    r21 = [[r23 targeting] retain];
    r0 = [r23 delegate];
    r0 = [r0 retain];
    [r0 containerSize];
    [r19 _getAdWithConfiguration:r26 targeting:r21 containerSize:r4];
    [r0 release];
    [r21 release];
    goto loc_10045f8a8;

loc_10045fa3c:
    [r23 adapter:0x0 didFailToLoadAdWithError:0x0];
    goto loc_10045f8b0;
}

-(unsigned long long)adTypeForAdServerCommunicator:(void *)arg2 {
    return 0x0;
}

-(void *)adUnitIDForAdServerCommunicator:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 adUnitId] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)banner {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 banner] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)viewControllerForPresentingModalView {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 viewControllerForPresentingModalView] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)bannerDelegate {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 bannerDelegate] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(int)allowedNativeAdsOrientation {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [r0 allowedNativeAdsOrientation];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)location {
    r0 = [self targeting];
    r0 = [r0 retain];
    r20 = [[r0 location] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)requestingAdapterIsReadyToBePresented {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self requestingAdapterAdContentView];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r0 release];
    r0 = r19;
    return r0;
}

-(void)presentRequestingAdapter {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self adActionInProgress] & 0x1) == 0x0 && [r19 requestingAdapterIsReadyToBePresented] != 0x0) {
            r0 = [r19 onscreenAdapter];
            r0 = [r0 retain];
            [r0 unregisterDelegate];
            [r0 release];
            r21 = [[r19 requestingAdapter] retain];
            [r19 setOnscreenAdapter:r21];
            [r21 release];
            [r19 setRequestingAdapter:0x0];
            r21 = [[r19 onscreenAdapter] retain];
            [r21 rotateToOrientation:[r19 currentOrientation]];
            [r21 release];
            r21 = [[r19 delegate] retain];
            r22 = [[r19 requestingAdapterAdContentView] retain];
            [r21 managerDidLoadAd:r22];
            [r22 release];
            [r21 release];
            r0 = [r19 onscreenAdapter];
            r0 = [r0 retain];
            [r0 didDisplayAd];
            [r0 release];
            [r19 setRequestingAdapterAdContentView:0x0];
            if (([r19 shouldScheduleTimerOnImpressionDisplay] & 0x1) == 0x0) {
                    [r19 scheduleRefreshTimer];
            }
    }
    return;
}

-(void)adapterDidTrackImpressionForAd:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [arg2 retain];
    r0 = [r19 onscreenAdapter];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    if (r20 != r21) {
            [r20 release];
    }
    else {
            r21 = [r19 shouldScheduleTimerOnImpressionDisplay];
            [r20 release];
            if (r21 != 0x0) {
                    [r19 scheduleRefreshTimer];
            }
    }
    r20 = [[r19 delegate] retain];
    r0 = [r19 requestingConfiguration];
    r0 = [r0 retain];
    r21 = [[r0 impressionData] retain];
    [r20 impressionDidFireWithImpressionData:r21];
    [r21 release];
    [r0 release];
    [r20 release];
    return;
}

-(void)adapter:(void *)arg2 didFinishLoadingAd:(void *)arg3 {
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
    r19 = self;
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r19 requestingAdapter];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r21 release];
    [r22 release];
    if (r22 == r21) {
            [r19 setRemainingConfigurations:0x0];
            [r19 setRequestingAdapterAdContentView:r20];
            r0 = [NSDate now];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            [r19 adapterLoadStartTimestamp];
            [r0 release];
            r21 = [[r19 communicator] retain];
            r22 = [[r19 requestingConfiguration] retain];
            [r21 sendAfterLoadUrlWithConfiguration:r22 adapterLoadDuration:0x1 adapterLoadResult:r4];
            [r22 release];
            [r21 release];
            r21 = [[MPLogEvent adDidLoad] retain];
            r0 = [r19 delegate];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 banner];
            r0 = [r0 retain];
            r25 = [[r0 adUnitId] retain];
            [MPLogging logEvent:r21 source:r25 fromClass:[r19 class]];
            [r25 release];
            [r0 release];
            [r23 release];
            [r21 release];
            [r19 presentRequestingAdapter];
    }
    [r20 release];
    return;
}

-(void)userActionWillBeginForAdapter:(void *)arg2 {
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
    r21 = [arg2 retain];
    r0 = [r19 onscreenAdapter];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    [r20 release];
    if (r20 == r21) {
            [r19 setAdActionInProgress:0x1];
            r25 = [[MPLogEvent adTapped] retain];
            r0 = [r19 delegate];
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 banner];
            r0 = [r0 retain];
            r26 = [[r0 adUnitId] retain];
            [MPLogging logEvent:r25 source:r26 fromClass:[r19 class]];
            [r26 release];
            [r0 release];
            [r27 release];
            [r25 release];
            r26 = [[MPLogEvent adWillPresentModal] retain];
            r0 = [r19 delegate];
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 banner];
            r0 = [r0 retain];
            r22 = [[r0 adUnitId] retain];
            [MPLogging logEvent:r26 source:r22 fromClass:[r19 class]];
            [r22 release];
            [r0 release];
            [r27 release];
            [r26 release];
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 userActionWillBegin];
            [r0 release];
    }
    return;
}

-(void)adWillExpandForAdapter:(void *)arg2 {
    [self pauseRefreshTimer];
    return;
}

-(void)userActionDidFinishForAdapter:(void *)arg2 {
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
    r21 = [arg2 retain];
    r0 = [r19 onscreenAdapter];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    [r20 release];
    if (r20 == r21) {
            r21 = [[MPLogEvent adDidDismissModal] retain];
            r0 = [r19 delegate];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 banner];
            r0 = [r0 retain];
            r25 = [[r0 adUnitId] retain];
            [MPLogging logEvent:r21 source:r25 fromClass:[r19 class]];
            [r25 release];
            [r0 release];
            [r23 release];
            [r21 release];
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 userActionDidFinish];
            [r0 release];
            [r19 setAdActionInProgress:0x0];
            [r19 presentRequestingAdapter];
    }
    return;
}

-(void)userWillLeaveApplicationFromAdapter:(void *)arg2 {
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
    r21 = [arg2 retain];
    r0 = [r19 onscreenAdapter];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    [r20 release];
    if (r20 == r21) {
            r25 = [[MPLogEvent adTapped] retain];
            r0 = [r19 delegate];
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 banner];
            r0 = [r0 retain];
            r26 = [[r0 adUnitId] retain];
            [MPLogging logEvent:r25 source:r26 fromClass:[r19 class]];
            [r26 release];
            [r0 release];
            [r27 release];
            [r25 release];
            r26 = [[MPLogEvent adWillLeaveApplication] retain];
            r0 = [r19 delegate];
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 banner];
            r0 = [r0 retain];
            r22 = [[r0 adUnitId] retain];
            [MPLogging logEvent:r26 source:r22 fromClass:[r19 class]];
            [r22 release];
            [r0 release];
            [r27 release];
            [r26 release];
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 userWillLeaveApplication];
            [r0 release];
    }
    return;
}

-(void)adDidCollapseForAdapter:(void *)arg2 {
    [self resumeRefreshTimer];
    return;
}

-(void)adapter:(void *)arg2 didFailToLoadAdWithError:(void *)arg3 {
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
    r21 = arg3;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r24 = 0x1;
            }
    }
    r21 = [r21 retain];
    r0 = [NSDate now];
    r29 = r29;
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    v8 = v0;
    [r20 adapterLoadStartTimestamp];
    [r0 release];
    r22 = [r21 isAdRequestTimedOutError];
    [r21 release];
    r8 = r24 << 0x1;
    if (r22 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r22 = r8;
            }
            else {
                    r22 = 0x3;
            }
    }
    r23 = [[r20 communicator] retain];
    r24 = [[r20 requestingConfiguration] retain];
    [r23 sendAfterLoadUrlWithConfiguration:r24 adapterLoadDuration:r22 adapterLoadResult:r4];
    [r24 release];
    [r23 release];
    r0 = [r20 requestingAdapter];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != r19) goto loc_100460650;

loc_100460500:
    r0 = [r20 remainingConfigurations];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 count];
    [r0 release];
    r0 = r20;
    if (r24 == 0x0) goto loc_1004605c0;

loc_100460540:
    r0 = [r0 remainingConfigurations];
    r0 = [r0 retain];
    r23 = [[r0 removeFirst] retain];
    [r20 setRequestingConfiguration:r23];
    [r23 release];
    [r0 release];
    r0 = [r20 requestingConfiguration];
    r29 = r29;
    r21 = [r0 retain];
    r1 = @selector(fetchAdWithConfiguration:);
    goto loc_1004605b0;

loc_1004605b0:
    objc_msgSend(r20, r1);
    goto loc_100460648;

loc_100460648:
    [r21 release];
    goto loc_100460650;

loc_100460650:
    r0 = [r20 onscreenAdapter];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    [r0 release];
    if (r19 != 0x0 && r21 == r19) {
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 invalidateContentView];
            [r0 release];
            r0 = [r20 onscreenAdapter];
            r29 = r29;
            r0 = [r0 retain];
            [r0 unregisterDelegate];
            [r0 release];
            [r20 setOnscreenAdapter:0x0];
            if ([r20 adActionInProgress] != 0x0) {
                    r0 = [r20 delegate];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 userActionDidFinish];
                    [r0 release];
                    [r20 setAdActionInProgress:0x0];
            }
            if ([r20 requestingAdapterIsReadyToBePresented] != 0x0) {
                    [r20 presentRequestingAdapter];
            }
            else {
                    r21 = [[r20 targeting] retain];
                    [r20 loadAdWithTargeting:r21];
                    [r21 release];
            }
    }
    [r19 release];
    return;

loc_1004605c0:
    r0 = [r0 requestingConfiguration];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 nextURL];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 == 0x0) goto loc_1004607d0;

loc_100460600:
    r0 = [r20 requestingConfiguration];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 nextURL];
    r29 = r29;
    r22 = [r0 retain];
    [r20 loadAdWithURL:r22];
    [r22 release];
    goto loc_100460648;

loc_1004607d0:
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 banner];
    r0 = [r0 retain];
    r22 = [[r0 adUnitId] retain];
    r26 = [[NSString stringWithFormat:*0x100e7f420] retain];
    r21 = [[NSError errorWithCode:0x0 localizedDescription:r26] retain];
    [r26 release];
    [r22 release];
    [r0 release];
    [r25 release];
    r25 = [[MPLogEvent adFailedToLoadWithError:r21] retain];
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 banner];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 adUnitId];
    r29 = r29;
    r24 = [r0 retain];
    [MPLogging logEvent:r25 source:r24 fromClass:[r20 class]];
    [r24 release];
    [r23 release];
    [r22 release];
    [r25 release];
    r1 = @selector(didFailToLoadAdapterWithError:);
    goto loc_1004605b0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x10);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x10, arg2);
    return;
}

-(void *)communicator {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setCommunicator:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void *)onscreenAdapter {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setRequestingAdapter:(void *)arg2 {
    objc_storeStrong(self + 0x28, arg2);
    return;
}

-(void)setOnscreenAdapter:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void *)requestingAdapter {
    r0 = *(self + 0x28);
    return r0;
}

-(void *)requestingConfiguration {
    r0 = *(self + 0x38);
    return r0;
}

-(void *)requestingAdapterAdContentView {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setRequestingConfiguration:(void *)arg2 {
    objc_storeStrong(self + 0x38, arg2);
    return;
}

-(void)setRequestingAdapterAdContentView:(void *)arg2 {
    objc_storeStrong(self + 0x30, arg2);
    return;
}

-(void)setTargeting:(void *)arg2 {
    objc_storeStrong(self + 0x40, arg2);
    return;
}

-(void *)targeting {
    r0 = *(self + 0x40);
    return r0;
}

-(void *)remainingConfigurations {
    r0 = *(self + 0x48);
    return r0;
}

-(void)setRemainingConfigurations:(void *)arg2 {
    objc_storeStrong(self + 0x48, arg2);
    return;
}

-(void *)refreshTimer {
    r0 = *(self + 0x50);
    return r0;
}

-(void)setRefreshTimer:(void *)arg2 {
    objc_storeStrong(self + 0x50, arg2);
    return;
}

-(void)setAdActionInProgress:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(bool)adActionInProgress {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(bool)automaticallyRefreshesContents {
    r0 = *(int8_t *)(self + 0x9);
    return r0;
}

-(void)setAutomaticallyRefreshesContents:(bool)arg2 {
    *(int8_t *)(self + 0x9) = arg2;
    return;
}

-(bool)hasRequestedAtLeastOneAd {
    r0 = *(int8_t *)(self + 0xa);
    return r0;
}

-(void)setHasRequestedAtLeastOneAd:(bool)arg2 {
    *(int8_t *)(self + 0xa) = arg2;
    return;
}

-(long long)currentOrientation {
    r0 = *(self + 0x58);
    return r0;
}

-(void)setCurrentOrientation:(long long)arg2 {
    *(self + 0x58) = arg2;
    return;
}

-(double)adapterLoadStartTimestamp {
    r0 = self;
    return r0;
}

-(void)setAdapterLoadStartTimestamp:(double)arg2 {
    *(self + 0x60) = d0;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x50, 0x0);
    objc_storeStrong(self + 0x48, 0x0);
    objc_storeStrong(self + 0x40, 0x0);
    objc_storeStrong(self + 0x38, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_destroyWeak(self + 0x10);
    return;
}

@end