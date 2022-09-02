@implementation MPMRAIDInterstitialCustomEvent

-(void)requestInterstitialWithCustomEventInfo:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 configuration] retain];
    [r0 release];
    r22 = [NSStringFromClass([self class]) retain];
    r25 = [[r20 dspCreativeId] retain];
    r24 = [[MPLogEvent adLoadAttemptForAdapter:r22 dspCreativeId:r25 dspName:0x0] retain];
    r26 = [[self adUnitId] retain];
    [MPLogging logEvent:r24 source:r26 fromClass:[self class]];
    [r26 release];
    [r24 release];
    [r25 release];
    [r22 release];
    r21 = [objc_alloc() initWithAdConfiguration:r20];
    [self setInterstitial:r21];
    [r21 release];
    r0 = [self interstitial];
    r0 = [r0 retain];
    [r0 setDelegate:self];
    [r0 release];
    r0 = [self interstitial];
    r0 = [r0 retain];
    [r0 setCloseButtonStyle:0x1];
    [r0 release];
    r0 = [self interstitial];
    r0 = [r0 retain];
    [r0 startLoading];
    [r0 release];
    [r20 release];
    return;
}

-(void)showInterstitialFromRootViewController:(void *)arg2 {
    r19 = [arg2 retain];
    r24 = [NSStringFromClass([self class]) retain];
    r22 = [[MPLogEvent adShowAttemptForAdapter:r24] retain];
    r25 = [[self adUnitId] retain];
    [MPLogging logEvent:r22 source:r25 fromClass:[self class]];
    [r25 release];
    [r22 release];
    [r24 release];
    r0 = [self interstitial];
    r0 = [r0 retain];
    [r0 presentInterstitialFromViewController:r19 complete:&var_68];
    [r19 release];
    [r0 release];
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

-(void *)adUnitId {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 adUnitId] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)interstitialDidLoadAd:(void *)arg2 {
    r23 = [NSStringFromClass([self class]) retain];
    r21 = [[MPLogEvent adLoadSuccessForAdapter:r23] retain];
    r24 = [[self adUnitId] retain];
    [MPLogging logEvent:r21 source:r24 fromClass:[self class]];
    [r24 release];
    [r21 release];
    [r23 release];
    r20 = [[self delegate] retain];
    r21 = [[self interstitial] retain];
    [r20 interstitialCustomEvent:self didLoadAd:r21];
    [r21 release];
    [r20 release];
    return;
}

-(void)interstitialWillAppear:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventWillAppear:self];
    [r0 release];
    return;
}

-(void)interstitialDidFailToLoadAd:(void *)arg2 {
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
    [r0 interstitialCustomEvent:self didFailToLoadAdWithError:r22];
    [r0 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)interstitialDidAppear:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventDidAppear:self];
    [r0 release];
    return;
}

-(void)interstitialWillDisappear:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventWillDisappear:self];
    [r0 release];
    return;
}

-(void)interstitialDidDisappear:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventDidDisappear:self];
    [r0 release];
    [self setInterstitial:0x0];
    return;
}

-(void)interstitialDidReceiveTapEvent:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventDidReceiveTapEvent:self];
    [r0 release];
    return;
}

-(void)interstitialWillLeaveApplication:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventWillLeaveApplication:self];
    [r0 release];
    return;
}

-(void *)interstitial {
    r0 = self->_interstitial;
    return r0;
}

-(void)setInterstitial:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_interstitial, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_interstitial, 0x0);
    return;
}

@end