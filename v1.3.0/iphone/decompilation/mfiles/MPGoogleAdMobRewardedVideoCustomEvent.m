@implementation MPGoogleAdMobRewardedVideoCustomEvent

-(void)initializeSdkWithParameters:(void *)arg2 {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d84a0 != -0x1) {
            dispatch_once(0x1011d84a0, &var_28);
    }
    return;
}

-(bool)hasAdAvailable {
    r0 = [self rewardedAd];
    r0 = [r0 retain];
    r20 = [r0 isReady];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)enableAutomaticImpressionAndClickTracking {
    return 0x0;
}

-(void)presentRewardedVideoFromViewController:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r25 = [NSStringFromClass([r20 class]) retain];
    r26 = [[MPLogEvent adShowAttemptForAdapter:r25] retain];
    r27 = [[r20 getAdNetworkId] retain];
    [MPLogging logEvent:r26 source:r27 fromClass:[r20 class]];
    [r27 release];
    [r26 release];
    [r25 release];
    r0 = [r20 rewardedAd];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r26 = [r0 isReady];
    [r0 release];
    if (r26 != 0x0) {
            r0 = [r20 rewardedAd];
            r0 = [r0 retain];
            [r0 presentFromRootViewController:r19 delegate:r20];
            r0 = r0;
    }
    else {
            r26 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
            r24 = [[NSError errorWithDomain:*0x100e7edc8 code:0xfffffffffffffa87 userInfo:r26] retain];
            [r26 release];
            r26 = @class(MPLogEvent);
            r27 = [NSStringFromClass([r20 class]) retain];
            r26 = [[r26 adShowFailedForAdapter:r27 error:r24] retain];
            r22 = [[r20 getAdNetworkId] retain];
            [MPLogging logEvent:r26 source:r22 fromClass:[r20 class]];
            [r22 release];
            [r26 release];
            [r27 release];
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 rewardedVideoDidFailToPlayForCustomEvent:r20 error:r24];
            [r0 release];
            r0 = r24;
    }
    var_58 = **___stack_chk_guard;
    [r0 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)handleAdPlayedForCustomEventNetwork {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self rewardedAd];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 isReady];
    [r0 release];
    if ((r21 & 0x1) == 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 rewardedVideoDidExpireForCustomEvent:r19];
            [r0 release];
    }
    return;
}

-(void)rewardedAd:(void *)arg2 userDidEarnReward:(void *)arg3 {
    r21 = [arg3 retain];
    r20 = objc_alloc();
    r22 = [[r21 type] retain];
    r23 = [[r21 amount] retain];
    [r21 release];
    r20 = [r20 initWithCurrencyType:r22 amount:r23];
    [r23 release];
    [r22 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoShouldRewardUserForCustomEvent:self reward:r20];
    [r0 release];
    [r20 release];
    return;
}

-(void)rewardedAd:(void *)arg2 didFailToPresentWithError:(void *)arg3 {
    r20 = [arg3 retain];
    r24 = [NSStringFromClass([self class]) retain];
    r22 = [[MPLogEvent adShowFailedForAdapter:r24 error:r20] retain];
    r25 = [[self getAdNetworkId] retain];
    [MPLogging logEvent:r22 source:r25 fromClass:[self class]];
    [r25 release];
    [r22 release];
    [r24 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidFailToPlayForCustomEvent:self error:r20];
    [r20 release];
    [r0 release];
    return;
}

-(void *)getAdNetworkId {
    r0 = [self admobAdUnitId];
    return r0;
}

-(void)rewardedAdDidDismiss:(void *)arg2 {
    r23 = @class(MPLogging);
    r21 = @class(MPLogEvent);
    r24 = [NSStringFromClass([self class]) retain];
    r25 = [[r21 adWillDisappearForAdapter:r24] retain];
    r26 = [[self getAdNetworkId] retain];
    [r23 logEvent:r25 source:r26 fromClass:[self class]];
    [r26 release];
    [r25 release];
    [r24 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoWillDisappearForCustomEvent:self];
    [r0 release];
    r24 = @class(MPLogging);
    r25 = @class(MPLogEvent);
    r26 = [NSStringFromClass([self class]) retain];
    r25 = [[r25 adDidDisappearForAdapter:r26] retain];
    r21 = [[self getAdNetworkId] retain];
    [r24 logEvent:r25 source:r21 fromClass:[self class]];
    [r21 release];
    [r25 release];
    [r26 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidDisappearForCustomEvent:self];
    [r0 release];
    return;
}

-(void)rewardedAdDidPresent:(void *)arg2 {
    r23 = @class(MPLogging);
    r21 = @class(MPLogEvent);
    r24 = [NSStringFromClass([self class]) retain];
    r25 = [[r21 adWillAppearForAdapter:r24] retain];
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
    r21 = [[self getAdNetworkId] retain];
    [r23 logEvent:r24 source:r21 fromClass:[self class]];
    [r21 release];
    [r24 release];
    [r25 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoWillAppearForCustomEvent:self];
    [r0 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 rewardedVideoDidAppearForCustomEvent:self];
    [r0 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 trackImpression];
    [r0 release];
    return;
}

