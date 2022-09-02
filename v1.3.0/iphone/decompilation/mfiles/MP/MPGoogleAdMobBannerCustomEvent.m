@implementation MPGoogleAdMobBannerCustomEvent

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = objc_alloc();
            r20 = [r0 initWithFrame:r2];
            [r19 setAdBannerView:r20];
            [r20 release];
            r0 = [r19 adBannerView];
            r0 = [r0 retain];
            [r0 setDelegate:r19];
            [r0 release];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r0 = [self adBannerView];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(struct CGRect)frameForCustomEventInfo:(void *)arg2 {
    r31 = r31 - 0x70;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r0 = [r0 objectForKey:r2];
    r0 = [r0 retain];
    [r0 floatValue];
    asm { fcvt       d8, s0 };
    [r21 release];
    r19 = [objc_msgSend(r20, r19) retain];
    [r20 release];
    objc_msgSend(r19, r22);
    asm { fcvt       d9, s0 };
    [r19 release];
    r0 = sub_100845b10(&var_50);
    if (d0 > d8) {
            r0 = sub_100845b10(&var_50);
            if (d1 > d9) {
                    sub_100845b10(&var_50);
                    v8 = v0;
                    r0 = sub_100845b10(&var_50);
                    v9 = v1;
            }
    }
    return r0;
}

-(void)adViewWillPresentScreen:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 bannerCustomEventWillBeginAction:self];
    [r0 release];
    return;
}

-(void)adView:(void *)arg2 didFailToReceiveAdWithError:(void *)arg3 {
    r0 = [arg3 retain];
    r20 = r0;
    r0 = [r0 localizedDescription];
    r0 = [r0 retain];
    r21 = [[NSString stringWithFormat:@"Google AdMob Banner failed to load with error: %@"] retain];
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
    [r0 bannerCustomEvent:self didFailToLoadAdWithError:r20];
    [r20 release];
    [r0 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)adViewDidReceiveAd:(void *)arg2 {
    r23 = @class(MPLogging);
    r21 = @class(MPLogEvent);
    r24 = [NSStringFromClass([self class]) retain];
    r25 = [[r21 adLoadSuccessForAdapter:r24] retain];
    r26 = [[self getAdNetworkId] retain];
    [r23 logEvent:r25 source:r26 fromClass:[self class]];
    [r26 release];
    [r25 release];
    [r24 release];
    r23 = @class(MPLogging);
    r24 = @class(MPLogEvent);
    r25 = [NSStringFromClass([self class]) retain];
    r24 = [[r24 adShowAttemptForAdapter:r25] retain];
    r26 = [[self getAdNetworkId] retain];
    [r23 logEvent:r24 source:r26 fromClass:[self class]];
    [r26 release];
    [r24 release];
    [r25 release];
    r23 = @class(MPLogging);
    r24 = @class(MPLogEvent);
    r25 = [NSStringFromClass([self class]) retain];
    r24 = [[r24 adShowSuccessForAdapter:r25] retain];
    r21 = [[self getAdNetworkId] retain];
    [r23 logEvent:r24 source:r21 fromClass:[self class]];
    [r21 release];
    [r24 release];
    [r25 release];
    r20 = [[self delegate] retain];
    r21 = [[self adBannerView] retain];
    [r20 bannerCustomEvent:self didLoadAd:r21];
    [r21 release];
    [r20 release];
    return;
}

-(void)adViewDidDismissScreen:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 bannerCustomEventDidFinishAction:self];
    [r0 release];
    return;
}

-(void)adViewWillLeaveApplication:(void *)arg2 {
    r23 = [NSStringFromClass([self class]) retain];
    r21 = [[MPLogEvent adTappedForAdapter:r23] retain];
    r24 = [[self getAdNetworkId] retain];
    [MPLogging logEvent:r21 source:r24 fromClass:[self class]];
    [r24 release];
    [r21 release];
    [r23 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 bannerCustomEventWillLeaveApplication:self];
    [r0 release];
    return;
}

