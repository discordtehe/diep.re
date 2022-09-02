@implementation MPBannerCustomEventAdapter

-(void *)initWithConfiguration:(void *)arg2 delegate:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [r21 customEventClass];
    [r21 release];
    if (r22 != 0x0) {
            r0 = [r19 initWithDelegate:r20];
            r0 = [r0 retain];
            r19 = r0;
            r21 = r0;
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)rotateToOrientation:(long long)arg2 {
    r0 = [self bannerCustomEvent];
    r0 = [r0 retain];
    [r0 rotateToOrientation:arg2];
    [r0 release];
    return;
}

-(void)unregisterDelegate {
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
    r0 = [self bannerCustomEvent];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 bannerCustomEvent];
            r29 = r29;
            r0 = [r0 retain];
            [r0 performSelector:r2];
            [r22 release];
    }
    r0 = [r19 bannerCustomEvent];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    r0 = [MPCoreInstanceProvider sharedProvider];
    r0 = [r0 retain];
    [r0 keepObjectAliveForCurrentRunLoopIteration:r19->_bannerCustomEvent];
    [r0 release];
    [[&var_40 super] unregisterDelegate];
    return;
}

-(void)didDisplayAd {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self shouldTrackImpressionOnDisplay] & 0x1) == 0x0) goto loc_1004f0674;

loc_1004f0668:
    r8 = &@selector(trackImpressionOnDisplay);
    goto loc_1004f06b4;

loc_1004f06b4:
    objc_msgSend(r19, *r8);
    goto loc_1004f06c0;

loc_1004f06c0:
    r0 = [r19 bannerCustomEvent];
    r0 = [r0 retain];
    [r0 didDisplayAd];
    [r0 release];
    return;

loc_1004f0674:
    r0 = [r19 configuration];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 visibleImpressionTrackingEnabled];
    [r0 release];
    if (r21 == 0x0) goto loc_1004f06c0;

loc_1004f06ac:
    r8 = &@selector(startViewableTrackingTimer);
    goto loc_1004f06b4;
}

-(void)getAdWithConfiguration:(void *)arg2 targeting:(void *)arg3 containerSize:(struct CGSize)arg4 {
    memcpy(&r4, &arg4, 0x8);
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
    v8 = v1;
    v9 = v0;
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
    [MPBannerCustomEvent class];
    if (([r22 isKindOfClass:r2] & 0x1) != 0x0) {
            [r21 setBannerCustomEvent:r22];
            r0 = [r21 bannerCustomEvent];
            r0 = [r0 retain];
            [r0 setDelegate:r21];
            [r0 release];
            r24 = [[r20 localExtras] retain];
            r0 = [r21 bannerCustomEvent];
            r0 = [r0 retain];
            [r0 setLocalExtras:r24];
            [r0 release];
            [r24 release];
            r25 = [[r21 bannerCustomEvent] retain];
            r23 = [[r19 customEventClassData] retain];
            r21 = [[r19 advancedBidPayload] retain];
            [r25 requestAdWithSize:r23 customEventInfo:r21 adMarkup:r4];
            [r21 release];
    }
    else {
            r25 = [r19 customEventClass];
            r25 = [[NSError customEventClass:r25 doesNotInheritFrom:[MPBannerCustomEvent class]] retain];
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

-(void)trackImpressionOnDisplay {
    [self setHasTrackedImpression:0x1];
    [self trackImpression];
    return;
}

-(void)startViewableTrackingTimer {
    r20 = objc_alloc();
    r0 = [self configuration];
    r0 = [r0 retain];
    r22 = r0;
    [r0 impressionMinVisibleTimeInSec];
    r0 = [self configuration];
    r0 = [r0 retain];
    [r0 impressionMinVisiblePixels];
    r20 = [r20 initWithRequiredSecondsForImpression:r2 requiredViewVisibilityPixels:r3];
    [self setImpressionTimer:r20];
    [r20 release];
    [r0 release];
    [r22 release];
    r0 = [self impressionTimer];
    r0 = [r0 retain];
    [r0 setDelegate:self];
    [r0 release];
    r20 = [[self impressionTimer] retain];
    r19 = [[self adView] retain];
    [r20 startTrackingView:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void *)adUnitId {
    r0 = [self delegate];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 banner];
    r0 = [r0 retain];
    r21 = [[r0 adUnitId] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
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

-(bool)shouldTrackImpressionOnDisplay {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self configuration];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 visibleImpressionTrackingEnabled];
    [r0 release];
    if ((r21 & 0x1) != 0x0) goto loc_1004f093c;

loc_1004f08e0:
    r0 = [r19 bannerCustomEvent];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 enableAutomaticImpressionAndClickTracking] == 0x0) goto loc_1004f0934;

loc_1004f090c:
    r19 = [r19 hasTrackedImpression];
    [r20 release];
    if ((r19 & 0x1) == 0x0) {
            r0 = 0x1;
    }
    else {
            r0 = 0x0;
    }
    return r0;

loc_1004f0934:
    [r20 release];
    goto loc_1004f093c;

loc_1004f093c:
    r0 = 0x0;
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

-(void *)location {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 location] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)bannerCustomEvent:(void *)arg2 didFailToLoadAdWithError:(void *)arg3 {
    r21 = [arg3 retain];
    [self didStopLoading];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapter:self didFailToLoadAdWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)bannerCustomEventWillBeginAction:(void *)arg2 {
    [self trackClickOnce];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 userActionWillBeginForAdapter:self];
    [r0 release];
    return;
}

