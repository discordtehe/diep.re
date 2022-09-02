@implementation MPRewardedVideoAdapter

-(void *)initWithDelegate:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            objc_storeWeak(r20 + 0x10, r19);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)dealloc {
    [*(self + 0x18) handleCustomEventInvalidated];
    [*(self + 0x28) invalidate];
    r0 = [MPCoreInstanceProvider sharedProvider];
    r0 = [r0 retain];
    [r0 keepObjectAliveForCurrentRunLoopIteration:*(self + 0x18)];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)presentRewardedVideoFromViewController:(void *)arg2 customData:(void *)arg3 {
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
    r21 = self;
    r20 = [arg2 retain];
    r0 = [arg3 retain];
    r19 = r0;
    r0 = [r0 length];
    if (r0 != 0x0) {
            r22 = r0;
            r0 = [r21 configuration];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 rewardedVideoCompletionUrl];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r23 release];
            if (r0 != 0x0) {
                    if (r22 >= 0x2005) {
                            r22 = [[NSString stringWithFormat:@"Custom data length %lu exceeds the receommended maximum length of %lu characters."] retain];
                            r0 = [MPLogEvent eventWithMessage:r22 level:0x1e];
                            r29 = r29;
                            r24 = [r0 retain];
                            [MPLogging logEvent:r24 source:0x0 fromClass:[r21 class]];
                            [r24 release];
                            [r22 release];
                    }
                    [r21 setCustomData:r19];
            }
    }
    r0 = [r21 rewardedVideoCustomEvent];
    r0 = [r0 retain];
    [r0 presentRewardedVideoFromViewController:r20];
    [r20 release];
    [r0 release];
    [r19 release];
    return;
}

-(bool)hasAdAvailable {
    r0 = [self rewardedVideoCustomEvent];
    r0 = [r0 retain];
    r20 = [r0 hasAdAvailable];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)handleAdPlayedForCustomEventNetwork {
    r0 = [self rewardedVideoCustomEvent];
    r0 = [r0 retain];
    [r0 handleAdPlayedForCustomEventNetwork];
    [r0 release];
    return;
}

-(void)getAdWithConfiguration:(void *)arg2 targeting:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r28 = [arg3 retain];
    [r19 customEventClass];
    r26 = [[NSString stringWithFormat:@"Looking for custom event class named %@."] retain];
    r0 = [MPLogEvent eventWithMessage:r26 level:0x1e];
    r29 = &saved_fp;
    r27 = [r0 retain];
    [MPLogging logEvent:r27 source:0x0 fromClass:[r21 class]];
    [r27 release];
    [r26 release];
    [r21 setConfiguration:r19];
    [r19 customEventClass];
    r22 = [objc_alloc() init];
    [MPRewardedVideoCustomEvent class];
    if (([r22 isKindOfClass:r2] & 0x1) != 0x0) {
            [r22 setDelegate:r21];
            r23 = [[r28 localExtras] retain];
            [r22 setLocalExtras:r23];
            [r23 release];
            [r21 setRewardedVideoCustomEvent:r22];
            [r21 startTimeoutTimer];
            r25 = [[r21 rewardedVideoCustomEvent] retain];
            r21 = [[r19 customEventClassData] retain];
            r23 = [[r19 advancedBidPayload] retain];
            [r25 requestRewardedVideoWithCustomEventInfo:r21 adMarkup:r23];
            [r23 release];
    }
    else {
            r25 = [r19 customEventClass];
            r25 = [[NSError customEventClass:r25 doesNotInheritFrom:[MPRewardedVideoCustomEvent class]] retain];
            r27 = [[MPLogEvent error:r25 message:0x0] retain];
            [MPLogging logEvent:r27 source:0x0 fromClass:[r21 class]];
            [r27 release];
            r0 = [r21 delegate];
            r0 = [r0 retain];
            r21 = r0;
            [r0 rewardedVideoDidFailToLoadForAdapter:0x0 error:r25];
    }
    [r21 release];
    [r25 release];
    [r22 release];
    [r28 release];
    [r19 release];
    return;
}

