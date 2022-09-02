@implementation MPMoPubRewardedVideoCustomEvent

-(bool)hasAdAvailable {
    r0 = [self adAvailable];
    return r0;
}

-(void)requestRewardedVideoWithCustomEventInfo:(void *)arg2 {
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

-(void)handleCustomEventInvalidated {
    return;
}

-(void)handleAdPlayedForCustomEventNetwork {
    return;
}

-(void)presentRewardedVideoFromViewController:(void *)arg2 {
    r31 = r31 - 0xd0;
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
    r20 = self;
    r19 = [arg2 retain];
    r24 = [NSStringFromClass([r20 class]) retain];
    r22 = [[MPLogEvent adShowAttemptForAdapter:r24] retain];
    r0 = [r20 adUnitId];
    r29 = &saved_fp;
    r25 = [r0 retain];
    [MPLogging logEvent:r22 source:r25 fromClass:[r20 class]];
    [r25 release];
    [r22 release];
    [r24 release];
    objc_initWeak(r29 - 0x58, r20);
    r21 = &var_88 + 0x28;
    objc_copyWeak(r21, r29 - 0x58);
    r0 = objc_retainBlock(&var_88);
    r22 = r0;
    if (([r20 hasAdAvailable] & 0x1) != 0x0) {
            r23 = [[r20 interstitial] retain];
            var_98 = [r22 retain];
            [r23 presentInterstitialFromViewController:r19 complete:&var_B8];
            [r23 release];
            r20 = var_98;
    }
    else {
            r0 = [NSError errorWithDomain:*0x100e7edc8 code:0xfffffffffffffbb4 userInfo:0x0];
            r29 = r29;
            r20 = [r0 retain];
            (*(r22 + 0x10))(r22, r20);
    }
    [r20 release];
    [r22 release];
    objc_destroyWeak(r21);
    objc_destroyWeak(r29 - 0x58);
    [r19 release];
    return;
}

-(void)interstitialDidLoadAd:(void *)arg2 {
    r23 = [NSStringFromClass([self class]) retain];
    r21 = [[MPLogEvent adLoadSuccessForAdapter:r23] retain];
    r24 = [[self adUnitId] retain];
    [MPLogging logEvent:r21 source:r24 fromClass:[self class]];
    [r24 release];
    [r21 release];
    [r23 release];
    [self setAdAvailable:0x1];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidLoadAdForCustomEvent:self];
    [r0 release];
    return;
}

-(void)interstitialDidAppear:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidAppearForCustomEvent:self];
    [r0 release];
    return;
}

-(void)interstitialWillAppear:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoWillAppearForCustomEvent:self];
    [r0 release];
    return;
}

-(void)interstitialWillDisappear:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoWillDisappearForCustomEvent:self];
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
    [self setAdAvailable:0x0];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidFailToLoadAdForCustomEvent:self error:0x0];
    [r0 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)interstitialDidDisappear:(void *)arg2 {
    [self setAdAvailable:0x0];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidDisappearForCustomEvent:self];
    [r0 release];
    [self setInterstitial:0x0];
    return;
}

-(void)interstitialDidReceiveTapEvent:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidReceiveTapEventForCustomEvent:self];
    [r0 release];
    return;
}

-(void)interstitialWillLeaveApplication:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoWillLeaveApplicationForCustomEvent:self];
    [r0 release];
    return;
}

-(void)interstitialRewardedVideoEnded {
    r22 = [[NSString stringWithFormat:@"MoPub rewarded video finished playing."] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x1e] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    r20 = [[self delegate] retain];
    r0 = [self configuration];
    r0 = [r0 retain];
    r22 = [[r0 selectedReward] retain];
    [r20 rewardedVideoShouldRewardUserForCustomEvent:self reward:r22];
    [r22 release];
    [r0 release];
    [r20 release];
    return;
}

-(void *)configuration {
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

-(void *)interstitial {
    r0 = self->_interstitial;
    return r0;
}

-(void)setInterstitial:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_interstitial, arg2);
    return;
}

-(void)setAdAvailable:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_adAvailable = arg2;
    return;
}

-(bool)adAvailable {
    r0 = *(int8_t *)(int64_t *)&self->_adAvailable;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_interstitial, 0x0);
    return;
}

@end