-(void)bannerCustomEvent:(void *)arg2 didLoadAd:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg3 retain];
    [r20 didStopLoading];
    if (r19 != 0x0) {
            [r20 setAdView:r19];
            r0 = [r20 delegate];
            r0 = [r0 retain];
            r21 = r0;
            r1 = @selector(adapter:didFinishLoadingAd:);
    }
    else {
            r0 = [r20 delegate];
            r0 = [r0 retain];
            r21 = r0;
            r1 = @selector(adapter:didFailToLoadAdWithError:);
    }
    objc_msgSend(r0, r1);
    [r21 release];
    [r19 release];
    return;
}

-(void)bannerCustomEventDidFinishAction:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 userActionDidFinishForAdapter:self];
    [r0 release];
    return;
}

-(void)bannerCustomEventWillLeaveApplication:(void *)arg2 {
    [self trackClickOnce];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 userWillLeaveApplicationFromAdapter:self];
    [r0 release];
    return;
}

-(void)trackClickOnce {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self bannerCustomEvent];
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
    return;
}

-(void)bannerCustomEventWillExpandAd:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adWillExpandForAdapter:self];
    [r0 release];
    return;
}

-(void)bannerCustomEventDidCollapseAd:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adDidCollapseForAdapter:self];
    [r0 release];
    return;
}

-(void)trackImpression {
    [[&var_20 super] trackImpression];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adapterDidTrackImpressionForAd:self];
    [r0 release];
    return;
}

-(void *)bannerCustomEvent {
    r0 = self->_bannerCustomEvent;
    return r0;
}

-(void)adViewWillLogImpression:(void *)arg2 {
    [self trackImpression];
    r0 = [self bannerCustomEvent];
    r0 = [r0 retain];
    [r0 trackImpressionsIncludedInMarkup];
    [r0 release];
    r0 = [self bannerCustomEvent];
    r0 = [r0 retain];
    [r0 startViewabilityTracker];
    [r0 release];
    return;
}

-(void)setBannerCustomEvent:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_bannerCustomEvent, arg2);
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

-(void)setConfiguration:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_configuration, arg2);
    return;
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

-(void *)impressionTimer {
    r0 = self->_impressionTimer;
    return r0;
}

-(void *)adView {
    r0 = self->_adView;
    return r0;
}

-(void)setImpressionTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_impressionTimer, arg2);
    return;
}

-(void)setAdView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adView, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adView, 0x0);
    objc_storeStrong((int64_t *)&self->_impressionTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_configuration, 0x0);
    objc_storeStrong((int64_t *)&self->_bannerCustomEvent, 0x0);
    return;
}

@end