-(void)timeout {
    r20 = [[NSError errorWithCode:0x19 localizedDescription:@"Rewarded video ad request timed out"] retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidFailToLoadForAdapter:self error:r20];
    [r0 release];
    [self setDelegate:0x0];
    [r20 release];
    return;
}

-(void)startTimeoutTimer {
    var_40 = d9;
    stack[-72] = d8;
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
    r0 = [self configuration];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) goto loc_10045d494;

loc_10045d45c:
    r0 = [r19 configuration];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    [r0 adTimeoutInterval];
    if (d0 >= 0x0) goto loc_10045d534;

loc_10045d48c:
    [r22 release];
    goto loc_10045d494;

loc_10045d494:
    [r20 release];
    r20 = [[MPTimer timerWithTimeInterval:r19 target:@selector(timeout) selector:0x0 repeats:r5] retain];
    [r19 setTimeoutTimer:r20];
    [r20 release];
    r0 = [r19 timeoutTimer];
    r0 = [r0 retain];
    [r0 scheduleNow];
    [r0 release];
    return;

loc_10045d534:
    r0 = [r19 configuration];
    r29 = r29;
    r0 = [r0 retain];
    [r0 adTimeoutInterval];
    v8 = v0;
    [r21 release];
    [r22 release];
    [r20 release];
    if (d8 > 0x0) {
            r20 = [[MPTimer timerWithTimeInterval:r19 target:@selector(timeout) selector:0x0 repeats:r5] retain];
            [r19 setTimeoutTimer:r20];
            [r20 release];
            r0 = [r19 timeoutTimer];
            r0 = [r0 retain];
            [r0 scheduleNow];
            [r0 release];
    }
    return;
}

