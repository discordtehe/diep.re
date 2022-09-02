@implementation MPMRAIDBannerCustomEvent

-(void *)location {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 location] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)requestAdWithSize:(struct CGSize)arg2 customEventInfo:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
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
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 configuration] retain];
    [r0 release];
    r22 = [NSStringFromClass([r20 customEventClass]) retain];
    r24 = [[r20 dspCreativeId] retain];
    r23 = [[MPLogEvent adLoadAttemptForAdapter:r22 dspCreativeId:r24 dspName:0x0] retain];
    r0 = [r19 adUnitId];
    r29 = &saved_fp;
    r25 = [r0 retain];
    [MPLogging logEvent:r23 source:r25 fromClass:[r19 class]];
    [r25 release];
    [r23 release];
    [r24 release];
    [r22 release];
    if ([r20 hasPreferredSize] != 0x0) {
            [r20 preferredSize];
            v8 = v0;
            [r20 preferredSize];
            v9 = v1;
    }
    r21 = objc_alloc();
    r21 = [r21 initWithAdViewFrame:[r20 orientationType] supportedOrientations:0x0 adPlacementType:r19 delegate:r5];
    [r19 setMraidController:r21];
    [r21 release];
    r0 = [r19 mraidController];
    r0 = [r0 retain];
    [r0 loadAdWithConfiguration:r20];
    [r0 release];
    [r20 release];
    return;
}

-(void *)adConfiguration {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 configuration] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)adUnitId {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 adUnitId] retain];
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

-(void)adDidLoad:(void *)arg2 {
    r20 = [arg2 retain];
    r24 = [NSStringFromClass([self class]) retain];
    r22 = [[MPLogEvent adLoadSuccessForAdapter:r24] retain];
    r25 = [[self adUnitId] retain];
    [MPLogging logEvent:r22 source:r25 fromClass:[self class]];
    [r25 release];
    [r22 release];
    [r24 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 bannerCustomEvent:self didLoadAd:r20];
    [r20 release];
    [r0 release];
    return;
}

-(void)closeButtonPressed {
    return;
}

-(void)appShouldSuspendForAd:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 bannerCustomEventWillBeginAction:self];
    [r0 release];
    return;
}

-(void)adDidFailToLoad:(void *)arg2 {
    r0 = [self adConfiguration];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 adResponseHTMLString];
    r0 = [r0 retain];
    r20 = [[NSString stringWithFormat:@"Failed to load creative:\n%@"] retain];
    [r0 release];
    [r21 release];
    r21 = [[NSError errorWithCode:0x21 localizedDescription:r20] retain];
    r25 = [NSStringFromClass([self class]) retain];
    r23 = [[MPLogEvent adLoadFailedForAdapter:r25 error:r21] retain];
    r26 = [[self adUnitId] retain];
    [MPLogging logEvent:r23 source:r26 fromClass:[self class]];
    [r26 release];
    [r23 release];
    [r25 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 bannerCustomEvent:self didFailToLoadAdWithError:r21];
    [r0 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)appShouldResumeFromAd:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 bannerCustomEventDidFinishAction:self];
    [r0 release];
    return;
}

-(void)trackImpressionsIncludedInMarkup {
    r0 = [self mraidController];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 mraidWebView];
    r0 = [r0 retain];
    [[[r0 stringByEvaluatingJavaScriptFromString:@"webviewDidAppear();"] retain] release];
    [r0 release];
    [r19 release];
    return;
}

-(void)adWillExpand:(void *)arg2 {
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
    r23 = [r0 respondsToSelector:@selector(bannerCustomEventWillExpandAd:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 bannerCustomEventWillExpandAd:r19];
            [r0 release];
    }
    return;
}

-(void)startViewabilityTracker {
    r0 = [self mraidController];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 viewabilityTracker];
    r0 = [r0 retain];
    [r0 startTracking];
    [r0 release];
    [r19 release];
    return;
}

-(void *)mraidController {
    r0 = self->_mraidController;
    return r0;
}

-(void)adDidCollapse:(void *)arg2 {
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
    r23 = [r0 respondsToSelector:@selector(bannerCustomEventDidCollapseAd:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 bannerCustomEventDidCollapseAd:r19];
            [r0 release];
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_mraidController, 0x0);
    return;
}

-(void)setMraidController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_mraidController, arg2);
    return;
}

@end