-(void *)getAdNetworkId {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self adBannerView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r20 adBannerView];
            r0 = [r0 retain];
            r20 = [[r0 adUnitID] retain];
            [r0 release];
    }
    else {
            r20 = @"";
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)adBannerView {
    r0 = self->_adBannerView;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adBannerView, 0x0);
    return;
}

-(void)setAdBannerView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adBannerView, arg2);
    return;
}

-(void)requestAdWithSize:(struct CGSize)arg2 customEventInfo:(void *)arg3 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xb0;
    var_70 = d11;
    stack[-120] = d10;
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
    r19 = [r2 retain];
    [r20 frameForCustomEventInfo:r19];
    r0 = [r20 adBannerView];
    r0 = [r0 retain];
    v0 = v0;
    v1 = v1;
    [r0 setFrame:r19];
    [r0 release];
    var_90 = r19;
    r22 = [[r19 objectForKey:@"adUnitID"] retain];
    r0 = [r20 adBannerView];
    r0 = [r0 retain];
    [r0 setAdUnitID:r22];
    [r0 release];
    [r22 release];
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r22 = r0;
    r25 = [[r0 viewControllerForPresentingModalView] retain];
    r0 = [r20 adBannerView];
    r0 = [r0 retain];
    [r0 setRootViewController:r25];
    [r0 release];
    [r25 release];
    [r22 release];
    r22 = [[GADRequest request] retain];
    r0 = [r20 localExtras];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 objectForKey:@"contentUrl"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r26 release];
    if (r0 != 0x0) {
            r2 = @"contentUrl";
            r0 = [r20 localExtras];
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 objectForKey:@"contentUrl"];
            r29 = r29;
            r26 = [r0 retain];
            [r27 release];
            if ([r26 length] != 0x0) {
                    r2 = @"contentUrl";
                    [r22 setContentURL:r26];
            }
            [r26 release];
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
    var_A0 = r19;
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
            r19 = r0;
            if (r0 != 0x0) {
                    r2 = @"tagForChildDirectedTreatment";
                    if (CPU_FLAGS & NE) {
                            r2 = 0x1;
                    }
            }
            [r27 tagForChildDirectedTreatment:r2];
            [r19 release];
            r0 = r28;
            r28 = &@selector(holderForWebView:);
            [r0 release];
            [r27 release];
            [r26 release];
    }
    r0 = [r20 localExtras];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKey:@"tagForUnderAgeOfConsent"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r19 release];
    if (r0 != 0x0) {
            r2 = @"tagForUnderAgeOfConsent";
            r0 = [GADMobileAds sharedInstance];
            r0 = [r0 retain];
            r19 = r0;
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
            [r19 release];
    }
    r24 = @selector(sharedInstance);
    [r22 setRequestAgent:@"MoPub"];
    r19 = [objc_msgSend(@class(MoPub), r24) retain];
    r24 = [[r19 globalMediationSettingsForClass:[MPGoogleGlobalMediationSettings class]] retain];
    [r19 release];
    r0 = [r24 npa];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r19 = [objc_alloc() init];
            r26 = [[r24 npa] retain];
            r0 = [NSDictionary dictionaryWithObjects:&var_80 forKeys:&var_88 count:0x1];
            r29 = r29;
            r27 = [r0 retain];
            [r19 setAdditionalParameters:r27];
            [r27 release];
            [r26 release];
            [r22 registerAdNetworkExtras:r19];
            [r19 release];
    }
    var_78 = **___stack_chk_guard;
    [GoogleAdMobAdapterConfiguration updateInitializationParameters:var_90];
    r27 = [NSStringFromClass([r20 class]) retain];
    r26 = [[MPLogEvent adLoadAttemptForAdapter:r27 dspCreativeId:0x0 dspName:0x0] retain];
    r28 = [[r20 getAdNetworkId] retain];
    [MPLogging logEvent:r26 source:r28 fromClass:[r20 class]];
    [r28 release];
    [r26 release];
    [r27 release];
    r0 = [r20 adBannerView];
    r0 = [r0 retain];
    [r0 loadRequest:r22];
    [r0 release];
    [r24 release];
    [var_A0 release];
    [r22 release];
    [var_90 release];
    if (**___stack_chk_guard != var_78) {
            __stack_chk_fail();
    }
    return;
}

@end