-(void)requestRewardedVideoWithCustomEventInfo:(void *)arg2 {
    r31 = r31 - 0xc0;
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
    [r19 initializeSdkWithParameters:r21];
    [GoogleAdMobAdapterConfiguration updateInitializationParameters:r21];
    r20 = [[r21 objectForKey:@"adunit"] retain];
    [r21 release];
    [r19 setAdmobAdUnitId:r20];
    [r20 release];
    r0 = [r19 admobAdUnitId];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            var_A8 = @selector(admobAdUnitId);
            r20 = [[GADRequest request] retain];
            r0 = [r19 localExtras];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 objectForKey:@"testDevices"];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r24 release];
            if (r0 != 0x0) {
                    r0 = [r19 localExtras];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r25 = [r0 retain];
                    [r20 setTestDevices:r25];
                    [r25 release];
                    [r24 release];
            }
            r27 = &@selector(alloc);
            var_B0 = r20;
            r0 = [r19 localExtras];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 objectForKey:@"tagForChildDirectedTreatment"];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r24 release];
            if (r0 != 0x0) {
                    r0 = [GADMobileAds sharedInstance];
                    r0 = [r0 retain];
                    r24 = r0;
                    r25 = [[r0 requestConfiguration] retain];
                    r0 = [r19 localExtras];
                    r0 = [r0 retain];
                    r26 = r0;
                    r2 = @"tagForChildDirectedTreatment";
                    r0 = [r0 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    r27 = r0;
                    if (r0 != 0x0) {
                            r2 = @"tagForChildDirectedTreatment";
                            if (CPU_FLAGS & NE) {
                                    r2 = 0x1;
                            }
                    }
                    [r25 tagForChildDirectedTreatment:r2];
                    r0 = r27;
                    r27 = &@selector(alloc);
                    [r0 release];
                    [r26 release];
                    [r25 release];
                    [r24 release];
            }
            r0 = [r19 localExtras];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 objectForKey:@"tagForUnderAgeOfConsent"];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r24 release];
            if (r0 != 0x0) {
                    r0 = [GADMobileAds sharedInstance];
                    r0 = [r0 retain];
                    r24 = r0;
                    r25 = [[r0 requestConfiguration] retain];
                    r0 = [r19 localExtras];
                    r0 = [r0 retain];
                    r26 = r0;
                    r2 = @"tagForUnderAgeOfConsent";
                    r0 = objc_msgSend(r0, *(r27 + 0x420));
                    r29 = r29;
                    r0 = [r0 retain];
                    r27 = r0;
                    if (r0 != 0x0) {
                            r2 = @"tagForUnderAgeOfConsent";
                            if (CPU_FLAGS & NE) {
                                    r2 = 0x1;
                            }
                    }
                    [r25 tagForUnderAgeOfConsent:r2];
                    [r27 release];
                    [r26 release];
                    [r25 release];
                    [r24 release];
            }
            r20 = var_B0;
            [r20 setRequestAgent:@"MoPub"];
            r0 = [r19 localExtras];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 objectForKey:@"contentUrl"];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r24 release];
            r21 = var_A8;
            if (r0 != 0x0) {
                    r0 = [r19 localExtras];
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = [r0 objectForKey:@"contentUrl"];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r23 release];
                    if ([r22 length] != 0x0) {
                            [r20 setContentURL:r22];
                    }
                    [r22 release];
            }
            r24 = [[MoPub sharedInstance] retain];
            r22 = [[r24 globalMediationSettingsForClass:[MPGoogleGlobalMediationSettings class]] retain];
            [r24 release];
            r0 = [r22 npa];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r25 = [objc_alloc() init];
                    r24 = [[r22 npa] retain];
                    r0 = [NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_78 count:0x1];
                    r29 = r29;
                    r26 = [r0 retain];
                    [r25 setAdditionalParameters:r26];
                    [r26 release];
                    [r24 release];
                    [r20 registerAdNetworkExtras:r25];
                    [r25 release];
            }
            r24 = objc_alloc();
            r21 = [objc_msgSend(r19, r21) retain];
            r24 = [r24 initWithAdUnitID:r21];
            [r19 setRewardedAd:r24];
            [r24 release];
            [r21 release];
            r25 = [NSStringFromClass([r19 class]) retain];
            r24 = [[MPLogEvent adLoadAttemptForAdapter:r25 dspCreativeId:0x0 dspName:0x0] retain];
            r26 = [[r19 getAdNetworkId] retain];
            [MPLogging logEvent:r24 source:r26 fromClass:[r19 class]];
            [r26 release];
            [r24 release];
            [r25 release];
            r0 = [r19 rewardedAd];
            r0 = [r0 retain];
            [r0 loadRequest:r20 completionHandler:&var_A0];
            [r0 release];
    }
    else {
            r22 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
            r20 = [[NSError errorWithDomain:*0x100e7edc8 code:0xfffffffffffffa24 userInfo:r22] retain];
            [r22 release];
            r24 = [NSStringFromClass([r19 class]) retain];
            r22 = [[MPLogEvent adLoadFailedForAdapter:r24 error:r20] retain];
            r25 = [[r19 getAdNetworkId] retain];
            [MPLogging logEvent:r22 source:r25 fromClass:[r19 class]];
            [r25 release];
            [r22 release];
            [r24 release];
            r0 = [r19 delegate];
            r0 = [r0 retain];
            r22 = r0;
            [r0 rewardedVideoDidFailToLoadAdForCustomEvent:r19 error:r20];
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)admobAdUnitId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_admobAdUnitId)), 0x0);
    return r0;
}

-(void *)rewardedAd {
    r0 = self->_rewardedAd;
    return r0;
}

-(void)setAdmobAdUnitId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setRewardedAd:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rewardedAd, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_rewardedAd, 0x0);
    objc_storeStrong((int64_t *)&self->_admobAdUnitId, 0x0);
    return;
}

@end