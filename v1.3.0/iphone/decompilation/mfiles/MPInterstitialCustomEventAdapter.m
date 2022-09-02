@implementation MPInterstitialCustomEventAdapter

-(void)dealloc {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self interstitialCustomEvent];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 interstitialCustomEvent];
            r29 = r29;
            r0 = [r0 retain];
            [r0 performSelector:r2];
            [r22 release];
    }
    r0 = [r19 interstitialCustomEvent];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    r0 = [MPCoreInstanceProvider sharedProvider];
    r0 = [r0 retain];
    [r0 keepObjectAliveForCurrentRunLoopIteration:r19->_interstitialCustomEvent];
    [r0 release];
    [[&var_40 super] dealloc];
    return;
}

-(void)showInterstitialFromViewController:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self interstitialCustomEvent];
    r0 = [r0 retain];
    [r0 showInterstitialFromRootViewController:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void *)adUnitId {
    r0 = [self delegate];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 interstitialAdController];
    r0 = [r0 retain];
    r21 = [[r0 adUnitId] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)location {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 location] retain];
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
    r20 = [arg3 retain];
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
    [MPInterstitialCustomEvent class];
    if (([r22 isKindOfClass:r2] & 0x1) != 0x0) {
            [r22 setDelegate:r21];
            r23 = [[r20 localExtras] retain];
            [r22 setLocalExtras:r23];
            [r23 release];
            [r21 setInterstitialCustomEvent:r22];
            r25 = [[r21 interstitialCustomEvent] retain];
            r23 = [[r19 customEventClassData] retain];
            r21 = [[r19 advancedBidPayload] retain];
            [r25 requestInterstitialWithCustomEventInfo:r23 adMarkup:r21];
            [r21 release];
    }
    else {
            r25 = [r19 customEventClass];
            r25 = [[NSError customEventClass:r25 doesNotInheritFrom:[MPInterstitialCustomEvent class]] retain];
            r27 = [[MPLogEvent error:r25 message:0x0] retain];
            [MPLogging logEvent:r27 source:0x0 fromClass:[r21 class]];
            [r27 release];
            r0 = [r21 delegate];
            r0 = [r0 retain];
            r23 = r0;
            [r0 adapter:r21 didFailToLoadAdWithError:r25];
    }
    [r23 release];
    [r25 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)interstitialCustomEvent:(void *)arg2 didFailToLoadAdWithError:(void *)arg3 {
    r21 = [arg3 retain];
    [self didStopLoading];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapter:self didFailToLoadAdWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)interstitialCustomEvent:(void *)arg2 didLoadAd:(void *)arg3 {
    r31 = r31 - 0x80;
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    [r21 didStopLoading];
    r0 = [r21 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 adapterDidFinishLoadingAd:r21];
    [r0 release];
    [MPHTMLInterstitialCustomEvent class];
    if (([r19 isKindOfClass:r2] & 0x1) == 0x0) {
            r23 = @selector(isKindOfClass:);
            [MPMRAIDInterstitialCustomEvent class];
            if (objc_msgSend(r19, r23) != 0x0) {
                    objc_initWeak(&stack[-88], r21);
                    objc_alloc();
                    [MPConstants adsExpirationInterval];
                    objc_copyWeak(&var_70 + 0x20, &stack[-88]);
                    r23 = [r23 initWithInterval:&var_70 block:r3];
                    [r21 setExpirationTimer:r23];
                    [r23 release];
                    r0 = [r21 expirationTimer];
                    r0 = [r0 retain];
                    [r0 scheduleNow];
                    [r0 release];
                    objc_destroyWeak(&var_70 + 0x20);
                    objc_destroyWeak(&stack[-88]);
            }
    }
    else {
            objc_initWeak(&stack[-88], r21);
            objc_alloc();
            [MPConstants adsExpirationInterval];
            objc_copyWeak(&var_70 + 0x20, &stack[-88]);
            r23 = [r23 initWithInterval:&var_70 block:r3];
            [r21 setExpirationTimer:r23];
            [r23 release];
            r0 = [r21 expirationTimer];
            r0 = [r0 retain];
            [r0 scheduleNow];
            [r0 release];
            objc_destroyWeak(&var_70 + 0x20);
            objc_destroyWeak(&stack[-88]);
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)interstitialCustomEventWillAppear:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialWillAppearForAdapter:self];
    [r0 release];
    return;
}

-(void)interstitialCustomEventDidAppear:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self interstitialCustomEvent];
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
    [r0 interstitialDidAppearForAdapter:r19];
    [r0 release];
    return;
}

-(void)interstitialCustomEventDidDisappear:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialDidDisappearForAdapter:self];
    [r0 release];
    return;
}

-(void)interstitialCustomEventWillDisappear:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialWillDisappearForAdapter:self];
    [r0 release];
    return;
}

-(void)interstitialCustomEventDidExpire:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialDidExpireForAdapter:self];
    [r0 release];
    return;
}

-(void *)interstitialCustomEvent {
    r0 = self->_interstitialCustomEvent;
    return r0;
}

-(void)interstitialCustomEventDidReceiveTapEvent:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self interstitialCustomEvent];
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
    [r0 interstitialDidReceiveTapEventForAdapter:r19];
    [r0 release];
    return;
}

-(void)interstitialCustomEventWillLeaveApplication:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialWillLeaveApplicationForAdapter:self];
    [r0 release];
    return;
}

-(void)trackImpression {
    [[&var_20 super] trackImpression];
    [self setHasTrackedImpression:0x1];
    r0 = [self expirationTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    return;
}

-(void)setInterstitialCustomEvent:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_interstitialCustomEvent, arg2);
    return;
}

-(void)setConfiguration:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_configuration, arg2);
    return;
}

-(void *)configuration {
    r0 = self->_configuration;
    return r0;
}

-(bool)hasTrackedImpression {
    r0 = *(int8_t *)(int64_t *)&self->_hasTrackedImpression;
    return r0;
}

-(void)setHasTrackedImpression:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasTrackedImpression = arg2;
    return;
}

-(bool)hasTrackedClick {
    r0 = *(int8_t *)(int64_t *)&self->_hasTrackedClick;
    return r0;
}

-(void)setHasTrackedClick:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasTrackedClick = arg2;
    return;
}

-(void *)expirationTimer {
    r0 = self->_expirationTimer;
    return r0;
}

-(void)setExpirationTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_expirationTimer, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_expirationTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_configuration, 0x0);
    objc_storeStrong((int64_t *)&self->_interstitialCustomEvent, 0x0);
    return;
}

@end