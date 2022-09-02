@implementation MPHTMLBannerCustomEvent

-(bool)enableAutomaticImpressionAndClickTracking {
    return 0x0;
}

-(void *)location {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 location] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)rotateToOrientation:(long long)arg2 {
    r0 = [self bannerAgent];
    r0 = [r0 retain];
    [r0 forceRedraw];
    [r0 release];
    return;
}

-(void *)adUnitId {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 adUnitId] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)dealloc {
    r0 = [self bannerAgent];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)requestAdWithSize:(struct CGSize)arg2 customEventInfo:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 configuration] retain];
    [r0 release];
    r22 = [NSStringFromClass([r20 customEventClass]) retain];
    r24 = [[r20 dspCreativeId] retain];
    r23 = [[MPLogEvent adLoadAttemptForAdapter:r22 dspCreativeId:r24 dspName:0x0] retain];
    r25 = [[self adUnitId] retain];
    [MPLogging logEvent:r23 source:r25 fromClass:[self class]];
    [r25 release];
    [r23 release];
    [r24 release];
    [r22 release];
    r21 = [objc_alloc() initWithAdWebViewFrame:self delegate:r25];
    [self setBannerAgent:r21];
    [r21 release];
    r0 = [self bannerAgent];
    r0 = [r0 retain];
    [r0 loadConfiguration:r20];
    [r0 release];
    [r20 release];
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

-(void)adDidClose:(void *)arg2 {
    return;
}

-(void)adDidFinishLoadingAd:(void *)arg2 {
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

-(void)adActionWillBegin:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 bannerCustomEventWillBeginAction:self];
    [r0 release];
    return;
}

-(void)adActionDidFinish:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 bannerCustomEventDidFinishAction:self];
    [r0 release];
    return;
}

-(void)adDidFailToLoadAd:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 configuration];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 adResponseHTMLString];
    r0 = [r0 retain];
    r21 = [[NSString stringWithFormat:@"Failed to load creative:\n%@"] retain];
    [r0 release];
    [r23 release];
    [r22 release];
    r22 = [[NSError errorWithCode:0x21 localizedDescription:r21] retain];
    r26 = [NSStringFromClass([self class]) retain];
    r24 = [[MPLogEvent adLoadFailedForAdapter:r26 error:r22] retain];
    r27 = [[self adUnitId] retain];
    [MPLogging logEvent:r24 source:r27 fromClass:[self class]];
    [r27 release];
    [r24 release];
    [r26 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 bannerCustomEvent:self didFailToLoadAdWithError:r22];
    [r0 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)adActionWillLeaveApplication:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 bannerCustomEventWillLeaveApplication:self];
    [r0 release];
    return;
}

-(void)trackImpressionsIncludedInMarkup {
    r0 = [self bannerAgent];
    r0 = [r0 retain];
    [r0 invokeJavaScriptForEvent:0x0];
    [r0 release];
    return;
}

-(void *)bannerAgent {
    r0 = self->_bannerAgent;
    return r0;
}

-(void)startViewabilityTracker {
    r0 = [self bannerAgent];
    r0 = [r0 retain];
    [r0 startViewabilityTracker];
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_bannerAgent, 0x0);
    return;
}

-(void)setBannerAgent:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_bannerAgent, arg2);
    return;
}

@end