-(void)didStopLoading {
    r0 = [self timeoutTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    return;
}

-(void)trackClick {
    r20 = [[MPAnalyticsTracker sharedTracker] retain];
    r19 = [[self configuration] retain];
    [r20 trackClickForConfiguration:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void)trackImpression {
    r20 = [[MPAnalyticsTracker sharedTracker] retain];
    r21 = [[self configuration] retain];
    [r20 trackImpressionForConfiguration:r21];
    [r21 release];
    [r20 release];
    [self setHasTrackedImpression:0x1];
    r0 = [self expirationTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidReceiveImpressionEventForAdapter:self];
    [r0 release];
    return;
}

-(void *)rewardedVideoCompletionUrlByAppendingClientParams {
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
    r0 = [self configuration];
    r0 = [r0 retain];
    r26 = [[r0 rewardedVideoCompletionUrl] retain];
    [r0 release];
    r0 = [r20 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            r0 = [r20 delegate];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 rewardedVideoCustomerId];
            r29 = r29;
            r28 = [r0 retain];
            [r19 release];
    }
    else {
            r28 = 0x0;
    }
    [r23 release];
    r0 = [r20 configuration];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 selectedReward];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if (r0 != 0x0) {
            var_60 = r28;
            stack[-104] = r26;
            r0 = [r20 configuration];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 selectedReward];
            r0 = [r0 retain];
            r28 = r0;
            r0 = [r0 currencyType];
            r29 = r29;
            r0 = [r0 retain];
            r19 = r0;
            if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
                    r22 = 0x0;
            }
            else {
                    r0 = [r20 configuration];
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = [r0 selectedReward];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r21 release];
            }
            [r19 release];
            [r28 release];
            [r26 release];
            r28 = var_60;
            r26 = stack[-104];
    }
    else {
            r22 = 0x0;
    }
    [r25 release];
    [r23 release];
    r0 = [r20 rewardedVideoCustomEvent];
    r0 = [r0 retain];
    r23 = [NSStringFromClass([r0 class]) retain];
    [r0 release];
    r21 = [[r22 currencyType] retain];
    r24 = [[r22 amount] retain];
    r20 = [[r20 customData] retain];
    r19 = [[MPAdServerURLBuilder rewardedCompletionUrl:r26 withCustomerId:r28 rewardType:r21 rewardAmount:r24 customEventName:r23 additionalData:r20] retain];
    [r20 release];
    [r24 release];
    [r21 release];
    [r23 release];
    [r22 release];
    [r28 release];
    [r26 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)rewardedVideoDidLoadAdForCustomEvent:(void *)arg2 {
    r31 = r31 - 0x70;
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
    if (([r20 hasSuccessfullyLoaded] & 0x1) == 0x0) {
            [r20 setHasSuccessfullyLoaded:0x1];
            [r20 didStopLoading];
            r0 = [r20 delegate];
            r29 = r29;
            r0 = [r0 retain];
            [r0 rewardedVideoDidLoadForAdapter:r20];
            [r0 release];
            [MPMoPubRewardedVideoCustomEvent class];
            if (([r19 isKindOfClass:r2] & 0x1) == 0x0) {
                    r22 = @selector(isKindOfClass:);
                    [MPMoPubRewardedPlayableCustomEvent class];
                    if (objc_msgSend(r19, r22) != 0x0) {
                            objc_initWeak(&stack[-72], r20);
                            objc_alloc();
                            [MPConstants adsExpirationInterval];
                            objc_copyWeak(&var_60 + 0x20, &stack[-72]);
                            r22 = [r22 initWithInterval:&var_60 block:r3];
                            [r20 setExpirationTimer:r22];
                            [r22 release];
                            r0 = [r20 expirationTimer];
                            r0 = [r0 retain];
                            [r0 scheduleNow];
                            [r0 release];
                            objc_destroyWeak(&var_60 + 0x20);
                            objc_destroyWeak(&stack[-72]);
                    }
            }
            else {
                    objc_initWeak(&stack[-72], r20);
                    objc_alloc();
                    [MPConstants adsExpirationInterval];
                    objc_copyWeak(&var_60 + 0x20, &stack[-72]);
                    r22 = [r22 initWithInterval:&var_60 block:r3];
                    [r20 setExpirationTimer:r22];
                    [r22 release];
                    r0 = [r20 expirationTimer];
                    r0 = [r0 retain];
                    [r0 scheduleNow];
                    [r0 release];
                    objc_destroyWeak(&var_60 + 0x20);
                    objc_destroyWeak(&stack[-72]);
            }
    }
    [r19 release];
    return;
}

-(void *)instanceMediationSettingsForClass:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    r19 = [[r0 instanceMediationSettingsForClass:arg2] retain];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)rewardedVideoDidFailToLoadAdForCustomEvent:(void *)arg2 error:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self rewardedVideoCustomEvent];
    r0 = [r0 retain];
    [r0 handleCustomEventInvalidated];
    [r0 release];
    [self setRewardedVideoCustomEvent:0x0];
    [self didStopLoading];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidFailToLoadForAdapter:self error:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)rewardedVideoDidFailToPlayForCustomEvent:(void *)arg2 error:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidFailToPlayForAdapter:self error:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)rewardedVideoDidExpireForCustomEvent:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self hasExpired] & 0x1) == 0x0) {
            [r19 setHasExpired:0x1];
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 rewardedVideoDidExpireForAdapter:r19];
            [r0 release];
    }
    return;
}

-(void)rewardedVideoWillAppearForCustomEvent:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoWillAppearForAdapter:self];
    [r0 release];
    return;
}

-(void)rewardedVideoWillDisappearForCustomEvent:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoWillDisappearForAdapter:self];
    [r0 release];
    return;
}

-(void)rewardedVideoDidAppearForCustomEvent:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self rewardedVideoCustomEvent];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 enableAutomaticImpressionAndClickTracking] != 0x0) {
            r21 = [r19 hasTrackedImpression];
            [r20 release];
            if ((r21 & 0x1) == 0x0) {
                    [r19 trackImpression];
            }
    }
    else {
            [r20 release];
    }
    r0 = [r19 delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidAppearForAdapter:r19];
    [r0 release];
    return;
}

