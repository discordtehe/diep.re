@implementation MPGoogleAdMobInterstitialCustomEvent

-(bool)enableAutomaticImpressionAndClickTracking {
    return 0x0;
}

-(void)dealloc {
    r0 = [self interstitial];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)showInterstitialFromRootViewController:(void *)arg2 {
    r19 = [arg2 retain];
    r24 = [NSStringFromClass([self class]) retain];
    r22 = [[MPLogEvent adShowAttemptForAdapter:r24] retain];
    r25 = [[self getAdNetworkId] retain];
    [MPLogging logEvent:r22 source:r25 fromClass:[self class]];
    [r25 release];
    [r22 release];
    [r24 release];
    r0 = [self interstitial];
    r0 = [r0 retain];
    [r0 presentFromRootViewController:r19];
    [r19 release];
    [r0 release];
    return;
}

-(void)interstitialDidReceiveAd:(void *)arg2 {
    r23 = [NSStringFromClass([self class]) retain];
    r21 = [[MPLogEvent adLoadSuccessForAdapter:r23] retain];
    r24 = [[self getAdNetworkId] retain];
    [MPLogging logEvent:r21 source:r24 fromClass:[self class]];
    [r24 release];
    [r21 release];
    [r23 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEvent:self didLoadAd:self];
    [r0 release];
    return;
}

-(void)interstitial:(void *)arg2 didFailToReceiveAdWithError:(void *)arg3 {
    r0 = [arg3 retain];
    r20 = r0;
    r0 = [r0 localizedDescription];
    r0 = [r0 retain];
    r21 = [[NSString stringWithFormat:@"Google AdMob Interstitial failed to load with error: %@"] retain];
    [r0 release];
    r22 = [[NSError errorWithCode:0x11 localizedDescription:r21] retain];
    r26 = [NSStringFromClass([self class]) retain];
    r24 = [[MPLogEvent adLoadFailedForAdapter:r26 error:r22] retain];
    r27 = [[self getAdNetworkId] retain];
    [MPLogging logEvent:r24 source:r27 fromClass:[self class]];
    [r27 release];
    [r24 release];
    [r26 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEvent:self didFailToLoadAdWithError:r20];
    [r20 release];
    [r0 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)interstitialWillDismissScreen:(void *)arg2 {
    r23 = [NSStringFromClass([self class]) retain];
    r21 = [[MPLogEvent adWillDisappearForAdapter:r23] retain];
    r24 = [[self getAdNetworkId] retain];
    [MPLogging logEvent:r21 source:r24 fromClass:[self class]];
    [r24 release];
    [r21 release];
    [r23 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventWillDisappear:self];
    [r0 release];
    return;
}

-(void)interstitialDidDismissScreen:(void *)arg2 {
    r23 = [NSStringFromClass([self class]) retain];
    r21 = [[MPLogEvent adDidDisappearForAdapter:r23] retain];
    r24 = [[self getAdNetworkId] retain];
    [MPLogging logEvent:r21 source:r24 fromClass:[self class]];
    [r24 release];
    [r21 release];
    [r23 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventDidDisappear:self];
    [r0 release];
    return;
}

-(void)interstitialWillPresentScreen:(void *)arg2 {
    r22 = @class(MPLogging);
    r23 = [[MPLogEvent adShowSuccess] retain];
    r24 = [[self admobAdUnitId] retain];
    [r22 logEvent:r23 source:r24 fromClass:[self class]];
    [r24 release];
    [r23 release];
    r23 = @class(MPLogging);
    r22 = @class(MPLogEvent);
    r24 = [NSStringFromClass([self class]) retain];
    r25 = [[r22 adWillAppearForAdapter:r24] retain];
    r26 = [[self getAdNetworkId] retain];
    [r23 logEvent:r25 source:r26 fromClass:[self class]];
    [r26 release];
    [r25 release];
    [r24 release];
    r23 = @class(MPLogging);
    r24 = @class(MPLogEvent);
    r25 = [NSStringFromClass([self class]) retain];
    r24 = [[r24 adShowSuccessForAdapter:r25] retain];
    r26 = [[self getAdNetworkId] retain];
    [r23 logEvent:r24 source:r26 fromClass:[self class]];
    [r26 release];
    [r24 release];
    [r25 release];
    r23 = @class(MPLogging);
    r24 = @class(MPLogEvent);
    r25 = [NSStringFromClass([self class]) retain];
    r24 = [[r24 adDidAppearForAdapter:r25] retain];
    r22 = [[self getAdNetworkId] retain];
    [r23 logEvent:r24 source:r22 fromClass:[self class]];
    [r22 release];
    [r24 release];
    [r25 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventWillAppear:self];
    [r0 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventDidAppear:self];
    [r0 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 trackImpression];
    [r0 release];
    return;
}

-(void)requestInterstitialWithCustomEventInfo:(void *)arg2 {
    r31 = r31 - 0xa0;
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
    r20 = self;
    r0 = [arg2 retain];
    var_80 = r0;
    r21 = [[r0 objectForKey:@"adUnitID"] retain];
    [r20 setAdmobAdUnitId:r21];
    [r21 release];
    r21 = objc_alloc();
    r22 = [[r20 admobAdUnitId] retain];
    r21 = [r21 initWithAdUnitID:r22];
    [r20 setInterstitial:r21];
    [r21 release];
    [r22 release];
    r0 = [r20 interstitial];
    r0 = [r0 retain];
    [r0 setDelegate:r20];
    [r0 release];
    r22 = [[GADRequest request] retain];
    r0 = [r20 localExtras];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKey:@"contentUrl"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 != 0x0) {
            r2 = @"contentUrl";
            r0 = [r20 localExtras];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 objectForKey:@"contentUrl"];
            r29 = r29;
            r23 = [r0 retain];
            [r26 release];
            if ([r23 length] != 0x0) {
                    r2 = @"contentUrl";
                    [r22 setContentURL:r23];
            }
            [r23 release];
    }
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 location];
    r29 = r29;
    r19 = [r0 retain];
    [r26 release];
    if (r19 != 0x0) {
            [r19 coordinate];
            [r19 coordinate];
            [r19 horizontalAccuracy];
            [r22 setLocationWithLatitude:r2 longitude:r3 accuracy:r4];
    }
    var_90 = r19;
    r0 = [r20 localExtras];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 objectForKey:@"testDevices"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r26 release];
    if (r0 != 0x0) {
            r0 = [r20 localExtras];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r27 = [r0 retain];
            [r22 setTestDevices:r27];
            [r27 release];
            [r26 release];
    }
    r0 = [r20 localExtras];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 objectForKey:@"tagForChildDirectedTreatment"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r26 release];
    r28 = &@selector(holderForWebView:);
    if (r0 != 0x0) {
            r2 = @"tagForChildDirectedTreatment";
            r0 = [GADMobileAds sharedInstance];
            r0 = [r0 retain];
            r26 = r0;
            r27 = [[r0 requestConfiguration] retain];
            r0 = [r20 localExtras];
            r0 = [r0 retain];
            r28 = r0;
            r0 = [r0 objectForKeyedSubscript:@"tagForChildDirectedTreatment"];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (r0 != 0x0) {
                    r2 = @"tagForChildDirectedTreatment";
                    if (CPU_FLAGS & NE) {
                            r2 = 0x1;
                    }
            }
            [r27 tagForChildDirectedTreatment:r2];
            [r21 release];
            r0 = r28;
            r28 = &@selector(holderForWebView:);
            [r0 release];
            [r27 release];
            [r26 release];
    }
    r0 = [r20 localExtras];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForKey:@"tagForUnderAgeOfConsent"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r21 release];
    if (r0 != 0x0) {
            r2 = @"tagForUnderAgeOfConsent";
            r0 = [GADMobileAds sharedInstance];
            r0 = [r0 retain];
            r21 = r0;
            r26 = [objc_msgSend(r0, *(r28 + 0x470)) retain];
            r0 = [r20 localExtras];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 objectForKeyedSubscript:@"tagForUnderAgeOfConsent"];
            r29 = r29;
            r0 = [r0 retain];
            r27 = r0;
            if (r0 != 0x0) {
                    r2 = @"tagForUnderAgeOfConsent";
                    if (CPU_FLAGS & NE) {
                            r2 = 0x1;
                    }
            }
            [r26 tagForUnderAgeOfConsent:r2];
            [r27 release];
            [r25 release];
            [r26 release];
            [r21 release];
    }
    r24 = @selector(sharedInstance);
    [r22 setRequestAgent:@"MoPub"];
    r21 = [objc_msgSend(@class(MoPub), r24) retain];
    r24 = [[r21 globalMediationSettingsForClass:[MPGoogleGlobalMediationSettings class]] retain];
    [r21 release];
    r0 = [r24 npa];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [objc_alloc() init];
            r26 = [[r24 npa] retain];
            r0 = [NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_78 count:0x1];
            r29 = r29;
            r27 = [r0 retain];
            [r21 setAdditionalParameters:r27];
            [r27 release];
            [r26 release];
            [r22 registerAdNetworkExtras:r21];
            [r21 release];
    }
    var_68 = **___stack_chk_guard;
    [GoogleAdMobAdapterConfiguration updateInitializationParameters:var_80];
    r27 = [NSStringFromClass([r20 class]) retain];
    r26 = [[MPLogEvent adLoadAttemptForAdapter:r27 dspCreativeId:0x0 dspName:0x0] retain];
    r28 = [[r20 getAdNetworkId] retain];
    [MPLogging logEvent:r26 source:r28 fromClass:[r20 class]];
    [r28 release];
    [r26 release];
    [r27 release];
    r0 = [r20 interstitial];
    r0 = [r0 retain];
    [r0 loadRequest:r22];
    [r0 release];
    [r24 release];
    [var_90 release];
    [r22 release];
    [var_80 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void)interstitialWillLeaveApplication:(void *)arg2 {
    r23 = [NSStringFromClass([self class]) retain];
    r21 = [[MPLogEvent adTappedForAdapter:r23] retain];
    r24 = [[self getAdNetworkId] retain];
    [MPLogging logEvent:r21 source:r24 fromClass:[self class]];
    [r24 release];
    [r21 release];
    [r23 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventDidReceiveTapEvent:self];
    [r0 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventWillLeaveApplication:self];
    [r0 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 trackClick];
    [r0 release];
    return;
}

-(void *)getAdNetworkId {
    r0 = [self admobAdUnitId];
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

-(void *)admobAdUnitId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_admobAdUnitId)), 0x0);
    return r0;
}

-(void)setAdmobAdUnitId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_admobAdUnitId, 0x0);
    objc_storeStrong((int64_t *)&self->_interstitial, 0x0);
    return;
}

@end