-(void)rewardedVideoDidDisappearForCustomEvent:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidDisappearForAdapter:self];
    [r0 release];
    return;
}

-(void)rewardedVideoWillLeaveApplicationForCustomEvent:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoWillLeaveApplicationForAdapter:self];
    [r0 release];
    return;
}

-(void)rewardedVideoDidReceiveTapEventForCustomEvent:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self rewardedVideoCustomEvent];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 enableAutomaticImpressionAndClickTracking] != 0x0) {
            r21 = [r19 hasTrackedClick];
            [r20 release];
            if ((r21 & 0x1) == 0x0) {
                    [r19 setHasTrackedClick:0x1];
                    [r19 trackClick];
            }
    }
    else {
            [r20 release];
    }
    r0 = [r19 delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidReceiveTapEventForAdapter:r19];
    [r0 release];
    return;
}

-(void *)customerIdForRewardedVideoCustomEvent:(void *)arg2 {
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
    r23 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            r19 = [[r0 rewardedVideoCustomerId] retain];
            [r0 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void)rewardedVideoShouldRewardUserForCustomEvent:(void *)arg2 reward:(void *)arg3 {
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
    r20 = [arg3 retain];
    r0 = [r19 configuration];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 configuration];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 rewardedVideoCompletionUrl];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r22 release];
            if (r0 != 0x0) {
                    r22 = [[MPRewardedVideo sharedInstance] retain];
                    r0 = [r19 rewardedVideoCompletionUrlByAppendingClientParams];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r22 startRewardedVideoConnectionWithUrl:r23];
                    [r23 release];
                    [r22 release];
            }
            r0 = [r19 configuration];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 selectedReward];
            r29 = r29;
            r21 = [r0 retain];
            [r22 release];
            if (r21 != 0x0) {
                    r0 = [r21 currencyType];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = [r0 isEqualToString:r2];
                    [r0 release];
                    if ((r23 & 0x1) == 0x0) {
                            r22 = [r21 retain];
                            [r20 release];
                            r20 = r22;
                    }
            }
            [r21 release];
    }
    if (r20 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 rewardedVideoShouldRewardUserForAdapter:r19 reward:r20];
            [r0 release];
    }
    [r20 release];
    return;
}

-(void *)adUnitId {
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
    r23 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            r19 = [[r0 rewardedVideoAdUnitId] retain];
            [r0 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void *)configuration {
    r0 = *(self + 0x20);
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x10, arg2);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x10);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)rewardedVideoCustomEvent {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setRewardedVideoCustomEvent:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void *)timeoutTimer {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setConfiguration:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void)setTimeoutTimer:(void *)arg2 {
    objc_storeStrong(self + 0x28, arg2);
    return;
}

-(bool)hasTrackedImpression {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setHasTrackedImpression:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(bool)hasTrackedClick {
    r0 = *(int8_t *)(self + 0x9);
    return r0;
}

-(void)setHasTrackedClick:(bool)arg2 {
    *(int8_t *)(self + 0x9) = arg2;
    return;
}

-(bool)hasSuccessfullyLoaded {
    r0 = *(int8_t *)(self + 0xa);
    return r0;
}

-(bool)hasExpired {
    r0 = *(int8_t *)(self + 0xb);
    return r0;
}

-(void)setHasSuccessfullyLoaded:(bool)arg2 {
    *(int8_t *)(self + 0xa) = arg2;
    return;
}

-(void)setHasExpired:(bool)arg2 {
    *(int8_t *)(self + 0xb) = arg2;
    return;
}

-(void *)expirationTimer {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setExpirationTimer:(void *)arg2 {
    objc_storeStrong(self + 0x30, arg2);
    return;
}

-(void *)customData {
    r0 = objc_getProperty(self, _cmd, 0x38, 0x0);
    return r0;
}

-(void)setCustomData:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x38, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_destroyWeak(self + 0x10);
    return;
}

@end